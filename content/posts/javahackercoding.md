---
categories:
- Coding
date: "2009-10-29 11:19:36 +0930"
draft: false
tags: []
title: Javahackercoding ∞
url: javahackercoding
series:
- javahackercoding
---
I lost track of what week we're up to, and I've got a few updates to
roll into this one, so my titles are off.

Had a major assignment and a test since last time I updated, so I
thought it might be time to report how they went.

I was happy with my assignment and my grade of **Satisfactory**, until I
realised I could have gotten **Outstanding**! Apparently my only mistake
was to not:

> Keep the instance variable on the same line as its label.

Eg in my *toString* class I put:

```java
public String toString() {
    return super.toString() +
    " Place: " +
    place +
    "; State: " +
    state +
    "; Postcode: " +
    postcode +
    "; Country: " +
    country;
}
```

Instead of:

```java
public String toString() {
    return super.toString() +
    " Place: " + place +
    "; State: " + state +
    "; Postcode: " + postcode +
    "; Country: " + country;
}
```

Obvious, but worth marking me down? Maybe I did something else wrong,
but I don't think so.

I also attempted the test which included a section on Arrays. I haven't
done any study on arrays. I was worried. But the test was open book, so
I learned what I needed as I went, and even had time to attempt the
merit. My result?

{{< figure src="//farm3.static.flickr.com/2786/4054735931_596552f2d4_o.jpg" alt="" caption="**That's** better!" link="http://www.flickr.com/photos/joshnunn/4054735931/"  >}}

So I'm pretty happy with that.

Now on to Polymorphism and Interfaces!
