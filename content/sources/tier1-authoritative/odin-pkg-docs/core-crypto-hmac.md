package crypto/hmac - pkg.odin-lang.org 






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



Current Package: *[hmac](/core/crypto/hmac)*

  

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
3. [hmac](/core/crypto/hmac)

# package core:crypto/hmac [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`HMAC` message authentication code (`MAC`) algorithm.

See:
<https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.198-1.pdf>

## Index

Types (1)

* [Context](#Context)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (9)

* [algorithm](#algorithm)
* [clone](#clone)
* [final](#final)
* [init](#init)
* [reset](#reset)
* [sum](#sum)
* [tag\_size](#tag_size)
* [update](#update)
* [verify](#verify)

Procedure Groups (0)

This section is empty.

## Types

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L37)

```
Context :: struct {
	_o_hash:         crypto_hash.Context,
	// H(k ^ ipad) (not finalized)
	_i_hash:         crypto_hash.Context,
	// H(k ^ opad) (not finalized)
	_tag_sz:         int,
	_is_initialized: bool,
}
```

 

Context is a concrete instantiation of HMAC with a specific hash
algorithm.




##### Related Procedures With Parameters

* [algorithm](/core/crypto/hmac/#algorithm)
* [clone](/core/crypto/hmac/#clone)
* [final](/core/crypto/hmac/#final)
* [init](/core/crypto/hmac/#init)
* [reset](/core/crypto/hmac/#reset)
* [tag\_size](/core/crypto/hmac/#tag_size)
* [update](/core/crypto/hmac/#update)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [algorithm ¶](#algorithm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L103)

```
algorithm :: proc(ctx: ^Context) -> crypto_hash.Algorithm {…}
```

 

algorithm returns the Algorithm used by a Context instance.

### [clone ¶](#clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L78)

```
clone :: proc(ctx, other: ^Context) {…}
```

 

clone clones the Context other into ctx.

### [final ¶](#final) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L65)

```
final :: proc(ctx: ^Context, dst: []u8) {…}
```

 

final finalizes the Context, writes the tag to dst, and calls
reset on the Context.

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L45)

```
init :: proc(ctx: ^Context, algorithm: crypto_hash.Algorithm, key: []u8) {…}
```

 

init initializes a Context with a specific hash Algorithm and key.

### [reset ¶](#reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L91)

```
reset :: proc(ctx: ^Context) {…}
```

 

reset sanitizes the Context. The Context must be re-initialized to
be used again.

### [sum ¶](#sum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L15)

```
sum :: proc(algorithm: crypto_hash.Algorithm, dst, msg, key: []u8) {…}
```

 

sum will compute the HMAC with the specified algorithm and key
over msg, and write the computed tag to dst. It requires that
the dst buffer is the tag size.

### [tag\_size ¶](#tag_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L110)

```
tag_size :: proc(ctx: ^Context) -> int {…}
```

 

tag\_size returns the tag size of a Context instance in bytes.

### [update ¶](#update) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L57)

```
update :: proc(ctx: ^Context, data: []u8) {…}
```

 

update adds more data to the Context.

### [verify ¶](#verify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin#L26)

```
verify :: proc(algorithm: crypto_hash.Algorithm, tag, msg, key: []u8) -> bool {…}
```

 

verify will verify the HMAC tag computed with the specified algorithm
and key over msg and return true iff the tag is valid. It requires
that the tag is correctly sized.

## Procedure Groups

This section is empty.

## Source Files

* [hmac.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/hmac/hmac.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.218079400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context](#Context)
  * [Procedures](#pkg-Procedures)
    + [algorithm](#algorithm)
    + [clone](#clone)
    + [final](#final)
    + [init](#init)
    + [reset](#reset)
    + [sum](#sum)
    + [tag\_size](#tag_size)
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