---
categories:
- Invention
date: "2009-06-08 08:37:02 +0930"
draft: false
publishdate: "2009-06-08 08:37:02 +0930"
slug: triple-j-radio-stream-on-a-wii
tags:
- flash
- free software
- internet radio
- music
- triplej
title: Triple J radio stream on a Wii
url: /triple-j-radio-stream-on-a-wii/
---
When we bought our Wii, I promised Mil that we could listen to
[TripleJ](http://triplej.net.au) using it, as we haven't had a radio in
our lounge room for years, and she was missing it. So I set up
[Orb](http://orb.com/) to play my iTunes library and TripleJ and Radio
National ((thanks to
[Lifehacker](http://lifehacker.com/357869/use-your-wii-as-a-media-center)
for the tutorial)). But my computer had to be on for it to stream
properly, and Orb was pretty useless for streaming video (the other
reason I installed it), so eventually I gave up on it, and Mil went back
to a music-free existence :(

But determined not to be beaten, I found a nifty little MP3-playing SWF
(flash program) that I could install on a webserver somewhere and point
to the [TripleJ MP3 stream](http://202.6.74.107:8060/triplej.mp3). The
[player I used](http://flash-mp3-player.net/players/mini/) is created by
[neolao](http://www.neolao.com/), and is very easy to use. I used their
["generator" page](http://flash-mp3-player.net/players/mini/generator/)
to build the embed code I needed, and [downloaded the
player](http://flash-mp3-player.net/players/mini/download/). I created a
simple webpage that includes the embeded code (feel free to steal the
"source"), and uploaded and pointed to the player hosted on my site. It
points to the TripleJ stream, but could easily be adapted to play any
other mp3 file or stream. The page is at ~~http://nunnone.com/radio/~~
and I've added it to my Wii's favourites menu so Mil can find it quickly
when she wants some radio. It's a very basic page, and the same site has
many different versions of the player to do more - in fact if Radio
National did an MP3 stream as well, I would create [multi
player](http://flash-mp3-player.net/players/multi/) so Mil could choose
between the two stations.

I can even embed the stream right here, so enjoy!

**Edit: removed - see update.**

<span class="update">2009-09-06: Using the Homebrew channel to add
radio</span>

The biggest problem with the the Wii browser is that it can't drop the
stream, so the buffer fills up eventually and crashes. I tried a few MP3
flash players including one that suggested it could overcome this by
playing two streams in sequence for five minutes each and dropping them
one at a time to clear the buffer, but I couldn't get any of them
working reliably so I gave up for a while.

Then Lifehacker posted &lt;a
href="http://lifehacker.com/5342733/hack-your-wii-for-homebrew-without-twilight-princess?skyline=true&s=x"&gt;this
article about how to add the Homebrew channel to your Wii with just an
SD card, and I gave it a shot. Then I downloaded the [Homebrew
Browser](http://www.codemii.com/download/) and copied it into an "Apps"
folder I created on the same SD card. With that installed I downloaded
the MPlayer Christmas Edition from the browser, and finally edited the
*menu.conf* file in the Apps\\mplayer\_ce folder to add Internode's
stream to the Radio menu with the following line:

bc(html).

Now I can play Triple J for free on my Wii, Mil is happy again, and I
can also play DVDs, TV shows and music streamed form my PC!

Yay for lazyhacking!