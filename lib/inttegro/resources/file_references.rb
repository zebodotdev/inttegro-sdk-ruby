# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for reconciling the files referenced by another Inttegro resource.
    #
    # Access this resource through {Inttegro::Client#file_references}.
    class FileReferences
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Replace the complete set of live file references for one resource.
      #
      # @param payload [Hash, Inttegro::FileReference::ReconcileRequest] resource and replacement references
      # @return [Inttegro::FileReference::Reconciliation] reconciliation result
      def reconcile(payload)
        @http.post_model(
          "/file_references/reconcile",
          Inttegro::FileReference::Reconciliation,
          payload
        )
      end
    end
  end
end
