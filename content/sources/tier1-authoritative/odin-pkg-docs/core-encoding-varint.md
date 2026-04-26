package encoding/varint - pkg.odin-lang.org 






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



Current Package: *[encoding\_varint](/core/encoding/varint)*

  

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
3. [varint](/core/encoding/varint)

# package core:encoding/varint [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`LEB128` variable integer encoding and decoding, as used by `DWARF` & `DEX` files.

**Example:**

```
package main

import "core:encoding/varint"
import "core:fmt"

main :: proc() {
	buf: [varint.LEB128_MAX_BYTES]u8

	value := u128(42)

	encode_size, encode_err := varint.encode_uleb128(buf[:], value)
	assert(encode_size == 1 && encode_err == .None)

	fmt.printf("Encoded as %v\n", buf[:encode_size])
	decoded_val, decode_size, decode_err := varint.decode_uleb128(buf[:])

	assert(decoded_val == value && decode_size == encode_size && decode_err == .None)
	fmt.printf("Decoded as %v, using %v byte%v\n", decoded_val, decode_size, "" if decode_size == 1 else "s")
}
```

## Index

Types (1)

* [Error](#Error)

Constants (1)

* [LEB128\_MAX\_BYTES](#LEB128_MAX_BYTES)

Variables (0)

This section is empty.

Procedures (6)

* [decode\_ileb128\_buffer](#decode_ileb128_buffer)
* [decode\_ileb128\_byte](#decode_ileb128_byte)
* [decode\_uleb128\_buffer](#decode_uleb128_buffer)
* [decode\_uleb128\_byte](#decode_uleb128_byte)
* [encode\_ileb128](#encode_ileb128)
* [encode\_uleb128](#encode_uleb128)

Procedure Groups (2)

* [decode\_ileb128](#decode_ileb128)
* [decode\_uleb128](#decode_uleb128)

## Types

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L16)

```
Error :: enum int {
	None             = 0, 
	Buffer_Too_Small = 1, 
	Value_Too_Large  = 2, 
}
```

##### Related Procedures With Returns

* [decode\_ileb128\_buffer](/core/encoding/varint/#decode_ileb128_buffer)
* [decode\_ileb128\_byte](/core/encoding/varint/#decode_ileb128_byte)
* [decode\_uleb128\_buffer](/core/encoding/varint/#decode_uleb128_buffer)
* [decode\_uleb128\_byte](/core/encoding/varint/#decode_uleb128_byte)
* [encode\_ileb128](/core/encoding/varint/#encode_ileb128)
* [encode\_uleb128](/core/encoding/varint/#encode_uleb128)
* [decode\_ileb128](/core/encoding/varint/#decode_ileb128) *(procedure groups)*
* [decode\_uleb128](/core/encoding/varint/#decode_uleb128) *(procedure groups)*

## Constants

### [LEB128\_MAX\_BYTES ¶](#LEB128_MAX_BYTES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L14)

```
LEB128_MAX_BYTES :: 19
```

 

In theory we should use the bigint package. In practice, varints bigger than this indicate a corrupted file.
Instead we'll set limits on the values we'll encode/decode
18 \* 7 bits = 126, which means that a possible 19th byte may at most be `0b0000_0011`.

## Variables

This section is empty.

## Procedures

### [decode\_ileb128\_buffer ¶](#decode_ileb128_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L67)

```
decode_ileb128_buffer :: proc(buf: []u8) -> (val: i128, size: int, err: Error) {…}
```

 

Decode a slice of bytes encoding a signed LEB128 integer into value and number of bytes used.
Returns `size` == 0 for an invalid value, empty slice, or a varint > 18 bytes.




##### Related Procedure Groups

* [decode\_ileb128](/core/encoding/varint/#decode_ileb128)

### [decode\_ileb128\_byte ¶](#decode_ileb128_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L87)

```
decode_ileb128_byte :: proc(input: u8, offset: int, accumulator: i128) -> (val: i128, size: int, err: Error) {…}
```

 

Decode a a signed LEB128 integer into value and number of bytes used, one byte at a time.
Returns `size` == 0 for an invalid value, empty slice, or a varint > 18 bytes.




##### Related Procedure Groups

* [decode\_ileb128](/core/encoding/varint/#decode_ileb128)

### [decode\_uleb128\_buffer ¶](#decode_uleb128_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L24)

```
decode_uleb128_buffer :: proc(buf: []u8) -> (val: u128, size: int, err: Error) {…}
```

 

Decode a slice of bytes encoding an unsigned LEB128 integer into value and number of bytes used.
Returns `size` == 0 for an invalid value, empty slice, or a varint > 18 bytes.




##### Related Procedure Groups

* [decode\_uleb128](/core/encoding/varint/#decode_uleb128)

### [decode\_uleb128\_byte ¶](#decode_uleb128_byte) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L45)

```
decode_uleb128_byte :: proc(input: u8, offset: int, accumulator: u128) -> (val: u128, size: int, err: Error) {…}
```

 

Decodes an unsigned LEB128 integer into value a byte at a time.
Returns `.None` when decoded properly, `.Value_Too_Large` when they value
exceeds the limits of a u128, and `.Buffer_Too_Small` when it's not yet fully decoded.




##### Related Procedure Groups

* [decode\_uleb128](/core/encoding/varint/#decode_uleb128)

### [encode\_ileb128 ¶](#encode_ileb128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L135)

```
encode_ileb128 :: proc(buf: []u8, val: i128) -> (size: int, err: Error) {…}
```

 

Encode `val` into `buf` as a signed LEB128 encoded series of bytes.
`buf` must be appropriately sized.

### [encode\_uleb128 ¶](#encode_uleb128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L110)

```
encode_uleb128 :: proc(buf: []u8, val: u128) -> (size: int, err: Error) {…}
```

 

Encode `val` into `buf` as an unsigned LEB128 encoded series of bytes.
`buf` must be appropriately sized.

## Procedure Groups

### [decode\_ileb128 ¶](#decode_ileb128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L106)

```
decode_ileb128 :: proc{
	decode_ileb128_buffer,
	decode_ileb128_byte,
}
```

### [decode\_uleb128 ¶](#decode_uleb128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin#L63)

```
decode_uleb128 :: proc{
	decode_uleb128_buffer,
	decode_uleb128_byte,
}
```

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/doc.odin)
* [leb128.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/varint/leb128.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.391141900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Error](#Error)
  * [Constants](#pkg-Constants)
    + [LEB128\_MAX\_BYTES](#LEB128_MAX_BYTES)
  * [Procedures](#pkg-Procedures)
    + [decode\_ileb128\_buffer](#decode_ileb128_buffer)
    + [decode\_ileb128\_byte](#decode_ileb128_byte)
    + [decode\_uleb128\_buffer](#decode_uleb128_buffer)
    + [decode\_uleb128\_byte](#decode_uleb128_byte)
    + [encode\_ileb128](#encode_ileb128)
    + [encode\_uleb128](#encode_uleb128)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [decode\_ileb128](#decode_ileb128)
    + [decode\_uleb128](#decode_uleb128)
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