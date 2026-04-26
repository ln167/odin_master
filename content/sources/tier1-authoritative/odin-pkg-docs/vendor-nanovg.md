package nanovg - pkg.odin-lang.org 






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



Current Package: *[nanovg](/vendor/nanovg)*

  

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
2. [nanovg](/vendor/nanovg)

# package vendor:nanovg [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg)

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (28)

* [AlignHorizontal](#AlignHorizontal)
* [AlignVertical](#AlignVertical)
* [BlendFactor](#BlendFactor)
* [Codepoint\_Type](#Codepoint_Type)
* [Color](#Color)
* [Commands](#Commands)
* [CompositeOperation](#CompositeOperation)
* [CompositeOperationState](#CompositeOperationState)
* [Context](#Context)
* [Glyph\_Position](#Glyph_Position)
* [ImageFlag](#ImageFlag)
* [ImageFlags](#ImageFlags)
* [LineCapType](#LineCapType)
* [Matrix](#Matrix)
* [Paint](#Paint)
* [Params](#Params)
* [Path](#Path)
* [PathCache](#PathCache)
* [Point](#Point)
* [PointFlag](#PointFlag)
* [PointFlags](#PointFlags)
* [ScissorT](#ScissorT)
* [Solidity](#Solidity)
* [State](#State)
* [Text\_Row](#Text_Row)
* [Texture](#Texture)
* [Vertex](#Vertex)
* [Winding](#Winding)

Constants (9)

* [INIT\_COMMANDS\_SIZE](#INIT_COMMANDS_SIZE)
* [INIT\_FONTIMAGE\_SIZE](#INIT_FONTIMAGE_SIZE)
* [INIT\_PATH\_SIZE](#INIT_PATH_SIZE)
* [INIT\_POINTS\_SIZE](#INIT_POINTS_SIZE)
* [INIT\_VERTS\_SIZE](#INIT_VERTS_SIZE)
* [KAPPA](#KAPPA)
* [MAX\_FONTIMAGES](#MAX_FONTIMAGES)
* [MAX\_FONTIMAGE\_SIZE](#MAX_FONTIMAGE_SIZE)
* [MAX\_STATES](#MAX_STATES)

Variables (1)

* [OP\_STATE\_TABLE](#OP_STATE_TABLE)

Procedures (107)

* [AddFallbackFont](#AddFallbackFont)
* [AddFallbackFontId](#AddFallbackFontId)
* [Arc](#Arc)
* [ArcTo](#ArcTo)
* [BeginFrame](#BeginFrame)
* [BeginPath](#BeginPath)
* [BezierTo](#BezierTo)
* [BoxGradient](#BoxGradient)
* [CancelFrame](#CancelFrame)
* [Circle](#Circle)
* [ClosePath](#ClosePath)
* [ColorHex](#ColorHex)
* [CreateFont](#CreateFont)
* [CreateFontMem](#CreateFontMem)
* [CreateImageMem](#CreateImageMem)
* [CreateImagePath](#CreateImagePath)
* [CreateImageRGBA](#CreateImageRGBA)
* [CreateInternal](#CreateInternal)
* [CurrentTransform](#CurrentTransform)
* [DebugDumpPathCache](#DebugDumpPathCache)
* [DegToRad](#DegToRad)
* [DeleteImage](#DeleteImage)
* [DeleteInternal](#DeleteInternal)
* [Ellipse](#Ellipse)
* [EndFrame](#EndFrame)
* [Fill](#Fill)
* [FillColor](#FillColor)
* [FillPaint](#FillPaint)
* [FillScoped](#FillScoped)
* [FillStrokeScoped](#FillStrokeScoped)
* [FindFont](#FindFont)
* [FontBlur](#FontBlur)
* [FontFace](#FontFace)
* [FontFaceId](#FontFaceId)
* [FontSize](#FontSize)
* [FrameScoped](#FrameScoped)
* [GlobalAlpha](#GlobalAlpha)
* [GlobalCompositeBlendFunc](#GlobalCompositeBlendFunc)
* [GlobalCompositeBlendFuncSeparate](#GlobalCompositeBlendFuncSeparate)
* [GlobalCompositeOperation](#GlobalCompositeOperation)
* [HSL](#HSL)
* [HSLA](#HSLA)
* [ImagePattern](#ImagePattern)
* [ImageSize](#ImageSize)
* [IntersectScissor](#IntersectScissor)
* [LerpRGBA](#LerpRGBA)
* [LineCap](#LineCap)
* [LineJoin](#LineJoin)
* [LineTo](#LineTo)
* [LinearGradient](#LinearGradient)
* [MiterLimit](#MiterLimit)
* [MoveTo](#MoveTo)
* [PathSolidity](#PathSolidity)
* [PathWinding](#PathWinding)
* [QuadTo](#QuadTo)
* [RGB](#RGB)
* [RGBA](#RGBA)
* [RadToDeg](#RadToDeg)
* [RadialGradient](#RadialGradient)
* [Rect](#Rect)
* [Reset](#Reset)
* [ResetFallbackFonts](#ResetFallbackFonts)
* [ResetFallbackFontsId](#ResetFallbackFontsId)
* [ResetScissor](#ResetScissor)
* [ResetTransform](#ResetTransform)
* [Restore](#Restore)
* [Rotate](#Rotate)
* [RoundedRect](#RoundedRect)
* [RoundedRectVarying](#RoundedRectVarying)
* [Save](#Save)
* [SaveScoped](#SaveScoped)
* [Scale](#Scale)
* [Scissor](#Scissor)
* [ShapeAntiAlias](#ShapeAntiAlias)
* [SkewX](#SkewX)
* [SkewY](#SkewY)
* [Stroke](#Stroke)
* [StrokeColor](#StrokeColor)
* [StrokePaint](#StrokePaint)
* [StrokeScoped](#StrokeScoped)
* [StrokeWidth](#StrokeWidth)
* [Text](#Text)
* [TextAlign](#TextAlign)
* [TextAlignHorizontal](#TextAlignHorizontal)
* [TextAlignVertical](#TextAlignVertical)
* [TextBounds](#TextBounds)
* [TextBox](#TextBox)
* [TextBoxBounds](#TextBoxBounds)
* [TextBreakLines](#TextBreakLines)
* [TextGlyphPositions](#TextGlyphPositions)
* [TextIcon](#TextIcon)
* [TextLetterSpacing](#TextLetterSpacing)
* [TextLineHeight](#TextLineHeight)
* [TextMetrics](#TextMetrics)
* [Transform](#Transform)
* [TransformIdentity](#TransformIdentity)
* [TransformInverse](#TransformInverse)
* [TransformMultiply](#TransformMultiply)
* [TransformPoint](#TransformPoint)
* [TransformPremultiply](#TransformPremultiply)
* [TransformRotate](#TransformRotate)
* [TransformScale](#TransformScale)
* [TransformSkewX](#TransformSkewX)
* [TransformSkewY](#TransformSkewY)
* [TransformTranslate](#TransformTranslate)
* [Translate](#Translate)
* [UpdateImage](#UpdateImage)

Procedure Groups (1)

* [CreateImage](#CreateImage)

## Types

### [AlignHorizontal ¶](#AlignHorizontal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L15)

```
AlignHorizontal :: fontstash.AlignHorizontal
```

##### Related Procedures With Parameters

* [TextAlign](/vendor/nanovg/#TextAlign)
* [TextAlignHorizontal](/vendor/nanovg/#TextAlignHorizontal)

### [AlignVertical ¶](#AlignVertical) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L14)

```
AlignVertical :: fontstash.AlignVertical
```

##### Related Procedures With Parameters

* [TextAlign](/vendor/nanovg/#TextAlign)
* [TextAlignVertical](/vendor/nanovg/#TextAlignVertical)

### [BlendFactor ¶](#BlendFactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L71)

```
BlendFactor :: enum int {
	ZERO, 
	ONE, 
	SRC_COLOR, 
	ONE_MINUS_SRC_COLOR, 
	DST_COLOR, 
	ONE_MINUS_DST_COLOR, 
	SRC_ALPHA, 
	ONE_MINUS_SRC_ALPHA, 
	DST_ALPHA, 
	ONE_MINUS_DST_ALPHA, 
	SRC_ALPHA_SATURATE, 
}
```

##### Related Procedures With Parameters

* [GlobalCompositeBlendFunc](/vendor/nanovg/#GlobalCompositeBlendFunc)
* [GlobalCompositeBlendFuncSeparate](/vendor/nanovg/#GlobalCompositeBlendFuncSeparate)

### [Codepoint\_Type ¶](#Codepoint_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L3047)

```
Codepoint_Type :: enum int {
	Space, 
	Newline, 
	Char, 
	CJK, 
}
```

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L28)

```
Color :: [4]f32
```

##### Related Procedures With Parameters

* [BoxGradient](/vendor/nanovg/#BoxGradient)
* [FillColor](/vendor/nanovg/#FillColor)
* [LerpRGBA](/vendor/nanovg/#LerpRGBA)
* [LinearGradient](/vendor/nanovg/#LinearGradient)
* [RadialGradient](/vendor/nanovg/#RadialGradient)
* [StrokeColor](/vendor/nanovg/#StrokeColor)
* [TextBounds](/vendor/nanovg/#TextBounds)
* [TextBoxBounds](/vendor/nanovg/#TextBoxBounds)



##### Related Procedures With Returns

* [ColorHex](/vendor/nanovg/#ColorHex)
* [HSL](/vendor/nanovg/#HSL)
* [HSLA](/vendor/nanovg/#HSLA)
* [RGB](/vendor/nanovg/#RGB)
* [RGBA](/vendor/nanovg/#RGBA)

### [Commands ¶](#Commands) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L118)

```
Commands :: enum int {
	MOVE_TO, 
	LINE_TO, 
	BEZIER_TO, 
	CLOSE, 
	WINDING, 
}
```

### [CompositeOperation ¶](#CompositeOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L85)

```
CompositeOperation :: enum int {
	SOURCE_OVER, 
	SOURCE_IN, 
	SOURCE_OUT, 
	ATOP, 
	DESTINATION_OVER, 
	DESTINATION_IN, 
	DESTINATION_OUT, 
	DESTINATION_ATOP, 
	LIGHTER, 
	COPY, 
	XOR, 
}
```

##### Related Procedures With Parameters

* [GlobalCompositeOperation](/vendor/nanovg/#GlobalCompositeOperation)

### [CompositeOperationState ¶](#CompositeOperationState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L99)

```
CompositeOperationState :: struct {
	srcRGB:   BlendFactor,
	dstRGB:   BlendFactor,
	srcAlpha: BlendFactor,
	dstAlpha: BlendFactor,
}
```

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L183)

```
Context :: struct {
	params:         Params,
	commands:       [dynamic]f32,
	commandx:       f32,
	commandy:       f32,
	states:         [32]State,
	nstates:        int,
	cache:          PathCache,
	tessTol:        f32,
	distTol:        f32,
	fringeWidth:    f32,
	devicePxRatio:  f32,
	// font
	fs:             fontstash.FontContext,
	fontImages:     [4]int,
	fontImageIdx:   int,
	// stats
	drawCallCount:  int,
	fillTriCount:   int,
	strokeTriCount: int,
	textTriCount:   int,
	// flush texture
	textureDirty:   bool,
}
```

##### Related Procedures With Parameters

* [AddFallbackFont](/vendor/nanovg/#AddFallbackFont)
* [AddFallbackFontId](/vendor/nanovg/#AddFallbackFontId)
* [Arc](/vendor/nanovg/#Arc)
* [ArcTo](/vendor/nanovg/#ArcTo)
* [BeginFrame](/vendor/nanovg/#BeginFrame)
* [BeginPath](/vendor/nanovg/#BeginPath)
* [BezierTo](/vendor/nanovg/#BezierTo)
* [CancelFrame](/vendor/nanovg/#CancelFrame)
* [Circle](/vendor/nanovg/#Circle)
* [ClosePath](/vendor/nanovg/#ClosePath)
* [CreateFont](/vendor/nanovg/#CreateFont)
* [CreateFontMem](/vendor/nanovg/#CreateFontMem)
* [CreateImageMem](/vendor/nanovg/#CreateImageMem)
* [CreateImagePath](/vendor/nanovg/#CreateImagePath)
* [CreateImageRGBA](/vendor/nanovg/#CreateImageRGBA)
* [CurrentTransform](/vendor/nanovg/#CurrentTransform)
* [DebugDumpPathCache](/vendor/nanovg/#DebugDumpPathCache)
* [DeleteImage](/vendor/nanovg/#DeleteImage)
* [DeleteInternal](/vendor/nanovg/#DeleteInternal)
* [Ellipse](/vendor/nanovg/#Ellipse)
* [EndFrame](/vendor/nanovg/#EndFrame)
* [Fill](/vendor/nanovg/#Fill)
* [FillColor](/vendor/nanovg/#FillColor)
* [FillPaint](/vendor/nanovg/#FillPaint)
* [FillScoped](/vendor/nanovg/#FillScoped)
* [FillStrokeScoped](/vendor/nanovg/#FillStrokeScoped)
* [FindFont](/vendor/nanovg/#FindFont)
* [FontBlur](/vendor/nanovg/#FontBlur)
* [FontFace](/vendor/nanovg/#FontFace)
* [FontFaceId](/vendor/nanovg/#FontFaceId)
* [FontSize](/vendor/nanovg/#FontSize)
* [FrameScoped](/vendor/nanovg/#FrameScoped)
* [GlobalAlpha](/vendor/nanovg/#GlobalAlpha)
* [GlobalCompositeBlendFunc](/vendor/nanovg/#GlobalCompositeBlendFunc)
* [GlobalCompositeBlendFuncSeparate](/vendor/nanovg/#GlobalCompositeBlendFuncSeparate)
* [GlobalCompositeOperation](/vendor/nanovg/#GlobalCompositeOperation)
* [ImageSize](/vendor/nanovg/#ImageSize)
* [IntersectScissor](/vendor/nanovg/#IntersectScissor)
* [LineCap](/vendor/nanovg/#LineCap)
* [LineJoin](/vendor/nanovg/#LineJoin)
* [LineTo](/vendor/nanovg/#LineTo)
* [MiterLimit](/vendor/nanovg/#MiterLimit)
* [MoveTo](/vendor/nanovg/#MoveTo)
* [PathSolidity](/vendor/nanovg/#PathSolidity)
* [PathWinding](/vendor/nanovg/#PathWinding)
* [QuadTo](/vendor/nanovg/#QuadTo)
* [Rect](/vendor/nanovg/#Rect)
* [Reset](/vendor/nanovg/#Reset)
* [ResetFallbackFonts](/vendor/nanovg/#ResetFallbackFonts)
* [ResetFallbackFontsId](/vendor/nanovg/#ResetFallbackFontsId)
* [ResetScissor](/vendor/nanovg/#ResetScissor)
* [ResetTransform](/vendor/nanovg/#ResetTransform)
* [Restore](/vendor/nanovg/#Restore)
* [Rotate](/vendor/nanovg/#Rotate)
* [RoundedRect](/vendor/nanovg/#RoundedRect)
* [RoundedRectVarying](/vendor/nanovg/#RoundedRectVarying)
* [Save](/vendor/nanovg/#Save)
* [SaveScoped](/vendor/nanovg/#SaveScoped)
* [Scale](/vendor/nanovg/#Scale)
* [Scissor](/vendor/nanovg/#Scissor)
* [ShapeAntiAlias](/vendor/nanovg/#ShapeAntiAlias)
* [SkewX](/vendor/nanovg/#SkewX)
* [SkewY](/vendor/nanovg/#SkewY)
* [Stroke](/vendor/nanovg/#Stroke)
* [StrokeColor](/vendor/nanovg/#StrokeColor)
* [StrokePaint](/vendor/nanovg/#StrokePaint)
* [StrokeScoped](/vendor/nanovg/#StrokeScoped)
* [StrokeWidth](/vendor/nanovg/#StrokeWidth)
* [Text](/vendor/nanovg/#Text)
* [TextAlign](/vendor/nanovg/#TextAlign)
* [TextAlignHorizontal](/vendor/nanovg/#TextAlignHorizontal)
* [TextAlignVertical](/vendor/nanovg/#TextAlignVertical)
* [TextBounds](/vendor/nanovg/#TextBounds)
* [TextBox](/vendor/nanovg/#TextBox)
* [TextBoxBounds](/vendor/nanovg/#TextBoxBounds)
* [TextBreakLines](/vendor/nanovg/#TextBreakLines)
* [TextGlyphPositions](/vendor/nanovg/#TextGlyphPositions)
* [TextIcon](/vendor/nanovg/#TextIcon)
* [TextLetterSpacing](/vendor/nanovg/#TextLetterSpacing)
* [TextLineHeight](/vendor/nanovg/#TextLineHeight)
* [TextMetrics](/vendor/nanovg/#TextMetrics)
* [Transform](/vendor/nanovg/#Transform)
* [Translate](/vendor/nanovg/#Translate)
* [UpdateImage](/vendor/nanovg/#UpdateImage)
* [CreateImage](/vendor/nanovg/#CreateImage) *(procedure groups)*



##### Related Procedures With Returns

* [CreateInternal](/vendor/nanovg/#CreateInternal)

### [Glyph\_Position ¶](#Glyph_Position) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L3393)

```
Glyph_Position :: struct {
	str:  int,
	x:    f32,
	minx: f32,
	maxx: f32,
}
```

### [ImageFlag ¶](#ImageFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L32)

```
ImageFlag :: enum int {
	GENERATE_MIPMAPS, 
	REPEAT_X, 
	REPEAT_Y, 
	FLIP_Y, 
	PREMULTIPLIED, 
	NEAREST, 
	NO_DELETE, 
}
```

### [ImageFlags ¶](#ImageFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L41)

```
ImageFlags :: bit_set[ImageFlag]
```

##### Related Procedures With Parameters

* [CreateImageMem](/vendor/nanovg/#CreateImageMem)
* [CreateImagePath](/vendor/nanovg/#CreateImagePath)
* [CreateImageRGBA](/vendor/nanovg/#CreateImageRGBA)
* [CreateImage](/vendor/nanovg/#CreateImage) *(procedure groups)*

### [LineCapType ¶](#LineCapType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L63)

```
LineCapType :: enum int {
	BUTT, 
	ROUND, 
	SQUARE, 
	BEVEL, 
	MITER, 
}
```

##### Related Procedures With Parameters

* [LineCap](/vendor/nanovg/#LineCap)
* [LineJoin](/vendor/nanovg/#LineJoin)

### [Matrix ¶](#Matrix) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L29)

```
Matrix :: [6]f32
```

##### Related Procedures With Parameters

* [CurrentTransform](/vendor/nanovg/#CurrentTransform)
* [TransformIdentity](/vendor/nanovg/#TransformIdentity)
* [TransformInverse](/vendor/nanovg/#TransformInverse)
* [TransformMultiply](/vendor/nanovg/#TransformMultiply)
* [TransformPoint](/vendor/nanovg/#TransformPoint)
* [TransformPremultiply](/vendor/nanovg/#TransformPremultiply)
* [TransformRotate](/vendor/nanovg/#TransformRotate)
* [TransformScale](/vendor/nanovg/#TransformScale)
* [TransformSkewX](/vendor/nanovg/#TransformSkewX)
* [TransformSkewY](/vendor/nanovg/#TransformSkewY)
* [TransformTranslate](/vendor/nanovg/#TransformTranslate)

### [Paint ¶](#Paint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L43)

```
Paint :: struct {
	xform:      [6]f32,
	extent:     [2]f32,
	radius:     f32,
	feather:    f32,
	innerColor: [4]f32,
	outerColor: [4]f32,
	image:      int,
}
```

##### Related Procedures With Parameters

* [FillPaint](/vendor/nanovg/#FillPaint)
* [StrokePaint](/vendor/nanovg/#StrokePaint)



##### Related Procedures With Returns

* [BoxGradient](/vendor/nanovg/#BoxGradient)
* [ImagePattern](/vendor/nanovg/#ImagePattern)
* [LinearGradient](/vendor/nanovg/#LinearGradient)
* [RadialGradient](/vendor/nanovg/#RadialGradient)

### [Params ¶](#Params) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L210)

```
Params :: struct {
	userPtr:              rawptr,
	edgeAntiAlias:        bool,
	// callbacks to fill out
	renderCreate:         proc(uptr: rawptr) -> bool,
	renderDelete:         proc(uptr: rawptr),
	// textures calls
	renderCreateTexture:  proc(uptr: rawptr, type: Texture, w, h: int, imageFlags: bit_set[ImageFlag], data: []u8) -> int,
	renderDeleteTexture:  proc(uptr: rawptr, image: int) -> bool,
	renderUpdateTexture:  proc(uptr: rawptr, image: int, x, y: int, w, h: int, data: []u8) -> bool,
	renderGetTextureSize: proc(uptr: rawptr, image: int, w, h: ^int) -> bool,
	// rendering calls
	renderViewport:       proc(uptr: rawptr, width, height, devicePixelRatio: f32),
	renderCancel:         proc(uptr: rawptr),
	renderFlush:          proc(uptr: rawptr),
	renderFill:           proc(uptr: rawptr, paint: ^Paint, compositeOperation: CompositeOperationState, scissor: ^ScissorT, fringe: f32, bounds: [4]f32, paths: []Path),
	renderStroke:         proc(uptr: rawptr, paint: ^Paint, compositeOperation: CompositeOperationState, scissor: ^ScissorT, fringe: f32, strokeWidth: f32, paths: []Path),
	renderTriangles:      proc(uptr: rawptr, paint: ^Paint, compositeOperation: CompositeOperationState, scissor: ^ScissorT, verts: [][4]f32, fringe: f32),
}
```

##### Related Procedures With Parameters

* [CreateInternal](/vendor/nanovg/#CreateInternal)

### [Path ¶](#Path) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L149)

```
Path :: struct {
	first:   int,
	count:   int,
	closed:  bool,
	nbevel:  int,
	fill:    [][4]f32,
	stroke:  [][4]f32,
	winding: Winding,
	convex:  bool,
}
```

### [PathCache ¶](#PathCache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L142)

```
PathCache :: struct {
	points: [dynamic]Point,
	paths:  [dynamic]Path,
	verts:  [dynamic][4]f32,
	bounds: [4]f32,
}
```

### [Point ¶](#Point) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L134)

```
Point :: struct {
	x:     f32,
	y:     f32,
	dx:    f32,
	dy:    f32,
	len:   f32,
	dmx:   f32,
	dmy:   f32,
	flags: bit_set[PointFlag],
}
```

### [PointFlag ¶](#PointFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L126)

```
PointFlag :: enum int {
	CORNER, 
	LEFT, 
	BEVEL, 
	INNER_BEVEL, 
}
```

### [PointFlags ¶](#PointFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L132)

```
PointFlags :: bit_set[PointFlag]
```

### [ScissorT ¶](#ScissorT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L113)

```
ScissorT :: struct {
	xform:  [6]f32,
	extent: [2]f32,
}
```

### [Solidity ¶](#Solidity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L58)

```
Solidity :: enum int {
	SOLID = 1, // CCW
	HOLE,      // CW
}
```

##### Related Procedures With Parameters

* [PathSolidity](/vendor/nanovg/#PathSolidity)

### [State ¶](#State) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L160)

```
State :: struct {
	compositeOperation: CompositeOperationState,
	shapeAntiAlias:     bool,
	fill:               Paint,
	stroke:             Paint,
	strokeWidth:        f32,
	miterLimit:         f32,
	lineJoin:           LineCapType,
	lineCap:            LineCapType,
	alpha:              f32,
	xform:              [6]f32,
	scissor:            ScissorT,
	// font state
	fontSize:           f32,
	letterSpacing:      f32,
	lineHeight:         f32,
	fontBlur:           f32,
	alignHorizontal:    fontstash.AlignHorizontal,
	alignVertical:      fontstash.AlignVertical,
	fontId:             int,
}
```

### [Text\_Row ¶](#Text_Row) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L3039)

```
Text_Row :: struct {
	start: int,
	end:   int,
	next:  int,
	width: f32,
	minx:  f32,
	maxx:  f32,
}
```

 

text row with relative byte offsets into a string

### [Texture ¶](#Texture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L108)

```
Texture :: enum int {
	Alpha, 
	RGBA, 
}
```

### [Vertex ¶](#Vertex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L30)

```
Vertex :: [4]f32
```

 

x,y,u,v




##### Related Procedures With Parameters

* [BoxGradient](/vendor/nanovg/#BoxGradient)
* [FillColor](/vendor/nanovg/#FillColor)
* [LerpRGBA](/vendor/nanovg/#LerpRGBA)
* [LinearGradient](/vendor/nanovg/#LinearGradient)
* [RadialGradient](/vendor/nanovg/#RadialGradient)
* [StrokeColor](/vendor/nanovg/#StrokeColor)
* [TextBounds](/vendor/nanovg/#TextBounds)
* [TextBoxBounds](/vendor/nanovg/#TextBoxBounds)



##### Related Procedures With Returns

* [ColorHex](/vendor/nanovg/#ColorHex)
* [HSL](/vendor/nanovg/#HSL)
* [HSLA](/vendor/nanovg/#HSLA)
* [RGB](/vendor/nanovg/#RGB)
* [RGBA](/vendor/nanovg/#RGBA)

### [Winding ¶](#Winding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L53)

```
Winding :: enum int {
	CCW = 1, 
	CW, 
}
```

##### Related Procedures With Parameters

* [Arc](/vendor/nanovg/#Arc)
* [PathWinding](/vendor/nanovg/#PathWinding)

## Constants

### [INIT\_COMMANDS\_SIZE ¶](#INIT_COMMANDS_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L22)

```
INIT_COMMANDS_SIZE :: 256
```

### [INIT\_FONTIMAGE\_SIZE ¶](#INIT_FONTIMAGE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L17)

```
INIT_FONTIMAGE_SIZE :: 512
```

### [INIT\_PATH\_SIZE ¶](#INIT_PATH_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L24)

```
INIT_PATH_SIZE :: 16
```

### [INIT\_POINTS\_SIZE ¶](#INIT_POINTS_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L23)

```
INIT_POINTS_SIZE :: 128
```

### [INIT\_VERTS\_SIZE ¶](#INIT_VERTS_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L25)

```
INIT_VERTS_SIZE :: 26
```

### [KAPPA ¶](#KAPPA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L26)

```
KAPPA :: 0.5522847493
```

### [MAX\_FONTIMAGES ¶](#MAX_FONTIMAGES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L19)

```
MAX_FONTIMAGES :: 4
```

### [MAX\_FONTIMAGE\_SIZE ¶](#MAX_FONTIMAGE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L18)

```
MAX_FONTIMAGE_SIZE :: 2048
```

### [MAX\_STATES ¶](#MAX_STATES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L21)

```
MAX_STATES :: 32
```

## Variables

### [OP\_STATE\_TABLE ¶](#OP_STATE_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1199)

```
OP_STATE_TABLE: [CompositeOperation][2]BlendFactor = …
```

 

state table instead of if else chains

## Procedures

### [AddFallbackFont ¶](#AddFallbackFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2649)

```
AddFallbackFont :: proc(ctx: ^Context, base_font: string, fallback_font: string) -> bool {…}
```

 

Adds a fallback font by name.

### [AddFallbackFontId ¶](#AddFallbackFontId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2640)

```
AddFallbackFontId :: proc(ctx: ^Context, base_font, fallback_font: int) -> bool {…}
```

 

Adds a fallback font by handle.

### [Arc ¶](#Arc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2328)

```
Arc :: proc(
	ctx:               ^Context, 
	cx, cy, r, a0, a1: f32, 
	dir:               Winding, 
) {…}
```

 

Creates new circle arc shaped sub-path. The arc center is at cx,cy, the arc radius is r,
and the arc is drawn from angle a0 to a1, and swept in direction dir (NVG\_CCW, or NVG\_CW).
Angles are specified in radians.

### [ArcTo ¶](#ArcTo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2269)

```
ArcTo :: proc(
	ctx:    ^Context, 
	x1, y1: f32, 
	x2, y2: f32, 
	radius: f32, 
) {…}
```

 

Adds an arc segment at the corner defined by the last path point, and two specified points.

### [BeginFrame ¶](#BeginFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L354)

```
BeginFrame :: proc(ctx: ^Context, windowWidth: f32, windowHeight: f32, devicePixelRatio: f32) {…}
```

 

Begin drawing a new frame
Calls to nanovg drawing API should be wrapped in nvgBeginFrame() & nvgEndFrame()
nvgBeginFrame() defines the size of the window to render to in relation currently
set viewport (i.e. glViewport on GL backends). Device pixel ration allows to
control the rendering on Hi-DPI devices.
For example, GLFW returns two dimension for an opened window: window size and
frame buffer size. In that case you would set windowWidth/Height to the window size
devicePixelRatio to: frameBufferWidth / windowWidth.

### [BeginPath ¶](#BeginPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2213)

```
BeginPath :: proc(ctx: ^Context) {…}
```

 

Clears the current path and sub-paths.

### [BezierTo ¶](#BezierTo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2244)

```
BezierTo :: proc(
	ctx:      ^Context, 
	c1x, c1y: f32, 
	c2x, c2y: f32, 
	x, 
	y:        f32, 
) {…}
```

 

Adds cubic bezier segment from last point in the path via two control points to the specified point.

### [BoxGradient ¶](#BoxGradient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1055)

```
BoxGradient :: proc(
	x, y: f32, 
	w, h: f32, 
	r:    f32, 
	f:    f32, 
	icol: [4]f32, 
	ocol: [4]f32, 
) -> (p: Paint) {…}
```

 

Creates and returns a radial gradient. Parameters (cx,cy) specify the center, inr and outr specify
the inner and outer radius of the gradient, icol specifies the start color and ocol the end color.
The gradient is transformed by the current transform when it is passed to nvgFillPaint() or nvgStrokePaint().

### [CancelFrame ¶](#CancelFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L386)

```
CancelFrame :: proc(ctx: ^Context) {…}
```

 

Cancels drawing the current frame.

### [Circle ¶](#Circle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2478)

```
Circle :: proc(ctx: ^Context, cx, cy: f32, radius: f32) {…}
```

 

Creates new circle shaped sub-path.

### [ClosePath ¶](#ClosePath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2397)

```
ClosePath :: proc(ctx: ^Context) {…}
```

 

Closes current sub-path with a line segment.

### [ColorHex ¶](#ColorHex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L513)

```
ColorHex :: proc(color: u32) -> (res: [4]f32) {…}
```

 

hex to 0xAARRGGBB color

### [CreateFont ¶](#CreateFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2620)

```
CreateFont :: proc(ctx: ^Context, name, filename: string) -> int {…}
```

 

Creates font by loading it from the disk from specified file name.
Returns handle to the font.

### [CreateFontMem ¶](#CreateFontMem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2626)

```
CreateFontMem :: proc(ctx: ^Context, name: string, slice: []u8, free_loaded_data: bool) -> int {…}
```

 

Creates font by loading it from the specified memory chunk.
Returns handle to the font.

### [CreateImageMem ¶](#CreateImageMem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L911)

```
CreateImageMem :: proc(ctx: ^Context, data: []u8, imageFlags: bit_set[ImageFlag]) -> int {…}
```

 

Creates image by loading it from the specified chunk of memory.
Returns handle to the image.




##### Related Procedure Groups

* [CreateImage](/vendor/nanovg/#CreateImage)

### [CreateImagePath ¶](#CreateImagePath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L893)

```
CreateImagePath :: proc(ctx: ^Context, filename: cstring, imageFlags: bit_set[ImageFlag]) -> int {…}
```

 

Creates image by loading it from the disk from specified file name.
Returns handle to the image.




##### Related Procedure Groups

* [CreateImage](/vendor/nanovg/#CreateImage)

### [CreateImageRGBA ¶](#CreateImageRGBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L931)

```
CreateImageRGBA :: proc(ctx: ^Context, w, h: int, imageFlags: bit_set[ImageFlag], data: []u8) -> int {…}
```

 

Creates image from specified image data.
Returns handle to the image.

### [CreateInternal ¶](#CreateInternal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L291)

```
CreateInternal :: proc(params: Params) -> (ctx: ^Context) {…}
```

### [CurrentTransform ¶](#CurrentTransform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L875)

```
CurrentTransform :: proc(ctx: ^Context, xform: ^[6]f32) {…}
```

 

Stores the top part (a-f) of the current transformation matrix in to the specified buffer.
[a c e]
[b d f]
[0 0 1]
There should be space for 6 floats in the return buffer for the values a-f.

### [DebugDumpPathCache ¶](#DebugDumpPathCache) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2562)

```
DebugDumpPathCache :: proc(ctx: ^Context) {…}
```

### [DegToRad ¶](#DegToRad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L644)

```
DegToRad :: proc(deg: f32) -> f32 {…}
```

### [DeleteImage ¶](#DeleteImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L962)

```
DeleteImage :: proc(ctx: ^Context, image: int) {…}
```

 

Deletes created image.

### [DeleteInternal ¶](#DeleteInternal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L326)

```
DeleteInternal :: proc(ctx: ^Context) {…}
```

### [Ellipse ¶](#Ellipse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2466)

```
Ellipse :: proc(ctx: ^Context, cx, cy, rx, ry: f32) {…}
```

 

Creates new ellipse shaped sub-path.

### [EndFrame ¶](#EndFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L392)

```
EndFrame :: proc(ctx: ^Context) {…}
```

 

Ends drawing flushing remaining render state.

### [Fill ¶](#Fill) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2483)

```
Fill :: proc(ctx: ^Context) {…}
```

 

Fills the current path with current fill style.

### [FillColor ¶](#FillColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L787)

```
FillColor :: proc(ctx: ^Context, color: [4]f32) {…}
```

 

Sets current fill style to a solid color.

### [FillPaint ¶](#FillPaint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L793)

```
FillPaint :: proc(ctx: ^Context, paint: Paint) {…}
```

 

Sets current fill style to a paint, which can be a one of the gradients or a pattern.

### [FillScoped ¶](#FillScoped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2219)

```
FillScoped :: proc(ctx: ^Context) {…}
```

### [FillStrokeScoped ¶](#FillStrokeScoped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2229)

```
FillStrokeScoped :: proc(ctx: ^Context) {…}
```

### [FindFont ¶](#FindFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2631)

```
FindFont :: proc(ctx: ^Context, name: string) -> int {…}
```

 

Finds a loaded font of specified name, and returns handle to it, or -1 if the font is not found.

### [FontBlur ¶](#FontBlur) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2674)

```
FontBlur :: proc(ctx: ^Context, blur: f32) {…}
```

 

Sets the blur of current text style.

### [FontFace ¶](#FontFace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2717)

```
FontFace :: proc(ctx: ^Context, font: string) {…}
```

 

Sets the font face based on specified name of current text style.

### [FontFaceId ¶](#FontFaceId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2711)

```
FontFaceId :: proc(ctx: ^Context, font: int) {…}
```

 

Sets the font face based on specified name of current text style.

### [FontSize ¶](#FontSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2668)

```
FontSize :: proc(ctx: ^Context, size: f32) {…}
```

 

Sets the font size of current text style.

### [FrameScoped ¶](#FrameScoped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L375)

```
FrameScoped :: proc(ctx: ^Context, windowWidth: f32, windowHeight: f32, devicePixelRatio: f32) -> ^Context {…}
```

### [GlobalAlpha ¶](#GlobalAlpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L768)

```
GlobalAlpha :: proc(ctx: ^Context, alpha: f32) {…}
```

 

Sets the transparency applied to all rendered shapes.
Already transparent paths will get proportionally more transparent as well.

### [GlobalCompositeBlendFunc ¶](#GlobalCompositeBlendFunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1231)

```
GlobalCompositeBlendFunc :: proc(ctx: ^Context, sfactor, dfactor: BlendFactor) {…}
```

 

Sets the composite operation with custom pixel arithmetic. The parameters should be one of NVGblendFactor.

### [GlobalCompositeBlendFuncSeparate ¶](#GlobalCompositeBlendFuncSeparate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1236)

```
GlobalCompositeBlendFuncSeparate :: proc(ctx: ^Context, srcRGB: BlendFactor, dstRGB: BlendFactor, srcAlpha: BlendFactor, dstAlpha: BlendFactor) {…}
```

 

Sets the composite operation with custom pixel arithmetic for RGB and alpha components separately. The parameters should be one of NVGblendFactor.

### [GlobalCompositeOperation ¶](#GlobalCompositeOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1225)

```
GlobalCompositeOperation :: proc(ctx: ^Context, op: CompositeOperation) {…}
```

 

Sets the composite operation. The op parameter should be one of NVGcompositeOperation.

### [HSL ¶](#HSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L468)

```
HSL :: proc(h, s, l: f32) -> [4]f32 {…}
```

 

Returns color value specified by hue, saturation and lightness.
HSL values are all in range [0..1], alpha will be set to 255.

### [HSLA ¶](#HSLA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L474)

```
HSLA :: proc(hue, saturation, lightness: f32, a: u8) -> (col: [4]f32) {…}
```

 

Returns color value specified by hue, saturation and lightness and alpha.
HSL values are all in range [0..1], alpha in range [0..255]

### [ImagePattern ¶](#ImagePattern) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1084)

```
ImagePattern :: proc(
	cx, cy: f32, 
	w, h:   f32, 
	angle:  f32, 
	image:  int, 
	alpha:  f32, 
) -> (p: Paint) {…}
```

 

Creates and returns an image pattern. Parameters (ox,oy) specify the left-top location of the image pattern,
(ex,ey) the size of one image, angle rotation around the top-left corner, image is handle to the image to render.
The gradient is transformed by the current transform when it is passed to nvgFillPaint() or nvgStrokePaint().

### [ImageSize ¶](#ImageSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L955)

```
ImageSize :: proc(ctx: ^Context, image: int) -> (w, h: int) {…}
```

 

Returns the dimensions of a created image.

### [IntersectScissor ¶](#IntersectScissor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1140)

```
IntersectScissor :: proc(ctx: ^Context, x, y, w, h: f32) {…}
```

 

Intersects current scissor rectangle with the specified rectangle.
The scissor rectangle is transformed by the current transform.
Note: in case the rotation of previous scissor rect differs from
the current one, the intersection will be done between the specified
rectangle and the previous scissor rectangle transformed in the current
transform space. The resulting shape is always rectangle.

### [LerpRGBA ¶](#LerpRGBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L456)

```
LerpRGBA :: proc(c0, c1: [4]f32, u: f32) -> (cint: [4]f32) {…}
```

 

Linearly interpolates from color c0 to c1, and returns resulting color value.

### [LineCap ¶](#LineCap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L754)

```
LineCap :: proc(ctx: ^Context, cap: LineCapType) {…}
```

 

Sets how the end of the line (cap) is drawn,
Can be one of: NVG\_BUTT (default), NVG\_ROUND, NVG\_SQUARE.

### [LineJoin ¶](#LineJoin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L761)

```
LineJoin :: proc(ctx: ^Context, join: LineCapType) {…}
```

 

Sets how sharp path corners are drawn.
Can be one of NVG\_MITER (default), NVG\_ROUND, NVG\_BEVEL.

### [LineTo ¶](#LineTo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2239)

```
LineTo :: proc(ctx: ^Context, x, y: f32) {…}
```

 

Adds line segment from the last point in the path to the specified point.

### [LinearGradient ¶](#LinearGradient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L979)

```
LinearGradient :: proc(
	sx, sy: f32, 
	ex, ey: f32, 
	icol:   [4]f32, 
	ocol:   [4]f32, 
) -> (p: Paint) {…}
```

 

Creates and returns a linear gradient. Parameters (sx,sy)-(ex,ey) specify the start and end coordinates
of the linear gradient, icol specifies the start color and ocol the end color.
The gradient is transformed by the current transform when it is passed to nvgFillPaint() or nvgStrokePaint().

### [MiterLimit ¶](#MiterLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L747)

```
MiterLimit :: proc(ctx: ^Context, limit: f32) {…}
```

 

Sets the miter limit of the stroke style.
Miter limit controls when a sharp corner is beveled.

### [MoveTo ¶](#MoveTo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2234)

```
MoveTo :: proc(ctx: ^Context, x, y: f32) {…}
```

 

Starts new sub-path with specified point as first point.

### [PathSolidity ¶](#PathSolidity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2407)

```
PathSolidity :: proc(ctx: ^Context, solidity: Solidity) {…}
```

 

same as path\_winding but with different enum

### [PathWinding ¶](#PathWinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2402)

```
PathWinding :: proc(ctx: ^Context, direction: Winding) {…}
```

 

Sets the current sub-path winding, see NVGwinding and NVGsolidity.

### [QuadTo ¶](#QuadTo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2254)

```
QuadTo :: proc(ctx: ^Context, cx, cy, x, y: f32) {…}
```

 

Adds quadratic bezier segment from last point in the path via a control point to the specified point.

### [RGB ¶](#RGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L442)

```
RGB :: proc(r, g, b: u8) -> [4]f32 {…}
```

 

Returns a color value from red, green, blue values. Alpha will be set to 255 (1.0f).

### [RGBA ¶](#RGBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L447)

```
RGBA :: proc(r, g, b, a: u8) -> (res: [4]f32) {…}
```

 

Returns a color value from red, green, blue and alpha values.

### [RadToDeg ¶](#RadToDeg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L648)

```
RadToDeg :: proc(rad: f32) -> f32 {…}
```

### [RadialGradient ¶](#RadialGradient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1024)

```
RadialGradient :: proc(
	cx, cy: f32, 
	inr:    f32, 
	outr:   f32, 
	icol:   [4]f32, 
	ocol:   [4]f32, 
) -> (p: Paint) {…}
```

 

Creates and returns a box gradient. Box gradient is a feathered rounded rectangle, it is useful for rendering
drop shadows or highlights for boxes. Parameters (x,y) define the top-left corner of the rectangle,
(w,h) define the size of the rectangle, r defines the corner radius, and f feather. Feather defines how blurry
the border of the rectangle is. Parameter icol specifies the inner color and ocol the outer color of the gradient.
The gradient is transformed by the current transform when it is passed to nvgFillPaint() or nvgStrokePaint().

### [Rect ¶](#Rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2412)

```
Rect :: proc(ctx: ^Context, x, y, w, h: f32) {…}
```

 

Creates new rectangle shaped sub-path.

### [Reset ¶](#Reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L700)

```
Reset :: proc(ctx: ^Context) {…}
```

 

Resets current render state to default values. Does not affect the render state stack.

### [ResetFallbackFonts ¶](#ResetFallbackFonts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2663)

```
ResetFallbackFonts :: proc(ctx: ^Context, base_font: string) {…}
```

 

Resets fallback fonts by name.

### [ResetFallbackFontsId ¶](#ResetFallbackFontsId) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2658)

```
ResetFallbackFontsId :: proc(ctx: ^Context, base_font: int) {…}
```

 

Resets fallback fonts by handle.

### [ResetScissor ¶](#ResetScissor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1183)

```
ResetScissor :: proc(ctx: ^Context) {…}
```

 

Reset and disables scissoring.

### [ResetTransform ¶](#ResetTransform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L823)

```
ResetTransform :: proc(ctx: ^Context) {…}
```

 

Resets current transform to a identity matrix.

### [Restore ¶](#Restore) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L676)

```
Restore :: proc(ctx: ^Context) {…}
```

 

Pops and restores current render state.

### [Rotate ¶](#Rotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L837)

```
Rotate :: proc(ctx: ^Context, angle: f32) {…}
```

 

Rotates current coordinate system. Angle is specified in radians.

### [RoundedRect ¶](#RoundedRect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2423)

```
RoundedRect :: proc(
	ctx:        ^Context, 
	x, y, w, h, 
	radius:     f32, 
) {…}
```

 

Creates new rounded rectangle shaped sub-path.

### [RoundedRectVarying ¶](#RoundedRectVarying) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2428)

```
RoundedRectVarying :: proc(
	ctx:                 ^Context, 
	x, y:                f32, 
	w, h:                f32, 
	radius_top_left:     f32, 
	radius_top_right:    f32, 
	radius_bottom_right: f32, 
	radius_bottom_left:  f32, 
) {…}
```

 

Creates new rounded rectangle shaped sub-path with varying radii for each corner.

### [Save ¶](#Save) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L662)

```
Save :: proc(ctx: ^Context) {…}
```

 

Pushes and saves the current render state into a state stack.
A matching nvgRestore() must be used to restore the state.

### [SaveScoped ¶](#SaveScoped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L686)

```
SaveScoped :: proc(ctx: ^Context) {…}
```

 

NOTE useful helper

### [Scale ¶](#Scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L861)

```
Scale :: proc(ctx: ^Context, x, y: f32) {…}
```

 

Scales the current coordinate system.

### [Scissor ¶](#Scissor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L1114)

```
Scissor :: proc(ctx: ^Context, x, y: f32, width, height: f32) {…}
```

 

Sets the current scissor rectangle.
The scissor rectangle is transformed by the current transform.

### [ShapeAntiAlias ¶](#ShapeAntiAlias) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L734)

```
ShapeAntiAlias :: proc(ctx: ^Context, enabled: bool) {…}
```

 

Sets whether to draw antialias for nvgStroke() and nvgFill(). It's enabled by default.

### [SkewX ¶](#SkewX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L845)

```
SkewX :: proc(ctx: ^Context, angle: f32) {…}
```

 

Skews the current coordinate system along X axis. Angle is specified in radians.

### [SkewY ¶](#SkewY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L853)

```
SkewY :: proc(ctx: ^Context, angle: f32) {…}
```

 

Skews the current coordinate system along Y axis. Angle is specified in radians.

### [Stroke ¶](#Stroke) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2518)

```
Stroke :: proc(ctx: ^Context) {…}
```

 

Fills the current path with current stroke style.

### [StrokeColor ¶](#StrokeColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L774)

```
StrokeColor :: proc(ctx: ^Context, color: [4]f32) {…}
```

 

Sets current stroke style to a solid color.

### [StrokePaint ¶](#StrokePaint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L780)

```
StrokePaint :: proc(ctx: ^Context, paint: Paint) {…}
```

 

Sets current stroke style to a paint, which can be a one of the gradients or a pattern.

### [StrokeScoped ¶](#StrokeScoped) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2224)

```
StrokeScoped :: proc(ctx: ^Context) {…}
```

### [StrokeWidth ¶](#StrokeWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L740)

```
StrokeWidth :: proc(ctx: ^Context, width: f32) {…}
```

 

Sets the stroke width of the stroke style.

### [Text ¶](#Text) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2892)

```
Text :: proc(ctx: ^Context, x, y: f32, text: string) -> f32 {…}
```

 

Draws text string at specified location. If end is specified only the sub-string up to the end is drawn.

### [TextAlign ¶](#TextAlign) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2704)

```
TextAlign :: proc(ctx: ^Context, ah: fontstash.AlignHorizontal, av: fontstash.AlignVertical) {…}
```

 

Sets the text align of current text style, see NVGalign for options.

### [TextAlignHorizontal ¶](#TextAlignHorizontal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2692)

```
TextAlignHorizontal :: proc(ctx: ^Context, align: fontstash.AlignHorizontal) {…}
```

 

Sets the horizontal text align of current text style

### [TextAlignVertical ¶](#TextAlignVertical) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2698)

```
TextAlignVertical :: proc(ctx: ^Context, align: fontstash.AlignVertical) {…}
```

 

Sets the vertical text align of current text style

### [TextBounds ¶](#TextBounds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2999)

```
TextBounds :: proc(ctx: ^Context, x, y: f32, input: string, bounds: ^[4]f32 = nil) -> (advance: f32) {…}
```

 

Measures the specified text string. Parameter bounds should be a pointer to float[4],
if the bounding box of the text should be returned. The bounds value are [xmin,ymin, xmax,ymax]
Returns the horizontal advance of the measured text (i.e. where the next character should drawn).
Measured values are returned in local coordinate space.

### [TextBox ¶](#TextBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L3057)

```
TextBox :: proc(ctx: ^Context, x, y: f32, break_row_width: f32, input: string) {…}
```

 

Draws multi-line text string at specified location wrapped at the specified width. If end is specified only the sub-string up to the end is drawn.
White space is stripped at the beginning of the rows, the text is split at word boundaries or when new-line characters are encountered.
Words longer than the max width are slit at nearest character (i.e. no hyphenation).

### [TextBoxBounds ¶](#TextBoxBounds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L3320)

```
TextBoxBounds :: proc(
	ctx:           ^Context, 
	x, y:          f32, 
	breakRowWidth: f32, 
	input:         string, 
	bounds:        ^[4]f32, 
) {…}
```

 

Measures the specified multi-text string. Parameter bounds should be a pointer to float[4],
if the bounding box of the text should be returned. The bounds value are [xmin,ymin, xmax,ymax]
Measured values are returned in local coordinate space.

### [TextBreakLines ¶](#TextBreakLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L3090)

```
TextBreakLines :: proc(ctx: ^Context, text: ^string, break_row_width: f32, rows: ^[]Text_Row) -> (nrows: int, last: string, ok: bool) {…}
```

 

NOTE text break lines works relative to the string in byte indexes now, instead of on pointers
Breaks the specified text into lines
White space is stripped at the beginning of the rows, the text is split at word boundaries or when new-line characters are encountered.
Words longer than the max width are slit at nearest character (i.e. no hyphenation).

### [TextGlyphPositions ¶](#TextGlyphPositions) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L3401)

```
TextGlyphPositions :: proc(ctx: ^Context, x, y: f32, text: string, positions: ^[]Glyph_Position) -> int {…}
```

 

Calculates the glyph x positions of the specified text.
Measured values are returned in local coordinate space.

### [TextIcon ¶](#TextIcon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2811)

```
TextIcon :: proc(ctx: ^Context, xpos, ypos: f32, codepoint: rune) -> f32 {…}
```

 

draw a single codepoint, useful for icons

### [TextLetterSpacing ¶](#TextLetterSpacing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2680)

```
TextLetterSpacing :: proc(ctx: ^Context, spacing: f32) {…}
```

 

Sets the letter spacing of current text style.

### [TextLineHeight ¶](#TextLineHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2686)

```
TextLineHeight :: proc(ctx: ^Context, lineHeight: f32) {…}
```

 

Sets the proportional line height of current text style. The line height is specified as multiple of font size.

### [TextMetrics ¶](#TextMetrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L2971)

```
TextMetrics :: proc(ctx: ^Context) -> (ascender, descender, lineHeight: f32) {…}
```

 

Returns the vertical metrics based on the current text style.
Measured values are returned in local coordinate space.

### [Transform ¶](#Transform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L817)

```
Transform :: proc(
	ctx:           ^Context, 
	a, b, c, d, e, 
	f:             f32, 
) {…}
```

### [TransformIdentity ¶](#TransformIdentity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L530)

```
TransformIdentity :: proc(t: ^[6]f32) {…}
```

 

Sets the transform to identity matrix.

### [TransformInverse ¶](#TransformInverse) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L613)

```
TransformInverse :: proc(inv: ^[6]f32, t: [6]f32) -> bool {…}
```

 

Sets the destination to inverse of specified transform.
Returns true if the inverse could be calculated, else false.

### [TransformMultiply ¶](#TransformMultiply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L592)

```
TransformMultiply :: proc(t: ^[6]f32, s: [6]f32) {…}
```

 

Sets the transform to the result of multiplication of two transforms, of A = A\*B.

### [TransformPoint ¶](#TransformPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L633)

```
TransformPoint :: proc(dx: ^f32, dy: ^f32, t: [6]f32, sx: f32, sy: f32) {…}
```

 

Transform a point by given transform.

### [TransformPremultiply ¶](#TransformPremultiply) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L605)

```
TransformPremultiply :: proc(t: ^[6]f32, s: [6]f32) {…}
```

 

Sets the transform to the result of multiplication of two transforms, of A = B\*A.

### [TransformRotate ¶](#TransformRotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L560)

```
TransformRotate :: proc(t: ^[6]f32, a: f32) {…}
```

 

Sets the transform to rotate matrix. Angle is specified in radians.

### [TransformScale ¶](#TransformScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L550)

```
TransformScale :: proc(t: ^[6]f32, sx, sy: f32) {…}
```

 

Sets the transform to scale matrix.

### [TransformSkewX ¶](#TransformSkewX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L572)

```
TransformSkewX :: proc(t: ^[6]f32, a: f32) {…}
```

 

Sets the transform to skew-x matrix. Angle is specified in radians.

### [TransformSkewY ¶](#TransformSkewY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L582)

```
TransformSkewY :: proc(t: ^[6]f32, a: f32) {…}
```

 

Sets the transform to skew-y matrix. Angle is specified in radians.

### [TransformTranslate ¶](#TransformTranslate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L540)

```
TransformTranslate :: proc(t: ^[6]f32, tx, ty: f32) {…}
```

 

Sets the transform to translation matrix matrix.

### [Translate ¶](#Translate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L829)

```
Translate :: proc(ctx: ^Context, x, y: f32) {…}
```

 

Translates current coordinate system.

### [UpdateImage ¶](#UpdateImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L943)

```
UpdateImage :: proc(ctx: ^Context, image: int, data: []u8) {…}
```

 

Updates image data specified by image handle.

## Procedure Groups

### [CreateImage ¶](#CreateImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin#L927)

```
CreateImage :: proc{
	CreateImagePath,
	CreateImageMem,
}
```

## Source Files

* [nanovg.odin](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/nanovg.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.351236300 +0000 UTC`

* [Types](#pkg-Types)
  + [AlignHorizontal](#AlignHorizontal)
  + [AlignVertical](#AlignVertical)
  + [BlendFactor](#BlendFactor)
  + [Codepoint\_Type](#Codepoint_Type)
  + [Color](#Color)
  + [Commands](#Commands)
  + [CompositeOperation](#CompositeOperation)
  + [CompositeOperationState](#CompositeOperationState)
  + [Context](#Context)
  + [Glyph\_Position](#Glyph_Position)
  + [ImageFlag](#ImageFlag)
  + [ImageFlags](#ImageFlags)
  + [LineCapType](#LineCapType)
  + [Matrix](#Matrix)
  + [Paint](#Paint)
  + [Params](#Params)
  + [Path](#Path)
  + [PathCache](#PathCache)
  + [Point](#Point)
  + [PointFlag](#PointFlag)
  + [PointFlags](#PointFlags)
  + [ScissorT](#ScissorT)
  + [Solidity](#Solidity)
  + [State](#State)
  + [Text\_Row](#Text_Row)
  + [Texture](#Texture)
  + [Vertex](#Vertex)
  + [Winding](#Winding)
* [Constants](#pkg-Constants)
  + [INIT\_COMMANDS\_SIZE](#INIT_COMMANDS_SIZE)
  + [INIT\_FONTIMAGE\_SIZE](#INIT_FONTIMAGE_SIZE)
  + [INIT\_PATH\_SIZE](#INIT_PATH_SIZE)
  + [INIT\_POINTS\_SIZE](#INIT_POINTS_SIZE)
  + [INIT\_VERTS\_SIZE](#INIT_VERTS_SIZE)
  + [KAPPA](#KAPPA)
  + [MAX\_FONTIMAGES](#MAX_FONTIMAGES)
  + [MAX\_FONTIMAGE\_SIZE](#MAX_FONTIMAGE_SIZE)
  + [MAX\_STATES](#MAX_STATES)
* [Variables](#pkg-Variables)
  + [OP\_STATE\_TABLE](#OP_STATE_TABLE)
* [Procedures](#pkg-Procedures)
  + [AddFallbackFont](#AddFallbackFont)
  + [AddFallbackFontId](#AddFallbackFontId)
  + [Arc](#Arc)
  + [ArcTo](#ArcTo)
  + [BeginFrame](#BeginFrame)
  + [BeginPath](#BeginPath)
  + [BezierTo](#BezierTo)
  + [BoxGradient](#BoxGradient)
  + [CancelFrame](#CancelFrame)
  + [Circle](#Circle)
  + [ClosePath](#ClosePath)
  + [ColorHex](#ColorHex)
  + [CreateFont](#CreateFont)
  + [CreateFontMem](#CreateFontMem)
  + [CreateImageMem](#CreateImageMem)
  + [CreateImagePath](#CreateImagePath)
  + [CreateImageRGBA](#CreateImageRGBA)
  + [CreateInternal](#CreateInternal)
  + [CurrentTransform](#CurrentTransform)
  + [DebugDumpPathCache](#DebugDumpPathCache)
  + [DegToRad](#DegToRad)
  + [DeleteImage](#DeleteImage)
  + [DeleteInternal](#DeleteInternal)
  + [Ellipse](#Ellipse)
  + [EndFrame](#EndFrame)
  + [Fill](#Fill)
  + [FillColor](#FillColor)
  + [FillPaint](#FillPaint)
  + [FillScoped](#FillScoped)
  + [FillStrokeScoped](#FillStrokeScoped)
  + [FindFont](#FindFont)
  + [FontBlur](#FontBlur)
  + [FontFace](#FontFace)
  + [FontFaceId](#FontFaceId)
  + [FontSize](#FontSize)
  + [FrameScoped](#FrameScoped)
  + [GlobalAlpha](#GlobalAlpha)
  + [GlobalCompositeBlendFunc](#GlobalCompositeBlendFunc)
  + [GlobalCompositeBlendFuncSeparate](#GlobalCompositeBlendFuncSeparate)
  + [GlobalCompositeOperation](#GlobalCompositeOperation)
  + [HSL](#HSL)
  + [HSLA](#HSLA)
  + [ImagePattern](#ImagePattern)
  + [ImageSize](#ImageSize)
  + [IntersectScissor](#IntersectScissor)
  + [LerpRGBA](#LerpRGBA)
  + [LineCap](#LineCap)
  + [LineJoin](#LineJoin)
  + [LineTo](#LineTo)
  + [LinearGradient](#LinearGradient)
  + [MiterLimit](#MiterLimit)
  + [MoveTo](#MoveTo)
  + [PathSolidity](#PathSolidity)
  + [PathWinding](#PathWinding)
  + [QuadTo](#QuadTo)
  + [RGB](#RGB)
  + [RGBA](#RGBA)
  + [RadToDeg](#RadToDeg)
  + [RadialGradient](#RadialGradient)
  + [Rect](#Rect)
  + [Reset](#Reset)
  + [ResetFallbackFonts](#ResetFallbackFonts)
  + [ResetFallbackFontsId](#ResetFallbackFontsId)
  + [ResetScissor](#ResetScissor)
  + [ResetTransform](#ResetTransform)
  + [Restore](#Restore)
  + [Rotate](#Rotate)
  + [RoundedRect](#RoundedRect)
  + [RoundedRectVarying](#RoundedRectVarying)
  + [Save](#Save)
  + [SaveScoped](#SaveScoped)
  + [Scale](#Scale)
  + [Scissor](#Scissor)
  + [ShapeAntiAlias](#ShapeAntiAlias)
  + [SkewX](#SkewX)
  + [SkewY](#SkewY)
  + [Stroke](#Stroke)
  + [StrokeColor](#StrokeColor)
  + [StrokePaint](#StrokePaint)
  + [StrokeScoped](#StrokeScoped)
  + [StrokeWidth](#StrokeWidth)
  + [Text](#Text)
  + [TextAlign](#TextAlign)
  + [TextAlignHorizontal](#TextAlignHorizontal)
  + [TextAlignVertical](#TextAlignVertical)
  + [TextBounds](#TextBounds)
  + [TextBox](#TextBox)
  + [TextBoxBounds](#TextBoxBounds)
  + [TextBreakLines](#TextBreakLines)
  + [TextGlyphPositions](#TextGlyphPositions)
  + [TextIcon](#TextIcon)
  + [TextLetterSpacing](#TextLetterSpacing)
  + [TextLineHeight](#TextLineHeight)
  + [TextMetrics](#TextMetrics)
  + [Transform](#Transform)
  + [TransformIdentity](#TransformIdentity)
  + [TransformInverse](#TransformInverse)
  + [TransformMultiply](#TransformMultiply)
  + [TransformPoint](#TransformPoint)
  + [TransformPremultiply](#TransformPremultiply)
  + [TransformRotate](#TransformRotate)
  + [TransformScale](#TransformScale)
  + [TransformSkewX](#TransformSkewX)
  + [TransformSkewY](#TransformSkewY)
  + [TransformTranslate](#TransformTranslate)
  + [Translate](#Translate)
  + [UpdateImage](#UpdateImage)
* [Procedure Groups](#pkg-Procedure Groups)
  + [CreateImage](#CreateImage)
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