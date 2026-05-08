Orca Odin Support | Odin Programming Language 

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
2. [Orca odin](/news/orca-odin)

# Orca Odin Support

2024-12-11

## WebAssembly apps without the web. [#](#webassembly-apps-without-the-web)

[A brand-new stack for cross-platform apps.](https://orca-app.dev)

For more detailed information you can read up on the link above. Please note that Orca is still work in progress.

## Orca [#](#orca)

Orca is a new target `-target:orca_wasm32` that Odin now supports! It outputs a WASM blob that can be bundled through the Orca pipeline.

### Bindings Generator [#](#bindings-generator)

Michael Kutowski (Skytrias) focused on getting the automatic bindings generator up and running. It’s a Python script which takes in the `api.json` that’s generated through the Orca source code.

Binding generator: [orca-app/orca-odin](https://github.com/orca-app/orca-odin)

Core library: [core:sys/orca](https://github.com/odin-lang/Odin/blob/master/core/sys/orca/odin.odin)

### Compiler Support [#](#compiler-support)

gingerBill and Laytan implemented the Orca target properly in the compiler and made sure it works properly.

### User Experience [#](#user-experience)

There are a few things which Odin also does to make the experience of developing for the Orca target more pleasant:

* main entrypoint automatically bound to the `on_init` event from Orca
* `@fini` calls are bound to `on_terminate` event
* `core:log` can be used normally and uses Orca logging
* str8 type from Orca maps natively to Odin’s string type
* [C Macros](https://github.com/orca-app/orca-odin/blob/master/macros.odin) are implemented as normal procedures on the Odin side
* Usage of macros for defer are done through @deferred calls

## Orca Original Examples [#](#orca-original-examples)

The Odin [examples](https://github.com/odin-lang/examples/tree/master/orca) repo includes ports of the C Orca examples for more full fledged examples of using Orca with Odin.

## Orca Step By Step [#](#orca-step-by-step)

In the following examples you can see how easy it is to create programs now!
Additionally, you also need to specify the output, as shown below, which will then be used by Orca to bundle up the application. All examples can be built this way.

```
odin build src -target:orca_wasm32 -out:module.wasm 
orca bundle --name output module.wasm
```

I’ve added comments on most lines to describe what is happening, the examples should be read top to bottom.

### Orca Package (Bindings) [#](#orca-package-bindings)

[core:sys/orca](https://github.com/odin-lang/Odin/blob/master/core/sys/orca/odin.odin) for a quick cheatsheet of all the procedures available.

### Plain Window [#](#plain-window)

```
package src

main :: proc() {}
```

![](/images/news/orca_plain_window.png)

That looks easy! Even simpler than [raylib](https://www.raylib.com) and reminds me of game libraries like [love2d](https://love2d.org) where things just work.

### Rectangle Fill (Fixed Size) [#](#rectangle-fill-fixed-size)

```
package src

import oc "core:sys/orca"

// globals
surface: oc.surface
renderer: oc.canvas_renderer
canvas: oc.canvas_context

main :: proc() {
  // init globals
  renderer = oc.canvas_renderer_create()
  surface = oc.canvas_surface_create(renderer)
  canvas = oc.canvas_context_create()
}

// Export the 'oc_on_frame_refresh' implemented call so it's bound to the Orca application.
@(export)
oc_on_frame_refresh :: proc "c" () {
  // This runs every frame and we just want to setup the canvas fresh.
  oc.canvas_context_select(canvas)
  oc.set_color_rgba(1, 1, 1, 1)
  oc.clear()

  // Set a RGBA color and fill a rectangular region on the screen (x y w h).
  oc.set_color_rgba(0, 0, 0, 1)
  oc.rectangle_fill(50, 50, 100, 10)
  
  // Finish all the canvas operations up and render them to the screen.
  oc.canvas_render(renderer, canvas, surface)
  oc.canvas_present(renderer, surface)    
}
```

![](/images/news/orca_rectangle_fill_fixed.png)

### Rectangle Fill (Window Sized) [#](#rectangle-fill-window-sized)

```
package src

import oc "core:sys/orca"

surface: oc.surface
renderer: oc.canvas_renderer
canvas: oc.canvas_context
frame_size: oc.vec2 = {500, 500} // Our wanted starting window size

main :: proc() {
  renderer = oc.canvas_renderer_create()
  surface = oc.canvas_surface_create(renderer)
  canvas = oc.canvas_context_create()

  // We provide our wanted dimensions at startup.
  oc.window_set_size(frame_size)
}

// Export the 'oc_on_resize' implemented call so it's bound to the Orca application. This will be called whenever the window size changes.
@(export)
oc_on_resize :: proc "c" (width, height: u32) {
  frame_size.x = f32(width)
  frame_size.y = f32(height)
}

@(export)
oc_on_frame_refresh :: proc "c" () {
  oc.canvas_context_select(canvas)
  oc.set_color_rgba(1, 1, 1, 1)
  oc.clear()

  // Set the color to black and fill the window subtracted by some margin.
  oc.set_color_rgba(0, 0, 0, 1)
  SIZE :: 50
  width := frame_size.x - SIZE * 2
  height := frame_size.y - SIZE * 2
  oc.rectangle_fill(SIZE, SIZE, width, height)

  oc.canvas_render(renderer, canvas, surface)
  oc.canvas_present(renderer, surface)    
}
```

![](/images/news/orca_rectangle_fill_window.png)

### Text Rendering [#](#text-rendering)

The next example uses a resource that needs to be specified:

```
odin build src -target:orca_wasm32 -out:module.wasm 
orca bundle --name output --resource-dir data module.wasm
```

```
package src

import oc "core:sys/orca"

surface: oc.surface
renderer: oc.canvas_renderer
canvas: oc.canvas_context
font: oc.font // font global

main :: proc() {
  renderer = oc.canvas_renderer_create()
  surface = oc.canvas_surface_create(renderer)
  canvas = oc.canvas_context_create()

  // NOTE: This is temporary and will change soon
  // Describe wanted unicode ranges to usable for rendering
  ranges := [?]oc.unicode_range {
    oc.UNICODE_BASIC_LATIN,
    oc.UNICODE_C1_CONTROLS_AND_LATIN_1_SUPPLEMENT,
    oc.UNICODE_LATIN_EXTENDED_A,
    oc.UNICODE_LATIN_EXTENDED_B,
    oc.UNICODE_SPECIALS,
  }

  // Create the font from a TTF asset that needs to be provided.
  font = oc.font_create_from_path("segoeui.ttf", 5, &ranges[0])    
}

@(export)
oc_on_frame_refresh :: proc "c" () {
  oc.canvas_context_select(canvas)
  oc.set_color_rgba(1, 1, 1, 1)
  oc.clear()

  // Set the wanted font and a size.
  oc.set_font(font)
  oc.set_font_size(40)

  // Similar to before set a color and the text we want to draw at x & y.
  oc.set_color_rgba(0, 0, 0, 1)
  oc.text_fill(50, 50, "Hello World")

  oc.canvas_render(renderer, canvas, surface)
  oc.canvas_present(renderer, surface)    
}
```

![](/images/news/orca_text_rendering.png)

### Rectangle Fill following Mouse [#](#rectangle-fill-following-mouse)

```
package src

import oc "core:sys/orca"

surface: oc.surface
renderer: oc.canvas_renderer
canvas: oc.canvas_context
mouse: oc.vec2

main :: proc() {
  renderer = oc.canvas_renderer_create()
  surface = oc.canvas_surface_create(renderer)
  canvas = oc.canvas_context_create()
}

// Export the 'oc_on_raw_event' implemented call so it's bound to the Orca application. This way we can check for window specific events like mouse movement, mouse clicks, keyboard events etc.
@(export)
oc_on_raw_event :: proc "c" (event: ^oc.event) {
  if event.type == .MOUSE_MOVE {
    mouse = { event.mouse.x, event.mouse.y }
  }    
}

@(export)
oc_on_frame_refresh :: proc "c" () {
  oc.canvas_context_select(canvas)
  oc.set_color_rgba(1, 1, 1, 1)
  oc.clear()

  // Fill the rectangle region while x & y is following the mouse.
  oc.set_color_rgba(0, 0, 0, 1)
  oc.rectangle_fill(mouse.x - 50, mouse.y - 50, 100, 100)

  oc.canvas_render(renderer, canvas, surface)
  oc.canvas_present(renderer, surface)    
}
```

* [WebAssembly apps without the web.](#webassembly-apps-without-the-web)
* [Orca](#orca)
  + [Bindings Generator](#bindings-generator)
  + [Compiler Support](#compiler-support)
  + [User Experience](#user-experience)
* [Orca Original Examples](#orca-original-examples)
* [Orca Step By Step](#orca-step-by-step)
  + [Orca Package (Bindings)](#orca-package-bindings)
  + [Plain Window](#plain-window)
  + [Rectangle Fill (Fixed Size)](#rectangle-fill-fixed-size)
  + [Rectangle Fill (Window Sized)](#rectangle-fill-window-sized)
  + [Text Rendering](#text-rendering)
  + [Rectangle Fill following Mouse](#rectangle-fill-following-mouse)

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