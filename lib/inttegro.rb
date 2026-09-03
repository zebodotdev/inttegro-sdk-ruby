# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "inttegro/types"
require_relative "inttegro/client"
require_relative "inttegro/errors"
require_relative "inttegro/enums"
require_relative "inttegro/models"
require_relative "inttegro/version"

module Inttegro
  wire_constants = Operations::RESPONSE_MODELS.values.filter_map do |model|
    name = model.name&.split("::")&.last
    name.to_sym if name&.match?(/Response|Envelope/)
  end
  additional_wire_constants = %i[
    ErrorEnvelope
    FileServiceHealthResponse
    FileServiceReadyResponse
    PageFinancialAccountsResponse
    ResponseObject
    TransportResponse
  ]
  (wire_constants + additional_wire_constants).uniq.each do |name|
    private_constant(name) if const_defined?(name, false)
  end
end
