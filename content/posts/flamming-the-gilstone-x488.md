---
title: Flamming the Gilstone X488
date: "2020-07-15 17:00:00 +0930"
tags:
- share
- rss
- feeds
- indieweb
categories:
- Tech
---

> Back in '87 the Gilstone company released the X488, a breakthrough in mesopliner technology that was soon forgotten to the mists of time. Today I'm building my own X488 and I'm going to do it with flamming!

Keeping inline with my desire to produce catchy titles I've named this post something nonsensical. The Gilstone X488 wasn't a thing (was it?), but lately I've been getting all nostalgic for retro tech, and reading a bunch of excellent posts about technology and frankly I was feeling left out.

So I apologise if you came here hoping to learn more about flamming, or if you yourself have fond memories of the Gilstone X488, but that's not what we're doing today. Today I thought I'd share some excellent websites I've been enjoying lately, and hopefully you can find some good posts there instead!

{{< figure src="https://live.staticflickr.com/7670/17264753128_918e7bb3f4_z.jpg" alt="A person holding two mugs of tea, one that says 'me' they're holding to their chest, another says 'you' they're offering to the viewer" title="SHARING" caption="" attr="by yarenlen" attrlink="https://www.flickr.com/photos/hoffnungsschimmer/" >}}

Recently there was some discussion on EVERY SITE[^mikestone-rss][^rubenerd-rss][^jlelse-rss][^garron-rss][^zerokspot-rss][^garron-rss-again] about RSS feeds - how hidden they are now, and how we need to promote and boost those sites that write about the things we enjoy reading about. Not every site has to pump out quality SEO driven articles about technical subjects to drive ad revenue, and the re-emerging indieweb of randos writing about topics that interest them is so nice to see. 

Earlier today I put the finishing touches on a simple Docker/PHP combo script to grab my Miniflux feeds and convert them into a ["follow" page]({{< ref "follow" >}}) here on The Geekorium. Eventually I'll follow some of the excellent work put into the exact same problem by Jan-Lukas Else on his site to build his [Miniflux blogroll](https://jlelse.blog/dev/miniflux-blogroll/), as solving the problem in Go seems more inline with my use of Hugo than a php script. 

My Follow page has a super simple list of sites I'd recommend, along with their RSS feeds to make subscribing simpler if you're into it. But right now I'll break down some excellent posts I've enjoyed by a few of the people on that list.

