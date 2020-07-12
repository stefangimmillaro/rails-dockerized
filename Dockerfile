FROM ruby:2.7.1-slim-buster
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs make curl

RUN apt-get install -y apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

RUN gem install bundler

RUN mkdir /app
WORKDIR /app

COPY package.json yarn.lock /app/
RUN yarn install --frozen-lockfile

COPY Gemfile* /app/

RUN bundle install

COPY . /app

RUN rm -rf node_modules tmp/cache vendor/bundle test spec

ENTRYPOINT ["./config-docker/docker-init.sh"]
