FROM alpine/git:latest

RUN apk add --update \
    ruby \
    nodejs \
    npm \
    && rm -rf /var/cache/apk/*