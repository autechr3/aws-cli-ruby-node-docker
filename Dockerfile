FROM alpine/git:latest

RUN apk add --update \
    build-base \
    ruby-dev \
    nodejs \
    npm \
    && gem install sass \
    && rm -rf /var/cache/apk/*