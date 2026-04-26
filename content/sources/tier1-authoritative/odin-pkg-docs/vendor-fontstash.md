package fontstash - pkg.odin-lang.org 






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



Current Package: *[fontstash](/vendor/fontstash)*

  

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
2. [fontstash](/vendor/fontstash)

# package vendor:fontstash [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash)

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (12)

* [AlignHorizontal](#AlignHorizontal)
* [AlignVertical](#AlignVertical)
* [AtlasNode](#AtlasNode)
* [Font](#Font)
* [FontContext](#FontContext)
* [Glyph](#Glyph)
* [Glyph\_Index](#Glyph_Index)
* [Quad](#Quad)
* [QuadLocation](#QuadLocation)
* [State](#State)
* [TextIter](#TextIter)
* [Vertex](#Vertex)

Constants (8)

* [BLUR\_APREC](#BLUR_APREC)
* [BLUR\_ZPREC](#BLUR_ZPREC)
* [HASH\_LUT\_SIZE](#HASH_LUT_SIZE)
* [INIT\_ATLAS\_NODES](#INIT_ATLAS_NODES)
* [INIT\_GLYPHS](#INIT_GLYPHS)
* [INVALID](#INVALID)
* [MAX\_FALLBACKS](#MAX_FALLBACKS)
* [MAX\_STATES](#MAX_STATES)

Variables (0)

This section is empty.

Procedures (31)

* [AddFallbackFont](#AddFallbackFont)
* [AddFontMem](#AddFontMem)
* [AddFontPath](#AddFontPath)
* [BeginState](#BeginState)
* [ClearState](#ClearState)
* [CodepointWidth](#CodepointWidth)
* [Destroy](#Destroy)
* [EndState](#EndState)
* [ExpandAtlas](#ExpandAtlas)
* [GetFontByName](#GetFontByName)
* [Init](#Init)
* [LineBounds](#LineBounds)
* [PopState](#PopState)
* [PushState](#PushState)
* [Reset](#Reset)
* [ResetAtlas](#ResetAtlas)
* [ResetFallbackFont](#ResetFallbackFont)
* [SetAH](#SetAH)
* [SetAV](#SetAV)
* [SetAlignHorizontal](#SetAlignHorizontal)
* [SetAlignVertical](#SetAlignVertical)
* [SetBlur](#SetBlur)
* [SetColor](#SetColor)
* [SetFont](#SetFont)
* [SetSize](#SetSize)
* [SetSpacing](#SetSpacing)
* [TextBounds](#TextBounds)
* [TextIterInit](#TextIterInit)
* [TextIterNext](#TextIterNext)
* [ValidateTexture](#ValidateTexture)
* [VerticalMetrics](#VerticalMetrics)

Procedure Groups (1)

* [AddFont](#AddFont)

## Types

### [AlignHorizontal ¶](#AlignHorizontal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L37)

```
AlignHorizontal :: enum int {
	LEFT, 
	CENTER, 
	RIGHT, 
}
```

##### Related Procedures With Parameters

* [SetAlignHorizontal](/vendor/fontstash/#SetAlignHorizontal)

### [AlignVertical ¶](#AlignVertical) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L43)

```
AlignVertical :: enum int {
	TOP, 
	MIDDLE, 
	BOTTOM, 
	BASELINE, 
}
```

##### Related Procedures With Parameters

* [SetAlignVertical](/vendor/fontstash/#SetAlignVertical)

### [AtlasNode ¶](#AtlasNode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L79)

```
AtlasNode :: struct {
	x:     i16,
	y:     i16,
	width: i16,
}
```

### [Font ¶](#Font) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L50)

```
Font :: struct {
	name:           string,
	// allocated
	info:           stb_truetype.fontinfo,
	loadedData:     []u8,
	freeLoadedData: bool,
	// in case you dont want loadedData to be removed
	ascender:       f32,
	descender:      f32,
	lineHeight:     f32,
	glyphs:         [dynamic]Glyph,
	lut:            [256]int,
	fallbacks:      [20]int,
	nfallbacks:     int,
}
```

##### Related Procedures With Parameters

* [CodepointWidth](/vendor/fontstash/#CodepointWidth)

### [FontContext ¶](#FontContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L94)

```
FontContext :: struct {
	fonts:          [dynamic]Font,
	// always assuming user wants to resize
	nodes:          [dynamic]AtlasNode,
	// actual pixels
	textureData:    []u8,
	// allocated using context.allocator
	width:          int,
	height:         int,
	// 1 / texture_atlas_width, 1 / texture_atlas_height
	itw:            f32,
	ith:            f32,
	// state 
	states:         []State,
	state_count:    int,
	// used states
	location:       QuadLocation,
	// dirty rectangle of the texture region that was updated
	dirtyRect:      [4]f32,
	// callbacks with userData passed
	userData:       rawptr,
	// called when a texture is expanded and needs handling
	callbackResize: proc(data: rawptr, w, h: int),
	// called in state_end to update the texture region that changed
	callbackUpdate: proc(data: rawptr, dirtyRect: [4]f32, textureData: rawptr),
}
```

##### Related Procedures With Parameters

* [AddFallbackFont](/vendor/fontstash/#AddFallbackFont)
* [AddFontMem](/vendor/fontstash/#AddFontMem)
* [AddFontPath](/vendor/fontstash/#AddFontPath)
* [BeginState](/vendor/fontstash/#BeginState)
* [ClearState](/vendor/fontstash/#ClearState)
* [Destroy](/vendor/fontstash/#Destroy)
* [EndState](/vendor/fontstash/#EndState)
* [ExpandAtlas](/vendor/fontstash/#ExpandAtlas)
* [GetFontByName](/vendor/fontstash/#GetFontByName)
* [Init](/vendor/fontstash/#Init)
* [LineBounds](/vendor/fontstash/#LineBounds)
* [PopState](/vendor/fontstash/#PopState)
* [PushState](/vendor/fontstash/#PushState)
* [Reset](/vendor/fontstash/#Reset)
* [ResetAtlas](/vendor/fontstash/#ResetAtlas)
* [ResetFallbackFont](/vendor/fontstash/#ResetFallbackFont)
* [SetAlignHorizontal](/vendor/fontstash/#SetAlignHorizontal)
* [SetAlignVertical](/vendor/fontstash/#SetAlignVertical)
* [SetBlur](/vendor/fontstash/#SetBlur)
* [SetColor](/vendor/fontstash/#SetColor)
* [SetFont](/vendor/fontstash/#SetFont)
* [SetSize](/vendor/fontstash/#SetSize)
* [SetSpacing](/vendor/fontstash/#SetSpacing)
* [TextBounds](/vendor/fontstash/#TextBounds)
* [TextIterInit](/vendor/fontstash/#TextIterInit)
* [TextIterNext](/vendor/fontstash/#TextIterNext)
* [ValidateTexture](/vendor/fontstash/#ValidateTexture)
* [VerticalMetrics](/vendor/fontstash/#VerticalMetrics)
* [AddFont](/vendor/fontstash/#AddFont) *(procedure groups)*

### [Glyph ¶](#Glyph) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L68)

```
Glyph :: struct {
	codepoint: rune,
	index:     i32,
	next:      int,
	isize:     i16,
	blurSize:  i16,
	x0:        i16,
	y0:        i16,
	x1:        i16,
	y1:        i16,
	xoff:      i16,
	yoff:      i16,
	xadvance:  i16,
}
```

### [Glyph\_Index ¶](#Glyph_Index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L35)

```
Glyph_Index :: i32
```

 

in case you want to change the handle for glyph indices

### [Quad ¶](#Quad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L852)

```
Quad :: struct {
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

 

quad that should be used to draw from the texture atlas




##### Related Procedures With Parameters

* [TextIterNext](/vendor/fontstash/#TextIterNext)

### [QuadLocation ¶](#QuadLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L89)

```
QuadLocation :: enum int {
	TOPLEFT, 
	BOTTOMLEFT, 
}
```

##### Related Procedures With Parameters

* [Init](/vendor/fontstash/#Init)

### [State ¶](#State) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L840)

```
State :: struct {
	font:    int,
	size:    f32,
	color:   [4]u8,
	spacing: f32,
	blur:    f32,
	ah:      AlignHorizontal,
	av:      AlignVertical,
}
```

 

state used to share font options

### [TextIter ¶](#TextIter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L858)

```
TextIter :: struct {
	x:                  f32,
	y:                  f32,
	nextx:              f32,
	nexty:              f32,
	scale:              f32,
	spacing:            f32,
	isize:              i16,
	iblur:              i16,
	font:               ^Font,
	previousGlyphIndex: i32,
	// unicode iteration
	utf8state:          rune,
	// utf8
	codepoint:          rune,
	text:               string,
	codepointCount:     int,
	// byte indices
	str:                int,
	next:               int,
	end:                int,
}
```

 

text iteration with custom settings




##### Related Procedures With Parameters

* [TextIterNext](/vendor/fontstash/#TextIterNext)



##### Related Procedures With Returns

* [TextIterInit](/vendor/fontstash/#TextIterInit)

### [Vertex ¶](#Vertex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L83)

```
Vertex :: struct #packed {
	x:     f32,
	y:     f32,
	u:     f32,
	v:     f32,
	color: [4]u8,
}
```

## Constants

### [BLUR\_APREC ¶](#BLUR_APREC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L558)

```
BLUR_APREC :: 16
```

### [BLUR\_ZPREC ¶](#BLUR_ZPREC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L559)

```
BLUR_ZPREC :: 7
```

### [HASH\_LUT\_SIZE ¶](#HASH_LUT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L31)

```
HASH_LUT_SIZE :: 256
```

### [INIT\_ATLAS\_NODES ¶](#INIT_ATLAS_NODES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L33)

```
INIT_ATLAS_NODES :: 256
```

### [INIT\_GLYPHS ¶](#INIT_GLYPHS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L32)

```
INIT_GLYPHS :: 256
```

### [INVALID ¶](#INVALID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L29)

```
INVALID :: -1
```

### [MAX\_FALLBACKS ¶](#MAX_FALLBACKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L34)

```
MAX_FALLBACKS :: 20
```

### [MAX\_STATES ¶](#MAX_STATES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L30)

```
MAX_STATES :: 20
```

## Variables

This section is empty.

## Procedures

### [AddFallbackFont ¶](#AddFallbackFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L362)

```
AddFallbackFont :: proc(ctx: ^FontContext, base, fallback: int) -> bool {…}
```

### [AddFontMem ¶](#AddFontMem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L330)

```
AddFontMem :: proc(ctx: ^FontContext, name: string, data: []u8, freeLoadedData: bool, fontIndex: int = 0) -> int {…}
```

 

push a font to the font stack
optionally init with ascii characters at a wanted size

'fontIndex' controls which font you want to load within a multi-font format such
as TTC. Leave it as zero if you are loading a single-font format such as TTF.




##### Related Procedure Groups

* [AddFont](/vendor/fontstash/#AddFont)

### [AddFontPath ¶](#AddFontPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash_os.odin#L9)

```
AddFontPath :: proc(ctx: ^FontContext, name: string, path: string, fontIndex: int = 0) -> int {…}
```

 

'fontIndex' controls which font you want to load within a multi-font format such
as TTC. Leave it as zero if you are loading a single-font format such as TTF.




##### Related Procedure Groups

* [AddFont](/vendor/fontstash/#AddFont)

### [BeginState ¶](#BeginState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L1174)

```
BeginState :: proc(using ctx: ^FontContext) {…}
```

 

reset to single state

### [ClearState ¶](#ClearState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L898)

```
ClearState :: proc(using ctx: ^FontContext) {…}
```

 

clear current state

### [CodepointWidth ¶](#CodepointWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L725)

```
CodepointWidth :: proc(font: ^Font, codepoint: rune, scale: f32) -> f32 {…}
```

 

only useful for single glyphs where you quickly want the width

### [Destroy ¶](#Destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L151)

```
Destroy :: proc(using ctx: ^FontContext) {…}
```

### [EndState ¶](#EndState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L1181)

```
EndState :: proc(using ctx: ^FontContext) {…}
```

 

checks for texture updates after potential \_\_getGlyph calls

### [ExpandAtlas ¶](#ExpandAtlas) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L624)

```
ExpandAtlas :: proc(ctx: ^FontContext, width, height: int, allocator := context.allocator) -> bool {…}
```

### [GetFontByName ¶](#GetFontByName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L382)

```
GetFontByName :: proc(ctx: ^FontContext, name: string) -> int {…}
```

 

find font by name

### [Init ¶](#Init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L124)

```
Init :: proc(ctx: ^FontContext, w, h: int, loc: QuadLocation) {…}
```

### [LineBounds ¶](#LineBounds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L737)

```
LineBounds :: proc(ctx: ^FontContext, y: f32) -> (miny, maxy: f32) {…}
```

 

get top and bottom line boundary

### [PopState ¶](#PopState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L889)

```
PopState :: proc(using ctx: ^FontContext) {…}
```

 

pop a state

### [PushState ¶](#PushState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L878)

```
PushState :: proc(using ctx: ^FontContext, loc := #caller_location) {…}
```

 

push a state, copies the current one over to the next one

### [Reset ¶](#Reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L167)

```
Reset :: proc(using ctx: ^FontContext) {…}
```

### [ResetAtlas ¶](#ResetAtlas) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L676)

```
ResetAtlas :: proc(ctx: ^FontContext, width, height: int, allocator := context.allocator) -> bool {…}
```

### [ResetFallbackFont ¶](#ResetFallbackFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L374)

```
ResetFallbackFont :: proc(ctx: ^FontContext, base: int) {…}
```

### [SetAH ¶](#SetAH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L936)

```
SetAH :: SetAlignHorizontal
```

### [SetAV ¶](#SetAV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L940)

```
SetAV :: SetAlignVertical
```

### [SetAlignHorizontal ¶](#SetAlignHorizontal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L936)

```
SetAlignHorizontal :: proc(ctx: ^FontContext, ah: AlignHorizontal) {…}
```

### [SetAlignVertical ¶](#SetAlignVertical) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L940)

```
SetAlignVertical :: proc(ctx: ^FontContext, av: AlignVertical) {…}
```

### [SetBlur ¶](#SetBlur) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L925)

```
SetBlur :: proc(ctx: ^FontContext, blur: f32) {…}
```

### [SetColor ¶](#SetColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L917)

```
SetColor :: proc(ctx: ^FontContext, color: [4]u8) {…}
```

### [SetFont ¶](#SetFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L929)

```
SetFont :: proc(ctx: ^FontContext, font: int) {…}
```

### [SetSize ¶](#SetSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L913)

```
SetSize :: proc(ctx: ^FontContext, size: f32) {…}
```

### [SetSpacing ¶](#SetSpacing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L921)

```
SetSpacing :: proc(ctx: ^FontContext, spacing: f32) {…}
```

### [TextBounds ¶](#TextBounds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L1081)

```
TextBounds :: proc(ctx: ^FontContext, text: string, x: f32 = 0, y: f32 = 0, bounds: ^[4]f32 = nil) -> f32 {…}
```

 

width of a text line, optionally the full rect

### [TextIterInit ¶](#TextIterInit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L1005)

```
TextIterInit :: proc(ctx: ^FontContext, x: f32, y: f32, text: string) -> (res: TextIter) {…}
```

 

init text iter struct with settings

### [TextIterNext ¶](#TextIterNext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L1050)

```
TextIterNext :: proc(ctx: ^FontContext, iter: ^TextIter, quad: ^Quad) -> (ok: bool) {…}
```

 

step through each codepoint

### [ValidateTexture ¶](#ValidateTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L764)

```
ValidateTexture :: proc(using ctx: ^FontContext, dirty: ^[4]f32) -> bool {…}
```

 

true when the dirty rectangle is valid and needs a texture update on the gpu

### [VerticalMetrics ¶](#VerticalMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L1161)

```
VerticalMetrics :: proc(using ctx: ^FontContext) -> (ascender, descender, lineHeight: f32) {…}
```

## Procedure Groups

### [AddFont ¶](#AddFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin#L360)

```
AddFont :: proc{
	AddFontPath,
	AddFontMem,
}
```

## Source Files

* [fontstash.odin](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash.odin)
* [fontstash\_os.odin](https://github.com/odin-lang/Odin/tree/master/vendor/fontstash/fontstash_os.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.944578400 +0000 UTC`

* [Types](#pkg-Types)
  + [AlignHorizontal](#AlignHorizontal)
  + [AlignVertical](#AlignVertical)
  + [AtlasNode](#AtlasNode)
  + [Font](#Font)
  + [FontContext](#FontContext)
  + [Glyph](#Glyph)
  + [Glyph\_Index](#Glyph_Index)
  + [Quad](#Quad)
  + [QuadLocation](#QuadLocation)
  + [State](#State)
  + [TextIter](#TextIter)
  + [Vertex](#Vertex)
* [Constants](#pkg-Constants)
  + [BLUR\_APREC](#BLUR_APREC)
  + [BLUR\_ZPREC](#BLUR_ZPREC)
  + [HASH\_LUT\_SIZE](#HASH_LUT_SIZE)
  + [INIT\_ATLAS\_NODES](#INIT_ATLAS_NODES)
  + [INIT\_GLYPHS](#INIT_GLYPHS)
  + [INVALID](#INVALID)
  + [MAX\_FALLBACKS](#MAX_FALLBACKS)
  + [MAX\_STATES](#MAX_STATES)
* [Procedures](#pkg-Procedures)
  + [AddFallbackFont](#AddFallbackFont)
  + [AddFontMem](#AddFontMem)
  + [AddFontPath](#AddFontPath)
  + [BeginState](#BeginState)
  + [ClearState](#ClearState)
  + [CodepointWidth](#CodepointWidth)
  + [Destroy](#Destroy)
  + [EndState](#EndState)
  + [ExpandAtlas](#ExpandAtlas)
  + [GetFontByName](#GetFontByName)
  + [Init](#Init)
  + [LineBounds](#LineBounds)
  + [PopState](#PopState)
  + [PushState](#PushState)
  + [Reset](#Reset)
  + [ResetAtlas](#ResetAtlas)
  + [ResetFallbackFont](#ResetFallbackFont)
  + [SetAH](#SetAH)
  + [SetAV](#SetAV)
  + [SetAlignHorizontal](#SetAlignHorizontal)
  + [SetAlignVertical](#SetAlignVertical)
  + [SetBlur](#SetBlur)
  + [SetColor](#SetColor)
  + [SetFont](#SetFont)
  + [SetSize](#SetSize)
  + [SetSpacing](#SetSpacing)
  + [TextBounds](#TextBounds)
  + [TextIterInit](#TextIterInit)
  + [TextIterNext](#TextIterNext)
  + [ValidateTexture](#ValidateTexture)
  + [VerticalMetrics](#VerticalMetrics)
* [Procedure Groups](#pkg-Procedure Groups)
  + [AddFont](#AddFont)
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