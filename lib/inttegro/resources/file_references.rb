# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class FileReferences
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def reconcile(payload)
        @http.post_model(
          "/file_references/reconcile",
          Inttegro::Models::FileReferenceReconcileResponse,
          payload
        )
      end
    end
  end
end
