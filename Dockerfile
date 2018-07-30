FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
# Ensure that our apt package list is updated and install a few
# packages to ensure that we can compile assets (nodejs).

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
