package slice/heap - pkg.odin-lang.org 






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



Current Package: *[heap](/core/slice/heap)*

  

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
2. [slice](/core/slice)
3. [heap](/core/slice/heap)

# package core:slice/heap [*Source*](https://github.com/odin-lang/Odin/tree/master/core/slice/heap)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A generic in-place max heap on a slice for any type.

## Index

Types (0)

This section is empty.

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (6)

* [is\_heap](#is_heap)
* [is\_heap\_until](#is_heap_until)
* [make](#make)
* [pop](#pop)
* [push](#push)
* [sort](#sort)

Procedure Groups (0)

This section is empty.

## Types

This section is empty.

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [is\_heap ¶](#is_heap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/slice/heap/heap.odin#L123)

```
is_heap :: proc(data: []$T, less: proc(a, b: $T) -> bool) -> bool {…}
```

 

Checks if a given slice is a max heap.

At most O(n) comparisons where N = len(data) will be performed.

### [is\_heap\_until ¶](#is_heap_until) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/slice/heap/heap.odin#L100)

```
is_heap_until :: proc(data: []$T, less: proc(a, b: $T) -> bool) -> int {…}
```

 

Examines the slice and finds the largest range which is a max-heap. Elements
are compared with user-supplied comparison procedure.

This returns the upper bound of the largest range in the slice which is a
max heap. That is, the last index for which data is a max heap.

At most O(n) comparisons where N = len(data) will be performed.

### [make ¶](#make) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/slice/heap/heap.odin#L26)

```
make :: proc(data: []$T, less: proc(a, b: $T) -> bool) {…}
```

 

Constructs a max heap in slice given by data with comparator. A max heap is
a range of elements which has the following properties:

1. With N = len(data), for all 0 < i < N, data[(i - 1) / 2] does not compare
less than data[i].

2. A new element can be added using push in O(log n) time.

3. The first element can be removed using pop in O(log n) time.

The comparator compares elements of type T and can be used to construct a
max heap (less than) or min heap (greater than) for T.

### [pop ¶](#pop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/slice/heap/heap.odin#L56)

```
pop :: proc(data: []$T, less: proc(a, b: $T) -> bool) {…}
```

 

Swaps the value in position data[0] and the value in data[len(data)-1] and
makes subrange [0, len(data)-1) into a heap. This has the effect of removing
the first element from the heap.

At most 2 \* log(N) comparisons where N = len(data) will be performed.

### [push ¶](#push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/slice/heap/heap.odin#L45)

```
push :: proc(data: []$T, less: proc(a, b: $T) -> bool) {…}
```

 

Inserts the element at the position len(data)-1 into the max heap with
comparator.

At most log(N) comparisons where N = len(data) will be performed.

### [sort ¶](#sort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/slice/heap/heap.odin#L85)

```
sort :: proc(data: []$T, less: proc(a, b: $T) -> bool) {…}
```

 

Converts the max heap into a sorted range in ascending order. The resulting
slice will no longer be a heap after this.

At most 2  *N*  log(N) comparisons where N = len(data) will be performed.

## Procedure Groups

This section is empty.

## Source Files

* [heap.odin](https://github.com/odin-lang/Odin/tree/master/core/slice/heap/heap.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.293091900 +0000 UTC`

* [Overview](#pkg-overview)* [Procedures](#pkg-Procedures)
    + [is\_heap](#is_heap)
    + [is\_heap\_until](#is_heap_until)
    + [make](#make)
    + [pop](#pop)
    + [push](#push)
    + [sort](#sort)
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