---
categories:
- Tech
date: "2012-04-01 12:30:44 +0930"
draft: false
publishdate: "2012-04-01 12:30:44 +0930"
slug: creating-an-ebook-for-ipad-and-kindle-in-indesign
tags:
- Calibre
- epub
- ibook
- InDesign
- iPad
- iPhone
- kindle
- mobi
- tutorial
title: Creating an eBook for iPad and Kindle in InDesign
url: /creating-an-ebook-for-ipad-and-kindle-in-indesign/
---
This tutorial is for people with a grounding in InDesign already. You
should know the basics of creating a new document, adding *Paragraph
Styles* and manipulating text. I'll be covering the "gotchas" I found
creating an eBook from InDesign. Creating an eBook in InDesign will give
you the option to export as EPUB, PDF and HTML all from the same source,
with minimal changes. What follows is my preferred flow.

Regular readers might want to tune out now. Go read an old [Rex
Havoc](//the.geekorium.com.au/category/space-flight-704/) or something.

Before you start you'll need
[Calibre](http://calibre-ebook.com/download). Calibre is a "swiss army
knife" for eBooks. It converts to and from all sorts of formats. To keep
the code as pure as possible though, I only use it for the final
conversion from EPUB (eBook format) to MOBI (Kindle format), which is
not currently possible straight from InDesign.

\# Create all the different visual styles as *Paragraph Styles*.

\# As you create them, fill in the *Export Tagging* options at the
bottom of the *Paragraph Style Options* window.

![](https://turbo.geekorium.com.au/wp-content/uploads/Paragraph-Style-Options_2012-04-01_17-05-47.png "Paragraph Style Options"){.size-full
.wp-image-134646907 width="661" height="553"}

Be sparing with the H tags

**** Chose an appropriate Tag for both the EPUB and HTML section and the
PDF section. You can choose P (paragraph) or H1 through H6 (heading
sizes 1-6), but keep it simple. If you're used to working with HTML,
this will be straight forward, but you want to keep most text as
Paragraph text and leave the Headings for your actual title and book
headings. For instance, I've used H1 for the title of my book, H2 for
chapter titles, H3 for the Author style, and H4 for the book subtitle.

**** Add a Class under *EPUB and HTML*. This will add all the relevant
CSS to the exported document to give it a semblance of what you actually
intend it to look like.

\# Also make sure you turn off Hyphenation on each paragraph style.
Kindle reflows the book to match the reader's text options, and hyphens
won't make sense the minute they leave your carefully formatted book.

\# Create a Table of Contents, but do not insert into a page. Leave it
as overset text outside the flow of the document. When you export it,
you have the choice to include it and you should do it then.

**** When you export the document, choose the *Contents* as shown.

![](https://turbo.geekorium.com.au/wp-content/uploads/EPUB-Export-Options_2012-04-01_17-47-53.png "EPUB Export Options_2012-04-01_17-47-53"){.alignnone
.size-full .wp-image-134646905 width="671" height="588"}

Remember this, there's a Quiz later

\# Fill out at least the first tab of the File Information ( *File* &gt;
*File Info* in the menu.) This will pre-fill a lot of the metadata your
eBook needs.

![](https://turbo.geekorium.com.au/wp-content/uploads/File-Information-for-Time-Diversion.png "File Information"){.alignnone
.size-full .wp-image-134646906 width="680" height="620"}

Metadata is **always** important

1.  Export your file. At this step you can export as PDF, HTML and of
    course, EPUB.
    -   In the EPUB Export Options tick Include Document Metadata and
        fill in your details of you care to.
    -   Select *Use Existing Image File* and select a cover image. It's
        better that you don't include this image in the actual
        InDesign document.
    -   Under *Formatting Options* you can choose to leave the defaults,
        or set Bullets to "Map to Unordered Lists" and Numbers to "Map
        to Static Ordered Lists" (I'm actually not sure what the
        difference here is.
    -   You can leave the *Image* options as default, or tweak to
        your liking. The books I've done so far have been light on
        images, but if I do anything more in-depth I'll update this page
        with what I find.
    -   Fill in the *Contents* section as previously shown.

2.  Open your EPUB file in Calibre. Check the conversion. I only got
    this process right after much trial and error, and some of my
    settings have become default for me. If things aren't working right
    for you leave me a comment and if I had the same issue I'll update
    the tutorial with how I overcame the problem.
3.  Click *Convert Book* in Calibre.
    -   In the *Metadata* section, fill in any further
        metadata necessary.
    -   You can leave most of the rest as default, but under *Structure
        Detection* you may wish to use an XPath expression to force page
        breaks in your kindle document if you haven't already done so
        in InDesign. To do it in InDesign, choose the *Paragraph Style*
        that will force a new page and under "Keep Options" in
        *Paragraph Style Options* set "Start Paragraph" as *Next Page*.
        EPUB and MOBI will honor this setup.
    -   Under *Table of Contents* ensure "Force use of auto-generated
        Table of Contents" is unticked.
    -   In *MOBI Output*, untick everything.
    -   Click OK. If I've remembered all the steps I used, you should
        have well formatted EPUB and MOBI files.
    -   From Calibre, select the new title and click "Save to disk in a
        single directory" and put your new files somewhere. Share and
        enjoy!

The MOBI file that this process produces is perfect for uploading into
Amazon. The files I've uploaded don't change at all and look exactly the
same once they've been processed by Amazon's software.

The EPUB file can be loaded over the net into iBooks on your iPad or
iPhone by opening the file in Safari. The software will ask you if you'd
like to add the file to your iBook shelf.

You can check out the results of this process by downloading "my first
Rex Havoc ebook://the.geekorium.com.au/get-space-flight-704/ for free,
or the third [Time Diversion directly from
Amazon](http://amzn.com/B00718SIHQ).