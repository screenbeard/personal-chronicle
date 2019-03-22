---
categories:
- Rambling
date: "2018-04-12 13:28:26 +0930"
draft: false
publishdate: "2018-04-12 13:28:26 +0930"
slug: internet-draft-comment-systems
tags: []
title: 'Internet Draft: Comment systems'
url: /internet-draft-comment-systems/
---

Having fired up the old blogging engine[^die], I now find myself wanting to comment on [Rubenerd's latest post](https://rubenerd.com/rfc-comment-systems/) about enabling a commenting system, but find that due to lack of a comment system I cannot! And also having trashed both my Twitter and Facebook accounts in a single week, I now have NO CONCEIVABLE WAY to get in touch with the man. I mean, despite email and other antiquated ways of communication - should I perhaps be sending smoke signals?

No, email isn't public enough. A person cannot comment on another blogger's content from the detached privacy of an email - we are after all "civilised gentlemen"[^static].

{{< figure src="https://turbo.geekorium.com.au/images/no-comment.jpg" link="//flic.kr/p/9f2C5A" title="Comment of the Day" attr="Mike Seyfang" attrlink="//www.flickr.com/photos/mikeblogs/" >}}

So consider this another comment in a long series of posts directly directed at Rubenerd. Tune out from here if you're not him, and have no interest in how he chooses to enable comments.

I shall tackle his so called "two options", and then suggest my own third option. I'll ignore that he presented his own third option, because that's thrown all my maths out and I can only count to many.

1.  Disqus: No. No. Don't do this. No. Do not use Disqus. Not because there's anything wrong with it necessarily, but don't change how you do things to make a couple of people slightly happier - you'll always feel dirty.

2.  A CMS: You could. But again, why change something that's working for you[^aside]?

Your only real option is to take your comments outside your space.

1.  One option that comes to mind is something like /r/rubenerd on reddit. They have those new profiles now don't they? x-post everything onto your profile, and link to it at the end of your post.

    **Pros**: no changes to the way you write (much), potential for actual link karma, surely everyone has a reddit account right?

    **Cons**: you still don't own/control the platform and Reddit is most certainly mining their user's data in all the same ways Facebook has been. Might be an effort to moderate, or you might miss stuff if you're not a heavy Reddit user yourself.

2.  Pick some forum software or a microblogging platform like GNU Social or [Mastodon](https://joinmastodon.org/) and self host that, x-post to the site as suggested above. Enable Twitter/Facebook/Reddit logins so people don't have to register to your site to throw down a witty one-liner.

    **Pros**: Self hosted means it's your data and your readers can have a say in what happens to it. You get to decide how it's shown - write a back end script that pulls comments in on a cron and adds them to the static site, use some Javascript[^safe], or just link to it and let people free-for-all

    **Cons**: It's a hassle and no one will use it.

3.  Keep going as you are now. Use Twitter. I'll keep responding from here and other people can find ways they feel comfortable to respond.

    **Pros**: Really easy.

    **Cons**: I don't get to comment[^pro].

4.  If you're mirroring your repo online, give people the link and let them clone and send you pull requests with their comments.

    **Pros**: Only dedicated idiots will comment.

    **Cons**: Only dedicated idiots will comment. You'd have to set up a template/rules for comments. It's a fucking ridiculous idea.

5.  Build some sort of federated commenting system that would allow someone like me to make a comment on their own site and have it salmon'ed to yours. Frankly, I don't think this would work with your current system and would probably be difficult to integrate without a CMS. I've been playing with Keybase which has a flat-file system integrated - you could join a trusted blogging network and use that to allow comments somehow.

I'm partial to the reddit idea, and might start doing it myself. I've also thought about setting up Mastodon and using that instead of Twitter. I also have a GNU Social instance running, but it's kind of a bummer without many people to follow.

All these options are making me want to turn my own comments off, just to force some creativity. I'm looking forward to seeing what Rubenerd does.

[Discuss on Reddit... IF YOU DARE](https://www.reddit.com/user/screenbeard/comments/8bq59h/internet_draft_comment_systems_xpost/)

Quickedit: [This page on Hugo](http://gohugo.io/content-management/comments/#comments-alternatives) suggests [Staticman](https://staticman.net/) which looks pretty neat. Integrated with Jekyll, which I know you're not using any more, but could be integrated into Hugo.

[^die]:Why hasn't that word died!?
[^aside]: putting aside that by suggesting you enable comments, that's exactly what asking you to do
[^runninggag]:And is this becoming some sort of running gag?
[^static]:Which I must not be because I don't statically generate my content
[^safe]:with a safe word
[^pro]:this may be a pro
