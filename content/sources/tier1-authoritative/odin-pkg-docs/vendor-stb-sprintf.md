package stb/sprintf - pkg.odin-lang.org 






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



Current Package: *[stb\_sprintf](/vendor/stb/sprintf)*

  

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
3. [sprintf](/vendor/stb/sprintf)

# package vendor:stb/sprintf [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf)

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (1)

* [SPRINTFCB](#SPRINTFCB)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (5)

* [snprintf](#snprintf)
* [sprintf](#sprintf)
* [vsnprintf](#vsnprintf)
* [vsprintf](#vsprintf)
* [vsprintfcb](#vsprintfcb)

Procedure Groups (0)

This section is empty.

## Types

### [SPRINTFCB ¶](#SPRINTFCB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf/stb_sprintf.odin#L37)

```
SPRINTFCB :: proc "c" (buf: [^]u8, user: rawptr, len: i32) -> cstring
```

##### Related Procedures With Parameters

* [vsprintfcb](/vendor/stb/sprintf/#vsprintfcb)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [snprintf ¶](#snprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf/stb_sprintf.odin#L31)

```
snprintf :: proc "c" (buf: [^]u8, count: i32, fmt: cstring, .. args: ..any) -> i32 ---
```

### [sprintf ¶](#sprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf/stb_sprintf.odin#L30)

```
sprintf :: proc "c" (buf: [^]u8, fmt: cstring, .. args: ..any) -> i32 ---
```

### [vsnprintf ¶](#vsnprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf/stb_sprintf.odin#L33)

```
vsnprintf :: proc "c" (buf: [^]u8, count: i32, fmt: cstring, va: ^c.va_list) -> i32 ---
```

### [vsprintf ¶](#vsprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf/stb_sprintf.odin#L32)

```
vsprintf :: proc "c" (buf: [^]u8, fmt: cstring, va: ^c.va_list) -> i32 ---
```

### [vsprintfcb ¶](#vsprintfcb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf/stb_sprintf.odin#L34)

```
vsprintfcb :: proc "c" (callback: SPRINTFCB, user: rawptr, buf: [^]u8, fmt: cstring, va: ^c.va_list) -> i32 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [stb\_sprintf.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/sprintf/stb_sprintf.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.551526900 +0000 UTC`

* [Types](#pkg-Types)
  + [SPRINTFCB](#SPRINTFCB)
* [Procedures](#pkg-Procedures)
  + [snprintf](#snprintf)
  + [sprintf](#sprintf)
  + [vsnprintf](#vsnprintf)
  + [vsprintf](#vsprintf)
  + [vsprintfcb](#vsprintfcb)
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