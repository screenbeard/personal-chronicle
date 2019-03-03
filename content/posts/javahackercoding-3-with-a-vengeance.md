{
    "date": "2009-08-12 22:42:18",
    "draft": false,
    "publishDate": "2009-08-12 22:42:18",
    "slug": "javahackercoding-3-with-a-vengeance",
    "title": "Javahackercoding 3: With a Vengeance",
    "url": "\/javahackercoding-3-with-a-vengeance\/",
    "tags": [
        "java",
        "NetBeans",
        "Programming",
        "Tutorials"
    ],
    "categories": [
        "Coding"
    ]
}This week has been mad. Both my girls have had colds and one has been
teething ((I'll let you guess which)), so finding time to study between
looking after them (and myself to make sure I don't get it too) has been
difficult. I've read my chapters, but I'm not one ahead like I wanted to
be. And I've only done two of the five exercises for this chapter. It's
my first real OO introduction too. Until now I've understood "int",
"double" etc. but now we're getting in to what has been behind the veil
for me when I've tried to program before - how you create classes, and
call them from other classes.

So I've built my Rectangle class and it looks like this:

bc(java).. public class Rectangle {\
private double length;\
private double width;\
private double area;\
private double perimeter;

public Rectangle(){\
this.length = 1.0;\
this.width = 1.0;\
}

public Rectangle(double theLength, double theWidth){\
length = theLength;\
width = theWidth;\
}

public double getArea() {\
area = width \* length;\
return area;\
}

public double getPerimeter(){\
perimeter = (width \* 2) + (length \* 2);\
return perimeter;\
}\
}

Now feel free at this point to tell me where if I've gone wrong there.
At line 12-14 the book tells me to do `this.length = length;` and so on,
but I wanted to try it the other way here just to wrap my head around
what was happening. So that's all well and good and we go on to make a
test class, RectangleTest:

bc(java).. public class RectangleTest {

public static void main(String\[\] args) {\
Rectangle small = new Rectangle(2.0,3.0);\
Rectangle noArgs = new Rectangle();\
Rectangle large = new Rectangle(20.4,30.6);\
Rectangle notDouble = new Rectangle(4,6);\
Rectangle stupid = new Rectangle(3.2,400.1);

System.out.println("Small rectangle: A=" + small.getArea() + "
P="+small.getPerimeter());\
System.out.println("Default rectangle: A=" + noArgs.getArea() + "
P="+noArgs.getPerimeter());\
System.out.println("Large rectangle: A=" + large.getArea() + "
P="+large.getPerimeter());\
System.out.println("Rectangle not written as double: A=" +
notDouble.getArea() + " P="+notDouble.getPerimeter());\
System.out.println("Stupidly proportioned rectangle: A=" +
stupid.getArea() + " P="+stupid.getPerimeter());\
}\
}

Now that seems fine to me too. Maybe you can point out something I've
missed, because when I run the thing (which works exactly as I'd planned
btw) I get this output from NetBeans:

bc.. run:\
Small rectangle: A=6.0 P=10.0\
Default rectangle: A=1.0 P=4.0\
Large rectangle: A=624.24 P=102.0\
Rectangle not written as double: A=24.0 P=20.0\
Stupidly proportioned rectangle: A=1280.3200000000002 P=806.6\
BUILD SUCCESSFUL (total time: 0 seconds)

Can you spot the weirdness? Why would the Area be returned as
"1280.3200000000002"? I added a method to just display the area alone
((`public void displayArea() {System.out.println(getArea() );}`)), and
it's definitely being calculated as 1280.3200000000002, which is just
strange, and I want to know if it's something I've done incorrectly, or
a quirk of Java/NetBeans.

So that's where I am. I'm gonna' read up on the next chapter before
class tonight. And if I get time, I'll do some more of the exercises
too. So if I'm not on the right track, please tell me before I go to
far!