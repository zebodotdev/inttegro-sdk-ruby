# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for uploading, listing, downloading, and deleting application-owned files.
    #
    # Access this resource through {Inttegro::Client#files}.
    class Files
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Upload a file using multipart form data.
      #
      # @param file [String] local path of the file to upload
      # @param purpose [String] API purpose assigned to the file
      # @param title [String, nil] optional display title
      # @param custom_data [Hash, nil] optional merchant-defined data
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::File] created file record
      def create(file:, purpose:, title: nil, custom_data: nil, idempotency_key: nil)
        headers = idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
        @http.post_multipart_resource("/files/create", Inttegro::File, :file,
          fields: { purpose: purpose, title: title, custom_data: custom_data },
          files: { file: file },
          headers: headers
        )
      end

      # Retrieve metadata for one file.
      #
      # @param file_id [String] unique file identifier
      # @return [Inttegro::File] matching file record
      def lookup(file_id:)
        @http.post_resource("/files/lookup", Inttegro::File, :file, { file_id: file_id })
      end

      # Retrieve a filtered page of files.
      #
      # @param payload [Hash, Inttegro::File::PageRequest] pagination and filter fields
      # @return [Inttegro::File::Page] typed page of files
      def page(payload = {})
        @http.post_resource("/files/page", Inttegro::File::Page, :page, payload || {})
      end

      # Retrieve the original bytes for a file.
      #
      # @param file_id [String] unique file identifier
      # @param disposition [String] requested delivery disposition, normally +"attachment"+ or +"inline"+
      # @return [Inttegro::FileDownload] response bytes and headers
      def contents(file_id:, disposition: "attachment")
        @http.post_binary_json("/files/contents", { file_id: file_id, disposition: disposition })
      end

      # Tombstone a file and request backing-object cleanup under the API's reference policy.
      #
      # @param file_id [String] unique file identifier
      # @return [Inttegro::File] deleted file record
      def delete(file_id:)
        @http.post_resource("/files/delete", Inttegro::File, :file, { file_id: file_id })
      end
    end
  end
end
