FROM ruby:3.1.2

WORKDIR /app

COPY ./src /app

RUN bundle config --local set path 'vendor/bundle' \
  && bundle install \
  && apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y mariadb-client
