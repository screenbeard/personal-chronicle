---
categories:
- Tech
date: "2010-02-25 00:15:24 +0930"
draft: false
publishdate: "2010-02-25 00:15:24 +0930"
slug: deploy-printers-with-group-policy-without-using-local-loopback
tags:
- group policy
- settings
- sysadmin
- windows
title: Deploy Printers with Group Policy without using Local Loopback
url: /deploy-printers-with-group-policy-without-using-local-loopback/
---
![](https://turbo.geekorium.com.au/images/3656648715_eae0212b5e_b660.jpg):http://www.flickr.com/photos/tstadler/3656648715/

[Stupid printer
tricks](http://www.flickr.com/photos/tstadler/3656648715/) /\
http://www.flickr.com/photos/tstadler/ /\
[CC BY-NC-SA 2.0](http://creativecommons.org/licenses/by-nc-sa/2.0/)

I've been sorting through our group policies and rewriting them ready
for a switch over to Windows 7. During my thorough investigation it
turns out our current policies overlap a fair bit, and it's no wonder we
have trouble tracking down why something we're sure we've set in GP
turns up unset on logon ((This is going to get more technical than
usual. Regular readers can tune out... Now)).

So my big project has been going through our settings one by one, and
deciding which of these categories they fall into:

1.  Common Computer settings - all the computers should get these as
    they are vital to the function of the network, or are likely to
    break something if they aren't explicitly set for our staff
    and students.
2.  Common User settings - everything else that just can't be set in the
    Computer policy.
3.  Staff Settings
4.  Student Settings
5.  Printers

The interesting trick I've learned about the printer GPs though is how
to apply printers based on the computer's OU **without** using local
loopback!

#### The Problem

The problem with managing printers in a school environment is that
unlike corporations (which GP is **clearly** geared towards) people move
around **all the time** but want to be connected to both their printers
in their offices on the other side of the school, but also the local
printer in the classroom they're in ((they also want the computer to
magically know **which** one they want to print to by default each time
it changes, but that's another story)). Microsoft decided that without
any extra tricks they would let you set a default printer for a user,
but not for a room because Betty from HR will only ever use the one
computer in her office.

#### The Old Trick

Then they told people you could get around this by enabling local
loopback, which applies both computer and user policies to a user, so
you could set the printer as default in a computer policy using the
"user" section, then make the computer read the computer section at
logon and apply the printer. The problem with this ((anecdotally at
least, I can't find hard evidence)) is that it could slow down your
logins, as it increases the number of policies it has to read and
evaluate to prepare the desktop.

#### The New Way

In my quest to eliminate unnecessary policies, I wanted to kill
local-loopback too. A bit of research turned up this page on [using GP
Preferences to assign default
printers](http://www.msserveradmin.com/the-one-reason-you-should-use-group-policy-preferences/),
which I already knew and was using, but it advocated using
local-loopback.

#### But

Further down that page was a comment by Michael Moore who had this bit
of advice:

bq.. Actually, if you Item Level target a group which has a computer in
it, it will still install the printer even though these preferences are
under the User Configuration Section of the GPO.\
Try it, saved on loopback.

-- [Michael
Moore](http://www.msserveradmin.com/the-one-reason-you-should-use-group-policy-preferences/#comment-218)

So I followed the directions on that site (it has helpful screenshots)
to create a printer policy and target specific computer OUs, but then
instead of turning on local-loopback, I simply ticked *Run in logged-on
user's security context (user policy option)*.

![](https://turbo.geekorium.com.au/images/win7printer.png)

Now my printers deploy and are set as default based on the current
computer's OU without using local-loopback at all.