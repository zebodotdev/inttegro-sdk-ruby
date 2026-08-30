# frozen_string_literal: true

module Commerce
  module Resources
    class FileReferences
      def initialize(http)
        @http = http
      end

      def reconcile(payload)
        @http.post("/file_references/reconcile", payload)
      end
    end
  end
end
