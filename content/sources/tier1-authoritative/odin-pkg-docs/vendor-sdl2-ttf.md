package sdl2/ttf - pkg.odin-lang.org 






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



Current Package: *[sdl2\_ttf](/vendor/sdl2/ttf)*

  

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
3. [ttf](/vendor/sdl2/ttf)

# package vendor:sdl2/ttf [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [SDL2 TTF](https://wiki.libsdl.org/SDL2_ttf/FrontPage).

## Index

Types (5)

* [Font](#Font)
* [Hinting](#Hinting)
* [Style](#Style)
* [StyleFlag](#StyleFlag)
* [bool](#bool)

Constants (15)

* [HINTING\_LIGHT](#HINTING_LIGHT)
* [HINTING\_LIGHT\_SUBPIXEL](#HINTING_LIGHT_SUBPIXEL)
* [HINTING\_MONO](#HINTING_MONO)
* [HINTING\_NONE](#HINTING_NONE)
* [HINTING\_NORMAL](#HINTING_NORMAL)
* [MAJOR\_VERSION](#MAJOR_VERSION)
* [MINOR\_VERSION](#MINOR_VERSION)
* [PATCHLEVEL](#PATCHLEVEL)
* [STYLE\_BOLD](#STYLE_BOLD)
* [STYLE\_ITALIC](#STYLE_ITALIC)
* [STYLE\_NORMAL](#STYLE_NORMAL)
* [STYLE\_STRIKETHROUGH](#STYLE_STRIKETHROUGH)
* [STYLE\_UNDERLINE](#STYLE_UNDERLINE)
* [UNICODE\_BOM\_NATIVE](#UNICODE_BOM_NATIVE)
* [UNICODE\_BOM\_SWAPPED](#UNICODE_BOM_SWAPPED)

Variables (0)

This section is empty.

Procedures (74)

* [CloseFont](#CloseFont)
* [FontAscent](#FontAscent)
* [FontDescent](#FontDescent)
* [FontFaceFamilyName](#FontFaceFamilyName)
* [FontFaceIsFixedWidth](#FontFaceIsFixedWidth)
* [FontFaceStyleName](#FontFaceStyleName)
* [FontFaces](#FontFaces)
* [FontHeight](#FontHeight)
* [FontLineSkip](#FontLineSkip)
* [GetFontHinting](#GetFontHinting)
* [GetFontKerning](#GetFontKerning)
* [GetFontKerningSizeGlyphs](#GetFontKerningSizeGlyphs)
* [GetFontKerningSizeGlyphs32](#GetFontKerningSizeGlyphs32)
* [GetFontOutline](#GetFontOutline)
* [GetFontSDF](#GetFontSDF)
* [GetFontStyle](#GetFontStyle)
* [GlyphIsProvided](#GlyphIsProvided)
* [GlyphIsProvided32](#GlyphIsProvided32)
* [GlyphMetrics](#GlyphMetrics)
* [GlyphMetrics32](#GlyphMetrics32)
* [Init](#Init)
* [Linked\_Version](#Linked_Version)
* [MeasureText](#MeasureText)
* [MeasureUNICODE](#MeasureUNICODE)
* [MeasureUTF8](#MeasureUTF8)
* [OpenFont](#OpenFont)
* [OpenFontDPI](#OpenFontDPI)
* [OpenFontDPIRW](#OpenFontDPIRW)
* [OpenFontIndex](#OpenFontIndex)
* [OpenFontIndexDPI](#OpenFontIndexDPI)
* [OpenFontIndexDPIRW](#OpenFontIndexDPIRW)
* [OpenFontIndexRW](#OpenFontIndexRW)
* [OpenFontRW](#OpenFontRW)
* [Quit](#Quit)
* [RenderGlyph32\_Blended](#RenderGlyph32_Blended)
* [RenderGlyph32\_Shaded](#RenderGlyph32_Shaded)
* [RenderGlyph32\_Solid](#RenderGlyph32_Solid)
* [RenderGlyph\_Blended](#RenderGlyph_Blended)
* [RenderGlyph\_Shaded](#RenderGlyph_Shaded)
* [RenderGlyph\_Solid](#RenderGlyph_Solid)
* [RenderText](#RenderText)
* [RenderText\_Blended](#RenderText_Blended)
* [RenderText\_Blended\_Wrapped](#RenderText_Blended_Wrapped)
* [RenderText\_Shaded](#RenderText_Shaded)
* [RenderText\_Shaded\_Wrapped](#RenderText_Shaded_Wrapped)
* [RenderText\_Solid](#RenderText_Solid)
* [RenderText\_Solid\_Wrapped](#RenderText_Solid_Wrapped)
* [RenderUNICODE](#RenderUNICODE)
* [RenderUNICODE\_Blended](#RenderUNICODE_Blended)
* [RenderUNICODE\_Blended\_Wrapped](#RenderUNICODE_Blended_Wrapped)
* [RenderUNICODE\_Shaded](#RenderUNICODE_Shaded)
* [RenderUNICODE\_Shaded\_Wrapped](#RenderUNICODE_Shaded_Wrapped)
* [RenderUNICODE\_Solid](#RenderUNICODE_Solid)
* [RenderUNICODE\_Solid\_Wrapped](#RenderUNICODE_Solid_Wrapped)
* [RenderUTF8](#RenderUTF8)
* [RenderUTF8\_Blended](#RenderUTF8_Blended)
* [RenderUTF8\_Blended\_Wrapped](#RenderUTF8_Blended_Wrapped)
* [RenderUTF8\_Shaded](#RenderUTF8_Shaded)
* [RenderUTF8\_Shaded\_Wrapped](#RenderUTF8_Shaded_Wrapped)
* [RenderUTF8\_Solid](#RenderUTF8_Solid)
* [RenderUTF8\_Solid\_Wrapped](#RenderUTF8_Solid_Wrapped)
* [SetDirection](#SetDirection)
* [SetFontHinting](#SetFontHinting)
* [SetFontKerning](#SetFontKerning)
* [SetFontOutline](#SetFontOutline)
* [SetFontSDF](#SetFontSDF)
* [SetFontSize](#SetFontSize)
* [SetFontSizeDPI](#SetFontSizeDPI)
* [SetFontStyle](#SetFontStyle)
* [SetScript](#SetScript)
* [SizeText](#SizeText)
* [SizeUNICODE](#SizeUNICODE)
* [SizeUTF8](#SizeUTF8)
* [WasInit](#WasInit)

Procedure Groups (0)

This section is empty.

## Types

### [Font ¶](#Font) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L24)

```
Font :: struct {}
```

##### Related Procedures With Parameters

* [CloseFont](/vendor/sdl2/ttf/#CloseFont)
* [FontAscent](/vendor/sdl2/ttf/#FontAscent)
* [FontDescent](/vendor/sdl2/ttf/#FontDescent)
* [FontFaceFamilyName](/vendor/sdl2/ttf/#FontFaceFamilyName)
* [FontFaceIsFixedWidth](/vendor/sdl2/ttf/#FontFaceIsFixedWidth)
* [FontFaceStyleName](/vendor/sdl2/ttf/#FontFaceStyleName)
* [FontFaces](/vendor/sdl2/ttf/#FontFaces)
* [FontHeight](/vendor/sdl2/ttf/#FontHeight)
* [FontLineSkip](/vendor/sdl2/ttf/#FontLineSkip)
* [GetFontHinting](/vendor/sdl2/ttf/#GetFontHinting)
* [GetFontKerning](/vendor/sdl2/ttf/#GetFontKerning)
* [GetFontKerningSizeGlyphs](/vendor/sdl2/ttf/#GetFontKerningSizeGlyphs)
* [GetFontKerningSizeGlyphs32](/vendor/sdl2/ttf/#GetFontKerningSizeGlyphs32)
* [GetFontOutline](/vendor/sdl2/ttf/#GetFontOutline)
* [GetFontSDF](/vendor/sdl2/ttf/#GetFontSDF)
* [GetFontStyle](/vendor/sdl2/ttf/#GetFontStyle)
* [GlyphIsProvided](/vendor/sdl2/ttf/#GlyphIsProvided)
* [GlyphIsProvided32](/vendor/sdl2/ttf/#GlyphIsProvided32)
* [GlyphMetrics](/vendor/sdl2/ttf/#GlyphMetrics)
* [GlyphMetrics32](/vendor/sdl2/ttf/#GlyphMetrics32)
* [MeasureText](/vendor/sdl2/ttf/#MeasureText)
* [MeasureUNICODE](/vendor/sdl2/ttf/#MeasureUNICODE)
* [MeasureUTF8](/vendor/sdl2/ttf/#MeasureUTF8)
* [RenderGlyph32\_Blended](/vendor/sdl2/ttf/#RenderGlyph32_Blended)
* [RenderGlyph32\_Shaded](/vendor/sdl2/ttf/#RenderGlyph32_Shaded)
* [RenderGlyph32\_Solid](/vendor/sdl2/ttf/#RenderGlyph32_Solid)
* [RenderGlyph\_Blended](/vendor/sdl2/ttf/#RenderGlyph_Blended)
* [RenderGlyph\_Shaded](/vendor/sdl2/ttf/#RenderGlyph_Shaded)
* [RenderGlyph\_Solid](/vendor/sdl2/ttf/#RenderGlyph_Solid)
* [RenderText](/vendor/sdl2/ttf/#RenderText)
* [RenderText\_Blended](/vendor/sdl2/ttf/#RenderText_Blended)
* [RenderText\_Blended\_Wrapped](/vendor/sdl2/ttf/#RenderText_Blended_Wrapped)
* [RenderText\_Shaded](/vendor/sdl2/ttf/#RenderText_Shaded)
* [RenderText\_Shaded\_Wrapped](/vendor/sdl2/ttf/#RenderText_Shaded_Wrapped)
* [RenderText\_Solid](/vendor/sdl2/ttf/#RenderText_Solid)
* [RenderText\_Solid\_Wrapped](/vendor/sdl2/ttf/#RenderText_Solid_Wrapped)
* [RenderUNICODE](/vendor/sdl2/ttf/#RenderUNICODE)
* [RenderUNICODE\_Blended](/vendor/sdl2/ttf/#RenderUNICODE_Blended)
* [RenderUNICODE\_Blended\_Wrapped](/vendor/sdl2/ttf/#RenderUNICODE_Blended_Wrapped)
* [RenderUNICODE\_Shaded](/vendor/sdl2/ttf/#RenderUNICODE_Shaded)
* [RenderUNICODE\_Shaded\_Wrapped](/vendor/sdl2/ttf/#RenderUNICODE_Shaded_Wrapped)
* [RenderUNICODE\_Solid](/vendor/sdl2/ttf/#RenderUNICODE_Solid)
* [RenderUNICODE\_Solid\_Wrapped](/vendor/sdl2/ttf/#RenderUNICODE_Solid_Wrapped)
* [RenderUTF8](/vendor/sdl2/ttf/#RenderUTF8)
* [RenderUTF8\_Blended](/vendor/sdl2/ttf/#RenderUTF8_Blended)
* [RenderUTF8\_Blended\_Wrapped](/vendor/sdl2/ttf/#RenderUTF8_Blended_Wrapped)
* [RenderUTF8\_Shaded](/vendor/sdl2/ttf/#RenderUTF8_Shaded)
* [RenderUTF8\_Shaded\_Wrapped](/vendor/sdl2/ttf/#RenderUTF8_Shaded_Wrapped)
* [RenderUTF8\_Solid](/vendor/sdl2/ttf/#RenderUTF8_Solid)
* [RenderUTF8\_Solid\_Wrapped](/vendor/sdl2/ttf/#RenderUTF8_Solid_Wrapped)
* [SetFontHinting](/vendor/sdl2/ttf/#SetFontHinting)
* [SetFontKerning](/vendor/sdl2/ttf/#SetFontKerning)
* [SetFontOutline](/vendor/sdl2/ttf/#SetFontOutline)
* [SetFontSDF](/vendor/sdl2/ttf/#SetFontSDF)
* [SetFontSize](/vendor/sdl2/ttf/#SetFontSize)
* [SetFontSizeDPI](/vendor/sdl2/ttf/#SetFontSizeDPI)
* [SetFontStyle](/vendor/sdl2/ttf/#SetFontStyle)
* [SizeText](/vendor/sdl2/ttf/#SizeText)
* [SizeUNICODE](/vendor/sdl2/ttf/#SizeUNICODE)
* [SizeUTF8](/vendor/sdl2/ttf/#SizeUTF8)



##### Related Procedures With Returns

* [OpenFont](/vendor/sdl2/ttf/#OpenFont)
* [OpenFontDPI](/vendor/sdl2/ttf/#OpenFontDPI)
* [OpenFontDPIRW](/vendor/sdl2/ttf/#OpenFontDPIRW)
* [OpenFontIndex](/vendor/sdl2/ttf/#OpenFontIndex)
* [OpenFontIndexDPI](/vendor/sdl2/ttf/#OpenFontIndexDPI)
* [OpenFontIndexDPIRW](/vendor/sdl2/ttf/#OpenFontIndexDPIRW)
* [OpenFontIndexRW](/vendor/sdl2/ttf/#OpenFontIndexRW)
* [OpenFontRW](/vendor/sdl2/ttf/#OpenFontRW)

### [Hinting ¶](#Hinting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L41)

```
Hinting :: enum i32 {
	NORMAL         = 0, 
	LIGHT          = 1, 
	MONO           = 2, 
	NONE           = 3, 
	LIGHT_SUBPIXEL = 4, 
}
```

##### Related Procedures With Parameters

* [SetFontHinting](/vendor/sdl2/ttf/#SetFontHinting)



##### Related Procedures With Returns

* [GetFontHinting](/vendor/sdl2/ttf/#GetFontHinting)

##### Related Constants

* [HINTING\_LIGHT](/vendor/sdl2/ttf/#HINTING_LIGHT)
* [HINTING\_LIGHT\_SUBPIXEL](/vendor/sdl2/ttf/#HINTING_LIGHT_SUBPIXEL)
* [HINTING\_MONO](/vendor/sdl2/ttf/#HINTING_MONO)
* [HINTING\_NONE](/vendor/sdl2/ttf/#HINTING_NONE)
* [HINTING\_NORMAL](/vendor/sdl2/ttf/#HINTING_NORMAL)

### [Style ¶](#Style) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L33)

```
Style :: distinct bit_set[StyleFlag; i32]
```

##### Related Procedures With Parameters

* [SetFontStyle](/vendor/sdl2/ttf/#SetFontStyle)



##### Related Procedures With Returns

* [GetFontStyle](/vendor/sdl2/ttf/#GetFontStyle)

##### Related Constants

* [STYLE\_BOLD](/vendor/sdl2/ttf/#STYLE_BOLD)
* [STYLE\_ITALIC](/vendor/sdl2/ttf/#STYLE_ITALIC)
* [STYLE\_NORMAL](/vendor/sdl2/ttf/#STYLE_NORMAL)
* [STYLE\_STRIKETHROUGH](/vendor/sdl2/ttf/#STYLE_STRIKETHROUGH)
* [STYLE\_UNDERLINE](/vendor/sdl2/ttf/#STYLE_UNDERLINE)

### [StyleFlag ¶](#StyleFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L26)

```
StyleFlag :: enum i32 {
	BOLD          = 0, 
	ITALIC        = 1, 
	UNDERLINE     = 2, 
	STRIKETHROUGH = 3, 
}
```

### [bool ¶](#bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L13)

```
bool :: sdl2.bool
```

##### Related Procedures With Parameters

* [OpenFontDPIRW](/vendor/sdl2/ttf/#OpenFontDPIRW)
* [OpenFontIndexDPIRW](/vendor/sdl2/ttf/#OpenFontIndexDPIRW)
* [OpenFontIndexRW](/vendor/sdl2/ttf/#OpenFontIndexRW)
* [OpenFontRW](/vendor/sdl2/ttf/#OpenFontRW)
* [SetFontKerning](/vendor/sdl2/ttf/#SetFontKerning)
* [SetFontSDF](/vendor/sdl2/ttf/#SetFontSDF)



##### Related Procedures With Returns

* [GetFontSDF](/vendor/sdl2/ttf/#GetFontSDF)

## Constants

### [HINTING\_LIGHT ¶](#HINTING_LIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L50)

```
HINTING_LIGHT :: Hinting.LIGHT
```

### [HINTING\_LIGHT\_SUBPIXEL ¶](#HINTING_LIGHT_SUBPIXEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L53)

```
HINTING_LIGHT_SUBPIXEL :: Hinting.LIGHT_SUBPIXEL
```

### [HINTING\_MONO ¶](#HINTING_MONO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L51)

```
HINTING_MONO :: Hinting.MONO
```

### [HINTING\_NONE ¶](#HINTING_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L52)

```
HINTING_NONE :: Hinting.NONE
```

### [HINTING\_NORMAL ¶](#HINTING_NORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L49)

```
HINTING_NORMAL :: Hinting.NORMAL
```

### [MAJOR\_VERSION ¶](#MAJOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L17)

```
MAJOR_VERSION :: 2
```

### [MINOR\_VERSION ¶](#MINOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L18)

```
MINOR_VERSION :: 0
```

### [PATCHLEVEL ¶](#PATCHLEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L19)

```
PATCHLEVEL :: 18
```

### [STYLE\_BOLD ¶](#STYLE_BOLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L36)

```
STYLE_BOLD :: Style{.BOLD}
```

### [STYLE\_ITALIC ¶](#STYLE_ITALIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L37)

```
STYLE_ITALIC :: Style{.ITALIC}
```

### [STYLE\_NORMAL ¶](#STYLE_NORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L35)

```
STYLE_NORMAL :: Style{}
```

### [STYLE\_STRIKETHROUGH ¶](#STYLE_STRIKETHROUGH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L39)

```
STYLE_STRIKETHROUGH :: Style{.STRIKETHROUGH}
```

### [STYLE\_UNDERLINE ¶](#STYLE_UNDERLINE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L38)

```
STYLE_UNDERLINE :: Style{.UNDERLINE}
```

### [UNICODE\_BOM\_NATIVE ¶](#UNICODE_BOM_NATIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L21)

```
UNICODE_BOM_NATIVE :: 0xFEFF
```

### [UNICODE\_BOM\_SWAPPED ¶](#UNICODE_BOM_SWAPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L22)

```
UNICODE_BOM_SWAPPED :: 0xFFFE
```

## Variables

This section is empty.

## Procedures

### [CloseFont ¶](#CloseFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L161)

```
CloseFont :: proc "c" (font: ^Font) ---
```

### [FontAscent ¶](#FontAscent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L100)

```
FontAscent :: proc "c" (font: ^Font) -> i32 ---
```

### [FontDescent ¶](#FontDescent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L101)

```
FontDescent :: proc "c" (font: ^Font) -> i32 ---
```

### [FontFaceFamilyName ¶](#FontFaceFamilyName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L107)

```
FontFaceFamilyName :: proc "c" (font: ^Font) -> cstring ---
```

### [FontFaceIsFixedWidth ¶](#FontFaceIsFixedWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L106)

```
FontFaceIsFixedWidth :: proc "c" (font: ^Font) -> i32 ---
```

### [FontFaceStyleName ¶](#FontFaceStyleName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L108)

```
FontFaceStyleName :: proc "c" (font: ^Font) -> cstring ---
```

### [FontFaces ¶](#FontFaces) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L105)

```
FontFaces :: proc "c" (font: ^Font) -> i32 ---
```

### [FontHeight ¶](#FontHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L99)

```
FontHeight :: proc "c" (font: ^Font) -> i32 ---
```

### [FontLineSkip ¶](#FontLineSkip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L102)

```
FontLineSkip :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontHinting ¶](#GetFontHinting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L96)

```
GetFontHinting :: proc "c" (font: ^Font) -> Hinting ---
```

### [GetFontKerning ¶](#GetFontKerning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L103)

```
GetFontKerning :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontKerningSizeGlyphs ¶](#GetFontKerningSizeGlyphs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L163)

```
GetFontKerningSizeGlyphs :: proc "c" (font: ^Font, previous_ch, ch: u16) -> i32 ---
```

### [GetFontKerningSizeGlyphs32 ¶](#GetFontKerningSizeGlyphs32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L164)

```
GetFontKerningSizeGlyphs32 :: proc "c" (font: ^Font, previous_ch, ch: rune) -> i32 ---
```

### [GetFontOutline ¶](#GetFontOutline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L93)

```
GetFontOutline :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontSDF ¶](#GetFontSDF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L167)

```
GetFontSDF :: proc "c" (font: ^Font) -> sdl2.bool ---
```

### [GetFontStyle ¶](#GetFontStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L91)

```
GetFontStyle :: proc "c" (font: ^Font) -> Style ---
```

### [GlyphIsProvided ¶](#GlyphIsProvided) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L110)

```
GlyphIsProvided :: proc "c" (font: ^Font, ch: u16) -> i32 ---
```

### [GlyphIsProvided32 ¶](#GlyphIsProvided32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L111)

```
GlyphIsProvided32 :: proc "c" (font: ^Font, ch: rune) -> i32 ---
```

### [GlyphMetrics ¶](#GlyphMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L112)

```
GlyphMetrics :: proc "c" (
	font:                   ^Font, 
	ch:                     u16, 
	minx, maxx, miny, maxy: ^i32, 
	advance:                ^i32, 
) -> i32 ---
```

### [GlyphMetrics32 ¶](#GlyphMetrics32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L113)

```
GlyphMetrics32 :: proc "c" (
	font:                   ^Font, 
	ch:                     rune, 
	minx, maxx, miny, maxy: ^i32, 
	advance:                ^i32, 
) -> i32 ---
```

### [Init ¶](#Init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L74)

```
Init :: proc "c" () -> i32 ---
```

### [Linked\_Version ¶](#Linked_Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L72)

```
Linked_Version :: proc "c" () -> ^sdl2.version ---
```

### [MeasureText ¶](#MeasureText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L119)

```
MeasureText :: proc "c" (font: ^Font, text: cstring, measure_width: i32, extent: ^i32, count: ^i32) -> i32 ---
```

### [MeasureUNICODE ¶](#MeasureUNICODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L121)

```
MeasureUNICODE :: proc "c" (font: ^Font, text: [^]u16, measure_width: i32, extent: ^i32, count: ^i32) -> i32 ---
```

### [MeasureUTF8 ¶](#MeasureUTF8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L120)

```
MeasureUTF8 :: proc "c" (font: ^Font, text: cstring, measure_width: i32, extent: ^i32, count: ^i32) -> i32 ---
```

### [OpenFont ¶](#OpenFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L78)

```
OpenFont :: proc "c" (file: cstring, ptsize: i32) -> ^Font ---
```

### [OpenFontDPI ¶](#OpenFontDPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L83)

```
OpenFontDPI :: proc "c" (file: cstring, ptsize: i32, hdpi, vdpi: u32) -> ^Font ---
```

### [OpenFontDPIRW ¶](#OpenFontDPIRW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L85)

```
OpenFontDPIRW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool, ptsize: i32, hdpi, vdpi: u32) -> ^Font ---
```

### [OpenFontIndex ¶](#OpenFontIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L79)

```
OpenFontIndex :: proc "c" (file: cstring, ptsize: i32, index: i32) -> ^Font ---
```

### [OpenFontIndexDPI ¶](#OpenFontIndexDPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L84)

```
OpenFontIndexDPI :: proc "c" (file: cstring, ptsize: i32, index: i32, hdpi, vdpi: u32) -> ^Font ---
```

### [OpenFontIndexDPIRW ¶](#OpenFontIndexDPIRW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L86)

```
OpenFontIndexDPIRW :: proc "c" (
	src:     ^sdl2.RWops, 
	freesrc: sdl2.bool, 
	ptsize:  i32, 
	index:   i32, 
	hdpi, 
	vdpi:    u32, 
) -> ^Font ---
```

### [OpenFontIndexRW ¶](#OpenFontIndexRW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L81)

```
OpenFontIndexRW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool, ptsize: i32, index: i32) -> ^Font ---
```

### [OpenFontRW ¶](#OpenFontRW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L80)

```
OpenFontRW :: proc "c" (src: ^sdl2.RWops, freesrc: sdl2.bool, ptsize: i32) -> ^Font ---
```

### [Quit ¶](#Quit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L75)

```
Quit :: proc "c" () ---
```

### [RenderGlyph32\_Blended ¶](#RenderGlyph32_Blended) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L155)

```
RenderGlyph32_Blended :: proc "c" (font: ^Font, ch: rune, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderGlyph32\_Shaded ¶](#RenderGlyph32_Shaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L143)

```
RenderGlyph32_Shaded :: proc "c" (font: ^Font, ch: rune, fg, bg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderGlyph32\_Solid ¶](#RenderGlyph32_Solid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L132)

```
RenderGlyph32_Solid :: proc "c" (font: ^Font, ch: rune, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderGlyph\_Blended ¶](#RenderGlyph_Blended) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L154)

```
RenderGlyph_Blended :: proc "c" (font: ^Font, ch: u16, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderGlyph\_Shaded ¶](#RenderGlyph_Shaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L142)

```
RenderGlyph_Shaded :: proc "c" (font: ^Font, ch: u16, fg, bg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderGlyph\_Solid ¶](#RenderGlyph_Solid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L131)

```
RenderGlyph_Solid :: proc "c" (font: ^Font, ch: u16, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderText ¶](#RenderText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L60)

```
RenderText :: proc "c" (font: ^Font, text: cstring, fg, bg: sdl2.Color) -> ^sdl2.Surface {…}
```

 

For compatibility with previous versions, here are the old functions

### [RenderText\_Blended ¶](#RenderText_Blended) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L145)

```
RenderText_Blended :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderText\_Blended\_Wrapped ¶](#RenderText_Blended_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L150)

```
RenderText_Blended_Wrapped :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderText\_Shaded ¶](#RenderText_Shaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L134)

```
RenderText_Shaded :: proc "c" (font: ^Font, text: cstring, fg, bg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderText\_Shaded\_Wrapped ¶](#RenderText_Shaded_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L138)

```
RenderText_Shaded_Wrapped :: proc "c" (font: ^Font, text: cstring, fg, bg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderText\_Solid ¶](#RenderText_Solid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L123)

```
RenderText_Solid :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderText\_Solid\_Wrapped ¶](#RenderText_Solid_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L127)

```
RenderText_Solid_Wrapped :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderUNICODE ¶](#RenderUNICODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L66)

```
RenderUNICODE :: proc "c" (font: ^Font, text: [^]u16, fg, bg: sdl2.Color) -> ^sdl2.Surface {…}
```

### [RenderUNICODE\_Blended ¶](#RenderUNICODE_Blended) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L147)

```
RenderUNICODE_Blended :: proc "c" (font: ^Font, text: [^]u16, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderUNICODE\_Blended\_Wrapped ¶](#RenderUNICODE_Blended_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L152)

```
RenderUNICODE_Blended_Wrapped :: proc "c" (font: ^Font, text: [^]u16, fg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderUNICODE\_Shaded ¶](#RenderUNICODE_Shaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L136)

```
RenderUNICODE_Shaded :: proc "c" (font: ^Font, text: [^]u16, fg, bg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderUNICODE\_Shaded\_Wrapped ¶](#RenderUNICODE_Shaded_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L140)

```
RenderUNICODE_Shaded_Wrapped :: proc "c" (font: ^Font, text: [^]u16, fg, bg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderUNICODE\_Solid ¶](#RenderUNICODE_Solid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L125)

```
RenderUNICODE_Solid :: proc "c" (font: ^Font, text: [^]u16, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderUNICODE\_Solid\_Wrapped ¶](#RenderUNICODE_Solid_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L129)

```
RenderUNICODE_Solid_Wrapped :: proc "c" (font: ^Font, text: [^]u16, fg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderUTF8 ¶](#RenderUTF8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L63)

```
RenderUTF8 :: proc "c" (font: ^Font, text: cstring, fg, bg: sdl2.Color) -> ^sdl2.Surface {…}
```

### [RenderUTF8\_Blended ¶](#RenderUTF8_Blended) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L146)

```
RenderUTF8_Blended :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderUTF8\_Blended\_Wrapped ¶](#RenderUTF8_Blended_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L151)

```
RenderUTF8_Blended_Wrapped :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderUTF8\_Shaded ¶](#RenderUTF8_Shaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L135)

```
RenderUTF8_Shaded :: proc "c" (font: ^Font, text: cstring, fg, bg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderUTF8\_Shaded\_Wrapped ¶](#RenderUTF8_Shaded_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L139)

```
RenderUTF8_Shaded_Wrapped :: proc "c" (font: ^Font, text: cstring, fg, bg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [RenderUTF8\_Solid ¶](#RenderUTF8_Solid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L124)

```
RenderUTF8_Solid :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color) -> ^sdl2.Surface ---
```

### [RenderUTF8\_Solid\_Wrapped ¶](#RenderUTF8_Solid_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L128)

```
RenderUTF8_Solid_Wrapped :: proc "c" (font: ^Font, text: cstring, fg: sdl2.Color, wrapLength: u32) -> ^sdl2.Surface ---
```

### [SetDirection ¶](#SetDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L158)

```
SetDirection :: proc "c" (direction: i32) -> i32 ---
```

### [SetFontHinting ¶](#SetFontHinting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L97)

```
SetFontHinting :: proc "c" (font: ^Font, hinting: Hinting) ---
```

### [SetFontKerning ¶](#SetFontKerning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L104)

```
SetFontKerning :: proc "c" (font: ^Font, allowed: sdl2.bool) ---
```

### [SetFontOutline ¶](#SetFontOutline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L94)

```
SetFontOutline :: proc "c" (font: ^Font, outline: i32) ---
```

### [SetFontSDF ¶](#SetFontSDF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L166)

```
SetFontSDF :: proc "c" (font: ^Font, on_off: sdl2.bool) -> i32 ---
```

### [SetFontSize ¶](#SetFontSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L88)

```
SetFontSize :: proc "c" (font: ^Font, ptsize: i32) -> i32 ---
```

### [SetFontSizeDPI ¶](#SetFontSizeDPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L89)

```
SetFontSizeDPI :: proc "c" (font: ^Font, ptsize: i32, hdpi, vdpi: u32) -> i32 ---
```

### [SetFontStyle ¶](#SetFontStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L92)

```
SetFontStyle :: proc "c" (font: ^Font, style: Style) ---
```

### [SetScript ¶](#SetScript) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L159)

```
SetScript :: proc "c" (script: i32) -> i32 ---
```

### [SizeText ¶](#SizeText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L115)

```
SizeText :: proc "c" (font: ^Font, text: cstring, w, h: ^i32) -> i32 ---
```

### [SizeUNICODE ¶](#SizeUNICODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L117)

```
SizeUNICODE :: proc "c" (font: ^Font, text: [^]u16, w, h: ^i32) -> i32 ---
```

### [SizeUTF8 ¶](#SizeUTF8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L116)

```
SizeUTF8 :: proc "c" (font: ^Font, text: cstring, w, h: ^i32) -> i32 ---
```

### [WasInit ¶](#WasInit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin#L76)

```
WasInit :: proc "c" () -> i32 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [sdl\_ttf.odin](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/ttf/sdl_ttf.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.861966100 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Font](#Font)
    + [Hinting](#Hinting)
    + [Style](#Style)
    + [StyleFlag](#StyleFlag)
    + [bool](#bool)
  * [Constants](#pkg-Constants)
    + [HINTING\_LIGHT](#HINTING_LIGHT)
    + [HINTING\_LIGHT\_SUBPIXEL](#HINTING_LIGHT_SUBPIXEL)
    + [HINTING\_MONO](#HINTING_MONO)
    + [HINTING\_NONE](#HINTING_NONE)
    + [HINTING\_NORMAL](#HINTING_NORMAL)
    + [MAJOR\_VERSION](#MAJOR_VERSION)
    + [MINOR\_VERSION](#MINOR_VERSION)
    + [PATCHLEVEL](#PATCHLEVEL)
    + [STYLE\_BOLD](#STYLE_BOLD)
    + [STYLE\_ITALIC](#STYLE_ITALIC)
    + [STYLE\_NORMAL](#STYLE_NORMAL)
    + [STYLE\_STRIKETHROUGH](#STYLE_STRIKETHROUGH)
    + [STYLE\_UNDERLINE](#STYLE_UNDERLINE)
    + [UNICODE\_BOM\_NATIVE](#UNICODE_BOM_NATIVE)
    + [UNICODE\_BOM\_SWAPPED](#UNICODE_BOM_SWAPPED)
  * [Procedures](#pkg-Procedures)
    + [CloseFont](#CloseFont)
    + [FontAscent](#FontAscent)
    + [FontDescent](#FontDescent)
    + [FontFaceFamilyName](#FontFaceFamilyName)
    + [FontFaceIsFixedWidth](#FontFaceIsFixedWidth)
    + [FontFaceStyleName](#FontFaceStyleName)
    + [FontFaces](#FontFaces)
    + [FontHeight](#FontHeight)
    + [FontLineSkip](#FontLineSkip)
    + [GetFontHinting](#GetFontHinting)
    + [GetFontKerning](#GetFontKerning)
    + [GetFontKerningSizeGlyphs](#GetFontKerningSizeGlyphs)
    + [GetFontKerningSizeGlyphs32](#GetFontKerningSizeGlyphs32)
    + [GetFontOutline](#GetFontOutline)
    + [GetFontSDF](#GetFontSDF)
    + [GetFontStyle](#GetFontStyle)
    + [GlyphIsProvided](#GlyphIsProvided)
    + [GlyphIsProvided32](#GlyphIsProvided32)
    + [GlyphMetrics](#GlyphMetrics)
    + [GlyphMetrics32](#GlyphMetrics32)
    + [Init](#Init)
    + [Linked\_Version](#Linked_Version)
    + [MeasureText](#MeasureText)
    + [MeasureUNICODE](#MeasureUNICODE)
    + [MeasureUTF8](#MeasureUTF8)
    + [OpenFont](#OpenFont)
    + [OpenFontDPI](#OpenFontDPI)
    + [OpenFontDPIRW](#OpenFontDPIRW)
    + [OpenFontIndex](#OpenFontIndex)
    + [OpenFontIndexDPI](#OpenFontIndexDPI)
    + [OpenFontIndexDPIRW](#OpenFontIndexDPIRW)
    + [OpenFontIndexRW](#OpenFontIndexRW)
    + [OpenFontRW](#OpenFontRW)
    + [Quit](#Quit)
    + [RenderGlyph32\_Blended](#RenderGlyph32_Blended)
    + [RenderGlyph32\_Shaded](#RenderGlyph32_Shaded)
    + [RenderGlyph32\_Solid](#RenderGlyph32_Solid)
    + [RenderGlyph\_Blended](#RenderGlyph_Blended)
    + [RenderGlyph\_Shaded](#RenderGlyph_Shaded)
    + [RenderGlyph\_Solid](#RenderGlyph_Solid)
    + [RenderText](#RenderText)
    + [RenderText\_Blended](#RenderText_Blended)
    + [RenderText\_Blended\_Wrapped](#RenderText_Blended_Wrapped)
    + [RenderText\_Shaded](#RenderText_Shaded)
    + [RenderText\_Shaded\_Wrapped](#RenderText_Shaded_Wrapped)
    + [RenderText\_Solid](#RenderText_Solid)
    + [RenderText\_Solid\_Wrapped](#RenderText_Solid_Wrapped)
    + [RenderUNICODE](#RenderUNICODE)
    + [RenderUNICODE\_Blended](#RenderUNICODE_Blended)
    + [RenderUNICODE\_Blended\_Wrapped](#RenderUNICODE_Blended_Wrapped)
    + [RenderUNICODE\_Shaded](#RenderUNICODE_Shaded)
    + [RenderUNICODE\_Shaded\_Wrapped](#RenderUNICODE_Shaded_Wrapped)
    + [RenderUNICODE\_Solid](#RenderUNICODE_Solid)
    + [RenderUNICODE\_Solid\_Wrapped](#RenderUNICODE_Solid_Wrapped)
    + [RenderUTF8](#RenderUTF8)
    + [RenderUTF8\_Blended](#RenderUTF8_Blended)
    + [RenderUTF8\_Blended\_Wrapped](#RenderUTF8_Blended_Wrapped)
    + [RenderUTF8\_Shaded](#RenderUTF8_Shaded)
    + [RenderUTF8\_Shaded\_Wrapped](#RenderUTF8_Shaded_Wrapped)
    + [RenderUTF8\_Solid](#RenderUTF8_Solid)
    + [RenderUTF8\_Solid\_Wrapped](#RenderUTF8_Solid_Wrapped)
    + [SetDirection](#SetDirection)
    + [SetFontHinting](#SetFontHinting)
    + [SetFontKerning](#SetFontKerning)
    + [SetFontOutline](#SetFontOutline)
    + [SetFontSDF](#SetFontSDF)
    + [SetFontSize](#SetFontSize)
    + [SetFontSizeDPI](#SetFontSizeDPI)
    + [SetFontStyle](#SetFontStyle)
    + [SetScript](#SetScript)
    + [SizeText](#SizeText)
    + [SizeUNICODE](#SizeUNICODE)
    + [SizeUTF8](#SizeUTF8)
    + [WasInit](#WasInit)
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