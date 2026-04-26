package crypto/argon2id - pkg.odin-lang.org 






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



Current Package: *[argon2id](/core/crypto/argon2id)*

  

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
3. [argon2id](/core/crypto/argon2id)

# package core:crypto/argon2id [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

package argon2id implements the Argon2id password hashing algorithm.

See: <https://datatracker.ietf.org/doc/rfc9106/>

## Index

Types (1)

* [Parameters](#Parameters)

Constants (7)

* [MAX\_INPUT\_SIZE](#MAX_INPUT_SIZE)
* [MAX\_PARALLELISM](#MAX_PARALLELISM)
* [MAX\_TAG\_SIZE](#MAX_TAG_SIZE)
* [MIN\_PARALLELISM](#MIN_PARALLELISM)
* [MIN\_TAG\_SIZE](#MIN_TAG_SIZE)
* [RECOMMENDED\_SALT\_SIZE](#RECOMMENDED_SALT_SIZE)
* [RECOMMENTED\_TAG\_SIZE](#RECOMMENTED_TAG_SIZE)

Variables (4)

* [PARAMS\_OWASP](#PARAMS_OWASP)
* [PARAMS\_OWASP\_SMALL](#PARAMS_OWASP_SMALL)
* [PARAMS\_RFC9106](#PARAMS_RFC9106)
* [PARAMS\_RFC9106\_SMALL](#PARAMS_RFC9106_SMALL)

Procedures (1)

* [derive](#derive)

Procedure Groups (0)

This section is empty.

## Types

### [Parameters ¶](#Parameters) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L86)

```
Parameters :: struct {
	memory_size: u32,
	// m (KiB)
	passes:      u32,
	// t
	parallelism: u32,
}
```

 

Parameters is an Argon2id parameter set.




##### Related Procedures With Parameters

* [derive](/core/crypto/argon2id/#derive)

## Constants

### [MAX\_INPUT\_SIZE ¶](#MAX_INPUT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L18)

```
MAX_INPUT_SIZE :: (1 << 32) - 1
```

 

MAX\_INPUT\_SIZE is the mamximum size of the various inputs (password,
salt, secret, ad) in bytes.

### [MAX\_PARALLELISM ¶](#MAX_PARALLELISM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L23)

```
MAX_PARALLELISM :: (1 << 24) - 1
```

 

MAX\_PARALLELISM is the maximum allowed parallelism.

### [MAX\_TAG\_SIZE ¶](#MAX_TAG_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L28)

```
MAX_TAG_SIZE :: (1 << 32) - 1
```

 

MAX\_TAG\_SIZE is the maximum digest size in bytes.

### [MIN\_PARALLELISM ¶](#MIN_PARALLELISM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L21)

```
MIN_PARALLELISM :: 1
```

 

MIN\_PARALLELISM is the minimum allowed parallelism.

### [MIN\_TAG\_SIZE ¶](#MIN_TAG_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L26)

```
MIN_TAG_SIZE :: 4
```

 

MIN\_TAG\_SIZE is the minimum digest size in bytes.

### [RECOMMENDED\_SALT\_SIZE ¶](#RECOMMENDED_SALT_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L33)

```
RECOMMENDED_SALT_SIZE :: 16
```

 

RECOMMENDNED\_SALT\_SIZE is the recommended salt size in bytes.

### [RECOMMENTED\_TAG\_SIZE ¶](#RECOMMENTED_TAG_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L31)

```
RECOMMENTED_TAG_SIZE :: 32
```

 

RECOMMENDED\_TAG\_SIZE is the recommended tag size in bytes.

## Variables

### [PARAMS\_OWASP ¶](#PARAMS_OWASP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L70)

```
@(rodata)
PARAMS_OWASP: Parameters = …
```

 

PARAMS\_OWASP is one of the recommended parameter set from the OWASP
Password Storage Cheat Sheet (as of 2026/02). The cheat sheet contains
additional variations to this parameter set with various trade-offs
between `memory_size` and `passes` that are intended to provide
equivalent security.

See: <https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html>

### [PARAMS\_OWASP\_SMALL ¶](#PARAMS_OWASP_SMALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L79)

```
@(rodata)
PARAMS_OWASP_SMALL: Parameters = …
```

 

PARAMS\_OWASP\_SMALL is equivalent in strength to PARAMS\_OWASP, but
trades off less memory use for more CPU usage.

### [PARAMS\_RFC9106 ¶](#PARAMS_RFC9106) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L47)

```
@(rodata)
PARAMS_RFC9106: Parameters = …
```

 

PARAMS\_RFC9106 is the first recommended "uniformly safe" parameter set
per RFC 9106.

### [PARAMS\_RFC9106\_SMALL ¶](#PARAMS_RFC9106_SMALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L56)

```
@(rodata)
PARAMS_RFC9106_SMALL: Parameters = …
```

 

PARAMS\_RFC9106\_SMALL is the second recommended "uniformly safe" parameter
set per RFC 9106 tailored for memory constrained environments.

## Procedures

### [derive ¶](#derive) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin#L98)

```
derive :: proc(
	parameters: ^Parameters, 
	password:   []u8, 
	salt:       []u8, 
	dst:        []u8, 
	secret:     []u8 = nil, 
	ad:         []u8 = nil, 
	sanitize:   bool = true, 
	allocator := context.allocator, 
) -> runtime.Allocator_Error {…}
```

 

derive invokes Argon2id with the specified parameter set and inputs,
and outputs the derived key to dst.

## Procedure Groups

This section is empty.

## Source Files

* [argon2id.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/argon2id/argon2id.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.157071200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Parameters](#Parameters)
  * [Constants](#pkg-Constants)
    + [MAX\_INPUT\_SIZE](#MAX_INPUT_SIZE)
    + [MAX\_PARALLELISM](#MAX_PARALLELISM)
    + [MAX\_TAG\_SIZE](#MAX_TAG_SIZE)
    + [MIN\_PARALLELISM](#MIN_PARALLELISM)
    + [MIN\_TAG\_SIZE](#MIN_TAG_SIZE)
    + [RECOMMENDED\_SALT\_SIZE](#RECOMMENDED_SALT_SIZE)
    + [RECOMMENTED\_TAG\_SIZE](#RECOMMENTED_TAG_SIZE)
  * [Variables](#pkg-Variables)
    + [PARAMS\_OWASP](#PARAMS_OWASP)
    + [PARAMS\_OWASP\_SMALL](#PARAMS_OWASP_SMALL)
    + [PARAMS\_RFC9106](#PARAMS_RFC9106)
    + [PARAMS\_RFC9106\_SMALL](#PARAMS_RFC9106_SMALL)
  * [Procedures](#pkg-Procedures)
    + [derive](#derive)
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