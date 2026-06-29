# frozen_string_literal: true

if ENV["COVERAGE"] == "1"
  require "simplecov"
  SimpleCov.start
end

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "commerce"

require "minitest/autorun"
