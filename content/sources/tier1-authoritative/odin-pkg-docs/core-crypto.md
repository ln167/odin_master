package crypto - pkg.odin-lang.org 






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



Current Package: *[crypto](/core/crypto)*

  

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

# package core:crypto [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A selection of cryptography algorithms and useful helper routines.

## Index

Types (0)

This section is empty.

Constants (2)

* [COMPACT\_IMPLS](#COMPACT_IMPLS)
* [HAS\_RAND\_BYTES](#HAS_RAND_BYTES)

Variables (0)

This section is empty.

Procedures (7)

* [compare\_byte\_ptrs\_constant\_time](#compare_byte_ptrs_constant_time)
* [compare\_constant\_time](#compare_constant_time)
* [is\_zero\_constant\_time](#is_zero_constant_time)
* [rand\_bytes](#rand_bytes)
* [random\_generator](#random_generator)
* [set](#set)
* [zero\_explicit](#zero_explicit)

Procedure Groups (0)

This section is empty.

`#config` values (1)

* [COMPACT\_IMPLS](#COMPACT_IMPLS)

## Types

This section is empty.

## Constants

### [COMPACT\_IMPLS ¶](#COMPACT_IMPLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L9)

```
COMPACT_IMPLS: bool : #config(ODIN_CRYPTO_COMPACT, false)
```

 

Omit large precomputed tables, trading off performance for size.

### [HAS\_RAND\_BYTES ¶](#HAS_RAND_BYTES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L13)

```
HAS_RAND_BYTES :: runtime.HAS_RAND_BYTES
```

 

HAS\_RAND\_BYTES is true iff the runtime provides a cryptographic
entropy source.

## Variables

This section is empty.

## Procedures

### [compare\_byte\_ptrs\_constant\_time ¶](#compare_byte_ptrs_constant_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L40)

```
compare_byte_ptrs_constant_time :: proc "contextless" (a, b: ^u8, n: int) -> int {…}
```

 

compare\_byte\_ptrs\_constant\_time returns 1 iff the bytes pointed to by
a and b are equal, 0 otherwise.

The execution time of this routine is constant regardless of the
contents of the memory being compared.

### [compare\_constant\_time ¶](#compare_constant_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L20)

```
compare_constant_time :: proc "contextless" (a, b: []u8) -> int {…}
```

 

compare\_constant\_time returns 1 iff a and b are equal, 0 otherwise.

The execution time of this routine is constant regardless of the contents
of the slices being compared, as long as the length of the slices is equal.
If the length of the two slices is different, it will early-return 0.

### [is\_zero\_constant\_time ¶](#is_zero_constant_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L55)

```
is_zero_constant_time :: proc "contextless" (b: []u8) -> int {…}
```

 

is\_zero\_constant\_time returns 1 iff b is all 0s, 0 otherwise.

### [rand\_bytes ¶](#rand_bytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L106)

```
rand_bytes :: proc(dst: []u8) {…}
```

 

rand\_bytes fills the dst buffer with cryptographic entropy taken from
the system entropy source. This routine will block if the system entropy
source is not ready yet. All system entropy source failures are treated
as catastrophic, resulting in a panic.

Support for the system entropy source can be checked with the
`HAS_RAND_BYTES` boolean constant.

### [random\_generator ¶](#random_generator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L118)

```
random_generator :: proc() -> runtime.Random_Generator {…}
```

 

random\_generator returns a `runtime.Random_Generator` backed by the
system entropy source.

Support for the system entropy source can be checked with the
`HAS_RAND_BYTES` boolean constant.

### [set ¶](#set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L95)

```
set :: proc "contextless" (data: rawptr, value: u8, len: int) -> rawptr {…}
```

 

Set each byte of a memory range to a specific value.

This procedure copies value specified by the `value` parameter into each of the
`len` bytes of a memory range, located at address `data`.

This procedure returns the pointer to `data`.

### [zero\_explicit ¶](#zero_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L77)

```
zero_explicit :: proc "contextless" (data: rawptr, len: int) -> rawptr {…}
```

 

Set each byte of a memory range to zero.

This procedure copies the value `0` into the `len` bytes of a memory range,
starting at address `data`.

This procedure returns the pointer to `data`.

Unlike the `zero()` procedure, which can be optimized away or reordered by the
compiler under certain circumstances, `zero_explicit()` procedure can not be
optimized away or reordered with other memory access operations, and the
compiler assumes volatile semantics of the memory.

## Procedure Groups

This section is empty.

## `#config` values

### [COMPACT\_IMPLS ¶](#COMPACT_IMPLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin#L9)

```
COMPACT_IMPLS: bool : #config(ODIN_CRYPTO_COMPACT, false)
```

 

Omit large precomputed tables, trading off performance for size.

## Source Files

* [crypto.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/crypto.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.133951800 +0000 UTC`

* [Overview](#pkg-overview)* [Constants](#pkg-Constants)
    + [COMPACT\_IMPLS](#COMPACT_IMPLS)
    + [HAS\_RAND\_BYTES](#HAS_RAND_BYTES)
  * [Procedures](#pkg-Procedures)
    + [compare\_byte\_ptrs\_constant\_time](#compare_byte_ptrs_constant_time)
    + [compare\_constant\_time](#compare_constant_time)
    + [is\_zero\_constant\_time](#is_zero_constant_time)
    + [rand\_bytes](#rand_bytes)
    + [random\_generator](#random_generator)
    + [set](#set)
    + [zero\_explicit](#zero_explicit)
  * [`#config` values](#pkg-`#config` values)
    + [COMPACT\_IMPLS](#COMPACT_IMPLS)
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