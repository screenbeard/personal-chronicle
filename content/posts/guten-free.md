{
    "slug": "guten-free",
    "url": "\/guten-free\/",
    "title": "Guten Free",
    "draft": false,
    "date": "2019-02-11 12:49:53",
    "publishDate": "2019-02-11 12:49:53",
    "tags": ["puns", "wordpress", "technology", "star trek", "transporter"],
    "categories": [
        "Tech"
    ]
}

So I came in here to do a post about something completely different, but
discovered that Wordpress has enabled their [Gutenberg
editor](https://wordpress.org/plugins/gutenberg/) by default with the
latest version of the software, and it\'s both enticing and scary to try
something new, so I thought I'd give it a shot.

On the surface it's got some advantages I think for people who want to
write pretty posts.

What's immediately appealing is that everything is a block of
"something" and you have to be very deliberate in what **something**
you want that *something* to be. For example, if you want to insert a
quote, you start a new paragraph and you select the "quote" block type
and blammo, there's your quote:

> Gutenberg is more than an editor.
> [Gutenberg contributors](https://wordpress.org/plugins/gutenberg/)

Which is something that for **years** I've thought was missing from all
the nice GUI editors bundled with netlog software. I've had to deal
with the source-code HTML fallout of websites written with WYSIWYG
editors, and for the most part what you see on the front end might be
what you get, but how you get it is usually some form of Lovecraft-ian
horror on the back end, with tags embedded in tags like they've been
involved in a transporter accident.

{{< figure src="https://the.geekorium.com.au/wp-content/uploads/2019/02/Transporter-Accidents-700x156.jpg" caption="Not all transporter malfunctions are happy accidents" alt="A sequence of mildy gruesome accidents caused by Star Trek technology. And Tuvix" >}}

The ideal goal of a "block" powered editor in my mind would be to
teach your users how to think in blocks, so that their HTML is
structured and formatted from the get-go with the particular
idiosyncrasies of that format in mind. I'm not sure if that's what the
authors of Gutenberg set out to accomplish, but it's the ideal outcome
I can think of from such a project.

Personally I gave up on WYSIWYG years ago because I wanted precise
control over what I wrote and not have the editor insert it's ideas of
how to output my thoughts. I began using Textile (markup) and have since
dabbled a little in Markdown, and if I'm truly not getting the output I
want, I switch to plain HTML. So, my initial reaction to having
Gutenberg thrust upon me was to immediately reach for the off switch.

As an aside - I wanted to write a quick footnote here, but by default
Gutenberg does not appear to support them. I'm guessing there are
plugins for this, or maybe a setting I've missed, but it doesn't
appear to be possible out of the box - something I **cannot** abide.

What I *wanted* to write as a footnote was that I **did** enable
Gutenberg early as a plugin just to see what it was all about, but
freaked out and turned it off immediately because change is awful and
should never be tolerated. It's possible that I **left** it turned on,
and only thought I disabled it, but I'm pretty sure it's turned on by
default, and research is for chumps.

While I'm writing, I'm noticing what I'm going to presume is a bug
that's causing the cursor to reset to the top of the paragraph I'm
writing every time the page auto-saves. This is annoying. It could be a
setting or another plugin I have causing the issue though, so it may not
happen to everyone.

In summary, what I'm hoping to find when I press publish is a concise
and minimal HTML output on my final page. The block paradigm, and the
beautifully crafted interface for building those blocks appeals to me on
a technological level, and I truly hope that the Gutenberg idea sticks
and is embraced by the Wordpress user base. While there appear to be
some minor issues (that might be unique to my setup), the idea is sound
and may go some way to improving the guts of the sites that use it,
which is a win.

**Addendum**: Gutenberg is wigging out with my Textile plugin and adding
an extra `<br/>` tag after every paragraph. Other than that, the output
HTML is every bit as simple and elegant as I could have hoped for. I
will need to find a resolution to the Textile/Gutenberg conflict some
time, and it might simply be switching off Textile once and for all, but
if you come here and the page still has giant empty space between
paragraphs, you'll know it's not because of Gutenberg.

