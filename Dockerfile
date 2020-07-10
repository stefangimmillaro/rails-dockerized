FROM ruby:2.7.1-slim-buster
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs make yarn

RUN gem install bundler

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

ENTRYPOINT ["./config-docker/docker-init.sh"]
