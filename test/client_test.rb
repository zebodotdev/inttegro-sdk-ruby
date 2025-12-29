# frozen_string_literal: true

require "test_helper"
require "json"

class CommerceClientTest < Minitest::Test
  StubResponse = Struct.new(:code, :body, :headers, :message) do
    def [](key)
      (headers || {})[key]
    end
  end

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

    response = client.orders.create(number: "ORDER-123")
    request = requests.first.fetch(:request)

    assert_equal "/orders/new", requests.first.fetch(:uri).path
    assert_equal "Bearer test-key", request["Authorization"]
    assert_equal "application/json", request["Content-Type"]
    assert_equal({ "number" => "ORDER-123" }, JSON.parse(request.body))

    assert_equal "or_123", response.order.id
    assert_equal "https://checkout", response.redirect_url
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

  def test_platform_endpoints_match_spec
    requests = []
    adapter = make_adapter(requests: requests)
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

    client.platform.create_app(name: "My App")
    client.platform.generate_key(app_id: "app_123")
    client.platform.new_session(app_id: "app_123")
    client.balances.get

    paths = requests.map { |r| r[:uri].path }
    assert_includes paths, "/apps/create"
    assert_includes paths, "/keys/generate"
    assert_includes paths, "/sessions/new"
    assert_includes paths, "/balances"
  end

  def test_otp_initiate_uses_initialize_endpoint
    requests = []
    adapter = make_adapter(requests: requests)
    client = Commerce::Client.new(token: "test", base_url: "https://api.zebo.dev", adapter: adapter)

    client.otp.initiate(recipient: "+233", purpose: "login")

    assert_equal "/otp/initialize", requests.first.fetch(:uri).path
  end

  private

  def make_adapter(status: "200", body: {}, headers: { "Content-Type" => "application/json" }, requests: [])
    lambda do |uri, request|
      requests << { uri: uri, request: request } if requests
      StubResponse.new(status, body.to_json, headers, "OK")
    end
  end
end
