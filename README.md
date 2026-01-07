# Zebo Commerce Ruby SDK

Lightweight Ruby client for the Zebo Commerce API. It mirrors the flows shown in the Studio docs: creating orders, executing/confirming payments, tokenizing payment methods, configuring payouts, and sending notifications.

## Installation

```bash
gem install zebo-commerce
```

Or with Bundler:

```ruby
gem "zebo-commerce", path: "sdks/ruby"
```

## Quick start

```ruby
require "commerce"

client = Commerce::Client.new(token: ENV.fetch("COMMERCE_API_KEY"))

order = client.orders.create(
  number: "ORDER-123",
  customer_data: {
    name: "Akua Mensah",
    phone_number: "+233544998605"
  },
  payout_settings: {
    destination: {
      financial_account_id: "fa_1234567890abcdef"
    },
    enable_fx: false
  },
  payment_method_data: {
    type: "mobile_money",
    mobile_money: { issuer: "mtn", number: "0544998605" }
  },
  line_items: [
    {
      type: "product",
      product: {
        name: "Monthly Subscription",
        price: { currency: "ghs", value: 5000 },
        quantity: 1
      }
    }
  ]
)

puts order.order.id # => "or_..."
```

Responses are wrapped in lightweight objects so you can access keys as either methods or hash entries (`order.order.id` or `order["order"]["id"]`).

## Examples

### Create an order with payment

```ruby
client = Commerce::Client.new(token: ENV["COMMERCE_API_KEY"])

order = client.orders.create(
  idempotency_key: "order_checkout_abc123_#{Time.now.to_i}",
  customer_data: { name: "Customer", phone_number: "+233200000000" },
  payout_settings: {
    destination: {
      financial_account_id: "fa_1234567890abcdef"
    },
    enable_fx: false
  },
  payment_method_data: { type: "mobile_money", mobile_money: { issuer: "mtn", number: "0544998605" } },
  line_items: [
    { type: "product", product: { name: "Utility Sneakers", quantity: 1, price: { currency: "ghs", value: 20000 } } }
  ],
  execute_payment: true
)

puts order.order.id
puts order.redirect_url # present when customer action is required
```

### Handle errors

```ruby
begin
  client.orders.lookup(order_id: "or_missing")
rescue Commerce::AuthenticationError => e
  warn "Check your API key: #{e.message}"
rescue Commerce::RateLimitError => e
  warn "Back off and retry after #{e.retry_after}s"
rescue Commerce::APIError => e
  warn "API error (#{e.status}): #{e.message}"
end
```

### Tokenize and charge a saved payment method

```ruby
pm = client.payment_methods.tokenize(
  type: "mobile_money",
  mobile_money: { issuer: "mtn", number: "0544998605" }
)

client.payment_methods.verify(payment_method_id: pm.payment_method.id)

payment = client.orders.pay(
  order_id: "or_123",
  payment_method_id: pm.payment_method.id
)

if payment.requires_confirmation
  client.orders.confirm_payment(order_id: payment.order_id, token: "123456")
end
```

### OTP flows

```ruby
txn = client.otp.initiate(
  recipient: "+233241234567",
  idempotency_key: "otp_login_#{Time.now.to_i}",
  sender: "Acme",
  service_name: "Acme Bank",
  purpose: "login"
)

verification = client.otp.verify(
  transaction_id: txn["transaction_id"] || txn.dig("transaction", "id"),
  recipient: "+233241234567",
  token: "123456"
)
puts verification["status"] # e.g., "verified"
```

### Payout settings

```ruby
settings = client.payouts.set_destinations(
  destinations: { "ghs" => "momo:0544998605", "usd" => "bank:0011223344" }
)
puts settings.settings.enabled_methods
```

### Platform: apps, keys, sessions

```ruby
platform = client.platform

app = platform.create_app(name: "My App")
key = platform.generate_key(app_id: app["app"]["id"], name: "Server key")
session = platform.new_session(app_id: app["app"]["id"])

puts key["key"]["secret"]
puts session["session"]["token"]
```

## Available resources

- `client.orders.create|lookup|pay|confirm_payment|request_confirmation|finalize|complete|cancel|refund|page`
- `client.payment_methods.tokenize|verify|confirm_verification|lookup|delete|settings`
- `client.payouts.set_destinations|settings|disable_automatic|enable_fx|disable_fx|page`
- `client.balance_transactions.page`
- `client.financial_accounts.create|lookup|connect|archive|page|verify`
- `client.chimes.send|lookup|schedule`
- `client.otp.initiate|verify|lookup|cancel`
- `client.balances.get`
- `client.platform.create_app|generate_key|new_session`
- `client.spec.countries`

## Development

From `sdks/ruby`:

```bash
bundle install
rake test
```

`bin/console` will start an IRB session with the SDK loaded for quick experiments.
