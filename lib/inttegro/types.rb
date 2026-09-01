# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"
require "net/http"
require "uri"

module Inttegro
  # Shared public types used by the SDK's Sorbet signatures.
  module Types
    Scalar = T.type_alias { T.any(String, Integer, Float, TrueClass, FalseClass, NilClass) }
    Key = T.type_alias { T.any(String, Symbol) }

    # Ruby's type system cannot express recursive JSON containers without an
    # escape hatch. Object is deliberate here: callers must narrow an unknown
    # wire value before using it, instead of silently disabling checks.
    Payload = T.type_alias { T::Hash[Key, Object] }
    Headers = T.type_alias { T::Hash[String, String] }
    ResponseHeaders = T.type_alias { T::Hash[String, T::Array[String]] }
    QueryValue = T.type_alias do
      T.any(Scalar, T::Array[String], T::Array[Integer], T::Array[Float])
    end
    Query = T.type_alias { T::Hash[Key, QueryValue] }
    RequestBody = T.type_alias { T.any(Payload, T::Struct) }
    WireValue = T.type_alias do
      T.any(Scalar, T::Enum, T::Struct, Payload, T::Array[Object])
    end
    Adapter = T.type_alias do
      T.proc.params(uri: URI::Generic, request: Net::HTTPRequest).returns(Object)
    end
  end
end
