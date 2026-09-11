# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for delegated, policy-constrained file uploads.
    #
    # Access this resource through {Inttegro::Client#upload_requests}. Management methods use the
    # client's API key; {#fulfill} uses the public capability URL and is intentionally unauthenticated.
    class UploadRequests
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a delegated upload request.
      #
      # @param payload [Hash, Inttegro::UploadRequest::CreateRequest] purpose, constraints, and expiry fields
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::UploadRequest] created upload request
      def create(payload, idempotency_key: nil)
        @http.post_resource(
          "/upload_requests/create",
          Inttegro::UploadRequest, :upload_request,
          payload,
          headers: headers(idempotency_key)
        )
      end

      # Retrieve an upload request and its current attempt details.
      #
      # @param id [String] unique upload request identifier
      # @return [Inttegro::UploadRequest::Details] upload request with attempt state
      def lookup(id:)
        @http.post_resource(
          "/upload_requests/lookup",
          Inttegro::UploadRequest::Details, :upload_request,
          { id: id }
        )
      end

      # Retrieve a page of upload requests.
      #
      # @param payload [Hash, Inttegro::UploadRequest::PageRequest] pagination and filter fields
      # @return [Inttegro::UploadRequest::Page] typed page of upload requests
      def page(payload = {})
        @http.post_resource("/upload_requests/page", Inttegro::UploadRequest::Page, :page, payload || {})
      end

      # Cancel an active delegated upload request.
      #
      # @param payload [Hash, Inttegro::UploadRequest::CancelRequest] upload request identifier and metadata
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::UploadRequest] canceled upload request
      def cancel(payload, idempotency_key: nil)
        @http.post_resource(
          "/upload_requests/cancel",
          Inttegro::UploadRequest, :upload_request,
          payload,
          headers: headers(idempotency_key)
        )
      end

      # Record a manual approval or rejection for a submitted upload attempt.
      #
      # @param payload [Hash, Inttegro::UploadRequest::ReviewAttemptRequest] attempt selector and review decision
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::UploadRequest::Details] updated request with review state
      def review(payload, idempotency_key: nil)
        @http.post_resource(
          "/upload_requests/review",
          Inttegro::UploadRequest::Details, :upload_request,
          payload,
          headers: headers(idempotency_key)
        )
      end

      # Submit a file through the public delegated-upload capability URL.
      #
      # @param upload_url [String] complete capability URL returned when the upload request was created
      # @param file [String] local path of the file to upload
      # @return [Inttegro::Shared::UploadFulfillment] validation and fulfillment result
      def fulfill(upload_url:, file:)
        @http.post_multipart_model(
          upload_url,
          Inttegro::Shared::UploadFulfillment,
          files: { file: file },
          authenticated: false,
          operation: "upload_requests.upload"
        )
      end

      private

      def headers(idempotency_key)
        idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
      end
    end
  end
end
