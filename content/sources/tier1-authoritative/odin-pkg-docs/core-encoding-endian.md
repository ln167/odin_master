package encoding/endian - pkg.odin-lang.org 






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



Current Package: *[encoding\_endian](/core/encoding/endian)*

  

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
2. encoding
3. [endian](/core/encoding/endian)

# package core:encoding/endian [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A simple translation between bytes and numbers with specific endian encodings.

**Example:**

```
buf: [100]u8
put_u16(buf[:], .Little, 16) or_return

// You may ask yourself, why isn't `byte_order` platform Endianness by default, so we can write:
put_u16(buf[:], 16) or_return

// The answer is that very few file formats are written in native/platform endianness. Most of them specify the endianness of
// each of their fields, or use a header field which specifies it for the entire file.

// e.g. a file which specifies it at the top for all fields could do this:
file_order := .Little if buf[0] == 0 else .Big
field := get_u16(buf[1:], file_order) or_return

// If on the other hand a field is *always* Big-Endian, you're wise to explicitly state it for the benefit of the reader,
// be that your future self or someone else.

field := get_u16(buf[:], .Big) or_return
```

## Index

Types (1)

* [Byte\_Order](#Byte_Order)

Constants (1)

* [PLATFORM\_BYTE\_ORDER](#PLATFORM_BYTE_ORDER)

Variables (0)

This section is empty.

Procedures (30)

* [get\_f16](#get_f16)
* [get\_f32](#get_f32)
* [get\_f64](#get_f64)
* [get\_i16](#get_i16)
* [get\_i32](#get_i32)
* [get\_i64](#get_i64)
* [get\_u16](#get_u16)
* [get\_u32](#get_u32)
* [get\_u64](#get_u64)
* [put\_f16](#put_f16)
* [put\_f32](#put_f32)
* [put\_f64](#put_f64)
* [put\_i16](#put_i16)
* [put\_i32](#put_i32)
* [put\_i64](#put_i64)
* [put\_u16](#put_u16)
* [put\_u32](#put_u32)
* [put\_u64](#put_u64)
* [unchecked\_get\_u16be](#unchecked_get_u16be)
* [unchecked\_get\_u16le](#unchecked_get_u16le)
* [unchecked\_get\_u32be](#unchecked_get_u32be)
* [unchecked\_get\_u32le](#unchecked_get_u32le)
* [unchecked\_get\_u64be](#unchecked_get_u64be)
* [unchecked\_get\_u64le](#unchecked_get_u64le)
* [unchecked\_put\_u16be](#unchecked_put_u16be)
* [unchecked\_put\_u16le](#unchecked_put_u16le)
* [unchecked\_put\_u32be](#unchecked_put_u32be)
* [unchecked\_put\_u32le](#unchecked_put_u32le)
* [unchecked\_put\_u64be](#unchecked_put_u64be)
* [unchecked\_put\_u64le](#unchecked_put_u64le)

Procedure Groups (0)

This section is empty.

## Types

### [Byte\_Order ¶](#Byte_Order) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L6)

```
Byte_Order :: enum u8 {
	Little, 
	Big, 
}
```

##### Related Procedures With Parameters

* [get\_f16](/core/encoding/endian/#get_f16)
* [get\_f32](/core/encoding/endian/#get_f32)
* [get\_f64](/core/encoding/endian/#get_f64)
* [get\_i16](/core/encoding/endian/#get_i16)
* [get\_i32](/core/encoding/endian/#get_i32)
* [get\_i64](/core/encoding/endian/#get_i64)
* [get\_u16](/core/encoding/endian/#get_u16)
* [get\_u32](/core/encoding/endian/#get_u32)
* [get\_u64](/core/encoding/endian/#get_u64)
* [put\_f16](/core/encoding/endian/#put_f16)
* [put\_f32](/core/encoding/endian/#put_f32)
* [put\_f64](/core/encoding/endian/#put_f64)
* [put\_i16](/core/encoding/endian/#put_i16)
* [put\_i32](/core/encoding/endian/#put_i32)
* [put\_i64](/core/encoding/endian/#put_i64)
* [put\_u16](/core/encoding/endian/#put_u16)
* [put\_u32](/core/encoding/endian/#put_u32)
* [put\_u64](/core/encoding/endian/#put_u64)

##### Related Constants

* [PLATFORM\_BYTE\_ORDER](/core/encoding/endian/#PLATFORM_BYTE_ORDER)

## Constants

### [PLATFORM\_BYTE\_ORDER ¶](#PLATFORM_BYTE_ORDER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L11)

```
PLATFORM_BYTE_ORDER :: Byte_Order.Little when ODIN_ENDIAN == .Little else Byte_Order.Big
```

## Variables

This section is empty.

## Procedures

### [get\_f16 ¶](#get_f16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L79)

```
get_f16 :: proc "contextless" (b: []u8, order: Byte_Order) -> (f16, bool) {…}
```

### [get\_f32 ¶](#get_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L83)

```
get_f32 :: proc "contextless" (b: []u8, order: Byte_Order) -> (f32, bool) {…}
```

### [get\_f64 ¶](#get_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L87)

```
get_f64 :: proc "contextless" (b: []u8, order: Byte_Order) -> (f64, bool) {…}
```

### [get\_i16 ¶](#get_i16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L66)

```
get_i16 :: proc "contextless" (b: []u8, order: Byte_Order) -> (i16, bool) {…}
```

### [get\_i32 ¶](#get_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L70)

```
get_i32 :: proc "contextless" (b: []u8, order: Byte_Order) -> (i32, bool) {…}
```

### [get\_i64 ¶](#get_i64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L74)

```
get_i64 :: proc "contextless" (b: []u8, order: Byte_Order) -> (i64, bool) {…}
```

### [get\_u16 ¶](#get_u16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L32)

```
get_u16 :: proc "contextless" (b: []u8, order: Byte_Order) -> (v: u16, ok: bool) {…}
```

### [get\_u32 ¶](#get_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L43)

```
get_u32 :: proc "contextless" (b: []u8, order: Byte_Order) -> (v: u32, ok: bool) {…}
```

### [get\_u64 ¶](#get_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L54)

```
get_u64 :: proc "contextless" (b: []u8, order: Byte_Order) -> (v: u64, ok: bool) {…}
```

### [put\_f16 ¶](#put_f16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L155)

```
put_f16 :: proc "contextless" (b: []u8, order: Byte_Order, v: f16) -> bool {…}
```

### [put\_f32 ¶](#put_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L158)

```
put_f32 :: proc "contextless" (b: []u8, order: Byte_Order, v: f32) -> bool {…}
```

### [put\_f64 ¶](#put_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L161)

```
put_f64 :: proc "contextless" (b: []u8, order: Byte_Order, v: f64) -> bool {…}
```

### [put\_i16 ¶](#put_i16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L145)

```
put_i16 :: proc "contextless" (b: []u8, order: Byte_Order, v: i16) -> bool {…}
```

### [put\_i32 ¶](#put_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L148)

```
put_i32 :: proc "contextless" (b: []u8, order: Byte_Order, v: i32) -> bool {…}
```

### [put\_i64 ¶](#put_i64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L151)

```
put_i64 :: proc "contextless" (b: []u8, order: Byte_Order, v: i64) -> bool {…}
```

### [put\_u16 ¶](#put_u16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L111)

```
put_u16 :: proc "contextless" (b: []u8, order: Byte_Order, v: u16) -> bool {…}
```

### [put\_u32 ¶](#put_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L122)

```
put_u32 :: proc "contextless" (b: []u8, order: Byte_Order, v: u32) -> bool {…}
```

### [put\_u64 ¶](#put_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L133)

```
put_u64 :: proc "contextless" (b: []u8, order: Byte_Order, v: u64) -> bool {…}
```

### [unchecked\_get\_u16be ¶](#unchecked_get_u16be) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L22)

```
unchecked_get_u16be :: proc "contextless" (b: []u8) -> u16 {…}
```

### [unchecked\_get\_u16le ¶](#unchecked_get_u16le) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L13)

```
unchecked_get_u16le :: proc "contextless" (b: []u8) -> u16 {…}
```

### [unchecked\_get\_u32be ¶](#unchecked_get_u32be) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L25)

```
unchecked_get_u32be :: proc "contextless" (b: []u8) -> u32 {…}
```

### [unchecked\_get\_u32le ¶](#unchecked_get_u32le) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L16)

```
unchecked_get_u32le :: proc "contextless" (b: []u8) -> u32 {…}
```

### [unchecked\_get\_u64be ¶](#unchecked_get_u64be) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L28)

```
unchecked_get_u64be :: proc "contextless" (b: []u8) -> u64 {…}
```

### [unchecked\_get\_u64le ¶](#unchecked_get_u64le) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L19)

```
unchecked_get_u64le :: proc "contextless" (b: []u8) -> u64 {…}
```

### [unchecked\_put\_u16be ¶](#unchecked_put_u16be) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L101)

```
unchecked_put_u16be :: proc "contextless" (b: []u8, v: u16) {…}
```

### [unchecked\_put\_u16le ¶](#unchecked_put_u16le) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L92)

```
unchecked_put_u16le :: proc "contextless" (b: []u8, v: u16) {…}
```

### [unchecked\_put\_u32be ¶](#unchecked_put_u32be) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L104)

```
unchecked_put_u32be :: proc "contextless" (b: []u8, v: u32) {…}
```

### [unchecked\_put\_u32le ¶](#unchecked_put_u32le) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L95)

```
unchecked_put_u32le :: proc "contextless" (b: []u8, v: u32) {…}
```

### [unchecked\_put\_u64be ¶](#unchecked_put_u64be) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L107)

```
unchecked_put_u64be :: proc "contextless" (b: []u8, v: u64) {…}
```

### [unchecked\_put\_u64le ¶](#unchecked_put_u64le) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin#L98)

```
unchecked_put_u64le :: proc "contextless" (b: []u8, v: u64) {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/doc.odin)
* [endian.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/endian/endian.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.341475400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Byte\_Order](#Byte_Order)
  * [Constants](#pkg-Constants)
    + [PLATFORM\_BYTE\_ORDER](#PLATFORM_BYTE_ORDER)
  * [Procedures](#pkg-Procedures)
    + [get\_f16](#get_f16)
    + [get\_f32](#get_f32)
    + [get\_f64](#get_f64)
    + [get\_i16](#get_i16)
    + [get\_i32](#get_i32)
    + [get\_i64](#get_i64)
    + [get\_u16](#get_u16)
    + [get\_u32](#get_u32)
    + [get\_u64](#get_u64)
    + [put\_f16](#put_f16)
    + [put\_f32](#put_f32)
    + [put\_f64](#put_f64)
    + [put\_i16](#put_i16)
    + [put\_i32](#put_i32)
    + [put\_i64](#put_i64)
    + [put\_u16](#put_u16)
    + [put\_u32](#put_u32)
    + [put\_u64](#put_u64)
    + [unchecked\_get\_u16be](#unchecked_get_u16be)
    + [unchecked\_get\_u16le](#unchecked_get_u16le)
    + [unchecked\_get\_u32be](#unchecked_get_u32be)
    + [unchecked\_get\_u32le](#unchecked_get_u32le)
    + [unchecked\_get\_u64be](#unchecked_get_u64be)
    + [unchecked\_get\_u64le](#unchecked_get_u64le)
    + [unchecked\_put\_u16be](#unchecked_put_u16be)
    + [unchecked\_put\_u16le](#unchecked_put_u16le)
    + [unchecked\_put\_u32be](#unchecked_put_u32be)
    + [unchecked\_put\_u32le](#unchecked_put_u32le)
    + [unchecked\_put\_u64be](#unchecked_put_u64be)
    + [unchecked\_put\_u64le](#unchecked_put_u64le)
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