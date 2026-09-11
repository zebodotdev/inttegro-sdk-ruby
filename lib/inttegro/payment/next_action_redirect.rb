# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "next_action_redirect_latest_visit"

module Inttegro
  class Payment
    # Details for redirect action
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] redirect_url
    #   URL to redirect the customer to
    #
    #   Required in the API payload. Wire name: `redirect_url`.
    #   @return [String]
    #
    # @!attribute [r] valid_until
    #   When the redirect URL expires
    #
    #   Required in the API payload. Wire name: `valid_until`.
    #   @return [Time]
    #
    # @!attribute [r] latest_visit
    #   Latest redirect visit details
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `latest_visit`.
    #   @return [Inttegro::Payment::NextActionRedirectLatestVisit, nil]
    class NextActionRedirect < T::Struct
      const :redirect_url, String
      const :valid_until, Time
      const :latest_visit, T.nilable(Inttegro::Payment::NextActionRedirectLatestVisit), default: nil
    end
  end
end
