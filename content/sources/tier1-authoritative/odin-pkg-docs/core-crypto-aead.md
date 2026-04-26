package crypto/aead - pkg.odin-lang.org 






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



Current Package: *[aead](/core/crypto/aead)*

  

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
3. [aead](/core/crypto/aead)

# package core:crypto/aead [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A generic interface to Authenticated Encryption with Associated Data (`AEAD`) algorithms.

Both a one-shot and context based interface are provided, with similar
usage. If multiple messages are to be sealed/opened via the same key,
the context based interface may be more efficient, depending on the
algorithm.

WARNING: Reusing the same key + iv to seal (encrypt) multiple messages
results in catastrophic loss of security for most algorithms.

**Example:**

```
package aead_example

import "core:bytes"
import "core:crypto"
import "core:crypto/aead"

main :: proc() {
	algo := aead.Algorithm.XCHACHA20POLY1305

	// The example added associated data, and plaintext.
	aad_str := "Get your ass in gear boys."
	pt_str := "They're immanetizing the Eschaton."

	aad := transmute([]byte)aad_str
	plaintext := transmute([]byte)pt_str
	pt_len := len(plaintext)

	// Generate a random key for the purposes of illustration.
	key := make([]byte, aead.KEY_SIZES[algo])
	defer delete(key)
	crypto.rand_bytes(key)

	// `ciphertext || tag`, is a common way data is transmitted, so
	// demonstrate that.
	buf := make([]byte, pt_len + aead.TAG_SIZES[algo])
	defer delete(buf)
	ciphertext, tag := buf[:pt_len], buf[pt_len:]

	// Seal the AAD + Plaintext.
	iv := make([]byte, aead.IV_SIZES[algo])
	defer delete(iv)
	crypto.rand_bytes(iv) // Random IVs are safe with XChaCha20-Poly1305.
	aead.seal(algo, ciphertext, tag, key, iv, aad, plaintext)

	// Open the AAD + Ciphertext.
	opened_pt := buf[:pt_len]
	if ok := aead.open(algo, opened_pt, key, iv, aad, ciphertext, tag); !ok {
		panic("aead example: failed to open")
	}

	assert(bytes.equal(opened_pt, plaintext))
}
```

## Index

Types (3)

