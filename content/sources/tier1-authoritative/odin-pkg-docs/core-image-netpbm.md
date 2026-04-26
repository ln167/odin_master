package image/netpbm - pkg.odin-lang.org 






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



Current Package: *[netpbm](/core/image/netpbm)*

  

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
3. [netpbm](/core/image/netpbm)

# package core:image/netpbm [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Readers and writers for `PBM`, `PGM`, `PPM`, `PAM` and `PFM` images.

Formats:

```
PBM (P1, P4): Portable Bit Map,       stores black and white images   (1 channel)
PGM (P2, P5): Portable Gray Map,      stores greyscale images         (1 channel, 1 or 2 bytes per value)
PPM (P3, P6): Portable Pixel Map,     stores colour images            (3 channel, 1 or 2 bytes per value)
PAM (P7    ): Portable Arbitrary Map, stores arbitrary channel images            (1 or 2 bytes per value)
PFM (Pf, PF): Portable Float Map,     stores floating-point images    (Pf: 1 channel, PF: 3 channel)
```

Reading:

All formats fill out header fields `format`, `width`, `height`, `channels`, `depth`.
Specific formats use more fields:

```
PGM, PPM, and PAM set `maxval` (maximum of 65535)
PAM sets `tupltype` if there is one, and can set `channels` to any value (not just 1 or 3)
PFM sets `scale` (float equivalent of `maxval`) and `little_endian` (endianness of stored floats)
```

Currently doesn't support reading multiple images from one binary-format file.

Writing:

You can use your own `Netpbm_Info` struct to control how images are written.
All formats require the header field `format` to be specified.
Additional header fields are required for specific formats:

```
PGM, PPM, and PAM require `maxval` (maximum of 65535)
PAM also uses `tupltype`, though it may be left as default (empty or nil string)
PFM requires `scale`, and optionally `little_endian`
```

Some syntax differences from the specifications:

`channels` stores the number of values per pixel, what the PAM specification calls `depth`
`depth` instead is the number of bits for a single value (32 for PFM, 16 or 8 otherwise)
`scale` and `little_endian` are separated, so the `header` will always store a positive `scale`
`little_endian` will only be true for a negative `scale` PFM, every other format will be false
`little_endian` only describes the netpbm data being read/written, the image buffer will be native

## Index

Types (7)

