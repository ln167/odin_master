package nanovg/gl - pkg.odin-lang.org 






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



Current Package: *[nanovg\_gl](/vendor/nanovg/gl)*

  

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
3. [gl](/vendor/nanovg/gl)

# package vendor:nanovg/gl [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl)

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (19)

* [Blend](#Blend)
* [Call](#Call)
* [CallType](#CallType)
* [Color](#Color)
* [Context](#Context)
* [CreateFlag](#CreateFlag)
* [CreateFlags](#CreateFlags)
* [FragUniforms](#FragUniforms)
* [ImageFlags](#ImageFlags)
* [Paint](#Paint)
* [Path](#Path)
* [ScissorT](#ScissorT)
* [Shader](#Shader)
* [ShaderType](#ShaderType)
* [Texture](#Texture)
* [TextureType](#TextureType)
* [UniformLoc](#UniformLoc)
* [Vertex](#Vertex)
* [framebuffer](#framebuffer)

Constants (15)

* [BLEND\_FACTOR\_TABLE](#BLEND_FACTOR_TABLE)
* [DEFAULT\_FBO](#DEFAULT_FBO)
* [DEFAULT\_IMPLEMENTATION\_STRING](#DEFAULT_IMPLEMENTATION_STRING)
* [GL2](#GL2)
* [GL2\_IMPLEMENTATION](#GL2_IMPLEMENTATION)
* [GL3](#GL3)
* [GL3\_IMPLEMENTATION](#GL3_IMPLEMENTATION)
* [GLES2](#GLES2)
* [GLES2\_IMPLEMENTATION](#GLES2_IMPLEMENTATION)
* [GLES3](#GLES3)
* [GLES3\_IMPLEMENTATION](#GLES3_IMPLEMENTATION)
* [GL\_IMPLEMENTATION](#GL_IMPLEMENTATION)
* [GL\_UNIFORMARRAY\_SIZE](#GL_UNIFORMARRAY_SIZE)
* [GL\_USE\_UNIFORMBUFFER](#GL_USE_UNIFORMBUFFER)
* [USE\_STATE\_FILTER](#USE_STATE_FILTER)

Variables (3)

* [defaultFBO](#defaultFBO)
* [frag\_shader](#frag_shader)
* [vert\_shader](#vert_shader)

Procedures (7)

* [BindFramebuffer](#BindFramebuffer)
* [Create](#Create)
* [CreateFramebuffer](#CreateFramebuffer)
* [CreateImageFromHandle](#CreateImageFromHandle)
* [DeleteFramebuffer](#DeleteFramebuffer)
* [Destroy](#Destroy)
* [ImageHandle](#ImageHandle)

Procedure Groups (0)

This section is empty.

`#config` values (2)

* [DEFAULT\_IMPLEMENTATION\_STRING](#DEFAULT_IMPLEMENTATION_STRING)
* [USE\_STATE\_FILTER](#USE_STATE_FILTER)

## Types

### [Blend ¶](#Blend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L61)

```
Blend :: struct {
	src_RGB:   u32,
	dst_RGB:   u32,
	src_alpha: u32,
	dst_alpha: u32,
}
```

### [Call ¶](#Call) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L76)

```
Call :: struct {
	type:           CallType,
	image:          int,
	pathOffset:     int,
	pathCount:      int,
	triangleOffset: int,
	triangleCount:  int,
	uniformOffset:  int,
	blendFunc:      Blend,
}
```

### [CallType ¶](#CallType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L68)

```
CallType :: enum int {
	NONE, 
	FILL, 
	CONVEX_FILL, 
	STROKE, 
	TRIANGLES, 
}
```

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L13)

```
Color :: [4]f32
```

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L169)

```
Context :: struct {
	shader:          Shader,
	textures:        [dynamic]Texture,
	view:            [2]f32,
	textureId:       int,
	vertBuf:         u32,
	vertArr:         u32,
	// GL3
	fragBuf:         u32,
	// USE_UNIFORMBUFFER
	fragSize:        int,
	flags:           bit_set[CreateFlag],
	frag_binding:    u32,
	// Per frame buffers
	calls:           [dynamic]Call,
	paths:           [dynamic]Path,
	verts:           [dynamic][4]f32,
	uniforms:        [dynamic]u8,
	// cached state used for state filter
	boundTexture:    u32,
	stencilMask:     u32,
	stencilFunc:     u32,
	stencilFuncRef:  i32,
	stencilFuncMask: u32,
	blendFunc:       Blend,
	dummyTex:        int,
}
```

### [CreateFlag ¶](#CreateFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L20)

```
CreateFlag :: enum int {
	// Flag indicating if geometry based anti-aliasing is used (may not be needed when using MSAA).
	ANTI_ALIAS, 
	// Flag indicating if strokes should be drawn using stencil buffer. The rendering will be a little
	// slower, but path overlaps (i.e. self-intersecting or sharp turns) will be drawn just once.
	STENCIL_STROKES, 
	// additional debug checks
	DEBUG, 
}
```

### [CreateFlags ¶](#CreateFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L29)

```
CreateFlags :: bit_set[CreateFlag]
```

##### Related Procedures With Parameters

* [Create](/vendor/nanovg/gl/#Create)

### [FragUniforms ¶](#FragUniforms) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L116)

```
FragUniforms :: struct #packed {
	scissorMat:   [12]f32,
	// matrices are actually 3 vec4s
	paintMat:     [12]f32,
	innerColor:   [4]f32,
	outerColor:   [4]f32,
	scissorExt:   [2]f32,
	scissorScale: [2]f32,
	extent:       [2]f32,
	radius:       f32,
	feather:      f32,
	strokeMult:   f32,
	strokeThr:    f32,
	texType:      i32,
	type:         ShaderType,
}
```

### [ImageFlags ¶](#ImageFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L15)

```
ImageFlags :: bit_set[nanovg.ImageFlag]
```

##### Related Procedures With Parameters

* [CreateFramebuffer](/vendor/nanovg/gl/#CreateFramebuffer)
* [CreateImageFromHandle](/vendor/nanovg/gl/#CreateImageFromHandle)

### [Paint ¶](#Paint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L17)

```
Paint :: nanovg.Paint
```

### [Path ¶](#Path) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L87)

```
Path :: struct {
	fillOffset:   int,
	fillCount:    int,
	strokeOffset: int,
	strokeCount:  int,
}
```

### [ScissorT ¶](#ScissorT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L18)

```
ScissorT :: nanovg.ScissorT
```

### [Shader ¶](#Shader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L46)

```
Shader :: struct {
	prog: u32,
	frag: u32,
	vert: u32,
	loc:  [UniformLoc]i32,
}
```

### [ShaderType ¶](#ShaderType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L39)

```
ShaderType :: enum i32 {
	FILL_GRAD, 
	FILL_IMG, 
	SIMPLE, 
	IMG, 
}
```

### [Texture ¶](#Texture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L53)

```
Texture :: struct {
	id:     int,
	tex:    u32,
	width:  int,
	height: int,
	type:   nanovg.Texture,
	flags:  bit_set[nanovg.ImageFlag],
}
```

### [TextureType ¶](#TextureType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L16)

```
TextureType :: nanovg.Texture
```

### [UniformLoc ¶](#UniformLoc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L33)

```
UniformLoc :: enum int {
	VIEW_SIZE, 
	TEX, 
	FRAG, 
}
```

### [Vertex ¶](#Vertex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L14)

```
Vertex :: [4]f32
```

### [framebuffer ¶](#framebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1368)

```
framebuffer :: struct {
	ctx:     ^nanovg.Context,
	fbo:     u32,
	rbo:     u32,
	texture: u32,
	image:   int,
}
```

##### Related Procedures With Parameters

* [BindFramebuffer](/vendor/nanovg/gl/#BindFramebuffer)
* [DeleteFramebuffer](/vendor/nanovg/gl/#DeleteFramebuffer)



##### Related Procedures With Returns

* [CreateFramebuffer](/vendor/nanovg/gl/#CreateFramebuffer)

## Constants

### [BLEND\_FACTOR\_TABLE ¶](#BLEND_FACTOR_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L937)

```
BLEND_FACTOR_TABLE: [nanovg.BlendFactor]u32 : [nvg.BlendFactor]u32{.ZERO = gl.ZERO, .ONE = gl.ONE, .SRC_COLOR = gl.SRC_COLOR, .ONE_MINUS_SRC_COLOR = gl.ONE_MINUS_SRC_COLOR, .DST_COLOR = gl.DST_COLOR, .ONE_MINUS_DST_COLOR = gl.ONE_MINUS_DST_COLOR, .SRC_ALPHA = gl.SRC_ALPHA, .ONE_MINUS_SRC_ALPHA = gl.ONE_MINUS_SRC_ALPHA, .DST_ALPHA = gl.DST_ALPHA, .ONE_MINUS_DST_ALPHA = gl.ONE_MINUS_DST_ALPHA, .SRC_ALPHA_SATURATE = gl.SRC_ALPHA_SATURATE}
```

### [DEFAULT\_FBO ¶](#DEFAULT_FBO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1376)

```
DEFAULT_FBO :: 100_000
```

### [DEFAULT\_IMPLEMENTATION\_STRING ¶](#DEFAULT_IMPLEMENTATION_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L133)

```
DEFAULT_IMPLEMENTATION_STRING :: #config(NANOVG_GL_IMPL, "GL3")
```

### [GL2 ¶](#GL2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L147)

```
GL2 :: false
```

### [GL2\_IMPLEMENTATION ¶](#GL2_IMPLEMENTATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L134)

```
GL2_IMPLEMENTATION :: DEFAULT_IMPLEMENTATION_STRING == "GL2"
```

### [GL3 ¶](#GL3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L148)

```
GL3 :: true
```

### [GL3\_IMPLEMENTATION ¶](#GL3_IMPLEMENTATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L135)

```
GL3_IMPLEMENTATION :: DEFAULT_IMPLEMENTATION_STRING == "GL3"
```

### [GLES2 ¶](#GLES2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L149)

```
GLES2 :: false
```

### [GLES2\_IMPLEMENTATION ¶](#GLES2_IMPLEMENTATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L136)

```
GLES2_IMPLEMENTATION :: DEFAULT_IMPLEMENTATION_STRING == "GLES2"
```

### [GLES3 ¶](#GLES3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L150)

```
GLES3 :: false
```

### [GLES3\_IMPLEMENTATION ¶](#GLES3_IMPLEMENTATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L137)

```
GLES3_IMPLEMENTATION :: DEFAULT_IMPLEMENTATION_STRING == "GLES3"
```

### [GL\_IMPLEMENTATION ¶](#GL_IMPLEMENTATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L151)

```
GL_IMPLEMENTATION :: true
```

### [GL\_UNIFORMARRAY\_SIZE ¶](#GL_UNIFORMARRAY_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L94)

```
GL_UNIFORMARRAY_SIZE :: 11
```

### [GL\_USE\_UNIFORMBUFFER ¶](#GL_USE_UNIFORMBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L152)

```
GL_USE_UNIFORMBUFFER :: true
```

### [USE\_STATE\_FILTER ¶](#USE_STATE_FILTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L31)

```
USE_STATE_FILTER :: #config(USE_STATE_FILTER, true)
```

## Variables

### [defaultFBO ¶](#defaultFBO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1377)

```
defaultFBO: i32 = …
```

### [frag\_shader ¶](#frag_shader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L329)

```
frag_shader: []u8 = …
```

### [vert\_shader ¶](#vert_shader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L328)

```
vert_shader: []u8 = …
```

## Procedures

### [BindFramebuffer ¶](#BindFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1380)

```
BindFramebuffer :: proc(fb: ^framebuffer) {…}
```

 

helper function to create GL frame buffer to render to

### [Create ¶](#Create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1324)

```
Create :: proc(flags: bit_set[CreateFlag]) -> ^nanovg.Context {…}
```

### [CreateFramebuffer ¶](#CreateFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1387)

```
CreateFramebuffer :: proc(ctx: ^nanovg.Context, w, h: int, imageFlags: bit_set[nanovg.ImageFlag]) -> (fb: framebuffer) {…}
```

### [CreateImageFromHandle ¶](#CreateImageFromHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1349)

```
CreateImageFromHandle :: proc(ctx: ^nanovg.Context, textureId: u32, w, h: int, imageFlags: bit_set[nanovg.ImageFlag]) -> int {…}
```

### [DeleteFramebuffer ¶](#DeleteFramebuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1432)

```
DeleteFramebuffer :: proc(fb: ^framebuffer) {…}
```

### [Destroy ¶](#Destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1345)

```
Destroy :: proc(ctx: ^nanovg.Context) {…}
```

### [ImageHandle ¶](#ImageHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L1360)

```
ImageHandle :: proc(ctx: ^nanovg.Context, textureId: int) -> u32 {…}
```

## Procedure Groups

This section is empty.

## `#config` values

### [DEFAULT\_IMPLEMENTATION\_STRING ¶](#DEFAULT_IMPLEMENTATION_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L133)

```
DEFAULT_IMPLEMENTATION_STRING :: #config(NANOVG_GL_IMPL, "GL3")
```

### [USE\_STATE\_FILTER ¶](#USE_STATE_FILTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin#L31)

```
USE_STATE_FILTER :: #config(USE_STATE_FILTER, true)
```

## Source Files

* [gl.odin](https://github.com/odin-lang/Odin/tree/master/vendor/nanovg/gl/gl.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.358363500 +0000 UTC`

* [Types](#pkg-Types)
  + [Blend](#Blend)
  + [Call](#Call)
  + [CallType](#CallType)
  + [Color](#Color)
  + [Context](#Context)
  + [CreateFlag](#CreateFlag)
  + [CreateFlags](#CreateFlags)
  + [FragUniforms](#FragUniforms)
  + [ImageFlags](#ImageFlags)
  + [Paint](#Paint)
  + [Path](#Path)
  + [ScissorT](#ScissorT)
  + [Shader](#Shader)
  + [ShaderType](#ShaderType)
  + [Texture](#Texture)
  + [TextureType](#TextureType)
  + [UniformLoc](#UniformLoc)
  + [Vertex](#Vertex)
  + [framebuffer](#framebuffer)
* [Constants](#pkg-Constants)
  + [BLEND\_FACTOR\_TABLE](#BLEND_FACTOR_TABLE)
  + [DEFAULT\_FBO](#DEFAULT_FBO)
  + [DEFAULT\_IMPLEMENTATION\_STRING](#DEFAULT_IMPLEMENTATION_STRING)
  + [GL2](#GL2)
  + [GL2\_IMPLEMENTATION](#GL2_IMPLEMENTATION)
  + [GL3](#GL3)
  + [GL3\_IMPLEMENTATION](#GL3_IMPLEMENTATION)
  + [GLES2](#GLES2)
  + [GLES2\_IMPLEMENTATION](#GLES2_IMPLEMENTATION)
  + [GLES3](#GLES3)
  + [GLES3\_IMPLEMENTATION](#GLES3_IMPLEMENTATION)
  + [GL\_IMPLEMENTATION](#GL_IMPLEMENTATION)
  + [GL\_UNIFORMARRAY\_SIZE](#GL_UNIFORMARRAY_SIZE)
  + [GL\_USE\_UNIFORMBUFFER](#GL_USE_UNIFORMBUFFER)
  + [USE\_STATE\_FILTER](#USE_STATE_FILTER)
* [Variables](#pkg-Variables)
  + [defaultFBO](#defaultFBO)
  + [frag\_shader](#frag_shader)
  + [vert\_shader](#vert_shader)
* [Procedures](#pkg-Procedures)
  + [BindFramebuffer](#BindFramebuffer)
  + [Create](#Create)
  + [CreateFramebuffer](#CreateFramebuffer)
  + [CreateImageFromHandle](#CreateImageFromHandle)
  + [DeleteFramebuffer](#DeleteFramebuffer)
  + [Destroy](#Destroy)
  + [ImageHandle](#ImageHandle)
* [`#config` values](#pkg-`#config` values)
  + [DEFAULT\_IMPLEMENTATION\_STRING](#DEFAULT_IMPLEMENTATION_STRING)
  + [USE\_STATE\_FILTER](#USE_STATE_FILTER)
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