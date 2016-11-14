FROM alpine:3.4
MAINTAINER colin.hom@coreos.com

RUN apk --update add bash curl less groff jq python py-pip
RUN pip install --upgrade awscli s3cmd
RUN mkdir /root/.aws