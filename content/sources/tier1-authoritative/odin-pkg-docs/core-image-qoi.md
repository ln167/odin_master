package image/qoi - pkg.odin-lang.org 






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



Current Package: *[qoi](/core/image/qoi)*

  

#### [core Library](/core)

* [bufio](/core/bufio)
* [bytes](/core/bytes)
* [c](/core/c)
  + [libc](/core/c/libc)
* [compress](/core/compress)
  + [gzip](/core/compress/gzip)
  + [shoco](/core/compress/shoco)
  + [zlib](/core/compress/zlib)
* container
  + [avl](/core/container/avl)
  + [bit\_array](/core/container/bit_array)
  + [handle\_map](/core/container/handle_map)
  + [intrusive/list](/core/container/intrusive/list)
  + [lru](/core/container/lru)
  + [pool](/core/container/pool)
  + [priority\_queue](/core/container/priority_queue)
  + [queue](/core/container/queue)
  + [rbtree](/core/container/rbtree)
  + [small\_array](/core/container/small_array)
  + [topological\_sort](/core/container/topological_sort)
  + [xar](/core/container/xar)
* [crypto](/core/crypto)
  + [aead](/core/crypto/aead)
  + [aegis](/core/crypto/aegis)
  + [aes](/core/crypto/aes)
  + [argon2id](/core/crypto/argon2id)
  + [blake2b](/core/crypto/blake2b)
  + [blake2s](/core/crypto/blake2s)
  + [chacha20](/core/crypto/chacha20)
  + [chacha20poly1305](/core/crypto/chacha20poly1305)
  + [deoxysii](/core/crypto/deoxysii)
  + [ecdh](/core/crypto/ecdh)
  + [ecdsa](/core/crypto/ecdsa)
  + [ed25519](/core/crypto/ed25519)
  + [hash](/core/crypto/hash)
  + [hkdf](/core/crypto/hkdf)
  + [hmac](/core/crypto/hmac)
  + [kmac](/core/crypto/kmac)
  + [legacy/keccak](/core/crypto/legacy/keccak)
  + [legacy/md5](/core/crypto/legacy/md5)
  + [legacy/sha1](/core/crypto/legacy/sha1)
  + [pbkdf2](/core/crypto/pbkdf2)
  + [poly1305](/core/crypto/poly1305)
  + [ristretto255](/core/crypto/ristretto255)
  + [sha2](/core/crypto/sha2)
  + [sha3](/core/crypto/sha3)
  + [shake](/core/crypto/shake)
  + [sm3](/core/crypto/sm3)
  + [tuplehash](/core/crypto/tuplehash)
  + [x25519](/core/crypto/x25519)
  + [x448](/core/crypto/x448)
* debug
  + [pe](/core/debug/pe)
  + [trace](/core/debug/trace)
* [dynlib](/core/dynlib)
* encoding
  + [base32](/core/encoding/base32)
  + [base64](/core/encoding/base64)
  + [cbor](/core/encoding/cbor)
  + [csv](/core/encoding/csv)
  + [endian](/core/encoding/endian)
  + [entity](/core/encoding/entity)
  + [hex](/core/encoding/hex)
  + [hxa](/core/encoding/hxa)
  + [ini](/core/encoding/ini)
  + [json](/core/encoding/json)
  + [uuid](/core/encoding/uuid)
  + [uuid/legacy](/core/encoding/uuid/legacy)
  + [varint](/core/encoding/varint)
  + [xml](/core/encoding/xml)
* [flags](/core/flags)
* [fmt](/core/fmt)
* [hash](/core/hash)
  + [xxhash](/core/hash/xxhash)
* [image](/core/image)
  + [bmp](/core/image/bmp)
  + [jpeg](/core/image/jpeg)
  + [netpbm](/core/image/netpbm)
  + [png](/core/image/png)
  + [qoi](/core/image/qoi)
  + [tga](/core/image/tga)
* [io](/core/io)
* [log](/core/log)
* [math](/core/math)
  + [big](/core/math/big)
  + [bits](/core/math/bits)
  + [cmplx](/core/math/cmplx)
  + [ease](/core/math/ease)
  + [fixed](/core/math/fixed)
  + [linalg](/core/math/linalg)
  + [linalg/glsl](/core/math/linalg/glsl)
  + [linalg/hlsl](/core/math/linalg/hlsl)
  + [noise](/core/math/noise)
  + [rand](/core/math/rand)
* [mem](/core/mem)
  + [tlsf](/core/mem/tlsf)
  + [virtual](/core/mem/virtual)
* [nbio](/core/nbio)
* [net](/core/net)
* odin
  + [ast](/core/odin/ast)
  + [doc-format](/core/odin/doc-format)
  + [parser](/core/odin/parser)
  + [tokenizer](/core/odin/tokenizer)
