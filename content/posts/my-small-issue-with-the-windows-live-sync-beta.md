---
categories:
- Tech
date: "2010-06-30 11:36:58 +0930"
draft: false
publishdate: "2010-06-30 11:36:58 +0930"
slug: my-small-issue-with-the-windows-live-sync-beta
tags:
- beta
- Microsoft
- problem
- report
- technology
title: My Small Issue With the Windows Live Sync Beta
url: /my-small-issue-with-the-windows-live-sync-beta/
---
Had a strange problem using the new [Microsoft Windows Live Sync
Beta](http://explore.live.com/windows-live-devices-and-sync-sync-mesh-upgrade-ui).
It's working fine on one of my computers, but on the other one, it drops
a letter when I set up a folder to sync.

![](https://turbo.geekorium.com.au/images/windows-live-sync-problems.png)

See what I mean?

For example, if I want to sync a folder like *D:\\My Videos*, the
program accepts the folder I want as *D:\\y Videos* **and then creates
this new folder for syncing**. Or it might sync *D:\\Archives* as
*D:\\rchives*. On my other computer - no issues.

Investigating a bit, I discovered it doesn't happen on my other drives
(C:, F:). My D drive is different, in that I've [moved the location of
my *My Documents*
folder](http://www.w7forums.com/change-location-my-documents-folder-t338.html)
to D. In a quick test, I discovered that moving it again to a subfolder
of D removes the issue. It's not a permanent solution however, as a) I
**like** having my documents folder in the root of my secondary drive,
and b) I would have to move 220Gb of data to an external drive and back
again as you can't move the location to a subfolder of the current
location.

So I've sent feedback to Microsoft using the inbuilt "report a problem"
menu in the beta. I did it in two parts though, so this post is my way
of putting it all in one place, and on the off chance that someone is
having a similar issue, they might get some comfort knowing that it's
not their fault (well it is, but only ever so slightly).