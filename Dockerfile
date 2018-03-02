FROM ruby:2.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sorts
WORKDIR /sorts
COPY Gemfile /sorts/Gemfile
COPY Gemfile.lock /sorts/Gemfile.lock
RUN bundle install
COPY . /sorts