FROM alpine:3.4
MAINTAINER colin.hom@coreos.com

RUN apk --update add bash curl less groff jq python py-pip
RUN pip install awscli==1.11.15 s3cmd==1.6.1
RUN mkdir /root/.aws