* [os](/core/os)
  + [old](/core/os/old)
* path
  + [filepath](/core/path/filepath)
  + [slashpath](/core/path/slashpath)
* prof
  + [spall](/core/prof/spall)
* [reflect](/core/reflect)
* [relative](/core/relative)
* [simd](/core/simd)
  + [x86](/core/simd/x86)
* [slice](/core/slice)
  + [heap](/core/slice/heap)
* [sort](/core/sort)
* [strconv](/core/strconv)
  + [decimal](/core/strconv/decimal)
* [strings](/core/strings)
* [sync](/core/sync)
  + [chan](/core/sync/chan)
* sys
  + [darwin](/core/sys/darwin)
  + [darwin/CoreFoundation](/core/sys/darwin/CoreFoundation)
  + [darwin/CoreGraphics](/core/sys/darwin/CoreGraphics)
  + [darwin/Foundation](/core/sys/darwin/Foundation)
  + [darwin/Security](/core/sys/darwin/Security)
  + [freebsd](/core/sys/freebsd)
  + [haiku](/core/sys/haiku)
  + [info](/core/sys/info)
  + [kqueue](/core/sys/kqueue)
  + [linux](/core/sys/linux)
  + [linux/uring](/core/sys/linux/uring)
  + [orca](/core/sys/orca)
  + [posix](/core/sys/posix)
  + [unix](/core/sys/unix)
  + [valgrind](/core/sys/valgrind)
  + [wasm/js](/core/sys/wasm/js)
  + [wasm/wasi](/core/sys/wasm/wasi)
  + [windows](/core/sys/windows)
* [terminal](/core/terminal)
  + [ansi](/core/terminal/ansi)
* [testing](/core/testing)
* text
  + [edit](/core/text/edit)
  + [i18n](/core/text/i18n)
  + [match](/core/text/match)
  + [regex](/core/text/regex)
  + [regex/common](/core/text/regex/common)
  + [regex/compiler](/core/text/regex/compiler)
  + [regex/optimizer](/core/text/regex/optimizer)
  + [regex/parser](/core/text/regex/parser)
  + [regex/tokenizer](/core/text/regex/tokenizer)
  + [regex/virtual\_machine](/core/text/regex/virtual_machine)
  + [scanner](/core/text/scanner)
  + [table](/core/text/table)
* [thread](/core/thread)
* [time](/core/time)
* [unicode](/core/unicode)
  + [utf16](/core/unicode/utf16)
  + [utf8](/core/unicode/utf8)
  + [utf8/utf8string](/core/unicode/utf8/utf8string)

1. [core](/core)
2. [image](/core/image)
3. [qoi](/core/image/qoi)

# package core:image/qoi [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Reader and writer for `QOI` images.

