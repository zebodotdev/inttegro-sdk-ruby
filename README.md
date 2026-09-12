# Inttegro Ruby SDK

[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/inttegro/inttegro-sdk-ruby/badge)](https://scorecard.dev/viewer/?uri=github.com/inttegro/inttegro-sdk-ruby)

The official Ruby client for building server-side Inttegro integrations.

[API documentation](https://ruby.inttegro.dev/) · [Integration guides](https://studio.inttegro.com/sdks/ruby)

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
  order = inttegro.orders.create(
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
        type: Inttegro::Product::Type::DIGITAL,
        name: "Monthly subscription",
        quantity: 1,
        price: Inttegro::Price::PriceParams.new(
          currency: Inttegro::Money::Currency::GHS,
          value: 5000
        )
      }
    }]
  )

  checkout_url = order.invoice&.format_value&.web&.url
  raise "Order did not include a checkout URL" unless checkout_url
  puts "#{order.id} #{checkout_url}"
rescue Inttegro::APIError => error
  warn "#{error.code || 'api_error'}: #{error.detail || error.message}"
  raise
end
```

Amounts use integer minor units: `5000` GHS is GHS 50.00. Reuse the same idempotency key when retrying the same logical write. If you omit one, the SDK generates a UUIDv7 key for mutating calls.

## Observe SDK operations

The SDK emits vendor-neutral OpenTelemetry spans through your application's provider. It never configures an exporter or sends telemetry by itself. Configure OpenTelemetry before creating the client:

```ruby
require "opentelemetry/sdk"
require "inttegro"

OpenTelemetry::SDK.configure
inttegro = Inttegro::Client.new(api_key: ENV.fetch("INTTEGRO_API_KEY"))
```

Spans are named after logical operations such as `inttegro.orders.create`. HTTP attempts, response receipt, and decoding are span events. API keys, bodies, resource IDs, dynamic URLs, and exception messages are never recorded. See [SDK observability](https://studio.inttegro.com/sdk-observability) for the complete contract and set `telemetry_enabled: false` when needed.

### Report SDK failures

Provide an application-owned reporter to receive one immutable, typed, privacy-safe report after an SDK operation finally fails. The default `:unexpected` policy reports transport, timeout, decoding, SDK, `unknown_error`, and server-side failures while leaving normal 4xx API errors alone:

```ruby
inttegro = Inttegro::Client.new(
  api_key: ENV.fetch("INTTEGRO_API_KEY"),
  error_reporter: ->(report) { ErrorCollector.enqueue(report.serialize) }
)
```

Use `error_reporting_policy: :all` to include expected API failures; cancellations are never reported. Reports contain the logical operation, static route, server host, status and request IDs when available, duration, safe API error codes, SDK identity, stable fingerprint, exception type, and trace IDs when tracing is active. They exclude credentials, headers, bodies, resource IDs, dynamic URLs, exception messages, and stack traces. Reporter failures are isolated and the original SDK error is still raised.

Error reporting is completely opt-in. Without `error_reporter`, the SDK does not calculate report metadata, create an event ID or timestamp, allocate a report, or serialize a payload.

## Work with the API

The SDK covers orders and checkout, customers, products and prices, purchase intents, payment methods, balances, payouts and refunds, notifications, files, application settings, keys, and country specifications. Resources use snake-case readers such as `purchase_intents` and `payment_methods`.

### Navigate resource models

Each primary API resource uses the matching Ruby class, while related models and enums live beneath that class. This keeps autocomplete and generated API documentation focused on the resource you are working with:

```ruby
Inttegro::Product                 # the product returned by the API
Inttegro::Product::Type           # product type enum
Inttegro::Product::Dimensions     # related product model

Inttegro::Payment                 # the payment recorded on an order
Inttegro::Payment::Status         # payment lifecycle enum
Inttegro::Payment::NextAction     # action required to continue payment

Inttegro::Refund                  # a refund resource
Inttegro::Refund::Reason          # refund reason enum
Inttegro::Refund::Status          # refund lifecycle enum
```

Generated models are immutable `T::Struct` objects. Use `.new` when constructing a typed request, `.from_hash` when you already have string-keyed wire data, and `#serialize` when you need a JSON-ready hash. API responses are decoded for you by resource methods, including conversion of declared timestamps to `Time` objects.

```ruby
product = Inttegro::Product.from_hash(
  "active" => true,
  "created_at" => "2026-09-11T09:30:00Z",
  "id" => "prod_abc123",
  "name" => "Field guide",
  "type" => "digital"
)

product.type == Inttegro::Product::Type::DIGITAL # => true
product.published?                               # => true when active and not archived
product.serialize                               # => string-keyed API data
```

Frequently needed lifecycle questions are methods on the main object: `payment.paid?`, `payment.required_action`, `order.terminal?`, `purchase_intent.used_order_id`, `product.published?`, and `payment_method.reusable?`. These methods inspect the current model only; they never make an API request. See the [generated API documentation](https://ruby.inttegro.dev/) for every class, field, enum value, and method.

Ruby-specific features:

- `typed: strict` throughout the gem with signatures on every method.
- OpenAPI-generated `T::Struct` request and domain models for exact resource shapes.
- OpenAPI-generated `T::Enum` classes for public API values.
- Typed resource methods, binary downloads, and public RBI files included in the gem.
- Configurable connection/read timeouts and an injectable adapter for tests.

Hash request payloads remain available for concise Ruby code. Sorbet applications can use the resource-scoped generated classes when they want construction-time field checks.

See the [API reference](https://studio.inttegro.com/api-reference) for request fields and lifecycle rules, [errors](https://studio.inttegro.com/errors) for recovery guidance, and [idempotency](https://studio.inttegro.com/idempotency) for safe retries.

## Verify a release

The GitHub release for each version is the canonical record. It contains the exact gem uploaded to RubyGems.org, SHA-256 checksums, and GitHub and RubyGems Sigstore attestations tied to the source commit and release workflow.

```bash
sha256sum --check SHA256SUMS
gh attestation verify inttegro-4.2.2.gem \
  --repo inttegro/inttegro-sdk-ruby
```

## Develop

```bash
bundle install
bundle exec rake test
bundle exec rake sorbet
bundle exec rake openapi:check
```
