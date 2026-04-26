package compress/lz4 - pkg.odin-lang.org 






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



Current Package: *[vendor\_compress\_lz4](/vendor/compress/lz4)*

  

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
2. compress
3. [lz4](/vendor/compress/lz4)

# package vendor:compress/lz4 [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [LZ4](https://github.com/lz4/lz4).

## Index

Types (6)

* [streamDecode\_t](#streamDecode_t)
* [streamDecode\_t\_internal](#streamDecode_t_internal)
* [streamHC\_internal\_t](#streamHC_internal_t)
* [streamHC\_t](#streamHC_t)
* [stream\_t](#stream_t)
* [stream\_t\_internal](#stream_t_internal)

Constants (25)

* [CLEVEL\_DEFAULT](#CLEVEL_DEFAULT)
* [CLEVEL\_MAX](#CLEVEL_MAX)
* [CLEVEL\_MIN](#CLEVEL_MIN)
* [CLEVEL\_OPT\_MIN](#CLEVEL_OPT_MIN)
* [HASHLOG](#HASHLOG)
* [HASHTABLESIZE](#HASHTABLESIZE)
* [HASH\_SIZE\_U32](#HASH_SIZE_U32)
* [HC\_DICTIONARY\_LOGSIZE](#HC_DICTIONARY_LOGSIZE)
* [HC\_HASHTABLESIZE](#HC_HASHTABLESIZE)
* [HC\_HASH\_LOG](#HC_HASH_LOG)
* [HC\_HASH\_MASK](#HC_HASH_MASK)
* [HC\_MAXD](#HC_MAXD)
* [HC\_MAXD\_MASK](#HC_MAXD_MASK)
* [MAX\_INPUT\_SIZE](#MAX_INPUT_SIZE)
* [MEMORY\_USAGE](#MEMORY_USAGE)
* [MEMORY\_USAGE\_DEFAULT](#MEMORY_USAGE_DEFAULT)
* [MEMORY\_USAGE\_MAX](#MEMORY_USAGE_MAX)
* [MEMORY\_USAGE\_MIN](#MEMORY_USAGE_MIN)
* [STREAMDECODE\_MINSIZE](#STREAMDECODE_MINSIZE)
* [STREAMHC\_MINSIZE](#STREAMHC_MINSIZE)
* [STREAM\_MINSIZE](#STREAM_MINSIZE)
* [VERSION\_MAJOR](#VERSION_MAJOR)
* [VERSION\_MINOR](#VERSION_MINOR)
* [VERSION\_NUMBER](#VERSION_NUMBER)
* [VERSION\_RELEASE](#VERSION_RELEASE)

Variables (0)

This section is empty.

Procedures (39)

* [COMPRESSBOUND](#COMPRESSBOUND)
* [DECODER\_RING\_BUFFER\_SIZE](#DECODER_RING_BUFFER_SIZE)
* [attach\_HC\_dictionary](#attach_HC_dictionary)
* [attach\_dictionary](#attach_dictionary)
* [compressBound](#compressBound)
* [compress\_HC](#compress_HC)
* [compress\_HC\_continue](#compress_HC_continue)
* [compress\_HC\_continue\_destSize](#compress_HC_continue_destSize)
* [compress\_HC\_destSize](#compress_HC_destSize)
* [compress\_HC\_extStateHC](#compress_HC_extStateHC)
* [compress\_default](#compress_default)
* [compress\_destSize](#compress_destSize)
* [compress\_fast](#compress_fast)
* [compress\_fast\_continue](#compress_fast_continue)
* [compress\_fast\_extState](#compress_fast_extState)
* [createStream](#createStream)
* [createStreamDecode](#createStreamDecode)
* [createStreamHC](#createStreamHC)
* [decoderRingBufferSize](#decoderRingBufferSize)
* [decompress\_safe](#decompress_safe)
* [decompress\_safe\_continue](#decompress_safe_continue)
* [decompress\_safe\_partial](#decompress_safe_partial)
* [decompress\_safe\_partial\_usingDict](#decompress_safe_partial_usingDict)
* [decompress\_safe\_usingDict](#decompress_safe_usingDict)
* [freeStream](#freeStream)
* [freeStreamDecode](#freeStreamDecode)
* [freeStreamHC](#freeStreamHC)
* [loadDict](#loadDict)
* [loadDictHC](#loadDictHC)
* [loadDictSlow](#loadDictSlow)
* [resetStreamHC\_fast](#resetStreamHC_fast)
* [resetStream\_fast](#resetStream_fast)
* [saveDict](#saveDict)
* [saveDictHC](#saveDictHC)
* [setStreamDecode](#setStreamDecode)
* [sizeofState](#sizeofState)
* [sizeofStateHC](#sizeofStateHC)
* [versionNumber](#versionNumber)
* [versionString](#versionString)

Procedure Groups (0)

This section is empty.

## Types

### [streamDecode\_t ¶](#streamDecode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L402)

```
streamDecode_t :: struct #raw_union {
	minStateSize:      [32]u8,
	internal_donotuse: streamDecode_t_internal,
}
```

##### Related Procedures With Parameters

* [decompress\_safe\_continue](/vendor/compress/lz4/#decompress_safe_continue)
* [freeStreamDecode](/vendor/compress/lz4/#freeStreamDecode)
* [setStreamDecode](/vendor/compress/lz4/#setStreamDecode)



##### Related Procedures With Returns

* [createStreamDecode](/vendor/compress/lz4/#createStreamDecode)

### [streamDecode\_t\_internal ¶](#streamDecode_t_internal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L407)

```
streamDecode_t_internal :: struct {
	externalDict: [^]u8,
	prefixEnd:    [^]u8,
	extDictSize:  uint,
	prefixSize:   uint,
}
```

### [streamHC\_internal\_t ¶](#streamHC_internal_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L524)

```
streamHC_internal_t :: struct {
	hashTable:        [32768]u32,
	chainTable:       [65536]u16,
	end:              [^]u8,
	// next block here to continue on current prefix 
	prefixStart:      [^]u8,
	// Indexes relative to this position 
	dictStart:        [^]u8,
	// alternate reference for extDict 
	dictLimit:        u32,
	// below that point, need extDict 
	lowLimit:         u32,
	// below that point, no more history 
	nextToUpdate:     u32,
	// index from which to continue dictionary update 
	compressionLevel: i16,
	favorDecSpeed:    i8,
	// favor decompression speed if this flag set,
	// 	                               otherwise, favor compression ratio 
	dirty:            i8,
	// stream has to be fully reset if this flag is set 
	dictCtx:          ^streamHC_internal_t,
}
```

### [streamHC\_t ¶](#streamHC_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L542)

```
streamHC_t :: struct #raw_union {
	minStateSize:      [262200]u8,
	internal_donotuse: streamHC_internal_t,
}
```

##### Related Procedures With Parameters

* [attach\_HC\_dictionary](/vendor/compress/lz4/#attach_HC_dictionary)
* [compress\_HC\_continue](/vendor/compress/lz4/#compress_HC_continue)
* [compress\_HC\_continue\_destSize](/vendor/compress/lz4/#compress_HC_continue_destSize)
* [freeStreamHC](/vendor/compress/lz4/#freeStreamHC)
* [loadDictHC](/vendor/compress/lz4/#loadDictHC)
* [resetStreamHC\_fast](/vendor/compress/lz4/#resetStreamHC_fast)
* [saveDictHC](/vendor/compress/lz4/#saveDictHC)



##### Related Procedures With Returns

* [createStreamHC](/vendor/compress/lz4/#createStreamHC)

### [stream\_t ¶](#stream_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L380)

```
stream_t :: struct #raw_union {
	minStateSize:      [16416]u8,
	internal_donotuse: stream_t_internal,
}
```

##### Related Procedures With Parameters

* [attach\_dictionary](/vendor/compress/lz4/#attach_dictionary)
* [compress\_fast\_continue](/vendor/compress/lz4/#compress_fast_continue)
* [freeStream](/vendor/compress/lz4/#freeStream)
* [loadDict](/vendor/compress/lz4/#loadDict)
* [loadDictSlow](/vendor/compress/lz4/#loadDictSlow)
* [resetStream\_fast](/vendor/compress/lz4/#resetStream_fast)
* [saveDict](/vendor/compress/lz4/#saveDict)



##### Related Procedures With Returns

* [createStream](/vendor/compress/lz4/#createStream)

### [stream\_t\_internal ¶](#stream_t_internal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L390)

```
stream_t_internal :: struct {
	hashTable:     [4096]u32,
	dictionary:    [^]u8,
	dictCtx:       ^stream_t_internal,
	currentOffset: u32,
	tableType:     u32,
	dictSize:      u32,
}
```

## Constants

### [CLEVEL\_DEFAULT ¶](#CLEVEL_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L420)

```
CLEVEL_DEFAULT :: 9
```

### [CLEVEL\_MAX ¶](#CLEVEL_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L422)

```
CLEVEL_MAX :: 12
```

### [CLEVEL\_MIN ¶](#CLEVEL_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L419)

```
CLEVEL_MIN :: 2
```

### [CLEVEL\_OPT\_MIN ¶](#CLEVEL_OPT_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L421)

```
CLEVEL_OPT_MIN :: 10
```

### [HASHLOG ¶](#HASHLOG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L386)

```
HASHLOG :: MEMORY_USAGE - 2
```

### [HASHTABLESIZE ¶](#HASHTABLESIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L387)

```
HASHTABLESIZE :: 1 << MEMORY_USAGE
```

### [HASH\_SIZE\_U32 ¶](#HASH_SIZE_U32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L388)

```
HASH_SIZE_U32 :: 1 << HASHLOG
```

 

required as macro for static allocation

### [HC\_DICTIONARY\_LOGSIZE ¶](#HC_DICTIONARY_LOGSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L515)

```
HC_DICTIONARY_LOGSIZE :: 16
```

### [HC\_HASHTABLESIZE ¶](#HC_HASHTABLESIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L520)

```
HC_HASHTABLESIZE :: 1 << HC_HASH_LOG
```

### [HC\_HASH\_LOG ¶](#HC_HASH_LOG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L519)

```
HC_HASH_LOG :: 15
```

### [HC\_HASH\_MASK ¶](#HC_HASH_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L521)

```
HC_HASH_MASK :: HC_HASHTABLESIZE - 1
```

### [HC\_MAXD ¶](#HC_MAXD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L516)

```
HC_MAXD :: 1 << HC_DICTIONARY_LOGSIZE
```

### [HC\_MAXD\_MASK ¶](#HC_MAXD_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L517)

```
HC_MAXD_MASK :: HC_MAXD - 1
```

### [MAX\_INPUT\_SIZE ¶](#MAX_INPUT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L25)

```
MAX_INPUT_SIZE :: 0x7E000000
```

 

2\_113\_929\_216 bytes

### [MEMORY\_USAGE ¶](#MEMORY_USAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L23)

```
MEMORY_USAGE :: MEMORY_USAGE_DEFAULT
```

### [MEMORY\_USAGE\_DEFAULT ¶](#MEMORY_USAGE_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L20)

```
MEMORY_USAGE_DEFAULT :: 14
```

### [MEMORY\_USAGE\_MAX ¶](#MEMORY_USAGE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L21)

```
MEMORY_USAGE_MAX :: 20
```

### [MEMORY\_USAGE\_MIN ¶](#MEMORY_USAGE_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L19)

```
MEMORY_USAGE_MIN :: 10
```

### [STREAMDECODE\_MINSIZE ¶](#STREAMDECODE_MINSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L401)

```
STREAMDECODE_MINSIZE :: 32
```

### [STREAMHC\_MINSIZE ¶](#STREAMHC_MINSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L540)

```
STREAMHC_MINSIZE :: 262200
```

### [STREAM\_MINSIZE ¶](#STREAM_MINSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L378)

```
STREAM_MINSIZE :: (1 << MEMORY_USAGE) + 32
```

 

static size, for inter-version compatibility

### [VERSION\_MAJOR ¶](#VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L13)

```
VERSION_MAJOR :: 1
```

 

for breaking interface changes

### [VERSION\_MINOR ¶](#VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L14)

```
VERSION_MINOR :: 10
```

 

for new (non-breaking) interface capabilities

### [VERSION\_NUMBER ¶](#VERSION_NUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L17)

```
VERSION_NUMBER :: VERSION_MAJOR * 100 * 100 + VERSION_MINOR * 100 + VERSION_RELEASE
```

### [VERSION\_RELEASE ¶](#VERSION_RELEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L15)

```
VERSION_RELEASE :: 0
```

 

for tweaks, bug-fixes, or development

## Variables

This section is empty.

## Procedures

### [COMPRESSBOUND ¶](#COMPRESSBOUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L28)

```
COMPRESSBOUND :: proc "c" (isize: i32) -> i32 {…}
```

### [DECODER\_RING\_BUFFER\_SIZE ¶](#DECODER_RING_BUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L33)

```
DECODER_RING_BUFFER_SIZE :: proc "c" (maxBlockSize: i32) -> i32 {…}
```

### [attach\_HC\_dictionary ¶](#attach_HC_dictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L511)

```
attach_HC_dictionary :: proc "c" (working_stream, dictionary_stream: ^streamHC_t) ---
```

 

! LZ4\_attach\_HC\_dictionary() : stable since v1.10.0

```
 *  This API allows for the efficient re-use of a static dictionary many times.
 *
 *  Rather than re-loading the dictionary buffer into a working context before
 *  each compression, or copying a pre-loaded dictionary's LZ4_streamHC_t into a
 *  working LZ4_streamHC_t, this function introduces a no-copy setup mechanism,
 *  in which the working stream references the dictionary stream in-place.
 *
 *  Several assumptions are made about the state of the dictionary stream.
 *  Currently, only streams which have been prepared by LZ4_loadDictHC() should
 *  be expected to work.
 *
 *  Alternatively, the provided dictionary stream pointer may be NULL, in which
 *  case any existing dictionary stream is unset.
 *
 *  A dictionary should only be attached to a stream without any history (i.e.,
 *  a stream that has just been reset).
 *
 *  The dictionary will remain attached to the working stream only for the
 *  current stream session. Calls to LZ4_resetStreamHC(_fast) will remove the
 *  dictionary context association from the working stream. The dictionary
 *  stream (and source buffer) must remain in-place / accessible / unchanged
 *  through the lifetime of the stream session.
```

### [attach\_dictionary ¶](#attach_dictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L254)

```
attach_dictionary :: proc "c" (workingStream, dictionaryStream: ^stream_t) ---
```

 

! LZ4\_attach\_dictionary() : stable since v1.10.0

```
 *
 *  This allows efficient re-use of a static dictionary multiple times.
 *
 *  Rather than re-loading the dictionary buffer into a working context before
 *  each compression, or copying a pre-loaded dictionary's LZ4_stream_t into a
 *  working LZ4_stream_t, this function introduces a no-copy setup mechanism,
 *  in which the working stream references @dictionaryStream in-place.
 *
 *  Several assumptions are made about the state of @dictionaryStream.
 *  Currently, only states which have been prepared by LZ4_loadDict() or
 *  LZ4_loadDictSlow() should be expected to work.
 *
 *  Alternatively, the provided @dictionaryStream may be NULL,
 *  in which case any existing dictionary stream is unset.
 *
 *  If a dictionary is provided, it replaces any pre-existing stream history.
 *  The dictionary contents are the only history that can be referenced and
 *  logically immediately precede the data compressed in the first subsequent
 *  compression call.
 *
 *  The dictionary will only remain attached to the working stream through the
 *  first compression call, at the end of which it is cleared.
 * @dictionaryStream stream (and source buffer) must remain in-place / accessible / unchanged
 *  through the completion of the compression session.
 *
 *  Note: there is no equivalent LZ4_attach_*() method on the decompression side
 *  because there is no initialization cost, hence no need to share the cost across multiple sessions.
 *  To decompress LZ4 blocks using dictionary, attached or not,
 *  just employ the regular LZ4_setStreamDecode() for streaming,
 *  or the stateless LZ4_decompress_safe_usingDict() for one-shot decompression.
```

### [compressBound ¶](#compressBound) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L85)

```
compressBound :: proc "c" (inputSize: i32) -> i32 ---
```

 

! LZ4\_compressBound() :

```
    Provides the maximum size that LZ4 compression may output in a "worst case" scenario (input data not compressible)
    This function is primarily useful for memory allocation purposes (destination buffer size).
    Macro LZ4_COMPRESSBOUND() is also provided for compilation-time evaluation (stack memory allocation for example).
    Note that LZ4_compress_default() compresses faster when dstCapacity is >= LZ4_compressBound(srcSize)
        inputSize  : max supported value is LZ4_MAX_INPUT_SIZE
        return : maximum output size in a "worst case" scenario
              or 0, if input size is incorrect (too large or negative)
```

### [compress\_HC ¶](#compress_HC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L437)

```
compress_HC :: proc "c" (src, dst: [^]u8, srcSize, dstCapacity, compressionLevel: i32) -> i32 ---
```

 

! LZ4\_compress\_HC() :

```
 *  Compress data from `src` into `dst`, using the powerful but slower "HC" algorithm.
 * `dst` must be already allocated.
 *  Compression is guaranteed to succeed if `dstCapacity >= LZ4_compressBound(srcSize)` (see "lz4.h")
 *  Max supported `srcSize` value is LZ4_MAX_INPUT_SIZE (see "lz4.h")
 * `compressionLevel` : any value between 1 and LZ4HC_CLEVEL_MAX will work.
 *                      Values > LZ4HC_CLEVEL_MAX behave the same as LZ4HC_CLEVEL_MAX.
 * @return : the number of bytes written into 'dst'
 *           or 0 if compression fails.
```

### [compress\_HC\_continue ¶](#compress_HC_continue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L471)

```
compress_HC_continue :: proc "c" (streamHCPtr: ^streamHC_t, src, dst: [^]u8, srcSize, maxDstSize: i32) -> i32 ---
```

### [compress\_HC\_continue\_destSize ¶](#compress_HC_continue_destSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L483)

```
compress_HC_continue_destSize :: proc "c" (LZ4_streamHCPtr: ^streamHC_t, src, dst: [^]u8, srcSizePtr: ^i32, targetDstSize: i32) -> i32 ---
```

 

! LZ4\_compress\_HC\_continue\_destSize() : v1.9.0+

```
 *  Similar to LZ4_compress_HC_continue(),
 *  but will read as much data as possible from `src`
 *  to fit into `targetDstSize` budget.
 *  Result is provided into 2 parts :
 * @return : the number of bytes written into 'dst' (necessarily <= targetDstSize)
 *           or 0 if compression fails.
 * `srcSizePtr` : on success, *srcSizePtr will be updated to indicate how much bytes were read from `src`.
 *           Note that this function may not consume the entire input.
```

### [compress\_HC\_destSize ¶](#compress_HC_destSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L457)

```
compress_HC_destSize :: proc "c" (
	stateHC:          rawptr, 
	src, dst:         [^]u8, 
	srcSizePtr:       ^i32, 
	targetDstSize:    i32, 
	compressionLevel: i32, 
) -> i32 ---
```

 

! LZ4\_compress\_HC\_destSize() : v1.9.0+

```
 *  Will compress as much data as possible from `src`
 *  to fit into `targetDstSize` budget.
 *  Result is provided in 2 parts :
 * @return : the number of bytes written into 'dst' (necessarily <= targetDstSize)
 *           or 0 if compression fails.
 * `srcSizePtr` : on success, *srcSizePtr is updated to indicate how much bytes were read from `src`
```

### [compress\_HC\_extStateHC ¶](#compress_HC_extStateHC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L446)

```
compress_HC_extStateHC :: proc "c" (
	stateHC:             rawptr, 
	src, dst:            [^]u8, 
	srcSize, maxDstSize: i32, 
	compressionLevel:    i32, 
) -> i32 ---
```

### [compress\_default ¶](#compress_default) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L56)

```
compress_default :: proc "c" (src, dst: [^]u8, srcSize, dstCapacity: i32) -> i32 ---
```

 

! LZ4\_compress\_default() :

```
 *  Compresses 'srcSize' bytes from buffer 'src'
 *  into already allocated 'dst' buffer of size 'dstCapacity'.
 *  Compression is guaranteed to succeed if 'dstCapacity' >= LZ4_compressBound(srcSize).
 *  It also runs faster, so it's a recommended setting.
 *  If the function cannot compress 'src' into a more limited 'dst' budget,
 *  compression stops *immediately*, and the function result is zero.
 *  In which case, 'dst' content is undefined (invalid).
 *      srcSize : max supported value is LZ4_MAX_INPUT_SIZE.
 *      dstCapacity : size of buffer 'dst' (which must be already allocated)
 *     @return  : the number of bytes written into buffer 'dst' (necessarily <= dstCapacity)
 *                or 0 if compression fails
 * Note : This function is protected against buffer overflow scenarios (never writes outside 'dst' buffer, nor read outside 'source' buffer).
```

### [compress\_destSize ¶](#compress_destSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L132)

```
compress_destSize :: proc "c" (src, dst: [^]u8, srcSizePtr: ^i32, targetDstSize: i32) -> i32 ---
```

 

! LZ4\_compress\_destSize() :

```
 *  Reverse the logic : compresses as much data as possible from 'src' buffer
 *  into already allocated buffer 'dst', of size >= 'dstCapacity'.
 *  This function either compresses the entire 'src' content into 'dst' if it's large enough,
 *  or fill 'dst' buffer completely with as much data as possible from 'src'.
 *  note: acceleration parameter is fixed to "default".
 *
 * *srcSizePtr : in+out parameter. Initially contains size of input.
 *               Will be modified to indicate how many bytes where read from 'src' to fill 'dst'.
 *               New value is necessarily <= input value.
 * @return : Nb bytes written into 'dst' (necessarily <= dstCapacity)
 *           or 0 if compression fails.
 *
 * Note : from v1.8.2 to v1.9.1, this function had a bug (fixed in v1.9.2+):
 *        the produced compressed content could, in specific circumstances,
 *        require to be decompressed into a destination buffer larger
 *        by at least 1 byte than the content to decompress.
 *        If an application uses `LZ4_compress_destSize()`,
 *        it's highly recommended to update liblz4 to v1.9.2 or better.
 *        If this can't be done or ensured,
 *        the receiving decompression function should provide
 *        a dstCapacity which is > decompressedSize, by at least 1 byte.
 *        See https://github.com/lz4/lz4/issues/859 for details
```

### [compress\_fast ¶](#compress_fast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L95)

```
compress_fast :: proc "c" (src, dst: [^]u8, srcSize, dstCapacity: i32, acceleration: i32) -> i32 ---
```

 

! LZ4\_compress\_fast() :

```
    Same as LZ4_compress_default(), but allows selection of "acceleration" factor.
    The larger the acceleration value, the faster the algorithm, but also the lesser the compression.
    It's a trade-off. It can be fine tuned, with each successive value providing roughly +~3% to speed.
    An acceleration value of "1" is the same as regular LZ4_compress_default()
    Values <= 0 will be replaced by LZ4_ACCELERATION_DEFAULT (currently == 1, see lz4.c).
    Values > LZ4_ACCELERATION_MAX will be replaced by LZ4_ACCELERATION_MAX (currently == 65537, see lz4.c).
```

### [compress\_fast\_continue ¶](#compress_fast_continue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L279)

```
compress_fast_continue :: proc "c" (
	streamPtr:            ^stream_t, 
	src, dst:             [^]u8, 
	srcSize, dstCapacity: i32, 
	acceleration:         i32, 
) -> i32 ---
```

 

! LZ4\_compress\_fast\_continue() :

```
 *  Compress 'src' content using data from previously compressed blocks, for better compression ratio.
 * 'dst' buffer must be already allocated.
 *  If dstCapacity >= LZ4_compressBound(srcSize), compression is guaranteed to succeed, and runs faster.
 *
 * @return : size of compressed block
 *           or 0 if there is an error (typically, cannot fit into 'dst').
 *
 *  Note 1 : Each invocation to LZ4_compress_fast_continue() generates a new block.
 *           Each block has precise boundaries.
 *           Each block must be decompressed separately, calling LZ4_decompress_*() with relevant metadata.
 *           It's not possible to append blocks together and expect a single invocation of LZ4_decompress_*() to decompress them together.
 *
 *  Note 2 : The previous 64KB of source data is __assumed__ to remain present, unmodified, at same address in memory !
 *
 *  Note 3 : When input is structured as a double-buffer, each buffer can have any size, including < 64 KB.
 *           Make sure that buffers are separated, by at least one byte.
 *           This construction ensures that each block only depends on previous block.
 *
 *  Note 4 : If input buffer is a ring-buffer, it can have any size, including < 64 KB.
 *
 *  Note 5 : After an error, the stream status is undefined (invalid), it can only be reset or freed.
```

### [compress\_fast\_extState ¶](#compress_fast_extState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L105)

```
compress_fast_extState :: proc "c" (
	state:                rawptr, 
	src, dst:             [^]u8, 
	srcSize, dstCapacity: i32, 
	acceleration:         i32, 
) -> i32 ---
```

### [createStream ¶](#createStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L172)

```
createStream :: proc "c" () -> ^stream_t ---
```

### [createStreamDecode ¶](#createStreamDecode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L291)

```
createStreamDecode :: proc "c" () -> ^streamDecode_t ---
```

### [createStreamHC ¶](#createStreamHC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L465)

```
createStreamHC :: proc "c" () -> ^streamHC_t ---
```

 

! LZ4\_createStreamHC() and LZ4\_freeStreamHC() :

```
 *  These functions create and release memory for LZ4 HC streaming state.
 *  Newly created states are automatically initialized.
 *  A same state can be used multiple times consecutively,
 *  starting with LZ4_resetStreamHC_fast() to start a new stream of blocks.
```

### [decoderRingBufferSize ¶](#decoderRingBufferSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L314)

```
decoderRingBufferSize :: proc "c" (maxBlockSize: i32) -> i32 ---
```

 

! LZ4\_decoderRingBufferSize() : v1.8.2+

```
 *  Note : in a ring buffer scenario (optional),
 *  blocks are presumed decompressed next to each other
 *  up to the moment there is not enough remaining space for next block (remainingSize < maxBlockSize),
 *  at which stage it resumes from beginning of ring buffer.
 *  When setting such a ring buffer for streaming decompression,
 *  provides the minimum size of this ring buffer
 *  to be compatible with any source respecting maxBlockSize condition.
 * @return : minimum ring buffer size,
 *           or 0 if there is an error (invalid maxBlockSize).
```

### [decompress\_safe ¶](#decompress_safe) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L73)

```
decompress_safe :: proc "c" (src, dst: [^]u8, compressedSize, dstCapacity: i32) -> i32 ---
```

 

! LZ4\_decompress\_safe() :

```
 * @compressedSize : is the exact complete size of the compressed block.
 * @dstCapacity : is the size of destination buffer (which must be already allocated),
 *                presumed an upper bound of decompressed size.
 * @return : the number of bytes decompressed into destination buffer (necessarily <= dstCapacity)
 *           If destination buffer is not large enough, decoding will stop and output an error code (negative value).
 *           If the source stream is detected malformed, the function will stop decoding and return a negative result.
 * Note 1 : This function is protected against malicious data packets :
 *          it will never writes outside 'dst' buffer, nor read outside 'source' buffer,
 *          even if the compressed block is maliciously modified to order the decoder to do these actions.
 *          In such case, the decoder stops immediately, and considers the compressed block malformed.
 * Note 2 : compressedSize and dstCapacity must be provided to the function, the compressed block does not contain them.
 *          The implementation is free to send / store / derive this information in whichever way is most beneficial.
 *          If there is a need for a different format which bundles together both compressed data and its metadata, consider looking at lz4frame.h instead.
```

### [decompress\_safe\_continue ¶](#decompress_safe_continue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L354)

```
decompress_safe_continue :: proc "c" (LZ4_streamDecode: ^streamDecode_t, src, dst: [^]u8, srcSize, dstCapacity: i32) -> i32 ---
```

 

! LZ4\_decompress\_safe\_continue() :

```
 *  This decoding function allows decompression of consecutive blocks in "streaming" mode.
 *  The difference with the usual independent blocks is that
 *  new blocks are allowed to find references into former blocks.
 *  A block is an unsplittable entity, and must be presented entirely to the decompression function.
 *  LZ4_decompress_safe_continue() only accepts one block at a time.
 *  It's modeled after `LZ4_decompress_safe()` and behaves similarly.
 *
 * @LZ4_streamDecode : decompression state, tracking the position in memory of past data
 * @compressedSize : exact complete size of one compressed block.
 * @dstCapacity : size of destination buffer (which must be already allocated),
 *                must be an upper bound of decompressed size.
 * @return : number of bytes decompressed into destination buffer (necessarily <= dstCapacity)
 *           If destination buffer is not large enough, decoding will stop and output an error code (negative value).
 *           If the source stream is detected malformed, the function will stop decoding and return a negative result.
 *
 *  The last 64KB of previously decoded data *must* remain available and unmodified
 *  at the memory position where they were previously decoded.
 *  If less than 64KB of data has been decoded, all the data must be present.
 *
 *  Special : if decompression side sets a ring buffer, it must respect one of the following conditions :
 *  - Decompression buffer size is _at least_ LZ4_decoderRingBufferSize(maxBlockSize).
 *    maxBlockSize is the maximum size of any single block. It can have any value > 16 bytes.
 *    In which case, encoding and decoding buffers do not need to be synchronized.
 *    Actually, data can be produced by any source compliant with LZ4 format specification, and respecting maxBlockSize.
 *  - Synchronized mode :
 *    Decompression buffer size is _exactly_ the same as compression buffer size,
 *    and follows exactly same update rule (block boundaries at same positions),
 *    and decoding function is provided with exact decompressed size of each block (exception for last block of the stream),
 *    _then_ decoding & encoding ring buffer can have any size, including small ones ( < 64 KB).
 *  - Decompression buffer is larger than encoding buffer, by a minimum of maxBlockSize more bytes.
 *    In which case, encoding and decoding buffers do not need to be synchronized,
 *    and encoding ring buffer can have any size, including small ones ( < 64 KB).
 *
 *  Whenever these conditions are not possible,
 *  save the last 64KB of decoded data into a safe buffer where it can't be modified during decompression,
 *  then indicate where this data is saved using LZ4_setStreamDecode(), before decompressing next block.
```

### [decompress\_safe\_partial ¶](#decompress_safe_partial) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L169)

```
decompress_safe_partial :: proc "c" (src, dst: [^]u8, srcSize, targetOutputSize, dstCapacity: i32) -> i32 ---
```

 

! LZ4\_decompress\_safe\_partial() :

```
 *  Decompress an LZ4 compressed block, of size 'srcSize' at position 'src',
 *  into destination buffer 'dst' of size 'dstCapacity'.
 *  Up to 'targetOutputSize' bytes will be decoded.
 *  The function stops decoding on reaching this objective.
 *  This can be useful to boost performance
 *  whenever only the beginning of a block is required.
 *
 * @return : the number of bytes decoded in `dst` (necessarily <= targetOutputSize)
 *           If source stream is detected malformed, function returns a negative result.
 *
 *  Note 1 : @return can be < targetOutputSize, if compressed block contains less data.
 *
 *  Note 2 : targetOutputSize must be <= dstCapacity
 *
 *  Note 3 : this function effectively stops decoding on reaching targetOutputSize,
 *           so dstCapacity is kind of redundant.
 *           This is because in older versions of this function,
 *           decoding operation would still write complete sequences.
 *           Therefore, there was no guarantee that it would stop writing at exactly targetOutputSize,
 *           it could write more bytes, though only up to dstCapacity.
 *           Some "margin" used to be required for this operation to work properly.
 *           Thankfully, this is no longer necessary.
 *           The function nonetheless keeps the same signature, in an effort to preserve API compatibility.
 *
 *  Note 4 : If srcSize is the exact size of the block,
 *           then targetOutputSize can be any value,
 *           including larger than the block's decompressed size.
 *           The function will, at most, generate block's decompressed size.
 *
 *  Note 5 : If srcSize is _larger_ than block's compressed size,
 *           then targetOutputSize **MUST** be <= block's decompressed size.
 *           Otherwise, *silent corruption will occur*.
```

### [decompress\_safe\_partial\_usingDict ¶](#decompress_safe_partial_usingDict) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L373)

```
decompress_safe_partial_usingDict :: proc "c" (
	src, dst:                                        [^]u8, 
	compressedSize, targetOutputSize, maxOutputSize: i32, 
	dictStart:                                       [^]u8, 
	dictSize:                                        i32, 
) -> i32 ---
```

 

! LZ4\_decompress\_safe\_partial\_usingDict() :

```
 *  Behaves the same as LZ4_decompress_safe_partial()
 *  with the added ability to specify a memory segment for past data.
 *  Performance tip : Decompression speed can be substantially increased
 *                    when dst == dictStart + dictSize.
```

### [decompress\_safe\_usingDict ¶](#decompress_safe_usingDict) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L365)

```
decompress_safe_usingDict :: proc "c" (
	src, dst:             [^]u8, 
	srcSize, dstCapacity: i32, 
	dictStart:            [^]u8, 
	dictSize:             i32, 
) -> i32 ---
```

 

! LZ4\_decompress\_safe\_usingDict() :

```
 *  Works the same as
 *  a combination of LZ4_setStreamDecode() followed by LZ4_decompress_safe_continue()
 *  However, it's stateless: it doesn't need any LZ4_streamDecode_t state.
 *  Dictionary is presumed stable : it must remain accessible and unmodified during decompression.
 *  Performance tip : Decompression speed can be substantially increased
 *                    when dst == dictStart + dictSize.
```

### [freeStream ¶](#freeStream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L173)

```
freeStream :: proc "c" (streamPtr: ^stream_t) -> i32 ---
```

### [freeStreamDecode ¶](#freeStreamDecode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L292)

```
freeStreamDecode :: proc "c" (LZ4_stream: ^streamDecode_t) -> i32 ---
```

### [freeStreamHC ¶](#freeStreamHC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L466)

```
freeStreamHC :: proc "c" (streamHCPtr: ^streamHC_t) -> i32 ---
```

### [loadDict ¶](#loadDict) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L211)

```
loadDict :: proc "c" (streamPtr: ^stream_t, dictionary: [^]u8, dictSize: i32) -> i32 ---
```

 

! LZ4\_loadDict() :

```
 *  Use this function to reference a static dictionary into LZ4_stream_t.
 *  The dictionary must remain available during compression.
 *  LZ4_loadDict() triggers a reset, so any previous data will be forgotten.
 *  The same dictionary will have to be loaded on decompression side for successful decoding.
 *  Dictionary are useful for better compression of small data (KB range).
 *  While LZ4 itself accepts any input as dictionary, dictionary efficiency is also a topic.
 *  When in doubt, employ the Zstandard's Dictionary Builder.
 *  Loading a size of 0 is allowed, and is the same as reset.
 * @return : loaded dictionary size, in bytes (note: only the last 64 KB are loaded)
```

### [loadDictHC ¶](#loadDictHC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L469)

```
loadDictHC :: proc "c" (streamHCPtr: ^streamHC_t, dictionary: [^]u8, dictSize: i32) -> i32 ---
```

### [loadDictSlow ¶](#loadDictSlow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L220)

```
loadDictSlow :: proc "c" (streamPtr: ^stream_t, dictionary: [^]u8, dictSize: i32) -> i32 ---
```

 

! LZ4\_loadDictSlow() : v1.10.0+

```
 *  Same as LZ4_loadDict(),
 *  but uses a bit more cpu to reference the dictionary content more thoroughly.
 *  This is expected to slightly improve compression ratio.
 *  The extra-cpu cost is likely worth it if the dictionary is re-used across multiple sessions.
 * @return : loaded dictionary size, in bytes (note: only the last 64 KB are loaded)
```

### [resetStreamHC\_fast ¶](#resetStreamHC_fast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L468)

```
resetStreamHC_fast :: proc "c" (streamHCPtr: ^streamHC_t, compressionLevel: i32) ---
```

 

v1.9.0+

### [resetStream\_fast ¶](#resetStream_fast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L197)

```
resetStream_fast :: proc "c" (streamPtr: ^stream_t) ---
```

 

! LZ4\_resetStream\_fast() : v1.9.0+

```
 *  Use this to prepare an LZ4_stream_t for a new chain of dependent blocks
 *  (e.g., LZ4_compress_fast_continue()).
 *
 *  An LZ4_stream_t must be initialized once before usage.
 *  This is automatically done when created by LZ4_createStream().
 *  However, should the LZ4_stream_t be simply declared on stack (for example),
 *  it's necessary to initialize it first, using LZ4_initStream().
 *
 *  After init, start any new stream with LZ4_resetStream_fast().
 *  A same LZ4_stream_t can be re-used multiple times consecutively
 *  and compress multiple streams,
 *  provided that it starts each new stream with LZ4_resetStream_fast().
 *
 *  LZ4_resetStream_fast() is much faster than LZ4_initStream(),
 *  but is not compatible with memory regions containing garbage data.
 *
 *  Note: it's only useful to call LZ4_resetStream_fast()
 *        in the context of streaming compression.
 *        The *extState* functions perform their own resets.
 *        Invoking LZ4_resetStream_fast() before is redundant, and even counterproductive.
```

### [saveDict ¶](#saveDict) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L288)

```
saveDict :: proc "c" (streamPtr: ^stream_t, safeBuffer: [^]u8, maxDictSize: i32) -> i32 ---
```

 

! LZ4\_saveDict() :

```
 *  If last 64KB data cannot be guaranteed to remain available at its current memory location,
 *  save it into a safer place (char* safeBuffer).
 *  This is schematically equivalent to a memcpy() followed by LZ4_loadDict(),
 *  but is much faster, because LZ4_saveDict() doesn't need to rebuild tables.
 * @return : saved dictionary size in bytes (necessarily <= maxDictSize), or 0 if error.
```

### [saveDictHC ¶](#saveDictHC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L485)

```
saveDictHC :: proc "c" (streamHCPtr: ^streamHC_t, safeBuffer: [^]u8, maxDictSize: i32) -> i32 ---
```

### [setStreamDecode ¶](#setStreamDecode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L301)

```
setStreamDecode :: proc "c" (LZ4_streamDecode: ^streamDecode_t, dictionary: [^]u8, dictSize: i32) -> i32 ---
```

 

! LZ4\_setStreamDecode() :

```
 *  An LZ4_streamDecode_t context can be allocated once and re-used multiple times.
 *  Use this function to start decompression of a new stream of blocks.
 *  A dictionary can optionally be set. Use NULL or size 0 for a reset order.
 *  Dictionary is presumed stable : it must remain accessible and unmodified during next decompression.
 * @return : 1 if OK, 0 if error
```

### [sizeofState ¶](#sizeofState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L104)

```
sizeofState :: proc "c" () -> i32 ---
```

 

! LZ4\_compress\_fast\_extState() :

```
 *  Same as LZ4_compress_fast(), using an externally allocated memory space for its state.
 *  Use LZ4_sizeofState() to know how much memory must be allocated,
 *  and allocate it on 8-bytes boundaries (using `malloc()` typically).
 *  Then, provide this buffer as `void* state` to compression function.
```

### [sizeofStateHC ¶](#sizeofStateHC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L445)

```
sizeofStateHC :: proc "c" () -> i32 ---
```

 

! LZ4\_compress\_HC\_extStateHC() :

```
 *  Same as LZ4_compress_HC(), but using an externally allocated memory segment for `state`.
 * `state` size is provided by LZ4_sizeofStateHC().
 *  Memory segment must be aligned on 8-bytes boundaries (which a normal malloc() should do properly).
```

### [versionNumber ¶](#versionNumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L39)

```
versionNumber :: proc "c" () -> i32 ---
```

 

\*< library version number; useful to check dll version; requires v1.3.0+

### [versionString ¶](#versionString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin#L40)

```
versionString :: proc "c" () -> cstring ---
```

 

\*< library version string; useful to check dll version; requires v1.7.5+

## Procedure Groups

This section is empty.

## Source Files

* [lz4.odin](https://github.com/odin-lang/Odin/tree/master/vendor/compress/lz4/lz4.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.147586600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [streamDecode\_t](#streamDecode_t)
    + [streamDecode\_t\_internal](#streamDecode_t_internal)
    + [streamHC\_internal\_t](#streamHC_internal_t)
    + [streamHC\_t](#streamHC_t)
    + [stream\_t](#stream_t)
    + [stream\_t\_internal](#stream_t_internal)
  * [Constants](#pkg-Constants)
    + [CLEVEL\_DEFAULT](#CLEVEL_DEFAULT)
    + [CLEVEL\_MAX](#CLEVEL_MAX)
    + [CLEVEL\_MIN](#CLEVEL_MIN)
    + [CLEVEL\_OPT\_MIN](#CLEVEL_OPT_MIN)
    + [HASHLOG](#HASHLOG)
    + [HASHTABLESIZE](#HASHTABLESIZE)
    + [HASH\_SIZE\_U32](#HASH_SIZE_U32)
    + [HC\_DICTIONARY\_LOGSIZE](#HC_DICTIONARY_LOGSIZE)
    + [HC\_HASHTABLESIZE](#HC_HASHTABLESIZE)
    + [HC\_HASH\_LOG](#HC_HASH_LOG)
    + [HC\_HASH\_MASK](#HC_HASH_MASK)
    + [HC\_MAXD](#HC_MAXD)
    + [HC\_MAXD\_MASK](#HC_MAXD_MASK)
    + [MAX\_INPUT\_SIZE](#MAX_INPUT_SIZE)
    + [MEMORY\_USAGE](#MEMORY_USAGE)
    + [MEMORY\_USAGE\_DEFAULT](#MEMORY_USAGE_DEFAULT)
    + [MEMORY\_USAGE\_MAX](#MEMORY_USAGE_MAX)
    + [MEMORY\_USAGE\_MIN](#MEMORY_USAGE_MIN)
    + [STREAMDECODE\_MINSIZE](#STREAMDECODE_MINSIZE)
    + [STREAMHC\_MINSIZE](#STREAMHC_MINSIZE)
    + [STREAM\_MINSIZE](#STREAM_MINSIZE)
    + [VERSION\_MAJOR](#VERSION_MAJOR)
    + [VERSION\_MINOR](#VERSION_MINOR)
    + [VERSION\_NUMBER](#VERSION_NUMBER)
    + [VERSION\_RELEASE](#VERSION_RELEASE)
  * [Procedures](#pkg-Procedures)
    + [COMPRESSBOUND](#COMPRESSBOUND)
    + [DECODER\_RING\_BUFFER\_SIZE](#DECODER_RING_BUFFER_SIZE)
    + [attach\_HC\_dictionary](#attach_HC_dictionary)
    + [attach\_dictionary](#attach_dictionary)
    + [compressBound](#compressBound)
    + [compress\_HC](#compress_HC)
    + [compress\_HC\_continue](#compress_HC_continue)
    + [compress\_HC\_continue\_destSize](#compress_HC_continue_destSize)
    + [compress\_HC\_destSize](#compress_HC_destSize)
    + [compress\_HC\_extStateHC](#compress_HC_extStateHC)
    + [compress\_default](#compress_default)
    + [compress\_destSize](#compress_destSize)
    + [compress\_fast](#compress_fast)
    + [compress\_fast\_continue](#compress_fast_continue)
    + [compress\_fast\_extState](#compress_fast_extState)
    + [createStream](#createStream)
    + [createStreamDecode](#createStreamDecode)
    + [createStreamHC](#createStreamHC)
    + [decoderRingBufferSize](#decoderRingBufferSize)
    + [decompress\_safe](#decompress_safe)
    + [decompress\_safe\_continue](#decompress_safe_continue)
    + [decompress\_safe\_partial](#decompress_safe_partial)
    + [decompress\_safe\_partial\_usingDict](#decompress_safe_partial_usingDict)
    + [decompress\_safe\_usingDict](#decompress_safe_usingDict)
    + [freeStream](#freeStream)
    + [freeStreamDecode](#freeStreamDecode)
    + [freeStreamHC](#freeStreamHC)
    + [loadDict](#loadDict)
    + [loadDictHC](#loadDictHC)
    + [loadDictSlow](#loadDictSlow)
    + [resetStreamHC\_fast](#resetStreamHC_fast)
    + [resetStream\_fast](#resetStream_fast)
    + [saveDict](#saveDict)
    + [saveDictHC](#saveDictHC)
    + [setStreamDecode](#setStreamDecode)
    + [sizeofState](#sizeofState)
    + [sizeofStateHC](#sizeofStateHC)
    + [versionNumber](#versionNumber)
    + [versionString](#versionString)
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