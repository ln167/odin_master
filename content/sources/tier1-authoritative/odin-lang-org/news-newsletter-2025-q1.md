2025 Q1 Newsletter | Odin Programming Language 

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
2. [Newsletter 2025 q1](/news/newsletter-2025-q1)

# 2025 Q1 Newsletter

2025-04-01

## Odin Changes in Detail [#](#odin-changes-in-detail)

### Dynamic Literals are now disallowed [#](#dynamic-literals-are-now-disallowed)

Hidden allocations in Odin are `[dynamic]` arrays and `map` literal declarations. These allocate memory without the user potentially knowing.

An example would be:

```
main :: proc() {
    test: map[int]string = {
        0 = "zero",
        1 = "one",
        2 = "two",
        3 = "three",
    }
}
```

Now this is not supported anymore and can only be turned on explicitly through the flag `#+feature dynamic-literals` to have backwards compatibility when necessary.

### `map_entry` builtin [#](#map_entry-builtin)

A new builtin to help in cases where you want to lookup if something exists in a map, return a pointer to the value or insert something new + return the final pointer in the map

Here is an example of it being used in the `core:strings` intern library. This is a call which has to be efficient as it may get called many times.
![map-entry-diff](/images/news-2025/Q1-map-entry-diff.png)

### SDL3 Support [#](#sdl3-support)

If you didn’t catch it yet, [SDL3 has been released](https://discourse.libsdl.org/t/announcing-the-sdl-3-official-release/57149).

Odin Vendor packages strive to support the most commonly used libraries, so of course we support SDL3 just like we did SDl2!

Here is the vendor package [vendor:SDL3](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3)

### Further Changes [#](#further-changes)

Catch up on all changes on the [releases page](https://github.com/odin-lang/Odin/releases)

---

## Odin 7 Day Jam [#](#odin-7-day-jam)

Karl Zylinski has held a Game Jame in which the community had to create games with odin in 7 days!

Here are all the entries and the final winners listed on the itch.io page: <https://itch.io/jam/odin-7-day-jam/results>

---

## Community Projects [#](#community-projects)

### Odin C Bindings Generator [#](#odin-c-bindings-generator)

Look there is a new C Bindings generator!
This one does the popular approach which uses clang to output an ASST and then turns it into odin code.

<https://github.com/karl-zylinski/odin-c-bindgen>

### Sokol Hot Reload Template [#](#sokol-hot-reload-template)

Github: <https://github.com/karl-zylinski/odin-sokol-hot-reload-template>

### QRCode Generator [#](#qrcode-generator)

<https://github.com/jon-lipstate/qrcode>

---

## Socials [#](#socials)

### Nadako - Sokol Tutorials [#](#nadako---sokol-tutorials)

### Nadako - SDL3 Tutorials [#](#nadako---sdl3-tutorials)

### Handle Based Arrays Blog [#](#handle-based-arrays-blog)

<https://zylinski.se/posts/handle-based-arrays/>

---

## Community Games (Outside of the Game Jam) [#](#community-games-outside-of-the-game-jam)

<a href=https://jb-frog.itch.io/dont-pop-me-now>Don't Pop Me Now by jb\_frog, felix-u</a>
<a href=https://igamemaker.itch.io/nuke-the-moon>Nuke The Moon by igamemaker</a>
<a href=https://midnightmeat.itch.io/devil-raisd-the-storm>the Devil rais'd the storm by the Midnight Meat Society</a>
<a href=https://nikola-stefanov.itch.io/bogwalker>Bogwalker by nik1oo</a>

* [Odin Changes in Detail](#odin-changes-in-detail)
  + [Dynamic Literals are now disallowed](#dynamic-literals-are-now-disallowed)
  + [`map_entry` builtin](#map_entry-builtin)
  + [SDL3 Support](#sdl3-support)
  + [Further Changes](#further-changes)
* [Odin 7 Day Jam](#odin-7-day-jam)
* [Community Projects](#community-projects)
  + [Odin C Bindings Generator](#odin-c-bindings-generator)
  + [Sokol Hot Reload Template](#sokol-hot-reload-template)
  + [QRCode Generator](#qrcode-generator)
* [Socials](#socials)
  + [Nadako - Sokol Tutorials](#nadako---sokol-tutorials)
  + [Nadako - SDL3 Tutorials](#nadako---sdl3-tutorials)
  + [Handle Based Arrays Blog](#handle-based-arrays-blog)
* [Community Games (Outside of the Game Jam)](#community-games-outside-of-the-game-jam)

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