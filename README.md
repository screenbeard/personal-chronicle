# The Geekorium

This repo is the source for my personal online journal. It uses [Hugo](https://gohugo.io) to render a static website at [the.geekorium.com.au](https://the.geekorium.com.au).

For the source to the theme, see [Ooh-Er](https://github.com/screenbeard/ooh-er).

This repo includes a Dockerfile that builds a local container version of Hugo for building and testing the site.

Many of the Hugo Dockerfiles I found would copy the website source to the container in preparation of serving the files from Docker. In my case I'm happy with my plain HTML to continue being served where it is, but didn't want to lose out on the features you get when you're using Hugo to develop locally - such as running a test server with live reloading.

With the help of the handy "hugo" wrapper shell script, this Dockerfile will fire up Hugo in a container, and serve my local files through a mapped volume without having to have Go or Hugo installed on my machine (only Docker).

I set the hugo script to executable with `chmod u+x hugo` and I can now run the automatically updating Hugo server with:

```shell
./hugo server
```

`hugo` by itself is used the build the site, so I pass in a harmless switch like `-v` (verbose) to build the site without triggering the default `--help` text.

Finally I use my previous `./deploy` script to rsync the files to my host.