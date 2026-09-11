# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Standard error response structure returned by all API endpoints. Provides machine-readable
    # codes, human-readable messages, and actionable guidance for resolution.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] message
    #   Concise, caller-safe explanation of why the request was rejected or could not finish.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `message`.
    #   @return [String, nil]
    #
    # @!attribute [r] fix_code
    #   Machine-readable suggestion for how to resolve the error (e.g.,
    #   "retry_with_exponential_backoff", "change_request_parameters").
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `fix_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] detail
    #   Explanation of the relevant rule and next safe action. It never contains raw dependency,
    #   storage, or implementation errors.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `detail`.
    #   @return [String, nil]
    #
    # @!attribute [r] cause
    #   Stable category describing the reason for failure, such as invalid input, an unmet
    #   precondition, or a state conflict.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `cause`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Broad error category to help clients determine retry strategies (e.g.,
    #   "invalid_request_parameter", "transient_error").
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [String]
    #
    # @!attribute [r] code
    #   Unique machine-readable identifier for this specific error condition. Unlike type and cause
    #   which group errors, code pinpoints the exact problem.
    #
    #   Required in the API payload. Wire name: `code`.
    #   @return [String]
    #
    # @!attribute [r] url
    #   Link to error reference documentation with detailed explanation, common causes, and
    #   resolution guidance.
    #
    #   Required in the API payload. Wire name: `url`.
    #   @return [String]
    class ErrorPayload < T::Struct
      const :message, T.nilable(String), default: nil
      const :fix_code, T.nilable(String), default: nil
      const :detail, T.nilable(String), default: nil
      const :cause, T.nilable(String), default: nil
      const :type, String
      const :code, String
      const :url, String
    end
  end
end
