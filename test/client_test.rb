# frozen_string_literal: true

require "test_helper"
require "json"

class CommerceClientTest < Minitest::Test
  StubResponse = Struct.new(:code, :body, :headers, :message) do
    def [](key)
      (headers || {})[key]
    end
  end

  UUID_V7_REGEX = /\A[0-9a-f]{8}-[0-9a-f]{4}-7[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}\z/i

  def test_orders_create_posts_json_and_parses_response
    requests = []
    adapter = make_adapter(
      requests: requests,
      body: { order: { id: "or_123" }, redirect_url: "https://checkout" }
    )

    client = Commerce::Client.new(
      token: "test-key",
      base_url: "https://api.zebo.dev",
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

    assert_equal "/orders/new", requests.first.fetch(:uri).path
    assert_equal "Bearer test-key", request["Authorization"]
    assert_equal "application/json", request["Content-Type"]
    parsed_body = JSON.parse(request.body)
    assert_equal "ORDER-123", parsed_body["number"]
    assert_equal "Test User", parsed_body.dig("customer_data", "name")
    assert_equal "Sample Item", parsed_body.dig("line_items", 0, "product", "name")
    assert_match UUID_V7_REGEX, parsed_body.dig("request_meta", "idempotency_key")
    refute parsed_body.key?("idempotency_key")

    assert_equal "or_123", response.order.id
    refute_respond_to response, :redirect_url
  end

  def test_order_document_delivery_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

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
        url: "https://commerce.zebo.dev/e/invalid_api_key",
        message: "invalid key",
        detail: "API key is missing or invalid.",
        fix_code: "check_api_key",
        cause: "authentication_failure"
      },
      headers: { "Content-Type" => "application/json" }
    )

    client = Commerce::Client.new(token: "bad-key", base_url: "https://api.zebo.dev", adapter: adapter)

    error = assert_raises(Commerce::AuthenticationError) do
      client.orders.lookup(order_id: "or_123")
    end

    assert_equal 401, error.status
    assert_match(/invalid key/, error.message)
  end

  def test_read_style_posts_do_not_generate_idempotency_metadata
    requests = []
    adapter = make_adapter(requests: requests)
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

    client.orders.lookup(order_id: "or_123", idempotency_key: "legacy")

    body = JSON.parse(requests.first.fetch(:request).body)
    refute body.key?("request_meta")
    refute body.key?("idempotency_key")
  end

  def test_message_templates_create_uses_request_meta_idempotency_by_default
    requests = []
    adapter = make_adapter(requests: requests)
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

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
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

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
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

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
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

    client.chimes.schedule(recipients: ["+233"], full_message: "hello", send_after: "2026-01-18T10:00:00Z")
    client.chimes.broadcast(recipients: ["+233"], message_template: "hello", service_name: "test")

    paths = requests.map { |r| r[:uri].path }
    assert_includes paths, "/chimes/schedule"
    assert_includes paths, "/chimes/broadcast"
  end

  def test_schedule_and_broadcast_lookup_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

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
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

    client.payouts.cancel(payout_id: "po_123")

    assert_equal "/payouts/cancel", requests.first.fetch(:uri).path
  end

  def test_customers_and_products_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

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

  def make_adapter(status: "200", body: {}, headers: { "Content-Type" => "application/json" }, requests: [])
    lambda do |uri, request|
      requests << { uri: uri, request: request } if requests
      StubResponse.new(status, body.to_json, headers, "OK")
    end
  end
end
