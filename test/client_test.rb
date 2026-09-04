# frozen_string_literal: true

require "test_helper"
require "json"
require "yaml"

class InttegroClientTest < Minitest::Test
  StubResponse = Struct.new(:code, :body, :headers, :message) do
    def [](key)
      (headers || {})[key]
    end
  end

  UUID_V7_REGEX = /\A[0-9a-f]{8}-[0-9a-f]{4}-7[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}\z/i
  EXTERNALLY_SUPPLIED_CAPABILITY_PATHS = ["/file_links/open", "/upload_requests/upload"].freeze
  PLATFORM_MANAGED_PATHS = ["/sessions/new"].freeze
  DEFAULT_RESPONSE_BODY = Object.new.freeze

  def test_telemetry_does_not_name_unknown_routes_from_resource_ids
    telemetry_class = Inttegro.const_get(:Telemetry, false)
    telemetry = telemetry_class.new(Inttegro::VERSION, enabled: false)
    operation, route, server_address = telemetry.send(
      :request_details,
      "/orders/or_private_123",
      "https://api.inttegro.com",
      nil
    )

    assert_equal "http.request", operation
    assert_nil route
    assert_equal "api.inttegro.com", server_address
  end

  def test_emits_redacted_opentelemetry_span_and_propagates_context
    exporter = OpenTelemetry::SDK::Trace::Export::InMemorySpanExporter.new
    provider = OpenTelemetry::SDK::Trace::TracerProvider.new
    provider.add_span_processor(OpenTelemetry::SDK::Trace::Export::SimpleSpanProcessor.new(exporter))
    previous_propagation = OpenTelemetry.propagation
    OpenTelemetry.propagation = OpenTelemetry::Trace::Propagation::TraceContext.text_map_propagator
    requests = []
    adapter = make_adapter(
      requests: requests,
      headers: { "Content-Type" => "application/json", "x-request-id" => "req_123" }
    )
    client = Inttegro::Client.new(
      token: "sk_live_must_not_appear",
      adapter: adapter,
      tracer_provider: provider
    )

    client.orders.lookup(order_id: "or_private")

    span = exporter.finished_spans.fetch(0)
    assert_equal "inttegro.orders.lookup", span.name
    assert_equal "ruby", span.attributes.fetch("inttegro.sdk.language")
    assert_equal 200, span.attributes.fetch("http.response.status_code")
    assert_equal "req_123", span.attributes.fetch("inttegro.request.id")
    assert_equal [
      "inttegro.request.prepared",
      "inttegro.http.attempt.started",
      "inttegro.response.received",
      "inttegro.response.decoded"
    ], span.events.map(&:name)
    assert requests.fetch(0).fetch(:request)["traceparent"]
    encoded = span.attributes.inspect + span.events.inspect
    refute_includes encoded, "sk_live_must_not_appear"
    refute_includes encoded, "or_private"
  ensure
    OpenTelemetry.propagation = previous_propagation if previous_propagation
  end

  def test_opentelemetry_errors_are_redacted
    exporter = OpenTelemetry::SDK::Trace::Export::InMemorySpanExporter.new
    provider = OpenTelemetry::SDK::Trace::TracerProvider.new
    provider.add_span_processor(OpenTelemetry::SDK::Trace::Export::SimpleSpanProcessor.new(exporter))
    adapter = make_adapter(
      status: "401",
      body: { message: "sensitive provider detail" }
    )
    client = Inttegro::Client.new(token: "bad", adapter: adapter, tracer_provider: provider)

    assert_raises(Inttegro::AuthenticationError) do
      client.orders.lookup(order_id: "or_private")
    end

    span = exporter.finished_spans.fetch(0)
    assert_equal "http_401", span.attributes.fetch("error.type")
    assert_equal 401, span.attributes.fetch("http.response.status_code")
    encoded = span.attributes.inspect + span.events.inspect
    refute_includes encoded, "sensitive provider detail"
    refute_includes encoded, "or_private"
  end

  def test_sdk_implementation_paths_cover_openapi_spec
    missing = openapi_spec_paths - EXTERNALLY_SUPPLIED_CAPABILITY_PATHS - PLATFORM_MANAGED_PATHS - implemented_sdk_paths

    assert_empty(
      missing,
      "SDK implementation is missing explicit OpenAPI path coverage:\n#{missing.join("\n")}"
    )
  end

  def test_documented_json_endpoints_return_domain_types
    sources = resource_sources
    generic_paths = sources.scan(/post_object\(\s*["'](\/[a-z0-9_\/-]+)["']/).flatten
    assert_empty generic_paths & openapi_spec_paths,
      "documented endpoints must not return Inttegro::ResponseObject"

    rbi = File.read(File.expand_path("../rbi/inttegro/generated.rbi", __dir__))
    refute_match(/returns\(Inttegro::[A-Za-z0-9_]*(?:Response|Envelope)\)/, rbi)
  end

  def test_openapi_models_are_typed_structs
    assert_operator Inttegro::Order, :<, T::Struct
    assert_operator Inttegro::PurchaseIntent, :<, T::Struct
    assert_operator Inttegro::Refund, :<, T::Struct
    assert_operator Inttegro::Customer, :<, T::Struct
  end

  def test_transport_wrapper_constants_are_not_public_api
    wire_names = Inttegro::Operations::RESPONSE_MODELS.values.filter_map do |model|
      name = model.name&.split("::")&.last
      name&.to_sym if name&.match?(/Response|Envelope/)
    end
    leaked = wire_names & Inttegro.constants(false)
    assert_empty leaked
  end

  def test_typed_request_models_and_enums_serialize_to_wire_values
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)
    request = Inttegro::CreateProductRequest.new(
      type: Inttegro::ProductType::DIGITAL,
      name: "Download"
    )

    client.products.create(request)

    body = JSON.parse(requests.first.fetch(:request).body)
    assert_equal "digital", body.fetch("type")
    assert_equal "Download", body.fetch("name")
  end

  def test_base_url_trailing_slashes_are_removed
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(
      token: "test",
      base_url: "https://api.inttegro.com////",
      adapter: adapter
    )

    client.orders.page

    assert_equal "https://api.inttegro.com/orders/page", requests.first.fetch(:uri).to_s
  end

  def test_orders_create_posts_json_and_parses_response
    requests = []
    adapter = make_adapter(
      requests: requests,
      body: {
        order: {
          id: "or_123",
          customer: { id: "cu_123", guest: false, name: "Test User" },
          initiated_at: "2026-09-01T12:00:00Z",
          status: "preparing"
        },
        redirect_url: "https://checkout"
      }
    )

    client = Inttegro::Client.new(
      token: "test-key",
      base_url: "https://api.inttegro.com",
      read_timeout: 2,
      open_timeout: 2,
      adapter: adapter
    )

    response = client.orders.create(
      number: "ORDER-123",
      customer_data: { name: "Test User", phone_number: "0559714200", email_address: "test@example.com" },
      line_items: [
        {
          type: "product",
          product: {
            type: "physical",
            quantity: 1,
            name: "Sample Item",
            price: { currency: "ghs", value: 1000 }
          }
        }
      ]
    )
    request = requests.first.fetch(:request)

    assert_equal "/orders/create", requests.first.fetch(:uri).path
    assert_equal "Bearer test-key", request["Authorization"]
    assert_equal "application/json", request["Content-Type"]
    parsed_body = JSON.parse(request.body)
    assert_equal "ORDER-123", parsed_body["number"]
    assert_equal "Test User", parsed_body.dig("customer_data", "name")
    assert_equal "Sample Item", parsed_body.dig("line_items", 0, "product", "name")
    assert_match UUID_V7_REGEX, parsed_body.dig("request_meta", "idempotency_key")
    refute parsed_body.key?("idempotency_key")

    assert_instance_of Inttegro::Order, response
    assert_equal "or_123", response.id
    refute_respond_to response, :redirect_url
  end

  def test_order_refund_alias_uses_create_refund_contract
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)
    payload = {
      order_id: "or_123",
      reason: "requested_by_customer",
      request_meta: { idempotency_key: "refund-alias-1" },
      line_items: [{
        order_line_item_id: "oli_123",
        refund_amount: { currency: "ghs", value: 2500 }
      }]
    }

    response = client.orders.refund(payload)
    body = JSON.parse(requests.first.fetch(:request).body)

    assert_instance_of Inttegro::Refund, response
    assert_equal "/orders/refund", requests.first.fetch(:uri).path
    assert_equal JSON.parse(payload.to_json), body
  end

  def test_recent_openapi_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.orders.new(customer_id: "cu_123", line_items: [{ type: "product" }])
    client.orders.update(order_id: "or_123", number: "ORDER-123-REV2")
    client.chimes.page(page_number: 1, page_size: 20)
    client.balance_transactions.lookup(transaction_id: "bt_123")
    client.financial_accounts.reconnect(account_id: "fa_123")
    client.file_references.reconcile(resource: { type: "product", id: "prod_123" }, file_ids: ["file_123"])
    client.keys.generate(label: "Production")
    client.keys.page(number: 1, size: 20)
    client.keys.lookup(secret_key_id: "sk_123")
    client.keys.update(secret_key_id: "sk_123", label: "Checkout")
    client.keys.destroy(secret_key_id: "sk_123")
    client.keys.usage(secret_key_id: "sk_123", number: 1, size: 20)
    client.payment_methods.page(customer_id: "cu_123")
    client.payment_methods.update(payment_method_id: "pm_123", active: true)
    client.payment_methods.activate(payment_method_id: "pm_123")
    client.payment_methods.disactivate(payment_method_id: "pm_123")
    client.payment_methods.archive(payment_method_id: "pm_123")
    client.payment_methods.unarchive(payment_method_id: "pm_123")
    client.payouts.enable_automatic
    client.payouts.schedule(destination_id: "fa_123", max_amount: 1, reference: "PAYOUT-1")
    client.payouts.lookup(payout_id: "po_123")
    client.prices.page(page_number: 1, page_size: 20)
    client.prices.activate(price_id: "pr_123")
    client.prices.deactivate(price_id: "pr_123")
    client.purchase_intents.create(
      product_id: "prod_123",
      price_id: "pr_123",
      quantity: { min: 1, max: 5 }
    )
    client.purchase_intents.update(id: "sale_123", quantity: { min: 1, max: 3 })
    client.purchase_intents.cancel(id: "sale_123")
    client.purchase_intents.lookup(id: "sale_123")
    client.purchase_intents.page(page_number: 1, page_size: 20)

    paths = requests.map { |r| r[:uri].path }
    assert_includes paths, "/orders/new"
    assert_includes paths, "/orders/update"
    assert_includes paths, "/chimes/page"
    assert_includes paths, "/balance_transactions/lookup"
    assert_includes paths, "/financial_accounts/reconnect"
    assert_includes paths, "/file_references/reconcile"
    assert_includes paths, "/keys/generate"
    assert_includes paths, "/keys/page"
    assert_includes paths, "/keys/lookup"
    assert_includes paths, "/keys/update"
    assert_includes paths, "/keys/destroy"
    assert_includes paths, "/keys/usage"
    assert_includes paths, "/payment_methods/page"
    assert_includes paths, "/payment_methods/update"
    assert_includes paths, "/payment_methods/activate"
    assert_includes paths, "/payment_methods/disactivate"
    assert_includes paths, "/payment_methods/archive"
    assert_includes paths, "/payment_methods/unarchive"
    assert_includes paths, "/payouts/enable"
    assert_includes paths, "/payouts/schedule"
    assert_includes paths, "/payouts/lookup"
    assert_includes paths, "/prices/page"
    assert_includes paths, "/prices/activate"
    assert_includes paths, "/prices/deactivate"
    assert_includes paths, "/purchase_intents/create"
    assert_includes paths, "/purchase_intents/update"
    assert_includes paths, "/purchase_intents/cancel"
    assert_includes paths, "/purchase_intents/lookup"
    assert_includes paths, "/purchase_intents/page"
  end

  def test_balance_transactions_deserialize_semantic_sources
    payment_requests = []
    payment_adapter = make_adapter(
      requests: payment_requests,
      body: {
        transaction: {
          id: "bt_payment",
          type: "payment",
          payment_id: "py_123",
          order_id: "or_123",
          amount: { currency: "GHS", value: 2500 },
          created_at: "2026-08-31T12:00:00Z"
        }
      }
    )
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: payment_adapter)

    payment = client.balance_transactions.lookup(transaction_id: "bt_payment")
    assert_equal Inttegro::BalanceTransactionType::PAYMENT, payment.type
    assert_equal "py_123", payment.source_id
    assert payment.valid_source?
    assert payment.valid?
    assert_instance_of Inttegro::BalanceTransactionAmount, payment.amount

    refund = Inttegro.deserialize(
      {
        id: "bt_refund",
        type: "refund",
        refund_id: "rf_123",
        order_id: "or_123",
        amount: { currency: "GHS", value: 500 },
        created_at: "2026-08-31T12:01:00Z"
      },
      Inttegro::BalanceTransaction
    )
    assert_equal "rf_123", refund.source_id
    assert refund.valid_source?

    contradictory = Inttegro::BalanceTransaction.new(
      id: "bt_invalid",
      type: Inttegro::BalanceTransactionType::REFUND,
      payment_id: "py_123",
      refund_id: "rf_123",
      order_id: "or_123",
      amount: Inttegro::BalanceTransactionAmount.new(currency: "GHS", value: 500),
      created_at: "2026-08-31T12:01:00Z"
    )
    refute contradictory.valid_source?
  end

  def test_order_payment_deserializes_embedded_balance_transaction
    order = Inttegro.deserialize(
      {
        "id" => "or_123",
        "customer" => { "id" => "cu_123", "guest" => false, "name" => "Test User" },
        "initiated_at" => "2026-08-31T12:00:00Z",
        "status" => "preparing",
        "payment" => {
          "id" => "py_123",
          "status" => "initiated",
          "statement_descriptor" => "TEST ORDER",
          "amount" => { "currency" => "GHS", "value" => 2500 },
          "initiated_at" => "2026-08-31T12:00:00Z",
          "balance_transaction" => {
            "id" => "bt_123",
            "type" => "payment",
            "payment_id" => "py_123",
            "order_id" => "or_123",
            "amount" => { "currency" => "GHS", "value" => 2500 },
            "created_at" => "2026-08-31T12:00:00Z"
          }
        }
      },
      Inttegro::Order
    )

    assert_instance_of Inttegro::BalanceTransaction, order.payment.balance_transaction
    assert_equal Inttegro::BalanceTransactionType::PAYMENT, order.payment.balance_transaction.type
  end

  def test_order_document_delivery_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.orders.send_invoice(order_id: "or_123")
    client.orders.send_receipt(order_id: "or_123")

    paths = requests.map { |r| r[:uri].path }
    assert_equal ["/orders/send_invoice", "/orders/send_receipt"], paths
  end

  def test_authentication_errors_are_raised
    adapter = make_adapter(
      status: "401",
      body: {
        type: "authentication_error",
        code: "invalid_api_key",
        url: "https://studio.inttegro.com/e/invalid_api_key",
        message: "invalid key",
        detail: "API key is missing or invalid.",
        fix_code: "check_api_key",
        cause: "authentication_failure"
      },
      headers: { "Content-Type" => "application/json" }
    )

    client = Inttegro::Client.new(token: "bad-key", base_url: "https://api.inttegro.com", adapter: adapter)

    error = assert_raises(Inttegro::AuthenticationError) do
      client.orders.lookup(order_id: "or_123")
    end

    assert_equal 401, error.status
    assert_match(/invalid key/, error.message)
  end

  def test_custom_adapter_responses_are_validated_at_the_transport_boundary
    client = Inttegro::Client.new(
      token: "test",
      base_url: "https://api.inttegro.com",
      adapter: ->(_uri, _request) { Object.new }
    )

    error = assert_raises(TypeError) { client.apps.lookup }

    assert_match(/must respond to #code/, error.message)
  end

  def test_read_style_posts_do_not_generate_idempotency_metadata
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.orders.lookup(order_id: "or_123", idempotency_key: "legacy")

    body = JSON.parse(requests.first.fetch(:request).body)
    refute body.key?("request_meta")
    refute body.key?("idempotency_key")
  end

  def test_message_templates_create_uses_request_meta_idempotency_by_default
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.message_templates.create({
      name: "welcome_sms",
      channel: "sms",
      purpose: "marketing",
      sms: { message_template: "Welcome {{name}}" }
    })

    request = requests.first.fetch(:request)
    body = JSON.parse(request.body)
    assert_nil request["Idempotency-Key"]
    assert_match UUID_V7_REGEX, body.dig("request_meta", "idempotency_key")
  end

  def test_apps_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.apps.create(name: "My App")
    client.apps.lookup
    client.apps.update(alias: "my-app")
    client.balances.get

    paths = requests.map { |r| r[:uri].path }
    assert_includes paths, "/apps/create"
    assert_includes paths, "/apps/lookup"
    assert_includes paths, "/apps/update"
    assert_includes paths, "/balances"
  end

  def test_otp_initiate_uses_initiate_endpoint
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.otp.initiate(
      recipient: "+233",
      sender: "Acme",
      service_name: "Acme Bank",
      idempotency_key: "otp_login_1700000000",
      purpose: "login"
    )

    assert_equal "/otp/initiate", requests.first.fetch(:uri).path
  end

  def test_chime_schedule_and_broadcast_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.chimes.schedule(recipients: ["+233"], full_message: "hello", send_after: "2026-01-18T10:00:00Z")
    client.chimes.broadcast(recipients: ["+233"], message_template: "hello", service_name: "test")

    paths = requests.map { |r| r[:uri].path }
    assert_includes paths, "/chimes/schedule"
    assert_includes paths, "/chimes/broadcast"
  end

  def test_schedule_and_broadcast_lookup_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.schedules.lookup(schedule_id: "sch_123")
    client.schedules.cancel(schedule_id: "sch_123")
    client.broadcasts.lookup(broadcast_id: "brc_123")
    client.broadcasts.cancel(broadcast_id: "brc_123")

    paths = requests.map { |r| r[:uri].path }
    assert_includes paths, "/schedules/lookup"
    assert_includes paths, "/schedules/cancel"
    assert_includes paths, "/broadcasts/lookup"
    assert_includes paths, "/broadcasts/cancel"
  end

  def test_payout_cancel_endpoint_matches_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.payouts.cancel(payout_id: "po_123")

    assert_equal "/payouts/cancel", requests.first.fetch(:uri).path
  end

  def test_customers_and_products_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Inttegro::Client.new(token: "test", base_url: "https://api.inttegro.com", adapter: adapter)

    client.customers.create(name: "Jane Doe")
    client.customers.lookup(customer_id: "cu_123")
    client.customers.page(page_number: 1)

    client.products.create(type: "physical", name: "Product")
    client.products.add_price(
      product_id: "prod_123",
      amount: { currency: "ghs", value: 5000 },
      set_as_default: true
    )
    client.products.set_default_unit_price(product_id: "prod_123", price_id: "pr_123")
    client.products.lookup(product_id: "prod_123")
    client.products.update(product_id: "prod_123", name: "Updated")
    client.products.publish(product_id: "prod_123")
    client.products.unpublish(product_id: "prod_123")
    client.products.archive(product_id: "prod_123")
    client.products.page(page_number: 1)

    paths = requests.map { |r| r[:uri].path }
    assert_includes paths, "/customers/create"
    assert_includes paths, "/customers/lookup"
    assert_includes paths, "/customers/page"
    assert_includes paths, "/products/create"
    assert_includes paths, "/products/add_price"
    assert_includes paths, "/products/set_default_unit_price"
    assert_includes paths, "/products/lookup"
    assert_includes paths, "/products/update"
    assert_includes paths, "/products/publish"
    assert_includes paths, "/products/unpublish"
    assert_includes paths, "/products/archive"
    assert_includes paths, "/products/page"
  end

  private

  def openapi_spec_paths
    spec_path = ENV.fetch("INTTEGRO_OPENAPI_SPEC", "")
    if spec_path.strip.empty?
      sdk_root = File.expand_path("..", __dir__)
      spec_path = File.expand_path("../../openapi/commerce.yml", sdk_root)
    end
    assert File.file?(spec_path), "OpenAPI spec not found at #{spec_path}"

    YAML.load_file(spec_path).fetch("paths").keys.sort
  end

  def implemented_sdk_paths
    resource_glob = File.expand_path("../lib/inttegro/resources/**/*.rb", __dir__)
    Dir[resource_glob].flat_map do |file|
      File.read(file).scan(
        %r{@http\.(?:get|post|post_model|post_resource|post_object|post_with_headers|post_multipart|post_multipart_model|post_multipart_resource|post_binary_json)\(\s*["'](/[a-z0-9_/-]+)["']}
      ).flatten
    end.uniq.sort
  end

  def resource_sources
    resource_glob = File.expand_path("../lib/inttegro/resources/**/*.rb", __dir__)
    Dir[resource_glob].sort.map { |file| File.read(file) }.join("\n")
  end

  def make_adapter(status: "200", body: DEFAULT_RESPONSE_BODY, headers: { "Content-Type" => "application/json" }, requests: [])
    lambda do |uri, request|
      requests << { uri: uri, request: request } if requests
      response_body = body.equal?(DEFAULT_RESPONSE_BODY) ? minimal_response_body(uri.path) : body
      StubResponse.new(status, response_body.to_json, headers, "OK")
    end
  end

  def minimal_response_body(path)
    return { page: { number: 0, size: 0, orders: [] } } if path == "/orders/page"
    return { deleted: true, payment_method_id: "pm_123" } if path == "/payment_methods/delete"
    if path == "/payment_methods/verify"
      return { verification: { initiated_at: "2026-09-03T00:00:00Z", request_id: "req_123", type: "otp" } }
    end

    model = Inttegro::Operations::RESPONSE_MODELS[path]
    model ||= Inttegro.const_get(:OrderEnvelope) if path == "/orders/new"
    model ||= Inttegro::Operations::RESPONSE_MODELS["/otp/lookup"] if path == "/otp/cancel"
    model ||= Inttegro::Operations::RESPONSE_MODELS["/payment_methods/lookup"] if path == "/payment_methods/confirm_verification"
    model ||= Inttegro::Operations::RESPONSE_MODELS["/payouts/settings"] if ["/payouts/enable_fx", "/payouts/disable_fx"].include?(path)
    model ||= Inttegro::Operations::RESPONSE_MODELS["/products/lookup"] if path == "/products/set_default_unit_price"
    return {} unless model

    body = minimal_struct_body(model)
    resource_field = %i[
      app transaction page broadcast chime scheduled_chime customer message_template
      order refund key account payout settings file file_link upload_request payment_method
      price product purchase_intent verification
    ].find { |name| model.props.key?(name) }
    if resource_field && !body.key?(resource_field.to_s)
      property = model.props.fetch(resource_field)
      body[property.fetch(:serialized_form)] = minimal_type_value(property.fetch(:type_object))
    end
    body
  end

  def minimal_struct_body(model)
    model.props.each_with_object({}) do |(name, property), output|
      next if property[:fully_optional]

      output[property.fetch(:serialized_form)] = minimal_type_value(property.fetch(:type_object))
    end
  end

  def minimal_type_value(type)
    raw_type = type.respond_to?(:raw_type) ? type.raw_type : nil
    return minimal_class_value(raw_type) if raw_type
    return [] if type.is_a?(T::Types::TypedArray)
    return {} if type.is_a?(T::Types::TypedHash)

    if type.respond_to?(:types)
      candidate = type.types.find { |member| !member.respond_to?(:raw_type) || member.raw_type != NilClass }
      return minimal_type_value(candidate) if candidate
    end

    nil
  end

  def minimal_class_value(type)
    return minimal_struct_body(type) if type <= T::Struct
    return type.values.first.serialize if type <= T::Enum
    return "value" if type == String
    return 1 if type == Integer
    return 1.0 if type == Float
    return true if type == TrueClass
    return false if type == FalseClass

    nil
  end
end
