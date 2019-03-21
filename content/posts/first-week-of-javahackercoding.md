---
categories:
- Coding
date: "2009-08-02 12:37:18"
draft: false
publishDate: "2009-08-02 12:37:18"
slug: first-week-of-javahackercoding
tags:
- beginner
- exercise
- java
- lesson
title: First Week of Javahackercoding
url: /first-week-of-javahackercoding/
---
Last Thursday was my first Java class in my TAFE programming course. I
wasn't sure how I'd go, but I was feeling quite positive going into it,
because I've been waiting to start for so long.

It was daunting.

My lecturer was shocked that I have no programming experience going into
his class (I was told I should be able to catch up), and implied it was
a certainty he would have to take time away from his other students to
help me out. My other classmates were also surprised that I'm starting
where I am.

It left me wondering if I should wait another semester and start with
Visual Basic like I'm supposed to, or take the Friday morning VB class,
and work late three nights to make up the time. On the other hand, I'm
kinda keen to just power forward and show everyone that I can do it
((which of course only shows them if I actually CAN do it)).

So I've had a look at this weeks homework, to better gauge how I might
go, and it's pretty straight forward. I'm sure the terminology will
click eventually (here's hoping), but the actual exercises were easy
enough. I'm missing the text book I need to do the reading I should do,
but I've got the basics of [Netbeans](http://www.netbeans.org/) down
(starting a project, creating a class), and I've done all the exercises
I can do without the book.

Included below is my final exercise for this week. The brief was as
follows.

> A farmer has a small field that is 124 metres by 332 metres. The
> farmer wants to plant tomatoes in his field. It is possible to put 5
> plants in every square metre. Each plant costs 95cents. Write a small
> program that calculates the number of plants that will go into the
> field and the resulting cost.

And this was my solution:

bc(java).. public class Tomatoes {

/\*\*\
\* @param args the command line arguments\
\*/\
public static void main(String\[\] args) {\
int plantCost = 93;\
double xSide = 124.27473984;\
double ySide = 332.236238764;\
int plantsPerSquareMeter = 5;\
int totalPlants;\
int totalCost;

totalPlants = ((int) Math.floor(xSide \* ySide)) \*
plantsPerSquareMeter;\
totalCost = totalPlants \* plantCost;

System.out.println("You need to plant " + totalPlants + " plants to fill
up a " + xSide + " by " + ySide + " field.");\
System.out.println("At \$" + (double)plantCost/100 + " per plant the
cost will be: \$" + (double)totalCost/100);\
}\
}

I'm not certain if I've used the right variable types (int, double) for
the values. They work for this exercise, but I'm not sure if I could
have picked better types for future changes. If you're a programmer,
perhaps you could correct me?

So that's my first week. I'm nervous, but looking forward to my next
lesson. I'll be a javacoderhacker soon!

**Update: 2009-08-03**

I've taken another look at the code and rewritten it to use `int` for
all the money transactions. I've also used `Math.floor` on the (now
`double`) field dimensions to account for sizes other than whole meters,
to get the maximum number of plants into the field ((of course this
neglects the fact you could put less than five plants into a partial
square meter, but this is getting ridiculous already)). Any better? Is
it ok to leave the values as `int` and print as `double`? I can't get
the printed costs to round to two decimal places. A few suggestions I
found look like overkill.