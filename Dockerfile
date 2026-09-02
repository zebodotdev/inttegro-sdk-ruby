# syntax=docker/dockerfile:1.7

FROM ruby:3.3-alpine@sha256:2f763b37070564bb00b736f1d4dba6e8f8d203b5f93b94463879fd8d79966f28 AS base
WORKDIR /app
RUN apk add --no-cache build-base git
COPY Gemfile Gemfile.lock inttegro.gemspec Rakefile ./
COPY lib ./lib
COPY test ./test
RUN bundle config set without ''
RUN bundle install

# Build gem for RubyGems distribution
FROM base AS dist
RUN gem build inttegro.gemspec
RUN mkdir -p /out && mv ./*.gem /out/

# CI target (use in GitHub Actions)
FROM base AS ci
RUN bundle exec rake test

# Local/development target
FROM base AS dev
CMD ["sh"]
