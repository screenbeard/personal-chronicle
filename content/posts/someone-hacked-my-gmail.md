---
categories:
- Tech
date: "2008-07-09 23:59:29 +0930"
draft: false
publishdate: "2008-07-09 23:59:29 +0930"
slug: someone-hacked-my-gmail
tags:
- gmail
- google
- IP address
- Security
title: Someone hacked my Gmail!
url: /someone-hacked-my-gmail/
---
Not really.

Google released a small update yesterday that adds information about recent activity on your [Gmail](https://mail.google.com/ "Gmail") account to the bottom of the Gmail interface.

{{< figure src="https://farm4.static.flickr.com/3066/2652864232_78fca2bac5_o.jpg"  title="Gmail account activity feature" link="http://www.flickr.com/photos/joshnunn/2652864232/" >}}

The new option in the Gmail interface

It also includes a link to further information, including details of IP addresses and methods that have recently been used to access your account. If anyone has accessed your mail in any way, it will be reported here.

{{< figure src="https://farm3.static.flickr.com/2272/2652036597_c10f97f3ce_o.jpg" title="Gmail Activity Information" link="http://www.flickr.com/photos/joshnunn/2652036597/" >}}

Argh! What is that?!

I checked mine the minute it showed up in my inbox, and was shocked to see a bunch of IP addresses listed, when I hadn't been anywhere near my computer in the last five hours.

In the screenshot, the blurred addresses marked with asterisks are my home computer's IP address. But there are two addresses there that are listed as having accessed my account through IMAP and "Mobile" access.

I have to admit here that I freaked out for a second. I couldn't think where or when anyone or anything could access my account. Two addresses - 67.228.171.34 and 67.228.162.43 had snuck into my account and peeked at my stuff!

Let me just say at this point that neither of the addresses I just listed are doing anything wrong. I freaked out for a second. I'm writing this post to help out anyone else who has unidentified addresses accessing their mail.

But lets not get carried away. Before I truly started freaking, I wracked my brains for any other computers I might have set up to access my account, or for any other service I could think that could be using my mail. At this point, nothing came to mind.

Working backwards from what information I had, I ran a "whois" on the addresses.

    http://whois.domaintools.com/67.228.171.34

The address belongs to "SoftLayer Technologies Inc.", and I have no idea who they are, but further down the page I get the last bit of information I need to unravel the "mystery". Under the "Additional Information" section is this:

> network:Organization;I:Xoopit.com [67.228.171.34](http://whois.domaintools.com/67.228.171.34)

And I remember[^1] I signed up for [Xoopit](http://xoopit.com), a service that searches my mail and finds all the photos and videos therein. Perfectly legitimate (I gave it my password), and totally not malicious. The other service turned out to be [Zenbe.com](http://zenbe.com), another free mail service (like Gmail) that has a few other nifty features. I tried it out a few months ago and forgot about it, but it happily kept fetching my mail from my main account all the while.

So, crisis averted. But the experience highlighted a couple of things for me.

1.  Don't be a douche and don't freak out so easily

2.  If you sign up for something that has potential privacy ramifications, write it down or keep a record somewhere so you know what services are accessing what.

3.  When you have access to a tool like this[^2] - use it. It only takes a second, and it can be incredibly useful. It reminded me of two services I'd forgotten about, and in future, could save me from a **real** problem.

[^1]: and slap my forehead
[^2]: and like "whois"
