FROM alpine/git:latest

RUN apk add --update \
    ruby-dev \
    nodejs \
    npm \
    && rm -rf /var/cache/apk/*