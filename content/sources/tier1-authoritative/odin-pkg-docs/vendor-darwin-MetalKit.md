package darwin/MetalKit - pkg.odin-lang.org 






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



Current Package: *[objc\_MetalKit](/vendor/darwin/MetalKit)*

  

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
3. [MetalKit](/vendor/darwin/MetalKit)

# package vendor:darwin/MetalKit [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [MetalKit](https://developer.apple.com/documentation/metalkit).

## Index

Types (3)

* [ColorSpaceRef](#ColorSpaceRef)
* [View](#View)
* [ViewDelegate](#ViewDelegate)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (47)

* [View\_alloc](#View_alloc)
* [View\_autoresizeDrawable](#View_autoresizeDrawable)
* [View\_clearColor](#View_clearColor)
* [View\_clearDepth](#View_clearDepth)
* [View\_clearStencil](#View_clearStencil)
* [View\_colorPixelFormat](#View_colorPixelFormat)
* [View\_colorSpace](#View_colorSpace)
* [View\_currentDrawable](#View_currentDrawable)
* [View\_currentRenderPassDescriptor](#View_currentRenderPassDescriptor)
* [View\_delegate](#View_delegate)
* [View\_depthStencilAttachmentTextureUsage](#View_depthStencilAttachmentTextureUsage)
* [View\_depthStencilPixelFormat](#View_depthStencilPixelFormat)
* [View\_depthStencilTexture](#View_depthStencilTexture)
* [View\_device](#View_device)
* [View\_draw](#View_draw)
* [View\_drawableSize](#View_drawableSize)
* [View\_enableSetNeedsDisplay](#View_enableSetNeedsDisplay)
* [View\_framebufferOnly](#View_framebufferOnly)
* [View\_initWithCoder](#View_initWithCoder)
* [View\_initWithFrame](#View_initWithFrame)
* [View\_isPaused](#View_isPaused)
* [View\_multisampleColorAttachmentTextureUsage](#View_multisampleColorAttachmentTextureUsage)
* [View\_multisampleColorTexture](#View_multisampleColorTexture)
* [View\_preferredDevice](#View_preferredDevice)
* [View\_preferredDrawableSize](#View_preferredDrawableSize)
* [View\_preferredFramesPerSecond](#View_preferredFramesPerSecond)
* [View\_presentsWithTransaction](#View_presentsWithTransaction)
* [View\_releaseDrawables](#View_releaseDrawables)
* [View\_sampleCount](#View_sampleCount)
* [View\_setAutoresizeDrawable](#View_setAutoresizeDrawable)
* [View\_setClearColor](#View_setClearColor)
* [View\_setClearDepth](#View_setClearDepth)
* [View\_setClearStencil](#View_setClearStencil)
* [View\_setColorPixelFormat](#View_setColorPixelFormat)
* [View\_setColorSpace](#View_setColorSpace)
* [View\_setDelegate](#View_setDelegate)
* [View\_setDepthStencilAttachmentTextureUsage](#View_setDepthStencilAttachmentTextureUsage)
* [View\_setDepthStencilPixelFormat](#View_setDepthStencilPixelFormat)
* [View\_setDevice](#View_setDevice)
* [View\_setDrawableSize](#View_setDrawableSize)
* [View\_setEnableSetNeedsDisplay](#View_setEnableSetNeedsDisplay)
* [View\_setFramebufferOnly](#View_setFramebufferOnly)
* [View\_setMultisampleColorAttachmentTextureUsage](#View_setMultisampleColorAttachmentTextureUsage)
* [View\_setPaused](#View_setPaused)
* [View\_setPreferredFramesPerSecond](#View_setPreferredFramesPerSecond)
* [View\_setPresentsWithTransaction](#View_setPresentsWithTransaction)
* [View\_setSampleCount](#View_setSampleCount)

Procedure Groups (0)

This section is empty.

## Types

### [ColorSpaceRef ¶](#ColorSpaceRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L15)

```
ColorSpaceRef :: struct {}
```

##### Related Procedures With Parameters

* [View\_setColorSpace](/vendor/darwin/MetalKit/#View_setColorSpace)



##### Related Procedures With Returns

* [View\_colorSpace](/vendor/darwin/MetalKit/#View_colorSpace)

### [View ¶](#View) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L25)

```
View :: struct {
	using _: objc_Foundation.View,
}
```

##### Bound Objective-C Methods

* [alloc](/vendor/darwin/MetalKit/#View_alloc) *(class method)*
* [autoresizeDrawable](/vendor/darwin/MetalKit/#View_autoresizeDrawable)
* [clearColor](/vendor/darwin/MetalKit/#View_clearColor)
* [clearDepth](/vendor/darwin/MetalKit/#View_clearDepth)
* [clearStencil](/vendor/darwin/MetalKit/#View_clearStencil)
* [colorPixelFormat](/vendor/darwin/MetalKit/#View_colorPixelFormat)
* [colorSpace](/vendor/darwin/MetalKit/#View_colorSpace)
* [currentDrawable](/vendor/darwin/MetalKit/#View_currentDrawable)
* [currentRenderPassDescriptor](/vendor/darwin/MetalKit/#View_currentRenderPassDescriptor)
* [delegate](/vendor/darwin/MetalKit/#View_delegate)
* [depthStencilAttachmentTextureUsage](/vendor/darwin/MetalKit/#View_depthStencilAttachmentTextureUsage)
* [depthStencilPixelFormat](/vendor/darwin/MetalKit/#View_depthStencilPixelFormat)
* [depthStencilTexture](/vendor/darwin/MetalKit/#View_depthStencilTexture)
* [device](/vendor/darwin/MetalKit/#View_device)
* [draw](/vendor/darwin/MetalKit/#View_draw)
* [drawableSize](/vendor/darwin/MetalKit/#View_drawableSize)
* [enableSetNeedsDisplay](/vendor/darwin/MetalKit/#View_enableSetNeedsDisplay)
* [framebufferOnly](/vendor/darwin/MetalKit/#View_framebufferOnly)
* [initWithCoder](/vendor/darwin/MetalKit/#View_initWithCoder)
* [initWithFrame](/vendor/darwin/MetalKit/#View_initWithFrame)
* [isPaused](/vendor/darwin/MetalKit/#View_isPaused)
* [multisampleColorAttachmentTextureUsage](/vendor/darwin/MetalKit/#View_multisampleColorAttachmentTextureUsage)
* [multisampleColorTexture](/vendor/darwin/MetalKit/#View_multisampleColorTexture)
* [preferredDevice](/vendor/darwin/MetalKit/#View_preferredDevice)
* [preferredDrawableSize](/vendor/darwin/MetalKit/#View_preferredDrawableSize)
* [preferredFramesPerSecond](/vendor/darwin/MetalKit/#View_preferredFramesPerSecond)
* [presentsWithTransaction](/vendor/darwin/MetalKit/#View_presentsWithTransaction)
* [releaseDrawables](/vendor/darwin/MetalKit/#View_releaseDrawables)
* [sampleCount](/vendor/darwin/MetalKit/#View_sampleCount)
* [setAutoresizeDrawable](/vendor/darwin/MetalKit/#View_setAutoresizeDrawable)
* [setClearColor](/vendor/darwin/MetalKit/#View_setClearColor)
* [setClearDepth](/vendor/darwin/MetalKit/#View_setClearDepth)
* [setClearStencil](/vendor/darwin/MetalKit/#View_setClearStencil)
* [setColorPixelFormat](/vendor/darwin/MetalKit/#View_setColorPixelFormat)
* [setColorSpace](/vendor/darwin/MetalKit/#View_setColorSpace)
* [setDelegate](/vendor/darwin/MetalKit/#View_setDelegate)
* [setDepthStencilAttachmentTextureUsage](/vendor/darwin/MetalKit/#View_setDepthStencilAttachmentTextureUsage)
* [setDepthStencilPixelFormat](/vendor/darwin/MetalKit/#View_setDepthStencilPixelFormat)
* [setDevice](/vendor/darwin/MetalKit/#View_setDevice)
* [setDrawableSize](/vendor/darwin/MetalKit/#View_setDrawableSize)
* [setEnableSetNeedsDisplay](/vendor/darwin/MetalKit/#View_setEnableSetNeedsDisplay)
* [setFramebufferOnly](/vendor/darwin/MetalKit/#View_setFramebufferOnly)
* [setMultisampleColorAttachmentTextureUsage](/vendor/darwin/MetalKit/#View_setMultisampleColorAttachmentTextureUsage)
* [setPaused](/vendor/darwin/MetalKit/#View_setPaused)
* [setPreferredFramesPerSecond](/vendor/darwin/MetalKit/#View_setPreferredFramesPerSecond)
* [setPresentsWithTransaction](/vendor/darwin/MetalKit/#View_setPresentsWithTransaction)
* [setSampleCount](/vendor/darwin/MetalKit/#View_setSampleCount)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ViewDelegate ¶](#ViewDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L17)

```
ViewDelegate :: struct {
	drawInMTKView:          proc "c" (self: ^ViewDelegate, view: ^View),
	drawableSizeWillChange: proc "c" (self: ^ViewDelegate, view: ^View, size: CoreFoundation.CGSize),
	user_data:              rawptr,
}
```

##### Related Procedures With Parameters

* [View\_setDelegate](/vendor/darwin/MetalKit/#View_setDelegate)



##### Related Procedures With Returns

* [View\_delegate](/vendor/darwin/MetalKit/#View_delegate)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [View\_alloc ¶](#View_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L28)

```
View_alloc :: proc "c" () -> ^View {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := View.alloc()
```

### [View\_autoresizeDrawable ¶](#View_autoresizeDrawable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L221)

```
View_autoresizeDrawable :: proc "c" (
	self: ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **autoresizeDrawable**

##### Syntax Usage

```
res := self->autoresizeDrawable()
```

### [View\_clearColor ¶](#View_clearColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L157)

```
View_clearColor :: proc "c" (
	self: ^View, 
) -> objc_Metal.ClearColor {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **clearColor**

##### Syntax Usage

```
res := self->clearColor()
```

### [View\_clearDepth ¶](#View_clearDepth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L166)

```
View_clearDepth :: proc "c" (
	self: ^View, 
) -> f64 {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **clearDepth**

##### Syntax Usage

```
res := self->clearDepth()
```

### [View\_clearStencil ¶](#View_clearStencil) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L175)

```
View_clearStencil :: proc "c" (
	self: ^View, 
) -> u32 {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **clearStencil**

##### Syntax Usage

```
res := self->clearStencil()
```

### [View\_colorPixelFormat ¶](#View_colorPixelFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L130)

```
View_colorPixelFormat :: proc "c" (
	self: ^View, 
) -> objc_Metal.PixelFormat {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **colorPixelFormat**

##### Syntax Usage

```
res := self->colorPixelFormat()
```

### [View\_colorSpace ¶](#View_colorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L258)

```
View_colorSpace :: proc "c" (
	self: ^View, 
) -> ColorSpaceRef {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **colorSpace**

##### Syntax Usage

```
res := self->colorSpace()
```

### [View\_currentDrawable ¶](#View_currentDrawable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L85)

```
View_currentDrawable :: proc "c" (
	self: ^View, 
) -> ^objc_QuartzCore.MetalDrawable {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **currentDrawable**

##### Syntax Usage

```
res := self->currentDrawable()
```

### [View\_currentRenderPassDescriptor ¶](#View_currentRenderPassDescriptor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L194)

```
View_currentRenderPassDescriptor :: proc "c" (
	self: ^View, 
) -> ^objc_Metal.RenderPassDescriptor {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **currentRenderPassDescriptor**

##### Syntax Usage

```
res := self->currentRenderPassDescriptor()
```

### [View\_delegate ¶](#View_delegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L76)

```
View_delegate :: proc "c" (
	self: ^View, 
) -> ^ViewDelegate {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **delegate**

##### Syntax Usage

```
res := self->delegate()
```

### [View\_depthStencilAttachmentTextureUsage ¶](#View_depthStencilAttachmentTextureUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L103)

```
View_depthStencilAttachmentTextureUsage :: proc "c" (
	self: ^View, 
) -> objc_Metal.TextureUsage {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **depthStencilAttachmentTextureUsage**

##### Syntax Usage

```
res := self->depthStencilAttachmentTextureUsage()
```

### [View\_depthStencilPixelFormat ¶](#View_depthStencilPixelFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L139)

```
View_depthStencilPixelFormat :: proc "c" (
	self: ^View, 
) -> objc_Metal.PixelFormat {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **depthStencilPixelFormat**

##### Syntax Usage

```
res := self->depthStencilPixelFormat()
```

### [View\_depthStencilTexture ¶](#View_depthStencilTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L180)

```
View_depthStencilTexture :: proc "c" (
	self: ^View, 
) -> ^objc_Metal.Texture {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **depthStencilTexture**

##### Syntax Usage

```
res := self->depthStencilTexture()
```

### [View\_device ¶](#View_device) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L45)

```
View_device :: proc "c" (
	self: ^View, 
) -> ^objc_Metal.Device {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **device**

##### Syntax Usage

```
res := self->device()
```

### [View\_draw ¶](#View_draw) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L50)

```
View_draw :: proc "c" (
	self: ^View, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **draw**

##### Syntax Usage

```
self->draw()
```

### [View\_drawableSize ¶](#View_drawableSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L230)

```
View_drawableSize :: proc "c" (
	self: ^View, 
) -> CoreFoundation.CGSize {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **drawableSize**

##### Syntax Usage

```
res := self->drawableSize()
```

### [View\_enableSetNeedsDisplay ¶](#View_enableSetNeedsDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L212)

```
View_enableSetNeedsDisplay :: proc "c" (
	self: ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **enableSetNeedsDisplay**

##### Syntax Usage

```
res := self->enableSetNeedsDisplay()
```

### [View\_framebufferOnly ¶](#View_framebufferOnly) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L94)

```
View_framebufferOnly :: proc "c" (
	self: ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **framebufferOnly**

##### Syntax Usage

```
res := self->framebufferOnly()
```

### [View\_initWithCoder ¶](#View_initWithCoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L36)

```
View_initWithCoder :: proc "c" (
	self:  ^View, 
	coder: ^objc_Foundation.Coder, 
) -> ^View {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **initWithCoder**

##### Syntax Usage

```
res := self->initWithCoder(coder)
```

### [View\_initWithFrame ¶](#View_initWithFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L32)

```
View_initWithFrame :: proc "c" (
	self:   ^View, 
	frame:  CoreFoundation.CGRect, 
	device: ^objc_Metal.Device, 
) -> ^View {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **initWithFrame**

##### Syntax Usage

```
res := self->initWithFrame(
	frame,
	device,
)
```

### [View\_isPaused ¶](#View_isPaused) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L249)

```
View_isPaused :: proc "c" (
	self: ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **isPaused**

##### Syntax Usage

```
res := self->isPaused()
```

### [View\_multisampleColorAttachmentTextureUsage ¶](#View_multisampleColorAttachmentTextureUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L112)

```
View_multisampleColorAttachmentTextureUsage :: proc "c" (
	self: ^View, 
) -> objc_Metal.TextureUsage {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **multisampleColorAttachmentTextureUsage**

##### Syntax Usage

```
res := self->multisampleColorAttachmentTextureUsage()
```

### [View\_multisampleColorTexture ¶](#View_multisampleColorTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L184)

```
View_multisampleColorTexture :: proc "c" (
	self: ^View, 
) -> ^objc_Metal.Texture {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **multisampleColorTexture**

##### Syntax Usage

```
res := self->multisampleColorTexture()
```

### [View\_preferredDevice ¶](#View_preferredDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L240)

```
View_preferredDevice :: proc "c" (
	self: ^View, 
) -> ^objc_Metal.Device {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **preferredDevice**

##### Syntax Usage

```
res := self->preferredDevice()
```

### [View\_preferredDrawableSize ¶](#View_preferredDrawableSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L235)

```
View_preferredDrawableSize :: proc "c" (
	self: ^View, 
) -> CoreFoundation.CGSize {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **preferredDrawableSize**

##### Syntax Usage

```
res := self->preferredDrawableSize()
```

### [View\_preferredFramesPerSecond ¶](#View_preferredFramesPerSecond) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L203)

```
View_preferredFramesPerSecond :: proc "c" (
	self: ^View, 
) -> objc_Foundation.Integer {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **preferredFramesPerSecond**

##### Syntax Usage

```
res := self->preferredFramesPerSecond()
```

### [View\_presentsWithTransaction ¶](#View_presentsWithTransaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L121)

```
View_presentsWithTransaction :: proc "c" (
	self: ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **presentsWithTransaction**

##### Syntax Usage

```
res := self->presentsWithTransaction()
```

### [View\_releaseDrawables ¶](#View_releaseDrawables) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L189)

```
View_releaseDrawables :: proc "c" (
	self: ^View, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **releaseDrawables**

##### Syntax Usage

```
self->releaseDrawables()
```

### [View\_sampleCount ¶](#View_sampleCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L148)

```
View_sampleCount :: proc "c" (
	self: ^View, 
) -> objc_Foundation.UInteger {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **sampleCount**

##### Syntax Usage

```
res := self->sampleCount()
```

### [View\_setAutoresizeDrawable ¶](#View_setAutoresizeDrawable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L217)

```
View_setAutoresizeDrawable :: proc "c" (
	self:               ^View, 
	autoresizeDrawable: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setAutoresizeDrawable**

##### Syntax Usage

```
self->setAutoresizeDrawable(autoresizeDrawable)
```

### [View\_setClearColor ¶](#View_setClearColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L153)

```
View_setClearColor :: proc "c" (
	self:       ^View, 
	clearColor: objc_Metal.ClearColor, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setClearColor**

##### Syntax Usage

```
self->setClearColor(clearColor)
```

### [View\_setClearDepth ¶](#View_setClearDepth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L162)

```
View_setClearDepth :: proc "c" (
	self:       ^View, 
	clearDepth: f64, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setClearDepth**

##### Syntax Usage

```
self->setClearDepth(clearDepth)
```

### [View\_setClearStencil ¶](#View_setClearStencil) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L171)

```
View_setClearStencil :: proc "c" (
	self:         ^View, 
	clearStencil: u32, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setClearStencil**

##### Syntax Usage

```
self->setClearStencil(clearStencil)
```

### [View\_setColorPixelFormat ¶](#View_setColorPixelFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L126)

```
View_setColorPixelFormat :: proc "c" (
	self:             ^View, 
	colorPixelFormat: objc_Metal.PixelFormat, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setColorPixelFormat**

##### Syntax Usage

```
self->setColorPixelFormat(colorPixelFormat)
```

### [View\_setColorSpace ¶](#View_setColorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L254)

```
View_setColorSpace :: proc "c" (
	self:       ^View, 
	colorSpace: ColorSpaceRef, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setColorSpace**

##### Syntax Usage

```
self->setColorSpace(colorSpace)
```

### [View\_setDelegate ¶](#View_setDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L55)

```
View_setDelegate :: proc "c" (
	self:     ^View, 
	delegate: ^ViewDelegate, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setDelegate**

##### Syntax Usage

```
self->setDelegate(delegate)
```

### [View\_setDepthStencilAttachmentTextureUsage ¶](#View_setDepthStencilAttachmentTextureUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L99)

```
View_setDepthStencilAttachmentTextureUsage :: proc "c" (
	self:         ^View, 
	textureUsage: objc_Metal.TextureUsage, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setDepthStencilAttachmentTextureUsage**

##### Syntax Usage

```
self->setDepthStencilAttachmentTextureUsage(textureUsage)
```

### [View\_setDepthStencilPixelFormat ¶](#View_setDepthStencilPixelFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L135)

```
View_setDepthStencilPixelFormat :: proc "c" (
	self:             ^View, 
	colorPixelFormat: objc_Metal.PixelFormat, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setDepthStencilPixelFormat**

##### Syntax Usage

```
self->setDepthStencilPixelFormat(colorPixelFormat)
```

### [View\_setDevice ¶](#View_setDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L41)

```
View_setDevice :: proc "c" (
	self:   ^View, 
	device: ^objc_Metal.Device, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setDevice**

##### Syntax Usage

```
self->setDevice(device)
```

### [View\_setDrawableSize ¶](#View_setDrawableSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L226)

```
View_setDrawableSize :: proc "c" (
	self:         ^View, 
	drawableSize: CoreFoundation.CGSize, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setDrawableSize**

##### Syntax Usage

```
self->setDrawableSize(drawableSize)
```

### [View\_setEnableSetNeedsDisplay ¶](#View_setEnableSetNeedsDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L208)

```
View_setEnableSetNeedsDisplay :: proc "c" (
	self:                  ^View, 
	enableSetNeedsDisplay: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setEnableSetNeedsDisplay**

##### Syntax Usage

```
self->setEnableSetNeedsDisplay(enableSetNeedsDisplay)
```

### [View\_setFramebufferOnly ¶](#View_setFramebufferOnly) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L90)

```
View_setFramebufferOnly :: proc "c" (
	self:            ^View, 
	framebufferOnly: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setFramebufferOnly**

##### Syntax Usage

```
self->setFramebufferOnly(framebufferOnly)
```

### [View\_setMultisampleColorAttachmentTextureUsage ¶](#View_setMultisampleColorAttachmentTextureUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L108)

```
View_setMultisampleColorAttachmentTextureUsage :: proc "c" (
	self:         ^View, 
	textureUsage: objc_Metal.TextureUsage, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setMultisampleColorAttachmentTextureUsage**

##### Syntax Usage

```
self->setMultisampleColorAttachmentTextureUsage(textureUsage)
```

### [View\_setPaused ¶](#View_setPaused) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L245)

```
View_setPaused :: proc "c" (
	self:     ^View, 
	isPaused: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setPaused**

##### Syntax Usage

```
self->setPaused(isPaused)
```

### [View\_setPreferredFramesPerSecond ¶](#View_setPreferredFramesPerSecond) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L199)

```
View_setPreferredFramesPerSecond :: proc "c" (
	self:                     ^View, 
	preferredFramesPerSecond: objc_Foundation.Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setPreferredFramesPerSecond**

##### Syntax Usage

```
self->setPreferredFramesPerSecond(preferredFramesPerSecond)
```

### [View\_setPresentsWithTransaction ¶](#View_setPresentsWithTransaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L117)

```
View_setPresentsWithTransaction :: proc "c" (
	self:                    ^View, 
	presentsWithTransaction: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setPresentsWithTransaction**

##### Syntax Usage

```
self->setPresentsWithTransaction(presentsWithTransaction)
```

### [View\_setSampleCount ¶](#View_setSampleCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin#L144)

```
View_setSampleCount :: proc "c" (
	self:        ^View, 
	sampleCount: objc_Foundation.UInteger, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setSampleCount**

##### Syntax Usage

```
self->setSampleCount(sampleCount)
```

## Procedure Groups

This section is empty.

## Source Files

* [MetalKit.odin](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/MetalKit/MetalKit.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.735842200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [ColorSpaceRef](#ColorSpaceRef)
    + [View](#View)
    + [ViewDelegate](#ViewDelegate)
  * [Procedures](#pkg-Procedures)
    + [View\_alloc](#View_alloc)
    + [View\_autoresizeDrawable](#View_autoresizeDrawable)
    + [View\_clearColor](#View_clearColor)
    + [View\_clearDepth](#View_clearDepth)
    + [View\_clearStencil](#View_clearStencil)
    + [View\_colorPixelFormat](#View_colorPixelFormat)
    + [View\_colorSpace](#View_colorSpace)
    + [View\_currentDrawable](#View_currentDrawable)
    + [View\_currentRenderPassDescriptor](#View_currentRenderPassDescriptor)
    + [View\_delegate](#View_delegate)
    + [View\_depthStencilAttachmentTextureUsage](#View_depthStencilAttachmentTextureUsage)
    + [View\_depthStencilPixelFormat](#View_depthStencilPixelFormat)
    + [View\_depthStencilTexture](#View_depthStencilTexture)
    + [View\_device](#View_device)
    + [View\_draw](#View_draw)
    + [View\_drawableSize](#View_drawableSize)
    + [View\_enableSetNeedsDisplay](#View_enableSetNeedsDisplay)
    + [View\_framebufferOnly](#View_framebufferOnly)
    + [View\_initWithCoder](#View_initWithCoder)
    + [View\_initWithFrame](#View_initWithFrame)
    + [View\_isPaused](#View_isPaused)
    + [View\_multisampleColorAttachmentTextureUsage](#View_multisampleColorAttachmentTextureUsage)
    + [View\_multisampleColorTexture](#View_multisampleColorTexture)
    + [View\_preferredDevice](#View_preferredDevice)
    + [View\_preferredDrawableSize](#View_preferredDrawableSize)
    + [View\_preferredFramesPerSecond](#View_preferredFramesPerSecond)
    + [View\_presentsWithTransaction](#View_presentsWithTransaction)
    + [View\_releaseDrawables](#View_releaseDrawables)
    + [View\_sampleCount](#View_sampleCount)
    + [View\_setAutoresizeDrawable](#View_setAutoresizeDrawable)
    + [View\_setClearColor](#View_setClearColor)
    + [View\_setClearDepth](#View_setClearDepth)
    + [View\_setClearStencil](#View_setClearStencil)
    + [View\_setColorPixelFormat](#View_setColorPixelFormat)
    + [View\_setColorSpace](#View_setColorSpace)
    + [View\_setDelegate](#View_setDelegate)
    + [View\_setDepthStencilAttachmentTextureUsage](#View_setDepthStencilAttachmentTextureUsage)
    + [View\_setDepthStencilPixelFormat](#View_setDepthStencilPixelFormat)
    + [View\_setDevice](#View_setDevice)
    + [View\_setDrawableSize](#View_setDrawableSize)
    + [View\_setEnableSetNeedsDisplay](#View_setEnableSetNeedsDisplay)
    + [View\_setFramebufferOnly](#View_setFramebufferOnly)
    + [View\_setMultisampleColorAttachmentTextureUsage](#View_setMultisampleColorAttachmentTextureUsage)
    + [View\_setPaused](#View_setPaused)
    + [View\_setPreferredFramesPerSecond](#View_setPreferredFramesPerSecond)
    + [View\_setPresentsWithTransaction](#View_setPresentsWithTransaction)
    + [View\_setSampleCount](#View_setSampleCount)
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