# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for immediate, scheduled, and broadcast SMS or email notifications.
    #
    # Access this resource through {Inttegro::Client#chimes}.
    class Chimes
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Send one Chime immediately.
      #
      # @param payload [Hash, Inttegro::Chime::SendRequest] recipient and message data
      # @return [Inttegro::Chime] created Chime and transmission state
      def send(payload)
        @http.post_resource("/chimes/send", Inttegro::Chime, :chime, payload)
      end

      # Retrieve a sent Chime.
      #
      # @param chime_id [String] unique Chime identifier
      # @return [Inttegro::Chime] matching Chime
      def lookup(chime_id:)
        @http.post_resource("/chimes/lookup", Inttegro::Chime, :chime, { chime_id: chime_id })
      end

      # Retrieve a filtered page of Chimes.
      #
      # @param payload [Hash, Inttegro::Chime::PageRequest] pagination and filter fields
      # @return [Inttegro::Chime::Page] typed page of Chimes
      def page(payload = {})
        @http.post_resource("/chimes/page", Inttegro::Chime::Page, :page, payload || {})
      end

      # Schedule one or more Chimes for future delivery.
      #
      # @param payload [Hash, Inttegro::Schedule::ChimeRequest] schedule and message data
      # @return [Inttegro::Schedule::CreationDetail] created schedule
      def schedule(payload)
        @http.post_resource("/chimes/schedule", Inttegro::Schedule::CreationDetail, :scheduled_chime, payload)
      end

      # Start an asynchronous Chime broadcast.
      #
      # @param payload [Hash, Inttegro::Broadcast::Request] recipients and message data
      # @return [Inttegro::Broadcast::CreationDetail] created broadcast
      def broadcast(payload)
        @http.post_resource("/chimes/broadcast", Inttegro::Broadcast::CreationDetail, :broadcast, payload)
      end
    end
  end
end
