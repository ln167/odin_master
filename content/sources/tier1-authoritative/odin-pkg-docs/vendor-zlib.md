package zlib - pkg.odin-lang.org 






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



Current Package: *[vendor\_zlib](/vendor/zlib)*

  

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
2. [zlib](/vendor/zlib)

# package vendor:zlib [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [libz](https://zlib.net/) ZLIB compression library.

## Index

Types (25)

* [Byte](#Byte)
* [Bytef](#Bytef)
* [alloc\_func](#alloc_func)
* [crc\_t](#crc_t)
* [free\_func](#free_func)
* [gzFile](#gzFile)
* [gzFile\_s](#gzFile_s)
* [gz\_header](#gz_header)
* [gz\_header\_s](#gz_header_s)
* [gz\_headerp](#gz_headerp)
* [in\_func](#in_func)
* [off64\_t](#off64_t)
* [off\_t](#off_t)
* [out\_func](#out_func)
* [size\_t](#size_t)
* [uInt](#uInt)
* [uIntf](#uIntf)
* [uLong](#uLong)
* [uLongf](#uLongf)
* [voidp](#voidp)
* [voidpc](#voidpc)
* [voidpf](#voidpf)
* [z\_stream](#z_stream)
* [z\_stream\_s](#z_stream_s)
* [z\_streamp](#z_streamp)

Constants (37)

* [ASCII](#ASCII)
* [BEST\_COMPRESSION](#BEST_COMPRESSION)
* [BEST\_SPEED](#BEST_SPEED)
* [BINARY](#BINARY)
* [BLOCK](#BLOCK)
* [BUF\_ERROR](#BUF_ERROR)
* [DATA\_ERROR](#DATA_ERROR)
* [DEFAULT\_COMPRESSION](#DEFAULT_COMPRESSION)
* [DEFAULT\_STRATEGY](#DEFAULT_STRATEGY)
* [DEFLATED](#DEFLATED)
* [ERRNO](#ERRNO)
* [FILTERED](#FILTERED)
* [FINISH](#FINISH)
* [FIXED](#FIXED)
* [FULL\_FLUSH](#FULL_FLUSH)
* [HUFFMAN\_ONLY](#HUFFMAN_ONLY)
* [MEM\_ERROR](#MEM_ERROR)
* [NEED\_DICT](#NEED_DICT)
* [NO\_COMPRESSION](#NO_COMPRESSION)
* [NO\_FLUSH](#NO_FLUSH)
* [NULL](#NULL)
* [OK](#OK)
* [PARTIAL\_FLUSH](#PARTIAL_FLUSH)
* [RLE](#RLE)
* [STREAM\_END](#STREAM_END)
* [STREAM\_ERROR](#STREAM_ERROR)
* [SYNC\_FLUSH](#SYNC_FLUSH)
* [TEXT](#TEXT)
* [TREES](#TREES)
* [UNKNOWN](#UNKNOWN)
* [VERNUM](#VERNUM)
* [VERSION](#VERSION)
* [VERSION\_ERROR](#VERSION_ERROR)
* [VER\_MAJOR](#VER_MAJOR)
* [VER\_MINOR](#VER_MINOR)
* [VER\_REVISION](#VER_REVISION)
* [VER\_SUBREVISION](#VER_SUBREVISION)

Variables (0)

This section is empty.

Procedures (84)

* [Version](#Version)
* [adler32](#adler32)
* [adler32\_combine](#adler32_combine)
* [adler32\_combine64](#adler32_combine64)
* [adler32\_z](#adler32_z)
* [compress](#compress)
* [compress2](#compress2)
* [compressBound](#compressBound)
* [crc32](#crc32)
* [crc32\_combine](#crc32_combine)
* [crc32\_combine64](#crc32_combine64)
* [crc32\_combine\_gen](#crc32_combine_gen)
* [crc32\_combine\_gen64](#crc32_combine_gen64)
* [crc32\_combine\_op](#crc32_combine_op)
* [crc32\_z](#crc32_z)
* [deflate](#deflate)
* [deflateBound](#deflateBound)
* [deflateCopy](#deflateCopy)
* [deflateEnd](#deflateEnd)
* [deflateGetDictionary](#deflateGetDictionary)
* [deflateInit](#deflateInit)
* [deflateInit2](#deflateInit2)
* [deflateParams](#deflateParams)
* [deflatePending](#deflatePending)
* [deflatePrime](#deflatePrime)
* [deflateReset](#deflateReset)
* [deflateResetKeep](#deflateResetKeep)
* [deflateSetDictionary](#deflateSetDictionary)
* [deflateSetHeader](#deflateSetHeader)
* [deflateTune](#deflateTune)
* [get\_crc\_table](#get_crc_table)
* [gzbuffer](#gzbuffer)
* [gzclearerr](#gzclearerr)
* [gzclose](#gzclose)
* [gzclose\_r](#gzclose_r)
* [gzclose\_w](#gzclose_w)
* [gzdirect](#gzdirect)
* [gzdopen](#gzdopen)
* [gzeof](#gzeof)
* [gzerror](#gzerror)
* [gzflush](#gzflush)
* [gzfread](#gzfread)
* [gzfwrite](#gzfwrite)
* [gzgetc](#gzgetc)
* [gzgetc\_](#gzgetc_)
* [gzgets](#gzgets)
* [gzoffset64](#gzoffset64)
* [gzopen64](#gzopen64)
* [gzprintf](#gzprintf)
* [gzputc](#gzputc)
* [gzputs](#gzputs)
* [gzread](#gzread)
* [gzrewind](#gzrewind)
* [gzseek64](#gzseek64)
* [gzsetparams](#gzsetparams)
* [gztell64](#gztell64)
* [gzungetc](#gzungetc)
* [gzwrite](#gzwrite)
* [inflate](#inflate)
* [inflateBack](#inflateBack)
* [inflateBackEnd](#inflateBackEnd)
* [inflateBackInit](#inflateBackInit)
* [inflateCodesUsed](#inflateCodesUsed)
* [inflateCopy](#inflateCopy)
* [inflateEnd](#inflateEnd)
* [inflateGetDictionary](#inflateGetDictionary)
* [inflateGetHeader](#inflateGetHeader)
* [inflateInit](#inflateInit)
* [inflateInit2](#inflateInit2)
* [inflateMark](#inflateMark)
* [inflatePrime](#inflatePrime)
* [inflateReset](#inflateReset)
* [inflateReset2](#inflateReset2)
* [inflateResetKeep](#inflateResetKeep)
* [inflateSetDictionary](#inflateSetDictionary)
* [inflateSync](#inflateSync)
* [inflateSyncPoint](#inflateSyncPoint)
* [inflateUndermine](#inflateUndermine)
* [inflateValidate](#inflateValidate)
* [uncompress](#uncompress)
* [uncompress2](#uncompress2)
* [version](#version)
* [zError](#zError)
* [zlibCompileFlags](#zlibCompileFlags)

Procedure Groups (0)

This section is empty.

## Types

### [Byte ¶](#Byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L24)

```
Byte :: u8
```

##### Related Procedures With Parameters

* [adler32](/vendor/zlib/#adler32)
* [adler32\_z](/vendor/zlib/#adler32_z)
* [compress](/vendor/zlib/#compress)
* [compress2](/vendor/zlib/#compress2)
* [crc32](/vendor/zlib/#crc32)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [gzgets](/vendor/zlib/#gzgets)
* [inflateBackInit](/vendor/zlib/#inflateBackInit)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)

### [Bytef ¶](#Bytef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L25)

```
Bytef :: u8
```

##### Related Procedures With Parameters

* [adler32](/vendor/zlib/#adler32)
* [adler32\_z](/vendor/zlib/#adler32_z)
* [compress](/vendor/zlib/#compress)
* [compress2](/vendor/zlib/#compress2)
* [crc32](/vendor/zlib/#crc32)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [gzgets](/vendor/zlib/#gzgets)
* [inflateBackInit](/vendor/zlib/#inflateBackInit)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)

### [alloc\_func ¶](#alloc_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L35)

```
alloc_func :: proc "c" (opaque: rawptr, items: u32, size: u32) -> rawptr
```

### [crc\_t ¶](#crc_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L33)

```
crc_t :: u32
```

##### Related Procedures With Parameters

* [adler32](/vendor/zlib/#adler32)
* [adler32\_combine](/vendor/zlib/#adler32_combine)
* [adler32\_combine64](/vendor/zlib/#adler32_combine64)
* [adler32\_z](/vendor/zlib/#adler32_z)
* [compress](/vendor/zlib/#compress)
* [compress2](/vendor/zlib/#compress2)
* [compressBound](/vendor/zlib/#compressBound)
* [crc32](/vendor/zlib/#crc32)
* [crc32\_combine](/vendor/zlib/#crc32_combine)
* [crc32\_combine64](/vendor/zlib/#crc32_combine64)
* [crc32\_combine\_op](/vendor/zlib/#crc32_combine_op)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)



##### Related Procedures With Returns

* [crc32\_combine\_gen](/vendor/zlib/#crc32_combine_gen)
* [crc32\_combine\_gen64](/vendor/zlib/#crc32_combine_gen64)
* [get\_crc\_table](/vendor/zlib/#get_crc_table)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [zlibCompileFlags](/vendor/zlib/#zlibCompileFlags)

### [free\_func ¶](#free_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L36)

```
free_func :: proc "c" (opaque: rawptr, address: rawptr)
```

### [gzFile ¶](#gzFile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L47)

```
gzFile :: ^gzFile_s
```

##### Related Procedures With Parameters

* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzclearerr](/vendor/zlib/#gzclearerr)
* [gzclose](/vendor/zlib/#gzclose)
* [gzclose\_r](/vendor/zlib/#gzclose_r)
* [gzclose\_w](/vendor/zlib/#gzclose_w)
* [gzdirect](/vendor/zlib/#gzdirect)
* [gzeof](/vendor/zlib/#gzeof)
* [gzerror](/vendor/zlib/#gzerror)
* [gzflush](/vendor/zlib/#gzflush)
* [gzfread](/vendor/zlib/#gzfread)
* [gzfwrite](/vendor/zlib/#gzfwrite)
* [gzgetc](/vendor/zlib/#gzgetc)
* [gzgetc\_](/vendor/zlib/#gzgetc_)
* [gzgets](/vendor/zlib/#gzgets)
* [gzoffset64](/vendor/zlib/#gzoffset64)
* [gzprintf](/vendor/zlib/#gzprintf)
* [gzputc](/vendor/zlib/#gzputc)
* [gzputs](/vendor/zlib/#gzputs)
* [gzread](/vendor/zlib/#gzread)
* [gzrewind](/vendor/zlib/#gzrewind)
* [gzseek64](/vendor/zlib/#gzseek64)
* [gzsetparams](/vendor/zlib/#gzsetparams)
* [gztell64](/vendor/zlib/#gztell64)
* [gzungetc](/vendor/zlib/#gzungetc)
* [gzwrite](/vendor/zlib/#gzwrite)



##### Related Procedures With Returns

* [gzdopen](/vendor/zlib/#gzdopen)
* [gzopen64](/vendor/zlib/#gzopen64)

### [gzFile\_s ¶](#gzFile_s) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L41)

```
gzFile_s :: struct {
	have: u32,
	next: [^]u8,
	pos:  i64,
}
```

##### Related Procedures With Parameters

* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzclearerr](/vendor/zlib/#gzclearerr)
* [gzclose](/vendor/zlib/#gzclose)
* [gzclose\_r](/vendor/zlib/#gzclose_r)
* [gzclose\_w](/vendor/zlib/#gzclose_w)
* [gzdirect](/vendor/zlib/#gzdirect)
* [gzeof](/vendor/zlib/#gzeof)
* [gzerror](/vendor/zlib/#gzerror)
* [gzflush](/vendor/zlib/#gzflush)
* [gzfread](/vendor/zlib/#gzfread)
* [gzfwrite](/vendor/zlib/#gzfwrite)
* [gzgetc](/vendor/zlib/#gzgetc)
* [gzgetc\_](/vendor/zlib/#gzgetc_)
* [gzgets](/vendor/zlib/#gzgets)
* [gzoffset64](/vendor/zlib/#gzoffset64)
* [gzprintf](/vendor/zlib/#gzprintf)
* [gzputc](/vendor/zlib/#gzputc)
* [gzputs](/vendor/zlib/#gzputs)
* [gzread](/vendor/zlib/#gzread)
* [gzrewind](/vendor/zlib/#gzrewind)
* [gzseek64](/vendor/zlib/#gzseek64)
* [gzsetparams](/vendor/zlib/#gzsetparams)
* [gztell64](/vendor/zlib/#gztell64)
* [gzungetc](/vendor/zlib/#gzungetc)
* [gzwrite](/vendor/zlib/#gzwrite)



##### Related Procedures With Returns

* [gzdopen](/vendor/zlib/#gzdopen)
* [gzopen64](/vendor/zlib/#gzopen64)

### [gz\_header ¶](#gz_header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L85)

```
gz_header :: gz_header_s
```

##### Related Procedures With Parameters

* [deflateSetHeader](/vendor/zlib/#deflateSetHeader)
* [inflateGetHeader](/vendor/zlib/#inflateGetHeader)

### [gz\_header\_s ¶](#gz_header_s) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L69)

```
gz_header_s :: struct {
	text:      i32,
	time:      u32,
	xflags:    i32,
	os:        i32,
	extra:     [^]u8,
	extra_len: u32,
	extra_max: u32,
	name:      [^]u8,
	name_max:  u32,
	comment:   [^]u8,
	comm_max:  u32,
	hcrc:      i32,
	done:      i32,
}
```

##### Related Procedures With Parameters

* [deflateSetHeader](/vendor/zlib/#deflateSetHeader)
* [inflateGetHeader](/vendor/zlib/#inflateGetHeader)

### [gz\_headerp ¶](#gz_headerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L86)

```
gz_headerp :: ^gz_header_s
```

##### Related Procedures With Parameters

* [deflateSetHeader](/vendor/zlib/#deflateSetHeader)
* [inflateGetHeader](/vendor/zlib/#inflateGetHeader)

### [in\_func ¶](#in_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L38)

```
in_func :: proc "c" (rawptr, [^][^]u8) -> u32
```

##### Related Procedures With Parameters

* [inflateBack](/vendor/zlib/#inflateBack)

### [off64\_t ¶](#off64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L32)

```
off64_t :: i64
```

##### Related Procedures With Parameters

* [adler32\_combine64](/vendor/zlib/#adler32_combine64)
* [crc32\_combine64](/vendor/zlib/#crc32_combine64)
* [crc32\_combine\_gen64](/vendor/zlib/#crc32_combine_gen64)
* [gzseek64](/vendor/zlib/#gzseek64)



##### Related Procedures With Returns

* [gzoffset64](/vendor/zlib/#gzoffset64)
* [gztell64](/vendor/zlib/#gztell64)

### [off\_t ¶](#off_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L31)

```
off_t :: i32
```

##### Related Procedures With Parameters

* [adler32\_combine](/vendor/zlib/#adler32_combine)
* [compress2](/vendor/zlib/#compress2)
* [crc32\_combine](/vendor/zlib/#crc32_combine)
* [crc32\_combine\_gen](/vendor/zlib/#crc32_combine_gen)
* [deflate](/vendor/zlib/#deflate)
* [deflateInit](/vendor/zlib/#deflateInit)
* [deflateInit2](/vendor/zlib/#deflateInit2)
* [deflateParams](/vendor/zlib/#deflateParams)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflatePrime](/vendor/zlib/#deflatePrime)
* [deflateTune](/vendor/zlib/#deflateTune)
* [gzdopen](/vendor/zlib/#gzdopen)
* [gzerror](/vendor/zlib/#gzerror)
* [gzflush](/vendor/zlib/#gzflush)
* [gzgets](/vendor/zlib/#gzgets)
* [gzputc](/vendor/zlib/#gzputc)
* [gzseek64](/vendor/zlib/#gzseek64)
* [gzsetparams](/vendor/zlib/#gzsetparams)
* [gzungetc](/vendor/zlib/#gzungetc)
* [inflate](/vendor/zlib/#inflate)
* [inflateBackInit](/vendor/zlib/#inflateBackInit)
* [inflateInit2](/vendor/zlib/#inflateInit2)
* [inflatePrime](/vendor/zlib/#inflatePrime)
* [inflateReset2](/vendor/zlib/#inflateReset2)
* [inflateUndermine](/vendor/zlib/#inflateUndermine)
* [inflateValidate](/vendor/zlib/#inflateValidate)
* [zError](/vendor/zlib/#zError)



##### Related Procedures With Returns

* [compress](/vendor/zlib/#compress)
* [deflateCopy](/vendor/zlib/#deflateCopy)
* [deflateEnd](/vendor/zlib/#deflateEnd)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflateReset](/vendor/zlib/#deflateReset)
* [deflateResetKeep](/vendor/zlib/#deflateResetKeep)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [deflateSetHeader](/vendor/zlib/#deflateSetHeader)
* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzclose](/vendor/zlib/#gzclose)
* [gzclose\_r](/vendor/zlib/#gzclose_r)
* [gzclose\_w](/vendor/zlib/#gzclose_w)
* [gzdirect](/vendor/zlib/#gzdirect)
* [gzeof](/vendor/zlib/#gzeof)
* [gzgetc](/vendor/zlib/#gzgetc)
* [gzgetc\_](/vendor/zlib/#gzgetc_)
* [gzprintf](/vendor/zlib/#gzprintf)
* [gzputs](/vendor/zlib/#gzputs)
* [gzread](/vendor/zlib/#gzread)
* [gzrewind](/vendor/zlib/#gzrewind)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateBack](/vendor/zlib/#inflateBack)
* [inflateBackEnd](/vendor/zlib/#inflateBackEnd)
* [inflateCopy](/vendor/zlib/#inflateCopy)
* [inflateEnd](/vendor/zlib/#inflateEnd)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateGetHeader](/vendor/zlib/#inflateGetHeader)
* [inflateInit](/vendor/zlib/#inflateInit)
* [inflateMark](/vendor/zlib/#inflateMark)
* [inflateReset](/vendor/zlib/#inflateReset)
* [inflateResetKeep](/vendor/zlib/#inflateResetKeep)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [inflateSync](/vendor/zlib/#inflateSync)
* [inflateSyncPoint](/vendor/zlib/#inflateSyncPoint)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)

### [out\_func ¶](#out_func) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L39)

```
out_func :: proc "c" (rawptr, [^]u8, u32) -> i32
```

##### Related Procedures With Parameters

* [inflateBack](/vendor/zlib/#inflateBack)

### [size\_t ¶](#size_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L30)

```
size_t :: uint
```

##### Related Procedures With Parameters

* [adler32\_z](/vendor/zlib/#adler32_z)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [gzfread](/vendor/zlib/#gzfread)
* [gzfwrite](/vendor/zlib/#gzfwrite)

### [uInt ¶](#uInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L26)

```
uInt :: u32
```

##### Related Procedures With Parameters

* [adler32](/vendor/zlib/#adler32)
* [adler32\_combine](/vendor/zlib/#adler32_combine)
* [adler32\_combine64](/vendor/zlib/#adler32_combine64)
* [adler32\_z](/vendor/zlib/#adler32_z)
* [compress](/vendor/zlib/#compress)
* [compress2](/vendor/zlib/#compress2)
* [compressBound](/vendor/zlib/#compressBound)
* [crc32](/vendor/zlib/#crc32)
* [crc32\_combine](/vendor/zlib/#crc32_combine)
* [crc32\_combine64](/vendor/zlib/#crc32_combine64)
* [crc32\_combine\_op](/vendor/zlib/#crc32_combine_op)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)



##### Related Procedures With Returns

* [crc32\_combine\_gen](/vendor/zlib/#crc32_combine_gen)
* [crc32\_combine\_gen64](/vendor/zlib/#crc32_combine_gen64)
* [get\_crc\_table](/vendor/zlib/#get_crc_table)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [zlibCompileFlags](/vendor/zlib/#zlibCompileFlags)

### [uIntf ¶](#uIntf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L27)

```
uIntf :: u32
```

##### Related Procedures With Parameters

* [adler32](/vendor/zlib/#adler32)
* [adler32\_combine](/vendor/zlib/#adler32_combine)
* [adler32\_combine64](/vendor/zlib/#adler32_combine64)
* [adler32\_z](/vendor/zlib/#adler32_z)
* [compress](/vendor/zlib/#compress)
* [compress2](/vendor/zlib/#compress2)
* [compressBound](/vendor/zlib/#compressBound)
* [crc32](/vendor/zlib/#crc32)
* [crc32\_combine](/vendor/zlib/#crc32_combine)
* [crc32\_combine64](/vendor/zlib/#crc32_combine64)
* [crc32\_combine\_op](/vendor/zlib/#crc32_combine_op)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)



##### Related Procedures With Returns

* [crc32\_combine\_gen](/vendor/zlib/#crc32_combine_gen)
* [crc32\_combine\_gen64](/vendor/zlib/#crc32_combine_gen64)
* [get\_crc\_table](/vendor/zlib/#get_crc_table)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [zlibCompileFlags](/vendor/zlib/#zlibCompileFlags)

### [uLong ¶](#uLong) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L28)

```
uLong :: u32
```

##### Related Procedures With Parameters

* [adler32](/vendor/zlib/#adler32)
* [adler32\_combine](/vendor/zlib/#adler32_combine)
* [adler32\_combine64](/vendor/zlib/#adler32_combine64)
* [adler32\_z](/vendor/zlib/#adler32_z)
* [compress](/vendor/zlib/#compress)
* [compress2](/vendor/zlib/#compress2)
* [compressBound](/vendor/zlib/#compressBound)
* [crc32](/vendor/zlib/#crc32)
* [crc32\_combine](/vendor/zlib/#crc32_combine)
* [crc32\_combine64](/vendor/zlib/#crc32_combine64)
* [crc32\_combine\_op](/vendor/zlib/#crc32_combine_op)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)



##### Related Procedures With Returns

* [crc32\_combine\_gen](/vendor/zlib/#crc32_combine_gen)
* [crc32\_combine\_gen64](/vendor/zlib/#crc32_combine_gen64)
* [get\_crc\_table](/vendor/zlib/#get_crc_table)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [zlibCompileFlags](/vendor/zlib/#zlibCompileFlags)

### [uLongf ¶](#uLongf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L29)

```
uLongf :: u32
```

##### Related Procedures With Parameters

* [adler32](/vendor/zlib/#adler32)
* [adler32\_combine](/vendor/zlib/#adler32_combine)
* [adler32\_combine64](/vendor/zlib/#adler32_combine64)
* [adler32\_z](/vendor/zlib/#adler32_z)
* [compress](/vendor/zlib/#compress)
* [compress2](/vendor/zlib/#compress2)
* [compressBound](/vendor/zlib/#compressBound)
* [crc32](/vendor/zlib/#crc32)
* [crc32\_combine](/vendor/zlib/#crc32_combine)
* [crc32\_combine64](/vendor/zlib/#crc32_combine64)
* [crc32\_combine\_op](/vendor/zlib/#crc32_combine_op)
* [crc32\_z](/vendor/zlib/#crc32_z)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [gzbuffer](/vendor/zlib/#gzbuffer)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [uncompress](/vendor/zlib/#uncompress)
* [uncompress2](/vendor/zlib/#uncompress2)



##### Related Procedures With Returns

* [crc32\_combine\_gen](/vendor/zlib/#crc32_combine_gen)
* [crc32\_combine\_gen64](/vendor/zlib/#crc32_combine_gen64)
* [get\_crc\_table](/vendor/zlib/#get_crc_table)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [zlibCompileFlags](/vendor/zlib/#zlibCompileFlags)

### [voidp ¶](#voidp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L21)

```
voidp :: rawptr
```

##### Related Procedures With Parameters

* [gzfread](/vendor/zlib/#gzfread)
* [gzfwrite](/vendor/zlib/#gzfwrite)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateBack](/vendor/zlib/#inflateBack)

### [voidpc ¶](#voidpc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L23)

```
voidpc :: rawptr
```

##### Related Procedures With Parameters

* [gzfread](/vendor/zlib/#gzfread)
* [gzfwrite](/vendor/zlib/#gzfwrite)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateBack](/vendor/zlib/#inflateBack)

### [voidpf ¶](#voidpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L22)

```
voidpf :: rawptr
```

##### Related Procedures With Parameters

* [gzfread](/vendor/zlib/#gzfread)
* [gzfwrite](/vendor/zlib/#gzfwrite)
* [gzread](/vendor/zlib/#gzread)
* [gzwrite](/vendor/zlib/#gzwrite)
* [inflateBack](/vendor/zlib/#inflateBack)

### [z\_stream ¶](#z_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L66)

```
z_stream :: z_stream_s
```

##### Related Procedures With Parameters

* [deflate](/vendor/zlib/#deflate)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateCopy](/vendor/zlib/#deflateCopy)
* [deflateEnd](/vendor/zlib/#deflateEnd)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflateInit](/vendor/zlib/#deflateInit)
* [deflateInit2](/vendor/zlib/#deflateInit2)
* [deflateParams](/vendor/zlib/#deflateParams)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflatePrime](/vendor/zlib/#deflatePrime)
* [deflateReset](/vendor/zlib/#deflateReset)
* [deflateResetKeep](/vendor/zlib/#deflateResetKeep)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [deflateSetHeader](/vendor/zlib/#deflateSetHeader)
* [deflateTune](/vendor/zlib/#deflateTune)
* [inflate](/vendor/zlib/#inflate)
* [inflateBack](/vendor/zlib/#inflateBack)
* [inflateBackEnd](/vendor/zlib/#inflateBackEnd)
* [inflateBackInit](/vendor/zlib/#inflateBackInit)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [inflateCopy](/vendor/zlib/#inflateCopy)
* [inflateEnd](/vendor/zlib/#inflateEnd)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateGetHeader](/vendor/zlib/#inflateGetHeader)
* [inflateInit](/vendor/zlib/#inflateInit)
* [inflateInit2](/vendor/zlib/#inflateInit2)
* [inflateMark](/vendor/zlib/#inflateMark)
* [inflatePrime](/vendor/zlib/#inflatePrime)
* [inflateReset](/vendor/zlib/#inflateReset)
* [inflateReset2](/vendor/zlib/#inflateReset2)
* [inflateResetKeep](/vendor/zlib/#inflateResetKeep)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [inflateSync](/vendor/zlib/#inflateSync)
* [inflateSyncPoint](/vendor/zlib/#inflateSyncPoint)
* [inflateUndermine](/vendor/zlib/#inflateUndermine)
* [inflateValidate](/vendor/zlib/#inflateValidate)

### [z\_stream\_s ¶](#z_stream_s) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L49)

```
z_stream_s :: struct {
	next_in:   ^u8,
	avail_in:  u32,
	total_in:  u32,
	next_out:  ^u8,
	avail_out: u32,
	total_out: u32,
	msg:       [^]u8,
	state:     rawptr,
	zalloc:    alloc_func,
	zfree:     free_func,
	opaque:    rawptr,
	data_type: i32,
	adler:     u32,
	reserved:  u32,
}
```

##### Related Procedures With Parameters

* [deflate](/vendor/zlib/#deflate)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateCopy](/vendor/zlib/#deflateCopy)
* [deflateEnd](/vendor/zlib/#deflateEnd)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflateInit](/vendor/zlib/#deflateInit)
* [deflateInit2](/vendor/zlib/#deflateInit2)
* [deflateParams](/vendor/zlib/#deflateParams)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflatePrime](/vendor/zlib/#deflatePrime)
* [deflateReset](/vendor/zlib/#deflateReset)
* [deflateResetKeep](/vendor/zlib/#deflateResetKeep)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [deflateSetHeader](/vendor/zlib/#deflateSetHeader)
* [deflateTune](/vendor/zlib/#deflateTune)
* [inflate](/vendor/zlib/#inflate)
* [inflateBack](/vendor/zlib/#inflateBack)
* [inflateBackEnd](/vendor/zlib/#inflateBackEnd)
* [inflateBackInit](/vendor/zlib/#inflateBackInit)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [inflateCopy](/vendor/zlib/#inflateCopy)
* [inflateEnd](/vendor/zlib/#inflateEnd)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateGetHeader](/vendor/zlib/#inflateGetHeader)
* [inflateInit](/vendor/zlib/#inflateInit)
* [inflateInit2](/vendor/zlib/#inflateInit2)
* [inflateMark](/vendor/zlib/#inflateMark)
* [inflatePrime](/vendor/zlib/#inflatePrime)
* [inflateReset](/vendor/zlib/#inflateReset)
* [inflateReset2](/vendor/zlib/#inflateReset2)
* [inflateResetKeep](/vendor/zlib/#inflateResetKeep)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [inflateSync](/vendor/zlib/#inflateSync)
* [inflateSyncPoint](/vendor/zlib/#inflateSyncPoint)
* [inflateUndermine](/vendor/zlib/#inflateUndermine)
* [inflateValidate](/vendor/zlib/#inflateValidate)

### [z\_streamp ¶](#z_streamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L67)

```
z_streamp :: ^z_stream_s
```

##### Related Procedures With Parameters

* [deflate](/vendor/zlib/#deflate)
* [deflateBound](/vendor/zlib/#deflateBound)
* [deflateCopy](/vendor/zlib/#deflateCopy)
* [deflateEnd](/vendor/zlib/#deflateEnd)
* [deflateGetDictionary](/vendor/zlib/#deflateGetDictionary)
* [deflateInit](/vendor/zlib/#deflateInit)
* [deflateInit2](/vendor/zlib/#deflateInit2)
* [deflateParams](/vendor/zlib/#deflateParams)
* [deflatePending](/vendor/zlib/#deflatePending)
* [deflatePrime](/vendor/zlib/#deflatePrime)
* [deflateReset](/vendor/zlib/#deflateReset)
* [deflateResetKeep](/vendor/zlib/#deflateResetKeep)
* [deflateSetDictionary](/vendor/zlib/#deflateSetDictionary)
* [deflateSetHeader](/vendor/zlib/#deflateSetHeader)
* [deflateTune](/vendor/zlib/#deflateTune)
* [inflate](/vendor/zlib/#inflate)
* [inflateBack](/vendor/zlib/#inflateBack)
* [inflateBackEnd](/vendor/zlib/#inflateBackEnd)
* [inflateBackInit](/vendor/zlib/#inflateBackInit)
* [inflateCodesUsed](/vendor/zlib/#inflateCodesUsed)
* [inflateCopy](/vendor/zlib/#inflateCopy)
* [inflateEnd](/vendor/zlib/#inflateEnd)
* [inflateGetDictionary](/vendor/zlib/#inflateGetDictionary)
* [inflateGetHeader](/vendor/zlib/#inflateGetHeader)
* [inflateInit](/vendor/zlib/#inflateInit)
* [inflateInit2](/vendor/zlib/#inflateInit2)
* [inflateMark](/vendor/zlib/#inflateMark)
* [inflatePrime](/vendor/zlib/#inflatePrime)
* [inflateReset](/vendor/zlib/#inflateReset)
* [inflateReset2](/vendor/zlib/#inflateReset2)
* [inflateResetKeep](/vendor/zlib/#inflateResetKeep)
* [inflateSetDictionary](/vendor/zlib/#inflateSetDictionary)
* [inflateSync](/vendor/zlib/#inflateSync)
* [inflateSyncPoint](/vendor/zlib/#inflateSyncPoint)
* [inflateUndermine](/vendor/zlib/#inflateUndermine)
* [inflateValidate](/vendor/zlib/#inflateValidate)

## Constants

### [ASCII ¶](#ASCII) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L125)

```
ASCII :: TEXT
```

 

for compatibility with 1.2.2 and earlier

### [BEST\_COMPRESSION ¶](#BEST_COMPRESSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L112)

```
BEST_COMPRESSION :: 9
```

### [BEST\_SPEED ¶](#BEST_SPEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L111)

```
BEST_SPEED :: 1
```

### [BINARY ¶](#BINARY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L123)

```
BINARY :: 0
```

 

Possible values of the data\_type field for deflate()

### [BLOCK ¶](#BLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L94)

```
BLOCK :: 5
```

### [BUF\_ERROR ¶](#BUF_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L106)

```
BUF_ERROR :: -5
```

### [DATA\_ERROR ¶](#DATA_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L104)

```
DATA_ERROR :: -3
```

### [DEFAULT\_COMPRESSION ¶](#DEFAULT_COMPRESSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L113)

```
DEFAULT_COMPRESSION :: -1
```

### [DEFAULT\_STRATEGY ¶](#DEFAULT_STRATEGY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L120)

```
DEFAULT_STRATEGY :: 0
```

### [DEFLATED ¶](#DEFLATED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L129)

```
DEFLATED :: 8
```

 

The deflate compression method (the only one supported in this version)

### [ERRNO ¶](#ERRNO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L102)

```
ERRNO :: -1
```

### [FILTERED ¶](#FILTERED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L116)

```
FILTERED :: 1
```

 

compression strategy; see deflateInit2() below for details

### [FINISH ¶](#FINISH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L93)

```
FINISH :: 4
```

### [FIXED ¶](#FIXED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L119)

```
FIXED :: 4
```

### [FULL\_FLUSH ¶](#FULL_FLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L92)

```
FULL_FLUSH :: 3
```

### [HUFFMAN\_ONLY ¶](#HUFFMAN_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L117)

```
HUFFMAN_ONLY :: 2
```

### [MEM\_ERROR ¶](#MEM_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L105)

```
MEM_ERROR :: -4
```

### [NEED\_DICT ¶](#NEED_DICT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L101)

```
NEED_DICT :: 2
```

### [NO\_COMPRESSION ¶](#NO_COMPRESSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L110)

```
NO_COMPRESSION :: 0
```

 

compression levels

### [NO\_FLUSH ¶](#NO_FLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L89)

```
NO_FLUSH :: 0
```

 

Allowed flush values; see deflate() and inflate() below for details

### [NULL ¶](#NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L131)

```
NULL :: 0
```

 

for initializing zalloc, zfree, opaque

### [OK ¶](#OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L99)

```
OK :: 0
```

 

Return codes for the compression/decompression functions. Negative values are
errors, positive values are used for special but normal events.

### [PARTIAL\_FLUSH ¶](#PARTIAL_FLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L90)

```
PARTIAL_FLUSH :: 1
```

### [RLE ¶](#RLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L118)

```
RLE :: 3
```

### [STREAM\_END ¶](#STREAM_END) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L100)

```
STREAM_END :: 1
```

### [STREAM\_ERROR ¶](#STREAM_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L103)

```
STREAM_ERROR :: -2
```

### [SYNC\_FLUSH ¶](#SYNC_FLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L91)

```
SYNC_FLUSH :: 2
```

### [TEXT ¶](#TEXT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L124)

```
TEXT :: 1
```

### [TREES ¶](#TREES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L95)

```
TREES :: 6
```

### [UNKNOWN ¶](#UNKNOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L126)

```
UNKNOWN :: 2
```

### [VERNUM ¶](#VERNUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L15)

```
VERNUM :: 0x12c0
```

### [VERSION ¶](#VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L14)

```
VERSION :: "1.2.12"
```

### [VERSION\_ERROR ¶](#VERSION_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L107)

```
VERSION_ERROR :: -6
```

### [VER\_MAJOR ¶](#VER_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L16)

```
VER_MAJOR :: 1
```

### [VER\_MINOR ¶](#VER_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L17)

```
VER_MINOR :: 2
```

### [VER\_REVISION ¶](#VER_REVISION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L18)

```
VER_REVISION :: 12
```

### [VER\_SUBREVISION ¶](#VER_SUBREVISION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L19)

```
VER_SUBREVISION :: 0
```

## Variables

This section is empty.

## Procedures

### [Version ¶](#Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L139)

```
Version :: proc "c" () -> cstring ---
```

 

becase zlib.zlibVersion would be silly to write

### [adler32 ¶](#adler32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L194)

```
adler32 :: proc "c" (adler: u32, buf: [^]u8, len: u32) -> u32 ---
```

### [adler32\_combine ¶](#adler32_combine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L206)

```
adler32_combine :: proc "c" (u32, u32, i32) -> u32 ---
```

### [adler32\_combine64 ¶](#adler32_combine64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L203)

```
adler32_combine64 :: proc "c" (u32, u32, i64) -> u32 ---
```

### [adler32\_z ¶](#adler32_z) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L195)

```
adler32_z :: proc "c" (adler: u32, buf: [^]u8, len: uint) -> u32 ---
```

### [compress ¶](#compress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L167)

```
compress :: proc "c" (dest: [^]u8, destLen: ^u32, source: [^]u8, sourceLen: u32) -> i32 ---
```

### [compress2 ¶](#compress2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L168)

```
compress2 :: proc "c" (dest: [^]u8, destLen: ^u32, source: [^]u8, sourceLen: u32, level: i32) -> i32 ---
```

### [compressBound ¶](#compressBound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L169)

```
compressBound :: proc "c" (sourceLen: u32) -> u32 ---
```

### [crc32 ¶](#crc32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L196)

```
crc32 :: proc "c" (crc: u32, buf: [^]u8, len: u32) -> u32 ---
```

### [crc32\_combine ¶](#crc32_combine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L207)

```
crc32_combine :: proc "c" (u32, u32, i32) -> u32 ---
```

### [crc32\_combine64 ¶](#crc32_combine64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L204)

```
crc32_combine64 :: proc "c" (u32, u32, i64) -> u32 ---
```

### [crc32\_combine\_gen ¶](#crc32_combine_gen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L208)

```
crc32_combine_gen :: proc "c" (i32) -> u32 ---
```

### [crc32\_combine\_gen64 ¶](#crc32_combine_gen64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L205)

```
crc32_combine_gen64 :: proc "c" (i64) -> u32 ---
```

### [crc32\_combine\_op ¶](#crc32_combine_op) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L198)

```
crc32_combine_op :: proc "c" (crc1, crc2, op: u32) -> u32 ---
```

### [crc32\_z ¶](#crc32_z) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L197)

```
crc32_z :: proc "c" (crc: u32, buf: [^]u8, len: uint) -> u32 ---
```

### [deflate ¶](#deflate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L141)

```
deflate :: proc "c" (strm: ^z_stream_s, flush: i32) -> i32 ---
```

### [deflateBound ¶](#deflateBound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L151)

```
deflateBound :: proc "c" (strm: ^z_stream_s, sourceLen: u32) -> u32 ---
```

### [deflateCopy ¶](#deflateCopy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L147)

```
deflateCopy :: proc "c" (dest, source: ^z_stream_s) -> i32 ---
```

### [deflateEnd ¶](#deflateEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L142)

```
deflateEnd :: proc "c" (strm: ^z_stream_s) -> i32 ---
```

### [deflateGetDictionary ¶](#deflateGetDictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L146)

```
deflateGetDictionary :: proc "c" (strm: ^z_stream_s, dictionary: [^]u8, dictLength: ^u32) -> i32 ---
```

### [deflateInit ¶](#deflateInit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L235)

```
deflateInit :: proc "c" (strm: ^z_stream_s, level: i32) -> i32 {…}
```

### [deflateInit2 ¶](#deflateInit2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L243)

```
deflateInit2 :: proc "c" (
	strm:                                ^z_stream_s, 
	level, method, windowBits, memLevel, 
	strategy:                            i32, 
) -> i32 {…}
```

### [deflateParams ¶](#deflateParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L149)

```
deflateParams :: proc "c" (strm: ^z_stream_s, level, strategy: i32) -> i32 ---
```

### [deflatePending ¶](#deflatePending) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L152)

```
deflatePending :: proc "c" (strm: ^z_stream_s, pending: [^]u32, bits: [^]i32) -> i32 ---
```

### [deflatePrime ¶](#deflatePrime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L153)

```
deflatePrime :: proc "c" (strm: ^z_stream_s, bits, value: i32) -> i32 ---
```

### [deflateReset ¶](#deflateReset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L148)

```
deflateReset :: proc "c" (strm: ^z_stream_s) -> i32 ---
```

### [deflateResetKeep ¶](#deflateResetKeep) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L216)

```
deflateResetKeep :: proc "c" (^z_stream_s) -> i32 ---
```

### [deflateSetDictionary ¶](#deflateSetDictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L145)

```
deflateSetDictionary :: proc "c" (strm: ^z_stream_s, dictionary: [^]u8, dictLength: u32) -> i32 ---
```

### [deflateSetHeader ¶](#deflateSetHeader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L154)

```
deflateSetHeader :: proc "c" (strm: ^z_stream_s, head: ^gz_header_s) -> i32 ---
```

### [deflateTune ¶](#deflateTune) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L150)

```
deflateTune :: proc "c" (strm: ^z_stream_s, good_length, max_lazy, nice_length, max_chain: i32) -> i32 ---
```

### [get\_crc\_table ¶](#get_crc_table) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L211)

```
get_crc_table :: proc "c" () -> [^]u32 ---
```

### [gzbuffer ¶](#gzbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L173)

```
gzbuffer :: proc "c" (file: ^gzFile_s, size: u32) -> i32 ---
```

### [gzclearerr ¶](#gzclearerr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L193)

```
gzclearerr :: proc "c" (file: ^gzFile_s) ---
```

### [gzclose ¶](#gzclose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L189)

```
gzclose :: proc "c" (file: ^gzFile_s) -> i32 ---
```

### [gzclose\_r ¶](#gzclose_r) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L190)

```
gzclose_r :: proc "c" (file: ^gzFile_s) -> i32 ---
```

### [gzclose\_w ¶](#gzclose_w) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L191)

```
gzclose_w :: proc "c" (file: ^gzFile_s) -> i32 ---
```

### [gzdirect ¶](#gzdirect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L188)

```
gzdirect :: proc "c" (file: ^gzFile_s) -> i32 ---
```

### [gzdopen ¶](#gzdopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L172)

```
gzdopen :: proc "c" (fd: i32, mode: cstring) -> ^gzFile_s ---
```

### [gzeof ¶](#gzeof) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L187)

```
gzeof :: proc "c" (file: ^gzFile_s) -> i32 ---
```

### [gzerror ¶](#gzerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L192)

```
gzerror :: proc "c" (file: ^gzFile_s, errnum: ^i32) -> cstring ---
```

### [gzflush ¶](#gzflush) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L185)

```
gzflush :: proc "c" (file: ^gzFile_s, flush: i32) -> i32 ---
```

### [gzfread ¶](#gzfread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L176)

```
gzfread :: proc "c" (buf: rawptr, size, nitems: uint, file: ^gzFile_s) -> uint ---
```

### [gzfwrite ¶](#gzfwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L178)

```
gzfwrite :: proc "c" (buf: rawptr, size, nitems: uint, file: ^gzFile_s) -> uint ---
```

### [gzgetc ¶](#gzgetc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L259)

```
gzgetc :: proc(file: ^gzFile_s) -> i32 {…}
```

 

zlib.h redefines gzgetc with a macro and uses (gzgetc)(g) to invoke it from
inside the same macro (preventing macro expansion), in Odin we give that a
unique name using link\_prefix then implement the body of the macro in our own
procedure calling the unique named gzgetc instead.

### [gzgetc\_ ¶](#gzgetc_) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L183)

```
gzgetc_ :: proc "c" (file: ^gzFile_s) -> i32 ---
```

 

backwards compat, not the same as gzget

### [gzgets ¶](#gzgets) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L181)

```
gzgets :: proc "c" (file: ^gzFile_s, buf: [^]u8, len: i32) -> [^]u8 ---
```

### [gzoffset64 ¶](#gzoffset64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L202)

```
gzoffset64 :: proc "c" (^gzFile_s) -> i64 ---
```

### [gzopen64 ¶](#gzopen64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L199)

```
gzopen64 :: proc "c" (cstring, cstring) -> ^gzFile_s ---
```

### [gzprintf ¶](#gzprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L179)

```
gzprintf :: proc "c" (file: ^gzFile_s, format: cstring, .. args: ..any) -> i32 ---
```

### [gzputc ¶](#gzputc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L182)

```
gzputc :: proc "c" (file: ^gzFile_s, ch: i32) -> i32 ---
```

### [gzputs ¶](#gzputs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L180)

```
gzputs :: proc "c" (file: ^gzFile_s, s: cstring) -> i32 ---
```

### [gzread ¶](#gzread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L175)

```
gzread :: proc "c" (file: ^gzFile_s, buf: rawptr, len: u32) -> i32 ---
```

### [gzrewind ¶](#gzrewind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L186)

```
gzrewind :: proc "c" (file: ^gzFile_s) -> i32 ---
```

### [gzseek64 ¶](#gzseek64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L200)

```
gzseek64 :: proc "c" (^gzFile_s, i64, i32) -> i64 ---
```

### [gzsetparams ¶](#gzsetparams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L174)

```
gzsetparams :: proc "c" (file: ^gzFile_s, level, strategy: i32) -> i32 ---
```

### [gztell64 ¶](#gztell64) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L201)

```
gztell64 :: proc "c" (^gzFile_s) -> i64 ---
```

### [gzungetc ¶](#gzungetc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L184)

```
gzungetc :: proc "c" (ch: i32, file: ^gzFile_s) -> i32 ---
```

### [gzwrite ¶](#gzwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L177)

```
gzwrite :: proc "c" (file: ^gzFile_s, buf: rawptr, len: u32) -> i32 ---
```

### [inflate ¶](#inflate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L143)

```
inflate :: proc "c" (strm: ^z_stream_s, flush: i32) -> i32 ---
```

### [inflateBack ¶](#inflateBack) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L164)

```
inflateBack :: proc "c" (strm: ^z_stream_s, _in: in_func, in_desc: rawptr, out: out_func, out_desc: rawptr) -> i32 ---
```

### [inflateBackEnd ¶](#inflateBackEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L165)

```
inflateBackEnd :: proc "c" (strm: ^z_stream_s) -> i32 ---
```

### [inflateBackInit ¶](#inflateBackInit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L251)

```
inflateBackInit :: proc "c" (strm: ^z_stream_s, windowBits: i32, window: [^]u8) -> i32 {…}
```

### [inflateCodesUsed ¶](#inflateCodesUsed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L214)

```
inflateCodesUsed :: proc "c" (^z_stream_s) -> u32 ---
```

### [inflateCopy ¶](#inflateCopy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L158)

```
inflateCopy :: proc "c" (dest, source: ^z_stream_s) -> i32 ---
```

### [inflateEnd ¶](#inflateEnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L144)

```
inflateEnd :: proc "c" (strm: ^z_stream_s) -> i32 ---
```

### [inflateGetDictionary ¶](#inflateGetDictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L156)

```
inflateGetDictionary :: proc "c" (strm: ^z_stream_s, dictionary: [^]u8, dictLength: ^u32) -> i32 ---
```

### [inflateGetHeader ¶](#inflateGetHeader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L163)

```
inflateGetHeader :: proc "c" (strm: ^z_stream_s, head: ^gz_header_s) -> i32 ---
```

### [inflateInit ¶](#inflateInit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L239)

```
inflateInit :: proc "c" (strm: ^z_stream_s) -> i32 {…}
```

### [inflateInit2 ¶](#inflateInit2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L247)

```
inflateInit2 :: proc "c" (strm: ^z_stream_s, windowBits: i32) -> i32 {…}
```

### [inflateMark ¶](#inflateMark) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L162)

```
inflateMark :: proc "c" (strm: ^z_stream_s) -> i32 ---
```

### [inflatePrime ¶](#inflatePrime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L161)

```
inflatePrime :: proc "c" (strm: ^z_stream_s, bits, value: i32) -> i32 ---
```

### [inflateReset ¶](#inflateReset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L159)

```
inflateReset :: proc "c" (strm: ^z_stream_s) -> i32 ---
```

### [inflateReset2 ¶](#inflateReset2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L160)

```
inflateReset2 :: proc "c" (strm: ^z_stream_s, windowBits: i32) -> i32 ---
```

### [inflateResetKeep ¶](#inflateResetKeep) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L215)

```
inflateResetKeep :: proc "c" (^z_stream_s) -> i32 ---
```

### [inflateSetDictionary ¶](#inflateSetDictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L155)

```
inflateSetDictionary :: proc "c" (strm: ^z_stream_s, dictionary: [^]u8, dictLength: u32) -> i32 ---
```

### [inflateSync ¶](#inflateSync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L157)

```
inflateSync :: proc "c" (strm: ^z_stream_s) -> i32 ---
```

### [inflateSyncPoint ¶](#inflateSyncPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L210)

```
inflateSyncPoint :: proc "c" (^z_stream_s) -> i32 ---
```

### [inflateUndermine ¶](#inflateUndermine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L212)

```
inflateUndermine :: proc "c" (^z_stream_s, i32) -> i32 ---
```

### [inflateValidate ¶](#inflateValidate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L213)

```
inflateValidate :: proc "c" (^z_stream_s, i32) -> i32 ---
```

### [uncompress ¶](#uncompress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L170)

```
uncompress :: proc "c" (dest: [^]u8, destLen: ^u32, source: [^]u8, sourceLen: u32) -> i32 ---
```

### [uncompress2 ¶](#uncompress2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L171)

```
uncompress2 :: proc "c" (dest: [^]u8, destLen: ^u32, source: [^]u8, sourceLen: ^u32) -> i32 ---
```

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L139)

```
version :: Version
```

 

becase zlib.zlibVersion would be silly to write

### [zError ¶](#zError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L209)

```
zError :: proc "c" (i32) -> cstring ---
```

### [zlibCompileFlags ¶](#zlibCompileFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin#L166)

```
zlibCompileFlags :: proc "c" () -> u32 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [zlib.odin](https://github.com/odin-lang/Odin/tree/master/vendor/zlib/zlib.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:55.670693300 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Byte](#Byte)
    + [Bytef](#Bytef)
    + [alloc\_func](#alloc_func)
    + [crc\_t](#crc_t)
    + [free\_func](#free_func)
    + [gzFile](#gzFile)
    + [gzFile\_s](#gzFile_s)
    + [gz\_header](#gz_header)
    + [gz\_header\_s](#gz_header_s)
    + [gz\_headerp](#gz_headerp)
    + [in\_func](#in_func)
    + [off64\_t](#off64_t)
    + [off\_t](#off_t)
    + [out\_func](#out_func)
    + [size\_t](#size_t)
    + [uInt](#uInt)
    + [uIntf](#uIntf)
    + [uLong](#uLong)
    + [uLongf](#uLongf)
    + [voidp](#voidp)
    + [voidpc](#voidpc)
    + [voidpf](#voidpf)
    + [z\_stream](#z_stream)
    + [z\_stream\_s](#z_stream_s)
    + [z\_streamp](#z_streamp)
  * [Constants](#pkg-Constants)
    + [ASCII](#ASCII)
    + [BEST\_COMPRESSION](#BEST_COMPRESSION)
    + [BEST\_SPEED](#BEST_SPEED)
    + [BINARY](#BINARY)
    + [BLOCK](#BLOCK)
    + [BUF\_ERROR](#BUF_ERROR)
    + [DATA\_ERROR](#DATA_ERROR)
    + [DEFAULT\_COMPRESSION](#DEFAULT_COMPRESSION)
    + [DEFAULT\_STRATEGY](#DEFAULT_STRATEGY)
    + [DEFLATED](#DEFLATED)
    + [ERRNO](#ERRNO)
    + [FILTERED](#FILTERED)
    + [FINISH](#FINISH)
    + [FIXED](#FIXED)
    + [FULL\_FLUSH](#FULL_FLUSH)
    + [HUFFMAN\_ONLY](#HUFFMAN_ONLY)
    + [MEM\_ERROR](#MEM_ERROR)
    + [NEED\_DICT](#NEED_DICT)
    + [NO\_COMPRESSION](#NO_COMPRESSION)
    + [NO\_FLUSH](#NO_FLUSH)
    + [NULL](#NULL)
    + [OK](#OK)
    + [PARTIAL\_FLUSH](#PARTIAL_FLUSH)
    + [RLE](#RLE)
    + [STREAM\_END](#STREAM_END)
    + [STREAM\_ERROR](#STREAM_ERROR)
    + [SYNC\_FLUSH](#SYNC_FLUSH)
    + [TEXT](#TEXT)
    + [TREES](#TREES)
    + [UNKNOWN](#UNKNOWN)
    + [VERNUM](#VERNUM)
    + [VERSION](#VERSION)
    + [VERSION\_ERROR](#VERSION_ERROR)
    + [VER\_MAJOR](#VER_MAJOR)
    + [VER\_MINOR](#VER_MINOR)
    + [VER\_REVISION](#VER_REVISION)
    + [VER\_SUBREVISION](#VER_SUBREVISION)
  * [Procedures](#pkg-Procedures)
    + [Version](#Version)
    + [adler32](#adler32)
    + [adler32\_combine](#adler32_combine)
    + [adler32\_combine64](#adler32_combine64)
    + [adler32\_z](#adler32_z)
    + [compress](#compress)
    + [compress2](#compress2)
    + [compressBound](#compressBound)
    + [crc32](#crc32)
    + [crc32\_combine](#crc32_combine)
    + [crc32\_combine64](#crc32_combine64)
    + [crc32\_combine\_gen](#crc32_combine_gen)
    + [crc32\_combine\_gen64](#crc32_combine_gen64)
    + [crc32\_combine\_op](#crc32_combine_op)
    + [crc32\_z](#crc32_z)
    + [deflate](#deflate)
    + [deflateBound](#deflateBound)
    + [deflateCopy](#deflateCopy)
    + [deflateEnd](#deflateEnd)
    + [deflateGetDictionary](#deflateGetDictionary)
    + [deflateInit](#deflateInit)
    + [deflateInit2](#deflateInit2)
    + [deflateParams](#deflateParams)
    + [deflatePending](#deflatePending)
    + [deflatePrime](#deflatePrime)
    + [deflateReset](#deflateReset)
    + [deflateResetKeep](#deflateResetKeep)
    + [deflateSetDictionary](#deflateSetDictionary)
    + [deflateSetHeader](#deflateSetHeader)
    + [deflateTune](#deflateTune)
    + [get\_crc\_table](#get_crc_table)
    + [gzbuffer](#gzbuffer)
    + [gzclearerr](#gzclearerr)
    + [gzclose](#gzclose)
    + [gzclose\_r](#gzclose_r)
    + [gzclose\_w](#gzclose_w)
    + [gzdirect](#gzdirect)
    + [gzdopen](#gzdopen)
    + [gzeof](#gzeof)
    + [gzerror](#gzerror)
    + [gzflush](#gzflush)
    + [gzfread](#gzfread)
    + [gzfwrite](#gzfwrite)
    + [gzgetc](#gzgetc)
    + [gzgetc\_](#gzgetc_)
    + [gzgets](#gzgets)
    + [gzoffset64](#gzoffset64)
    + [gzopen64](#gzopen64)
    + [gzprintf](#gzprintf)
    + [gzputc](#gzputc)
    + [gzputs](#gzputs)
    + [gzread](#gzread)
    + [gzrewind](#gzrewind)
    + [gzseek64](#gzseek64)
    + [gzsetparams](#gzsetparams)
    + [gztell64](#gztell64)
    + [gzungetc](#gzungetc)
    + [gzwrite](#gzwrite)
    + [inflate](#inflate)
    + [inflateBack](#inflateBack)
    + [inflateBackEnd](#inflateBackEnd)
    + [inflateBackInit](#inflateBackInit)
    + [inflateCodesUsed](#inflateCodesUsed)
    + [inflateCopy](#inflateCopy)
    + [inflateEnd](#inflateEnd)
    + [inflateGetDictionary](#inflateGetDictionary)
    + [inflateGetHeader](#inflateGetHeader)
    + [inflateInit](#inflateInit)
    + [inflateInit2](#inflateInit2)
    + [inflateMark](#inflateMark)
    + [inflatePrime](#inflatePrime)
    + [inflateReset](#inflateReset)
    + [inflateReset2](#inflateReset2)
    + [inflateResetKeep](#inflateResetKeep)
    + [inflateSetDictionary](#inflateSetDictionary)
    + [inflateSync](#inflateSync)
    + [inflateSyncPoint](#inflateSyncPoint)
    + [inflateUndermine](#inflateUndermine)
    + [inflateValidate](#inflateValidate)
    + [uncompress](#uncompress)
    + [uncompress2](#uncompress2)
    + [version](#version)
    + [zError](#zError)
    + [zlibCompileFlags](#zlibCompileFlags)
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