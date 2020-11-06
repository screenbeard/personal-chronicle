---
categories:
- Tech
date: 2020-08-17 23:21:44 +0930
draft: false
tags:
- part 1
- commodore 64
- retro
title: Restoration of a Childhood Icon
---

Ever since [sending my old Commodore 128 to a better place]({{< ref "c128-journey" >}}), I've been thinking of it's older breadbin C64 brother I've got sitting in storage. I knew we mostly used the 128 because the 64 stopped working, but I couldn't remember exactly what was wrong with it. Thinking it was completely dead, I felt like even just putting the shell to good use would be a win. There's some great tutorials and components you can buy that can help you [convert a non-functional Commodore 64 into a modern PC or USB keyboard](https://www.thegeekpub.com/13651/raspberry-pi-commodore-64/). 

However, after almost 2 years of thinking about it, I decided I didn't want to gut the thing until I was really sure it was dead. My mum has one of those [C64 Minis](https://retrogames.biz/thec64-mini) and what I discovered getting that running was that emulating the Commodore wasn't the experience I wanted to capture (or recapture). [The C64 full size upgrade](https://retrogames.biz/thec64) appears to be a better experience, but is completely sold out everywhere. I realised I have this small piece of my own history sitting in a cupboard, and I wanted to try and do what I could to breath new life into it.

Step number one was the power supply. Conventional wisdom is that you don't ever, for any reason, do anything to anyone for any reason ever, no matter what, no matter where, or who, or who you are with, or where you are going, or where you've been... ever, for any reason whatsoever... plug an original Commodore 64 power supply into a Commodore 64.

The problem as I understand it, is that the 5V DC line on the power supply will eventually inevitably break and pump more voltage into the machine than its chips can handle. There's also a 9V AC line that's far more stable and doesn't cause issues, but that DC line has killed more Commodores than time alone would be responsible for. So before I could see if the machine even worked, I would have to get myself an alternative modern power supply. There's a couple out there, but I'm told the most reliable modern PSU is the [C64PSU](https://www.c64psu.com/c64psu/43-157-commodore-64-c64-psu-power-supply.html) made in Poland. Getting a PSU shipped from Poland seemed like an expensive way to start however, as there could be many more things wrong with the board, and having a working PSU sitting around with the broken computer seemed like a waste.

Then, the astonishingly generous [Mike, First of His Name](https://social.chinwag.org/@mike)[^mike-lie] from https://chinwag.org offered to send me his C64PSU as a loner from his lockdown in Melbourne, kicking off my attempts to finally get this thing repaired.

While I waited for that to arrive, I gave the whole thing a spruce up. The case got a clean in the dishwasher along with the keycaps, while the board got a brush down with a soft brush. The internals don't look too bad, and I can't see any capacitor bulges with the naked eye. 

{{< figure src="//turbo.geekorium.com.au/images/C%3D64/spruced.jpg" alt="A cleaned up but still old looking Commodore 64 with brown keys" title="Spruced" caption="Ain't she a beut'?" attr="" attrlink="" >}}

I'm happy with how it turned out, and I'm even oddly proud of the couple of melt-marks on its upper grill. In my research I learned that the marks are quite common on these machines, and weren't caused by some sort of over-heated wire or soldering iron (as I'd originally presumed) but due to a chemical reaction between the plastic of the case and something in the cables a lot of people wrapped around their C=64s while they were in storage! 

Finally the other night I was able to pull out my old CRT TV and plug in Mike's power supply and see if the thing would even boot any more. The LED came on - which was a good sign, as I vaguely recall previously attempting to get it working and not even getting a light (leaving me fearing I'd pre-fried my chips!).

The CRT is the only TV in the house I still know how to tune via RF, as I've also since remembered that we never once had a proper AV cable for the Commodore, and always relied on tuning the TV to channel 3 and plugging direct to the RF port (prompting memories of swapping cables at the back of the TV any time we wanted to play games).

{{< figure src="//turbo.geekorium.com.au/images/C%3D64/dusty-monitor.jpg" alt="A dusty black CRT TV sitting on a desk" caption="Alfred, consider our game... postponed." attr="" attrlink="" >}}

Tuning the RF was successful after I worked out how to tune the TV with the sparse controls, but alas - I only have an empty black screen. As setbacks go, this is quite a big one - more research shows the completely black screen can be commonly caused by upwards of a dozen different issues, and tracing it to the real issue is going to take time... and money.

{{< video5 webm="//turbo.geekorium.com.au/video/C%3D64/C%3D64-power-but-black-screen.webm" mp4="//turbo.geekorium.com.au/video/C%3D64/C%3D64-power-but-black-screen.mp4" vtt_en="https://turbo.geekorium.com.au/video/C%3D64/C%3D64-power-but-black-screen.vtt" >}}

Speaking to Mike we think the next step will be to replace all the capacitors on the board and see if it makes a difference, followed by replacing the PLA[^whatever]. After that your guess is as good as mine. Some very clever people have dozens of tricks to determine the myriad ways a C=64 can be busted, and I'm hoping to learn a lot as I figure this out, but it may be slow going and I might not have anything to show for it for a long time, if ever. 

And that's where I'm leaving it for now. I'm looking forward to doing this, and trying to keep the cost to a minimum as I go. Getting the old thing cleaned up really confirmed my desire to get it working again. Wish me (and the memory of the 5-year-old I used to be) luck!

[^mike-lie]: which is just such blatant bullshit, as I have three people named "Mike" in my 10 person team at work, so they must be common as fuck.[^although]
[^although]: Although I suspect Mike might be slightly older than Mike, Mike, or Mike so this mike still be true. 
[^whatever]: whatever *that* is. 