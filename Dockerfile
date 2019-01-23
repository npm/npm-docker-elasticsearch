FROM elasticsearch:2.4-alpine

ENV GOPATH /go
ENV GO15VENDOREXPERIMENT 1

RUN apk update && apk add go git build-base && \
  go get -u github.com/googlecloudplatform/gcsfuse && \
  rm -rf /var/cache/apk/*

ADD start.sh /start.sh
 
CMD ["/start.sh"]
