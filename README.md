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
  destinations: { "ghs" => "fa_wallet", "usd" => "fa_bank_account" }
)
puts settings.settings.enabled_methods
```

### Typed models

```ruby
account = client.financial_accounts.connect(
  Commerce::Models::FinancialAccountCreateRequest.new(
    label: "Primary GHS Bank Account",
    type: "bank_account",
    reference: "BANK-GHS-001",
    currency: "ghs",
    custom_data: { "merchant_id" => "merch_123" },
    pull_configuration: Commerce::Models::PullPushConfig.new(
      enabled: true,
      mandate: {}
    ),
    owner: Commerce::Models::BankAccountOwner.new(
      name: "Jane Smith",
      address: Commerce::Models::BankAccountOwnerAddress.new(
        name: "Business Address",
        line_1: "456 Business Road",
        city: "Accra",
        region: "Greater Accra",
        country: "Ghana"
      )
    ),
    bank_account: Commerce::Models::BankAccountConfig.new(
      type: "ghana_bank_account",
      ghana_bank_account: Commerce::Models::GhanaBankAccount.new(
        number: "1234567890",
        sort_code: "040127",
        holder: Commerce::Models::BankAccountOwner.new(
          name: "John Doe",
          address: Commerce::Models::BankAccountOwnerAddress.new(
            name: "Home Address",
            line_1: "123 Main Street",
            city: "Accra",
            region: "Greater Accra",
            country: "Ghana"
          )
        )
      )
    ),
    push_configuration: Commerce::Models::PullPushConfig.new(enabled: true)
  )
)

puts account.account.id
```

Typed model requests validate required fields and raise `ArgumentError` when missing. Responses are returned as typed models for supported endpoints (no manual deserialization needed).

```ruby
puts account.account.id
```

```ruby
client.financial_accounts.disable_push(
  account_id: "fa_1234567890abcdef",
  unset_as_payout_destination: true
)

client.financial_accounts.disconnect(
  account_id: "fa_1234567890abcdef",
  unset_as_payout_destination: true
)
```

```ruby
client.financial_accounts.page(page_number: 1, page_size: 50)
```

### Customers

```ruby
customer = client.customers.create(
  name: "Jane Doe",
  email_address: "jane@example.com",
  phone_number: "+233501234567"
)

existing = client.customers.lookup(customer_id: "cu_1234567890abcdef")
page = client.customers.page(page_number: 1, page_size: 50)
```

### Products

```ruby
product = client.products.create(
  type: "physical",
  name: "Premium Cotton T-Shirt"
)

client.products.add_price(
  product_id: product["product"]["id"],
  amount: { currency: "ghs", value: 5000 },
  set_as_default: true
)

products_page = client.products.page(page_number: 1, page_size: 50)

client.products.publish(product_id: product["product"]["id"])
```

### Prices

```ruby
price = client.prices.create(
  currency: "USD",
  amount: 1999,
  label: "Standard pricing"
)

client.prices.update(
  price_id: price["price"]["id"],
  label: "Premium pricing"
)
```

### Apps

```ruby
app = client.apps.create(name: "My App")
current_app = client.apps.lookup
updated_app = client.apps.update(alias: "my-app")
```

## Available resources

- `client.orders.create|new|lookup|update|pay|confirm_payment|request_confirmation|finalize|complete|cancel|refund|page`
- `client.payment_methods.tokenize|verify|confirm_verification|lookup|page|update|activate|disactivate|archive|unarchive|delete|settings`
- `client.payouts.set_destinations|settings|disable_automatic|enable_automatic|enable_fx|disable_fx|page|schedule|lookup|cancel`
- `client.balance_transactions.lookup|page`
- `client.financial_accounts.create|lookup|connect|archive|page|verify|update|enable_push|disable_push|enable_pull|disable_pull|disconnect|reconnect`
- `client.file_references.reconcile`
- `client.customers.create|lookup|page`
- `client.keys.generate|page|lookup|update|destroy|usage`
- `client.prices.create|lookup|page|update|activate|deactivate`
- `client.products.create|add_price|set_default_unit_price|lookup|update|publish|unpublish|archive|page`
- `client.purchase_intents.create|update|cancel|lookup|page`
- `client.chimes.send|lookup|page|schedule|broadcast`
- `client.schedules.lookup|cancel`
- `client.broadcasts.lookup|cancel`
- `client.otp.initiate|verify|lookup|cancel`
- `client.balances.get`
- `client.apps.create|lookup|update`
- `client.spec.countries`

## Development

From `sdks/ruby`:

```bash
bundle install
rake test
```

`bin/console` will start an IRB session with the SDK loaded for quick experiments.

## API enum values

Use the frozen constants under `Commerce::Enums`:

```ruby
payload = {
  type: Commerce::Enums::ProductType::DIGITAL,
  reason: Commerce::Enums::RefundReason::REQUESTED_BY_CUSTOMER
}
```
