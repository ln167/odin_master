package encoding/base64 - pkg.odin-lang.org 






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



Current Package: *[encoding\_base64](/core/encoding/base64)*

  

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
3. [base64](/core/encoding/base64)

# package core:encoding/base64 [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`Base64` encoding and decoding.

A secondary param can be used to supply a custom alphabet to `encode` and a matching decoding table to `decode`.

If none is supplied it just uses the standard Base64 alphabet.
In case your specific version does not use padding, you may
truncate it from the encoded output.

## Index

Types (0)

This section is empty.

Constants (1)

* [PADDING](#PADDING)

Variables (4)

* [DEC\_TABLE](#DEC_TABLE)
* [DEC\_URL\_TABLE](#DEC_URL_TABLE)
* [ENC\_TABLE](#ENC_TABLE)
* [ENC\_URL\_TABLE](#ENC_URL_TABLE)

Procedures (6)

* [decode](#decode)
* [decode\_into](#decode_into)
* [decoded\_len](#decoded_len)
* [encode](#encode)
* [encode\_into](#encode_into)
* [encoded\_len](#encoded_len)

Procedure Groups (0)

This section is empty.

## Types

This section is empty.

## Constants

### [PADDING ¶](#PADDING) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L39)

```
PADDING :: '='
```

## Variables

### [DEC\_TABLE ¶](#DEC_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L41)

```
DEC_TABLE: [256]u8 = …
```

### [DEC\_URL\_TABLE ¶](#DEC_URL_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L77)

```
DEC_URL_TABLE: [256]u8 = …
```

 

Decoding table for Base64url variant

### [ENC\_TABLE ¶](#ENC_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L16)

```
ENC_TABLE: [64]u8 = …
```

### [ENC\_URL\_TABLE ¶](#ENC_URL_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L28)

```
ENC_URL_TABLE: [64]u8 = …
```

 

Encoding table for Base64url variant

## Procedures

### [decode ¶](#decode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L164)

```
decode :: proc(data: string, DEC_TBL: [256]u8 = DEC_TABLE, allocator := context.allocator) -> (decoded: []u8, err: runtime.Allocator_Error) #optional_ok {…}
```

### [decode\_into ¶](#decode_into) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L176)

```
decode_into :: proc(w: io.Stream, data: string, DEC_TBL: [256]u8 = DEC_TABLE) -> io.Error {…}
```

### [decoded\_len ¶](#decoded_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L225)

```
decoded_len :: proc(data: string) -> int {…}
```

### [encode ¶](#encode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L113)

```
encode :: proc(data: []u8, ENC_TBL: [64]u8 = ENC_TABLE, allocator := context.allocator) -> (encoded: string, err: runtime.Allocator_Error) #optional_ok {…}
```

### [encode\_into ¶](#encode_into) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L128)

```
encode_into :: proc(w: io.Stream, data: []u8, ENC_TBL: [64]u8 = ENC_TABLE) -> io.Error {…}
```

### [encoded\_len ¶](#encoded_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin#L155)

```
encoded_len :: proc(data: []u8) -> int {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [base64.odin](https://github.com/odin-lang/Odin/tree/master/core/encoding/base64/base64.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.317056000 +0000 UTC`

* [Overview](#pkg-overview)* [Constants](#pkg-Constants)
    + [PADDING](#PADDING)
  * [Variables](#pkg-Variables)
    + [DEC\_TABLE](#DEC_TABLE)
    + [DEC\_URL\_TABLE](#DEC_URL_TABLE)
    + [ENC\_TABLE](#ENC_TABLE)
    + [ENC\_URL\_TABLE](#ENC_URL_TABLE)
  * [Procedures](#pkg-Procedures)
    + [decode](#decode)
    + [decode\_into](#decode_into)
    + [decoded\_len](#decoded_len)
    + [encode](#encode)
    + [encode\_into](#encode_into)
    + [encoded\_len](#encoded_len)
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