[Kev Quirk](https://kevq.uk/) runs the [fosstodon.org mastodon instance](https://fosstodon.org/@kev) and posted recently about his experiences with [Synology and Nextcloud](https://kevq.uk/synology-vs-nextcloud-which-is-better-for-a-home-server/). I was particularly interested because I've tried Nextcloud in the past, and while I love the idea of keeping full control over my data, I found Nextcloud to be slow and unweildy when I tried to encrypt the data and store it in the cloud. Turns out Nextcloud is just slow. Synology looks interesting, but I've found that [Tresorit](https://tresorit.com/) while expensive, meets my backup needs. Kev is a 'metablogger' who writes sometimes about his own experiences as a writer, and is also the brains behind [#100DaysToOffload](https://100daystooffload.com/), a challenge to "Just. Write." and power the old-school personal website revolution again. Also, Quirk is a kickass last name. 

I originally read [Guillermo Garron (ggarron)](https://www.garron.blog/)'s post [_Blogging is not dead_](https://www.garron.blog/posts/blogging.html) on Hacker News. It was part of a longer ongoing discussion across a number of sites on whether old-school personal web logs were dead or dying. The irony of this discussion happening across multiple personal "blogs" was not actually irony at all, but rather a concerted effort to bring back something a lot of people miss, now that corporations lock us into their specific "social" platforms. GGarron has been consistently putting out new fresh posts on his own site, doing his part to power this resurgence, to take back control and give people a reason to find and follow new people. Hs posting has led directly to making me write my more recent entries, and directly inspired me to set up a feedreader and subscribe to more people. He was the first of my new subscriptions when I finally got set up.

[Horst Gutmann (zerok)](https://zerokspot.com) wrote about [Domain Of Ones Own](https://zerokspot.com/weblog/2020/07/05/domain-of-ones-own/), a program of certain universities to offer personalised domains and hosting for their students instead of a generic institutional address. This gets the student set up for life "owning" their own identity early in their career and ensures they can continue using the same tools after academia that they've been using all along. This idea gels with my belief that people deserve, in fact *need*, to claim a domain and use it for at least their own email. Zerok also built [webmeniond](https://github.com/zerok/webmentiond), a way to hook the [indieweb](https://indieweb.org/) webmention technology up to your site, that I must actually enable here some time. 

[Launching Keyoxide](https://yarmo.eu/post/keyoxide) is a post by [Yarmo Mackenbach](https://yarmo.eu) on the really excellent [Keyoxide](https://keyoxide.org) service he's built as an independent tool to "prove you're you" across multiple important websites. For example, I have a Github profile, a Mastodon profile and a personal domain that you have no way of knowing are truly "mine". By using my [Keyoxide proofs page](https://keyoxide.org/596E2E93E046D240017AD29C1F8B0E75334E0D87), you're able to see that I've explicitly identified profiles on these services as being under my control. Yarmo writes a lot about, and is clearly passionate for, our independence from large corporations holding and monetising our data.

[Mike Stone](https://mikestone.me/) is another fosstodon admin, and writes the sort of geeky stuff I love reading. He's covered the [software](https://mikestone.me/my-text-editor-of-choice) [he](https://mikestone.me/whats-on-your-plank) [uses](https://mikestone.me/how-many-terminals-do-i-need), the [purchase of Keybase by Zoom](https://mikestone.me/zoom-bought-keybase) and his adventures into [Open Source AI](https://mikestone.me/my-interest-in-ai). He's always got something interesting to share, and I've found and tried multiple new programs I'd never heard of based on his recommendations. Just don't try [eDEX-UI](https://mikestone.me/edex-ui-mostly-useless-but-still-fun) - it'll crash your desktop like it did to mine!

My most recent follow I found only after putting the finishing touches on this post! [Katie McLaughlin (glasnt)](https://glasnt.com/blog) wrote a post called [Generating a pseudorandom string: the what and the how](https://glasnt.com/blog/generate-pseudorandom-string), and while I like linux geek posts, normally the "here's a simple command that does x" sort of posts are skippable if I can't immediately figure out how I'll use them. Glasnt however uses the post as an opportunity to break down the command into its parts, teaching me about `tr` (and `LC_ALL=C`), `fold`, and finally why short and long commandline option/argument combos make no friggin' sense to me in a way that makes friggin' sense. I had to immediately subscribe and add her to this list for making a linux command-line post so much more informative than they usually are. 

The last person on my list is someone I've followed since at least 2010 when "blogs" were a thing, the [salmon protocol](https://en.wikipedia.org/wiki/Salmon_%28protocol%29) was about to take off, and Twitter was cool. [Ruben Schade (Rubenerd)](https://rubenerd.com) has been podcasting and writing since before both were things everyone did, and is still going years later (he's up to 411 episodes of his show which is just insane). I'm not even going to try and link to a good example of his posts, as they're so eclectic. His technical posts are the reason I titled this post the way I did, and I'm using Linux and Hugo directly because of him (although he uses BSD like a gentleman), and I have [implemented]({{< ref "https-content-security-policy" >}}) or [de-implemented]({{< ref "bye-bye-disqus" >}}) tech on this very site due to his recommendations. If you [search for mentions of his name here](https://duckduckgo.com/?q=rubenerd&sites=the.geekorium.com.au&k1=-1&atb=v223-1&ia=web), you'll start to wonder if I have a crush on the guy, but he's just one of the few consistent writers I've follow - and he also doesn't allow comments on his site and only uses Twitter, so I can't give him feedback any other way!

So that's just a small list and taste of the people I'm following. There are many others, but I can't write paragraphs about all of them so I'll throw up some good posts by randos here:
* [Simbly Me - _toot_](https://simbly.me/toot) - a cli mastodon client I want to try
* [rolisz - _Pixel 3a_](https://rolisz.ro/2020/06/27/pixel-3a/) - how I feel about the Pixel 3a in someone else's words 
* [Jlelse - _How I curate links for my blog_](https://jlelse.blog/posts/how-i-curate/) - a similar breakdown to mine, for more excellent suggestions of who to follow.
* [Hey Georgie - _How to manage and avoid stress_](https://hey.georgie.nu/stress/)
* [tttthis - _If I could bring one thing back to the internet it would be blogs_](http://tttthis.com/blog/if-i-could-bring-one-thing-back-to-the-internet-it-would-be-blogs)
* [Stan's blog - _NextDNS is my new favourite DNS service_](https://stanislas.blog/2020/04/nextdns/)
* [Max Böck - _Whimsical Website Club_](https://mxb.dev/blog/the-whimsical-web/)
* [Freddy's Ramblings - _6 Beginner Privacy Tips for Lockdown_](https://write.privacytools.io/freddy/6-beginner-privacy-tips-for-lockdown)
* [James Routley - _Bespoke software, and a really simple RSS aggregator_](https://routley.io/posts/bespoke-software-rss-aggregator/)
* [Lazybear - _Moving to main_](https://lazybear.io/posts/moving-to-main/) - Also his Vim weekly tips are great

I hope you can find someone new to follow, or are inspired to fire up a feed reader and start. And to all the people I've linked to here, and those who are on my list who maybe didn't get a mention, thank you for writing, please keep going! Let's write for pleasure and enrichment and keep the web personal and alive.

[^mikestone-rss]: https://mikestone.me/my-favorite-rss-feeds
[^rubenerd-rss]: https://rubenerd.com/making-rss-prominent-again/
[^jlelse-rss]: https://jlelse.blog/links/2020/06/feeds-page/
[^garron-rss]: https://www.garron.blog/posts/reading.html
[^zerokspot-rss]: https://zerokspot.com/weblog/2020/06/22/feeds-to-improve-feed-visibility/
[^garron-rss-again]: https://www.garron.blog/posts/miniflux.html
