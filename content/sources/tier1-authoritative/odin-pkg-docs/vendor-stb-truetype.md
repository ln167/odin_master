package stb/truetype - pkg.odin-lang.org 






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



Current Package: *[stb\_truetype](/vendor/stb/truetype)*

  

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
3. [truetype](/vendor/stb/truetype)

# package vendor:stb/truetype [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [stb\_truetype.h](https://github.com/nothings/stb/blob/master/stb_truetype.h).

## Index

Types (11)

* [PLATFORM\_ID](#PLATFORM_ID)
* [aligned\_quad](#aligned_quad)
* [bakedchar](#bakedchar)
* [fontinfo](#fontinfo)
* [kerningentry](#kerningentry)
* [pack\_context](#pack_context)
* [pack\_range](#pack_range)
* [packedchar](#packedchar)
* [vertex](#vertex)
* [vertex\_type](#vertex_type)
* [vmove](#vmove)

Constants (48)

* [MACSTYLE\_BOLD](#MACSTYLE_BOLD)
* [MACSTYLE\_DONTCARE](#MACSTYLE_DONTCARE)
* [MACSTYLE\_ITALIC](#MACSTYLE_ITALIC)
* [MACSTYLE\_NONE](#MACSTYLE_NONE)
* [MACSTYLE\_UNDERSCORE](#MACSTYLE_UNDERSCORE)
* [MAC\_EID\_ARABIC](#MAC_EID_ARABIC)
* [MAC\_EID\_CHINESE\_TRAD](#MAC_EID_CHINESE_TRAD)
* [MAC\_EID\_GREEK](#MAC_EID_GREEK)
* [MAC\_EID\_HEBREW](#MAC_EID_HEBREW)
* [MAC\_EID\_JAPANESE](#MAC_EID_JAPANESE)
* [MAC\_EID\_KOREAN](#MAC_EID_KOREAN)
* [MAC\_EID\_ROMAN](#MAC_EID_ROMAN)
* [MAC\_EID\_RUSSIAN](#MAC_EID_RUSSIAN)
* [MAC\_LANG\_ARABIC](#MAC_LANG_ARABIC)
* [MAC\_LANG\_CHINESE\_SIMPLIFIED](#MAC_LANG_CHINESE_SIMPLIFIED)
* [MAC\_LANG\_CHINESE\_TRAD](#MAC_LANG_CHINESE_TRAD)
* [MAC\_LANG\_DUTCH](#MAC_LANG_DUTCH)
* [MAC\_LANG\_ENGLISH](#MAC_LANG_ENGLISH)
* [MAC\_LANG\_FRENCH](#MAC_LANG_FRENCH)
* [MAC\_LANG\_GERMAN](#MAC_LANG_GERMAN)
* [MAC\_LANG\_HEBREW](#MAC_LANG_HEBREW)
* [MAC\_LANG\_ITALIAN](#MAC_LANG_ITALIAN)
* [MAC\_LANG\_JAPANESE](#MAC_LANG_JAPANESE)
* [MAC\_LANG\_KOREAN](#MAC_LANG_KOREAN)
* [MAC\_LANG\_RUSSIAN](#MAC_LANG_RUSSIAN)
* [MAC\_LANG\_SPANISH](#MAC_LANG_SPANISH)
* [MAC\_LANG\_SWEDISH](#MAC_LANG_SWEDISH)
* [MS\_EID\_SHIFTJIS](#MS_EID_SHIFTJIS)
* [MS\_EID\_SYMBOL](#MS_EID_SYMBOL)
* [MS\_EID\_UNICODE\_BMP](#MS_EID_UNICODE_BMP)
* [MS\_EID\_UNICODE\_FULL](#MS_EID_UNICODE_FULL)
* [MS\_LANG\_CHINESE](#MS_LANG_CHINESE)
* [MS\_LANG\_DUTCH](#MS_LANG_DUTCH)
* [MS\_LANG\_ENGLISH](#MS_LANG_ENGLISH)
* [MS\_LANG\_FRENCH](#MS_LANG_FRENCH)
* [MS\_LANG\_GERMAN](#MS_LANG_GERMAN)
* [MS\_LANG\_HEBREW](#MS_LANG_HEBREW)
* [MS\_LANG\_ITALIAN](#MS_LANG_ITALIAN)
* [MS\_LANG\_JAPANESE](#MS_LANG_JAPANESE)
* [MS\_LANG\_KOREAN](#MS_LANG_KOREAN)
* [MS\_LANG\_RUSSIAN](#MS_LANG_RUSSIAN)
* [MS\_LANG\_SPANISH](#MS_LANG_SPANISH)
* [MS\_LANG\_SWEDISH](#MS_LANG_SWEDISH)
* [UNICODE\_EID\_ISO\_10646](#UNICODE_EID_ISO_10646)
* [UNICODE\_EID\_UNICODE\_1\_0](#UNICODE_EID_UNICODE_1_0)
* [UNICODE\_EID\_UNICODE\_1\_1](#UNICODE_EID_UNICODE_1_1)
* [UNICODE\_EID\_UNICODE\_2\_0\_BMP](#UNICODE_EID_UNICODE_2_0_BMP)
* [UNICODE\_EID\_UNICODE\_2\_0\_FULL](#UNICODE_EID_UNICODE_2_0_FULL)

Variables (0)

This section is empty.

Procedures (60)

* [BakeFontBitmap](#BakeFontBitmap)
* [CompareUTF8toUTF16\_bigendian](#CompareUTF8toUTF16_bigendian)
* [FindGlyphIndex](#FindGlyphIndex)
* [FindMatchingFont](#FindMatchingFont)
* [FindSVGDoc](#FindSVGDoc)
* [FreeBitmap](#FreeBitmap)
* [FreeSDF](#FreeSDF)
* [FreeShape](#FreeShape)
* [GetBakedQuad](#GetBakedQuad)
* [GetCodepointBitmap](#GetCodepointBitmap)
* [GetCodepointBitmapBox](#GetCodepointBitmapBox)
* [GetCodepointBitmapBoxSubpixel](#GetCodepointBitmapBoxSubpixel)
* [GetCodepointBitmapSubpixel](#GetCodepointBitmapSubpixel)
* [GetCodepointBox](#GetCodepointBox)
* [GetCodepointHMetrics](#GetCodepointHMetrics)
* [GetCodepointKernAdvance](#GetCodepointKernAdvance)
* [GetCodepointSDF](#GetCodepointSDF)
* [GetCodepointSVG](#GetCodepointSVG)
* [GetCodepointShape](#GetCodepointShape)
* [GetFontBoundingBox](#GetFontBoundingBox)
* [GetFontNameString](#GetFontNameString)
* [GetFontOffsetForIndex](#GetFontOffsetForIndex)
* [GetFontVMetrics](#GetFontVMetrics)
* [GetFontVMetricsOS2](#GetFontVMetricsOS2)
* [GetGlyphBitmap](#GetGlyphBitmap)
* [GetGlyphBitmapBox](#GetGlyphBitmapBox)
* [GetGlyphBitmapBoxSubpixel](#GetGlyphBitmapBoxSubpixel)
* [GetGlyphBitmapSubpixel](#GetGlyphBitmapSubpixel)
* [GetGlyphBox](#GetGlyphBox)
* [GetGlyphHMetrics](#GetGlyphHMetrics)
* [GetGlyphKernAdvance](#GetGlyphKernAdvance)
* [GetGlyphSDF](#GetGlyphSDF)
* [GetGlyphSVG](#GetGlyphSVG)
* [GetGlyphShape](#GetGlyphShape)
* [GetKerningTable](#GetKerningTable)
* [GetKerningTableLength](#GetKerningTableLength)
* [GetNumberOfFonts](#GetNumberOfFonts)
* [GetPackedQuad](#GetPackedQuad)
* [GetScaledFontVMetrics](#GetScaledFontVMetrics)
* [InitFont](#InitFont)
* [IsGlyphEmpty](#IsGlyphEmpty)
* [MakeCodepointBitmap](#MakeCodepointBitmap)
* [MakeCodepointBitmapSubpixel](#MakeCodepointBitmapSubpixel)
* [MakeCodepointBitmapSubpixelPrefilter](#MakeCodepointBitmapSubpixelPrefilter)
* [MakeGlyphBitmap](#MakeGlyphBitmap)
* [MakeGlyphBitmapSubpixel](#MakeGlyphBitmapSubpixel)
* [MakeGlyphBitmapSubpixelPrefilter](#MakeGlyphBitmapSubpixelPrefilter)
* [POINT\_SIZE](#POINT_SIZE)
* [PackBegin](#PackBegin)
* [PackEnd](#PackEnd)
* [PackFontRange](#PackFontRange)
* [PackFontRanges](#PackFontRanges)
* [PackFontRangesGatherRects](#PackFontRangesGatherRects)
* [PackFontRangesPackRects](#PackFontRangesPackRects)
* [PackFontRangesRenderIntoRects](#PackFontRangesRenderIntoRects)
* [PackSetOversampling](#PackSetOversampling)
* [PackSetSkipMissingCodepoints](#PackSetSkipMissingCodepoints)
* [Rasterize](#Rasterize)
* [ScaleForMappingEmToPixels](#ScaleForMappingEmToPixels)
* [ScaleForPixelHeight](#ScaleForPixelHeight)

Procedure Groups (0)

This section is empty.

## Types

### [PLATFORM\_ID ¶](#PLATFORM_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L579)

```
PLATFORM_ID :: enum i32 {
	// platformID
	PLATFORM_ID_UNICODE   = 0, 
	PLATFORM_ID_MAC       = 1, 
	PLATFORM_ID_ISO       = 2, 
	PLATFORM_ID_MICROSOFT = 3, 
}
```

##### Related Procedures With Parameters

* [GetFontNameString](/vendor/stb/truetype/#GetFontNameString)

### [aligned\_quad ¶](#aligned_quad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L52)

```
aligned_quad :: struct {
	x0: f32,
	y0: f32,
	s0: f32,
	t0: f32,
	x1: f32,
	y1: f32,
	s1: f32,
	t1: f32,
}
```

##### Related Procedures With Parameters

* [GetBakedQuad](/vendor/stb/truetype/#GetBakedQuad)
* [GetPackedQuad](/vendor/stb/truetype/#GetPackedQuad)

### [bakedchar ¶](#bakedchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L47)

```
bakedchar :: struct {
	x0:       u16,
	y0:       u16,
	x1:       u16,
	y1:       u16,
	// coordinates of bbox in bitmap
	xoff:     f32,
	yoff:     f32,
	xadvance: f32,
}
```

##### Related Procedures With Parameters

* [BakeFontBitmap](/vendor/stb/truetype/#BakeFontBitmap)
* [GetBakedQuad](/vendor/stb/truetype/#GetBakedQuad)

### [fontinfo ¶](#fontinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L215)

```
fontinfo :: struct {
	userdata:         rawptr,
	data:             [^]u8,
	fontstart:        i32,
	numGlyphs:        i32,
	loca:             i32,
	head:             i32,
	glyf:             i32,
	hhea:             i32,
	hmtx:             i32,
	kern:             i32,
	gpos:             i32,
	svg:              i32,
	index_map:        i32,
	indexToLocFormat: i32,
	cff:              _buf,
	charstrings:      _buf,
	gsubrs:           _buf,
	subrs:            _buf,
	fontdicts:        _buf,
	fdselect:         _buf,
}
```

##### Related Procedures With Parameters

* [FindGlyphIndex](/vendor/stb/truetype/#FindGlyphIndex)
* [FindSVGDoc](/vendor/stb/truetype/#FindSVGDoc)
* [FreeShape](/vendor/stb/truetype/#FreeShape)
* [GetCodepointBitmap](/vendor/stb/truetype/#GetCodepointBitmap)
* [GetCodepointBitmapBox](/vendor/stb/truetype/#GetCodepointBitmapBox)
* [GetCodepointBitmapBoxSubpixel](/vendor/stb/truetype/#GetCodepointBitmapBoxSubpixel)
* [GetCodepointBitmapSubpixel](/vendor/stb/truetype/#GetCodepointBitmapSubpixel)
* [GetCodepointBox](/vendor/stb/truetype/#GetCodepointBox)
* [GetCodepointHMetrics](/vendor/stb/truetype/#GetCodepointHMetrics)
* [GetCodepointKernAdvance](/vendor/stb/truetype/#GetCodepointKernAdvance)
* [GetCodepointSDF](/vendor/stb/truetype/#GetCodepointSDF)
* [GetCodepointSVG](/vendor/stb/truetype/#GetCodepointSVG)
* [GetCodepointShape](/vendor/stb/truetype/#GetCodepointShape)
* [GetFontBoundingBox](/vendor/stb/truetype/#GetFontBoundingBox)
* [GetFontNameString](/vendor/stb/truetype/#GetFontNameString)
* [GetFontVMetrics](/vendor/stb/truetype/#GetFontVMetrics)
* [GetFontVMetricsOS2](/vendor/stb/truetype/#GetFontVMetricsOS2)
* [GetGlyphBitmap](/vendor/stb/truetype/#GetGlyphBitmap)
* [GetGlyphBitmapBox](/vendor/stb/truetype/#GetGlyphBitmapBox)
* [GetGlyphBitmapBoxSubpixel](/vendor/stb/truetype/#GetGlyphBitmapBoxSubpixel)
* [GetGlyphBitmapSubpixel](/vendor/stb/truetype/#GetGlyphBitmapSubpixel)
* [GetGlyphBox](/vendor/stb/truetype/#GetGlyphBox)
* [GetGlyphHMetrics](/vendor/stb/truetype/#GetGlyphHMetrics)
* [GetGlyphKernAdvance](/vendor/stb/truetype/#GetGlyphKernAdvance)
* [GetGlyphSDF](/vendor/stb/truetype/#GetGlyphSDF)
* [GetGlyphSVG](/vendor/stb/truetype/#GetGlyphSVG)
* [GetGlyphShape](/vendor/stb/truetype/#GetGlyphShape)
* [GetKerningTable](/vendor/stb/truetype/#GetKerningTable)
* [GetKerningTableLength](/vendor/stb/truetype/#GetKerningTableLength)
* [InitFont](/vendor/stb/truetype/#InitFont)
* [IsGlyphEmpty](/vendor/stb/truetype/#IsGlyphEmpty)
* [MakeCodepointBitmap](/vendor/stb/truetype/#MakeCodepointBitmap)
* [MakeCodepointBitmapSubpixel](/vendor/stb/truetype/#MakeCodepointBitmapSubpixel)
* [MakeCodepointBitmapSubpixelPrefilter](/vendor/stb/truetype/#MakeCodepointBitmapSubpixelPrefilter)
* [MakeGlyphBitmap](/vendor/stb/truetype/#MakeGlyphBitmap)
* [MakeGlyphBitmapSubpixel](/vendor/stb/truetype/#MakeGlyphBitmapSubpixel)
* [MakeGlyphBitmapSubpixelPrefilter](/vendor/stb/truetype/#MakeGlyphBitmapSubpixelPrefilter)
* [PackFontRangesGatherRects](/vendor/stb/truetype/#PackFontRangesGatherRects)
* [PackFontRangesRenderIntoRects](/vendor/stb/truetype/#PackFontRangesRenderIntoRects)
* [ScaleForMappingEmToPixels](/vendor/stb/truetype/#ScaleForMappingEmToPixels)
* [ScaleForPixelHeight](/vendor/stb/truetype/#ScaleForPixelHeight)

### [kerningentry ¶](#kerningentry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L326)

```
kerningentry :: struct {
	glyph1:  rune,
	// use FindGlyphIndex
	glyph2:  rune,
	advance: i32,
}
```

##### Related Procedures With Parameters

* [GetKerningTable](/vendor/stb/truetype/#GetKerningTable)

### [pack\_context ¶](#pack_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L118)

```
pack_context :: struct {
	user_allocator_context: rawptr,
	pack_info:              rawptr,
	width:                  i32,
	height:                 i32,
	stride_in_bytes:        i32,
	padding:                i32,
	skip_missing:           b32,
	h_oversample:           u32,
	v_oversample:           u32,
	pixels:                 [^]u8,
	nodes:                  rawptr,
}
```

##### Related Procedures With Parameters

* [PackBegin](/vendor/stb/truetype/#PackBegin)
* [PackEnd](/vendor/stb/truetype/#PackEnd)
* [PackFontRange](/vendor/stb/truetype/#PackFontRange)
* [PackFontRanges](/vendor/stb/truetype/#PackFontRanges)
* [PackFontRangesGatherRects](/vendor/stb/truetype/#PackFontRangesGatherRects)
* [PackFontRangesPackRects](/vendor/stb/truetype/#PackFontRangesPackRects)
* [PackFontRangesRenderIntoRects](/vendor/stb/truetype/#PackFontRangesRenderIntoRects)
* [PackSetOversampling](/vendor/stb/truetype/#PackSetOversampling)
* [PackSetSkipMissingCodepoints](/vendor/stb/truetype/#PackSetSkipMissingCodepoints)

### [pack\_range ¶](#pack_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L109)

```
pack_range :: struct {
	font_size:                        f32,
	first_unicode_codepoint_in_range: i32,
	array_of_unicode_codepoints:      [^]rune,
	num_chars:                        i32,
	chardata_for_range:               ^packedchar,
	_:                                u8,
	_:                                u8,
}
```

##### Related Procedures With Parameters

* [PackFontRanges](/vendor/stb/truetype/#PackFontRanges)
* [PackFontRangesGatherRects](/vendor/stb/truetype/#PackFontRangesGatherRects)
* [PackFontRangesRenderIntoRects](/vendor/stb/truetype/#PackFontRangesRenderIntoRects)

### [packedchar ¶](#packedchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L103)

```
packedchar :: struct {
	x0:       u16,
	y0:       u16,
	x1:       u16,
	y1:       u16,
	xoff:     f32,
	yoff:     f32,
	xadvance: f32,
	xoff2:    f32,
	yoff2:    f32,
}
```

##### Related Procedures With Parameters

* [GetPackedQuad](/vendor/stb/truetype/#GetPackedQuad)
* [PackFontRange](/vendor/stb/truetype/#PackFontRange)

### [vertex ¶](#vertex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L357)

```
vertex :: struct {
	x:       vertex_type,
	y:       vertex_type,
	cx:      vertex_type,
	cy:      vertex_type,
	cx1:     vertex_type,
	cy1:     vertex_type,
	type:    u8,
	padding: u8,
}
```

##### Related Procedures With Parameters

* [FreeShape](/vendor/stb/truetype/#FreeShape)
* [Rasterize](/vendor/stb/truetype/#Rasterize)

### [vertex\_type ¶](#vertex_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L356)

```
vertex_type :: distinct i16
```

 

can't use stbtt\_int16 because that's not visible in the header file

### [vmove ¶](#vmove) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L348)

```
vmove :: enum i32 {
	none, 
	vmove  = 1, 
	vline, 
	vcurve, 
	vcubic, 
}
```

## Constants

### [MACSTYLE\_BOLD ¶](#MACSTYLE_BOLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L552)

```
MACSTYLE_BOLD :: 1
```

### [MACSTYLE\_DONTCARE ¶](#MACSTYLE_DONTCARE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L551)

```
MACSTYLE_DONTCARE :: 0
```

### [MACSTYLE\_ITALIC ¶](#MACSTYLE_ITALIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L553)

```
MACSTYLE_ITALIC :: 2
```

### [MACSTYLE\_NONE ¶](#MACSTYLE_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L555)

```
MACSTYLE_NONE :: 8
```

 

<= not same as 0, this makes us check the bitfield is 0

### [MACSTYLE\_UNDERSCORE ¶](#MACSTYLE_UNDERSCORE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L554)

```
MACSTYLE_UNDERSCORE :: 4
```

### [MAC\_EID\_ARABIC ¶](#MAC_EID_ARABIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L601)

```
MAC_EID_ARABIC :: 4
```

 

encodingID for PLATFORM\_ID\_MAC; same as Script Manager codes

### [MAC\_EID\_CHINESE\_TRAD ¶](#MAC_EID_CHINESE_TRAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L603)

```
MAC_EID_CHINESE_TRAD :: 2
```

### [MAC\_EID\_GREEK ¶](#MAC_EID_GREEK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L603)

```
MAC_EID_GREEK :: 6
```

### [MAC\_EID\_HEBREW ¶](#MAC_EID_HEBREW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L602)

```
MAC_EID_HEBREW :: 5
```

### [MAC\_EID\_JAPANESE ¶](#MAC_EID_JAPANESE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L602)

```
MAC_EID_JAPANESE :: 1
```

### [MAC\_EID\_KOREAN ¶](#MAC_EID_KOREAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L604)

```
MAC_EID_KOREAN :: 3
```

### [MAC\_EID\_ROMAN ¶](#MAC_EID_ROMAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L601)

```
MAC_EID_ROMAN :: 0
```

 

encodingID for PLATFORM\_ID\_MAC; same as Script Manager codes

### [MAC\_EID\_RUSSIAN ¶](#MAC_EID_RUSSIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L604)

```
MAC_EID_RUSSIAN :: 7
```

### [MAC\_LANG\_ARABIC ¶](#MAC_LANG_ARABIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L618)

```
MAC_LANG_ARABIC :: 12
```

### [MAC\_LANG\_CHINESE\_SIMPLIFIED ¶](#MAC_LANG_CHINESE_SIMPLIFIED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L622)

```
MAC_LANG_CHINESE_SIMPLIFIED :: 33
```

### [MAC\_LANG\_CHINESE\_TRAD ¶](#MAC_LANG_CHINESE_TRAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L623)

```
MAC_LANG_CHINESE_TRAD :: 19
```

### [MAC\_LANG\_DUTCH ¶](#MAC_LANG_DUTCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L619)

```
MAC_LANG_DUTCH :: 4
```

### [MAC\_LANG\_ENGLISH ¶](#MAC_LANG_ENGLISH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L617)

```
MAC_LANG_ENGLISH :: 0
```

 

languageID for PLATFORM\_ID\_MAC

### [MAC\_LANG\_FRENCH ¶](#MAC_LANG_FRENCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L620)

```
MAC_LANG_FRENCH :: 1
```

### [MAC\_LANG\_GERMAN ¶](#MAC_LANG_GERMAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L621)

```
MAC_LANG_GERMAN :: 2
```

### [MAC\_LANG\_HEBREW ¶](#MAC_LANG_HEBREW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L622)

```
MAC_LANG_HEBREW :: 10
```

### [MAC\_LANG\_ITALIAN ¶](#MAC_LANG_ITALIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L623)

```
MAC_LANG_ITALIAN :: 3
```

### [MAC\_LANG\_JAPANESE ¶](#MAC_LANG_JAPANESE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L617)

```
MAC_LANG_JAPANESE :: 11
```

 

languageID for PLATFORM\_ID\_MAC

### [MAC\_LANG\_KOREAN ¶](#MAC_LANG_KOREAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L618)

```
MAC_LANG_KOREAN :: 23
```

### [MAC\_LANG\_RUSSIAN ¶](#MAC_LANG_RUSSIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L619)

```
MAC_LANG_RUSSIAN :: 32
```

### [MAC\_LANG\_SPANISH ¶](#MAC_LANG_SPANISH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L620)

```
MAC_LANG_SPANISH :: 6
```

### [MAC\_LANG\_SWEDISH ¶](#MAC_LANG_SWEDISH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L621)

```
MAC_LANG_SWEDISH :: 5
```

### [MS\_EID\_SHIFTJIS ¶](#MS_EID_SHIFTJIS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L596)

```
MS_EID_SHIFTJIS :: 2
```

### [MS\_EID\_SYMBOL ¶](#MS_EID_SYMBOL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L594)

```
MS_EID_SYMBOL :: 0
```

 

encodingID for PLATFORM\_ID\_MICROSOFT

### [MS\_EID\_UNICODE\_BMP ¶](#MS_EID_UNICODE_BMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L595)

```
MS_EID_UNICODE_BMP :: 1
```

### [MS\_EID\_UNICODE\_FULL ¶](#MS_EID_UNICODE_FULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L597)

```
MS_EID_UNICODE_FULL :: 10
```

### [MS\_LANG\_CHINESE ¶](#MS_LANG_CHINESE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L609)

```
MS_LANG_CHINESE :: 0x0804
```

### [MS\_LANG\_DUTCH ¶](#MS_LANG_DUTCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L610)

```
MS_LANG_DUTCH :: 0x0413
```

### [MS\_LANG\_ENGLISH ¶](#MS_LANG_ENGLISH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L608)

```
MS_LANG_ENGLISH :: 0x0409
```

 

languageID for PLATFORM\_ID\_MICROSOFT; same as LCID...
problematic because there are e.g. 16 english LCIDs and 16 arabic LCIDs

### [MS\_LANG\_FRENCH ¶](#MS_LANG_FRENCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L611)

```
MS_LANG_FRENCH :: 0x040c
```

### [MS\_LANG\_GERMAN ¶](#MS_LANG_GERMAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L612)

```
MS_LANG_GERMAN :: 0x0407
```

### [MS\_LANG\_HEBREW ¶](#MS_LANG_HEBREW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L613)

```
MS_LANG_HEBREW :: 0x040d
```

### [MS\_LANG\_ITALIAN ¶](#MS_LANG_ITALIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L608)

```
MS_LANG_ITALIAN :: 0x0410
```

 

languageID for PLATFORM\_ID\_MICROSOFT; same as LCID...
problematic because there are e.g. 16 english LCIDs and 16 arabic LCIDs

### [MS\_LANG\_JAPANESE ¶](#MS_LANG_JAPANESE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L609)

```
MS_LANG_JAPANESE :: 0x0411
```

### [MS\_LANG\_KOREAN ¶](#MS_LANG_KOREAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L610)

```
MS_LANG_KOREAN :: 0x0412
```

### [MS\_LANG\_RUSSIAN ¶](#MS_LANG_RUSSIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L611)

```
MS_LANG_RUSSIAN :: 0x0419
```

### [MS\_LANG\_SPANISH ¶](#MS_LANG_SPANISH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L612)

```
MS_LANG_SPANISH :: 0x0409
```

### [MS\_LANG\_SWEDISH ¶](#MS_LANG_SWEDISH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L613)

```
MS_LANG_SWEDISH :: 0x041D
```

### [UNICODE\_EID\_ISO\_10646 ¶](#UNICODE_EID_ISO_10646) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L589)

```
UNICODE_EID_ISO_10646 :: 2
```

### [UNICODE\_EID\_UNICODE\_1\_0 ¶](#UNICODE_EID_UNICODE_1_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L587)

```
UNICODE_EID_UNICODE_1_0 :: 0
```

 

encodingID for PLATFORM\_ID\_UNICODE

### [UNICODE\_EID\_UNICODE\_1\_1 ¶](#UNICODE_EID_UNICODE_1_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L588)

```
UNICODE_EID_UNICODE_1_1 :: 1
```

### [UNICODE\_EID\_UNICODE\_2\_0\_BMP ¶](#UNICODE_EID_UNICODE_2_0_BMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L590)

```
UNICODE_EID_UNICODE_2_0_BMP :: 3
```

### [UNICODE\_EID\_UNICODE\_2\_0\_FULL ¶](#UNICODE_EID_UNICODE_2_0_FULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L591)

```
UNICODE_EID_UNICODE_2_0_FULL :: 4
```

## Variables

This section is empty.

## Procedures

### [BakeFontBitmap ¶](#BakeFontBitmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L66)

```
BakeFontBitmap :: proc "c" (
	data:                  [^]u8, 
	offset:                i32, 
	pixel_height:          f32, 
	pixels:                [^]u8, 
	pw, ph:                i32, 
	first_char, num_chars: i32, 
	chardata:              [^]bakedchar, 
) -> i32 ---
```

 

if return is positive, the first unused row of the bitmap
if return is negative, returns the negative of the number of characters that fit
if return is 0, no characters fit and no rows were used
This uses a very crappy packing.

### [CompareUTF8toUTF16\_bigendian ¶](#CompareUTF8toUTF16_bigendian) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L567)

```
CompareUTF8toUTF16_bigendian :: proc "c" (s1: cstring, len1: i32, s2: cstring, len2: i32) -> i32 ---
```

 

returns 1/0 whether the first string interpreted as utf8 is identical to
the second string interpreted as big-endian utf16... useful for strings from next func

### [FindGlyphIndex ¶](#FindGlyphIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L269)

```
FindGlyphIndex :: proc "c" (info: ^fontinfo, unicode_codepoint: rune) -> i32 ---
```

 

If you're going to perform multiple operations on the same character
and you want a speed-up, call this function with the character you're
going to process, then use glyph-based functions instead of the
codepoint-based functions.
Returns 0 if the character codepoint is not defined in the font.

### [FindMatchingFont ¶](#FindMatchingFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L563)

```
FindMatchingFont :: proc "c" (fontdata: [^]u8, name: cstring, flags: i32) -> i32 ---
```

 

returns the offset (not index) of the font that matches, or -1 if none
if you use STBTT\_MACSTYLE\_DONTCARE, use a font name like "Arial Bold".
if you use any other flag, use a font name like "Arial"; this checks
the 'macStyle' header field; i don't know if fonts set this consistently

### [FindSVGDoc ¶](#FindSVGDoc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L384)

```
FindSVGDoc :: proc "c" (info: ^fontinfo, gl: b32) -> [^]u8 ---
```

 

fills svg with the character's SVG data.
returns data size or 0 if SVG not found.

### [FreeBitmap ¶](#FreeBitmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L403)

```
FreeBitmap :: proc "c" (bitmap: [^]u8, userdata: rawptr) ---
```

 

frees the bitmap allocated below

### [FreeSDF ¶](#FreeSDF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L475)

```
FreeSDF :: proc "c" (bitmap: [^]u8, userdata: rawptr) ---
```

 

frees the SDF bitmap allocated below

### [FreeShape ¶](#FreeShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L380)

```
FreeShape :: proc "c" (info: ^fontinfo, vertices: [^]vertex) ---
```

 

frees the data allocated above

### [GetBakedQuad ¶](#GetBakedQuad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L82)

```
GetBakedQuad :: proc "c" (
	chardata:        ^bakedchar, 
	pw, ph:          i32, 
	char_index:      i32, 
	xpos, ypos:      ^f32, 
	q:               ^aligned_quad, 
	opengl_fillrule: b32, 
) ---
```

 

Call GetBakedQuad with char\_index = 'character - first\_char', and it
creates the quad you need to draw and advances the current position.

The coordinate system used assumes y increases downwards.

Characters will extend both above and below the current position;
see discussion of "BASELINE" above.

It's inefficient; you might want to c&p it and optimize it.

### [GetCodepointBitmap ¶](#GetCodepointBitmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L412)

```
GetCodepointBitmap :: proc "c" (
	info:                ^fontinfo, 
	scale_x, scale_y:    f32, 
	codepoint:           rune, 
	width, height, xoff, 
	yoff:                ^i32, 
) -> [^]u8 ---
```

 

allocates a large-enough single-channel 8bpp bitmap and renders the
specified character/glyph at the specified scale into it, with
antialiasing. 0 is no coverage (transparent), 255 is fully covered (opaque).
*width &* height are filled out with the width & height of the bitmap,
which is stored left-to-right, top-to-bottom.

xoff/yoff are the offset it pixel space from the glyph origin to the top-left of the bitmap

### [GetCodepointBitmapBox ¶](#GetCodepointBitmapBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L437)

```
GetCodepointBitmapBox :: proc "c" (
	font:             ^fontinfo, 
	codepoint:        rune, 
	scale_x, scale_y: f32, 
	ix0, iy0, ix1, 
	iy1:              ^i32, 
) ---
```

 

get the bbox of the bitmap centered around the glyph origin; so the
bitmap width is ix1-ix0, height is iy1-iy0, and location to place
the bitmap top left is (leftSideBearing\*scale,iy0).
(Note that the bitmap uses y-increases-down, but the shape uses
y-increases-up, so CodepointBitmapBox and CodepointBox are inverted.)

### [GetCodepointBitmapBoxSubpixel ¶](#GetCodepointBitmapBoxSubpixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L441)

```
GetCodepointBitmapBoxSubpixel :: proc "c" (
	font:                               ^fontinfo, 
	codepoint:                          rune, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	ix0, iy0, ix1, 
	iy1:                                ^i32, 
) ---
```

 

same as stbtt\_GetCodepointBitmapBox, but you can specify a subpixel
shift for the character

### [GetCodepointBitmapSubpixel ¶](#GetCodepointBitmapSubpixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L416)

```
GetCodepointBitmapSubpixel :: proc "c" (
	info:                               ^fontinfo, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	codepoint:                          rune, 
	width, height, xoff, 
	yoff:                               ^i32, 
) -> [^]u8 ---
```

 

the same as stbtt\_GetCodepoitnBitmap, but you can specify a subpixel
shift for the character

### [GetCodepointBox ¶](#GetCodepointBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L318)

```
GetCodepointBox :: proc "c" (
	info:       ^fontinfo, 
	codepoint:  rune, 
	x0, y0, x1, 
	y1:         ^i32, 
) -> i32 ---
```

 

Gets the bounding box of the visible part of the glyph, in unscaled coordinates

### [GetCodepointHMetrics ¶](#GetCodepointHMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L312)

```
GetCodepointHMetrics :: proc "c" (info: ^fontinfo, codepoint: rune, advanceWidth, leftSideBearing: ^i32) ---
```

 

leftSideBearing is the offset from the current horizontal position to the left edge of the character
advanceWidth is the offset from the current horizontal position to the next horizontal position
these are expressed in unscaled coordinates

### [GetCodepointKernAdvance ¶](#GetCodepointKernAdvance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L315)

```
GetCodepointKernAdvance :: proc "c" (info: ^fontinfo, ch1, ch2: rune) -> (advance: i32) ---
```

 

an additional amount to add to the 'advance' value between ch1 and ch2

### [GetCodepointSDF ¶](#GetCodepointSDF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L525)

```
GetCodepointSDF :: proc "c" (
	info:                ^fontinfo, 
	scale:               f32, 
	codepoint, padding:  i32, 
	onedge_value:        u8, 
	pixel_dist_scale:    f32, 
	width, height, xoff, 
	yoff:                ^i32, 
) -> [^]u8 ---
```

### [GetCodepointSVG ¶](#GetCodepointSVG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L385)

```
GetCodepointSVG :: proc "c" (info: ^fontinfo, unicode_codepoint: rune, svg: ^cstring) -> i32 ---
```

### [GetCodepointShape ¶](#GetCodepointShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L376)

```
GetCodepointShape :: proc "c" (info: ^fontinfo, unicode_codepoint: rune, vertices: ^[^]vertex) -> i32 ---
```

 

returns # of vertices and fills \*vertices with the pointer to them
these are expressed in "unscaled" coordinates

The shape is a series of contours. Each one starts with
a STBTT\_moveto, then consists of a series of mixed
STBTT\_lineto and STBTT\_curveto segments. A lineto
draws a line from previous endpoint to its x,y; a curveto
draws a quadratic bezier from previous endpoint to
its x,y, using cx,cy as the bezier control point.

### [GetFontBoundingBox ¶](#GetFontBoundingBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L307)

```
GetFontBoundingBox :: proc "c" (info: ^fontinfo, x0, y0, x1, y1: ^i32) ---
```

 

the bounding box around all possible characters

### [GetFontNameString ¶](#GetFontNameString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L575)

```
GetFontNameString :: proc "c" (
	font:                   ^fontinfo, 
	length:                 ^i32, 
	platformID:             PLATFORM_ID, 
	encodingID, languageID, 
	nameID:                 i32, 
) -> cstring ---
```

 

returns the string (which may be big-endian double byte, e.g. for unicode)
and puts the length in bytes in \*length.

some of the values for the IDs are below; for more see the truetype spec:
http://developer.apple.com/textfonts/TTRefMan/RM06/Chap6name.html
http://www.microsoft.com/typography/otspec/name.htm

### [GetFontOffsetForIndex ¶](#GetFontOffsetForIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L255)

```
GetFontOffsetForIndex :: proc "c" (data: [^]u8, index: i32) -> i32 ---
```

 

Each .ttf/.ttc file may have more than one font. Each font has a sequential
index number starting from 0. Call this function to get the font offset for
a given index; it returns -1 if the index is out of range. A regular .ttf
file will only define one font and it always be at offset 0, so it will
return '0' for index 0, and -1 for all other indices.

### [GetFontVMetrics ¶](#GetFontVMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L298)

```
GetFontVMetrics :: proc "c" (info: ^fontinfo, ascent, descent, lineGap: ^i32) ---
```

 

ascent is the coordinate above the baseline the font extends; descent
is the coordinate below the baseline the font extends (i.e. it is typically negative)
lineGap is the spacing between one row's descent and the next row's ascent...
so you should advance the vertical position by "*ascent -* descent + \*lineGap"
these are expressed in unscaled coordinates, so you must multiply by
the scale factor for a given size

### [GetFontVMetricsOS2 ¶](#GetFontVMetricsOS2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L304)

```
GetFontVMetricsOS2 :: proc "c" (info: ^fontinfo, typoAscent, typoDescent, typoLineGap: ^i32) -> b32 ---
```

 

analogous to GetFontVMetrics, but returns the "typographic" values from the OS/2
table (specific to MS/Windows TTF files).

Returns 1 on success (table present), 0 on failure.

### [GetGlyphBitmap ¶](#GetGlyphBitmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L445)

```
GetGlyphBitmap :: proc "c" (
	info:                ^fontinfo, 
	scale_x, scale_y:    f32, 
	glyph:               i32, 
	width, height, xoff, 
	yoff:                ^i32, 
) -> [^]u8 ---
```

 

the following functions are equivalent to the above functions, but operate
on glyph indices instead of Unicode codepoints (for efficiency)

### [GetGlyphBitmapBox ¶](#GetGlyphBitmapBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L450)

```
GetGlyphBitmapBox :: proc "c" (
	font:             ^fontinfo, 
	glyph:            i32, 
	scale_x, scale_y: f32, 
	ix0, iy0, ix1, 
	iy1:              ^i32, 
) ---
```

### [GetGlyphBitmapBoxSubpixel ¶](#GetGlyphBitmapBoxSubpixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L451)

```
GetGlyphBitmapBoxSubpixel :: proc "c" (
	font:                               ^fontinfo, 
	glyph:                              i32, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	ix0, iy0, ix1, 
	iy1:                                ^i32, 
) ---
```

### [GetGlyphBitmapSubpixel ¶](#GetGlyphBitmapSubpixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L446)

```
GetGlyphBitmapSubpixel :: proc "c" (
	info:                               ^fontinfo, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	glyph:                              i32, 
	width, height, xoff, 
	yoff:                               ^i32, 
) -> [^]u8 ---
```

### [GetGlyphBox ¶](#GetGlyphBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L323)

```
GetGlyphBox :: proc "c" (
	info:        ^fontinfo, 
	glyph_index: i32, 
	x0, y0, x1, 
	y1:          ^i32, 
) -> i32 ---
```

### [GetGlyphHMetrics ¶](#GetGlyphHMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L321)

```
GetGlyphHMetrics :: proc "c" (info: ^fontinfo, glyph_index: i32, advanceWidth, leftSideBearing: ^i32) ---
```

 

as above, but takes one or more glyph indices for greater efficiency

### [GetGlyphKernAdvance ¶](#GetGlyphKernAdvance) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L322)

```
GetGlyphKernAdvance :: proc "c" (info: ^fontinfo, glyph1, glyph2: i32) -> i32 ---
```

### [GetGlyphSDF ¶](#GetGlyphSDF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L524)

```
GetGlyphSDF :: proc "c" (
	info:                ^fontinfo, 
	scale:               f32, 
	glyph, padding:      i32, 
	onedge_value:        u8, 
	pixel_dist_scale:    f32, 
	width, height, xoff, 
	yoff:                ^i32, 
) -> [^]u8 ---
```

### [GetGlyphSVG ¶](#GetGlyphSVG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L386)

```
GetGlyphSVG :: proc "c" (info: ^fontinfo, gl: b32, svg: ^cstring) -> i32 ---
```

### [GetGlyphShape ¶](#GetGlyphShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L377)

```
GetGlyphShape :: proc "c" (info: ^fontinfo, glyph_index: i32, vertices: ^[^]vertex) -> i32 ---
```

### [GetKerningTable ¶](#GetKerningTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L338)

```
GetKerningTable :: proc "c" (info: ^fontinfo, table: [^]kerningentry, table_length: i32) -> i32 ---
```

### [GetKerningTableLength ¶](#GetKerningTableLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L337)

```
GetKerningTableLength :: proc "c" (info: ^fontinfo) -> i32 ---
```

 

Retrieves a complete list of all of the kerning pairs provided by the font
stbtt\_GetKerningTable never writes more than table\_length entries and returns how many entries it did write.
The table will be sorted by (a.glyph1 == b.glyph1)?(a.glyph2 < b.glyph2):(a.glyph1 < b.glyph1)

### [GetNumberOfFonts ¶](#GetNumberOfFonts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L248)

```
GetNumberOfFonts :: proc "c" (data: [^]u8) -> i32 ---
```

 

This function will determine the number of fonts in a font file. TrueType
collection (.ttc) files may contain multiple fonts, while TrueType font
(.ttf) files only contain one font. The number of fonts can be used for
indexing with the previous function where the index is between zero and one
less than the total fonts. If an error occurs, -1 is returned.

### [GetPackedQuad ¶](#GetPackedQuad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L188)

```
GetPackedQuad :: proc "c" (
	chardata:         ^packedchar, 
	pw, ph:           i32, 
	char_index:       i32, 
	xpos, ypos:       ^f32, 
	q:                ^aligned_quad, 
	align_to_integer: b32, 
) ---
```

### [GetScaledFontVMetrics ¶](#GetScaledFontVMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L90)

```
GetScaledFontVMetrics :: proc "c" (
	fontdata:        [^]u8, 
	index:           i32, 
	size:            f32, 
	ascent, descent, 
	lineGap:         ^f32, 
) ---
```

 

Query the font vertical metrics without having to create a font first.

### [InitFont ¶](#InitFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L241)

```
InitFont :: proc "c" (info: ^fontinfo, data: [^]u8, offset: i32) -> b32 ---
```

 

Given an offset into the file that defines a font, this function builds
the necessary cached info for the rest of the system. You must allocate
the stbtt\_fontinfo yourself, and stbtt\_InitFont will fill it out. You don't
need to do anything special to free it, because the contents are pure
value data with no additional data structures. Returns 0 on failure.

### [IsGlyphEmpty ¶](#IsGlyphEmpty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L365)

```
IsGlyphEmpty :: proc "c" (info: ^fontinfo, glyph_index: i32) -> b32 ---
```

 

returns true if nothing is drawn for this glyph

### [MakeCodepointBitmap ¶](#MakeCodepointBitmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L422)

```
MakeCodepointBitmap :: proc "c" (
	info:                     ^fontinfo, 
	output:                   [^]u8, 
	out_w, out_h, out_stride: i32, 
	scale_x, scale_y:         f32, 
	codepoint:                rune, 
) ---
```

 

the same as stbtt\_GetCodepointBitmap, but you pass in storage for the bitmap
in the form of 'output', with row spacing of 'out\_stride' bytes. the bitmap
is clipped to out\_w/out\_h bytes. Call stbtt\_GetCodepointBitmapBox to get the
width and height and positioning info for it first.

### [MakeCodepointBitmapSubpixel ¶](#MakeCodepointBitmapSubpixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L426)

```
MakeCodepointBitmapSubpixel :: proc "c" (
	info:                               ^fontinfo, 
	output:                             [^]u8, 
	out_w, out_h, out_stride:           i32, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	codepoint:                          rune, 
) ---
```

 

same as stbtt\_MakeCodepointBitmap, but you can specify a subpixel
shift for the character

### [MakeCodepointBitmapSubpixelPrefilter ¶](#MakeCodepointBitmapSubpixelPrefilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L430)

```
MakeCodepointBitmapSubpixelPrefilter :: proc "c" (
	info:                               ^fontinfo, 
	output:                             [^]u8, 
	out_w, out_h, out_stride:           i32, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	oversample_x, oversample_y:         b32, 
	sub_x, sub_y:                       ^f32, 
	codepoint:                          rune, 
) ---
```

 

same as stbtt\_MakeCodepointBitmapSubpixel, but prefiltering
is performed (see stbtt\_PackSetOversampling)

### [MakeGlyphBitmap ¶](#MakeGlyphBitmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L447)

```
MakeGlyphBitmap :: proc "c" (
	info:                     ^fontinfo, 
	output:                   [^]u8, 
	out_w, out_h, out_stride: i32, 
	scale_x, scale_y:         f32, 
	glyph:                    i32, 
) ---
```

### [MakeGlyphBitmapSubpixel ¶](#MakeGlyphBitmapSubpixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L448)

```
MakeGlyphBitmapSubpixel :: proc "c" (
	info:                               ^fontinfo, 
	output:                             [^]u8, 
	out_w, out_h, out_stride:           i32, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	glyph:                              i32, 
) ---
```

### [MakeGlyphBitmapSubpixelPrefilter ¶](#MakeGlyphBitmapSubpixelPrefilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L449)

```
MakeGlyphBitmapSubpixelPrefilter :: proc "c" (
	info:                               ^fontinfo, 
	output:                             [^]u8, 
	out_w, out_h, out_stride:           i32, 
	scale_x, scale_y, shift_x, shift_y: f32, 
	oversample_x, oversample_y:         i32, 
	sub_x, sub_y:                       ^f32, 
	glyph:                              i32, 
) ---
```

### [POINT\_SIZE ¶](#POINT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L127)

```
POINT_SIZE :: proc(x: $T) -> $$deferred_return {…}
```

 

@NOTE: this was a macro

### [PackBegin ¶](#PackBegin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L141)

```
PackBegin :: proc "c" (
	spc:                                     ^pack_context, 
	pixels:                                  [^]u8, 
	width, height, stride_in_bytes, padding: i32, 
	alloc_context:                           rawptr, 
) -> i32 ---
```

 

Initializes a packing context stored in the passed-in stbtt\_pack\_context.
Future calls using this context will pack characters into the bitmap passed
in here: a 1-channel bitmap that is width \* height. stride\_in\_bytes is
the distance from one row to the next (or 0 to mean they are packed tightly
together). "padding" is the amount of padding to leave between each
character (normally you want '1' for bitmaps you'll use as textures with
bilinear filtering).

Returns 0 on failure, 1 on success.

### [PackEnd ¶](#PackEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L144)

```
PackEnd :: proc "c" (spc: ^pack_context) ---
```

 

Cleans up the packing context and frees all memory.

### [PackFontRange ¶](#PackFontRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L158)

```
PackFontRange :: proc "c" (
	spc:                                             ^pack_context, 
	fontdata:                                        [^]u8, 
	font_index:                                      i32, 
	font_size:                                       f32, 
	first_unicode_char_in_range, num_chars_in_range: i32, 
	chardata_for_range:                              ^packedchar, 
) -> i32 ---
```

 

Creates character bitmaps from the font\_index'th font found in fontdata (use
font\_index=0 if you don't know what that is). It creates num\_chars\_in\_range
bitmaps for characters with unicode values starting at first\_unicode\_char\_in\_range
and increasing. Data for how to render them is stored in chardata\_for\_range;
pass these to stbtt\_GetPackedQuad to get back renderable quads.

font\_size is the full height of the character from ascender to descender,
as computed by stbtt\_ScaleForPixelHeight. To use a point size as computed
by stbtt\_ScaleForMappingEmToPixels, wrap the point size in POINT\_SIZE()
and pass that result as 'font\_size':
..., 20 , ... // font max minus min y is 20 pixels tall
..., POINT\_SIZE(20), ... // 'M' is 20 pixels tall

### [PackFontRanges ¶](#PackFontRanges) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L164)

```
PackFontRanges :: proc "c" (spc: ^pack_context, fontdata: [^]u8, font_index: i32, ranges: [^]pack_range, num_ranges: i32) -> i32 ---
```

 

Creates character bitmaps from multiple ranges of characters stored in
ranges. This will usually create a better-packed bitmap than multiple
calls to stbtt\_PackFontRange. Note that you can call this multiple
times within a single PackBegin/PackEnd.

### [PackFontRangesGatherRects ¶](#PackFontRangesGatherRects) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L204)

```
PackFontRangesGatherRects :: proc "c" (spc: ^pack_context, info: ^fontinfo, ranges: ^pack_range, num_ranges: i32, rects: [^]stb_rect_pack.Rect) -> i32 ---
```

 

Calling these functions in sequence is roughly equivalent to calling
stbtt\_PackFontRanges(). If you more control over the packing of multiple
fonts, or if you want to pack custom data into a font texture, take a look
at the source to of stbtt\_PackFontRanges() and create a custom version
using these functions, e.g. call GatherRects multiple times,
building up a single array of rects, then call PackRects once,
then call RenderIntoRects repeatedly. This may result in a
better packing than calling PackFontRanges multiple times
(or it may not).

### [PackFontRangesPackRects ¶](#PackFontRangesPackRects) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L205)

```
PackFontRangesPackRects :: proc "c" (spc: ^pack_context, rects: [^]stb_rect_pack.Rect, num_rects: i32) ---
```

### [PackFontRangesRenderIntoRects ¶](#PackFontRangesRenderIntoRects) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L206)

```
PackFontRangesRenderIntoRects :: proc "c" (spc: ^pack_context, info: ^fontinfo, ranges: ^pack_range, num_ranges: i32, rects: [^]stb_rect_pack.Rect) -> i32 ---
```

### [PackSetOversampling ¶](#PackSetOversampling) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L180)

```
PackSetOversampling :: proc "c" (spc: ^pack_context, h_oversample, v_oversample: u32) ---
```

 

Oversampling a font increases the quality by allowing higher-quality subpixel
positioning, and is especially valuable at smaller text sizes.

This function sets the amount of oversampling for all following calls to
stbtt\_PackFontRange(s) or stbtt\_PackFontRangesGatherRects for a given
pack context. The default (no oversampling) is achieved by h\_oversample=1
and v\_oversample=1. The total number of pixels required is
h\_oversample\*v\_oversample larger than the default; for example, 2x2
oversampling requires 4x the storage of 1x1. For best results, render
oversampled textures with bilinear filtering. Look at the readme in
stb/tests/oversample for information about oversampled fonts

To use with PackFontRangesGather etc., you must set it before calls
call to PackFontRangesGatherRects.

### [PackSetSkipMissingCodepoints ¶](#PackSetSkipMissingCodepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L186)

```
PackSetSkipMissingCodepoints :: proc "c" (spc: ^pack_context, skip: b32) ---
```

 

If skip != false, this tells stb\_truetype to skip any codepoints for which
there is no corresponding glyph. If skip=false, which is the default, then
codepoints without a glyph recived the font's "missing character" glyph,
typically an empty box by convention.

### [Rasterize ¶](#Rasterize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L454)

```
Rasterize :: proc "c" (
	result:             ^_bitmap, 
	flatness_in_pixels: f32, 
	vertices:           [^]vertex, 
	num_verts:          i32, 
	scale_x, scale_y:   f32, 
	shift_x, shift_y:   f32, 
	x_off, y_off:       i32, 
	invert:             b32, 
	userdata:           rawptr, 
) ---
```

 

rasterize a shape with quadratic beziers into a bitmap

### [ScaleForMappingEmToPixels ¶](#ScaleForMappingEmToPixels) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L290)

```
ScaleForMappingEmToPixels :: proc "c" (info: ^fontinfo, pixels: f32) -> f32 ---
```

 

computes a scale factor to produce a font whose EM size is mapped to
'pixels' tall. This is probably what traditional APIs compute, but
I'm not positive.

### [ScaleForPixelHeight ¶](#ScaleForPixelHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin#L285)

```
ScaleForPixelHeight :: proc "c" (info: ^fontinfo, pixels: f32) -> f32 ---
```

 

computes a scale factor to produce a font whose "height" is 'pixels' tall.
Height is measured as the distance from the highest ascender to the lowest
descender; in other words, it's equivalent to calling stbtt\_GetFontVMetrics
and computing:
scale = pixels / (ascent - descent)
so if you prefer to measure height by the ascent only, use a similar calculation.

## Procedure Groups

This section is empty.

## Source Files

* [stb\_truetype.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/truetype/stb_truetype.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.559687700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [PLATFORM\_ID](#PLATFORM_ID)
    + [aligned\_quad](#aligned_quad)
    + [bakedchar](#bakedchar)
    + [fontinfo](#fontinfo)
    + [kerningentry](#kerningentry)
    + [pack\_context](#pack_context)
    + [pack\_range](#pack_range)
    + [packedchar](#packedchar)
    + [vertex](#vertex)
    + [vertex\_type](#vertex_type)
    + [vmove](#vmove)
  * [Constants](#pkg-Constants)
    + [MACSTYLE\_BOLD](#MACSTYLE_BOLD)
    + [MACSTYLE\_DONTCARE](#MACSTYLE_DONTCARE)
    + [MACSTYLE\_ITALIC](#MACSTYLE_ITALIC)
    + [MACSTYLE\_NONE](#MACSTYLE_NONE)
    + [MACSTYLE\_UNDERSCORE](#MACSTYLE_UNDERSCORE)
    + [MAC\_EID\_ARABIC](#MAC_EID_ARABIC)
    + [MAC\_EID\_CHINESE\_TRAD](#MAC_EID_CHINESE_TRAD)
    + [MAC\_EID\_GREEK](#MAC_EID_GREEK)
    + [MAC\_EID\_HEBREW](#MAC_EID_HEBREW)
    + [MAC\_EID\_JAPANESE](#MAC_EID_JAPANESE)
    + [MAC\_EID\_KOREAN](#MAC_EID_KOREAN)
    + [MAC\_EID\_ROMAN](#MAC_EID_ROMAN)
    + [MAC\_EID\_RUSSIAN](#MAC_EID_RUSSIAN)
    + [MAC\_LANG\_ARABIC](#MAC_LANG_ARABIC)
    + [MAC\_LANG\_CHINESE\_SIMPLIFIED](#MAC_LANG_CHINESE_SIMPLIFIED)
    + [MAC\_LANG\_CHINESE\_TRAD](#MAC_LANG_CHINESE_TRAD)
    + [MAC\_LANG\_DUTCH](#MAC_LANG_DUTCH)
    + [MAC\_LANG\_ENGLISH](#MAC_LANG_ENGLISH)
    + [MAC\_LANG\_FRENCH](#MAC_LANG_FRENCH)
    + [MAC\_LANG\_GERMAN](#MAC_LANG_GERMAN)
    + [MAC\_LANG\_HEBREW](#MAC_LANG_HEBREW)
    + [MAC\_LANG\_ITALIAN](#MAC_LANG_ITALIAN)
    + [MAC\_LANG\_JAPANESE](#MAC_LANG_JAPANESE)
    + [MAC\_LANG\_KOREAN](#MAC_LANG_KOREAN)
    + [MAC\_LANG\_RUSSIAN](#MAC_LANG_RUSSIAN)
    + [MAC\_LANG\_SPANISH](#MAC_LANG_SPANISH)
    + [MAC\_LANG\_SWEDISH](#MAC_LANG_SWEDISH)
    + [MS\_EID\_SHIFTJIS](#MS_EID_SHIFTJIS)
    + [MS\_EID\_SYMBOL](#MS_EID_SYMBOL)
    + [MS\_EID\_UNICODE\_BMP](#MS_EID_UNICODE_BMP)
    + [MS\_EID\_UNICODE\_FULL](#MS_EID_UNICODE_FULL)
    + [MS\_LANG\_CHINESE](#MS_LANG_CHINESE)
    + [MS\_LANG\_DUTCH](#MS_LANG_DUTCH)
    + [MS\_LANG\_ENGLISH](#MS_LANG_ENGLISH)
    + [MS\_LANG\_FRENCH](#MS_LANG_FRENCH)
    + [MS\_LANG\_GERMAN](#MS_LANG_GERMAN)
    + [MS\_LANG\_HEBREW](#MS_LANG_HEBREW)
    + [MS\_LANG\_ITALIAN](#MS_LANG_ITALIAN)
    + [MS\_LANG\_JAPANESE](#MS_LANG_JAPANESE)
    + [MS\_LANG\_KOREAN](#MS_LANG_KOREAN)
    + [MS\_LANG\_RUSSIAN](#MS_LANG_RUSSIAN)
    + [MS\_LANG\_SPANISH](#MS_LANG_SPANISH)
    + [MS\_LANG\_SWEDISH](#MS_LANG_SWEDISH)
    + [UNICODE\_EID\_ISO\_10646](#UNICODE_EID_ISO_10646)
    + [UNICODE\_EID\_UNICODE\_1\_0](#UNICODE_EID_UNICODE_1_0)
    + [UNICODE\_EID\_UNICODE\_1\_1](#UNICODE_EID_UNICODE_1_1)
    + [UNICODE\_EID\_UNICODE\_2\_0\_BMP](#UNICODE_EID_UNICODE_2_0_BMP)
    + [UNICODE\_EID\_UNICODE\_2\_0\_FULL](#UNICODE_EID_UNICODE_2_0_FULL)
  * [Procedures](#pkg-Procedures)
    + [BakeFontBitmap](#BakeFontBitmap)
    + [CompareUTF8toUTF16\_bigendian](#CompareUTF8toUTF16_bigendian)
    + [FindGlyphIndex](#FindGlyphIndex)
    + [FindMatchingFont](#FindMatchingFont)
    + [FindSVGDoc](#FindSVGDoc)
    + [FreeBitmap](#FreeBitmap)
    + [FreeSDF](#FreeSDF)
    + [FreeShape](#FreeShape)
    + [GetBakedQuad](#GetBakedQuad)
    + [GetCodepointBitmap](#GetCodepointBitmap)
    + [GetCodepointBitmapBox](#GetCodepointBitmapBox)
    + [GetCodepointBitmapBoxSubpixel](#GetCodepointBitmapBoxSubpixel)
    + [GetCodepointBitmapSubpixel](#GetCodepointBitmapSubpixel)
    + [GetCodepointBox](#GetCodepointBox)
    + [GetCodepointHMetrics](#GetCodepointHMetrics)
    + [GetCodepointKernAdvance](#GetCodepointKernAdvance)
    + [GetCodepointSDF](#GetCodepointSDF)
    + [GetCodepointSVG](#GetCodepointSVG)
    + [GetCodepointShape](#GetCodepointShape)
    + [GetFontBoundingBox](#GetFontBoundingBox)
    + [GetFontNameString](#GetFontNameString)
    + [GetFontOffsetForIndex](#GetFontOffsetForIndex)
    + [GetFontVMetrics](#GetFontVMetrics)
    + [GetFontVMetricsOS2](#GetFontVMetricsOS2)
    + [GetGlyphBitmap](#GetGlyphBitmap)
    + [GetGlyphBitmapBox](#GetGlyphBitmapBox)
    + [GetGlyphBitmapBoxSubpixel](#GetGlyphBitmapBoxSubpixel)
    + [GetGlyphBitmapSubpixel](#GetGlyphBitmapSubpixel)
    + [GetGlyphBox](#GetGlyphBox)
    + [GetGlyphHMetrics](#GetGlyphHMetrics)
    + [GetGlyphKernAdvance](#GetGlyphKernAdvance)
    + [GetGlyphSDF](#GetGlyphSDF)
    + [GetGlyphSVG](#GetGlyphSVG)
    + [GetGlyphShape](#GetGlyphShape)
    + [GetKerningTable](#GetKerningTable)
    + [GetKerningTableLength](#GetKerningTableLength)
    + [GetNumberOfFonts](#GetNumberOfFonts)
    + [GetPackedQuad](#GetPackedQuad)
    + [GetScaledFontVMetrics](#GetScaledFontVMetrics)
    + [InitFont](#InitFont)
    + [IsGlyphEmpty](#IsGlyphEmpty)
    + [MakeCodepointBitmap](#MakeCodepointBitmap)
    + [MakeCodepointBitmapSubpixel](#MakeCodepointBitmapSubpixel)
    + [MakeCodepointBitmapSubpixelPrefilter](#MakeCodepointBitmapSubpixelPrefilter)
    + [MakeGlyphBitmap](#MakeGlyphBitmap)
    + [MakeGlyphBitmapSubpixel](#MakeGlyphBitmapSubpixel)
    + [MakeGlyphBitmapSubpixelPrefilter](#MakeGlyphBitmapSubpixelPrefilter)
    + [POINT\_SIZE](#POINT_SIZE)
    + [PackBegin](#PackBegin)
    + [PackEnd](#PackEnd)
    + [PackFontRange](#PackFontRange)
    + [PackFontRanges](#PackFontRanges)
    + [PackFontRangesGatherRects](#PackFontRangesGatherRects)
    + [PackFontRangesPackRects](#PackFontRangesPackRects)
    + [PackFontRangesRenderIntoRects](#PackFontRangesRenderIntoRects)
    + [PackSetOversampling](#PackSetOversampling)
    + [PackSetSkipMissingCodepoints](#PackSetSkipMissingCodepoints)
    + [Rasterize](#Rasterize)
    + [ScaleForMappingEmToPixels](#ScaleForMappingEmToPixels)
    + [ScaleForPixelHeight](#ScaleForPixelHeight)
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