---
categories:
- Tech
date: "2020-05-29 22:31:08 +0930"
draft: false
tags:
- docker
- hugo
- golang
- containers
- how-to
- music
- 100daystooffload
title: Dockerised Hugo for Local Development
---

Following on from last night's post, I needed a way to run Hugo to build the new entry and deploy it. Since I had to rebuild my environment from scratch I wanted to see if I could run Hugo and Go without installing them locally.

I know Go is unlikely to cause any stability issues, as it installs all its dependencies in the user's home dir, rather than touching system files but I'm determined in my experiment to keep my new install as clean as possible. 

Using some insight I'd gathered from using [docker-tizonia](https://hub.docker.com/r/tizonia/docker-tizonia/) a Docker version of [Tizonia](https://tizonia.org/) and using [asolera's Golang minimal Dockerfile image](https://gist.github.com/asolera/6560bc41875f2e3ed9feca22b9c71003) as a base, I was able to put together a minimal Dockerfile that does the following:

1. Creates a golang based build image to pull down the latest version of Hugo.
1. Build and install the Hugo binary
1. Copy the binary to a clean image
1. Set the image work directory to `/site`
1. Expose the Hugo server port 1313
1. Make Hugo the entry point and default to the help text if I forget to add a command.

The Dockerfile looks something like the following:

```go
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
```

Also thanks to [jojomi](https://github.com/jojomi/docker-hugo) of bits cribbed from their Hugo Dockerfile.

Many of the Hugo Dockerfiles I found would copy the website source to the container in preparation of serving the files from Docker. In my case I'm happy with my plain HTML to continue being served where it is, but didn't want to lose out on the features you get when you're using Hugo to develop locally - such as running a test server with live reloading. 

With the help of a handy "hugo" wrapper shell script, I was able to fire up Hugo in the container, and serve my local files through a mapped volume with no appreciable difference to how Hugo was running for me before. 

The wrapper is as follows:

```shell
#!/bin/bash

docker run -it --rm \
    --network host \
    --volume=$(pwd):/site \
    --name hugo \
    $(docker build -q .) "$@";
```

This wrapper 
1. Runs the necessary Docker command to hook the image into the host network so I can check my changes on http://localhost:1313 
1. Shares the working directory into the expected `/site` working directory on the image.
1. Passes in whatever argue I pass in.

I set this Hugo file to executable with `chmod u+x hugo` and I can now run the automatically updating Hugo server with 

```shell
./hugo server
```

Now because the command `hugo` by itself is used the build the site, I now just pass in a harmless switch like `-v` (verbose) to build the site without triggering the default `--help` text.

Finally I use my previous `./deploy` script to rsync the files to my host. 

The two new files are in [my personal-chronicle github repo](https://github.com/screenbeard/personal-chronicle) for any good they can be to anyone, and I'm curious to know if there's any way I can improve the Docker build to simplify it.

Some questions or areas I think I can improve are:
1. I'm not sure if the line `ARG HUGO_BUILD_TAGS` is necessary. It just happened to be there when I finally got it working, after removing other lines that were causing it to fail.
1. I'm getting the hugo source from `github.com/gohugoio/hugo/source` when the Hugo documentation says the main repo root is what you'd use to install it. I'm not sure if there was a better way to `go get` the Hugo project.
1. I think I'd prefer to freeze the version of Hugo at the current version until I choose to upgrade after testing. I'm not sure how to 'go get' a specific version of the git repo.
1. Is the `RUN apk del git` line necessary if I'm using a throwaway build image?

The thing that blows me away about Docker and Golang and a lot of modern developer technology is just how much "standing on the shoulders of giants" I'm able to do. Docker is not just a clever idea, but such a well built stack that even with a rudimentary understanding of what I wanted to achieve, I was able to do it with a few lines of code. And the Go ecosystem meant that `go get etc..` pulled an entire projects worth of dependencies and built the entire Hugo app inside a black box. This is such a far cry from past experiences I've had trying to build software from source that I can only express gratitude for all the hard work donated by so many.