* [Error](#Error)
* [Format](#Format)
* [Format\_Error](#Format_Error)
* [Formats](#Formats)
* [Header](#Header)
* [Image](#Image)
* [Info](#Info)

Constants (8)

* [ASCII](#ASCII)
* [BINARY](#BINARY)
* [PAM](#PAM)
* [PBM](#PBM)
* [PFM](#PFM)
* [PGM](#PGM)
* [PNM](#PNM)
* [PPM](#PPM)

Variables (0)

This section is empty.

Procedures (9)

* [autoselect\_pbm\_format\_from\_image](#autoselect_pbm_format_from_image)
* [decode\_image](#decode_image)
* [destroy](#destroy)
* [header\_destroy](#header_destroy)
* [load\_from\_bytes](#load_from_bytes)
* [load\_from\_file](#load_from_file)
* [parse\_header](#parse_header)
* [save\_to\_buffer](#save_to_buffer)
* [save\_to\_file](#save_to_file)

Procedure Groups (2)

* [load](#load)
* [save](#save)

## Types

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L16)

```
Error :: image.Error
```

##### Related Procedures With Returns

* [decode\_image](/core/image/netpbm/#decode_image)
* [load\_from\_bytes](/core/image/netpbm/#load_from_bytes)
* [load\_from\_file](/core/image/netpbm/#load_from_file)
* [parse\_header](/core/image/netpbm/#parse_header)
* [save\_to\_buffer](/core/image/netpbm/#save_to_buffer)
* [save\_to\_file](/core/image/netpbm/#save_to_file)
* [load](/core/image/netpbm/#load) *(procedure groups)*
* [save](/core/image/netpbm/#save) *(procedure groups)*

### [Format ¶](#Format) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L13)

```
Format :: image.Netpbm_Format
```

### [Format\_Error ¶](#Format_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L17)

```
Format_Error :: image.Netpbm_Error
```

### [Formats ¶](#Formats) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L19)

```
Formats :: bit_set[image.Netpbm_Format]
```

##### Related Constants

* [ASCII](/core/image/netpbm/#ASCII)
* [BINARY](/core/image/netpbm/#BINARY)
* [PAM](/core/image/netpbm/#PAM)
* [PBM](/core/image/netpbm/#PBM)
* [PFM](/core/image/netpbm/#PFM)
* [PGM](/core/image/netpbm/#PGM)
* [PNM](/core/image/netpbm/#PNM)
* [PPM](/core/image/netpbm/#PPM)

### [Header ¶](#Header) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L14)

```
Header :: image.Netpbm_Header
```

##### Related Procedures With Parameters

* [decode\_image](/core/image/netpbm/#decode_image)
* [header\_destroy](/core/image/netpbm/#header_destroy)



##### Related Procedures With Returns

* [parse\_header](/core/image/netpbm/#parse_header)

### [Image ¶](#Image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L12)

```
Image :: image.Image
```

##### Related Procedures With Parameters

* [autoselect\_pbm\_format\_from\_image](/core/image/netpbm/#autoselect_pbm_format_from_image)
* [decode\_image](/core/image/netpbm/#decode_image)
* [destroy](/core/image/netpbm/#destroy)
* [save\_to\_buffer](/core/image/netpbm/#save_to_buffer)
* [save\_to\_file](/core/image/netpbm/#save_to_file)
* [save](/core/image/netpbm/#save) *(procedure groups)*



##### Related Procedures With Returns

* [load\_from\_bytes](/core/image/netpbm/#load_from_bytes)
* [load\_from\_file](/core/image/netpbm/#load_from_file)
* [load](/core/image/netpbm/#load) *(procedure groups)*

### [Info ¶](#Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L15)

```
Info :: image.Netpbm_Info
```

##### Related Procedures With Parameters

* [save\_to\_buffer](/core/image/netpbm/#save_to_buffer)
* [save\_to\_file](/core/image/netpbm/#save_to_file)
* [save](/core/image/netpbm/#save) *(procedure groups)*



##### Related Procedures With Returns

* [autoselect\_pbm\_format\_from\_image](/core/image/netpbm/#autoselect_pbm_format_from_image)

## Constants

### [ASCII ¶](#ASCII) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L26)

```
ASCII: bit_set[image.Netpbm_Format] : Formats{.P1, .P2, .P3}
```

### [BINARY ¶](#BINARY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L27)

```
BINARY: bit_set[image.Netpbm_Format] : Formats{.P4, .P5, .P6} + PAM + PFM
```

### [PAM ¶](#PAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L24)

```
PAM: bit_set[image.Netpbm_Format] : Formats{.P7}
```

### [PBM ¶](#PBM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L20)

```
PBM: bit_set[image.Netpbm_Format] : Formats{.P1, .P4}
```

### [PFM ¶](#PFM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L25)

```
PFM: bit_set[image.Netpbm_Format] : Formats{.Pf, .PF}
```

### [PGM ¶](#PGM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L21)

```
PGM: bit_set[image.Netpbm_Format] : Formats{.P2, .P5}
```

### [PNM ¶](#PNM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L23)

```
PNM: bit_set[image.Netpbm_Format] : PBM + PGM + PPM
```

### [PPM ¶](#PPM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L22)

```
PPM: bit_set[image.Netpbm_Format] : Formats{.P3, .P6}
```

## Variables

This section is empty.

## Procedures

### [autoselect\_pbm\_format\_from\_image ¶](#autoselect_pbm_format_from_image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L655)

```
autoselect_pbm_format_from_image :: proc(img: ^image.Image, prefer_binary: bool = true, force_black_and_white: bool = false, pfm_scale: f32 = f32(1.0)) -> (res: image.Netpbm_Info, ok: bool) {…}
```

 

Automatically try to select an appropriate format to save to based on `img.channel` and `img.depth`

### [decode\_image ¶](#decode_image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L527)

```
decode_image :: proc(img: ^image.Image, header: image.Netpbm_Header, data: []u8, allocator := context.allocator) -> (err: image.Error) {…}
```

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/helpers.odin#L6)

```
destroy :: proc(img: ^image.Image) -> bool {…}
```

### [header\_destroy ¶](#header_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/helpers.odin#L23)

```
header_destroy :: proc(header: ^image.Netpbm_Header) {…}
```

### [load\_from\_bytes ¶](#load_from_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L29)

```
load_from_bytes :: proc(data: []u8, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/netpbm/#load)

### [load\_from\_file ¶](#load_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm_os.odin#L11)

```
load_from_file :: proc(filename: string, allocator := context.allocator) -> (img: ^image.Image, err: image.Error) {…}
```

##### Related Procedure Groups

* [load](/core/image/netpbm/#load)

### [parse\_header ¶](#parse_header) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L233)

```
parse_header :: proc(data: []u8, allocator := context.allocator) -> (header: image.Netpbm_Header, length: int, err: image.Error) {…}
```

### [save\_to\_buffer ¶](#save_to_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin#L52)

```
save_to_buffer :: proc(img: ^image.Image, custom_info: image.Netpbm_Info = {}, allocator := context.allocator) -> (buffer: []u8, err: image.Error) {…}
```

##### Related Procedure Groups

* [save](/core/image/netpbm/#save)

### [save\_to\_file ¶](#save_to_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm_os.odin#L28)

```
save_to_file :: proc(filename: string, img: ^image.Image, custom_info: image.Netpbm_Info = {}, allocator := context.allocator) -> (err: image.Error) {…}
```

##### Related Procedure Groups

* [save](/core/image/netpbm/#save)

## Procedure Groups

### [load ¶](#load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm_os.odin#L6)

```
load :: proc{
	load_from_file,
	load_from_bytes,
}
```

### [save ¶](#save) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm_os.odin#L23)

```
save :: proc{
	save_to_file,
	save_to_buffer,
}
```

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/doc.odin)
* [helpers.odin](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/helpers.odin)
* [netpbm.odin](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm.odin)
* [netpbm\_os.odin](https://github.com/odin-lang/Odin/tree/master/core/image/netpbm/netpbm_os.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.456928800 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error](#Error)
    + [Format](#Format)
    + [Format\_Error](#Format_Error)
    + [Formats](#Formats)
    + [Header](#Header)
    + [Image](#Image)
    + [Info](#Info)
  * [Constants](#pkg-Constants)
    + [ASCII](#ASCII)
    + [BINARY](#BINARY)
    + [PAM](#PAM)
    + [PBM](#PBM)
    + [PFM](#PFM)
    + [PGM](#PGM)
    + [PNM](#PNM)
    + [PPM](#PPM)
  * [Procedures](#pkg-Procedures)
    + [autoselect\_pbm\_format\_from\_image](#autoselect_pbm_format_from_image)
    + [decode\_image](#decode_image)
    + [destroy](#destroy)
    + [header\_destroy](#header_destroy)
    + [load\_from\_bytes](#load_from_bytes)
    + [load\_from\_file](#load_from_file)
    + [parse\_header](#parse_header)
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