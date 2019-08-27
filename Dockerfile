FROM alpine:3.10.2

ENV AWSCLI_VERSION "1.16.227"

RUN apk add --update \
    ruby \
    python \
    py-pip \
    nodejs \
    npm --update \
    && pip install awscli==$AWSCLI_VERSION --ugprade --user \
    && apk --purge -v del \
    && rm -rf /var/cache/apk/*