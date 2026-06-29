# frozen_string_literal: true

module Commerce
  class FileDownload
    attr_reader :data, :headers

    def initialize(data, headers = {})
      @data = data
      @headers = headers
    end

    def save_to(path)
      File.binwrite(path, data)
    end
  end
end
