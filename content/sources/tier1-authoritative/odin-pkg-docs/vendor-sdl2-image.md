package sdl2/image - pkg.odin-lang.org 






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



Current Package: *[sdl2\_image](/vendor/sdl2/image)*

  

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
2. [sdl2](/vendor/sdl2)
3. [image](/vendor/sdl2/image)

# package vendor:sdl2/image [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [SDL2 Image](https://wiki.libsdl.org/SDL2_image/FrontPage).

## Index

Types (4)

* [Animation](#Animation)
* [InitFlag](#InitFlag)
* [InitFlags](#InitFlags)
* [bool](#bool)

Constants (7)

* [INIT\_JPG](#INIT_JPG)
* [INIT\_PNG](#INIT_PNG)
* [INIT\_TIF](#INIT_TIF)
* [INIT\_WEBP](#INIT_WEBP)
* [MAJOR\_VERSION](#MAJOR_VERSION)
* [MINOR\_VERSION](#MINOR_VERSION)
* [PATCHLEVEL](#PATCHLEVEL)

Variables (0)

This section is empty.

Procedures (50)

* [FreeAnimation](#FreeAnimation)
* [Init](#Init)
* [Linked\_Version](#Linked_Version)
* [Load](#Load)
* [LoadAnimation](#LoadAnimation)
* [LoadAnimationTyped\_RW](#LoadAnimationTyped_RW)
* [LoadAnimation\_RW](#LoadAnimation_RW)
* [LoadBMP\_RW](#LoadBMP_RW)
* [LoadCUR\_RW](#LoadCUR_RW)
* [LoadGIFAnimation\_RW](#LoadGIFAnimation_RW)
* [LoadGIF\_RW](#LoadGIF_RW)
* [LoadICO\_RW](#LoadICO_RW)
* [LoadJPG\_RW](#LoadJPG_RW)
* [LoadLBM\_RW](#LoadLBM_RW)
* [LoadPCX\_RW](#LoadPCX_RW)
* [LoadPNG\_RW](#LoadPNG_RW)
* [LoadPNM\_RW](#LoadPNM_RW)
* [LoadSVG\_RW](#LoadSVG_RW)
* [LoadTGA\_RW](#LoadTGA_RW)
* [LoadTIF\_RW](#LoadTIF_RW)
* [LoadTexture](#LoadTexture)
* [LoadTextureTyped\_RW](#LoadTextureTyped_RW)
* [LoadTexture\_RW](#LoadTexture_RW)
* [LoadTyped\_RW](#LoadTyped_RW)
* [LoadWEBP\_RW](#LoadWEBP_RW)
* [LoadXCF\_RW](#LoadXCF_RW)
* [LoadXPM\_RW](#LoadXPM_RW)
* [LoadXV\_RW](#LoadXV_RW)
* [Load\_RW](#Load_RW)
* [Quit](#Quit)
* [ReadXPMFromArray](#ReadXPMFromArray)
* [SaveJPG](#SaveJPG)
* [SaveJPG\_RW](#SaveJPG_RW)
* [SavePNG](#SavePNG)
* [SavePNG\_RW](#SavePNG_RW)
* [isBMP](#isBMP)
* [isCUR](#isCUR)
* [isGIF](#isGIF)
* [isICO](#isICO)
* [isJPG](#isJPG)
* [isLBM](#isLBM)
* [isPCX](#isPCX)
* [isPNG](#isPNG)
* [isPNM](#isPNM)
* [isSVG](#isSVG)
* [isTIF](#isTIF)
* [isWEBP](#isWEBP)
* [isXCF](#isXCF)
* [isXPM](#isXPM)
* [isXV](#isXV)

Procedure Groups (0)

This section is empty.

## Types

### [Animation ¶](#Animation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L41)

```
Animation :: struct {
	w:      i32,
	h:      i32,
	count:  i32,
	frames: [^]^sdl2.Surface,
	delays: [^]i32,
}
```

 

Animated image support
Currently only animated GIFs are supported.




##### Related Procedures With Parameters

* [FreeAnimation](/vendor/sdl2/image/#FreeAnimation)



##### Related Procedures With Returns

* [LoadAnimation](/vendor/sdl2/image/#LoadAnimation)
* [LoadAnimationTyped\_RW](/vendor/sdl2/image/#LoadAnimationTyped_RW)
* [LoadAnimation\_RW](/vendor/sdl2/image/#LoadAnimation_RW)
* [LoadGIFAnimation\_RW](/vendor/sdl2/image/#LoadGIFAnimation_RW)

### [InitFlag ¶](#InitFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L24)

```
InitFlag :: enum i32 {
	JPG  = 0, 
	PNG  = 1, 
	TIF  = 2, 
	WEBP = 3, 
}
```

### [InitFlags ¶](#InitFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L31)

```
InitFlags :: distinct bit_set[InitFlag; i32]
```

##### Related Procedures With Parameters

* [Init](/vendor/sdl2/image/#Init)

##### Related Constants

* [INIT\_JPG](/vendor/sdl2/image/#INIT_JPG)
* [INIT\_PNG](/vendor/sdl2/image/#INIT_PNG)
* [INIT\_TIF](/vendor/sdl2/image/#INIT_TIF)
* [INIT\_WEBP](/vendor/sdl2/image/#INIT_WEBP)

### [bool ¶](#bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L13)

```
bool :: sdl2.bool
```

##### Related Procedures With Parameters

* [LoadAnimationTyped\_RW](/vendor/sdl2/image/#LoadAnimationTyped_RW)
* [LoadAnimation\_RW](/vendor/sdl2/image/#LoadAnimation_RW)
* [LoadTextureTyped\_RW](/vendor/sdl2/image/#LoadTextureTyped_RW)
* [LoadTexture\_RW](/vendor/sdl2/image/#LoadTexture_RW)
* [LoadTyped\_RW](/vendor/sdl2/image/#LoadTyped_RW)
* [Load\_RW](/vendor/sdl2/image/#Load_RW)
* [SaveJPG\_RW](/vendor/sdl2/image/#SaveJPG_RW)
* [SavePNG\_RW](/vendor/sdl2/image/#SavePNG_RW)



##### Related Procedures With Returns

* [isBMP](/vendor/sdl2/image/#isBMP)
* [isCUR](/vendor/sdl2/image/#isCUR)
* [isGIF](/vendor/sdl2/image/#isGIF)
* [isICO](/vendor/sdl2/image/#isICO)
* [isJPG](/vendor/sdl2/image/#isJPG)
* [isLBM](/vendor/sdl2/image/#isLBM)
* [isPCX](/vendor/sdl2/image/#isPCX)
* [isPNG](/vendor/sdl2/image/#isPNG)
* [isPNM](/vendor/sdl2/image/#isPNM)
* [isSVG](/vendor/sdl2/image/#isSVG)
* [isTIF](/vendor/sdl2/image/#isTIF)
* [isWEBP](/vendor/sdl2/image/#isWEBP)
* [isXCF](/vendor/sdl2/image/#isXCF)
* [isXPM](/vendor/sdl2/image/#isXPM)
* [isXV](/vendor/sdl2/image/#isXV)

## Constants

### [INIT\_JPG ¶](#INIT_JPG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L33)

```
INIT_JPG :: InitFlags{.JPG}
```

### [INIT\_PNG ¶](#INIT_PNG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L34)

```
INIT_PNG :: InitFlags{.PNG}
```

### [INIT\_TIF ¶](#INIT_TIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L35)

```
INIT_TIF :: InitFlags{.TIF}
```

### [INIT\_WEBP ¶](#INIT_WEBP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L36)

```
INIT_WEBP :: InitFlags{.WEBP}
```

### [MAJOR\_VERSION ¶](#MAJOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L15)

```
MAJOR_VERSION :: 2
```

### [MINOR\_VERSION ¶](#MINOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L16)

```
MINOR_VERSION :: 0
```

### [PATCHLEVEL ¶](#PATCHLEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L17)

```
PATCHLEVEL :: 5
```

## Variables

This section is empty.

## Procedures

### [FreeAnimation ¶](#FreeAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L120)

```
FreeAnimation :: proc "c" (anim: ^Animation) ---
```

### [Init ¶](#Init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L54)

```
Init :: proc "c" (flags: InitFlags) -> InitFlags ---
```

### [Linked\_Version ¶](#Linked_Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L21)

```
Linked_Version :: proc "c" () -> ^sdl2.version ---
```

### [Load ¶](#Load) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L66)

```
Load :: proc "c" (file: cstring) -> ^sdl2.Surface ---
```

 

Convenience functions

### [LoadAnimation ¶](#LoadAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L117)

```
LoadAnimation :: proc "c" (file: cstring) -> ^Animation ---
```

### [LoadAnimationTyped\_RW ¶](#LoadAnimationTyped_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L119)

```
LoadAnimationTyped_RW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool, type: cstring) -> ^Animation ---
```

### [LoadAnimation\_RW ¶](#LoadAnimation_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L118)

```
LoadAnimation_RW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool) -> ^Animation ---
```

### [LoadBMP\_RW ¶](#LoadBMP_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L94)

```
LoadBMP_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadCUR\_RW ¶](#LoadCUR_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L93)

```
LoadCUR_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadGIFAnimation\_RW ¶](#LoadGIFAnimation_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L123)

```
LoadGIFAnimation_RW :: proc "c" (src: ^sdl2.RWops) -> ^Animation ---
```

 

Individual loading functions

### [LoadGIF\_RW ¶](#LoadGIF_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L95)

```
LoadGIF_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadICO\_RW ¶](#LoadICO_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L92)

```
LoadICO_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

 

Individual loading functions

### [LoadJPG\_RW ¶](#LoadJPG_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L96)

```
LoadJPG_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadLBM\_RW ¶](#LoadLBM_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L97)

```
LoadLBM_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadPCX\_RW ¶](#LoadPCX_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L98)

```
LoadPCX_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadPNG\_RW ¶](#LoadPNG_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L99)

```
LoadPNG_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadPNM\_RW ¶](#LoadPNM_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L100)

```
LoadPNM_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadSVG\_RW ¶](#LoadSVG_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L101)

```
LoadSVG_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadTGA\_RW ¶](#LoadTGA_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L102)

```
LoadTGA_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadTIF\_RW ¶](#LoadTIF_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L103)

```
LoadTIF_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadTexture ¶](#LoadTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L70)

```
LoadTexture :: proc "c" (renderer: ^sdl2.Renderer, file: cstring) -> ^sdl2.Texture ---
```

 

Load an image directly into a render texture.

### [LoadTextureTyped\_RW ¶](#LoadTextureTyped_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L72)

```
LoadTextureTyped_RW :: proc "c" (renderer: ^sdl2.Renderer, src: ^sdl2.RWops, freesrc: sdl2.bool, type: cstring) -> ^sdl2.Texture ---
```

### [LoadTexture\_RW ¶](#LoadTexture_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L71)

```
LoadTexture_RW :: proc "c" (renderer: ^sdl2.Renderer, src: ^sdl2.RWops, freesrc: sdl2.bool) -> ^sdl2.Texture ---
```

### [LoadTyped\_RW ¶](#LoadTyped_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L64)

```
LoadTyped_RW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool, type: cstring) -> ^sdl2.Surface ---
```

 

Load an image from an SDL data source.

```
   The 'type' may be one of: "BMP", "GIF", "PNG", etc.
   If the image format supports a transparent pixel, SDL will set the
   colorkey for the surface.  You can enable RLE acceleration on the
   surface afterwards by calling:
    SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
```

### [LoadWEBP\_RW ¶](#LoadWEBP_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L107)

```
LoadWEBP_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadXCF\_RW ¶](#LoadXCF_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L104)

```
LoadXCF_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadXPM\_RW ¶](#LoadXPM_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L105)

```
LoadXPM_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [LoadXV\_RW ¶](#LoadXV_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L106)

```
LoadXV_RW :: proc "c" (src: ^sdl2.RWops) -> ^sdl2.Surface ---
```

### [Load\_RW ¶](#Load_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L67)

```
Load_RW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool) -> ^sdl2.Surface ---
```

### [Quit ¶](#Quit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L55)

```
Quit :: proc "c" () ---
```

### [ReadXPMFromArray ¶](#ReadXPMFromArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L109)

```
ReadXPMFromArray :: proc "c" (xpm: [^]cstring) -> ^sdl2.Surface ---
```

### [SaveJPG ¶](#SaveJPG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L114)

```
SaveJPG :: proc "c" (surface: ^sdl2.Surface, file: cstring, quality: i32) -> i32 ---
```

### [SaveJPG\_RW ¶](#SaveJPG_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L115)

```
SaveJPG_RW :: proc "c" (surface: ^sdl2.Surface, dst: ^sdl2.RWops, freedst: sdl2.bool, quality: i32) -> i32 ---
```

### [SavePNG ¶](#SavePNG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L112)

```
SavePNG :: proc "c" (surface: ^sdl2.Surface, file: cstring) -> i32 ---
```

 

Individual saving functions

### [SavePNG\_RW ¶](#SavePNG_RW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L113)

```
SavePNG_RW :: proc "c" (surface: ^sdl2.Surface, dst: ^sdl2.RWops, freedst: sdl2.bool) -> i32 ---
```

### [isBMP ¶](#isBMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L77)

```
isBMP :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isCUR ¶](#isCUR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L76)

```
isCUR :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isGIF ¶](#isGIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L78)

```
isGIF :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isICO ¶](#isICO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L75)

```
isICO :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

 

Functions to detect a file type, given a seekable source

### [isJPG ¶](#isJPG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L79)

```
isJPG :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isLBM ¶](#isLBM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L80)

```
isLBM :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isPCX ¶](#isPCX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L81)

```
isPCX :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isPNG ¶](#isPNG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L82)

```
isPNG :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isPNM ¶](#isPNM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L83)

```
isPNM :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isSVG ¶](#isSVG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L84)

```
isSVG :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isTIF ¶](#isTIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L85)

```
isTIF :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isWEBP ¶](#isWEBP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L89)

```
isWEBP :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isXCF ¶](#isXCF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L86)

```
isXCF :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isXPM ¶](#isXPM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L87)

```
isXPM :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

### [isXV ¶](#isXV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin#L88)

```
isXV :: proc "c" (src: ^sdl2.RWops) -> sdl2.bool ---
```

## Procedure Groups

This section is empty.

## Source Files

* [sdl\_image.odin](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/image/sdl_image.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.837341200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Animation](#Animation)
    + [InitFlag](#InitFlag)
    + [InitFlags](#InitFlags)
    + [bool](#bool)
  * [Constants](#pkg-Constants)
    + [INIT\_JPG](#INIT_JPG)
    + [INIT\_PNG](#INIT_PNG)
    + [INIT\_TIF](#INIT_TIF)
    + [INIT\_WEBP](#INIT_WEBP)
    + [MAJOR\_VERSION](#MAJOR_VERSION)
    + [MINOR\_VERSION](#MINOR_VERSION)
    + [PATCHLEVEL](#PATCHLEVEL)
  * [Procedures](#pkg-Procedures)
    + [FreeAnimation](#FreeAnimation)
    + [Init](#Init)
    + [Linked\_Version](#Linked_Version)
    + [Load](#Load)
    + [LoadAnimation](#LoadAnimation)
    + [LoadAnimationTyped\_RW](#LoadAnimationTyped_RW)
    + [LoadAnimation\_RW](#LoadAnimation_RW)
    + [LoadBMP\_RW](#LoadBMP_RW)
    + [LoadCUR\_RW](#LoadCUR_RW)
    + [LoadGIFAnimation\_RW](#LoadGIFAnimation_RW)
    + [LoadGIF\_RW](#LoadGIF_RW)
    + [LoadICO\_RW](#LoadICO_RW)
    + [LoadJPG\_RW](#LoadJPG_RW)
    + [LoadLBM\_RW](#LoadLBM_RW)
    + [LoadPCX\_RW](#LoadPCX_RW)
    + [LoadPNG\_RW](#LoadPNG_RW)
    + [LoadPNM\_RW](#LoadPNM_RW)
    + [LoadSVG\_RW](#LoadSVG_RW)
    + [LoadTGA\_RW](#LoadTGA_RW)
    + [LoadTIF\_RW](#LoadTIF_RW)
    + [LoadTexture](#LoadTexture)
    + [LoadTextureTyped\_RW](#LoadTextureTyped_RW)
    + [LoadTexture\_RW](#LoadTexture_RW)
    + [LoadTyped\_RW](#LoadTyped_RW)
    + [LoadWEBP\_RW](#LoadWEBP_RW)
    + [LoadXCF\_RW](#LoadXCF_RW)
    + [LoadXPM\_RW](#LoadXPM_RW)
    + [LoadXV\_RW](#LoadXV_RW)
    + [Load\_RW](#Load_RW)
    + [Quit](#Quit)
    + [ReadXPMFromArray](#ReadXPMFromArray)
    + [SaveJPG](#SaveJPG)
    + [SaveJPG\_RW](#SaveJPG_RW)
    + [SavePNG](#SavePNG)
    + [SavePNG\_RW](#SavePNG_RW)
    + [isBMP](#isBMP)
    + [isCUR](#isCUR)
    + [isGIF](#isGIF)
    + [isICO](#isICO)
    + [isJPG](#isJPG)
    + [isLBM](#isLBM)
    + [isPCX](#isPCX)
    + [isPNG](#isPNG)
    + [isPNM](#isPNM)
    + [isSVG](#isSVG)
    + [isTIF](#isTIF)
    + [isWEBP](#isWEBP)
    + [isXCF](#isXCF)
    + [isXPM](#isXPM)
    + [isXV](#isXV)
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