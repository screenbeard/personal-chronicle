---
title: Hugo Missing Posts
date: "2019-03-22 00:28:37 +1030"
draft: false
tags:
- hugo
- gohugo
- troubleshooting
- datetime
- timezones
- missing
categories:
- Tech
---

Just to help out anyone else who's brain is turning to mush trying to figure this out:

I went to write a new post tonight and discovered that Hugo flat out refused to render the new post. Nothing I did would make Hugo display or serve up the new page. Digging further, Hugo wouldn't convert the post using the conversion functions, and running --verbose or --debug showed that as far as Hugo was concerned, the new pages flat out didn't exist.

I was wracking my brain for hours over this - checking and double-checking paths, ensuring file permissions were correct, removing old posts, attempting to disable caches - until I did some frontmatter splitting and discovered that if I left the date field off, the posts showed up.

It turned out that something in my config has changed since I created my last posts, and Hugo is now rendering posts relying on the post's timezone to determine when it should be published. I recently updated my version of Hugo to v0.54.0, and I also specifically altered the way my dates are generated in `archetypes\default.md` to match how I'd like them to be stored, and one or both of those changes meant that Hugo went from generating new posts in a consistent timezone, to generating them in my local timezone but acting as though they were in UTC. This meant that posts were being ignored but would have published without a problem +1030 hours from the time I wrote them.

Now I've simply altered my archetype to include -0700 to tell Hugo to append my local TZ to new dates, and now a `hugo new posts/whatever.md` generates a file that shows up immediately when I serve the file.

In my `archetypes\default.md` file I've set date to:

```go
date: "{{ dateFormat "2006-01-02 15:04:05 -0700" .Date }}"
```
