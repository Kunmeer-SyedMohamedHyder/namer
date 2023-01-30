FROM ruby:2.1
LABEL Author="Education Team at Docker <education@docker.com>"

WORKDIR /src

COPY Gemfile Gemfile.lock ./
RUN bundler install

COPY . .
RUN bundler install

CMD ["rackup", "--host", "0.0.0.0"]
EXPOSE 9292
