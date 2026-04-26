package simd - pkg.odin-lang.org 






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



Current Package: *[simd](/core/simd)*

  

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
2. [simd](/core/simd)

# package core:simd [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Cross-platform `SIMD` support types and procedures.

SIMD (Single Instruction Multiple Data), is a CPU hardware feature that
introduce special registers and instructions which operate on multiple units
of data at the same time, which enables faster data processing for
applications with heavy computational workloads.

In Odin SIMD is exposed via a special kinds of arrays, called the \*SIMD
vectors\*. The types of SIMD vectors is written as `#simd [N]T`, where N is a
power of two, and T could be any basic type (integers, floats, etc.). The
documentation of this package will call *SIMD vectors* just *vectors*.

SIMD vectors consist of elements, called *scalar values*, or
*scalars*, each occupying a *lane* of the SIMD vector. In the type declaration,
`N` specifies the amount of lanes, or values, that a vector stores.

This package implements procedures for working with vectors.

## Index

Types (45)

* [b16x16](#b16x16)
* [b16x32](#b16x32)
* [b16x8](#b16x8)
* [b32x16](#b32x16)
* [b32x4](#b32x4)
* [b32x8](#b32x8)
* [b64x2](#b64x2)
* [b64x4](#b64x4)
* [b64x8](#b64x8)
* [b8x16](#b8x16)
* [b8x32](#b8x32)
* [b8x64](#b8x64)
* [boolx16](#boolx16)
* [boolx32](#boolx32)
* [boolx64](#boolx64)
* [f32x16](#f32x16)
* [f32x4](#f32x4)
* [f32x8](#f32x8)
* [f64x2](#f64x2)
* [f64x4](#f64x4)
* [f64x8](#f64x8)
* [i16x16](#i16x16)
* [i16x32](#i16x32)
* [i16x8](#i16x8)
* [i32x16](#i32x16)
* [i32x4](#i32x4)
* [i32x8](#i32x8)
* [i64x2](#i64x2)
* [i64x4](#i64x4)
* [i64x8](#i64x8)
* [i8x16](#i8x16)
* [i8x32](#i8x32)
* [i8x64](#i8x64)
* [u16x16](#u16x16)
* [u16x32](#u16x32)
* [u16x8](#u16x8)
* [u32x16](#u32x16)
* [u32x4](#u32x4)
* [u32x8](#u32x8)
* [u64x2](#u64x2)
* [u64x4](#u64x4)
* [u64x8](#u64x8)
* [u8x16](#u8x16)
* [u8x32](#u8x32)
* [u8x64](#u8x64)

Constants (1)

* [HAS\_HARDWARE\_SIMD](#HAS_HARDWARE_SIMD)

Variables (0)

This section is empty.

Procedures (95)

* [abs](#abs)
* [abs\_diff](#abs_diff)
* [add](#add)
* [add\_sub](#add_sub)
* [approx\_recip](#approx_recip)
* [approx\_recip\_sqrt](#approx_recip_sqrt)
* [bit\_and](#bit_and)
* [bit\_and\_not](#bit_and_not)
* [bit\_not](#bit_not)
* [bit\_or](#bit_or)
* [bit\_xor](#bit_xor)
* [ceil](#ceil)
* [clamp](#clamp)
* [copysign](#copysign)
* [count\_leading\_zeros](#count_leading_zeros)
* [count\_ones](#count_ones)
* [count\_trailing\_zeros](#count_trailing_zeros)
* [count\_zeros](#count_zeros)
* [div](#div)
* [extract](#extract)
* [extract\_lsbs](#extract_lsbs)
* [extract\_msbs](#extract_msbs)
* [floor](#floor)
* [fma](#fma)
* [from\_array](#from_array)
* [from\_slice](#from_slice)
* [fused\_mul\_add](#fused_mul_add)
* [fused\_mul\_add\_sub](#fused_mul_add_sub)
* [fused\_mul\_sub](#fused_mul_sub)
* [fused\_mul\_sub\_add](#fused_mul_sub_add)
* [fused\_neg\_mul\_add](#fused_neg_mul_add)
* [fused\_neg\_mul\_sub](#fused_neg_mul_sub)
* [gather](#gather)
* [indices](#indices)
* [iota](#iota)
* [lanes\_eq](#lanes_eq)
* [lanes\_ge](#lanes_ge)
* [lanes\_gt](#lanes_gt)
* [lanes\_le](#lanes_le)
* [lanes\_lt](#lanes_lt)
* [lanes\_ne](#lanes_ne)
* [lanes\_reverse](#lanes_reverse)
* [lanes\_rotate\_left](#lanes_rotate_left)
* [lanes\_rotate\_right](#lanes_rotate_right)
* [masked\_compress\_store](#masked_compress_store)
* [masked\_expand\_load](#masked_expand_load)
* [masked\_load](#masked_load)
* [masked\_store](#masked_store)
* [max](#max)
* [min](#min)
* [mul](#mul)
* [nearest](#nearest)
* [neg](#neg)
* [odd\_even](#odd_even)
* [pairwise\_add](#pairwise_add)
* [pairwise\_sub](#pairwise_sub)
* [recip](#recip)
* [reduce\_add\_bisect](#reduce_add_bisect)
* [reduce\_add\_ordered](#reduce_add_ordered)
* [reduce\_add\_pairs](#reduce_add_pairs)
* [reduce\_all](#reduce_all)
* [reduce\_and](#reduce_and)
* [reduce\_any](#reduce_any)
* [reduce\_max](#reduce_max)
* [reduce\_min](#reduce_min)
* [reduce\_mul\_bisect](#reduce_mul_bisect)
* [reduce\_mul\_ordered](#reduce_mul_ordered)
* [reduce\_mul\_pairs](#reduce_mul_pairs)
* [reduce\_or](#reduce_or)
* [reduce\_xor](#reduce_xor)
* [replace](#replace)
* [reverse\_bits](#reverse_bits)
* [runtime\_swizzle](#runtime_swizzle)
* [saturating\_abs](#saturating_abs)
* [saturating\_add](#saturating_add)
* [saturating\_neg](#saturating_neg)
* [saturating\_sub](#saturating_sub)
* [scatter](#scatter)
* [select](#select)
* [shl](#shl)
* [shl\_masked](#shl_masked)
* [shr](#shr)
* [shr\_masked](#shr_masked)
* [shuffle](#shuffle)
* [sign\_bit](#sign_bit)
* [signum](#signum)
* [sqrt](#sqrt)
* [sub](#sub)
* [sums\_of\_n](#sums_of_n)
* [swizzle](#swizzle)
* [to\_array](#to_array)
* [to\_array\_ptr](#to_array_ptr)
* [to\_bits](#to_bits)
* [to\_bits\_signed](#to_bits_signed)
* [trunc](#trunc)

Procedure Groups (0)

This section is empty.

## Types

### [b16x16 ¶](#b16x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L174)

```
b16x16 :: #simd[16]b16
```

 

Vector of 16 `b16` lanes (256 bits).

### [b16x32 ¶](#b16x32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L249)

```
b16x32 :: #simd[32]b16
```

 

Vector of 32 `b16` lanes (512 bits).

### [b16x8 ¶](#b16x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L99)

```
b16x8 :: #simd[8]b16
```

 

Vector of 8 `b16` lanes (128 bits).

### [b32x16 ¶](#b32x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L254)

```
b32x16 :: #simd[16]b32
```

 

Vector of 16 `b32` lanes (512 bits).

### [b32x4 ¶](#b32x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L104)

```
b32x4 :: #simd[4]b32
```

 

Vector of 4 `b32` lanes (128 bits).

### [b32x8 ¶](#b32x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L179)

```
b32x8 :: #simd[8]b32
```

 

Vector of 8 `b32` lanes (256 bits).

### [b64x2 ¶](#b64x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L109)

```
b64x2 :: #simd[2]b64
```

 

Vector of 2 `b64` lanes (128 bits).

### [b64x4 ¶](#b64x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L184)

```
b64x4 :: #simd[4]b64
```

 

Vector of 4 `b64` lanes (256 bits).

### [b64x8 ¶](#b64x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L259)

```
b64x8 :: #simd[8]b64
```

 

Vector of 8 `b64` lanes (512 bits).

### [b8x16 ¶](#b8x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L94)

```
b8x16 :: #simd[16]b8
```

 

Vector of 16 `b8` lanes (128 bits).

### [b8x32 ¶](#b8x32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L169)

```
b8x32 :: #simd[32]b8
```

 

Vector of 32 `b8` lanes (256 bits).

### [b8x64 ¶](#b8x64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L244)

```
b8x64 :: #simd[64]b8
```

 

Vector of 64 `b8` lanes (512 bits).

### [boolx16 ¶](#boolx16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L89)

```
boolx16 :: #simd[16]bool
```

 

Vector of 16 `bool` lanes (128 bits).

### [boolx32 ¶](#boolx32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L164)

```
boolx32 :: #simd[32]bool
```

 

Vector of 32 `bool` lanes (256 bits).

### [boolx64 ¶](#boolx64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L239)

```
boolx64 :: #simd[64]bool
```

 

Vector of 64 `bool` lanes (512 bits).

### [f32x16 ¶](#f32x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L229)

```
f32x16 :: #simd[16]f32
```

 

Vector of 16 `f32` lanes (512 bits).

### [f32x4 ¶](#f32x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L79)

```
f32x4 :: #simd[4]f32
```

 

Vector of 4 `f32` lanes (128 bits).

### [f32x8 ¶](#f32x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L154)

```
f32x8 :: #simd[8]f32
```

 

Vector of 8 `f32` lanes (256 bits).

### [f64x2 ¶](#f64x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L84)

```
f64x2 :: #simd[2]f64
```

 

Vector of 2 `f64` lanes (128 bits).

### [f64x4 ¶](#f64x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L159)

```
f64x4 :: #simd[4]f64
```

 

Vector of 4 `f64` lanes (256 bits).

### [f64x8 ¶](#f64x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L234)

```
f64x8 :: #simd[8]f64
```

 

Vector of 8 `f64` lanes (512 bits).

### [i16x16 ¶](#i16x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L129)

```
i16x16 :: #simd[16]i16
```

 

Vector of 16 `i16` lanes (256 bits).

### [i16x32 ¶](#i16x32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L204)

```
i16x32 :: #simd[32]i16
```

 

Vector of 32 `i16` lanes (512 bits).

### [i16x8 ¶](#i16x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L54)

```
i16x8 :: #simd[8]i16
```

 

Vector of 8 `i16` lanes (128 bits).

### [i32x16 ¶](#i32x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L214)

```
i32x16 :: #simd[16]i32
```

 

Vector of 16 `i32` lanes (512 bits).

### [i32x4 ¶](#i32x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L64)

```
i32x4 :: #simd[4]i32
```

 

Vector of 4 `i32` lanes (128 bits).

### [i32x8 ¶](#i32x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L139)

```
i32x8 :: #simd[8]i32
```

 

Vector of 8 `i32` lanes (256 bits).

### [i64x2 ¶](#i64x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L74)

```
i64x2 :: #simd[2]i64
```

 

Vector of 2 `i64` lanes (128 bits).

### [i64x4 ¶](#i64x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L149)

```
i64x4 :: #simd[4]i64
```

 

Vector of 4 `i64` lanes (256 bits).

### [i64x8 ¶](#i64x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L224)

```
i64x8 :: #simd[8]i64
```

 

Vector of 8 `i64` lanes (512 bits).

### [i8x16 ¶](#i8x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L44)

```
i8x16 :: #simd[16]i8
```

 

Vector of 16 `i8` lanes (128 bits).

### [i8x32 ¶](#i8x32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L119)

```
i8x32 :: #simd[32]i8
```

 

Vector of 32 `i8` lanes (256 bits).

### [i8x64 ¶](#i8x64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L194)

```
i8x64 :: #simd[64]i8
```

 

Vector of 64 `i8` lanes (512 bits).

### [u16x16 ¶](#u16x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L124)

```
u16x16 :: #simd[16]u16
```

 

Vector of 16 `u16` lanes (256 bits).

### [u16x32 ¶](#u16x32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L199)

```
u16x32 :: #simd[32]u16
```

 

Vector of 32 `u16` lanes (512 bits).

### [u16x8 ¶](#u16x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L49)

```
u16x8 :: #simd[8]u16
```

 

Vector of 8 `u16` lanes (128 bits).

### [u32x16 ¶](#u32x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L209)

```
u32x16 :: #simd[16]u32
```

 

Vector of 16 `u32` lanes (512 bits).

### [u32x4 ¶](#u32x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L59)

```
u32x4 :: #simd[4]u32
```

 

Vector of 4 `u32` lanes (128 bits).

### [u32x8 ¶](#u32x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L134)

```
u32x8 :: #simd[8]u32
```

 

Vector of 8 `u32` lanes (256 bits).

### [u64x2 ¶](#u64x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L69)

```
u64x2 :: #simd[2]u64
```

 

Vector of 2 `u64` lanes (128 bits).

### [u64x4 ¶](#u64x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L144)

```
u64x4 :: #simd[4]u64
```

 

Vector of 4 `u64` lanes (256 bits).

### [u64x8 ¶](#u64x8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L219)

```
u64x8 :: #simd[8]u64
```

 

Vector of 8 `u64` lanes (512 bits).

### [u8x16 ¶](#u8x16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L39)

```
u8x16 :: #simd[16]u8
```

 

Vector of 16 `u8` lanes (128 bits).

### [u8x32 ¶](#u8x32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L114)

```
u8x32 :: #simd[32]u8
```

 

Vector of 32 `u8` lanes (256 bits).

### [u8x64 ¶](#u8x64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L189)

```
u8x64 :: #simd[64]u8
```

 

Vector of 64 `u8` lanes (512 bits).

## Constants

### [HAS\_HARDWARE\_SIMD ¶](#HAS_HARDWARE_SIMD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L34)

```
HAS_HARDWARE_SIMD :: runtime.HAS_HARDWARE_SIMD
```

 

Check if SIMD is software-emulated on a target platform.

This value is `true`, when the compile-time target has the hardware support for
at least 128-bit (or wider) SIMD. If the compile-time target lacks the hardware support
for 128-bit SIMD, this value is `false`, and all SIMD operations will likely be
emulated.

## Variables

This section is empty.

## Procedures

### [abs ¶](#abs)

```
abs :: intrinsics.simd_abs  
abs :: proc(a: #simd[N]T) -> #simd[N]T {…}
```

 

Absolute value of a SIMD vector.

This procedure returns a vector where each lane has the absolute value of the
corresponding lane in the vector `a`.

**Inputs:**  
`a`: An integer or a float vector to negate

**Returns:**  
The absolute value of a vector.

**Operation:**

```
for i in 0 ..< len(res) {
	switch {
		case a[i] < 0:  res[i] = -a[i]
		case a[i] > 0:  res[i] = a[i]
		case a[i] == 0: res[i] = 0
	}
}
return res
```


**Example:**

```
   +------+------+------+------+
a: |   0  |  -1  |   2  |  -3  |
   +------+------+------+------+
res:
   +------+------+------+------+
   |   0  |   1  |   2  |   3  |
   +------+------+------+------+
```

### [abs\_diff ¶](#abs_diff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2877)

```
abs_diff :: proc "contextless" (a, b: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [add ¶](#add)

```
add :: intrinsics.simd_add  
add :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Add SIMD vectors.

This procedure returns a vector, where each lane holds the sum of the
corresponding `a` and `b` vectors' lanes.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector that is the sum of two input vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] + b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  1  |  2  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  |  2  |  4  |  2  |
   +-----+-----+-----+-----+
```

### [add\_sub ¶](#add_sub) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2605)

```
add_sub :: proc "contextless" (a, b: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [approx\_recip ¶](#approx_recip)

```
approx_recip :: intrinsics.simd_approx_recip
```

### [approx\_recip\_sqrt ¶](#approx_recip_sqrt)

```
approx_recip_sqrt :: intrinsics.simd_approx_recip_sqrt
```

### [bit\_and ¶](#bit_and)

```
bit_and :: intrinsics.simd_bit_and  
bit_and :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise AND of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
AND operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise AND operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] & b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0x11 | 0x30 | 0x05 | 0x00 |
   +------+------+------+------+
```

### [bit\_and\_not ¶](#bit_and_not)

```
bit_and_not :: intrinsics.simd_bit_and_not  
bit_and_not :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise AND NOT of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
AND NOT operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise AND NOT operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] &~ b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0x00 | 0x03 | 0x50 | 0xaa |
   +------+------+------+------+
```

### [bit\_not ¶](#bit_not) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2759)

```
bit_not :: proc "contextless" (v: $T/#simd[0]$E) -> $$deferred_return {…}
```

 

Perform binary not operation on a SIMD vector.

This procedure returns a vector where each lane is the result of the binary
NOT operation of the corresponding lane in the vector `a`.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = ~a[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x00 | 0x50 | 0x80 | 0xff |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0xff | 0xaf | 0x7f | 0x00 |
   +------+------+------+------+
```

### [bit\_or ¶](#bit_or)

```
bit_or :: intrinsics.simd_bit_or  
bit_or :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise OR of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
OR operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise OR operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] | b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0xff | 0xf3 | 0x5f | 0xaa |
   +------+------+------+------+
```

### [bit\_xor ¶](#bit_xor)

```
bit_xor :: intrinsics.simd_bit_xor  
bit_xor :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise XOR of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
XOR operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise XOR operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] ~ b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0xee | 0xc3 | 0x5a | 0xaa |
   +------+------+------+------+
```

### [ceil ¶](#ceil)

```
ceil :: intrinsics.simd_ceil  
ceil :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

Ceil each lane in a SIMD vector.

### [clamp ¶](#clamp)

```
clamp :: intrinsics.simd_clamp  
clamp :: proc(v, min, max: #simd[N]T) -> #simd[N]T {…}
```

 

Clamp lanes of vector.

This procedure returns a vector, where each lane is the result of the
clamping of the lane from the vector `v` between the values in the corresponding
lanes of vectors `min` and `max`.

**Inputs:**  
`v`: An integer or a float vector with values to be clamped.
`min`: An integer or a float vector with minimum bounds.
`max`: An integer or a float vectoe with maximum bounds.

**Returns:**  
A vector containing clamped values in each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	val := v[i]
	switch {
		case val < min: val = min
		case val > max: val = max
	}
	res[i] = val
}
return res
```


**Example:**

```
     +-------+-------+-------+-------+
v:   |  -1   |  0.3  |  1.2  |   1   |
     +-------+-------+-------+-------+
     +-------+-------+-------+-------+
min: |   0   |   0   |   0   |   0   |
     +-------+-------+-------+-------+
     +-------+-------+-------+-------+
max: |   1   |   1   |   1   |   1   |
     +-------+-------+-------+-------+
res:
     +-------+-------+-------+-------+
     |   0   |  0.3  |   1   |   1   |
     +-------+-------+-------+-------+
```

### [copysign ¶](#copysign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2767)

```
copysign :: proc "contextless" (v, sign: $T/#simd[0]$E) -> $$deferred_return {…}
```

 

Copy the signs from lanes of one SIMD vector into another SIMD vector.

### [count\_leading\_zeros ¶](#count_leading_zeros)

```
count_leading_zeros :: intrinsics.count_leading_zeros  
count_leading_zeros :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Count the number of leading unset bits in each lane of a SIMD vector.

### [count\_ones ¶](#count_ones)

```
count_ones :: intrinsics.count_ones  
count_ones :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Count the number of set bits in each lane of a SIMD vector.

### [count\_trailing\_zeros ¶](#count_trailing_zeros)

```
count_trailing_zeros :: intrinsics.count_trailing_zeros  
count_trailing_zeros :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Count the number of trailing unset bits in each lane of a SIMD vector.

### [count\_zeros ¶](#count_zeros)

```
count_zeros :: intrinsics.count_zeros  
count_zeros :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Count the number of unset bits in each lane of a SIMD vector.

### [div ¶](#div)

```
div :: intrinsics.simd_div  
div :: proc(a, b: #simd[N]T) -> #simd[N]T where type_is_float(T) {…}
```

 

Divide SIMD vectors.

This procedure returns a vector, where each lane holds the quotient (result
of division) between the corresponding lanes of the vectors `a` and `b`. Each
lane of the vector `a` is divided by the corresponding lane of the vector `b`.

This operation performs a standard floating-point division for each lane.

**Inputs:**  
`a`: A float vector.
`b`: A float vector to divide by.

**Returns:**  
A vector that is the quotient of two vectors, `a` / `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] / b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  2  |  2  |  2  |  2  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  | -1  |  2  | -3  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+------+
   | +∞  | -2  |  1  | -2/3 |
   +-----+-----+-----+------+
```

### [extract ¶](#extract)

```
extract :: intrinsics.simd_extract  
extract :: proc(a: #simd[N]T, idx: uint) -> T {…}
```

 

Extract scalar from a vector's lane.

This procedure returns the scalar from the lane at the specified index of the
vector.

**Inputs:**  
`a`: The vector to extract from.
`idx`: The lane index.

**Returns:**  
The value of the lane at the specified index.

**Operation:**

```
return a[idx]
```

### [extract\_lsbs ¶](#extract_lsbs)

```
extract_lsbs :: intrinsics.simd_extract_lsbs  
extract_lsbs :: proc(a: #simd[N]T) -> bit_set[0..where type_is_integer(T) || type_is_boolean(T) {…}
```

 

Extract the set of least-significant bits of a SIMD vector.

This procedure checks the least-significant bit (LSB) for each lane of vector
and returns the numbers of lanes with the least-significant bit set. This procedure
can be used in conjuction with `lanes_eq` (and other similar procedures) to
count the number of matched lanes by computing the cardinality of the resulting
set.

**Inputs:**  
`a`: An input vector.

Result:
A bitset of integers, corresponding to the indexes of the lanes, whose LSBs
are set.

**Operation:**

```
res = bit_set {}
for i in 0 ..< len(a) {
	if a[i] & 1 != 0 {
		res |= i
	}
}
return res
```


**Example:**

```
// Since lanes 0, 2, 4, 6 contain odd integers, the least significant bits
// for these lanes are set.

import "core:fmt"
import "core:simd"

simd_extract_lsbs_example :: proc() {
	v := #simd [8]i32 { -1, -2, +3, +4, -5, +6, +7, -8 }
	fmt.println(simd.extract_lsbs(v))
}
```

**Output:**

```
bit_set[0..=7]{0, 2, 4, 6}
```

### [extract\_msbs ¶](#extract_msbs)

```
extract_msbs :: intrinsics.simd_extract_msbs  
extract_msbs :: proc(a: #simd[N]T) -> bit_set[0..where type_is_integer(T) || type_is_boolean(T) {…}
```

 

Extract the set of most-significant bits of a SIMD vector.

This procedure checks the most-significant bit (MSB) for each lane of vector
and returns the numbers of lanes with the most-significant bit set. This procedure
can be used in conjuction with `lanes_eq` (and other similar procedures) to
count the number of matched lanes by computing the cardinality of the resulting
set.

**Inputs:**  
`a`: An input vector.

Result:
A bitset of integers, corresponding to the indexes of the lanes, whose MSBs
are set.

**Operation:**

```
bits_per_lane = 8*size_of(a[0])
res = bit_set {}
for i in 0 ..< len(a) {
	if a[i] & 1<<(bits_per_lane-1) != 0 {
		res |= i
	}
}
return res
```


**Example:**

```
// Since lanes 0, 1, 4, 7 contain negative numbers, the most significant
// bits for them will be set.

import "core:fmt"
import "core:simd"

simd_extract_msbs_example :: proc() {
	v := #simd [8]i32 { -1, -2, +3, +4, -5, +6, +7, -8 }
	fmt.println(simd.extract_msbs(v))
}
```

**Output:**

```
bit_set[0..=7]{0, 1, 4, 7}
```

### [floor ¶](#floor)

```
floor :: intrinsics.simd_floor  
floor :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

Floor each lane in a SIMD vector.

### [fma ¶](#fma)

```
fma :: intrinsics.fused_mul_add  
fma :: proc(a, b, c: $T) -> T where type_is_float(T) || (type_is_simd_vector(T) && type_is_float(type_elem_type(T))) {…}
```

 

Perform a FMA (Fused multiply-add) operation on each lane of SIMD vectors.

A fused multiply-add is a ternary operation that for three operands, `a`, `b`
and `c` performs the operation `a*b+c`. This operation is a hardware feature
that allows to minimize floating-point error and allow for faster computation.

This procedure performs a FMA operation on each lane of the SIMD vectors.

**Inputs:**  
`a`: The multiplier.
`b`: The multiplicand.
`c`: The addend.

**Returns:**  
`a*b+c`

**Operation**

```
res := 0
for i in 0 ..< len(a) {
	res[i] = fma(a[i], b[i], c[i])
}
return res
```

### [from\_array ¶](#from_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2718)

```
from_array :: proc "contextless" (v: $A/[$LANES]$E) -> $$deferred_return {…}
```

 

Convert array to SIMD vector.

### [from\_slice ¶](#from_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2726)

```
from_slice :: proc($T: typeid/#simd[0]$E, slice: []$E) -> $$deferred_return {…}
```

 

Convert slice to SIMD vector.

### [fused\_mul\_add ¶](#fused_mul_add)

```
fused_mul_add :: intrinsics.fused_mul_add  
fused_mul_add :: proc(a, b, c: $T) -> T where type_is_float(T) || (type_is_simd_vector(T) && type_is_float(type_elem_type(T))) {…}
```

 

Perform a FMA (Fused multiply-add) operation on each lane of SIMD vectors.

A fused multiply-add is a ternary operation that for three operands, `a`, `b`
and `c` performs the operation `a*b+c`. This operation is a hardware feature
that allows to minimize floating-point error and allow for faster computation.

This procedure performs a FMA operation on each lane of the SIMD vectors.

**Inputs:**  
`a`: The multiplier
`b`: The multiplicand
`c`: The addend

**Returns:**  
`a*b+c`

**Operation**

```
res := 0
for i in 0 ..< len(a) {
	res[i] = fma(a[i], b[i], c[i])
}
return res
```

### [fused\_mul\_add\_sub ¶](#fused_mul_add_sub) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2653)

```
fused_mul_add_sub :: proc "contextless" (a, b, c: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [fused\_mul\_sub ¶](#fused_mul_sub) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2643)

```
fused_mul_sub :: proc "contextless" (a, b, c: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [fused\_mul\_sub\_add ¶](#fused_mul_sub_add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2660)

```
fused_mul_sub_add :: proc "contextless" (a, b, c: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [fused\_neg\_mul\_add ¶](#fused_neg_mul_add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2638)

```
fused_neg_mul_add :: proc "contextless" (a, b, c: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [fused\_neg\_mul\_sub ¶](#fused_neg_mul_sub) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2648)

```
fused_neg_mul_sub :: proc "contextless" (a, b, c: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [gather ¶](#gather)

```
gather :: intrinsics.simd_gather  
gather :: proc(ptr: #simd[N]rawptr, val: #simd[N]T, mask: #simd[N]U) -> #simd[N]T where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a gather load into a vector.

A *gather* operation is memory load operation, that loads values from an vector
of addresses into a single value vector. This can be used to achieve the
following results:

Accessing every N'th element of an array (strided access)
Access of elements according to some computed offsets (indexed access).
Access of elements in a different order (shuffling access).

When used alongside other SIMD procedures in order to compute the offsets
for the `ptr` and `mask` parameters.

**Inputs:**  
`ptr`: A vector of memory locations. Each pointer points to a single value,

```
of a SIMD vector's lane type that will be loaded into the vector. Pointer
in this vector can be `nil` or any other invalid value, if the corresponding
value in the `mask` parameter is zero.
```

`val`: A vector of values that will be used at corresponding positions

```
of the result vector, if the corresponding memory location has been
masked out.
```

`mask`: A vector of booleans or unsigned integers that determines which memory

```
locations to read from. If the value at an index has the value true
(lowest bit set), the value at that index will be loaded into the result
vector from the corresponding memory location in the `ptr` vector. Otherwise
the value will be loaded from the `val` vector.
```

**Returns:**  
A vector with all values from unmasked indices
loaded from the pointer vector `ptr`, and all values from masked indices loaded
from the value vector `val`.

**Operation:**

```
for i in 0 ..< len(res) {
	if mask[i]&1 == 1 {
		res[i] = ptr[i]^
	} else {
		res[i] = val[i]
	}
}
return res
```


**Example:**

```
// Example below loads 2 lanes of values from 2 lanes of float vectors, `v1` and
// `v2`. From each of these vectors we're loading the second value, into the first
// and the third position of the result vector.

// Therefore the `ptrs` argument is initialized such that the first and the third
// value are the addresses of the values that we want to load into the result
// vector, and we'll fill in `nil` for the rest of them. To prevent CPU from
// dereferencing those `nil` addresses we provide the mask that only allows us
// to load valid positions of the `ptrs` array, and the array of defaults which
// will have `127` in each position as the default value.

import "core:fmt"
import "core:simd"

simd_gather_example :: proc() {
	v1 := [4] f32 {1, 2, 3, 4};
	v2 := [4] f32 {9, 10,11,12};
	ptrs := #simd [4]rawptr { &v1[1], nil, &v2[1], nil }
	mask := #simd [4]bool { true, false, true, false }
	defaults := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	res := simd.gather(ptrs, defaults, mask)
	fmt.println(res)
}
```

**Output:**

```
<2, 127, 10, 127>
```

The first and the third positions came from the `ptrs` array, and the other
2 lanes of from the default vector. The graphic below shows how the values of
the result are decided based on the mask:

```
      +-------------------------------+ 
mask: |   1   |   0   |   1   |   0   | 
      +-------------------------------+ 
        |         |       |       `----------------------------.
        |         |       |                                    |
        |          `----  |  ------------------------.         |
        v                 v                          v         v
      +-------------------------------+       +-------------------+
ptrs: |  &m0  |  nil  |  &m2  |  nil  | vals: | d0 | d1 | d2 | d3 |
      +-------------------------------+       +-------------------+
          |               |                          |         |
          |          .--- | -------------------------'         |
          |         |     |          ,-------------------------'
          v         v     v         v
        +-------------------------------+
result: |   m0  |   d1  |   m2  |  d3   |
        +-------------------------------+
```

### [indices ¶](#indices)

```
indices :: intrinsics.simd_indices
```

 

Create a vector where each lane contains the index of that lane.
Inputs:
`V`: The type of the vector to create.
Result:
A vector of the given type, where each lane contains the index of that lane.

**Operation:**

```
for i in 0 ..< N {
	res[i] = i
}
```

### [iota ¶](#iota)

```
iota :: intrinsics.simd_indices
```

 

Create a vector where each lane contains the index of that lane.
Inputs:
`V`: The type of the vector to create.
Result:
A vector of the given type, where each lane contains the index of that lane.

**Operation:**

```
for i in 0 ..< N {
	res[i] = i
}
```

### [lanes\_eq ¶](#lanes_eq)

```
lanes_eq :: intrinsics.simd_lanes_eq  
lanes_eq :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Check if lanes of vectors are equal.

This procedure checks each pair of lanes from vectors `a` and `b` for whether
they are equal, and if they are, the corresponding lane of the result vector
will have a value with all bits set (`0xff..ff`). Otherwise the lane of the
result vector will have the value `0`.

**Inputs:**  
`a`: An integer, a float or a boolean vector.
`b`: An integer, a float or a boolean vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] == b[i] {
		res[i] = max(T)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0xff  | 0x00  | 0xff  | 0x00  |
   +-------+-------+-------+-------+
```

### [lanes\_ge ¶](#lanes_ge)

```
lanes_ge :: intrinsics.simd_lanes_ge  
lanes_ge :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Check if lanes of a vector are greater than or equal than another.
SIMD vector.

This procedure checks each pair of lanes from vectors `a` and `b` for whether the
lane of `a` is greater than or equal to the lane of `b`, and if so, the
corresponding lane of the result vector will have a value with all bits set
(`0xff..ff`). Otherwise the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] >= b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0xff  | 0x00  | 0xff  | 0xff  |
   +-------+-------+-------+-------+
```

### [lanes\_gt ¶](#lanes_gt)

```
lanes_gt :: intrinsics.simd_lanes_gt  
lanes_gt :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Check if lanes of a vector are greater than another.
vector.

This procedure checks each pair of lanes from vectors `a` and `b` for whether the
lane of `a` is greater than to the lane of `b`, and if so, the corresponding
lane of the result vector will have a value with all bits set (`0xff..ff`).
Otherwise the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] > b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0x00  | 0x00  | 0x00  | 0xff  |
   +-------+-------+-------+-------+
```

### [lanes\_le ¶](#lanes_le)

```
lanes_le :: intrinsics.simd_lanes_le  
lanes_le :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Check if lanes of a vector are less than or equal than another.
SIMD vector.

This procedure checks each pair of lanes from vectors `a` and `b` for whether the
lane of `a` is less than or equal to the lane of `b`, and if so, the
corresponding lane of the result vector will have a value with all bits set
(`0xff..ff`). Otherwise the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] <= b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0xff  | 0xff  | 0xff  | 0x00  |
   +-------+-------+-------+-------+
```

### [lanes\_lt ¶](#lanes_lt)

```
lanes_lt :: intrinsics.simd_lanes_lt  
lanes_lt :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Check if lanes of a vector are less than another.

This procedure checks each pair of lanes from vectors `a` and `b` for whether
the lane of `a` is less than the lane of `b`, and if so, the corresponding lane
of the result vector will have a value with all bits set (`0xff..ff`). Otherwise
the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] < b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
r: | 0x00  | 0xff  | 0x00  | 0x00  |
   +-------+-------+-------+-------+
```

### [lanes\_ne ¶](#lanes_ne)

```
lanes_ne :: intrinsics.simd_lanes_ne  
lanes_ne :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Check if lanes of vectors are not equal.

This procedure checks each pair of lanes from vectors `a` and `b` for whether
they are not equal, and if they are, the corresponding lane of the result
vector will have a value with all bits set (`0xff..ff`). Otherwise the lane of
the result vector will have the value `0`.

**Inputs:**  
`a`: An integer, a float or a boolean vector.
`b`: An integer, a float or a boolean vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] != b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0x00  | 0xff  | 0x00  | 0xff  |
   +-------+-------+-------+-------+
```

### [lanes\_reverse ¶](#lanes_reverse)

```
lanes_reverse :: intrinsics.simd_lanes_reverse  
lanes_reverse :: proc(a: #simd[N]T) -> #simd[N]T {…}
```

 

Reverse the lanes of a SIMD vector.

This procedure reverses the lanes of a vector, putting last lane in the
first spot, etc. This procedure is equivalent to the following call (for
4-element vectors):

```
swizzle(a, 3, 2, 1, 0)
```

### [lanes\_rotate\_left ¶](#lanes_rotate_left)

```
lanes_rotate_left :: intrinsics.simd_lanes_rotate_left  
lanes_rotate_left :: proc(a: #simd[N]T, $offset: int) -> #simd[N]T {…}
```

 

Rotate the lanes of a SIMD vector left.

This procedure rotates the lanes of a vector, putting the first lane of the
last spot, second lane in the first spot, third lane in the second spot, etc.
For 4-element vectors, this procedure is equvalent to the following:

```
swizzle(a, 1, 2, 3, 0)
```

### [lanes\_rotate\_right ¶](#lanes_rotate_right)

```
lanes_rotate_right :: intrinsics.simd_lanes_rotate_right  
lanes_rotate_right :: proc(a: #simd[N]T, $offset: int) -> #simd[N]T {…}
```

 

Rotate the lanes of a SIMD vector right.

This procedure rotates the lanes of a SIMD vector, putting the first lane of the
second spot, second lane in the third spot, etc. For 4-element vectors, this
procedure is equvalent to the following:

```
swizzle(a, 3, 0, 1, 2)
```

### [masked\_compress\_store ¶](#masked_compress_store)

```
masked_compress_store :: intrinsics.simd_masked_compress_store  
masked_compress_store :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Store masked values to consecutive memory locations.

This procedure stores values from masked lanes of a vector `val` consecutively
into memory. This operation is the opposite of `masked_expand_load`. The number
of items stored into memory is the number of set bits in the mask. If the value
in a lane of a mask is `true`, that lane is stored into memory. Otherwise
nothing is stored.

**Inputs:**  
`ptr`: The pointer to the memory of a store.
`val`: The vector to store into memory.
`mask`: The mask that selects which values to store into memory.

**Operation:**

```
mem_idx := 0
for i in 0 ..< len(mask) {
	if mask[i]&1 == 1 {
		ptr[mem_idx] = val[i]
		mem_idx += 1
	}
}
```


**Example:**

```
// The code below fills the vector `v` with two values from a 4-element SIMD
// vector, the first and the third value. The items in the mask are set to `true`
// in those lanes.

import "core:fmt"
import "core:simd"

simd_masked_compress_store_example :: proc() {
	v := [2] f64 { };
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f64 { 1, 2, 3, 4 }
	simd.masked_compress_store(&v, vals, mask)
	fmt.println(v)
}
```

**Output:**

```
[1, 3]
```

Graphical representation of the operation:

```
      +-------------------+
mask: | 1  | 0  | 1  | 0  |
      +-------------------+
        |         |
        v         v
      +-------------------+
vals: | v0 | v1 | v2 | v3 |
      +-------------------+
        |      ,--'
ptr     v     v
 +--->+-----------------
      | v0  | v2  | ...
      +-----------------
```

### [masked\_expand\_load ¶](#masked_expand_load)

```
masked_expand_load :: intrinsics.simd_masked_expand_load  
masked_expand_load :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) -> #simd[N]T where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Load consecutive scalar values and expand into a vector.

This procedure loads a number of consecutive scalar values from an address,
specified by the `ptr` parameter, and stores them in a result vector, according
to the mask. The number of values read from memory is the number of set bits
in the mask. The lanes for which the mask has the value `true` get the next
consecutive value from memory, otherwise if the mask is `false` for the
lane, its value is filled from the corresponding lane of the `val` parameter.

This procedure acts like `masked_store`, except the values from memory are
read consecutively, and not according to the lanes. The memory values are read
and assigned to the result vector's masked lanes in order of increasing
addresses.

**Inputs:**  
`ptr`: The pointer to the memory to read from.
`vals`: The default values for masked-off entries.
`mask`: The mask that determines which lanes get consecutive memory values.

**Returns:**  
The result vector, holding masked memory values unmasked default values.

**Operation:**

```
mem_idx := 0
for i in 0 ..< len(mask) {
	if mask[i]&1 == 1 {
		res[i] = ptr[mem_idx]
		mem_idx += 1
	} else {
		res[i] = val[i]
	}
}
return res
```


**Example:**

```
// The example below loads two values from memory of the vector `v`. Two values in
// the mask are set to `true`, meaning only two memory items will be loaded into
// the result vector. The mask is set to `true` in the first and the third
// position, which specifies that the first memory item will be read into the
// first lane of the result vector, and the second memory item will be read into
// the third lane of the result vector. All the other lanes of the result vector
// will be initialized to the default value `127`.

import "core:fmt"
import "core:simd"

simd_masked_expand_load_example :: proc() {
	v := [2] f64 {1, 2};
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f64 { 0x7f, 0x7f, 0x7f, 0x7f }
	res := simd.masked_expand_load(&v, vals, mask)
	fmt.println(res)
}
```

**Output:**

```
<1, 127, 2, 127>
```

Graphical representation of the operation:

```
ptr --->+-----------+-----
        | m0  | m1  | ...
        +-----------+-----
          |      `--.
          v         v
        +-------------------+         +-------------------+
mask:   | 1  | 0  | 1  | 0  |   vals: | v0 | v1 | v2 | v3 |
        +-------------------+         +-------------------+
          |         |                         |         |
          |     .-- | -----------------------'          |
          |    |    |     ,----------------------------'
          v    v    v    v
        +-------------------+
result: | m0 | v1 | m1 | v3 |
        +-------------------+
```

### [masked\_load ¶](#masked_load)

```
masked_load :: intrinsics.simd_masked_load  
masked_load :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) -> #simd[N]T where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a masked load into the vector.

This procedure performs a masked load from memory, into the vector. The `ptr`
argument specifies the base address from which the values of the vector
will be loaded. The mask selects the source for the result vector's lanes. If
the mask for the corresponding lane has the value `true` (lowest bit set), the
result lane is loaded from memory. Otherwise the result lane is loaded from the
corresponding lane of the `val` vector.

**Inputs:**  
`ptr`: The address of the vector values to load. Masked-off values are not

```
accessed.
```

`val`: The vector of values that will be loaded into the masked slots of the

```
result vector.
```

`mask`: The mask that selects where to load the values from.

**Returns:**  
The loaded vector. The lanes for which the mask was set are loaded from
memory, and the other lanes are loaded from the `val` vector.

**Operation:**

```
for i in 0 ..< len(res) {
	if mask[i]&1 == 1 {
		res[i] = ptr[i]
	} else {
		res[i] = vals[i]
	}
}
return res
```


**Example:**

```
// The following code loads two values from the `src` vector, the first and the
// third value (selected by the mask). The masked-off values are given the value
// of 127 (`0x7f`).

import "core:fmt"
import "core:simd"

simd_masked_load_example :: proc() {
	src := [4] f32 {1, 2, 3, 4};
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	res := simd.masked_load(&src, vals, mask)
	fmt.println(res)
}
```

**Output:**

```
<1, 127, 3, 127>
```

The graphic below demonstrates the flow of lanes.

```
      +-------------------------------+ 
mask: |   1   |   0   |   1   |   0   | 
      +-------------------------------+ 
        |         |       |       `----------------------------.
        |         |       |                                    |
        |          `----  |  ------------------------.         |
ptr     v                 v                          v         v
+---->+-------------------------------+       +-------------------+
      |   v1  |   v2  |   v3  |   v4  | vals: | d0 | d1 | d2 | d3 |
      +-------------------------------+       +-------------------+
          |               |                          |         |
          |          .--- | -------------------------'         |
          |         |     |          ,-------------------------'
          v         v     v         v
        +-------------------------------+
result: |  v1   |   d1  |  v3   |  d3   |
        +-------------------------------+
```

### [masked\_store ¶](#masked_store)

```
masked_store :: intrinsics.simd_masked_store  
masked_store :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a masked store to memory.

This procedure performs a masked store from a vector `val`, into memory at
address `ptr`, with the `mask` deciding which lanes are going to be stored,
and which aren't. If the mask at a corresponding lane has the value `true`
(lowest bit set), the lane is stored into memory. Otherwise the lane is not
stored into memory.

**Inputs:**  
`ptr`: The base address of the store.
`val`: The vector to store.
`mask`: The mask, selecting which lanes of the vector to store into memory.

**Operation:**

```
for i in 0 ..< len(val) {
	if mask[i]&1 == 1 {
		ptr[i] = val
	}
}
```


**Example:**

```
// Example below stores the value 127 into the first and the third slot of the
// vector `v`.

import "core:fmt"
import "core:simd"

simd_masked_store_example :: proc() {
	v := [4] f32 {1, 2, 3, 4};
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	simd.masked_store(&v, vals, mask)
	fmt.println(v)
}
```

**Output:**

```
[127, 2, 127, 4]
```

The graphic below shows the flow of lanes:

```
      +-------------------+
mask: | 1  | 0  | 1  | 0  |
      +-------------------+
        |    |    |    |
        v    X    v    X
      +-------------------+
vals: | v0 | v1 | v2 | v3 |
      +-------------------+
         |         \
ptr      v          v
 +--->+-----------------------+
      | v0  | ... | v2  | ... |
      +-----------------------+
```

### [max ¶](#max)

```
max :: intrinsics.simd_max  
max :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Maximum of each lane of vectors.

This procedure returns a vector, such that each lane has the maximum value
between the corresponding lanes in vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector containing with maximum values from corresponding lanes of `a` and `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] > b[i] {
		res[i] = a[i]
	} else {
		res[i] = b[i]
	}
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  2  |  1  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  |  2  |  2  |  3  |
   +-----+-----+-----+-----+
```

### [min ¶](#min)

```
min :: intrinsics.simd_min  
min :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Minimum of each lane of vectors.

This procedure returns a vector, such that each lane has the minimum value
between the corresponding lanes in vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector containing with minimum values from corresponding lanes of `a` and `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] < b[i] {
		res[i] = a[i]
	} else {
		res[i] = b[i]
	}
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  2  |  1  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  |  1  |  1  | -1  |
   +-----+-----+-----+-----+
```

### [mul ¶](#mul)

```
mul :: intrinsics.simd_mul  
mul :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Multiply (component-wise) SIMD vectors.

This procedure returns a vector, where each lane holds the product of the
corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector that is the product of two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] * b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  2  |  2  |  2  |  2  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  | -1  |  2  | -3  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  | -2  |  4  | -6  |
   +-----+-----+-----+-----+
```

### [nearest ¶](#nearest)

```
nearest :: intrinsics.simd_nearest  
nearest :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

Compute the nearest integer of each lane in a SIMD vector.

### [neg ¶](#neg)

```
neg :: intrinsics.simd_neg  
neg :: proc(a: #simd[N]T) -> #simd[N]T {…}
```

 

Negation of a SIMD vector.

This procedure returns a vector where each lane is the negation of the
corresponding lane in the vector `a`.

**Inputs:**  
`a`: An integer or a float vector to negate.

**Returns:**  
The negated version of the vector `a`.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = -a[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: |   0  |   1  |   2  |   3  |
   +------+------+------+------+
res:
   +------+------+------+------+
   |   0  |  -1  |  -2  |  -3  |
   +------+------+------+------+
```

### [odd\_even ¶](#odd_even)

```
odd_even :: intrinsics.simd_odd_even
```

 

**Operation**

```
#assert(len(a) == len(b))
res := 0
N :: len(a)
for i in 0 ..< N/2 {
	res[i] = a[2*i + 1]
}
for i in 0 ..< N/2 {
	res[i + N/2] = b[2*i]
}
return res
```

### [pairwise\_add ¶](#pairwise_add)

```
pairwise_add :: intrinsics.simd_pairwise_add
```

### [pairwise\_sub ¶](#pairwise_sub)

```
pairwise_sub :: intrinsics.simd_pairwise_add
```

### [recip ¶](#recip) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2827)

```
recip :: proc "contextless" (v: $T/#simd[0]$E) -> $$deferred_return {…}
```

 

Calculate reciprocals of SIMD lanes.

This procedure returns a vector where each lane is the reciprocal of the
corresponding lane in the vector `a`.

**Inputs:**  
`a`: An integer or a float vector to negate.

**Returns:**  
Negated vector.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = 1.0 / a[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: |   2  |   1  |   3  |   5  |
   +------+------+------+------+
res:
   +------+------+------+------+
   |  0.5 |   1  | 0.33 |  0.2 |
   +------+------+------+------+
```

### [reduce\_add\_bisect ¶](#reduce_add_bisect)

```
reduce_add_bisect :: intrinsics.simd_reduce_add_bisect
```

 

Reduce a vector to a scalar by adding up all the lanes in a bisecting fashion.

This procedure returns a scalar that is the sum of all lanes, calculated by
bisecting the vector into two parts, where the first contains lanes [0, N/2)
and the second contains lanes [N/2, N), and adding the two halves element-wise
to produce N/2 values. This is repeated until only a single element remains.
This order may be faster to compute than the ordered sum for floats, as it can
often be better parallelized.

The order of the sum may be important for accounting for precision errors in
floating-point computation, as floating-point addition is not associative, that
is `(a+b)+c` may not be equal to `a+(b+c)`.

**Inputs:**  
`v`: The vector to reduce.

Result:
Sum of all lanes, as a scalar.

**Operation:**

```
for n > 1 {
	n = n / 2
	for i in 0 ..< n {
		a[i] += a[i+n]
	}
}
res := a[0]
```

Graphical representation of the operation for N=4:

```
     +-----------------------+
     | v0  | v1  | v2  | v3  |
     +-----------------------+
        |     |     |     |
       [+]<-- | ---'      |
        |    [+]<--------'
        |     |
        `>[+]<'
           |
           v
        +-----+
result: | y0  |
        +-----+
```

### [reduce\_add\_ordered ¶](#reduce_add_ordered)

```
reduce_add_ordered :: intrinsics.simd_reduce_add_ordered  
reduce_add_ordered :: proc(a: #simd[N]T) -> T {…}
```

 

Reduce a vector to a scalar by adding up all the lanes in an ordered fashion.

This procedure returns a scalar that is the ordered sum of all lanes. The
ordered sum may be important for accounting for precision errors in
floating-point computation, as floating-point addition is not associative,
that is `(a+b)+c` may not be equal to `a+(b+c)`.

**Inputs:**  
`a`: The vector to reduce.

Result:
Sum of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res += a[i]
}
```

### [reduce\_add\_pairs ¶](#reduce_add_pairs)

```
reduce_add_pairs :: intrinsics.simd_reduce_add_pairs
```

 

Reduce a vector to a scalar by adding up all the lanes in a pairwise fashion.

This procedure returns a scalar that is the sum of all lanes, calculated by
adding each even-indexed element with the following odd-indexed element to
produce N/2 values. This is repeated until only a single element remains. This
order is supported by hardware instructions for some types/architectures (e.g.
i16/i32/f32/f64 on x86 SSE, i8/i16/i32/f32 on ARM NEON).

The order of the sum may be important for accounting for precision errors in
floating-point computation, as floating-point addition is not associative, that
is `(a+b)+c` may not be equal to `a+(b+c)`.

**Inputs:**  
`v`: The vector to reduce.

Result:
Sum of all lanes, as a scalar.

**Operation:**

```
for n > 1 {
	n = n / 2
	for i in 0 ..< n {
		a[i] = a[2*i+0] + a[2*i+1]
	}
}
res := a[0]
```

Graphical representation of the operation for N=4:

```
   +-----------------------+
v: | v0  | v1  | v2  | v3  |
   +-----------------------+
      |     |     |     |
      `>[+]<'     `>[+]<'
         |           |
         `--->[+]<--'
               |
               v
            +-----+
    result: | y0  |
            +-----+
```

### [reduce\_all ¶](#reduce_all)

```
reduce_all :: intrinsics.simd_reduce_all  
reduce_all :: proc(a: #simd[N]T) -> T where type_is_boolean(T) {…}
```

 

Reduce SIMD vector to a scalar by performing bitwise AND of all of the lanes.

This procedure returns a scalar that is the result of the bitwise AND operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise AND of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res &= a[i]
}
```

### [reduce\_and ¶](#reduce_and)

```
reduce_and :: intrinsics.simd_reduce_and  
reduce_and :: proc(a: #simd[N]T) -> T {…}
```

 

Reduce a vector to a scalar by performing bitwise AND of all of the lanes.

This procedure returns a scalar that is the result of the bitwise AND operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise AND of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res &= a[i]
}
```

### [reduce\_any ¶](#reduce_any)

```
reduce_any :: intrinsics.simd_reduce_any  
reduce_any :: proc(a: #simd[N]T) -> T where type_is_boolean(T) {…}
```

 

Reduce SIMD vector to a scalar by performing bitwise OR of all of the lanes.

This procedure returns a scalar that is the result of the bitwise OR operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise OR of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res |= a[i]
}
```

### [reduce\_max ¶](#reduce_max)

```
reduce_max :: intrinsics.simd_reduce_max  
reduce_max :: proc(a: #simd[N]T) -> T {…}
```

 

Reduce a vector to a scalar by finding the maximum value between all of the lanes.

This procedure returns a scalar that is the maximum value of all the lanes
in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Maximum value of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res = max(res, a[i])
}
```

### [reduce\_min ¶](#reduce_min)

```
reduce_min :: intrinsics.simd_reduce_min  
reduce_min :: proc(a: #simd[N]T) -> T {…}
```

 

Reduce a vector to a scalar by finding the minimum value between all of the lanes.

This procedure returns a scalar that is the minimum value of all the lanes
in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Minimum value of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res = min(res, a[i])
}
```

### [reduce\_mul\_bisect ¶](#reduce_mul_bisect)

```
reduce_mul_bisect :: intrinsics.simd_reduce_mul_bisect
```

 

Reduce a vector to a scalar by multiplying up all the lanes in a bisecting fashion.

This procedure returns a scalar that is the product of all lanes, calculated by
bisecting the vector into two parts, where the first contains indices [0, N/2)
and the second contains indices [N/2, N), and multiplying the two halves
together element-wise to produce N/2 values. This is repeated until only a
single element remains. This order may be faster to compute than the ordered
product for floats, as it can often be better parallelized.

The order of the product may be important for accounting for precision errors
in floating-point computation, as floating-point multiplication is not
associative, that is `(a*b)*c` may not be equal to `a*(b*c)`.

**Inputs:**  
`v`: The vector to reduce.

Result:
Product of all lanes, as a scalar.

**Operation:**

```
for n > 1 {
	n = n / 2
	for i in 0 ..< n {
		a[i] *= a[i+n]
	}
}
res := a[0]
```

Graphical representation of the operation for N=4:

```
     +-----------------------+
     | v0  | v1  | v2  | v3  |
     +-----------------------+
        |     |     |     |
       [x]<-- | ---'      |
        |    [x]<--------'
        |     |
        `>[x]<'
           |
           v
        +-----+
result: | y0  |
        +-----+
```

### [reduce\_mul\_ordered ¶](#reduce_mul_ordered)

```
reduce_mul_ordered :: intrinsics.simd_reduce_mul_ordered  
reduce_mul_ordered :: proc(a: #simd[N]T) -> T {…}
```

 

Reduce a vector to a scalar by multiplying all the lanes in an ordered fashion.

This procedure returns a scalar that is the ordered product of all lanes.
The ordered product may be important for accounting for precision errors in
floating-point computation, as floating-point multiplication is not associative,
that is `(a*b)*c` may not be equal to `a*(b*c)`.

**Inputs:**  
`a`: The vector to reduce.

Result:
Product of all lanes, as a scalar.

**Operation:**

```
res := 1
for i in 0 ..< len(a) {
	res *= a[i]
}
```

### [reduce\_mul\_pairs ¶](#reduce_mul_pairs)

```
reduce_mul_pairs :: intrinsics.simd_reduce_mul_pairs
```

 

Reduce a vector to a scalar by multiplying all the lanes in a pairwise fashion.

This procedure returns a scalar that is the product of all lanes, calculated by
bisecting the vector into two parts, where the first contains lanes [0, N/2)
and the second contains lanes [N/2, N), and multiplying the two halves together
multiplying each even-indexed element with the following odd-indexed element to
produce N/2 values. This is repeated until only a single element remains. This
order may be faster to compute than the ordered product for floats, as it can
often be better parallelized.

The order of the product may be important for accounting for precision errors
in floating-point computation, as floating-point multiplication is not
associative, that is `(a*b)*c` may not be equal to `a*(b*c)`.

**Inputs:**  
`v`: The vector to reduce.

Result:
Product of all lanes, as a scalar.

**Operation:**

```
for n > 1 {
	n = n / 2
	for i in 0 ..< n {
		a[i] = a[2*i+0] * a[2*i+1]
	}
}
res := a[0]
```

Graphical representation of the operation for N=4:

```
   +-----------------------+
v: | v0  | v1  | v2  | v3  |
   +-----------------------+
      |     |     |     |
      `>[x]<'     `>[x]<'
         |           |
         `--->[x]<--'
               |
               v
            +-----+
    result: | y0  |
            +-----+
```

### [reduce\_or ¶](#reduce_or)

```
reduce_or :: intrinsics.simd_reduce_or  
reduce_or :: proc(a: #simd[N]T) -> T {…}
```

 

Reduce a vector to a scalar by performing bitwise OR of all of the lanes.

This procedure returns a scalar that is the result of the bitwise OR operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise OR of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res |= a[i]
}
```

### [reduce\_xor ¶](#reduce_xor)

```
reduce_xor :: intrinsics.simd_reduce_xor  
reduce_xor :: proc(a: #simd[N]T) -> T {…}
```

 

Reduce SIMD vector to a scalar by performing bitwise XOR of all of the lanes.

This procedure returns a scalar that is the result of the bitwise XOR operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise XOR of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res ~= a[i]
}
```

### [replace ¶](#replace)

```
replace :: intrinsics.simd_replace  
replace :: proc(a: #simd[N]T, idx: uint, elem: T) -> #simd[N]T {…}
```

 

Replace the value in a vector's lane.

This procedure places a scalar value at the lane corresponding to the given index of
the vector.

**Inputs:**  
`a`: The vector to replace a lane in.
`idx`: The lane index.
`elem`: The scalar to place.

**Returns:**  
Vector with the specified lane replaced.

**Operation:**

```
a[idx] = elem
```

### [reverse\_bits ¶](#reverse_bits)

```
reverse_bits :: intrinsics.reverse_bits  
reverse_bits :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Reverse the bit pattern of a SIMD vector.

### [runtime\_swizzle ¶](#runtime_swizzle)

```
runtime_swizzle :: intrinsics.simd_runtime_swizzle  
runtime_swizzle :: proc(table: #simd[N]T, indices: #simd[N]T) -> #simd[N]T where type_is_integer(T) {…}
```

 

Runtime Equivalent to Shuffle.

Performs element-wise table lookups using runtime indices.
Each element in the indices vector selects an element from the table vector.
The indices are automatically masked to prevent out-of-bounds access.

This operation is hardware-accelerated on most platforms when using 8-bit
integer vectors. For other element types or unsupported vector sizes, it
falls back to software emulation.

**Inputs:**  
`table`: The lookup table vector (should be power-of-2 size for correct masking).
`indices`: The indices vector (automatically masked to valid range).

**Returns:**  
A vector where `result[i] = table[indices[i] & (table_size-1)]`.

**Operation:**

```
for i in 0 ..< len(indices) {
	masked_index := indices[i] & (len(table) - 1)
	result[i] = table[masked_index]
}
return result
```

Implementation:

```
| Platform    | Lane Size                                 | Implementation      |
|-------------|-------------------------------------------|---------------------|
| x86-64      | pshufb (16B), vpshufb (32B), AVX512 (64B) | Single vector       |
| ARM64       | tbl1 (16B), tbl2 (32B), tbl4 (64B)        | Automatic splitting |
| ARM32       | vtbl1 (8B), vtbl2 (16B), vtbl4 (32B)      | Automatic splitting |
| WebAssembly | i8x16.swizzle (16B), Emulation (>16B)     | Mixed               |
| Other       | Emulation                                 | Software            |
```

**Example:**

```
import "core:simd"
import "core:fmt"

runtime_swizzle_example :: proc() {
	table := simd.u8x16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}
	indices := simd.u8x16{15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
	result := simd.runtime_swizzle(table, indices)
	fmt.println(result) // Expected: {15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
}
```

### [saturating\_abs ¶](#saturating_abs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2872)

```
saturating_abs :: proc "contextless" (v: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [saturating\_add ¶](#saturating_add)

```
saturating_add :: intrinsics.simd_saturating_add  
saturating_add :: proc(a, b: #simd[N]T) -> #simd[N]T where type_is_integer(T) {…}
```

 

Saturated addition of SIMD vectors.

The *saturated sum* is a just like a normal sum, except the treatment of the
result upon overflow or underflow is different. In saturated operations, the
result is not wrapped to the bit-width of the lane, and instead is kept clamped
between the minimum and the maximum values of the lane type.

This procedure returns a vector where each lane is the saturated sum of the
corresponding lanes of vectors `a` and `b`.

**Inputs:**  
`a`: An integer vector.
`b`: An integer vector.

**Returns:**  
The saturated sum of the two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	switch {
	case b[i] >= max(type_of(a[i])) - a[i]: // (overflow of a[i])
		res[i] = max(type_of(a[i]))
	case b[i] <= min(type_of(a[i])) - a[i]: // (underflow of a[i])
		res[i] = min(type_of(a[i]))
	} else {
		res[i] = a[i] + b[i]
	}
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-----+-----+-----+-----+
a: |  0  | 255 |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  1  |  3  |  2  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  1  | 255 |  4  |  2  |
   +-----+-----+-----+-----+
```

### [saturating\_neg ¶](#saturating_neg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2867)

```
saturating_neg :: proc "contextless" (v: $T/#simd[0]$E) -> $$deferred_return {…}
```

### [saturating\_sub ¶](#saturating_sub)

```
saturating_sub :: intrinsics.simd_saturating_sub  
saturating_sub :: proc(a, b: #simd[N]T) -> #simd[N]T where type_is_integer(T) {…}
```

 

Saturated subtraction of 2 lanes of vectors.

The *saturated difference* is a just like a normal difference, except the treatment of the
result upon overflow or underflow is different. In saturated operations, the
result is not wrapped to the bit-width of the lane, and instead is kept clamped
between the minimum and the maximum values of the lane type.

This procedure returns a vector where each lane is the saturated difference of
the corresponding lanes of vectors `a` and `b`.

**Inputs:**  
`a`: An integer vector to subtract from.
`b`: An integer vector.

**Returns:**  
The saturated difference of the two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	switch {
	case b[i] >= max(type_of(a[i])) + a[i]: // (overflow of a[i])
		res[i] = max(type_of(a[i]))
	case b[i] <= min(type_of(a[i])) + a[i]: // (underflow of a[i])
		res[i] = min(type_of(a[i]))
	} else {
		res[i] = a[i] - b[i]
	}
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-----+-----+-----+-----+
a: |  0  | 255 |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  3  |  3  |  2  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  | 252 |  0  |  4  |
   +-----+-----+-----+-----+
```

### [scatter ¶](#scatter)

```
scatter :: intrinsics.simd_scatter  
scatter :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a scatter store from a vector.

A *scatter* operation is a memory store operation that stores values from a
vector into multiple memory locations. This operation is effectively the
opposite of the *gather* operation.

**Inputs:**  
`ptr`: A vector of memory locations. Each masked location will be written

```
to with a value from the `val` vector. Pointers in this vector can be `nil`
or any other invalid value if the corresponding value in the `mask`
parameter is zero.
```

`val`: A vector of values to write to the memory locations.
`mask`: A vector of booleans or unsigned integers that decides which lanes

```
get written to memory. If the value of the mask is `true` (the lowest bit
set), the corresponding lane is written into memory. Otherwise it's not
written into memory.
```

**Operation:**

```
for i in 0 ..< len(ptr) {
	if mask[i]&1 == 1 {
		ptr[i]^ = val[i]
	}
}
```


**Example:**

```
// Example below writes value `127` to the second element of two different
// vectors. The addresses of store destinations are written to the first and the
// third argument of the `ptr` vector, and the `mask` is set accordingly.

import "core:fmt"
import "core:simd"

simd_scatter_example :: proc() {
	v1 := [4] f32 {1, 2, 3, 4};
	v2 := [4] f32 {5, 6, 7, 8};
	ptrs := #simd [4]rawptr { &v1[1], nil, &v2[1], nil }
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	simd.scatter(ptrs, vals, mask)
	fmt.println(v1)
	fmt.println(v2)
}
```

**Output:**

```
[1, 127, 3, 4]
[5, 127, 7, 8]
```

The graphic below shows how the data gets written into memory.

```
      +-------------------+
mask: | 1  | 0  | 1  | 0  |
      +-------------------+
        |    |    |    |
        v    X    v    X
      +-------------------+
vals: | d0 | d1 | d2 | d3 |
      +-------------------+
         |         \
         v          v
      +-----------------------+
ptrs: | &m0 | nil | &m2 | nil |
      +-----------------------+
```

### [select ¶](#select)

```
select :: intrinsics.simd_select  
select :: proc(cond: #simd[N]boolean_or_integer, true, false: #simd[N]T) -> #simd[N]T {…}
```

 

Select values from one of the two vectors.

This procedure returns a vector, which has, on each lane a value from one of the
corresponding lanes in one of the two input vectors based on the `cond`
parameter. On each lane, if the value of the `cond` parameter is `true` (or
non-zero), the result lane will have a value from the `true` input vector,
otherwise the result lane will have a value from the `false` input vector.

**Inputs:**  
`cond`: The condition vector.
`true`: The first input vector.
`false`: The second input vector.

Result:
The result of selecting values from the two input vectors.

**Operation:**

```
res = {}
for i in 0 ..< len(cond) {
	if cond[i] {
		res[i] = true[i]
	} else {
		res[i] = false[i]
	}
}
return res
```


**Example:**

```
// The following example selects values from the two input vectors, `a` and `b`
// into a single vector.

import "core:fmt"
import "core:simd"

simd_select_example :: proc() {
	a := #simd [4] f64 { 1,2,3,4 }
	b := #simd [4] f64 { 5,6,7,8 }
	cond := #simd[4] int { 1, 0, 1, 0 }
	fmt.println(simd.select(cond,a,b))
}
```

**Output:**

```
<1, 6, 3, 8>
```

Graphically, the operation looks as follows. The `t` and `f` represent the
`true` and `false` vectors respectively:

```
      0     1     2     3            0     1     2     3
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
t:    |  1  |  2  |  3  |  4  |  f:  |  5  |  6  |  7  |  8  |
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
         ^           ^                        ^           ^
         |           |                        |           |
         |           |                        |           |
         |      .--- | ----------------------'            |
         |     |     |     .-----------------------------'
      +-----+-----+-----+-----+
cond: |  1  |  0  |  1  |  0  |
      +-----+-----+-----+-----+
         ^     ^     ^     ^
         |     |     |     |
      +-----+-----+-----+-----+
res:  |  1  |  5  |  3  |  6  |
      +-----+-----+-----+-----+
```

### [shl ¶](#shl)

```
shl :: intrinsics.simd_shl  
shl :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Shift left lanes of a vector.

This procedure returns a vector, such that each lane holds the result of a
shift-left (aka shift-up) operation of the corresponding lane from vector `a` by the shift
amount from the corresponding lane of the vector `b`.

If the shift amount is greater than the bit-width of a lane, the result is `0`
in the corresponding positions of the result.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted left by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if b[i] < 8*size_of(a[i]) {
		res[i] = a[i] << b[i]
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
// An example for a 4-lane 8-bit signed integer vector `a`.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x44 |  0xaa |   0   |  0xfe  |
   +-------+-------+-------+--------+
```

### [shl\_masked ¶](#shl_masked)

```
shl_masked :: intrinsics.simd_shl_masked  
shl_masked :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Shift left lanes of a vector (masked).

This procedure returns a vector, such that each lane holds the result of a
shift-left (aka shift-up) operation, of lane from the vector `a` by the shift
amount from the corresponding lane of the vector `b`.

The shift amount is wrapped (masked) to the bit-width of the lane.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted left by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	mask := 8*size_of(a[i]) - 1
	res[i] = a[i] << (b[i] & mask)
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x44 |  0xaa |  0x06 |  0xfe  |
   +-------+-------+-------+--------+
```

### [shr ¶](#shr)

```
shr :: intrinsics.simd_shr  
shr :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Shift right lanes of a vector.

This procedure returns a vector, such that each lane holds the result of a
shift-right (aka shift-down) operation, of lane from the vector `a` by the shift
amount from the corresponding lane of the vector `b`.

If the shift amount is greater than the bit-width of a lane, the result is `0`
in the corresponding positions of the result.

If the first vector is a vector of signed integers, the arithmetic shift
operation is performed. Otherwise, if the first vector is a vector of unsigned
integers, a logical shift is performed.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted right by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if b[i] < 8*size_of(a[i]) {
		res[i] = a[i] >> b[i]
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
// An example for a 4-lane 8-bit signed integer vector `a`.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x04 |  0x2a |   0   |  0x7f  |
   +-------+-------+-------+--------+
```

### [shr\_masked ¶](#shr_masked)

```
shr_masked :: intrinsics.simd_shr_masked  
shr_masked :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Shift right lanes of a vector (masked).

This procedure returns a vector, such that each lane holds the result of a
shift-right (aka shift-down) operation, of lane from the vector `a` by the shift
amount from the corresponding lane of the vector `b`.

The shift amount is wrapped (masked) to the bit-width of the lane.

If the first vector is a vector of signed integers, the arithmetic shift
operation is performed. Otherwise, if the first vector is a vector of unsigned
integers, a logical shift is performed.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted right by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	mask := 8*size_of(a[i]) - 1
	res[i] = a[i] >> (b[i] & mask)
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x04 |  0x2a |  0x01 |  0x7f  |
   +-------+-------+-------+--------+
```

### [shuffle ¶](#shuffle)

```
shuffle :: intrinsics.simd_shuffle  
shuffle :: proc(a, b: #simd[N]T, $indices: ..int) -> #simd[len(indices)]T {…}
```

 

Reorder the lanes of two SIMD vectors.

This procedure returns a vector, containing the scalars from the lanes of two
vectors, according to the provided indices vector. Each index in the indices
vector specifies, the lane of the scalar from one of the two input vectors,
which will be written at the corresponding position of the result vector. If
the index is within bounds 0 ..< len(A), it corresponds to the indices of the
first input vector. Otherwise the index corresponds to the indices of the second
input vector.

**Inputs:**  
`a`: The first input vector.
`b`: The second input vector.
`indices`: The indices.

Result:
Input vectors, shuffled according to the indices.

**Operation:**

```
res = {}
for i in 0 ..< len(indices) {
	idx = indices[i];
	if idx < len(a) {
		res[i] = a[idx]
	} else {
		res[i] = b[idx]
	}
}
return res
```


**Example:**

```
// The example below shows how the indices are used to determine lanes of the
// input vector that are shuffled into the result vector.

import "core:fmt"
import "core:simd"

simd_shuffle_example :: proc() {
	a := #simd [4]f32 { 1, 2, 3, 4 }
	b := #simd [4]f32 { 5, 6, 7, 8 }
	res := simd.shuffle(a, b, 0, 4, 2, 5)
	fmt.println(res)
}
```

**Output:**

```
<1, 5, 3, 6>
```

The graphical representation of the operation is as follows. The `idx` vector in
the picture represents the `indices` parameter:

```
      0     1     2     3            4     5     6     7
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
a:    |  1  |  2  |  3  |  4  |  b:  |  5  |  6  |  7  |  8  |
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
         ^           ^                  ^     ^
         |           |                  |     |
         |           |                  |     |
         |      .--- | ----------------'      |
         |     |     |     .-----------------'
      +-----+-----+-----+-----+
idx:  |  0  |  4  |  2  |  5  |
      +-----+-----+-----+-----+
         ^     ^     ^     ^
         |     |     |     |
      +-----+-----+-----+-----+
res:  |  1  |  5  |  3  |  6  |
      +-----+-----+-----+-----+
```

### [sign\_bit ¶](#sign_bit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2789)

```
sign_bit :: proc "contextless" (v: $T/#simd[0]$E) -> (res: $$deferred_return) {…}
```

### [signum ¶](#signum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2783)

```
signum :: proc "contextless" (v: $T/#simd[0]$E) -> $$deferred_return {…}
```

 

Return signs of SIMD lanes.

This procedure returns a vector, each lane of which contains either +1.0 or
-1.0 depending on the sign of the value in the corresponding lane of the
input vector. If the lane of the input vector has NaN, then the result vector
will contain this NaN value as-is.

### [sqrt ¶](#sqrt)

```
sqrt :: intrinsics.sqrt  
sqrt :: proc(x: $T) -> T where type_is_float(T) || (type_is_simd_vector(T) && type_is_float(type_elem_type(T))) {…}
```

 

Compute the square root of each lane in a SIMD vector.

### [sub ¶](#sub)

```
sub :: intrinsics.simd_sub  
sub :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Subtract SIMD vectors.

This procedure returns a vector, where each lane holds the difference between
the corresponding lanes of the vectors `a` and `b`. The lanes from the vector
`b` are subtracted from the corresponding lanes of the vector `a`.

**Inputs:**  
`a`: An integer or a float vector to subtract from.
`b`: An integer or a float vector.

**Returns:**  
A vector that is the difference of two vectors, `a` - `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] - b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  2  |  2  |  2  |  2  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  2  |  1  |  0  | -1  |
   +-----+-----+-----+-----+
```

### [sums\_of\_n ¶](#sums_of_n)

```
sums_of_n :: intrinsics.simd_sums_of_n
```

### [swizzle ¶](#swizzle)

```
swizzle :: builtin.swizzle
```

 

Reorder the lanes of a SIMD vector.

This procedure reorders the lanes of a vector, according to the provided
indices. The number of indices correspond to the number of lanes in the
result vector and must be the same as the number of lanes of the input vector.
Each index specifies, the lane of the scalar from the input vector, which
will be written at the corresponding position of the result vector.

**Inputs:**  
`x`: The input vector.
`indices`: The indices of lanes to write to the result vector.

Result:
Swizzled input vector.

**Operation:**

```
res = {}
for i in 0 ..< len(indices) {
	res[i] = x[indices[i]]
}
return res
```


**Example:**

```
// The example below shows how the indices are used to determine which lanes of the
// input vector get written into the result vector.

import "core:fmt"
import "core:simd"

swizzle_example :: proc() {
	x := #simd [4]f32 { 1.5, 2.5, 3.5, 4.5 }
	res := simd.swizzle(x, 0, 3, 1, 1)
	fmt.println(res)
}
```

**Output:**

```
<1.5, 4.5, 2.5, 2.5>
```

The graphical representation of the operation is as follows. The `idx` vector in
the picture represents the `indices` parameter:

```
      0     1     2     3
      +-----+-----+-----+-----+
x:    | 1.5 | 2.5 | 3.5 | 4.5 |
      +-----+-----+-----+-----+
         ^     ^           ^
         |     |           |
         |      '----.     |
         |     .---- | ---'
         |     |     |
         |     |     +------.
      +-----+-----+-----+-----+
idx:  |  0  |  3  |  1  |  1  |
      +-----+-----+-----+-----+
         ^     ^     ^     ^
         |     |     |     |
      +-----+-----+-----+-----+
res:  | 1.5 | 3.5 | 2.5 | 2.5 |
      +-----+-----+-----+-----+
```

### [to\_array ¶](#to_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2710)

```
to_array :: proc "contextless" (v: #simd[0]$E) -> $$deferred_return {…}
```

 

Convert SIMD vector to an array.

### [to\_array\_ptr ¶](#to_array_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin#L2702)

```
to_array_ptr :: proc "contextless" (v: ^#simd[0]$E) -> $$deferred_return {…}
```

 

Convert pointer to SIMD vector to an array pointer.

### [to\_bits ¶](#to_bits)

```
to_bits :: intrinsics.simd_to_bits  
to_bits :: proc(v: #simd[N]T) -> #simd[N]Integer where size_of(T) == size_of(Integer), type_is_unsigned(Integer) {…}
```

 

Transmute a SIMD vector into an unsigned integer vector.

### [to\_bits\_signed ¶](#to_bits_signed)

```
to_bits_signed :: intrinsics.simd_to_bits_signed
```

 

Transmute a SIMD vector into a signed integer vector.

### [trunc ¶](#trunc)

```
trunc :: intrinsics.simd_trunc  
trunc :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

Truncate each lane in a SIMD vector.

## Procedure Groups

This section is empty.

## Source Files

* [simd.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/simd.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.235416900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [b16x16](#b16x16)
    + [b16x32](#b16x32)
    + [b16x8](#b16x8)
    + [b32x16](#b32x16)
    + [b32x4](#b32x4)
    + [b32x8](#b32x8)
    + [b64x2](#b64x2)
    + [b64x4](#b64x4)
    + [b64x8](#b64x8)
    + [b8x16](#b8x16)
    + [b8x32](#b8x32)
    + [b8x64](#b8x64)
    + [boolx16](#boolx16)
    + [boolx32](#boolx32)
    + [boolx64](#boolx64)
    + [f32x16](#f32x16)
    + [f32x4](#f32x4)
    + [f32x8](#f32x8)
    + [f64x2](#f64x2)
    + [f64x4](#f64x4)
    + [f64x8](#f64x8)
    + [i16x16](#i16x16)
    + [i16x32](#i16x32)
    + [i16x8](#i16x8)
    + [i32x16](#i32x16)
    + [i32x4](#i32x4)
    + [i32x8](#i32x8)
    + [i64x2](#i64x2)
    + [i64x4](#i64x4)
    + [i64x8](#i64x8)
    + [i8x16](#i8x16)
    + [i8x32](#i8x32)
    + [i8x64](#i8x64)
    + [u16x16](#u16x16)
    + [u16x32](#u16x32)
    + [u16x8](#u16x8)
    + [u32x16](#u32x16)
    + [u32x4](#u32x4)
    + [u32x8](#u32x8)
    + [u64x2](#u64x2)
    + [u64x4](#u64x4)
    + [u64x8](#u64x8)
    + [u8x16](#u8x16)
    + [u8x32](#u8x32)
    + [u8x64](#u8x64)
  * [Constants](#pkg-Constants)
    + [HAS\_HARDWARE\_SIMD](#HAS_HARDWARE_SIMD)
  * [Procedures](#pkg-Procedures)
    + [abs](#abs)
    + [abs\_diff](#abs_diff)
    + [add](#add)
    + [add\_sub](#add_sub)
    + [approx\_recip](#approx_recip)
    + [approx\_recip\_sqrt](#approx_recip_sqrt)
    + [bit\_and](#bit_and)
    + [bit\_and\_not](#bit_and_not)
    + [bit\_not](#bit_not)
    + [bit\_or](#bit_or)
    + [bit\_xor](#bit_xor)
    + [ceil](#ceil)
    + [clamp](#clamp)
    + [copysign](#copysign)
    + [count\_leading\_zeros](#count_leading_zeros)
    + [count\_ones](#count_ones)
    + [count\_trailing\_zeros](#count_trailing_zeros)
    + [count\_zeros](#count_zeros)
    + [div](#div)
    + [extract](#extract)
    + [extract\_lsbs](#extract_lsbs)
    + [extract\_msbs](#extract_msbs)
    + [floor](#floor)
    + [fma](#fma)
    + [from\_array](#from_array)
    + [from\_slice](#from_slice)
    + [fused\_mul\_add](#fused_mul_add)
    + [fused\_mul\_add\_sub](#fused_mul_add_sub)
    + [fused\_mul\_sub](#fused_mul_sub)
    + [fused\_mul\_sub\_add](#fused_mul_sub_add)
    + [fused\_neg\_mul\_add](#fused_neg_mul_add)
    + [fused\_neg\_mul\_sub](#fused_neg_mul_sub)
    + [gather](#gather)
    + [indices](#indices)
    + [iota](#iota)
    + [lanes\_eq](#lanes_eq)
    + [lanes\_ge](#lanes_ge)
    + [lanes\_gt](#lanes_gt)
    + [lanes\_le](#lanes_le)
    + [lanes\_lt](#lanes_lt)
    + [lanes\_ne](#lanes_ne)
    + [lanes\_reverse](#lanes_reverse)
    + [lanes\_rotate\_left](#lanes_rotate_left)
    + [lanes\_rotate\_right](#lanes_rotate_right)
    + [masked\_compress\_store](#masked_compress_store)
    + [masked\_expand\_load](#masked_expand_load)
    + [masked\_load](#masked_load)
    + [masked\_store](#masked_store)
    + [max](#max)
    + [min](#min)
    + [mul](#mul)
    + [nearest](#nearest)
    + [neg](#neg)
    + [odd\_even](#odd_even)
    + [pairwise\_add](#pairwise_add)
    + [pairwise\_sub](#pairwise_sub)
    + [recip](#recip)
    + [reduce\_add\_bisect](#reduce_add_bisect)
    + [reduce\_add\_ordered](#reduce_add_ordered)
    + [reduce\_add\_pairs](#reduce_add_pairs)
    + [reduce\_all](#reduce_all)
    + [reduce\_and](#reduce_and)
    + [reduce\_any](#reduce_any)
    + [reduce\_max](#reduce_max)
    + [reduce\_min](#reduce_min)
    + [reduce\_mul\_bisect](#reduce_mul_bisect)
    + [reduce\_mul\_ordered](#reduce_mul_ordered)
    + [reduce\_mul\_pairs](#reduce_mul_pairs)
    + [reduce\_or](#reduce_or)
    + [reduce\_xor](#reduce_xor)
    + [replace](#replace)
    + [reverse\_bits](#reverse_bits)
    + [runtime\_swizzle](#runtime_swizzle)
    + [saturating\_abs](#saturating_abs)
    + [saturating\_add](#saturating_add)
    + [saturating\_neg](#saturating_neg)
    + [saturating\_sub](#saturating_sub)
    + [scatter](#scatter)
    + [select](#select)
    + [shl](#shl)
    + [shl\_masked](#shl_masked)
    + [shr](#shr)
    + [shr\_masked](#shr_masked)
    + [shuffle](#shuffle)
    + [sign\_bit](#sign_bit)
    + [signum](#signum)
    + [sqrt](#sqrt)
    + [sub](#sub)
    + [sums\_of\_n](#sums_of_n)
    + [swizzle](#swizzle)
    + [to\_array](#to_array)
    + [to\_array\_ptr](#to_array_ptr)
    + [to\_bits](#to_bits)
    + [to\_bits\_signed](#to_bits_signed)
    + [trunc](#trunc)
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