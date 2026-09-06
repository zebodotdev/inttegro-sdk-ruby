# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

module Inttegro
  # SDK identity included in an ErrorReport.
  class SDKReportContext < T::Struct
    const :language, String
    const :version, String
  end

  # Bounded HTTP metadata included in an ErrorReport.
  class HTTPReportContext < T::Struct
    const :request_method, String
    const :server_address, String
    const :duration_ms, Integer
    const :route, T.nilable(String), default: nil
    const :status_code, T.nilable(Integer), default: nil
    const :request_id, T.nilable(String), default: nil
  end

  # Machine-readable API error metadata included in an ErrorReport.
  class APIErrorReportContext < T::Struct
    const :type, T.nilable(String), default: nil
    const :code, T.nilable(String), default: nil
    const :fix_code, T.nilable(String), default: nil
  end

  # Trace identifiers included when application tracing is enabled.
  class TraceReportContext < T::Struct
    const :trace_id, String
    const :span_id, String
  end

  # Privacy-safe description of a failed Inttegro SDK operation.
  class ErrorReport < T::Struct
    const :schema_version, Integer
    const :event_id, String
    const :occurred_at, String
    const :severity, String
    const :category, String
    const :operation, String
    const :sdk, SDKReportContext
    const :http, HTTPReportContext
    const :exception_type, String
    const :fingerprint, String
    const :api_error, T.nilable(APIErrorReportContext), default: nil
    const :trace, T.nilable(TraceReportContext), default: nil
  end

  ErrorReporter = T.type_alias { T.proc.params(report: ErrorReport).void }
end
