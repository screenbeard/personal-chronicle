---
categories:
- Tech
date: "2013-03-15 11:42:44"
draft: false
publishDate: "2013-03-15 11:42:44"
slug: make-tiny-tiny-rss-look-and-behave-like-google-reader
tags:
- bad decisions
- google
- google reader
- RSS
- Tech
- tiny tiny rss
title: Make Tiny Tiny RSS Look and Behave Like Google Reader
url: /make-tiny-tiny-rss-look-and-behave-like-google-reader/
---
Since Google announced they were closing Google Reader down in June,
people have been scrambling to find something to use in it's place. I'm
not sure what the rush is, but I was caught up in it too. My replacement
of choice is [Tiny Tiny RSS](http://tt-rss.org) because it's self
hosted, meaning I don't have to rely on any third party for such an
important task any more.

This article is *not* about how to set up TTRSS (Tiny Tiny RSS). That's
been covered by the official Wiki and Forums. This article is about how
to make TTRSS behave somewhat more like Google Reader, so you can jump
right back in to reading feeds and not have to learn something new.

First up are the settings you can change straight out of the box. Open
Preferences - the link is the first item in the 'Action' menu at the top
right of the main interface.

[![2013-03-15 20\_46\_29-Tiny Tiny RSS \_
Preferences](https://farm9.staticflickr.com/8085/8559598494_6de4ec7037_z.jpg){width="640"
height="637"}](http://www.flickr.com/photos/joshnunn/8559598494/ "2013-03-15 20_46_29-Tiny Tiny RSS _ Preferences by screenbeard, on Flickr")

What do you prefer?

Set up the above options as shown. To access 'Automatically expand
articles in combined mode' you need 'Show additional preferences'
ticked. 'Combined feed display' switches the view from 3-pane view to
two-pane.

While you're in Preferences, click 'Customize' under 'Customize
stylesheet' and paste in the code found in [this
Gist](https://gist.github.com/gregrickaby/5162386) by [Gregory
Rickaby](https://plus.google.com/115960795578445596136/posts/bkbQZXTqogf)
to get TTRSS looking a bit more like Google Reader (if that's your bag).

[![2013-03-15 21\_06\_08-Tiny Tiny RSS \_
Preferences](https://farm9.staticflickr.com/8249/8559616712_d1c56cb87f_z.jpg){width="614"
height="333"}](http://www.flickr.com/photos/joshnunn/8559616712/ "2013-03-15 21_06_08-Tiny Tiny RSS _ Preferences by screenbeard, on Flickr")

Such Style

[Mark
Waters](https://plus.google.com/101762947855555723549/posts/JwEpGNbhrV9)
created a [Google Reader Shortcut
plugin](https://github.com/gothfox/Tiny-Tiny-RSS/commit/3afc03b5308ab93e811fdeca6fd2a3c54ac8bbd8).
Developer fox has already merged it into the software, but if like me
you downloaded the version before the plugin was incorporated, you can
create a directory called 'googlereaderkeys' in the plugin directory,
and in that create a file called init.php. Paste the code from Mark's
plugin in that file and save it to your installation. This will enable
the familiar j/k keystrokes to navigate feeds and 'v' to open them.
Alternatively you could get used to the native keystrokes n/p for
next/previous. Don't forget to visit the plugin page and enable this new
plugin.

[![2013-03-15 20\_53\_02-Tiny Tiny RSS \_
Preferences](https://farm9.staticflickr.com/8099/8559601194_a56006f551_z.jpg){width="465"
height="640"}](http://www.flickr.com/photos/joshnunn/8559601194/ "2013-03-15 20_53_02-Tiny Tiny RSS _ Preferences by screenbeard, on Flickr")

Might as well enable some other plugins while you're there

Next up is collapsing expanded articles by clicking on the headings
again. Based on [fox's
patch](http://tt-rss.org/forum/viewtopic.php?t=1287&amp;p=5658#p5658),
open up the file 'js/viewfeed.js' in a text editor.

Beginning at line 1320, replace:

\[snippet id="862"\]

with

\[snippet id="863"\]

And save it back to your installation.

Things should now look like this:

[![2013-03-15 22\_04\_53-Tiny Tiny RSS
(1)](https://farm9.staticflickr.com/8234/8559695108_3741a4caf5_z.jpg){width="640"
height="490"}](http://www.flickr.com/photos/joshnunn/8559695108/ "2013-03-15 22_04_53-Tiny Tiny RSS (1) by screenbeard, on Flickr")

Pretty ain't she?

There are a few more tips around including [how to import starred and
shared items](http://tt-rss.org/forum/viewtopic.php?f=8&t=1087) into
TTRSS. Tiny Tiny RSS is a fantastic product that fills the void left by
Google Reader. I highly recommend donating too - [Andrew
Dolgov](https://plus.google.com/116488836544460016164/posts) has been
working tirelessly, since the Google Reader announcement, to keep on top
of endless support requests.

Got any other tips you're using?

<span class="update">June 2013: I am no longer using this software
myself. This post was written in support of an independent developer who
I believe has built a terrific product and released it for free for
anyone to use. You're still free of course to use Tiny Tiny RSS, but I
can no longer recommend it. While the developer works hard and is
constantly updating and fixing his software, I find his customer service
manner to be beyond rude. He's never been rude to me personally so this
isn't sour grapes, but his forum and other interractions are littered
with examples of unnecessary rudeness. If you want good software, and
will never need assistance please go ahead and use TTRSS. Personally, I
switched from Google Reader to a self-hosted solution so that I wouldn't
need to switch again. However, I'm not convinced that I will able to get
help with the product in future without following the developers
unwritten rules for support. I'm certain the developer will not miss me.
**TL;DR** Developer is unnecessarily rude and I don't want to support
rude people.</span>