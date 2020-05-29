FROM golang:1.14.3-alpine3.11 AS build

RUN apk add --no-cache git

ARG HUGO_BUILD_TAGS

RUN go get -v github.com/gohugoio/hugo/source
WORKDIR /go/src/github.com/gohugoio/hugo

RUN go install

RUN apk del git

FROM alpine:3.11

COPY --from=build /go/bin/hugo /usr/bin/hugo

RUN mkdir /site
WORKDIR /site

# Expose port for live server
EXPOSE 1313

ENTRYPOINT ["hugo"]
CMD ["--help"]