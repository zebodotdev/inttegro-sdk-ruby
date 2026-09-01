# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

require "rubocop/rake_task"

RuboCop::RakeTask.new

namespace :rbi do
  desc "Regenerate Sorbet declarations for models, enums, and resources"
  task :generate do
    sh "bin/generate-sorbet-rbi"
  end

  desc "Verify generated Sorbet declarations are current"
  task :check do
    sh "bin/generate-sorbet-rbi --check"
  end
end

namespace :openapi do
  desc "Regenerate T::Struct, T::Enum, and operation types from the public OpenAPI contract"
  task :generate do
    sh "bin/generate-openapi-types"
    sh "bin/generate-sorbet-rbi"
  end

  desc "Verify generated SDK types match the public OpenAPI contract"
  task :check do
    sh "bin/generate-openapi-types --check"
    sh "bin/check-openapi-parity"
  end
end

namespace :sorbet do
  desc "Verify the SDK is typed: strict and contains no type escape hatches"
  task :strict do
    sh "bin/check-sorbet-strict"
  end
end

desc "Type-check the SDK with Sorbet"
task sorbet: ["sorbet:strict", "openapi:check", "rbi:check"] do
  sh "srb tc"
end

task default: %i[test rubocop sorbet]
