---
categories:
- Tech
date: "2008-07-01 12:34:13 +0930"
draft: false
tags:
- Amazon S3
- Backup
- Jungle Disk
- Macintosh
- Ubuntu
- windows
title: Jungledisk - easy cheap reliable backup on any platform
url: jungledisk-easy-cheap-reliable-backup-on-any-platform
---

{{< figure src="https://turbo.geekorium.com.au/images/4x5_bor_rou_sha.jpg" alt="" title="Jungle Disk - Reliable online storage powered by Amazon S3" link="http://jungledisk.com" >}}

I haven't written for ages, because nothing has grabbed me enough to make me desperate to write. That was until tonight when I finished installing "Jungle Disk" on my [Ubuntu](http://www.ubuntu.com/) laptop, and realized that I'd finally found a product that works exactly as promised, out-of-the-box on multiple platforms that provides a fantastic service.

A lot of potentially useful applications I've found in the last few years have promised a lot of amazing features, but have fallen short on cross-platform support. Backup apps, chat apps, music players - I've tried plenty of applications that work pretty well on one system but not on any other, or if they do, not as well as their original native system[^1] . If the developers deign to produce [cross platform](http://en.wikipedia.org/wiki/Cross-platform) products, they're usually slathered with BETA labels for years, and are predominantly stuck on Windows and Mac.

Today I discovered a product that breaks this mold - [Jungle Disk](http://jungledisk.com/). I am just **so** chuffed with it I cannot believe it. Jungle Disk is a backup solution that uses Amazon's S3 service to provide cheap backup and storage on the web. For about 10 cents per gigabyte, Jungle Disk stores your files securely and easily and lets you access them from anywhere you have an internet connection.

Let me help you understand why this is so revolutionary by taking you through how I've set up the four computers I have access to in my day.

At work I have a windows machine that accesses the internet through a proxy. I set up the Jungle Disk software and created an [Amazon S3](http://en.wikipedia.org/wiki/Amazon_S3) account and in minutes was creating a backup of my important files. Additionally, the software created a separate drive (X:) that I can just drop files on like any other Windows disk.

When I got home, I installed the software on my Mac (an old Panther mini - no hardware/software pretension here). Just like on my Windows box I had a backup schedule set up, and a network drive accessible from the Finder in around 2 minutes.

Finally, I opened my Ubuntu laptop[^2]. Following the simple instructions, I had a similar set-up up and running and a disk mounted on my desktop that connects to my central disk.

Putting a file in the disk on my Laptop makes it accessible instantly at work and from my Mac. Need to take a file home from work? Drop it on my X drive, and I've got it waiting for me when I arrive home. It's brilliant.

What makes it all the more amazing is that on every system it **just works**. This one thing puts it leaps and bounds beyond the competition in my mind. I tried Mozy - it was buggy [beta software](http://en.wikipedia.org/wiki/Software_release_life_cycle) that only worked on Windows and Macs. The Jungle Disk engineers have my respect for making software that works on multiple systems while maintaining a few neat platform specific touches - each version has been programmed with the important system and user folders appropriate for that platform.

The second most amazing thing about Jungle Disk is that it relies on Amazon - one of the biggest internet companies on the web today - for storage. Not only does this mean security and reliability[^3], but fantastic storage prices to boot. Where other companies will charge set fees for more storage than you need, Amazon's S3 ony charges for what you use. And the prices are *low*. I've backup up about 1.8 gig so far, and my current monthly cost is sitting at about 26 cents. By the time all my data is backed up, I expect my monthly fee to be about 3 bucks per month. That is pocket change. Why didn't I do this sooner?

And speaking of pocket change: the Jungle disk software - the **amazing** Jungle Disk software I mentioned? A one time fee of \$20 for every version ever made ever in perpetuity. Some of the best software I've seen for a one-time fee of 20 bucks - priceless. I really can't imagine how it could get better.

No wait - I do. As well as my three completely differently configured machines, I also set the software up on Mil's mac laptop. I set it to backup and nothing else, and set it to backup in a completely separate container. All her files will be securely backed up alongside mine, and never the twain shall meet - all using a single account, so I don't need to pay for anything but the extra data she'll back-up. Seriously - what could make this better?

How about $1 extra per month for web access? Yep, that'd do it.

[^1]: Firefox is the biggest exception to this rule
[^2]: that's another fantastic find, and worthy of a separate post
[^3]: I'm ignoring early S3 downtime issues
