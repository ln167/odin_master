package crypto/sha2 - pkg.odin-lang.org 






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



Current Package: *[sha2](/core/crypto/sha2)*

  

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
2. [crypto](/core/crypto)
3. [sha2](/core/crypto/sha2)

# package core:crypto/sha2 [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`SHA2` hash algorithm family.

See:
<https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.180-4.pdf>
<https://datatracker.ietf.org/doc/html/rfc3874>

## Index

Types (2)

* [Context\_256](#Context_256)
* [Context\_512](#Context_512)

Constants (7)

* [BLOCK\_SIZE\_256](#BLOCK_SIZE_256)
* [BLOCK\_SIZE\_512](#BLOCK_SIZE_512)
* [DIGEST\_SIZE\_224](#DIGEST_SIZE_224)
* [DIGEST\_SIZE\_256](#DIGEST_SIZE_256)
* [DIGEST\_SIZE\_384](#DIGEST_SIZE_384)
* [DIGEST\_SIZE\_512](#DIGEST_SIZE_512)
* [DIGEST\_SIZE\_512\_256](#DIGEST_SIZE_512_256)

Variables (0)

This section is empty.

Procedures (11)

* [clone](#clone)
* [final](#final)
* [init\_224](#init_224)
* [init\_256](#init_256)
* [init\_384](#init_384)
* [init\_512](#init_512)
* [init\_512\_256](#init_512_256)
* [is\_hardware\_accelerated\_256](#is_hardware_accelerated_256)
* [is\_hardware\_accelerated\_512](#is_hardware_accelerated_512)
* [reset](#reset)
* [update](#update)

Procedure Groups (0)

This section is empty.

## Types

### [Context\_256 ¶](#Context_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L40)

```
Context_256 :: struct {
	block:             [64]u8,
	h:                 [8]u32,
	bitlength:         u64,
	length:            u64,
	md_bits:           int,
	is_hw_accelerated: bool,
	is_initialized:    bool,
}
```

 

Context\_256 is a SHA-224 or SHA-256 instance.




##### Related Procedures With Parameters

* [init\_224](/core/crypto/sha2/#init_224)
* [init\_256](/core/crypto/sha2/#init_256)

### [Context\_512 ¶](#Context_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L52)

```
Context_512 :: struct {
	block:             [128]u8,
	h:                 [8]u64,
	bitlength:         u64,
	length:            u64,
	md_bits:           int,
	is_hw_accelerated: bool,
	is_initialized:    bool,
}
```

 

Context\_512 is a SHA-384, SHA-512 or SHA-512/256 instance.




##### Related Procedures With Parameters

* [init\_384](/core/crypto/sha2/#init_384)
* [init\_512](/core/crypto/sha2/#init_512)
* [init\_512\_256](/core/crypto/sha2/#init_512_256)

## Constants

### [BLOCK\_SIZE\_256 ¶](#BLOCK_SIZE_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L34)

```
BLOCK_SIZE_256 :: 64
```

 

BLOCK\_SIZE\_256 is the SHA-224 and SHA-256 block size in bytes.

### [BLOCK\_SIZE\_512 ¶](#BLOCK_SIZE_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L37)

```
BLOCK_SIZE_512 :: 128
```

 

BLOCK\_SIZE\_512 is the SHA-384, SHA-512, and SHA-512/256 block size
in bytes.

### [DIGEST\_SIZE\_224 ¶](#DIGEST_SIZE_224) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L23)

```
DIGEST_SIZE_224 :: 28
```

 

DIGEST\_SIZE\_224 is the SHA-224 digest size in bytes.

### [DIGEST\_SIZE\_256 ¶](#DIGEST_SIZE_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L25)

```
DIGEST_SIZE_256 :: 32
```

 

DIGEST\_SIZE\_256 is the SHA-256 digest size in bytes.

### [DIGEST\_SIZE\_384 ¶](#DIGEST_SIZE_384) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L27)

```
DIGEST_SIZE_384 :: 48
```

 

DIGEST\_SIZE\_384 is the SHA-384 digest size in bytes.

### [DIGEST\_SIZE\_512 ¶](#DIGEST_SIZE_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L29)

```
DIGEST_SIZE_512 :: 64
```

 

DIGEST\_SIZE\_512 is the SHA-512 digest size in bytes.

### [DIGEST\_SIZE\_512\_256 ¶](#DIGEST_SIZE_512_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L31)

```
DIGEST_SIZE_512_256 :: 32
```

 

DIGEST\_SIZE\_512\_256 is the SHA-512/256 digest size in bytes.

## Variables

This section is empty.

## Procedures

### [clone ¶](#clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L261)

```
clone :: proc(ctx, other: ^$T) {…}
```

 

clone clones the Context other into ctx.

### [final ¶](#final) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L205)

```
final :: proc(ctx: ^$T, hash: []u8, finalize_clone: bool = false) {…}
```

 

final finalizes the Context, writes the digest to hash, and calls
reset on the Context.

iff finalize\_clone is set, final will work on a copy of the Context,
which is useful for for calculating rolling digests.

### [init\_224 ¶](#init_224) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L64)

```
init_224 :: proc(ctx: ^Context_256) {…}
```

 

init\_224 initializes a Context\_256 for SHA-224.

### [init\_256 ¶](#init_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L70)

```
init_256 :: proc(ctx: ^Context_256) {…}
```

 

init\_256 initializes a Context\_256 for SHA-256.

### [init\_384 ¶](#init_384) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L76)

```
init_384 :: proc(ctx: ^Context_512) {…}
```

 

init\_384 initializes a Context\_512 for SHA-384.

### [init\_512 ¶](#init_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L82)

```
init_512 :: proc(ctx: ^Context_512) {…}
```

 

init\_512 initializes a Context\_512 for SHA-512.

### [init\_512\_256 ¶](#init_512_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L88)

```
init_512_256 :: proc(ctx: ^Context_512) {…}
```

 

init\_512\_256 initializes a Context\_512 for SHA-512/256.

### [is\_hardware\_accelerated\_256 ¶](#is_hardware_accelerated_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha256_impl_hw_intel.odin#L54)

```
is_hardware_accelerated_256 :: proc "contextless" () -> bool {…}
```

 

is\_hardware\_accelerated\_256 returns true iff hardware accelerated
SHA-224/SHA-256 is supported.

### [is\_hardware\_accelerated\_512 ¶](#is_hardware_accelerated_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha512_impl_hw_gen.odin#L6)

```
is_hardware_accelerated_512 :: proc "contextless" () -> bool {…}
```

 

is\_hardware\_accelerated\_512 returns true iff hardware
accelerated SHA-384, SHA-512, and SHA-512/256 are supported.

### [reset ¶](#reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L267)

```
reset :: proc(ctx: ^$T) {…}
```

 

reset sanitizes the Context. The Context must be re-initialized to
be used again.

### [update ¶](#update) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin#L169)

```
update :: proc(ctx: ^$T, data: []u8) {…}
```

 

update adds more data to the Context.

## Procedure Groups

This section is empty.

## Source Files

* [sha2.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha2.odin)
* [sha256\_impl\_hw\_intel.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha256_impl_hw_intel.odin)
* [sha512\_impl\_hw\_gen.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/sha2/sha512_impl_hw_gen.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.261302600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context\_256](#Context_256)
    + [Context\_512](#Context_512)
  * [Constants](#pkg-Constants)
    + [BLOCK\_SIZE\_256](#BLOCK_SIZE_256)
    + [BLOCK\_SIZE\_512](#BLOCK_SIZE_512)
    + [DIGEST\_SIZE\_224](#DIGEST_SIZE_224)
    + [DIGEST\_SIZE\_256](#DIGEST_SIZE_256)
    + [DIGEST\_SIZE\_384](#DIGEST_SIZE_384)
    + [DIGEST\_SIZE\_512](#DIGEST_SIZE_512)
    + [DIGEST\_SIZE\_512\_256](#DIGEST_SIZE_512_256)
  * [Procedures](#pkg-Procedures)
    + [clone](#clone)
    + [final](#final)
    + [init\_224](#init_224)
    + [init\_256](#init_256)
    + [init\_384](#init_384)
    + [init\_512](#init_512)
    + [init\_512\_256](#init_512_256)
    + [is\_hardware\_accelerated\_256](#is_hardware_accelerated_256)
    + [is\_hardware\_accelerated\_512](#is_hardware_accelerated_512)
    + [reset](#reset)
    + [update](#update)
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