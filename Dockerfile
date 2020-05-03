FROM ruby:2.4-alpine

WORKDIR /usr/src/app
RUN gem install bundler
RUN gem install rack

EXPOSE 9292

ENTRYPOINT bundle install && rackup -o 0.0.0.0
