---
categories:
- Web Hosting
date: "2013-06-13 14:26:06 +0930"
draft: false
publishdate: "2013-06-13 14:26:06 +0930"
slug: how-to-change-the-whmcs-bridge-page
tags: []
title: How to Change the WHMCS Bridge Page
url: /how-to-change-the-whmcs-bridge-page/
---
When you first install the WHMCS Bridge plugin from
[Zingiri](http://www.zingiri.com/), the plugin warns you not to 'edit or
delete this page', meaning don't touch the page that's automatically
created by the plugin. Unfortunately, if you disable the plugin then
re-enable it, the page that was initially created gets trashed and a new
one created. This would be fine, if unlike me, you just permanently
deleted the original page that had been created, then altered the page
slug and page name however you want on the *new* page. What do you do if
you *need* to edit the WHMCS Bride page?

[![2013-06-13
23\_50\_27-Clipboard](https://farm6.staticflickr.com/5546/9032196995_d0e7b3bbde_o.png){width="206"
height="77"}](http://www.flickr.com/photos/joshnunn/9032196995/ "2013-06-13 23_50_27-Clipboard by screenbeard, on Flickr")

Consider getting the Pro version - it's worth it.

However, if you *were* like me, you instead permanently deleted the new
page, and reinstated the *old* page, only to find that it doesn't work
any more.

That's because the settings grabs hold of the database ID of the page it
creates and permanently stores it in the settings, untouchable in anyway
via the front end.

First up you need to grab the ID of the page you want to use. You can
get this from the database, under the *wp-posts* table, but it's easier
to just edit the page you want to use and grab the page ID from the URL.
For instance, you might have
`http://example.com/wp-admin/post.php?post=123456789&amp;action=` and
you would grab the ID 123456789 from the middle of the URL.

Next you want to edit the database. Using something like phpmyadmin
(beyond the scope of this post) head to the *wp\_options* table and look
for the option *cc\_whmcs\_bridge\_pages*. change the value to the ID
you grabbed before, and blammo - pages are working again.

[![2013-06-13 23\_52\_25-nunnone.com \_ localhost \_ joshnunn\_wp1 \_
wp\_options \_ phpMyAdmin
3.5.8](https://farm8.staticflickr.com/7432/9034441090_1fa1c092d5_z.jpg){width="640"
height="118"}](http://www.flickr.com/photos/joshnunn/9034441090/ "2013-06-13 23_52_25-nunnone.com _ localhost _ joshnunn_wp1 _ wp_options _ phpMyAdmin 3.5.8 by screenbeard, on Flickr")

You might also need to add THE Custom Field Name
*cc\_whmcs\_bridge\_page* with the value *WHMCS*, but I found they were
already there when I reinstated the page.