package crypto/deoxysii - pkg.odin-lang.org 






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



Current Package: *[deoxysii](/core/crypto/deoxysii)*

  

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
3. [deoxysii](/core/crypto/deoxysii)

# package core:crypto/deoxysii [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`Deoxys-II-256` Authenticated Encryption with Additional Data (`AEAD`) algorithm.

<https://sites.google.com/view/deoxyscipher>
<https://thomaspeyrin.github.io/web/assets/docs/papers/Jean-etal-JoC2021.pdf>

## Index

Types (1)

* [Context](#Context)

Constants (3)

* [IV\_SIZE](#IV_SIZE)
* [KEY\_SIZE](#KEY_SIZE)
* [TAG\_SIZE](#TAG_SIZE)

Variables (0)

This section is empty.

Procedures (5)

* [init](#init)
* [is\_hardware\_accelerated](#is_hardware_accelerated)
* [open](#open)
* [reset](#reset)
* [seal](#seal)

Procedure Groups (0)

This section is empty.

## Types

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L70)

```
Context :: struct {
	_subkeys:        [17][16]u8,
	_impl:           aes.Implementation,
	_is_initialized: bool,
}
```

 

Context is a keyed Deoxys-II-256 instance.




##### Related Procedures With Parameters

* [init](/core/crypto/deoxysii/#init)
* [open](/core/crypto/deoxysii/#open)
* [reset](/core/crypto/deoxysii/#reset)
* [seal](/core/crypto/deoxysii/#seal)

## Constants

### [IV\_SIZE ¶](#IV_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L18)

```
IV_SIZE :: 15
```

 

IV\_SIZE iss the Deoxys-II-256 IV size in bytes.

### [KEY\_SIZE ¶](#KEY_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L16)

```
KEY_SIZE :: 32
```

 

KEY\_SIZE is the Deoxys-II-256 key size in bytes.

### [TAG\_SIZE ¶](#TAG_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L20)

```
TAG_SIZE :: 16
```

 

TAG\_SIZE is the Deoxys-II-256 tag size in bytes.

## Variables

This section is empty.

## Procedures

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L91)

```
init :: proc(ctx: ^Context, key: []u8, impl: aes.Implementation = aes.DEFAULT_IMPLEMENTATION) {…}
```

 

init initializes a Context with the provided key.

### [is\_hardware\_accelerated ¶](#is_hardware_accelerated) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii_impl_hw.odin#L47)

```
is_hardware_accelerated :: proc "contextless" () -> bool {…}
```

 

is\_hardware\_accelerated returns true iff hardware accelerated Deoxys-II
is supported.

### [open ¶](#open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L130)

```
open :: proc(
	ctx:                      ^Context, 
	dst, iv, aad, ciphertext, 
	tag:                      []u8, 
) -> bool {…}
```

 

open authenticates the aad and ciphertext, and decrypts the ciphertext,
with the provided Context, iv, and tag, and stores the output in dst,
returning true iff the authentication was successful. If authentication
fails, the destination buffer will be zeroed.

dst and plaintext MUST alias exactly or not at all.

### [reset ¶](#reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L153)

```
reset :: proc "contextless" (ctx: ^Context) {…}
```

 

reset sanitizes the Context. The Context must be
re-initialized to be used again.

### [seal ¶](#seal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin#L108)

```
seal :: proc(
	ctx:               ^Context, 
	dst, tag, iv, aad, 
	plaintext:         []u8, 
) {…}
```

 

seal encrypts the plaintext and authenticates the aad and ciphertext,
with the provided Context and iv, stores the output in dst and tag.

dst and plaintext MUST alias exactly or not at all.

## Procedure Groups

This section is empty.

## Source Files

* [deoxysii.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii.odin)
* [deoxysii\_impl\_ct64.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii_impl_ct64.odin)
* [deoxysii\_impl\_hw.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/deoxysii/deoxysii_impl_hw.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.184672400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context](#Context)
  * [Constants](#pkg-Constants)
    + [IV\_SIZE](#IV_SIZE)
    + [KEY\_SIZE](#KEY_SIZE)
    + [TAG\_SIZE](#TAG_SIZE)
  * [Procedures](#pkg-Procedures)
    + [init](#init)
    + [is\_hardware\_accelerated](#is_hardware_accelerated)
    + [open](#open)
    + [reset](#reset)
    + [seal](#seal)
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