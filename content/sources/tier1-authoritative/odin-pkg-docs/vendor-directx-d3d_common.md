package directx/d3d\_common - pkg.odin-lang.org 






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



Current Package: *[d3d\_common](/vendor/directx/d3d_common)*

  

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
2. directx
3. [d3d\_common](/vendor/directx/d3d_common)

# package vendor:directx/d3d\_common [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Declarations shared between D3D versions.
Based on d3dcommon.h

## Index

Types (8)

* [ID3D10Blob](#ID3D10Blob)
* [ID3D10Blob\_VTable](#ID3D10Blob_VTable)
* [ID3DBlob](#ID3DBlob)
* [ID3DBlob\_VTable](#ID3DBlob_VTable)
* [IID](#IID)
* [IUnknown](#IUnknown)
* [IUnknown\_VTable](#IUnknown_VTable)
* [SIZE\_T](#SIZE_T)

Constants (1)

* [ID3D10Blob\_UUID\_STRING](#ID3D10Blob_UUID_STRING)

Variables (1)

* [ID3D10Blob\_UUID](#ID3D10Blob_UUID)

Procedures (0)

This section is empty.

Procedure Groups (0)

This section is empty.

## Types

### [ID3D10Blob ¶](#ID3D10Blob) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L14)

```
ID3D10Blob :: struct #raw_union {
	iunknown:          sys_windows.IUnknown,
	using id3d10blob_vtable: ^ID3D10Blob_VTable,
}
```

### [ID3D10Blob\_VTable ¶](#ID3D10Blob_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L18)

```
ID3D10Blob_VTable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetBufferPointer: proc "stdcall" (this: ^ID3D10Blob) -> rawptr,
	GetBufferSize:    proc "stdcall" (this: ^ID3D10Blob) -> uint,
}
```

### [ID3DBlob ¶](#ID3DBlob) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L24)

```
ID3DBlob :: ID3D10Blob
```

### [ID3DBlob\_VTable ¶](#ID3DBlob_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L25)

```
ID3DBlob_VTable :: ID3D10Blob_VTable
```

### [IID ¶](#IID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L7)

```
IID :: sys_windows.GUID
```

### [IUnknown ¶](#IUnknown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L9)

```
IUnknown :: sys_windows.IUnknown
```

### [IUnknown\_VTable ¶](#IUnknown_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L10)

```
IUnknown_VTable :: sys_windows.IUnknown_VTable
```

### [SIZE\_T ¶](#SIZE_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L8)

```
SIZE_T :: uint
```

## Constants

### [ID3D10Blob\_UUID\_STRING ¶](#ID3D10Blob_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L12)

```
ID3D10Blob_UUID_STRING :: "8BA5FB08-5195-40E2-AC58-0D989C3A0102"
```

## Variables

### [ID3D10Blob\_UUID ¶](#ID3D10Blob_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin#L13)

```
ID3D10Blob_UUID: ^sys_windows.GUID = …
```

## Procedures

This section is empty.

## Procedure Groups

This section is empty.

## Source Files

* [d3d\_common.odin](https://github.com/odin-lang/Odin/tree/master/vendor/directx/d3d_common/d3d_common.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.893743600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [ID3D10Blob](#ID3D10Blob)
    + [ID3D10Blob\_VTable](#ID3D10Blob_VTable)
    + [ID3DBlob](#ID3DBlob)
    + [ID3DBlob\_VTable](#ID3DBlob_VTable)
    + [IID](#IID)
    + [IUnknown](#IUnknown)
    + [IUnknown\_VTable](#IUnknown_VTable)
    + [SIZE\_T](#SIZE_T)
  * [Constants](#pkg-Constants)
    + [ID3D10Blob\_UUID\_STRING](#ID3D10Blob_UUID_STRING)
  * [Variables](#pkg-Variables)
    + [ID3D10Blob\_UUID](#ID3D10Blob_UUID)
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