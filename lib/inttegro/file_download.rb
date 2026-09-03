# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "types"

module Inttegro
  class FileDownload
    extend T::Sig

    sig { returns(String) }
    attr_reader :data

    sig { returns(Types::ResponseHeaders) }
    attr_reader :headers

    sig { params(data: String, headers: Types::ResponseHeaders).void }
    def initialize(data, headers = {})
      @data = data
      @headers = headers
    end

    sig { params(path: String).returns(Integer) }
    def save_to(path)
      ::File.binwrite(path, data)
    end
  end
end
