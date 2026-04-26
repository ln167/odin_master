package sdl3/ttf - pkg.odin-lang.org 






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



Current Package: *[sdl3\_ttf](/vendor/sdl3/ttf)*

  

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
2. [sdl3](/vendor/sdl3)
3. [ttf](/vendor/sdl3/ttf)

# package vendor:sdl3/ttf [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [SDL3 TTF](https://wiki.libsdl.org/SDL3_ttf/FrontPage).

## Index

Types (19)

* [CopyOperation](#CopyOperation)
* [Direction](#Direction)
* [DrawCommand](#DrawCommand)
* [DrawOperation](#DrawOperation)
* [FillOperation](#FillOperation)
* [Font](#Font)
* [FontStyle](#FontStyle)
* [FontStyleFlags](#FontStyleFlags)
* [GPUAtlasDrawSequence](#GPUAtlasDrawSequence)
* [GPUTextEngineWinding](#GPUTextEngineWinding)
* [Hinting](#Hinting)
* [HorizontalAlignment](#HorizontalAlignment)
* [ImageType](#ImageType)
* [SubString](#SubString)
* [SubStringFlags](#SubStringFlags)
* [Text](#Text)
* [TextData](#TextData)
* [TextEngine](#TextEngine)
* [TextLayout](#TextLayout)

Constants (26)

* [FONT\_WEIGHT\_BLACK](#FONT_WEIGHT_BLACK)
* [FONT\_WEIGHT\_BOLD](#FONT_WEIGHT_BOLD)
* [FONT\_WEIGHT\_EXTRA\_BLACK](#FONT_WEIGHT_EXTRA_BLACK)
* [FONT\_WEIGHT\_EXTRA\_BOLD](#FONT_WEIGHT_EXTRA_BOLD)
* [FONT\_WEIGHT\_EXTRA\_LIGHT](#FONT_WEIGHT_EXTRA_LIGHT)
* [FONT\_WEIGHT\_LIGHT](#FONT_WEIGHT_LIGHT)
* [FONT\_WEIGHT\_MEDIUM](#FONT_WEIGHT_MEDIUM)
* [FONT\_WEIGHT\_NORMAL](#FONT_WEIGHT_NORMAL)
* [FONT\_WEIGHT\_SEMI\_BOLD](#FONT_WEIGHT_SEMI_BOLD)
* [FONT\_WEIGHT\_THIN](#FONT_WEIGHT_THIN)
* [MAJOR\_VERSION](#MAJOR_VERSION)
* [MINOR\_VERSION](#MINOR_VERSION)
* [PATCHLEVEL](#PATCHLEVEL)
* [PROP\_FONT\_CREATE\_EXISTING\_FONT](#PROP_FONT_CREATE_EXISTING_FONT)
* [PROP\_FONT\_CREATE\_FACE\_NUMBER](#PROP_FONT_CREATE_FACE_NUMBER)
* [PROP\_FONT\_CREATE\_FILENAME\_STRING](#PROP_FONT_CREATE_FILENAME_STRING)
* [PROP\_FONT\_CREATE\_HORIZONTAL\_DPI\_NUMBER](#PROP_FONT_CREATE_HORIZONTAL_DPI_NUMBER)
* [PROP\_FONT\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN](#PROP_FONT_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN)
* [PROP\_FONT\_CREATE\_IOSTREAM\_OFFSET\_NUMBER](#PROP_FONT_CREATE_IOSTREAM_OFFSET_NUMBER)
* [PROP\_FONT\_CREATE\_IOSTREAM\_POINTER](#PROP_FONT_CREATE_IOSTREAM_POINTER)
* [PROP\_FONT\_CREATE\_SIZE\_FLOAT](#PROP_FONT_CREATE_SIZE_FLOAT)
* [PROP\_FONT\_CREATE\_VERTICAL\_DPI\_NUMBER](#PROP_FONT_CREATE_VERTICAL_DPI_NUMBER)
* [PROP\_GPU\_TEXT\_ENGINE\_ATLAS\_TEXTURE\_SIZE](#PROP_GPU_TEXT_ENGINE_ATLAS_TEXTURE_SIZE)
* [PROP\_GPU\_TEXT\_ENGINE\_DEVICE](#PROP_GPU_TEXT_ENGINE_DEVICE)
* [PROP\_RENDERER\_TEXT\_ENGINE\_ATLAS\_TEXTURE\_SIZE](#PROP_RENDERER_TEXT_ENGINE_ATLAS_TEXTURE_SIZE)
* [PROP\_RENDERER\_TEXT\_ENGINE\_RENDERER](#PROP_RENDERER_TEXT_ENGINE_RENDERER)

Variables (0)

This section is empty.

Procedures (117)

* [AddFallbackFont](#AddFallbackFont)
* [AppendTextString](#AppendTextString)
* [ClearFallbackFonts](#ClearFallbackFonts)
* [CloseFont](#CloseFont)
* [CopyFont](#CopyFont)
* [CreateGPUTextEngine](#CreateGPUTextEngine)
* [CreateGPUTextEngineWithProperties](#CreateGPUTextEngineWithProperties)
* [CreateRendererTextEngine](#CreateRendererTextEngine)
* [CreateRendererTextEngineWithProperties](#CreateRendererTextEngineWithProperties)
* [CreateSurfaceTextEngine](#CreateSurfaceTextEngine)
* [CreateText](#CreateText)
* [DeleteTextString](#DeleteTextString)
* [DestroyGPUTextEngine](#DestroyGPUTextEngine)
* [DestroyRendererTextEngine](#DestroyRendererTextEngine)
* [DestroySurfaceTextEngine](#DestroySurfaceTextEngine)
* [DestroyText](#DestroyText)
* [DrawRendererText](#DrawRendererText)
* [DrawSurfaceText](#DrawSurfaceText)
* [FontHasGlyph](#FontHasGlyph)
* [FontIsFixedWidth](#FontIsFixedWidth)
* [FontIsScalable](#FontIsScalable)
* [GetFontAscent](#GetFontAscent)
* [GetFontDPI](#GetFontDPI)
* [GetFontDescent](#GetFontDescent)
* [GetFontDirection](#GetFontDirection)
* [GetFontFamilyName](#GetFontFamilyName)
* [GetFontGeneration](#GetFontGeneration)
* [GetFontHeight](#GetFontHeight)
* [GetFontHinting](#GetFontHinting)
* [GetFontKerning](#GetFontKerning)
* [GetFontLineSkip](#GetFontLineSkip)
* [GetFontOutline](#GetFontOutline)
* [GetFontProperties](#GetFontProperties)
* [GetFontSDF](#GetFontSDF)
* [GetFontScript](#GetFontScript)
* [GetFontSize](#GetFontSize)
* [GetFontStyle](#GetFontStyle)
* [GetFontStyleName](#GetFontStyleName)
* [GetFontWeight](#GetFontWeight)
* [GetFontWrapAlignment](#GetFontWrapAlignment)
* [GetFreeTypeVersion](#GetFreeTypeVersion)
* [GetGPUTextDrawData](#GetGPUTextDrawData)
* [GetGPUTextEngineWinding](#GetGPUTextEngineWinding)
* [GetGlyphImage](#GetGlyphImage)
* [GetGlyphImageForIndex](#GetGlyphImageForIndex)
* [GetGlyphKerning](#GetGlyphKerning)
* [GetGlyphMetrics](#GetGlyphMetrics)
* [GetGlyphScript](#GetGlyphScript)
* [GetHarfBuzzVersion](#GetHarfBuzzVersion)
* [GetNextTextSubString](#GetNextTextSubString)
* [GetNumFontFaces](#GetNumFontFaces)
* [GetPreviousTextSubString](#GetPreviousTextSubString)
* [GetStringSize](#GetStringSize)
* [GetStringSizeWrapped](#GetStringSizeWrapped)
* [GetTextColor](#GetTextColor)
* [GetTextColorFloat](#GetTextColorFloat)
* [GetTextDirection](#GetTextDirection)
* [GetTextEngine](#GetTextEngine)
* [GetTextFont](#GetTextFont)
* [GetTextPosition](#GetTextPosition)
* [GetTextProperties](#GetTextProperties)
* [GetTextScript](#GetTextScript)
* [GetTextSize](#GetTextSize)
* [GetTextSubString](#GetTextSubString)
* [GetTextSubStringForLine](#GetTextSubStringForLine)
* [GetTextSubStringForPoint](#GetTextSubStringForPoint)
* [GetTextSubStringsForRange](#GetTextSubStringsForRange)
* [GetTextWrapWidth](#GetTextWrapWidth)
* [Init](#Init)
* [InsertTextString](#InsertTextString)
* [MeasureString](#MeasureString)
* [OpenFont](#OpenFont)
* [OpenFontIO](#OpenFontIO)
* [OpenFontWithProperties](#OpenFontWithProperties)
* [Quit](#Quit)
* [RemoveFallbackFont](#RemoveFallbackFont)
* [RenderGlyph\_Blended](#RenderGlyph_Blended)
* [RenderGlyph\_LCD](#RenderGlyph_LCD)
* [RenderGlyph\_Shaded](#RenderGlyph_Shaded)
* [RenderGlyph\_Solid](#RenderGlyph_Solid)
* [RenderText\_Blended](#RenderText_Blended)
* [RenderText\_Blended\_Wrapped](#RenderText_Blended_Wrapped)
* [RenderText\_LCD](#RenderText_LCD)
* [RenderText\_LCD\_Wrapped](#RenderText_LCD_Wrapped)
* [RenderText\_Shaded](#RenderText_Shaded)
* [RenderText\_Shaded\_Wrapped](#RenderText_Shaded_Wrapped)
* [RenderText\_Solid](#RenderText_Solid)
* [RenderText\_Solid\_Wrapped](#RenderText_Solid_Wrapped)
* [SetFontDirection](#SetFontDirection)
* [SetFontHinting](#SetFontHinting)
* [SetFontKerning](#SetFontKerning)
* [SetFontLanguage](#SetFontLanguage)
* [SetFontLineSkip](#SetFontLineSkip)
* [SetFontOutline](#SetFontOutline)
* [SetFontSDF](#SetFontSDF)
* [SetFontScript](#SetFontScript)
* [SetFontSize](#SetFontSize)
* [SetFontSizeDPI](#SetFontSizeDPI)
* [SetFontStyle](#SetFontStyle)
* [SetFontWrapAlignment](#SetFontWrapAlignment)
* [SetGPUTextEngineWinding](#SetGPUTextEngineWinding)
* [SetTextColor](#SetTextColor)
* [SetTextColorFloat](#SetTextColorFloat)
* [SetTextDirection](#SetTextDirection)
* [SetTextEngine](#SetTextEngine)
* [SetTextFont](#SetTextFont)
* [SetTextPosition](#SetTextPosition)
* [SetTextScript](#SetTextScript)
* [SetTextString](#SetTextString)
* [SetTextWrapWhitespaceVisible](#SetTextWrapWhitespaceVisible)
* [SetTextWrapWidth](#SetTextWrapWidth)
* [StringToTag](#StringToTag)
* [TagToString](#TagToString)
* [TextWrapWhitespaceVisible](#TextWrapWhitespaceVisible)
* [UpdateText](#UpdateText)
* [Version](#Version)
* [WasInit](#WasInit)

Procedure Groups (0)

This section is empty.

## Types

### [CopyOperation ¶](#CopyOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin#L17)

```
CopyOperation :: struct {
	cmd:         DrawCommand,
	text_offset: i32,
	glyph_font:  ^Font,
	glyph_index: u32,
	src:         sdl3.Rect,
	dst:         sdl3.Rect,
	reserved:    rawptr,
}
```

### [Direction ¶](#Direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L81)

```
Direction :: enum i32 {
	INVALID, 
	LTR     = 4, 
	RTL, 
	TTB, 
	BTT, 
}
```

##### Related Procedures With Parameters

* [SetFontDirection](/vendor/sdl3/ttf/#SetFontDirection)
* [SetTextDirection](/vendor/sdl3/ttf/#SetTextDirection)



##### Related Procedures With Returns

* [GetFontDirection](/vendor/sdl3/ttf/#GetFontDirection)
* [GetTextDirection](/vendor/sdl3/ttf/#GetTextDirection)

### [DrawCommand ¶](#DrawCommand) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin#L6)

```
DrawCommand :: enum i32 {
	NOOP, 
	FILL, 
	COPY, 
}
```

### [DrawOperation ¶](#DrawOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin#L27)

```
DrawOperation :: struct #raw_union {
	cmd:  DrawCommand,
	fill: FillOperation,
	copy: CopyOperation,
}
```

### [FillOperation ¶](#FillOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin#L12)

```
FillOperation :: struct {
	cmd:  DrawCommand,
	rect: sdl3.Rect,
}
```

### [Font ¶](#Font) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L45)

```
Font :: struct {}
```

##### Related Procedures With Parameters

* [AddFallbackFont](/vendor/sdl3/ttf/#AddFallbackFont)
* [ClearFallbackFonts](/vendor/sdl3/ttf/#ClearFallbackFonts)
* [CloseFont](/vendor/sdl3/ttf/#CloseFont)
* [CopyFont](/vendor/sdl3/ttf/#CopyFont)
* [CreateText](/vendor/sdl3/ttf/#CreateText)
* [FontHasGlyph](/vendor/sdl3/ttf/#FontHasGlyph)
* [FontIsFixedWidth](/vendor/sdl3/ttf/#FontIsFixedWidth)
* [FontIsScalable](/vendor/sdl3/ttf/#FontIsScalable)
* [GetFontAscent](/vendor/sdl3/ttf/#GetFontAscent)
* [GetFontDPI](/vendor/sdl3/ttf/#GetFontDPI)
* [GetFontDescent](/vendor/sdl3/ttf/#GetFontDescent)
* [GetFontDirection](/vendor/sdl3/ttf/#GetFontDirection)
* [GetFontFamilyName](/vendor/sdl3/ttf/#GetFontFamilyName)
* [GetFontGeneration](/vendor/sdl3/ttf/#GetFontGeneration)
* [GetFontHeight](/vendor/sdl3/ttf/#GetFontHeight)
* [GetFontHinting](/vendor/sdl3/ttf/#GetFontHinting)
* [GetFontKerning](/vendor/sdl3/ttf/#GetFontKerning)
* [GetFontLineSkip](/vendor/sdl3/ttf/#GetFontLineSkip)
* [GetFontOutline](/vendor/sdl3/ttf/#GetFontOutline)
* [GetFontProperties](/vendor/sdl3/ttf/#GetFontProperties)
* [GetFontSDF](/vendor/sdl3/ttf/#GetFontSDF)
* [GetFontScript](/vendor/sdl3/ttf/#GetFontScript)
* [GetFontSize](/vendor/sdl3/ttf/#GetFontSize)
* [GetFontStyle](/vendor/sdl3/ttf/#GetFontStyle)
* [GetFontStyleName](/vendor/sdl3/ttf/#GetFontStyleName)
* [GetFontWeight](/vendor/sdl3/ttf/#GetFontWeight)
* [GetFontWrapAlignment](/vendor/sdl3/ttf/#GetFontWrapAlignment)
* [GetGlyphImage](/vendor/sdl3/ttf/#GetGlyphImage)
* [GetGlyphImageForIndex](/vendor/sdl3/ttf/#GetGlyphImageForIndex)
* [GetGlyphKerning](/vendor/sdl3/ttf/#GetGlyphKerning)
* [GetGlyphMetrics](/vendor/sdl3/ttf/#GetGlyphMetrics)
* [GetNumFontFaces](/vendor/sdl3/ttf/#GetNumFontFaces)
* [GetStringSize](/vendor/sdl3/ttf/#GetStringSize)
* [GetStringSizeWrapped](/vendor/sdl3/ttf/#GetStringSizeWrapped)
* [MeasureString](/vendor/sdl3/ttf/#MeasureString)
* [RemoveFallbackFont](/vendor/sdl3/ttf/#RemoveFallbackFont)
* [RenderGlyph\_Blended](/vendor/sdl3/ttf/#RenderGlyph_Blended)
* [RenderGlyph\_LCD](/vendor/sdl3/ttf/#RenderGlyph_LCD)
* [RenderGlyph\_Shaded](/vendor/sdl3/ttf/#RenderGlyph_Shaded)
* [RenderGlyph\_Solid](/vendor/sdl3/ttf/#RenderGlyph_Solid)
* [RenderText\_Blended](/vendor/sdl3/ttf/#RenderText_Blended)
* [RenderText\_Blended\_Wrapped](/vendor/sdl3/ttf/#RenderText_Blended_Wrapped)
* [RenderText\_LCD](/vendor/sdl3/ttf/#RenderText_LCD)
* [RenderText\_LCD\_Wrapped](/vendor/sdl3/ttf/#RenderText_LCD_Wrapped)
* [RenderText\_Shaded](/vendor/sdl3/ttf/#RenderText_Shaded)
* [RenderText\_Shaded\_Wrapped](/vendor/sdl3/ttf/#RenderText_Shaded_Wrapped)
* [RenderText\_Solid](/vendor/sdl3/ttf/#RenderText_Solid)
* [RenderText\_Solid\_Wrapped](/vendor/sdl3/ttf/#RenderText_Solid_Wrapped)
* [SetFontDirection](/vendor/sdl3/ttf/#SetFontDirection)
* [SetFontHinting](/vendor/sdl3/ttf/#SetFontHinting)
* [SetFontKerning](/vendor/sdl3/ttf/#SetFontKerning)
* [SetFontLanguage](/vendor/sdl3/ttf/#SetFontLanguage)
* [SetFontLineSkip](/vendor/sdl3/ttf/#SetFontLineSkip)
* [SetFontOutline](/vendor/sdl3/ttf/#SetFontOutline)
* [SetFontSDF](/vendor/sdl3/ttf/#SetFontSDF)
* [SetFontScript](/vendor/sdl3/ttf/#SetFontScript)
* [SetFontSize](/vendor/sdl3/ttf/#SetFontSize)
* [SetFontSizeDPI](/vendor/sdl3/ttf/#SetFontSizeDPI)
* [SetFontStyle](/vendor/sdl3/ttf/#SetFontStyle)
* [SetFontWrapAlignment](/vendor/sdl3/ttf/#SetFontWrapAlignment)
* [SetTextFont](/vendor/sdl3/ttf/#SetTextFont)



##### Related Procedures With Returns

* [GetTextFont](/vendor/sdl3/ttf/#GetTextFont)
* [OpenFont](/vendor/sdl3/ttf/#OpenFont)
* [OpenFontIO](/vendor/sdl3/ttf/#OpenFontIO)
* [OpenFontWithProperties](/vendor/sdl3/ttf/#OpenFontWithProperties)

### [FontStyle ¶](#FontStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L54)

```
FontStyle :: enum u32 {
	BOLD, 
	ITALIC, 
	UNDERLINE, 
	STRIKETHROUGH, 
}
```

### [FontStyleFlags ¶](#FontStyleFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L61)

```
FontStyleFlags :: distinct bit_set[FontStyle; u32]
```

##### Related Procedures With Parameters

* [SetFontStyle](/vendor/sdl3/ttf/#SetFontStyle)



##### Related Procedures With Returns

* [GetFontStyle](/vendor/sdl3/ttf/#GetFontStyle)

### [GPUAtlasDrawSequence ¶](#GPUAtlasDrawSequence) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L96)

```
GPUAtlasDrawSequence :: struct {
	atlas_texture: ^sdl3.GPUTexture,
	xy:            [^]sdl3.FPoint `fmt:"v,num_vertices"`,
	uv:            [^]sdl3.FPoint `fmt:"v,num_vertices"`,
	num_vertices:  i32,
	indices:       [^]i32 `fmt:"v,num_indices"`,
	num_indices:   i32,
	image_type:    ImageType,
	next:          ^GPUAtlasDrawSequence,
}
```

##### Related Procedures With Returns

* [GetGPUTextDrawData](/vendor/sdl3/ttf/#GetGPUTextDrawData)

### [GPUTextEngineWinding ¶](#GPUTextEngineWinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L106)

```
GPUTextEngineWinding :: enum i32 {
	INVALID           = -1, 
	CLOCKWISE         = 0, 
	COUNTER_CLOCKWISE = 1, 
}
```

##### Related Procedures With Parameters

* [SetGPUTextEngineWinding](/vendor/sdl3/ttf/#SetGPUTextEngineWinding)



##### Related Procedures With Returns

* [GetGPUTextEngineWinding](/vendor/sdl3/ttf/#GetGPUTextEngineWinding)

### [Hinting ¶](#Hinting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L65)

```
Hinting :: enum i32 {
	INVALID        = -1, 
	NORMAL, 
	LIGHT, 
	MONO, 
	NONE, 
	LIGHT_SUBPIXEL, 
}
```

 

NOTE: This is called TTF\_HintingFlags but its not a bit\_set so
the "flags" doesn't really make sense, its just the hinting.




##### Related Procedures With Parameters

* [SetFontHinting](/vendor/sdl3/ttf/#SetFontHinting)



##### Related Procedures With Returns

* [GetFontHinting](/vendor/sdl3/ttf/#GetFontHinting)

### [HorizontalAlignment ¶](#HorizontalAlignment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L74)

```
HorizontalAlignment :: enum i32 {
	INVALID = -1, 
	LEFT, 
	CENTER, 
	RIGHT, 
}
```

##### Related Procedures With Parameters

* [SetFontWrapAlignment](/vendor/sdl3/ttf/#SetFontWrapAlignment)



##### Related Procedures With Returns

* [GetFontWrapAlignment](/vendor/sdl3/ttf/#GetFontWrapAlignment)

### [ImageType ¶](#ImageType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L89)

```
ImageType :: enum i32 {
	INVALID, 
	ALPHA, 
	COLOR, 
	SDF, 
}
```

##### Related Procedures With Parameters

* [GetGlyphImage](/vendor/sdl3/ttf/#GetGlyphImage)
* [GetGlyphImageForIndex](/vendor/sdl3/ttf/#GetGlyphImageForIndex)

### [SubString ¶](#SubString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L120)

```
SubString :: struct {
	flags:         SubStringFlags,
	offset:        i32,
	length:        i32,
	line_index:    i32,
	cluster_index: i32,
	rect:          sdl3.Rect,
}
```

##### Related Procedures With Parameters

* [GetNextTextSubString](/vendor/sdl3/ttf/#GetNextTextSubString)
* [GetPreviousTextSubString](/vendor/sdl3/ttf/#GetPreviousTextSubString)
* [GetTextSubString](/vendor/sdl3/ttf/#GetTextSubString)
* [GetTextSubStringForLine](/vendor/sdl3/ttf/#GetTextSubStringForLine)
* [GetTextSubStringForPoint](/vendor/sdl3/ttf/#GetTextSubStringForPoint)

### [SubStringFlags ¶](#SubStringFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L112)

```
SubStringFlags :: distinct bit_field u32 {
	direction:  u8 | 8,
	text_start: bool | 1,
	line_start: bool | 1,
	line_end:   bool | 1,
	text_end:   bool | 1,
}
```

### [Text ¶](#Text) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L47)

```
Text :: struct {
	text:      [^]u8,
	num_lines: i32,
	refcount:  i32,
	internal:  ^TextData,
}
```

##### Related Procedures With Parameters

* [AppendTextString](/vendor/sdl3/ttf/#AppendTextString)
* [DeleteTextString](/vendor/sdl3/ttf/#DeleteTextString)
* [DestroyText](/vendor/sdl3/ttf/#DestroyText)
* [DrawRendererText](/vendor/sdl3/ttf/#DrawRendererText)
* [DrawSurfaceText](/vendor/sdl3/ttf/#DrawSurfaceText)
* [GetGPUTextDrawData](/vendor/sdl3/ttf/#GetGPUTextDrawData)
* [GetNextTextSubString](/vendor/sdl3/ttf/#GetNextTextSubString)
* [GetPreviousTextSubString](/vendor/sdl3/ttf/#GetPreviousTextSubString)
* [GetTextColor](/vendor/sdl3/ttf/#GetTextColor)
* [GetTextColorFloat](/vendor/sdl3/ttf/#GetTextColorFloat)
* [GetTextDirection](/vendor/sdl3/ttf/#GetTextDirection)
* [GetTextEngine](/vendor/sdl3/ttf/#GetTextEngine)
* [GetTextFont](/vendor/sdl3/ttf/#GetTextFont)
* [GetTextPosition](/vendor/sdl3/ttf/#GetTextPosition)
* [GetTextProperties](/vendor/sdl3/ttf/#GetTextProperties)
* [GetTextScript](/vendor/sdl3/ttf/#GetTextScript)
* [GetTextSize](/vendor/sdl3/ttf/#GetTextSize)
* [GetTextSubString](/vendor/sdl3/ttf/#GetTextSubString)
* [GetTextSubStringForLine](/vendor/sdl3/ttf/#GetTextSubStringForLine)
* [GetTextSubStringForPoint](/vendor/sdl3/ttf/#GetTextSubStringForPoint)
* [GetTextSubStringsForRange](/vendor/sdl3/ttf/#GetTextSubStringsForRange)
* [GetTextWrapWidth](/vendor/sdl3/ttf/#GetTextWrapWidth)
* [InsertTextString](/vendor/sdl3/ttf/#InsertTextString)
* [SetTextColor](/vendor/sdl3/ttf/#SetTextColor)
* [SetTextColorFloat](/vendor/sdl3/ttf/#SetTextColorFloat)
* [SetTextDirection](/vendor/sdl3/ttf/#SetTextDirection)
* [SetTextEngine](/vendor/sdl3/ttf/#SetTextEngine)
* [SetTextFont](/vendor/sdl3/ttf/#SetTextFont)
* [SetTextPosition](/vendor/sdl3/ttf/#SetTextPosition)
* [SetTextScript](/vendor/sdl3/ttf/#SetTextScript)
* [SetTextString](/vendor/sdl3/ttf/#SetTextString)
* [SetTextWrapWhitespaceVisible](/vendor/sdl3/ttf/#SetTextWrapWhitespaceVisible)
* [SetTextWrapWidth](/vendor/sdl3/ttf/#SetTextWrapWidth)
* [TextWrapWhitespaceVisible](/vendor/sdl3/ttf/#TextWrapWhitespaceVisible)
* [UpdateText](/vendor/sdl3/ttf/#UpdateText)



##### Related Procedures With Returns

* [CreateText](/vendor/sdl3/ttf/#CreateText)

### [TextData ¶](#TextData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin#L35)

```
TextData :: struct {
	font:                ^Font,
	color:               sdl3.FColor,
	needs_layout_update: bool,
	layout:              ^TextLayout,
	x:                   i32,
	y:                   i32,
	w:                   i32,
	h:                   i32,
	num_ops:             i32,
	ops:                 [^]DrawOperation `fmt:"v,num_ops"`,
	num_clusters:        i32,
	clusters:            [^]SubString `fmt:"v,num_clusters"`,
	props:               sdl3.PropertiesID,
	needs_engine_update: bool,
	engine:              ^TextEngine,
	engine_text:         rawptr,
}
```

### [TextEngine ¶](#TextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin#L52)

```
TextEngine :: struct {
	version:     u32,
	userdata:    rawptr,
	CreateText:  proc "c" (userdata: rawptr, text: ^Text) -> bool,
	DestroyText: proc "c" (userdata: rawptr, Textext: ^Text),
}
```

##### Related Procedures With Parameters

* [CreateText](/vendor/sdl3/ttf/#CreateText)
* [DestroyGPUTextEngine](/vendor/sdl3/ttf/#DestroyGPUTextEngine)
* [DestroyRendererTextEngine](/vendor/sdl3/ttf/#DestroyRendererTextEngine)
* [DestroySurfaceTextEngine](/vendor/sdl3/ttf/#DestroySurfaceTextEngine)
* [GetGPUTextEngineWinding](/vendor/sdl3/ttf/#GetGPUTextEngineWinding)
* [SetGPUTextEngineWinding](/vendor/sdl3/ttf/#SetGPUTextEngineWinding)
* [SetTextEngine](/vendor/sdl3/ttf/#SetTextEngine)



##### Related Procedures With Returns

* [CreateGPUTextEngine](/vendor/sdl3/ttf/#CreateGPUTextEngine)
* [CreateGPUTextEngineWithProperties](/vendor/sdl3/ttf/#CreateGPUTextEngineWithProperties)
* [CreateRendererTextEngine](/vendor/sdl3/ttf/#CreateRendererTextEngine)
* [CreateRendererTextEngineWithProperties](/vendor/sdl3/ttf/#CreateRendererTextEngineWithProperties)
* [CreateSurfaceTextEngine](/vendor/sdl3/ttf/#CreateSurfaceTextEngine)
* [GetTextEngine](/vendor/sdl3/ttf/#GetTextEngine)

### [TextLayout ¶](#TextLayout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin#L33)

```
TextLayout :: struct {}
```

## Constants

### [FONT\_WEIGHT\_BLACK ¶](#FONT_WEIGHT_BLACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L32)

```
FONT_WEIGHT_BLACK :: 900
```

 

\*< Black (900) named font weight value

### [FONT\_WEIGHT\_BOLD ¶](#FONT_WEIGHT_BOLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L30)

```
FONT_WEIGHT_BOLD :: 700
```

 

\*< Bold (700) named font weight value

### [FONT\_WEIGHT\_EXTRA\_BLACK ¶](#FONT_WEIGHT_EXTRA_BLACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L33)

```
FONT_WEIGHT_EXTRA_BLACK :: 950
```

 

\*< ExtraBlack (950) named font weight value

### [FONT\_WEIGHT\_EXTRA\_BOLD ¶](#FONT_WEIGHT_EXTRA_BOLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L31)

```
FONT_WEIGHT_EXTRA_BOLD :: 800
```

 

\*< ExtraBold (800) named font weight value

### [FONT\_WEIGHT\_EXTRA\_LIGHT ¶](#FONT_WEIGHT_EXTRA_LIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L25)

```
FONT_WEIGHT_EXTRA_LIGHT :: 200
```

 

\*< ExtraLight (200) named font weight value

### [FONT\_WEIGHT\_LIGHT ¶](#FONT_WEIGHT_LIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L26)

```
FONT_WEIGHT_LIGHT :: 300
```

 

\*< Light (300) named font weight value

### [FONT\_WEIGHT\_MEDIUM ¶](#FONT_WEIGHT_MEDIUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L28)

```
FONT_WEIGHT_MEDIUM :: 500
```

 

\*< Medium (500) named font weight value

### [FONT\_WEIGHT\_NORMAL ¶](#FONT_WEIGHT_NORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L27)

```
FONT_WEIGHT_NORMAL :: 400
```

 

\*< Normal (400) named font weight value

### [FONT\_WEIGHT\_SEMI\_BOLD ¶](#FONT_WEIGHT_SEMI_BOLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L29)

```
FONT_WEIGHT_SEMI_BOLD :: 600
```

 

\*< SemiBold (600) named font weight value

### [FONT\_WEIGHT\_THIN ¶](#FONT_WEIGHT_THIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L24)

```
FONT_WEIGHT_THIN :: 100
```

 

\*< Thin (100) named font weight value

### [MAJOR\_VERSION ¶](#MAJOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L41)

```
MAJOR_VERSION :: 3
```

### [MINOR\_VERSION ¶](#MINOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L42)

```
MINOR_VERSION :: 2
```

### [PATCHLEVEL ¶](#PATCHLEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L43)

```
PATCHLEVEL :: 2
```

### [PROP\_FONT\_CREATE\_EXISTING\_FONT ¶](#PROP_FONT_CREATE_EXISTING_FONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L22)

```
PROP_FONT_CREATE_EXISTING_FONT :: "SDL_ttf.font.create.existing_font"
```

### [PROP\_FONT\_CREATE\_FACE\_NUMBER ¶](#PROP_FONT_CREATE_FACE_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L19)

```
PROP_FONT_CREATE_FACE_NUMBER :: "SDL_ttf.font.create.face"
```

### [PROP\_FONT\_CREATE\_FILENAME\_STRING ¶](#PROP_FONT_CREATE_FILENAME_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L14)

```
PROP_FONT_CREATE_FILENAME_STRING :: "SDL_ttf.font.create.filename"
```

### [PROP\_FONT\_CREATE\_HORIZONTAL\_DPI\_NUMBER ¶](#PROP_FONT_CREATE_HORIZONTAL_DPI_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L20)

```
PROP_FONT_CREATE_HORIZONTAL_DPI_NUMBER :: "SDL_ttf.font.create.hdpi"
```

### [PROP\_FONT\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN ¶](#PROP_FONT_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L17)

```
PROP_FONT_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN :: "SDL_ttf.font.create.iostream.autoclose"
```

### [PROP\_FONT\_CREATE\_IOSTREAM\_OFFSET\_NUMBER ¶](#PROP_FONT_CREATE_IOSTREAM_OFFSET_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L16)

```
PROP_FONT_CREATE_IOSTREAM_OFFSET_NUMBER :: "SDL_ttf.font.create.iostream.offset"
```

### [PROP\_FONT\_CREATE\_IOSTREAM\_POINTER ¶](#PROP_FONT_CREATE_IOSTREAM_POINTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L15)

```
PROP_FONT_CREATE_IOSTREAM_POINTER :: "SDL_ttf.font.create.iostream"
```

### [PROP\_FONT\_CREATE\_SIZE\_FLOAT ¶](#PROP_FONT_CREATE_SIZE_FLOAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L18)

```
PROP_FONT_CREATE_SIZE_FLOAT :: "SDL_ttf.font.create.size"
```

### [PROP\_FONT\_CREATE\_VERTICAL\_DPI\_NUMBER ¶](#PROP_FONT_CREATE_VERTICAL_DPI_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L21)

```
PROP_FONT_CREATE_VERTICAL_DPI_NUMBER :: "SDL_ttf.font.create.vdpi"
```

### [PROP\_GPU\_TEXT\_ENGINE\_ATLAS\_TEXTURE\_SIZE ¶](#PROP_GPU_TEXT_ENGINE_ATLAS_TEXTURE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L39)

```
PROP_GPU_TEXT_ENGINE_ATLAS_TEXTURE_SIZE :: "SDL_ttf.gpu_text_engine.create.atlas_texture_size"
```

### [PROP\_GPU\_TEXT\_ENGINE\_DEVICE ¶](#PROP_GPU_TEXT_ENGINE_DEVICE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L38)

```
PROP_GPU_TEXT_ENGINE_DEVICE :: "SDL_ttf.gpu_text_engine.create.device"
```

### [PROP\_RENDERER\_TEXT\_ENGINE\_ATLAS\_TEXTURE\_SIZE ¶](#PROP_RENDERER_TEXT_ENGINE_ATLAS_TEXTURE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L36)

```
PROP_RENDERER_TEXT_ENGINE_ATLAS_TEXTURE_SIZE :: "SDL_ttf.renderer_text_engine.create.atlas_texture_size"
```

### [PROP\_RENDERER\_TEXT\_ENGINE\_RENDERER ¶](#PROP_RENDERER_TEXT_ENGINE_RENDERER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L35)

```
PROP_RENDERER_TEXT_ENGINE_RENDERER :: "SDL_ttf.renderer_text_engine.create.renderer"
```

## Variables

This section is empty.

## Procedures

### [AddFallbackFont ¶](#AddFallbackFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L231)

```
AddFallbackFont :: proc "c" (font: ^Font, fallback: ^Font) -> bool ---
```

### [AppendTextString ¶](#AppendTextString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L278)

```
AppendTextString :: proc "c" (text: ^Text, string: cstring, length: uint) -> bool ---
```

### [ClearFallbackFonts ¶](#ClearFallbackFonts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L233)

```
ClearFallbackFonts :: proc "c" (font: ^Font) ---
```

### [CloseFont ¶](#CloseFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L291)

```
CloseFont :: proc "c" (font: ^Font) ---
```

### [CopyFont ¶](#CopyFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L136)

```
CopyFont :: proc "c" (existing_font: ^Font) -> ^Font ---
```

### [CreateGPUTextEngine ¶](#CreateGPUTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L207)

```
CreateGPUTextEngine :: proc "c" (device: ^sdl3.GPUDevice) -> ^TextEngine ---
```

### [CreateGPUTextEngineWithProperties ¶](#CreateGPUTextEngineWithProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L208)

```
CreateGPUTextEngineWithProperties :: proc "c" (props: sdl3.PropertiesID) -> ^TextEngine ---
```

### [CreateRendererTextEngine ¶](#CreateRendererTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L204)

```
CreateRendererTextEngine :: proc "c" (renderer: ^sdl3.Renderer) -> ^TextEngine ---
```

### [CreateRendererTextEngineWithProperties ¶](#CreateRendererTextEngineWithProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L205)

```
CreateRendererTextEngineWithProperties :: proc "c" (props: sdl3.PropertiesID) -> ^TextEngine ---
```

### [CreateSurfaceTextEngine ¶](#CreateSurfaceTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L202)

```
CreateSurfaceTextEngine :: proc "c" () -> ^TextEngine ---
```

### [CreateText ¶](#CreateText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L213)

```
CreateText :: proc "c" (engine: ^TextEngine, font: ^Font, text: cstring, length: uint) -> ^Text ---
```

### [DeleteTextString ¶](#DeleteTextString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L279)

```
DeleteTextString :: proc "c" (text: ^Text, offset, length: i32) -> bool ---
```

### [DestroyGPUTextEngine ¶](#DestroyGPUTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L260)

```
DestroyGPUTextEngine :: proc "c" (engine: ^TextEngine) ---
```

### [DestroyRendererTextEngine ¶](#DestroyRendererTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L258)

```
DestroyRendererTextEngine :: proc "c" (engine: ^TextEngine) ---
```

### [DestroySurfaceTextEngine ¶](#DestroySurfaceTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L255)

```
DestroySurfaceTextEngine :: proc "c" (engine: ^TextEngine) ---
```

### [DestroyText ¶](#DestroyText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L290)

```
DestroyText :: proc "c" (text: ^Text) ---
```

### [DrawRendererText ¶](#DrawRendererText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L257)

```
DrawRendererText :: proc "c" (text: ^Text, x, y: f32) -> bool ---
```

### [DrawSurfaceText ¶](#DrawSurfaceText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L254)

```
DrawSurfaceText :: proc "c" (text: ^Text, x, y: i32, surface: ^sdl3.Surface) -> bool ---
```

### [FontHasGlyph ¶](#FontHasGlyph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L185)

```
FontHasGlyph :: proc "c" (font: ^Font, ch: u32) -> bool ---
```

### [FontIsFixedWidth ¶](#FontIsFixedWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L172)

```
FontIsFixedWidth :: proc "c" (font: ^Font) -> bool ---
```

### [FontIsScalable ¶](#FontIsScalable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L173)

```
FontIsScalable :: proc "c" (font: ^Font) -> bool ---
```

### [GetFontAscent ¶](#GetFontAscent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L163)

```
GetFontAscent :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontDPI ¶](#GetFontDPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L237)

```
GetFontDPI :: proc "c" (font: ^Font, hdpi: ^i32, vdpi: ^i32) -> bool ---
```

### [GetFontDescent ¶](#GetFontDescent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L164)

```
GetFontDescent :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontDirection ¶](#GetFontDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L178)

```
GetFontDirection :: proc "c" (font: ^Font) -> Direction ---
```

### [GetFontFamilyName ¶](#GetFontFamilyName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L175)

```
GetFontFamilyName :: proc "c" (font: ^Font) -> cstring ---
```

### [GetFontGeneration ¶](#GetFontGeneration) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L139)

```
GetFontGeneration :: proc "c" (font: ^Font) -> u32 ---
```

### [GetFontHeight ¶](#GetFontHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L162)

```
GetFontHeight :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontHinting ¶](#GetFontHinting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L150)

```
GetFontHinting :: proc "c" (font: ^Font) -> Hinting ---
```

### [GetFontKerning ¶](#GetFontKerning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L170)

```
GetFontKerning :: proc "c" (font: ^Font) -> bool ---
```

### [GetFontLineSkip ¶](#GetFontLineSkip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L167)

```
GetFontLineSkip :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontOutline ¶](#GetFontOutline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L147)

```
GetFontOutline :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontProperties ¶](#GetFontProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L138)

```
GetFontProperties :: proc "c" (font: ^Font) -> sdl3.PropertiesID ---
```

### [GetFontSDF ¶](#GetFontSDF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L155)

```
GetFontSDF :: proc "c" (font: ^Font) -> bool ---
```

### [GetFontScript ¶](#GetFontScript) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L182)

```
GetFontScript :: proc "c" (font: ^Font) -> u32 ---
```

### [GetFontSize ¶](#GetFontSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L141)

```
GetFontSize :: proc "c" (font: ^Font) -> f32 ---
```

### [GetFontStyle ¶](#GetFontStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L144)

```
GetFontStyle :: proc "c" (font: ^Font) -> FontStyleFlags ---
```

### [GetFontStyleName ¶](#GetFontStyleName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L176)

```
GetFontStyleName :: proc "c" (font: ^Font) -> cstring ---
```

### [GetFontWeight ¶](#GetFontWeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L157)

```
GetFontWeight :: proc "c" (font: ^Font) -> i32 ---
```

### [GetFontWrapAlignment ¶](#GetFontWrapAlignment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L160)

```
GetFontWrapAlignment :: proc "c" (font: ^Font) -> HorizontalAlignment ---
```

### [GetFreeTypeVersion ¶](#GetFreeTypeVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L226)

```
GetFreeTypeVersion :: proc "c" (major, minor, patch: ^i32) ---
```

### [GetGPUTextDrawData ¶](#GetGPUTextDrawData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L209)

```
GetGPUTextDrawData :: proc "c" (text: ^Text) -> ^GPUAtlasDrawSequence ---
```

### [GetGPUTextEngineWinding ¶](#GetGPUTextEngineWinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L211)

```
GetGPUTextEngineWinding :: proc "c" (#by_ptr engine: TextEngine) -> GPUTextEngineWinding ---
```

### [GetGlyphImage ¶](#GetGlyphImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L186)

```
GetGlyphImage :: proc "c" (font: ^Font, ch: u32, image_type: ^ImageType) -> ^sdl3.Surface ---
```

### [GetGlyphImageForIndex ¶](#GetGlyphImageForIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L187)

```
GetGlyphImageForIndex :: proc "c" (font: ^Font, glyph_index: u32, image_type: ^ImageType) -> ^sdl3.Surface ---
```

### [GetGlyphKerning ¶](#GetGlyphKerning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L248)

```
GetGlyphKerning :: proc "c" (font: ^Font, previous_ch: u32, ch: u32, kerning: ^i32) -> bool ---
```

### [GetGlyphMetrics ¶](#GetGlyphMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L247)

```
GetGlyphMetrics :: proc "c" (
	font:                   ^Font, 
	ch:                     u32, 
	minx, maxx, miny, maxy, 
	advance:                ^i32, 
) -> bool ---
```

### [GetGlyphScript ¶](#GetGlyphScript) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L184)

```
GetGlyphScript :: proc "c" (ch: u32) -> u32 ---
```

### [GetHarfBuzzVersion ¶](#GetHarfBuzzVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L227)

```
GetHarfBuzzVersion :: proc "c" (major, minor, patch: ^i32) ---
```

### [GetNextTextSubString ¶](#GetNextTextSubString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L287)

```
GetNextTextSubString :: proc "c" (text: ^Text, #by_ptr substring: SubString, next: ^SubString) -> bool ---
```

### [GetNumFontFaces ¶](#GetNumFontFaces) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L152)

```
GetNumFontFaces :: proc "c" (font: ^Font) -> i32 ---
```

### [GetPreviousTextSubString ¶](#GetPreviousTextSubString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L286)

```
GetPreviousTextSubString :: proc "c" (text: ^Text, #by_ptr substring: SubString, previous: ^SubString) -> bool ---
```

### [GetStringSize ¶](#GetStringSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L250)

```
GetStringSize :: proc "c" (font: ^Font, text: cstring, length: uint, w, h: ^i32) -> bool ---
```

### [GetStringSizeWrapped ¶](#GetStringSizeWrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L251)

```
GetStringSizeWrapped :: proc "c" (
	font:       ^Font, 
	text:       cstring, 
	length:     uint, 
	wrap_width: i32, 
	w, 
	h:          ^i32, 
) -> bool ---
```

### [GetTextColor ¶](#GetTextColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L268)

```
GetTextColor :: proc "c" (text: ^Text, r, g, b, a: ^u8) -> bool ---
```

### [GetTextColorFloat ¶](#GetTextColorFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L269)

```
GetTextColorFloat :: proc "c" (text: ^Text, r, g, b, a: ^f32) -> bool ---
```

### [GetTextDirection ¶](#GetTextDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L217)

```
GetTextDirection :: proc "c" (text: ^Text) -> Direction ---
```

### [GetTextEngine ¶](#GetTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L215)

```
GetTextEngine :: proc "c" (text: ^Text) -> ^TextEngine ---
```

### [GetTextFont ¶](#GetTextFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L216)

```
GetTextFont :: proc "c" (text: ^Text) -> ^Font ---
```

### [GetTextPosition ¶](#GetTextPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L271)

```
GetTextPosition :: proc "c" (text: ^Text, x, y: ^i32) -> bool ---
```

### [GetTextProperties ¶](#GetTextProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L214)

```
GetTextProperties :: proc "c" (text: ^Text) -> sdl3.PropertiesID ---
```

### [GetTextScript ¶](#GetTextScript) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L218)

```
GetTextScript :: proc "c" (text: ^Text) -> u32 ---
```

### [GetTextSize ¶](#GetTextSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L281)

```
GetTextSize :: proc "c" (text: ^Text, w, h: ^i32) -> bool ---
```

### [GetTextSubString ¶](#GetTextSubString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L283)

```
GetTextSubString :: proc "c" (text: ^Text, offset: i32, substring: ^SubString) -> bool ---
```

### [GetTextSubStringForLine ¶](#GetTextSubStringForLine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L284)

```
GetTextSubStringForLine :: proc "c" (text: ^Text, line: i32, substring: ^SubString) -> bool ---
```

### [GetTextSubStringForPoint ¶](#GetTextSubStringForPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L285)

```
GetTextSubStringForPoint :: proc "c" (text: ^Text, x, y: i32, substring: ^SubString) -> bool ---
```

### [GetTextSubStringsForRange ¶](#GetTextSubStringsForRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L221)

```
GetTextSubStringsForRange :: proc "c" (text: ^Text, offset, length: i32, count: ^i32) -> [^]^SubString ---
```

### [GetTextWrapWidth ¶](#GetTextWrapWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L273)

```
GetTextWrapWidth :: proc "c" (text: ^Text, wrap_width: ^i32) -> bool ---
```

### [Init ¶](#Init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L229)

```
Init :: proc "c" () -> bool ---
```

### [InsertTextString ¶](#InsertTextString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L277)

```
InsertTextString :: proc "c" (text: ^Text, offset: i32, string: cstring, length: uint) -> bool ---
```

### [MeasureString ¶](#MeasureString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L252)

```
MeasureString :: proc "c" (
	font:            ^Font, 
	text:            cstring, 
	length:          uint, 
	max_width:       i32, 
	measured_width:  ^i32, 
	measured_length: ^uint, 
) -> bool ---
```

### [OpenFont ¶](#OpenFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L132)

```
OpenFont :: proc "c" (file: cstring, ptsize: f32) -> ^Font ---
```

### [OpenFontIO ¶](#OpenFontIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L133)

```
OpenFontIO :: proc "c" (src: ^sdl3.IOStream, closeio: bool, ptsize: f32) -> ^Font ---
```

### [OpenFontWithProperties ¶](#OpenFontWithProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L134)

```
OpenFontWithProperties :: proc "c" (props: sdl3.PropertiesID) -> ^Font ---
```

### [Quit ¶](#Quit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L292)

```
Quit :: proc "c" () ---
```

### [RemoveFallbackFont ¶](#RemoveFallbackFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L232)

```
RemoveFallbackFont :: proc "c" (font: ^Font, fallback: ^Font) ---
```

### [RenderGlyph\_Blended ¶](#RenderGlyph_Blended) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L197)

```
RenderGlyph_Blended :: proc "c" (font: ^Font, ch: u32, fg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderGlyph\_LCD ¶](#RenderGlyph_LCD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L200)

```
RenderGlyph_LCD :: proc "c" (font: ^Font, ch: u32, fg, bg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderGlyph\_Shaded ¶](#RenderGlyph_Shaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L194)

```
RenderGlyph_Shaded :: proc "c" (font: ^Font, ch: u32, fg, bg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderGlyph\_Solid ¶](#RenderGlyph_Solid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L191)

```
RenderGlyph_Solid :: proc "c" (font: ^Font, ch: u32, fg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderText\_Blended ¶](#RenderText_Blended) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L195)

```
RenderText_Blended :: proc "c" (font: ^Font, text: cstring, length: uint, fg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderText\_Blended\_Wrapped ¶](#RenderText_Blended_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L196)

```
RenderText_Blended_Wrapped :: proc "c" (font: ^Font, text: cstring, length: uint, fg: sdl3.Color, wrap_width: i32) -> ^sdl3.Surface ---
```

### [RenderText\_LCD ¶](#RenderText_LCD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L198)

```
RenderText_LCD :: proc "c" (font: ^Font, text: cstring, length: uint, fg, bg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderText\_LCD\_Wrapped ¶](#RenderText_LCD_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L199)

```
RenderText_LCD_Wrapped :: proc "c" (
	font:       ^Font, 
	text:       cstring, 
	length:     uint, 
	fg, bg:     sdl3.Color, 
	wrap_width: i32, 
) -> ^sdl3.Surface ---
```

### [RenderText\_Shaded ¶](#RenderText_Shaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L192)

```
RenderText_Shaded :: proc "c" (font: ^Font, text: cstring, length: uint, fg, bg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderText\_Shaded\_Wrapped ¶](#RenderText_Shaded_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L193)

```
RenderText_Shaded_Wrapped :: proc "c" (
	font:       ^Font, 
	text:       cstring, 
	length:     uint, 
	fg, bg:     sdl3.Color, 
	wrap_width: i32, 
) -> ^sdl3.Surface ---
```

### [RenderText\_Solid ¶](#RenderText_Solid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L189)

```
RenderText_Solid :: proc "c" (font: ^Font, text: cstring, length: uint, fg: sdl3.Color) -> ^sdl3.Surface ---
```

### [RenderText\_Solid\_Wrapped ¶](#RenderText_Solid_Wrapped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L190)

```
RenderText_Solid_Wrapped :: proc "c" (font: ^Font, text: cstring, length: uint, fg: sdl3.Color, wrap_Length: i32) -> ^sdl3.Surface ---
```

### [SetFontDirection ¶](#SetFontDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L239)

```
SetFontDirection :: proc "c" (font: ^Font, direction: Direction) -> bool ---
```

### [SetFontHinting ¶](#SetFontHinting) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L149)

```
SetFontHinting :: proc "c" (font: ^Font, hinting: Hinting) ---
```

### [SetFontKerning ¶](#SetFontKerning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L169)

```
SetFontKerning :: proc "c" (font: ^Font, enabled: bool) ---
```

### [SetFontLanguage ¶](#SetFontLanguage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L245)

```
SetFontLanguage :: proc "c" (font: ^Font, language_bcp47: cstring) -> bool ---
```

### [SetFontLineSkip ¶](#SetFontLineSkip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L166)

```
SetFontLineSkip :: proc "c" (font: ^Font, lineskip: i32) ---
```

### [SetFontOutline ¶](#SetFontOutline) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L146)

```
SetFontOutline :: proc "c" (font: ^Font, outline: i32) -> bool ---
```

### [SetFontSDF ¶](#SetFontSDF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L154)

```
SetFontSDF :: proc "c" (font: ^Font, enabled: bool) -> bool ---
```

### [SetFontScript ¶](#SetFontScript) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L243)

```
SetFontScript :: proc "c" (font: ^Font, script: u32) -> bool ---
```

### [SetFontSize ¶](#SetFontSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L235)

```
SetFontSize :: proc "c" (font: ^Font, ptsize: f32) -> bool ---
```

### [SetFontSizeDPI ¶](#SetFontSizeDPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L236)

```
SetFontSizeDPI :: proc "c" (font: ^Font, ptsize: f32, hdpi: i32, vdpi: i32) -> bool ---
```

### [SetFontStyle ¶](#SetFontStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L143)

```
SetFontStyle :: proc "c" (font: ^Font, style: FontStyleFlags) ---
```

### [SetFontWrapAlignment ¶](#SetFontWrapAlignment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L159)

```
SetFontWrapAlignment :: proc "c" (font: ^Font, align: HorizontalAlignment) ---
```

### [SetGPUTextEngineWinding ¶](#SetGPUTextEngineWinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L210)

```
SetGPUTextEngineWinding :: proc "c" (engine: ^TextEngine, winding: GPUTextEngineWinding) ---
```

### [SetTextColor ¶](#SetTextColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L266)

```
SetTextColor :: proc "c" (text: ^Text, r, g, b, a: u8) -> bool ---
```

### [SetTextColorFloat ¶](#SetTextColorFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L267)

```
SetTextColorFloat :: proc "c" (text: ^Text, r, g, b, a: f32) -> bool ---
```

### [SetTextDirection ¶](#SetTextDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L264)

```
SetTextDirection :: proc "c" (text: ^Text, direction: Direction) -> bool ---
```

### [SetTextEngine ¶](#SetTextEngine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L262)

```
SetTextEngine :: proc "c" (text: ^Text, engine: ^TextEngine) -> bool ---
```

### [SetTextFont ¶](#SetTextFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L263)

```
SetTextFont :: proc "c" (text: ^Text, font: ^Font) -> bool ---
```

### [SetTextPosition ¶](#SetTextPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L270)

```
SetTextPosition :: proc "c" (text: ^Text, x, y: i32) -> bool ---
```

### [SetTextScript ¶](#SetTextScript) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L265)

```
SetTextScript :: proc "c" (text: ^Text, script: u32) -> bool ---
```

### [SetTextString ¶](#SetTextString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L276)

```
SetTextString :: proc "c" (text: ^Text, string: cstring, length: uint) -> bool ---
```

### [SetTextWrapWhitespaceVisible ¶](#SetTextWrapWhitespaceVisible) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L274)

```
SetTextWrapWhitespaceVisible :: proc "c" (text: ^Text, visible: bool) -> bool ---
```

### [SetTextWrapWidth ¶](#SetTextWrapWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L272)

```
SetTextWrapWidth :: proc "c" (text: ^Text, wrap_width: i32) -> bool ---
```

### [StringToTag ¶](#StringToTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L180)

```
StringToTag :: proc "c" (string: cstring) -> u32 ---
```

### [TagToString ¶](#TagToString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L241)

```
TagToString :: proc "c" (tag: u32, string: [^]u8, size: uint) ---
```

### [TextWrapWhitespaceVisible ¶](#TextWrapWhitespaceVisible) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L219)

```
TextWrapWhitespaceVisible :: proc "c" (text: ^Text) -> bool ---
```

### [UpdateText ¶](#UpdateText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L289)

```
UpdateText :: proc "c" (text: ^Text) -> bool ---
```

### [Version ¶](#Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L129)

```
Version :: proc "c" () -> i32 ---
```

### [WasInit ¶](#WasInit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin#L130)

```
WasInit :: proc "c" () -> i32 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [sdl3\_textengine.odin](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_textengine.odin)
* [sdl3\_ttf.odin](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/ttf/sdl3_ttf.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.528898600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [CopyOperation](#CopyOperation)
    + [Direction](#Direction)
    + [DrawCommand](#DrawCommand)
    + [DrawOperation](#DrawOperation)
    + [FillOperation](#FillOperation)
    + [Font](#Font)
    + [FontStyle](#FontStyle)
    + [FontStyleFlags](#FontStyleFlags)
    + [GPUAtlasDrawSequence](#GPUAtlasDrawSequence)
    + [GPUTextEngineWinding](#GPUTextEngineWinding)
    + [Hinting](#Hinting)
    + [HorizontalAlignment](#HorizontalAlignment)
    + [ImageType](#ImageType)
    + [SubString](#SubString)
    + [SubStringFlags](#SubStringFlags)
    + [Text](#Text)
    + [TextData](#TextData)
    + [TextEngine](#TextEngine)
    + [TextLayout](#TextLayout)
  * [Constants](#pkg-Constants)
    + [FONT\_WEIGHT\_BLACK](#FONT_WEIGHT_BLACK)
    + [FONT\_WEIGHT\_BOLD](#FONT_WEIGHT_BOLD)
    + [FONT\_WEIGHT\_EXTRA\_BLACK](#FONT_WEIGHT_EXTRA_BLACK)
    + [FONT\_WEIGHT\_EXTRA\_BOLD](#FONT_WEIGHT_EXTRA_BOLD)
    + [FONT\_WEIGHT\_EXTRA\_LIGHT](#FONT_WEIGHT_EXTRA_LIGHT)
    + [FONT\_WEIGHT\_LIGHT](#FONT_WEIGHT_LIGHT)
    + [FONT\_WEIGHT\_MEDIUM](#FONT_WEIGHT_MEDIUM)
    + [FONT\_WEIGHT\_NORMAL](#FONT_WEIGHT_NORMAL)
    + [FONT\_WEIGHT\_SEMI\_BOLD](#FONT_WEIGHT_SEMI_BOLD)
    + [FONT\_WEIGHT\_THIN](#FONT_WEIGHT_THIN)
    + [MAJOR\_VERSION](#MAJOR_VERSION)
    + [MINOR\_VERSION](#MINOR_VERSION)
    + [PATCHLEVEL](#PATCHLEVEL)
    + [PROP\_FONT\_CREATE\_EXISTING\_FONT](#PROP_FONT_CREATE_EXISTING_FONT)
    + [PROP\_FONT\_CREATE\_FACE\_NUMBER](#PROP_FONT_CREATE_FACE_NUMBER)
    + [PROP\_FONT\_CREATE\_FILENAME\_STRING](#PROP_FONT_CREATE_FILENAME_STRING)
    + [PROP\_FONT\_CREATE\_HORIZONTAL\_DPI\_NUMBER](#PROP_FONT_CREATE_HORIZONTAL_DPI_NUMBER)
    + [PROP\_FONT\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN](#PROP_FONT_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN)
    + [PROP\_FONT\_CREATE\_IOSTREAM\_OFFSET\_NUMBER](#PROP_FONT_CREATE_IOSTREAM_OFFSET_NUMBER)
    + [PROP\_FONT\_CREATE\_IOSTREAM\_POINTER](#PROP_FONT_CREATE_IOSTREAM_POINTER)
    + [PROP\_FONT\_CREATE\_SIZE\_FLOAT](#PROP_FONT_CREATE_SIZE_FLOAT)
    + [PROP\_FONT\_CREATE\_VERTICAL\_DPI\_NUMBER](#PROP_FONT_CREATE_VERTICAL_DPI_NUMBER)
    + [PROP\_GPU\_TEXT\_ENGINE\_ATLAS\_TEXTURE\_SIZE](#PROP_GPU_TEXT_ENGINE_ATLAS_TEXTURE_SIZE)
    + [PROP\_GPU\_TEXT\_ENGINE\_DEVICE](#PROP_GPU_TEXT_ENGINE_DEVICE)
    + [PROP\_RENDERER\_TEXT\_ENGINE\_ATLAS\_TEXTURE\_SIZE](#PROP_RENDERER_TEXT_ENGINE_ATLAS_TEXTURE_SIZE)
    + [PROP\_RENDERER\_TEXT\_ENGINE\_RENDERER](#PROP_RENDERER_TEXT_ENGINE_RENDERER)
  * [Procedures](#pkg-Procedures)
    + [AddFallbackFont](#AddFallbackFont)
    + [AppendTextString](#AppendTextString)
    + [ClearFallbackFonts](#ClearFallbackFonts)
    + [CloseFont](#CloseFont)
    + [CopyFont](#CopyFont)
    + [CreateGPUTextEngine](#CreateGPUTextEngine)
    + [CreateGPUTextEngineWithProperties](#CreateGPUTextEngineWithProperties)
    + [CreateRendererTextEngine](#CreateRendererTextEngine)
    + [CreateRendererTextEngineWithProperties](#CreateRendererTextEngineWithProperties)
    + [CreateSurfaceTextEngine](#CreateSurfaceTextEngine)
    + [CreateText](#CreateText)
    + [DeleteTextString](#DeleteTextString)
    + [DestroyGPUTextEngine](#DestroyGPUTextEngine)
    + [DestroyRendererTextEngine](#DestroyRendererTextEngine)
    + [DestroySurfaceTextEngine](#DestroySurfaceTextEngine)
    + [DestroyText](#DestroyText)
    + [DrawRendererText](#DrawRendererText)
    + [DrawSurfaceText](#DrawSurfaceText)
    + [FontHasGlyph](#FontHasGlyph)
    + [FontIsFixedWidth](#FontIsFixedWidth)
    + [FontIsScalable](#FontIsScalable)
    + [GetFontAscent](#GetFontAscent)
    + [GetFontDPI](#GetFontDPI)
    + [GetFontDescent](#GetFontDescent)
    + [GetFontDirection](#GetFontDirection)
    + [GetFontFamilyName](#GetFontFamilyName)
    + [GetFontGeneration](#GetFontGeneration)
    + [GetFontHeight](#GetFontHeight)
    + [GetFontHinting](#GetFontHinting)
    + [GetFontKerning](#GetFontKerning)
    + [GetFontLineSkip](#GetFontLineSkip)
    + [GetFontOutline](#GetFontOutline)
    + [GetFontProperties](#GetFontProperties)
    + [GetFontSDF](#GetFontSDF)
    + [GetFontScript](#GetFontScript)
    + [GetFontSize](#GetFontSize)
    + [GetFontStyle](#GetFontStyle)
    + [GetFontStyleName](#GetFontStyleName)
    + [GetFontWeight](#GetFontWeight)
    + [GetFontWrapAlignment](#GetFontWrapAlignment)
    + [GetFreeTypeVersion](#GetFreeTypeVersion)
    + [GetGPUTextDrawData](#GetGPUTextDrawData)
    + [GetGPUTextEngineWinding](#GetGPUTextEngineWinding)
    + [GetGlyphImage](#GetGlyphImage)
    + [GetGlyphImageForIndex](#GetGlyphImageForIndex)
    + [GetGlyphKerning](#GetGlyphKerning)
    + [GetGlyphMetrics](#GetGlyphMetrics)
    + [GetGlyphScript](#GetGlyphScript)
    + [GetHarfBuzzVersion](#GetHarfBuzzVersion)
    + [GetNextTextSubString](#GetNextTextSubString)
    + [GetNumFontFaces](#GetNumFontFaces)
    + [GetPreviousTextSubString](#GetPreviousTextSubString)
    + [GetStringSize](#GetStringSize)
    + [GetStringSizeWrapped](#GetStringSizeWrapped)
    + [GetTextColor](#GetTextColor)
    + [GetTextColorFloat](#GetTextColorFloat)
    + [GetTextDirection](#GetTextDirection)
    + [GetTextEngine](#GetTextEngine)
    + [GetTextFont](#GetTextFont)
    + [GetTextPosition](#GetTextPosition)
    + [GetTextProperties](#GetTextProperties)
    + [GetTextScript](#GetTextScript)
    + [GetTextSize](#GetTextSize)
    + [GetTextSubString](#GetTextSubString)
    + [GetTextSubStringForLine](#GetTextSubStringForLine)
    + [GetTextSubStringForPoint](#GetTextSubStringForPoint)
    + [GetTextSubStringsForRange](#GetTextSubStringsForRange)
    + [GetTextWrapWidth](#GetTextWrapWidth)
    + [Init](#Init)
    + [InsertTextString](#InsertTextString)
    + [MeasureString](#MeasureString)
    + [OpenFont](#OpenFont)
    + [OpenFontIO](#OpenFontIO)
    + [OpenFontWithProperties](#OpenFontWithProperties)
    + [Quit](#Quit)
    + [RemoveFallbackFont](#RemoveFallbackFont)
    + [RenderGlyph\_Blended](#RenderGlyph_Blended)
    + [RenderGlyph\_LCD](#RenderGlyph_LCD)
    + [RenderGlyph\_Shaded](#RenderGlyph_Shaded)
    + [RenderGlyph\_Solid](#RenderGlyph_Solid)
    + [RenderText\_Blended](#RenderText_Blended)
    + [RenderText\_Blended\_Wrapped](#RenderText_Blended_Wrapped)
    + [RenderText\_LCD](#RenderText_LCD)
    + [RenderText\_LCD\_Wrapped](#RenderText_LCD_Wrapped)
    + [RenderText\_Shaded](#RenderText_Shaded)
    + [RenderText\_Shaded\_Wrapped](#RenderText_Shaded_Wrapped)
    + [RenderText\_Solid](#RenderText_Solid)
    + [RenderText\_Solid\_Wrapped](#RenderText_Solid_Wrapped)
    + [SetFontDirection](#SetFontDirection)
    + [SetFontHinting](#SetFontHinting)
    + [SetFontKerning](#SetFontKerning)
    + [SetFontLanguage](#SetFontLanguage)
    + [SetFontLineSkip](#SetFontLineSkip)
    + [SetFontOutline](#SetFontOutline)
    + [SetFontSDF](#SetFontSDF)
    + [SetFontScript](#SetFontScript)
    + [SetFontSize](#SetFontSize)
    + [SetFontSizeDPI](#SetFontSizeDPI)
    + [SetFontStyle](#SetFontStyle)
    + [SetFontWrapAlignment](#SetFontWrapAlignment)
    + [SetGPUTextEngineWinding](#SetGPUTextEngineWinding)
    + [SetTextColor](#SetTextColor)
    + [SetTextColorFloat](#SetTextColorFloat)
    + [SetTextDirection](#SetTextDirection)
    + [SetTextEngine](#SetTextEngine)
    + [SetTextFont](#SetTextFont)
    + [SetTextPosition](#SetTextPosition)
    + [SetTextScript](#SetTextScript)
    + [SetTextString](#SetTextString)
    + [SetTextWrapWhitespaceVisible](#SetTextWrapWhitespaceVisible)
    + [SetTextWrapWidth](#SetTextWrapWidth)
    + [StringToTag](#StringToTag)
    + [TagToString](#TagToString)
    + [TextWrapWhitespaceVisible](#TextWrapWhitespaceVisible)
    + [UpdateText](#UpdateText)
    + [Version](#Version)
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