FROM alpine:3.10.2

RUN apk add --update \
    ruby \
    nodejs \
    npm \
    && rm -rf /var/cache/apk/*