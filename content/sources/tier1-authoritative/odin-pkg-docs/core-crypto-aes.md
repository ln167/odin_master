package crypto/aes - pkg.odin-lang.org 






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



Current Package: *[aes](/core/crypto/aes)*

  

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
3. [aes](/core/crypto/aes)

# package core:crypto/aes [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

The `AES` block cipher and some common modes.

See:
<https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.197-upd1.pdf>
<https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-38a.pdf>
<https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-38d.pdf>

## Index

Types (4)

* [Context\_CTR](#Context_CTR)
* [Context\_ECB](#Context_ECB)
* [Context\_GCM](#Context_GCM)
* [Implementation](#Implementation)

Constants (9)

* [BLOCK\_SIZE](#BLOCK_SIZE)
* [CTR\_IV\_SIZE](#CTR_IV_SIZE)
* [DEFAULT\_IMPLEMENTATION](#DEFAULT_IMPLEMENTATION)
* [GCM\_IV\_SIZE](#GCM_IV_SIZE)
* [GCM\_IV\_SIZE\_MAX](#GCM_IV_SIZE_MAX)
* [GCM\_TAG\_SIZE](#GCM_TAG_SIZE)
* [KEY\_SIZE\_128](#KEY_SIZE_128)
* [KEY\_SIZE\_192](#KEY_SIZE_192)
* [KEY\_SIZE\_256](#KEY_SIZE_256)

Variables (0)

This section is empty.

Procedures (13)

* [decrypt\_ecb](#decrypt_ecb)
* [encrypt\_ecb](#encrypt_ecb)
* [init\_ctr](#init_ctr)
* [init\_ecb](#init_ecb)
* [init\_gcm](#init_gcm)
* [is\_hardware\_accelerated](#is_hardware_accelerated)
* [keystream\_bytes\_ctr](#keystream_bytes_ctr)
* [open\_gcm](#open_gcm)
* [reset\_ctr](#reset_ctr)
* [reset\_ecb](#reset_ecb)
* [reset\_gcm](#reset_gcm)
* [seal\_gcm](#seal_gcm)
* [xor\_bytes\_ctr](#xor_bytes_ctr)

Procedure Groups (0)

This section is empty.

## Types

### [Context\_CTR ¶](#Context_CTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr.odin#L12)

```
Context_CTR :: struct {
	_impl:           Context_Impl,
	_buffer:         [16]u8,
	_off:            int,
	_ctr_hi:         u64,
	_ctr_lo:         u64,
	_is_initialized: bool,
}
```

 

Context\_CTR is a keyed AES-CTR instance.




##### Related Procedures With Parameters

* [init\_ctr](/core/crypto/aes/#init_ctr)
* [keystream\_bytes\_ctr](/core/crypto/aes/#keystream_bytes_ctr)
* [reset\_ctr](/core/crypto/aes/#reset_ctr)
* [xor\_bytes\_ctr](/core/crypto/aes/#xor_bytes_ctr)

### [Context\_ECB ¶](#Context_ECB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ecb.odin#L9)

```
Context_ECB :: struct {
	_impl:           Context_Impl,
	_is_initialized: bool,
}
```

 

Context\_ECB is a keyed AES-ECB instance.

WARNING: Using ECB mode is strongly discouraged unless it is being
used to implement higher level constructs.




##### Related Procedures With Parameters

* [decrypt\_ecb](/core/crypto/aes/#decrypt_ecb)
* [encrypt\_ecb](/core/crypto/aes/#encrypt_ecb)
* [init\_ecb](/core/crypto/aes/#init_ecb)
* [reset\_ecb](/core/crypto/aes/#reset_ecb)

### [Context\_GCM ¶](#Context_GCM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L23)

```
Context_GCM :: struct {
	_impl:           Context_Impl,
	_is_initialized: bool,
}
```

 

Context\_GCM is a keyed AES-GCM instance.




##### Related Procedures With Parameters

* [init\_gcm](/core/crypto/aes/#init_gcm)
* [open\_gcm](/core/crypto/aes/#open_gcm)
* [reset\_gcm](/core/crypto/aes/#reset_gcm)
* [seal\_gcm](/core/crypto/aes/#seal_gcm)

### [Implementation ¶](#Implementation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_impl.odin#L22)

```
Implementation :: enum int {
	Portable, 
	Hardware, 
}
```

 

Implementation is an AES implementation. Most callers will not need
to use this as the package will automatically select the most performant
implementation available (See `is_hardware_accelerated()`).




##### Related Procedures With Parameters

* [init\_ctr](/core/crypto/aes/#init_ctr)
* [init\_ecb](/core/crypto/aes/#init_ecb)
* [init\_gcm](/core/crypto/aes/#init_gcm)

##### Related Constants

* [DEFAULT\_IMPLEMENTATION](/core/crypto/aes/#DEFAULT_IMPLEMENTATION)

## Constants

### [BLOCK\_SIZE ¶](#BLOCK_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes.odin#L21)

```
BLOCK_SIZE :: _aes.BLOCK_SIZE
```

 

BLOCK\_SIZE is the AES block size in bytes.

### [CTR\_IV\_SIZE ¶](#CTR_IV_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr.odin#L9)

```
CTR_IV_SIZE :: 16
```

 

CTR\_IV\_SIZE is the size of the CTR mode IV in bytes.

### [DEFAULT\_IMPLEMENTATION ¶](#DEFAULT_IMPLEMENTATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_impl.odin#L17)

```
DEFAULT_IMPLEMENTATION :: Implementation.Hardware
```

 

DEFAULT\_IMPLEMENTATION is the implementation that will be used by
default if possible.

### [GCM\_IV\_SIZE ¶](#GCM_IV_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L11)

```
GCM_IV_SIZE :: 12
```

 

GCM\_IV\_SIZE is the default size of the GCM IV in bytes.

### [GCM\_IV\_SIZE\_MAX ¶](#GCM_IV_SIZE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L13)

```
GCM_IV_SIZE_MAX :: 0x2000000000000000
```

 

GCM\_IV\_SIZE\_MAX is the maximum size of the GCM IV in bytes.

### [GCM\_TAG\_SIZE ¶](#GCM_TAG_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L15)

```
GCM_TAG_SIZE :: _aes.GHASH_TAG_SIZE
```

 

GCM\_TAG\_SIZE is the size of a GCM tag in bytes.

### [KEY\_SIZE\_128 ¶](#KEY_SIZE_128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes.odin#L14)

```
KEY_SIZE_128 :: _aes.KEY_SIZE_128
```

 

KEY\_SIZE\_128 is the AES-128 key size in bytes.

### [KEY\_SIZE\_192 ¶](#KEY_SIZE_192) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes.odin#L16)

```
KEY_SIZE_192 :: _aes.KEY_SIZE_192
```

 

KEY\_SIZE\_192 is the AES-192 key size in bytes.

### [KEY\_SIZE\_256 ¶](#KEY_SIZE_256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes.odin#L18)

```
KEY_SIZE_256 :: _aes.KEY_SIZE_256
```

 

KEY\_SIZE\_256 is the AES-256 key size in bytes.

## Variables

This section is empty.

## Procedures

### [decrypt\_ecb ¶](#decrypt_ecb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ecb.odin#L35)

```
decrypt_ecb :: proc(ctx: ^Context_ECB, dst, src: []u8) {…}
```

 

decrypt\_ecb decrypts the BLOCK\_SIZE buffer src, and writes the result to dst.

### [encrypt\_ecb ¶](#encrypt_ecb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ecb.odin#L21)

```
encrypt_ecb :: proc(ctx: ^Context_ECB, dst, src: []u8) {…}
```

 

encrypt\_ecb encrypts the BLOCK\_SIZE buffer src, and writes the result to dst.

### [init\_ctr ¶](#init_ctr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr.odin#L22)

```
init_ctr :: proc(ctx: ^Context_CTR, key, iv: []u8, impl: Implementation = DEFAULT_IMPLEMENTATION) {…}
```

 

init\_ctr initializes a Context\_CTR with the provided key and IV.

### [init\_ecb ¶](#init_ecb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ecb.odin#L15)

```
init_ecb :: proc(ctx: ^Context_ECB, key: []u8, impl: Implementation = DEFAULT_IMPLEMENTATION) {…}
```

 

init\_ecb initializes a Context\_ECB with the provided key.

### [init\_gcm ¶](#init_gcm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L29)

```
init_gcm :: proc(ctx: ^Context_GCM, key: []u8, impl: Implementation = DEFAULT_IMPLEMENTATION) {…}
```

 

init\_gcm initializes a Context\_GCM with the provided key.

### [is\_hardware\_accelerated ¶](#is_hardware_accelerated) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_impl_hw.odin#L8)

```
is_hardware_accelerated :: proc "contextless" () -> bool {…}
```

 

is\_hardware\_accelerated returns true iff hardware accelerated AES
is supported.

### [keystream\_bytes\_ctr ¶](#keystream_bytes_ctr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr.odin#L79)

```
keystream_bytes_ctr :: proc(ctx: ^Context_CTR, dst: []u8) {…}
```

 

keystream\_bytes\_ctr fills dst with the raw AES-CTR keystream output.

### [open\_gcm ¶](#open_gcm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L78)

```
open_gcm :: proc(
	ctx:                      ^Context_GCM, 
	dst, iv, aad, ciphertext, 
	tag:                      []u8, 
) -> bool {…}
```

 

open\_gcm authenticates the aad and ciphertext, and decrypts the ciphertext,
with the provided Context\_GCM, iv, and tag, and stores the output in dst,
returning true iff the authentication was successful. If authentication
fails, the destination buffer will be zeroed.

dst and plaintext MUST alias exactly or not at all.

### [reset\_ctr ¶](#reset_ctr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr.odin#L114)

```
reset_ctr :: proc "contextless" (ctx: ^Context_CTR) {…}
```

 

reset\_ctr sanitizes the Context\_CTR. The Context\_CTR must be
re-initialized to be used again.

### [reset\_ecb ¶](#reset_ecb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ecb.odin#L50)

```
reset_ecb :: proc "contextless" (ctx: ^Context_ECB) {…}
```

 

reset\_ecb sanitizes the Context\_ECB. The Context\_ECB must be
re-initialized to be used again.

### [reset\_gcm ¶](#reset_gcm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L114)

```
reset_gcm :: proc "contextless" (ctx: ^Context_GCM) {…}
```

 

reset\_gcm sanitizes the Context\_GCM. The Context\_GCM must be
re-initialized to be used again.

### [seal\_gcm ¶](#seal_gcm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin#L42)

```
seal_gcm :: proc(
	ctx:               ^Context_GCM, 
	dst, tag, iv, aad, 
	plaintext:         []u8, 
) {…}
```

 

seal\_gcm encrypts the plaintext and authenticates the aad and ciphertext,
with the provided Context\_GCM and iv, stores the output in dst and tag.

dst and plaintext MUST alias exactly or not at all.

### [xor\_bytes\_ctr ¶](#xor_bytes_ctr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr.odin#L35)

```
xor_bytes_ctr :: proc(ctx: ^Context_CTR, dst, src: []u8) {…}
```

 

xor\_bytes\_ctr XORs each byte in src with bytes taken from the AES-CTR
keystream, and writes the resulting output to dst. dst and src MUST
alias exactly or not at all.

## Procedure Groups

This section is empty.

## Source Files

* [aes.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes.odin)
* [aes\_ctr.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr.odin)
* [aes\_ctr\_hw.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ctr_hw.odin)
* [aes\_ecb.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ecb.odin)
* [aes\_ecb\_hw.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_ecb_hw.odin)
* [aes\_gcm.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm.odin)
* [aes\_gcm\_hw.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_gcm_hw.odin)
* [aes\_impl.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_impl.odin)
* [aes\_impl\_hw.odin](https://github.com/odin-lang/Odin/tree/master/core/crypto/aes/aes_impl_hw.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.151579200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Context\_CTR](#Context_CTR)
    + [Context\_ECB](#Context_ECB)
    + [Context\_GCM](#Context_GCM)
    + [Implementation](#Implementation)
  * [Constants](#pkg-Constants)
    + [BLOCK\_SIZE](#BLOCK_SIZE)
    + [CTR\_IV\_SIZE](#CTR_IV_SIZE)
    + [DEFAULT\_IMPLEMENTATION](#DEFAULT_IMPLEMENTATION)
    + [GCM\_IV\_SIZE](#GCM_IV_SIZE)
    + [GCM\_IV\_SIZE\_MAX](#GCM_IV_SIZE_MAX)
    + [GCM\_TAG\_SIZE](#GCM_TAG_SIZE)
    + [KEY\_SIZE\_128](#KEY_SIZE_128)
    + [KEY\_SIZE\_192](#KEY_SIZE_192)
    + [KEY\_SIZE\_256](#KEY_SIZE_256)
  * [Procedures](#pkg-Procedures)
    + [decrypt\_ecb](#decrypt_ecb)
    + [encrypt\_ecb](#encrypt_ecb)
    + [init\_ctr](#init_ctr)
    + [init\_ecb](#init_ecb)
    + [init\_gcm](#init_gcm)
    + [is\_hardware\_accelerated](#is_hardware_accelerated)
    + [keystream\_bytes\_ctr](#keystream_bytes_ctr)
    + [open\_gcm](#open_gcm)
    + [reset\_ctr](#reset_ctr)
    + [reset\_ecb](#reset_ecb)
    + [reset\_gcm](#reset_gcm)
    + [seal\_gcm](#seal_gcm)
    + [xor\_bytes\_ctr](#xor_bytes_ctr)
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