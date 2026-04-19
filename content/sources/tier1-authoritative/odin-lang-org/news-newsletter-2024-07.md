July 2024 Newsletter | Odin Programming Language 

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
2. [Newsletter 2024 07](/news/newsletter-2024-07)

# July 2024 Newsletter

2024-06-30

Read up on the compiler changes in the [monthly release](https://github.com/odin-lang/Odin/releases/tag/dev-2024-07) notes.

---

## Documentation Update [#](#documentation-update)

Feoramund has updated the Documentation on the odin test runner <https://odin-lang.org/docs/testing/>. It goes into detail, what everyone will eventually have to dive into for more serious projects.

---

## Projects shared this month [#](#projects-shared-this-month)

| Project Name | Description |
| --- | --- |
| [odin-bgfx](https://github.com/hitchh1k3r/odin-bgfx/) | bgfx bindings |
| [odin-d3d11-h264](https://github.com/markersniffen/odin-d3d11-h264-decode) | d3d11 h264 decode reference |
| [real-time-collision](https://gist.github.com/jakubtomsu/2acd84731d3c2613c91e40c2e064ffe6) | real time collision functions gist |
| [bml](https://github.com/mabeh19/bml/) | binary parser based on XML schemes |
| [toml\_parser](https://github.com/Up05/toml_parser) | TOML parser |
| [serial](https://github.com/jasonKercher/serial) | cross-platform serial communications |
| [minimal-vulkan](https://gist.github.com/jockus/61a90bef44048a26e056f2d538e67886) | minimal vulkan triangle example using shader objects |
| [RGFW-Odin](https://github.com/ColleagueRiley/RGFW-Odin) | RGFW cross-platform window abstraction library bindings |

---

## Introduction To Odin (karl\_zylinski) [#](#introduction-to-odin-karl_zylinski)

A big problem with learning a new language is the sparse quality material that’s out there. Languages like Rust have tons of learning material and blog posts about each aspect of the language out there.

After Karl Zylinski has published his game “Cat & Onion”, he is stepping up to try and improve this area. We’re happy to see more advancement for odin in this regard. Our [discord](https://discord.gg/vafXTdubwr) also has a channel #article-authoring where you can receive feedback on unpublished articles.

Check it out at <https://zylinski.se/posts/introduction-to-odin/>.

---

## Game Engine Dev, Explained for Non-Programmers (Massimog) [#](#game-engine-dev-explained-for-non-programmers-massimog)

Massimog is working on their game engine and writing down blogs about all the details in the process. Give it a read! <https://blog.massimogauthier.com/p/game-engine-dev-explained-for-non>

Here is a short video of them showcasing their latest work so far.

---

## An After Effects Plug-in In Odin? (graphisco) [#](#an-after-effects-plug-in-in-odin-graphisco)

[](/images/news/2024-07-graphisco1.mp4)

Adobe After Effects has an extensive 3rd party plug-in ecosystem thanks to it’s time tested C API. The usual language of choice to write AE plug-ins is of course C++. Through out the years my programming style evolved from using needlessly complicated C++ paradigms to a very C style C++. When Zig first appeared on my radar, I was really intrigued - a modern C replacement without all the cruft and not having to deal with C++. But it turned out to be not my cup of tea. Then I stumbled upon Odin and it seemed almost perfect. On top of it some of the features in Odin are tailor made to write computer graphics code. My initial view is to use Odin for small side projects and experiments but stick with C++ for commercial work.

After writing some Odin code (mostly small tools and helper libs) I liked it so much that I decided to go all in with Odin for my next commercial project. The biggest hurdle for me is not the language itself but getting used to managing a project without an IDE. I eventually managed to write the build scripts but an IDE is sure more comfy especially for building plug-ins. There are no official Odin bindings for the AE SDK and Adobe doesn’t publish any XML metadata to generate these bindings programmatically. So I had to port the headers manually, which in hindsight wasn’t that bad.

Now on to the language itself - it’s very well thought out consistent. It mostly fits in my head and doesn’t encourage you to be clever. Just enough metaprogramming to take the edge off and a decent amount of syntax sugar to make it easy. There are so many nice touches and features in Odin (like defer, tagged unions, using,#no\_bounds\_check, transmute) that I like but I’ll highlight just two which I think are very unique to Odin and found them very effective in practice.

[](/images/news/2024-07-graphisco2.mp4)

### Feature 1: context [#](#feature-1-context)

The biggest feature for me is the language level support for custom allocators and how they’re all hidden in the background using the context. For AE plug-ins most if not all memory has to be allocated by the host, so plug-ins rely on custom allocators extensively, so this feature works amazingly well. This also let’s me have different allocators (persistent allocator & a frame allocator for example) for different procedures without any hassle.

### Feature 2: or\_return [#](#feature-2-or_return)

This is another feature I’ve come to rely upon frequently. It’s very simple, yet so effective. Great for error propagation and a lot cleaner than throwing a C++ exception. Multiple return values make this an absolute delight. The AE SDK is full of functions that return a Error value and this really makes it a breeze. It’s sister keyword or\_else is also another gem.

Also the Discord community is incredibly helpful and always guided me in the right direction, which I’m very grateful for. I’m glad that I decided to take the leap and it all worked out very well.

[](/images/news/2024-07-graphisco3.mp4)

Check out the amazing plug-in at <https://www.rowbyte.com/blog/stipple-image-stippling-for-after-effects>.

I always love watching impressive visual demos, check out more high quality ones here <https://simonbronson.com/stipple>.

---

## Text Editor Experimentation #3 (Skytrias) [#](#text-editor-experimentation-3-skytrias)

Last month we covered the first steps of an AST based editor. We looked into the basic structure of nodes that correspond to the textual odin input, how we can build the AST manually and rendering.

### First Step [#](#first-step)

My first step after getting rendering working, was to build a predefined tree and have shared identifier editing work. It’s nothing crazy but cool to see the effect of just using the same string source work out easily.

[](/images/news/2024-07-skytrias1.mp4)

### How Editors Work [#](#how-editors-work)

Let’s first remind ourselves how normal text editors work. We have a raw text file that we can edit (encodings ASCII/UTF8/etc).

1. Insertion of 1 or more bytes
2. Remove 1 or more bytes
3. Select multiple characters

The keyboard maps onto this easily:

1. typing in characters to create them literally
2. backspace/delete to remove the character at the cursor or the selection
3. shift to extend the selection

Any more complex higher level features can be built on top of this like multiple cursors by keeping the basics easy.

### Navigation [#](#navigation)

Coming back to the AST editor there are a few questions.

1. How do we *move* around generally

* Move by AST Nodes
* Keep a textual based movement system
* Switch between modes or representations

2. What really is moving “vertically” now? Before it was moving to the same X Y-1 or Y+1 position

* Move to the nearest AST node above/below
* Move to the most logical AST node to follow up on

3. Multiselection makes sense but overcomplicates things

* Selecting multiple nodes is easy, but how do we *really* edit them
* What kind of restrictions would have to apply

[](/images/news/2024-07-skytrias2.mp4)

RED: Decl\_Value | GREEN: Stmt\_Assign | WHITE: Expr\_Ident

I opted for moving horizontally through the nodes as they were layed out. Vertical movement happens to the closest node. Also the mouse picks the layed out region of the text to pick the node. As any accessory syntax like colons, commas or equal characters are just there to understand meaning, they arent “selectable”.

### Editing [#](#editing)

Raw text editors don’t put any constraints on the user at all. The compiler does the interpretation and sends any syntax errors back. How does an AST editor handle this and should it be language dependent or not?

We have to ask ourselves a few crucial questions again.

1. Do we want to always create a perfect AST where we can guarantee the compiler accepts it?
2. Copy/Paste arbitrary nodes or only specific parts
3. What is the undo/redo complexity

How do we insert specific node structures and all their respective types? Here is a list of all possible node types we have to make editable.

```
Node_Type :: enum {
  Expr_Start,
    Expr_Ident,
    Expr_Proc_Lit,
    Expr_Basic_Lit,
    Expr_Comp_Lit,
    Expr_Unary,
    Expr_Binary,
    Expr_Paren,
    Expr_Index,
    Expr_Deref,
    Expr_Slice,
    Expr_Call,
  Expr_End,

  Type_Start,
    Type_Pointer,
    Type_Distinct,
    Type_Array,
    Type_Dynamic_Array,
    Type_Proc,
    Type_Struct,
    Type_Union,
    Type_Enum,
    Type_Map,
  Type_End,

  Stmt_Start,
    Stmt_Block,
    Stmt_If,
    Stmt_When,
    Stmt_Return,
    Stmt_Defer,
    Stmt_For,
    Stmt_Range,
    Stmt_Case,
    Stmt_Switch,
    Stmt_Assign,
    Stmt_Using,
    Stmt_Bad,
  Stmt_End,

  Decl_Start,
    Decl_Value,
    Decl_Import,
  Decl_End,

  Field_Start,
    Field_Basic,
  Field_End,
}
```

The “Start” and “End” enums are just for specifying ranges. Either way it’s quite a lot to cover. For each of these there would have to be specific logic and constraints set.

### Insertion Feels Good [#](#insertion-feels-good)

Here is the last recorded video I have. You can see scope movement and linear tree movement
attempts. It looks quite easy but lot’s of logic had to be added to make these basics work.

On the left you can see the list of possible node types. The idea for testing was to select the one you want (almost like scratch) and insert that on “enter”.

[](/images/news/2024-07-skytrias3.mp4)

I’m also showcasing moving nodes around in the parent declarion values, which again seems nice.

### Editing Nodes Will Feel Bad [#](#editing-nodes-will-feel-bad)

I think the hardest thing to realize is that editing a tree linearly is bad. Let’s take a normal math equation example, `result := 10 + 20 - 30` where the rough tree for that would be:

```
result         :=           x + y            x - y
          Decl_Value ':='
Expr_Ident     ->       Expr_Binary '+'  Expr_Binary '-'
                           10 + 20
                Expr_Basic_Lit Expr_Basic_Lit
                                             30 - 30
                                (Expr_Basic_Lit) Expr_Basic_Lit
```

Those are 7 nodes that had to be “created” and correctly set instead of plainly typed out. The tree is a few levels deep for a simple declaration. Imagine it going more complex anything non trivial and representing insertion/removal/navigation becomes difficult.

### Supporting Existing Code [#](#supporting-existing-code)

Another big issue with an Odin specific AST editor is, that we have to always support core/vendor packages that are written in the original raw text format. Meaning we will have to produce a valid AST that we can use the same way across the editor.

The same goes for outputting odin code, we would have to export proper odin syntax files. Meaning input/output are raw text and the middle man is the AST editor? It would work but it feels off.

Maybe it makes more sense to create a new ecosystem around a tiny language that works within a custom AST editor. That reminds me of a project <https://mr4th.com/software/splink> which was just that for lisp.

### Ending Notes [#](#ending-notes)

One thing I remember when discussing this with ***GingerBill*** was that, he likes the idea but he would always wish for an “escape”, where you can just type in raw text and it will convert that to the AST representation.

While I like the idea I think it feels like a defeat to the whole idea of the editor. In that case you could just have a raw text editor but parse the AST all the time to get IDE like features.

I could agree with maybe a more partial version where you have AST nodes and some are just raw text like the math equation example. That would loose all meaning of shared identifiers and such though.

I feel a bit beaten at this point and ended up abandoning this due to a never ending stop of complexity for virtually no benefit. Which is sort of the whole problem of inventing in this area. We can’t achvieve the same original feel as a raw text editor, so why even bother.

I would still love to see innovation or other examples of an AST editor, so if you see anything please let me know!

### Next Month [#](#next-month)

The last part will come out next month, where we’ll look into a middle ground, the ***Token Based Editor***.

* [Documentation Update](#documentation-update)
* [Projects shared this month](#projects-shared-this-month)
* [Introduction To Odin (karl\_zylinski)](#introduction-to-odin-karl_zylinski)
* [Game Engine Dev, Explained for Non-Programmers (Massimog)](#game-engine-dev-explained-for-non-programmers-massimog)
* [An After Effects Plug-in In Odin? (graphisco)](#an-after-effects-plug-in-in-odin-graphisco)
  + [Feature 1: context](#feature-1-context)
  + [Feature 2: or\_return](#feature-2-or_return)
* [Text Editor Experimentation #3 (Skytrias)](#text-editor-experimentation-3-skytrias)
  + [First Step](#first-step)
  + [How Editors Work](#how-editors-work)
  + [Navigation](#navigation)
  + [Editing](#editing)
  + [Insertion Feels Good](#insertion-feels-good)
  + [Editing Nodes Will Feel Bad](#editing-nodes-will-feel-bad)
  + [Supporting Existing Code](#supporting-existing-code)
  + [Ending Notes](#ending-notes)
  + [Next Month](#next-month)

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