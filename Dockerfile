FROM alpine:3.10.2

ENV AWSCLI_VERSION "1.16.227"

RUN apk add -v --update \
    ruby \
    python \
    py-pip \
    nodejs \
    npm \
    && pip install awscli==$AWSCLI_VERSION --ugprade --user \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/*