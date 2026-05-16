---
source_url: https://aras-p.info/blog/2024/01/02/Two-years-ago-left-Unity
source_id: aras-p-blog
fetched_at: 2026-05-16T17:32:28.341975+00:00
fetcher: html_mirror
sha256: ebc449894c96cc9f349ca78dcd81c5325121bfdeb485c6fc181c74408918b035
---

Two years ago: left Unity ·  Aras' website
  

  
  
  
  
  
  
  

    
  
    
      

  
  
    

*I left [Unity](https://unity.com/) at start of 2022. So for this lazy Tuesday afternoon, figured I can
share the rambles I wrote in my goodbye email. No big insights there, just old man reminiscing. And hey
the text is already written, so that makes it easy to copy-pasta it into the blog:*

---

It’s now exactly 16 years of me working at Unity. And as everyone knows, if you don’t leave after 16 years, you have to wait until 32 years for your next chance *(look, I don’t make the rules)*. It’s time for me to log off and watch this thing from the outside.

So, yeah, bye! Thanks everyone for this amazing journey! ❤️

…

*However! @alexmclean suggested I should write up some random bits of trivia from the old times. You know, like your grandpa is always telling stories from his youth, and you have to listen no matter whether you like it or not. So here goes!*

Back in **2005**, I was looking for a new job. Applied to several companies (NVIDIA, Lionhead, DICE, Rockstar) mostly to no response. But! Some Tim Sweeney from Epic Games reached out and offered me a job. That went all the way through to an on-site interview *(which was my first trip to the US, score!)*, where I did not do well on the technical interview, and that was a “nope” from Epic. That was sad!

However, several months later this company I’ve never heard about (“Over the Edge Entertainment”), making a game engine I’ve never heard about (“Unity”), wrote to me with a subject “Working on the future of middleware”, and text like:

We want to talk to you about joining our team and engineer this revolution with us. You’ll lead the
PC version, and get to define your own projects, doing the coolest tech this side of the Sun. Make a
mass market tool that can change how games are made…. write code to change the world.

To which, *as any sane person would do*, I replied “cool, but no thanks, good luck”. The world is filled with random 20-somethings imagining they can pull off the next big thing. But then they invited me over to a game jam they were organizing. We made this game called “Pakimono”:   

And so I started working at Unity on **2006** January 4th. I *absolutely* thought that after a year or two this whole thing will go down as another cute, but failed attempt at making yet another game engine. Because these were the odds! But hey, at least it will be fun while it lasts.

Back then “heck yeah!” *(alternative phrasing for “Win Wire” of today)* moments were… sometimes strange. Like here’s @joe being extremely excited about getting a car model for the website. Why would our website have a car? No one knows.

Typical office experience was *slightly different* from the offices we have these days (or, well, used to have before 2020). Here’s @david sleeping in the Copenhagen office mid-2006:  

End of 2006 was an “oh shit” moment when Microsoft shipped “XNA Game Studio Express”, a free game development environment based on C#, aimed at indies and small developers. That totally could have killed us; a handful of people against the whole Microsoft behemoth. Luckily, they never *really* focused on it, and by 2010 XNA was dead. There’s probably a lesson there of some sorts.

In **2007** I convinced one of my buddies (@valdemar) to join Unity, to work on porting it to our first console platform! That was the Nintendo Wii, of course *(in retrospect, not the greatest platform for everyone except Nintendo itself)*. But, this started a long journey of non-PC based platform support in Unity.  

In **2008** I made this *(crappy, first time)* felt work and in retrospect, have correctly predicted what our stock symbol will be a dozen years later. If that does not make me a professional analyst, I don’t know what would.  

On a more serious note, in 2008 we started to port Unity editor to Windows (it was Mac-only before then). And given that I was pretty much the only person using Windows to begin with, that meant I was doing the port, yay *(we’re still suffering the consequences today, I’m sorry)*. Anyway, in February we had this, which isn’t much but it’s a start:  

And by 2008 September we had the first internal build for testing, in all *15.4 megabytes* download size glory:  

Overall 2008 was quite an eventful year. For example, we opened the brand new Kaunas (Lithuania) office, which (I think) was the first development office outside of Copenhagen. It looked as “fancy” as this, since that’s what we could afford at the time:  

   

*Fun fact: ten years later some scenes of HBO Chernobyl were filmed in the same building.*

Also in 2008, I remember us watching Apple’s keynote where they announced the App Store and the whole SDK for creating third-party applications. We were *“ok so this is pretty much the same as a Mac, it’s gonna be an easy port, let’s do it!!!1”*. Famous last words, eh. Anyhoo, I somehow convinced @rej and @mantas to join in making the **Unity iPhone** port. The very first version, in a very rough state, shipped towards the end of 2008. And probably have affected the whole industry for decades to come.

Spring of **2009** saw us ship Unity 2.5 with the Windows Editor, and increased our game developer market by 10x or so. @amir had a suggestion to use this on the main website, to really drive down the message:  

By **2010** the company grew to *enormous* size, for example here’s a *whole company* meeting:  

I found this in my 2010 “yearly performance review / feedback”. Cute! Also, some things don’t really change.  

**2011**, we had another massive “oh shit this could be bad” moment, when Adobe decided to add 3D capabilities to **Flash** (“Stage3D” as it would be called). Our web browser plugin was still going strong, and Flash was still huge. This could have been really, really bad! So we did the only thing that seemed to make sense at the time, which was “let’s add Flash as a platform for Unity”. Which meant converting C# code into ActionScript, and adding support for Flash’s custom 3D graphics API and their own strange shader language. Anyway, it (kinda, mostly) worked: “*That’s a completely standard shader, written in Cg using our ‘surface shaders’ thing, compiled into Direct3D9 assembly by Cg, parsed into bytecode by mojoshader & converted to Flash’s shader bytecode (AGAL) by, well, me.*”   

Anyway, by 2014 Flash, including all Stage3D stuff, was pretty much dead. There’s probably another lesson in there somewhere, maybe like “don’t be too afraid of the last attempt of a dying platform to make itself relevant”, or something.

Anyway, all that C# -> ActionScript conversion experience turned out to be quite useful when in **2014** Apple decided that all iOS apps must be 64-bit from now on. Scripting and mobile folks scrambled to get that working by creating C# -> C++ converter a.k.a. IL2CPP, since our existing scripting technology at the time (Mono) simply did not work on 64-bit iOS devices.

I was not involved in any of that, but in spring of 2014 we got an invitation for a secret project on-site at Apple. Two engineers were to be sent in there for a month, without being aware of what they would be doing. So me and @alexey went, and it turns out the secret project was Metal graphics API. Against all odds and much to everyone’s surprise, Apple was the first one to ship a “new/modern” graphics API *(before Microsoft DX12 and Khronos Vulkan)*. A month at Apple was an… interesting experience. We did get Unity working on Metal in that month, but for the WWDC conference Apple decided to go with a keynote demo from Epic/Unreal instead. They were still friends back then, eh :)  

Oh, here’s a funny thing I found from **2015**, in an email from Joachim about a core team’s hack week:

The goal. How do we architect Unity so it can open a 100GB project and you start working in it,
in less than 10 seconds. <…> To do this right I think we’ll have to soon form a 2-3 person
asset pipeline team that can own this and get it to completion.

Yeah, maybe we should get onto that :)

One recent thing I’m fairly proud of, is that in **2019** we managed to create what used to be called the “Core Kaunas” team *(now “Quality of Life” team – yeah we’re not great at names)*. A very small team of mostly junior people, doing “random improvements all over the place”. Day to day it does not sound much, but now when I read our 2019, 2020 and 2021 *(ed: these were all links to internal Unity docs)* summaries, eh it’s not too bad! Besides all the things we actually did, *maybe* we have influenced some other teams to also work on “quality of life” improvements. Rock on.

All in all, github *(on our “main” code repository)* says that my overall contribution over the years has been around *minus one million* lines of code, so 🎉. Why it thinks I’m #1 in the amount of code commits, I’ve no idea.  

That’s it! Do good work, and take care of each other.

---

*And that was it! Maybe next time I should write about what the heck I’ve been doing since I left. Or maybe
something else.*
