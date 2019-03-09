{
    "title": "Moving to Hugo",
    "date": "2019-03-09T16:35:38+10:30",
    "draft": true,
    "tags": ["hugo","go","wordpress","change","pandoc"],
    "categories": [
        "Tech"
    ]
}

They say "imitation is the sincerest form of flattery", and I do hope they're right. I've been reading [Rubenerd](//rubenerd.com) for the longest time, and his lovely minimal(ist) website built on [Hugo](https://gohugo.io/) has had me dying to try out the technology for the longest time.

While there's nothing **wrong** with Wordpress, I've *always* found it just a little too clunky for my tastes - and slow. That might be because I've always used it on shared hosting with less than optimised databases. The idea of a super fast and efficient text-only site is appealing.

So if you can't tell the difference, today's post (and all past posts) are now brought to you by Hugo, powered by Go.

I also used this as the excuse I needed to finally put the effort into dual booting Linux on my machine. I'm trying out Linux Mint, and I'm proud I actually got it working with Secure Boot[^notalent]. Starting out, my "flow" is to create a post in Markdown, then build the site and rsync it to to the same location my old site was.

Please let me know if you notice anything funky. As usual I can be reached on [Telegram](https://t.me/TheGeekorium), [Discord](https://discord.gg/MdRrxQC), and just recently, [Twitter](https://twitter.com/screenbeard)[^sellout]. However, I'm aware that there's lots of posts that will not have survived the switch over without some... problems. I will get to them eventually.

The process of moving was interesting. All my posts in Wordpress were written in [Textile](https://textile-lang.com/) which *for years* was my preferred markup language, but Textile turned out to be Betamax to Markdown's VHS, or what Mercurial is to Git, or what Bitbucket is to Github, or what this sentence is to any other sentence.

The first step was to learn **just enough** Go to build the [Go Wordpress Importer](https://github.com/screenbeard/go-import-wordpress). This pulls all the posts out of a Wordpress Export XML file, then uses [Pandoc](https://pandoc.org/) to convert the HTML to whatever format you like. I built in the ability to toss in some extra Pandoc magic to convert from Textile to HTML then from HTML to Markdown.

From there, Hugo does most of the heavy lifting as long as you can find a theme you like that includes all the nice stuff you want included. I quite like [Er](https://github.com/lingxz/er) but I've forked it as [ooh-er](https://github.com/screenbeard/ooh-er) for my own purposes.

The next step is to build comments back in. It's something that Ruben has forgone - not for technical reasons I believe - but I really enjoy the one or two I get occasionally. It's not an easy problem to solve with a static site though, but I think I'll be leaning on [Staticman](https://staticman.net/) to add comments into the [github repo](https://github.com/screenbeard/personal-chronicle). I found a slightly different script that also uses Github, but adds comments as "issues". While appealing, I also want to ensure I'm not tied completely to Github for all time.

Let me know what you think of the changes. I'll post more when I have comments up and running.

[^notalent]:Through no talent of my own I might add.
[^sellout]:God I'm such a sell-out.
