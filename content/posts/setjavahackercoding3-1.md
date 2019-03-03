{
    "date": "2009-08-13 07:00:37",
    "draft": false,
    "publishDate": "2009-08-13 07:00:37",
    "slug": "setjavahackercoding3-1",
    "title": "setJavahackercoding(3.1)",
    "url": "\/setjavahackercoding3-1\/",
    "tags": [
        "dumb",
        "java",
        "learning",
        "technology"
    ],
    "categories": [
        "Coding"
    ]
}I managed to code me up some of the exercises from chapter 4, and I'm
all over classes. The final exercise was to create a Robot class that
took a name, weight, bad habit(?), artificial intelligence level, and
whether it could see. As an extension exercise, it could also have a
"memory module" that allowed 5 mutations (changes) to either the bad
habit, or the AI.

My Robot.java class is below:

bc(java).. public class Robot {\
private String name;\
private double weight;\
private String badHabit;\
private boolean hasVision;\
private int aiq;\
private int mutations;\
private boolean decommissioned;

public Robot(String name, double weight, String badHabit, boolean
hasVision, int aiq){\
this.name = name;\
if (weight &lt; 0){\
this.weight = Math.abs(weight);\
}\
else {\
this.weight = weight;\
}\
this.badHabit = badHabit;\
this.hasVision = hasVision;\
this.aiq = aiq;\
if (this.aiq &lt;= 0){\
this.aiq = 0;\
}\
if (this.aiq &gt;= 3){\
this.aiq = 3;\
}\
mutations = 0;\
decommissioned = false;\
}

public void mutate(){\
mutations++;\
if (mutations &gt;= 5){\
decommissioned = true;\
}\
}

public void setBadHabit(String badHabit){\
if (!decommissioned){\
this.badHabit = badHabit;\
mutate();\
}\
}

public void addModule(){\
if (!decommissioned){\
if (aiq &lt; 3){\
aiq++;\
}\
else {\
aiq = 3;\
}\
mutate();\
}\
}

public String getName(){\
return name;\
}

public double getWeight(){\
return weight;\
}

public boolean getSight(){\
return hasVision;\
}

public String getAIQ(){\
if (aiq 0){ return "Non Existant"; } if (aiq 1){\
return "Low";\
}\
if (aiq == 2){\
return "Medium";\
}\
else {\
return "High";\
}\
}

public String getBadHabit(){\
return badHabit;\
}

public void displayDetails(){\
System.out.println("The robot's name is " + name);\
System.out.println("The robot's weight is " + weight);\
System.out.println("The robot has a bad habit of " + badHabit);\
System.out.println("The robot can see = " + hasVision);\
System.out.println("The robot's AIQ is " + getAIQ());\
System.out.println("The robot has undergone " + mutations + "
mutations.");\
System.out.println();\
}\
}

It's long. It's also full of stuff I didn't end up using in the test
class, as I hate typing out `System.out.println();` over and over to
test stuff, so I included the outputs in a displayDetails() method.
Probably should add those as tests at least once, just to check my
syntax, but that would make my test even longer. This is my
RobotTest.java class:

bc(java).. public class RobotTest {\
public static void main(String\[\] args) {\
Robot robby = new Robot("Robby",104,"Smoking",false,1);\
Robot bender = new Robot("Bender",200,"Drinking",true,2);\
Robot vacuum = new Robot("Vacuulux",20,"Sucking",false,-1);\
Robot astro = new Robot("Toby",-80,"Playing too much",true,3);

robby.displayDetails();\
robby.addModule();\
robby.setBadHabit("Spitting");\
robby.addModule();\
robby.addModule();\
robby.setBadHabit("eating before swimming");\
robby.setBadHabit("dying");\
robby.displayDetails();

bender.displayDetails();

vacuum.displayDetails();\
vacuum.setBadHabit("breaking down");\
vacuum.addModule();\
vacuum.displayDetails();

astro.displayDetails();\
astro.addModule();\
astro.displayDetails();

}\
}

The test helped me to pick up that my coding was wrong in my Robot.
Originally I had omitted line 20, and had the test on line 21 as
`if (aiq < = 0){this.aiq = 0;} if (aiq >= 3){this.aiq = 3;} else {this.aiq=aiq;}`.
I'm not sure why this doesn't work -- if AIQ is less than zero it still
sets this.aiq to the retrieved value -- but I presume the test cannot
read `aiq` unless it has been retrieved and put into `this.aiq`. Its
seems better to do it this way anyway, as it's less typing and less
ambiguous. But that's something I can say I've learned.

As for my `double` trouble this morning, I've been reading up on why one
of my values had some extra decimals, and I believe it's a particular
problem when you try and store 0.1 in a double. I still have no idea how
to get around it though and it seems like Java should be able to handle
something like that, but who am I to judge, with my Tomatoes.java and my
RobotTest.java.

So on to class tonight!

Update: I'm sitting in class. Looking over an example from the lecturer,
I've realised that my original code didn't work because I missed
`else if`. I added it, and the code I originally thought should work
worked!