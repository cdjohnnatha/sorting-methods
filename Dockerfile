FROM ruby:2.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /sorts
WORKDIR /sorts

COPY Gemfile /sorts/Gemfile
COPY Gemfile.lock /sorts/Gemfile.lock
RUN gem install bundler

# Bundler:
RUN gem install bundler && bundle config --global path "$BUNDLE_PATH" && bundle config --global bin "$BUNDLE_PATH/bin"

RUN bundle install
COPY . /sorts

RUN echo "gemspec" >> Gemfile