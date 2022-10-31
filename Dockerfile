FROM ruby:3.1.2-alpine

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      tzdata \
      yarn

RUN mkdir -p /app
WORKDIR /app

# Gems
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Node modules
COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock
RUN yarn install --check-files

COPY . /app

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]