---
categories:
- Tech
date: "2010-03-12 05:23:23 +0930"
draft: false
tags:
- active directory
- ad
- administration
- folder redirection
- GP
- group policy
- sysadmin
- technology
title: Folder Redirection for Unusual Paths [Group Policy]
url: folder-redirection-for-unusual-paths-group-policy
---
As part of my [Group Policy Rewrite](//the.geekorium.com.au/?s=group+policy) I'm attempting to make use of Folder Redirection which lets you specify where common important Windows folders reside on the network.

Normally when you first log on, Windows makes a few folders under your user document folder for things such as Music, Favourites[^1] , Downloads etc. On a standalone machine these are usually stored under your user profile folder (C:\Users\\{username}\Downloads in Win 7 for example) but they can be moved when you're on a network[^2].

In Group Policy, expand *User Configuration* > *Policies* > *Windows Settings* > *Folder Redirection*. Right click on one of the folders listed and select "Properties". *Documents* is a good place to start, as I'll show you how all the others can hang off that.

If you've worked with group policy before I won't insult your intelligence more by explaining everything in here, suffice to say that in our environment, I've chosen to use the settings as shown below:

![folderredirectionsettings.png](https://turbo.geekorium.com.au/images/folderredirectionsettings.png)

Settings for redirecting *My Documents* to a shared network location.

For all the other folders I redirect, I use the same settings on the right there, and only change the *Target folder location* property on the left.

What this does is specify that you want all the users folders redirected to what you've specified in the *Home folder* property for the user in Active Directory (usually H: somewhere on your network). This is I suspect how most admins configure their document folders. The issue comes with the other folders later on. Lets work with the Desktop folder for example.

To redirect the Desktop, you again access the properties of that folder. This time, you'll notice you lose the option to "Redirect to the user's home folder". This is fair enough, as we don't want every folder type pointing to the same location. Unfortunately though, Microsoft don't offer a simple way to redirect to a subfolder of the new Documents location, although they do suggest this:

> The USERNAME variable may be used as part of the redirection path, > thus allowing the system to dynamically create a newly redirected > folder for each user to whom the policy object applies.

[Folder Redirection feature in Windows KB Article.](http://support.microsoft.com/kb/232692)

What they are suggesting is using `\\server\share\USERNAME\Desktop` to specify the location, but what if your AD structure is more complicated than that? For instance, we have our year levels separated into folders to make it easy for teachers to locate a certain kid's work. There just isn't a variable to insert a specific folder into this path based on the user's location or position in AD - ie. you can't use `\\server\share\groupfolder\username\Desktop` as it just doesn't exist.

The next logical step was to try inserting the mapped drive into this field: "H:\Desktop". The problem here was that at the point that the logon process connects to the desktop, the H: has not yet been mapped, leaving a blank desktop and an error in the Application log. It was at this point a few years ago I gave up. **Until this week**.

### Lucky for us!

When you view the GP report for Folder Redirection you'll notice that MS includes the VARIABLES that it uses to fill in the user's home folder path (as shown):

![documentssettings.png](https://turbo.geekorium.com.au/images/documentssettings.png)

AH! Variables!

In my initial tests, I set the *Target folder location* to "Redirect to the following location", and the *Root Path:* to "HOMESHAREHOMEPATH\Desktop". This did NOT work. I can't remember the error exactly, and I think it may not have even mapped at all.

My next test was to try with "HOMESHARE\Desktop" and lo-and-behold, it worked! Now when a user logs in they get a H Drive, and a desktop that routes to a folder in that drive, regardless of the path the user data is in. If they inadvertently save something to their desktop[^3] it will be securely tucked in their home drive where they can find it again later, or on their desktop the next time they log in.

Going through the rest of the folders in *Folder Redirection* I did the same (except for the Start Menu, although I suspect this will work exactly the same way). Now all my data is secure in my home drive, without using true roaming profiles (which can end up pulling a lot of data around the network in a school environment).

### Some caveats

Even after multiple iterations and rewrites, Adobe software still cannot handle expanded network paths for saving application data. If you redirect AppData to "HOMESHARE\AppData" even something as new as Adobe Photoshop CS4 refuses to load. ~~The only solution I have found for this is to use "H:\AppData" or nothing at all for that folder. This seems to work acceptably for the AppData folder, even though it doesn't for the Desktop.~~

Wrong! H:\AppData has the same problem outlined above, that is, H is only mapped after folder redirection. Instead I followed the advice on [this Adobe Getsatisfaction page](http://getsatisfaction.com/adobe/topics/why_do_adobe_products_crash_in_a_roaming_user_profile_environment) by Ge3oR who suggested giving users permission to *c:\users\USERXX\appdata\Locallow*, which for some reason Adobe products need, but cannot create themselves. So in GP I added a *Folder* rule in GP Preferences to create a folder in *C:\users\username\appdata\Locallow*, and everything is working, and I have redirected AppData once more!

**Also!** I haven't actually tested this extensively in a production environment (although it works day-to-day on a couple of test desktops), so test this with your apps and bits before making these changes wholesale to your network.

I've also found while writing this post[^4] that this information is included in part in Microsoft's *[Managing Roaming User Data Deployment Guide.doc](http://download.microsoft.com/download/3/b/a/3ba6d659-6e39-4cd7-b3a2-9c96482f5353/Managing+Roaming+User+Data+Deployment+Guide.doc)* found [here](http://www.microsoft.com/downloads/details.aspx?FamilyID=311f4be8-9983-4ab0-9685-f1bfec1e7d62&DisplayLang=en). As I wasn't using roaming profiles I didn't read it. Plus it's unclear as to the best way to redirect and I still would have written this post to clear it up for **you**.

I hope this tip can help you get Folder Redirection working for you if your environment is a bit unusual. Let me know what you find!

[^1]: actually Favorites, but I'm not American
[^2]: they can be moved on a standalone machine too, but that's a different post
[^3]: and come on, who doesn't do this
[^4]: thanks to [this helpful gent](http://blog.amal.net/?p=2706)