* [Algorithm](#Algorithm)
* [Context](#Context)
* [Implementation](#Implementation)

Constants (1)

* [MAX\_TAG\_SIZE](#MAX_TAG_SIZE)

Variables (4)

* [ALGORITHM\_NAMES](#ALGORITHM_NAMES)
* [IV\_SIZES](#IV_SIZES)
* [KEY\_SIZES](#KEY_SIZES)
* [TAG\_SIZES](#TAG_SIZES)

Procedures (9)

* [algorithm](#algorithm)
* [init](#init)
* [iv\_size](#iv_size)
* [open\_ctx](#open_ctx)
* [open\_oneshot](#open_oneshot)
* [reset](#reset)
* [seal\_ctx](#seal_ctx)
* [seal\_oneshot](#seal_oneshot)
* [tag\_size](#tag_size)

Procedure Groups (2)

* [open](#open)
* [seal](#seal)

## Types

### [Algorithm ¶](#Algorithm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L23)

```
Algorithm :: enum int {
	Invalid, 
	AES_GCM_128, 
	AES_GCM_192, 
	AES_GCM_256, 
	CHACHA20POLY1305, 
	XCHACHA20POLY1305, 
	AEGIS_128L, 
	AEGIS_128L_256,    // AEGIS-128L (256-bit tag)
	AEGIS_256, 
	AEGIS_256_256,     // AEGIS-256 (256-bit tag)
	DEOXYS_II_256, 
}
```

 

Algorithm is the algorithm identifier associated with a given Context.




##### Related Procedures With Parameters

* [init](/core/crypto/aead/#init)
* [open\_oneshot](/core/crypto/aead/#open_oneshot)
* [seal\_oneshot](/core/crypto/aead/#seal_oneshot)
* [open](/core/crypto/aead/#open) *(procedure groups)*
* [seal](/core/crypto/aead/#seal) *(procedure groups)*



##### Related Procedures With Returns

* [algorithm](/core/crypto/aead/#algorithm)

### [Context ¶](#Context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L100)

```
Context :: struct {
	_algo: Algorithm,
	_impl: union {
		aes.Context_GCM, 
		chacha20poly1305.Context, 
		aegis.Context, 
		deoxysii.Context, 
	},
}
```

 

Context is a concrete instantiation of a specific AEAD algorithm.




##### Related Procedures With Parameters

* [algorithm](/core/crypto/aead/#algorithm)
* [init](/core/crypto/aead/#init)
* [iv\_size](/core/crypto/aead/#iv_size)
* [open\_ctx](/core/crypto/aead/#open_ctx)
* [reset](/core/crypto/aead/#reset)
* [seal\_ctx](/core/crypto/aead/#seal_ctx)
* [tag\_size](/core/crypto/aead/#tag_size)
* [open](/core/crypto/aead/#open) *(procedure groups)*
* [seal](/core/crypto/aead/#seal) *(procedure groups)*

### [Implementation ¶](#Implementation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L13)

```
Implementation :: union {
	aes.Implementation, 
	chacha20.Implementation, 
}
```

 

Implementation is an AEAD implementation. Most callers will not need
to use this as the package will automatically select the most performant
implementation available.




##### Related Procedures With Parameters

* [init](/core/crypto/aead/#init)
* [open\_oneshot](/core/crypto/aead/#open_oneshot)
* [seal\_oneshot](/core/crypto/aead/#seal_oneshot)
* [open](/core/crypto/aead/#open) *(procedure groups)*
* [seal](/core/crypto/aead/#seal) *(procedure groups)*

## Constants

### [MAX\_TAG\_SIZE ¶](#MAX_TAG_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L20)

```
MAX_TAG_SIZE :: 32
```

 

MAX\_TAG\_SIZE is the maximum size tag that can be returned by any of the
Algorithms supported via this package.

## Variables

### [ALGORITHM\_NAMES ¶](#ALGORITHM_NAMES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L38)

```
ALGORITHM_NAMES: [Algorithm]string = …
```

 

ALGORITM\_NAMES is the Algorithm to algorithm name string.

### [IV\_SIZES ¶](#IV_SIZES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L85)

```
IV_SIZES: [Algorithm]int = …
```

 

IV\_SIZES is the Algorithm to initialization vector size in bytes.

Note: Some algorithms (such as AES-GCM) support variable IV sizes.

### [KEY\_SIZES ¶](#KEY_SIZES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L68)

```
KEY_SIZES: [Algorithm]int = …
```

 

KEY\_SIZES is the Algorithm to key size in bytes.

### [TAG\_SIZES ¶](#TAG_SIZES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L53)

```
TAG_SIZES: [Algorithm]int = …
```

 

TAG\_SIZES is the Algorithm to tag size in bytes.

## Procedures

### [algorithm ¶](#algorithm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L229)

```
algorithm :: proc(ctx: ^Context) -> Algorithm {…}
```

 

algorithm returns the Algorithm used by a Context instance.

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L126)

```
init :: proc(ctx: ^Context, algorithm: Algorithm, key: []u8, impl: Implementation = nil) {…}
```

 

init initializes a Context with a specific AEAD Algorithm.

### [iv\_size ¶](#iv_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L234)

```
iv_size :: proc(ctx: ^Context) -> int {…}
```

 

iv\_size returns the IV size of a Context instance in bytes.

### [open\_ctx ¶](#open_ctx) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L191)

```
open_ctx :: proc(
	ctx:                      ^Context, 
	dst, iv, aad, ciphertext, 
	tag:                      []u8, 
) -> bool {…}
```

 

open\_ctx authenticates the aad and ciphertext, and decrypts the ciphertext,
with the provided Context, iv, and tag, and stores the output in dst,
returning true iff the authentication was successful. If authentication
fails, the destination buffer will be zeroed.

dst and plaintext MUST alias exactly or not at all.




##### Related Procedure Groups

* [open](/core/crypto/aead/#open)

### [open\_oneshot ¶](#open_oneshot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/aead.odin#L21)

```
open_oneshot :: proc(
	algo:                               Algorithm, 
	dst, key, iv, aad, ciphertext, tag: []u8, 
	impl:                               Implementation = nil, 
) -> bool {…}
```

 

open authenticates the aad and ciphertext, and decrypts the ciphertext,
with the provided algorithm, key, iv, and tag, and stores the output in dst,
returning true iff the authentication was successful. If authentication
fails, the destination buffer will be zeroed.

dst and ciphertext MUST alias exactly or not at all.




##### Related Procedure Groups

* [open](/core/crypto/aead/#open)

### [reset ¶](#reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L210)

```
reset :: proc(ctx: ^Context) {…}
```

 

reset sanitizes the Context. The Context must be re-initialized to
be used again.

### [seal\_ctx ¶](#seal_ctx) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L167)

```
seal_ctx :: proc(
	ctx:               ^Context, 
	dst, tag, iv, aad, 
	plaintext:         []u8, 
) {…}
```

 

seal\_ctx encrypts the plaintext and authenticates the aad and ciphertext,
with the provided Context and iv, stores the output in dst and tag.

dst and plaintext MUST alias exactly or not at all.




##### Related Procedure Groups

* [seal](/core/crypto/aead/#seal)

### [seal\_oneshot ¶](#seal_oneshot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/aead.odin#L7)

```
seal_oneshot :: proc(
	algo:                              Algorithm, 
	dst, tag, key, iv, aad, plaintext: []u8, 
	impl:                              Implementation = nil, 
) {…}
```

 

seal\_oneshot encrypts the plaintext and authenticates the aad and ciphertext,
with the provided algorithm, key, and iv, stores the output in dst and tag.

dst and plaintext MUST alias exactly or not at all.




##### Related Procedure Groups

* [seal](/core/crypto/aead/#seal)

### [tag\_size ¶](#tag_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin#L239)

```
tag_size :: proc(ctx: ^Context) -> int {…}
```

 

tag\_size returns the tag size of a Context instance in bytes.

## Procedure Groups

### [open ¶](#open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/aead.odin#L33)

```
open :: proc{
	open_ctx,
	open_oneshot,
}
```

### [seal ¶](#seal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/aead.odin#L28)

```
seal :: proc{
	seal_ctx,
	seal_oneshot,
}
```

## Source Files

* [aead.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/aead.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/doc.odin)
* [low\_level.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aead/low_level.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.140108200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Algorithm](#Algorithm)
    + [Context](#Context)
    + [Implementation](#Implementation)
  * [Constants](#pkg-Constants)
    + [MAX\_TAG\_SIZE](#MAX_TAG_SIZE)
  * [Variables](#pkg-Variables)
    + [ALGORITHM\_NAMES](#ALGORITHM_NAMES)
    + [IV\_SIZES](#IV_SIZES)
    + [KEY\_SIZES](#KEY_SIZES)
    + [TAG\_SIZES](#TAG_SIZES)
  * [Procedures](#pkg-Procedures)
    + [algorithm](#algorithm)
    + [init](#init)
    + [iv\_size](#iv_size)
    + [open\_ctx](#open_ctx)
    + [open\_oneshot](#open_oneshot)
    + [reset](#reset)
    + [seal\_ctx](#seal_ctx)
    + [seal\_oneshot](#seal_oneshot)
    + [tag\_size](#tag_size)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [open](#open)
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