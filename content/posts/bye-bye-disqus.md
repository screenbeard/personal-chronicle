---
categories:
- Tech
date: "2010-04-12 12:10:50 +0930"
draft: false
publishdate: "2010-04-12 12:10:50 +0930"
slug: bye-bye-disqus
tags:
- comments
- technology
- test
title: Bye Bye, Disqus
url: /bye-bye-disqus/
---
Tonight I disabled Disqus and tried to implement some of the same features manually. Rubenerd has been [pushing his anti-disqus agenda](https://rubenerd.com/shocking-truth-disqus-et-al/) for some time, and it ramped up when [Taryn proclaimed it's virtues](http://blog.tarynhicks.com.au/why-you-should-use-disqus/) and [Zombie\_Plan bleated and caved too](http://zombieskittles.com/tucking-it-in)[^1].

{{< figure src="https://farm1.static.flickr.com/46/150053152_bd851bf585.jpg" alt="" title="See ya! BYE" caption="" attr="Taz etc." attrlink="http://www.flickr.com/photos/taz/150053152/" >}}

So as an experiment (and due to my underlying desire to stop handing stuff over to third parties), I turned it off. Here's what I installed in its place:

-   CommentLuv - puts a link to the commenter's most recent post under their comment.
-   Gravatar Signup - if a user doesn't have a Gravatar associated with their email, offers to sign them up for one.
-   Simple Facebook Connect - lets a commenter register using their Facebook account.
-   Simple Twitter Connect - lets a commenter register using their Twitter account.
-   OpenID - lets a commenter register using their OpenID account.
-   Subscribe to Comments - Adds a check-box so a commenter can have follow-up comments emailed to them.
-   Live Comment Preview - Shows a mockup of the comment being left as it's written. Kinda neat.

So that's seven plugins, plus an hour or two mucking around with site templates and CSS to get them looking vaguely acceptable (so many themes have **very** ugly comments). I had to style my comments separately, fix the threading, and alter the layout of the comment form. And I still have less functional comments than I did with Disqus. The only benefit I have is... I... don't know. I can say I don't use Disqus?

That's not including the plugins I decided not to turn on - Backtype to pull mentions from Twitter etc., and Ozh' Absolute Comments to enable reply by email (for me at least). I'll miss reply by email the most.

Maybe those of you who can't see the point of Disqus don't care if your commenters can't log in with Facebook. And I'm yet to see anyone but Techcrunch with an attractive and functional comment area using a vanilla Wordpress setup. Disqus isn't gorgeous, but it's a lot better than what Wordpress out of the box can do.

So now I've done it I'm not sure it was the right thing to do. As an added bonus, none of the comments that were in Disqus are threaded any more, and if I go back to Disqus it might screw up the comments people have left since disabling it. And none of my comments before today are associated with me as administrator any more. All in all, I probably should have left it alone. But at least I can maybe help some one make up their mind about their comments - use Disqus and get a whole bunch of features, or install some of the plug-ins listed above.

Just so you know, although I'm a fan of the software, I'm not such a fan of Disqus the company. Trying to get assistance for a problem is like pulling teeth, and there's at least one feature they promise when you set it up that just **doesn't** work. When I tried to ask them why my comments weren't "real-time" they told me they were and that they were disabled for maintenance - which seems odd, since it's been at least a few months now... So take from that what you will - if you don't think you'll need support, Disqus might be perfect.

[^1]: he know's I'm just kidding right?