The QOI specification is at [https://qoiformat.org](https://qoiformat.org/).

## Index

Types (6)

* [Error](#Error)
* [Image](#Image)
* [Options](#Options)
* [QOI\_Opcode\_Tag](#QOI_Opcode_Tag)
* [RGBA\_Pixel](#RGBA_Pixel)
* [RGB\_Pixel](#RGB_Pixel)

Constants (2)

* [QOI\_Data\_Mask](#QOI_Data_Mask)
* [QOI\_Opcode\_Mask](#QOI_Opcode_Mask)

Variables (0)

This section is empty.

Procedures (7)

* [destroy](#destroy)
* [load\_from\_bytes](#load_from_bytes)
* [load\_from\_context](#load_from_context)
* [load\_from\_file](#load_from_file)
* [qoi\_hash](#qoi_hash)
* [save\_to\_buffer](#save_to_buffer)
* [save\_to\_file](#save_to_file)

Procedure Groups (2)

* [load](#load)
* [save](#save)

## Types

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L18)

```
Error :: image.Error
```

##### Related Procedures With Returns

* [load\_from\_bytes](/core/image/qoi/#load_from_bytes)
* [load\_from\_context](/core/image/qoi/#load_from_context)
* [load\_from\_file](/core/image/qoi/#load_from_file)
* [save\_to\_buffer](/core/image/qoi/#save_to_buffer)
* [save\_to\_file](/core/image/qoi/#save_to_file)
* [load](/core/image/qoi/#load) *(procedure groups)*
* [save](/core/image/qoi/#save) *(procedure groups)*

### [Image ¶](#Image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L19)

```
Image :: image.Image
```

##### Related Procedures With Parameters

* [destroy](/core/image/qoi/#destroy)
* [save\_to\_buffer](/core/image/qoi/#save_to_buffer)
* [save\_to\_file](/core/image/qoi/#save_to_file)
* [save](/core/image/qoi/#save) *(procedure groups)*



##### Related Procedures With Returns

* [load\_from\_bytes](/core/image/qoi/#load_from_bytes)
* [load\_from\_context](/core/image/qoi/#load_from_context)
* [load\_from\_file](/core/image/qoi/#load_from_file)
* [load](/core/image/qoi/#load) *(procedure groups)*

### [Options ¶](#Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L20)

```
Options :: image.Options
```

##### Related Procedures With Parameters

* [load\_from\_bytes](/core/image/qoi/#load_from_bytes)
* [load\_from\_context](/core/image/qoi/#load_from_context)
* [load\_from\_file](/core/image/qoi/#load_from_file)
* [save\_to\_buffer](/core/image/qoi/#save_to_buffer)
* [save\_to\_file](/core/image/qoi/#save_to_file)
* [load](/core/image/qoi/#load) *(procedure groups)*
* [save](/core/image/qoi/#save) *(procedure groups)*

### [QOI\_Opcode\_Tag ¶](#QOI_Opcode_Tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L348)

```
QOI_Opcode_Tag :: enum u8 {
	// 2-bit tags
	INDEX = 0,   // 6-bit index into color array follows
	DIFF  = 64,  // 3x (RGB) 2-bit difference follows (-2..1), bias of 2.
	LUMA  = 128, // Luma difference
	RUN   = 192, // Run length encoding, bias -1
	// 8-bit tags
	RGB   = 254, // Raw RGB  pixel follows
	RGBA  = 255, // Raw RGBA pixel follows
}
```

### [RGBA\_Pixel ¶](#RGBA_Pixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L23)

```
RGBA_Pixel :: [4]u8
```

##### Related Procedures With Parameters

* [qoi\_hash](/core/image/qoi/#qoi_hash)

### [RGB\_Pixel ¶](#RGB_Pixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L22)

```
RGB_Pixel :: [3]u8
```

## Constants

### [QOI\_Data\_Mask ¶](#QOI_Data_Mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L361)

```
QOI_Data_Mask :: 0b0011_1111
```

### [QOI\_Opcode\_Mask ¶](#QOI_Opcode_Mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L360)

```
QOI_Opcode_Mask :: 0b1100_0000
```

## Variables

This section is empty.

## Procedures

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L331)

```
destroy :: proc(img: ^image.Image) {…}
```

 

Cleanup of image-specific data.

### [load\_from\_bytes ¶](#load_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L163)

```
load_from_bytes :: proc(data: []u8, options: image.Options = Options{}, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/qoi/#load)

### [load\_from\_context ¶](#load_from_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L173)

```
load_from_context :: proc(ctx: ^$C, options: image.Options = Options{}, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/qoi/#load)

### [load\_from\_file ¶](#load_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi_os.odin#L9)

```
load_from_file :: proc(filename: string, options: image.Options = Options{}, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/qoi/#load)

### [qoi\_hash ¶](#qoi_hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L363)

```
qoi_hash :: proc(pixel: [4]u8) -> (index: u8) {…}
```

### [save\_to\_buffer ¶](#save_to_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin#L25)

```
save_to_buffer :: proc(output: ^bytes.Buffer, img: ^image.Image, options: image.Options = Options{}, allocator := context.allocator) -> (err: image.Error) {…}
```

##### Related Procedure Groups

* [save](/core/image/qoi/#save)

### [save\_to\_file ¶](#save_to_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi_os.odin#L24)

```
save_to_file :: proc(output: string, img: ^image.Image, options: image.Options = Options{}, allocator := context.allocator) -> (err: image.Error) {…}
```

##### Related Procedure Groups

* [save](/core/image/qoi/#save)

## Procedure Groups

### [load ¶](#load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi_os.odin#L7)

```
load :: proc{
	load_from_file,
	load_from_bytes,
	load_from_context,
}
```

### [save ¶](#save) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi_os.odin#L22)

```
save :: proc{
	save_to_buffer,
	save_to_file,
}
```

## Source Files

* [qoi.odin](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi.odin)
* [qoi\_os.odin](https://github.com/odin-lang/Odin/tree/master/core/image/qoi/qoi_os.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.469229300 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error](#Error)
    + [Image](#Image)
    + [Options](#Options)
    + [QOI\_Opcode\_Tag](#QOI_Opcode_Tag)
    + [RGBA\_Pixel](#RGBA_Pixel)
    + [RGB\_Pixel](#RGB_Pixel)
  * [Constants](#pkg-Constants)
    + [QOI\_Data\_Mask](#QOI_Data_Mask)
    + [QOI\_Opcode\_Mask](#QOI_Opcode_Mask)
  * [Procedures](#pkg-Procedures)
    + [destroy](#destroy)
    + [load\_from\_bytes](#load_from_bytes)
    + [load\_from\_context](#load_from_context)
    + [load\_from\_file](#load_from_file)
    + [qoi\_hash](#qoi_hash)
    + [save\_to\_buffer](#save_to_buffer)
    + [save\_to\_file](#save_to_file)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [load](#load)
    + [save](#save)
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