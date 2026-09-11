# frozen_string_literal: true
# typed: strict

# Public enum classes are grouped with the resource they describe. For example,
# product types live at Inttegro::Product::Type and refund reasons live at
# Inttegro::Refund::Reason. Shared wire vocabularies use focused namespaces such
# as Inttegro::Money and Inttegro::Shared. Call #serialize for the wire value.
require_relative "generated/enums"
