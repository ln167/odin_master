package stb/rect\_pack - pkg.odin-lang.org 






[![Odin](https://odin-lang.org/logo.svg)](https://odin-lang.org/)


* [Home](https://odin-lang.org/)
* [Docs](https://odin-lang.org/docs)
* [Packages](/)
* [News](https://odin-lang.org/news)
* [Showcase](https://odin-lang.org/showcase)
* [Forum](https://forum.odin-lang.org)
* [Community](https://odin-lang.org/community)
* [GitHub](https://github.com/odin-lang/Odin)
* Appearance:



Current Package: *[stb\_rect\_pack](/vendor/stb/rect_pack)*

  

#### [vendor Library](/vendor)

* [box2d](/vendor/box2d)
* [cgltf](/vendor/cgltf)
* [commonmark](/vendor/commonmark)
* compress
  + [lz4](/vendor/compress/lz4)
* [curl](/vendor/curl)
* darwin
  + [CoreVideo](/vendor/darwin/CoreVideo)
  + [Metal](/vendor/darwin/Metal)
  + [MetalKit](/vendor/darwin/MetalKit)
  + [QuartzCore](/vendor/darwin/QuartzCore)
* directx
  + [d3d11](/vendor/directx/d3d11)
  + [d3d12](/vendor/directx/d3d12)
  + [d3d\_common](/vendor/directx/d3d_common)
  + [dxc](/vendor/directx/dxc)
  + [dxgi](/vendor/directx/dxgi)
* [ENet](/vendor/ENet)
* [fontstash](/vendor/fontstash)
* [ggpo](/vendor/ggpo)
* [glfw](/vendor/glfw)
  + [bindings](/vendor/glfw/bindings)
* [kb\_text\_shape](/vendor/kb_text_shape)
* [libc-shim](/vendor/libc-shim)
* lua
  + [5.4](/vendor/lua/5.4)
* [microui](/vendor/microui)
* [miniaudio](/vendor/miniaudio)
* [nanovg](/vendor/nanovg)
  + [gl](/vendor/nanovg/gl)
* [OpenEXRCore](/vendor/OpenEXRCore)
* [OpenGL](/vendor/OpenGL)
* [portmidi](/vendor/portmidi)
* [raylib](/vendor/raylib)
* [sdl2](/vendor/sdl2)
  + [image](/vendor/sdl2/image)
  + [mixer](/vendor/sdl2/mixer)
  + [net](/vendor/sdl2/net)
  + [ttf](/vendor/sdl2/ttf)
* [sdl3](/vendor/sdl3)
  + [image](/vendor/sdl3/image)
  + [ttf](/vendor/sdl3/ttf)
* stb
  + [easy\_font](/vendor/stb/easy_font)
  + [image](/vendor/stb/image)
  + [rect\_pack](/vendor/stb/rect_pack)
  + [sprintf](/vendor/stb/sprintf)
  + [truetype](/vendor/stb/truetype)
  + [vorbis](/vendor/stb/vorbis)
* [vulkan](/vendor/vulkan)
* wasm
  + [WebGL](/vendor/wasm/WebGL)
* [wgpu](/vendor/wgpu)
  + [glfwglue](/vendor/wgpu/glfwglue)
  + [sdl2glue](/vendor/wgpu/sdl2glue)
  + [sdl3glue](/vendor/wgpu/sdl3glue)
* windows
  + [GameInput](/vendor/windows/GameInput)
  + [XAudio2](/vendor/windows/XAudio2)
* x11
  + [xlib](/vendor/x11/xlib)
* [zlib](/vendor/zlib)

1. [vendor](/vendor)
2. stb
3. [rect\_pack](/vendor/stb/rect_pack)

# package vendor:stb/rect\_pack [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [stb\_rect\_pack.h](https://github.com/nothings/stb/blob/master/stb_rect_pack.h).

## Index

Types (5)

* [Context](#Context)
* [Coord](#Coord)
* [Heuristic](#Heuristic)
* [Node](#Node)
* [Rect](#Rect)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (4)

* [init\_target](#init_target)
* [pack\_rects](#pack_rects)
* [setup\_allow\_out\_of\_mem](#setup_allow_out_of_mem)
* [setup\_heuristic](#setup_heuristic)

Procedure Groups (0)

This section is empty.

## Types

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L62)

```
Context :: struct {
	width:       i32,
	height:      i32,
	align:       i32,
	init_mode:   i32,
	heuristic:   Heuristic,
	num_nodes:   i32,
	active_head: ^Node,
	free_head:   ^Node,
	extra:       [2]Node,
}
```

##### Related Procedures With Parameters

* [init\_target](/vendor/stb/rect_pack/#init_target)
* [pack\_rects](/vendor/stb/rect_pack/#pack_rects)
* [setup\_allow\_out\_of\_mem](/vendor/stb/rect_pack/#setup_allow_out_of_mem)
* [setup\_heuristic](/vendor/stb/rect_pack/#setup_heuristic)

### [Coord ¶](#Coord) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L31)

```
Coord :: distinct i32
```

### [Heuristic ¶](#Heuristic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L46)

```
Heuristic :: enum i32 {
	Skyline_default       = 0, 
	Skyline_BL_sortHeight = 0, 
	Skyline_BF_sortHeight, 
}
```

##### Related Procedures With Parameters

* [setup\_heuristic](/vendor/stb/rect_pack/#setup_heuristic)

### [Node ¶](#Node) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L57)

```
Node :: struct {
	x:    Coord,
	y:    Coord,
	next: ^Node,
}
```

##### Related Procedures With Parameters

* [init\_target](/vendor/stb/rect_pack/#init_target)

### [Rect ¶](#Rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L34)

```
Rect :: struct {
	// reserved for your use:
	id:         i32,
	// input:
	w:          Coord,
	h:          Coord,
	// output:
	x:          Coord,
	y:          Coord,
	was_packed: b32,
}
```

##### Related Procedures With Parameters

* [pack\_rects](/vendor/stb/rect_pack/#pack_rects)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [init\_target ¶](#init_target) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L122)

```
init_target :: proc "c" (ctx: ^Context, width, height: i32, nodes: [^]Node, num_nodes: i32) ---
```

 

Initialize a rectangle packer to:
pack a rectangle that is 'width' by 'height' in dimensions
using temporary storage provided by the array 'nodes', which is 'num\_nodes' long

You must call this function every time you start packing into a new target.

There is no "shutdown" function. The 'nodes' memory must stay valid for
the following pack\_rects() call (or calls), but can be freed after
the call (or calls) finish.

Note: to guarantee best results, either:
1. make sure 'num\_nodes' >= 'width'
or 2. call setup\_allow\_out\_of\_mem() defined below with 'allow\_out\_of\_mem = 1'

If you don't do either of the above things, widths will be quantized to multiples
of small integers to guarantee the algorithm doesn't run out of temporary storage.

If you do #2, then the non-quantized algorithm will be used, but the algorithm
may run out of temporary storage and be unable to pack some rectangles.

### [pack\_rects ¶](#pack_rects) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L100)

```
pack_rects :: proc "c" (ctx: ^Context, rects: [^]Rect, num_rects: i32) -> i32 ---
```

 

Assign packed locations to rectangles. The rectangles are of type
'Rect' defined below, stored in the array 'rects', and there
are 'num\_rects' many of them.

Rectangles which are successfully packed have the 'was\_packed' flag
set to a non-zero value and 'x' and 'y' store the minimum location
on each axis (i.e. bottom-left in cartesian coordinates, top-left
if you imagine y increasing downwards). Rectangles which do not fit
have the 'was\_packed' flag set to 0.

You should not try to access the 'rects' array from another thread
while this function is running, as the function temporarily reorders
the array while it executes.

To pack into another rectangle, you need to call init\_target
again. To continue packing into the same rectangle, you can call
this function again. Calling this multiple times with multiple rect
arrays will probably produce worse packing results than calling it
a single time with the full rectangle array, but the option is
available.

The function returns 1 if all of the rectangles were successfully
packed and 0 otherwise.

### [setup\_allow\_out\_of\_mem ¶](#setup_allow_out_of_mem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L127)

```
setup_allow_out_of_mem :: proc "c" (ctx: ^Context, allow_out_of_mem: b32) ---
```

 

Optionally call this function after init but before doing any packing to
change the handling of the out-of-temp-memory scenario, described above.
If you call init again, this will be reset to the default (false).

### [setup\_heuristic ¶](#setup_heuristic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin#L132)

```
setup_heuristic :: proc "c" (ctx: ^Context, heuristic: Heuristic) ---
```

 

Optionally select which packing heuristic the library should use. Different
heuristics will produce better/worse results for different data sets.
If you call init again, this will be reset to the default.

## Procedure Groups

This section is empty.

## Source Files

* [stb\_rect\_pack.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/rect_pack/stb_rect_pack.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.549453900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context](#Context)
    + [Coord](#Coord)
    + [Heuristic](#Heuristic)
    + [Node](#Node)
    + [Rect](#Rect)
  * [Procedures](#pkg-Procedures)
    + [init\_target](#init_target)
    + [pack\_rects](#pack_rects)
    + [setup\_allow\_out\_of\_mem](#setup_allow_out_of_mem)
    + [setup\_heuristic](#setup_heuristic)
  * [Source Files](#pkg-source-files)



[![Odin](https://odin-lang.org/logo.svg)](https://odin-lang.org)

The Data-Oriented Language for Sane Software Development.

#### Resources

* [Docs](https://odin-lang.org/docs)
* [Packages](https://pkg.odin-lang.org/)
* [News](https://odin-lang.org/news)


#### Community

* [GitHub](https://github.com/odin-lang/Odin)
* [Forum](https://forum.odin-lang.org)
* [Discord](https://discord.com/invite/sVBPHEv)
* [Twitch](https://www.twitch.tv/ginger_bill)
* [YouTube](https://www.youtube.com/channel/UCUSck1dOH7VKmG4lRW7tZXg)
* [Showcase](https://odin-lang.org/showcase)


#### Contribute

* [Issues](https://github.com/odin-lang/Odin/issues)
* [Donate](https://www.patreon.com/gingerbill)

© 2016–2023 Ginger Bill