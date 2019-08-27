FROM alpine:3.10.2

ENV AWSCLI_VERSION "1.16.227"

RUN apk add -v --update ruby
RUN apk add -v --update python
RUN apk add -v --update py-pip
RUN apk add -v --update nodejs
RUN apk add -v --update npm
RUN pip install awscli==$AWSCLI_VERSION --ugprade --user
RUN apk --purge -v del py-pip
RUN rm -rf /var/cache/apk/*