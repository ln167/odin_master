package math/linalg/hlsl - pkg.odin-lang.org 






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



Current Package: *[math\_linalg\_hlsl](/core/math/linalg/hlsl)*

  

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
2. [math](/core/math)
3. [linalg](/core/math/linalg)
4. [hlsl](/core/math/linalg/hlsl)

# package core:math/linalg/hlsl [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`HLSL`-like mathematics library plus numerous other utility procedures.

## Index

Types (87)

* [bool2](#bool2)
* [bool3](#bool3)
* [bool4](#bool4)
* [double](#double)
* [double1x1](#double1x1)
* [double1x2](#double1x2)
* [double1x3](#double1x3)
* [double1x4](#double1x4)
* [double2](#double2)
* [double2x1](#double2x1)
* [double2x2](#double2x2)
* [double2x3](#double2x3)
* [double2x4](#double2x4)
* [double3](#double3)
* [double3x1](#double3x1)
* [double3x2](#double3x2)
* [double3x3](#double3x3)
* [double3x4](#double3x4)
* [double4](#double4)
* [double4x1](#double4x1)
* [double4x2](#double4x2)
* [double4x3](#double4x3)
* [double4x4](#double4x4)
* [float](#float)
* [float1x1](#float1x1)
* [float1x2](#float1x2)
* [float1x3](#float1x3)
* [float1x4](#float1x4)
* [float2](#float2)
* [float2x1](#float2x1)
* [float2x2](#float2x2)
* [float2x3](#float2x3)
* [float2x4](#float2x4)
* [float3](#float3)
* [float3x1](#float3x1)
* [float3x2](#float3x2)
* [float3x3](#float3x3)
* [float3x4](#float3x4)
* [float4](#float4)
* [float4x1](#float4x1)
* [float4x2](#float4x2)
* [float4x3](#float4x3)
* [float4x4](#float4x4)
* [half](#half)
* [half1x1](#half1x1)
* [half1x2](#half1x2)
* [half1x3](#half1x3)
* [half1x4](#half1x4)
* [half2](#half2)
* [half2x1](#half2x1)
* [half2x2](#half2x2)
* [half2x3](#half2x3)
* [half2x4](#half2x4)
* [half3](#half3)
* [half3x1](#half3x1)
* [half3x2](#half3x2)
* [half3x3](#half3x3)
* [half3x4](#half3x4)
* [half4](#half4)
* [half4x1](#half4x1)
* [half4x2](#half4x2)
* [half4x3](#half4x3)
* [half4x4](#half4x4)
* [int](#int)
* [int1x1](#int1x1)
* [int1x2](#int1x2)
* [int1x3](#int1x3)
* [int1x4](#int1x4)
* [int2](#int2)
* [int2x1](#int2x1)
* [int2x2](#int2x2)
* [int2x3](#int2x3)
* [int2x4](#int2x4)
* [int3](#int3)
* [int3x1](#int3x1)
* [int3x2](#int3x2)
* [int3x3](#int3x3)
* [int3x4](#int3x4)
* [int4](#int4)
* [int4x1](#int4x1)
* [int4x2](#int4x2)
* [int4x3](#int4x3)
* [int4x4](#int4x4)
* [uint](#uint)
* [uint2](#uint2)
* [uint3](#uint3)
* [uint4](#uint4)

Constants (13)

* [DOUBLE\_EPSILON](#DOUBLE_EPSILON)
* [E](#E)
* [FLOAT\_EPSILON](#FLOAT_EPSILON)
* [LN10](#LN10)
* [LN2](#LN2)
* [PI](#PI)
* [SQRT\_FIVE](#SQRT_FIVE)
* [SQRT\_THREE](#SQRT_THREE)
* [SQRT\_TWO](#SQRT_TWO)
* [TAU](#TAU)
* [e](#e)
* [π](#π)
* [τ](#τ)

Variables (0)

This section is empty.

Procedures (1119)

* [abs\_double](#abs_double)
* [abs\_double2](#abs_double2)
* [abs\_double3](#abs_double3)
* [abs\_double4](#abs_double4)
* [abs\_float](#abs_float)
* [abs\_float2](#abs_float2)
* [abs\_float3](#abs_float3)
* [abs\_float4](#abs_float4)
* [abs\_half](#abs_half)
* [abs\_half2](#abs_half2)
* [abs\_half3](#abs_half3)
* [abs\_half4](#abs_half4)
* [abs\_int](#abs_int)
* [abs\_int2](#abs_int2)
* [abs\_int3](#abs_int3)
* [abs\_int4](#abs_int4)
* [abs\_uint](#abs_uint)
* [abs\_uint2](#abs_uint2)
* [abs\_uint3](#abs_uint3)
* [abs\_uint4](#abs_uint4)
* [acos\_double](#acos_double)
* [acos\_double2](#acos_double2)
* [acos\_double3](#acos_double3)
* [acos\_double4](#acos_double4)
* [acos\_float](#acos_float)
* [acos\_float2](#acos_float2)
* [acos\_float3](#acos_float3)
* [acos\_float4](#acos_float4)
* [acos\_half](#acos_half)
* [acos\_half2](#acos_half2)
* [acos\_half3](#acos_half3)
* [acos\_half4](#acos_half4)
* [acosh\_double](#acosh_double)
* [acosh\_double2](#acosh_double2)
* [acosh\_double3](#acosh_double3)
* [acosh\_double4](#acosh_double4)
* [acosh\_float](#acosh_float)
* [acosh\_float2](#acosh_float2)
* [acosh\_float3](#acosh_float3)
* [acosh\_float4](#acosh_float4)
* [acosh\_half](#acosh_half)
* [acosh\_half2](#acosh_half2)
* [acosh\_half3](#acosh_half3)
* [acosh\_half4](#acosh_half4)
* [adjugate\_matrix1x1](#adjugate_matrix1x1)
* [adjugate\_matrix2x2](#adjugate_matrix2x2)
* [adjugate\_matrix3x3](#adjugate_matrix3x3)
* [adjugate\_matrix4x4](#adjugate_matrix4x4)
* [all\_bool](#all_bool)
* [all\_bool2](#all_bool2)
* [all\_bool3](#all_bool3)
* [all\_bool4](#all_bool4)
* [any\_bool](#any_bool)
* [any\_bool2](#any_bool2)
* [any\_bool3](#any_bool3)
* [any\_bool4](#any_bool4)
* [asdouble\_bool2](#asdouble_bool2)
* [asdouble\_bool3](#asdouble_bool3)
* [asdouble\_bool4](#asdouble_bool4)
* [asdouble\_double](#asdouble_double)
* [asdouble\_double1x1](#asdouble_double1x1)
* [asdouble\_double1x2](#asdouble_double1x2)
* [asdouble\_double1x3](#asdouble_double1x3)
* [asdouble\_double1x4](#asdouble_double1x4)
* [asdouble\_double2](#asdouble_double2)
* [asdouble\_double2x1](#asdouble_double2x1)
* [asdouble\_double2x2](#asdouble_double2x2)
* [asdouble\_double2x3](#asdouble_double2x3)
* [asdouble\_double2x4](#asdouble_double2x4)
* [asdouble\_double3](#asdouble_double3)
* [asdouble\_double3x1](#asdouble_double3x1)
* [asdouble\_double3x2](#asdouble_double3x2)
* [asdouble\_double3x3](#asdouble_double3x3)
* [asdouble\_double3x4](#asdouble_double3x4)
* [asdouble\_double4](#asdouble_double4)
* [asdouble\_double4x1](#asdouble_double4x1)
* [asdouble\_double4x2](#asdouble_double4x2)
* [asdouble\_double4x3](#asdouble_double4x3)
* [asdouble\_double4x4](#asdouble_double4x4)
* [asdouble\_float](#asdouble_float)
* [asdouble\_float1x1](#asdouble_float1x1)
* [asdouble\_float1x2](#asdouble_float1x2)
* [asdouble\_float1x3](#asdouble_float1x3)
* [asdouble\_float1x4](#asdouble_float1x4)
* [asdouble\_float2](#asdouble_float2)
* [asdouble\_float2x1](#asdouble_float2x1)
* [asdouble\_float2x2](#asdouble_float2x2)
* [asdouble\_float2x3](#asdouble_float2x3)
* [asdouble\_float2x4](#asdouble_float2x4)
* [asdouble\_float3](#asdouble_float3)
* [asdouble\_float3x1](#asdouble_float3x1)
* [asdouble\_float3x2](#asdouble_float3x2)
* [asdouble\_float3x3](#asdouble_float3x3)
* [asdouble\_float3x4](#asdouble_float3x4)
* [asdouble\_float4](#asdouble_float4)
* [asdouble\_float4x1](#asdouble_float4x1)
* [asdouble\_float4x2](#asdouble_float4x2)
* [asdouble\_float4x3](#asdouble_float4x3)
* [asdouble\_float4x4](#asdouble_float4x4)
* [asdouble\_half](#asdouble_half)
* [asdouble\_half1x1](#asdouble_half1x1)
* [asdouble\_half1x2](#asdouble_half1x2)
* [asdouble\_half1x3](#asdouble_half1x3)
* [asdouble\_half1x4](#asdouble_half1x4)
* [asdouble\_half2](#asdouble_half2)
* [asdouble\_half2x1](#asdouble_half2x1)
* [asdouble\_half2x2](#asdouble_half2x2)
* [asdouble\_half2x3](#asdouble_half2x3)
* [asdouble\_half2x4](#asdouble_half2x4)
* [asdouble\_half3](#asdouble_half3)
* [asdouble\_half3x1](#asdouble_half3x1)
* [asdouble\_half3x2](#asdouble_half3x2)
* [asdouble\_half3x3](#asdouble_half3x3)
* [asdouble\_half3x4](#asdouble_half3x4)
* [asdouble\_half4](#asdouble_half4)
* [asdouble\_half4x1](#asdouble_half4x1)
* [asdouble\_half4x2](#asdouble_half4x2)
* [asdouble\_half4x3](#asdouble_half4x3)
* [asdouble\_half4x4](#asdouble_half4x4)
* [asdouble\_int](#asdouble_int)
* [asdouble\_int2](#asdouble_int2)
* [asdouble\_int3](#asdouble_int3)
* [asdouble\_int4](#asdouble_int4)
* [asdouble\_uint](#asdouble_uint)
* [asdouble\_uint2](#asdouble_uint2)
* [asdouble\_uint3](#asdouble_uint3)
* [asdouble\_uint4](#asdouble_uint4)
* [asfloat\_bool2](#asfloat_bool2)
* [asfloat\_bool3](#asfloat_bool3)
* [asfloat\_bool4](#asfloat_bool4)
* [asfloat\_double](#asfloat_double)
* [asfloat\_double1x1](#asfloat_double1x1)
* [asfloat\_double1x2](#asfloat_double1x2)
* [asfloat\_double1x3](#asfloat_double1x3)
* [asfloat\_double1x4](#asfloat_double1x4)
* [asfloat\_double2](#asfloat_double2)
* [asfloat\_double2x1](#asfloat_double2x1)
* [asfloat\_double2x2](#asfloat_double2x2)
* [asfloat\_double2x3](#asfloat_double2x3)
* [asfloat\_double2x4](#asfloat_double2x4)
* [asfloat\_double3](#asfloat_double3)
* [asfloat\_double3x1](#asfloat_double3x1)
* [asfloat\_double3x2](#asfloat_double3x2)
* [asfloat\_double3x3](#asfloat_double3x3)
* [asfloat\_double3x4](#asfloat_double3x4)
* [asfloat\_double4](#asfloat_double4)
* [asfloat\_double4x1](#asfloat_double4x1)
* [asfloat\_double4x2](#asfloat_double4x2)
* [asfloat\_double4x3](#asfloat_double4x3)
* [asfloat\_double4x4](#asfloat_double4x4)
* [asfloat\_float](#asfloat_float)
* [asfloat\_float1x1](#asfloat_float1x1)
* [asfloat\_float1x2](#asfloat_float1x2)
* [asfloat\_float1x3](#asfloat_float1x3)
* [asfloat\_float1x4](#asfloat_float1x4)
* [asfloat\_float2](#asfloat_float2)
* [asfloat\_float2x1](#asfloat_float2x1)
* [asfloat\_float2x2](#asfloat_float2x2)
* [asfloat\_float2x3](#asfloat_float2x3)
* [asfloat\_float2x4](#asfloat_float2x4)
* [asfloat\_float3](#asfloat_float3)
* [asfloat\_float3x1](#asfloat_float3x1)
* [asfloat\_float3x2](#asfloat_float3x2)
* [asfloat\_float3x3](#asfloat_float3x3)
* [asfloat\_float3x4](#asfloat_float3x4)
* [asfloat\_float4](#asfloat_float4)
* [asfloat\_float4x1](#asfloat_float4x1)
* [asfloat\_float4x2](#asfloat_float4x2)
* [asfloat\_float4x3](#asfloat_float4x3)
* [asfloat\_float4x4](#asfloat_float4x4)
* [asfloat\_half](#asfloat_half)
* [asfloat\_half1x1](#asfloat_half1x1)
* [asfloat\_half1x2](#asfloat_half1x2)
* [asfloat\_half1x3](#asfloat_half1x3)
* [asfloat\_half1x4](#asfloat_half1x4)
* [asfloat\_half2](#asfloat_half2)
* [asfloat\_half2x1](#asfloat_half2x1)
* [asfloat\_half2x2](#asfloat_half2x2)
* [asfloat\_half2x3](#asfloat_half2x3)
* [asfloat\_half2x4](#asfloat_half2x4)
* [asfloat\_half3](#asfloat_half3)
* [asfloat\_half3x1](#asfloat_half3x1)
* [asfloat\_half3x2](#asfloat_half3x2)
* [asfloat\_half3x3](#asfloat_half3x3)
* [asfloat\_half3x4](#asfloat_half3x4)
* [asfloat\_half4](#asfloat_half4)
* [asfloat\_half4x1](#asfloat_half4x1)
* [asfloat\_half4x2](#asfloat_half4x2)
* [asfloat\_half4x3](#asfloat_half4x3)
* [asfloat\_half4x4](#asfloat_half4x4)
* [asfloat\_int](#asfloat_int)
* [asfloat\_int2](#asfloat_int2)
* [asfloat\_int3](#asfloat_int3)
* [asfloat\_int4](#asfloat_int4)
* [asfloat\_uint](#asfloat_uint)
* [asfloat\_uint2](#asfloat_uint2)
* [asfloat\_uint3](#asfloat_uint3)
* [asfloat\_uint4](#asfloat_uint4)
* [ashalf\_bool2](#ashalf_bool2)
* [ashalf\_bool3](#ashalf_bool3)
* [ashalf\_bool4](#ashalf_bool4)
* [ashalf\_double](#ashalf_double)
* [ashalf\_double1x1](#ashalf_double1x1)
* [ashalf\_double1x2](#ashalf_double1x2)
* [ashalf\_double1x3](#ashalf_double1x3)
* [ashalf\_double1x4](#ashalf_double1x4)
* [ashalf\_double2](#ashalf_double2)
* [ashalf\_double2x1](#ashalf_double2x1)
* [ashalf\_double2x2](#ashalf_double2x2)
* [ashalf\_double2x3](#ashalf_double2x3)
* [ashalf\_double2x4](#ashalf_double2x4)
* [ashalf\_double3](#ashalf_double3)
* [ashalf\_double3x1](#ashalf_double3x1)
* [ashalf\_double3x2](#ashalf_double3x2)
* [ashalf\_double3x3](#ashalf_double3x3)
* [ashalf\_double3x4](#ashalf_double3x4)
* [ashalf\_double4](#ashalf_double4)
* [ashalf\_double4x1](#ashalf_double4x1)
* [ashalf\_double4x2](#ashalf_double4x2)
* [ashalf\_double4x3](#ashalf_double4x3)
* [ashalf\_double4x4](#ashalf_double4x4)
* [ashalf\_float](#ashalf_float)
* [ashalf\_float1x1](#ashalf_float1x1)
* [ashalf\_float1x2](#ashalf_float1x2)
* [ashalf\_float1x3](#ashalf_float1x3)
* [ashalf\_float1x4](#ashalf_float1x4)
* [ashalf\_float2](#ashalf_float2)
* [ashalf\_float2x1](#ashalf_float2x1)
* [ashalf\_float2x2](#ashalf_float2x2)
* [ashalf\_float2x3](#ashalf_float2x3)
* [ashalf\_float2x4](#ashalf_float2x4)
* [ashalf\_float3](#ashalf_float3)
* [ashalf\_float3x1](#ashalf_float3x1)
* [ashalf\_float3x2](#ashalf_float3x2)
* [ashalf\_float3x3](#ashalf_float3x3)
* [ashalf\_float3x4](#ashalf_float3x4)
* [ashalf\_float4](#ashalf_float4)
* [ashalf\_float4x1](#ashalf_float4x1)
* [ashalf\_float4x2](#ashalf_float4x2)
* [ashalf\_float4x3](#ashalf_float4x3)
* [ashalf\_float4x4](#ashalf_float4x4)
* [ashalf\_half](#ashalf_half)
* [ashalf\_half1x1](#ashalf_half1x1)
* [ashalf\_half1x2](#ashalf_half1x2)
* [ashalf\_half1x3](#ashalf_half1x3)
* [ashalf\_half1x4](#ashalf_half1x4)
* [ashalf\_half2](#ashalf_half2)
* [ashalf\_half2x1](#ashalf_half2x1)
* [ashalf\_half2x2](#ashalf_half2x2)
* [ashalf\_half2x3](#ashalf_half2x3)
* [ashalf\_half2x4](#ashalf_half2x4)
* [ashalf\_half3](#ashalf_half3)
* [ashalf\_half3x1](#ashalf_half3x1)
* [ashalf\_half3x2](#ashalf_half3x2)
* [ashalf\_half3x3](#ashalf_half3x3)
* [ashalf\_half3x4](#ashalf_half3x4)
* [ashalf\_half4](#ashalf_half4)
* [ashalf\_half4x1](#ashalf_half4x1)
* [ashalf\_half4x2](#ashalf_half4x2)
* [ashalf\_half4x3](#ashalf_half4x3)
* [ashalf\_half4x4](#ashalf_half4x4)
* [ashalf\_int](#ashalf_int)
* [ashalf\_int2](#ashalf_int2)
* [ashalf\_int3](#ashalf_int3)
* [ashalf\_int4](#ashalf_int4)
* [ashalf\_uint](#ashalf_uint)
* [ashalf\_uint2](#ashalf_uint2)
* [ashalf\_uint3](#ashalf_uint3)
* [ashalf\_uint4](#ashalf_uint4)
* [asin\_double](#asin_double)
* [asin\_double2](#asin_double2)
* [asin\_double3](#asin_double3)
* [asin\_double4](#asin_double4)
* [asin\_float](#asin_float)
* [asin\_float2](#asin_float2)
* [asin\_float3](#asin_float3)
* [asin\_float4](#asin_float4)
* [asin\_half](#asin_half)
* [asin\_half2](#asin_half2)
* [asin\_half3](#asin_half3)
* [asin\_half4](#asin_half4)
* [asinh\_double](#asinh_double)
* [asinh\_double2](#asinh_double2)
* [asinh\_double3](#asinh_double3)
* [asinh\_double4](#asinh_double4)
* [asinh\_float](#asinh_float)
* [asinh\_float2](#asinh_float2)
* [asinh\_float3](#asinh_float3)
* [asinh\_float4](#asinh_float4)
* [asinh\_half](#asinh_half)
* [asinh\_half2](#asinh_half2)
* [asinh\_half3](#asinh_half3)
* [asinh\_half4](#asinh_half4)
* [asint\_bool2](#asint_bool2)
* [asint\_bool3](#asint_bool3)
* [asint\_bool4](#asint_bool4)
* [asint\_double](#asint_double)
* [asint\_double1x1](#asint_double1x1)
* [asint\_double1x2](#asint_double1x2)
* [asint\_double1x3](#asint_double1x3)
* [asint\_double1x4](#asint_double1x4)
* [asint\_double2](#asint_double2)
* [asint\_double2x1](#asint_double2x1)
* [asint\_double2x2](#asint_double2x2)
* [asint\_double2x3](#asint_double2x3)
* [asint\_double2x4](#asint_double2x4)
* [asint\_double3](#asint_double3)
* [asint\_double3x1](#asint_double3x1)
* [asint\_double3x2](#asint_double3x2)
* [asint\_double3x3](#asint_double3x3)
* [asint\_double3x4](#asint_double3x4)
* [asint\_double4](#asint_double4)
* [asint\_double4x1](#asint_double4x1)
* [asint\_double4x2](#asint_double4x2)
* [asint\_double4x3](#asint_double4x3)
* [asint\_double4x4](#asint_double4x4)
* [asint\_float](#asint_float)
* [asint\_float1x1](#asint_float1x1)
* [asint\_float1x2](#asint_float1x2)
* [asint\_float1x3](#asint_float1x3)
* [asint\_float1x4](#asint_float1x4)
* [asint\_float2](#asint_float2)
* [asint\_float2x1](#asint_float2x1)
* [asint\_float2x2](#asint_float2x2)
* [asint\_float2x3](#asint_float2x3)
* [asint\_float2x4](#asint_float2x4)
* [asint\_float3](#asint_float3)
* [asint\_float3x1](#asint_float3x1)
* [asint\_float3x2](#asint_float3x2)
* [asint\_float3x3](#asint_float3x3)
* [asint\_float3x4](#asint_float3x4)
* [asint\_float4](#asint_float4)
* [asint\_float4x1](#asint_float4x1)
* [asint\_float4x2](#asint_float4x2)
* [asint\_float4x3](#asint_float4x3)
* [asint\_float4x4](#asint_float4x4)
* [asint\_half](#asint_half)
* [asint\_half1x1](#asint_half1x1)
* [asint\_half1x2](#asint_half1x2)
* [asint\_half1x3](#asint_half1x3)
* [asint\_half1x4](#asint_half1x4)
* [asint\_half2](#asint_half2)
* [asint\_half2x1](#asint_half2x1)
* [asint\_half2x2](#asint_half2x2)
* [asint\_half2x3](#asint_half2x3)
* [asint\_half2x4](#asint_half2x4)
* [asint\_half3](#asint_half3)
* [asint\_half3x1](#asint_half3x1)
* [asint\_half3x2](#asint_half3x2)
* [asint\_half3x3](#asint_half3x3)
* [asint\_half3x4](#asint_half3x4)
* [asint\_half4](#asint_half4)
* [asint\_half4x1](#asint_half4x1)
* [asint\_half4x2](#asint_half4x2)
* [asint\_half4x3](#asint_half4x3)
* [asint\_half4x4](#asint_half4x4)
* [asint\_int](#asint_int)
* [asint\_int2](#asint_int2)
* [asint\_int3](#asint_int3)
* [asint\_int4](#asint_int4)
* [asint\_uint](#asint_uint)
* [asint\_uint2](#asint_uint2)
* [asint\_uint3](#asint_uint3)
* [asint\_uint4](#asint_uint4)
* [asuint\_bool2](#asuint_bool2)
* [asuint\_bool3](#asuint_bool3)
* [asuint\_bool4](#asuint_bool4)
* [asuint\_double](#asuint_double)
* [asuint\_double2](#asuint_double2)
* [asuint\_double3](#asuint_double3)
* [asuint\_double4](#asuint_double4)
* [asuint\_float](#asuint_float)
* [asuint\_float2](#asuint_float2)
* [asuint\_float3](#asuint_float3)
* [asuint\_float4](#asuint_float4)
* [asuint\_half](#asuint_half)
* [asuint\_half2](#asuint_half2)
* [asuint\_half3](#asuint_half3)
* [asuint\_half4](#asuint_half4)
* [asuint\_int](#asuint_int)
* [asuint\_int2](#asuint_int2)
* [asuint\_int3](#asuint_int3)
* [asuint\_int4](#asuint_int4)
* [asuint\_uint](#asuint_uint)
* [asuint\_uint2](#asuint_uint2)
* [asuint\_uint3](#asuint_uint3)
* [asuint\_uint4](#asuint_uint4)
* [atan2\_double](#atan2_double)
* [atan2\_double2](#atan2_double2)
* [atan2\_double3](#atan2_double3)
* [atan2\_double4](#atan2_double4)
* [atan2\_float](#atan2_float)
* [atan2\_float2](#atan2_float2)
* [atan2\_float3](#atan2_float3)
* [atan2\_float4](#atan2_float4)
* [atan2\_half](#atan2_half)
* [atan2\_half2](#atan2_half2)
* [atan2\_half3](#atan2_half3)
* [atan2\_half4](#atan2_half4)
* [atan\_double](#atan_double)
* [atan\_double2](#atan_double2)
* [atan\_double3](#atan_double3)
* [atan\_double4](#atan_double4)
* [atan\_float](#atan_float)
* [atan\_float2](#atan_float2)
* [atan\_float3](#atan_float3)
* [atan\_float4](#atan_float4)
* [atan\_half](#atan_half)
* [atan\_half2](#atan_half2)
* [atan\_half3](#atan_half3)
* [atan\_half4](#atan_half4)
* [atanh\_double](#atanh_double)
* [atanh\_double2](#atanh_double2)
* [atanh\_double3](#atanh_double3)
* [atanh\_double4](#atanh_double4)
* [atanh\_float](#atanh_float)
* [atanh\_float2](#atanh_float2)
* [atanh\_float3](#atanh_float3)
* [atanh\_float4](#atanh_float4)
* [atanh\_half](#atanh_half)
* [atanh\_half2](#atanh_half2)
* [atanh\_half3](#atanh_half3)
* [atanh\_half4](#atanh_half4)
* [ceil\_double](#ceil_double)
* [ceil\_double2](#ceil_double2)
* [ceil\_double3](#ceil_double3)
* [ceil\_double4](#ceil_double4)
* [ceil\_float](#ceil_float)
* [ceil\_float2](#ceil_float2)
* [ceil\_float3](#ceil_float3)
* [ceil\_float4](#ceil_float4)
* [ceil\_half](#ceil_half)
* [ceil\_half2](#ceil_half2)
* [ceil\_half3](#ceil_half3)
* [ceil\_half4](#ceil_half4)
* [clamp\_double](#clamp_double)
* [clamp\_double2](#clamp_double2)
* [clamp\_double3](#clamp_double3)
* [clamp\_double4](#clamp_double4)
* [clamp\_float](#clamp_float)
* [clamp\_float2](#clamp_float2)
* [clamp\_float3](#clamp_float3)
* [clamp\_float4](#clamp_float4)
* [clamp\_half](#clamp_half)
* [clamp\_half2](#clamp_half2)
* [clamp\_half3](#clamp_half3)
* [clamp\_half4](#clamp_half4)
* [clamp\_int](#clamp_int)
* [clamp\_int2](#clamp_int2)
* [clamp\_int3](#clamp_int3)
* [clamp\_int4](#clamp_int4)
* [clamp\_uint](#clamp_uint)
* [clamp\_uint2](#clamp_uint2)
* [clamp\_uint3](#clamp_uint3)
* [clamp\_uint4](#clamp_uint4)
* [cofactor\_matrix1x1](#cofactor_matrix1x1)
* [cofactor\_matrix2x2](#cofactor_matrix2x2)
* [cofactor\_matrix3x3](#cofactor_matrix3x3)
* [cofactor\_matrix4x4](#cofactor_matrix4x4)
* [cos\_double](#cos_double)
* [cos\_double2](#cos_double2)
* [cos\_double3](#cos_double3)
* [cos\_double4](#cos_double4)
* [cos\_float](#cos_float)
* [cos\_float2](#cos_float2)
* [cos\_float3](#cos_float3)
* [cos\_float4](#cos_float4)
* [cos\_half](#cos_half)
* [cos\_half2](#cos_half2)
* [cos\_half3](#cos_half3)
* [cos\_half4](#cos_half4)
* [cosh\_double](#cosh_double)
* [cosh\_double2](#cosh_double2)
* [cosh\_double3](#cosh_double3)
* [cosh\_double4](#cosh_double4)
* [cosh\_float](#cosh_float)
* [cosh\_float2](#cosh_float2)
* [cosh\_float3](#cosh_float3)
* [cosh\_float4](#cosh_float4)
* [cosh\_half](#cosh_half)
* [cosh\_half2](#cosh_half2)
* [cosh\_half3](#cosh_half3)
* [cosh\_half4](#cosh_half4)
* [cross\_double3](#cross_double3)
* [cross\_float3](#cross_float3)
* [cross\_half3](#cross_half3)
* [cross\_int3](#cross_int3)
* [degrees\_double](#degrees_double)
* [degrees\_double2](#degrees_double2)
* [degrees\_double3](#degrees_double3)
* [degrees\_double4](#degrees_double4)
* [degrees\_float](#degrees_float)
* [degrees\_float2](#degrees_float2)
* [degrees\_float3](#degrees_float3)
* [degrees\_float4](#degrees_float4)
* [degrees\_half](#degrees_half)
* [degrees\_half2](#degrees_half2)
* [degrees\_half3](#degrees_half3)
* [degrees\_half4](#degrees_half4)
* [determinant\_matrix1x1](#determinant_matrix1x1)
* [determinant\_matrix2x2](#determinant_matrix2x2)
* [determinant\_matrix3x3](#determinant_matrix3x3)
* [determinant\_matrix4x4](#determinant_matrix4x4)
* [distance\_double](#distance_double)
* [distance\_double2](#distance_double2)
* [distance\_double3](#distance_double3)
* [distance\_double4](#distance_double4)
* [distance\_float](#distance_float)
* [distance\_float2](#distance_float2)
* [distance\_float3](#distance_float3)
* [distance\_float4](#distance_float4)
* [distance\_half](#distance_half)
* [distance\_half2](#distance_half2)
* [distance\_half3](#distance_half3)
* [distance\_half4](#distance_half4)
* [dot\_double](#dot_double)
* [dot\_double2](#dot_double2)
* [dot\_double3](#dot_double3)
* [dot\_double4](#dot_double4)
* [dot\_float](#dot_float)
* [dot\_float2](#dot_float2)
* [dot\_float3](#dot_float3)
* [dot\_float4](#dot_float4)
* [dot\_half](#dot_half)
* [dot\_half2](#dot_half2)
* [dot\_half3](#dot_half3)
* [dot\_half4](#dot_half4)
* [dot\_int](#dot_int)
* [dot\_int2](#dot_int2)
* [dot\_int3](#dot_int3)
* [dot\_int4](#dot_int4)
* [dot\_uint](#dot_uint)
* [dot\_uint2](#dot_uint2)
* [dot\_uint3](#dot_uint3)
* [dot\_uint4](#dot_uint4)
* [equal\_double](#equal_double)
* [equal\_double2](#equal_double2)
* [equal\_double3](#equal_double3)
* [equal\_double4](#equal_double4)
* [equal\_float](#equal_float)
* [equal\_float2](#equal_float2)
* [equal\_float3](#equal_float3)
* [equal\_float4](#equal_float4)
* [equal\_half](#equal_half)
* [equal\_half2](#equal_half2)
* [equal\_half3](#equal_half3)
* [equal\_half4](#equal_half4)
* [equal\_int](#equal_int)
* [equal\_int2](#equal_int2)
* [equal\_int3](#equal_int3)
* [equal\_int4](#equal_int4)
* [equal\_uint](#equal_uint)
* [equal\_uint2](#equal_uint2)
* [equal\_uint3](#equal_uint3)
* [equal\_uint4](#equal_uint4)
* [exp2\_double](#exp2_double)
* [exp2\_double2](#exp2_double2)
* [exp2\_double3](#exp2_double3)
* [exp2\_double4](#exp2_double4)
* [exp2\_float](#exp2_float)
* [exp2\_float2](#exp2_float2)
* [exp2\_float3](#exp2_float3)
* [exp2\_float4](#exp2_float4)
* [exp2\_half](#exp2_half)
* [exp2\_half2](#exp2_half2)
* [exp2\_half3](#exp2_half3)
* [exp2\_half4](#exp2_half4)
* [exp\_double](#exp_double)
* [exp\_double2](#exp_double2)
* [exp\_double3](#exp_double3)
* [exp\_double4](#exp_double4)
* [exp\_float](#exp_float)
* [exp\_float2](#exp_float2)
* [exp\_float3](#exp_float3)
* [exp\_float4](#exp_float4)
* [exp\_half](#exp_half)
* [exp\_half2](#exp_half2)
* [exp\_half3](#exp_half3)
* [exp\_half4](#exp_half4)
* [faceforward\_double](#faceforward_double)
* [faceforward\_double2](#faceforward_double2)
* [faceforward\_double3](#faceforward_double3)
* [faceforward\_double4](#faceforward_double4)
* [faceforward\_float](#faceforward_float)
* [faceforward\_float2](#faceforward_float2)
* [faceforward\_float3](#faceforward_float3)
* [faceforward\_float4](#faceforward_float4)
* [faceforward\_half](#faceforward_half)
* [faceforward\_half2](#faceforward_half2)
* [faceforward\_half3](#faceforward_half3)
* [faceforward\_half4](#faceforward_half4)
* [floor\_double](#floor_double)
* [floor\_double2](#floor_double2)
* [floor\_double3](#floor_double3)
* [floor\_double4](#floor_double4)
* [floor\_float](#floor_float)
* [floor\_float2](#floor_float2)
* [floor\_float3](#floor_float3)
* [floor\_float4](#floor_float4)
* [floor\_half](#floor_half)
* [floor\_half2](#floor_half2)
* [floor\_half3](#floor_half3)
* [floor\_half4](#floor_half4)
* [fmod\_double](#fmod_double)
* [fmod\_double2](#fmod_double2)
* [fmod\_double3](#fmod_double3)
* [fmod\_double4](#fmod_double4)
* [fmod\_float](#fmod_float)
* [fmod\_float2](#fmod_float2)
* [fmod\_float3](#fmod_float3)
* [fmod\_float4](#fmod_float4)
* [fmod\_half](#fmod_half)
* [fmod\_half2](#fmod_half2)
* [fmod\_half3](#fmod_half3)
* [fmod\_half4](#fmod_half4)
* [frac\_double](#frac_double)
* [frac\_double2](#frac_double2)
* [frac\_double3](#frac_double3)
* [frac\_double4](#frac_double4)
* [frac\_float](#frac_float)
* [frac\_float2](#frac_float2)
* [frac\_float3](#frac_float3)
* [frac\_float4](#frac_float4)
* [frac\_half](#frac_half)
* [frac\_half2](#frac_half2)
* [frac\_half3](#frac_half3)
* [frac\_half4](#frac_half4)
* [greaterThanEqual\_double](#greaterThanEqual_double)
* [greaterThanEqual\_double2](#greaterThanEqual_double2)
* [greaterThanEqual\_double3](#greaterThanEqual_double3)
* [greaterThanEqual\_double4](#greaterThanEqual_double4)
* [greaterThanEqual\_float](#greaterThanEqual_float)
* [greaterThanEqual\_float2](#greaterThanEqual_float2)
* [greaterThanEqual\_float3](#greaterThanEqual_float3)
* [greaterThanEqual\_float4](#greaterThanEqual_float4)
* [greaterThanEqual\_half](#greaterThanEqual_half)
* [greaterThanEqual\_half2](#greaterThanEqual_half2)
* [greaterThanEqual\_half3](#greaterThanEqual_half3)
* [greaterThanEqual\_half4](#greaterThanEqual_half4)
* [greaterThanEqual\_int](#greaterThanEqual_int)
* [greaterThanEqual\_int2](#greaterThanEqual_int2)
* [greaterThanEqual\_int3](#greaterThanEqual_int3)
* [greaterThanEqual\_int4](#greaterThanEqual_int4)
* [greaterThanEqual\_uint](#greaterThanEqual_uint)
* [greaterThanEqual\_uint2](#greaterThanEqual_uint2)
* [greaterThanEqual\_uint3](#greaterThanEqual_uint3)
* [greaterThanEqual\_uint4](#greaterThanEqual_uint4)
* [greaterThan\_double](#greaterThan_double)
* [greaterThan\_double2](#greaterThan_double2)
* [greaterThan\_double3](#greaterThan_double3)
* [greaterThan\_double4](#greaterThan_double4)
* [greaterThan\_float](#greaterThan_float)
* [greaterThan\_float2](#greaterThan_float2)
* [greaterThan\_float3](#greaterThan_float3)
* [greaterThan\_float4](#greaterThan_float4)
* [greaterThan\_half](#greaterThan_half)
* [greaterThan\_half2](#greaterThan_half2)
* [greaterThan\_half3](#greaterThan_half3)
* [greaterThan\_half4](#greaterThan_half4)
* [greaterThan\_int](#greaterThan_int)
* [greaterThan\_int2](#greaterThan_int2)
* [greaterThan\_int3](#greaterThan_int3)
* [greaterThan\_int4](#greaterThan_int4)
* [greaterThan\_uint](#greaterThan_uint)
* [greaterThan\_uint2](#greaterThan_uint2)
* [greaterThan\_uint3](#greaterThan_uint3)
* [greaterThan\_uint4](#greaterThan_uint4)
* [hermitian\_adjoint](#hermitian_adjoint)
* [inverse\_double1x1](#inverse_double1x1)
* [inverse\_double2x2](#inverse_double2x2)
* [inverse\_double3x3](#inverse_double3x3)
* [inverse\_double4x4](#inverse_double4x4)
* [inverse\_float1x1](#inverse_float1x1)
* [inverse\_float2x2](#inverse_float2x2)
* [inverse\_float3x3](#inverse_float3x3)
* [inverse\_float4x4](#inverse_float4x4)
* [inverse\_half1x1](#inverse_half1x1)
* [inverse\_half2x2](#inverse_half2x2)
* [inverse\_half3x3](#inverse_half3x3)
* [inverse\_half4x4](#inverse_half4x4)
* [inverse\_matrix1x1](#inverse_matrix1x1)
* [inverse\_matrix2x2](#inverse_matrix2x2)
* [inverse\_matrix3x3](#inverse_matrix3x3)
* [inverse\_matrix4x4](#inverse_matrix4x4)
* [inverse\_transpose\_matrix1x1](#inverse_transpose_matrix1x1)
* [inverse\_transpose\_matrix2x2](#inverse_transpose_matrix2x2)
* [inverse\_transpose\_matrix3x3](#inverse_transpose_matrix3x3)
* [inverse\_transpose\_matrix4x4](#inverse_transpose_matrix4x4)
* [isfinite\_double](#isfinite_double)
* [isfinite\_double2](#isfinite_double2)
* [isfinite\_double3](#isfinite_double3)
* [isfinite\_double4](#isfinite_double4)
* [isfinite\_float](#isfinite_float)
* [isfinite\_float2](#isfinite_float2)
* [isfinite\_float3](#isfinite_float3)
* [isfinite\_float4](#isfinite_float4)
* [isfinite\_half](#isfinite_half)
* [isfinite\_half2](#isfinite_half2)
* [isfinite\_half3](#isfinite_half3)
* [isfinite\_half4](#isfinite_half4)
* [isinf\_double](#isinf_double)
* [isinf\_double2](#isinf_double2)
* [isinf\_double3](#isinf_double3)
* [isinf\_double4](#isinf_double4)
* [isinf\_float](#isinf_float)
* [isinf\_float2](#isinf_float2)
* [isinf\_float3](#isinf_float3)
* [isinf\_float4](#isinf_float4)
* [isinf\_half](#isinf_half)
* [isinf\_half2](#isinf_half2)
* [isinf\_half3](#isinf_half3)
* [isinf\_half4](#isinf_half4)
* [isnan\_double](#isnan_double)
* [isnan\_double2](#isnan_double2)
* [isnan\_double3](#isnan_double3)
* [isnan\_double4](#isnan_double4)
* [isnan\_float](#isnan_float)
* [isnan\_float2](#isnan_float2)
* [isnan\_float3](#isnan_float3)
* [isnan\_float4](#isnan_float4)
* [isnan\_half](#isnan_half)
* [isnan\_half2](#isnan_half2)
* [isnan\_half3](#isnan_half3)
* [isnan\_half4](#isnan_half4)
* [length\_double](#length_double)
* [length\_double2](#length_double2)
* [length\_double3](#length_double3)
* [length\_double4](#length_double4)
* [length\_float](#length_float)
* [length\_float2](#length_float2)
* [length\_float3](#length_float3)
* [length\_float4](#length_float4)
* [length\_half](#length_half)
* [length\_half2](#length_half2)
* [length\_half3](#length_half3)
* [length\_half4](#length_half4)
* [lerp\_double](#lerp_double)
* [lerp\_double2](#lerp_double2)
* [lerp\_double3](#lerp_double3)
* [lerp\_double4](#lerp_double4)
* [lerp\_float](#lerp_float)
* [lerp\_float2](#lerp_float2)
* [lerp\_float3](#lerp_float3)
* [lerp\_float4](#lerp_float4)
* [lerp\_half](#lerp_half)
* [lerp\_half2](#lerp_half2)
* [lerp\_half3](#lerp_half3)
* [lerp\_half4](#lerp_half4)
* [lessThanEqual\_double](#lessThanEqual_double)
* [lessThanEqual\_double2](#lessThanEqual_double2)
* [lessThanEqual\_double3](#lessThanEqual_double3)
* [lessThanEqual\_double4](#lessThanEqual_double4)
* [lessThanEqual\_float](#lessThanEqual_float)
* [lessThanEqual\_float2](#lessThanEqual_float2)
* [lessThanEqual\_float3](#lessThanEqual_float3)
* [lessThanEqual\_float4](#lessThanEqual_float4)
* [lessThanEqual\_half](#lessThanEqual_half)
* [lessThanEqual\_half2](#lessThanEqual_half2)
* [lessThanEqual\_half3](#lessThanEqual_half3)
* [lessThanEqual\_half4](#lessThanEqual_half4)
* [lessThanEqual\_int](#lessThanEqual_int)
* [lessThanEqual\_int2](#lessThanEqual_int2)
* [lessThanEqual\_int3](#lessThanEqual_int3)
* [lessThanEqual\_int4](#lessThanEqual_int4)
* [lessThanEqual\_uint](#lessThanEqual_uint)
* [lessThanEqual\_uint2](#lessThanEqual_uint2)
* [lessThanEqual\_uint3](#lessThanEqual_uint3)
* [lessThanEqual\_uint4](#lessThanEqual_uint4)
* [lessThan\_double](#lessThan_double)
* [lessThan\_double2](#lessThan_double2)
* [lessThan\_double3](#lessThan_double3)
* [lessThan\_double4](#lessThan_double4)
* [lessThan\_float](#lessThan_float)
* [lessThan\_float2](#lessThan_float2)
* [lessThan\_float3](#lessThan_float3)
* [lessThan\_float4](#lessThan_float4)
* [lessThan\_half](#lessThan_half)
* [lessThan\_half2](#lessThan_half2)
* [lessThan\_half3](#lessThan_half3)
* [lessThan\_half4](#lessThan_half4)
* [lessThan\_int](#lessThan_int)
* [lessThan\_int2](#lessThan_int2)
* [lessThan\_int3](#lessThan_int3)
* [lessThan\_int4](#lessThan_int4)
* [lessThan\_uint](#lessThan_uint)
* [lessThan\_uint2](#lessThan_uint2)
* [lessThan\_uint3](#lessThan_uint3)
* [lessThan\_uint4](#lessThan_uint4)
* [log10\_double](#log10_double)
* [log10\_double2](#log10_double2)
* [log10\_double3](#log10_double3)
* [log10\_double4](#log10_double4)
* [log10\_float](#log10_float)
* [log10\_float2](#log10_float2)
* [log10\_float3](#log10_float3)
* [log10\_float4](#log10_float4)
* [log10\_half](#log10_half)
* [log10\_half2](#log10_half2)
* [log10\_half3](#log10_half3)
* [log10\_half4](#log10_half4)
* [log2\_double](#log2_double)
* [log2\_double2](#log2_double2)
* [log2\_double3](#log2_double3)
* [log2\_double4](#log2_double4)
* [log2\_float](#log2_float)
* [log2\_float2](#log2_float2)
* [log2\_float3](#log2_float3)
* [log2\_float4](#log2_float4)
* [log2\_half](#log2_half)
* [log2\_half2](#log2_half2)
* [log2\_half3](#log2_half3)
* [log2\_half4](#log2_half4)
* [log\_double](#log_double)
* [log\_double2](#log_double2)
* [log\_double3](#log_double3)
* [log\_double4](#log_double4)
* [log\_float](#log_float)
* [log\_float2](#log_float2)
* [log\_float3](#log_float3)
* [log\_float4](#log_float4)
* [log\_half](#log_half)
* [log\_half2](#log_half2)
* [log\_half3](#log_half3)
* [log\_half4](#log_half4)
* [matrix\_minor](#matrix_minor)
* [max\_double](#max_double)
* [max\_double2](#max_double2)
* [max\_double3](#max_double3)
* [max\_double4](#max_double4)
* [max\_float](#max_float)
* [max\_float2](#max_float2)
* [max\_float3](#max_float3)
* [max\_float4](#max_float4)
* [max\_half](#max_half)
* [max\_half2](#max_half2)
* [max\_half3](#max_half3)
* [max\_half4](#max_half4)
* [max\_int](#max_int)
* [max\_int2](#max_int2)
* [max\_int3](#max_int3)
* [max\_int4](#max_int4)
* [max\_uint](#max_uint)
* [max\_uint2](#max_uint2)
* [max\_uint3](#max_uint3)
* [max\_uint4](#max_uint4)
* [min\_double](#min_double)
* [min\_double2](#min_double2)
* [min\_double3](#min_double3)
* [min\_double4](#min_double4)
* [min\_float](#min_float)
* [min\_float2](#min_float2)
* [min\_float3](#min_float3)
* [min\_float4](#min_float4)
* [min\_half](#min_half)
* [min\_half2](#min_half2)
* [min\_half3](#min_half3)
* [min\_half4](#min_half4)
* [min\_int](#min_int)
* [min\_int2](#min_int2)
* [min\_int3](#min_int3)
* [min\_int4](#min_int4)
* [min\_uint](#min_uint)
* [min\_uint2](#min_uint2)
* [min\_uint3](#min_uint3)
* [min\_uint4](#min_uint4)
* [normalize\_double](#normalize_double)
* [normalize\_double2](#normalize_double2)
* [normalize\_double3](#normalize_double3)
* [normalize\_double4](#normalize_double4)
* [normalize\_float](#normalize_float)
* [normalize\_float2](#normalize_float2)
* [normalize\_float3](#normalize_float3)
* [normalize\_float4](#normalize_float4)
* [normalize\_half](#normalize_half)
* [normalize\_half2](#normalize_half2)
* [normalize\_half3](#normalize_half3)
* [normalize\_half4](#normalize_half4)
* [notEqual\_double](#notEqual_double)
* [notEqual\_double2](#notEqual_double2)
* [notEqual\_double3](#notEqual_double3)
* [notEqual\_double4](#notEqual_double4)
* [notEqual\_float](#notEqual_float)
* [notEqual\_float2](#notEqual_float2)
* [notEqual\_float3](#notEqual_float3)
* [notEqual\_float4](#notEqual_float4)
* [notEqual\_half](#notEqual_half)
* [notEqual\_half2](#notEqual_half2)
* [notEqual\_half3](#notEqual_half3)
* [notEqual\_half4](#notEqual_half4)
* [notEqual\_int](#notEqual_int)
* [notEqual\_int2](#notEqual_int2)
* [notEqual\_int3](#notEqual_int3)
* [notEqual\_int4](#notEqual_int4)
* [notEqual\_uint](#notEqual_uint)
* [notEqual\_uint2](#notEqual_uint2)
* [notEqual\_uint3](#notEqual_uint3)
* [notEqual\_uint4](#notEqual_uint4)
* [not\_bool](#not_bool)
* [not\_bool2](#not_bool2)
* [not\_bool3](#not_bool3)
* [not\_bool4](#not_bool4)
* [pow\_double](#pow_double)
* [pow\_double2](#pow_double2)
* [pow\_double3](#pow_double3)
* [pow\_double4](#pow_double4)
* [pow\_float](#pow_float)
* [pow\_float2](#pow_float2)
* [pow\_float3](#pow_float3)
* [pow\_float4](#pow_float4)
* [pow\_half](#pow_half)
* [pow\_half2](#pow_half2)
* [pow\_half3](#pow_half3)
* [pow\_half4](#pow_half4)
* [radians\_double](#radians_double)
* [radians\_double2](#radians_double2)
* [radians\_double3](#radians_double3)
* [radians\_double4](#radians_double4)
* [radians\_float](#radians_float)
* [radians\_float2](#radians_float2)
* [radians\_float3](#radians_float3)
* [radians\_float4](#radians_float4)
* [radians\_half](#radians_half)
* [radians\_half2](#radians_half2)
* [radians\_half3](#radians_half3)
* [radians\_half4](#radians_half4)
* [rcp\_double](#rcp_double)
* [rcp\_double2](#rcp_double2)
* [rcp\_double3](#rcp_double3)
* [rcp\_double4](#rcp_double4)
* [rcp\_float](#rcp_float)
* [rcp\_float2](#rcp_float2)
* [rcp\_float3](#rcp_float3)
* [rcp\_float4](#rcp_float4)
* [rcp\_half](#rcp_half)
* [rcp\_half2](#rcp_half2)
* [rcp\_half3](#rcp_half3)
* [rcp\_half4](#rcp_half4)
* [reflect\_double](#reflect_double)
* [reflect\_double2](#reflect_double2)
* [reflect\_double3](#reflect_double3)
* [reflect\_double4](#reflect_double4)
* [reflect\_float](#reflect_float)
* [reflect\_float2](#reflect_float2)
* [reflect\_float3](#reflect_float3)
* [reflect\_float4](#reflect_float4)
* [reflect\_half](#reflect_half)
* [reflect\_half2](#reflect_half2)
* [reflect\_half3](#reflect_half3)
* [reflect\_half4](#reflect_half4)
* [refract\_double](#refract_double)
* [refract\_double2](#refract_double2)
* [refract\_double3](#refract_double3)
* [refract\_double4](#refract_double4)
* [refract\_float](#refract_float)
* [refract\_float2](#refract_float2)
* [refract\_float3](#refract_float3)
* [refract\_float4](#refract_float4)
* [refract\_half](#refract_half)
* [refract\_half2](#refract_half2)
* [refract\_half3](#refract_half3)
* [refract\_half4](#refract_half4)
* [round\_double](#round_double)
* [round\_double2](#round_double2)
* [round\_double3](#round_double3)
* [round\_double4](#round_double4)
* [round\_float](#round_float)
* [round\_float2](#round_float2)
* [round\_float3](#round_float3)
* [round\_float4](#round_float4)
* [round\_half](#round_half)
* [round\_half2](#round_half2)
* [round\_half3](#round_half3)
* [round\_half4](#round_half4)
* [rsqrt\_double](#rsqrt_double)
* [rsqrt\_double2](#rsqrt_double2)
* [rsqrt\_double3](#rsqrt_double3)
* [rsqrt\_double4](#rsqrt_double4)
* [rsqrt\_float](#rsqrt_float)
* [rsqrt\_float2](#rsqrt_float2)
* [rsqrt\_float3](#rsqrt_float3)
* [rsqrt\_float4](#rsqrt_float4)
* [rsqrt\_half](#rsqrt_half)
* [rsqrt\_half2](#rsqrt_half2)
* [rsqrt\_half3](#rsqrt_half3)
* [rsqrt\_half4](#rsqrt_half4)
* [saturate\_double](#saturate_double)
* [saturate\_double2](#saturate_double2)
* [saturate\_double3](#saturate_double3)
* [saturate\_double4](#saturate_double4)
* [saturate\_float](#saturate_float)
* [saturate\_float2](#saturate_float2)
* [saturate\_float3](#saturate_float3)
* [saturate\_float4](#saturate_float4)
* [saturate\_half](#saturate_half)
* [saturate\_half2](#saturate_half2)
* [saturate\_half3](#saturate_half3)
* [saturate\_half4](#saturate_half4)
* [saturate\_int](#saturate_int)
* [saturate\_int2](#saturate_int2)
* [saturate\_int3](#saturate_int3)
* [saturate\_int4](#saturate_int4)
* [saturate\_uint](#saturate_uint)
* [saturate\_uint2](#saturate_uint2)
* [saturate\_uint3](#saturate_uint3)
* [saturate\_uint4](#saturate_uint4)
* [scalarTripleProduct\_double3](#scalarTripleProduct_double3)
* [scalarTripleProduct\_float3](#scalarTripleProduct_float3)
* [scalarTripleProduct\_half3](#scalarTripleProduct_half3)
* [scalarTripleProduct\_int3](#scalarTripleProduct_int3)
* [sign\_double](#sign_double)
* [sign\_double2](#sign_double2)
* [sign\_double3](#sign_double3)
* [sign\_double4](#sign_double4)
* [sign\_float](#sign_float)
* [sign\_float2](#sign_float2)
* [sign\_float3](#sign_float3)
* [sign\_float4](#sign_float4)
* [sign\_half](#sign_half)
* [sign\_half2](#sign_half2)
* [sign\_half3](#sign_half3)
* [sign\_half4](#sign_half4)
* [sign\_int](#sign_int)
* [sign\_int2](#sign_int2)
* [sign\_int3](#sign_int3)
* [sign\_int4](#sign_int4)
* [sign\_uint](#sign_uint)
* [sign\_uint2](#sign_uint2)
* [sign\_uint3](#sign_uint3)
* [sign\_uint4](#sign_uint4)
* [sin\_double](#sin_double)
* [sin\_double2](#sin_double2)
* [sin\_double3](#sin_double3)
* [sin\_double4](#sin_double4)
* [sin\_float](#sin_float)
* [sin\_float2](#sin_float2)
* [sin\_float3](#sin_float3)
* [sin\_float4](#sin_float4)
* [sin\_half](#sin_half)
* [sin\_half2](#sin_half2)
* [sin\_half3](#sin_half3)
* [sin\_half4](#sin_half4)
* [sinh\_double](#sinh_double)
* [sinh\_double2](#sinh_double2)
* [sinh\_double3](#sinh_double3)
* [sinh\_double4](#sinh_double4)
* [sinh\_float](#sinh_float)
* [sinh\_float2](#sinh_float2)
* [sinh\_float3](#sinh_float3)
* [sinh\_float4](#sinh_float4)
* [sinh\_half](#sinh_half)
* [sinh\_half2](#sinh_half2)
* [sinh\_half3](#sinh_half3)
* [sinh\_half4](#sinh_half4)
* [smoothstep\_double](#smoothstep_double)
* [smoothstep\_double2](#smoothstep_double2)
* [smoothstep\_double3](#smoothstep_double3)
* [smoothstep\_double4](#smoothstep_double4)
* [smoothstep\_float](#smoothstep_float)
* [smoothstep\_float2](#smoothstep_float2)
* [smoothstep\_float3](#smoothstep_float3)
* [smoothstep\_float4](#smoothstep_float4)
* [smoothstep\_half](#smoothstep_half)
* [smoothstep\_half2](#smoothstep_half2)
* [smoothstep\_half3](#smoothstep_half3)
* [smoothstep\_half4](#smoothstep_half4)
* [sqrt\_double](#sqrt_double)
* [sqrt\_double2](#sqrt_double2)
* [sqrt\_double3](#sqrt_double3)
* [sqrt\_double4](#sqrt_double4)
* [sqrt\_float](#sqrt_float)
* [sqrt\_float2](#sqrt_float2)
* [sqrt\_float3](#sqrt_float3)
* [sqrt\_float4](#sqrt_float4)
* [sqrt\_half](#sqrt_half)
* [sqrt\_half2](#sqrt_half2)
* [sqrt\_half3](#sqrt_half3)
* [sqrt\_half4](#sqrt_half4)
* [step\_double](#step_double)
* [step\_double2](#step_double2)
* [step\_double3](#step_double3)
* [step\_double4](#step_double4)
* [step\_float](#step_float)
* [step\_float2](#step_float2)
* [step\_float3](#step_float3)
* [step\_float4](#step_float4)
* [step\_half](#step_half)
* [step\_half2](#step_half2)
* [step\_half3](#step_half3)
* [step\_half4](#step_half4)
* [tan\_double](#tan_double)
* [tan\_double2](#tan_double2)
* [tan\_double3](#tan_double3)
* [tan\_double4](#tan_double4)
* [tan\_float](#tan_float)
* [tan\_float2](#tan_float2)
* [tan\_float3](#tan_float3)
* [tan\_float4](#tan_float4)
* [tan\_half](#tan_half)
* [tan\_half2](#tan_half2)
* [tan\_half3](#tan_half3)
* [tan\_half4](#tan_half4)
* [tanh\_double](#tanh_double)
* [tanh\_double2](#tanh_double2)
* [tanh\_double3](#tanh_double3)
* [tanh\_double4](#tanh_double4)
* [tanh\_float](#tanh_float)
* [tanh\_float2](#tanh_float2)
* [tanh\_float3](#tanh_float3)
* [tanh\_float4](#tanh_float4)
* [tanh\_half](#tanh_half)
* [tanh\_half2](#tanh_half2)
* [tanh\_half3](#tanh_half3)
* [tanh\_half4](#tanh_half4)
* [trace](#trace)
* [transpose](#transpose)
* [vectorTripleProduct\_double3](#vectorTripleProduct_double3)
* [vectorTripleProduct\_float3](#vectorTripleProduct_float3)
* [vectorTripleProduct\_half3](#vectorTripleProduct_half3)
* [vectorTripleProduct\_int3](#vectorTripleProduct_int3)

Procedure Groups (70)

* [abs](#abs)
* [acos](#acos)
* [acosh](#acosh)
* [adjugate](#adjugate)
* [all](#all)
* [any](#any)
* [asdouble](#asdouble)
* [asfloat](#asfloat)
* [ashalf](#ashalf)
* [asin](#asin)
* [asinh](#asinh)
* [asint](#asint)
* [asuint](#asuint)
* [atan](#atan)
* [atan2](#atan2)
* [atanh](#atanh)
* [ceil](#ceil)
* [clamp](#clamp)
* [cofactor](#cofactor)
* [cos](#cos)
* [cosh](#cosh)
* [cross](#cross)
* [degrees](#degrees)
* [determinant](#determinant)
* [distance](#distance)
* [dot](#dot)
* [equal](#equal)
* [exp](#exp)
* [exp2](#exp2)
* [faceforward](#faceforward)
* [floor](#floor)
* [fmod](#fmod)
* [frac](#frac)
* [greaterThan](#greaterThan)
* [greaterThanEqual](#greaterThanEqual)
* [inverse](#inverse)
* [inverse\_transpose](#inverse_transpose)
* [isfinite](#isfinite)
* [isinf](#isinf)
* [isnan](#isnan)
* [length](#length)
* [lerp](#lerp)
* [lessThan](#lessThan)
* [lessThanEqual](#lessThanEqual)
* [log](#log)
* [log10](#log10)
* [log2](#log2)
* [max](#max)
* [min](#min)
* [normalize](#normalize)
* [not](#not)
* [notEqual](#notEqual)
* [pow](#pow)
* [radians](#radians)
* [rcp](#rcp)
* [reflect](#reflect)
* [refract](#refract)
* [round](#round)
* [rsqrt](#rsqrt)
* [saturate](#saturate)
* [scalarTripleProduct](#scalarTripleProduct)
* [sign](#sign)
* [sin](#sin)
* [sinh](#sinh)
* [smoothstep](#smoothstep)
* [sqrt](#sqrt)
* [step](#step)
* [tan](#tan)
* [tanh](#tanh)
* [vectorTripleProduct](#vectorTripleProduct)

## Types

### [bool2 ¶](#bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L86)

```
bool2 :: [2]bool
```

##### Related Procedures With Parameters

* [all\_bool2](/core/math/linalg/hlsl/#all_bool2)
* [any\_bool2](/core/math/linalg/hlsl/#any_bool2)
* [asdouble\_bool2](/core/math/linalg/hlsl/#asdouble_bool2)
* [asfloat\_bool2](/core/math/linalg/hlsl/#asfloat_bool2)
* [ashalf\_bool2](/core/math/linalg/hlsl/#ashalf_bool2)
* [asint\_bool2](/core/math/linalg/hlsl/#asint_bool2)
* [asuint\_bool2](/core/math/linalg/hlsl/#asuint_bool2)
* [not\_bool2](/core/math/linalg/hlsl/#not_bool2)
* [all](/core/math/linalg/hlsl/#all) *(procedure groups)*
* [any](/core/math/linalg/hlsl/#any) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [not](/core/math/linalg/hlsl/#not) *(procedure groups)*



##### Related Procedures With Returns

* [equal\_double2](/core/math/linalg/hlsl/#equal_double2)
* [equal\_float2](/core/math/linalg/hlsl/#equal_float2)
* [equal\_half2](/core/math/linalg/hlsl/#equal_half2)
* [equal\_int2](/core/math/linalg/hlsl/#equal_int2)
* [equal\_uint2](/core/math/linalg/hlsl/#equal_uint2)
* [greaterThanEqual\_double2](/core/math/linalg/hlsl/#greaterThanEqual_double2)
* [greaterThanEqual\_float2](/core/math/linalg/hlsl/#greaterThanEqual_float2)
* [greaterThanEqual\_half2](/core/math/linalg/hlsl/#greaterThanEqual_half2)
* [greaterThanEqual\_int2](/core/math/linalg/hlsl/#greaterThanEqual_int2)
* [greaterThanEqual\_uint2](/core/math/linalg/hlsl/#greaterThanEqual_uint2)
* [greaterThan\_double2](/core/math/linalg/hlsl/#greaterThan_double2)
* [greaterThan\_float2](/core/math/linalg/hlsl/#greaterThan_float2)
* [greaterThan\_half2](/core/math/linalg/hlsl/#greaterThan_half2)
* [greaterThan\_int2](/core/math/linalg/hlsl/#greaterThan_int2)
* [greaterThan\_uint2](/core/math/linalg/hlsl/#greaterThan_uint2)
* [isfinite\_double2](/core/math/linalg/hlsl/#isfinite_double2)
* [isfinite\_float2](/core/math/linalg/hlsl/#isfinite_float2)
* [isfinite\_half2](/core/math/linalg/hlsl/#isfinite_half2)
* [isinf\_double2](/core/math/linalg/hlsl/#isinf_double2)
* [isinf\_float2](/core/math/linalg/hlsl/#isinf_float2)
* [isinf\_half2](/core/math/linalg/hlsl/#isinf_half2)
* [isnan\_double2](/core/math/linalg/hlsl/#isnan_double2)
* [isnan\_float2](/core/math/linalg/hlsl/#isnan_float2)
* [isnan\_half2](/core/math/linalg/hlsl/#isnan_half2)
* [lessThanEqual\_double2](/core/math/linalg/hlsl/#lessThanEqual_double2)
* [lessThanEqual\_float2](/core/math/linalg/hlsl/#lessThanEqual_float2)
* [lessThanEqual\_half2](/core/math/linalg/hlsl/#lessThanEqual_half2)
* [lessThanEqual\_int2](/core/math/linalg/hlsl/#lessThanEqual_int2)
* [lessThanEqual\_uint2](/core/math/linalg/hlsl/#lessThanEqual_uint2)
* [lessThan\_double2](/core/math/linalg/hlsl/#lessThan_double2)
* [lessThan\_float2](/core/math/linalg/hlsl/#lessThan_float2)
* [lessThan\_half2](/core/math/linalg/hlsl/#lessThan_half2)
* [lessThan\_int2](/core/math/linalg/hlsl/#lessThan_int2)
* [lessThan\_uint2](/core/math/linalg/hlsl/#lessThan_uint2)
* [notEqual\_double2](/core/math/linalg/hlsl/#notEqual_double2)
* [notEqual\_float2](/core/math/linalg/hlsl/#notEqual_float2)
* [notEqual\_half2](/core/math/linalg/hlsl/#notEqual_half2)
* [notEqual\_int2](/core/math/linalg/hlsl/#notEqual_int2)
* [notEqual\_uint2](/core/math/linalg/hlsl/#notEqual_uint2)
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*

### [bool3 ¶](#bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L87)

```
bool3 :: [3]bool
```

##### Related Procedures With Parameters

* [all\_bool3](/core/math/linalg/hlsl/#all_bool3)
* [any\_bool3](/core/math/linalg/hlsl/#any_bool3)
* [asdouble\_bool3](/core/math/linalg/hlsl/#asdouble_bool3)
* [asfloat\_bool3](/core/math/linalg/hlsl/#asfloat_bool3)
* [ashalf\_bool3](/core/math/linalg/hlsl/#ashalf_bool3)
* [asint\_bool3](/core/math/linalg/hlsl/#asint_bool3)
* [asuint\_bool3](/core/math/linalg/hlsl/#asuint_bool3)
* [not\_bool3](/core/math/linalg/hlsl/#not_bool3)
* [all](/core/math/linalg/hlsl/#all) *(procedure groups)*
* [any](/core/math/linalg/hlsl/#any) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [not](/core/math/linalg/hlsl/#not) *(procedure groups)*



##### Related Procedures With Returns

* [equal\_double3](/core/math/linalg/hlsl/#equal_double3)
* [equal\_float3](/core/math/linalg/hlsl/#equal_float3)
* [equal\_half3](/core/math/linalg/hlsl/#equal_half3)
* [equal\_int3](/core/math/linalg/hlsl/#equal_int3)
* [equal\_uint3](/core/math/linalg/hlsl/#equal_uint3)
* [greaterThanEqual\_double3](/core/math/linalg/hlsl/#greaterThanEqual_double3)
* [greaterThanEqual\_float3](/core/math/linalg/hlsl/#greaterThanEqual_float3)
* [greaterThanEqual\_half3](/core/math/linalg/hlsl/#greaterThanEqual_half3)
* [greaterThanEqual\_int3](/core/math/linalg/hlsl/#greaterThanEqual_int3)
* [greaterThanEqual\_uint3](/core/math/linalg/hlsl/#greaterThanEqual_uint3)
* [greaterThan\_double3](/core/math/linalg/hlsl/#greaterThan_double3)
* [greaterThan\_float3](/core/math/linalg/hlsl/#greaterThan_float3)
* [greaterThan\_half3](/core/math/linalg/hlsl/#greaterThan_half3)
* [greaterThan\_int3](/core/math/linalg/hlsl/#greaterThan_int3)
* [greaterThan\_uint3](/core/math/linalg/hlsl/#greaterThan_uint3)
* [isfinite\_double3](/core/math/linalg/hlsl/#isfinite_double3)
* [isfinite\_float3](/core/math/linalg/hlsl/#isfinite_float3)
* [isfinite\_half3](/core/math/linalg/hlsl/#isfinite_half3)
* [isinf\_double3](/core/math/linalg/hlsl/#isinf_double3)
* [isinf\_float3](/core/math/linalg/hlsl/#isinf_float3)
* [isinf\_half3](/core/math/linalg/hlsl/#isinf_half3)
* [isnan\_double3](/core/math/linalg/hlsl/#isnan_double3)
* [isnan\_float3](/core/math/linalg/hlsl/#isnan_float3)
* [isnan\_half3](/core/math/linalg/hlsl/#isnan_half3)
* [lessThanEqual\_double3](/core/math/linalg/hlsl/#lessThanEqual_double3)
* [lessThanEqual\_float3](/core/math/linalg/hlsl/#lessThanEqual_float3)
* [lessThanEqual\_half3](/core/math/linalg/hlsl/#lessThanEqual_half3)
* [lessThanEqual\_int3](/core/math/linalg/hlsl/#lessThanEqual_int3)
* [lessThanEqual\_uint3](/core/math/linalg/hlsl/#lessThanEqual_uint3)
* [lessThan\_double3](/core/math/linalg/hlsl/#lessThan_double3)
* [lessThan\_float3](/core/math/linalg/hlsl/#lessThan_float3)
* [lessThan\_half3](/core/math/linalg/hlsl/#lessThan_half3)
* [lessThan\_int3](/core/math/linalg/hlsl/#lessThan_int3)
* [lessThan\_uint3](/core/math/linalg/hlsl/#lessThan_uint3)
* [notEqual\_double3](/core/math/linalg/hlsl/#notEqual_double3)
* [notEqual\_float3](/core/math/linalg/hlsl/#notEqual_float3)
* [notEqual\_half3](/core/math/linalg/hlsl/#notEqual_half3)
* [notEqual\_int3](/core/math/linalg/hlsl/#notEqual_int3)
* [notEqual\_uint3](/core/math/linalg/hlsl/#notEqual_uint3)
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*

### [bool4 ¶](#bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L88)

```
bool4 :: [4]bool
```

##### Related Procedures With Parameters

* [all\_bool4](/core/math/linalg/hlsl/#all_bool4)
* [any\_bool4](/core/math/linalg/hlsl/#any_bool4)
* [asdouble\_bool4](/core/math/linalg/hlsl/#asdouble_bool4)
* [asfloat\_bool4](/core/math/linalg/hlsl/#asfloat_bool4)
* [ashalf\_bool4](/core/math/linalg/hlsl/#ashalf_bool4)
* [asint\_bool4](/core/math/linalg/hlsl/#asint_bool4)
* [asuint\_bool4](/core/math/linalg/hlsl/#asuint_bool4)
* [not\_bool4](/core/math/linalg/hlsl/#not_bool4)
* [all](/core/math/linalg/hlsl/#all) *(procedure groups)*
* [any](/core/math/linalg/hlsl/#any) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [not](/core/math/linalg/hlsl/#not) *(procedure groups)*



##### Related Procedures With Returns

* [equal\_double4](/core/math/linalg/hlsl/#equal_double4)
* [equal\_float4](/core/math/linalg/hlsl/#equal_float4)
* [equal\_half4](/core/math/linalg/hlsl/#equal_half4)
* [equal\_int4](/core/math/linalg/hlsl/#equal_int4)
* [equal\_uint4](/core/math/linalg/hlsl/#equal_uint4)
* [greaterThanEqual\_double4](/core/math/linalg/hlsl/#greaterThanEqual_double4)
* [greaterThanEqual\_float4](/core/math/linalg/hlsl/#greaterThanEqual_float4)
* [greaterThanEqual\_half4](/core/math/linalg/hlsl/#greaterThanEqual_half4)
* [greaterThanEqual\_int4](/core/math/linalg/hlsl/#greaterThanEqual_int4)
* [greaterThanEqual\_uint4](/core/math/linalg/hlsl/#greaterThanEqual_uint4)
* [greaterThan\_double4](/core/math/linalg/hlsl/#greaterThan_double4)
* [greaterThan\_float4](/core/math/linalg/hlsl/#greaterThan_float4)
* [greaterThan\_half4](/core/math/linalg/hlsl/#greaterThan_half4)
* [greaterThan\_int4](/core/math/linalg/hlsl/#greaterThan_int4)
* [greaterThan\_uint4](/core/math/linalg/hlsl/#greaterThan_uint4)
* [isfinite\_double4](/core/math/linalg/hlsl/#isfinite_double4)
* [isfinite\_float4](/core/math/linalg/hlsl/#isfinite_float4)
* [isfinite\_half4](/core/math/linalg/hlsl/#isfinite_half4)
* [isinf\_double4](/core/math/linalg/hlsl/#isinf_double4)
* [isinf\_float4](/core/math/linalg/hlsl/#isinf_float4)
* [isinf\_half4](/core/math/linalg/hlsl/#isinf_half4)
* [isnan\_double4](/core/math/linalg/hlsl/#isnan_double4)
* [isnan\_float4](/core/math/linalg/hlsl/#isnan_float4)
* [isnan\_half4](/core/math/linalg/hlsl/#isnan_half4)
* [lessThanEqual\_double4](/core/math/linalg/hlsl/#lessThanEqual_double4)
* [lessThanEqual\_float4](/core/math/linalg/hlsl/#lessThanEqual_float4)
* [lessThanEqual\_half4](/core/math/linalg/hlsl/#lessThanEqual_half4)
* [lessThanEqual\_int4](/core/math/linalg/hlsl/#lessThanEqual_int4)
* [lessThanEqual\_uint4](/core/math/linalg/hlsl/#lessThanEqual_uint4)
* [lessThan\_double4](/core/math/linalg/hlsl/#lessThan_double4)
* [lessThan\_float4](/core/math/linalg/hlsl/#lessThan_float4)
* [lessThan\_half4](/core/math/linalg/hlsl/#lessThan_half4)
* [lessThan\_int4](/core/math/linalg/hlsl/#lessThan_int4)
* [lessThan\_uint4](/core/math/linalg/hlsl/#lessThan_uint4)
* [notEqual\_double4](/core/math/linalg/hlsl/#notEqual_double4)
* [notEqual\_float4](/core/math/linalg/hlsl/#notEqual_float4)
* [notEqual\_half4](/core/math/linalg/hlsl/#notEqual_half4)
* [notEqual\_int4](/core/math/linalg/hlsl/#notEqual_int4)
* [notEqual\_uint4](/core/math/linalg/hlsl/#notEqual_uint4)
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*

### [double ¶](#double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L27)

```
double :: f64
```

##### Related Procedures With Parameters

* [abs\_double](/core/math/linalg/hlsl/#abs_double)
* [acos\_double](/core/math/linalg/hlsl/#acos_double)
* [acosh\_double](/core/math/linalg/hlsl/#acosh_double)
* [asdouble\_double](/core/math/linalg/hlsl/#asdouble_double)
* [asfloat\_double](/core/math/linalg/hlsl/#asfloat_double)
* [ashalf\_double](/core/math/linalg/hlsl/#ashalf_double)
* [asin\_double](/core/math/linalg/hlsl/#asin_double)
* [asinh\_double](/core/math/linalg/hlsl/#asinh_double)
* [asint\_double](/core/math/linalg/hlsl/#asint_double)
* [asuint\_double](/core/math/linalg/hlsl/#asuint_double)
* [atan2\_double](/core/math/linalg/hlsl/#atan2_double)
* [atan\_double](/core/math/linalg/hlsl/#atan_double)
* [atanh\_double](/core/math/linalg/hlsl/#atanh_double)
* [ceil\_double](/core/math/linalg/hlsl/#ceil_double)
* [clamp\_double](/core/math/linalg/hlsl/#clamp_double)
* [cos\_double](/core/math/linalg/hlsl/#cos_double)
* [cosh\_double](/core/math/linalg/hlsl/#cosh_double)
* [degrees\_double](/core/math/linalg/hlsl/#degrees_double)
* [distance\_double](/core/math/linalg/hlsl/#distance_double)
* [dot\_double](/core/math/linalg/hlsl/#dot_double)
* [equal\_double](/core/math/linalg/hlsl/#equal_double)
* [exp2\_double](/core/math/linalg/hlsl/#exp2_double)
* [exp\_double](/core/math/linalg/hlsl/#exp_double)
* [faceforward\_double](/core/math/linalg/hlsl/#faceforward_double)
* [floor\_double](/core/math/linalg/hlsl/#floor_double)
* [fmod\_double](/core/math/linalg/hlsl/#fmod_double)
* [frac\_double](/core/math/linalg/hlsl/#frac_double)
* [greaterThanEqual\_double](/core/math/linalg/hlsl/#greaterThanEqual_double)
* [greaterThan\_double](/core/math/linalg/hlsl/#greaterThan_double)
* [isfinite\_double](/core/math/linalg/hlsl/#isfinite_double)
* [isinf\_double](/core/math/linalg/hlsl/#isinf_double)
* [isnan\_double](/core/math/linalg/hlsl/#isnan_double)
* [length\_double](/core/math/linalg/hlsl/#length_double)
* [lerp\_double](/core/math/linalg/hlsl/#lerp_double)
* [lessThanEqual\_double](/core/math/linalg/hlsl/#lessThanEqual_double)
* [lessThan\_double](/core/math/linalg/hlsl/#lessThan_double)
* [log10\_double](/core/math/linalg/hlsl/#log10_double)
* [log2\_double](/core/math/linalg/hlsl/#log2_double)
* [log\_double](/core/math/linalg/hlsl/#log_double)
* [max\_double](/core/math/linalg/hlsl/#max_double)
* [min\_double](/core/math/linalg/hlsl/#min_double)
* [normalize\_double](/core/math/linalg/hlsl/#normalize_double)
* [notEqual\_double](/core/math/linalg/hlsl/#notEqual_double)
* [pow\_double](/core/math/linalg/hlsl/#pow_double)
* [radians\_double](/core/math/linalg/hlsl/#radians_double)
* [rcp\_double](/core/math/linalg/hlsl/#rcp_double)
* [reflect\_double](/core/math/linalg/hlsl/#reflect_double)
* [refract\_double](/core/math/linalg/hlsl/#refract_double)
* [round\_double](/core/math/linalg/hlsl/#round_double)
* [rsqrt\_double](/core/math/linalg/hlsl/#rsqrt_double)
* [saturate\_double](/core/math/linalg/hlsl/#saturate_double)
* [sign\_double](/core/math/linalg/hlsl/#sign_double)
* [sin\_double](/core/math/linalg/hlsl/#sin_double)
* [sinh\_double](/core/math/linalg/hlsl/#sinh_double)
* [smoothstep\_double](/core/math/linalg/hlsl/#smoothstep_double)
* [sqrt\_double](/core/math/linalg/hlsl/#sqrt_double)
* [step\_double](/core/math/linalg/hlsl/#step_double)
* [tan\_double](/core/math/linalg/hlsl/#tan_double)
* [tanh\_double](/core/math/linalg/hlsl/#tanh_double)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float](/core/math/linalg/hlsl/#asdouble_float)
* [asdouble\_half](/core/math/linalg/hlsl/#asdouble_half)
* [asdouble\_int](/core/math/linalg/hlsl/#asdouble_int)
* [asdouble\_uint](/core/math/linalg/hlsl/#asdouble_uint)
* [distance\_double2](/core/math/linalg/hlsl/#distance_double2)
* [distance\_double3](/core/math/linalg/hlsl/#distance_double3)
* [distance\_double4](/core/math/linalg/hlsl/#distance_double4)
* [dot\_double2](/core/math/linalg/hlsl/#dot_double2)
* [dot\_double3](/core/math/linalg/hlsl/#dot_double3)
* [dot\_double4](/core/math/linalg/hlsl/#dot_double4)
* [length\_double2](/core/math/linalg/hlsl/#length_double2)
* [length\_double3](/core/math/linalg/hlsl/#length_double3)
* [length\_double4](/core/math/linalg/hlsl/#length_double4)
* [scalarTripleProduct\_double3](/core/math/linalg/hlsl/#scalarTripleProduct_double3)
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*

### [double1x1 ¶](#double1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L92)

```
double1x1 :: matrix[1, 1]f64
```

##### Related Procedures With Parameters

* [asdouble\_double1x1](/core/math/linalg/hlsl/#asdouble_double1x1)
* [asfloat\_double1x1](/core/math/linalg/hlsl/#asfloat_double1x1)
* [ashalf\_double1x1](/core/math/linalg/hlsl/#ashalf_double1x1)
* [asint\_double1x1](/core/math/linalg/hlsl/#asint_double1x1)
* [inverse\_double1x1](/core/math/linalg/hlsl/#inverse_double1x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float1x1](/core/math/linalg/hlsl/#asdouble_float1x1)
* [asdouble\_half1x1](/core/math/linalg/hlsl/#asdouble_half1x1)

### [double1x2 ¶](#double1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L97)

```
double1x2 :: matrix[1, 2]f64
```

##### Related Procedures With Parameters

* [asdouble\_double1x2](/core/math/linalg/hlsl/#asdouble_double1x2)
* [asfloat\_double1x2](/core/math/linalg/hlsl/#asfloat_double1x2)
* [ashalf\_double1x2](/core/math/linalg/hlsl/#ashalf_double1x2)
* [asint\_double1x2](/core/math/linalg/hlsl/#asint_double1x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float1x2](/core/math/linalg/hlsl/#asdouble_float1x2)
* [asdouble\_half1x2](/core/math/linalg/hlsl/#asdouble_half1x2)

### [double1x3 ¶](#double1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L98)

```
double1x3 :: matrix[1, 3]f64
```

##### Related Procedures With Parameters

* [asdouble\_double1x3](/core/math/linalg/hlsl/#asdouble_double1x3)
* [asfloat\_double1x3](/core/math/linalg/hlsl/#asfloat_double1x3)
* [ashalf\_double1x3](/core/math/linalg/hlsl/#ashalf_double1x3)
* [asint\_double1x3](/core/math/linalg/hlsl/#asint_double1x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float1x3](/core/math/linalg/hlsl/#asdouble_float1x3)
* [asdouble\_half1x3](/core/math/linalg/hlsl/#asdouble_half1x3)

### [double1x4 ¶](#double1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L99)

```
double1x4 :: matrix[1, 4]f64
```

##### Related Procedures With Parameters

* [asdouble\_double1x4](/core/math/linalg/hlsl/#asdouble_double1x4)
* [asfloat\_double1x4](/core/math/linalg/hlsl/#asfloat_double1x4)
* [ashalf\_double1x4](/core/math/linalg/hlsl/#ashalf_double1x4)
* [asint\_double1x4](/core/math/linalg/hlsl/#asint_double1x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float1x4](/core/math/linalg/hlsl/#asdouble_float1x4)
* [asdouble\_half1x4](/core/math/linalg/hlsl/#asdouble_half1x4)

### [double2 ¶](#double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L110)

```
double2 :: [2]f64
```

##### Related Procedures With Parameters

* [abs\_double2](/core/math/linalg/hlsl/#abs_double2)
* [acos\_double2](/core/math/linalg/hlsl/#acos_double2)
* [acosh\_double2](/core/math/linalg/hlsl/#acosh_double2)
* [asdouble\_double2](/core/math/linalg/hlsl/#asdouble_double2)
* [asfloat\_double2](/core/math/linalg/hlsl/#asfloat_double2)
* [ashalf\_double2](/core/math/linalg/hlsl/#ashalf_double2)
* [asin\_double2](/core/math/linalg/hlsl/#asin_double2)
* [asinh\_double2](/core/math/linalg/hlsl/#asinh_double2)
* [asint\_double2](/core/math/linalg/hlsl/#asint_double2)
* [asuint\_double2](/core/math/linalg/hlsl/#asuint_double2)
* [atan2\_double2](/core/math/linalg/hlsl/#atan2_double2)
* [atan\_double2](/core/math/linalg/hlsl/#atan_double2)
* [atanh\_double2](/core/math/linalg/hlsl/#atanh_double2)
* [ceil\_double2](/core/math/linalg/hlsl/#ceil_double2)
* [clamp\_double2](/core/math/linalg/hlsl/#clamp_double2)
* [cos\_double2](/core/math/linalg/hlsl/#cos_double2)
* [cosh\_double2](/core/math/linalg/hlsl/#cosh_double2)
* [degrees\_double2](/core/math/linalg/hlsl/#degrees_double2)
* [distance\_double2](/core/math/linalg/hlsl/#distance_double2)
* [dot\_double2](/core/math/linalg/hlsl/#dot_double2)
* [equal\_double2](/core/math/linalg/hlsl/#equal_double2)
* [exp2\_double2](/core/math/linalg/hlsl/#exp2_double2)
* [exp\_double2](/core/math/linalg/hlsl/#exp_double2)
* [faceforward\_double2](/core/math/linalg/hlsl/#faceforward_double2)
* [floor\_double2](/core/math/linalg/hlsl/#floor_double2)
* [fmod\_double2](/core/math/linalg/hlsl/#fmod_double2)
* [frac\_double2](/core/math/linalg/hlsl/#frac_double2)
* [greaterThanEqual\_double2](/core/math/linalg/hlsl/#greaterThanEqual_double2)
* [greaterThan\_double2](/core/math/linalg/hlsl/#greaterThan_double2)
* [isfinite\_double2](/core/math/linalg/hlsl/#isfinite_double2)
* [isinf\_double2](/core/math/linalg/hlsl/#isinf_double2)
* [isnan\_double2](/core/math/linalg/hlsl/#isnan_double2)
* [length\_double2](/core/math/linalg/hlsl/#length_double2)
* [lerp\_double2](/core/math/linalg/hlsl/#lerp_double2)
* [lessThanEqual\_double2](/core/math/linalg/hlsl/#lessThanEqual_double2)
* [lessThan\_double2](/core/math/linalg/hlsl/#lessThan_double2)
* [log10\_double2](/core/math/linalg/hlsl/#log10_double2)
* [log2\_double2](/core/math/linalg/hlsl/#log2_double2)
* [log\_double2](/core/math/linalg/hlsl/#log_double2)
* [max\_double2](/core/math/linalg/hlsl/#max_double2)
* [min\_double2](/core/math/linalg/hlsl/#min_double2)
* [normalize\_double2](/core/math/linalg/hlsl/#normalize_double2)
* [notEqual\_double2](/core/math/linalg/hlsl/#notEqual_double2)
* [pow\_double2](/core/math/linalg/hlsl/#pow_double2)
* [radians\_double2](/core/math/linalg/hlsl/#radians_double2)
* [rcp\_double2](/core/math/linalg/hlsl/#rcp_double2)
* [reflect\_double2](/core/math/linalg/hlsl/#reflect_double2)
* [refract\_double2](/core/math/linalg/hlsl/#refract_double2)
* [round\_double2](/core/math/linalg/hlsl/#round_double2)
* [rsqrt\_double2](/core/math/linalg/hlsl/#rsqrt_double2)
* [saturate\_double2](/core/math/linalg/hlsl/#saturate_double2)
* [sign\_double2](/core/math/linalg/hlsl/#sign_double2)
* [sin\_double2](/core/math/linalg/hlsl/#sin_double2)
* [sinh\_double2](/core/math/linalg/hlsl/#sinh_double2)
* [smoothstep\_double2](/core/math/linalg/hlsl/#smoothstep_double2)
* [sqrt\_double2](/core/math/linalg/hlsl/#sqrt_double2)
* [step\_double2](/core/math/linalg/hlsl/#step_double2)
* [tan\_double2](/core/math/linalg/hlsl/#tan_double2)
* [tanh\_double2](/core/math/linalg/hlsl/#tanh_double2)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_bool2](/core/math/linalg/hlsl/#asdouble_bool2)
* [asdouble\_float2](/core/math/linalg/hlsl/#asdouble_float2)
* [asdouble\_half2](/core/math/linalg/hlsl/#asdouble_half2)
* [asdouble\_int2](/core/math/linalg/hlsl/#asdouble_int2)
* [asdouble\_uint2](/core/math/linalg/hlsl/#asdouble_uint2)

### [double2x1 ¶](#double2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L100)

```
double2x1 :: matrix[2, 1]f64
```

##### Related Procedures With Parameters

* [asdouble\_double2x1](/core/math/linalg/hlsl/#asdouble_double2x1)
* [asfloat\_double2x1](/core/math/linalg/hlsl/#asfloat_double2x1)
* [ashalf\_double2x1](/core/math/linalg/hlsl/#ashalf_double2x1)
* [asint\_double2x1](/core/math/linalg/hlsl/#asint_double2x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float2x1](/core/math/linalg/hlsl/#asdouble_float2x1)
* [asdouble\_half2x1](/core/math/linalg/hlsl/#asdouble_half2x1)

### [double2x2 ¶](#double2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L93)

```
double2x2 :: matrix[2, 2]f64
```

##### Related Procedures With Parameters

* [asdouble\_double2x2](/core/math/linalg/hlsl/#asdouble_double2x2)
* [asfloat\_double2x2](/core/math/linalg/hlsl/#asfloat_double2x2)
* [ashalf\_double2x2](/core/math/linalg/hlsl/#ashalf_double2x2)
* [asint\_double2x2](/core/math/linalg/hlsl/#asint_double2x2)
* [inverse\_double2x2](/core/math/linalg/hlsl/#inverse_double2x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float2x2](/core/math/linalg/hlsl/#asdouble_float2x2)
* [asdouble\_half2x2](/core/math/linalg/hlsl/#asdouble_half2x2)

### [double2x3 ¶](#double2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L101)

```
double2x3 :: matrix[2, 3]f64
```

##### Related Procedures With Parameters

* [asdouble\_double2x3](/core/math/linalg/hlsl/#asdouble_double2x3)
* [asfloat\_double2x3](/core/math/linalg/hlsl/#asfloat_double2x3)
* [ashalf\_double2x3](/core/math/linalg/hlsl/#ashalf_double2x3)
* [asint\_double2x3](/core/math/linalg/hlsl/#asint_double2x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float2x3](/core/math/linalg/hlsl/#asdouble_float2x3)
* [asdouble\_half2x3](/core/math/linalg/hlsl/#asdouble_half2x3)

### [double2x4 ¶](#double2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L102)

```
double2x4 :: matrix[2, 4]f64
```

##### Related Procedures With Parameters

* [asdouble\_double2x4](/core/math/linalg/hlsl/#asdouble_double2x4)
* [asfloat\_double2x4](/core/math/linalg/hlsl/#asfloat_double2x4)
* [ashalf\_double2x4](/core/math/linalg/hlsl/#ashalf_double2x4)
* [asint\_double2x4](/core/math/linalg/hlsl/#asint_double2x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float2x4](/core/math/linalg/hlsl/#asdouble_float2x4)
* [asdouble\_half2x4](/core/math/linalg/hlsl/#asdouble_half2x4)

### [double3 ¶](#double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L111)

```
double3 :: [3]f64
```

##### Related Procedures With Parameters

* [abs\_double3](/core/math/linalg/hlsl/#abs_double3)
* [acos\_double3](/core/math/linalg/hlsl/#acos_double3)
* [acosh\_double3](/core/math/linalg/hlsl/#acosh_double3)
* [asdouble\_double3](/core/math/linalg/hlsl/#asdouble_double3)
* [asfloat\_double3](/core/math/linalg/hlsl/#asfloat_double3)
* [ashalf\_double3](/core/math/linalg/hlsl/#ashalf_double3)
* [asin\_double3](/core/math/linalg/hlsl/#asin_double3)
* [asinh\_double3](/core/math/linalg/hlsl/#asinh_double3)
* [asint\_double3](/core/math/linalg/hlsl/#asint_double3)
* [asuint\_double3](/core/math/linalg/hlsl/#asuint_double3)
* [atan2\_double3](/core/math/linalg/hlsl/#atan2_double3)
* [atan\_double3](/core/math/linalg/hlsl/#atan_double3)
* [atanh\_double3](/core/math/linalg/hlsl/#atanh_double3)
* [ceil\_double3](/core/math/linalg/hlsl/#ceil_double3)
* [clamp\_double3](/core/math/linalg/hlsl/#clamp_double3)
* [cos\_double3](/core/math/linalg/hlsl/#cos_double3)
* [cosh\_double3](/core/math/linalg/hlsl/#cosh_double3)
* [cross\_double3](/core/math/linalg/hlsl/#cross_double3)
* [degrees\_double3](/core/math/linalg/hlsl/#degrees_double3)
* [distance\_double3](/core/math/linalg/hlsl/#distance_double3)
* [dot\_double3](/core/math/linalg/hlsl/#dot_double3)
* [equal\_double3](/core/math/linalg/hlsl/#equal_double3)
* [exp2\_double3](/core/math/linalg/hlsl/#exp2_double3)
* [exp\_double3](/core/math/linalg/hlsl/#exp_double3)
* [faceforward\_double3](/core/math/linalg/hlsl/#faceforward_double3)
* [floor\_double3](/core/math/linalg/hlsl/#floor_double3)
* [fmod\_double3](/core/math/linalg/hlsl/#fmod_double3)
* [frac\_double3](/core/math/linalg/hlsl/#frac_double3)
* [greaterThanEqual\_double3](/core/math/linalg/hlsl/#greaterThanEqual_double3)
* [greaterThan\_double3](/core/math/linalg/hlsl/#greaterThan_double3)
* [isfinite\_double3](/core/math/linalg/hlsl/#isfinite_double3)
* [isinf\_double3](/core/math/linalg/hlsl/#isinf_double3)
* [isnan\_double3](/core/math/linalg/hlsl/#isnan_double3)
* [length\_double3](/core/math/linalg/hlsl/#length_double3)
* [lerp\_double3](/core/math/linalg/hlsl/#lerp_double3)
* [lessThanEqual\_double3](/core/math/linalg/hlsl/#lessThanEqual_double3)
* [lessThan\_double3](/core/math/linalg/hlsl/#lessThan_double3)
* [log10\_double3](/core/math/linalg/hlsl/#log10_double3)
* [log2\_double3](/core/math/linalg/hlsl/#log2_double3)
* [log\_double3](/core/math/linalg/hlsl/#log_double3)
* [max\_double3](/core/math/linalg/hlsl/#max_double3)
* [min\_double3](/core/math/linalg/hlsl/#min_double3)
* [normalize\_double3](/core/math/linalg/hlsl/#normalize_double3)
* [notEqual\_double3](/core/math/linalg/hlsl/#notEqual_double3)
* [pow\_double3](/core/math/linalg/hlsl/#pow_double3)
* [radians\_double3](/core/math/linalg/hlsl/#radians_double3)
* [rcp\_double3](/core/math/linalg/hlsl/#rcp_double3)
* [reflect\_double3](/core/math/linalg/hlsl/#reflect_double3)
* [refract\_double3](/core/math/linalg/hlsl/#refract_double3)
* [round\_double3](/core/math/linalg/hlsl/#round_double3)
* [rsqrt\_double3](/core/math/linalg/hlsl/#rsqrt_double3)
* [saturate\_double3](/core/math/linalg/hlsl/#saturate_double3)
* [scalarTripleProduct\_double3](/core/math/linalg/hlsl/#scalarTripleProduct_double3)
* [sign\_double3](/core/math/linalg/hlsl/#sign_double3)
* [sin\_double3](/core/math/linalg/hlsl/#sin_double3)
* [sinh\_double3](/core/math/linalg/hlsl/#sinh_double3)
* [smoothstep\_double3](/core/math/linalg/hlsl/#smoothstep_double3)
* [sqrt\_double3](/core/math/linalg/hlsl/#sqrt_double3)
* [step\_double3](/core/math/linalg/hlsl/#step_double3)
* [tan\_double3](/core/math/linalg/hlsl/#tan_double3)
* [tanh\_double3](/core/math/linalg/hlsl/#tanh_double3)
* [vectorTripleProduct\_double3](/core/math/linalg/hlsl/#vectorTripleProduct_double3)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [cross](/core/math/linalg/hlsl/#cross) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*
* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_bool3](/core/math/linalg/hlsl/#asdouble_bool3)
* [asdouble\_float3](/core/math/linalg/hlsl/#asdouble_float3)
* [asdouble\_half3](/core/math/linalg/hlsl/#asdouble_half3)
* [asdouble\_int3](/core/math/linalg/hlsl/#asdouble_int3)
* [asdouble\_uint3](/core/math/linalg/hlsl/#asdouble_uint3)

### [double3x1 ¶](#double3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L103)

```
double3x1 :: matrix[3, 1]f64
```

##### Related Procedures With Parameters

* [asdouble\_double3x1](/core/math/linalg/hlsl/#asdouble_double3x1)
* [asfloat\_double3x1](/core/math/linalg/hlsl/#asfloat_double3x1)
* [ashalf\_double3x1](/core/math/linalg/hlsl/#ashalf_double3x1)
* [asint\_double3x1](/core/math/linalg/hlsl/#asint_double3x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float3x1](/core/math/linalg/hlsl/#asdouble_float3x1)
* [asdouble\_half3x1](/core/math/linalg/hlsl/#asdouble_half3x1)

### [double3x2 ¶](#double3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L104)

```
double3x2 :: matrix[3, 2]f64
```

##### Related Procedures With Parameters

* [asdouble\_double3x2](/core/math/linalg/hlsl/#asdouble_double3x2)
* [asfloat\_double3x2](/core/math/linalg/hlsl/#asfloat_double3x2)
* [ashalf\_double3x2](/core/math/linalg/hlsl/#ashalf_double3x2)
* [asint\_double3x2](/core/math/linalg/hlsl/#asint_double3x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float3x2](/core/math/linalg/hlsl/#asdouble_float3x2)
* [asdouble\_half3x2](/core/math/linalg/hlsl/#asdouble_half3x2)

### [double3x3 ¶](#double3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L94)

```
double3x3 :: matrix[3, 3]f64
```

##### Related Procedures With Parameters

* [asdouble\_double3x3](/core/math/linalg/hlsl/#asdouble_double3x3)
* [asfloat\_double3x3](/core/math/linalg/hlsl/#asfloat_double3x3)
* [ashalf\_double3x3](/core/math/linalg/hlsl/#ashalf_double3x3)
* [asint\_double3x3](/core/math/linalg/hlsl/#asint_double3x3)
* [inverse\_double3x3](/core/math/linalg/hlsl/#inverse_double3x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float3x3](/core/math/linalg/hlsl/#asdouble_float3x3)
* [asdouble\_half3x3](/core/math/linalg/hlsl/#asdouble_half3x3)

### [double3x4 ¶](#double3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L105)

```
double3x4 :: matrix[3, 4]f64
```

##### Related Procedures With Parameters

* [asdouble\_double3x4](/core/math/linalg/hlsl/#asdouble_double3x4)
* [asfloat\_double3x4](/core/math/linalg/hlsl/#asfloat_double3x4)
* [ashalf\_double3x4](/core/math/linalg/hlsl/#ashalf_double3x4)
* [asint\_double3x4](/core/math/linalg/hlsl/#asint_double3x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float3x4](/core/math/linalg/hlsl/#asdouble_float3x4)
* [asdouble\_half3x4](/core/math/linalg/hlsl/#asdouble_half3x4)

### [double4 ¶](#double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L112)

```
double4 :: [4]f64
```

##### Related Procedures With Parameters

* [abs\_double4](/core/math/linalg/hlsl/#abs_double4)
* [acos\_double4](/core/math/linalg/hlsl/#acos_double4)
* [acosh\_double4](/core/math/linalg/hlsl/#acosh_double4)
* [asdouble\_double4](/core/math/linalg/hlsl/#asdouble_double4)
* [asfloat\_double4](/core/math/linalg/hlsl/#asfloat_double4)
* [ashalf\_double4](/core/math/linalg/hlsl/#ashalf_double4)
* [asin\_double4](/core/math/linalg/hlsl/#asin_double4)
* [asinh\_double4](/core/math/linalg/hlsl/#asinh_double4)
* [asint\_double4](/core/math/linalg/hlsl/#asint_double4)
* [asuint\_double4](/core/math/linalg/hlsl/#asuint_double4)
* [atan2\_double4](/core/math/linalg/hlsl/#atan2_double4)
* [atan\_double4](/core/math/linalg/hlsl/#atan_double4)
* [atanh\_double4](/core/math/linalg/hlsl/#atanh_double4)
* [ceil\_double4](/core/math/linalg/hlsl/#ceil_double4)
* [clamp\_double4](/core/math/linalg/hlsl/#clamp_double4)
* [cos\_double4](/core/math/linalg/hlsl/#cos_double4)
* [cosh\_double4](/core/math/linalg/hlsl/#cosh_double4)
* [degrees\_double4](/core/math/linalg/hlsl/#degrees_double4)
* [distance\_double4](/core/math/linalg/hlsl/#distance_double4)
* [dot\_double4](/core/math/linalg/hlsl/#dot_double4)
* [equal\_double4](/core/math/linalg/hlsl/#equal_double4)
* [exp2\_double4](/core/math/linalg/hlsl/#exp2_double4)
* [exp\_double4](/core/math/linalg/hlsl/#exp_double4)
* [faceforward\_double4](/core/math/linalg/hlsl/#faceforward_double4)
* [floor\_double4](/core/math/linalg/hlsl/#floor_double4)
* [fmod\_double4](/core/math/linalg/hlsl/#fmod_double4)
* [frac\_double4](/core/math/linalg/hlsl/#frac_double4)
* [greaterThanEqual\_double4](/core/math/linalg/hlsl/#greaterThanEqual_double4)
* [greaterThan\_double4](/core/math/linalg/hlsl/#greaterThan_double4)
* [isfinite\_double4](/core/math/linalg/hlsl/#isfinite_double4)
* [isinf\_double4](/core/math/linalg/hlsl/#isinf_double4)
* [isnan\_double4](/core/math/linalg/hlsl/#isnan_double4)
* [length\_double4](/core/math/linalg/hlsl/#length_double4)
* [lerp\_double4](/core/math/linalg/hlsl/#lerp_double4)
* [lessThanEqual\_double4](/core/math/linalg/hlsl/#lessThanEqual_double4)
* [lessThan\_double4](/core/math/linalg/hlsl/#lessThan_double4)
* [log10\_double4](/core/math/linalg/hlsl/#log10_double4)
* [log2\_double4](/core/math/linalg/hlsl/#log2_double4)
* [log\_double4](/core/math/linalg/hlsl/#log_double4)
* [max\_double4](/core/math/linalg/hlsl/#max_double4)
* [min\_double4](/core/math/linalg/hlsl/#min_double4)
* [normalize\_double4](/core/math/linalg/hlsl/#normalize_double4)
* [notEqual\_double4](/core/math/linalg/hlsl/#notEqual_double4)
* [pow\_double4](/core/math/linalg/hlsl/#pow_double4)
* [radians\_double4](/core/math/linalg/hlsl/#radians_double4)
* [rcp\_double4](/core/math/linalg/hlsl/#rcp_double4)
* [reflect\_double4](/core/math/linalg/hlsl/#reflect_double4)
* [refract\_double4](/core/math/linalg/hlsl/#refract_double4)
* [round\_double4](/core/math/linalg/hlsl/#round_double4)
* [rsqrt\_double4](/core/math/linalg/hlsl/#rsqrt_double4)
* [saturate\_double4](/core/math/linalg/hlsl/#saturate_double4)
* [sign\_double4](/core/math/linalg/hlsl/#sign_double4)
* [sin\_double4](/core/math/linalg/hlsl/#sin_double4)
* [sinh\_double4](/core/math/linalg/hlsl/#sinh_double4)
* [smoothstep\_double4](/core/math/linalg/hlsl/#smoothstep_double4)
* [sqrt\_double4](/core/math/linalg/hlsl/#sqrt_double4)
* [step\_double4](/core/math/linalg/hlsl/#step_double4)
* [tan\_double4](/core/math/linalg/hlsl/#tan_double4)
* [tanh\_double4](/core/math/linalg/hlsl/#tanh_double4)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_bool4](/core/math/linalg/hlsl/#asdouble_bool4)
* [asdouble\_float4](/core/math/linalg/hlsl/#asdouble_float4)
* [asdouble\_half4](/core/math/linalg/hlsl/#asdouble_half4)
* [asdouble\_int4](/core/math/linalg/hlsl/#asdouble_int4)
* [asdouble\_uint4](/core/math/linalg/hlsl/#asdouble_uint4)

### [double4x1 ¶](#double4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L106)

```
double4x1 :: matrix[4, 1]f64
```

##### Related Procedures With Parameters

* [asdouble\_double4x1](/core/math/linalg/hlsl/#asdouble_double4x1)
* [asfloat\_double4x1](/core/math/linalg/hlsl/#asfloat_double4x1)
* [ashalf\_double4x1](/core/math/linalg/hlsl/#ashalf_double4x1)
* [asint\_double4x1](/core/math/linalg/hlsl/#asint_double4x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float4x1](/core/math/linalg/hlsl/#asdouble_float4x1)
* [asdouble\_half4x1](/core/math/linalg/hlsl/#asdouble_half4x1)

### [double4x2 ¶](#double4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L107)

```
double4x2 :: matrix[4, 2]f64
```

##### Related Procedures With Parameters

* [asdouble\_double4x2](/core/math/linalg/hlsl/#asdouble_double4x2)
* [asfloat\_double4x2](/core/math/linalg/hlsl/#asfloat_double4x2)
* [ashalf\_double4x2](/core/math/linalg/hlsl/#ashalf_double4x2)
* [asint\_double4x2](/core/math/linalg/hlsl/#asint_double4x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float4x2](/core/math/linalg/hlsl/#asdouble_float4x2)
* [asdouble\_half4x2](/core/math/linalg/hlsl/#asdouble_half4x2)

### [double4x3 ¶](#double4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L108)

```
double4x3 :: matrix[4, 3]f64
```

##### Related Procedures With Parameters

* [asdouble\_double4x3](/core/math/linalg/hlsl/#asdouble_double4x3)
* [asfloat\_double4x3](/core/math/linalg/hlsl/#asfloat_double4x3)
* [ashalf\_double4x3](/core/math/linalg/hlsl/#ashalf_double4x3)
* [asint\_double4x3](/core/math/linalg/hlsl/#asint_double4x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float4x3](/core/math/linalg/hlsl/#asdouble_float4x3)
* [asdouble\_half4x3](/core/math/linalg/hlsl/#asdouble_half4x3)

### [double4x4 ¶](#double4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L95)

```
double4x4 :: matrix[4, 4]f64
```

##### Related Procedures With Parameters

* [asdouble\_double4x4](/core/math/linalg/hlsl/#asdouble_double4x4)
* [asfloat\_double4x4](/core/math/linalg/hlsl/#asfloat_double4x4)
* [ashalf\_double4x4](/core/math/linalg/hlsl/#ashalf_double4x4)
* [asint\_double4x4](/core/math/linalg/hlsl/#asint_double4x4)
* [inverse\_double4x4](/core/math/linalg/hlsl/#inverse_double4x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asdouble\_float4x4](/core/math/linalg/hlsl/#asdouble_float4x4)
* [asdouble\_half4x4](/core/math/linalg/hlsl/#asdouble_half4x4)

### [float ¶](#float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L26)

```
float :: f32
```

##### Related Procedures With Parameters

* [abs\_float](/core/math/linalg/hlsl/#abs_float)
* [acos\_float](/core/math/linalg/hlsl/#acos_float)
* [acosh\_float](/core/math/linalg/hlsl/#acosh_float)
* [asdouble\_float](/core/math/linalg/hlsl/#asdouble_float)
* [asfloat\_float](/core/math/linalg/hlsl/#asfloat_float)
* [ashalf\_float](/core/math/linalg/hlsl/#ashalf_float)
* [asin\_float](/core/math/linalg/hlsl/#asin_float)
* [asinh\_float](/core/math/linalg/hlsl/#asinh_float)
* [asint\_float](/core/math/linalg/hlsl/#asint_float)
* [asuint\_float](/core/math/linalg/hlsl/#asuint_float)
* [atan2\_float](/core/math/linalg/hlsl/#atan2_float)
* [atan\_float](/core/math/linalg/hlsl/#atan_float)
* [atanh\_float](/core/math/linalg/hlsl/#atanh_float)
* [ceil\_float](/core/math/linalg/hlsl/#ceil_float)
* [clamp\_float](/core/math/linalg/hlsl/#clamp_float)
* [cos\_float](/core/math/linalg/hlsl/#cos_float)
* [cosh\_float](/core/math/linalg/hlsl/#cosh_float)
* [degrees\_float](/core/math/linalg/hlsl/#degrees_float)
* [distance\_float](/core/math/linalg/hlsl/#distance_float)
* [dot\_float](/core/math/linalg/hlsl/#dot_float)
* [equal\_float](/core/math/linalg/hlsl/#equal_float)
* [exp2\_float](/core/math/linalg/hlsl/#exp2_float)
* [exp\_float](/core/math/linalg/hlsl/#exp_float)
* [faceforward\_float](/core/math/linalg/hlsl/#faceforward_float)
* [floor\_float](/core/math/linalg/hlsl/#floor_float)
* [fmod\_float](/core/math/linalg/hlsl/#fmod_float)
* [frac\_float](/core/math/linalg/hlsl/#frac_float)
* [greaterThanEqual\_float](/core/math/linalg/hlsl/#greaterThanEqual_float)
* [greaterThan\_float](/core/math/linalg/hlsl/#greaterThan_float)
* [isfinite\_float](/core/math/linalg/hlsl/#isfinite_float)
* [isinf\_float](/core/math/linalg/hlsl/#isinf_float)
* [isnan\_float](/core/math/linalg/hlsl/#isnan_float)
* [length\_float](/core/math/linalg/hlsl/#length_float)
* [lerp\_float](/core/math/linalg/hlsl/#lerp_float)
* [lessThanEqual\_float](/core/math/linalg/hlsl/#lessThanEqual_float)
* [lessThan\_float](/core/math/linalg/hlsl/#lessThan_float)
* [log10\_float](/core/math/linalg/hlsl/#log10_float)
* [log2\_float](/core/math/linalg/hlsl/#log2_float)
* [log\_float](/core/math/linalg/hlsl/#log_float)
* [max\_float](/core/math/linalg/hlsl/#max_float)
* [min\_float](/core/math/linalg/hlsl/#min_float)
* [normalize\_float](/core/math/linalg/hlsl/#normalize_float)
* [notEqual\_float](/core/math/linalg/hlsl/#notEqual_float)
* [pow\_float](/core/math/linalg/hlsl/#pow_float)
* [radians\_float](/core/math/linalg/hlsl/#radians_float)
* [rcp\_float](/core/math/linalg/hlsl/#rcp_float)
* [reflect\_float](/core/math/linalg/hlsl/#reflect_float)
* [refract\_float](/core/math/linalg/hlsl/#refract_float)
* [round\_float](/core/math/linalg/hlsl/#round_float)
* [rsqrt\_float](/core/math/linalg/hlsl/#rsqrt_float)
* [saturate\_float](/core/math/linalg/hlsl/#saturate_float)
* [sign\_float](/core/math/linalg/hlsl/#sign_float)
* [sin\_float](/core/math/linalg/hlsl/#sin_float)
* [sinh\_float](/core/math/linalg/hlsl/#sinh_float)
* [smoothstep\_float](/core/math/linalg/hlsl/#smoothstep_float)
* [sqrt\_float](/core/math/linalg/hlsl/#sqrt_float)
* [step\_float](/core/math/linalg/hlsl/#step_float)
* [tan\_float](/core/math/linalg/hlsl/#tan_float)
* [tanh\_float](/core/math/linalg/hlsl/#tanh_float)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double](/core/math/linalg/hlsl/#asfloat_double)
* [asfloat\_half](/core/math/linalg/hlsl/#asfloat_half)
* [asfloat\_int](/core/math/linalg/hlsl/#asfloat_int)
* [asfloat\_uint](/core/math/linalg/hlsl/#asfloat_uint)
* [distance\_float2](/core/math/linalg/hlsl/#distance_float2)
* [distance\_float3](/core/math/linalg/hlsl/#distance_float3)
* [distance\_float4](/core/math/linalg/hlsl/#distance_float4)
* [dot\_float2](/core/math/linalg/hlsl/#dot_float2)
* [dot\_float3](/core/math/linalg/hlsl/#dot_float3)
* [dot\_float4](/core/math/linalg/hlsl/#dot_float4)
* [length\_float2](/core/math/linalg/hlsl/#length_float2)
* [length\_float3](/core/math/linalg/hlsl/#length_float3)
* [length\_float4](/core/math/linalg/hlsl/#length_float4)
* [scalarTripleProduct\_float3](/core/math/linalg/hlsl/#scalarTripleProduct_float3)
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*

### [float1x1 ¶](#float1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L32)

```
float1x1 :: matrix[1, 1]f32
```

 

Odin matrices are stored internally as Column-Major, which matches the internal layout of HLSL by default




##### Related Procedures With Parameters

* [asdouble\_float1x1](/core/math/linalg/hlsl/#asdouble_float1x1)
* [asfloat\_float1x1](/core/math/linalg/hlsl/#asfloat_float1x1)
* [ashalf\_float1x1](/core/math/linalg/hlsl/#ashalf_float1x1)
* [asint\_float1x1](/core/math/linalg/hlsl/#asint_float1x1)
* [inverse\_float1x1](/core/math/linalg/hlsl/#inverse_float1x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double1x1](/core/math/linalg/hlsl/#asfloat_double1x1)
* [asfloat\_half1x1](/core/math/linalg/hlsl/#asfloat_half1x1)

### [float1x2 ¶](#float1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L37)

```
float1x2 :: matrix[1, 2]f32
```

##### Related Procedures With Parameters

* [asdouble\_float1x2](/core/math/linalg/hlsl/#asdouble_float1x2)
* [asfloat\_float1x2](/core/math/linalg/hlsl/#asfloat_float1x2)
* [ashalf\_float1x2](/core/math/linalg/hlsl/#ashalf_float1x2)
* [asint\_float1x2](/core/math/linalg/hlsl/#asint_float1x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double1x2](/core/math/linalg/hlsl/#asfloat_double1x2)
* [asfloat\_half1x2](/core/math/linalg/hlsl/#asfloat_half1x2)

### [float1x3 ¶](#float1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L38)

```
float1x3 :: matrix[1, 3]f32
```

##### Related Procedures With Parameters

* [asdouble\_float1x3](/core/math/linalg/hlsl/#asdouble_float1x3)
* [asfloat\_float1x3](/core/math/linalg/hlsl/#asfloat_float1x3)
* [ashalf\_float1x3](/core/math/linalg/hlsl/#ashalf_float1x3)
* [asint\_float1x3](/core/math/linalg/hlsl/#asint_float1x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double1x3](/core/math/linalg/hlsl/#asfloat_double1x3)
* [asfloat\_half1x3](/core/math/linalg/hlsl/#asfloat_half1x3)

### [float1x4 ¶](#float1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L39)

```
float1x4 :: matrix[1, 4]f32
```

##### Related Procedures With Parameters

* [asdouble\_float1x4](/core/math/linalg/hlsl/#asdouble_float1x4)
* [asfloat\_float1x4](/core/math/linalg/hlsl/#asfloat_float1x4)
* [ashalf\_float1x4](/core/math/linalg/hlsl/#ashalf_float1x4)
* [asint\_float1x4](/core/math/linalg/hlsl/#asint_float1x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double1x4](/core/math/linalg/hlsl/#asfloat_double1x4)
* [asfloat\_half1x4](/core/math/linalg/hlsl/#asfloat_half1x4)

### [float2 ¶](#float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L74)

```
float2 :: [2]f32
```

##### Related Procedures With Parameters

* [abs\_float2](/core/math/linalg/hlsl/#abs_float2)
* [acos\_float2](/core/math/linalg/hlsl/#acos_float2)
* [acosh\_float2](/core/math/linalg/hlsl/#acosh_float2)
* [asdouble\_float2](/core/math/linalg/hlsl/#asdouble_float2)
* [asfloat\_float2](/core/math/linalg/hlsl/#asfloat_float2)
* [ashalf\_float2](/core/math/linalg/hlsl/#ashalf_float2)
* [asin\_float2](/core/math/linalg/hlsl/#asin_float2)
* [asinh\_float2](/core/math/linalg/hlsl/#asinh_float2)
* [asint\_float2](/core/math/linalg/hlsl/#asint_float2)
* [asuint\_float2](/core/math/linalg/hlsl/#asuint_float2)
* [atan2\_float2](/core/math/linalg/hlsl/#atan2_float2)
* [atan\_float2](/core/math/linalg/hlsl/#atan_float2)
* [atanh\_float2](/core/math/linalg/hlsl/#atanh_float2)
* [ceil\_float2](/core/math/linalg/hlsl/#ceil_float2)
* [clamp\_float2](/core/math/linalg/hlsl/#clamp_float2)
* [cos\_float2](/core/math/linalg/hlsl/#cos_float2)
* [cosh\_float2](/core/math/linalg/hlsl/#cosh_float2)
* [degrees\_float2](/core/math/linalg/hlsl/#degrees_float2)
* [distance\_float2](/core/math/linalg/hlsl/#distance_float2)
* [dot\_float2](/core/math/linalg/hlsl/#dot_float2)
* [equal\_float2](/core/math/linalg/hlsl/#equal_float2)
* [exp2\_float2](/core/math/linalg/hlsl/#exp2_float2)
* [exp\_float2](/core/math/linalg/hlsl/#exp_float2)
* [faceforward\_float2](/core/math/linalg/hlsl/#faceforward_float2)
* [floor\_float2](/core/math/linalg/hlsl/#floor_float2)
* [fmod\_float2](/core/math/linalg/hlsl/#fmod_float2)
* [frac\_float2](/core/math/linalg/hlsl/#frac_float2)
* [greaterThanEqual\_float2](/core/math/linalg/hlsl/#greaterThanEqual_float2)
* [greaterThan\_float2](/core/math/linalg/hlsl/#greaterThan_float2)
* [isfinite\_float2](/core/math/linalg/hlsl/#isfinite_float2)
* [isinf\_float2](/core/math/linalg/hlsl/#isinf_float2)
* [isnan\_float2](/core/math/linalg/hlsl/#isnan_float2)
* [length\_float2](/core/math/linalg/hlsl/#length_float2)
* [lerp\_float2](/core/math/linalg/hlsl/#lerp_float2)
* [lessThanEqual\_float2](/core/math/linalg/hlsl/#lessThanEqual_float2)
* [lessThan\_float2](/core/math/linalg/hlsl/#lessThan_float2)
* [log10\_float2](/core/math/linalg/hlsl/#log10_float2)
* [log2\_float2](/core/math/linalg/hlsl/#log2_float2)
* [log\_float2](/core/math/linalg/hlsl/#log_float2)
* [max\_float2](/core/math/linalg/hlsl/#max_float2)
* [min\_float2](/core/math/linalg/hlsl/#min_float2)
* [normalize\_float2](/core/math/linalg/hlsl/#normalize_float2)
* [notEqual\_float2](/core/math/linalg/hlsl/#notEqual_float2)
* [pow\_float2](/core/math/linalg/hlsl/#pow_float2)
* [radians\_float2](/core/math/linalg/hlsl/#radians_float2)
* [rcp\_float2](/core/math/linalg/hlsl/#rcp_float2)
* [reflect\_float2](/core/math/linalg/hlsl/#reflect_float2)
* [refract\_float2](/core/math/linalg/hlsl/#refract_float2)
* [round\_float2](/core/math/linalg/hlsl/#round_float2)
* [rsqrt\_float2](/core/math/linalg/hlsl/#rsqrt_float2)
* [saturate\_float2](/core/math/linalg/hlsl/#saturate_float2)
* [sign\_float2](/core/math/linalg/hlsl/#sign_float2)
* [sin\_float2](/core/math/linalg/hlsl/#sin_float2)
* [sinh\_float2](/core/math/linalg/hlsl/#sinh_float2)
* [smoothstep\_float2](/core/math/linalg/hlsl/#smoothstep_float2)
* [sqrt\_float2](/core/math/linalg/hlsl/#sqrt_float2)
* [step\_float2](/core/math/linalg/hlsl/#step_float2)
* [tan\_float2](/core/math/linalg/hlsl/#tan_float2)
* [tanh\_float2](/core/math/linalg/hlsl/#tanh_float2)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_bool2](/core/math/linalg/hlsl/#asfloat_bool2)
* [asfloat\_double2](/core/math/linalg/hlsl/#asfloat_double2)
* [asfloat\_half2](/core/math/linalg/hlsl/#asfloat_half2)
* [asfloat\_int2](/core/math/linalg/hlsl/#asfloat_int2)
* [asfloat\_uint2](/core/math/linalg/hlsl/#asfloat_uint2)

### [float2x1 ¶](#float2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L40)

```
float2x1 :: matrix[2, 1]f32
```

##### Related Procedures With Parameters

* [asdouble\_float2x1](/core/math/linalg/hlsl/#asdouble_float2x1)
* [asfloat\_float2x1](/core/math/linalg/hlsl/#asfloat_float2x1)
* [ashalf\_float2x1](/core/math/linalg/hlsl/#ashalf_float2x1)
* [asint\_float2x1](/core/math/linalg/hlsl/#asint_float2x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double2x1](/core/math/linalg/hlsl/#asfloat_double2x1)
* [asfloat\_half2x1](/core/math/linalg/hlsl/#asfloat_half2x1)

### [float2x2 ¶](#float2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L33)

```
float2x2 :: matrix[2, 2]f32
```

##### Related Procedures With Parameters

* [asdouble\_float2x2](/core/math/linalg/hlsl/#asdouble_float2x2)
* [asfloat\_float2x2](/core/math/linalg/hlsl/#asfloat_float2x2)
* [ashalf\_float2x2](/core/math/linalg/hlsl/#ashalf_float2x2)
* [asint\_float2x2](/core/math/linalg/hlsl/#asint_float2x2)
* [inverse\_float2x2](/core/math/linalg/hlsl/#inverse_float2x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double2x2](/core/math/linalg/hlsl/#asfloat_double2x2)
* [asfloat\_half2x2](/core/math/linalg/hlsl/#asfloat_half2x2)

### [float2x3 ¶](#float2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L41)

```
float2x3 :: matrix[2, 3]f32
```

##### Related Procedures With Parameters

* [asdouble\_float2x3](/core/math/linalg/hlsl/#asdouble_float2x3)
* [asfloat\_float2x3](/core/math/linalg/hlsl/#asfloat_float2x3)
* [ashalf\_float2x3](/core/math/linalg/hlsl/#ashalf_float2x3)
* [asint\_float2x3](/core/math/linalg/hlsl/#asint_float2x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double2x3](/core/math/linalg/hlsl/#asfloat_double2x3)
* [asfloat\_half2x3](/core/math/linalg/hlsl/#asfloat_half2x3)

### [float2x4 ¶](#float2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L42)

```
float2x4 :: matrix[2, 4]f32
```

##### Related Procedures With Parameters

* [asdouble\_float2x4](/core/math/linalg/hlsl/#asdouble_float2x4)
* [asfloat\_float2x4](/core/math/linalg/hlsl/#asfloat_float2x4)
* [ashalf\_float2x4](/core/math/linalg/hlsl/#ashalf_float2x4)
* [asint\_float2x4](/core/math/linalg/hlsl/#asint_float2x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double2x4](/core/math/linalg/hlsl/#asfloat_double2x4)
* [asfloat\_half2x4](/core/math/linalg/hlsl/#asfloat_half2x4)

### [float3 ¶](#float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L75)

```
float3 :: [3]f32
```

##### Related Procedures With Parameters

* [abs\_float3](/core/math/linalg/hlsl/#abs_float3)
* [acos\_float3](/core/math/linalg/hlsl/#acos_float3)
* [acosh\_float3](/core/math/linalg/hlsl/#acosh_float3)
* [asdouble\_float3](/core/math/linalg/hlsl/#asdouble_float3)
* [asfloat\_float3](/core/math/linalg/hlsl/#asfloat_float3)
* [ashalf\_float3](/core/math/linalg/hlsl/#ashalf_float3)
* [asin\_float3](/core/math/linalg/hlsl/#asin_float3)
* [asinh\_float3](/core/math/linalg/hlsl/#asinh_float3)
* [asint\_float3](/core/math/linalg/hlsl/#asint_float3)
* [asuint\_float3](/core/math/linalg/hlsl/#asuint_float3)
* [atan2\_float3](/core/math/linalg/hlsl/#atan2_float3)
* [atan\_float3](/core/math/linalg/hlsl/#atan_float3)
* [atanh\_float3](/core/math/linalg/hlsl/#atanh_float3)
* [ceil\_float3](/core/math/linalg/hlsl/#ceil_float3)
* [clamp\_float3](/core/math/linalg/hlsl/#clamp_float3)
* [cos\_float3](/core/math/linalg/hlsl/#cos_float3)
* [cosh\_float3](/core/math/linalg/hlsl/#cosh_float3)
* [cross\_float3](/core/math/linalg/hlsl/#cross_float3)
* [degrees\_float3](/core/math/linalg/hlsl/#degrees_float3)
* [distance\_float3](/core/math/linalg/hlsl/#distance_float3)
* [dot\_float3](/core/math/linalg/hlsl/#dot_float3)
* [equal\_float3](/core/math/linalg/hlsl/#equal_float3)
* [exp2\_float3](/core/math/linalg/hlsl/#exp2_float3)
* [exp\_float3](/core/math/linalg/hlsl/#exp_float3)
* [faceforward\_float3](/core/math/linalg/hlsl/#faceforward_float3)
* [floor\_float3](/core/math/linalg/hlsl/#floor_float3)
* [fmod\_float3](/core/math/linalg/hlsl/#fmod_float3)
* [frac\_float3](/core/math/linalg/hlsl/#frac_float3)
* [greaterThanEqual\_float3](/core/math/linalg/hlsl/#greaterThanEqual_float3)
* [greaterThan\_float3](/core/math/linalg/hlsl/#greaterThan_float3)
* [isfinite\_float3](/core/math/linalg/hlsl/#isfinite_float3)
* [isinf\_float3](/core/math/linalg/hlsl/#isinf_float3)
* [isnan\_float3](/core/math/linalg/hlsl/#isnan_float3)
* [length\_float3](/core/math/linalg/hlsl/#length_float3)
* [lerp\_float3](/core/math/linalg/hlsl/#lerp_float3)
* [lessThanEqual\_float3](/core/math/linalg/hlsl/#lessThanEqual_float3)
* [lessThan\_float3](/core/math/linalg/hlsl/#lessThan_float3)
* [log10\_float3](/core/math/linalg/hlsl/#log10_float3)
* [log2\_float3](/core/math/linalg/hlsl/#log2_float3)
* [log\_float3](/core/math/linalg/hlsl/#log_float3)
* [max\_float3](/core/math/linalg/hlsl/#max_float3)
* [min\_float3](/core/math/linalg/hlsl/#min_float3)
* [normalize\_float3](/core/math/linalg/hlsl/#normalize_float3)
* [notEqual\_float3](/core/math/linalg/hlsl/#notEqual_float3)
* [pow\_float3](/core/math/linalg/hlsl/#pow_float3)
* [radians\_float3](/core/math/linalg/hlsl/#radians_float3)
* [rcp\_float3](/core/math/linalg/hlsl/#rcp_float3)
* [reflect\_float3](/core/math/linalg/hlsl/#reflect_float3)
* [refract\_float3](/core/math/linalg/hlsl/#refract_float3)
* [round\_float3](/core/math/linalg/hlsl/#round_float3)
* [rsqrt\_float3](/core/math/linalg/hlsl/#rsqrt_float3)
* [saturate\_float3](/core/math/linalg/hlsl/#saturate_float3)
* [scalarTripleProduct\_float3](/core/math/linalg/hlsl/#scalarTripleProduct_float3)
* [sign\_float3](/core/math/linalg/hlsl/#sign_float3)
* [sin\_float3](/core/math/linalg/hlsl/#sin_float3)
* [sinh\_float3](/core/math/linalg/hlsl/#sinh_float3)
* [smoothstep\_float3](/core/math/linalg/hlsl/#smoothstep_float3)
* [sqrt\_float3](/core/math/linalg/hlsl/#sqrt_float3)
* [step\_float3](/core/math/linalg/hlsl/#step_float3)
* [tan\_float3](/core/math/linalg/hlsl/#tan_float3)
* [tanh\_float3](/core/math/linalg/hlsl/#tanh_float3)
* [vectorTripleProduct\_float3](/core/math/linalg/hlsl/#vectorTripleProduct_float3)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [cross](/core/math/linalg/hlsl/#cross) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*
* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_bool3](/core/math/linalg/hlsl/#asfloat_bool3)
* [asfloat\_double3](/core/math/linalg/hlsl/#asfloat_double3)
* [asfloat\_half3](/core/math/linalg/hlsl/#asfloat_half3)
* [asfloat\_int3](/core/math/linalg/hlsl/#asfloat_int3)
* [asfloat\_uint3](/core/math/linalg/hlsl/#asfloat_uint3)

### [float3x1 ¶](#float3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L43)

```
float3x1 :: matrix[3, 1]f32
```

##### Related Procedures With Parameters

* [asdouble\_float3x1](/core/math/linalg/hlsl/#asdouble_float3x1)
* [asfloat\_float3x1](/core/math/linalg/hlsl/#asfloat_float3x1)
* [ashalf\_float3x1](/core/math/linalg/hlsl/#ashalf_float3x1)
* [asint\_float3x1](/core/math/linalg/hlsl/#asint_float3x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double3x1](/core/math/linalg/hlsl/#asfloat_double3x1)
* [asfloat\_half3x1](/core/math/linalg/hlsl/#asfloat_half3x1)

### [float3x2 ¶](#float3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L44)

```
float3x2 :: matrix[3, 2]f32
```

##### Related Procedures With Parameters

* [asdouble\_float3x2](/core/math/linalg/hlsl/#asdouble_float3x2)
* [asfloat\_float3x2](/core/math/linalg/hlsl/#asfloat_float3x2)
* [ashalf\_float3x2](/core/math/linalg/hlsl/#ashalf_float3x2)
* [asint\_float3x2](/core/math/linalg/hlsl/#asint_float3x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double3x2](/core/math/linalg/hlsl/#asfloat_double3x2)
* [asfloat\_half3x2](/core/math/linalg/hlsl/#asfloat_half3x2)

### [float3x3 ¶](#float3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L34)

```
float3x3 :: matrix[3, 3]f32
```

##### Related Procedures With Parameters

* [asdouble\_float3x3](/core/math/linalg/hlsl/#asdouble_float3x3)
* [asfloat\_float3x3](/core/math/linalg/hlsl/#asfloat_float3x3)
* [ashalf\_float3x3](/core/math/linalg/hlsl/#ashalf_float3x3)
* [asint\_float3x3](/core/math/linalg/hlsl/#asint_float3x3)
* [inverse\_float3x3](/core/math/linalg/hlsl/#inverse_float3x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double3x3](/core/math/linalg/hlsl/#asfloat_double3x3)
* [asfloat\_half3x3](/core/math/linalg/hlsl/#asfloat_half3x3)

### [float3x4 ¶](#float3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L45)

```
float3x4 :: matrix[3, 4]f32
```

##### Related Procedures With Parameters

* [asdouble\_float3x4](/core/math/linalg/hlsl/#asdouble_float3x4)
* [asfloat\_float3x4](/core/math/linalg/hlsl/#asfloat_float3x4)
* [ashalf\_float3x4](/core/math/linalg/hlsl/#ashalf_float3x4)
* [asint\_float3x4](/core/math/linalg/hlsl/#asint_float3x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double3x4](/core/math/linalg/hlsl/#asfloat_double3x4)
* [asfloat\_half3x4](/core/math/linalg/hlsl/#asfloat_half3x4)

### [float4 ¶](#float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L76)

```
float4 :: [4]f32
```

##### Related Procedures With Parameters

* [abs\_float4](/core/math/linalg/hlsl/#abs_float4)
* [acos\_float4](/core/math/linalg/hlsl/#acos_float4)
* [acosh\_float4](/core/math/linalg/hlsl/#acosh_float4)
* [asdouble\_float4](/core/math/linalg/hlsl/#asdouble_float4)
* [asfloat\_float4](/core/math/linalg/hlsl/#asfloat_float4)
* [ashalf\_float4](/core/math/linalg/hlsl/#ashalf_float4)
* [asin\_float4](/core/math/linalg/hlsl/#asin_float4)
* [asinh\_float4](/core/math/linalg/hlsl/#asinh_float4)
* [asint\_float4](/core/math/linalg/hlsl/#asint_float4)
* [asuint\_float4](/core/math/linalg/hlsl/#asuint_float4)
* [atan2\_float4](/core/math/linalg/hlsl/#atan2_float4)
* [atan\_float4](/core/math/linalg/hlsl/#atan_float4)
* [atanh\_float4](/core/math/linalg/hlsl/#atanh_float4)
* [ceil\_float4](/core/math/linalg/hlsl/#ceil_float4)
* [clamp\_float4](/core/math/linalg/hlsl/#clamp_float4)
* [cos\_float4](/core/math/linalg/hlsl/#cos_float4)
* [cosh\_float4](/core/math/linalg/hlsl/#cosh_float4)
* [degrees\_float4](/core/math/linalg/hlsl/#degrees_float4)
* [distance\_float4](/core/math/linalg/hlsl/#distance_float4)
* [dot\_float4](/core/math/linalg/hlsl/#dot_float4)
* [equal\_float4](/core/math/linalg/hlsl/#equal_float4)
* [exp2\_float4](/core/math/linalg/hlsl/#exp2_float4)
* [exp\_float4](/core/math/linalg/hlsl/#exp_float4)
* [faceforward\_float4](/core/math/linalg/hlsl/#faceforward_float4)
* [floor\_float4](/core/math/linalg/hlsl/#floor_float4)
* [fmod\_float4](/core/math/linalg/hlsl/#fmod_float4)
* [frac\_float4](/core/math/linalg/hlsl/#frac_float4)
* [greaterThanEqual\_float4](/core/math/linalg/hlsl/#greaterThanEqual_float4)
* [greaterThan\_float4](/core/math/linalg/hlsl/#greaterThan_float4)
* [isfinite\_float4](/core/math/linalg/hlsl/#isfinite_float4)
* [isinf\_float4](/core/math/linalg/hlsl/#isinf_float4)
* [isnan\_float4](/core/math/linalg/hlsl/#isnan_float4)
* [length\_float4](/core/math/linalg/hlsl/#length_float4)
* [lerp\_float4](/core/math/linalg/hlsl/#lerp_float4)
* [lessThanEqual\_float4](/core/math/linalg/hlsl/#lessThanEqual_float4)
* [lessThan\_float4](/core/math/linalg/hlsl/#lessThan_float4)
* [log10\_float4](/core/math/linalg/hlsl/#log10_float4)
* [log2\_float4](/core/math/linalg/hlsl/#log2_float4)
* [log\_float4](/core/math/linalg/hlsl/#log_float4)
* [max\_float4](/core/math/linalg/hlsl/#max_float4)
* [min\_float4](/core/math/linalg/hlsl/#min_float4)
* [normalize\_float4](/core/math/linalg/hlsl/#normalize_float4)
* [notEqual\_float4](/core/math/linalg/hlsl/#notEqual_float4)
* [pow\_float4](/core/math/linalg/hlsl/#pow_float4)
* [radians\_float4](/core/math/linalg/hlsl/#radians_float4)
* [rcp\_float4](/core/math/linalg/hlsl/#rcp_float4)
* [reflect\_float4](/core/math/linalg/hlsl/#reflect_float4)
* [refract\_float4](/core/math/linalg/hlsl/#refract_float4)
* [round\_float4](/core/math/linalg/hlsl/#round_float4)
* [rsqrt\_float4](/core/math/linalg/hlsl/#rsqrt_float4)
* [saturate\_float4](/core/math/linalg/hlsl/#saturate_float4)
* [sign\_float4](/core/math/linalg/hlsl/#sign_float4)
* [sin\_float4](/core/math/linalg/hlsl/#sin_float4)
* [sinh\_float4](/core/math/linalg/hlsl/#sinh_float4)
* [smoothstep\_float4](/core/math/linalg/hlsl/#smoothstep_float4)
* [sqrt\_float4](/core/math/linalg/hlsl/#sqrt_float4)
* [step\_float4](/core/math/linalg/hlsl/#step_float4)
* [tan\_float4](/core/math/linalg/hlsl/#tan_float4)
* [tanh\_float4](/core/math/linalg/hlsl/#tanh_float4)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_bool4](/core/math/linalg/hlsl/#asfloat_bool4)
* [asfloat\_double4](/core/math/linalg/hlsl/#asfloat_double4)
* [asfloat\_half4](/core/math/linalg/hlsl/#asfloat_half4)
* [asfloat\_int4](/core/math/linalg/hlsl/#asfloat_int4)
* [asfloat\_uint4](/core/math/linalg/hlsl/#asfloat_uint4)

### [float4x1 ¶](#float4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L46)

```
float4x1 :: matrix[4, 1]f32
```

##### Related Procedures With Parameters

* [asdouble\_float4x1](/core/math/linalg/hlsl/#asdouble_float4x1)
* [asfloat\_float4x1](/core/math/linalg/hlsl/#asfloat_float4x1)
* [ashalf\_float4x1](/core/math/linalg/hlsl/#ashalf_float4x1)
* [asint\_float4x1](/core/math/linalg/hlsl/#asint_float4x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double4x1](/core/math/linalg/hlsl/#asfloat_double4x1)
* [asfloat\_half4x1](/core/math/linalg/hlsl/#asfloat_half4x1)

### [float4x2 ¶](#float4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L47)

```
float4x2 :: matrix[4, 2]f32
```

##### Related Procedures With Parameters

* [asdouble\_float4x2](/core/math/linalg/hlsl/#asdouble_float4x2)
* [asfloat\_float4x2](/core/math/linalg/hlsl/#asfloat_float4x2)
* [ashalf\_float4x2](/core/math/linalg/hlsl/#ashalf_float4x2)
* [asint\_float4x2](/core/math/linalg/hlsl/#asint_float4x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double4x2](/core/math/linalg/hlsl/#asfloat_double4x2)
* [asfloat\_half4x2](/core/math/linalg/hlsl/#asfloat_half4x2)

### [float4x3 ¶](#float4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L48)

```
float4x3 :: matrix[4, 3]f32
```

##### Related Procedures With Parameters

* [asdouble\_float4x3](/core/math/linalg/hlsl/#asdouble_float4x3)
* [asfloat\_float4x3](/core/math/linalg/hlsl/#asfloat_float4x3)
* [ashalf\_float4x3](/core/math/linalg/hlsl/#ashalf_float4x3)
* [asint\_float4x3](/core/math/linalg/hlsl/#asint_float4x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double4x3](/core/math/linalg/hlsl/#asfloat_double4x3)
* [asfloat\_half4x3](/core/math/linalg/hlsl/#asfloat_half4x3)

### [float4x4 ¶](#float4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L35)

```
float4x4 :: matrix[4, 4]f32
```

##### Related Procedures With Parameters

* [asdouble\_float4x4](/core/math/linalg/hlsl/#asdouble_float4x4)
* [asfloat\_float4x4](/core/math/linalg/hlsl/#asfloat_float4x4)
* [ashalf\_float4x4](/core/math/linalg/hlsl/#ashalf_float4x4)
* [asint\_float4x4](/core/math/linalg/hlsl/#asint_float4x4)
* [inverse\_float4x4](/core/math/linalg/hlsl/#inverse_float4x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [asfloat\_double4x4](/core/math/linalg/hlsl/#asfloat_double4x4)
* [asfloat\_half4x4](/core/math/linalg/hlsl/#asfloat_half4x4)

### [half ¶](#half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L25)

```
half :: f16
```

 

Aliases (not distict) of types




##### Related Procedures With Parameters

* [abs\_half](/core/math/linalg/hlsl/#abs_half)
* [acos\_half](/core/math/linalg/hlsl/#acos_half)
* [acosh\_half](/core/math/linalg/hlsl/#acosh_half)
* [asdouble\_half](/core/math/linalg/hlsl/#asdouble_half)
* [asfloat\_half](/core/math/linalg/hlsl/#asfloat_half)
* [ashalf\_half](/core/math/linalg/hlsl/#ashalf_half)
* [asin\_half](/core/math/linalg/hlsl/#asin_half)
* [asinh\_half](/core/math/linalg/hlsl/#asinh_half)
* [asint\_half](/core/math/linalg/hlsl/#asint_half)
* [asuint\_half](/core/math/linalg/hlsl/#asuint_half)
* [atan2\_half](/core/math/linalg/hlsl/#atan2_half)
* [atan\_half](/core/math/linalg/hlsl/#atan_half)
* [atanh\_half](/core/math/linalg/hlsl/#atanh_half)
* [ceil\_half](/core/math/linalg/hlsl/#ceil_half)
* [clamp\_half](/core/math/linalg/hlsl/#clamp_half)
* [cos\_half](/core/math/linalg/hlsl/#cos_half)
* [cosh\_half](/core/math/linalg/hlsl/#cosh_half)
* [degrees\_half](/core/math/linalg/hlsl/#degrees_half)
* [distance\_half](/core/math/linalg/hlsl/#distance_half)
* [dot\_half](/core/math/linalg/hlsl/#dot_half)
* [equal\_half](/core/math/linalg/hlsl/#equal_half)
* [exp2\_half](/core/math/linalg/hlsl/#exp2_half)
* [exp\_half](/core/math/linalg/hlsl/#exp_half)
* [faceforward\_half](/core/math/linalg/hlsl/#faceforward_half)
* [floor\_half](/core/math/linalg/hlsl/#floor_half)
* [fmod\_half](/core/math/linalg/hlsl/#fmod_half)
* [frac\_half](/core/math/linalg/hlsl/#frac_half)
* [greaterThanEqual\_half](/core/math/linalg/hlsl/#greaterThanEqual_half)
* [greaterThan\_half](/core/math/linalg/hlsl/#greaterThan_half)
* [isfinite\_half](/core/math/linalg/hlsl/#isfinite_half)
* [isinf\_half](/core/math/linalg/hlsl/#isinf_half)
* [isnan\_half](/core/math/linalg/hlsl/#isnan_half)
* [length\_half](/core/math/linalg/hlsl/#length_half)
* [lerp\_half](/core/math/linalg/hlsl/#lerp_half)
* [lessThanEqual\_half](/core/math/linalg/hlsl/#lessThanEqual_half)
* [lessThan\_half](/core/math/linalg/hlsl/#lessThan_half)
* [log10\_half](/core/math/linalg/hlsl/#log10_half)
* [log2\_half](/core/math/linalg/hlsl/#log2_half)
* [log\_half](/core/math/linalg/hlsl/#log_half)
* [max\_half](/core/math/linalg/hlsl/#max_half)
* [min\_half](/core/math/linalg/hlsl/#min_half)
* [normalize\_half](/core/math/linalg/hlsl/#normalize_half)
* [notEqual\_half](/core/math/linalg/hlsl/#notEqual_half)
* [pow\_half](/core/math/linalg/hlsl/#pow_half)
* [radians\_half](/core/math/linalg/hlsl/#radians_half)
* [rcp\_half](/core/math/linalg/hlsl/#rcp_half)
* [reflect\_half](/core/math/linalg/hlsl/#reflect_half)
* [refract\_half](/core/math/linalg/hlsl/#refract_half)
* [round\_half](/core/math/linalg/hlsl/#round_half)
* [rsqrt\_half](/core/math/linalg/hlsl/#rsqrt_half)
* [saturate\_half](/core/math/linalg/hlsl/#saturate_half)
* [sign\_half](/core/math/linalg/hlsl/#sign_half)
* [sin\_half](/core/math/linalg/hlsl/#sin_half)
* [sinh\_half](/core/math/linalg/hlsl/#sinh_half)
* [smoothstep\_half](/core/math/linalg/hlsl/#smoothstep_half)
* [sqrt\_half](/core/math/linalg/hlsl/#sqrt_half)
* [step\_half](/core/math/linalg/hlsl/#step_half)
* [tan\_half](/core/math/linalg/hlsl/#tan_half)
* [tanh\_half](/core/math/linalg/hlsl/#tanh_half)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double](/core/math/linalg/hlsl/#ashalf_double)
* [ashalf\_float](/core/math/linalg/hlsl/#ashalf_float)
* [ashalf\_int](/core/math/linalg/hlsl/#ashalf_int)
* [ashalf\_uint](/core/math/linalg/hlsl/#ashalf_uint)
* [distance\_half2](/core/math/linalg/hlsl/#distance_half2)
* [distance\_half3](/core/math/linalg/hlsl/#distance_half3)
* [distance\_half4](/core/math/linalg/hlsl/#distance_half4)
* [dot\_half2](/core/math/linalg/hlsl/#dot_half2)
* [dot\_half3](/core/math/linalg/hlsl/#dot_half3)
* [dot\_half4](/core/math/linalg/hlsl/#dot_half4)
* [length\_half2](/core/math/linalg/hlsl/#length_half2)
* [length\_half3](/core/math/linalg/hlsl/#length_half3)
* [length\_half4](/core/math/linalg/hlsl/#length_half4)
* [scalarTripleProduct\_half3](/core/math/linalg/hlsl/#scalarTripleProduct_half3)
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*

### [half1x1 ¶](#half1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L56)

```
half1x1 :: matrix[1, 1]f16
```

##### Related Procedures With Parameters

* [asdouble\_half1x1](/core/math/linalg/hlsl/#asdouble_half1x1)
* [asfloat\_half1x1](/core/math/linalg/hlsl/#asfloat_half1x1)
* [ashalf\_half1x1](/core/math/linalg/hlsl/#ashalf_half1x1)
* [asint\_half1x1](/core/math/linalg/hlsl/#asint_half1x1)
* [inverse\_half1x1](/core/math/linalg/hlsl/#inverse_half1x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double1x1](/core/math/linalg/hlsl/#ashalf_double1x1)
* [ashalf\_float1x1](/core/math/linalg/hlsl/#ashalf_float1x1)

### [half1x2 ¶](#half1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L61)

```
half1x2 :: matrix[1, 2]f16
```

##### Related Procedures With Parameters

* [asdouble\_half1x2](/core/math/linalg/hlsl/#asdouble_half1x2)
* [asfloat\_half1x2](/core/math/linalg/hlsl/#asfloat_half1x2)
* [ashalf\_half1x2](/core/math/linalg/hlsl/#ashalf_half1x2)
* [asint\_half1x2](/core/math/linalg/hlsl/#asint_half1x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double1x2](/core/math/linalg/hlsl/#ashalf_double1x2)
* [ashalf\_float1x2](/core/math/linalg/hlsl/#ashalf_float1x2)

### [half1x3 ¶](#half1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L62)

```
half1x3 :: matrix[1, 3]f16
```

##### Related Procedures With Parameters

* [asdouble\_half1x3](/core/math/linalg/hlsl/#asdouble_half1x3)
* [asfloat\_half1x3](/core/math/linalg/hlsl/#asfloat_half1x3)
* [ashalf\_half1x3](/core/math/linalg/hlsl/#ashalf_half1x3)
* [asint\_half1x3](/core/math/linalg/hlsl/#asint_half1x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double1x3](/core/math/linalg/hlsl/#ashalf_double1x3)
* [ashalf\_float1x3](/core/math/linalg/hlsl/#ashalf_float1x3)

### [half1x4 ¶](#half1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L63)

```
half1x4 :: matrix[1, 4]f16
```

##### Related Procedures With Parameters

* [asdouble\_half1x4](/core/math/linalg/hlsl/#asdouble_half1x4)
* [asfloat\_half1x4](/core/math/linalg/hlsl/#asfloat_half1x4)
* [ashalf\_half1x4](/core/math/linalg/hlsl/#ashalf_half1x4)
* [asint\_half1x4](/core/math/linalg/hlsl/#asint_half1x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double1x4](/core/math/linalg/hlsl/#ashalf_double1x4)
* [ashalf\_float1x4](/core/math/linalg/hlsl/#ashalf_float1x4)

### [half2 ¶](#half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L52)

```
half2 :: [2]f16
```

##### Related Procedures With Parameters

* [abs\_half2](/core/math/linalg/hlsl/#abs_half2)
* [acos\_half2](/core/math/linalg/hlsl/#acos_half2)
* [acosh\_half2](/core/math/linalg/hlsl/#acosh_half2)
* [asdouble\_half2](/core/math/linalg/hlsl/#asdouble_half2)
* [asfloat\_half2](/core/math/linalg/hlsl/#asfloat_half2)
* [ashalf\_half2](/core/math/linalg/hlsl/#ashalf_half2)
* [asin\_half2](/core/math/linalg/hlsl/#asin_half2)
* [asinh\_half2](/core/math/linalg/hlsl/#asinh_half2)
* [asint\_half2](/core/math/linalg/hlsl/#asint_half2)
* [asuint\_half2](/core/math/linalg/hlsl/#asuint_half2)
* [atan2\_half2](/core/math/linalg/hlsl/#atan2_half2)
* [atan\_half2](/core/math/linalg/hlsl/#atan_half2)
* [atanh\_half2](/core/math/linalg/hlsl/#atanh_half2)
* [ceil\_half2](/core/math/linalg/hlsl/#ceil_half2)
* [clamp\_half2](/core/math/linalg/hlsl/#clamp_half2)
* [cos\_half2](/core/math/linalg/hlsl/#cos_half2)
* [cosh\_half2](/core/math/linalg/hlsl/#cosh_half2)
* [degrees\_half2](/core/math/linalg/hlsl/#degrees_half2)
* [distance\_half2](/core/math/linalg/hlsl/#distance_half2)
* [dot\_half2](/core/math/linalg/hlsl/#dot_half2)
* [equal\_half2](/core/math/linalg/hlsl/#equal_half2)
* [exp2\_half2](/core/math/linalg/hlsl/#exp2_half2)
* [exp\_half2](/core/math/linalg/hlsl/#exp_half2)
* [faceforward\_half2](/core/math/linalg/hlsl/#faceforward_half2)
* [floor\_half2](/core/math/linalg/hlsl/#floor_half2)
* [fmod\_half2](/core/math/linalg/hlsl/#fmod_half2)
* [frac\_half2](/core/math/linalg/hlsl/#frac_half2)
* [greaterThanEqual\_half2](/core/math/linalg/hlsl/#greaterThanEqual_half2)
* [greaterThan\_half2](/core/math/linalg/hlsl/#greaterThan_half2)
* [isfinite\_half2](/core/math/linalg/hlsl/#isfinite_half2)
* [isinf\_half2](/core/math/linalg/hlsl/#isinf_half2)
* [isnan\_half2](/core/math/linalg/hlsl/#isnan_half2)
* [length\_half2](/core/math/linalg/hlsl/#length_half2)
* [lerp\_half2](/core/math/linalg/hlsl/#lerp_half2)
* [lessThanEqual\_half2](/core/math/linalg/hlsl/#lessThanEqual_half2)
* [lessThan\_half2](/core/math/linalg/hlsl/#lessThan_half2)
* [log10\_half2](/core/math/linalg/hlsl/#log10_half2)
* [log2\_half2](/core/math/linalg/hlsl/#log2_half2)
* [log\_half2](/core/math/linalg/hlsl/#log_half2)
* [max\_half2](/core/math/linalg/hlsl/#max_half2)
* [min\_half2](/core/math/linalg/hlsl/#min_half2)
* [normalize\_half2](/core/math/linalg/hlsl/#normalize_half2)
* [notEqual\_half2](/core/math/linalg/hlsl/#notEqual_half2)
* [pow\_half2](/core/math/linalg/hlsl/#pow_half2)
* [radians\_half2](/core/math/linalg/hlsl/#radians_half2)
* [rcp\_half2](/core/math/linalg/hlsl/#rcp_half2)
* [reflect\_half2](/core/math/linalg/hlsl/#reflect_half2)
* [refract\_half2](/core/math/linalg/hlsl/#refract_half2)
* [round\_half2](/core/math/linalg/hlsl/#round_half2)
* [rsqrt\_half2](/core/math/linalg/hlsl/#rsqrt_half2)
* [saturate\_half2](/core/math/linalg/hlsl/#saturate_half2)
* [sign\_half2](/core/math/linalg/hlsl/#sign_half2)
* [sin\_half2](/core/math/linalg/hlsl/#sin_half2)
* [sinh\_half2](/core/math/linalg/hlsl/#sinh_half2)
* [smoothstep\_half2](/core/math/linalg/hlsl/#smoothstep_half2)
* [sqrt\_half2](/core/math/linalg/hlsl/#sqrt_half2)
* [step\_half2](/core/math/linalg/hlsl/#step_half2)
* [tan\_half2](/core/math/linalg/hlsl/#tan_half2)
* [tanh\_half2](/core/math/linalg/hlsl/#tanh_half2)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_bool2](/core/math/linalg/hlsl/#ashalf_bool2)
* [ashalf\_double2](/core/math/linalg/hlsl/#ashalf_double2)
* [ashalf\_float2](/core/math/linalg/hlsl/#ashalf_float2)
* [ashalf\_int2](/core/math/linalg/hlsl/#ashalf_int2)
* [ashalf\_uint2](/core/math/linalg/hlsl/#ashalf_uint2)

### [half2x1 ¶](#half2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L64)

```
half2x1 :: matrix[2, 1]f16
```

##### Related Procedures With Parameters

* [asdouble\_half2x1](/core/math/linalg/hlsl/#asdouble_half2x1)
* [asfloat\_half2x1](/core/math/linalg/hlsl/#asfloat_half2x1)
* [ashalf\_half2x1](/core/math/linalg/hlsl/#ashalf_half2x1)
* [asint\_half2x1](/core/math/linalg/hlsl/#asint_half2x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double2x1](/core/math/linalg/hlsl/#ashalf_double2x1)
* [ashalf\_float2x1](/core/math/linalg/hlsl/#ashalf_float2x1)

### [half2x2 ¶](#half2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L57)

```
half2x2 :: matrix[2, 2]f16
```

##### Related Procedures With Parameters

* [asdouble\_half2x2](/core/math/linalg/hlsl/#asdouble_half2x2)
* [asfloat\_half2x2](/core/math/linalg/hlsl/#asfloat_half2x2)
* [ashalf\_half2x2](/core/math/linalg/hlsl/#ashalf_half2x2)
* [asint\_half2x2](/core/math/linalg/hlsl/#asint_half2x2)
* [inverse\_half2x2](/core/math/linalg/hlsl/#inverse_half2x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double2x2](/core/math/linalg/hlsl/#ashalf_double2x2)
* [ashalf\_float2x2](/core/math/linalg/hlsl/#ashalf_float2x2)

### [half2x3 ¶](#half2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L65)

```
half2x3 :: matrix[2, 3]f16
```

##### Related Procedures With Parameters

* [asdouble\_half2x3](/core/math/linalg/hlsl/#asdouble_half2x3)
* [asfloat\_half2x3](/core/math/linalg/hlsl/#asfloat_half2x3)
* [ashalf\_half2x3](/core/math/linalg/hlsl/#ashalf_half2x3)
* [asint\_half2x3](/core/math/linalg/hlsl/#asint_half2x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double2x3](/core/math/linalg/hlsl/#ashalf_double2x3)
* [ashalf\_float2x3](/core/math/linalg/hlsl/#ashalf_float2x3)

### [half2x4 ¶](#half2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L66)

```
half2x4 :: matrix[2, 4]f16
```

##### Related Procedures With Parameters

* [asdouble\_half2x4](/core/math/linalg/hlsl/#asdouble_half2x4)
* [asfloat\_half2x4](/core/math/linalg/hlsl/#asfloat_half2x4)
* [ashalf\_half2x4](/core/math/linalg/hlsl/#ashalf_half2x4)
* [asint\_half2x4](/core/math/linalg/hlsl/#asint_half2x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double2x4](/core/math/linalg/hlsl/#ashalf_double2x4)
* [ashalf\_float2x4](/core/math/linalg/hlsl/#ashalf_float2x4)

### [half3 ¶](#half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L53)

```
half3 :: [3]f16
```

##### Related Procedures With Parameters

* [abs\_half3](/core/math/linalg/hlsl/#abs_half3)
* [acos\_half3](/core/math/linalg/hlsl/#acos_half3)
* [acosh\_half3](/core/math/linalg/hlsl/#acosh_half3)
* [asdouble\_half3](/core/math/linalg/hlsl/#asdouble_half3)
* [asfloat\_half3](/core/math/linalg/hlsl/#asfloat_half3)
* [ashalf\_half3](/core/math/linalg/hlsl/#ashalf_half3)
* [asin\_half3](/core/math/linalg/hlsl/#asin_half3)
* [asinh\_half3](/core/math/linalg/hlsl/#asinh_half3)
* [asint\_half3](/core/math/linalg/hlsl/#asint_half3)
* [asuint\_half3](/core/math/linalg/hlsl/#asuint_half3)
* [atan2\_half3](/core/math/linalg/hlsl/#atan2_half3)
* [atan\_half3](/core/math/linalg/hlsl/#atan_half3)
* [atanh\_half3](/core/math/linalg/hlsl/#atanh_half3)
* [ceil\_half3](/core/math/linalg/hlsl/#ceil_half3)
* [clamp\_half3](/core/math/linalg/hlsl/#clamp_half3)
* [cos\_half3](/core/math/linalg/hlsl/#cos_half3)
* [cosh\_half3](/core/math/linalg/hlsl/#cosh_half3)
* [cross\_half3](/core/math/linalg/hlsl/#cross_half3)
* [degrees\_half3](/core/math/linalg/hlsl/#degrees_half3)
* [distance\_half3](/core/math/linalg/hlsl/#distance_half3)
* [dot\_half3](/core/math/linalg/hlsl/#dot_half3)
* [equal\_half3](/core/math/linalg/hlsl/#equal_half3)
* [exp2\_half3](/core/math/linalg/hlsl/#exp2_half3)
* [exp\_half3](/core/math/linalg/hlsl/#exp_half3)
* [faceforward\_half3](/core/math/linalg/hlsl/#faceforward_half3)
* [floor\_half3](/core/math/linalg/hlsl/#floor_half3)
* [fmod\_half3](/core/math/linalg/hlsl/#fmod_half3)
* [frac\_half3](/core/math/linalg/hlsl/#frac_half3)
* [greaterThanEqual\_half3](/core/math/linalg/hlsl/#greaterThanEqual_half3)
* [greaterThan\_half3](/core/math/linalg/hlsl/#greaterThan_half3)
* [isfinite\_half3](/core/math/linalg/hlsl/#isfinite_half3)
* [isinf\_half3](/core/math/linalg/hlsl/#isinf_half3)
* [isnan\_half3](/core/math/linalg/hlsl/#isnan_half3)
* [length\_half3](/core/math/linalg/hlsl/#length_half3)
* [lerp\_half3](/core/math/linalg/hlsl/#lerp_half3)
* [lessThanEqual\_half3](/core/math/linalg/hlsl/#lessThanEqual_half3)
* [lessThan\_half3](/core/math/linalg/hlsl/#lessThan_half3)
* [log10\_half3](/core/math/linalg/hlsl/#log10_half3)
* [log2\_half3](/core/math/linalg/hlsl/#log2_half3)
* [log\_half3](/core/math/linalg/hlsl/#log_half3)
* [max\_half3](/core/math/linalg/hlsl/#max_half3)
* [min\_half3](/core/math/linalg/hlsl/#min_half3)
* [normalize\_half3](/core/math/linalg/hlsl/#normalize_half3)
* [notEqual\_half3](/core/math/linalg/hlsl/#notEqual_half3)
* [pow\_half3](/core/math/linalg/hlsl/#pow_half3)
* [radians\_half3](/core/math/linalg/hlsl/#radians_half3)
* [rcp\_half3](/core/math/linalg/hlsl/#rcp_half3)
* [reflect\_half3](/core/math/linalg/hlsl/#reflect_half3)
* [refract\_half3](/core/math/linalg/hlsl/#refract_half3)
* [round\_half3](/core/math/linalg/hlsl/#round_half3)
* [rsqrt\_half3](/core/math/linalg/hlsl/#rsqrt_half3)
* [saturate\_half3](/core/math/linalg/hlsl/#saturate_half3)
* [scalarTripleProduct\_half3](/core/math/linalg/hlsl/#scalarTripleProduct_half3)
* [sign\_half3](/core/math/linalg/hlsl/#sign_half3)
* [sin\_half3](/core/math/linalg/hlsl/#sin_half3)
* [sinh\_half3](/core/math/linalg/hlsl/#sinh_half3)
* [smoothstep\_half3](/core/math/linalg/hlsl/#smoothstep_half3)
* [sqrt\_half3](/core/math/linalg/hlsl/#sqrt_half3)
* [step\_half3](/core/math/linalg/hlsl/#step_half3)
* [tan\_half3](/core/math/linalg/hlsl/#tan_half3)
* [tanh\_half3](/core/math/linalg/hlsl/#tanh_half3)
* [vectorTripleProduct\_half3](/core/math/linalg/hlsl/#vectorTripleProduct_half3)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [cross](/core/math/linalg/hlsl/#cross) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*
* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_bool3](/core/math/linalg/hlsl/#ashalf_bool3)
* [ashalf\_double3](/core/math/linalg/hlsl/#ashalf_double3)
* [ashalf\_float3](/core/math/linalg/hlsl/#ashalf_float3)
* [ashalf\_int3](/core/math/linalg/hlsl/#ashalf_int3)
* [ashalf\_uint3](/core/math/linalg/hlsl/#ashalf_uint3)

### [half3x1 ¶](#half3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L67)

```
half3x1 :: matrix[3, 1]f16
```

##### Related Procedures With Parameters

* [asdouble\_half3x1](/core/math/linalg/hlsl/#asdouble_half3x1)
* [asfloat\_half3x1](/core/math/linalg/hlsl/#asfloat_half3x1)
* [ashalf\_half3x1](/core/math/linalg/hlsl/#ashalf_half3x1)
* [asint\_half3x1](/core/math/linalg/hlsl/#asint_half3x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double3x1](/core/math/linalg/hlsl/#ashalf_double3x1)
* [ashalf\_float3x1](/core/math/linalg/hlsl/#ashalf_float3x1)

### [half3x2 ¶](#half3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L68)

```
half3x2 :: matrix[3, 2]f16
```

##### Related Procedures With Parameters

* [asdouble\_half3x2](/core/math/linalg/hlsl/#asdouble_half3x2)
* [asfloat\_half3x2](/core/math/linalg/hlsl/#asfloat_half3x2)
* [ashalf\_half3x2](/core/math/linalg/hlsl/#ashalf_half3x2)
* [asint\_half3x2](/core/math/linalg/hlsl/#asint_half3x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double3x2](/core/math/linalg/hlsl/#ashalf_double3x2)
* [ashalf\_float3x2](/core/math/linalg/hlsl/#ashalf_float3x2)

### [half3x3 ¶](#half3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L58)

```
half3x3 :: matrix[3, 3]f16
```

##### Related Procedures With Parameters

* [asdouble\_half3x3](/core/math/linalg/hlsl/#asdouble_half3x3)
* [asfloat\_half3x3](/core/math/linalg/hlsl/#asfloat_half3x3)
* [ashalf\_half3x3](/core/math/linalg/hlsl/#ashalf_half3x3)
* [asint\_half3x3](/core/math/linalg/hlsl/#asint_half3x3)
* [inverse\_half3x3](/core/math/linalg/hlsl/#inverse_half3x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double3x3](/core/math/linalg/hlsl/#ashalf_double3x3)
* [ashalf\_float3x3](/core/math/linalg/hlsl/#ashalf_float3x3)

### [half3x4 ¶](#half3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L69)

```
half3x4 :: matrix[3, 4]f16
```

##### Related Procedures With Parameters

* [asdouble\_half3x4](/core/math/linalg/hlsl/#asdouble_half3x4)
* [asfloat\_half3x4](/core/math/linalg/hlsl/#asfloat_half3x4)
* [ashalf\_half3x4](/core/math/linalg/hlsl/#ashalf_half3x4)
* [asint\_half3x4](/core/math/linalg/hlsl/#asint_half3x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double3x4](/core/math/linalg/hlsl/#ashalf_double3x4)
* [ashalf\_float3x4](/core/math/linalg/hlsl/#ashalf_float3x4)

### [half4 ¶](#half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L54)

```
half4 :: [4]f16
```

##### Related Procedures With Parameters

* [abs\_half4](/core/math/linalg/hlsl/#abs_half4)
* [acos\_half4](/core/math/linalg/hlsl/#acos_half4)
* [acosh\_half4](/core/math/linalg/hlsl/#acosh_half4)
* [asdouble\_half4](/core/math/linalg/hlsl/#asdouble_half4)
* [asfloat\_half4](/core/math/linalg/hlsl/#asfloat_half4)
* [ashalf\_half4](/core/math/linalg/hlsl/#ashalf_half4)
* [asin\_half4](/core/math/linalg/hlsl/#asin_half4)
* [asinh\_half4](/core/math/linalg/hlsl/#asinh_half4)
* [asint\_half4](/core/math/linalg/hlsl/#asint_half4)
* [asuint\_half4](/core/math/linalg/hlsl/#asuint_half4)
* [atan2\_half4](/core/math/linalg/hlsl/#atan2_half4)
* [atan\_half4](/core/math/linalg/hlsl/#atan_half4)
* [atanh\_half4](/core/math/linalg/hlsl/#atanh_half4)
* [ceil\_half4](/core/math/linalg/hlsl/#ceil_half4)
* [clamp\_half4](/core/math/linalg/hlsl/#clamp_half4)
* [cos\_half4](/core/math/linalg/hlsl/#cos_half4)
* [cosh\_half4](/core/math/linalg/hlsl/#cosh_half4)
* [degrees\_half4](/core/math/linalg/hlsl/#degrees_half4)
* [distance\_half4](/core/math/linalg/hlsl/#distance_half4)
* [dot\_half4](/core/math/linalg/hlsl/#dot_half4)
* [equal\_half4](/core/math/linalg/hlsl/#equal_half4)
* [exp2\_half4](/core/math/linalg/hlsl/#exp2_half4)
* [exp\_half4](/core/math/linalg/hlsl/#exp_half4)
* [faceforward\_half4](/core/math/linalg/hlsl/#faceforward_half4)
* [floor\_half4](/core/math/linalg/hlsl/#floor_half4)
* [fmod\_half4](/core/math/linalg/hlsl/#fmod_half4)
* [frac\_half4](/core/math/linalg/hlsl/#frac_half4)
* [greaterThanEqual\_half4](/core/math/linalg/hlsl/#greaterThanEqual_half4)
* [greaterThan\_half4](/core/math/linalg/hlsl/#greaterThan_half4)
* [isfinite\_half4](/core/math/linalg/hlsl/#isfinite_half4)
* [isinf\_half4](/core/math/linalg/hlsl/#isinf_half4)
* [isnan\_half4](/core/math/linalg/hlsl/#isnan_half4)
* [length\_half4](/core/math/linalg/hlsl/#length_half4)
* [lerp\_half4](/core/math/linalg/hlsl/#lerp_half4)
* [lessThanEqual\_half4](/core/math/linalg/hlsl/#lessThanEqual_half4)
* [lessThan\_half4](/core/math/linalg/hlsl/#lessThan_half4)
* [log10\_half4](/core/math/linalg/hlsl/#log10_half4)
* [log2\_half4](/core/math/linalg/hlsl/#log2_half4)
* [log\_half4](/core/math/linalg/hlsl/#log_half4)
* [max\_half4](/core/math/linalg/hlsl/#max_half4)
* [min\_half4](/core/math/linalg/hlsl/#min_half4)
* [normalize\_half4](/core/math/linalg/hlsl/#normalize_half4)
* [notEqual\_half4](/core/math/linalg/hlsl/#notEqual_half4)
* [pow\_half4](/core/math/linalg/hlsl/#pow_half4)
* [radians\_half4](/core/math/linalg/hlsl/#radians_half4)
* [rcp\_half4](/core/math/linalg/hlsl/#rcp_half4)
* [reflect\_half4](/core/math/linalg/hlsl/#reflect_half4)
* [refract\_half4](/core/math/linalg/hlsl/#refract_half4)
* [round\_half4](/core/math/linalg/hlsl/#round_half4)
* [rsqrt\_half4](/core/math/linalg/hlsl/#rsqrt_half4)
* [saturate\_half4](/core/math/linalg/hlsl/#saturate_half4)
* [sign\_half4](/core/math/linalg/hlsl/#sign_half4)
* [sin\_half4](/core/math/linalg/hlsl/#sin_half4)
* [sinh\_half4](/core/math/linalg/hlsl/#sinh_half4)
* [smoothstep\_half4](/core/math/linalg/hlsl/#smoothstep_half4)
* [sqrt\_half4](/core/math/linalg/hlsl/#sqrt_half4)
* [step\_half4](/core/math/linalg/hlsl/#step_half4)
* [tan\_half4](/core/math/linalg/hlsl/#tan_half4)
* [tanh\_half4](/core/math/linalg/hlsl/#tanh_half4)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/hlsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/hlsl/#acosh) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asin](/core/math/linalg/hlsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/hlsl/#asinh) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [atan](/core/math/linalg/hlsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/hlsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/hlsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/hlsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/hlsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/hlsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/hlsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/hlsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/hlsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/hlsl/#exp2) *(procedure groups)*
* [faceforward](/core/math/linalg/hlsl/#faceforward) *(procedure groups)*
* [floor](/core/math/linalg/hlsl/#floor) *(procedure groups)*
* [fmod](/core/math/linalg/hlsl/#fmod) *(procedure groups)*
* [frac](/core/math/linalg/hlsl/#frac) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [isfinite](/core/math/linalg/hlsl/#isfinite) *(procedure groups)*
* [isinf](/core/math/linalg/hlsl/#isinf) *(procedure groups)*
* [isnan](/core/math/linalg/hlsl/#isnan) *(procedure groups)*
* [length](/core/math/linalg/hlsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/hlsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/hlsl/#log) *(procedure groups)*
* [log10](/core/math/linalg/hlsl/#log10) *(procedure groups)*
* [log2](/core/math/linalg/hlsl/#log2) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [normalize](/core/math/linalg/hlsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/hlsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/hlsl/#radians) *(procedure groups)*
* [rcp](/core/math/linalg/hlsl/#rcp) *(procedure groups)*
* [reflect](/core/math/linalg/hlsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/hlsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/hlsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/hlsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/hlsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/hlsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/hlsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/hlsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/hlsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/hlsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/hlsl/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_bool4](/core/math/linalg/hlsl/#ashalf_bool4)
* [ashalf\_double4](/core/math/linalg/hlsl/#ashalf_double4)
* [ashalf\_float4](/core/math/linalg/hlsl/#ashalf_float4)
* [ashalf\_int4](/core/math/linalg/hlsl/#ashalf_int4)
* [ashalf\_uint4](/core/math/linalg/hlsl/#ashalf_uint4)

### [half4x1 ¶](#half4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L70)

```
half4x1 :: matrix[4, 1]f16
```

##### Related Procedures With Parameters

* [asdouble\_half4x1](/core/math/linalg/hlsl/#asdouble_half4x1)
* [asfloat\_half4x1](/core/math/linalg/hlsl/#asfloat_half4x1)
* [ashalf\_half4x1](/core/math/linalg/hlsl/#ashalf_half4x1)
* [asint\_half4x1](/core/math/linalg/hlsl/#asint_half4x1)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double4x1](/core/math/linalg/hlsl/#ashalf_double4x1)
* [ashalf\_float4x1](/core/math/linalg/hlsl/#ashalf_float4x1)

### [half4x2 ¶](#half4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L71)

```
half4x2 :: matrix[4, 2]f16
```

##### Related Procedures With Parameters

* [asdouble\_half4x2](/core/math/linalg/hlsl/#asdouble_half4x2)
* [asfloat\_half4x2](/core/math/linalg/hlsl/#asfloat_half4x2)
* [ashalf\_half4x2](/core/math/linalg/hlsl/#ashalf_half4x2)
* [asint\_half4x2](/core/math/linalg/hlsl/#asint_half4x2)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double4x2](/core/math/linalg/hlsl/#ashalf_double4x2)
* [ashalf\_float4x2](/core/math/linalg/hlsl/#ashalf_float4x2)

### [half4x3 ¶](#half4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L72)

```
half4x3 :: matrix[4, 3]f16
```

##### Related Procedures With Parameters

* [asdouble\_half4x3](/core/math/linalg/hlsl/#asdouble_half4x3)
* [asfloat\_half4x3](/core/math/linalg/hlsl/#asfloat_half4x3)
* [ashalf\_half4x3](/core/math/linalg/hlsl/#ashalf_half4x3)
* [asint\_half4x3](/core/math/linalg/hlsl/#asint_half4x3)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double4x3](/core/math/linalg/hlsl/#ashalf_double4x3)
* [ashalf\_float4x3](/core/math/linalg/hlsl/#ashalf_float4x3)

### [half4x4 ¶](#half4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L59)

```
half4x4 :: matrix[4, 4]f16
```

##### Related Procedures With Parameters

* [asdouble\_half4x4](/core/math/linalg/hlsl/#asdouble_half4x4)
* [asfloat\_half4x4](/core/math/linalg/hlsl/#asfloat_half4x4)
* [ashalf\_half4x4](/core/math/linalg/hlsl/#ashalf_half4x4)
* [asint\_half4x4](/core/math/linalg/hlsl/#asint_half4x4)
* [inverse\_half4x4](/core/math/linalg/hlsl/#inverse_half4x4)
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [inverse](/core/math/linalg/hlsl/#inverse) *(procedure groups)*



##### Related Procedures With Returns

* [ashalf\_double4x4](/core/math/linalg/hlsl/#ashalf_double4x4)
* [ashalf\_float4x4](/core/math/linalg/hlsl/#ashalf_float4x4)

### [int ¶](#int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L28)

```
int :: i32
```

##### Related Procedures With Parameters

* [abs\_int](/core/math/linalg/hlsl/#abs_int)
* [asdouble\_int](/core/math/linalg/hlsl/#asdouble_int)
* [asfloat\_int](/core/math/linalg/hlsl/#asfloat_int)
* [ashalf\_int](/core/math/linalg/hlsl/#ashalf_int)
* [asint\_int](/core/math/linalg/hlsl/#asint_int)
* [asuint\_int](/core/math/linalg/hlsl/#asuint_int)
* [clamp\_int](/core/math/linalg/hlsl/#clamp_int)
* [dot\_int](/core/math/linalg/hlsl/#dot_int)
* [equal\_int](/core/math/linalg/hlsl/#equal_int)
* [greaterThanEqual\_int](/core/math/linalg/hlsl/#greaterThanEqual_int)
* [greaterThan\_int](/core/math/linalg/hlsl/#greaterThan_int)
* [lessThanEqual\_int](/core/math/linalg/hlsl/#lessThanEqual_int)
* [lessThan\_int](/core/math/linalg/hlsl/#lessThan_int)
* [matrix\_minor](/core/math/linalg/hlsl/#matrix_minor)
* [max\_int](/core/math/linalg/hlsl/#max_int)
* [min\_int](/core/math/linalg/hlsl/#min_int)
* [notEqual\_int](/core/math/linalg/hlsl/#notEqual_int)
* [saturate\_int](/core/math/linalg/hlsl/#saturate_int)
* [sign\_int](/core/math/linalg/hlsl/#sign_int)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*



##### Related Procedures With Returns

* [asint\_double](/core/math/linalg/hlsl/#asint_double)
* [asint\_float](/core/math/linalg/hlsl/#asint_float)
* [asint\_half](/core/math/linalg/hlsl/#asint_half)
* [asint\_uint](/core/math/linalg/hlsl/#asint_uint)
* [dot\_int2](/core/math/linalg/hlsl/#dot_int2)
* [dot\_int3](/core/math/linalg/hlsl/#dot_int3)
* [dot\_int4](/core/math/linalg/hlsl/#dot_int4)
* [scalarTripleProduct\_int3](/core/math/linalg/hlsl/#scalarTripleProduct_int3)
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*

### [int1x1 ¶](#int1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L115)

```
int1x1 :: matrix[1, 1]i32
```

##### Related Procedures With Returns

* [asint\_double1x1](/core/math/linalg/hlsl/#asint_double1x1)
* [asint\_float1x1](/core/math/linalg/hlsl/#asint_float1x1)
* [asint\_half1x1](/core/math/linalg/hlsl/#asint_half1x1)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int1x2 ¶](#int1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L120)

```
int1x2 :: matrix[1, 2]i32
```

##### Related Procedures With Returns

* [asint\_double1x2](/core/math/linalg/hlsl/#asint_double1x2)
* [asint\_float1x2](/core/math/linalg/hlsl/#asint_float1x2)
* [asint\_half1x2](/core/math/linalg/hlsl/#asint_half1x2)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int1x3 ¶](#int1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L121)

```
int1x3 :: matrix[1, 3]i32
```

##### Related Procedures With Returns

* [asint\_double1x3](/core/math/linalg/hlsl/#asint_double1x3)
* [asint\_float1x3](/core/math/linalg/hlsl/#asint_float1x3)
* [asint\_half1x3](/core/math/linalg/hlsl/#asint_half1x3)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int1x4 ¶](#int1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L122)

```
int1x4 :: matrix[1, 4]i32
```

##### Related Procedures With Returns

* [asint\_double1x4](/core/math/linalg/hlsl/#asint_double1x4)
* [asint\_float1x4](/core/math/linalg/hlsl/#asint_float1x4)
* [asint\_half1x4](/core/math/linalg/hlsl/#asint_half1x4)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int2 ¶](#int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L78)

```
int2 :: [2]i32
```

##### Related Procedures With Parameters

* [abs\_int2](/core/math/linalg/hlsl/#abs_int2)
* [asdouble\_int2](/core/math/linalg/hlsl/#asdouble_int2)
* [asfloat\_int2](/core/math/linalg/hlsl/#asfloat_int2)
* [ashalf\_int2](/core/math/linalg/hlsl/#ashalf_int2)
* [asint\_int2](/core/math/linalg/hlsl/#asint_int2)
* [asuint\_int2](/core/math/linalg/hlsl/#asuint_int2)
* [clamp\_int2](/core/math/linalg/hlsl/#clamp_int2)
* [dot\_int2](/core/math/linalg/hlsl/#dot_int2)
* [equal\_int2](/core/math/linalg/hlsl/#equal_int2)
* [greaterThanEqual\_int2](/core/math/linalg/hlsl/#greaterThanEqual_int2)
* [greaterThan\_int2](/core/math/linalg/hlsl/#greaterThan_int2)
* [lessThanEqual\_int2](/core/math/linalg/hlsl/#lessThanEqual_int2)
* [lessThan\_int2](/core/math/linalg/hlsl/#lessThan_int2)
* [max\_int2](/core/math/linalg/hlsl/#max_int2)
* [min\_int2](/core/math/linalg/hlsl/#min_int2)
* [notEqual\_int2](/core/math/linalg/hlsl/#notEqual_int2)
* [saturate\_int2](/core/math/linalg/hlsl/#saturate_int2)
* [sign\_int2](/core/math/linalg/hlsl/#sign_int2)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*



##### Related Procedures With Returns

* [asint\_bool2](/core/math/linalg/hlsl/#asint_bool2)
* [asint\_double2](/core/math/linalg/hlsl/#asint_double2)
* [asint\_float2](/core/math/linalg/hlsl/#asint_float2)
* [asint\_half2](/core/math/linalg/hlsl/#asint_half2)
* [asint\_uint2](/core/math/linalg/hlsl/#asint_uint2)

### [int2x1 ¶](#int2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L123)

```
int2x1 :: matrix[2, 1]i32
```

##### Related Procedures With Returns

* [asint\_double2x1](/core/math/linalg/hlsl/#asint_double2x1)
* [asint\_float2x1](/core/math/linalg/hlsl/#asint_float2x1)
* [asint\_half2x1](/core/math/linalg/hlsl/#asint_half2x1)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int2x2 ¶](#int2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L116)

```
int2x2 :: matrix[2, 2]i32
```

##### Related Procedures With Returns

* [asint\_double2x2](/core/math/linalg/hlsl/#asint_double2x2)
* [asint\_float2x2](/core/math/linalg/hlsl/#asint_float2x2)
* [asint\_half2x2](/core/math/linalg/hlsl/#asint_half2x2)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int2x3 ¶](#int2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L124)

```
int2x3 :: matrix[2, 3]i32
```

##### Related Procedures With Returns

* [asint\_double2x3](/core/math/linalg/hlsl/#asint_double2x3)
* [asint\_float2x3](/core/math/linalg/hlsl/#asint_float2x3)
* [asint\_half2x3](/core/math/linalg/hlsl/#asint_half2x3)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int2x4 ¶](#int2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L125)

```
int2x4 :: matrix[2, 4]i32
```

##### Related Procedures With Returns

* [asint\_double2x4](/core/math/linalg/hlsl/#asint_double2x4)
* [asint\_float2x4](/core/math/linalg/hlsl/#asint_float2x4)
* [asint\_half2x4](/core/math/linalg/hlsl/#asint_half2x4)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int3 ¶](#int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L79)

```
int3 :: [3]i32
```

##### Related Procedures With Parameters

* [abs\_int3](/core/math/linalg/hlsl/#abs_int3)
* [asdouble\_int3](/core/math/linalg/hlsl/#asdouble_int3)
* [asfloat\_int3](/core/math/linalg/hlsl/#asfloat_int3)
* [ashalf\_int3](/core/math/linalg/hlsl/#ashalf_int3)
* [asint\_int3](/core/math/linalg/hlsl/#asint_int3)
* [asuint\_int3](/core/math/linalg/hlsl/#asuint_int3)
* [clamp\_int3](/core/math/linalg/hlsl/#clamp_int3)
* [cross\_int3](/core/math/linalg/hlsl/#cross_int3)
* [dot\_int3](/core/math/linalg/hlsl/#dot_int3)
* [equal\_int3](/core/math/linalg/hlsl/#equal_int3)
* [greaterThanEqual\_int3](/core/math/linalg/hlsl/#greaterThanEqual_int3)
* [greaterThan\_int3](/core/math/linalg/hlsl/#greaterThan_int3)
* [lessThanEqual\_int3](/core/math/linalg/hlsl/#lessThanEqual_int3)
* [lessThan\_int3](/core/math/linalg/hlsl/#lessThan_int3)
* [max\_int3](/core/math/linalg/hlsl/#max_int3)
* [min\_int3](/core/math/linalg/hlsl/#min_int3)
* [notEqual\_int3](/core/math/linalg/hlsl/#notEqual_int3)
* [saturate\_int3](/core/math/linalg/hlsl/#saturate_int3)
* [scalarTripleProduct\_int3](/core/math/linalg/hlsl/#scalarTripleProduct_int3)
* [sign\_int3](/core/math/linalg/hlsl/#sign_int3)
* [vectorTripleProduct\_int3](/core/math/linalg/hlsl/#vectorTripleProduct_int3)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [cross](/core/math/linalg/hlsl/#cross) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*
* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct) *(procedure groups)*



##### Related Procedures With Returns

* [asint\_bool3](/core/math/linalg/hlsl/#asint_bool3)
* [asint\_double3](/core/math/linalg/hlsl/#asint_double3)
* [asint\_float3](/core/math/linalg/hlsl/#asint_float3)
* [asint\_half3](/core/math/linalg/hlsl/#asint_half3)
* [asint\_uint3](/core/math/linalg/hlsl/#asint_uint3)

### [int3x1 ¶](#int3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L126)

```
int3x1 :: matrix[3, 1]i32
```

##### Related Procedures With Returns

* [asint\_double3x1](/core/math/linalg/hlsl/#asint_double3x1)
* [asint\_float3x1](/core/math/linalg/hlsl/#asint_float3x1)
* [asint\_half3x1](/core/math/linalg/hlsl/#asint_half3x1)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int3x2 ¶](#int3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L127)

```
int3x2 :: matrix[3, 2]i32
```

##### Related Procedures With Returns

* [asint\_double3x2](/core/math/linalg/hlsl/#asint_double3x2)
* [asint\_float3x2](/core/math/linalg/hlsl/#asint_float3x2)
* [asint\_half3x2](/core/math/linalg/hlsl/#asint_half3x2)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int3x3 ¶](#int3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L117)

```
int3x3 :: matrix[3, 3]i32
```

##### Related Procedures With Returns

* [asint\_double3x3](/core/math/linalg/hlsl/#asint_double3x3)
* [asint\_float3x3](/core/math/linalg/hlsl/#asint_float3x3)
* [asint\_half3x3](/core/math/linalg/hlsl/#asint_half3x3)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int3x4 ¶](#int3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L128)

```
int3x4 :: matrix[3, 4]i32
```

##### Related Procedures With Returns

* [asint\_double3x4](/core/math/linalg/hlsl/#asint_double3x4)
* [asint\_float3x4](/core/math/linalg/hlsl/#asint_float3x4)
* [asint\_half3x4](/core/math/linalg/hlsl/#asint_half3x4)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int4 ¶](#int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L80)

```
int4 :: [4]i32
```

##### Related Procedures With Parameters

* [abs\_int4](/core/math/linalg/hlsl/#abs_int4)
* [asdouble\_int4](/core/math/linalg/hlsl/#asdouble_int4)
* [asfloat\_int4](/core/math/linalg/hlsl/#asfloat_int4)
* [ashalf\_int4](/core/math/linalg/hlsl/#ashalf_int4)
* [asint\_int4](/core/math/linalg/hlsl/#asint_int4)
* [asuint\_int4](/core/math/linalg/hlsl/#asuint_int4)
* [clamp\_int4](/core/math/linalg/hlsl/#clamp_int4)
* [dot\_int4](/core/math/linalg/hlsl/#dot_int4)
* [equal\_int4](/core/math/linalg/hlsl/#equal_int4)
* [greaterThanEqual\_int4](/core/math/linalg/hlsl/#greaterThanEqual_int4)
* [greaterThan\_int4](/core/math/linalg/hlsl/#greaterThan_int4)
* [lessThanEqual\_int4](/core/math/linalg/hlsl/#lessThanEqual_int4)
* [lessThan\_int4](/core/math/linalg/hlsl/#lessThan_int4)
* [max\_int4](/core/math/linalg/hlsl/#max_int4)
* [min\_int4](/core/math/linalg/hlsl/#min_int4)
* [notEqual\_int4](/core/math/linalg/hlsl/#notEqual_int4)
* [saturate\_int4](/core/math/linalg/hlsl/#saturate_int4)
* [sign\_int4](/core/math/linalg/hlsl/#sign_int4)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*



##### Related Procedures With Returns

* [asint\_bool4](/core/math/linalg/hlsl/#asint_bool4)
* [asint\_double4](/core/math/linalg/hlsl/#asint_double4)
* [asint\_float4](/core/math/linalg/hlsl/#asint_float4)
* [asint\_half4](/core/math/linalg/hlsl/#asint_half4)
* [asint\_uint4](/core/math/linalg/hlsl/#asint_uint4)

### [int4x1 ¶](#int4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L129)

```
int4x1 :: matrix[4, 1]i32
```

##### Related Procedures With Returns

* [asint\_double4x1](/core/math/linalg/hlsl/#asint_double4x1)
* [asint\_float4x1](/core/math/linalg/hlsl/#asint_float4x1)
* [asint\_half4x1](/core/math/linalg/hlsl/#asint_half4x1)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int4x2 ¶](#int4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L130)

```
int4x2 :: matrix[4, 2]i32
```

##### Related Procedures With Returns

* [asint\_double4x2](/core/math/linalg/hlsl/#asint_double4x2)
* [asint\_float4x2](/core/math/linalg/hlsl/#asint_float4x2)
* [asint\_half4x2](/core/math/linalg/hlsl/#asint_half4x2)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int4x3 ¶](#int4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L131)

```
int4x3 :: matrix[4, 3]i32
```

##### Related Procedures With Returns

* [asint\_double4x3](/core/math/linalg/hlsl/#asint_double4x3)
* [asint\_float4x3](/core/math/linalg/hlsl/#asint_float4x3)
* [asint\_half4x3](/core/math/linalg/hlsl/#asint_half4x3)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [int4x4 ¶](#int4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L118)

```
int4x4 :: matrix[4, 4]i32
```

##### Related Procedures With Returns

* [asint\_double4x4](/core/math/linalg/hlsl/#asint_double4x4)
* [asint\_float4x4](/core/math/linalg/hlsl/#asint_float4x4)
* [asint\_half4x4](/core/math/linalg/hlsl/#asint_half4x4)
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*

### [uint ¶](#uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L29)

```
uint :: u32
```

##### Related Procedures With Parameters

* [abs\_uint](/core/math/linalg/hlsl/#abs_uint)
* [asdouble\_uint](/core/math/linalg/hlsl/#asdouble_uint)
* [asfloat\_uint](/core/math/linalg/hlsl/#asfloat_uint)
* [ashalf\_uint](/core/math/linalg/hlsl/#ashalf_uint)
* [asint\_uint](/core/math/linalg/hlsl/#asint_uint)
* [asuint\_uint](/core/math/linalg/hlsl/#asuint_uint)
* [clamp\_uint](/core/math/linalg/hlsl/#clamp_uint)
* [dot\_uint](/core/math/linalg/hlsl/#dot_uint)
* [equal\_uint](/core/math/linalg/hlsl/#equal_uint)
* [greaterThanEqual\_uint](/core/math/linalg/hlsl/#greaterThanEqual_uint)
* [greaterThan\_uint](/core/math/linalg/hlsl/#greaterThan_uint)
* [lessThanEqual\_uint](/core/math/linalg/hlsl/#lessThanEqual_uint)
* [lessThan\_uint](/core/math/linalg/hlsl/#lessThan_uint)
* [max\_uint](/core/math/linalg/hlsl/#max_uint)
* [min\_uint](/core/math/linalg/hlsl/#min_uint)
* [notEqual\_uint](/core/math/linalg/hlsl/#notEqual_uint)
* [saturate\_uint](/core/math/linalg/hlsl/#saturate_uint)
* [sign\_uint](/core/math/linalg/hlsl/#sign_uint)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*



##### Related Procedures With Returns

* [asuint\_double](/core/math/linalg/hlsl/#asuint_double)
* [asuint\_float](/core/math/linalg/hlsl/#asuint_float)
* [asuint\_half](/core/math/linalg/hlsl/#asuint_half)
* [asuint\_int](/core/math/linalg/hlsl/#asuint_int)
* [dot\_uint2](/core/math/linalg/hlsl/#dot_uint2)
* [dot\_uint3](/core/math/linalg/hlsl/#dot_uint3)
* [dot\_uint4](/core/math/linalg/hlsl/#dot_uint4)

### [uint2 ¶](#uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L82)

```
uint2 :: [2]u32
```

##### Related Procedures With Parameters

* [abs\_uint2](/core/math/linalg/hlsl/#abs_uint2)
* [asdouble\_uint2](/core/math/linalg/hlsl/#asdouble_uint2)
* [asfloat\_uint2](/core/math/linalg/hlsl/#asfloat_uint2)
* [ashalf\_uint2](/core/math/linalg/hlsl/#ashalf_uint2)
* [asint\_uint2](/core/math/linalg/hlsl/#asint_uint2)
* [asuint\_uint2](/core/math/linalg/hlsl/#asuint_uint2)
* [clamp\_uint2](/core/math/linalg/hlsl/#clamp_uint2)
* [dot\_uint2](/core/math/linalg/hlsl/#dot_uint2)
* [equal\_uint2](/core/math/linalg/hlsl/#equal_uint2)
* [greaterThanEqual\_uint2](/core/math/linalg/hlsl/#greaterThanEqual_uint2)
* [greaterThan\_uint2](/core/math/linalg/hlsl/#greaterThan_uint2)
* [lessThanEqual\_uint2](/core/math/linalg/hlsl/#lessThanEqual_uint2)
* [lessThan\_uint2](/core/math/linalg/hlsl/#lessThan_uint2)
* [max\_uint2](/core/math/linalg/hlsl/#max_uint2)
* [min\_uint2](/core/math/linalg/hlsl/#min_uint2)
* [notEqual\_uint2](/core/math/linalg/hlsl/#notEqual_uint2)
* [saturate\_uint2](/core/math/linalg/hlsl/#saturate_uint2)
* [sign\_uint2](/core/math/linalg/hlsl/#sign_uint2)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*



##### Related Procedures With Returns

* [asuint\_bool2](/core/math/linalg/hlsl/#asuint_bool2)
* [asuint\_double2](/core/math/linalg/hlsl/#asuint_double2)
* [asuint\_float2](/core/math/linalg/hlsl/#asuint_float2)
* [asuint\_half2](/core/math/linalg/hlsl/#asuint_half2)
* [asuint\_int2](/core/math/linalg/hlsl/#asuint_int2)

### [uint3 ¶](#uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L83)

```
uint3 :: [3]u32
```

##### Related Procedures With Parameters

* [abs\_uint3](/core/math/linalg/hlsl/#abs_uint3)
* [asdouble\_uint3](/core/math/linalg/hlsl/#asdouble_uint3)
* [asfloat\_uint3](/core/math/linalg/hlsl/#asfloat_uint3)
* [ashalf\_uint3](/core/math/linalg/hlsl/#ashalf_uint3)
* [asint\_uint3](/core/math/linalg/hlsl/#asint_uint3)
* [asuint\_uint3](/core/math/linalg/hlsl/#asuint_uint3)
* [clamp\_uint3](/core/math/linalg/hlsl/#clamp_uint3)
* [dot\_uint3](/core/math/linalg/hlsl/#dot_uint3)
* [equal\_uint3](/core/math/linalg/hlsl/#equal_uint3)
* [greaterThanEqual\_uint3](/core/math/linalg/hlsl/#greaterThanEqual_uint3)
* [greaterThan\_uint3](/core/math/linalg/hlsl/#greaterThan_uint3)
* [lessThanEqual\_uint3](/core/math/linalg/hlsl/#lessThanEqual_uint3)
* [lessThan\_uint3](/core/math/linalg/hlsl/#lessThan_uint3)
* [max\_uint3](/core/math/linalg/hlsl/#max_uint3)
* [min\_uint3](/core/math/linalg/hlsl/#min_uint3)
* [notEqual\_uint3](/core/math/linalg/hlsl/#notEqual_uint3)
* [saturate\_uint3](/core/math/linalg/hlsl/#saturate_uint3)
* [sign\_uint3](/core/math/linalg/hlsl/#sign_uint3)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*



##### Related Procedures With Returns

* [asuint\_bool3](/core/math/linalg/hlsl/#asuint_bool3)
* [asuint\_double3](/core/math/linalg/hlsl/#asuint_double3)
* [asuint\_float3](/core/math/linalg/hlsl/#asuint_float3)
* [asuint\_half3](/core/math/linalg/hlsl/#asuint_half3)
* [asuint\_int3](/core/math/linalg/hlsl/#asuint_int3)

### [uint4 ¶](#uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L84)

```
uint4 :: [4]u32
```

##### Related Procedures With Parameters

* [abs\_uint4](/core/math/linalg/hlsl/#abs_uint4)
* [asdouble\_uint4](/core/math/linalg/hlsl/#asdouble_uint4)
* [asfloat\_uint4](/core/math/linalg/hlsl/#asfloat_uint4)
* [ashalf\_uint4](/core/math/linalg/hlsl/#ashalf_uint4)
* [asint\_uint4](/core/math/linalg/hlsl/#asint_uint4)
* [asuint\_uint4](/core/math/linalg/hlsl/#asuint_uint4)
* [clamp\_uint4](/core/math/linalg/hlsl/#clamp_uint4)
* [dot\_uint4](/core/math/linalg/hlsl/#dot_uint4)
* [equal\_uint4](/core/math/linalg/hlsl/#equal_uint4)
* [greaterThanEqual\_uint4](/core/math/linalg/hlsl/#greaterThanEqual_uint4)
* [greaterThan\_uint4](/core/math/linalg/hlsl/#greaterThan_uint4)
* [lessThanEqual\_uint4](/core/math/linalg/hlsl/#lessThanEqual_uint4)
* [lessThan\_uint4](/core/math/linalg/hlsl/#lessThan_uint4)
* [max\_uint4](/core/math/linalg/hlsl/#max_uint4)
* [min\_uint4](/core/math/linalg/hlsl/#min_uint4)
* [notEqual\_uint4](/core/math/linalg/hlsl/#notEqual_uint4)
* [saturate\_uint4](/core/math/linalg/hlsl/#saturate_uint4)
* [sign\_uint4](/core/math/linalg/hlsl/#sign_uint4)
* [abs](/core/math/linalg/hlsl/#abs) *(procedure groups)*
* [asdouble](/core/math/linalg/hlsl/#asdouble) *(procedure groups)*
* [asfloat](/core/math/linalg/hlsl/#asfloat) *(procedure groups)*
* [ashalf](/core/math/linalg/hlsl/#ashalf) *(procedure groups)*
* [asint](/core/math/linalg/hlsl/#asint) *(procedure groups)*
* [asuint](/core/math/linalg/hlsl/#asuint) *(procedure groups)*
* [clamp](/core/math/linalg/hlsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/hlsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/hlsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/hlsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/hlsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/hlsl/#max) *(procedure groups)*
* [min](/core/math/linalg/hlsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/hlsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/hlsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/hlsl/#sign) *(procedure groups)*



##### Related Procedures With Returns

* [asuint\_bool4](/core/math/linalg/hlsl/#asuint_bool4)
* [asuint\_double4](/core/math/linalg/hlsl/#asuint_double4)
* [asuint\_float4](/core/math/linalg/hlsl/#asuint_float4)
* [asuint\_half4](/core/math/linalg/hlsl/#asuint_half4)
* [asuint\_int4](/core/math/linalg/hlsl/#asuint_int4)

## Constants

### [DOUBLE\_EPSILON ¶](#DOUBLE_EPSILON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L22)

```
DOUBLE_EPSILON :: 1e-15
```

### [E ¶](#E) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L9)

```
E :: 2.71828182845904523536
```

### [FLOAT\_EPSILON ¶](#FLOAT_EPSILON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L21)

```
FLOAT_EPSILON :: 1e-7
```

### [LN10 ¶](#LN10) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L19)

```
LN10 :: 2.30258509299404568401799145468436421
```

### [LN2 ¶](#LN2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L18)

```
LN2 :: 0.693147180559945309417232121458176568
```

### [PI ¶](#PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L8)

```
PI :: 3.14159265358979323846264338327950288
```

### [SQRT\_FIVE ¶](#SQRT_FIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L16)

```
SQRT_FIVE :: 2.23606797749978969640917366873127623
```

### [SQRT\_THREE ¶](#SQRT_THREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L15)

```
SQRT_THREE :: 1.73205080756887729352744634150587236
```

### [SQRT\_TWO ¶](#SQRT_TWO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L14)

```
SQRT_TWO :: 1.41421356237309504880168872420969808
```

### [TAU ¶](#TAU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L7)

```
TAU :: 6.28318530717958647692528676655900576
```

### [e ¶](#e) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L12)

```
e :: E
```

### [π ¶](#π) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L11)

```
π :: PI
```

### [τ ¶](#τ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L10)

```
τ :: TAU
```

## Variables

This section is empty.

## Procedures

### [abs\_double ¶](#abs_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1284)

```
abs_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_double2 ¶](#abs_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1291)

```
abs_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_double3 ¶](#abs_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1292)

```
abs_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_double4 ¶](#abs_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1293)

```
abs_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_float ¶](#abs_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1283)

```
abs_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_float2 ¶](#abs_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1288)

```
abs_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_float3 ¶](#abs_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1289)

```
abs_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_float4 ¶](#abs_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1290)

```
abs_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_half ¶](#abs_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1282)

```
abs_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_half2 ¶](#abs_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1285)

```
abs_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_half3 ¶](#abs_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1286)

```
abs_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_half4 ¶](#abs_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1287)

```
abs_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_int ¶](#abs_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1280)

```
abs_int :: proc "c" (x: i32) -> i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_int2 ¶](#abs_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1294)

```
abs_int2 :: proc "c" (x: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_int3 ¶](#abs_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1295)

```
abs_int3 :: proc "c" (x: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_int4 ¶](#abs_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1296)

```
abs_int4 :: proc "c" (x: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_uint ¶](#abs_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1281)

```
abs_uint :: proc "c" (x: u32) -> u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_uint2 ¶](#abs_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1297)

```
abs_uint2 :: proc "c" (x: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_uint3 ¶](#abs_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1298)

```
abs_uint3 :: proc "c" (x: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [abs\_uint4 ¶](#abs_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1299)

```
abs_uint4 :: proc "c" (x: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/hlsl/#abs)

### [acos\_double ¶](#acos_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L81)

```
acos_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_double2 ¶](#acos_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L225)

```
acos_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_double3 ¶](#acos_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L226)

```
acos_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_double4 ¶](#acos_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L227)

```
acos_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_float ¶](#acos_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L44)

```
acos_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_float2 ¶](#acos_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L222)

```
acos_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_float3 ¶](#acos_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L223)

```
acos_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_float4 ¶](#acos_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L224)

```
acos_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_half ¶](#acos_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L8)

```
acos_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_half2 ¶](#acos_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L219)

```
acos_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_half3 ¶](#acos_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L220)

```
acos_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acos\_half4 ¶](#acos_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L221)

```
acos_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/hlsl/#acos)

### [acosh\_double ¶](#acosh_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L88)

```
acosh_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_double2 ¶](#acosh_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L404)

```
acosh_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_double3 ¶](#acosh_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L405)

```
acosh_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_double4 ¶](#acosh_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L406)

```
acosh_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_float ¶](#acosh_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L51)

```
acosh_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_float2 ¶](#acosh_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L401)

```
acosh_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_float3 ¶](#acosh_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L402)

```
acosh_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_float4 ¶](#acosh_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L403)

```
acosh_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_half ¶](#acosh_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L15)

```
acosh_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_half2 ¶](#acosh_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L398)

```
acosh_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_half3 ¶](#acosh_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L399)

```
acosh_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [acosh\_half4 ¶](#acosh_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L400)

```
acosh_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/hlsl/#acosh)

### [adjugate\_matrix1x1 ¶](#adjugate_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2063)

```
adjugate_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/hlsl/#adjugate)

### [adjugate\_matrix2x2 ¶](#adjugate_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2069)

```
adjugate_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/hlsl/#adjugate)

### [adjugate\_matrix3x3 ¶](#adjugate_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2078)

```
adjugate_matrix3x3 :: proc "contextless" (m: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/hlsl/#adjugate)

### [adjugate\_matrix4x4 ¶](#adjugate_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2092)

```
adjugate_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/hlsl/#adjugate)

### [all\_bool ¶](#all_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1922)

```
all_bool :: proc "c" (v: bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/hlsl/#all)

### [all\_bool2 ¶](#all_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1923)

```
all_bool2 :: proc "c" (v: [2]bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/hlsl/#all)

### [all\_bool3 ¶](#all_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1924)

```
all_bool3 :: proc "c" (v: [3]bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/hlsl/#all)

### [all\_bool4 ¶](#all_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1925)

```
all_bool4 :: proc "c" (v: [4]bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/hlsl/#all)

### [any\_bool ¶](#any_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1911)

```
any_bool :: proc "c" (v: bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/hlsl/#any)

### [any\_bool2 ¶](#any_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1912)

```
any_bool2 :: proc "c" (v: [2]bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/hlsl/#any)

### [any\_bool3 ¶](#any_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1913)

```
any_bool3 :: proc "c" (v: [3]bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/hlsl/#any)

### [any\_bool4 ¶](#any_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1914)

```
any_bool4 :: proc "c" (v: [4]bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/hlsl/#any)

### [asdouble\_bool2 ¶](#asdouble_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2696)

```
asdouble_bool2 :: proc "c" (v: [2]bool) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_bool3 ¶](#asdouble_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2697)

```
asdouble_bool3 :: proc "c" (v: [3]bool) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_bool4 ¶](#asdouble_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2698)

```
asdouble_bool4 :: proc "c" (v: [4]bool) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double ¶](#asdouble_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2649)

```
asdouble_double :: proc "c" (v: f64) -> f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double1x1 ¶](#asdouble_double1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2699)

```
asdouble_double1x1 :: proc "c" (v: matrix[1, 1]f64) -> matrix[1, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double1x2 ¶](#asdouble_double1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2703)

```
asdouble_double1x2 :: proc "c" (v: matrix[1, 2]f64) -> matrix[1, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double1x3 ¶](#asdouble_double1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2704)

```
asdouble_double1x3 :: proc "c" (v: matrix[1, 3]f64) -> matrix[1, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double1x4 ¶](#asdouble_double1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2705)

```
asdouble_double1x4 :: proc "c" (v: matrix[1, 4]f64) -> matrix[1, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double2 ¶](#asdouble_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2715)

```
asdouble_double2 :: proc "c" (v: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double2x1 ¶](#asdouble_double2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2706)

```
asdouble_double2x1 :: proc "c" (v: matrix[2, 1]f64) -> matrix[2, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double2x2 ¶](#asdouble_double2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2700)

```
asdouble_double2x2 :: proc "c" (v: matrix[2, 2]f64) -> matrix[2, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double2x3 ¶](#asdouble_double2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2707)

```
asdouble_double2x3 :: proc "c" (v: matrix[2, 3]f64) -> matrix[2, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double2x4 ¶](#asdouble_double2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2708)

```
asdouble_double2x4 :: proc "c" (v: matrix[2, 4]f64) -> matrix[2, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double3 ¶](#asdouble_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2716)

```
asdouble_double3 :: proc "c" (v: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double3x1 ¶](#asdouble_double3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2709)

```
asdouble_double3x1 :: proc "c" (v: matrix[3, 1]f64) -> matrix[3, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double3x2 ¶](#asdouble_double3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2710)

```
asdouble_double3x2 :: proc "c" (v: matrix[3, 2]f64) -> matrix[3, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double3x3 ¶](#asdouble_double3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2701)

```
asdouble_double3x3 :: proc "c" (v: matrix[3, 3]f64) -> matrix[3, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double3x4 ¶](#asdouble_double3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2711)

```
asdouble_double3x4 :: proc "c" (v: matrix[3, 4]f64) -> matrix[3, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double4 ¶](#asdouble_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2717)

```
asdouble_double4 :: proc "c" (v: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double4x1 ¶](#asdouble_double4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2712)

```
asdouble_double4x1 :: proc "c" (v: matrix[4, 1]f64) -> matrix[4, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double4x2 ¶](#asdouble_double4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2713)

```
asdouble_double4x2 :: proc "c" (v: matrix[4, 2]f64) -> matrix[4, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double4x3 ¶](#asdouble_double4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2714)

```
asdouble_double4x3 :: proc "c" (v: matrix[4, 3]f64) -> matrix[4, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_double4x4 ¶](#asdouble_double4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2702)

```
asdouble_double4x4 :: proc "c" (v: matrix[4, 4]f64) -> matrix[4, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float ¶](#asdouble_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2648)

```
asdouble_float :: proc "c" (v: f32) -> f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float1x1 ¶](#asdouble_float1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2671)

```
asdouble_float1x1 :: proc "c" (v: matrix[1, 1]f32) -> matrix[1, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float1x2 ¶](#asdouble_float1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2675)

```
asdouble_float1x2 :: proc "c" (v: matrix[1, 2]f32) -> matrix[1, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float1x3 ¶](#asdouble_float1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2676)

```
asdouble_float1x3 :: proc "c" (v: matrix[1, 3]f32) -> matrix[1, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float1x4 ¶](#asdouble_float1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2677)

```
asdouble_float1x4 :: proc "c" (v: matrix[1, 4]f32) -> matrix[1, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float2 ¶](#asdouble_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2687)

```
asdouble_float2 :: proc "c" (v: [2]f32) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float2x1 ¶](#asdouble_float2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2678)

```
asdouble_float2x1 :: proc "c" (v: matrix[2, 1]f32) -> matrix[2, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float2x2 ¶](#asdouble_float2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2672)

```
asdouble_float2x2 :: proc "c" (v: matrix[2, 2]f32) -> matrix[2, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float2x3 ¶](#asdouble_float2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2679)

```
asdouble_float2x3 :: proc "c" (v: matrix[2, 3]f32) -> matrix[2, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float2x4 ¶](#asdouble_float2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2680)

```
asdouble_float2x4 :: proc "c" (v: matrix[2, 4]f32) -> matrix[2, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float3 ¶](#asdouble_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2688)

```
asdouble_float3 :: proc "c" (v: [3]f32) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float3x1 ¶](#asdouble_float3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2681)

```
asdouble_float3x1 :: proc "c" (v: matrix[3, 1]f32) -> matrix[3, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float3x2 ¶](#asdouble_float3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2682)

```
asdouble_float3x2 :: proc "c" (v: matrix[3, 2]f32) -> matrix[3, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float3x3 ¶](#asdouble_float3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2673)

```
asdouble_float3x3 :: proc "c" (v: matrix[3, 3]f32) -> matrix[3, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float3x4 ¶](#asdouble_float3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2683)

```
asdouble_float3x4 :: proc "c" (v: matrix[3, 4]f32) -> matrix[3, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float4 ¶](#asdouble_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2689)

```
asdouble_float4 :: proc "c" (v: [4]f32) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float4x1 ¶](#asdouble_float4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2684)

```
asdouble_float4x1 :: proc "c" (v: matrix[4, 1]f32) -> matrix[4, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float4x2 ¶](#asdouble_float4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2685)

```
asdouble_float4x2 :: proc "c" (v: matrix[4, 2]f32) -> matrix[4, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float4x3 ¶](#asdouble_float4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2686)

```
asdouble_float4x3 :: proc "c" (v: matrix[4, 3]f32) -> matrix[4, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_float4x4 ¶](#asdouble_float4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2674)

```
asdouble_float4x4 :: proc "c" (v: matrix[4, 4]f32) -> matrix[4, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half ¶](#asdouble_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2647)

```
asdouble_half :: proc "c" (v: f16) -> f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half1x1 ¶](#asdouble_half1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2652)

```
asdouble_half1x1 :: proc "c" (v: matrix[1, 1]f16) -> matrix[1, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half1x2 ¶](#asdouble_half1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2656)

```
asdouble_half1x2 :: proc "c" (v: matrix[1, 2]f16) -> matrix[1, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half1x3 ¶](#asdouble_half1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2657)

```
asdouble_half1x3 :: proc "c" (v: matrix[1, 3]f16) -> matrix[1, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half1x4 ¶](#asdouble_half1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2658)

```
asdouble_half1x4 :: proc "c" (v: matrix[1, 4]f16) -> matrix[1, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half2 ¶](#asdouble_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2668)

```
asdouble_half2 :: proc "c" (v: [2]f16) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half2x1 ¶](#asdouble_half2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2659)

```
asdouble_half2x1 :: proc "c" (v: matrix[2, 1]f16) -> matrix[2, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half2x2 ¶](#asdouble_half2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2653)

```
asdouble_half2x2 :: proc "c" (v: matrix[2, 2]f16) -> matrix[2, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half2x3 ¶](#asdouble_half2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2660)

```
asdouble_half2x3 :: proc "c" (v: matrix[2, 3]f16) -> matrix[2, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half2x4 ¶](#asdouble_half2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2661)

```
asdouble_half2x4 :: proc "c" (v: matrix[2, 4]f16) -> matrix[2, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half3 ¶](#asdouble_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2669)

```
asdouble_half3 :: proc "c" (v: [3]f16) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half3x1 ¶](#asdouble_half3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2662)

```
asdouble_half3x1 :: proc "c" (v: matrix[3, 1]f16) -> matrix[3, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half3x2 ¶](#asdouble_half3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2663)

```
asdouble_half3x2 :: proc "c" (v: matrix[3, 2]f16) -> matrix[3, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half3x3 ¶](#asdouble_half3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2654)

```
asdouble_half3x3 :: proc "c" (v: matrix[3, 3]f16) -> matrix[3, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half3x4 ¶](#asdouble_half3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2664)

```
asdouble_half3x4 :: proc "c" (v: matrix[3, 4]f16) -> matrix[3, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half4 ¶](#asdouble_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2670)

```
asdouble_half4 :: proc "c" (v: [4]f16) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half4x1 ¶](#asdouble_half4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2665)

```
asdouble_half4x1 :: proc "c" (v: matrix[4, 1]f16) -> matrix[4, 1]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half4x2 ¶](#asdouble_half4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2666)

```
asdouble_half4x2 :: proc "c" (v: matrix[4, 2]f16) -> matrix[4, 2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half4x3 ¶](#asdouble_half4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2667)

```
asdouble_half4x3 :: proc "c" (v: matrix[4, 3]f16) -> matrix[4, 3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_half4x4 ¶](#asdouble_half4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2655)

```
asdouble_half4x4 :: proc "c" (v: matrix[4, 4]f16) -> matrix[4, 4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_int ¶](#asdouble_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2650)

```
asdouble_int :: proc "c" (v: i32) -> f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_int2 ¶](#asdouble_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2690)

```
asdouble_int2 :: proc "c" (v: [2]i32) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_int3 ¶](#asdouble_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2691)

```
asdouble_int3 :: proc "c" (v: [3]i32) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_int4 ¶](#asdouble_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2692)

```
asdouble_int4 :: proc "c" (v: [4]i32) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_uint ¶](#asdouble_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2651)

```
asdouble_uint :: proc "c" (v: u32) -> f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_uint2 ¶](#asdouble_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2693)

```
asdouble_uint2 :: proc "c" (v: [2]u32) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_uint3 ¶](#asdouble_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2694)

```
asdouble_uint3 :: proc "c" (v: [3]u32) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asdouble\_uint4 ¶](#asdouble_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2695)

```
asdouble_uint4 :: proc "c" (v: [4]u32) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asdouble](/core/math/linalg/hlsl/#asdouble)

### [asfloat\_bool2 ¶](#asfloat_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2551)

```
asfloat_bool2 :: proc "c" (v: [2]bool) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_bool3 ¶](#asfloat_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2552)

```
asfloat_bool3 :: proc "c" (v: [3]bool) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_bool4 ¶](#asfloat_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2553)

```
asfloat_bool4 :: proc "c" (v: [4]bool) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double ¶](#asfloat_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2504)

```
asfloat_double :: proc "c" (v: f64) -> f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double1x1 ¶](#asfloat_double1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2554)

```
asfloat_double1x1 :: proc "c" (v: matrix[1, 1]f64) -> matrix[1, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double1x2 ¶](#asfloat_double1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2558)

```
asfloat_double1x2 :: proc "c" (v: matrix[1, 2]f64) -> matrix[1, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double1x3 ¶](#asfloat_double1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2559)

```
asfloat_double1x3 :: proc "c" (v: matrix[1, 3]f64) -> matrix[1, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double1x4 ¶](#asfloat_double1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2560)

```
asfloat_double1x4 :: proc "c" (v: matrix[1, 4]f64) -> matrix[1, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double2 ¶](#asfloat_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2570)

```
asfloat_double2 :: proc "c" (v: [2]f64) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double2x1 ¶](#asfloat_double2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2561)

```
asfloat_double2x1 :: proc "c" (v: matrix[2, 1]f64) -> matrix[2, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double2x2 ¶](#asfloat_double2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2555)

```
asfloat_double2x2 :: proc "c" (v: matrix[2, 2]f64) -> matrix[2, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double2x3 ¶](#asfloat_double2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2562)

```
asfloat_double2x3 :: proc "c" (v: matrix[2, 3]f64) -> matrix[2, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double2x4 ¶](#asfloat_double2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2563)

```
asfloat_double2x4 :: proc "c" (v: matrix[2, 4]f64) -> matrix[2, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double3 ¶](#asfloat_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2571)

```
asfloat_double3 :: proc "c" (v: [3]f64) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double3x1 ¶](#asfloat_double3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2564)

```
asfloat_double3x1 :: proc "c" (v: matrix[3, 1]f64) -> matrix[3, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double3x2 ¶](#asfloat_double3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2565)

```
asfloat_double3x2 :: proc "c" (v: matrix[3, 2]f64) -> matrix[3, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double3x3 ¶](#asfloat_double3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2556)

```
asfloat_double3x3 :: proc "c" (v: matrix[3, 3]f64) -> matrix[3, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double3x4 ¶](#asfloat_double3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2566)

```
asfloat_double3x4 :: proc "c" (v: matrix[3, 4]f64) -> matrix[3, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double4 ¶](#asfloat_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2572)

```
asfloat_double4 :: proc "c" (v: [4]f64) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double4x1 ¶](#asfloat_double4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2567)

```
asfloat_double4x1 :: proc "c" (v: matrix[4, 1]f64) -> matrix[4, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double4x2 ¶](#asfloat_double4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2568)

```
asfloat_double4x2 :: proc "c" (v: matrix[4, 2]f64) -> matrix[4, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double4x3 ¶](#asfloat_double4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2569)

```
asfloat_double4x3 :: proc "c" (v: matrix[4, 3]f64) -> matrix[4, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_double4x4 ¶](#asfloat_double4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2557)

```
asfloat_double4x4 :: proc "c" (v: matrix[4, 4]f64) -> matrix[4, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float ¶](#asfloat_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2503)

```
asfloat_float :: proc "c" (v: f32) -> f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float1x1 ¶](#asfloat_float1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2526)

```
asfloat_float1x1 :: proc "c" (v: matrix[1, 1]f32) -> matrix[1, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float1x2 ¶](#asfloat_float1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2530)

```
asfloat_float1x2 :: proc "c" (v: matrix[1, 2]f32) -> matrix[1, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float1x3 ¶](#asfloat_float1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2531)

```
asfloat_float1x3 :: proc "c" (v: matrix[1, 3]f32) -> matrix[1, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float1x4 ¶](#asfloat_float1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2532)

```
asfloat_float1x4 :: proc "c" (v: matrix[1, 4]f32) -> matrix[1, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float2 ¶](#asfloat_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2542)

```
asfloat_float2 :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float2x1 ¶](#asfloat_float2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2533)

```
asfloat_float2x1 :: proc "c" (v: matrix[2, 1]f32) -> matrix[2, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float2x2 ¶](#asfloat_float2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2527)

```
asfloat_float2x2 :: proc "c" (v: matrix[2, 2]f32) -> matrix[2, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float2x3 ¶](#asfloat_float2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2534)

```
asfloat_float2x3 :: proc "c" (v: matrix[2, 3]f32) -> matrix[2, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float2x4 ¶](#asfloat_float2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2535)

```
asfloat_float2x4 :: proc "c" (v: matrix[2, 4]f32) -> matrix[2, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float3 ¶](#asfloat_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2543)

```
asfloat_float3 :: proc "c" (v: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float3x1 ¶](#asfloat_float3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2536)

```
asfloat_float3x1 :: proc "c" (v: matrix[3, 1]f32) -> matrix[3, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float3x2 ¶](#asfloat_float3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2537)

```
asfloat_float3x2 :: proc "c" (v: matrix[3, 2]f32) -> matrix[3, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float3x3 ¶](#asfloat_float3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2528)

```
asfloat_float3x3 :: proc "c" (v: matrix[3, 3]f32) -> matrix[3, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float3x4 ¶](#asfloat_float3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2538)

```
asfloat_float3x4 :: proc "c" (v: matrix[3, 4]f32) -> matrix[3, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float4 ¶](#asfloat_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2544)

```
asfloat_float4 :: proc "c" (v: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float4x1 ¶](#asfloat_float4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2539)

```
asfloat_float4x1 :: proc "c" (v: matrix[4, 1]f32) -> matrix[4, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float4x2 ¶](#asfloat_float4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2540)

```
asfloat_float4x2 :: proc "c" (v: matrix[4, 2]f32) -> matrix[4, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float4x3 ¶](#asfloat_float4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2541)

```
asfloat_float4x3 :: proc "c" (v: matrix[4, 3]f32) -> matrix[4, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_float4x4 ¶](#asfloat_float4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2529)

```
asfloat_float4x4 :: proc "c" (v: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half ¶](#asfloat_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2502)

```
asfloat_half :: proc "c" (v: f16) -> f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half1x1 ¶](#asfloat_half1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2507)

```
asfloat_half1x1 :: proc "c" (v: matrix[1, 1]f16) -> matrix[1, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half1x2 ¶](#asfloat_half1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2511)

```
asfloat_half1x2 :: proc "c" (v: matrix[1, 2]f16) -> matrix[1, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half1x3 ¶](#asfloat_half1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2512)

```
asfloat_half1x3 :: proc "c" (v: matrix[1, 3]f16) -> matrix[1, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half1x4 ¶](#asfloat_half1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2513)

```
asfloat_half1x4 :: proc "c" (v: matrix[1, 4]f16) -> matrix[1, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half2 ¶](#asfloat_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2523)

```
asfloat_half2 :: proc "c" (v: [2]f16) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half2x1 ¶](#asfloat_half2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2514)

```
asfloat_half2x1 :: proc "c" (v: matrix[2, 1]f16) -> matrix[2, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half2x2 ¶](#asfloat_half2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2508)

```
asfloat_half2x2 :: proc "c" (v: matrix[2, 2]f16) -> matrix[2, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half2x3 ¶](#asfloat_half2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2515)

```
asfloat_half2x3 :: proc "c" (v: matrix[2, 3]f16) -> matrix[2, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half2x4 ¶](#asfloat_half2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2516)

```
asfloat_half2x4 :: proc "c" (v: matrix[2, 4]f16) -> matrix[2, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half3 ¶](#asfloat_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2524)

```
asfloat_half3 :: proc "c" (v: [3]f16) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half3x1 ¶](#asfloat_half3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2517)

```
asfloat_half3x1 :: proc "c" (v: matrix[3, 1]f16) -> matrix[3, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half3x2 ¶](#asfloat_half3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2518)

```
asfloat_half3x2 :: proc "c" (v: matrix[3, 2]f16) -> matrix[3, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half3x3 ¶](#asfloat_half3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2509)

```
asfloat_half3x3 :: proc "c" (v: matrix[3, 3]f16) -> matrix[3, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half3x4 ¶](#asfloat_half3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2519)

```
asfloat_half3x4 :: proc "c" (v: matrix[3, 4]f16) -> matrix[3, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half4 ¶](#asfloat_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2525)

```
asfloat_half4 :: proc "c" (v: [4]f16) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half4x1 ¶](#asfloat_half4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2520)

```
asfloat_half4x1 :: proc "c" (v: matrix[4, 1]f16) -> matrix[4, 1]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half4x2 ¶](#asfloat_half4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2521)

```
asfloat_half4x2 :: proc "c" (v: matrix[4, 2]f16) -> matrix[4, 2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half4x3 ¶](#asfloat_half4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2522)

```
asfloat_half4x3 :: proc "c" (v: matrix[4, 3]f16) -> matrix[4, 3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_half4x4 ¶](#asfloat_half4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2510)

```
asfloat_half4x4 :: proc "c" (v: matrix[4, 4]f16) -> matrix[4, 4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_int ¶](#asfloat_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2505)

```
asfloat_int :: proc "c" (v: i32) -> f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_int2 ¶](#asfloat_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2545)

```
asfloat_int2 :: proc "c" (v: [2]i32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_int3 ¶](#asfloat_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2546)

```
asfloat_int3 :: proc "c" (v: [3]i32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_int4 ¶](#asfloat_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2547)

```
asfloat_int4 :: proc "c" (v: [4]i32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_uint ¶](#asfloat_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2506)

```
asfloat_uint :: proc "c" (v: u32) -> f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_uint2 ¶](#asfloat_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2548)

```
asfloat_uint2 :: proc "c" (v: [2]u32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_uint3 ¶](#asfloat_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2549)

```
asfloat_uint3 :: proc "c" (v: [3]u32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [asfloat\_uint4 ¶](#asfloat_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2550)

```
asfloat_uint4 :: proc "c" (v: [4]u32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asfloat](/core/math/linalg/hlsl/#asfloat)

### [ashalf\_bool2 ¶](#ashalf_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2406)

```
ashalf_bool2 :: proc "c" (v: [2]bool) -> [2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_bool3 ¶](#ashalf_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2407)

```
ashalf_bool3 :: proc "c" (v: [3]bool) -> [3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_bool4 ¶](#ashalf_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2408)

```
ashalf_bool4 :: proc "c" (v: [4]bool) -> [4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double ¶](#ashalf_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2359)

```
ashalf_double :: proc "c" (v: f64) -> f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double1x1 ¶](#ashalf_double1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2409)

```
ashalf_double1x1 :: proc "c" (v: matrix[1, 1]f64) -> matrix[1, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double1x2 ¶](#ashalf_double1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2413)

```
ashalf_double1x2 :: proc "c" (v: matrix[1, 2]f64) -> matrix[1, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double1x3 ¶](#ashalf_double1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2414)

```
ashalf_double1x3 :: proc "c" (v: matrix[1, 3]f64) -> matrix[1, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double1x4 ¶](#ashalf_double1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2415)

```
ashalf_double1x4 :: proc "c" (v: matrix[1, 4]f64) -> matrix[1, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double2 ¶](#ashalf_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2425)

```
ashalf_double2 :: proc "c" (v: [2]f64) -> [2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double2x1 ¶](#ashalf_double2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2416)

```
ashalf_double2x1 :: proc "c" (v: matrix[2, 1]f64) -> matrix[2, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double2x2 ¶](#ashalf_double2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2410)

```
ashalf_double2x2 :: proc "c" (v: matrix[2, 2]f64) -> matrix[2, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double2x3 ¶](#ashalf_double2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2417)

```
ashalf_double2x3 :: proc "c" (v: matrix[2, 3]f64) -> matrix[2, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double2x4 ¶](#ashalf_double2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2418)

```
ashalf_double2x4 :: proc "c" (v: matrix[2, 4]f64) -> matrix[2, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double3 ¶](#ashalf_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2426)

```
ashalf_double3 :: proc "c" (v: [3]f64) -> [3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double3x1 ¶](#ashalf_double3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2419)

```
ashalf_double3x1 :: proc "c" (v: matrix[3, 1]f64) -> matrix[3, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double3x2 ¶](#ashalf_double3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2420)

```
ashalf_double3x2 :: proc "c" (v: matrix[3, 2]f64) -> matrix[3, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double3x3 ¶](#ashalf_double3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2411)

```
ashalf_double3x3 :: proc "c" (v: matrix[3, 3]f64) -> matrix[3, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double3x4 ¶](#ashalf_double3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2421)

```
ashalf_double3x4 :: proc "c" (v: matrix[3, 4]f64) -> matrix[3, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double4 ¶](#ashalf_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2427)

```
ashalf_double4 :: proc "c" (v: [4]f64) -> [4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double4x1 ¶](#ashalf_double4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2422)

```
ashalf_double4x1 :: proc "c" (v: matrix[4, 1]f64) -> matrix[4, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double4x2 ¶](#ashalf_double4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2423)

```
ashalf_double4x2 :: proc "c" (v: matrix[4, 2]f64) -> matrix[4, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double4x3 ¶](#ashalf_double4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2424)

```
ashalf_double4x3 :: proc "c" (v: matrix[4, 3]f64) -> matrix[4, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_double4x4 ¶](#ashalf_double4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2412)

```
ashalf_double4x4 :: proc "c" (v: matrix[4, 4]f64) -> matrix[4, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float ¶](#ashalf_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2358)

```
ashalf_float :: proc "c" (v: f32) -> f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float1x1 ¶](#ashalf_float1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2381)

```
ashalf_float1x1 :: proc "c" (v: matrix[1, 1]f32) -> matrix[1, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float1x2 ¶](#ashalf_float1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2385)

```
ashalf_float1x2 :: proc "c" (v: matrix[1, 2]f32) -> matrix[1, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float1x3 ¶](#ashalf_float1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2386)

```
ashalf_float1x3 :: proc "c" (v: matrix[1, 3]f32) -> matrix[1, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float1x4 ¶](#ashalf_float1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2387)

```
ashalf_float1x4 :: proc "c" (v: matrix[1, 4]f32) -> matrix[1, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float2 ¶](#ashalf_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2397)

```
ashalf_float2 :: proc "c" (v: [2]f32) -> [2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float2x1 ¶](#ashalf_float2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2388)

```
ashalf_float2x1 :: proc "c" (v: matrix[2, 1]f32) -> matrix[2, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float2x2 ¶](#ashalf_float2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2382)

```
ashalf_float2x2 :: proc "c" (v: matrix[2, 2]f32) -> matrix[2, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float2x3 ¶](#ashalf_float2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2389)

```
ashalf_float2x3 :: proc "c" (v: matrix[2, 3]f32) -> matrix[2, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float2x4 ¶](#ashalf_float2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2390)

```
ashalf_float2x4 :: proc "c" (v: matrix[2, 4]f32) -> matrix[2, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float3 ¶](#ashalf_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2398)

```
ashalf_float3 :: proc "c" (v: [3]f32) -> [3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float3x1 ¶](#ashalf_float3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2391)

```
ashalf_float3x1 :: proc "c" (v: matrix[3, 1]f32) -> matrix[3, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float3x2 ¶](#ashalf_float3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2392)

```
ashalf_float3x2 :: proc "c" (v: matrix[3, 2]f32) -> matrix[3, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float3x3 ¶](#ashalf_float3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2383)

```
ashalf_float3x3 :: proc "c" (v: matrix[3, 3]f32) -> matrix[3, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float3x4 ¶](#ashalf_float3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2393)

```
ashalf_float3x4 :: proc "c" (v: matrix[3, 4]f32) -> matrix[3, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float4 ¶](#ashalf_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2399)

```
ashalf_float4 :: proc "c" (v: [4]f32) -> [4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float4x1 ¶](#ashalf_float4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2394)

```
ashalf_float4x1 :: proc "c" (v: matrix[4, 1]f32) -> matrix[4, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float4x2 ¶](#ashalf_float4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2395)

```
ashalf_float4x2 :: proc "c" (v: matrix[4, 2]f32) -> matrix[4, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float4x3 ¶](#ashalf_float4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2396)

```
ashalf_float4x3 :: proc "c" (v: matrix[4, 3]f32) -> matrix[4, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_float4x4 ¶](#ashalf_float4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2384)

```
ashalf_float4x4 :: proc "c" (v: matrix[4, 4]f32) -> matrix[4, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half ¶](#ashalf_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2357)

```
ashalf_half :: proc "c" (v: f16) -> f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half1x1 ¶](#ashalf_half1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2362)

```
ashalf_half1x1 :: proc "c" (v: matrix[1, 1]f16) -> matrix[1, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half1x2 ¶](#ashalf_half1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2366)

```
ashalf_half1x2 :: proc "c" (v: matrix[1, 2]f16) -> matrix[1, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half1x3 ¶](#ashalf_half1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2367)

```
ashalf_half1x3 :: proc "c" (v: matrix[1, 3]f16) -> matrix[1, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half1x4 ¶](#ashalf_half1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2368)

```
ashalf_half1x4 :: proc "c" (v: matrix[1, 4]f16) -> matrix[1, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half2 ¶](#ashalf_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2378)

```
ashalf_half2 :: proc "c" (v: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half2x1 ¶](#ashalf_half2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2369)

```
ashalf_half2x1 :: proc "c" (v: matrix[2, 1]f16) -> matrix[2, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half2x2 ¶](#ashalf_half2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2363)

```
ashalf_half2x2 :: proc "c" (v: matrix[2, 2]f16) -> matrix[2, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half2x3 ¶](#ashalf_half2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2370)

```
ashalf_half2x3 :: proc "c" (v: matrix[2, 3]f16) -> matrix[2, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half2x4 ¶](#ashalf_half2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2371)

```
ashalf_half2x4 :: proc "c" (v: matrix[2, 4]f16) -> matrix[2, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half3 ¶](#ashalf_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2379)

```
ashalf_half3 :: proc "c" (v: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half3x1 ¶](#ashalf_half3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2372)

```
ashalf_half3x1 :: proc "c" (v: matrix[3, 1]f16) -> matrix[3, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half3x2 ¶](#ashalf_half3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2373)

```
ashalf_half3x2 :: proc "c" (v: matrix[3, 2]f16) -> matrix[3, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half3x3 ¶](#ashalf_half3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2364)

```
ashalf_half3x3 :: proc "c" (v: matrix[3, 3]f16) -> matrix[3, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half3x4 ¶](#ashalf_half3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2374)

```
ashalf_half3x4 :: proc "c" (v: matrix[3, 4]f16) -> matrix[3, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half4 ¶](#ashalf_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2380)

```
ashalf_half4 :: proc "c" (v: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half4x1 ¶](#ashalf_half4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2375)

```
ashalf_half4x1 :: proc "c" (v: matrix[4, 1]f16) -> matrix[4, 1]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half4x2 ¶](#ashalf_half4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2376)

```
ashalf_half4x2 :: proc "c" (v: matrix[4, 2]f16) -> matrix[4, 2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half4x3 ¶](#ashalf_half4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2377)

```
ashalf_half4x3 :: proc "c" (v: matrix[4, 3]f16) -> matrix[4, 3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_half4x4 ¶](#ashalf_half4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2365)

```
ashalf_half4x4 :: proc "c" (v: matrix[4, 4]f16) -> matrix[4, 4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_int ¶](#ashalf_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2360)

```
ashalf_int :: proc "c" (v: i32) -> f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_int2 ¶](#ashalf_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2400)

```
ashalf_int2 :: proc "c" (v: [2]i32) -> [2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_int3 ¶](#ashalf_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2401)

```
ashalf_int3 :: proc "c" (v: [3]i32) -> [3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_int4 ¶](#ashalf_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2402)

```
ashalf_int4 :: proc "c" (v: [4]i32) -> [4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_uint ¶](#ashalf_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2361)

```
ashalf_uint :: proc "c" (v: u32) -> f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_uint2 ¶](#ashalf_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2403)

```
ashalf_uint2 :: proc "c" (v: [2]u32) -> [2]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_uint3 ¶](#ashalf_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2404)

```
ashalf_uint3 :: proc "c" (v: [3]u32) -> [3]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [ashalf\_uint4 ¶](#ashalf_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2405)

```
ashalf_uint4 :: proc "c" (v: [4]u32) -> [4]f16 {…}
```

##### Related Procedure Groups

* [ashalf](/core/math/linalg/hlsl/#ashalf)

### [asin\_double ¶](#asin_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L82)

```
asin_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_double2 ¶](#asin_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L249)

```
asin_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_double3 ¶](#asin_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L250)

```
asin_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_double4 ¶](#asin_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L251)

```
asin_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_float ¶](#asin_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L45)

```
asin_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_float2 ¶](#asin_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L246)

```
asin_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_float3 ¶](#asin_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L247)

```
asin_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_float4 ¶](#asin_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L248)

```
asin_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_half ¶](#asin_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L9)

```
asin_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_half2 ¶](#asin_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L243)

```
asin_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_half3 ¶](#asin_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L244)

```
asin_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asin\_half4 ¶](#asin_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L245)

```
asin_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/hlsl/#asin)

### [asinh\_double ¶](#asinh_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L89)

```
asinh_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_double2 ¶](#asinh_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L428)

```
asinh_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_double3 ¶](#asinh_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L429)

```
asinh_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_double4 ¶](#asinh_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L430)

```
asinh_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_float ¶](#asinh_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L52)

```
asinh_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_float2 ¶](#asinh_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L425)

```
asinh_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_float3 ¶](#asinh_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L426)

```
asinh_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_float4 ¶](#asinh_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L427)

```
asinh_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_half ¶](#asinh_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L16)

```
asinh_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_half2 ¶](#asinh_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L422)

```
asinh_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_half3 ¶](#asinh_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L423)

```
asinh_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asinh\_half4 ¶](#asinh_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L424)

```
asinh_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/hlsl/#asinh)

### [asint\_bool2 ¶](#asint_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2841)

```
asint_bool2 :: proc "c" (v: [2]bool) -> [2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_bool3 ¶](#asint_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2842)

```
asint_bool3 :: proc "c" (v: [3]bool) -> [3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_bool4 ¶](#asint_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2843)

```
asint_bool4 :: proc "c" (v: [4]bool) -> [4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double ¶](#asint_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2794)

```
asint_double :: proc "c" (v: f64) -> i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double1x1 ¶](#asint_double1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2844)

```
asint_double1x1 :: proc "c" (v: matrix[1, 1]f64) -> matrix[1, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double1x2 ¶](#asint_double1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2848)

```
asint_double1x2 :: proc "c" (v: matrix[1, 2]f64) -> matrix[1, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double1x3 ¶](#asint_double1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2849)

```
asint_double1x3 :: proc "c" (v: matrix[1, 3]f64) -> matrix[1, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double1x4 ¶](#asint_double1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2850)

```
asint_double1x4 :: proc "c" (v: matrix[1, 4]f64) -> matrix[1, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double2 ¶](#asint_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2860)

```
asint_double2 :: proc "c" (v: [2]f64) -> [2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double2x1 ¶](#asint_double2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2851)

```
asint_double2x1 :: proc "c" (v: matrix[2, 1]f64) -> matrix[2, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double2x2 ¶](#asint_double2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2845)

```
asint_double2x2 :: proc "c" (v: matrix[2, 2]f64) -> matrix[2, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double2x3 ¶](#asint_double2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2852)

```
asint_double2x3 :: proc "c" (v: matrix[2, 3]f64) -> matrix[2, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double2x4 ¶](#asint_double2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2853)

```
asint_double2x4 :: proc "c" (v: matrix[2, 4]f64) -> matrix[2, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double3 ¶](#asint_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2861)

```
asint_double3 :: proc "c" (v: [3]f64) -> [3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double3x1 ¶](#asint_double3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2854)

```
asint_double3x1 :: proc "c" (v: matrix[3, 1]f64) -> matrix[3, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double3x2 ¶](#asint_double3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2855)

```
asint_double3x2 :: proc "c" (v: matrix[3, 2]f64) -> matrix[3, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double3x3 ¶](#asint_double3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2846)

```
asint_double3x3 :: proc "c" (v: matrix[3, 3]f64) -> matrix[3, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double3x4 ¶](#asint_double3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2856)

```
asint_double3x4 :: proc "c" (v: matrix[3, 4]f64) -> matrix[3, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double4 ¶](#asint_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2862)

```
asint_double4 :: proc "c" (v: [4]f64) -> [4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double4x1 ¶](#asint_double4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2857)

```
asint_double4x1 :: proc "c" (v: matrix[4, 1]f64) -> matrix[4, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double4x2 ¶](#asint_double4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2858)

```
asint_double4x2 :: proc "c" (v: matrix[4, 2]f64) -> matrix[4, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double4x3 ¶](#asint_double4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2859)

```
asint_double4x3 :: proc "c" (v: matrix[4, 3]f64) -> matrix[4, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_double4x4 ¶](#asint_double4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2847)

```
asint_double4x4 :: proc "c" (v: matrix[4, 4]f64) -> matrix[4, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float ¶](#asint_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2793)

```
asint_float :: proc "c" (v: f32) -> i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float1x1 ¶](#asint_float1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2816)

```
asint_float1x1 :: proc "c" (v: matrix[1, 1]f32) -> matrix[1, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float1x2 ¶](#asint_float1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2820)

```
asint_float1x2 :: proc "c" (v: matrix[1, 2]f32) -> matrix[1, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float1x3 ¶](#asint_float1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2821)

```
asint_float1x3 :: proc "c" (v: matrix[1, 3]f32) -> matrix[1, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float1x4 ¶](#asint_float1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2822)

```
asint_float1x4 :: proc "c" (v: matrix[1, 4]f32) -> matrix[1, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float2 ¶](#asint_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2832)

```
asint_float2 :: proc "c" (v: [2]f32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float2x1 ¶](#asint_float2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2823)

```
asint_float2x1 :: proc "c" (v: matrix[2, 1]f32) -> matrix[2, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float2x2 ¶](#asint_float2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2817)

```
asint_float2x2 :: proc "c" (v: matrix[2, 2]f32) -> matrix[2, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float2x3 ¶](#asint_float2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2824)

```
asint_float2x3 :: proc "c" (v: matrix[2, 3]f32) -> matrix[2, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float2x4 ¶](#asint_float2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2825)

```
asint_float2x4 :: proc "c" (v: matrix[2, 4]f32) -> matrix[2, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float3 ¶](#asint_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2833)

```
asint_float3 :: proc "c" (v: [3]f32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float3x1 ¶](#asint_float3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2826)

```
asint_float3x1 :: proc "c" (v: matrix[3, 1]f32) -> matrix[3, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float3x2 ¶](#asint_float3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2827)

```
asint_float3x2 :: proc "c" (v: matrix[3, 2]f32) -> matrix[3, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float3x3 ¶](#asint_float3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2818)

```
asint_float3x3 :: proc "c" (v: matrix[3, 3]f32) -> matrix[3, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float3x4 ¶](#asint_float3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2828)

```
asint_float3x4 :: proc "c" (v: matrix[3, 4]f32) -> matrix[3, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float4 ¶](#asint_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2834)

```
asint_float4 :: proc "c" (v: [4]f32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float4x1 ¶](#asint_float4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2829)

```
asint_float4x1 :: proc "c" (v: matrix[4, 1]f32) -> matrix[4, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float4x2 ¶](#asint_float4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2830)

```
asint_float4x2 :: proc "c" (v: matrix[4, 2]f32) -> matrix[4, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float4x3 ¶](#asint_float4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2831)

```
asint_float4x3 :: proc "c" (v: matrix[4, 3]f32) -> matrix[4, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_float4x4 ¶](#asint_float4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2819)

```
asint_float4x4 :: proc "c" (v: matrix[4, 4]f32) -> matrix[4, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half ¶](#asint_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2792)

```
asint_half :: proc "c" (v: f16) -> i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half1x1 ¶](#asint_half1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2797)

```
asint_half1x1 :: proc "c" (v: matrix[1, 1]f16) -> matrix[1, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half1x2 ¶](#asint_half1x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2801)

```
asint_half1x2 :: proc "c" (v: matrix[1, 2]f16) -> matrix[1, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half1x3 ¶](#asint_half1x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2802)

```
asint_half1x3 :: proc "c" (v: matrix[1, 3]f16) -> matrix[1, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half1x4 ¶](#asint_half1x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2803)

```
asint_half1x4 :: proc "c" (v: matrix[1, 4]f16) -> matrix[1, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half2 ¶](#asint_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2813)

```
asint_half2 :: proc "c" (v: [2]f16) -> [2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half2x1 ¶](#asint_half2x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2804)

```
asint_half2x1 :: proc "c" (v: matrix[2, 1]f16) -> matrix[2, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half2x2 ¶](#asint_half2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2798)

```
asint_half2x2 :: proc "c" (v: matrix[2, 2]f16) -> matrix[2, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half2x3 ¶](#asint_half2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2805)

```
asint_half2x3 :: proc "c" (v: matrix[2, 3]f16) -> matrix[2, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half2x4 ¶](#asint_half2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2806)

```
asint_half2x4 :: proc "c" (v: matrix[2, 4]f16) -> matrix[2, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half3 ¶](#asint_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2814)

```
asint_half3 :: proc "c" (v: [3]f16) -> [3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half3x1 ¶](#asint_half3x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2807)

```
asint_half3x1 :: proc "c" (v: matrix[3, 1]f16) -> matrix[3, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half3x2 ¶](#asint_half3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2808)

```
asint_half3x2 :: proc "c" (v: matrix[3, 2]f16) -> matrix[3, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half3x3 ¶](#asint_half3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2799)

```
asint_half3x3 :: proc "c" (v: matrix[3, 3]f16) -> matrix[3, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half3x4 ¶](#asint_half3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2809)

```
asint_half3x4 :: proc "c" (v: matrix[3, 4]f16) -> matrix[3, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half4 ¶](#asint_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2815)

```
asint_half4 :: proc "c" (v: [4]f16) -> [4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half4x1 ¶](#asint_half4x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2810)

```
asint_half4x1 :: proc "c" (v: matrix[4, 1]f16) -> matrix[4, 1]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half4x2 ¶](#asint_half4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2811)

```
asint_half4x2 :: proc "c" (v: matrix[4, 2]f16) -> matrix[4, 2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half4x3 ¶](#asint_half4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2812)

```
asint_half4x3 :: proc "c" (v: matrix[4, 3]f16) -> matrix[4, 3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_half4x4 ¶](#asint_half4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2800)

```
asint_half4x4 :: proc "c" (v: matrix[4, 4]f16) -> matrix[4, 4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_int ¶](#asint_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2795)

```
asint_int :: proc "c" (v: i32) -> i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_int2 ¶](#asint_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2835)

```
asint_int2 :: proc "c" (v: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_int3 ¶](#asint_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2836)

```
asint_int3 :: proc "c" (v: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_int4 ¶](#asint_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2837)

```
asint_int4 :: proc "c" (v: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_uint ¶](#asint_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2796)

```
asint_uint :: proc "c" (v: u32) -> i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_uint2 ¶](#asint_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2838)

```
asint_uint2 :: proc "c" (v: [2]u32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_uint3 ¶](#asint_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2839)

```
asint_uint3 :: proc "c" (v: [3]u32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asint\_uint4 ¶](#asint_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2840)

```
asint_uint4 :: proc "c" (v: [4]u32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [asint](/core/math/linalg/hlsl/#asint)

### [asuint\_bool2 ¶](#asuint_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2907)

```
asuint_bool2 :: proc "c" (v: [2]bool) -> [2]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_bool3 ¶](#asuint_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2908)

```
asuint_bool3 :: proc "c" (v: [3]bool) -> [3]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_bool4 ¶](#asuint_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2909)

```
asuint_bool4 :: proc "c" (v: [4]bool) -> [4]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_double ¶](#asuint_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2892)

```
asuint_double :: proc "c" (v: f64) -> u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_double2 ¶](#asuint_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2910)

```
asuint_double2 :: proc "c" (v: [2]f64) -> [2]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_double3 ¶](#asuint_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2911)

```
asuint_double3 :: proc "c" (v: [3]f64) -> [3]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_double4 ¶](#asuint_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2912)

```
asuint_double4 :: proc "c" (v: [4]f64) -> [4]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_float ¶](#asuint_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2891)

```
asuint_float :: proc "c" (v: f32) -> u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_float2 ¶](#asuint_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2898)

```
asuint_float2 :: proc "c" (v: [2]f32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_float3 ¶](#asuint_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2899)

```
asuint_float3 :: proc "c" (v: [3]f32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_float4 ¶](#asuint_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2900)

```
asuint_float4 :: proc "c" (v: [4]f32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_half ¶](#asuint_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2890)

```
asuint_half :: proc "c" (v: f16) -> u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_half2 ¶](#asuint_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2895)

```
asuint_half2 :: proc "c" (v: [2]f16) -> [2]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_half3 ¶](#asuint_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2896)

```
asuint_half3 :: proc "c" (v: [3]f16) -> [3]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_half4 ¶](#asuint_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2897)

```
asuint_half4 :: proc "c" (v: [4]f16) -> [4]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_int ¶](#asuint_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2893)

```
asuint_int :: proc "c" (v: i32) -> u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_int2 ¶](#asuint_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2901)

```
asuint_int2 :: proc "c" (v: [2]i32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_int3 ¶](#asuint_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2902)

```
asuint_int3 :: proc "c" (v: [3]i32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_int4 ¶](#asuint_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2903)

```
asuint_int4 :: proc "c" (v: [4]i32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_uint ¶](#asuint_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2894)

```
asuint_uint :: proc "c" (v: u32) -> u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_uint2 ¶](#asuint_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2904)

```
asuint_uint2 :: proc "c" (v: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_uint3 ¶](#asuint_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2905)

```
asuint_uint3 :: proc "c" (v: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [asuint\_uint4 ¶](#asuint_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2906)

```
asuint_uint4 :: proc "c" (v: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [asuint](/core/math/linalg/hlsl/#asuint)

### [atan2\_double ¶](#atan2_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L84)

```
atan2_double :: proc "c" (y, x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_double2 ¶](#atan2_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L305)

```
atan2_double2 :: proc "c" (y, x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_double3 ¶](#atan2_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L306)

```
atan2_double3 :: proc "c" (y, x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_double4 ¶](#atan2_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L307)

```
atan2_double4 :: proc "c" (y, x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_float ¶](#atan2_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L47)

```
atan2_float :: proc "c" (y, x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_float2 ¶](#atan2_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L302)

```
atan2_float2 :: proc "c" (y, x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_float3 ¶](#atan2_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L303)

```
atan2_float3 :: proc "c" (y, x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_float4 ¶](#atan2_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L304)

```
atan2_float4 :: proc "c" (y, x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)
* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_half ¶](#atan2_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L11)

```
atan2_half :: proc "c" (y, x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_half2 ¶](#atan2_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L299)

```
atan2_half2 :: proc "c" (y, x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_half3 ¶](#atan2_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L300)

```
atan2_half3 :: proc "c" (y, x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan2\_half4 ¶](#atan2_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L301)

```
atan2_half4 :: proc "c" (y, x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [atan2](/core/math/linalg/hlsl/#atan2)

### [atan\_double ¶](#atan_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L83)

```
atan_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_double2 ¶](#atan_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L281)

```
atan_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_double3 ¶](#atan_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L282)

```
atan_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_double4 ¶](#atan_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L283)

```
atan_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_float ¶](#atan_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L46)

```
atan_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_float2 ¶](#atan_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L278)

```
atan_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_float3 ¶](#atan_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L279)

```
atan_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_float4 ¶](#atan_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L280)

```
atan_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_half ¶](#atan_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L10)

```
atan_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_half2 ¶](#atan_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L275)

```
atan_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_half3 ¶](#atan_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L276)

```
atan_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atan\_half4 ¶](#atan_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L277)

```
atan_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/hlsl/#atan)

### [atanh\_double ¶](#atanh_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L90)

```
atanh_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_double2 ¶](#atanh_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L452)

```
atanh_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_double3 ¶](#atanh_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L453)

```
atanh_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_double4 ¶](#atanh_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L454)

```
atanh_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_float ¶](#atanh_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L53)

```
atanh_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_float2 ¶](#atanh_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L449)

```
atanh_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_float3 ¶](#atanh_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L450)

```
atanh_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_float4 ¶](#atanh_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L451)

```
atanh_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_half ¶](#atanh_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L17)

```
atanh_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_half2 ¶](#atanh_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L446)

```
atanh_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_half3 ¶](#atanh_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L447)

```
atanh_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [atanh\_half4 ¶](#atanh_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L448)

```
atanh_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/hlsl/#atanh)

### [ceil\_double ¶](#ceil_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L103)

```
ceil_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_double2 ¶](#ceil_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L793)

```
ceil_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_double3 ¶](#ceil_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L794)

```
ceil_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_double4 ¶](#ceil_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L795)

```
ceil_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_float ¶](#ceil_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L66)

```
ceil_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_float2 ¶](#ceil_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L790)

```
ceil_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_float3 ¶](#ceil_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L791)

```
ceil_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_float4 ¶](#ceil_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L792)

```
ceil_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_half ¶](#ceil_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L30)

```
ceil_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_half2 ¶](#ceil_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L787)

```
ceil_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_half3 ¶](#ceil_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L788)

```
ceil_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [ceil\_half4 ¶](#ceil_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L789)

```
ceil_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/hlsl/#ceil)

### [clamp\_double ¶](#clamp_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1105)

```
clamp_double :: proc "c" (x, y, z: f64) -> f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_double2 ¶](#clamp_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1112)

```
clamp_double2 :: proc "c" (x, y, z: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_double3 ¶](#clamp_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1113)

```
clamp_double3 :: proc "c" (x, y, z: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_double4 ¶](#clamp_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1114)

```
clamp_double4 :: proc "c" (x, y, z: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_float ¶](#clamp_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1104)

```
clamp_float :: proc "c" (x, y, z: f32) -> f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_float2 ¶](#clamp_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1109)

```
clamp_float2 :: proc "c" (x, y, z: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_float3 ¶](#clamp_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1110)

```
clamp_float3 :: proc "c" (x, y, z: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_float4 ¶](#clamp_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1111)

```
clamp_float4 :: proc "c" (x, y, z: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_half ¶](#clamp_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1103)

```
clamp_half :: proc "c" (x, y, z: f16) -> f16 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_half2 ¶](#clamp_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1106)

```
clamp_half2 :: proc "c" (x, y, z: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_half3 ¶](#clamp_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1107)

```
clamp_half3 :: proc "c" (x, y, z: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_half4 ¶](#clamp_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1108)

```
clamp_half4 :: proc "c" (x, y, z: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_int ¶](#clamp_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1101)

```
clamp_int :: proc "c" (x, y, z: i32) -> i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_int2 ¶](#clamp_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1115)

```
clamp_int2 :: proc "c" (x, y, z: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_int3 ¶](#clamp_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1116)

```
clamp_int3 :: proc "c" (x, y, z: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_int4 ¶](#clamp_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1117)

```
clamp_int4 :: proc "c" (x, y, z: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_uint ¶](#clamp_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1102)

```
clamp_uint :: proc "c" (x, y, z: u32) -> u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_uint2 ¶](#clamp_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1118)

```
clamp_uint2 :: proc "c" (x, y, z: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_uint3 ¶](#clamp_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1119)

```
clamp_uint3 :: proc "c" (x, y, z: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [clamp\_uint4 ¶](#clamp_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1120)

```
clamp_uint4 :: proc "c" (x, y, z: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/hlsl/#clamp)

### [cofactor\_matrix1x1 ¶](#cofactor_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2104)

```
cofactor_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/hlsl/#cofactor)

### [cofactor\_matrix2x2 ¶](#cofactor_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2110)

```
cofactor_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/hlsl/#cofactor)

### [cofactor\_matrix3x3 ¶](#cofactor_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2119)

```
cofactor_matrix3x3 :: proc "contextless" (m: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/hlsl/#cofactor)

### [cofactor\_matrix4x4 ¶](#cofactor_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2134)

```
cofactor_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/hlsl/#cofactor)

### [cos\_double ¶](#cos_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L78)

```
cos_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_double2 ¶](#cos_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L153)

```
cos_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_double3 ¶](#cos_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L154)

```
cos_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_double4 ¶](#cos_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L155)

```
cos_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_float ¶](#cos_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L41)

```
cos_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_float2 ¶](#cos_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L150)

```
cos_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_float3 ¶](#cos_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L151)

```
cos_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_float4 ¶](#cos_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L152)

```
cos_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_half ¶](#cos_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L5)

```
cos_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_half2 ¶](#cos_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L147)

```
cos_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_half3 ¶](#cos_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L148)

```
cos_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cos\_half4 ¶](#cos_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L149)

```
cos_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/hlsl/#cos)

### [cosh\_double ¶](#cosh_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L85)

```
cosh_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_double2 ¶](#cosh_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L331)

```
cosh_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_double3 ¶](#cosh_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L332)

```
cosh_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_double4 ¶](#cosh_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L333)

```
cosh_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_float ¶](#cosh_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L48)

```
cosh_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_float2 ¶](#cosh_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L328)

```
cosh_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_float3 ¶](#cosh_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L329)

```
cosh_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_float4 ¶](#cosh_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L330)

```
cosh_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_half ¶](#cosh_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L12)

```
cosh_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_half2 ¶](#cosh_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L325)

```
cosh_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_half3 ¶](#cosh_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L326)

```
cosh_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cosh\_half4 ¶](#cosh_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L327)

```
cosh_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/hlsl/#cosh)

### [cross\_double3 ¶](#cross_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1419)

```
cross_double3 :: proc "c" (a, b: [3]f64) -> (c: [3]f64) {…}
```

##### Related Procedure Groups

* [cross](/core/math/linalg/hlsl/#cross)

### [cross\_float3 ¶](#cross_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1413)

```
cross_float3 :: proc "c" (a, b: [3]f32) -> (c: [3]f32) {…}
```

##### Related Procedure Groups

* [cross](/core/math/linalg/hlsl/#cross)

### [cross\_half3 ¶](#cross_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1407)

```
cross_half3 :: proc "c" (a, b: [3]f16) -> (c: [3]f16) {…}
```

##### Related Procedure Groups

* [cross](/core/math/linalg/hlsl/#cross)

### [cross\_int3 ¶](#cross_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1425)

```
cross_int3 :: proc "c" (a, b: [3]i32) -> (c: [3]i32) {…}
```

##### Related Procedure Groups

* [cross](/core/math/linalg/hlsl/#cross)

### [degrees\_double ¶](#degrees_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L979)

```
degrees_double :: proc "c" (radians: f64) -> f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_double2 ¶](#degrees_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L986)

```
degrees_double2 :: proc "c" (radians: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_double3 ¶](#degrees_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L987)

```
degrees_double3 :: proc "c" (radians: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_double4 ¶](#degrees_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L988)

```
degrees_double4 :: proc "c" (radians: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_float ¶](#degrees_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L978)

```
degrees_float :: proc "c" (radians: f32) -> f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_float2 ¶](#degrees_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L983)

```
degrees_float2 :: proc "c" (radians: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_float3 ¶](#degrees_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L984)

```
degrees_float3 :: proc "c" (radians: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_float4 ¶](#degrees_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L985)

```
degrees_float4 :: proc "c" (radians: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_half ¶](#degrees_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L977)

```
degrees_half :: proc "c" (radians: f16) -> f16 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_half2 ¶](#degrees_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L980)

```
degrees_half2 :: proc "c" (radians: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_half3 ¶](#degrees_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L981)

```
degrees_half3 :: proc "c" (radians: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [degrees\_half4 ¶](#degrees_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L982)

```
degrees_half4 :: proc "c" (radians: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/hlsl/#degrees)

### [determinant\_matrix1x1 ¶](#determinant_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2035)

```
determinant_matrix1x1 :: proc "contextless" (m: $M/matrix[1, 1]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/hlsl/#determinant)

### [determinant\_matrix2x2 ¶](#determinant_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2040)

```
determinant_matrix2x2 :: proc "contextless" (m: $M/matrix[2, 2]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/hlsl/#determinant)

### [determinant\_matrix3x3 ¶](#determinant_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2044)

```
determinant_matrix3x3 :: proc "contextless" (m: $M/matrix[3, 3]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/hlsl/#determinant)

### [determinant\_matrix4x4 ¶](#determinant_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2051)

```
determinant_matrix4x4 :: proc "contextless" (m: $M/matrix[4, 4]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/hlsl/#determinant)

### [distance\_double ¶](#distance_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1388)

```
distance_double :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_double2 ¶](#distance_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1395)

```
distance_double2 :: proc "c" (x, y: [2]f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_double3 ¶](#distance_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1396)

```
distance_double3 :: proc "c" (x, y: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_double4 ¶](#distance_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1397)

```
distance_double4 :: proc "c" (x, y: [4]f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_float ¶](#distance_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1387)

```
distance_float :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_float2 ¶](#distance_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1392)

```
distance_float2 :: proc "c" (x, y: [2]f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_float3 ¶](#distance_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1393)

```
distance_float3 :: proc "c" (x, y: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_float4 ¶](#distance_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1394)

```
distance_float4 :: proc "c" (x, y: [4]f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_half ¶](#distance_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1386)

```
distance_half :: proc "c" (x, y: f16) -> f16 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_half2 ¶](#distance_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1389)

```
distance_half2 :: proc "c" (x, y: [2]f16) -> f16 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_half3 ¶](#distance_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1390)

```
distance_half3 :: proc "c" (x, y: [3]f16) -> f16 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [distance\_half4 ¶](#distance_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1391)

```
distance_half4 :: proc "c" (x, y: [4]f16) -> f16 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/hlsl/#distance)

### [dot\_double ¶](#dot_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1327)

```
dot_double :: proc "c" (a, b: f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_double2 ¶](#dot_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1334)

```
dot_double2 :: proc "c" (a, b: [2]f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_double3 ¶](#dot_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1335)

```
dot_double3 :: proc "c" (a, b: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_double4 ¶](#dot_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1336)

```
dot_double4 :: proc "c" (a, b: [4]f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_float ¶](#dot_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1326)

```
dot_float :: proc "c" (a, b: f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_float2 ¶](#dot_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1331)

```
dot_float2 :: proc "c" (a, b: [2]f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_float3 ¶](#dot_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1332)

```
dot_float3 :: proc "c" (a, b: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_float4 ¶](#dot_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1333)

```
dot_float4 :: proc "c" (a, b: [4]f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_half ¶](#dot_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1325)

```
dot_half :: proc "c" (a, b: f16) -> f16 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_half2 ¶](#dot_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1328)

```
dot_half2 :: proc "c" (a, b: [2]f16) -> f16 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_half3 ¶](#dot_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1329)

```
dot_half3 :: proc "c" (a, b: [3]f16) -> f16 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_half4 ¶](#dot_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1330)

```
dot_half4 :: proc "c" (a, b: [4]f16) -> f16 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_int ¶](#dot_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1323)

```
dot_int :: proc "c" (a, b: i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_int2 ¶](#dot_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1337)

```
dot_int2 :: proc "c" (a, b: [2]i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_int3 ¶](#dot_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1338)

```
dot_int3 :: proc "c" (a, b: [3]i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_int4 ¶](#dot_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1339)

```
dot_int4 :: proc "c" (a, b: [4]i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_uint ¶](#dot_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1324)

```
dot_uint :: proc "c" (a, b: u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_uint2 ¶](#dot_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1340)

```
dot_uint2 :: proc "c" (a, b: [2]u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_uint3 ¶](#dot_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1341)

```
dot_uint3 :: proc "c" (a, b: [3]u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [dot\_uint4 ¶](#dot_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1342)

```
dot_uint4 :: proc "c" (a, b: [4]u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/hlsl/#dot)

### [equal\_double ¶](#equal_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1842)

```
equal_double :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_double2 ¶](#equal_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1847)

```
equal_double2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_double3 ¶](#equal_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1852)

```
equal_double3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_double4 ¶](#equal_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1857)

```
equal_double4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_float ¶](#equal_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1841)

```
equal_float :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_float2 ¶](#equal_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1846)

```
equal_float2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_float3 ¶](#equal_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1851)

```
equal_float3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_float4 ¶](#equal_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1856)

```
equal_float4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_half ¶](#equal_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1840)

```
equal_half :: proc "c" (a, b: f16) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_half2 ¶](#equal_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1845)

```
equal_half2 :: proc "c" (a, b: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_half3 ¶](#equal_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1850)

```
equal_half3 :: proc "c" (a, b: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_half4 ¶](#equal_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1855)

```
equal_half4 :: proc "c" (a, b: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_int ¶](#equal_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1843)

```
equal_int :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_int2 ¶](#equal_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1848)

```
equal_int2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_int3 ¶](#equal_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1853)

```
equal_int3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_int4 ¶](#equal_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1858)

```
equal_int4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_uint ¶](#equal_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1844)

```
equal_uint :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_uint2 ¶](#equal_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1849)

```
equal_uint2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_uint3 ¶](#equal_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1854)

```
equal_uint3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [equal\_uint4 ¶](#equal_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1859)

```
equal_uint4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/hlsl/#equal)

### [exp2\_double ¶](#exp2_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L99)

```
exp2_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_double2 ¶](#exp2_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L679)

```
exp2_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_double3 ¶](#exp2_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L680)

```
exp2_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_double4 ¶](#exp2_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L681)

```
exp2_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_float ¶](#exp2_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L62)

```
exp2_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_float2 ¶](#exp2_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L676)

```
exp2_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_float3 ¶](#exp2_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L677)

```
exp2_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_float4 ¶](#exp2_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L678)

```
exp2_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_half ¶](#exp2_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L26)

```
exp2_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_half2 ¶](#exp2_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L673)

```
exp2_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_half3 ¶](#exp2_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L674)

```
exp2_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp2\_half4 ¶](#exp2_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L675)

```
exp2_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/hlsl/#exp2)

### [exp\_double ¶](#exp_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L95)

```
exp_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_double2 ¶](#exp_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L575)

```
exp_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_double3 ¶](#exp_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L576)

```
exp_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_double4 ¶](#exp_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L577)

```
exp_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_float ¶](#exp_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L58)

```
exp_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_float2 ¶](#exp_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L572)

```
exp_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_float3 ¶](#exp_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L573)

```
exp_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_float4 ¶](#exp_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L574)

```
exp_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_half ¶](#exp_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L22)

```
exp_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_half2 ¶](#exp_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L569)

```
exp_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_half3 ¶](#exp_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L570)

```
exp_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [exp\_half4 ¶](#exp_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L571)

```
exp_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/hlsl/#exp)

### [faceforward\_double ¶](#faceforward_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1476)

```
faceforward_double :: proc "c" (N, I, Nref: f64) -> f64 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_double2 ¶](#faceforward_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1483)

```
faceforward_double2 :: proc "c" (N, I, Nref: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_double3 ¶](#faceforward_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1484)

```
faceforward_double3 :: proc "c" (N, I, Nref: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_double4 ¶](#faceforward_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1485)

```
faceforward_double4 :: proc "c" (N, I, Nref: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_float ¶](#faceforward_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1475)

```
faceforward_float :: proc "c" (N, I, Nref: f32) -> f32 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_float2 ¶](#faceforward_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1480)

```
faceforward_float2 :: proc "c" (N, I, Nref: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_float3 ¶](#faceforward_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1481)

```
faceforward_float3 :: proc "c" (N, I, Nref: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_float4 ¶](#faceforward_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1482)

```
faceforward_float4 :: proc "c" (N, I, Nref: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_half ¶](#faceforward_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1474)

```
faceforward_half :: proc "c" (N, I, Nref: f16) -> f16 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_half2 ¶](#faceforward_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1477)

```
faceforward_half2 :: proc "c" (N, I, Nref: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_half3 ¶](#faceforward_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1478)

```
faceforward_half3 :: proc "c" (N, I, Nref: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [faceforward\_half4 ¶](#faceforward_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1479)

```
faceforward_half4 :: proc "c" (N, I, Nref: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [faceforward](/core/math/linalg/hlsl/#faceforward)

### [floor\_double ¶](#floor_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L101)

```
floor_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_double2 ¶](#floor_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L744)

```
floor_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_double3 ¶](#floor_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L745)

```
floor_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_double4 ¶](#floor_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L746)

```
floor_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_float ¶](#floor_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L64)

```
floor_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_float2 ¶](#floor_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L741)

```
floor_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_float3 ¶](#floor_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L742)

```
floor_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_float4 ¶](#floor_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L743)

```
floor_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_half ¶](#floor_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L28)

```
floor_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_half2 ¶](#floor_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L738)

```
floor_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_half3 ¶](#floor_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L739)

```
floor_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [floor\_half4 ¶](#floor_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L740)

```
floor_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/hlsl/#floor)

### [fmod\_double ¶](#fmod_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L105)

```
fmod_double :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_double2 ¶](#fmod_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L904)

```
fmod_double2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_double3 ¶](#fmod_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L905)

```
fmod_double3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_double4 ¶](#fmod_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L906)

```
fmod_double4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_float ¶](#fmod_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L68)

```
fmod_float :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_float2 ¶](#fmod_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L901)

```
fmod_float2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_float3 ¶](#fmod_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L902)

```
fmod_float3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_float4 ¶](#fmod_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L903)

```
fmod_float4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_half ¶](#fmod_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L32)

```
fmod_half :: proc "c" (x, y: f16) -> f16 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_half2 ¶](#fmod_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L898)

```
fmod_half2 :: proc "c" (x, y: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_half3 ¶](#fmod_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L899)

```
fmod_half3 :: proc "c" (x, y: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [fmod\_half4 ¶](#fmod_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L900)

```
fmod_half4 :: proc "c" (x, y: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [fmod](/core/math/linalg/hlsl/#fmod)

### [frac\_double ¶](#frac_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L107)

```
frac_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_double2 ¶](#frac_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L929)

```
frac_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_double3 ¶](#frac_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L930)

```
frac_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_double4 ¶](#frac_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L931)

```
frac_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_float ¶](#frac_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L70)

```
frac_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_float2 ¶](#frac_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L926)

```
frac_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_float3 ¶](#frac_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L927)

```
frac_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_float4 ¶](#frac_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L928)

```
frac_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_half ¶](#frac_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L34)

```
frac_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_half2 ¶](#frac_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L923)

```
frac_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_half3 ¶](#frac_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L924)

```
frac_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [frac\_half4 ¶](#frac_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L925)

```
frac_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [frac](/core/math/linalg/hlsl/#frac)

### [greaterThanEqual\_double ¶](#greaterThanEqual_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1798)

```
greaterThanEqual_double :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_double2 ¶](#greaterThanEqual_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1803)

```
greaterThanEqual_double2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_double3 ¶](#greaterThanEqual_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1808)

```
greaterThanEqual_double3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_double4 ¶](#greaterThanEqual_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1813)

```
greaterThanEqual_double4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_float ¶](#greaterThanEqual_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1797)

```
greaterThanEqual_float :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_float2 ¶](#greaterThanEqual_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1802)

```
greaterThanEqual_float2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_float3 ¶](#greaterThanEqual_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1807)

```
greaterThanEqual_float3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_float4 ¶](#greaterThanEqual_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1812)

```
greaterThanEqual_float4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_half ¶](#greaterThanEqual_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1796)

```
greaterThanEqual_half :: proc "c" (a, b: f16) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_half2 ¶](#greaterThanEqual_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1801)

```
greaterThanEqual_half2 :: proc "c" (a, b: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_half3 ¶](#greaterThanEqual_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1806)

```
greaterThanEqual_half3 :: proc "c" (a, b: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_half4 ¶](#greaterThanEqual_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1811)

```
greaterThanEqual_half4 :: proc "c" (a, b: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_int ¶](#greaterThanEqual_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1799)

```
greaterThanEqual_int :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_int2 ¶](#greaterThanEqual_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1804)

```
greaterThanEqual_int2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_int3 ¶](#greaterThanEqual_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1809)

```
greaterThanEqual_int3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_int4 ¶](#greaterThanEqual_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1814)

```
greaterThanEqual_int4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_uint ¶](#greaterThanEqual_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1800)

```
greaterThanEqual_uint :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_uint2 ¶](#greaterThanEqual_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1805)

```
greaterThanEqual_uint2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_uint3 ¶](#greaterThanEqual_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1810)

```
greaterThanEqual_uint3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThanEqual\_uint4 ¶](#greaterThanEqual_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1815)

```
greaterThanEqual_uint4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/hlsl/#greaterThanEqual)

### [greaterThan\_double ¶](#greaterThan_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1754)

```
greaterThan_double :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_double2 ¶](#greaterThan_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1759)

```
greaterThan_double2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_double3 ¶](#greaterThan_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1764)

```
greaterThan_double3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_double4 ¶](#greaterThan_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1769)

```
greaterThan_double4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_float ¶](#greaterThan_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1753)

```
greaterThan_float :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_float2 ¶](#greaterThan_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1758)

```
greaterThan_float2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_float3 ¶](#greaterThan_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1763)

```
greaterThan_float3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_float4 ¶](#greaterThan_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1768)

```
greaterThan_float4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_half ¶](#greaterThan_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1752)

```
greaterThan_half :: proc "c" (a, b: f16) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_half2 ¶](#greaterThan_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1757)

```
greaterThan_half2 :: proc "c" (a, b: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_half3 ¶](#greaterThan_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1762)

```
greaterThan_half3 :: proc "c" (a, b: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_half4 ¶](#greaterThan_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1767)

```
greaterThan_half4 :: proc "c" (a, b: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_int ¶](#greaterThan_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1755)

```
greaterThan_int :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_int2 ¶](#greaterThan_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1760)

```
greaterThan_int2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_int3 ¶](#greaterThan_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1765)

```
greaterThan_int3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_int4 ¶](#greaterThan_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1770)

```
greaterThan_int4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_uint ¶](#greaterThan_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1756)

```
greaterThan_uint :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_uint2 ¶](#greaterThan_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1761)

```
greaterThan_uint2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_uint3 ¶](#greaterThan_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1766)

```
greaterThan_uint3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [greaterThan\_uint4 ¶](#greaterThan_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1771)

```
greaterThan_uint4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/hlsl/#greaterThan)

### [hermitian\_adjoint ¶](#hermitian_adjoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2006)

```
hermitian_adjoint :: proc "contextless" (m: $M/matrix[0, 0]$T) -> $$deferred_return {…}
```

### [inverse\_double1x1 ¶](#inverse_double1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1949)

```
inverse_double1x1 :: proc "c" (m: matrix[1, 1]f64) -> matrix[1, 1]f64 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_double2x2 ¶](#inverse_double2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1950)

```
inverse_double2x2 :: proc "c" (m: matrix[2, 2]f64) -> matrix[2, 2]f64 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_double3x3 ¶](#inverse_double3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1951)

```
inverse_double3x3 :: proc "c" (m: matrix[3, 3]f64) -> matrix[3, 3]f64 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_double4x4 ¶](#inverse_double4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1952)

```
inverse_double4x4 :: proc "c" (m: matrix[4, 4]f64) -> matrix[4, 4]f64 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_float1x1 ¶](#inverse_float1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1945)

```
inverse_float1x1 :: proc "c" (m: matrix[1, 1]f32) -> matrix[1, 1]f32 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_float2x2 ¶](#inverse_float2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1946)

```
inverse_float2x2 :: proc "c" (m: matrix[2, 2]f32) -> matrix[2, 2]f32 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_float3x3 ¶](#inverse_float3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1947)

```
inverse_float3x3 :: proc "c" (m: matrix[3, 3]f32) -> matrix[3, 3]f32 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_float4x4 ¶](#inverse_float4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1948)

```
inverse_float4x4 :: proc "c" (m: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_half1x1 ¶](#inverse_half1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1941)

```
inverse_half1x1 :: proc "c" (m: matrix[1, 1]f16) -> matrix[1, 1]f16 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_half2x2 ¶](#inverse_half2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1942)

```
inverse_half2x2 :: proc "c" (m: matrix[2, 2]f16) -> matrix[2, 2]f16 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_half3x3 ¶](#inverse_half3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1943)

```
inverse_half3x3 :: proc "c" (m: matrix[3, 3]f16) -> matrix[3, 3]f16 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_half4x4 ¶](#inverse_half4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1944)

```
inverse_half4x4 :: proc "c" (m: matrix[4, 4]f16) -> matrix[4, 4]f16 {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_matrix1x1 ¶](#inverse_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2214)

```
inverse_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_matrix2x2 ¶](#inverse_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2220)

```
inverse_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_matrix3x3 ¶](#inverse_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2238)

```
inverse_matrix3x3 :: proc "contextless" (x: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_matrix4x4 ¶](#inverse_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2259)

```
inverse_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/hlsl/#inverse)

### [inverse\_transpose\_matrix1x1 ¶](#inverse_transpose_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2145)

```
inverse_transpose_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/hlsl/#inverse_transpose)

### [inverse\_transpose\_matrix2x2 ¶](#inverse_transpose_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2151)

```
inverse_transpose_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/hlsl/#inverse_transpose)

### [inverse\_transpose\_matrix3x3 ¶](#inverse_transpose_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2169)

```
inverse_transpose_matrix3x3 :: proc "contextless" (x: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/hlsl/#inverse_transpose)

### [inverse\_transpose\_matrix4x4 ¶](#inverse_transpose_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2190)

```
inverse_transpose_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/hlsl/#inverse_transpose)

### [isfinite\_double ¶](#isfinite_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L806)

```
isfinite_double :: proc "c" (x: f64) -> bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_double2 ¶](#isfinite_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L807)

```
isfinite_double2 :: proc "c" (x: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_double3 ¶](#isfinite_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L808)

```
isfinite_double3 :: proc "c" (x: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_double4 ¶](#isfinite_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L809)

```
isfinite_double4 :: proc "c" (x: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_float ¶](#isfinite_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L802)

```
isfinite_float :: proc "c" (x: f32) -> bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_float2 ¶](#isfinite_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L803)

```
isfinite_float2 :: proc "c" (x: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_float3 ¶](#isfinite_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L804)

```
isfinite_float3 :: proc "c" (x: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_float4 ¶](#isfinite_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L805)

```
isfinite_float4 :: proc "c" (x: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_half ¶](#isfinite_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L798)

```
isfinite_half :: proc "c" (x: f16) -> bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_half2 ¶](#isfinite_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L799)

```
isfinite_half2 :: proc "c" (x: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_half3 ¶](#isfinite_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L800)

```
isfinite_half3 :: proc "c" (x: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isfinite\_half4 ¶](#isfinite_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L801)

```
isfinite_half4 :: proc "c" (x: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [isfinite](/core/math/linalg/hlsl/#isfinite)

### [isinf\_double ¶](#isinf_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L836)

```
isinf_double :: proc "c" (x: f64) -> bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_double2 ¶](#isinf_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L837)

```
isinf_double2 :: proc "c" (x: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_double3 ¶](#isinf_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L838)

```
isinf_double3 :: proc "c" (x: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_double4 ¶](#isinf_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L839)

```
isinf_double4 :: proc "c" (x: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_float ¶](#isinf_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L832)

```
isinf_float :: proc "c" (x: f32) -> bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_float2 ¶](#isinf_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L833)

```
isinf_float2 :: proc "c" (x: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_float3 ¶](#isinf_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L834)

```
isinf_float3 :: proc "c" (x: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_float4 ¶](#isinf_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L835)

```
isinf_float4 :: proc "c" (x: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_half ¶](#isinf_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L828)

```
isinf_half :: proc "c" (x: f16) -> bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_half2 ¶](#isinf_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L829)

```
isinf_half2 :: proc "c" (x: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_half3 ¶](#isinf_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L830)

```
isinf_half3 :: proc "c" (x: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isinf\_half4 ¶](#isinf_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L831)

```
isinf_half4 :: proc "c" (x: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [isinf](/core/math/linalg/hlsl/#isinf)

### [isnan\_double ¶](#isnan_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L104)

```
isnan_double :: proc "c" (x: f64) -> bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_double2 ¶](#isnan_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L864)

```
isnan_double2 :: proc "c" (x: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_double3 ¶](#isnan_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L865)

```
isnan_double3 :: proc "c" (x: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_double4 ¶](#isnan_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L866)

```
isnan_double4 :: proc "c" (x: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_float ¶](#isnan_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L67)

```
isnan_float :: proc "c" (x: f32) -> bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_float2 ¶](#isnan_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L861)

```
isnan_float2 :: proc "c" (x: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_float3 ¶](#isnan_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L862)

```
isnan_float3 :: proc "c" (x: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_float4 ¶](#isnan_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L863)

```
isnan_float4 :: proc "c" (x: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_half ¶](#isnan_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L31)

```
isnan_half :: proc "c" (x: f16) -> bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_half2 ¶](#isnan_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L858)

```
isnan_half2 :: proc "c" (x: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_half3 ¶](#isnan_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L859)

```
isnan_half3 :: proc "c" (x: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [isnan\_half4 ¶](#isnan_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L860)

```
isnan_half4 :: proc "c" (x: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [isnan](/core/math/linalg/hlsl/#isnan)

### [length\_double ¶](#length_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1360)

```
length_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_double2 ¶](#length_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1367)

```
length_double2 :: proc "c" (x: [2]f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_double3 ¶](#length_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1368)

```
length_double3 :: proc "c" (x: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_double4 ¶](#length_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1369)

```
length_double4 :: proc "c" (x: [4]f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_float ¶](#length_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1359)

```
length_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_float2 ¶](#length_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1364)

```
length_float2 :: proc "c" (x: [2]f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_float3 ¶](#length_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1365)

```
length_float3 :: proc "c" (x: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_float4 ¶](#length_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1366)

```
length_float4 :: proc "c" (x: [4]f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_half ¶](#length_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1358)

```
length_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_half2 ¶](#length_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1361)

```
length_half2 :: proc "c" (x: [2]f16) -> f16 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_half3 ¶](#length_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1362)

```
length_half3 :: proc "c" (x: [3]f16) -> f16 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [length\_half4 ¶](#length_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1363)

```
length_half4 :: proc "c" (x: [4]f16) -> f16 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/hlsl/#length)

### [lerp\_double ¶](#lerp_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1182)

```
lerp_double :: proc "c" (x, y, t: f64) -> f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_double2 ¶](#lerp_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1189)

```
lerp_double2 :: proc "c" (x, y, t: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_double3 ¶](#lerp_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1190)

```
lerp_double3 :: proc "c" (x, y, t: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_double4 ¶](#lerp_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1191)

```
lerp_double4 :: proc "c" (x, y, t: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_float ¶](#lerp_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1181)

```
lerp_float :: proc "c" (x, y, t: f32) -> f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_float2 ¶](#lerp_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1186)

```
lerp_float2 :: proc "c" (x, y, t: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_float3 ¶](#lerp_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1187)

```
lerp_float3 :: proc "c" (x, y, t: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_float4 ¶](#lerp_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1188)

```
lerp_float4 :: proc "c" (x, y, t: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_half ¶](#lerp_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1180)

```
lerp_half :: proc "c" (x, y, t: f16) -> f16 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_half2 ¶](#lerp_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1183)

```
lerp_half2 :: proc "c" (x, y, t: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_half3 ¶](#lerp_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1184)

```
lerp_half3 :: proc "c" (x, y, t: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lerp\_half4 ¶](#lerp_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1185)

```
lerp_half4 :: proc "c" (x, y, t: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/hlsl/#lerp)

### [lessThanEqual\_double ¶](#lessThanEqual_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1710)

```
lessThanEqual_double :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_double2 ¶](#lessThanEqual_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1715)

```
lessThanEqual_double2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_double3 ¶](#lessThanEqual_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1720)

```
lessThanEqual_double3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_double4 ¶](#lessThanEqual_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1725)

```
lessThanEqual_double4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_float ¶](#lessThanEqual_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1709)

```
lessThanEqual_float :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_float2 ¶](#lessThanEqual_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1714)

```
lessThanEqual_float2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_float3 ¶](#lessThanEqual_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1719)

```
lessThanEqual_float3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_float4 ¶](#lessThanEqual_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1724)

```
lessThanEqual_float4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_half ¶](#lessThanEqual_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1708)

```
lessThanEqual_half :: proc "c" (a, b: f16) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_half2 ¶](#lessThanEqual_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1713)

```
lessThanEqual_half2 :: proc "c" (a, b: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_half3 ¶](#lessThanEqual_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1718)

```
lessThanEqual_half3 :: proc "c" (a, b: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_half4 ¶](#lessThanEqual_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1723)

```
lessThanEqual_half4 :: proc "c" (a, b: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_int ¶](#lessThanEqual_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1711)

```
lessThanEqual_int :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_int2 ¶](#lessThanEqual_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1716)

```
lessThanEqual_int2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_int3 ¶](#lessThanEqual_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1721)

```
lessThanEqual_int3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_int4 ¶](#lessThanEqual_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1726)

```
lessThanEqual_int4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_uint ¶](#lessThanEqual_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1712)

```
lessThanEqual_uint :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_uint2 ¶](#lessThanEqual_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1717)

```
lessThanEqual_uint2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_uint3 ¶](#lessThanEqual_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1722)

```
lessThanEqual_uint3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThanEqual\_uint4 ¶](#lessThanEqual_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1727)

```
lessThanEqual_uint4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/hlsl/#lessThanEqual)

### [lessThan\_double ¶](#lessThan_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1666)

```
lessThan_double :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_double2 ¶](#lessThan_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1671)

```
lessThan_double2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_double3 ¶](#lessThan_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1676)

```
lessThan_double3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_double4 ¶](#lessThan_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1681)

```
lessThan_double4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_float ¶](#lessThan_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1665)

```
lessThan_float :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_float2 ¶](#lessThan_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1670)

```
lessThan_float2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_float3 ¶](#lessThan_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1675)

```
lessThan_float3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_float4 ¶](#lessThan_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1680)

```
lessThan_float4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_half ¶](#lessThan_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1664)

```
lessThan_half :: proc "c" (a, b: f16) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_half2 ¶](#lessThan_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1669)

```
lessThan_half2 :: proc "c" (a, b: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_half3 ¶](#lessThan_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1674)

```
lessThan_half3 :: proc "c" (a, b: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_half4 ¶](#lessThan_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1679)

```
lessThan_half4 :: proc "c" (a, b: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_int ¶](#lessThan_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1667)

```
lessThan_int :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_int2 ¶](#lessThan_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1672)

```
lessThan_int2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_int3 ¶](#lessThan_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1677)

```
lessThan_int3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_int4 ¶](#lessThan_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1682)

```
lessThan_int4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_uint ¶](#lessThan_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1668)

```
lessThan_uint :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_uint2 ¶](#lessThan_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1673)

```
lessThan_uint2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_uint3 ¶](#lessThan_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1678)

```
lessThan_uint3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [lessThan\_uint4 ¶](#lessThan_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1683)

```
lessThan_uint4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/hlsl/#lessThan)

### [log10\_double ¶](#log10_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L98)

```
log10_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_double2 ¶](#log10_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L652)

```
log10_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_double3 ¶](#log10_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L653)

```
log10_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_double4 ¶](#log10_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L654)

```
log10_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_float ¶](#log10_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L61)

```
log10_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_float2 ¶](#log10_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L649)

```
log10_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_float3 ¶](#log10_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L650)

```
log10_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_float4 ¶](#log10_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L651)

```
log10_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_half ¶](#log10_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L25)

```
log10_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_half2 ¶](#log10_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L646)

```
log10_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_half3 ¶](#log10_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L647)

```
log10_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log10\_half4 ¶](#log10_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L648)

```
log10_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [log10](/core/math/linalg/hlsl/#log10)

### [log2\_double ¶](#log2_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L97)

```
log2_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_double2 ¶](#log2_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L626)

```
log2_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_double3 ¶](#log2_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L627)

```
log2_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_double4 ¶](#log2_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L628)

```
log2_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_float ¶](#log2_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L60)

```
log2_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_float2 ¶](#log2_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L623)

```
log2_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_float3 ¶](#log2_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L624)

```
log2_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_float4 ¶](#log2_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L625)

```
log2_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_half ¶](#log2_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L24)

```
log2_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_half2 ¶](#log2_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L620)

```
log2_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_half3 ¶](#log2_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L621)

```
log2_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log2\_half4 ¶](#log2_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L622)

```
log2_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [log2](/core/math/linalg/hlsl/#log2)

### [log\_double ¶](#log_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L96)

```
log_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_double2 ¶](#log_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L601)

```
log_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_double3 ¶](#log_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L602)

```
log_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_double4 ¶](#log_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L603)

```
log_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_float ¶](#log_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L59)

```
log_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_float2 ¶](#log_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L598)

```
log_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_float3 ¶](#log_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L599)

```
log_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_float4 ¶](#log_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L600)

```
log_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_half ¶](#log_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L23)

```
log_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_half2 ¶](#log_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L595)

```
log_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_half3 ¶](#log_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L596)

```
log_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [log\_half4 ¶](#log_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L597)

```
log_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/hlsl/#log)

### [matrix\_minor ¶](#matrix_minor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2019)

```
matrix_minor :: proc "contextless" (m: $M/matrix[0, 0]$T, #any_int row, #any_int column: i32) -> (minor: $$deferred_return) {…}
```

### [max\_double ¶](#max_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1060)

```
max_double :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_double2 ¶](#max_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1067)

```
max_double2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_double3 ¶](#max_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1068)

```
max_double3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_double4 ¶](#max_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1069)

```
max_double4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_float ¶](#max_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1058)

```
max_float :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_float2 ¶](#max_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1064)

```
max_float2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_float3 ¶](#max_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1065)

```
max_float3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_float4 ¶](#max_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1066)

```
max_float4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_half ¶](#max_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1059)

```
max_half :: proc "c" (x, y: f16) -> f16 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_half2 ¶](#max_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1061)

```
max_half2 :: proc "c" (x, y: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_half3 ¶](#max_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1062)

```
max_half3 :: proc "c" (x, y: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_half4 ¶](#max_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1063)

```
max_half4 :: proc "c" (x, y: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_int ¶](#max_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1056)

```
max_int :: proc "c" (x, y: i32) -> i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_int2 ¶](#max_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1070)

```
max_int2 :: proc "c" (x, y: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_int3 ¶](#max_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1071)

```
max_int3 :: proc "c" (x, y: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_int4 ¶](#max_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1072)

```
max_int4 :: proc "c" (x, y: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_uint ¶](#max_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1057)

```
max_uint :: proc "c" (x, y: u32) -> u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_uint2 ¶](#max_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1073)

```
max_uint2 :: proc "c" (x, y: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_uint3 ¶](#max_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1074)

```
max_uint3 :: proc "c" (x, y: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [max\_uint4 ¶](#max_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1075)

```
max_uint4 :: proc "c" (x, y: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/hlsl/#max)

### [min\_double ¶](#min_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1016)

```
min_double :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_double2 ¶](#min_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1023)

```
min_double2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_double3 ¶](#min_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1024)

```
min_double3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_double4 ¶](#min_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1025)

```
min_double4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_float ¶](#min_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1015)

```
min_float :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_float2 ¶](#min_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1020)

```
min_float2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_float3 ¶](#min_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1021)

```
min_float3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_float4 ¶](#min_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1022)

```
min_float4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_half ¶](#min_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1014)

```
min_half :: proc "c" (x, y: f16) -> f16 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_half2 ¶](#min_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1017)

```
min_half2 :: proc "c" (x, y: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_half3 ¶](#min_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1018)

```
min_half3 :: proc "c" (x, y: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_half4 ¶](#min_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1019)

```
min_half4 :: proc "c" (x, y: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_int ¶](#min_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1012)

```
min_int :: proc "c" (x, y: i32) -> i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_int2 ¶](#min_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1026)

```
min_int2 :: proc "c" (x, y: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_int3 ¶](#min_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1027)

```
min_int3 :: proc "c" (x, y: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_int4 ¶](#min_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1028)

```
min_int4 :: proc "c" (x, y: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_uint ¶](#min_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1013)

```
min_uint :: proc "c" (x, y: u32) -> u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_uint2 ¶](#min_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1029)

```
min_uint2 :: proc "c" (x, y: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_uint3 ¶](#min_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1030)

```
min_uint3 :: proc "c" (x, y: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [min\_uint4 ¶](#min_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1031)

```
min_uint4 :: proc "c" (x, y: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/hlsl/#min)

### [normalize\_double ¶](#normalize_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1448)

```
normalize_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_double2 ¶](#normalize_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1455)

```
normalize_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_double3 ¶](#normalize_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1456)

```
normalize_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_double4 ¶](#normalize_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1457)

```
normalize_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_float ¶](#normalize_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1447)

```
normalize_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_float2 ¶](#normalize_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1452)

```
normalize_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_float3 ¶](#normalize_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1453)

```
normalize_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_float4 ¶](#normalize_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1454)

```
normalize_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_half ¶](#normalize_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1446)

```
normalize_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_half2 ¶](#normalize_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1449)

```
normalize_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_half3 ¶](#normalize_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1450)

```
normalize_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [normalize\_half4 ¶](#normalize_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1451)

```
normalize_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/hlsl/#normalize)

### [notEqual\_double ¶](#notEqual_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1885)

```
notEqual_double :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_double2 ¶](#notEqual_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1890)

```
notEqual_double2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_double3 ¶](#notEqual_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1895)

```
notEqual_double3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_double4 ¶](#notEqual_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1900)

```
notEqual_double4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_float ¶](#notEqual_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1884)

```
notEqual_float :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_float2 ¶](#notEqual_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1889)

```
notEqual_float2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_float3 ¶](#notEqual_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1894)

```
notEqual_float3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_float4 ¶](#notEqual_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1899)

```
notEqual_float4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_half ¶](#notEqual_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1883)

```
notEqual_half :: proc "c" (a, b: f16) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_half2 ¶](#notEqual_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1888)

```
notEqual_half2 :: proc "c" (a, b: [2]f16) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_half3 ¶](#notEqual_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1893)

```
notEqual_half3 :: proc "c" (a, b: [3]f16) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_half4 ¶](#notEqual_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1898)

```
notEqual_half4 :: proc "c" (a, b: [4]f16) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_int ¶](#notEqual_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1886)

```
notEqual_int :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_int2 ¶](#notEqual_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1891)

```
notEqual_int2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_int3 ¶](#notEqual_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1896)

```
notEqual_int3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_int4 ¶](#notEqual_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1901)

```
notEqual_int4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_uint ¶](#notEqual_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1887)

```
notEqual_uint :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_uint2 ¶](#notEqual_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1892)

```
notEqual_uint2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_uint3 ¶](#notEqual_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1897)

```
notEqual_uint3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [notEqual\_uint4 ¶](#notEqual_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1902)

```
notEqual_uint4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/hlsl/#notEqual)

### [not\_bool ¶](#not_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1933)

```
not_bool :: proc "c" (v: bool) -> bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/hlsl/#not)

### [not\_bool2 ¶](#not_bool2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1934)

```
not_bool2 :: proc "c" (v: [2]bool) -> [2]bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/hlsl/#not)

### [not\_bool3 ¶](#not_bool3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1935)

```
not_bool3 :: proc "c" (v: [3]bool) -> [3]bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/hlsl/#not)

### [not\_bool4 ¶](#not_bool4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1936)

```
not_bool4 :: proc "c" (v: [4]bool) -> [4]bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/hlsl/#not)

### [pow\_double ¶](#pow_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L94)

```
pow_double :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_double2 ¶](#pow_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L549)

```
pow_double2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_double3 ¶](#pow_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L550)

```
pow_double3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_double4 ¶](#pow_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L551)

```
pow_double4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_float ¶](#pow_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L57)

```
pow_float :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_float2 ¶](#pow_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L546)

```
pow_float2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_float3 ¶](#pow_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L547)

```
pow_float3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_float4 ¶](#pow_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L548)

```
pow_float4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_half ¶](#pow_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L21)

```
pow_half :: proc "c" (x, y: f16) -> f16 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_half2 ¶](#pow_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L543)

```
pow_half2 :: proc "c" (x, y: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_half3 ¶](#pow_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L544)

```
pow_half3 :: proc "c" (x, y: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [pow\_half4 ¶](#pow_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L545)

```
pow_half4 :: proc "c" (x, y: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/hlsl/#pow)

### [radians\_double ¶](#radians_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L951)

```
radians_double :: proc "c" (degrees: f64) -> f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_double2 ¶](#radians_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L958)

```
radians_double2 :: proc "c" (degrees: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_double3 ¶](#radians_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L959)

```
radians_double3 :: proc "c" (degrees: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_double4 ¶](#radians_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L960)

```
radians_double4 :: proc "c" (degrees: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_float ¶](#radians_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L950)

```
radians_float :: proc "c" (degrees: f32) -> f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_float2 ¶](#radians_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L955)

```
radians_float2 :: proc "c" (degrees: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_float3 ¶](#radians_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L956)

```
radians_float3 :: proc "c" (degrees: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_float4 ¶](#radians_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L957)

```
radians_float4 :: proc "c" (degrees: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_half ¶](#radians_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L949)

```
radians_half :: proc "c" (degrees: f16) -> f16 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_half2 ¶](#radians_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L952)

```
radians_half2 :: proc "c" (degrees: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_half3 ¶](#radians_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L953)

```
radians_half3 :: proc "c" (degrees: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [radians\_half4 ¶](#radians_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L954)

```
radians_half4 :: proc "c" (degrees: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/hlsl/#radians)

### [rcp\_double ¶](#rcp_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L93)

```
rcp_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_double2 ¶](#rcp_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L524)

```
rcp_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_double3 ¶](#rcp_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L525)

```
rcp_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_double4 ¶](#rcp_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L526)

```
rcp_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_float ¶](#rcp_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L56)

```
rcp_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_float2 ¶](#rcp_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L521)

```
rcp_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_float3 ¶](#rcp_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L522)

```
rcp_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_float4 ¶](#rcp_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L523)

```
rcp_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_half ¶](#rcp_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L20)

```
rcp_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_half2 ¶](#rcp_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L518)

```
rcp_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_half3 ¶](#rcp_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L519)

```
rcp_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [rcp\_half4 ¶](#rcp_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L520)

```
rcp_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [rcp](/core/math/linalg/hlsl/#rcp)

### [reflect\_double ¶](#reflect_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1504)

```
reflect_double :: proc "c" (I, N: f64) -> f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_double2 ¶](#reflect_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1511)

```
reflect_double2 :: proc "c" (I, N: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_double3 ¶](#reflect_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1512)

```
reflect_double3 :: proc "c" (I, N: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_double4 ¶](#reflect_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1513)

```
reflect_double4 :: proc "c" (I, N: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_float ¶](#reflect_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1503)

```
reflect_float :: proc "c" (I, N: f32) -> f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_float2 ¶](#reflect_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1508)

```
reflect_float2 :: proc "c" (I, N: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_float3 ¶](#reflect_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1509)

```
reflect_float3 :: proc "c" (I, N: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_float4 ¶](#reflect_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1510)

```
reflect_float4 :: proc "c" (I, N: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_half ¶](#reflect_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1502)

```
reflect_half :: proc "c" (I, N: f16) -> f16 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_half2 ¶](#reflect_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1505)

```
reflect_half2 :: proc "c" (I, N: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_half3 ¶](#reflect_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1506)

```
reflect_half3 :: proc "c" (I, N: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [reflect\_half4 ¶](#reflect_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1507)

```
reflect_half4 :: proc "c" (I, N: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/hlsl/#reflect)

### [refract\_double ¶](#refract_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1547)

```
refract_double :: proc "c" (i, n, eta: f64) -> f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_double2 ¶](#refract_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1596)

```
refract_double2 :: proc "c" (i, n, eta: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_double3 ¶](#refract_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1603)

```
refract_double3 :: proc "c" (i, n, eta: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_double4 ¶](#refract_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1610)

```
refract_double4 :: proc "c" (i, n, eta: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_float ¶](#refract_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1540)

```
refract_float :: proc "c" (i, n, eta: f32) -> f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_float2 ¶](#refract_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1575)

```
refract_float2 :: proc "c" (i, n, eta: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_float3 ¶](#refract_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1582)

```
refract_float3 :: proc "c" (i, n, eta: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_float4 ¶](#refract_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1589)

```
refract_float4 :: proc "c" (i, n, eta: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_half ¶](#refract_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1533)

```
refract_half :: proc "c" (i, n, eta: f16) -> f16 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_half2 ¶](#refract_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1554)

```
refract_half2 :: proc "c" (i, n, eta: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_half3 ¶](#refract_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1561)

```
refract_half3 :: proc "c" (i, n, eta: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [refract\_half4 ¶](#refract_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1568)

```
refract_half4 :: proc "c" (i, n, eta: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/hlsl/#refract)

### [round\_double ¶](#round_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L102)

```
round_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_double2 ¶](#round_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L768)

```
round_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_double3 ¶](#round_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L769)

```
round_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_double4 ¶](#round_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L770)

```
round_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_float ¶](#round_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L65)

```
round_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_float2 ¶](#round_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L765)

```
round_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_float3 ¶](#round_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L766)

```
round_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_float4 ¶](#round_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L767)

```
round_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_half ¶](#round_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L29)

```
round_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_half2 ¶](#round_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L762)

```
round_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_half3 ¶](#round_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L763)

```
round_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [round\_half4 ¶](#round_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L764)

```
round_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/hlsl/#round)

### [rsqrt\_double ¶](#rsqrt_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L92)

```
rsqrt_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_double2 ¶](#rsqrt_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L500)

```
rsqrt_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_double3 ¶](#rsqrt_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L501)

```
rsqrt_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_double4 ¶](#rsqrt_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L502)

```
rsqrt_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_float ¶](#rsqrt_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L55)

```
rsqrt_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_float2 ¶](#rsqrt_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L497)

```
rsqrt_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_float3 ¶](#rsqrt_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L498)

```
rsqrt_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_float4 ¶](#rsqrt_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L499)

```
rsqrt_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_half ¶](#rsqrt_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L19)

```
rsqrt_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_half2 ¶](#rsqrt_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L494)

```
rsqrt_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_half3 ¶](#rsqrt_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L495)

```
rsqrt_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [rsqrt\_half4 ¶](#rsqrt_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L496)

```
rsqrt_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [rsqrt](/core/math/linalg/hlsl/#rsqrt)

### [saturate\_double ¶](#saturate_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1148)

```
saturate_double :: proc "c" (v: f64) -> f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_double2 ¶](#saturate_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1155)

```
saturate_double2 :: proc "c" (v: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_double3 ¶](#saturate_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1156)

```
saturate_double3 :: proc "c" (v: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_double4 ¶](#saturate_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1157)

```
saturate_double4 :: proc "c" (v: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_float ¶](#saturate_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1147)

```
saturate_float :: proc "c" (v: f32) -> f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_float2 ¶](#saturate_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1152)

```
saturate_float2 :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_float3 ¶](#saturate_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1153)

```
saturate_float3 :: proc "c" (v: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_float4 ¶](#saturate_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1154)

```
saturate_float4 :: proc "c" (v: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_half ¶](#saturate_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1146)

```
saturate_half :: proc "c" (v: f16) -> f16 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_half2 ¶](#saturate_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1149)

```
saturate_half2 :: proc "c" (v: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_half3 ¶](#saturate_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1150)

```
saturate_half3 :: proc "c" (v: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_half4 ¶](#saturate_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1151)

```
saturate_half4 :: proc "c" (v: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_int ¶](#saturate_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1144)

```
saturate_int :: proc "c" (v: i32) -> i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_int2 ¶](#saturate_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1158)

```
saturate_int2 :: proc "c" (v: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_int3 ¶](#saturate_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1159)

```
saturate_int3 :: proc "c" (v: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_int4 ¶](#saturate_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1160)

```
saturate_int4 :: proc "c" (v: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_uint ¶](#saturate_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1145)

```
saturate_uint :: proc "c" (v: u32) -> u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_uint2 ¶](#saturate_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1161)

```
saturate_uint2 :: proc "c" (v: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_uint3 ¶](#saturate_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1162)

```
saturate_uint3 :: proc "c" (v: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [saturate\_uint4 ¶](#saturate_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1163)

```
saturate_uint4 :: proc "c" (v: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/hlsl/#saturate)

### [scalarTripleProduct\_double3 ¶](#scalarTripleProduct_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1625)

```
scalarTripleProduct_double3 :: proc "c" (a, b, c: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct)

### [scalarTripleProduct\_float3 ¶](#scalarTripleProduct_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1624)

```
scalarTripleProduct_float3 :: proc "c" (a, b, c: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct)

### [scalarTripleProduct\_half3 ¶](#scalarTripleProduct_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1623)

```
scalarTripleProduct_half3 :: proc "c" (a, b, c: [3]f16) -> f16 {…}
```

##### Related Procedure Groups

* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct)

### [scalarTripleProduct\_int3 ¶](#scalarTripleProduct_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1626)

```
scalarTripleProduct_int3 :: proc "c" (a, b, c: [3]i32) -> i32 {…}
```

##### Related Procedure Groups

* [scalarTripleProduct](/core/math/linalg/hlsl/#scalarTripleProduct)

### [sign\_double ¶](#sign_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L100)

```
sign_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_double2 ¶](#sign_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L714)

```
sign_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_double3 ¶](#sign_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L715)

```
sign_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_double4 ¶](#sign_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L716)

```
sign_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_float ¶](#sign_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L63)

```
sign_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_float2 ¶](#sign_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L711)

```
sign_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_float3 ¶](#sign_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L712)

```
sign_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_float4 ¶](#sign_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L713)

```
sign_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_half ¶](#sign_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L27)

```
sign_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_half2 ¶](#sign_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L708)

```
sign_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_half3 ¶](#sign_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L709)

```
sign_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_half4 ¶](#sign_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L710)

```
sign_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_int ¶](#sign_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L706)

```
sign_int :: proc "c" (x: i32) -> i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_int2 ¶](#sign_int2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L717)

```
sign_int2 :: proc "c" (x: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_int3 ¶](#sign_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L718)

```
sign_int3 :: proc "c" (x: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_int4 ¶](#sign_int4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L719)

```
sign_int4 :: proc "c" (x: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_uint ¶](#sign_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L707)

```
sign_uint :: proc "c" (x: u32) -> u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_uint2 ¶](#sign_uint2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L720)

```
sign_uint2 :: proc "c" (x: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_uint3 ¶](#sign_uint3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L721)

```
sign_uint3 :: proc "c" (x: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sign\_uint4 ¶](#sign_uint4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L722)

```
sign_uint4 :: proc "c" (x: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/hlsl/#sign)

### [sin\_double ¶](#sin_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L79)

```
sin_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_double2 ¶](#sin_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L177)

```
sin_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_double3 ¶](#sin_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L178)

```
sin_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_double4 ¶](#sin_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L179)

```
sin_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_float ¶](#sin_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L42)

```
sin_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_float2 ¶](#sin_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L174)

```
sin_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_float3 ¶](#sin_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L175)

```
sin_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_float4 ¶](#sin_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L176)

```
sin_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_half ¶](#sin_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L6)

```
sin_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_half2 ¶](#sin_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L171)

```
sin_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_half3 ¶](#sin_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L172)

```
sin_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sin\_half4 ¶](#sin_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L173)

```
sin_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/hlsl/#sin)

### [sinh\_double ¶](#sinh_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L86)

```
sinh_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_double2 ¶](#sinh_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L356)

```
sinh_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_double3 ¶](#sinh_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L357)

```
sinh_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_double4 ¶](#sinh_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L358)

```
sinh_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_float ¶](#sinh_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L49)

```
sinh_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_float2 ¶](#sinh_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L353)

```
sinh_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_float3 ¶](#sinh_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L354)

```
sinh_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_float4 ¶](#sinh_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L355)

```
sinh_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_half ¶](#sinh_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L13)

```
sinh_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_half2 ¶](#sinh_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L350)

```
sinh_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_half3 ¶](#sinh_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L351)

```
sinh_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [sinh\_half4 ¶](#sinh_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L352)

```
sinh_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/hlsl/#sinh)

### [smoothstep\_double ¶](#smoothstep_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1243)

```
smoothstep_double :: proc "c" (edge0, edge1, x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_double2 ¶](#smoothstep_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1253)

```
smoothstep_double2 :: proc "c" (edge0, edge1, x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_double3 ¶](#smoothstep_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1254)

```
smoothstep_double3 :: proc "c" (edge0, edge1, x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_double4 ¶](#smoothstep_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1255)

```
smoothstep_double4 :: proc "c" (edge0, edge1, x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_float ¶](#smoothstep_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1239)

```
smoothstep_float :: proc "c" (edge0, edge1, x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_float2 ¶](#smoothstep_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1250)

```
smoothstep_float2 :: proc "c" (edge0, edge1, x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_float3 ¶](#smoothstep_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1251)

```
smoothstep_float3 :: proc "c" (edge0, edge1, x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_float4 ¶](#smoothstep_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1252)

```
smoothstep_float4 :: proc "c" (edge0, edge1, x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_half ¶](#smoothstep_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1235)

```
smoothstep_half :: proc "c" (edge0, edge1, x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_half2 ¶](#smoothstep_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1247)

```
smoothstep_half2 :: proc "c" (edge0, edge1, x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_half3 ¶](#smoothstep_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1248)

```
smoothstep_half3 :: proc "c" (edge0, edge1, x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [smoothstep\_half4 ¶](#smoothstep_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1249)

```
smoothstep_half4 :: proc "c" (edge0, edge1, x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/hlsl/#smoothstep)

### [sqrt\_double ¶](#sqrt_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L91)

```
sqrt_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_double2 ¶](#sqrt_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L476)

```
sqrt_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_double3 ¶](#sqrt_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L477)

```
sqrt_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_double4 ¶](#sqrt_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L478)

```
sqrt_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_float ¶](#sqrt_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L54)

```
sqrt_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_float2 ¶](#sqrt_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L473)

```
sqrt_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_float3 ¶](#sqrt_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L474)

```
sqrt_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_float4 ¶](#sqrt_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L475)

```
sqrt_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_half ¶](#sqrt_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L18)

```
sqrt_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_half2 ¶](#sqrt_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L470)

```
sqrt_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_half3 ¶](#sqrt_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L471)

```
sqrt_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [sqrt\_half4 ¶](#sqrt_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L472)

```
sqrt_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/hlsl/#sqrt)

### [step\_double ¶](#step_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1210)

```
step_double :: proc "c" (edge, x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_double2 ¶](#step_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1217)

```
step_double2 :: proc "c" (edge, x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_double3 ¶](#step_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1218)

```
step_double3 :: proc "c" (edge, x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_double4 ¶](#step_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1219)

```
step_double4 :: proc "c" (edge, x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_float ¶](#step_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1209)

```
step_float :: proc "c" (edge, x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_float2 ¶](#step_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1214)

```
step_float2 :: proc "c" (edge, x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_float3 ¶](#step_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1215)

```
step_float3 :: proc "c" (edge, x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_float4 ¶](#step_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1216)

```
step_float4 :: proc "c" (edge, x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_half ¶](#step_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1208)

```
step_half :: proc "c" (edge, x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_half2 ¶](#step_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1211)

```
step_half2 :: proc "c" (edge, x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_half3 ¶](#step_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1212)

```
step_half3 :: proc "c" (edge, x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [step\_half4 ¶](#step_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1213)

```
step_half4 :: proc "c" (edge, x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/hlsl/#step)

### [tan\_double ¶](#tan_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L80)

```
tan_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_double2 ¶](#tan_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L201)

```
tan_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_double3 ¶](#tan_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L202)

```
tan_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_double4 ¶](#tan_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L203)

```
tan_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_float ¶](#tan_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L43)

```
tan_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_float2 ¶](#tan_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L198)

```
tan_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_float3 ¶](#tan_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L199)

```
tan_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_float4 ¶](#tan_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L200)

```
tan_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_half ¶](#tan_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L7)

```
tan_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_half2 ¶](#tan_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L195)

```
tan_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_half3 ¶](#tan_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L196)

```
tan_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tan\_half4 ¶](#tan_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L197)

```
tan_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/hlsl/#tan)

### [tanh\_double ¶](#tanh_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L87)

```
tanh_double :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_double2 ¶](#tanh_double2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L380)

```
tanh_double2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_double3 ¶](#tanh_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L381)

```
tanh_double3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_double4 ¶](#tanh_double4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L382)

```
tanh_double4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_float ¶](#tanh_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L50)

```
tanh_float :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_float2 ¶](#tanh_float2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L377)

```
tanh_float2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_float3 ¶](#tanh_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L378)

```
tanh_float3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_float4 ¶](#tanh_float4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L379)

```
tanh_float4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_half ¶](#tanh_half) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin#L14)

```
tanh_half :: proc "c" (x: f16) -> f16 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_half2 ¶](#tanh_half2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L374)

```
tanh_half2 :: proc "c" (x: [2]f16) -> [2]f16 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_half3 ¶](#tanh_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L375)

```
tanh_half3 :: proc "c" (x: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [tanh\_half4 ¶](#tanh_half4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L376)

```
tanh_half4 :: proc "c" (x: [4]f16) -> [4]f16 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/hlsl/#tanh)

### [trace ¶](#trace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2011)

```
trace :: proc "contextless" (m: $M/matrix[0, 0]$T) -> (trace: $$deferred_return) {…}
```

### [transpose ¶](#transpose)

```
transpose :: intrinsics.transpose  
transpose :: proc(m: $M/matrix[$R, $C]$E) -> matrix[C, R]E {…}
```

### [vectorTripleProduct\_double3 ¶](#vectorTripleProduct_double3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1636)

```
vectorTripleProduct_double3 :: proc "c" (a, b, c: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct)

### [vectorTripleProduct\_float3 ¶](#vectorTripleProduct_float3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1635)

```
vectorTripleProduct_float3 :: proc "c" (a, b, c: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct)

### [vectorTripleProduct\_half3 ¶](#vectorTripleProduct_half3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1634)

```
vectorTripleProduct_half3 :: proc "c" (a, b, c: [3]f16) -> [3]f16 {…}
```

##### Related Procedure Groups

* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct)

### [vectorTripleProduct\_int3 ¶](#vectorTripleProduct_int3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1637)

```
vectorTripleProduct_int3 :: proc "c" (a, b, c: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [vectorTripleProduct](/core/math/linalg/hlsl/#vectorTripleProduct)

## Procedure Groups

### [abs ¶](#abs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1258)

```
abs :: proc{
	abs_int,
	abs_uint,
	abs_half,
	abs_float,
	abs_double,
	abs_half2,
	abs_half3,
	abs_half4,
	abs_float2,
	abs_float3,
	abs_float4,
	abs_double2,
	abs_double3,
	abs_double4,
	abs_int2,
	abs_int3,
	abs_int4,
	abs_uint2,
	abs_uint3,
	abs_uint4,
}
```

### [acos ¶](#acos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L205)

```
acos :: proc{
	acos_half,
	acos_float,
	acos_double,
	acos_half2,
	acos_half3,
	acos_half4,
	acos_float2,
	acos_float3,
	acos_float4,
	acos_double2,
	acos_double3,
	acos_double4,
}
```

### [acosh ¶](#acosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L384)

```
acosh :: proc{
	acosh_half,
	acosh_float,
	acosh_double,
	acosh_half2,
	acosh_half3,
	acosh_half4,
	acosh_float2,
	acosh_float3,
	acosh_float4,
	acosh_double2,
	acosh_double3,
	acosh_double4,
}
```

### [adjugate ¶](#adjugate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1984)

```
adjugate :: proc{
	adjugate_matrix1x1,
	adjugate_matrix2x2,
	adjugate_matrix3x3,
	adjugate_matrix4x4,
}
```

### [all ¶](#all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1916)

```
all :: proc{
	all_bool,
	all_bool2,
	all_bool3,
	all_bool4,
}
```

### [any ¶](#any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1905)

```
any :: proc{
	any_bool,
	any_bool2,
	any_bool3,
	any_bool4,
}
```

### [asdouble ¶](#asdouble) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2574)

```
asdouble :: proc{
	asdouble_half,
	asdouble_float,
	asdouble_double,
	asdouble_int,
	asdouble_uint,
	asdouble_half1x1,
	asdouble_half2x2,
	asdouble_half3x3,
	asdouble_half4x4,
	asdouble_half1x2,
	asdouble_half1x3,
	asdouble_half1x4,
	asdouble_half2x1,
	asdouble_half2x3,
	asdouble_half2x4,
	asdouble_half3x1,
	asdouble_half3x2,
	asdouble_half3x4,
	asdouble_half4x1,
	asdouble_half4x2,
	asdouble_half4x3,
	asdouble_half2,
	asdouble_half3,
	asdouble_half4,
	asdouble_float1x1,
	asdouble_float2x2,
	asdouble_float3x3,
	asdouble_float4x4,
	asdouble_float1x2,
	asdouble_float1x3,
	asdouble_float1x4,
	asdouble_float2x1,
	asdouble_float2x3,
	asdouble_float2x4,
	asdouble_float3x1,
	asdouble_float3x2,
	asdouble_float3x4,
	asdouble_float4x1,
	asdouble_float4x2,
	asdouble_float4x3,
	asdouble_float2,
	asdouble_float3,
	asdouble_float4,
	asdouble_int2,
	asdouble_int3,
	asdouble_int4,
	asdouble_uint2,
	asdouble_uint3,
	asdouble_uint4,
	asdouble_bool2,
	asdouble_bool3,
	asdouble_bool4,
	asdouble_double1x1,
	asdouble_double2x2,
	asdouble_double3x3,
	asdouble_double4x4,
	asdouble_double1x2,
	asdouble_double1x3,
	asdouble_double1x4,
	asdouble_double2x1,
	asdouble_double2x3,
	asdouble_double2x4,
	asdouble_double3x1,
	asdouble_double3x2,
	asdouble_double3x4,
	asdouble_double4x1,
	asdouble_double4x2,
	asdouble_double4x3,
	asdouble_double2,
	asdouble_double3,
	asdouble_double4,
}
```

### [asfloat ¶](#asfloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2429)

```
asfloat :: proc{
	asfloat_half,
	asfloat_float,
	asfloat_double,
	asfloat_int,
	asfloat_uint,
	asfloat_half1x1,
	asfloat_half2x2,
	asfloat_half3x3,
	asfloat_half4x4,
	asfloat_half1x2,
	asfloat_half1x3,
	asfloat_half1x4,
	asfloat_half2x1,
	asfloat_half2x3,
	asfloat_half2x4,
	asfloat_half3x1,
	asfloat_half3x2,
	asfloat_half3x4,
	asfloat_half4x1,
	asfloat_half4x2,
	asfloat_half4x3,
	asfloat_half2,
	asfloat_half3,
	asfloat_half4,
	asfloat_float1x1,
	asfloat_float2x2,
	asfloat_float3x3,
	asfloat_float4x4,
	asfloat_float1x2,
	asfloat_float1x3,
	asfloat_float1x4,
	asfloat_float2x1,
	asfloat_float2x3,
	asfloat_float2x4,
	asfloat_float3x1,
	asfloat_float3x2,
	asfloat_float3x4,
	asfloat_float4x1,
	asfloat_float4x2,
	asfloat_float4x3,
	asfloat_float2,
	asfloat_float3,
	asfloat_float4,
	asfloat_int2,
	asfloat_int3,
	asfloat_int4,
	asfloat_uint2,
	asfloat_uint3,
	asfloat_uint4,
	asfloat_bool2,
	asfloat_bool3,
	asfloat_bool4,
	asfloat_double1x1,
	asfloat_double2x2,
	asfloat_double3x3,
	asfloat_double4x4,
	asfloat_double1x2,
	asfloat_double1x3,
	asfloat_double1x4,
	asfloat_double2x1,
	asfloat_double2x3,
	asfloat_double2x4,
	asfloat_double3x1,
	asfloat_double3x2,
	asfloat_double3x4,
	asfloat_double4x1,
	asfloat_double4x2,
	asfloat_double4x3,
	asfloat_double2,
	asfloat_double3,
	asfloat_double4,
}
```

### [ashalf ¶](#ashalf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2284)

```
ashalf :: proc{
	ashalf_half,
	ashalf_float,
	ashalf_double,
	ashalf_int,
	ashalf_uint,
	ashalf_half1x1,
	ashalf_half2x2,
	ashalf_half3x3,
	ashalf_half4x4,
	ashalf_half1x2,
	ashalf_half1x3,
	ashalf_half1x4,
	ashalf_half2x1,
	ashalf_half2x3,
	ashalf_half2x4,
	ashalf_half3x1,
	ashalf_half3x2,
	ashalf_half3x4,
	ashalf_half4x1,
	ashalf_half4x2,
	ashalf_half4x3,
	ashalf_half2,
	ashalf_half3,
	ashalf_half4,
	ashalf_float1x1,
	ashalf_float2x2,
	ashalf_float3x3,
	ashalf_float4x4,
	ashalf_float1x2,
	ashalf_float1x3,
	ashalf_float1x4,
	ashalf_float2x1,
	ashalf_float2x3,
	ashalf_float2x4,
	ashalf_float3x1,
	ashalf_float3x2,
	ashalf_float3x4,
	ashalf_float4x1,
	ashalf_float4x2,
	ashalf_float4x3,
	ashalf_float2,
	ashalf_float3,
	ashalf_float4,
	ashalf_int2,
	ashalf_int3,
	ashalf_int4,
	ashalf_uint2,
	ashalf_uint3,
	ashalf_uint4,
	ashalf_bool2,
	ashalf_bool3,
	ashalf_bool4,
	ashalf_double1x1,
	ashalf_double2x2,
	ashalf_double3x3,
	ashalf_double4x4,
	ashalf_double1x2,
	ashalf_double1x3,
	ashalf_double1x4,
	ashalf_double2x1,
	ashalf_double2x3,
	ashalf_double2x4,
	ashalf_double3x1,
	ashalf_double3x2,
	ashalf_double3x4,
	ashalf_double4x1,
	ashalf_double4x2,
	ashalf_double4x3,
	ashalf_double2,
	ashalf_double3,
	ashalf_double4,
}
```

### [asin ¶](#asin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L229)

```
asin :: proc{
	asin_half,
	asin_float,
	asin_double,
	asin_half2,
	asin_half3,
	asin_half4,
	asin_float2,
	asin_float3,
	asin_float4,
	asin_double2,
	asin_double3,
	asin_double4,
}
```

### [asinh ¶](#asinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L408)

```
asinh :: proc{
	asinh_half,
	asinh_float,
	asinh_double,
	asinh_half2,
	asinh_half3,
	asinh_half4,
	asinh_float2,
	asinh_float3,
	asinh_float4,
	asinh_double2,
	asinh_double3,
	asinh_double4,
}
```

### [asint ¶](#asint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2719)

```
asint :: proc{
	asint_half,
	asint_float,
	asint_double,
	asint_int,
	asint_uint,
	asint_half1x1,
	asint_half2x2,
	asint_half3x3,
	asint_half4x4,
	asint_half1x2,
	asint_half1x3,
	asint_half1x4,
	asint_half2x1,
	asint_half2x3,
	asint_half2x4,
	asint_half3x1,
	asint_half3x2,
	asint_half3x4,
	asint_half4x1,
	asint_half4x2,
	asint_half4x3,
	asint_half2,
	asint_half3,
	asint_half4,
	asint_float1x1,
	asint_float2x2,
	asint_float3x3,
	asint_float4x4,
	asint_float1x2,
	asint_float1x3,
	asint_float1x4,
	asint_float2x1,
	asint_float2x3,
	asint_float2x4,
	asint_float3x1,
	asint_float3x2,
	asint_float3x4,
	asint_float4x1,
	asint_float4x2,
	asint_float4x3,
	asint_float2,
	asint_float3,
	asint_float4,
	asint_int2,
	asint_int3,
	asint_int4,
	asint_uint2,
	asint_uint3,
	asint_uint4,
	asint_bool2,
	asint_bool3,
	asint_bool4,
	asint_double1x1,
	asint_double2x2,
	asint_double3x3,
	asint_double4x4,
	asint_double1x2,
	asint_double1x3,
	asint_double1x4,
	asint_double2x1,
	asint_double2x3,
	asint_double2x4,
	asint_double3x1,
	asint_double3x2,
	asint_double3x4,
	asint_double4x1,
	asint_double4x2,
	asint_double4x3,
	asint_double2,
	asint_double3,
	asint_double4,
}
```

### [asuint ¶](#asuint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L2865)

```
asuint :: proc{
	asuint_half,
	asuint_float,
	asuint_double,
	asuint_int,
	asuint_uint,
	asuint_half2,
	asuint_half3,
	asuint_half4,
	asuint_float2,
	asuint_float3,
	asuint_float4,
	asuint_int2,
	asuint_int3,
	asuint_int4,
	asuint_uint2,
	asuint_uint3,
	asuint_uint4,
	asuint_bool2,
	asuint_bool3,
	asuint_bool4,
	asuint_double2,
	asuint_double3,
	asuint_double4,
}
```

### [atan ¶](#atan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L253)

```
atan :: proc{
	atan_half,
	atan_float,
	atan_double,
	atan_half2,
	atan_half3,
	atan_half4,
	atan_float2,
	atan_float3,
	atan_float4,
	atan_double2,
	atan_double3,
	atan_double4,
	atan2_float,
	atan2_double,
	atan2_float2,
	atan2_float3,
	atan2_float4,
	atan2_double2,
	atan2_double3,
	atan2_double4,
}
```

### [atan2 ¶](#atan2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L285)

```
atan2 :: proc{
	atan2_half,
	atan2_float,
	atan2_double,
	atan2_half2,
	atan2_half3,
	atan2_half4,
	atan2_float2,
	atan2_float3,
	atan2_float4,
	atan2_double2,
	atan2_double3,
	atan2_double4,
}
```

### [atanh ¶](#atanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L432)

```
atanh :: proc{
	atanh_half,
	atanh_float,
	atanh_double,
	atanh_half2,
	atanh_half3,
	atanh_half4,
	atanh_float2,
	atanh_float3,
	atanh_float4,
	atanh_double2,
	atanh_double3,
	atanh_double4,
}
```

### [ceil ¶](#ceil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L773)

```
ceil :: proc{
	ceil_half,
	ceil_float,
	ceil_double,
	ceil_half2,
	ceil_half3,
	ceil_half4,
	ceil_float2,
	ceil_float3,
	ceil_float4,
	ceil_double2,
	ceil_double3,
	ceil_double4,
}
```

### [clamp ¶](#clamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1079)

```
clamp :: proc{
	clamp_int,
	clamp_uint,
	clamp_half,
	clamp_float,
	clamp_double,
	clamp_half2,
	clamp_half3,
	clamp_half4,
	clamp_float2,
	clamp_float3,
	clamp_float4,
	clamp_double2,
	clamp_double3,
	clamp_double4,
	clamp_int2,
	clamp_int3,
	clamp_int4,
	clamp_uint2,
	clamp_uint3,
	clamp_uint4,
}
```

### [cofactor ¶](#cofactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1991)

```
cofactor :: proc{
	cofactor_matrix1x1,
	cofactor_matrix2x2,
	cofactor_matrix3x3,
	cofactor_matrix4x4,
}
```

### [cos ¶](#cos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L133)

```
cos :: proc{
	cos_half,
	cos_float,
	cos_double,
	cos_half2,
	cos_half3,
	cos_half4,
	cos_float2,
	cos_float3,
	cos_float4,
	cos_double2,
	cos_double3,
	cos_double4,
}
```

### [cosh ¶](#cosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L311)

```
cosh :: proc{
	cosh_half,
	cosh_float,
	cosh_double,
	cosh_half2,
	cosh_half3,
	cosh_half4,
	cosh_float2,
	cosh_float3,
	cosh_float4,
	cosh_double2,
	cosh_double3,
	cosh_double4,
}
```

### [cross ¶](#cross) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1400)

```
cross :: proc{
	cross_half3,
	cross_float3,
	cross_double3,
	cross_int3,
}
```

### [degrees ¶](#degrees) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L963)

```
degrees :: proc{
	degrees_half,
	degrees_float,
	degrees_double,
	degrees_half2,
	degrees_half3,
	degrees_half4,
	degrees_float2,
	degrees_float3,
	degrees_float4,
	degrees_double2,
	degrees_double3,
	degrees_double4,
}
```

### [determinant ¶](#determinant) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1977)

```
determinant :: proc{
	determinant_matrix1x1,
	determinant_matrix2x2,
	determinant_matrix3x3,
	determinant_matrix4x4,
}
```

### [distance ¶](#distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1372)

```
distance :: proc{
	distance_half,
	distance_float,
	distance_double,
	distance_half2,
	distance_half3,
	distance_half4,
	distance_float2,
	distance_float3,
	distance_float4,
	distance_double2,
	distance_double3,
	distance_double4,
}
```

### [dot ¶](#dot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1301)

```
dot :: proc{
	dot_int,
	dot_uint,
	dot_half,
	dot_float,
	dot_double,
	dot_half2,
	dot_half3,
	dot_half4,
	dot_float2,
	dot_float3,
	dot_float4,
	dot_double2,
	dot_double3,
	dot_double4,
	dot_int2,
	dot_int3,
	dot_int4,
	dot_uint2,
	dot_uint3,
	dot_uint4,
}
```

### [equal ¶](#equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1818)

```
equal :: proc{
	equal_half,
	equal_float,
	equal_double,
	equal_int,
	equal_uint,
	equal_half2,
	equal_float2,
	equal_double2,
	equal_int2,
	equal_uint2,
	equal_half3,
	equal_float3,
	equal_double3,
	equal_int3,
	equal_uint3,
	equal_half4,
	equal_float4,
	equal_double4,
	equal_int4,
	equal_uint4,
}
```

### [exp ¶](#exp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L555)

```
exp :: proc{
	exp_half,
	exp_float,
	exp_double,
	exp_half2,
	exp_half3,
	exp_half4,
	exp_float2,
	exp_float3,
	exp_float4,
	exp_double2,
	exp_double3,
	exp_double4,
}
```

### [exp2 ¶](#exp2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L659)

```
exp2 :: proc{
	exp2_half,
	exp2_float,
	exp2_double,
	exp2_half2,
	exp2_half3,
	exp2_half4,
	exp2_float2,
	exp2_float3,
	exp2_float4,
	exp2_double2,
	exp2_double3,
	exp2_double4,
}
```

### [faceforward ¶](#faceforward) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1460)

```
faceforward :: proc{
	faceforward_half,
	faceforward_float,
	faceforward_double,
	faceforward_half2,
	faceforward_half3,
	faceforward_half4,
	faceforward_float2,
	faceforward_float3,
	faceforward_float4,
	faceforward_double2,
	faceforward_double3,
	faceforward_double4,
}
```

### [floor ¶](#floor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L724)

```
floor :: proc{
	floor_half,
	floor_float,
	floor_double,
	floor_half2,
	floor_half3,
	floor_half4,
	floor_float2,
	floor_float3,
	floor_float4,
	floor_double2,
	floor_double3,
	floor_double4,
}
```

### [fmod ¶](#fmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L884)

```
fmod :: proc{
	fmod_half,
	fmod_float,
	fmod_double,
	fmod_half2,
	fmod_half3,
	fmod_half4,
	fmod_float2,
	fmod_float3,
	fmod_float4,
	fmod_double2,
	fmod_double3,
	fmod_double4,
}
```

### [frac ¶](#frac) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L909)

```
frac :: proc{
	frac_half,
	frac_float,
	frac_double,
	frac_half2,
	frac_half3,
	frac_half4,
	frac_float2,
	frac_float3,
	frac_float4,
	frac_double2,
	frac_double3,
	frac_double4,
}
```

### [greaterThan ¶](#greaterThan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1730)

```
greaterThan :: proc{
	greaterThan_half,
	greaterThan_float,
	greaterThan_double,
	greaterThan_int,
	greaterThan_uint,
	greaterThan_half2,
	greaterThan_float2,
	greaterThan_double2,
	greaterThan_int2,
	greaterThan_uint2,
	greaterThan_half3,
	greaterThan_float3,
	greaterThan_double3,
	greaterThan_int3,
	greaterThan_uint3,
	greaterThan_half4,
	greaterThan_float4,
	greaterThan_double4,
	greaterThan_int4,
	greaterThan_uint4,
}
```

### [greaterThanEqual ¶](#greaterThanEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1774)

```
greaterThanEqual :: proc{
	greaterThanEqual_half,
	greaterThanEqual_float,
	greaterThanEqual_double,
	greaterThanEqual_int,
	greaterThanEqual_uint,
	greaterThanEqual_half2,
	greaterThanEqual_float2,
	greaterThanEqual_double2,
	greaterThanEqual_int2,
	greaterThanEqual_uint2,
	greaterThanEqual_half3,
	greaterThanEqual_float3,
	greaterThanEqual_double3,
	greaterThanEqual_int3,
	greaterThanEqual_uint3,
	greaterThanEqual_half4,
	greaterThanEqual_float4,
	greaterThanEqual_double4,
	greaterThanEqual_int4,
	greaterThanEqual_uint4,
}
```

### [inverse ¶](#inverse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1954)

```
inverse :: proc{
	inverse_half1x1,
	inverse_half2x2,
	inverse_half3x3,
	inverse_half4x4,
	inverse_float1x1,
	inverse_float2x2,
	inverse_float3x3,
	inverse_float4x4,
	inverse_double1x1,
	inverse_double2x2,
	inverse_double3x3,
	inverse_double4x4,
	inverse_matrix1x1,
	inverse_matrix2x2,
	inverse_matrix3x3,
	inverse_matrix4x4,
}
```

### [inverse\_transpose ¶](#inverse_transpose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1998)

```
inverse_transpose :: proc{
	inverse_transpose_matrix1x1,
	inverse_transpose_matrix2x2,
	inverse_transpose_matrix3x3,
	inverse_transpose_matrix4x4,
}
```

### [isfinite ¶](#isfinite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L812)

```
isfinite :: proc{
	isfinite_half,
	isfinite_half2,
	isfinite_half3,
	isfinite_half4,
	isfinite_float,
	isfinite_float2,
	isfinite_float3,
	isfinite_float4,
	isfinite_double,
	isfinite_double2,
	isfinite_double3,
	isfinite_double4,
}
```

 

isfinite is the opposite of isinf and returns true if the number is neither positive-infinite or negative-infinite

### [isinf ¶](#isinf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L842)

```
isinf :: proc{
	isinf_half,
	isinf_half2,
	isinf_half3,
	isinf_half4,
	isinf_float,
	isinf_float2,
	isinf_float3,
	isinf_float4,
	isinf_double,
	isinf_double2,
	isinf_double3,
	isinf_double4,
}
```

 

isinf is the opposite of isfinite and returns true if the number is either positive-infinite or negative-infinite

### [isnan ¶](#isnan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L869)

```
isnan :: proc{
	isnan_half,
	isnan_half2,
	isnan_half3,
	isnan_half4,
	isnan_float,
	isnan_float2,
	isnan_float3,
	isnan_float4,
	isnan_double,
	isnan_double2,
	isnan_double3,
	isnan_double4,
}
```

 

isnan returns true if the input value is the special case of Not-A-Number

### [length ¶](#length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1344)

```
length :: proc{
	length_half,
	length_float,
	length_double,
	length_half2,
	length_half3,
	length_half4,
	length_float2,
	length_float3,
	length_float4,
	length_double2,
	length_double3,
	length_double4,
}
```

### [lerp ¶](#lerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1166)

```
lerp :: proc{
	lerp_half,
	lerp_float,
	lerp_double,
	lerp_half2,
	lerp_half3,
	lerp_half4,
	lerp_float2,
	lerp_float3,
	lerp_float4,
	lerp_double2,
	lerp_double3,
	lerp_double4,
}
```

### [lessThan ¶](#lessThan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1642)

```
lessThan :: proc{
	lessThan_half,
	lessThan_float,
	lessThan_double,
	lessThan_int,
	lessThan_uint,
	lessThan_half2,
	lessThan_float2,
	lessThan_double2,
	lessThan_int2,
	lessThan_uint2,
	lessThan_half3,
	lessThan_float3,
	lessThan_double3,
	lessThan_int3,
	lessThan_uint3,
	lessThan_half4,
	lessThan_float4,
	lessThan_double4,
	lessThan_int4,
	lessThan_uint4,
}
```

### [lessThanEqual ¶](#lessThanEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1686)

```
lessThanEqual :: proc{
	lessThanEqual_half,
	lessThanEqual_float,
	lessThanEqual_double,
	lessThanEqual_int,
	lessThanEqual_uint,
	lessThanEqual_half2,
	lessThanEqual_float2,
	lessThanEqual_double2,
	lessThanEqual_int2,
	lessThanEqual_uint2,
	lessThanEqual_half3,
	lessThanEqual_float3,
	lessThanEqual_double3,
	lessThanEqual_int3,
	lessThanEqual_uint3,
	lessThanEqual_half4,
	lessThanEqual_float4,
	lessThanEqual_double4,
	lessThanEqual_int4,
	lessThanEqual_uint4,
}
```

### [log ¶](#log) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L581)

```
log :: proc{
	log_half,
	log_float,
	log_double,
	log_half2,
	log_half3,
	log_half4,
	log_float2,
	log_float3,
	log_float4,
	log_double2,
	log_double3,
	log_double4,
}
```

### [log10 ¶](#log10) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L632)

```
log10 :: proc{
	log10_half,
	log10_float,
	log10_double,
	log10_half2,
	log10_half3,
	log10_half4,
	log10_float2,
	log10_float3,
	log10_float4,
	log10_double2,
	log10_double3,
	log10_double4,
}
```

### [log2 ¶](#log2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L606)

```
log2 :: proc{
	log2_half,
	log2_float,
	log2_double,
	log2_half2,
	log2_half3,
	log2_half4,
	log2_float2,
	log2_float3,
	log2_float4,
	log2_double2,
	log2_double3,
	log2_double4,
}
```

### [max ¶](#max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1034)

```
max :: proc{
	max_int,
	max_uint,
	max_half,
	max_float,
	max_double,
	max_half2,
	max_half3,
	max_half4,
	max_float2,
	max_float3,
	max_float4,
	max_double2,
	max_double3,
	max_double4,
	max_int2,
	max_int3,
	max_int4,
	max_uint2,
	max_uint3,
	max_uint4,
}
```

### [min ¶](#min) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L990)

```
min :: proc{
	min_half,
	min_int,
	min_uint,
	min_float,
	min_double,
	min_half2,
	min_half3,
	min_half4,
	min_float2,
	min_float3,
	min_float4,
	min_double2,
	min_double3,
	min_double4,
	min_int2,
	min_int3,
	min_int4,
	min_uint2,
	min_uint3,
	min_uint4,
}
```

### [normalize ¶](#normalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1432)

```
normalize :: proc{
	normalize_half,
	normalize_float,
	normalize_double,
	normalize_half2,
	normalize_half3,
	normalize_half4,
	normalize_float2,
	normalize_float3,
	normalize_float4,
	normalize_double2,
	normalize_double3,
	normalize_double4,
}
```

### [not ¶](#not) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1927)

```
not :: proc{
	not_bool,
	not_bool2,
	not_bool3,
	not_bool4,
}
```

### [notEqual ¶](#notEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1861)

```
notEqual :: proc{
	notEqual_half,
	notEqual_float,
	notEqual_double,
	notEqual_int,
	notEqual_uint,
	notEqual_half2,
	notEqual_float2,
	notEqual_double2,
	notEqual_int2,
	notEqual_uint2,
	notEqual_half3,
	notEqual_float3,
	notEqual_double3,
	notEqual_int3,
	notEqual_uint3,
	notEqual_half4,
	notEqual_float4,
	notEqual_double4,
	notEqual_int4,
	notEqual_uint4,
}
```

### [pow ¶](#pow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L529)

```
pow :: proc{
	pow_half,
	pow_float,
	pow_double,
	pow_half2,
	pow_half3,
	pow_half4,
	pow_float2,
	pow_float3,
	pow_float4,
	pow_double2,
	pow_double3,
	pow_double4,
}
```

### [radians ¶](#radians) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L935)

```
radians :: proc{
	radians_half,
	radians_float,
	radians_double,
	radians_half2,
	radians_half3,
	radians_half4,
	radians_float2,
	radians_float3,
	radians_float4,
	radians_double2,
	radians_double3,
	radians_double4,
}
```

### [rcp ¶](#rcp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L504)

```
rcp :: proc{
	rcp_half,
	rcp_float,
	rcp_double,
	rcp_half2,
	rcp_half3,
	rcp_half4,
	rcp_float2,
	rcp_float3,
	rcp_float4,
	rcp_double2,
	rcp_double3,
	rcp_double4,
}
```

### [reflect ¶](#reflect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1488)

```
reflect :: proc{
	reflect_half,
	reflect_float,
	reflect_double,
	reflect_half2,
	reflect_half3,
	reflect_half4,
	reflect_float2,
	reflect_float3,
	reflect_float4,
	reflect_double2,
	reflect_double3,
	reflect_double4,
}
```

### [refract ¶](#refract) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1518)

```
refract :: proc{
	refract_half,
	refract_float,
	refract_double,
	refract_half2,
	refract_half3,
	refract_half4,
	refract_float2,
	refract_float3,
	refract_float4,
	refract_double2,
	refract_double3,
	refract_double4,
}
```

### [round ¶](#round) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L748)

```
round :: proc{
	round_half,
	round_float,
	round_double,
	round_half2,
	round_half3,
	round_half4,
	round_float2,
	round_float3,
	round_float4,
	round_double2,
	round_double3,
	round_double4,
}
```

### [rsqrt ¶](#rsqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L480)

```
rsqrt :: proc{
	rsqrt_half,
	rsqrt_float,
	rsqrt_double,
	rsqrt_half2,
	rsqrt_half3,
	rsqrt_half4,
	rsqrt_float2,
	rsqrt_float3,
	rsqrt_float4,
	rsqrt_double2,
	rsqrt_double3,
	rsqrt_double4,
}
```

### [saturate ¶](#saturate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1122)

```
saturate :: proc{
	saturate_int,
	saturate_uint,
	saturate_half,
	saturate_float,
	saturate_double,
	saturate_half2,
	saturate_half3,
	saturate_half4,
	saturate_float2,
	saturate_float3,
	saturate_float4,
	saturate_double2,
	saturate_double3,
	saturate_double4,
	saturate_int2,
	saturate_int3,
	saturate_int4,
	saturate_uint2,
	saturate_uint3,
	saturate_uint4,
}
```

### [scalarTripleProduct ¶](#scalarTripleProduct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1617)

```
scalarTripleProduct :: proc{
	scalarTripleProduct_half3,
	scalarTripleProduct_float3,
	scalarTripleProduct_double3,
	scalarTripleProduct_int3,
}
```

### [sign ¶](#sign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L684)

```
sign :: proc{
	sign_half,
	sign_int,
	sign_uint,
	sign_float,
	sign_double,
	sign_half2,
	sign_half3,
	sign_half4,
	sign_float2,
	sign_float3,
	sign_float4,
	sign_double2,
	sign_double3,
	sign_double4,
	sign_int2,
	sign_int3,
	sign_int4,
	sign_uint2,
	sign_uint3,
	sign_uint4,
}
```

### [sin ¶](#sin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L157)

```
sin :: proc{
	sin_half,
	sin_float,
	sin_double,
	sin_half2,
	sin_half3,
	sin_half4,
	sin_float2,
	sin_float3,
	sin_float4,
	sin_double2,
	sin_double3,
	sin_double4,
}
```

### [sinh ¶](#sinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L336)

```
sinh :: proc{
	sinh_half,
	sinh_float,
	sinh_double,
	sinh_half2,
	sinh_half3,
	sinh_half4,
	sinh_float2,
	sinh_float3,
	sinh_float4,
	sinh_double2,
	sinh_double3,
	sinh_double4,
}
```

### [smoothstep ¶](#smoothstep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1221)

```
smoothstep :: proc{
	smoothstep_half,
	smoothstep_float,
	smoothstep_double,
	smoothstep_half2,
	smoothstep_half3,
	smoothstep_half4,
	smoothstep_float2,
	smoothstep_float3,
	smoothstep_float4,
	smoothstep_double2,
	smoothstep_double3,
	smoothstep_double4,
}
```

### [sqrt ¶](#sqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L456)

```
sqrt :: proc{
	sqrt_half,
	sqrt_float,
	sqrt_double,
	sqrt_half2,
	sqrt_half3,
	sqrt_half4,
	sqrt_float2,
	sqrt_float3,
	sqrt_float4,
	sqrt_double2,
	sqrt_double3,
	sqrt_double4,
}
```

### [step ¶](#step) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1194)

```
step :: proc{
	step_half,
	step_float,
	step_double,
	step_half2,
	step_half3,
	step_half4,
	step_float2,
	step_float3,
	step_float4,
	step_double2,
	step_double3,
	step_double4,
}
```

### [tan ¶](#tan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L181)

```
tan :: proc{
	tan_half,
	tan_float,
	tan_double,
	tan_half2,
	tan_half3,
	tan_half4,
	tan_float2,
	tan_float3,
	tan_float4,
	tan_double2,
	tan_double3,
	tan_double4,
}
```

### [tanh ¶](#tanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L360)

```
tanh :: proc{
	tanh_half,
	tanh_float,
	tanh_double,
	tanh_half2,
	tanh_half3,
	tanh_half4,
	tanh_float2,
	tanh_float3,
	tanh_float4,
	tanh_double2,
	tanh_double3,
	tanh_double4,
}
```

### [vectorTripleProduct ¶](#vectorTripleProduct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin#L1628)

```
vectorTripleProduct :: proc{
	vectorTripleProduct_half3,
	vectorTripleProduct_float3,
	vectorTripleProduct_double3,
	vectorTripleProduct_int3,
}
```

## Source Files

* [linalg\_hlsl.odin](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl.odin)
* [linalg\_hlsl\_math.odin](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/hlsl/linalg_hlsl_math.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.010892100 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [bool2](#bool2)
    + [bool3](#bool3)
    + [bool4](#bool4)
    + [double](#double)
    + [double1x1](#double1x1)
    + [double1x2](#double1x2)
    + [double1x3](#double1x3)
    + [double1x4](#double1x4)
    + [double2](#double2)
    + [double2x1](#double2x1)
    + [double2x2](#double2x2)
    + [double2x3](#double2x3)
    + [double2x4](#double2x4)
    + [double3](#double3)
    + [double3x1](#double3x1)
    + [double3x2](#double3x2)
    + [double3x3](#double3x3)
    + [double3x4](#double3x4)
    + [double4](#double4)
    + [double4x1](#double4x1)
    + [double4x2](#double4x2)
    + [double4x3](#double4x3)
    + [double4x4](#double4x4)
    + [float](#float)
    + [float1x1](#float1x1)
    + [float1x2](#float1x2)
    + [float1x3](#float1x3)
    + [float1x4](#float1x4)
    + [float2](#float2)
    + [float2x1](#float2x1)
    + [float2x2](#float2x2)
    + [float2x3](#float2x3)
    + [float2x4](#float2x4)
    + [float3](#float3)
    + [float3x1](#float3x1)
    + [float3x2](#float3x2)
    + [float3x3](#float3x3)
    + [float3x4](#float3x4)
    + [float4](#float4)
    + [float4x1](#float4x1)
    + [float4x2](#float4x2)
    + [float4x3](#float4x3)
    + [float4x4](#float4x4)
    + [half](#half)
    + [half1x1](#half1x1)
    + [half1x2](#half1x2)
    + [half1x3](#half1x3)
    + [half1x4](#half1x4)
    + [half2](#half2)
    + [half2x1](#half2x1)
    + [half2x2](#half2x2)
    + [half2x3](#half2x3)
    + [half2x4](#half2x4)
    + [half3](#half3)
    + [half3x1](#half3x1)
    + [half3x2](#half3x2)
    + [half3x3](#half3x3)
    + [half3x4](#half3x4)
    + [half4](#half4)
    + [half4x1](#half4x1)
    + [half4x2](#half4x2)
    + [half4x3](#half4x3)
    + [half4x4](#half4x4)
    + [int](#int)
    + [int1x1](#int1x1)
    + [int1x2](#int1x2)
    + [int1x3](#int1x3)
    + [int1x4](#int1x4)
    + [int2](#int2)
    + [int2x1](#int2x1)
    + [int2x2](#int2x2)
    + [int2x3](#int2x3)
    + [int2x4](#int2x4)
    + [int3](#int3)
    + [int3x1](#int3x1)
    + [int3x2](#int3x2)
    + [int3x3](#int3x3)
    + [int3x4](#int3x4)
    + [int4](#int4)
    + [int4x1](#int4x1)
    + [int4x2](#int4x2)
    + [int4x3](#int4x3)
    + [int4x4](#int4x4)
    + [uint](#uint)
    + [uint2](#uint2)
    + [uint3](#uint3)
    + [uint4](#uint4)
  * [Constants](#pkg-Constants)
    + [DOUBLE\_EPSILON](#DOUBLE_EPSILON)
    + [E](#E)
    + [FLOAT\_EPSILON](#FLOAT_EPSILON)
    + [LN10](#LN10)
    + [LN2](#LN2)
    + [PI](#PI)
    + [SQRT\_FIVE](#SQRT_FIVE)
    + [SQRT\_THREE](#SQRT_THREE)
    + [SQRT\_TWO](#SQRT_TWO)
    + [TAU](#TAU)
    + [e](#e)
    + [π](#π)
    + [τ](#τ)
  * [Procedures](#pkg-Procedures)
    + [abs\_double](#abs_double)
    + [abs\_double2](#abs_double2)
    + [abs\_double3](#abs_double3)
    + [abs\_double4](#abs_double4)
    + [abs\_float](#abs_float)
    + [abs\_float2](#abs_float2)
    + [abs\_float3](#abs_float3)
    + [abs\_float4](#abs_float4)
    + [abs\_half](#abs_half)
    + [abs\_half2](#abs_half2)
    + [abs\_half3](#abs_half3)
    + [abs\_half4](#abs_half4)
    + [abs\_int](#abs_int)
    + [abs\_int2](#abs_int2)
    + [abs\_int3](#abs_int3)
    + [abs\_int4](#abs_int4)
    + [abs\_uint](#abs_uint)
    + [abs\_uint2](#abs_uint2)
    + [abs\_uint3](#abs_uint3)
    + [abs\_uint4](#abs_uint4)
    + [acos\_double](#acos_double)
    + [acos\_double2](#acos_double2)
    + [acos\_double3](#acos_double3)
    + [acos\_double4](#acos_double4)
    + [acos\_float](#acos_float)
    + [acos\_float2](#acos_float2)
    + [acos\_float3](#acos_float3)
    + [acos\_float4](#acos_float4)
    + [acos\_half](#acos_half)
    + [acos\_half2](#acos_half2)
    + [acos\_half3](#acos_half3)
    + [acos\_half4](#acos_half4)
    + [acosh\_double](#acosh_double)
    + [acosh\_double2](#acosh_double2)
    + [acosh\_double3](#acosh_double3)
    + [acosh\_double4](#acosh_double4)
    + [acosh\_float](#acosh_float)
    + [acosh\_float2](#acosh_float2)
    + [acosh\_float3](#acosh_float3)
    + [acosh\_float4](#acosh_float4)
    + [acosh\_half](#acosh_half)
    + [acosh\_half2](#acosh_half2)
    + [acosh\_half3](#acosh_half3)
    + [acosh\_half4](#acosh_half4)
    + [adjugate\_matrix1x1](#adjugate_matrix1x1)
    + [adjugate\_matrix2x2](#adjugate_matrix2x2)
    + [adjugate\_matrix3x3](#adjugate_matrix3x3)
    + [adjugate\_matrix4x4](#adjugate_matrix4x4)
    + [all\_bool](#all_bool)
    + [all\_bool2](#all_bool2)
    + [all\_bool3](#all_bool3)
    + [all\_bool4](#all_bool4)
    + [any\_bool](#any_bool)
    + [any\_bool2](#any_bool2)
    + [any\_bool3](#any_bool3)
    + [any\_bool4](#any_bool4)
    + [asdouble\_bool2](#asdouble_bool2)
    + [asdouble\_bool3](#asdouble_bool3)
    + [asdouble\_bool4](#asdouble_bool4)
    + [asdouble\_double](#asdouble_double)
    + [asdouble\_double1x1](#asdouble_double1x1)
    + [asdouble\_double1x2](#asdouble_double1x2)
    + [asdouble\_double1x3](#asdouble_double1x3)
    + [asdouble\_double1x4](#asdouble_double1x4)
    + [asdouble\_double2](#asdouble_double2)
    + [asdouble\_double2x1](#asdouble_double2x1)
    + [asdouble\_double2x2](#asdouble_double2x2)
    + [asdouble\_double2x3](#asdouble_double2x3)
    + [asdouble\_double2x4](#asdouble_double2x4)
    + [asdouble\_double3](#asdouble_double3)
    + [asdouble\_double3x1](#asdouble_double3x1)
    + [asdouble\_double3x2](#asdouble_double3x2)
    + [asdouble\_double3x3](#asdouble_double3x3)
    + [asdouble\_double3x4](#asdouble_double3x4)
    + [asdouble\_double4](#asdouble_double4)
    + [asdouble\_double4x1](#asdouble_double4x1)
    + [asdouble\_double4x2](#asdouble_double4x2)
    + [asdouble\_double4x3](#asdouble_double4x3)
    + [asdouble\_double4x4](#asdouble_double4x4)
    + [asdouble\_float](#asdouble_float)
    + [asdouble\_float1x1](#asdouble_float1x1)
    + [asdouble\_float1x2](#asdouble_float1x2)
    + [asdouble\_float1x3](#asdouble_float1x3)
    + [asdouble\_float1x4](#asdouble_float1x4)
    + [asdouble\_float2](#asdouble_float2)
    + [asdouble\_float2x1](#asdouble_float2x1)
    + [asdouble\_float2x2](#asdouble_float2x2)
    + [asdouble\_float2x3](#asdouble_float2x3)
    + [asdouble\_float2x4](#asdouble_float2x4)
    + [asdouble\_float3](#asdouble_float3)
    + [asdouble\_float3x1](#asdouble_float3x1)
    + [asdouble\_float3x2](#asdouble_float3x2)
    + [asdouble\_float3x3](#asdouble_float3x3)
    + [asdouble\_float3x4](#asdouble_float3x4)
    + [asdouble\_float4](#asdouble_float4)
    + [asdouble\_float4x1](#asdouble_float4x1)
    + [asdouble\_float4x2](#asdouble_float4x2)
    + [asdouble\_float4x3](#asdouble_float4x3)
    + [asdouble\_float4x4](#asdouble_float4x4)
    + [asdouble\_half](#asdouble_half)
    + [asdouble\_half1x1](#asdouble_half1x1)
    + [asdouble\_half1x2](#asdouble_half1x2)
    + [asdouble\_half1x3](#asdouble_half1x3)
    + [asdouble\_half1x4](#asdouble_half1x4)
    + [asdouble\_half2](#asdouble_half2)
    + [asdouble\_half2x1](#asdouble_half2x1)
    + [asdouble\_half2x2](#asdouble_half2x2)
    + [asdouble\_half2x3](#asdouble_half2x3)
    + [asdouble\_half2x4](#asdouble_half2x4)
    + [asdouble\_half3](#asdouble_half3)
    + [asdouble\_half3x1](#asdouble_half3x1)
    + [asdouble\_half3x2](#asdouble_half3x2)
    + [asdouble\_half3x3](#asdouble_half3x3)
    + [asdouble\_half3x4](#asdouble_half3x4)
    + [asdouble\_half4](#asdouble_half4)
    + [asdouble\_half4x1](#asdouble_half4x1)
    + [asdouble\_half4x2](#asdouble_half4x2)
    + [asdouble\_half4x3](#asdouble_half4x3)
    + [asdouble\_half4x4](#asdouble_half4x4)
    + [asdouble\_int](#asdouble_int)
    + [asdouble\_int2](#asdouble_int2)
    + [asdouble\_int3](#asdouble_int3)
    + [asdouble\_int4](#asdouble_int4)
    + [asdouble\_uint](#asdouble_uint)
    + [asdouble\_uint2](#asdouble_uint2)
    + [asdouble\_uint3](#asdouble_uint3)
    + [asdouble\_uint4](#asdouble_uint4)
    + [asfloat\_bool2](#asfloat_bool2)
    + [asfloat\_bool3](#asfloat_bool3)
    + [asfloat\_bool4](#asfloat_bool4)
    + [asfloat\_double](#asfloat_double)
    + [asfloat\_double1x1](#asfloat_double1x1)
    + [asfloat\_double1x2](#asfloat_double1x2)
    + [asfloat\_double1x3](#asfloat_double1x3)
    + [asfloat\_double1x4](#asfloat_double1x4)
    + [asfloat\_double2](#asfloat_double2)
    + [asfloat\_double2x1](#asfloat_double2x1)
    + [asfloat\_double2x2](#asfloat_double2x2)
    + [asfloat\_double2x3](#asfloat_double2x3)
    + [asfloat\_double2x4](#asfloat_double2x4)
    + [asfloat\_double3](#asfloat_double3)
    + [asfloat\_double3x1](#asfloat_double3x1)
    + [asfloat\_double3x2](#asfloat_double3x2)
    + [asfloat\_double3x3](#asfloat_double3x3)
    + [asfloat\_double3x4](#asfloat_double3x4)
    + [asfloat\_double4](#asfloat_double4)
    + [asfloat\_double4x1](#asfloat_double4x1)
    + [asfloat\_double4x2](#asfloat_double4x2)
    + [asfloat\_double4x3](#asfloat_double4x3)
    + [asfloat\_double4x4](#asfloat_double4x4)
    + [asfloat\_float](#asfloat_float)
    + [asfloat\_float1x1](#asfloat_float1x1)
    + [asfloat\_float1x2](#asfloat_float1x2)
    + [asfloat\_float1x3](#asfloat_float1x3)
    + [asfloat\_float1x4](#asfloat_float1x4)
    + [asfloat\_float2](#asfloat_float2)
    + [asfloat\_float2x1](#asfloat_float2x1)
    + [asfloat\_float2x2](#asfloat_float2x2)
    + [asfloat\_float2x3](#asfloat_float2x3)
    + [asfloat\_float2x4](#asfloat_float2x4)
    + [asfloat\_float3](#asfloat_float3)
    + [asfloat\_float3x1](#asfloat_float3x1)
    + [asfloat\_float3x2](#asfloat_float3x2)
    + [asfloat\_float3x3](#asfloat_float3x3)
    + [asfloat\_float3x4](#asfloat_float3x4)
    + [asfloat\_float4](#asfloat_float4)
    + [asfloat\_float4x1](#asfloat_float4x1)
    + [asfloat\_float4x2](#asfloat_float4x2)
    + [asfloat\_float4x3](#asfloat_float4x3)
    + [asfloat\_float4x4](#asfloat_float4x4)
    + [asfloat\_half](#asfloat_half)
    + [asfloat\_half1x1](#asfloat_half1x1)
    + [asfloat\_half1x2](#asfloat_half1x2)
    + [asfloat\_half1x3](#asfloat_half1x3)
    + [asfloat\_half1x4](#asfloat_half1x4)
    + [asfloat\_half2](#asfloat_half2)
    + [asfloat\_half2x1](#asfloat_half2x1)
    + [asfloat\_half2x2](#asfloat_half2x2)
    + [asfloat\_half2x3](#asfloat_half2x3)
    + [asfloat\_half2x4](#asfloat_half2x4)
    + [asfloat\_half3](#asfloat_half3)
    + [asfloat\_half3x1](#asfloat_half3x1)
    + [asfloat\_half3x2](#asfloat_half3x2)
    + [asfloat\_half3x3](#asfloat_half3x3)
    + [asfloat\_half3x4](#asfloat_half3x4)
    + [asfloat\_half4](#asfloat_half4)
    + [asfloat\_half4x1](#asfloat_half4x1)
    + [asfloat\_half4x2](#asfloat_half4x2)
    + [asfloat\_half4x3](#asfloat_half4x3)
    + [asfloat\_half4x4](#asfloat_half4x4)
    + [asfloat\_int](#asfloat_int)
    + [asfloat\_int2](#asfloat_int2)
    + [asfloat\_int3](#asfloat_int3)
    + [asfloat\_int4](#asfloat_int4)
    + [asfloat\_uint](#asfloat_uint)
    + [asfloat\_uint2](#asfloat_uint2)
    + [asfloat\_uint3](#asfloat_uint3)
    + [asfloat\_uint4](#asfloat_uint4)
    + [ashalf\_bool2](#ashalf_bool2)
    + [ashalf\_bool3](#ashalf_bool3)
    + [ashalf\_bool4](#ashalf_bool4)
    + [ashalf\_double](#ashalf_double)
    + [ashalf\_double1x1](#ashalf_double1x1)
    + [ashalf\_double1x2](#ashalf_double1x2)
    + [ashalf\_double1x3](#ashalf_double1x3)
    + [ashalf\_double1x4](#ashalf_double1x4)
    + [ashalf\_double2](#ashalf_double2)
    + [ashalf\_double2x1](#ashalf_double2x1)
    + [ashalf\_double2x2](#ashalf_double2x2)
    + [ashalf\_double2x3](#ashalf_double2x3)
    + [ashalf\_double2x4](#ashalf_double2x4)
    + [ashalf\_double3](#ashalf_double3)
    + [ashalf\_double3x1](#ashalf_double3x1)
    + [ashalf\_double3x2](#ashalf_double3x2)
    + [ashalf\_double3x3](#ashalf_double3x3)
    + [ashalf\_double3x4](#ashalf_double3x4)
    + [ashalf\_double4](#ashalf_double4)
    + [ashalf\_double4x1](#ashalf_double4x1)
    + [ashalf\_double4x2](#ashalf_double4x2)
    + [ashalf\_double4x3](#ashalf_double4x3)
    + [ashalf\_double4x4](#ashalf_double4x4)
    + [ashalf\_float](#ashalf_float)
    + [ashalf\_float1x1](#ashalf_float1x1)
    + [ashalf\_float1x2](#ashalf_float1x2)
    + [ashalf\_float1x3](#ashalf_float1x3)
    + [ashalf\_float1x4](#ashalf_float1x4)
    + [ashalf\_float2](#ashalf_float2)
    + [ashalf\_float2x1](#ashalf_float2x1)
    + [ashalf\_float2x2](#ashalf_float2x2)
    + [ashalf\_float2x3](#ashalf_float2x3)
    + [ashalf\_float2x4](#ashalf_float2x4)
    + [ashalf\_float3](#ashalf_float3)
    + [ashalf\_float3x1](#ashalf_float3x1)
    + [ashalf\_float3x2](#ashalf_float3x2)
    + [ashalf\_float3x3](#ashalf_float3x3)
    + [ashalf\_float3x4](#ashalf_float3x4)
    + [ashalf\_float4](#ashalf_float4)
    + [ashalf\_float4x1](#ashalf_float4x1)
    + [ashalf\_float4x2](#ashalf_float4x2)
    + [ashalf\_float4x3](#ashalf_float4x3)
    + [ashalf\_float4x4](#ashalf_float4x4)
    + [ashalf\_half](#ashalf_half)
    + [ashalf\_half1x1](#ashalf_half1x1)
    + [ashalf\_half1x2](#ashalf_half1x2)
    + [ashalf\_half1x3](#ashalf_half1x3)
    + [ashalf\_half1x4](#ashalf_half1x4)
    + [ashalf\_half2](#ashalf_half2)
    + [ashalf\_half2x1](#ashalf_half2x1)
    + [ashalf\_half2x2](#ashalf_half2x2)
    + [ashalf\_half2x3](#ashalf_half2x3)
    + [ashalf\_half2x4](#ashalf_half2x4)
    + [ashalf\_half3](#ashalf_half3)
    + [ashalf\_half3x1](#ashalf_half3x1)
    + [ashalf\_half3x2](#ashalf_half3x2)
    + [ashalf\_half3x3](#ashalf_half3x3)
    + [ashalf\_half3x4](#ashalf_half3x4)
    + [ashalf\_half4](#ashalf_half4)
    + [ashalf\_half4x1](#ashalf_half4x1)
    + [ashalf\_half4x2](#ashalf_half4x2)
    + [ashalf\_half4x3](#ashalf_half4x3)
    + [ashalf\_half4x4](#ashalf_half4x4)
    + [ashalf\_int](#ashalf_int)
    + [ashalf\_int2](#ashalf_int2)
    + [ashalf\_int3](#ashalf_int3)
    + [ashalf\_int4](#ashalf_int4)
    + [ashalf\_uint](#ashalf_uint)
    + [ashalf\_uint2](#ashalf_uint2)
    + [ashalf\_uint3](#ashalf_uint3)
    + [ashalf\_uint4](#ashalf_uint4)
    + [asin\_double](#asin_double)
    + [asin\_double2](#asin_double2)
    + [asin\_double3](#asin_double3)
    + [asin\_double4](#asin_double4)
    + [asin\_float](#asin_float)
    + [asin\_float2](#asin_float2)
    + [asin\_float3](#asin_float3)
    + [asin\_float4](#asin_float4)
    + [asin\_half](#asin_half)
    + [asin\_half2](#asin_half2)
    + [asin\_half3](#asin_half3)
    + [asin\_half4](#asin_half4)
    + [asinh\_double](#asinh_double)
    + [asinh\_double2](#asinh_double2)
    + [asinh\_double3](#asinh_double3)
    + [asinh\_double4](#asinh_double4)
    + [asinh\_float](#asinh_float)
    + [asinh\_float2](#asinh_float2)
    + [asinh\_float3](#asinh_float3)
    + [asinh\_float4](#asinh_float4)
    + [asinh\_half](#asinh_half)
    + [asinh\_half2](#asinh_half2)
    + [asinh\_half3](#asinh_half3)
    + [asinh\_half4](#asinh_half4)
    + [asint\_bool2](#asint_bool2)
    + [asint\_bool3](#asint_bool3)
    + [asint\_bool4](#asint_bool4)
    + [asint\_double](#asint_double)
    + [asint\_double1x1](#asint_double1x1)
    + [asint\_double1x2](#asint_double1x2)
    + [asint\_double1x3](#asint_double1x3)
    + [asint\_double1x4](#asint_double1x4)
    + [asint\_double2](#asint_double2)
    + [asint\_double2x1](#asint_double2x1)
    + [asint\_double2x2](#asint_double2x2)
    + [asint\_double2x3](#asint_double2x3)
    + [asint\_double2x4](#asint_double2x4)
    + [asint\_double3](#asint_double3)
    + [asint\_double3x1](#asint_double3x1)
    + [asint\_double3x2](#asint_double3x2)
    + [asint\_double3x3](#asint_double3x3)
    + [asint\_double3x4](#asint_double3x4)
    + [asint\_double4](#asint_double4)
    + [asint\_double4x1](#asint_double4x1)
    + [asint\_double4x2](#asint_double4x2)
    + [asint\_double4x3](#asint_double4x3)
    + [asint\_double4x4](#asint_double4x4)
    + [asint\_float](#asint_float)
    + [asint\_float1x1](#asint_float1x1)
    + [asint\_float1x2](#asint_float1x2)
    + [asint\_float1x3](#asint_float1x3)
    + [asint\_float1x4](#asint_float1x4)
    + [asint\_float2](#asint_float2)
    + [asint\_float2x1](#asint_float2x1)
    + [asint\_float2x2](#asint_float2x2)
    + [asint\_float2x3](#asint_float2x3)
    + [asint\_float2x4](#asint_float2x4)
    + [asint\_float3](#asint_float3)
    + [asint\_float3x1](#asint_float3x1)
    + [asint\_float3x2](#asint_float3x2)
    + [asint\_float3x3](#asint_float3x3)
    + [asint\_float3x4](#asint_float3x4)
    + [asint\_float4](#asint_float4)
    + [asint\_float4x1](#asint_float4x1)
    + [asint\_float4x2](#asint_float4x2)
    + [asint\_float4x3](#asint_float4x3)
    + [asint\_float4x4](#asint_float4x4)
    + [asint\_half](#asint_half)
    + [asint\_half1x1](#asint_half1x1)
    + [asint\_half1x2](#asint_half1x2)
    + [asint\_half1x3](#asint_half1x3)
    + [asint\_half1x4](#asint_half1x4)
    + [asint\_half2](#asint_half2)
    + [asint\_half2x1](#asint_half2x1)
    + [asint\_half2x2](#asint_half2x2)
    + [asint\_half2x3](#asint_half2x3)
    + [asint\_half2x4](#asint_half2x4)
    + [asint\_half3](#asint_half3)
    + [asint\_half3x1](#asint_half3x1)
    + [asint\_half3x2](#asint_half3x2)
    + [asint\_half3x3](#asint_half3x3)
    + [asint\_half3x4](#asint_half3x4)
    + [asint\_half4](#asint_half4)
    + [asint\_half4x1](#asint_half4x1)
    + [asint\_half4x2](#asint_half4x2)
    + [asint\_half4x3](#asint_half4x3)
    + [asint\_half4x4](#asint_half4x4)
    + [asint\_int](#asint_int)
    + [asint\_int2](#asint_int2)
    + [asint\_int3](#asint_int3)
    + [asint\_int4](#asint_int4)
    + [asint\_uint](#asint_uint)
    + [asint\_uint2](#asint_uint2)
    + [asint\_uint3](#asint_uint3)
    + [asint\_uint4](#asint_uint4)
    + [asuint\_bool2](#asuint_bool2)
    + [asuint\_bool3](#asuint_bool3)
    + [asuint\_bool4](#asuint_bool4)
    + [asuint\_double](#asuint_double)
    + [asuint\_double2](#asuint_double2)
    + [asuint\_double3](#asuint_double3)
    + [asuint\_double4](#asuint_double4)
    + [asuint\_float](#asuint_float)
    + [asuint\_float2](#asuint_float2)
    + [asuint\_float3](#asuint_float3)
    + [asuint\_float4](#asuint_float4)
    + [asuint\_half](#asuint_half)
    + [asuint\_half2](#asuint_half2)
    + [asuint\_half3](#asuint_half3)
    + [asuint\_half4](#asuint_half4)
    + [asuint\_int](#asuint_int)
    + [asuint\_int2](#asuint_int2)
    + [asuint\_int3](#asuint_int3)
    + [asuint\_int4](#asuint_int4)
    + [asuint\_uint](#asuint_uint)
    + [asuint\_uint2](#asuint_uint2)
    + [asuint\_uint3](#asuint_uint3)
    + [asuint\_uint4](#asuint_uint4)
    + [atan2\_double](#atan2_double)
    + [atan2\_double2](#atan2_double2)
    + [atan2\_double3](#atan2_double3)
    + [atan2\_double4](#atan2_double4)
    + [atan2\_float](#atan2_float)
    + [atan2\_float2](#atan2_float2)
    + [atan2\_float3](#atan2_float3)
    + [atan2\_float4](#atan2_float4)
    + [atan2\_half](#atan2_half)
    + [atan2\_half2](#atan2_half2)
    + [atan2\_half3](#atan2_half3)
    + [atan2\_half4](#atan2_half4)
    + [atan\_double](#atan_double)
    + [atan\_double2](#atan_double2)
    + [atan\_double3](#atan_double3)
    + [atan\_double4](#atan_double4)
    + [atan\_float](#atan_float)
    + [atan\_float2](#atan_float2)
    + [atan\_float3](#atan_float3)
    + [atan\_float4](#atan_float4)
    + [atan\_half](#atan_half)
    + [atan\_half2](#atan_half2)
    + [atan\_half3](#atan_half3)
    + [atan\_half4](#atan_half4)
    + [atanh\_double](#atanh_double)
    + [atanh\_double2](#atanh_double2)
    + [atanh\_double3](#atanh_double3)
    + [atanh\_double4](#atanh_double4)
    + [atanh\_float](#atanh_float)
    + [atanh\_float2](#atanh_float2)
    + [atanh\_float3](#atanh_float3)
    + [atanh\_float4](#atanh_float4)
    + [atanh\_half](#atanh_half)
    + [atanh\_half2](#atanh_half2)
    + [atanh\_half3](#atanh_half3)
    + [atanh\_half4](#atanh_half4)
    + [ceil\_double](#ceil_double)
    + [ceil\_double2](#ceil_double2)
    + [ceil\_double3](#ceil_double3)
    + [ceil\_double4](#ceil_double4)
    + [ceil\_float](#ceil_float)
    + [ceil\_float2](#ceil_float2)
    + [ceil\_float3](#ceil_float3)
    + [ceil\_float4](#ceil_float4)
    + [ceil\_half](#ceil_half)
    + [ceil\_half2](#ceil_half2)
    + [ceil\_half3](#ceil_half3)
    + [ceil\_half4](#ceil_half4)
    + [clamp\_double](#clamp_double)
    + [clamp\_double2](#clamp_double2)
    + [clamp\_double3](#clamp_double3)
    + [clamp\_double4](#clamp_double4)
    + [clamp\_float](#clamp_float)
    + [clamp\_float2](#clamp_float2)
    + [clamp\_float3](#clamp_float3)
    + [clamp\_float4](#clamp_float4)
    + [clamp\_half](#clamp_half)
    + [clamp\_half2](#clamp_half2)
    + [clamp\_half3](#clamp_half3)
    + [clamp\_half4](#clamp_half4)
    + [clamp\_int](#clamp_int)
    + [clamp\_int2](#clamp_int2)
    + [clamp\_int3](#clamp_int3)
    + [clamp\_int4](#clamp_int4)
    + [clamp\_uint](#clamp_uint)
    + [clamp\_uint2](#clamp_uint2)
    + [clamp\_uint3](#clamp_uint3)
    + [clamp\_uint4](#clamp_uint4)
    + [cofactor\_matrix1x1](#cofactor_matrix1x1)
    + [cofactor\_matrix2x2](#cofactor_matrix2x2)
    + [cofactor\_matrix3x3](#cofactor_matrix3x3)
    + [cofactor\_matrix4x4](#cofactor_matrix4x4)
    + [cos\_double](#cos_double)
    + [cos\_double2](#cos_double2)
    + [cos\_double3](#cos_double3)
    + [cos\_double4](#cos_double4)
    + [cos\_float](#cos_float)
    + [cos\_float2](#cos_float2)
    + [cos\_float3](#cos_float3)
    + [cos\_float4](#cos_float4)
    + [cos\_half](#cos_half)
    + [cos\_half2](#cos_half2)
    + [cos\_half3](#cos_half3)
    + [cos\_half4](#cos_half4)
    + [cosh\_double](#cosh_double)
    + [cosh\_double2](#cosh_double2)
    + [cosh\_double3](#cosh_double3)
    + [cosh\_double4](#cosh_double4)
    + [cosh\_float](#cosh_float)
    + [cosh\_float2](#cosh_float2)
    + [cosh\_float3](#cosh_float3)
    + [cosh\_float4](#cosh_float4)
    + [cosh\_half](#cosh_half)
    + [cosh\_half2](#cosh_half2)
    + [cosh\_half3](#cosh_half3)
    + [cosh\_half4](#cosh_half4)
    + [cross\_double3](#cross_double3)
    + [cross\_float3](#cross_float3)
    + [cross\_half3](#cross_half3)
    + [cross\_int3](#cross_int3)
    + [degrees\_double](#degrees_double)
    + [degrees\_double2](#degrees_double2)
    + [degrees\_double3](#degrees_double3)
    + [degrees\_double4](#degrees_double4)
    + [degrees\_float](#degrees_float)
    + [degrees\_float2](#degrees_float2)
    + [degrees\_float3](#degrees_float3)
    + [degrees\_float4](#degrees_float4)
    + [degrees\_half](#degrees_half)
    + [degrees\_half2](#degrees_half2)
    + [degrees\_half3](#degrees_half3)
    + [degrees\_half4](#degrees_half4)
    + [determinant\_matrix1x1](#determinant_matrix1x1)
    + [determinant\_matrix2x2](#determinant_matrix2x2)
    + [determinant\_matrix3x3](#determinant_matrix3x3)
    + [determinant\_matrix4x4](#determinant_matrix4x4)
    + [distance\_double](#distance_double)
    + [distance\_double2](#distance_double2)
    + [distance\_double3](#distance_double3)
    + [distance\_double4](#distance_double4)
    + [distance\_float](#distance_float)
    + [distance\_float2](#distance_float2)
    + [distance\_float3](#distance_float3)
    + [distance\_float4](#distance_float4)
    + [distance\_half](#distance_half)
    + [distance\_half2](#distance_half2)
    + [distance\_half3](#distance_half3)
    + [distance\_half4](#distance_half4)
    + [dot\_double](#dot_double)
    + [dot\_double2](#dot_double2)
    + [dot\_double3](#dot_double3)
    + [dot\_double4](#dot_double4)
    + [dot\_float](#dot_float)
    + [dot\_float2](#dot_float2)
    + [dot\_float3](#dot_float3)
    + [dot\_float4](#dot_float4)
    + [dot\_half](#dot_half)
    + [dot\_half2](#dot_half2)
    + [dot\_half3](#dot_half3)
    + [dot\_half4](#dot_half4)
    + [dot\_int](#dot_int)
    + [dot\_int2](#dot_int2)
    + [dot\_int3](#dot_int3)
    + [dot\_int4](#dot_int4)
    + [dot\_uint](#dot_uint)
    + [dot\_uint2](#dot_uint2)
    + [dot\_uint3](#dot_uint3)
    + [dot\_uint4](#dot_uint4)
    + [equal\_double](#equal_double)
    + [equal\_double2](#equal_double2)
    + [equal\_double3](#equal_double3)
    + [equal\_double4](#equal_double4)
    + [equal\_float](#equal_float)
    + [equal\_float2](#equal_float2)
    + [equal\_float3](#equal_float3)
    + [equal\_float4](#equal_float4)
    + [equal\_half](#equal_half)
    + [equal\_half2](#equal_half2)
    + [equal\_half3](#equal_half3)
    + [equal\_half4](#equal_half4)
    + [equal\_int](#equal_int)
    + [equal\_int2](#equal_int2)
    + [equal\_int3](#equal_int3)
    + [equal\_int4](#equal_int4)
    + [equal\_uint](#equal_uint)
    + [equal\_uint2](#equal_uint2)
    + [equal\_uint3](#equal_uint3)
    + [equal\_uint4](#equal_uint4)
    + [exp2\_double](#exp2_double)
    + [exp2\_double2](#exp2_double2)
    + [exp2\_double3](#exp2_double3)
    + [exp2\_double4](#exp2_double4)
    + [exp2\_float](#exp2_float)
    + [exp2\_float2](#exp2_float2)
    + [exp2\_float3](#exp2_float3)
    + [exp2\_float4](#exp2_float4)
    + [exp2\_half](#exp2_half)
    + [exp2\_half2](#exp2_half2)
    + [exp2\_half3](#exp2_half3)
    + [exp2\_half4](#exp2_half4)
    + [exp\_double](#exp_double)
    + [exp\_double2](#exp_double2)
    + [exp\_double3](#exp_double3)
    + [exp\_double4](#exp_double4)
    + [exp\_float](#exp_float)
    + [exp\_float2](#exp_float2)
    + [exp\_float3](#exp_float3)
    + [exp\_float4](#exp_float4)
    + [exp\_half](#exp_half)
    + [exp\_half2](#exp_half2)
    + [exp\_half3](#exp_half3)
    + [exp\_half4](#exp_half4)
    + [faceforward\_double](#faceforward_double)
    + [faceforward\_double2](#faceforward_double2)
    + [faceforward\_double3](#faceforward_double3)
    + [faceforward\_double4](#faceforward_double4)
    + [faceforward\_float](#faceforward_float)
    + [faceforward\_float2](#faceforward_float2)
    + [faceforward\_float3](#faceforward_float3)
    + [faceforward\_float4](#faceforward_float4)
    + [faceforward\_half](#faceforward_half)
    + [faceforward\_half2](#faceforward_half2)
    + [faceforward\_half3](#faceforward_half3)
    + [faceforward\_half4](#faceforward_half4)
    + [floor\_double](#floor_double)
    + [floor\_double2](#floor_double2)
    + [floor\_double3](#floor_double3)
    + [floor\_double4](#floor_double4)
    + [floor\_float](#floor_float)
    + [floor\_float2](#floor_float2)
    + [floor\_float3](#floor_float3)
    + [floor\_float4](#floor_float4)
    + [floor\_half](#floor_half)
    + [floor\_half2](#floor_half2)
    + [floor\_half3](#floor_half3)
    + [floor\_half4](#floor_half4)
    + [fmod\_double](#fmod_double)
    + [fmod\_double2](#fmod_double2)
    + [fmod\_double3](#fmod_double3)
    + [fmod\_double4](#fmod_double4)
    + [fmod\_float](#fmod_float)
    + [fmod\_float2](#fmod_float2)
    + [fmod\_float3](#fmod_float3)
    + [fmod\_float4](#fmod_float4)
    + [fmod\_half](#fmod_half)
    + [fmod\_half2](#fmod_half2)
    + [fmod\_half3](#fmod_half3)
    + [fmod\_half4](#fmod_half4)
    + [frac\_double](#frac_double)
    + [frac\_double2](#frac_double2)
    + [frac\_double3](#frac_double3)
    + [frac\_double4](#frac_double4)
    + [frac\_float](#frac_float)
    + [frac\_float2](#frac_float2)
    + [frac\_float3](#frac_float3)
    + [frac\_float4](#frac_float4)
    + [frac\_half](#frac_half)
    + [frac\_half2](#frac_half2)
    + [frac\_half3](#frac_half3)
    + [frac\_half4](#frac_half4)
    + [greaterThanEqual\_double](#greaterThanEqual_double)
    + [greaterThanEqual\_double2](#greaterThanEqual_double2)
    + [greaterThanEqual\_double3](#greaterThanEqual_double3)
    + [greaterThanEqual\_double4](#greaterThanEqual_double4)
    + [greaterThanEqual\_float](#greaterThanEqual_float)
    + [greaterThanEqual\_float2](#greaterThanEqual_float2)
    + [greaterThanEqual\_float3](#greaterThanEqual_float3)
    + [greaterThanEqual\_float4](#greaterThanEqual_float4)
    + [greaterThanEqual\_half](#greaterThanEqual_half)
    + [greaterThanEqual\_half2](#greaterThanEqual_half2)
    + [greaterThanEqual\_half3](#greaterThanEqual_half3)
    + [greaterThanEqual\_half4](#greaterThanEqual_half4)
    + [greaterThanEqual\_int](#greaterThanEqual_int)
    + [greaterThanEqual\_int2](#greaterThanEqual_int2)
    + [greaterThanEqual\_int3](#greaterThanEqual_int3)
    + [greaterThanEqual\_int4](#greaterThanEqual_int4)
    + [greaterThanEqual\_uint](#greaterThanEqual_uint)
    + [greaterThanEqual\_uint2](#greaterThanEqual_uint2)
    + [greaterThanEqual\_uint3](#greaterThanEqual_uint3)
    + [greaterThanEqual\_uint4](#greaterThanEqual_uint4)
    + [greaterThan\_double](#greaterThan_double)
    + [greaterThan\_double2](#greaterThan_double2)
    + [greaterThan\_double3](#greaterThan_double3)
    + [greaterThan\_double4](#greaterThan_double4)
    + [greaterThan\_float](#greaterThan_float)
    + [greaterThan\_float2](#greaterThan_float2)
    + [greaterThan\_float3](#greaterThan_float3)
    + [greaterThan\_float4](#greaterThan_float4)
    + [greaterThan\_half](#greaterThan_half)
    + [greaterThan\_half2](#greaterThan_half2)
    + [greaterThan\_half3](#greaterThan_half3)
    + [greaterThan\_half4](#greaterThan_half4)
    + [greaterThan\_int](#greaterThan_int)
    + [greaterThan\_int2](#greaterThan_int2)
    + [greaterThan\_int3](#greaterThan_int3)
    + [greaterThan\_int4](#greaterThan_int4)
    + [greaterThan\_uint](#greaterThan_uint)
    + [greaterThan\_uint2](#greaterThan_uint2)
    + [greaterThan\_uint3](#greaterThan_uint3)
    + [greaterThan\_uint4](#greaterThan_uint4)
    + [hermitian\_adjoint](#hermitian_adjoint)
    + [inverse\_double1x1](#inverse_double1x1)
    + [inverse\_double2x2](#inverse_double2x2)
    + [inverse\_double3x3](#inverse_double3x3)
    + [inverse\_double4x4](#inverse_double4x4)
    + [inverse\_float1x1](#inverse_float1x1)
    + [inverse\_float2x2](#inverse_float2x2)
    + [inverse\_float3x3](#inverse_float3x3)
    + [inverse\_float4x4](#inverse_float4x4)
    + [inverse\_half1x1](#inverse_half1x1)
    + [inverse\_half2x2](#inverse_half2x2)
    + [inverse\_half3x3](#inverse_half3x3)
    + [inverse\_half4x4](#inverse_half4x4)
    + [inverse\_matrix1x1](#inverse_matrix1x1)
    + [inverse\_matrix2x2](#inverse_matrix2x2)
    + [inverse\_matrix3x3](#inverse_matrix3x3)
    + [inverse\_matrix4x4](#inverse_matrix4x4)
    + [inverse\_transpose\_matrix1x1](#inverse_transpose_matrix1x1)
    + [inverse\_transpose\_matrix2x2](#inverse_transpose_matrix2x2)
    + [inverse\_transpose\_matrix3x3](#inverse_transpose_matrix3x3)
    + [inverse\_transpose\_matrix4x4](#inverse_transpose_matrix4x4)
    + [isfinite\_double](#isfinite_double)
    + [isfinite\_double2](#isfinite_double2)
    + [isfinite\_double3](#isfinite_double3)
    + [isfinite\_double4](#isfinite_double4)
    + [isfinite\_float](#isfinite_float)
    + [isfinite\_float2](#isfinite_float2)
    + [isfinite\_float3](#isfinite_float3)
    + [isfinite\_float4](#isfinite_float4)
    + [isfinite\_half](#isfinite_half)
    + [isfinite\_half2](#isfinite_half2)
    + [isfinite\_half3](#isfinite_half3)
    + [isfinite\_half4](#isfinite_half4)
    + [isinf\_double](#isinf_double)
    + [isinf\_double2](#isinf_double2)
    + [isinf\_double3](#isinf_double3)
    + [isinf\_double4](#isinf_double4)
    + [isinf\_float](#isinf_float)
    + [isinf\_float2](#isinf_float2)
    + [isinf\_float3](#isinf_float3)
    + [isinf\_float4](#isinf_float4)
    + [isinf\_half](#isinf_half)
    + [isinf\_half2](#isinf_half2)
    + [isinf\_half3](#isinf_half3)
    + [isinf\_half4](#isinf_half4)
    + [isnan\_double](#isnan_double)
    + [isnan\_double2](#isnan_double2)
    + [isnan\_double3](#isnan_double3)
    + [isnan\_double4](#isnan_double4)
    + [isnan\_float](#isnan_float)
    + [isnan\_float2](#isnan_float2)
    + [isnan\_float3](#isnan_float3)
    + [isnan\_float4](#isnan_float4)
    + [isnan\_half](#isnan_half)
    + [isnan\_half2](#isnan_half2)
    + [isnan\_half3](#isnan_half3)
    + [isnan\_half4](#isnan_half4)
    + [length\_double](#length_double)
    + [length\_double2](#length_double2)
    + [length\_double3](#length_double3)
    + [length\_double4](#length_double4)
    + [length\_float](#length_float)
    + [length\_float2](#length_float2)
    + [length\_float3](#length_float3)
    + [length\_float4](#length_float4)
    + [length\_half](#length_half)
    + [length\_half2](#length_half2)
    + [length\_half3](#length_half3)
    + [length\_half4](#length_half4)
    + [lerp\_double](#lerp_double)
    + [lerp\_double2](#lerp_double2)
    + [lerp\_double3](#lerp_double3)
    + [lerp\_double4](#lerp_double4)
    + [lerp\_float](#lerp_float)
    + [lerp\_float2](#lerp_float2)
    + [lerp\_float3](#lerp_float3)
    + [lerp\_float4](#lerp_float4)
    + [lerp\_half](#lerp_half)
    + [lerp\_half2](#lerp_half2)
    + [lerp\_half3](#lerp_half3)
    + [lerp\_half4](#lerp_half4)
    + [lessThanEqual\_double](#lessThanEqual_double)
    + [lessThanEqual\_double2](#lessThanEqual_double2)
    + [lessThanEqual\_double3](#lessThanEqual_double3)
    + [lessThanEqual\_double4](#lessThanEqual_double4)
    + [lessThanEqual\_float](#lessThanEqual_float)
    + [lessThanEqual\_float2](#lessThanEqual_float2)
    + [lessThanEqual\_float3](#lessThanEqual_float3)
    + [lessThanEqual\_float4](#lessThanEqual_float4)
    + [lessThanEqual\_half](#lessThanEqual_half)
    + [lessThanEqual\_half2](#lessThanEqual_half2)
    + [lessThanEqual\_half3](#lessThanEqual_half3)
    + [lessThanEqual\_half4](#lessThanEqual_half4)
    + [lessThanEqual\_int](#lessThanEqual_int)
    + [lessThanEqual\_int2](#lessThanEqual_int2)
    + [lessThanEqual\_int3](#lessThanEqual_int3)
    + [lessThanEqual\_int4](#lessThanEqual_int4)
    + [lessThanEqual\_uint](#lessThanEqual_uint)
    + [lessThanEqual\_uint2](#lessThanEqual_uint2)
    + [lessThanEqual\_uint3](#lessThanEqual_uint3)
    + [lessThanEqual\_uint4](#lessThanEqual_uint4)
    + [lessThan\_double](#lessThan_double)
    + [lessThan\_double2](#lessThan_double2)
    + [lessThan\_double3](#lessThan_double3)
    + [lessThan\_double4](#lessThan_double4)
    + [lessThan\_float](#lessThan_float)
    + [lessThan\_float2](#lessThan_float2)
    + [lessThan\_float3](#lessThan_float3)
    + [lessThan\_float4](#lessThan_float4)
    + [lessThan\_half](#lessThan_half)
    + [lessThan\_half2](#lessThan_half2)
    + [lessThan\_half3](#lessThan_half3)
    + [lessThan\_half4](#lessThan_half4)
    + [lessThan\_int](#lessThan_int)
    + [lessThan\_int2](#lessThan_int2)
    + [lessThan\_int3](#lessThan_int3)
    + [lessThan\_int4](#lessThan_int4)
    + [lessThan\_uint](#lessThan_uint)
    + [lessThan\_uint2](#lessThan_uint2)
    + [lessThan\_uint3](#lessThan_uint3)
    + [lessThan\_uint4](#lessThan_uint4)
    + [log10\_double](#log10_double)
    + [log10\_double2](#log10_double2)
    + [log10\_double3](#log10_double3)
    + [log10\_double4](#log10_double4)
    + [log10\_float](#log10_float)
    + [log10\_float2](#log10_float2)
    + [log10\_float3](#log10_float3)
    + [log10\_float4](#log10_float4)
    + [log10\_half](#log10_half)
    + [log10\_half2](#log10_half2)
    + [log10\_half3](#log10_half3)
    + [log10\_half4](#log10_half4)
    + [log2\_double](#log2_double)
    + [log2\_double2](#log2_double2)
    + [log2\_double3](#log2_double3)
    + [log2\_double4](#log2_double4)
    + [log2\_float](#log2_float)
    + [log2\_float2](#log2_float2)
    + [log2\_float3](#log2_float3)
    + [log2\_float4](#log2_float4)
    + [log2\_half](#log2_half)
    + [log2\_half2](#log2_half2)
    + [log2\_half3](#log2_half3)
    + [log2\_half4](#log2_half4)
    + [log\_double](#log_double)
    + [log\_double2](#log_double2)
    + [log\_double3](#log_double3)
    + [log\_double4](#log_double4)
    + [log\_float](#log_float)
    + [log\_float2](#log_float2)
    + [log\_float3](#log_float3)
    + [log\_float4](#log_float4)
    + [log\_half](#log_half)
    + [log\_half2](#log_half2)
    + [log\_half3](#log_half3)
    + [log\_half4](#log_half4)
    + [matrix\_minor](#matrix_minor)
    + [max\_double](#max_double)
    + [max\_double2](#max_double2)
    + [max\_double3](#max_double3)
    + [max\_double4](#max_double4)
    + [max\_float](#max_float)
    + [max\_float2](#max_float2)
    + [max\_float3](#max_float3)
    + [max\_float4](#max_float4)
    + [max\_half](#max_half)
    + [max\_half2](#max_half2)
    + [max\_half3](#max_half3)
    + [max\_half4](#max_half4)
    + [max\_int](#max_int)
    + [max\_int2](#max_int2)
    + [max\_int3](#max_int3)
    + [max\_int4](#max_int4)
    + [max\_uint](#max_uint)
    + [max\_uint2](#max_uint2)
    + [max\_uint3](#max_uint3)
    + [max\_uint4](#max_uint4)
    + [min\_double](#min_double)
    + [min\_double2](#min_double2)
    + [min\_double3](#min_double3)
    + [min\_double4](#min_double4)
    + [min\_float](#min_float)
    + [min\_float2](#min_float2)
    + [min\_float3](#min_float3)
    + [min\_float4](#min_float4)
    + [min\_half](#min_half)
    + [min\_half2](#min_half2)
    + [min\_half3](#min_half3)
    + [min\_half4](#min_half4)
    + [min\_int](#min_int)
    + [min\_int2](#min_int2)
    + [min\_int3](#min_int3)
    + [min\_int4](#min_int4)
    + [min\_uint](#min_uint)
    + [min\_uint2](#min_uint2)
    + [min\_uint3](#min_uint3)
    + [min\_uint4](#min_uint4)
    + [normalize\_double](#normalize_double)
    + [normalize\_double2](#normalize_double2)
    + [normalize\_double3](#normalize_double3)
    + [normalize\_double4](#normalize_double4)
    + [normalize\_float](#normalize_float)
    + [normalize\_float2](#normalize_float2)
    + [normalize\_float3](#normalize_float3)
    + [normalize\_float4](#normalize_float4)
    + [normalize\_half](#normalize_half)
    + [normalize\_half2](#normalize_half2)
    + [normalize\_half3](#normalize_half3)
    + [normalize\_half4](#normalize_half4)
    + [notEqual\_double](#notEqual_double)
    + [notEqual\_double2](#notEqual_double2)
    + [notEqual\_double3](#notEqual_double3)
    + [notEqual\_double4](#notEqual_double4)
    + [notEqual\_float](#notEqual_float)
    + [notEqual\_float2](#notEqual_float2)
    + [notEqual\_float3](#notEqual_float3)
    + [notEqual\_float4](#notEqual_float4)
    + [notEqual\_half](#notEqual_half)
    + [notEqual\_half2](#notEqual_half2)
    + [notEqual\_half3](#notEqual_half3)
    + [notEqual\_half4](#notEqual_half4)
    + [notEqual\_int](#notEqual_int)
    + [notEqual\_int2](#notEqual_int2)
    + [notEqual\_int3](#notEqual_int3)
    + [notEqual\_int4](#notEqual_int4)
    + [notEqual\_uint](#notEqual_uint)
    + [notEqual\_uint2](#notEqual_uint2)
    + [notEqual\_uint3](#notEqual_uint3)
    + [notEqual\_uint4](#notEqual_uint4)
    + [not\_bool](#not_bool)
    + [not\_bool2](#not_bool2)
    + [not\_bool3](#not_bool3)
    + [not\_bool4](#not_bool4)
    + [pow\_double](#pow_double)
    + [pow\_double2](#pow_double2)
    + [pow\_double3](#pow_double3)
    + [pow\_double4](#pow_double4)
    + [pow\_float](#pow_float)
    + [pow\_float2](#pow_float2)
    + [pow\_float3](#pow_float3)
    + [pow\_float4](#pow_float4)
    + [pow\_half](#pow_half)
    + [pow\_half2](#pow_half2)
    + [pow\_half3](#pow_half3)
    + [pow\_half4](#pow_half4)
    + [radians\_double](#radians_double)
    + [radians\_double2](#radians_double2)
    + [radians\_double3](#radians_double3)
    + [radians\_double4](#radians_double4)
    + [radians\_float](#radians_float)
    + [radians\_float2](#radians_float2)
    + [radians\_float3](#radians_float3)
    + [radians\_float4](#radians_float4)
    + [radians\_half](#radians_half)
    + [radians\_half2](#radians_half2)
    + [radians\_half3](#radians_half3)
    + [radians\_half4](#radians_half4)
    + [rcp\_double](#rcp_double)
    + [rcp\_double2](#rcp_double2)
    + [rcp\_double3](#rcp_double3)
    + [rcp\_double4](#rcp_double4)
    + [rcp\_float](#rcp_float)
    + [rcp\_float2](#rcp_float2)
    + [rcp\_float3](#rcp_float3)
    + [rcp\_float4](#rcp_float4)
    + [rcp\_half](#rcp_half)
    + [rcp\_half2](#rcp_half2)
    + [rcp\_half3](#rcp_half3)
    + [rcp\_half4](#rcp_half4)
    + [reflect\_double](#reflect_double)
    + [reflect\_double2](#reflect_double2)
    + [reflect\_double3](#reflect_double3)
    + [reflect\_double4](#reflect_double4)
    + [reflect\_float](#reflect_float)
    + [reflect\_float2](#reflect_float2)
    + [reflect\_float3](#reflect_float3)
    + [reflect\_float4](#reflect_float4)
    + [reflect\_half](#reflect_half)
    + [reflect\_half2](#reflect_half2)
    + [reflect\_half3](#reflect_half3)
    + [reflect\_half4](#reflect_half4)
    + [refract\_double](#refract_double)
    + [refract\_double2](#refract_double2)
    + [refract\_double3](#refract_double3)
    + [refract\_double4](#refract_double4)
    + [refract\_float](#refract_float)
    + [refract\_float2](#refract_float2)
    + [refract\_float3](#refract_float3)
    + [refract\_float4](#refract_float4)
    + [refract\_half](#refract_half)
    + [refract\_half2](#refract_half2)
    + [refract\_half3](#refract_half3)
    + [refract\_half4](#refract_half4)
    + [round\_double](#round_double)
    + [round\_double2](#round_double2)
    + [round\_double3](#round_double3)
    + [round\_double4](#round_double4)
    + [round\_float](#round_float)
    + [round\_float2](#round_float2)
    + [round\_float3](#round_float3)
    + [round\_float4](#round_float4)
    + [round\_half](#round_half)
    + [round\_half2](#round_half2)
    + [round\_half3](#round_half3)
    + [round\_half4](#round_half4)
    + [rsqrt\_double](#rsqrt_double)
    + [rsqrt\_double2](#rsqrt_double2)
    + [rsqrt\_double3](#rsqrt_double3)
    + [rsqrt\_double4](#rsqrt_double4)
    + [rsqrt\_float](#rsqrt_float)
    + [rsqrt\_float2](#rsqrt_float2)
    + [rsqrt\_float3](#rsqrt_float3)
    + [rsqrt\_float4](#rsqrt_float4)
    + [rsqrt\_half](#rsqrt_half)
    + [rsqrt\_half2](#rsqrt_half2)
    + [rsqrt\_half3](#rsqrt_half3)
    + [rsqrt\_half4](#rsqrt_half4)
    + [saturate\_double](#saturate_double)
    + [saturate\_double2](#saturate_double2)
    + [saturate\_double3](#saturate_double3)
    + [saturate\_double4](#saturate_double4)
    + [saturate\_float](#saturate_float)
    + [saturate\_float2](#saturate_float2)
    + [saturate\_float3](#saturate_float3)
    + [saturate\_float4](#saturate_float4)
    + [saturate\_half](#saturate_half)
    + [saturate\_half2](#saturate_half2)
    + [saturate\_half3](#saturate_half3)
    + [saturate\_half4](#saturate_half4)
    + [saturate\_int](#saturate_int)
    + [saturate\_int2](#saturate_int2)
    + [saturate\_int3](#saturate_int3)
    + [saturate\_int4](#saturate_int4)
    + [saturate\_uint](#saturate_uint)
    + [saturate\_uint2](#saturate_uint2)
    + [saturate\_uint3](#saturate_uint3)
    + [saturate\_uint4](#saturate_uint4)
    + [scalarTripleProduct\_double3](#scalarTripleProduct_double3)
    + [scalarTripleProduct\_float3](#scalarTripleProduct_float3)
    + [scalarTripleProduct\_half3](#scalarTripleProduct_half3)
    + [scalarTripleProduct\_int3](#scalarTripleProduct_int3)
    + [sign\_double](#sign_double)
    + [sign\_double2](#sign_double2)
    + [sign\_double3](#sign_double3)
    + [sign\_double4](#sign_double4)
    + [sign\_float](#sign_float)
    + [sign\_float2](#sign_float2)
    + [sign\_float3](#sign_float3)
    + [sign\_float4](#sign_float4)
    + [sign\_half](#sign_half)
    + [sign\_half2](#sign_half2)
    + [sign\_half3](#sign_half3)
    + [sign\_half4](#sign_half4)
    + [sign\_int](#sign_int)
    + [sign\_int2](#sign_int2)
    + [sign\_int3](#sign_int3)
    + [sign\_int4](#sign_int4)
    + [sign\_uint](#sign_uint)
    + [sign\_uint2](#sign_uint2)
    + [sign\_uint3](#sign_uint3)
    + [sign\_uint4](#sign_uint4)
    + [sin\_double](#sin_double)
    + [sin\_double2](#sin_double2)
    + [sin\_double3](#sin_double3)
    + [sin\_double4](#sin_double4)
    + [sin\_float](#sin_float)
    + [sin\_float2](#sin_float2)
    + [sin\_float3](#sin_float3)
    + [sin\_float4](#sin_float4)
    + [sin\_half](#sin_half)
    + [sin\_half2](#sin_half2)
    + [sin\_half3](#sin_half3)
    + [sin\_half4](#sin_half4)
    + [sinh\_double](#sinh_double)
    + [sinh\_double2](#sinh_double2)
    + [sinh\_double3](#sinh_double3)
    + [sinh\_double4](#sinh_double4)
    + [sinh\_float](#sinh_float)
    + [sinh\_float2](#sinh_float2)
    + [sinh\_float3](#sinh_float3)
    + [sinh\_float4](#sinh_float4)
    + [sinh\_half](#sinh_half)
    + [sinh\_half2](#sinh_half2)
    + [sinh\_half3](#sinh_half3)
    + [sinh\_half4](#sinh_half4)
    + [smoothstep\_double](#smoothstep_double)
    + [smoothstep\_double2](#smoothstep_double2)
    + [smoothstep\_double3](#smoothstep_double3)
    + [smoothstep\_double4](#smoothstep_double4)
    + [smoothstep\_float](#smoothstep_float)
    + [smoothstep\_float2](#smoothstep_float2)
    + [smoothstep\_float3](#smoothstep_float3)
    + [smoothstep\_float4](#smoothstep_float4)
    + [smoothstep\_half](#smoothstep_half)
    + [smoothstep\_half2](#smoothstep_half2)
    + [smoothstep\_half3](#smoothstep_half3)
    + [smoothstep\_half4](#smoothstep_half4)
    + [sqrt\_double](#sqrt_double)
    + [sqrt\_double2](#sqrt_double2)
    + [sqrt\_double3](#sqrt_double3)
    + [sqrt\_double4](#sqrt_double4)
    + [sqrt\_float](#sqrt_float)
    + [sqrt\_float2](#sqrt_float2)
    + [sqrt\_float3](#sqrt_float3)
    + [sqrt\_float4](#sqrt_float4)
    + [sqrt\_half](#sqrt_half)
    + [sqrt\_half2](#sqrt_half2)
    + [sqrt\_half3](#sqrt_half3)
    + [sqrt\_half4](#sqrt_half4)
    + [step\_double](#step_double)
    + [step\_double2](#step_double2)
    + [step\_double3](#step_double3)
    + [step\_double4](#step_double4)
    + [step\_float](#step_float)
    + [step\_float2](#step_float2)
    + [step\_float3](#step_float3)
    + [step\_float4](#step_float4)
    + [step\_half](#step_half)
    + [step\_half2](#step_half2)
    + [step\_half3](#step_half3)
    + [step\_half4](#step_half4)
    + [tan\_double](#tan_double)
    + [tan\_double2](#tan_double2)
    + [tan\_double3](#tan_double3)
    + [tan\_double4](#tan_double4)
    + [tan\_float](#tan_float)
    + [tan\_float2](#tan_float2)
    + [tan\_float3](#tan_float3)
    + [tan\_float4](#tan_float4)
    + [tan\_half](#tan_half)
    + [tan\_half2](#tan_half2)
    + [tan\_half3](#tan_half3)
    + [tan\_half4](#tan_half4)
    + [tanh\_double](#tanh_double)
    + [tanh\_double2](#tanh_double2)
    + [tanh\_double3](#tanh_double3)
    + [tanh\_double4](#tanh_double4)
    + [tanh\_float](#tanh_float)
    + [tanh\_float2](#tanh_float2)
    + [tanh\_float3](#tanh_float3)
    + [tanh\_float4](#tanh_float4)
    + [tanh\_half](#tanh_half)
    + [tanh\_half2](#tanh_half2)
    + [tanh\_half3](#tanh_half3)
    + [tanh\_half4](#tanh_half4)
    + [trace](#trace)
    + [transpose](#transpose)
    + [vectorTripleProduct\_double3](#vectorTripleProduct_double3)
    + [vectorTripleProduct\_float3](#vectorTripleProduct_float3)
    + [vectorTripleProduct\_half3](#vectorTripleProduct_half3)
    + [vectorTripleProduct\_int3](#vectorTripleProduct_int3)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [abs](#abs)
    + [acos](#acos)
    + [acosh](#acosh)
    + [adjugate](#adjugate)
    + [all](#all)
    + [any](#any)
    + [asdouble](#asdouble)
    + [asfloat](#asfloat)
    + [ashalf](#ashalf)
    + [asin](#asin)
    + [asinh](#asinh)
    + [asint](#asint)
    + [asuint](#asuint)
    + [atan](#atan)
    + [atan2](#atan2)
    + [atanh](#atanh)
    + [ceil](#ceil)
    + [clamp](#clamp)
    + [cofactor](#cofactor)
    + [cos](#cos)
    + [cosh](#cosh)
    + [cross](#cross)
    + [degrees](#degrees)
    + [determinant](#determinant)
    + [distance](#distance)
    + [dot](#dot)
    + [equal](#equal)
    + [exp](#exp)
    + [exp2](#exp2)
    + [faceforward](#faceforward)
    + [floor](#floor)
    + [fmod](#fmod)
    + [frac](#frac)
    + [greaterThan](#greaterThan)
    + [greaterThanEqual](#greaterThanEqual)
    + [inverse](#inverse)
    + [inverse\_transpose](#inverse_transpose)
    + [isfinite](#isfinite)
    + [isinf](#isinf)
    + [isnan](#isnan)
    + [length](#length)
    + [lerp](#lerp)
    + [lessThan](#lessThan)
    + [lessThanEqual](#lessThanEqual)
    + [log](#log)
    + [log10](#log10)
    + [log2](#log2)
    + [max](#max)
    + [min](#min)
    + [normalize](#normalize)
    + [not](#not)
    + [notEqual](#notEqual)
    + [pow](#pow)
    + [radians](#radians)
    + [rcp](#rcp)
    + [reflect](#reflect)
    + [refract](#refract)
    + [round](#round)
    + [rsqrt](#rsqrt)
    + [saturate](#saturate)
    + [scalarTripleProduct](#scalarTripleProduct)
    + [sign](#sign)
    + [sin](#sin)
    + [sinh](#sinh)
    + [smoothstep](#smoothstep)
    + [sqrt](#sqrt)
    + [step](#step)
    + [tan](#tan)
    + [tanh](#tanh)
    + [vectorTripleProduct](#vectorTripleProduct)
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