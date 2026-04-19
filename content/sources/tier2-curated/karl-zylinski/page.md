Karl Zylinski[Home](/)
[Blog](/posts)
[Newsletter](https://news.zylinski.se)
[YouTube](https://youtube.com/@karl_zylinski)
[Discord](https://discord.gg/4FsHgtBmFK)
[Bluesky](https://bsky.app/profile/zylinski.se)
[Twitter](https://x.com/karl_zylinski)
[GitHub](https://github.com/karl-zylinski)
[Patreon](https://www.patreon.com/c/karl_zylinski)

![A picture of me!](/karl.jpg)

**Hi, I'm Karl Zylinski!** I'm a game developer and programming educator. I've made these things:

[![Understanding the Odin Programming Language](/understanding_odin.jpg)](https://odinbook.com)

Do you want to learn Odin and demystify low-level programming? Then this book is for you!

[Website](https://odinbook.com)

[![CAT & ONION](/cat-and-onion-logo.png)](https://store.steampowered.com/app/2781210/CAT__ONION)

A short cat adventure packed with curious characters, strange environments and good vibes!

[Steam](https://store.steampowered.com/app/2781210/CAT__ONION)
[Itch](https://zylinski.itch.io/cat-and-onion)
[Presskit](/cat-and-onion-presskit)

# Latest Newsletter

[![](/newsletter_covers/2026-04-14.jpg)](https://news.zylinski.se/p/karl2d-audio-support-more-youtube)

# Blog

  

![](https://zylinski.se/audio-pontus.jpg)

## Audio in Karl2D: Software mixing, OS APIs and general design

As I’ve been making my own game creation library Karl2D I’ve noticed something about audio: While many people are fine with writing their own rendering, they still go for some library when implementing sound. For example, you might end up using the library miniaudio.
I decided to try to implement my own audio in Karl2D, and so far I’d say it has been easier and more straight-forward than rendering. It has also been quite fun!...

February 20, 2026

![](https://zylinski.se/strings/cover.png)

## Iterating strings and manually decoding UTF-8

This post is an adapted excerpt from Understanding the Odin Programming Language – the acclaimed eBook on learning Odin and understanding low-level concepts. Visit https://odinbook.com for more information.
Text strings in Odin use Unicode. Unicode is a standard that makes it possible to use characters from most languages. You can mix different languages within the same string, and even use exotic things such as emojis!
Odin has two primary types for representing text: string and cstring....

September 23, 2025

![](https://zylinski.se/oop/cover.png)

## Know why you don't like OOP

Programmers tend to fight about why Object-Oriented Programming (OOP) is good or bad.
Among the anti-OOP crowd, I often see junior programmers hate on OOP and “rebroadcast” what they’ve heard experienced programmers say. But when challenged to explain why OOP is bad, they have a hard time explaining it. It’s usually because they haven’t really experienced those things first hand.
I’d like to take a positive spin on this and say: Just write your code in a way that makes sense to you....

August 26, 2025

![](https://zylinski.se/temporary-allocator/cover.png)

## Understand the Temporary Allocator; Understand arenas

Odin is a manually memory managed language. Beginners of such languages are often afraid of memory leaks, meaning that you forget to deallocate memory.
The first remedy for this is to use the tracking allocator. It will warn you about memory you forgot to deallocate. Nifty!
But you can also think along these lines: Can I simplify things a bit, so I don’t have to think about the deallocation?
What you can do is to try to use the temporary allocator whenever possible....

August 25, 2025

![](https://zylinski.se/a-programming-language-for-me/cover.png)

## Odin: A programming language made for me

In my book Understanding the Odin Programming Language I wrote that “Odin incorporates some of my favorite C best practices, straight into the language”. But I didn’t really elaborate on the details. Let’s do that here!
This brings me to talking a bit about a previous job I had. Back in 2021 I worked at a place called Our Machinery. We were creating a whole game engine in plain C. We used a very comfortable and powerful way to program C....

May 12, 2025

![](https://zylinski.se/no-engine/cover.png)

## No-engine gamedev using Odin + Raylib

Games can be made in many different ways. Many games are made using big, general purpose game engines such as Unity and Godot. I enjoy using the Odin Programming Language combined with Raylib.
Odin is a C-like programming language and Raylib is library for drawing graphics, checking input and playing sounds. So it’s just a program that uses a simple library, no engine!
There are no objectively best ways to create games....

April 28, 2025

![](https://zylinski.se/handle-based-maps-3-impls/cover.png)

## Handle-based maps: Three implementations

In my post “Handles are the better pointers”: An Odin gamedev follow-up I talked about how one can implement a handle-based map in Odin.
In this post I want to follow that up by talking about three specific variants of a handle-based map, and highlight what sets them apart.
The three variants are available in this repository: https://github.com/karl-zylinski/odin-handle-map
NOTE: In the old post I used the term “handle-based array”, I’ve since then switched to saying “handle-based map”....

April 10, 2025

![](https://zylinski.se/arena-mistakes/cover.png)

## Mistakes and cool things to do with arena allocators

When programming in Odin you can use arena allocators. If you use an arena allocator combined with a dynamic array, then there are a couple of pitfalls that may not be apparent at first. Let’s look at what arenas are, how you can run into trouble when naively using them with dynamic arrays and what you can do instead.
What’s an arena? How does it work? Arenas and arena allocators are useful for grouping allocations that have the same lifetime....

April 4, 2025

![](https://zylinski.se/bindgen/cover.png)

## Generate Odin bindings for C libraries

I’ve written a binding generator for Odin. You can check it out here: https://github.com/karl-zylinski/odin-c-bindgen
In this blog post we’ll look at what it is and how to use it.
What is it? This binding generator takes header files from C libraries and outputs Odin code. This Odin code can then be used to interface with the library. This code is known as “binding”: It glues the world of Odin together with that of the C library....

April 2, 2025

![](https://zylinski.se/hba/cover.jpg)

## "Handles are the better pointers": An Odin gamedev follow-up

Background Andre Weissflog wrote an article in 2018 called “Handles are the better pointers”. In it he talks about how one can use handles instead of pointers when one wants to store permanent references to elements in an array.
I think there are many nuances regarding handles that only become apparent after some real-world usage. Here we’ll look at an implementation in Odin and discuss it.
I use the Odin Programming Language and the examples are game development-centric....

March 25, 2025

[Next  »](https://zylinski.se/page/2/)© 2026 [Karl Zylinski](https://zylinski.se/)
Powered by
[Hugo](https://gohugo.io/) &
[PaperMod](https://github.com/adityatelange/hugo-PaperMod/)