package sdl3/image - pkg.odin-lang.org 






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



Current Package: *[sdl3\_image](/vendor/sdl3/image)*

  

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
3. [image](/vendor/sdl3/image)

# package vendor:sdl3/image [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [SDL3 Image](https://wiki.libsdl.org/SDL3_image/FrontPage).

## Index

Types (4)

* [Animation](#Animation)
* [AnimationDecoder](#AnimationDecoder)
* [AnimationDecoderStatus](#AnimationDecoderStatus)
* [AnimationEncoder](#AnimationEncoder)

Constants (32)

* [MAJOR\_VERSION](#MAJOR_VERSION)
* [MINOR\_VERSION](#MINOR_VERSION)
* [PATCHLEVEL](#PATCHLEVEL)
* [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_ALLOW\_INCREMENTAL\_BOOLEAN](#PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_INCREMENTAL_BOOLEAN)
* [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_ALLOW\_PROGRESSIVE\_BOOLEAN](#PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_PROGRESSIVE_BOOLEAN)
* [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_MAX\_THREADS\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_AVIF_MAX_THREADS_NUMBER)
* [PROP\_ANIMATION\_DECODER\_CREATE\_FILENAME\_STRING](#PROP_ANIMATION_DECODER_CREATE_FILENAME_STRING)
* [PROP\_ANIMATION\_DECODER\_CREATE\_GIF\_NUM\_COLORS\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_GIF_NUM_COLORS_NUMBER)
* [PROP\_ANIMATION\_DECODER\_CREATE\_GIF\_TRANSPARENT\_COLOR\_INDEX\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_GIF_TRANSPARENT_COLOR_INDEX_NUMBER)
* [PROP\_ANIMATION\_DECODER\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN](#PROP_ANIMATION_DECODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN)
* [PROP\_ANIMATION\_DECODER\_CREATE\_IOSTREAM\_POINTER](#PROP_ANIMATION_DECODER_CREATE_IOSTREAM_POINTER)
* [PROP\_ANIMATION\_DECODER\_CREATE\_TIMEBASE\_DENOMINATOR\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER)
* [PROP\_ANIMATION\_DECODER\_CREATE\_TIMEBASE\_NUMERATOR\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_TIMEBASE_NUMERATOR_NUMBER)
* [PROP\_ANIMATION\_DECODER\_CREATE\_TYPE\_STRING](#PROP_ANIMATION_DECODER_CREATE_TYPE_STRING)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_AVIF\_KEYFRAME\_INTERVAL\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_AVIF_KEYFRAME_INTERVAL_NUMBER)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_AVIF\_MAX\_THREADS\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_AVIF_MAX_THREADS_NUMBER)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_FILENAME\_STRING](#PROP_ANIMATION_ENCODER_CREATE_FILENAME_STRING)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_GIF\_USE\_LUT\_BOOLEAN](#PROP_ANIMATION_ENCODER_CREATE_GIF_USE_LUT_BOOLEAN)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN](#PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_IOSTREAM\_POINTER](#PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_POINTER)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_QUALITY\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_QUALITY_NUMBER)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_TIMEBASE\_DENOMINATOR\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_TIMEBASE\_NUMERATOR\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_NUMERATOR_NUMBER)
* [PROP\_ANIMATION\_ENCODER\_CREATE\_TYPE\_STRING](#PROP_ANIMATION_ENCODER_CREATE_TYPE_STRING)
* [PROP\_METADATA\_AUTHOR\_STRING](#PROP_METADATA_AUTHOR_STRING)
* [PROP\_METADATA\_COPYRIGHT\_STRING](#PROP_METADATA_COPYRIGHT_STRING)
* [PROP\_METADATA\_CREATION\_TIME\_STRING](#PROP_METADATA_CREATION_TIME_STRING)
* [PROP\_METADATA\_DESCRIPTION\_STRING](#PROP_METADATA_DESCRIPTION_STRING)
* [PROP\_METADATA\_FRAME\_COUNT\_NUMBER](#PROP_METADATA_FRAME_COUNT_NUMBER)
* [PROP\_METADATA\_IGNORE\_PROPS\_BOOLEAN](#PROP_METADATA_IGNORE_PROPS_BOOLEAN)
* [PROP\_METADATA\_LOOP\_COUNT\_NUMBER](#PROP_METADATA_LOOP_COUNT_NUMBER)
* [PROP\_METADATA\_TITLE\_STRING](#PROP_METADATA_TITLE_STRING)

Variables (0)

This section is empty.

Procedures (102)

* [AddAnimationEncoderFrame](#AddAnimationEncoderFrame)
* [CloseAnimationDecoder](#CloseAnimationDecoder)
* [CloseAnimationEncoder](#CloseAnimationEncoder)
* [CreateAnimatedCursor](#CreateAnimatedCursor)
* [CreateAnimationDecoder](#CreateAnimationDecoder)
* [CreateAnimationDecoderWithProperties](#CreateAnimationDecoderWithProperties)
* [CreateAnimationDecoder\_IO](#CreateAnimationDecoder_IO)
* [CreateAnimationEncoder](#CreateAnimationEncoder)
* [CreateAnimationEncoderWithProperties](#CreateAnimationEncoderWithProperties)
* [CreateAnimationEncoder\_IO](#CreateAnimationEncoder_IO)
* [FreeAnimation](#FreeAnimation)
* [GetAnimationDecoderFrame](#GetAnimationDecoderFrame)
* [GetAnimationDecoderProperties](#GetAnimationDecoderProperties)
* [GetAnimationDecoderStatus](#GetAnimationDecoderStatus)
* [GetClipboardImage](#GetClipboardImage)
* [Load](#Load)
* [LoadANIAnimation\_IO](#LoadANIAnimation_IO)
* [LoadAPNGAnimation\_IO](#LoadAPNGAnimation_IO)
* [LoadAVIFAnimation\_IO](#LoadAVIFAnimation_IO)
* [LoadAVIF\_IO](#LoadAVIF_IO)
* [LoadAnimation](#LoadAnimation)
* [LoadAnimationTyped\_IO](#LoadAnimationTyped_IO)
* [LoadAnimation\_IO](#LoadAnimation_IO)
* [LoadBMP\_IO](#LoadBMP_IO)
* [LoadCUR\_IO](#LoadCUR_IO)
* [LoadGIFAnimation\_IO](#LoadGIFAnimation_IO)
* [LoadGIF\_IO](#LoadGIF_IO)
* [LoadGPUTexture](#LoadGPUTexture)
* [LoadGPUTextureTyped\_IO](#LoadGPUTextureTyped_IO)
* [LoadGPUTexture\_IO](#LoadGPUTexture_IO)
* [LoadICO\_IO](#LoadICO_IO)
* [LoadJPG\_IO](#LoadJPG_IO)
* [LoadJXL\_IO](#LoadJXL_IO)
* [LoadLBM\_IO](#LoadLBM_IO)
* [LoadPCX\_IO](#LoadPCX_IO)
* [LoadPNG\_IO](#LoadPNG_IO)
* [LoadPNM\_IO](#LoadPNM_IO)
* [LoadQOI\_IO](#LoadQOI_IO)
* [LoadSVG\_IO](#LoadSVG_IO)
* [LoadSizedSVG\_IO](#LoadSizedSVG_IO)
* [LoadTGA\_IO](#LoadTGA_IO)
* [LoadTIF\_IO](#LoadTIF_IO)
* [LoadTexture](#LoadTexture)
* [LoadTextureTyped\_IO](#LoadTextureTyped_IO)
* [LoadTexture\_IO](#LoadTexture_IO)
* [LoadTyped\_IO](#LoadTyped_IO)
* [LoadWEBPAnimation\_IO](#LoadWEBPAnimation_IO)
* [LoadWEBP\_IO](#LoadWEBP_IO)
* [LoadXCF\_IO](#LoadXCF_IO)
* [LoadXPM\_IO](#LoadXPM_IO)
* [LoadXV\_IO](#LoadXV_IO)
* [Load\_IO](#Load_IO)
* [ReadXPMFromArray](#ReadXPMFromArray)
* [ReadXPMFromArrayToRGB888](#ReadXPMFromArrayToRGB888)
* [ResetAnimationDecoder](#ResetAnimationDecoder)
* [Save](#Save)
* [SaveANIAnimation\_IO](#SaveANIAnimation_IO)
* [SaveAPNGAnimation\_IO](#SaveAPNGAnimation_IO)
* [SaveAVIF](#SaveAVIF)
* [SaveAVIFAnimation\_IO](#SaveAVIFAnimation_IO)
* [SaveAVIF\_IO](#SaveAVIF_IO)
* [SaveAnimation](#SaveAnimation)
* [SaveAnimationTyped\_IO](#SaveAnimationTyped_IO)
* [SaveBMP](#SaveBMP)
* [SaveBMP\_IO](#SaveBMP_IO)
* [SaveCUR](#SaveCUR)
* [SaveCUR\_IO](#SaveCUR_IO)
* [SaveGIF](#SaveGIF)
* [SaveGIFAnimation\_IO](#SaveGIFAnimation_IO)
* [SaveGIF\_IO](#SaveGIF_IO)
* [SaveICO](#SaveICO)
* [SaveICO\_IO](#SaveICO_IO)
* [SaveJPG](#SaveJPG)
* [SaveJPG\_IO](#SaveJPG_IO)
* [SavePNG](#SavePNG)
* [SavePNG\_IO](#SavePNG_IO)
* [SaveTGA](#SaveTGA)
* [SaveTGA\_IO](#SaveTGA_IO)
* [SaveTyped\_IO](#SaveTyped_IO)
* [SaveWEBP](#SaveWEBP)
* [SaveWEBPAnimation\_IO](#SaveWEBPAnimation_IO)
* [SaveWEBP\_IO](#SaveWEBP_IO)
* [Version](#Version)
* [isANI](#isANI)
* [isAVIF](#isAVIF)
* [isBMP](#isBMP)
* [isCUR](#isCUR)
* [isGIF](#isGIF)
* [isICO](#isICO)
* [isJPG](#isJPG)
* [isJXL](#isJXL)
* [isLBM](#isLBM)
* [isPCX](#isPCX)
* [isPNG](#isPNG)
* [isPNM](#isPNM)
* [isQOI](#isQOI)
* [isSVG](#isSVG)
* [isTIF](#isTIF)
* [isWEBP](#isWEBP)
* [isXCF](#isXCF)
* [isXPM](#isXPM)
* [isXV](#isXV)

Procedure Groups (0)

This section is empty.

## Types

### [Animation ¶](#Animation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L17)

```
Animation :: struct {
	w:      i32,
	h:      i32,
	count:  i32,
	frames: [^]^sdl3.Surface,
	delays: [^]i32,
}
```

##### Related Procedures With Parameters

* [CreateAnimatedCursor](/vendor/sdl3/image/#CreateAnimatedCursor)
* [FreeAnimation](/vendor/sdl3/image/#FreeAnimation)
* [SaveANIAnimation\_IO](/vendor/sdl3/image/#SaveANIAnimation_IO)
* [SaveAPNGAnimation\_IO](/vendor/sdl3/image/#SaveAPNGAnimation_IO)
* [SaveAVIFAnimation\_IO](/vendor/sdl3/image/#SaveAVIFAnimation_IO)
* [SaveAnimation](/vendor/sdl3/image/#SaveAnimation)
* [SaveAnimationTyped\_IO](/vendor/sdl3/image/#SaveAnimationTyped_IO)
* [SaveGIFAnimation\_IO](/vendor/sdl3/image/#SaveGIFAnimation_IO)
* [SaveWEBPAnimation\_IO](/vendor/sdl3/image/#SaveWEBPAnimation_IO)



##### Related Procedures With Returns

* [LoadANIAnimation\_IO](/vendor/sdl3/image/#LoadANIAnimation_IO)
* [LoadAPNGAnimation\_IO](/vendor/sdl3/image/#LoadAPNGAnimation_IO)
* [LoadAVIFAnimation\_IO](/vendor/sdl3/image/#LoadAVIFAnimation_IO)
* [LoadAnimation](/vendor/sdl3/image/#LoadAnimation)
* [LoadAnimationTyped\_IO](/vendor/sdl3/image/#LoadAnimationTyped_IO)
* [LoadAnimation\_IO](/vendor/sdl3/image/#LoadAnimation_IO)
* [LoadGIFAnimation\_IO](/vendor/sdl3/image/#LoadGIFAnimation_IO)
* [LoadWEBPAnimation\_IO](/vendor/sdl3/image/#LoadWEBPAnimation_IO)

### [AnimationDecoder ¶](#AnimationDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L45)

```
AnimationDecoder :: struct {}
```

##### Related Procedures With Parameters

* [CloseAnimationDecoder](/vendor/sdl3/image/#CloseAnimationDecoder)
* [GetAnimationDecoderFrame](/vendor/sdl3/image/#GetAnimationDecoderFrame)
* [GetAnimationDecoderProperties](/vendor/sdl3/image/#GetAnimationDecoderProperties)
* [GetAnimationDecoderStatus](/vendor/sdl3/image/#GetAnimationDecoderStatus)
* [ResetAnimationDecoder](/vendor/sdl3/image/#ResetAnimationDecoder)



##### Related Procedures With Returns

* [CreateAnimationDecoder](/vendor/sdl3/image/#CreateAnimationDecoder)
* [CreateAnimationDecoderWithProperties](/vendor/sdl3/image/#CreateAnimationDecoderWithProperties)
* [CreateAnimationDecoder\_IO](/vendor/sdl3/image/#CreateAnimationDecoder_IO)

### [AnimationDecoderStatus ¶](#AnimationDecoderStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L38)

```
AnimationDecoderStatus :: enum i32 {
	INVALID  = -1, 
	OK, 
	FAILED, 
	COMPLETE, 
}
```

##### Related Procedures With Returns

* [GetAnimationDecoderStatus](/vendor/sdl3/image/#GetAnimationDecoderStatus)

### [AnimationEncoder ¶](#AnimationEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L24)

```
AnimationEncoder :: struct {}
```

##### Related Procedures With Parameters

* [AddAnimationEncoderFrame](/vendor/sdl3/image/#AddAnimationEncoderFrame)
* [CloseAnimationEncoder](/vendor/sdl3/image/#CloseAnimationEncoder)



##### Related Procedures With Returns

* [CreateAnimationEncoder](/vendor/sdl3/image/#CreateAnimationEncoder)
* [CreateAnimationEncoderWithProperties](/vendor/sdl3/image/#CreateAnimationEncoderWithProperties)
* [CreateAnimationEncoder\_IO](/vendor/sdl3/image/#CreateAnimationEncoder_IO)

## Constants

### [MAJOR\_VERSION ¶](#MAJOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L13)

```
MAJOR_VERSION :: 3
```

### [MINOR\_VERSION ¶](#MINOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L14)

```
MINOR_VERSION :: 4
```

### [PATCHLEVEL ¶](#PATCHLEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L15)

```
PATCHLEVEL :: 0
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_ALLOW\_INCREMENTAL\_BOOLEAN ¶](#PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_INCREMENTAL_BOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L55)

```
PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_INCREMENTAL_BOOLEAN :: "SDL_image.animation_decoder.create.avif.allow_incremental"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_ALLOW\_PROGRESSIVE\_BOOLEAN ¶](#PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_PROGRESSIVE_BOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L56)

```
PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_PROGRESSIVE_BOOLEAN :: "SDL_image.animation_decoder.create.avif.allow_progressive"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_MAX\_THREADS\_NUMBER ¶](#PROP_ANIMATION_DECODER_CREATE_AVIF_MAX_THREADS_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L54)

```
PROP_ANIMATION_DECODER_CREATE_AVIF_MAX_THREADS_NUMBER :: "SDL_image.animation_decoder.create.avif.max_threads"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_FILENAME\_STRING ¶](#PROP_ANIMATION_DECODER_CREATE_FILENAME_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L47)

```
PROP_ANIMATION_DECODER_CREATE_FILENAME_STRING :: "SDL_image.animation_decoder.create.filename"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_GIF\_NUM\_COLORS\_NUMBER ¶](#PROP_ANIMATION_DECODER_CREATE_GIF_NUM_COLORS_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L58)

```
PROP_ANIMATION_DECODER_CREATE_GIF_NUM_COLORS_NUMBER :: "SDL_image.animation_encoder.create.gif.num_colors"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_GIF\_TRANSPARENT\_COLOR\_INDEX\_NUMBER ¶](#PROP_ANIMATION_DECODER_CREATE_GIF_TRANSPARENT_COLOR_INDEX_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L57)

```
PROP_ANIMATION_DECODER_CREATE_GIF_TRANSPARENT_COLOR_INDEX_NUMBER :: "SDL_image.animation_encoder.create.gif.transparent_color_index"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN ¶](#PROP_ANIMATION_DECODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L49)

```
PROP_ANIMATION_DECODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN :: "SDL_image.animation_decoder.create.iostream.autoclose"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_IOSTREAM\_POINTER ¶](#PROP_ANIMATION_DECODER_CREATE_IOSTREAM_POINTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L48)

```
PROP_ANIMATION_DECODER_CREATE_IOSTREAM_POINTER :: "SDL_image.animation_decoder.create.iostream"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_TIMEBASE\_DENOMINATOR\_NUMBER ¶](#PROP_ANIMATION_DECODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L52)

```
PROP_ANIMATION_DECODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER :: "SDL_image.animation_decoder.create.timebase.denominator"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_TIMEBASE\_NUMERATOR\_NUMBER ¶](#PROP_ANIMATION_DECODER_CREATE_TIMEBASE_NUMERATOR_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L51)

```
PROP_ANIMATION_DECODER_CREATE_TIMEBASE_NUMERATOR_NUMBER :: "SDL_image.animation_decoder.create.timebase.numerator"
```

### [PROP\_ANIMATION\_DECODER\_CREATE\_TYPE\_STRING ¶](#PROP_ANIMATION_DECODER_CREATE_TYPE_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L50)

```
PROP_ANIMATION_DECODER_CREATE_TYPE_STRING :: "SDL_image.animation_decoder.create.type"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_AVIF\_KEYFRAME\_INTERVAL\_NUMBER ¶](#PROP_ANIMATION_ENCODER_CREATE_AVIF_KEYFRAME_INTERVAL_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L35)

```
PROP_ANIMATION_ENCODER_CREATE_AVIF_KEYFRAME_INTERVAL_NUMBER :: "SDL_image.animation_encoder.create.avif.keyframe_interval"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_AVIF\_MAX\_THREADS\_NUMBER ¶](#PROP_ANIMATION_ENCODER_CREATE_AVIF_MAX_THREADS_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L34)

```
PROP_ANIMATION_ENCODER_CREATE_AVIF_MAX_THREADS_NUMBER :: "SDL_image.animation_encoder.create.avif.max_threads"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_FILENAME\_STRING ¶](#PROP_ANIMATION_ENCODER_CREATE_FILENAME_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L26)

```
PROP_ANIMATION_ENCODER_CREATE_FILENAME_STRING :: "SDL_image.animation_encoder.create.filename"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_GIF\_USE\_LUT\_BOOLEAN ¶](#PROP_ANIMATION_ENCODER_CREATE_GIF_USE_LUT_BOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L36)

```
PROP_ANIMATION_ENCODER_CREATE_GIF_USE_LUT_BOOLEAN :: "SDL_image.animation_encoder.create.gif.use_lut"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN ¶](#PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L28)

```
PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN :: "SDL_image.animation_encoder.create.iostream.autoclose"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_IOSTREAM\_POINTER ¶](#PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_POINTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L27)

```
PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_POINTER :: "SDL_image.animation_encoder.create.iostream"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_QUALITY\_NUMBER ¶](#PROP_ANIMATION_ENCODER_CREATE_QUALITY_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L30)

```
PROP_ANIMATION_ENCODER_CREATE_QUALITY_NUMBER :: "SDL_image.animation_encoder.create.quality"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_TIMEBASE\_DENOMINATOR\_NUMBER ¶](#PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L32)

```
PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER :: "SDL_image.animation_encoder.create.timebase.denominator"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_TIMEBASE\_NUMERATOR\_NUMBER ¶](#PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_NUMERATOR_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L31)

```
PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_NUMERATOR_NUMBER :: "SDL_image.animation_encoder.create.timebase.numerator"
```

### [PROP\_ANIMATION\_ENCODER\_CREATE\_TYPE\_STRING ¶](#PROP_ANIMATION_ENCODER_CREATE_TYPE_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L29)

```
PROP_ANIMATION_ENCODER_CREATE_TYPE_STRING :: "SDL_image.animation_encoder.create.type"
```

### [PROP\_METADATA\_AUTHOR\_STRING ¶](#PROP_METADATA_AUTHOR_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L64)

```
PROP_METADATA_AUTHOR_STRING :: "SDL_image.metadata.author"
```

### [PROP\_METADATA\_COPYRIGHT\_STRING ¶](#PROP_METADATA_COPYRIGHT_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L62)

```
PROP_METADATA_COPYRIGHT_STRING :: "SDL_image.metadata.copyright"
```

### [PROP\_METADATA\_CREATION\_TIME\_STRING ¶](#PROP_METADATA_CREATION_TIME_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L65)

```
PROP_METADATA_CREATION_TIME_STRING :: "SDL_image.metadata.creation_time"
```

### [PROP\_METADATA\_DESCRIPTION\_STRING ¶](#PROP_METADATA_DESCRIPTION_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L61)

```
PROP_METADATA_DESCRIPTION_STRING :: "SDL_image.metadata.description"
```

### [PROP\_METADATA\_FRAME\_COUNT\_NUMBER ¶](#PROP_METADATA_FRAME_COUNT_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L66)

```
PROP_METADATA_FRAME_COUNT_NUMBER :: "SDL_image.metadata.frame_count"
```

### [PROP\_METADATA\_IGNORE\_PROPS\_BOOLEAN ¶](#PROP_METADATA_IGNORE_PROPS_BOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L60)

```
PROP_METADATA_IGNORE_PROPS_BOOLEAN :: "SDL_image.metadata.ignore_props"
```

### [PROP\_METADATA\_LOOP\_COUNT\_NUMBER ¶](#PROP_METADATA_LOOP_COUNT_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L67)

```
PROP_METADATA_LOOP_COUNT_NUMBER :: "SDL_image.metadata.loop_count"
```

### [PROP\_METADATA\_TITLE\_STRING ¶](#PROP_METADATA_TITLE_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L63)

```
PROP_METADATA_TITLE_STRING :: "SDL_image.metadata.title"
```

## Variables

This section is empty.

## Procedures

### [AddAnimationEncoderFrame ¶](#AddAnimationEncoderFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L180)

```
AddAnimationEncoderFrame :: proc "c" (encoder: ^AnimationEncoder, surface: ^sdl3.Surface, duration: u64) -> bool ---
```

### [CloseAnimationDecoder ¶](#CloseAnimationDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L191)

```
CloseAnimationDecoder :: proc "c" (decoder: ^AnimationDecoder) -> bool ---
```

### [CloseAnimationEncoder ¶](#CloseAnimationEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L181)

```
CloseAnimationEncoder :: proc "c" (encoder: ^AnimationEncoder) -> bool ---
```

### [CreateAnimatedCursor ¶](#CreateAnimatedCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L173)

```
CreateAnimatedCursor :: proc "c" (anim: ^Animation, hot_x: i32, hot_y: i32) -> ^sdl3.Cursor ---
```

### [CreateAnimationDecoder ¶](#CreateAnimationDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L184)

```
CreateAnimationDecoder :: proc "c" (file: cstring) -> ^AnimationDecoder ---
```

 

Animation decoder functions

### [CreateAnimationDecoderWithProperties ¶](#CreateAnimationDecoderWithProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L186)

```
CreateAnimationDecoderWithProperties :: proc "c" (props: sdl3.PropertiesID) -> ^AnimationDecoder ---
```

### [CreateAnimationDecoder\_IO ¶](#CreateAnimationDecoder_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L185)

```
CreateAnimationDecoder_IO :: proc "c" (src: ^sdl3.IOStream, closeio: bool, type: cstring) -> ^AnimationDecoder ---
```

### [CreateAnimationEncoder ¶](#CreateAnimationEncoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L177)

```
CreateAnimationEncoder :: proc "c" (file: cstring) -> ^AnimationEncoder ---
```

 

Animation encoder functions

### [CreateAnimationEncoderWithProperties ¶](#CreateAnimationEncoderWithProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L179)

```
CreateAnimationEncoderWithProperties :: proc "c" (props: sdl3.PropertiesID) -> ^AnimationEncoder ---
```

### [CreateAnimationEncoder\_IO ¶](#CreateAnimationEncoder_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L178)

```
CreateAnimationEncoder_IO :: proc "c" (dst: ^sdl3.IOStream, closeio: bool, type: cstring) -> ^AnimationEncoder ---
```

### [FreeAnimation ¶](#FreeAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L174)

```
FreeAnimation :: proc "c" (anim: ^Animation) ---
```

### [GetAnimationDecoderFrame ¶](#GetAnimationDecoderFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L188)

```
GetAnimationDecoderFrame :: proc "c" (decoder: ^AnimationDecoder, frame: ^^sdl3.Surface, duration: ^u64) -> bool ---
```

### [GetAnimationDecoderProperties ¶](#GetAnimationDecoderProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L187)

```
GetAnimationDecoderProperties :: proc "c" (decoder: ^AnimationDecoder) -> sdl3.PropertiesID ---
```

### [GetAnimationDecoderStatus ¶](#GetAnimationDecoderStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L189)

```
GetAnimationDecoderStatus :: proc "c" (decoder: ^AnimationDecoder) -> AnimationDecoderStatus ---
```

### [GetClipboardImage ¶](#GetClipboardImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L97)

```
GetClipboardImage :: proc "c" () -> ^sdl3.Surface ---
```

 

Get the image currently in the clipboard.

### [Load ¶](#Load) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L83)

```
Load :: proc "c" (file: cstring) -> ^sdl3.Surface ---
```

 

Convenience functions

### [LoadANIAnimation\_IO ¶](#LoadANIAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L194)

```
LoadANIAnimation_IO :: proc "c" (src: ^sdl3.IOStream) -> ^Animation ---
```

 

Individual loading functions

### [LoadAPNGAnimation\_IO ¶](#LoadAPNGAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L195)

```
LoadAPNGAnimation_IO :: proc "c" (src: ^sdl3.IOStream) -> ^Animation ---
```

### [LoadAVIFAnimation\_IO ¶](#LoadAVIFAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L196)

```
LoadAVIFAnimation_IO :: proc "c" (src: ^sdl3.IOStream) -> ^Animation ---
```

### [LoadAVIF\_IO ¶](#LoadAVIF_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L121)

```
LoadAVIF_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

 

Individual loading functions

### [LoadAnimation ¶](#LoadAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L168)

```
LoadAnimation :: proc "c" (file: cstring) -> ^Animation ---
```

### [LoadAnimationTyped\_IO ¶](#LoadAnimationTyped_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L170)

```
LoadAnimationTyped_IO :: proc "c" (src: ^sdl3.IOStream, closeio: bool, type: cstring) -> ^Animation ---
```

### [LoadAnimation\_IO ¶](#LoadAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L169)

```
LoadAnimation_IO :: proc "c" (src: ^sdl3.IOStream, closeio: bool) -> ^Animation ---
```

### [LoadBMP\_IO ¶](#LoadBMP_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L124)

```
LoadBMP_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadCUR\_IO ¶](#LoadCUR_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L123)

```
LoadCUR_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadGIFAnimation\_IO ¶](#LoadGIFAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L197)

```
LoadGIFAnimation_IO :: proc "c" (src: ^sdl3.IOStream) -> ^Animation ---
```

### [LoadGIF\_IO ¶](#LoadGIF_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L125)

```
LoadGIF_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadGPUTexture ¶](#LoadGPUTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L92)

```
LoadGPUTexture :: proc "c" (device: ^sdl3.GPUDevice, copy_pass: ^sdl3.GPUCopyPass, file: cstring, width: ^i32, height: ^i32) -> ^sdl3.GPUTexture ---
```

 

Load an image directly into a GPU texture.

### [LoadGPUTextureTyped\_IO ¶](#LoadGPUTextureTyped_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L94)

```
LoadGPUTextureTyped_IO :: proc "c" (
	device:    ^sdl3.GPUDevice, 
	copy_pass: ^sdl3.GPUCopyPass, 
	src:       ^sdl3.IOStream, 
	closeio:   bool, 
	type:      cstring, 
	width:     ^i32, 
	height:    ^i32, 
) -> ^sdl3.GPUTexture ---
```

### [LoadGPUTexture\_IO ¶](#LoadGPUTexture_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L93)

```
LoadGPUTexture_IO :: proc "c" (
	device:    ^sdl3.GPUDevice, 
	copy_pass: ^sdl3.GPUCopyPass, 
	src:       ^sdl3.IOStream, 
	closeio:   bool, 
	width:     ^i32, 
	height:    ^i32, 
) -> ^sdl3.GPUTexture ---
```

### [LoadICO\_IO ¶](#LoadICO_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L122)

```
LoadICO_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadJPG\_IO ¶](#LoadJPG_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L126)

```
LoadJPG_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadJXL\_IO ¶](#LoadJXL_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L127)

```
LoadJXL_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadLBM\_IO ¶](#LoadLBM_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L128)

```
LoadLBM_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadPCX\_IO ¶](#LoadPCX_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L129)

```
LoadPCX_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadPNG\_IO ¶](#LoadPNG_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L130)

```
LoadPNG_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadPNM\_IO ¶](#LoadPNM_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L131)

```
LoadPNM_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadQOI\_IO ¶](#LoadQOI_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L133)

```
LoadQOI_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadSVG\_IO ¶](#LoadSVG_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L132)

```
LoadSVG_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadSizedSVG\_IO ¶](#LoadSizedSVG_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L141)

```
LoadSizedSVG_IO :: proc "c" (src: ^sdl3.IOStream, width, height: i32) -> ^sdl3.Surface ---
```

### [LoadTGA\_IO ¶](#LoadTGA_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L134)

```
LoadTGA_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadTIF\_IO ¶](#LoadTIF_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L135)

```
LoadTIF_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadTexture ¶](#LoadTexture) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L87)

```
LoadTexture :: proc "c" (renderer: ^sdl3.Renderer, file: cstring) -> ^sdl3.Texture ---
```

 

Load an image directly into a render texture.

### [LoadTextureTyped\_IO ¶](#LoadTextureTyped_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L89)

```
LoadTextureTyped_IO :: proc "c" (renderer: ^sdl3.Renderer, src: ^sdl3.IOStream, closeio: bool, type: cstring) -> ^sdl3.Texture ---
```

### [LoadTexture\_IO ¶](#LoadTexture_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L88)

```
LoadTexture_IO :: proc "c" (renderer: ^sdl3.Renderer, src: ^sdl3.IOStream, closeio: bool) -> ^sdl3.Texture ---
```

### [LoadTyped\_IO ¶](#LoadTyped_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L80)

```
LoadTyped_IO :: proc "c" (src: ^sdl3.IOStream, closeio: bool, type: cstring) -> ^sdl3.Surface ---
```

 

Load an image from an SDL data source.

```
   The 'type' may be one of: "BMP", "GIF", "PNG", etc.
   If the image format supports a transparent pixel, SDL will set the
   colorkey for the surface.  You can enable RLE acceleration on the
   surface afterwards by calling:
    SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
```

### [LoadWEBPAnimation\_IO ¶](#LoadWEBPAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L198)

```
LoadWEBPAnimation_IO :: proc "c" (src: ^sdl3.IOStream) -> ^Animation ---
```

### [LoadWEBP\_IO ¶](#LoadWEBP_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L139)

```
LoadWEBP_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadXCF\_IO ¶](#LoadXCF_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L136)

```
LoadXCF_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadXPM\_IO ¶](#LoadXPM_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L137)

```
LoadXPM_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [LoadXV\_IO ¶](#LoadXV_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L138)

```
LoadXV_IO :: proc "c" (src: ^sdl3.IOStream) -> ^sdl3.Surface ---
```

### [Load\_IO ¶](#Load_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L84)

```
Load_IO :: proc "c" (src: ^sdl3.IOStream, closeio: bool) -> ^sdl3.Surface ---
```

### [ReadXPMFromArray ¶](#ReadXPMFromArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L143)

```
ReadXPMFromArray :: proc "c" (xpm: [^]cstring) -> ^sdl3.Surface ---
```

### [ReadXPMFromArrayToRGB888 ¶](#ReadXPMFromArrayToRGB888) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L144)

```
ReadXPMFromArrayToRGB888 :: proc "c" (xpm: [^]cstring) -> ^sdl3.Surface ---
```

### [ResetAnimationDecoder ¶](#ResetAnimationDecoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L190)

```
ResetAnimationDecoder :: proc "c" (decoder: ^AnimationDecoder) -> bool ---
```

### [Save ¶](#Save) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L147)

```
Save :: proc "c" (surface: ^sdl3.Surface, file: cstring) -> bool ---
```

 

Individual saving functions

### [SaveANIAnimation\_IO ¶](#SaveANIAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L201)

```
SaveANIAnimation_IO :: proc "c" (anim: ^Animation, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

 

Individual saving functions

### [SaveAPNGAnimation\_IO ¶](#SaveAPNGAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L202)

```
SaveAPNGAnimation_IO :: proc "c" (anim: ^Animation, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveAVIF ¶](#SaveAVIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L149)

```
SaveAVIF :: proc "c" (surface: ^sdl3.Surface, file: cstring, quality: i32) -> bool ---
```

### [SaveAVIFAnimation\_IO ¶](#SaveAVIFAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L203)

```
SaveAVIFAnimation_IO :: proc "c" (anim: ^Animation, dst: ^sdl3.IOStream, closeio: bool, quality: i32) -> bool ---
```

### [SaveAVIF\_IO ¶](#SaveAVIF_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L150)

```
SaveAVIF_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool, quality: i32) -> bool ---
```

### [SaveAnimation ¶](#SaveAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L171)

```
SaveAnimation :: proc "c" (anim: ^Animation, file: cstring) -> bool ---
```

### [SaveAnimationTyped\_IO ¶](#SaveAnimationTyped_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L172)

```
SaveAnimationTyped_IO :: proc "c" (anim: ^Animation, dst: ^sdl3.IOStream, closeio: bool, type: cstring) -> bool ---
```

### [SaveBMP ¶](#SaveBMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L151)

```
SaveBMP :: proc "c" (surface: ^sdl3.Surface, file: cstring) -> bool ---
```

### [SaveBMP\_IO ¶](#SaveBMP_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L152)

```
SaveBMP_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveCUR ¶](#SaveCUR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L153)

```
SaveCUR :: proc "c" (surface: ^sdl3.Surface, file: cstring) -> bool ---
```

### [SaveCUR\_IO ¶](#SaveCUR_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L154)

```
SaveCUR_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveGIF ¶](#SaveGIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L155)

```
SaveGIF :: proc "c" (surface: ^sdl3.Surface, file: cstring) -> bool ---
```

### [SaveGIFAnimation\_IO ¶](#SaveGIFAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L204)

```
SaveGIFAnimation_IO :: proc "c" (anim: ^Animation, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveGIF\_IO ¶](#SaveGIF_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L156)

```
SaveGIF_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveICO ¶](#SaveICO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L157)

```
SaveICO :: proc "c" (surface: ^sdl3.Surface, file: cstring) -> bool ---
```

### [SaveICO\_IO ¶](#SaveICO_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L158)

```
SaveICO_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveJPG ¶](#SaveJPG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L159)

```
SaveJPG :: proc "c" (surface: ^sdl3.Surface, file: cstring, quality: i32) -> bool ---
```

### [SaveJPG\_IO ¶](#SaveJPG_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L160)

```
SaveJPG_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool, quality: i32) -> bool ---
```

### [SavePNG ¶](#SavePNG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L161)

```
SavePNG :: proc "c" (surface: ^sdl3.Surface, file: cstring) -> bool ---
```

### [SavePNG\_IO ¶](#SavePNG_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L162)

```
SavePNG_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveTGA ¶](#SaveTGA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L163)

```
SaveTGA :: proc "c" (surface: ^sdl3.Surface, file: cstring) -> bool ---
```

### [SaveTGA\_IO ¶](#SaveTGA_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L164)

```
SaveTGA_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool) -> bool ---
```

### [SaveTyped\_IO ¶](#SaveTyped_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L148)

```
SaveTyped_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool, type: cstring) -> bool ---
```

### [SaveWEBP ¶](#SaveWEBP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L165)

```
SaveWEBP :: proc "c" (surface: ^sdl3.Surface, file: cstring, quality: f32) -> bool ---
```

### [SaveWEBPAnimation\_IO ¶](#SaveWEBPAnimation_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L205)

```
SaveWEBPAnimation_IO :: proc "c" (anim: ^Animation, dst: ^sdl3.IOStream, closeio: bool, quality: i32) -> bool ---
```

### [SaveWEBP\_IO ¶](#SaveWEBP_IO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L166)

```
SaveWEBP_IO :: proc "c" (surface: ^sdl3.Surface, dst: ^sdl3.IOStream, closeio: bool, quality: f32) -> bool ---
```

### [Version ¶](#Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L71)

```
Version :: proc "c" () -> i32 ---
```

### [isANI ¶](#isANI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L100)

```
isANI :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

 

Functions to detect a file type, given a seekable source

### [isAVIF ¶](#isAVIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L101)

```
isAVIF :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isBMP ¶](#isBMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L104)

```
isBMP :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isCUR ¶](#isCUR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L103)

```
isCUR :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isGIF ¶](#isGIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L105)

```
isGIF :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isICO ¶](#isICO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L102)

```
isICO :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isJPG ¶](#isJPG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L106)

```
isJPG :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isJXL ¶](#isJXL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L107)

```
isJXL :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isLBM ¶](#isLBM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L108)

```
isLBM :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isPCX ¶](#isPCX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L109)

```
isPCX :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isPNG ¶](#isPNG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L110)

```
isPNG :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isPNM ¶](#isPNM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L111)

```
isPNM :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isQOI ¶](#isQOI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L113)

```
isQOI :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isSVG ¶](#isSVG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L112)

```
isSVG :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isTIF ¶](#isTIF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L114)

```
isTIF :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isWEBP ¶](#isWEBP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L118)

```
isWEBP :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isXCF ¶](#isXCF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L115)

```
isXCF :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isXPM ¶](#isXPM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L116)

```
isXPM :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

### [isXV ¶](#isXV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin#L117)

```
isXV :: proc "c" (src: ^sdl3.IOStream) -> bool ---
```

## Procedure Groups

This section is empty.

## Source Files

* [sdl\_image.odin](https://github.com/odin-lang/Odin/tree/master/vendor/sdl3/image/sdl_image.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.519790900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Animation](#Animation)
    + [AnimationDecoder](#AnimationDecoder)
    + [AnimationDecoderStatus](#AnimationDecoderStatus)
    + [AnimationEncoder](#AnimationEncoder)
  * [Constants](#pkg-Constants)
    + [MAJOR\_VERSION](#MAJOR_VERSION)
    + [MINOR\_VERSION](#MINOR_VERSION)
    + [PATCHLEVEL](#PATCHLEVEL)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_ALLOW\_INCREMENTAL\_BOOLEAN](#PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_INCREMENTAL_BOOLEAN)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_ALLOW\_PROGRESSIVE\_BOOLEAN](#PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_PROGRESSIVE_BOOLEAN)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_AVIF\_MAX\_THREADS\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_AVIF_MAX_THREADS_NUMBER)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_FILENAME\_STRING](#PROP_ANIMATION_DECODER_CREATE_FILENAME_STRING)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_GIF\_NUM\_COLORS\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_GIF_NUM_COLORS_NUMBER)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_GIF\_TRANSPARENT\_COLOR\_INDEX\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_GIF_TRANSPARENT_COLOR_INDEX_NUMBER)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN](#PROP_ANIMATION_DECODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_IOSTREAM\_POINTER](#PROP_ANIMATION_DECODER_CREATE_IOSTREAM_POINTER)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_TIMEBASE\_DENOMINATOR\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_TIMEBASE\_NUMERATOR\_NUMBER](#PROP_ANIMATION_DECODER_CREATE_TIMEBASE_NUMERATOR_NUMBER)
    + [PROP\_ANIMATION\_DECODER\_CREATE\_TYPE\_STRING](#PROP_ANIMATION_DECODER_CREATE_TYPE_STRING)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_AVIF\_KEYFRAME\_INTERVAL\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_AVIF_KEYFRAME_INTERVAL_NUMBER)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_AVIF\_MAX\_THREADS\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_AVIF_MAX_THREADS_NUMBER)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_FILENAME\_STRING](#PROP_ANIMATION_ENCODER_CREATE_FILENAME_STRING)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_GIF\_USE\_LUT\_BOOLEAN](#PROP_ANIMATION_ENCODER_CREATE_GIF_USE_LUT_BOOLEAN)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_IOSTREAM\_AUTOCLOSE\_BOOLEAN](#PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_IOSTREAM\_POINTER](#PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_POINTER)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_QUALITY\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_QUALITY_NUMBER)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_TIMEBASE\_DENOMINATOR\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_TIMEBASE\_NUMERATOR\_NUMBER](#PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_NUMERATOR_NUMBER)
    + [PROP\_ANIMATION\_ENCODER\_CREATE\_TYPE\_STRING](#PROP_ANIMATION_ENCODER_CREATE_TYPE_STRING)
    + [PROP\_METADATA\_AUTHOR\_STRING](#PROP_METADATA_AUTHOR_STRING)
    + [PROP\_METADATA\_COPYRIGHT\_STRING](#PROP_METADATA_COPYRIGHT_STRING)
    + [PROP\_METADATA\_CREATION\_TIME\_STRING](#PROP_METADATA_CREATION_TIME_STRING)
    + [PROP\_METADATA\_DESCRIPTION\_STRING](#PROP_METADATA_DESCRIPTION_STRING)
    + [PROP\_METADATA\_FRAME\_COUNT\_NUMBER](#PROP_METADATA_FRAME_COUNT_NUMBER)
    + [PROP\_METADATA\_IGNORE\_PROPS\_BOOLEAN](#PROP_METADATA_IGNORE_PROPS_BOOLEAN)
    + [PROP\_METADATA\_LOOP\_COUNT\_NUMBER](#PROP_METADATA_LOOP_COUNT_NUMBER)
    + [PROP\_METADATA\_TITLE\_STRING](#PROP_METADATA_TITLE_STRING)
  * [Procedures](#pkg-Procedures)
    + [AddAnimationEncoderFrame](#AddAnimationEncoderFrame)
    + [CloseAnimationDecoder](#CloseAnimationDecoder)
    + [CloseAnimationEncoder](#CloseAnimationEncoder)
    + [CreateAnimatedCursor](#CreateAnimatedCursor)
    + [CreateAnimationDecoder](#CreateAnimationDecoder)
    + [CreateAnimationDecoderWithProperties](#CreateAnimationDecoderWithProperties)
    + [CreateAnimationDecoder\_IO](#CreateAnimationDecoder_IO)
    + [CreateAnimationEncoder](#CreateAnimationEncoder)
    + [CreateAnimationEncoderWithProperties](#CreateAnimationEncoderWithProperties)
    + [CreateAnimationEncoder\_IO](#CreateAnimationEncoder_IO)
    + [FreeAnimation](#FreeAnimation)
    + [GetAnimationDecoderFrame](#GetAnimationDecoderFrame)
    + [GetAnimationDecoderProperties](#GetAnimationDecoderProperties)
    + [GetAnimationDecoderStatus](#GetAnimationDecoderStatus)
    + [GetClipboardImage](#GetClipboardImage)
    + [Load](#Load)
    + [LoadANIAnimation\_IO](#LoadANIAnimation_IO)
    + [LoadAPNGAnimation\_IO](#LoadAPNGAnimation_IO)
    + [LoadAVIFAnimation\_IO](#LoadAVIFAnimation_IO)
    + [LoadAVIF\_IO](#LoadAVIF_IO)
    + [LoadAnimation](#LoadAnimation)
    + [LoadAnimationTyped\_IO](#LoadAnimationTyped_IO)
    + [LoadAnimation\_IO](#LoadAnimation_IO)
    + [LoadBMP\_IO](#LoadBMP_IO)
    + [LoadCUR\_IO](#LoadCUR_IO)
    + [LoadGIFAnimation\_IO](#LoadGIFAnimation_IO)
    + [LoadGIF\_IO](#LoadGIF_IO)
    + [LoadGPUTexture](#LoadGPUTexture)
    + [LoadGPUTextureTyped\_IO](#LoadGPUTextureTyped_IO)
    + [LoadGPUTexture\_IO](#LoadGPUTexture_IO)
    + [LoadICO\_IO](#LoadICO_IO)
    + [LoadJPG\_IO](#LoadJPG_IO)
    + [LoadJXL\_IO](#LoadJXL_IO)
    + [LoadLBM\_IO](#LoadLBM_IO)
    + [LoadPCX\_IO](#LoadPCX_IO)
    + [LoadPNG\_IO](#LoadPNG_IO)
    + [LoadPNM\_IO](#LoadPNM_IO)
    + [LoadQOI\_IO](#LoadQOI_IO)
    + [LoadSVG\_IO](#LoadSVG_IO)
    + [LoadSizedSVG\_IO](#LoadSizedSVG_IO)
    + [LoadTGA\_IO](#LoadTGA_IO)
    + [LoadTIF\_IO](#LoadTIF_IO)
    + [LoadTexture](#LoadTexture)
    + [LoadTextureTyped\_IO](#LoadTextureTyped_IO)
    + [LoadTexture\_IO](#LoadTexture_IO)
    + [LoadTyped\_IO](#LoadTyped_IO)
    + [LoadWEBPAnimation\_IO](#LoadWEBPAnimation_IO)
    + [LoadWEBP\_IO](#LoadWEBP_IO)
    + [LoadXCF\_IO](#LoadXCF_IO)
    + [LoadXPM\_IO](#LoadXPM_IO)
    + [LoadXV\_IO](#LoadXV_IO)
    + [Load\_IO](#Load_IO)
    + [ReadXPMFromArray](#ReadXPMFromArray)
    + [ReadXPMFromArrayToRGB888](#ReadXPMFromArrayToRGB888)
    + [ResetAnimationDecoder](#ResetAnimationDecoder)
    + [Save](#Save)
    + [SaveANIAnimation\_IO](#SaveANIAnimation_IO)
    + [SaveAPNGAnimation\_IO](#SaveAPNGAnimation_IO)
    + [SaveAVIF](#SaveAVIF)
    + [SaveAVIFAnimation\_IO](#SaveAVIFAnimation_IO)
    + [SaveAVIF\_IO](#SaveAVIF_IO)
    + [SaveAnimation](#SaveAnimation)
    + [SaveAnimationTyped\_IO](#SaveAnimationTyped_IO)
    + [SaveBMP](#SaveBMP)
    + [SaveBMP\_IO](#SaveBMP_IO)
    + [SaveCUR](#SaveCUR)
    + [SaveCUR\_IO](#SaveCUR_IO)
    + [SaveGIF](#SaveGIF)
    + [SaveGIFAnimation\_IO](#SaveGIFAnimation_IO)
    + [SaveGIF\_IO](#SaveGIF_IO)
    + [SaveICO](#SaveICO)
    + [SaveICO\_IO](#SaveICO_IO)
    + [SaveJPG](#SaveJPG)
    + [SaveJPG\_IO](#SaveJPG_IO)
    + [SavePNG](#SavePNG)
    + [SavePNG\_IO](#SavePNG_IO)
    + [SaveTGA](#SaveTGA)
    + [SaveTGA\_IO](#SaveTGA_IO)
    + [SaveTyped\_IO](#SaveTyped_IO)
    + [SaveWEBP](#SaveWEBP)
    + [SaveWEBPAnimation\_IO](#SaveWEBPAnimation_IO)
    + [SaveWEBP\_IO](#SaveWEBP_IO)
    + [Version](#Version)
    + [isANI](#isANI)
    + [isAVIF](#isAVIF)
    + [isBMP](#isBMP)
    + [isCUR](#isCUR)
    + [isGIF](#isGIF)
    + [isICO](#isICO)
    + [isJPG](#isJPG)
    + [isJXL](#isJXL)
    + [isLBM](#isLBM)
    + [isPCX](#isPCX)
    + [isPNG](#isPNG)
    + [isPNM](#isPNM)
    + [isQOI](#isQOI)
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