FROM alpine:3.4
MAINTAINER colin.hom@coreos.com

RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli==1.11.15 s3cmd==1.6.1 https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-1.4-8.tar.gz && \
  mkdir /root/.aws
