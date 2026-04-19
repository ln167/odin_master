June 2023 Newsletter | Odin Programming Language 

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
2. [Newsletter 2023 06](/news/newsletter-2023-06)

# June 2023 Newsletter

2023-06-01

Hey all 👋
This month we’re doing things differently and want to show off more from the [Odin Discord Community](https://discord.gg/vafXTdubwr). We’ll go over release note highlights and official package news as usual.

## Release note highlights [#](#release-note-highlights)

### Highlights from May [#](#highlights-from-may)

* New compiler flag `-max-error-count:<integer>`
* Prevent trivial copying with `struct #no_copy`
* Experimental `@(deferred_*_by_ptr=<proc>)` attribute
* Make `!x` be an untyped boolean

### Highlights from June [#](#highlights-from-june)

* Allowing for Positional and Named Arguments in Procedure Calls [details](https://github.com/odin-lang/Odin/pull/2597)
* New and Improved `io.Stream` interface [details](https://github.com/odin-lang/Odin/pull/2584)
* `bindFramebuffer` was added to `webgl`
* Added `self_cleanup` flag to properly auto-clean threads

## Package / Bindings News [#](#package--bindings-news)

* Bindings for [lua](https://www.lua.org/) were added with several versions: `vendor:lua/` + `5.1`, `5.2`, `5.3` and `5.4`
* Improvements to the JSON tokenizer
* Partially buffer all `fmt.fprint*` related calls using a `bufio.Writer`
* Font texture atlas builder port of [fontstash](https://github.com/memononen/fontstash) was added to `vendor:fontstash`
* Vectorized rendering port of [nanovg](https://github.com/memononen/nanovg) was added to `vendor:nanovg`
* Nanovg backends for OpenGL 2.0, OpenGL ES 2.0, OpenGL 3.2 core profile and OpenGL ES 3 were added to `vendor:nanovg/gl`

### New Bindings / Packages [#](#new-bindings--packages)

* [HTTP/1.1 Implementation](https://github.com/laytan/odin-http) using `core:net` - `laytan`
* [mimalloc](https://github.com/jakubtomsu/odin-mimalloc) bindings - `jakubtomsu (Jacob)`
* [lz4](https://github.com/jakubtomsu/odin-lz4) bindings - `jakubtomsu (Jacob)`
* [fmod](https://github.com/jakubtomsu/odin-fmod) bindings - `jakubtomsu (Jacob)`
* [shaderc](https://github.com/juxta-tad/shaderc) bindings - `Matt_`
* [libpcap](https://github.com/Pix-xiP/odin-libpcap) bindings - `Pix`

## Primeagen Interview with GingerBill [#](#primeagen-interview-with-gingerbill)

GingerBill was recently interviewed by [ThePrimeagen](https://www.youtube.com/@ThePrimeagen) (*~51 min.*). It included a walkthrough through the `demo.odin` file, going over odin’s features and answering viewer questions.

## Package Registry [#](#package-registry)

`mjölnir` has released an alpha build of their [Odin Package Registry](https://pkg-odin.org/).

## Portable Build Tools [#](#portable-build-tools)

`ftphikari` has released their [PortableBuildTools](https://github.com/Data-Oriented-House/PortableBuildTools), a “Portable, simple and fast installer for Visual Studio build tools.”

## Streams / Youtube Content [#](#streams--youtube-content)

`Karl Zylinski` has been streaming solo gamedev using Odin, Raylib & Aseprite.

* Youtube: <https://www.youtube.com/@karl_zylinski>

`Mjölnir` has recently been uploading videos on Pico (a tiny text editor) and basic data structure implementations / explanations.

* Youtube: <https://www.youtube.com/@mjolnirdev/>

## Showcase [#](#showcase)

### Showcase from May [#](#showcase-from-may)

[](https://cdn.discordapp.com/attachments/568871319425515531/1105729441558183936/2023-05-10_00-18-30.mp4)

Arcade physics kart racer - CasualKyle

[](https://cdn.discordapp.com/attachments/568871319425515531/1106975973309681825/i7yXb0NttY.mp4)

Game Framework - The Lua Whisperer
[Github](https://github.com/DragosPopse/marshmallow/)

[](https://cdn.discordapp.com/attachments/568871319425515531/1108888112559575060/OdinsSurvivor.mp4)

Little Vampires Clone - BigYosh

[](https://cdn.discordapp.com/attachments/568871319425515531/1113517359517409301/2023-05-31_19-16-59.mp4)

Cat Game Progress - karl\_zylinski

### Showcase from June [#](#showcase-from-june)

[](https://cdn.discordapp.com/attachments/568871319425515531/1114188827209256960/worked_on_ui.mp4)

Polishing UI / Scenes - Falconerd

![...](https://cdn.discordapp.com/attachments/568871319425515531/1115597553883430984/image.png)

Cascaded Shadow Mapping - Francis\_the\_cat

[![...](https://cdn.discordapp.com/attachments/568871319425515531/1115798557216231505/final-image.jpg)](https://github.com/bg-thompson/basic-ray-tracer-in-odin)

Basic Raytracer - bgthompson

[![...](https://cdn.discordapp.com/attachments/568871319425515531/1117509257659699310/image.png)](https://github.com/DanielGavin/ols)

Adding workspace symbols to OLS (Odin Language Server) - Draoz

[](https://cdn.discordapp.com/attachments/568871319425515531/1117635377549807697/2023-06-11_23-01-57.mp4)

one more QOL feature in 🥳 - brda

[](https://cdn.discordapp.com/attachments/568871319425515531/1118632292345200741/2023-06-14_17-00-23.mp4)

I managed to implement my favourite way of disconnecting nodes - brda

[](https://cdn.discordapp.com/attachments/568871319425515531/1118756606964924496/python.mov)

Spall tracing the cpython interpreter for over a minute - cloin
[Try out Spall](https://gravitymoth.com/spall/)

[](https://cdn.discordapp.com/attachments/568871319425515531/1119868847806218311/dump_1.mp4)

Raw File Viewer - markersniffen

[](https://cdn.discordapp.com/attachments/568871319425515531/1120134538656493578/hsv-color.mp4)

HSV Color Space - ReasonableCoder

![...](https://cdn.discordapp.com/attachments/568871319425515531/1120438588262318171/image.png)

Explosives - Francis\_the\_cat

[](https://cdn.discordapp.com/attachments/568871319425515531/1120735048350576670/Base_Profile_2023.06.20_-_15.54.50.05.mp4)

Disentangle - Matt\_

[](https://cdn.discordapp.com/attachments/568871319425515531/1121476642754285578/2023-06-22_10-57-55.mp4)

WIP roguelite platformer gameplay - jakubtomsu (Jacob)

[](https://cdn.discordapp.com/attachments/568871319425515531/1121578210719703090/lib_demo.mp4)

2d game library running on windows&web with hot reloading - Rehkitz

[![...](https://cdn.discordapp.com/attachments/568871319425515531/1123497668749033542/image.png)](https://github.com/juxta-tad/Pree)

View your programs structure with ease - Matt\_

[](https://cdn.discordapp.com/attachments/568871319425515531/1123860980154241024/multiline_text_edit.mp4)

Multi-line text editing for custom UI - markersniffen

[![...](https://cdn.discordapp.com/attachments/568871319425515531/1124177224761880697/Fz1sNu8aYAA-2Z2.png)](https://twitter.com/charshenton/status/1674613459261210625)

Sparse fluid solver working in odin + dx12 - ProfPistachio

* [Release note highlights](#release-note-highlights)
  + [Highlights from May](#highlights-from-may)
  + [Highlights from June](#highlights-from-june)
* [Package / Bindings News](#package--bindings-news)
  + [New Bindings / Packages](#new-bindings--packages)
* [Primeagen Interview with GingerBill](#primeagen-interview-with-gingerbill)
* [Package Registry](#package-registry)
* [Portable Build Tools](#portable-build-tools)
* [Streams / Youtube Content](#streams--youtube-content)
* [Showcase](#showcase)
  + [Showcase from May](#showcase-from-may)
  + [Showcase from June](#showcase-from-june)

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