package darwin/CoreVideo - pkg.odin-lang.org 






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



Current Package: *[CoreVideo](/vendor/darwin/CoreVideo)*

  

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
2. darwin
3. [CoreVideo](/vendor/darwin/CoreVideo)

# package vendor:darwin/CoreVideo [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [CoreVideo](https://developer.apple.com/documentation/corevideo).

## Index

Types (6)

* [CVSMPTETime](#CVSMPTETime)
* [DisplayLinkOutputCallback](#DisplayLinkOutputCallback)
* [DisplayLinkRef](#DisplayLinkRef)
* [OptionFlags](#OptionFlags)
* [Return](#Return)
* [TimeStamp](#TimeStamp)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (6)

* [DisplayLinkCreateWithActiveCGDisplays](#DisplayLinkCreateWithActiveCGDisplays)
* [DisplayLinkRelease](#DisplayLinkRelease)
* [DisplayLinkRetain](#DisplayLinkRetain)
* [DisplayLinkSetOutputCallback](#DisplayLinkSetOutputCallback)
* [DisplayLinkStart](#DisplayLinkStart)
* [DisplayLinkStop](#DisplayLinkStop)

Procedure Groups (0)

This section is empty.

## Types

### [CVSMPTETime ¶](#CVSMPTETime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L19)

```
CVSMPTETime :: struct {
	sbuframes:       i16,
	subframeDivisor: i16,
	count:           u32,
	type:            u32,
	flags:           u32,
	hours:           i16,
	minutes:         i16,
	seconds:         i16,
	frames:          i16,
}
```

### [DisplayLinkOutputCallback ¶](#DisplayLinkOutputCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L32)

```
DisplayLinkOutputCallback :: proc "c" (displayLink: DisplayLinkRef, #by_ptr inNow: TimeStamp, #by_ptr inOutputTime: TimeStamp, flagsIn: u64, flagsOut: ^u64, displayLinkContext: rawptr) -> i32
```

##### Related Procedures With Parameters

* [DisplayLinkSetOutputCallback](/vendor/darwin/CoreVideo/#DisplayLinkSetOutputCallback)

### [DisplayLinkRef ¶](#DisplayLinkRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L4)

```
DisplayLinkRef :: distinct rawptr
```

##### Related Procedures With Parameters

* [DisplayLinkCreateWithActiveCGDisplays](/vendor/darwin/CoreVideo/#DisplayLinkCreateWithActiveCGDisplays)
* [DisplayLinkRelease](/vendor/darwin/CoreVideo/#DisplayLinkRelease)
* [DisplayLinkRetain](/vendor/darwin/CoreVideo/#DisplayLinkRetain)
* [DisplayLinkSetOutputCallback](/vendor/darwin/CoreVideo/#DisplayLinkSetOutputCallback)
* [DisplayLinkStart](/vendor/darwin/CoreVideo/#DisplayLinkStart)
* [DisplayLinkStop](/vendor/darwin/CoreVideo/#DisplayLinkStop)

### [OptionFlags ¶](#OptionFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L31)

```
OptionFlags :: u64
```

### [Return ¶](#Return) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L5)

```
Return :: i32
```

##### Related Procedures With Returns

* [DisplayLinkCreateWithActiveCGDisplays](/vendor/darwin/CoreVideo/#DisplayLinkCreateWithActiveCGDisplays)
* [DisplayLinkSetOutputCallback](/vendor/darwin/CoreVideo/#DisplayLinkSetOutputCallback)
* [DisplayLinkStart](/vendor/darwin/CoreVideo/#DisplayLinkStart)
* [DisplayLinkStop](/vendor/darwin/CoreVideo/#DisplayLinkStop)

### [TimeStamp ¶](#TimeStamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L7)

```
TimeStamp :: struct {
	version:            u32,
	videoTimeScale:     i32,
	videoTime:          i64,
	hostTime:           u64,
	rateScalar:         f64,
	videoRefreshPeriod: i64,
	smpteTime:          CVSMPTETime,
	flags:              u64,
	reserved:           u64,
}
```

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [DisplayLinkCreateWithActiveCGDisplays ¶](#DisplayLinkCreateWithActiveCGDisplays) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L37)

```
DisplayLinkCreateWithActiveCGDisplays :: proc "c" (displayLinkOut: ^DisplayLinkRef) -> i32 ---
```

### [DisplayLinkRelease ¶](#DisplayLinkRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L41)

```
DisplayLinkRelease :: proc "c" (displayLink: DisplayLinkRef) ---
```

### [DisplayLinkRetain ¶](#DisplayLinkRetain) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L42)

```
DisplayLinkRetain :: proc "c" (displayLink: DisplayLinkRef) -> DisplayLinkRef ---
```

### [DisplayLinkSetOutputCallback ¶](#DisplayLinkSetOutputCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L40)

```
DisplayLinkSetOutputCallback :: proc "c" (displayLink: DisplayLinkRef, callback: DisplayLinkOutputCallback, userInfo: rawptr) -> i32 ---
```

### [DisplayLinkStart ¶](#DisplayLinkStart) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L38)

```
DisplayLinkStart :: proc "c" (displayLink: DisplayLinkRef) -> i32 ---
```

### [DisplayLinkStop ¶](#DisplayLinkStop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin#L39)

```
DisplayLinkStop :: proc "c" (displayLink: DisplayLinkRef) -> i32 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [CVDisplayLink.odin](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/CoreVideo/CVDisplayLink.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.183311700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [CVSMPTETime](#CVSMPTETime)
    + [DisplayLinkOutputCallback](#DisplayLinkOutputCallback)
    + [DisplayLinkRef](#DisplayLinkRef)
    + [OptionFlags](#OptionFlags)
    + [Return](#Return)
    + [TimeStamp](#TimeStamp)
  * [Procedures](#pkg-Procedures)
    + [DisplayLinkCreateWithActiveCGDisplays](#DisplayLinkCreateWithActiveCGDisplays)
    + [DisplayLinkRelease](#DisplayLinkRelease)
    + [DisplayLinkRetain](#DisplayLinkRetain)
    + [DisplayLinkSetOutputCallback](#DisplayLinkSetOutputCallback)
    + [DisplayLinkStart](#DisplayLinkStart)
    + [DisplayLinkStop](#DisplayLinkStop)
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