package stb/image - pkg.odin-lang.org 






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



Current Package: *[stb\_image](/vendor/stb/image)*

  

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
3. [image](/vendor/stb/image)

# package vendor:stb/image [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [stb\_image.h](https://github.com/nothings/stb/blob/master/stb_image.h).

## Index

Types (6)

* [Io\_Callbacks](#Io_Callbacks)
* [colorspace](#colorspace)
* [datatype](#datatype)
* [edge](#edge)
* [filter](#filter)
* [write\_func](#write_func)

Constants (4)

* [ALPHA\_CHANNEL\_NONE](#ALPHA_CHANNEL_NONE)
* [FLAG\_ALPHA\_PREMULTIPLIED](#FLAG_ALPHA_PREMULTIPLIED)
* [FLAG\_ALPHA\_USES\_COLORSPACE](#FLAG_ALPHA_USES_COLORSPACE)
* [NO\_STDIO](#NO_STDIO)

Variables (0)

This section is empty.

Procedures (63)

* [convert\_iphone\_png\_to\_rgb](#convert_iphone_png_to_rgb)
* [convert\_iphone\_png\_to\_rgb\_thread](#convert_iphone_png_to_rgb_thread)
* [failure\_reason](#failure_reason)
* [flip\_vertically\_on\_write](#flip_vertically_on_write)
* [hdr\_to\_ldr\_gamma](#hdr_to_ldr_gamma)
* [hdr\_to\_ldr\_scale](#hdr_to_ldr_scale)
* [image\_free](#image_free)
* [info](#info)
* [info\_from\_callbacks](#info_from_callbacks)
* [info\_from\_file](#info_from_file)
* [info\_from\_memory](#info_from_memory)
* [is\_16\_bit](#is_16_bit)
* [is\_16\_bit\_from\_file](#is_16_bit_from_file)
* [is\_16\_bit\_from\_memory](#is_16_bit_from_memory)
* [is\_hdr](#is_hdr)
* [is\_hdr\_from\_callbacks](#is_hdr_from_callbacks)
* [is\_hdr\_from\_file](#is_hdr_from_file)
* [is\_hdr\_from\_memory](#is_hdr_from_memory)
* [ldr\_to\_hdr\_gamma](#ldr_to_hdr_gamma)
* [ldr\_to\_hdr\_scale](#ldr_to_hdr_scale)
* [load](#load)
* [load\_16](#load_16)
* [load\_16\_from\_callbacks](#load_16_from_callbacks)
* [load\_16\_from\_file](#load_16_from_file)
* [load\_16\_from\_memory](#load_16_from_memory)
* [load\_from\_callbacks](#load_from_callbacks)
* [load\_from\_file](#load_from_file)
* [load\_from\_memory](#load_from_memory)
* [load\_gif\_from\_memory](#load_gif_from_memory)
* [loadf](#loadf)
* [loadf\_from\_callbacks](#loadf_from_callbacks)
* [loadf\_from\_file](#loadf_from_file)
* [loadf\_from\_memory](#loadf_from_memory)
* [resize](#resize)
* [resize\_float](#resize_float)
* [resize\_float\_generic](#resize_float_generic)
* [resize\_region](#resize_region)
* [resize\_subpixel](#resize_subpixel)
* [resize\_uint16\_generic](#resize_uint16_generic)
* [resize\_uint8](#resize_uint8)
* [resize\_uint8\_generic](#resize_uint8_generic)
* [resize\_uint8\_srgb](#resize_uint8_srgb)
* [resize\_uint8\_srgb\_edgemode](#resize_uint8_srgb_edgemode)
* [set\_flip\_vertically\_on\_load](#set_flip_vertically_on_load)
* [set\_flip\_vertically\_on\_load\_thread](#set_flip_vertically_on_load_thread)
* [set\_unpremultiply\_on\_load](#set_unpremultiply_on_load)
* [set\_unpremultiply\_on\_load\_thread](#set_unpremultiply_on_load_thread)
* [write\_bmp](#write_bmp)
* [write\_bmp\_to\_func](#write_bmp_to_func)
* [write\_hdr](#write_hdr)
* [write\_hdr\_to\_func](#write_hdr_to_func)
* [write\_jpg](#write_jpg)
* [write\_jpg\_to\_func](#write_jpg_to_func)
* [write\_png](#write_png)
* [write\_png\_to\_func](#write_png_to_func)
* [write\_tga](#write_tga)
* [write\_tga\_to\_func](#write_tga_to_func)
* [zlib\_decode\_buffer](#zlib_decode_buffer)
* [zlib\_decode\_malloc](#zlib_decode_malloc)
* [zlib\_decode\_malloc\_guesssize](#zlib_decode_malloc_guesssize)
* [zlib\_decode\_malloc\_guesssize\_headerflag](#zlib_decode_malloc_guesssize_headerflag)
* [zlib\_decode\_noheader\_buffer](#zlib_decode_noheader_buffer)
* [zlib\_decode\_noheader\_malloc](#zlib_decode_noheader_malloc)

Procedure Groups (0)

This section is empty.

## Types

### [Io\_Callbacks ¶](#Io_Callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L34)

```
Io_Callbacks :: struct {
	read: proc "c" (user: rawptr, data: [^]u8, size: i32) -> i32,
	// fill 'data' with 'size' u8s.  return number of u8s actually read
	skip: proc "c" (user: rawptr, n: i32),
	// skip the next 'n' u8s, or 'unget' the last -n u8s if negative
	eof:  proc "c" (user: rawptr) -> i32,
}
```

 

load image by filename, open file, or memory buffer




##### Related Procedures With Parameters

* [info\_from\_callbacks](/vendor/stb/image/#info_from_callbacks)
* [is\_hdr\_from\_callbacks](/vendor/stb/image/#is_hdr_from_callbacks)
* [load\_16\_from\_callbacks](/vendor/stb/image/#load_16_from_callbacks)
* [load\_from\_callbacks](/vendor/stb/image/#load_from_callbacks)
* [loadf\_from\_callbacks](/vendor/stb/image/#loadf_from_callbacks)

### [colorspace ¶](#colorspace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L119)

```
colorspace :: enum i32 {
	LINEAR, 
	SRGB, 
	MAX_COLORSPACES, 
}
```

##### Related Procedures With Parameters

* [resize](/vendor/stb/image/#resize)
* [resize\_float\_generic](/vendor/stb/image/#resize_float_generic)
* [resize\_region](/vendor/stb/image/#resize_region)
* [resize\_subpixel](/vendor/stb/image/#resize_subpixel)
* [resize\_uint16\_generic](/vendor/stb/image/#resize_uint16_generic)
* [resize\_uint8\_generic](/vendor/stb/image/#resize_uint8_generic)

### [datatype ¶](#datatype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L164)

```
datatype :: enum i32 {
	UINT8, 
	UINT16, 
	UINT32, 
	FLOAT, 
	MAX_TYPES, 
}
```

##### Related Procedures With Parameters

* [resize](/vendor/stb/image/#resize)
* [resize\_region](/vendor/stb/image/#resize_region)
* [resize\_subpixel](/vendor/stb/image/#resize_subpixel)

### [edge ¶](#edge) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L71)

```
edge :: enum i32 {
	CLAMP   = 1, 
	REFLECT = 2, 
	WRAP    = 3, 
	ZERO    = 4, 
}
```

##### Related Procedures With Parameters

* [resize](/vendor/stb/image/#resize)
* [resize\_float\_generic](/vendor/stb/image/#resize_float_generic)
* [resize\_region](/vendor/stb/image/#resize_region)
* [resize\_subpixel](/vendor/stb/image/#resize_subpixel)
* [resize\_uint16\_generic](/vendor/stb/image/#resize_uint16_generic)
* [resize\_uint8\_generic](/vendor/stb/image/#resize_uint8_generic)
* [resize\_uint8\_srgb\_edgemode](/vendor/stb/image/#resize_uint8_srgb_edgemode)

### [filter ¶](#filter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L110)

```
filter :: enum i32 {
	DEFAULT      = 0, // use same filter type that easy-to-use API chooses
	BOX          = 1, // A trapezoid w/1-pixel wide ramps, same result as box for integer scale ratios
	TRIANGLE     = 2, // On upsampling, produces same results as bilinear texture filtering
	CUBICBSPLINE = 3, // The cubic b-spline (aka Mitchell-Netrevalli with B=1,C=0), gaussian-esque
	CATMULLROM   = 4, // An interpolating cubic spline
	MITCHELL     = 5, // Mitchell-Netrevalli filter with B=1/3, C=1/3
}
```

##### Related Procedures With Parameters

* [resize](/vendor/stb/image/#resize)
* [resize\_float\_generic](/vendor/stb/image/#resize_float_generic)
* [resize\_region](/vendor/stb/image/#resize_region)
* [resize\_subpixel](/vendor/stb/image/#resize_subpixel)
* [resize\_uint16\_generic](/vendor/stb/image/#resize_uint16_generic)
* [resize\_uint8\_generic](/vendor/stb/image/#resize_uint8_generic)

### [write\_func ¶](#write_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L25)

```
write_func :: proc "c" (ctx: rawptr, data: rawptr, size: i32)
```

##### Related Procedures With Parameters

* [write\_bmp\_to\_func](/vendor/stb/image/#write_bmp_to_func)
* [write\_hdr\_to\_func](/vendor/stb/image/#write_hdr_to_func)
* [write\_jpg\_to\_func](/vendor/stb/image/#write_jpg_to_func)
* [write\_png\_to\_func](/vendor/stb/image/#write_png_to_func)
* [write\_tga\_to\_func](/vendor/stb/image/#write_tga_to_func)

## Constants

### [ALPHA\_CHANNEL\_NONE ¶](#ALPHA_CHANNEL_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L60)

```
ALPHA_CHANNEL_NONE :: -1
```

### [FLAG\_ALPHA\_PREMULTIPLIED ¶](#FLAG_ALPHA_PREMULTIPLIED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L65)

```
FLAG_ALPHA_PREMULTIPLIED :: 1 << 0
```

 

Set this flag if your texture has premultiplied alpha. Otherwise, stbir will
use alpha-weighted resampling (effectively premultiplying, resampling,
then unpremultiplying).

### [FLAG\_ALPHA\_USES\_COLORSPACE ¶](#FLAG_ALPHA_USES_COLORSPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L68)

```
FLAG_ALPHA_USES_COLORSPACE :: 1 << 1
```

 

The specified alpha channel should be handled as gamma-corrected value even
when doing sRGB operations.

### [NO\_STDIO ¶](#NO_STDIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L26)

```
NO_STDIO :: ODIN_ARCH == .wasm32 || ODIN_ARCH == .wasm64p32
```

## Variables

This section is empty.

## Procedures

### [convert\_iphone\_png\_to\_rgb ¶](#convert_iphone_png_to_rgb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L130)

```
convert_iphone_png_to_rgb :: proc "c" (flag_true_if_should_convert: i32) ---
```

 

indicate whether we should process iphone images back to canonical format,
or just pass them through "as-is"

### [convert\_iphone\_png\_to\_rgb\_thread ¶](#convert_iphone_png_to_rgb_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L139)

```
convert_iphone_png_to_rgb_thread :: proc "c" (flag_true_if_should_convert: b32) ---
```

### [failure\_reason ¶](#failure_reason) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L112)

```
failure_reason :: proc "c" () -> cstring ---
```

 

get a VERY brief reason for failure
NOT THREADSAFE

### [flip\_vertically\_on\_write ¶](#flip_vertically_on_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L35)

```
flip_vertically_on_write :: proc "c" (flip_boolean: b32) ---
```

### [hdr\_to\_ldr\_gamma ¶](#hdr_to_ldr_gamma) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L101)

```
hdr_to_ldr_gamma :: proc "c" (gamma: f32) ---
```

### [hdr\_to\_ldr\_scale ¶](#hdr_to_ldr_scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L102)

```
hdr_to_ldr_scale :: proc "c" (scale: f32) ---
```

### [image\_free ¶](#image_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L115)

```
image_free :: proc "c" (retval_from_load: rawptr) ---
```

 

free the loaded image -- this is just free()

### [info ¶](#info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L68)

```
info :: proc "c" (filename: cstring, x, y, comp: ^i32) -> i32 ---
```

 

get image dimensions & components without fully decoding

### [info\_from\_callbacks ¶](#info_from_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L119)

```
info_from_callbacks :: proc "c" (clbk: ^Io_Callbacks, user: rawptr, x, y, comp: ^i32) -> i32 ---
```

### [info\_from\_file ¶](#info_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L69)

```
info_from_file :: proc "c" (f: ^c.FILE, x, y, comp: ^i32) -> i32 ---
```

### [info\_from\_memory ¶](#info_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L118)

```
info_from_memory :: proc "c" (buffer: [^]u8, len: i32, x, y, comp: ^i32) -> i32 ---
```

 

get image dimensions & components without fully decoding

### [is\_16\_bit ¶](#is_16_bit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L71)

```
is_16_bit :: proc "c" (filename: cstring) -> b32 ---
```

### [is\_16\_bit\_from\_file ¶](#is_16_bit_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L72)

```
is_16_bit_from_file :: proc "c" (f: ^c.FILE) -> b32 ---
```

### [is\_16\_bit\_from\_memory ¶](#is_16_bit_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L121)

```
is_16_bit_from_memory :: proc "c" (buffer: [^]u8, len: i32) -> i32 ---
```

### [is\_hdr ¶](#is_hdr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L64)

```
is_hdr :: proc "c" (filename: cstring) -> i32 ---
```

### [is\_hdr\_from\_callbacks ¶](#is_hdr_from_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L107)

```
is_hdr_from_callbacks :: proc "c" (clbk: ^Io_Callbacks, user: rawptr) -> i32 ---
```

### [is\_hdr\_from\_file ¶](#is_hdr_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L65)

```
is_hdr_from_file :: proc "c" (f: ^c.FILE) -> i32 ---
```

### [is\_hdr\_from\_memory ¶](#is_hdr_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L108)

```
is_hdr_from_memory :: proc "c" (buffer: [^]u8, len: i32) -> i32 ---
```

### [ldr\_to\_hdr\_gamma ¶](#ldr_to_hdr_gamma) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L104)

```
ldr_to_hdr_gamma :: proc "c" (gamma: f32) ---
```

### [ldr\_to\_hdr\_scale ¶](#ldr_to_hdr_scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L105)

```
ldr_to_hdr_scale :: proc "c" (scale: f32) ---
```

### [load ¶](#load) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L47)

```
load :: proc "c" (filename: cstring, x, y, channels_in_file: ^i32, desired_channels: i32) -> [^]u8 ---
```

 

//////////////////////////////////

8-bits-per-channel interface

### [load\_16 ¶](#load_16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L54)

```
load_16 :: proc "c" (filename: cstring, x, y, channels_in_file: ^i32, desired_channels: i32) -> [^]u16 ---
```

 

//////////////////////////////////

16-bits-per-channel interface

### [load\_16\_from\_callbacks ¶](#load_16_from_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L92)

```
load_16_from_callbacks :: proc "c" (clbk: ^Io_Callbacks, x, y, channels_in_file: ^i32, desired_channels: i32) -> [^]u16 ---
```

### [load\_16\_from\_file ¶](#load_16_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L55)

```
load_16_from_file :: proc "c" (f: ^c.FILE, x, y, channels_in_file: ^i32, desired_channels: i32) -> [^]u16 ---
```

### [load\_16\_from\_memory ¶](#load_16_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L91)

```
load_16_from_memory :: proc "c" (
	buffer:                 [^]u8, 
	len:                    i32, 
	x, y, channels_in_file: ^i32, 
	desired_channels:       i32, 
) -> [^]u16 ---
```

 

//////////////////////////////////

16-bits-per-channel interface

### [load\_from\_callbacks ¶](#load_from_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L83)

```
load_from_callbacks :: proc "c" (
	clbk:                   ^Io_Callbacks, 
	user:                   rawptr, 
	x, y, channels_in_file: ^i32, 
	desired_channels:       i32, 
) -> [^]u8 ---
```

### [load\_from\_file ¶](#load_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L48)

```
load_from_file :: proc "c" (f: ^c.FILE, x, y, channels_in_file: ^i32, desired_channels: i32) -> [^]u8 ---
```

### [load\_from\_memory ¶](#load_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L82)

```
load_from_memory :: proc "c" (
	buffer:                 [^]u8, 
	len:                    i32, 
	x, y, channels_in_file: ^i32, 
	desired_channels:       i32, 
) -> [^]u8 ---
```

 

//////////////////////////////////

8-bits-per-channel interface

### [load\_gif\_from\_memory ¶](#load_gif_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L85)

```
load_gif_from_memory :: proc "c" (
	buffer:        [^]u8, 
	len:           i32, 
	delays:        ^[^]i32, 
	x, y, z, comp: ^i32, 
	req_comp:      i32, 
) -> [^]u8 ---
```

### [loadf ¶](#loadf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L61)

```
loadf :: proc "c" (filename: cstring, x, y, channels_in_file: ^i32, desired_channels: i32) -> [^]f32 ---
```

 

//////////////////////////////////

float-per-channel interface

### [loadf\_from\_callbacks ¶](#loadf_from_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L99)

```
loadf_from_callbacks :: proc "c" (
	clbk:                   ^Io_Callbacks, 
	user:                   rawptr, 
	x, y, channels_in_file: ^i32, 
	desired_channels:       i32, 
) -> [^]f32 ---
```

### [loadf\_from\_file ¶](#loadf_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L62)

```
loadf_from_file :: proc "c" (f: ^c.FILE, x, y, channels_in_file: ^i32, desired_channels: i32) -> [^]f32 ---
```

### [loadf\_from\_memory ¶](#loadf_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L98)

```
loadf_from_memory :: proc "c" (
	buffer:                 [^]u8, 
	len:                    i32, 
	x, y, channels_in_file: ^i32, 
	desired_channels:       i32, 
) -> [^]f32 ---
```

 

//////////////////////////////////

float-per-channel interface

### [resize ¶](#resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L177)

```
resize :: proc "c" (
	input_pixels:                               rawptr, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              rawptr, 
	output_w, output_h, output_stride_in_bytes: i32, 
	datatype:                                   datatype, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
	edge_mode_horizontal, edge_mode_vertical:   edge, 
	filter_horizontal, filter_vertical:         filter, 
	space:                                      colorspace, 
	alloc_context:                              rawptr, 
) -> i32 ---
```

### [resize\_float ¶](#resize_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L49)

```
resize_float :: proc "c" (
	input_pixels:                               [^]f32, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              [^]f32, 
	output_w, output_h, output_stride_in_bytes: i32, 
	num_channels:                               i32, 
) -> i32 ---
```

### [resize\_float\_generic ¶](#resize_float_generic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L142)

```
resize_float_generic :: proc "c" (
	input_pixels:                               [^]f32, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              [^]f32, 
	output_w, output_h, output_stride_in_bytes: i32, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
	edge_wrap_mode:                             edge, 
	filter:                                     filter, 
	space:                                      colorspace, 
	alloc_context:                              rawptr, 
) -> i32 ---
```

### [resize\_region ¶](#resize_region) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L195)

```
resize_region :: proc "c" (
	input_pixels:                               rawptr, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              rawptr, 
	output_w, output_h, output_stride_in_bytes: i32, 
	datatype:                                   datatype, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
	edge_mode_horizontal, edge_mode_vertical:   edge, 
	filter_horizontal, filter_vertical:         filter, 
	space:                                      colorspace, 
	alloc_context:                              rawptr, 
	s0, t0, s1, 
	t1:                                         f32, 
) -> i32 ---
```

### [resize\_subpixel ¶](#resize_subpixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L185)

```
resize_subpixel :: proc "c" (
	input_pixels:                               rawptr, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              rawptr, 
	output_w, output_h, output_stride_in_bytes: i32, 
	datatype:                                   datatype, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
	edge_mode_horizontal, edge_mode_vertical:   edge, 
	filter_horizontal, filter_vertical:         filter, 
	space:                                      colorspace, 
	alloc_context:                              rawptr, 
	x_scale, y_scale:                           f32, 
	x_offset, 
	y_offset:                                   f32, 
) -> i32 ---
```

### [resize\_uint16\_generic ¶](#resize_uint16_generic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L136)

```
resize_uint16_generic :: proc "c" (
	input_pixels:                               [^]u16, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              [^]u16, 
	output_w, output_h, output_stride_in_bytes: i32, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
	edge_wrap_mode:                             edge, 
	filter:                                     filter, 
	space:                                      colorspace, 
	alloc_context:                              rawptr, 
) -> i32 ---
```

### [resize\_uint8 ¶](#resize_uint8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L45)

```
resize_uint8 :: proc "c" (
	input_pixels:                               [^]u8, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              [^]u8, 
	output_w, output_h, output_stride_in_bytes: i32, 
	num_channels:                               i32, 
) -> i32 ---
```

### [resize\_uint8\_generic ¶](#resize_uint8_generic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L130)

```
resize_uint8_generic :: proc "c" (
	input_pixels:                               [^]u8, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              [^]u8, 
	output_w, output_h, output_stride_in_bytes: i32, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
	edge_wrap_mode:                             edge, 
	filter:                                     filter, 
	space:                                      colorspace, 
	alloc_context:                              rawptr, 
) -> i32 ---
```

### [resize\_uint8\_srgb ¶](#resize_uint8_srgb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L80)

```
resize_uint8_srgb :: proc "c" (
	input_pixels:                               [^]u8, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              [^]u8, 
	output_w, output_h, output_stride_in_bytes: i32, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
) -> i32 ---
```

### [resize\_uint8\_srgb\_edgemode ¶](#resize_uint8_srgb_edgemode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin#L86)

```
resize_uint8_srgb_edgemode :: proc "c" (
	input_pixels:                               [^]u8, 
	input_w, input_h, input_stride_in_bytes:    i32, 
	output_pixels:                              [^]u8, 
	output_w, output_h, output_stride_in_bytes: i32, 
	num_channels:                               i32, 
	alpha_channel:                              i32, 
	flags:                                      i32, 
	edge_wrap_mode:                             edge, 
) -> i32 ---
```

 

This function adds the ability to specify how requests to sample off the edge of the image are handled.

### [set\_flip\_vertically\_on\_load ¶](#set_flip_vertically_on_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L133)

```
set_flip_vertically_on_load :: proc "c" (flag_true_if_should_flip: i32) ---
```

 

flip the image vertically, so the first pixel in the output array is the bottom left

### [set\_flip\_vertically\_on\_load\_thread ¶](#set_flip_vertically_on_load_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L140)

```
set_flip_vertically_on_load_thread :: proc "c" (flag_true_if_should_flip: b32) ---
```

### [set\_unpremultiply\_on\_load ¶](#set_unpremultiply_on_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L126)

```
set_unpremultiply_on_load :: proc "c" (flag_true_if_should_unpremultiply: i32) ---
```

 

for image formats that explicitly notate that they have premultiplied alpha,
we just return the colors as stored in the file. set this flag to force
unpremultiplication. results are undefined if the unpremultiply overflow.

### [set\_unpremultiply\_on\_load\_thread ¶](#set_unpremultiply_on_load_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L138)

```
set_unpremultiply_on_load_thread :: proc "c" (flag_true_if_should_unpremultiply: b32) ---
```

 

as above, but only applies to images loaded on the thread that calls the function
this function is only available if your compiler supports thread-local variables;
calling it will fail to link if your compiler doesn't

### [write\_bmp ¶](#write_bmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L42)

```
write_bmp :: proc "c" (filename: cstring, w, h, comp: i32, data: rawptr) -> i32 ---
```

### [write\_bmp\_to\_func ¶](#write_bmp_to_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L30)

```
write_bmp_to_func :: proc "c" (
	func:       write_func, 
	ctx:        rawptr, 
	w, h, comp: i32, 
	data:       rawptr, 
) -> i32 ---
```

### [write\_hdr ¶](#write_hdr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L44)

```
write_hdr :: proc "c" (filename: cstring, w, h, comp: i32, data: [^]f32) -> i32 ---
```

### [write\_hdr\_to\_func ¶](#write_hdr_to_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L32)

```
write_hdr_to_func :: proc "c" (
	func:       write_func, 
	ctx:        rawptr, 
	w, h, comp: i32, 
	data:       [^]f32, 
) -> i32 ---
```

### [write\_jpg ¶](#write_jpg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L45)

```
write_jpg :: proc "c" (
	filename:   cstring, 
	w, h, comp: i32, 
	data:       rawptr, 
	quality:    i32, 
) -> i32 ---
```

### [write\_jpg\_to\_func ¶](#write_jpg_to_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L33)

```
write_jpg_to_func :: proc "c" (
	func:       write_func, 
	ctx:        rawptr, 
	x, y, comp: i32, 
	data:       rawptr, 
	quality:    i32, 
) -> i32 ---
```

### [write\_png ¶](#write_png) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L41)

```
write_png :: proc "c" (
	filename:        cstring, 
	w, h, comp:      i32, 
	data:            rawptr, 
	stride_in_bytes: i32, 
) -> i32 ---
```

### [write\_png\_to\_func ¶](#write_png_to_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L29)

```
write_png_to_func :: proc "c" (
	func:            write_func, 
	ctx:             rawptr, 
	w, h, comp:      i32, 
	data:            rawptr, 
	stride_in_bytes: i32, 
) -> i32 ---
```

### [write\_tga ¶](#write_tga) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L43)

```
write_tga :: proc "c" (filename: cstring, w, h, comp: i32, data: rawptr) -> i32 ---
```

### [write\_tga\_to\_func ¶](#write_tga_to_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin#L31)

```
write_tga_to_func :: proc "c" (
	func:       write_func, 
	ctx:        rawptr, 
	w, h, comp: i32, 
	data:       rawptr, 
) -> i32 ---
```

### [zlib\_decode\_buffer ¶](#zlib_decode_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L146)

```
zlib_decode_buffer :: proc "c" (obuffer: [^]u8, olen: i32, ibuffer: [^]u8, ilen: i32) -> i32 ---
```

### [zlib\_decode\_malloc ¶](#zlib_decode_malloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L145)

```
zlib_decode_malloc :: proc "c" (buffer: [^]u8, len: i32, outlen: ^i32) -> [^]u8 ---
```

### [zlib\_decode\_malloc\_guesssize ¶](#zlib_decode_malloc_guesssize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L143)

```
zlib_decode_malloc_guesssize :: proc "c" (buffer: [^]u8, len: i32, initial_size: i32, outlen: ^i32) -> [^]u8 ---
```

 

ZLIB client - used by PNG, available for other purposes

### [zlib\_decode\_malloc\_guesssize\_headerflag ¶](#zlib_decode_malloc_guesssize_headerflag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L144)

```
zlib_decode_malloc_guesssize_headerflag :: proc "c" (buffer: [^]u8, len: i32, initial_size: i32, outlen: ^i32, parse_header: b32) -> [^]u8 ---
```

### [zlib\_decode\_noheader\_buffer ¶](#zlib_decode_noheader_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L149)

```
zlib_decode_noheader_buffer :: proc "c" (obuffer: [^]u8, olen: i32, ibuffer: [^]u8, ilen: i32) -> i32 ---
```

### [zlib\_decode\_noheader\_malloc ¶](#zlib_decode_noheader_malloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin#L148)

```
zlib_decode_noheader_malloc :: proc "c" (buffer: [^]u8, len: i32, outlen: ^i32) -> [^]u8 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [stb\_image.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image.odin)
* [stb\_image\_resize.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_resize.odin)
* [stb\_image\_write.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/image/stb_image_write.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.544066400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Io\_Callbacks](#Io_Callbacks)
    + [colorspace](#colorspace)
    + [datatype](#datatype)
    + [edge](#edge)
    + [filter](#filter)
    + [write\_func](#write_func)
  * [Constants](#pkg-Constants)
    + [ALPHA\_CHANNEL\_NONE](#ALPHA_CHANNEL_NONE)
    + [FLAG\_ALPHA\_PREMULTIPLIED](#FLAG_ALPHA_PREMULTIPLIED)
    + [FLAG\_ALPHA\_USES\_COLORSPACE](#FLAG_ALPHA_USES_COLORSPACE)
    + [NO\_STDIO](#NO_STDIO)
  * [Procedures](#pkg-Procedures)
    + [convert\_iphone\_png\_to\_rgb](#convert_iphone_png_to_rgb)
    + [convert\_iphone\_png\_to\_rgb\_thread](#convert_iphone_png_to_rgb_thread)
    + [failure\_reason](#failure_reason)
    + [flip\_vertically\_on\_write](#flip_vertically_on_write)
    + [hdr\_to\_ldr\_gamma](#hdr_to_ldr_gamma)
    + [hdr\_to\_ldr\_scale](#hdr_to_ldr_scale)
    + [image\_free](#image_free)
    + [info](#info)
    + [info\_from\_callbacks](#info_from_callbacks)
    + [info\_from\_file](#info_from_file)
    + [info\_from\_memory](#info_from_memory)
    + [is\_16\_bit](#is_16_bit)
    + [is\_16\_bit\_from\_file](#is_16_bit_from_file)
    + [is\_16\_bit\_from\_memory](#is_16_bit_from_memory)
    + [is\_hdr](#is_hdr)
    + [is\_hdr\_from\_callbacks](#is_hdr_from_callbacks)
    + [is\_hdr\_from\_file](#is_hdr_from_file)
    + [is\_hdr\_from\_memory](#is_hdr_from_memory)
    + [ldr\_to\_hdr\_gamma](#ldr_to_hdr_gamma)
    + [ldr\_to\_hdr\_scale](#ldr_to_hdr_scale)
    + [load](#load)
    + [load\_16](#load_16)
    + [load\_16\_from\_callbacks](#load_16_from_callbacks)
    + [load\_16\_from\_file](#load_16_from_file)
    + [load\_16\_from\_memory](#load_16_from_memory)
    + [load\_from\_callbacks](#load_from_callbacks)
    + [load\_from\_file](#load_from_file)
    + [load\_from\_memory](#load_from_memory)
    + [load\_gif\_from\_memory](#load_gif_from_memory)
    + [loadf](#loadf)
    + [loadf\_from\_callbacks](#loadf_from_callbacks)
    + [loadf\_from\_file](#loadf_from_file)
    + [loadf\_from\_memory](#loadf_from_memory)
    + [resize](#resize)
    + [resize\_float](#resize_float)
    + [resize\_float\_generic](#resize_float_generic)
    + [resize\_region](#resize_region)
    + [resize\_subpixel](#resize_subpixel)
    + [resize\_uint16\_generic](#resize_uint16_generic)
    + [resize\_uint8](#resize_uint8)
    + [resize\_uint8\_generic](#resize_uint8_generic)
    + [resize\_uint8\_srgb](#resize_uint8_srgb)
    + [resize\_uint8\_srgb\_edgemode](#resize_uint8_srgb_edgemode)
    + [set\_flip\_vertically\_on\_load](#set_flip_vertically_on_load)
    + [set\_flip\_vertically\_on\_load\_thread](#set_flip_vertically_on_load_thread)
    + [set\_unpremultiply\_on\_load](#set_unpremultiply_on_load)
    + [set\_unpremultiply\_on\_load\_thread](#set_unpremultiply_on_load_thread)
    + [write\_bmp](#write_bmp)
    + [write\_bmp\_to\_func](#write_bmp_to_func)
    + [write\_hdr](#write_hdr)
    + [write\_hdr\_to\_func](#write_hdr_to_func)
    + [write\_jpg](#write_jpg)
    + [write\_jpg\_to\_func](#write_jpg_to_func)
    + [write\_png](#write_png)
    + [write\_png\_to\_func](#write_png_to_func)
    + [write\_tga](#write_tga)
    + [write\_tga\_to\_func](#write_tga_to_func)
    + [zlib\_decode\_buffer](#zlib_decode_buffer)
    + [zlib\_decode\_malloc](#zlib_decode_malloc)
    + [zlib\_decode\_malloc\_guesssize](#zlib_decode_malloc_guesssize)
    + [zlib\_decode\_malloc\_guesssize\_headerflag](#zlib_decode_malloc_guesssize_headerflag)
    + [zlib\_decode\_noheader\_buffer](#zlib_decode_noheader_buffer)
    + [zlib\_decode\_noheader\_malloc](#zlib_decode_noheader_malloc)
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