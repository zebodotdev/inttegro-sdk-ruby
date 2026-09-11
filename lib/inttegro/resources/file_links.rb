# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for revocable public capability URLs that deliver Inttegro files.
    #
    # Access this resource through {Inttegro::Client#file_links}.
    class FileLinks
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a public file link.
      #
      # @param payload [Hash, Inttegro::FileLink::CreateRequest] file, delivery, and expiry fields
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::FileLink::Creation] link metadata including the capability URL
      def create(payload, idempotency_key: nil)
        @http.post_model(
          "/file_links/create",
          Inttegro::FileLink::Creation,
          payload,
          headers: headers(idempotency_key)
        )
      end

      # Retrieve a file link without exposing its token material.
      #
      # @param id [String] unique file-link identifier
      # @return [Inttegro::FileLink] matching file link
      def lookup(id:)
        @http.post_resource("/file_links/lookup", Inttegro::FileLink, :file_link, { id: id })
      end

      # Retrieve a filtered page of file links.
      #
      # @param payload [Hash, Inttegro::FileLink::PageRequest] pagination and filter fields
      # @return [Inttegro::FileLink::Page] typed page of file links
      def page(payload = {})
        @http.post_resource("/file_links/page", Inttegro::FileLink::Page, :page, payload || {})
      end

      # Revoke a file link so its capability URL can no longer serve the file.
      #
      # @param payload [Hash, Inttegro::FileLink::RevokeRequest] file-link identifier and request metadata
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::FileLink] revoked file link
      def revoke(payload, idempotency_key: nil)
        @http.post_resource("/file_links/revoke", Inttegro::FileLink, :file_link,
          payload,
          headers: headers(idempotency_key)
        )
      end

      # Download the bytes exposed by a public file-link URL.
      #
      # This public capability request does not use the client's API key. When +save_to+ is
      # supplied, the response is also written to that path before being returned.
      #
      # @param url [String] complete public file-link capability URL
      # @param save_to [String, nil] optional local path for the downloaded bytes
      # @return [Inttegro::FileDownload] response bytes and headers
      def open(url, save_to: nil)
        download = @http.get_binary_public(url)
        download.save_to(save_to) if save_to
        download
      end

      private

      def headers(idempotency_key)
        idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
      end
    end
  end
end
