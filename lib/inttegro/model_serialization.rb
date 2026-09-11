# frozen_string_literal: true
# typed: strict

require "set"
require "sorbet-runtime"
require "time"

module Inttegro
  extend T::Sig

  # Field names whose OpenAPI values are RFC 3339 timestamps rather than opaque strings.
  #
  # The deserializer uses this allowlist only after it has entered a generated model payload.
  # Timestamp-like strings inside merchant-controlled metadata remain unchanged.
  TEMPORAL_FIELDS = T.let(%w[
    after archived_at as_of at attempted_at available_at canceled_at checked_at
    claimed_at completed_at created_after created_at created_before deleted_at
    delivered_at disconnected_at due_at enabled_at execute_after executed_at
    expected_at expired_at expires_at expires_on failed_at fulfilled_at inactive_at
    includes_transactions_before initialized_at initiated_at issued_at last_accessed_at
    last_attempted_at last_email_event_at last_used_at occurred_at paid_at payment_due_at
    processing_at published_at queued_at reviewed_at revoked_at scheduled_at sealed_at
    send_after sent_at succeeded_at supplied_at suppressed_at token_sent_at updated_at
    uploading_at valid_until verified_at
  ].to_set.freeze, T::Set[String])
  # Containers whose contents belong to the caller and must not be interpreted as model fields.
  OPAQUE_TIMESTAMP_CONTAINERS = T.let(%w[
    custom_data details headers json_ld mandate metadata variables
  ].to_set.freeze, T::Set[String])

  sig { params(value: Object, klass: T::Class[T::Struct]).returns(T::Struct) }
  # Decode a JSON-compatible API object into a generated Sorbet model.
  #
  # Keys are normalized to strings and known RFC 3339 timestamp fields are converted to
  # +Time+ instances before Sorbet validates the declared model shape. Arbitrary data stored
  # in metadata-like containers is preserved verbatim.
  #
  # @param value [Hash, T::Struct] string- or symbol-keyed API data to decode
  # @param klass [Class<T::Struct>] generated model class that describes the payload
  # @return [T::Struct] an instance of +klass+
  # @raise [TypeError] if +value+ is not an object after normalization
  # @raise [ArgumentError] if a recognized timestamp lacks an explicit UTC offset
  def self.deserialize(value, klass)
    data = stringify_json_keys(value, decode_timestamps: true)
    raise TypeError, "expected an object for #{klass}, got #{data.class}" unless data.is_a?(Hash)

    T.cast(klass, T.class_of(T::Struct)).from_hash(data)
  end

  sig { params(value: Object, decode_timestamps: T::Boolean).returns(Object) }
  # Recursively normalize API data for Sorbet deserialization.
  #
  # @param value [Object] value to normalize
  # @param decode_timestamps [Boolean] whether recognized timestamp fields should become +Time+ objects
  # @return [Object] normalized value
  # @api private
  def self.stringify_json_keys(value, decode_timestamps: false)
    case value
    when T::Struct
      stringify_json_keys(value.serialize, decode_timestamps: decode_timestamps)
    when T::Enum
      value.serialize
    when Hash
      value.each_with_object({}) do |(key, item), output|
        field = key.to_s
        child_decode = decode_timestamps && !OPAQUE_TIMESTAMP_CONTAINERS.include?(field)
        output[field] = if child_decode && TEMPORAL_FIELDS.include?(field) && item.is_a?(String)
          unless item.match?(/(?:Z|[+-]\d{2}:\d{2})\z/)
            raise ArgumentError, "timestamp #{field} must include a UTC offset"
          end
          Time.iso8601(item)
        else
          stringify_json_keys(item, decode_timestamps: child_decode)
        end
      end
    when Array
      value.map { |item| stringify_json_keys(item, decode_timestamps: decode_timestamps) }
    when Time
      value.iso8601(9)
    else
      value
    end
  end
  private_class_method :stringify_json_keys
end
