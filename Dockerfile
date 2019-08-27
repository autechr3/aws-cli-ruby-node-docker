FROM alpine:3.10.2

ENV AWSCLI_VERSION "1.16.227"

RUN apk add --update \
    ruby \
    python \
    py-pip \
    && pip install awscli==$AWSCLI_VERSION \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/*