# frozen_string_literal: true

require_relative "lib/commerce/version"

Gem::Specification.new do |spec|
  spec.name = "zebo-commerce"
  spec.version = Commerce::VERSION
  spec.authors = ["Zebo Engineering"]
  spec.email = ["engineering@inttegro.com"]

  spec.summary = "Lightweight Ruby SDK for the Zebo Commerce API"
  spec.description = "First-party Ruby client for working with orders, payments, payouts, chimes, and OTP verification on the Zebo Commerce platform."
  spec.homepage = "https://studio.inttegro.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/zebodotdev/commerce/tree/main/sdks/ruby"
  spec.metadata["changelog_uri"] = "https://github.com/zebodotdev/commerce/blob/main/sdks/ruby/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ sorbet/ .git .github appveyor Gemfile])
    end
  end
  packaged_sources = Dir.glob("{lib,rbi}/**/*", base: __dir__).select do |path|
    File.file?(File.join(__dir__, path))
  end
  spec.files |= packaged_sources
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sorbet-runtime", "~> 0.6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
