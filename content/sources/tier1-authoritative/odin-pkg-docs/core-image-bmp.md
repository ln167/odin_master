package image/bmp - pkg.odin-lang.org 






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



Current Package: *[core\_image\_bmp](/core/image/bmp)*

  

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
3. [bmp](/core/image/bmp)

# package core:image/bmp [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Reader and writer for Microsoft `BMP` images.

## Index

Types (6)

* [Bitmask](#Bitmask)
* [Error](#Error)
* [Image](#Image)
* [Options](#Options)
* [RGBA\_Pixel](#RGBA_Pixel)
* [RGB\_Pixel](#RGB_Pixel)

Constants (2)

* [FILE\_HEADER\_SIZE](#FILE_HEADER_SIZE)
* [INFO\_STUB\_SIZE](#INFO_STUB_SIZE)

Variables (0)

This section is empty.

Procedures (16)

* [align2](#align2)
* [align4](#align4)
* [decode\_rgb](#decode_rgb)
* [decode\_rle](#decode_rle)
* [destroy](#destroy)
* [is\_os2](#is_os2)
* [load\_from\_bytes](#load_from_bytes)
* [load\_from\_context](#load_from_context)
* [load\_from\_file](#load_from_file)
* [make\_output](#make_output)
* [read\_or\_make\_bit\_masks](#read_or_make_bit_masks)
* [save\_to\_buffer](#save_to_buffer)
* [save\_to\_file](#save_to_file)
* [scale](#scale)
* [skip\_space](#skip_space)
* [write](#write)

Procedure Groups (2)

* [load](#load)
* [save](#save)

## Types

### [Bitmask ¶](#Bitmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L287)

```
Bitmask :: struct {
	mask:  [4]u32le `fmt:"b"`,
	shift: [4]u32le,
	bits:  [4]u32le,
}
```

##### Related Procedures With Returns

* [read\_or\_make\_bit\_masks](/core/image/bmp/#read_or_make_bit_masks)

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L11)

```
Error :: image.Error
```

##### Related Procedures With Returns

* [decode\_rgb](/core/image/bmp/#decode_rgb)
* [decode\_rle](/core/image/bmp/#decode_rle)
* [load\_from\_bytes](/core/image/bmp/#load_from_bytes)
* [load\_from\_context](/core/image/bmp/#load_from_context)
* [load\_from\_file](/core/image/bmp/#load_from_file)
* [make\_output](/core/image/bmp/#make_output)
* [read\_or\_make\_bit\_masks](/core/image/bmp/#read_or_make_bit_masks)
* [save\_to\_buffer](/core/image/bmp/#save_to_buffer)
* [save\_to\_file](/core/image/bmp/#save_to_file)
* [skip\_space](/core/image/bmp/#skip_space)
* [write](/core/image/bmp/#write)
* [load](/core/image/bmp/#load) *(procedure groups)*
* [save](/core/image/bmp/#save) *(procedure groups)*

### [Image ¶](#Image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L12)

```
Image :: image.Image
```

##### Related Procedures With Parameters

* [decode\_rgb](/core/image/bmp/#decode_rgb)
* [decode\_rle](/core/image/bmp/#decode_rle)
* [destroy](/core/image/bmp/#destroy)
* [make\_output](/core/image/bmp/#make_output)
* [save\_to\_buffer](/core/image/bmp/#save_to_buffer)
* [save\_to\_file](/core/image/bmp/#save_to_file)
* [write](/core/image/bmp/#write)
* [save](/core/image/bmp/#save) *(procedure groups)*



##### Related Procedures With Returns

* [load\_from\_bytes](/core/image/bmp/#load_from_bytes)
* [load\_from\_context](/core/image/bmp/#load_from_context)
* [load\_from\_file](/core/image/bmp/#load_from_file)
* [load](/core/image/bmp/#load) *(procedure groups)*

### [Options ¶](#Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L13)

```
Options :: image.Options
```

##### Related Procedures With Parameters

* [load\_from\_bytes](/core/image/bmp/#load_from_bytes)
* [load\_from\_context](/core/image/bmp/#load_from_context)
* [load\_from\_file](/core/image/bmp/#load_from_file)
* [save\_to\_buffer](/core/image/bmp/#save_to_buffer)
* [save\_to\_file](/core/image/bmp/#save_to_file)
* [load](/core/image/bmp/#load) *(procedure groups)*
* [save](/core/image/bmp/#save) *(procedure groups)*

### [RGBA\_Pixel ¶](#RGBA_Pixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L16)

```
RGBA_Pixel :: [4]u8
```

### [RGB\_Pixel ¶](#RGB_Pixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L15)

```
RGB_Pixel :: [3]u8
```

##### Related Procedures With Parameters

* [write](/core/image/bmp/#write)

## Constants

### [FILE\_HEADER\_SIZE ¶](#FILE_HEADER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L18)

```
FILE_HEADER_SIZE :: 14
```

### [INFO\_STUB\_SIZE ¶](#INFO_STUB_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L19)

```
INFO_STUB_SIZE :: FILE_HEADER_SIZE + size_of(image.BMP_Version)
```

## Variables

This section is empty.

## Procedures

### [align2 ¶](#align2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L703)

```
align2 :: proc(width: int) -> (stride: int) {…}
```

### [align4 ¶](#align4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L711)

```
align4 :: proc(width: int) -> (stride: int) {…}
```

### [decode\_rgb ¶](#decode_rgb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L389)

```
decode_rgb :: proc(ctx: ^$C, img: ^image.Image, info: image.BMP_Header, allocator := context.allocator) -> (err: image.Error) {…}
```

### [decode\_rle ¶](#decode_rle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L546)

```
decode_rle :: proc(ctx: ^$C, img: ^image.Image, info: image.BMP_Header, allocator := context.allocator) -> (err: image.Error) {…}
```

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L730)

```
destroy :: proc(img: ^image.Image) {…}
```

 

Cleanup of image-specific data.

### [is\_os2 ¶](#is_os2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L260)

```
is_os2 :: proc(version: image.BMP_Version) -> (res: bool) {…}
```

### [load\_from\_bytes ¶](#load_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L116)

```
load_from_bytes :: proc(data: []u8, options: image.Options = Options{}, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/bmp/#load)

### [load\_from\_context ¶](#load_from_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L126)

```
load_from_context :: proc(ctx: ^$C, options: image.Options = Options{}, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/bmp/#load)

### [load\_from\_file ¶](#load_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp_os.odin#L9)

```
load_from_file :: proc(filename: string, options: image.Options = Options{}, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/bmp/#load)

### [make\_output ¶](#make_output) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L267)

```
make_output :: proc(img: ^image.Image, allocator := context.allocator) -> (err: image.Error) {…}
```

### [read\_or\_make\_bit\_masks ¶](#read_or_make_bit_masks) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L293)

```
read_or_make_bit_masks :: proc(ctx: ^$C, info: image.BMP_Header) -> (res: Bitmask, read: int, err: image.Error) {…}
```

### [save\_to\_buffer ¶](#save_to_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L21)

```
save_to_buffer :: proc(output: ^bytes.Buffer, img: ^image.Image, options: image.Options = Options{}, allocator := context.allocator) -> (err: image.Error) {…}
```

##### Related Procedure Groups

* [save](/core/image/bmp/#save)

### [save\_to\_file ¶](#save_to_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp_os.odin#L24)

```
save_to_file :: proc(output: string, img: ^image.Image, options: image.Options = Options{}, allocator := context.allocator) -> (err: image.Error) {…}
```

##### Related Procedure Groups

* [save](/core/image/bmp/#save)

### [scale ¶](#scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L382)

```
scale :: proc(val: $T, mask, shift, bits: u32le) -> (res: u8) {…}
```

### [skip\_space ¶](#skip_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L719)

```
skip_space :: proc(ctx: ^$C, bytes_to_skip: int) -> (err: image.Error) {…}
```

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin#L277)

```
write :: proc(img: ^image.Image, x, y: int, pix: [3]u8) -> (err: image.Error) {…}
```

## Procedure Groups

### [load ¶](#load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp_os.odin#L7)

```
load :: proc{
	load_from_file,
	load_from_bytes,
	load_from_context,
}
```

### [save ¶](#save) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp_os.odin#L22)

```
save :: proc{
	save_to_buffer,
	save_to_file,
}
```

## Source Files

* [bmp.odin](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp.odin)
* [bmp\_os.odin](https://github.com/odin-lang/Odin/tree/master/core/image/bmp/bmp_os.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.445808400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Bitmask](#Bitmask)
    + [Error](#Error)
    + [Image](#Image)
    + [Options](#Options)
    + [RGBA\_Pixel](#RGBA_Pixel)
    + [RGB\_Pixel](#RGB_Pixel)
  * [Constants](#pkg-Constants)
    + [FILE\_HEADER\_SIZE](#FILE_HEADER_SIZE)
    + [INFO\_STUB\_SIZE](#INFO_STUB_SIZE)
  * [Procedures](#pkg-Procedures)
    + [align2](#align2)
    + [align4](#align4)
    + [decode\_rgb](#decode_rgb)
    + [decode\_rle](#decode_rle)
    + [destroy](#destroy)
    + [is\_os2](#is_os2)
    + [load\_from\_bytes](#load_from_bytes)
    + [load\_from\_context](#load_from_context)
    + [load\_from\_file](#load_from_file)
    + [make\_output](#make_output)
    + [read\_or\_make\_bit\_masks](#read_or_make_bit_masks)
    + [save\_to\_buffer](#save_to_buffer)
    + [save\_to\_file](#save_to_file)
    + [scale](#scale)
    + [skip\_space](#skip_space)
    + [write](#write)
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