---
title: Containers May Save Me From Myself
date: "2020-05-28 22:29:32 +0930"
draft: false
tags:
- linux
- whinging
- docker
- learning
- containers
- sandboxes
categories:
- Tech
---

Over on the Aus Mastodon instance (where I choose to Toot, rather than Tweet) [I posted that I'm frustrated over and over again](https://aus.social/@screenbeard/104199021132438489) that my Linux experience goes like this:

1. Install a new Linux distro. Be amazed and surprised just how smooth the experience is, and how little effort there was to get it working.

2. Get excited for more "Linux" and think "Great, time to try compiling something from scratch for the experience" or "Now I can install that technology stack I was reading about"

3. Install said stack, or attempt to compile said something.

4. Fail - due to having picked the wrong distro with the wrong version of Python, or having picked a desktop that runs on Wayland instead of X.

5. Find workarounds, tutorials on how to compile around the issue, or just instructions on how to install another version of Python. Be successful or not.

6. Get a notification that the **Next Version** of my distro is available - and look at all the neat new features and stability it has!

7. Install the new version and discover some new hellish torment that means that the rock solid stability I've b[^ugh]een enjoying up until this version is *gone* and no amount of scouring the internet, or trawling the logs will help me figure out how to restore my OS and with it, my sanity. 

I'm not sure if step seven happens because of my tinkering in step five. The frequency with which it happens is makes me think it _has_ to be me. 

So I find another distro, or I download the installer for the new version, and I backup all my files and I rebuild my machine and repeat from step one. It's getting tiresome.

So having pinned the problem on myself, I've decided this time around I'm going to containerise everything. For those only slightly behind me on the discovery of new technology concepts, containers (or sandboxes (or jails [Rubenerd](https://rubenerd.com) has been using for years)) are a way to put applications in their own little bubbles without access to anything else on your computer[^disclaimer]. They help keep everything from rubbing up against each other and getting computer juices everywhere - sort of like social distancing for computer software. [Fedora Silverblue](https://silverblue.fedoraproject.org/) is container-based and looks amazing. I have loved using Fedora and learning how to sandbox everything is probably a good skill to learn moving forward. Also, [@shlee](https://aus.social/@shlee) generously gave me his time to teach me Docker and now I want to keep using it for everything. 

BUT... Fedora (and Silverblue) have some downsides for me. Remeber step five? Almost every Linux tutorial or piece of software I've ever found anywhere assumes two things: you're using apt as your package manager, and you're using Xorg not Wayland as your display server. I was constantly hunting for the 'dnf' package, or checking to ensure that the new clipboard manager I was about to use could handle Wayland[^spoiler]. Critically, Docker is a second class citizen in Fedora in favour of Podman, and while Podman might be better in some ways - like Wayland: it's not what everyone is using. In the end the perpetual dream I have [to use the "superior" technology over the "winning" technology]({{< ref "moving-to-hugo" >}}) had to be put aside, and I've settled on Cinnamon flavoured Debian.

Debian is *not* containered. But it doesn't insist on making me use Podman instead of Docker like Fedora does, and it's the closest thing Linux has to a "default" distribution, so I'm making do. The first thing I did was install Flatpak to start my container journey and... immediately failed.

* Flatpak Firefox looks like shit. I spend almost all my computer time in Firefox and I want it to match my theme and the container version didn't. That's a really shallow reason not to use it though, so I'm going to try that again[^update].

* Docker is complex enough for a Docker n00b to learn. Trying to run a Sandboxed containerised Docker instance of some sort is right out, so it got a full install.

* The Flatpak version of VS Code is so isolated it can't see Docker. I want to use the Docker plugin. I switched to the fully integrated version immediately. 

So my ideals took a small beating when the rubber hit the road, but I swear to Woz that I will only use Docker and Flatpak for everything else. And one day when I'm more comfortable translating distro specific nonsense into my preferred flavour, I will give Silverblue or a fully containered distro a much better go. 

And maybe one day my desktop will go more than a single major version without being replaced. 

[^ugh]: While writing this post, this is the literal point that Gnome took one final shit on the bed and decided to freeze within seconds of loading after every hard reboot.

[^disclaimer]: To avoid the wrath of the pedants, there's a difference between containers and sandboxes and containers aren't built for security like sandboxes are, but for my purposes they serve roughly the same function.

[^spoiler]: Spolier: it could not.

[^update]: Thanks to the [Flatpak Theming instructions at OMG! Ubuntu!](https://www.omgubuntu.co.uk/2017/05/flatpak-theme-issue-fix) I was able to install the Adapta-Nokto theme for Flatpak apps and everything is right with the world.