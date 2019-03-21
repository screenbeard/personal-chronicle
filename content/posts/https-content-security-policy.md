---
title: HTTPS Content Security Policy
date: "2019-03-21 21:32:00 +1030"
draft: false
tags:
- technical
- web development
categories:
- Tech
---

After having followed in his footsteps and [converted my site to Hugo]({{< ref "/posts/moving-to-hugo.md" >}}), Rubenerd also prompted me to check out my HTTPS score on Mozilla's Observatory with [his post on the topic](https://rubenerd.com/testing-https-tls-sites/).

Using Wordpress my grade was an F, but the change wasn't enough in-and-of-itself to change the grade at all. It turns out Mozilla is *super* persnickety about HTTPS security and focuses on your site's
[Content Security Policy](https://infosec.mozilla.org/guidelines/web_security#content-security-policy) as one of it's primary measures.

The CPS is not something I'd ever heard of before. Other sites gave my site a clean bill of health when I'd checked to see if my SSL certificate was doing it's job, so I figured my site was safe. It turns out that browsers now support a Content Security Policy header that can tell the browser to ignore any potentially dangerous content that isn't explicitly allowed by the creator.

What this means is that the webmaster identifies where all their Javascript, CSS, iframe embedded content, images and other content might come from, then set up a ruleset that tells the browser to block anything else.

My ruleset (via Headers in .htaccess) looks something like the following:

```ApacheConf
default-src 'none';
object-src 'none';
frame-ancestors 'none';
base-uri 'none';
frame-src https://www.youtube.com;
form-action 'self'
    https://*.staticman.net
    https://duckduckgo.com;
font-src https://fonts.gstatic.com/;
img-src 'self'
    https://turbo.geekorium.com.au
    https://visitors.geekorium.com.au
    https://*.flickr.com
    https://*.staticflickr.com
    https://www.gravatar.com;
script-src 'self'
    https://cdnjs.cloudflare.com
    https://visitors.geekorium.com.au;
style-src 'self' https://fonts.googleapis.com
    https://cdnjs.cloudflare.com;
```

- default-src is the base level rule, and by setting it to 'none', we tell the browser to ignore anything that isn't explicitly spelled out below.
- frame-src is set to allow only youtube.com iframes (eg. [this post]({{< ref "/posts/fair-well-old-chums.md" >}}))
- form-action only allows submitting forms to staticman.net for comments and duckduckgo.com for the search form on the front page
- font-src is set to allow google fonts
- img-src allows images from my amazon s3 bucket, Flickr, Gravatars, and an image for visitor statistics (using Matomo so your data isn't going anywhere).
- script-src allows cloudflare hosted JS because the theme I'm using uses some libraries there.
- style-src allows CSS from googleapis.com and cloudflare, again for the theme.

By specifying 'self' for JS and CSS, and explicitly not using 'unsafe-inline' I've forced myself to move everything to self-hosted CSS and JS files, instead of using inline `style` on html elements or `onClick` JS. From the Mozilla docs on the matter:

> Inline JavaScript – either reflected or stored – means that improperly escaped user-inputs can generate code that is interpreted by the web browser as JavaScript. By using CSP to disable inline JavaScript, you can effectively eliminate almost all XSS attacks against your site.

And with comments enabled, I want as much protection from XSS as possible.

Now The Geekorium scores [a delightful A+](https://observatory.mozilla.org/analyze/the.geekorium.com.au) on the Mozilla Observatory, and a score of 125/100, which is the sort of 'extra-credit' number I'm looking for in my security.
