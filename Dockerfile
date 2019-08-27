FROM alpine:3.10.2

RUN apk add --update \
    git \
    ruby \
    nodejs \
    npm \
    && rm -rf /var/cache/apk/*