April 2023 Newsletter | Odin Programming Language 

[![Odin](/logo.svg)](/)


* [Home](/)
* [Docs](/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](/news)
* [Showcase](/showcase)
* [Forum](https://forum.odin-lang.org)
* [Community](/community)
* [GitHub](https://github.com/odin-lang/Odin)
* Appearance:

* [2025 Q4 and 2026 Q1 Newsletter](/news/newsletter-2026-q1/)
* [Moving Towards a New "core:os"](/news/moving-towards-a-new-core-os/)
* [2025 Q1 Newsletter](/news/newsletter-2025-q1/)
* [Orca Odin Support](/news/orca-odin/)
* [December 2024 Newsletter](/news/newsletter-2024-12/)
* [October 2024 Newsletter](/news/newsletter-2024-10/)
* [September 2024 Newsletter](/news/newsletter-2024-09/)
* [August 2024 Newsletter](/news/newsletter-2024-08/)
* [July 2024 Newsletter](/news/newsletter-2024-07/)
* [June 2024 Newsletter](/news/newsletter-2024-06/)
* [May 2024 Newsletter](/news/newsletter-2024-05/)
* [April 2024 Newsletter](/news/newsletter-2024-04/)
* [March 2024 Newsletter](/news/newsletter-2024-03/)
* [February 2024 Newsletter](/news/newsletter-2024-02/)
* [January 2024 Newsletter](/news/newsletter-2024-01/)
* [December 2023 Newsletter](/news/newsletter-2023-12/)
* [November 2023 Newsletter](/news/newsletter-2023-11/)
* [September 2023 Newsletter](/news/newsletter-2023-09/)
* [August 2023 Newsletter](/news/newsletter-2023-08/)
* [July 2023 Newsletter](/news/newsletter-2023-07/)
* [June 2023 Newsletter](/news/newsletter-2023-06/)
* [April 2023 Newsletter](/news/newsletter-2023-04/)
* [December 2022 Newsletter](/news/newsletter-2022-12/)
* [November 2022 Newsletter](/news/newsletter-2022-11/)
* [Reading a File Line by Line](/news/read-a-file-line-by-line/)
* [Calling Odin from Python](/news/calling-odin-from-python/)
* [Binding to C](/news/binding-to-c/)
* [Odin's Declaration Syntax](/news/declaration-syntax/)
* [Official Metal and Direct3D Support](/news/major-graphics-apis/)
* [New Package Documentation](/news/new-package-documentation/)
* [Optional Semicolons](/news/optional-semicolons/)
* [A Quine in Odin](/news/quine-in-odin/)

1. [News](/news)
2. [Newsletter 2023 04](/news/newsletter-2023-04)

# April 2023 Newsletter

2023-04-07

## Release note highlights [#](#release-note-highlights)

* Add `-o:none` optimization mode (useful for `-debug` builds)
* Add `@(extra_linker_flags=<string>)` attribute for `foreign import`
* `vendor:raylib` version 4.5
* `core:text/table`
  + Table generation utility which can output to plaintext, markdown, and HTML

## Interview with pwho, author of [Handmade Games](https://www.youtube.com/@handmadegamesdev) [#](#interview-with-pwho-author-of-handmade-games)

Q: Let’s start at the beginning. How did you find out about Odin and what appealed to you about it?

A: I had heard of Odin through the Handmade Network, though I didn’t give it a serious look until last year. I had finally found a bit of extra time to learn how to program games - something I had wanted to do for years, and I wanted to choose a low-level language to pursue that. Odin was a perfect fit for me.

Odin appealed to me for several reasons:

* Programming games was just a fun way for me to learn more about how computers worked, and I liked that Odin was designed to work with more modern systems, but at the same time not keep me from the lower-level details of the machine.
* I liked that Odin was simple. My understanding was that while C is great, there were a lot of annoying things about it. I wanted something simple that worked easily. I wanted to learn, not get side tracked by oddities in the language itself.
* After watching and reading nearly everything I could find of Bill talking about the language, I was particularly impressed with how much thought he had put into the language design. He has his reasons for doing things the way he did. That thoughtful approach to the design convinced me that the Odin group of people was a good group I could learn a lot from.

In sum, Odin offered me the simple, close-to-the-machine experience I wanted without all the baggage of other modern languages.

Q: I’d like to think that Odin is the kind of language Ritchie would have created with 60 years of hindsight and access to modern hardware.

A: Well put. That’s exactly the impression I get, too.

I came at all of this as a self-taught web-dev that had been frustrated over the years with my lack of understanding of computing fundamentals. Everywhere I sought hands-on knowledge, the process was made complicated by other things like high-level languages, frameworks, and philosophies like OOP, Rust-ownership, etc. Sure I could read books, but I wanted the hands-on experience, and I wanted it to be straight-forward, fun and modern. So I saw Odin as the perfect tool to help me learn on modern systems.

Q: I feel that a lot of programmers try their hands at games because of the immediate and visceral feedback. You make thing A move and you know right away if you succeeded. And as the game grows there is plenty of room to become more serious about performance and learn more. Why a side scroller and not a platform, or why *this* game?

A: First, I agree entirely – the quick feedback and fun factor of programming games make it an especially good avenue to learn and grow as a programmer.

When I first started learning, I was excited and curious about everything. It was really hard to know where to begin, and I think the progression of my videos captures that a little.

My first hurdle was to develop an understanding of how to open a window and get things on the screen. Next, I wanted to understand handling keyboard input. Then I was curious about how movement and animations worked. And finally, collision detection. I quickly learned that you can get very deep into these things, so I decided to stop myself and finish something a little more simple, which is why I started the space shooter game.

The game was just simple enough to complete but hard enough that I would learn.

As for why I started the YouTube channel – I’m not interested in becoming another dev YouTuber, but I started because I suspected there were other beginner programmers frustrated with the web-dev path as I was. I wanted to show that programming games was a great way to become a better programmer.

Q: What would you say your favorite thing about Odin is, and what would you say could be improved? This could be a feature, syntax, the community, documentation, tooling, anything and everything related to working with Odin that you really like, and conversely think could use some love, and why?

A: My favorite thing about Odin is its simplicity. I hope that never changes. I’m always glad to see Bill say that the language is done. I don’t want any fancy features, abstractions, or whatever. I want as little as possible between me and the machine.

As for improvements, I would like to see more learning material. Specifically, how to do various low-level things using the language. Learning the syntax and standard lib isn’t too tough – you can learn a lot from reading the source code. But I would love to see more examples of using the language to build something. Further, I would love to see Odin code to demonstrate things like Bill’s blog posts on memory allocation strategies. I think there are many programmers struggling with this sort of low-level understanding, and Odin is simple enough to be a great teaching tool.

* [Release note highlights](#release-note-highlights)
* [Interview with pwho, author of [Handmade Games](https://www.youtube.com/@handmadegamesdev)](#interview-with-pwho-author-of-handmade-games)

[![Odin](/logo.svg)](/)

The Data-Oriented Language for Sane Software Development.

#### Resources

* [Docs](/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](/news)

#### Community

* [GitHub](https://github.com/odin-lang/Odin)
* [Discord](https://discord.gg/vafXTdubwr)
* [Twitch](https://www.twitch.tv/ginger_bill)
* [YouTube](https://www.youtube.com/channel/UCUSck1dOH7VKmG4lRW7tZXg)
* [Showcase](/showcase)

#### Contribute

* [Issues](https://github.com/odin-lang/Odin/issues)
* [Donate](https://www.patreon.com/gingerbill)

© 2016–2024 Ginger Bill