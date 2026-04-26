package darwin/QuartzCore - pkg.odin-lang.org 






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



Current Package: *[objc\_QuartzCore](/vendor/darwin/QuartzCore)*

  

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
3. [QuartzCore](/vendor/darwin/QuartzCore)

# package vendor:darwin/QuartzCore [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [QuartzCore](https://developer.apple.com/documentation/quartzcore).

## Index

Types (4)

* [DrawablePresentedHandler](#DrawablePresentedHandler)
* [MetalDrawable](#MetalDrawable)
* [MetalLayer](#MetalLayer)
* [Transaction](#Transaction)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (28)

* [MetalDrawable\_addPresentedHandler](#MetalDrawable_addPresentedHandler)
* [MetalDrawable\_layer](#MetalDrawable_layer)
* [MetalDrawable\_texture](#MetalDrawable_texture)
* [MetalLayer\_device](#MetalLayer_device)
* [MetalLayer\_displaySyncEnabled](#MetalLayer_displaySyncEnabled)
* [MetalLayer\_drawableSize](#MetalLayer_drawableSize)
* [MetalLayer\_frame](#MetalLayer_frame)
* [MetalLayer\_framebufferOnly](#MetalLayer_framebufferOnly)
* [MetalLayer\_layer](#MetalLayer_layer)
* [MetalLayer\_maximumDrawableCount](#MetalLayer_maximumDrawableCount)
* [MetalLayer\_nextDrawable](#MetalLayer_nextDrawable)
* [MetalLayer\_opaque](#MetalLayer_opaque)
* [MetalLayer\_pixelFormat](#MetalLayer_pixelFormat)
* [MetalLayer\_preferredDevice](#MetalLayer_preferredDevice)
* [MetalLayer\_presentsWithTransaction](#MetalLayer_presentsWithTransaction)
* [MetalLayer\_setColorSpace](#MetalLayer_setColorSpace)
* [MetalLayer\_setDevice](#MetalLayer_setDevice)
* [MetalLayer\_setDisplaySyncEnabled](#MetalLayer_setDisplaySyncEnabled)
* [MetalLayer\_setDrawableSize](#MetalLayer_setDrawableSize)
* [MetalLayer\_setFrame](#MetalLayer_setFrame)
* [MetalLayer\_setFramebufferOnly](#MetalLayer_setFramebufferOnly)
* [MetalLayer\_setMaximumDrawableCount](#MetalLayer_setMaximumDrawableCount)
* [MetalLayer\_setOpaque](#MetalLayer_setOpaque)
* [MetalLayer\_setPixelFormat](#MetalLayer_setPixelFormat)
* [MetalLayer\_setPresentsWithTransaction](#MetalLayer_setPresentsWithTransaction)
* [transaction\_begin](#transaction_begin)
* [transaction\_commit](#transaction_commit)
* [transaction\_flush](#transaction_flush)

Procedure Groups (0)

This section is empty.

## Types

### [DrawablePresentedHandler ¶](#DrawablePresentedHandler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L127)

```
DrawablePresentedHandler :: ^objc_Foundation.Block
```

##### Related Procedures With Parameters

* [MetalDrawable\_addPresentedHandler](/vendor/darwin/QuartzCore/#MetalDrawable_addPresentedHandler)

### [MetalDrawable ¶](#MetalDrawable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L115)

```
MetalDrawable :: struct {
	using _: objc_Metal.Drawable,
}
```

##### Bound Objective-C Methods

* [addPresentedHandler](/vendor/darwin/QuartzCore/#MetalDrawable_addPresentedHandler)
* [layer](/vendor/darwin/QuartzCore/#MetalDrawable_layer)
* [texture](/vendor/darwin/QuartzCore/#MetalDrawable_texture)

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

### [MetalLayer ¶](#MetalLayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L12)

```
MetalLayer :: struct {
	using _: objc_Foundation.Layer,
}
```

##### Bound Objective-C Methods

* [device](/vendor/darwin/QuartzCore/#MetalLayer_device)
* [displaySyncEnabled](/vendor/darwin/QuartzCore/#MetalLayer_displaySyncEnabled)
* [drawableSize](/vendor/darwin/QuartzCore/#MetalLayer_drawableSize)
* [frame](/vendor/darwin/QuartzCore/#MetalLayer_frame)
* [framebufferOnly](/vendor/darwin/QuartzCore/#MetalLayer_framebufferOnly)
* [layer](/vendor/darwin/QuartzCore/#MetalLayer_layer) *(class method)*
* [maximumDrawableCount](/vendor/darwin/QuartzCore/#MetalLayer_maximumDrawableCount)
* [nextDrawable](/vendor/darwin/QuartzCore/#MetalLayer_nextDrawable)
* [opaque](/vendor/darwin/QuartzCore/#MetalLayer_opaque)
* [pixelFormat](/vendor/darwin/QuartzCore/#MetalLayer_pixelFormat)
* [preferredDevice](/vendor/darwin/QuartzCore/#MetalLayer_preferredDevice)
* [presentsWithTransaction](/vendor/darwin/QuartzCore/#MetalLayer_presentsWithTransaction)
* [setColorSpace](/vendor/darwin/QuartzCore/#MetalLayer_setColorSpace)
* [setDevice](/vendor/darwin/QuartzCore/#MetalLayer_setDevice)
* [setDisplaySyncEnabled](/vendor/darwin/QuartzCore/#MetalLayer_setDisplaySyncEnabled)
* [setDrawableSize](/vendor/darwin/QuartzCore/#MetalLayer_setDrawableSize)
* [setFrame](/vendor/darwin/QuartzCore/#MetalLayer_setFrame)
* [setFramebufferOnly](/vendor/darwin/QuartzCore/#MetalLayer_setFramebufferOnly)
* [setMaximumDrawableCount](/vendor/darwin/QuartzCore/#MetalLayer_setMaximumDrawableCount)
* [setOpaque](/vendor/darwin/QuartzCore/#MetalLayer_setOpaque)
* [setPixelFormat](/vendor/darwin/QuartzCore/#MetalLayer_setPixelFormat)
* [setPresentsWithTransaction](/vendor/darwin/QuartzCore/#MetalLayer_setPresentsWithTransaction)

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

### [Transaction ¶](#Transaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L134)

```
Transaction :: struct {
	using _: objc_Foundation.Object,
}
```

##### Bound Objective-C Methods

* [begin](/vendor/darwin/QuartzCore/#transaction_begin) *(class method)*
* [commit](/vendor/darwin/QuartzCore/#transaction_commit) *(class method)*
* [flush](/vendor/darwin/QuartzCore/#transaction_flush) *(class method)*

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

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [MetalDrawable\_addPresentedHandler ¶](#MetalDrawable_addPresentedHandler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L129)

```
MetalDrawable_addPresentedHandler :: proc "c" (
	self:  ^MetalDrawable, 
	block: ^objc_Foundation.Block, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalDrawable](#MetalDrawable)
* Name: **addPresentedHandler**

##### Syntax Usage

```
self->addPresentedHandler(block)
```

### [MetalDrawable\_layer ¶](#MetalDrawable_layer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L118)

```
MetalDrawable_layer :: proc "c" (
	self: ^MetalDrawable, 
) -> ^MetalLayer {…}
```

##### Objective-C Method Information

* Class: [MetalDrawable](#MetalDrawable)
* Name: **layer**

##### Syntax Usage

```
res := self->layer()
```

### [MetalDrawable\_texture ¶](#MetalDrawable_texture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L123)

```
MetalDrawable_texture :: proc "c" (
	self: ^MetalDrawable, 
) -> ^objc_Metal.Texture {…}
```

##### Objective-C Method Information

* Class: [MetalDrawable](#MetalDrawable)
* Name: **texture**

##### Syntax Usage

```
res := self->texture()
```

### [MetalLayer\_device ¶](#MetalLayer_device) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L20)

```
MetalLayer_device :: proc "c" (
	self: ^MetalLayer, 
) -> ^objc_Metal.Device {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **device**

##### Syntax Usage

```
res := self->device()
```

### [MetalLayer\_displaySyncEnabled ¶](#MetalLayer_displaySyncEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L81)

```
MetalLayer_displaySyncEnabled :: proc "c" (
	self: ^MetalLayer, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **displaySyncEnabled**

##### Syntax Usage

```
res := self->displaySyncEnabled()
```

### [MetalLayer\_drawableSize ¶](#MetalLayer_drawableSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L73)

```
MetalLayer_drawableSize :: proc "c" (
	self: ^MetalLayer, 
) -> CoreFoundation.CGSize {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **drawableSize**

##### Syntax Usage

```
res := self->drawableSize()
```

### [MetalLayer\_frame ¶](#MetalLayer_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L98)

```
MetalLayer_frame :: proc "c" (
	self: ^MetalLayer, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **frame**

##### Syntax Usage

```
res := self->frame()
```

### [MetalLayer\_framebufferOnly ¶](#MetalLayer_framebufferOnly) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L56)

```
MetalLayer_framebufferOnly :: proc "c" (
	self: ^MetalLayer, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **framebufferOnly**

##### Syntax Usage

```
res := self->framebufferOnly()
```

### [MetalLayer\_layer ¶](#MetalLayer_layer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L15)

```
MetalLayer_layer :: proc "c" () -> ^MetalLayer {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **layer**
* Kind: *Class Method*

##### Syntax Usage

```
res := MetalLayer.layer()
```

### [MetalLayer\_maximumDrawableCount ¶](#MetalLayer_maximumDrawableCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L64)

```
MetalLayer_maximumDrawableCount :: proc "c" (
	self: ^MetalLayer, 
) -> objc_Foundation.UInteger {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **maximumDrawableCount**

##### Syntax Usage

```
res := self->maximumDrawableCount()
```

### [MetalLayer\_nextDrawable ¶](#MetalLayer_nextDrawable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L108)

```
MetalLayer_nextDrawable :: proc "c" (
	self: ^MetalLayer, 
) -> ^MetalDrawable {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **nextDrawable**

##### Syntax Usage

```
res := self->nextDrawable()
```

### [MetalLayer\_opaque ¶](#MetalLayer_opaque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L30)

```
MetalLayer_opaque :: proc "c" (
	self: ^MetalLayer, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **opaque**

##### Syntax Usage

```
res := self->opaque()
```

### [MetalLayer\_pixelFormat ¶](#MetalLayer_pixelFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L43)

```
MetalLayer_pixelFormat :: proc "c" (
	self: ^MetalLayer, 
) -> objc_Metal.PixelFormat {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **pixelFormat**

##### Syntax Usage

```
res := self->pixelFormat()
```

### [MetalLayer\_preferredDevice ¶](#MetalLayer_preferredDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L39)

```
MetalLayer_preferredDevice :: proc "c" (
	self: ^MetalLayer, 
) -> ^objc_Metal.Device {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **preferredDevice**

##### Syntax Usage

```
res := self->preferredDevice()
```

### [MetalLayer\_presentsWithTransaction ¶](#MetalLayer_presentsWithTransaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L89)

```
MetalLayer_presentsWithTransaction :: proc "c" (
	self: ^MetalLayer, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **presentsWithTransaction**

##### Syntax Usage

```
res := self->presentsWithTransaction()
```

### [MetalLayer\_setColorSpace ¶](#MetalLayer_setColorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L51)

```
MetalLayer_setColorSpace :: proc "c" (
	self:       ^MetalLayer, 
	colorspace: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setColorSpace**

##### Syntax Usage

```
self->setColorSpace(colorspace)
```

### [MetalLayer\_setDevice ¶](#MetalLayer_setDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L24)

```
MetalLayer_setDevice :: proc "c" (
	self:   ^MetalLayer, 
	device: ^objc_Metal.Device, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setDevice**

##### Syntax Usage

```
self->setDevice(device)
```

### [MetalLayer\_setDisplaySyncEnabled ¶](#MetalLayer_setDisplaySyncEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L85)

```
MetalLayer_setDisplaySyncEnabled :: proc "c" (
	self:    ^MetalLayer, 
	enabled: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setDisplaySyncEnabled**

##### Syntax Usage

```
self->setDisplaySyncEnabled(enabled)
```

### [MetalLayer\_setDrawableSize ¶](#MetalLayer_setDrawableSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L77)

```
MetalLayer_setDrawableSize :: proc "c" (
	self:         ^MetalLayer, 
	drawableSize: CoreFoundation.CGSize, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setDrawableSize**

##### Syntax Usage

```
self->setDrawableSize(drawableSize)
```

### [MetalLayer\_setFrame ¶](#MetalLayer_setFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L102)

```
MetalLayer_setFrame :: proc "c" (
	self:  ^MetalLayer, 
	frame: CoreFoundation.CGRect, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setFrame**

##### Syntax Usage

```
self->setFrame(frame)
```

### [MetalLayer\_setFramebufferOnly ¶](#MetalLayer_setFramebufferOnly) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L60)

```
MetalLayer_setFramebufferOnly :: proc "c" (
	self: ^MetalLayer, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setFramebufferOnly**

##### Syntax Usage

```
self->setFramebufferOnly(ok)
```

### [MetalLayer\_setMaximumDrawableCount ¶](#MetalLayer_setMaximumDrawableCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L68)

```
MetalLayer_setMaximumDrawableCount :: proc "c" (
	self:  ^MetalLayer, 
	count: objc_Foundation.UInteger, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setMaximumDrawableCount**

##### Syntax Usage

```
self->setMaximumDrawableCount(count)
```

### [MetalLayer\_setOpaque ¶](#MetalLayer_setOpaque) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L34)

```
MetalLayer_setOpaque :: proc "c" (
	self:   ^MetalLayer, 
	opaque: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setOpaque**

##### Syntax Usage

```
self->setOpaque(opaque)
```

### [MetalLayer\_setPixelFormat ¶](#MetalLayer_setPixelFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L47)

```
MetalLayer_setPixelFormat :: proc "c" (
	self:        ^MetalLayer, 
	pixelFormat: objc_Metal.PixelFormat, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setPixelFormat**

##### Syntax Usage

```
self->setPixelFormat(pixelFormat)
```

### [MetalLayer\_setPresentsWithTransaction ¶](#MetalLayer_setPresentsWithTransaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L93)

```
MetalLayer_setPresentsWithTransaction :: proc "c" (
	self:    ^MetalLayer, 
	enabled: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MetalLayer](#MetalLayer)
* Name: **setPresentsWithTransaction**

##### Syntax Usage

```
self->setPresentsWithTransaction(enabled)
```

### [transaction\_begin ¶](#transaction_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L137)

```
transaction_begin :: proc() {…}
```

##### Objective-C Method Information

* Class: [Transaction](#Transaction)
* Name: **begin**
* Kind: *Class Method*

##### Syntax Usage

```
Transaction.begin()
```

### [transaction\_commit ¶](#transaction_commit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L142)

```
transaction_commit :: proc() {…}
```

##### Objective-C Method Information

* Class: [Transaction](#Transaction)
* Name: **commit**
* Kind: *Class Method*

##### Syntax Usage

```
Transaction.commit()
```

### [transaction\_flush ¶](#transaction_flush) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin#L147)

```
transaction_flush :: proc() {…}
```

##### Objective-C Method Information

* Class: [Transaction](#Transaction)
* Name: **flush**
* Kind: *Class Method*

##### Syntax Usage

```
Transaction.flush()
```

## Procedure Groups

This section is empty.

## Source Files

* [QuartzCore.odin](https://github.com/odin-lang/Odin/tree/master/vendor/darwin/QuartzCore/QuartzCore.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.743155200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [DrawablePresentedHandler](#DrawablePresentedHandler)
    + [MetalDrawable](#MetalDrawable)
    + [MetalLayer](#MetalLayer)
    + [Transaction](#Transaction)
  * [Procedures](#pkg-Procedures)
    + [MetalDrawable\_addPresentedHandler](#MetalDrawable_addPresentedHandler)
    + [MetalDrawable\_layer](#MetalDrawable_layer)
    + [MetalDrawable\_texture](#MetalDrawable_texture)
    + [MetalLayer\_device](#MetalLayer_device)
    + [MetalLayer\_displaySyncEnabled](#MetalLayer_displaySyncEnabled)
    + [MetalLayer\_drawableSize](#MetalLayer_drawableSize)
    + [MetalLayer\_frame](#MetalLayer_frame)
    + [MetalLayer\_framebufferOnly](#MetalLayer_framebufferOnly)
    + [MetalLayer\_layer](#MetalLayer_layer)
    + [MetalLayer\_maximumDrawableCount](#MetalLayer_maximumDrawableCount)
    + [MetalLayer\_nextDrawable](#MetalLayer_nextDrawable)
    + [MetalLayer\_opaque](#MetalLayer_opaque)
    + [MetalLayer\_pixelFormat](#MetalLayer_pixelFormat)
    + [MetalLayer\_preferredDevice](#MetalLayer_preferredDevice)
    + [MetalLayer\_presentsWithTransaction](#MetalLayer_presentsWithTransaction)
    + [MetalLayer\_setColorSpace](#MetalLayer_setColorSpace)
    + [MetalLayer\_setDevice](#MetalLayer_setDevice)
    + [MetalLayer\_setDisplaySyncEnabled](#MetalLayer_setDisplaySyncEnabled)
    + [MetalLayer\_setDrawableSize](#MetalLayer_setDrawableSize)
    + [MetalLayer\_setFrame](#MetalLayer_setFrame)
    + [MetalLayer\_setFramebufferOnly](#MetalLayer_setFramebufferOnly)
    + [MetalLayer\_setMaximumDrawableCount](#MetalLayer_setMaximumDrawableCount)
    + [MetalLayer\_setOpaque](#MetalLayer_setOpaque)
    + [MetalLayer\_setPixelFormat](#MetalLayer_setPixelFormat)
    + [MetalLayer\_setPresentsWithTransaction](#MetalLayer_setPresentsWithTransaction)
    + [transaction\_begin](#transaction_begin)
    + [transaction\_commit](#transaction_commit)
    + [transaction\_flush](#transaction_flush)
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