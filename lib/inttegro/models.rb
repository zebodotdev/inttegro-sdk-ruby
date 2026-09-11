# frozen_string_literal: true
# typed: strict

# Generated resource models are loaded in dependency order by this manifest.
require_relative "generated/models"

# Hand-written behavior lives beside the resource it extends.
require_relative "model_serialization"
require_relative "money/currency_deserialization"
require_relative "balance_transaction/questions"
require_relative "payment/questions"
require_relative "order/questions"
require_relative "purchase_intent/questions"
require_relative "product/questions"
require_relative "payment_method/questions"
require_relative "payment_method/deletion"
require_relative "product/set_default_unit_price_request"
