package crypto/kmac - pkg.odin-lang.org 






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



Current Package: *[kmac](/core/crypto/kmac)*

  

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
3. [kmac](/core/crypto/kmac)

# package core:crypto/kmac [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`KMAC` message authentication code (`MAC`) algorithm.

See:
<https://nvlpubs.nist.gov/nistpubs/specialpublications/nist.sp.800-185.pdf>

## Index

Types (1)

* [Context](#Context)

Constants (3)

* [MIN\_KEY\_SIZE\_128](#MIN_KEY_SIZE_128)
* [MIN\_KEY\_SIZE\_256](#MIN_KEY_SIZE_256)
* [MIN\_TAG\_SIZE](#MIN_TAG_SIZE)

Variables (0)

This section is empty.

Procedures (8)

* [clone](#clone)
* [final](#final)
* [init\_128](#init_128)
* [init\_256](#init_256)
* [reset](#reset)
* [sum](#sum)
* [update](#update)
* [verify](#verify)

Procedure Groups (0)

This section is empty.

## Types

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L47)

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

 

Context is a KMAC instance.




##### Related Procedures With Parameters

* [clone](/core/crypto/kmac/#clone)
* [final](/core/crypto/kmac/#final)
* [init\_128](/core/crypto/kmac/#init_128)
* [init\_256](/core/crypto/kmac/#init_256)
* [reset](/core/crypto/kmac/#reset)
* [update](/core/crypto/kmac/#update)

## Constants

### [MIN\_KEY\_SIZE\_128 ¶](#MIN_KEY_SIZE_128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L14)

```
MIN_KEY_SIZE_128 :: 128 / 8
```

 

MIN\_KEY\_SIZE\_128 is the minimum key size for KMAC128 in bytes.

### [MIN\_KEY\_SIZE\_256 ¶](#MIN_KEY_SIZE_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L16)

```
MIN_KEY_SIZE_256 :: 256 / 8
```

 

MIN\_KEY\_SIZE\_256 is the minimum key size for KMAC256 in bytes.

### [MIN\_TAG\_SIZE ¶](#MIN_TAG_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L21)

```
MIN_TAG_SIZE :: 32 / 8
```

 

MIN\_TAG\_SIZE is the absolute minimum tag size for KMAC in bytes (8.4.2).
Most callers SHOULD use at least 128-bits if not 256-bits for the tag
size.

## Variables

This section is empty.

## Procedures

### [clone ¶](#clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L78)

```
clone :: proc(ctx, other: ^Context) {…}
```

 

clone clones the Context other into ctx.

### [final ¶](#final) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L69)

```
final :: proc(ctx: ^Context, dst: []u8) {…}
```

 

final finalizes the Context, writes the tag to dst, and calls reset
on the Context. This routine will panic if the dst length is less than
MIN\_TAG\_SIZE.

### [init\_128 ¶](#init_128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L51)

```
init_128 :: proc(ctx: ^Context, key, domain_sep: []u8) {…}
```

 

init\_128 initializes a Context for KMAC28. This routine will panic if
the key length is less than MIN\_KEY\_SIZE\_128.

### [init\_256 ¶](#init_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L57)

```
init_256 :: proc(ctx: ^Context, key, domain_sep: []u8) {…}
```

 

init\_256 initializes a Context for KMAC256. This routine will panic if
the key length is less than MIN\_KEY\_SIZE\_256.

### [reset ¶](#reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L88)

```
reset :: proc(ctx: ^Context) {…}
```

 

reset sanitizes the Context. The Context must be re-initialized to
be used again.

### [sum ¶](#sum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L26)

```
sum :: proc(sec_strength: int, dst, msg, key, domain_sep: []u8) {…}
```

 

sum will compute the KMAC with the specified security strength,
key, and domain separator over msg, and write the computed digest to
dst.

### [update ¶](#update) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L62)

```
update :: proc(ctx: ^Context, data: []u8) {…}
```

 

update adds more data to the Context.

### [verify ¶](#verify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin#L37)

```
verify :: proc(
	sec_strength:              int, 
	tag, msg, key, domain_sep: []u8, 
	allocator := context.temp_allocator, 
) -> bool {…}
```

 

verify will verify the KMAC tag computed with the specified security
strength, key and domain separator over msg and return true iff the
tag is valid.

## Procedure Groups

This section is empty.

## Source Files

* [kmac.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/kmac/kmac.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.223528100 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context](#Context)
  * [Constants](#pkg-Constants)
    + [MIN\_KEY\_SIZE\_128](#MIN_KEY_SIZE_128)
    + [MIN\_KEY\_SIZE\_256](#MIN_KEY_SIZE_256)
    + [MIN\_TAG\_SIZE](#MIN_TAG_SIZE)
  * [Procedures](#pkg-Procedures)
    + [clone](#clone)
    + [final](#final)
    + [init\_128](#init_128)
    + [init\_256](#init_256)
    + [reset](#reset)
    + [sum](#sum)
    + [update](#update)
    + [verify](#verify)
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