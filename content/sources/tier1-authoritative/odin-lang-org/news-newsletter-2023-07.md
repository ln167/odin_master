July 2023 Newsletter | Odin Programming Language 

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
2. [Newsletter 2023 07](/news/newsletter-2023-07)

# July 2023 Newsletter

2023-07-01

## What’s been going on in July [#](#whats-been-going-on-in-july)

Work has officially started on the new custom backend for Odin using [Tilde](https://github.com/RealNeGate/Cuik/tree/master/tb). This will be an alternative to the current LLVM backend, and not a replacement to it. In case you didn’t know, Odin’s compilation speed is actually quite quick, but LLVM slows down everything. Around ~90% of the compilation time is spent on LLVM.

Tilde is estimated to reduce Odin compile times by an order of magnitude at a minimum, aiding with the quick development of your programming in Odin.

Try out the compiler flags `-show-timings` or `-show-more-timings` to get details on your compilation times - you’ll find that LLVM usually takes up most time. Why optimize other stages of the compilation when LLVM will bog down everything by ~90%?

[Yasser Arguelles Snape (NeGate)](https://github.com/RealNeGate) has been working on his own custom backend to replace LLVM. They have been developing a `C` compiler along with it, to better grasp the shortcomings of his custom backend.

GingerBill has been streaming some code sessions on [Twitch](https://www.twitch.tv/ginger_bill) - with backups being uploaded on [YouTube](https://www.youtube.com/c/GingerGames).

## New Bindings / Packages [#](#new-bindings--packages)

* [ldtk](https://github.com/jakubtomsu/odin-ldtk) bindings - `jakubtomsu (Jacob)`
* [jo](https://github.com/pJotoro/jo) “A stupidly easy to use library” - `pJotoro`
* [oui](https://github.com/Skytrias/oui) OUI Semi-Immediate UI port - `Skytrias`

## Showcase [#](#showcase)

Response to the ***Showcase*** section has been astonishing, so let’s continue in the same fashion.

We have a total of ***21*** videos / images to share this month, we’ll try splitting up by weeks to give a sense of *time*.

### Week 1 [#](#week-1)

Waterfall Spectrum Analyzer for the Adalm-Pluto Software Defined Radio - Stvff
Github

### Week 2 [#](#week-2)

[](https://cdn.discordapp.com/attachments/568871319425515531/1126634151060181022/2023-07-06_18-53-40.mp4)

Applying shaders to nodes & caching properly - brda

[](https://cdn.discordapp.com/attachments/585072899250192404/1132778914494812262/tankers_recording.mov)

<a href=https://ncharlie.itch.io/tankers>Tankers by ncharlie</a>

[](https://cdn.discordapp.com/attachments/585072899250192404/1131330584485036082/2023-07-19_22-55-41.mp4)

<a href=https://rehkitzdev.itch.io/dont-break>Don't break by rehkitzdev</a>

[](https://cdn.discordapp.com/attachments/568871319425515531/1128552523771428924/simplescreenrecorder-2023-07-11_23.02.30.mp4)

GPU accelerated fractal binary tree with rotation & scale - ElegantBeef

![...](https://cdn.discordapp.com/attachments/568871319425515531/1129105832215326750/image.png)

"After a day of frustration and tears, here we have functional multi mesh rendering with Assimp, OpenGL and SDL2" - Akuspel

![...](https://cdn.discordapp.com/attachments/568871319425515531/1129387863033778176/image.png)

Object transforms, 3D gizmo, multiple shaders - Akuspel

### Week 3 [#](#week-3)

![...](https://cdn.discordapp.com/attachments/568871319425515531/1130852733117812796/ohyeah.jpg)

Quixel scanned mesh import works now - Jesse

[](https://cdn.discordapp.com/attachments/568871319425515531/1131990006693625906/dialogue_and_editor.mp4)

Cat game progress - NPCs, Custom Objects, Editor Work Undo/Redo - karl\_zylinski

![...](https://cdn.discordapp.com/attachments/568871319425515531/1132501150847991839/image.png)

Vulkan Triangle using a custom platform layer - OrigamiPete

[](https://cdn.discordapp.com/attachments/568871319425515531/1132752374587457626/20230723_205046.mp4)

<a href=https://coedoo.itch.io/gold-and-stone>Gold and Stone by Coedoo</a>

### Week 4 [#](#week-4)

![...](https://cdn.discordapp.com/attachments/568871319425515531/1130852733117812796/ohyeah.jpg)

Who needs Nanite when you've got parallax mapping - Jesse

![...](https://media.discordapp.net/attachments/568871319425515531/1132974873145253949/image.png)

Tilde Hellope! - gingerBill

[](https://cdn.discordapp.com/attachments/568871319425515531/1134716807136153630/contour_wip02.mp4)

Vector Editing App - varomix

![...](https://media.discordapp.net/attachments/568871319425515531/1134904460708155492/image.png?width=1130&height=552)

writing a UE save format reader for fun - Jeroen

[](https://cdn.discordapp.com/attachments/585072899250192404/1135989264723755168/Piano_Thing.mp4)

Keyboard Midi Visualizer with raylib - HitchH1k3r

[](https://cdn.discordapp.com/attachments/568871319425515531/1134974738851184792/hot_reloading.mp4)

Hot Level Reloading - CasualKyle

![...](https://cdn.discordapp.com/attachments/568871319425515531/1135304074322006106/image.png)

Procedural Generation of levels - Francis\_the\_cat

[](https://cdn.discordapp.com/attachments/568871319425515531/1135617784949252236/new6.mp4)

Vector -> (M)SDF Generation Tool - Skytrias

* [What’s been going on in July](#whats-been-going-on-in-july)
* [New Bindings / Packages](#new-bindings--packages)
* [Showcase](#showcase)
  + [Week 1](#week-1)
  + [Week 2](#week-2)
  + [Week 3](#week-3)
  + [Week 4](#week-4)

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