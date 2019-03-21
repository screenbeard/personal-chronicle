---
categories:
- Share
date: "2008-06-08 00:39:26"
draft: false
publishDate: "2008-06-08 00:39:26"
slug: starting-the-google-treasure-hunt-how-to-do-the-first-three-questions
tags:
- fun
- game
- google
- how to
- puzzle
- treasure hunt
title: 'Starting the Google Treasure Hunt: How to do the first three questions'
url: /starting-the-google-treasure-hunt-how-to-do-the-first-three-questions/
---
Google has been running a
"[treasurehunt](http://treasurehunt.appspot.com)" with unspecified
prizes up for grabs for the fastest times to complete the tasks. What it
amounts to is four questions spaced over a month, that you can log onto
in your own time and attempt to nut out. The questions are randomly
generated, but are of a different type each week. The first week was a
number/maths problem, the second was a computer/file problem, the third
a logic (and slightly computer network) problem. I haven't seen the
final fourth question yet.

I thought I'd jot down how I answered the questions - not my particular
answers - as they will be different for other people, but the methods
for answering the questions which are the same for each of the four
question types.

<span class="info">Please note that I cannot finish the treasure hunt. I
got stuck at question four. I wrote up how I did questions one to three
before I'd done four and it just seemed like a waste not to post
them.</span>

####

Question 1

