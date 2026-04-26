package crypto/legacy/keccak - pkg.odin-lang.org 






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



Current Package: *[keccak](/core/crypto/legacy/keccak)*

  

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
3. legacy
4. [keccak](/core/crypto/legacy/keccak)

# package core:crypto/legacy/keccak [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`Keccak` hash algorithm family.

During the SHA-3 standardization process, the padding scheme was changed
thus Keccac and SHA-3 produce different outputs. Most users should use
SHA-3 and/or SHAKE instead, however the legacy algorithm is provided for
backward compatibility purposes.

## Index

Types (1)

* [Context](#Context)

Constants (8)

* [BLOCK\_SIZE\_224](#BLOCK_SIZE_224)
* [BLOCK\_SIZE\_256](#BLOCK_SIZE_256)
* [BLOCK\_SIZE\_384](#BLOCK_SIZE_384)
* [BLOCK\_SIZE\_512](#BLOCK_SIZE_512)
* [DIGEST\_SIZE\_224](#DIGEST_SIZE_224)
* [DIGEST\_SIZE\_256](#DIGEST_SIZE_256)
* [DIGEST\_SIZE\_384](#DIGEST_SIZE_384)
* [DIGEST\_SIZE\_512](#DIGEST_SIZE_512)

Variables (0)

This section is empty.

Procedures (8)

* [clone](#clone)
* [final](#final)
* [init\_224](#init_224)
* [init\_256](#init_256)
* [init\_384](#init_384)
* [init\_512](#init_512)
* [reset](#reset)
* [update](#update)

Procedure Groups (0)

This section is empty.

## Types

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L40)

```
Context :: struct {
	st:             struct #raw_union {
		b: [200]u8,
		q: [25]u64,
	},
	pt:             int,
	rsiz:           int,
	mdlen:          int,
	dsbyte:         u8,
	is_initialized: bool,
	is_finalized:   bool,
}
```

 

Context is a Keccak instance.




##### Related Procedures With Parameters

* [clone](/core/crypto/legacy/keccak/#clone)
* [final](/core/crypto/legacy/keccak/#final)
* [init\_224](/core/crypto/legacy/keccak/#init_224)
* [init\_256](/core/crypto/legacy/keccak/#init_256)
* [init\_384](/core/crypto/legacy/keccak/#init_384)
* [init\_512](/core/crypto/legacy/keccak/#init_512)
* [reset](/core/crypto/legacy/keccak/#reset)
* [update](/core/crypto/legacy/keccak/#update)

## Constants

### [BLOCK\_SIZE\_224 ¶](#BLOCK_SIZE_224) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L31)

```
BLOCK_SIZE_224 :: _sha3.RATE_224
```

 

BLOCK\_SIZE\_224 is the Keccak-224 block size in bytes.

### [BLOCK\_SIZE\_256 ¶](#BLOCK_SIZE_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L33)

```
BLOCK_SIZE_256 :: _sha3.RATE_256
```

 

BLOCK\_SIZE\_256 is the Keccak-256 block size in bytes.

### [BLOCK\_SIZE\_384 ¶](#BLOCK_SIZE_384) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L35)

```
BLOCK_SIZE_384 :: _sha3.RATE_384
```

 

BLOCK\_SIZE\_384 is the Keccak-384 block size in bytes.

### [BLOCK\_SIZE\_512 ¶](#BLOCK_SIZE_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L37)

```
BLOCK_SIZE_512 :: _sha3.RATE_512
```

 

BLOCK\_SIZE\_512 is the Keccak-512 block size in bytes.

### [DIGEST\_SIZE\_224 ¶](#DIGEST_SIZE_224) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L22)

```
DIGEST_SIZE_224 :: 28
```

 

DIGEST\_SIZE\_224 is the Keccak-224 digest size.

### [DIGEST\_SIZE\_256 ¶](#DIGEST_SIZE_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L24)

```
DIGEST_SIZE_256 :: 32
```

 

DIGEST\_SIZE\_256 is the Keccak-256 digest size.

### [DIGEST\_SIZE\_384 ¶](#DIGEST_SIZE_384) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L26)

```
DIGEST_SIZE_384 :: 48
```

 

DIGEST\_SIZE\_384 is the Keccak-384 digest size.

### [DIGEST\_SIZE\_512 ¶](#DIGEST_SIZE_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L28)

```
DIGEST_SIZE_512 :: 64
```

 

DIGEST\_SIZE\_512 is the Keccak-512 digest size.

## Variables

This section is empty.

## Procedures

### [clone ¶](#clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L87)

```
clone :: proc "contextless" (ctx, other: ^Context) {…}
```

 

clone clones the Context other into ctx.

### [final ¶](#final) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L82)

```
final :: proc "contextless" (ctx: ^Context, hash: []u8, finalize_clone: bool = false) {…}
```

 

final finalizes the Context, writes the digest to hash, and calls
reset on the Context.

iff finalize\_clone is set, final will work on a copy of the Context,
which is useful for for calculating rolling digests.

### [init\_224 ¶](#init_224) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L43)

```
init_224 :: proc "contextless" (ctx: ^Context) {…}
```

 

init\_224 initializes a Context for Keccak-224.

### [init\_256 ¶](#init_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L49)

```
init_256 :: proc "contextless" (ctx: ^Context) {…}
```

 

init\_256 initializes a Context for Keccak-256.

### [init\_384 ¶](#init_384) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L55)

```
init_384 :: proc "contextless" (ctx: ^Context) {…}
```

 

init\_384 initializes a Context for Keccak-384.

### [init\_512 ¶](#init_512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L61)

```
init_512 :: proc "contextless" (ctx: ^Context) {…}
```

 

init\_512 initializes a Context for Keccak-512.

### [reset ¶](#reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L93)

```
reset :: proc "contextless" (ctx: ^Context) {…}
```

 

reset sanitizes the Context. The Context must be re-initialized to
be used again.

### [update ¶](#update) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin#L73)

```
update :: proc "contextless" (ctx: ^Context, data: []u8) {…}
```

 

update adds more data to the Context.

## Procedure Groups

This section is empty.

## Source Files

* [keccak.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/legacy/keccak/keccak.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.228904300 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context](#Context)
  * [Constants](#pkg-Constants)
    + [BLOCK\_SIZE\_224](#BLOCK_SIZE_224)
    + [BLOCK\_SIZE\_256](#BLOCK_SIZE_256)
    + [BLOCK\_SIZE\_384](#BLOCK_SIZE_384)
    + [BLOCK\_SIZE\_512](#BLOCK_SIZE_512)
    + [DIGEST\_SIZE\_224](#DIGEST_SIZE_224)
    + [DIGEST\_SIZE\_256](#DIGEST_SIZE_256)
    + [DIGEST\_SIZE\_384](#DIGEST_SIZE_384)
    + [DIGEST\_SIZE\_512](#DIGEST_SIZE_512)
  * [Procedures](#pkg-Procedures)
    + [clone](#clone)
    + [final](#final)
    + [init\_224](#init_224)
    + [init\_256](#init_256)
    + [init\_384](#init_384)
    + [init\_512](#init_512)
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