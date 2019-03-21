---
categories:
- Site
date: "2019-03-11T11:38:45+10:30"
draft: false
tags:
- staticman
- hugo
- tech
- website
title: Staticman Comments Are Go
---

I've re-enabled comments here at The Geekorium, and imported all my old comments, so go nuts!

To import all your old comments, I used a script written by someone else, then parsed them through a dodgy PHP script I made myself to rename everything into the format my site is relying on, so there might be shenanigans with the imported comments. Please let me know if anything seems off.

That leaves me with the next question: how do I ensure I don't get flooded with spam? I've had comments back on for all of 2 days, and I get a steady trickle of Pull Requests from the Staticman bot triggered by spam comments. On the Wordpress site I had Akismet turned on, which all but eliminated bad-faith for me, the way modern email clients almost never let the chaff through.

The simplest answer is the Google reCAPTCHKA[^1] - the latest version doesn't even ask you to tick the "I'm not a robot" box let alone click on thirteen boxes of street crossings. It's a tempting solution, ***but*** it's owned and operated by Google, and everything your users do on your website is captured for analysis. As spelled out in their documentation:

> reCAPTCHA works best when it has the most context about interactions with your site, which comes from seeing both legitimate and abusive behavior.

Additionally,

> reCAPTCHA learns by seeing real traffic on your site.

In a perfect world, Google would *only* use this data to improve the service. Maybe that's all they're doing, but I take my reader's privacy seriously - more than my own - and I'm genuinely concerned what Google is doing with this enormous corpus of user data capcha'd by these little blue boxes all over the web. They're more pervasive than Facebook logins and social buttons, and unlike the earlier version, it's no longer training robots to recognise trains or traffic lights, it's training computers how to recognise human behaviour.

There's also the question of how these work if people choose to disable javascript. The theme I'm using relies on more JS than I'd like already, but at least it degrades elegantly. I'm not so sure about recapcha and I can't find an answer on their website.

It's looking likely I'm going to have to palm user data off to someone to determine if they're a robot or not. I'm not happy about it, but it appears to be the price unless I'm willing to sift through dozens of spam comments a day. It wouldn't be so bad, except Git's policy of keeping history means that the spam I receive is attached to my site's repo forever, even if the comment never makes it here.

My final recourse is to try something that I'm guessing won't work for long. Staticman has a feature that checks for valid form data. The check is basic enough that the field can be *present* in the data as long as it's blank. If it has a value set it immediately fails validation. I've set a dummy field in the form that needs to be left blank. If a 'bot fills it in, it should get picked up and fail to submit. I'm not sure how long it will slow them down, but I'm going to give it a shot.

I've also disabled the form on posts older than a month, so if you want to comment, do it **now**!

***Update:*** 24 hours without a spam comment. Success!

[^1]: https://www.youtube.com/watch?v=WqnXp6Saa8Y