> [Question 1: Robot](http://treasurehunt.appspot.com/historic/robot/) A
> robot is located at the top-left corner of a **X** × **Y** grid
> (marked 'Start' in the diagram below).
>
> The robot can only move either down or right at any point in time. The
> robot is trying to reach the bottom-right corner of the grid (marked
> 'Finish' in the diagram below).
>
> Note: The grid below is 7x3, and is used to illustrate the problem. It
> is not drawn to scale.
>
> [![Google Treasurehunt Question
> 1](//farm4.static.flickr.com/3168/2543751508_752035f4bc_o.png)](http://www.flickr.com/photos/joshnunn/2543751508/){.tt-flickr
> .tt-flickr-Original}\
> \*Image not to scale.
>
> How many possible unique paths are there?\
> (Note: Answer must be an exact, decimal representation of the number.)

I used to have a book of puzzles and math problems that had a section
about just this type of number problem. Unfortunately I could never make
sense of it - it used factorials and a fancy equation that told us the
answer, but the author never explained how he got the numbers that he
plugged into the equation. Fortunately I have Google. With a bit of
research I found out from [Dr.
Math](http://mathforum.org/library/drmath/view/66728.html) that the
formula is:

                  n!
    C(n,r) = -------------
               r!*(n-r)!

where *n* is the total number of moves along **one** path it would take,
and *r* is the number of moves along either axis (accross or down in
this example).

The grid size I was given was 66 × 46. Starting in the first square, the
robot can move either down or right - and will therefore take 65 moves
right and 45 moves down to get to the star-square, regardless of what
order he takes them in. That's a total of 110 moves (down or right), and
I can plug those numbers into the formula to get:

                   110!
    C(110,65) = -------------
                65!*(110-65)!

The problem is, most calculators can't handle those numbers. The
![](/strong%3E%20is%20called%20the%20factorial,%20and%20means%20take%20the%20number%20preceding%20it%20and%20multiply%20it%20by%20one%20less%20than%20the%20number,%20then%20multiply%20that%20by%20one%20less%20than%20that%20number%20and%20so%20on%20-%20in%20this%20example,%20110)
= 110 × 109 × 108 × 107 ... etc. This can generate very large numbers
very quickly. Asking the Google calculator what the answer is gave me a
very large number indeed, and did what most calculators do with these
sorts of numbers and freaked out, giving me this answer:

> 110 ! / 65 ![](*%2045%20) = 1.60981337 Ã - 10^31^\
> &lt;a
> href="http://www.google.com/search?q=110!/(65![](*45))&hl=en&safe=off"&gt;Google's
> unhelpful answer

What I needed was a whole number - a large whole number to put in the
answer box. So I went looking for an online calculator that can handle
large numbers. I found one built [using
Javascript](http://www.petting-zoo.org/Calculator.html), and one that
runs in a [Java applet](http://world.std.com/~reinhold/BigNumCalc.html).
I found the javascript calculator more intuitive and easy to use, but
the final step of dividing one huge number by another kept timing out on
me, so I switched to the Java one. I used a lot of copy pasting to keep
the numbers clear in my head - pasting them into a text document and
switching between the two calculators to check and recheck my answer.
Eventually, I had a number to paste into the answer box that matched
what Google almost told me earlier:

    110 ! / 65 ! × 45 ! = 16098133690909086126971454271170

I submitted it and a few minutes later, was told I was correct. A week
later I tried question 2.

####

Question 2

> [Question 2: Zip](http://treasurehunt.appspot.com/historic/zip/) Here
> is a random zip archive for you to download:\
> **GoogleTreasureHunt08\_longstringofrandomnumbers.zip**
>
> Unzip the archive, then process the resulting files to obtain a
> numeric result. You'll be taking the sum of lines from files matching
> a certain description, and multiplying those sums together to obtain a
> final result. Note that files have many different extensions, like
> '.pdf' and '.js', but all are plain text files containing a small
> number of lines of text.
>
> Sum of line **X** for all files with path or name containing **999**
> and ending in **.abc**\
> Sum of line **Y** for all files with path or name containing **000**
> and ending in **.xyz**\
> Hint: If the requested line does not exist, do not increment the sum.
>
> Multiply all the above sums together and enter the product below.\
> (Note: Answer must be an exact, decimal representation of the number.)

Where the bold numbers/letters above change randomly from question to
question.

I downloaded the zip file provided and extracted it (with paths) to my
hard drive. I initially tried to find a way to automatically find the
files specified using Windows command line tools, but they are very
limited (or I just don't know where to look). What I was looking for was
any file with a '.xml' extension that resided in any folder (even in
subfolders) with 'zzz' in the name, or that had the filename 'zzz.xml'.
Same again for any file with a '.pdf' extension that had 'EFG' in the
path. then I had to extract the numbers on the fourth line of all the
files I found. Fortunately I have access to unix tools - Cygwin for
Windows at work, and linux and mac machines at home. With a bit of
"[research](http://google.com)", and the unix 'man' pages, I strung
together a command that would print me a list of numbers.

    find . -path *zzz**xml -print0 | xargs -0 -I xxx sed -ne '4{p;q}' xxx

The command works this way:

-   `find` is the command to look through a file list.

-   I started in the directory I had extracted the files to, which is
    why I used `.` as the search path.

-   Then the '-path' switch finds any path that matches the regular
    expression following it. The expression I used was `abc*xyz`, where
    `abc` is the path code we were supposed to find and `xyz` is
    the extension.

-   `-print0` just outputs the files it finds.

-   The files then get piped `|`

-   into the `xargs` command, which is used to run the `sed` command on
    each file in turn.

-   The `sed` command is then given:

    -   the `-n` switch to make sure `sed` doesn't edit the file.

    -   `-e` to run the sub-script `4{p;q}`, where `4` is the line
        number to extract, `p` prints the contents on the line, and `q`
        tells the sub-script to quit there, rather than keep
        going unnecessarily. I'm not sure the `-e` switch is necessary,
        but I kept it in from the helpful fellow who suggested it on a
        forum discussion from 2004 that I can't find again.

    -   `xxx` to say "use the file you found in the `xargs` part of
        the command.

    I'm not sure that my analysis of the `sed` command is accurate.
    Please correct me if I'm missing something.

It's a relatively simple command, but it produces a list of every 4th
line in every file that matches the criteria.

There's probably a unix-hackery way to then get the sum of those
numbers, but I just copied and pasted them into an Excel spreadsheet and
used the `=SUM (A1:A10)` to add them all up. Then repeated the process
with the next set of criteria and multiplied the two number I got at the
end to give me the answer. I did it a second time to produce another
answer in a faster time, and waited for Question 3.

####

Question 3

> [Question 3:
> Network](http://treasurehunt.appspot.com/historic/network/) Below is a
> diagram of a computer network. The nodes are hosts on the network, and
> the lines between them are links. A packet is sent out from host **X**
> with a destination of **111.222.333.444**. Which nodes does the packet
> pass through on its way to the destination? (include start and final
> node in your answer)

And here's an image of the second question I attempted (click to zoom):\
[![Google Treasurehunt Question
3](//farm4.static.flickr.com/3147/2543349597_3f7f8e4ecc_o.jpg)](//farm4.static.flickr.com/3147/2543349597_3f7f8e4ecc_o.jpg)

After freaking out a little at how complex it looks I started brushing
up on my routing table knowledge. It quickly dawned on me however this
puzzle is nothing like a real-world networking problem, and is entirely
about logic and following a path.

Again, there's probably a unix-y way of doing this, maybe a perl script
or something that could look through this grid of numbers and trace a
path around the diagram. I chose to do it ~~the easy~~ ~~hard~~ my way.

What I'm doing is following the logic of the routing table. At each node
you can get only one step closer to the node you want, and each node has
instructions for where to send the information next. In this example if
I start at the top in row 1 (for node A) I would read this as:

-   if I want to get to 203.21.93.108, then go to 203.21.93.108;

-   if I want to go to 48.251.60.80 go to 100.5.76.120;

-   if I want 8.32.24.0/24 go to 161.212.157.20;

-   and if I want to go anywhere else, go to 17.29.203.130.

Of course, you don't start at node A, you start where you need to start
- in my case node G. I write "G" in the answer box and start.

Finding the starting point: G (in this example), I looked across the
columns until I found reference to the end point I was trying to reach:
203.21.93.108. On the table, the second routing table entry in row 'G'
has "203.21.93.108 =&gt; 8.32.24.60". This means that for the
information to get from G to 203.21.93.108, it must first go through the
node with the IP address of "8.32.24.60".

"8.32.24.60" is node "F", so I write down F in the answer box and keep
going.

Node F directs me to "234.129.94.133" which is node "I", and so on I go.
It's like a numerical choose your own adventure. Without the choice. Or
the fun. On occasion, there are nodes that look like the next logical
step would be to finish the puzzle, because it is right next to the
finishing node, but if the rules don't tell you to finish, you have to
keep going.

Following this to completion gives a string of letters like this:
GFIHDCLONAM corresponding to the path taken through the nodes. This gets
me through this round and on to question 4.

####

Question 4

> Question 4: Primes\
> Find the smallest number that can be expressed as\
> the sum of **A** consecutive prime numbers,\
> the sum of **B** consecutive prime numbers,\
> the sum of **C** consecutive prime numbers,\
> the sum of **D** consecutive prime numbers,\
> and is itself a prime number.
>
> For example, 41 is the smallest prime number that can be expressed as\
> the sum of 3 consecutive primes (11 + 13 + 17 = 41) and\
> the sum of 6 consecutive primes (2 + 3 + 5 + 7 + 11 + 13 = 41).

Where A, B, C, and D are uniquely generated for each question.

Question four is here to separate the boys from the men. Unfortunately
in terms of maths and programming/scripting - my voice hasn't dropped. I
cannot continue giving any help, and I've had to bow out of the hunt. I
know I could do the question with the help of the internet, but frankly
- I was only doing it to feel smart...

Anyway - if you'd like a solution to the fourth question you can get it
here: [Solving Google Treasure Hunt Puzzle 4: Prime
Numbers](http://www.catonmat.net/blog/solving-google-treasure-hunt-prime-number-problem-four/).
His solution is particularly good - in that he uses a lot of command
line nous to get the job done. A few commenters say they've used
python/perl/java programs to do it all from scratch, but I love that he
uses a bit of unix giggery-pokery to get a useful file that he then just
extracts the answers from. He also hasn't tried the first three
questions yet - so I'm not linking to someone who's gonna show me up
with their first three answers!

Have fun.