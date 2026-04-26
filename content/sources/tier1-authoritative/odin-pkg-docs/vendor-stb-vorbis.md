package stb/vorbis - pkg.odin-lang.org 






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



Current Package: *[stb\_vorbis](/vendor/stb/vorbis)*

  

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
3. [vorbis](/vendor/stb/vorbis)

# package vendor:stb/vorbis [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [stb\_vorbis.c](https://github.com/nothings/stb/blob/master/stb_vorbis.c).

## Index

Types (5)

* [Error](#Error)
* [vorbis](#vorbis)
* [vorbis\_alloc](#vorbis_alloc)
* [vorbis\_comment](#vorbis_comment)
* [vorbis\_info](#vorbis_info)

Constants (4)

* [FAST\_HUFFMAN\_LENGTH](#FAST_HUFFMAN_LENGTH)
* [MAX\_CHANNELS](#MAX_CHANNELS)
* [NO\_STDIO](#NO_STDIO)
* [PUSHDATA\_CRC\_COUNT](#PUSHDATA_CRC_COUNT)

Variables (0)

This section is empty.

Procedures (27)

* [close](#close)
* [decode\_filename](#decode_filename)
* [decode\_frame\_pushdata](#decode_frame_pushdata)
* [decode\_memory](#decode_memory)
* [flush\_pushdata](#flush_pushdata)
* [get\_comment](#get_comment)
* [get\_error](#get_error)
* [get\_file\_offset](#get_file_offset)
* [get\_frame\_float](#get_frame_float)
* [get\_frame\_short](#get_frame_short)
* [get\_frame\_short\_interleaved](#get_frame_short_interleaved)
* [get\_info](#get_info)
* [get\_sample\_offset](#get_sample_offset)
* [get\_samples\_float](#get_samples_float)
* [get\_samples\_float\_interleaved](#get_samples_float_interleaved)
* [get\_samples\_short](#get_samples_short)
* [get\_samples\_short\_interleaved](#get_samples_short_interleaved)
* [open\_file](#open_file)
* [open\_file\_section](#open_file_section)
* [open\_filename](#open_filename)
* [open\_memory](#open_memory)
* [open\_pushdata](#open_pushdata)
* [seek](#seek)
* [seek\_frame](#seek_frame)
* [seek\_start](#seek_start)
* [stream\_length\_in\_samples](#stream_length_in_samples)
* [stream\_length\_in\_seconds](#stream_length_in_seconds)

Procedure Groups (0)

This section is empty.

## Types

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L311)

```
Error :: enum i32 {
	none                             = 0, 
	need_more_data                   = 1,  // not a real error
	invalid_api_mixing,                    // can't mix API modes
	outofmem,                              // not enough memory
	feature_not_supported,                 // uses floor 0
	too_many_channels,                     // MAX_CHANNELS is too small
	file_open_failure,                     // fopen() failed
	seek_without_length,                   // can't seek in unknown-length file
	unexpected_eof                   = 10, // file is truncated?
	seek_invalid,                          // seek past EOF
	// vorbis errors:
	invalid_setup                    = 20, 
	invalid_stream, 
	// ogg errors:
	missing_capture_pattern          = 30, 
	invalid_stream_structure_version, 
	continued_packet_flag_invalid, 
	incorrect_stream_serial_number, 
	invalid_first_page, 
	bad_packet_type, 
	cant_find_last_page, 
	seek_failed, 
	ogg_skeleton_not_supported, 
}
```

##### Related Procedures With Parameters

* [open\_file](/vendor/stb/vorbis/#open_file)
* [open\_file\_section](/vendor/stb/vorbis/#open_file_section)
* [open\_filename](/vendor/stb/vorbis/#open_filename)
* [open\_memory](/vendor/stb/vorbis/#open_memory)
* [open\_pushdata](/vendor/stb/vorbis/#open_pushdata)

### [vorbis ¶](#vorbis) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L65)

```
vorbis :: struct {}
```

##### Related Procedures With Parameters

* [close](/vendor/stb/vorbis/#close)
* [decode\_frame\_pushdata](/vendor/stb/vorbis/#decode_frame_pushdata)
* [flush\_pushdata](/vendor/stb/vorbis/#flush_pushdata)
* [get\_comment](/vendor/stb/vorbis/#get_comment)
* [get\_error](/vendor/stb/vorbis/#get_error)
* [get\_file\_offset](/vendor/stb/vorbis/#get_file_offset)
* [get\_frame\_float](/vendor/stb/vorbis/#get_frame_float)
* [get\_frame\_short](/vendor/stb/vorbis/#get_frame_short)
* [get\_frame\_short\_interleaved](/vendor/stb/vorbis/#get_frame_short_interleaved)
* [get\_info](/vendor/stb/vorbis/#get_info)
* [get\_sample\_offset](/vendor/stb/vorbis/#get_sample_offset)
* [get\_samples\_float](/vendor/stb/vorbis/#get_samples_float)
* [get\_samples\_float\_interleaved](/vendor/stb/vorbis/#get_samples_float_interleaved)
* [get\_samples\_short](/vendor/stb/vorbis/#get_samples_short)
* [get\_samples\_short\_interleaved](/vendor/stb/vorbis/#get_samples_short_interleaved)
* [seek](/vendor/stb/vorbis/#seek)
* [seek\_frame](/vendor/stb/vorbis/#seek_frame)
* [seek\_start](/vendor/stb/vorbis/#seek_start)
* [stream\_length\_in\_samples](/vendor/stb/vorbis/#stream_length_in_samples)
* [stream\_length\_in\_seconds](/vendor/stb/vorbis/#stream_length_in_seconds)



##### Related Procedures With Returns

* [open\_file](/vendor/stb/vorbis/#open_file)
* [open\_file\_section](/vendor/stb/vorbis/#open_file_section)
* [open\_filename](/vendor/stb/vorbis/#open_filename)
* [open\_memory](/vendor/stb/vorbis/#open_memory)
* [open\_pushdata](/vendor/stb/vorbis/#open_pushdata)

### [vorbis\_alloc ¶](#vorbis_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L60)

```
vorbis_alloc :: struct {
	alloc_buffer:                 [^]u8,
	alloc_buffer_length_in_bytes: i32,
}
```

##### Related Procedures With Parameters

* [open\_file](/vendor/stb/vorbis/#open_file)
* [open\_file\_section](/vendor/stb/vorbis/#open_file_section)
* [open\_filename](/vendor/stb/vorbis/#open_filename)
* [open\_memory](/vendor/stb/vorbis/#open_memory)
* [open\_pushdata](/vendor/stb/vorbis/#open_pushdata)

### [vorbis\_comment ¶](#vorbis_comment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L78)

```
vorbis_comment :: struct {
	vendor:              cstring,
	comment_list_length: i32,
	comment_list:        [^]cstring,
}
```

##### Related Procedures With Returns

* [get\_comment](/vendor/stb/vorbis/#get_comment)

### [vorbis\_info ¶](#vorbis_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L67)

```
vorbis_info :: struct {
	sample_rate:                u32,
	channels:                   i32,
	setup_memory_required:      u32,
	setup_temp_memory_required: u32,
	temp_memory_required:       u32,
	max_frame_size:             i32,
}
```

##### Related Procedures With Returns

* [get\_info](/vendor/stb/vorbis/#get_info)

## Constants

### [FAST\_HUFFMAN\_LENGTH ¶](#FAST_HUFFMAN_LENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L376)

```
FAST_HUFFMAN_LENGTH :: 10
```

 

FAST\_HUFFMAN\_LENGTH [number]
sets the log size of the huffman-acceleration table. Maximum
supported value is 24. with larger numbers, more decodings are O(1),
but the table size is larger so worse cache missing, so you'll have
to probe (and try multiple ogg vorbis files) to find the sweet spot.

### [MAX\_CHANNELS ¶](#MAX_CHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L355)

```
MAX_CHANNELS :: 16
```

 

MAX\_CHANNELS [number]
globally define this to the maximum number of channels you need.
The spec does not put a restriction on channels except that
the count is stored in a byte, so 255 is the hard limit.
Reducing this saves about 16 bytes per value, so using 16 saves
(255-16)\*16 or around 4KB. Plus anything other memory usage
I forgot to account for. Can probably go as low as 8 (7.1 audio),
6 (5.1 audio), or 2 (stereo only).

### [NO\_STDIO ¶](#NO_STDIO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L29)

```
NO_STDIO :: ODIN_ARCH == .wasm32 || ODIN_ARCH == .wasm64p32
```

### [PUSHDATA\_CRC\_COUNT ¶](#PUSHDATA_CRC_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L369)

```
PUSHDATA_CRC_COUNT :: 4
```

 

PUSHDATA\_CRC\_COUNT [number]
after a flush\_pushdata(), stb\_vorbis begins scanning for the
next valid page, without backtracking. when it finds something
that looks like a page, it streams through it and verifies its
CRC32. Should that validation fail, it keeps scanning. But it's
possible that \_while\_ streaming through to check the CRC32 of
one candidate page, it sees another candidate page. This #define
determines how many "overlapping" candidate pages it can search
at once. Note that "real" pages are typically ~4KB to ~8KB, whereas
garbage pages could be as big as 64KB, but probably average ~16KB.
So don't hose ourselves by scanning an apparent 64KB page and
missing a ton of real ones in the interim; so minimum of 2

## Variables

This section is empty.

## Procedures

### [close ¶](#close) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L97)

```
close :: proc "c" (f: ^vorbis) ---
```

 

close an ogg vorbis file and free all memory in use

### [decode\_filename ¶](#decode_filename) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L205)

```
decode_filename :: proc "c" (filename: cstring, channels, sample_rate: ^i32, output: ^[^]i16) -> i32 ---
```

 

decode an entire file and output the data interleaved into a malloc()ed
buffer stored in \*output. The return value is the number of samples
decoded, or -1 if the file could not be opened or was not an ogg vorbis file.
When you're done with it, just free() the pointer returned in \*output.

### [decode\_frame\_pushdata ¶](#decode_frame_pushdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L167)

```
decode_frame_pushdata :: proc "c" (
	f:                         ^vorbis, 
	datablock:                 [^]u8, 
	datablock_length_in_bytes: i32, 
	channels:                  ^i32, 
	output:                    ^[^]^f32, 
	samples:                   ^i32, 
) -> i32 ---
```

 

decode a frame of audio sample data if possible from the passed-in data block

return value: number of bytes we used from datablock

possible cases:
0 bytes used, 0 samples output (need more data)
N bytes used, 0 samples output (resynching the stream, keep going)
N bytes used, M samples output (one frame of data)
note that after opening a file, you will ALWAYS get one N-bytes,0-sample
frame, because Vorbis always "discards" the first frame.

Note that on resynch, stb\_vorbis will rarely consume all of the buffer,
instead only datablock\_length\_in\_bytes-3 or less. This is because it wants
to avoid missing parts of a page header if they cross a datablock boundary,
without writing state-machiney code to record a partial detection.

The number of channels returned are stored in \*channels (which can be
NULL--it is always the same as the number of channels reported by
get\_info). *output will contain an array of float* buffers, one per
channel. In other words, (\*output)[0][0] contains the first sample from
the first channel, and (\*output)[1][0] contains the first sample from
the second channel.

\*output points into stb\_vorbis's internal output buffer storage; these
buffers are owned by stb\_vorbis and application code should not free
them or modify their contents. They are transient and will be overwritten
once you ask for more data to get decoded, so be sure to grab any data
you need before then.

### [decode\_memory ¶](#decode_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L207)

```
decode_memory :: proc "c" (mem: [^]u8, len: i32, channels, sample_rate: ^i32, output: ^[^]i16) -> i32 ---
```

### [flush\_pushdata ¶](#flush_pushdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L185)

```
flush_pushdata :: proc "c" (f: ^vorbis) ---
```

 

inform stb\_vorbis that your next datablock will not be contiguous with
previous ones (e.g. you've seeked in the data); future attempts to decode
frames will cause stb\_vorbis to resynchronize (as noted above), and
once it sees a valid Ogg page (typically 4-8KB, as large as 64KB), it
will begin decoding the \_next\_ frame.

if you want to seek using pushdata, you need to seek in your file, then
call stb\_vorbis\_flush\_pushdata(), then start calling decoding, then once
decoding is returning you data, call stb\_vorbis\_get\_sample\_offset, and
if you don't like the result, seek your file again and repeat.

### [get\_comment ¶](#get_comment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L91)

```
get_comment :: proc "c" (f: ^vorbis) -> vorbis_comment ---
```

 

get ogg comments

### [get\_error ¶](#get_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L94)

```
get_error :: proc "c" (f: ^vorbis) -> i32 ---
```

 

get the last error detected (clears it, too)

### [get\_file\_offset ¶](#get_file_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L108)

```
get_file_offset :: proc "c" (f: ^vorbis) -> u32 ---
```

 

returns the current seek point within the file, or offset from the beginning
of the memory buffer. In pushdata mode it returns 0.

### [get\_frame\_float ¶](#get_frame_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L265)

```
get_frame_float :: proc "c" (f: ^vorbis, channels: ^i32, output: ^[^]^f32) -> i32 ---
```

 

decode the next frame and return the number of samples. the number of
channels returned are stored in \*channels (which can be NULL--it is always
the same as the number of channels reported by get\_info). \*output will
contain an array of float\* buffers, one per channel. These outputs will
be overwritten on the next call to stb\_vorbis\_get\_frame\_\*.

You generally should not intermix calls to stb\_vorbis\_get\_frame\_\*()
and stb\_vorbis\_get\_samples\_\*(), since the latter calls the former.

### [get\_frame\_short ¶](#get_frame_short) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L279)

```
get_frame_short :: proc "c" (f: ^vorbis, num_c: i32, buffer: ^[^]i16, num_samples: i32) -> i32 ---
```

### [get\_frame\_short\_interleaved ¶](#get_frame_short_interleaved) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L278)

```
get_frame_short_interleaved :: proc "c" (f: ^vorbis, num_c: i32, buffer: [^]i16, num_shorts: i32) -> i32 ---
```

 

decode the next frame and return the number of *samples* per channel.
Note that for interleaved data, you pass in the number of shorts (the
size of your array), but the return value is the number of samples per
channel, not the total number of samples.

The data is coerced to the number of channels you request according to the
channel coercion rules (see below). You must pass in the size of your
buffer(s) so that stb\_vorbis will not overwrite the end of the buffer.
The maximum buffer size needed can be gotten from get\_info(); however,
the Vorbis I specification implies an absolute maximum of 4096 samples
per channel.

### [get\_info ¶](#get_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L88)

```
get_info :: proc "c" (f: ^vorbis) -> vorbis_info ---
```

 

get general information about the file

### [get\_sample\_offset ¶](#get_sample_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L104)

```
get_sample_offset :: proc "c" (f: ^vorbis) -> i32 ---
```

 

this function returns the offset (in samples) from the beginning of the
file that will be returned by the next decode, if it is known, or -1
otherwise. after a flush\_pushdata() call, this may take a while before
it becomes valid again.
NOT WORKING YET after a seek with PULLDATA API

### [get\_samples\_float ¶](#get_samples_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L299)

```
get_samples_float :: proc "c" (f: ^vorbis, channels: i32, buffer: ^[^]f32, num_samples: i32) -> i32 ---
```

### [get\_samples\_float\_interleaved ¶](#get_samples_float_interleaved) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L298)

```
get_samples_float_interleaved :: proc "c" (f: ^vorbis, channels: i32, buffer: [^]f32, num_floats: i32) -> i32 ---
```

 

gets num\_samples samples, not necessarily on a frame boundary--this requires
buffering so you have to supply the buffers. DOES NOT APPLY THE COERCION RULES.
Returns the number of samples stored per channel; it may be less than requested
at the end of the file. If there are no more samples in the file, returns 0.

### [get\_samples\_short ¶](#get_samples_short) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L307)

```
get_samples_short :: proc "c" (f: ^vorbis, channels: i32, buffer: ^[^]i16, num_samples: i32) -> i32 ---
```

### [get\_samples\_short\_interleaved ¶](#get_samples_short_interleaved) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L306)

```
get_samples_short_interleaved :: proc "c" (f: ^vorbis, channels: i32, buffer: [^]i16, num_shorts: i32) -> i32 ---
```

 

gets num\_samples samples, not necessarily on a frame boundary--this requires
buffering so you have to supply the buffers. Applies the coercion rules above
to produce 'channels' channels. Returns the number of samples stored per channel;
it may be less than requested at the end of the file. If there are no more
samples in the file, returns 0.

### [open\_file ¶](#open_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L229)

```
open_file :: proc "c" (f: ^c.FILE, close_handle_on_close: b32, error: ^Error, alloc_buffer: ^vorbis_alloc) -> ^vorbis ---
```

 

create an ogg vorbis decoder from an open FILE \*, looking for a stream at
the \_current\_ seek point (ftell). on failure, returns NULL and sets \*error.
note that stb\_vorbis must "own" this stream; if you seek it in between
calls to stb\_vorbis, it will become confused. Moreover, if you attempt to
perform stb\_vorbis\_seek\_\*() operations on this file, it will assume it
owns the \_entire\_ rest of the file after the start point. Use the next
function, stb\_vorbis\_open\_file\_section(), to limit it.

### [open\_file\_section ¶](#open_file_section) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L237)

```
open_file_section :: proc "c" (f: ^c.FILE, close_handle_on_close: b32, error: ^Error, alloc_buffer: ^vorbis_alloc, len: u32) -> ^vorbis ---
```

 

create an ogg vorbis decoder from an open FILE \*, looking for a stream at
the \_current\_ seek point (ftell); the stream will be of length 'len' bytes.
on failure, returns NULL and sets \*error. note that stb\_vorbis must "own"
this stream; if you seek it in between calls to stb\_vorbis, it will become
confused.

### [open\_filename ¶](#open_filename) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L219)

```
open_filename :: proc "c" (filename: cstring, error: ^Error, alloc_buffer: ^vorbis_alloc) -> ^vorbis ---
```

 

create an ogg vorbis decoder from a filename via fopen(). on failure,
returns NULL and sets \*error (possibly to VORBIS\_file\_open\_failure).

### [open\_memory ¶](#open_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L213)

```
open_memory :: proc "c" (data: [^]u8, len: i32, error: ^Error, alloc_buffer: ^vorbis_alloc) -> ^vorbis ---
```

 

create an ogg vorbis decoder from an ogg vorbis stream in memory (note
this must be the entire stream!). on failure, returns NULL and sets \*error

### [open\_pushdata ¶](#open_pushdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L132)

```
open_pushdata :: proc "c" (datablock: [^]u8, datablock_length_in_bytes: i32, datablock_memory_consumed_in_bytes: ^i32, error: ^Error, alloc_buffer: ^vorbis_alloc) -> ^vorbis ---
```

 

create a vorbis decoder by passing in the initial data block containing
the ogg&vorbis headers (you don't need to do parse them, just provide
the first N bytes of the file--you're told if it's not enough, see below)
on success, returns an stb\_vorbis \*, does not set error, returns the amount of
data parsed/consumed on this call in \*datablock\_memory\_consumed\_in\_bytes;
on failure, returns NULL on error and sets *error, does not change* datablock\_memory\_consumed
if returns NULL and \*error is VORBIS\_need\_more\_data, then the input block was
incomplete and you need to pass in a larger block from the start of the file

### [seek ¶](#seek) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L248)

```
seek :: proc "c" (f: ^vorbis, sample_number: u32) -> i32 ---
```

### [seek\_frame ¶](#seek_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L247)

```
seek_frame :: proc "c" (f: ^vorbis, sample_number: u32) -> i32 ---
```

 

these functions seek in the Vorbis file to (approximately) 'sample\_number'.
after calling seek\_frame(), the next call to get\_frame\_\*() will include
the specified sample. after calling stb\_vorbis\_seek(), the next call to
stb\_vorbis\_get\_samples\_\* will start with the specified sample. If you
do not need to seek to EXACTLY the target sample when using get\_samples\_\*,
you can also use seek\_frame().

### [seek\_start ¶](#seek_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L251)

```
seek_start :: proc "c" (f: ^vorbis) -> i32 ---
```

 

this function is equivalent to stb\_vorbis\_seek(f,0)

### [stream\_length\_in\_samples ¶](#stream_length_in_samples) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L254)

```
stream_length_in_samples :: proc "c" (f: ^vorbis) -> u32 ---
```

 

these functions return the total length of the vorbis stream

### [stream\_length\_in\_seconds ¶](#stream_length_in_seconds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin#L255)

```
stream_length_in_seconds :: proc "c" (f: ^vorbis) -> f32 ---
```

## Procedure Groups

This section is empty.

## Source Files

* [stb\_vorbis.odin](https://github.com/odin-lang/Odin/tree/master/vendor/stb/vorbis/stb_vorbis.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:54.566039700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error](#Error)
    + [vorbis](#vorbis)
    + [vorbis\_alloc](#vorbis_alloc)
    + [vorbis\_comment](#vorbis_comment)
    + [vorbis\_info](#vorbis_info)
  * [Constants](#pkg-Constants)
    + [FAST\_HUFFMAN\_LENGTH](#FAST_HUFFMAN_LENGTH)
    + [MAX\_CHANNELS](#MAX_CHANNELS)
    + [NO\_STDIO](#NO_STDIO)
    + [PUSHDATA\_CRC\_COUNT](#PUSHDATA_CRC_COUNT)
  * [Procedures](#pkg-Procedures)
    + [close](#close)
    + [decode\_filename](#decode_filename)
    + [decode\_frame\_pushdata](#decode_frame_pushdata)
    + [decode\_memory](#decode_memory)
    + [flush\_pushdata](#flush_pushdata)
    + [get\_comment](#get_comment)
    + [get\_error](#get_error)
    + [get\_file\_offset](#get_file_offset)
    + [get\_frame\_float](#get_frame_float)
    + [get\_frame\_short](#get_frame_short)
    + [get\_frame\_short\_interleaved](#get_frame_short_interleaved)
    + [get\_info](#get_info)
    + [get\_sample\_offset](#get_sample_offset)
    + [get\_samples\_float](#get_samples_float)
    + [get\_samples\_float\_interleaved](#get_samples_float_interleaved)
    + [get\_samples\_short](#get_samples_short)
    + [get\_samples\_short\_interleaved](#get_samples_short_interleaved)
    + [open\_file](#open_file)
    + [open\_file\_section](#open_file_section)
    + [open\_filename](#open_filename)
    + [open\_memory](#open_memory)
    + [open\_pushdata](#open_pushdata)
    + [seek](#seek)
    + [seek\_frame](#seek_frame)
    + [seek\_start](#seek_start)
    + [stream\_length\_in\_samples](#stream_length_in_samples)
    + [stream\_length\_in\_seconds](#stream_length_in_seconds)
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