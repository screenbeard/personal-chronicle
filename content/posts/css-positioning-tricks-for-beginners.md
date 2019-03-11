{
    "date": "2008-09-15 03:50:04",
    "draft": false,
    "publishDate": "2008-09-15 03:50:04",
    "slug": "css-positioning-tricks-for-beginners",
    "title": "CSS Positioning Tricks for Beginners",
    "url": "\/css-positioning-tricks-for-beginners\/",
    "tags": [
        "beginners",
        "Cascading Style Sheets",
        "hints",
        "html"
    ],
    "categories": [
        "Rambling"
    ]
}

{{< figure src="https://turbo.geekorium.com.au/images/css-snippet.png" attr="Image via Wikipedia" attrlink="http://commons.wikipedia.org/wiki/Image:CSS.svg" title="A graphical depiction of a very simple css doc" >}}


I'd not call myself a website coding guru. In fact, my learning has only really started. In creating the [design for my site](//the.geekorium.com.au/claim-theme), I've learned a couple of important [CSS](http://en.wikipedia.org/wiki/Cascading_Style_Sheets) coding tricks that I had to learn from disparate sources all over the web. I hope by putting them here that I'll cement them in my own brain, and maybe they'll help you too. They're elementary things but they may not be obvious at first glance.

### Understanding "position:absolute"

The selector `position:absolute` is relative to the closest parent element explicitly marked with `position:relative`. If nothing is marked with `position:relative` the element will be absolute from the top of the page.

In my theme, I wanted to attach the post [meta-information](http://en.wikipedia.org/wiki/Metadata) in its own separate column on the left there. In the flow of the page, the meta-information sits above the entry.

This is my HTML:

(Oh dear, I've lost whatever used to be pointing here - Snippet 864, whatever that was!)

The problem with positioning elements is that if I move the "postmetatext" element to the left, the following heading and the "entry" div get shifted as well. What I want is to keep them in the flow, but move the "postmetatext" div outside the margins of the "post" div.

To force the div marked "postmetatext" outside the margins, I had to use `position:absolute`, but then the text sat in a position that was absolutely aligned with the top of the page. By marking up the "post" div with `position:relative`, I reset the absolute positioning on the "postmetatext" child element.

The CSS:

(Oh dear, I've lost whatever used to be pointing here - Snippet 865, whatever that was!)

### Don't use "padding" for positioning when "margin" will do

Internet Explorer will give you grief if you rely exclusively on padding for positioning. I can't think why you might, but one of my rookie mistakes was using padding a little too liberally, and fantastic layouts were entirely ruined on IE. By using the margin selector where it made no difference otherwise, I created a layout that works in pretty much every browser I threw at it.

### But don't use "margin" for positioning absolute elements

In the example above, I used `top` and `left` to spin the post meta-information out into the left column. Again, this will save you grief in IE and works well cross-browser. Using `margin` in combination with `position:relative` can be very unpredictable from browser to browser.

### The cure-all: clear:both

This is the answer to all your problems. Inline elements stacking on top of each other? `clear:both`. Footer hovering up near your header? `clear:both`. Wife nagging you to take out the garbage?`clear:both`.

OK, so it's not going to fix all your problems, but when you're using floats, clear:both will help put everything back in it's place when everything is riding up all in your face. A floated element will sit to the right (or left) of the previous element unless "cleared" You can clear to the left or right, but clear:both tells the element to shove down and stay below the previous element regardless of what else is going on. Perhaps I over-use it in my designs, but it seriously solves so many problems I just can't help myself.

### I know, I know

These few things are not advanced CSS tricks. They aren't things that other CSS coders won't already know. They're probably obvious to anyone who bothered to read the CSS specification. But they're my early mistakes, and they're hard learned through through trial and error and checking my code against the beautiful code of my superiors. I offer them in the hopes they might help someone, and so I might remember them for next time.
