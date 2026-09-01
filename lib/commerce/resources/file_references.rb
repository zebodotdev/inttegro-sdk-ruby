# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class FileReferences
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def reconcile(payload)
        @http.post_model(
          "/file_references/reconcile",
          Commerce::Models::FileReferenceReconcileResponse,
          payload
        )
      end
    end
  end
end
