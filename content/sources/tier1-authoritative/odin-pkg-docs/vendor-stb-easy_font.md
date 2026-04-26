package stb/easy\_font - pkg.odin-lang.org 






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



Current Package: *[stb\_easy\_font](/vendor/stb/easy_font)*

  

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
3. [easy\_font](/vendor/stb/easy_font)

# package vendor:stb/easy\_font [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

An Odin-native source port of [stb\_easy\_font.h](https://github.com/nothings/stb/blob/master/stb_easy_font.h).

**Example:**

```
quads: [999]easy_font.Quad = ---

color := rl.GREEN
c     := transmute(easy_font.Color)color
num_quads := easy_font.print(10, 60, TEXT, c, quads[:])

for q in quads[:num_quads] {
	tl    := q.tl.v
	br    := q.br.v
	color  = transmute(rl.Color)q.tl.c

	r := rl.Rectangle{x = tl.x, y = tl.y, width = br.x - tl.x, height = br.y - tl.y}

	// Yes, we could just use the `color` from above, but this shows how to get it back from the vertex.
	// And in practice this code will likely not live as close to the `easy_font` call.
	rl.DrawRectangleRec(r, color)
}
```

Changelog:

```
2022-04-03
	Bug fixes
	Add `print(x, y, text, color, quad_buffer)` version that takes `[]quad`.
		(Same internal memory layout as []u8 API, but more convenient for the caller.)
	Add optional `scale := f32(1.0)` param to `print` to embiggen the glyph quads.

2021-09-14
	Original Odin version
```

Credits:

```
Original port: gingerBill
Bugfixes:      Florian Behr & Jeroen van Rijn
Additions:     Jeroen van Rijn
```

## Index

Types (4)

* [Color](#Color)
* [Quad](#Quad)
* [Vertex](#Vertex)
* [info\_struct](#info_struct)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (7)

* [draw\_segs\_quad\_buffer](#draw_segs_quad_buffer)
* [draw\_segs\_vertex\_buffer](#draw_segs_vertex_buffer)
* [font\_spacing](#font_spacing)
* [height](#height)
* [print\_quad\_buffer](#print_quad_buffer)
* [print\_vertex\_buffer](#print_vertex_buffer)
* [width](#width)

Procedure Groups (2)

* [draw\_segs](#draw_segs)
* [print](#print)

## Types

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L44)

```
Color :: [4]u8
```

##### Related Procedures With Parameters

* [draw\_segs\_quad\_buffer](/vendor/stb/easy_font/#draw_segs_quad_buffer)
* [draw\_segs\_vertex\_buffer](/vendor/stb/easy_font/#draw_segs_vertex_buffer)
* [print\_quad\_buffer](/vendor/stb/easy_font/#print_quad_buffer)
* [print\_vertex\_buffer](/vendor/stb/easy_font/#print_vertex_buffer)
* [draw\_segs](/vendor/stb/easy_font/#draw_segs) *(procedure groups)*
* [print](/vendor/stb/easy_font/#print) *(procedure groups)*

### [Quad ¶](#Quad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L52)

```
Quad :: struct #packed {
	tl: Vertex,
	tr: Vertex,
	br: Vertex,
	bl: Vertex,
}
```

### [Vertex ¶](#Vertex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L46)

```
Vertex :: struct {
	v: [3]f32,
	c: [4]u8,
}
```

### [info\_struct ¶](#info_struct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L188)

```
info_struct :: struct {
	advance: u8,
	h_seg:   u8,
	v_seg:   u8,
}
```

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [draw\_segs\_quad\_buffer ¶](#draw_segs_quad_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L61)

```
draw_segs_quad_buffer :: proc(
	x, y:         f32, 
	segs:         []u8, 
	vertical:     bool, 
	c:            [4]u8, 
	buf:          []Quad, 
	start_offset: int, 
	scale:        f32 = f32(1.0), 
) -> (quads: int) {…}
```

 

Same memory layout, but takes a []quad instead of []byte




##### Related Procedure Groups

* [draw\_segs](/vendor/stb/easy_font/#draw_segs)

### [draw\_segs\_vertex\_buffer ¶](#draw_segs_vertex_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L93)

```
draw_segs_vertex_buffer :: proc(
	x, y:         f32, 
	segs:         []u8, 
	vertical:     bool, 
	c:            [4]u8, 
	vbuf:         []u8, 
	start_offset: int, 
	scale:        f32 = f32(1.0), 
) -> (offset: int) {…}
```

 

Compatible with original C API




##### Related Procedure Groups

* [draw\_segs](/vendor/stb/easy_font/#draw_segs)

### [font\_spacing ¶](#font_spacing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L104)

```
font_spacing :: proc(spacing: f32) {…}
```

### [height ¶](#height) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L172)

```
height :: proc(text: string) -> int {…}
```

### [print\_quad\_buffer ¶](#print_quad_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L109)

```
print_quad_buffer :: proc(
	x, y:        f32, 
	text:        string, 
	color:       [4]u8, 
	quad_buffer: []Quad, 
	scale:       f32 = f32(1.0), 
) -> (quads: int) {…}
```

 

Same memory layout, but takes a []quad instead of []byte




##### Related Procedure Groups

* [print](/vendor/stb/easy_font/#print)

### [print\_vertex\_buffer ¶](#print_vertex_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L144)

```
print_vertex_buffer :: proc(
	x, y:          f32, 
	text:          string, 
	color:         [4]u8, 
	vertex_buffer: []u8, 
	scale:         f32 = f32(1.0), 
) -> int {…}
```

 

Compatible with original C API




##### Related Procedure Groups

* [print](/vendor/stb/easy_font/#print)

### [width ¶](#width) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L151)

```
width :: proc(text: string) -> int {…}
```

## Procedure Groups

### [draw\_segs ¶](#draw_segs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L99)

```
draw_segs :: proc{
	draw_segs_quad_buffer,
	draw_segs_vertex_buffer,
}
```

### [print ¶](#print) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin#L149)

```
print :: proc{
	print_quad_buffer,
	print_vertex_buffer,
}
```

## Source Files

* [stb\_easy\_font.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/easy_font/stb_easy_font.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.536764700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Color](#Color)
    + [Quad](#Quad)
    + [Vertex](#Vertex)
    + [info\_struct](#info_struct)
  * [Procedures](#pkg-Procedures)
    + [draw\_segs\_quad\_buffer](#draw_segs_quad_buffer)
    + [draw\_segs\_vertex\_buffer](#draw_segs_vertex_buffer)
    + [font\_spacing](#font_spacing)
    + [height](#height)
    + [print\_quad\_buffer](#print_quad_buffer)
    + [print\_vertex\_buffer](#print_vertex_buffer)
    + [width](#width)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [draw\_segs](#draw_segs)
    + [print](#print)
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