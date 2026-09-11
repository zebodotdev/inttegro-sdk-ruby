# frozen_string_literal: true

require "test_helper"

class InttegroGeneratedDocumentationTest < Minitest::Test
  GENERATED_MARKER = "Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit."

  def generated_type_files
    Dir[File.expand_path("../lib/inttegro/**/*.rb", __dir__)].select do |path|
      next false if File.basename(path) == "base.rb"
      next false if path.include?("/generated/")

      File.foreach(path).first(4).any? { |line| line.include?(GENERATED_MARKER) }
    end
  end

  def test_every_generated_type_has_public_reference_documentation
    generated_type_files.each do |path|
      assert_includes File.read(path), "# @api public", path
    end
  end

  def test_every_generated_model_field_documents_shape_and_wire_name
    generated_type_files.each do |path|
      source = File.read(path)
      field_count = source.scan(/^\s+const :/).length
      next if field_count.zero?

      assert_equal field_count, source.scan(/^\s+# @!attribute \[r\]/).length, path
      assert_equal field_count, source.scan(/Wire name: `/).length, path
      assert_match(/Required in the API payload|Optional in the API payload/, source, path)
    end
  end

  def test_every_generated_enum_value_documents_its_wire_value_and_type
    generated_type_files.each do |path|
      source = File.read(path)
      value_count = source.scan(/^\s+[A-Z][A-Z0-9_]* = new\(/).length
      next if value_count.zero?

      assert_equal value_count, source.scan(/Serialized wire value: `[^`]+`\./).length, path
      assert_equal value_count, source.scan(/^\s+# @return \[Inttegro::/).length, path
    end
  end
end
