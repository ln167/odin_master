November 2022 Newsletter | Odin Programming Language 

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
2. [Newsletter 2022 11](/news/newsletter-2022-11)

# November 2022 Newsletter

2022-11-02

## Release note highlights [#](#release-note-highlights)

* `raw_data` was made an intrinsic, resulting in a speedup for slice heavy code.
* `transmute` can now be used on integer constants of the same internal endianness.
* `Static_Arena` and `Growing_Arena` have been unified into `Arena`, along with many other improvements to `core:mem/virtual`.
* Heavily improve time handling on Windows for `time.now()` and `os.File_Info`.
* And [much more](https://github.com/odin-lang/Odin/releases/tag/dev-2022-11)!

## Interview with Skytrias, author of Todool [#](#interview-with-skytrias-author-of-todool)

Q: Why don’t we begin with you telling us a bit about how you found out about [Odin](https://odin-lang.org).

A: I watched [Handmade Hero](https://handmadehero.org) and found the [Handmade Network site](https://handmade.network) - which hosted a bunch of projects.
After some game development I wanted to try making my own engine like Handmade Hero did but didn’t like C - so I searched through Handmade Network for some system languages.
That’s where I found out about [Odin](https://odin.handmade.network/)’s. 🙂

Q: And what attracted you to it?

A: GB linked to some YouTube videos where he went through several features and you can see how clean the language already was back then.

Q: And so you gave it a real punt. Fast forwarding, you started working on [Todool](https://todool.handmade.network/). Did you decide to write Todool in Odin because you were comfortable with the language, as an extended exercise to improve your mastery of the language, a bit of both? And were there other factors that made you choose Odin for what is intended to be a commercial project?

A: In 2020 I went back and forth between Rust and Odin for several small games/clones I did. Ever since then I stuck with Odin - so I had prior experience with it before I started working on Todool.

The thing I like about Odin is how simple it is to use. You can keep all of it in your head and make use of its core library - which follows the simplicity of Handmade Hero.

Another thing I liked was the simple compiler commands (build | run | check) and the lack of a package manager.

Nowadays I really appreciate the C binding model in Odin but also how close to C code looks when ported over from it in entirety (like single-header stb libraries).

Q: What would you say your favorite thing about Odin is, and what would you say could be improved? This could be a feature, syntax, the community, documentation, tooling, anything and everything related to working with Odin that you really like and think could use some love, respectively, and why?

A: Definitely the [core](https://pkg.odin-lang.org/core/) library. You have all the power at your fingertips - from doing various encodings, string manipulation, formatting, etc.

The core library could also use some *more* love/help from the community. There are a few unfinished packages and code that needs more fixing/testing.

Q: We’ve enjoyed your Todool progress updates in `#showcase` on our [Discord](https://discord.gg/vafXTdubwr) and your [YT channel](https://www.youtube.com/c/Skytrias/videos). Is there a site people can pre-order it at?

A: Todool will be available soon on <https://skytrias.itch.io/todool>

The bigger tasks on the Todool roadmap are:

* Date/Time management
* Agenda View
* Improved searching/pattern matching through regex (new core library)
* Filtering system of tasks
* Performance optimization on large files
* And more!

Q: Was there anything you wanted to say about Odin or Todool in addition to this? Any sage advice to newcomers to the language?

A: I’m pretty happy with Odin as a whole. I wish we had more compiler developers so it would make GB’s life easier.

The best way to currently learn Odin is to dive through the [overview](https://odin-lang.org/docs/overview) and try out the core library packages. I’d recommend starting a few small projects with all the knowledge you gain after each iteration.

From **cstring:**

| To | Action | Code |
| --- | --- | --- |
| `string` | ***alias*** | `string(st)` |
| `[^]u8` | ***alias*** | `transmute([^]u8)st` |

* [Release note highlights](#release-note-highlights)
* [Interview with Skytrias, author of Todool](#interview-with-skytrias-author-of-todool)

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