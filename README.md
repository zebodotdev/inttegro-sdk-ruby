# Inttegro Ruby SDK

The official Ruby client for building server-side Inttegro integrations.

> **Fastest, most modern path:** connect an agent to [Inttegro MCP](https://studio.inttegro.com/inttegro-mcp) at `https://mcp.inttegro.com`, then ask it to run `design_integration`. It will produce an implementation and test plan for your application. Use this SDK when you are ready to connect that plan to your Ruby service.

All official Inttegro SDKs expose the same API capabilities. This gem adds strict Sorbet types and Ruby-native resource methods.

## Install

Requires Ruby 3.0 or newer.

```bash
bundle add inttegro
```

Store your secret key in the server environment:

```bash
export INTTEGRO_API_KEY="your_secret_key"
```

Never put the key in browser code, a mobile app, or source control. The client uses `https://api.inttegro.com` by default.

## Create a hosted checkout

Create and finalize an order, then send the customer to its hosted invoice URL:

```ruby
# typed: strict

require "inttegro"

inttegro = Inttegro::Client.new(api_key: ENV.fetch("INTTEGRO_API_KEY"))

begin
  result = inttegro.orders.create(
    request_meta: { idempotency_key: "checkout-cart-123" },
    customer_data: {
      name: "Akua Mensah",
      email_address: "akua@example.com",
      phone_number: "+233544998605"
    },
    finalize: true,
    checkout_settings: {
      redirect_url: "https://example.com/orders/complete",
      cancel_url: "https://example.com/cart"
    },
    line_items: [{
      type: "product",
      product: {
        type: Inttegro::Enums::ProductType::DIGITAL,
        name: "Monthly subscription",
        quantity: 1,
        price: { currency: "ghs", value: 5000 }
      }
    }]
  )

  checkout_url = result.order.invoice&.format_value&.web&.url
  raise "Order did not include a checkout URL" unless checkout_url
  puts "#{result.order.id} #{checkout_url}"
rescue Inttegro::APIError => error
  warn "#{error.code || 'api_error'}: #{error.detail || error.message}"
  raise
end
```

Amounts use integer minor units: `5000` GHS is GHS 50.00. Reuse the same idempotency key when retrying the same logical write. If you omit one, the SDK generates a UUIDv7 key for mutating calls.

## Work with the API

The SDK covers orders and checkout, customers, products and prices, purchase intents, payment methods, balances, payouts and refunds, notifications, files, application settings, keys, and country specifications. Resources use snake-case readers such as `purchase_intents` and `payment_methods`.

Ruby-specific features:

- `typed: strict` throughout the gem with signatures on every method.
- OpenAPI-generated `T::Struct` request and response models for exact resource shapes.
- OpenAPI-generated `T::Enum` classes for public API values.
- Typed resource methods, binary downloads, and public RBI files included in the gem.
- Configurable connection/read timeouts and an injectable adapter for tests.

Hash request payloads remain available for concise Ruby code. Sorbet applications can use the generated classes under `Inttegro::Models` when they want construction-time field checks.

See the [API reference](https://studio.inttegro.com/api-reference) for request fields and lifecycle rules, [errors](https://studio.inttegro.com/errors) for recovery guidance, and [idempotency](https://studio.inttegro.com/idempotency) for safe retries.

## Develop

```bash
bundle install
bundle exec rake test
bundle exec rake sorbet
bundle exec rake openapi:check
```
