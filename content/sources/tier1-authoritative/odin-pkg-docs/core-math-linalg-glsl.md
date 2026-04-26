package math/linalg/glsl - pkg.odin-lang.org 






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



Current Package: *[math\_linalg\_glsl](/core/math/linalg/glsl)*

  

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
4. [glsl](/core/math/linalg/glsl)

# package core:math/linalg/glsl [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`GLSL`-like mathematics library plus numerous other utility procedures.

## Index

Types (41)

* [bvec2](#bvec2)
* [bvec3](#bvec3)
* [bvec4](#bvec4)
* [dmat2](#dmat2)
* [dmat2x2](#dmat2x2)
* [dmat2x3](#dmat2x3)
* [dmat2x4](#dmat2x4)
* [dmat3](#dmat3)
* [dmat3x2](#dmat3x2)
* [dmat3x3](#dmat3x3)
* [dmat3x4](#dmat3x4)
* [dmat4](#dmat4)
* [dmat4x2](#dmat4x2)
* [dmat4x3](#dmat4x3)
* [dmat4x4](#dmat4x4)
* [dquat](#dquat)
* [dvec2](#dvec2)
* [dvec3](#dvec3)
* [dvec4](#dvec4)
* [ivec2](#ivec2)
* [ivec3](#ivec3)
* [ivec4](#ivec4)
* [mat2](#mat2)
* [mat2x2](#mat2x2)
* [mat2x3](#mat2x3)
* [mat2x4](#mat2x4)
* [mat3](#mat3)
* [mat3x2](#mat3x2)
* [mat3x3](#mat3x3)
* [mat3x4](#mat3x4)
* [mat4](#mat4)
* [mat4x2](#mat4x2)
* [mat4x3](#mat4x3)
* [mat4x4](#mat4x4)
* [quat](#quat)
* [uvec2](#uvec2)
* [uvec3](#uvec3)
* [uvec4](#uvec4)
* [vec2](#vec2)
* [vec3](#vec3)
* [vec4](#vec4)

Constants (13)

* [E](#E)
* [F32\_EPSILON](#F32_EPSILON)
* [F64\_EPSILON](#F64_EPSILON)
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

Procedures (594)

* [abs\_dvec2](#abs_dvec2)
* [abs\_dvec3](#abs_dvec3)
* [abs\_dvec4](#abs_dvec4)
* [abs\_f32](#abs_f32)
* [abs\_f64](#abs_f64)
* [abs\_i32](#abs_i32)
* [abs\_ivec2](#abs_ivec2)
* [abs\_ivec3](#abs_ivec3)
* [abs\_ivec4](#abs_ivec4)
* [abs\_u32](#abs_u32)
* [abs\_uvec2](#abs_uvec2)
* [abs\_uvec3](#abs_uvec3)
* [abs\_uvec4](#abs_uvec4)
* [abs\_vec2](#abs_vec2)
* [abs\_vec3](#abs_vec3)
* [abs\_vec4](#abs_vec4)
* [acos\_dvec2](#acos_dvec2)
* [acos\_dvec3](#acos_dvec3)
* [acos\_dvec4](#acos_dvec4)
* [acos\_f32](#acos_f32)
* [acos\_f64](#acos_f64)
* [acos\_vec2](#acos_vec2)
* [acos\_vec3](#acos_vec3)
* [acos\_vec4](#acos_vec4)
* [acosh\_dvec2](#acosh_dvec2)
* [acosh\_dvec3](#acosh_dvec3)
* [acosh\_dvec4](#acosh_dvec4)
* [acosh\_f32](#acosh_f32)
* [acosh\_f64](#acosh_f64)
* [acosh\_vec2](#acosh_vec2)
* [acosh\_vec3](#acosh_vec3)
* [acosh\_vec4](#acosh_vec4)
* [adjugate\_matrix1x1](#adjugate_matrix1x1)
* [adjugate\_matrix2x2](#adjugate_matrix2x2)
* [adjugate\_matrix3x3](#adjugate_matrix3x3)
* [adjugate\_matrix4x4](#adjugate_matrix4x4)
* [all\_bool](#all_bool)
* [all\_bvec2](#all_bvec2)
* [all\_bvec3](#all_bvec3)
* [all\_bvec4](#all_bvec4)
* [any\_bool](#any_bool)
* [any\_bvec2](#any_bvec2)
* [any\_bvec3](#any_bvec3)
* [any\_bvec4](#any_bvec4)
* [asin\_dvec2](#asin_dvec2)
* [asin\_dvec3](#asin_dvec3)
* [asin\_dvec4](#asin_dvec4)
* [asin\_f32](#asin_f32)
* [asin\_f64](#asin_f64)
* [asin\_vec2](#asin_vec2)
* [asin\_vec3](#asin_vec3)
* [asin\_vec4](#asin_vec4)
* [asinh\_dvec2](#asinh_dvec2)
* [asinh\_dvec3](#asinh_dvec3)
* [asinh\_dvec4](#asinh_dvec4)
* [asinh\_f32](#asinh_f32)
* [asinh\_f64](#asinh_f64)
* [asinh\_vec2](#asinh_vec2)
* [asinh\_vec3](#asinh_vec3)
* [asinh\_vec4](#asinh_vec4)
* [atan2\_dvec2](#atan2_dvec2)
* [atan2\_dvec3](#atan2_dvec3)
* [atan2\_dvec4](#atan2_dvec4)
* [atan2\_f32](#atan2_f32)
* [atan2\_f64](#atan2_f64)
* [atan2\_vec2](#atan2_vec2)
* [atan2\_vec3](#atan2_vec3)
* [atan2\_vec4](#atan2_vec4)
* [atan\_dvec2](#atan_dvec2)
* [atan\_dvec3](#atan_dvec3)
* [atan\_dvec4](#atan_dvec4)
* [atan\_f32](#atan_f32)
* [atan\_f64](#atan_f64)
* [atan\_vec2](#atan_vec2)
* [atan\_vec3](#atan_vec3)
* [atan\_vec4](#atan_vec4)
* [atanh\_dvec2](#atanh_dvec2)
* [atanh\_dvec3](#atanh_dvec3)
* [atanh\_dvec4](#atanh_dvec4)
* [atanh\_f32](#atanh_f32)
* [atanh\_f64](#atanh_f64)
* [atanh\_vec2](#atanh_vec2)
* [atanh\_vec3](#atanh_vec3)
* [atanh\_vec4](#atanh_vec4)
* [ceil\_dvec2](#ceil_dvec2)
* [ceil\_dvec3](#ceil_dvec3)
* [ceil\_dvec4](#ceil_dvec4)
* [ceil\_f32](#ceil_f32)
* [ceil\_f64](#ceil_f64)
* [ceil\_vec2](#ceil_vec2)
* [ceil\_vec3](#ceil_vec3)
* [ceil\_vec4](#ceil_vec4)
* [clamp\_dvec2](#clamp_dvec2)
* [clamp\_dvec3](#clamp_dvec3)
* [clamp\_dvec4](#clamp_dvec4)
* [clamp\_f32](#clamp_f32)
* [clamp\_f64](#clamp_f64)
* [clamp\_i32](#clamp_i32)
* [clamp\_ivec2](#clamp_ivec2)
* [clamp\_ivec3](#clamp_ivec3)
* [clamp\_ivec4](#clamp_ivec4)
* [clamp\_u32](#clamp_u32)
* [clamp\_uvec2](#clamp_uvec2)
* [clamp\_uvec3](#clamp_uvec3)
* [clamp\_uvec4](#clamp_uvec4)
* [clamp\_vec2](#clamp_vec2)
* [clamp\_vec3](#clamp_vec3)
* [clamp\_vec4](#clamp_vec4)
* [cofactor\_matrix1x1](#cofactor_matrix1x1)
* [cofactor\_matrix2x2](#cofactor_matrix2x2)
* [cofactor\_matrix3x3](#cofactor_matrix3x3)
* [cofactor\_matrix4x4](#cofactor_matrix4x4)
* [cos\_dvec2](#cos_dvec2)
* [cos\_dvec3](#cos_dvec3)
* [cos\_dvec4](#cos_dvec4)
* [cos\_f32](#cos_f32)
* [cos\_f64](#cos_f64)
* [cos\_vec2](#cos_vec2)
* [cos\_vec3](#cos_vec3)
* [cos\_vec4](#cos_vec4)
* [cosh\_dvec2](#cosh_dvec2)
* [cosh\_dvec3](#cosh_dvec3)
* [cosh\_dvec4](#cosh_dvec4)
* [cosh\_f32](#cosh_f32)
* [cosh\_f64](#cosh_f64)
* [cosh\_vec2](#cosh_vec2)
* [cosh\_vec3](#cosh_vec3)
* [cosh\_vec4](#cosh_vec4)
* [cross\_dvec3](#cross_dvec3)
* [cross\_ivec3](#cross_ivec3)
* [cross\_vec3](#cross_vec3)
* [degrees\_dvec2](#degrees_dvec2)
* [degrees\_dvec3](#degrees_dvec3)
* [degrees\_dvec4](#degrees_dvec4)
* [degrees\_f32](#degrees_f32)
* [degrees\_f64](#degrees_f64)
* [degrees\_vec2](#degrees_vec2)
* [degrees\_vec3](#degrees_vec3)
* [degrees\_vec4](#degrees_vec4)
* [determinant\_matrix1x1](#determinant_matrix1x1)
* [determinant\_matrix2x2](#determinant_matrix2x2)
* [determinant\_matrix3x3](#determinant_matrix3x3)
* [determinant\_matrix4x4](#determinant_matrix4x4)
* [distance\_dvec2](#distance_dvec2)
* [distance\_dvec3](#distance_dvec3)
* [distance\_dvec4](#distance_dvec4)
* [distance\_f32](#distance_f32)
* [distance\_f64](#distance_f64)
* [distance\_vec2](#distance_vec2)
* [distance\_vec3](#distance_vec3)
* [distance\_vec4](#distance_vec4)
* [dmat4FromDquat](#dmat4FromDquat)
* [dmat4LookAt](#dmat4LookAt)
* [dmat4Orientation](#dmat4Orientation)
* [dmat4Ortho3d](#dmat4Ortho3d)
* [dmat4Perspective](#dmat4Perspective)
* [dmat4PerspectiveInfinite](#dmat4PerspectiveInfinite)
* [dmat4Rotate](#dmat4Rotate)
* [dmat4Scale](#dmat4Scale)
* [dmat4Translate](#dmat4Translate)
* [dot\_dquat](#dot_dquat)
* [dot\_dvec2](#dot_dvec2)
* [dot\_dvec3](#dot_dvec3)
* [dot\_dvec4](#dot_dvec4)
* [dot\_f32](#dot_f32)
* [dot\_f64](#dot_f64)
* [dot\_i32](#dot_i32)
* [dot\_ivec2](#dot_ivec2)
* [dot\_ivec3](#dot_ivec3)
* [dot\_ivec4](#dot_ivec4)
* [dot\_quat](#dot_quat)
* [dot\_u32](#dot_u32)
* [dot\_uvec2](#dot_uvec2)
* [dot\_uvec3](#dot_uvec3)
* [dot\_uvec4](#dot_uvec4)
* [dot\_vec2](#dot_vec2)
* [dot\_vec3](#dot_vec3)
* [dot\_vec4](#dot_vec4)
* [dquatAxisAngle](#dquatAxisAngle)
* [dquatFromDmat4](#dquatFromDmat4)
* [dquatFromdMat3](#dquatFromdMat3)
* [dquatMulDvec3](#dquatMulDvec3)
* [dquatNlerp](#dquatNlerp)
* [dquatSlerp](#dquatSlerp)
* [equal\_dvec2](#equal_dvec2)
* [equal\_dvec3](#equal_dvec3)
* [equal\_dvec4](#equal_dvec4)
* [equal\_f32](#equal_f32)
* [equal\_f64](#equal_f64)
* [equal\_i32](#equal_i32)
* [equal\_ivec2](#equal_ivec2)
* [equal\_ivec3](#equal_ivec3)
* [equal\_ivec4](#equal_ivec4)
* [equal\_u32](#equal_u32)
* [equal\_uvec2](#equal_uvec2)
* [equal\_uvec3](#equal_uvec3)
* [equal\_uvec4](#equal_uvec4)
* [equal\_vec2](#equal_vec2)
* [equal\_vec3](#equal_vec3)
* [equal\_vec4](#equal_vec4)
* [exp2\_dvec2](#exp2_dvec2)
* [exp2\_dvec3](#exp2_dvec3)
* [exp2\_dvec4](#exp2_dvec4)
* [exp2\_f32](#exp2_f32)
* [exp2\_f64](#exp2_f64)
* [exp2\_vec2](#exp2_vec2)
* [exp2\_vec3](#exp2_vec3)
* [exp2\_vec4](#exp2_vec4)
* [exp\_dvec2](#exp_dvec2)
* [exp\_dvec3](#exp_dvec3)
* [exp\_dvec4](#exp_dvec4)
* [exp\_f32](#exp_f32)
* [exp\_f64](#exp_f64)
* [exp\_vec2](#exp_vec2)
* [exp\_vec3](#exp_vec3)
* [exp\_vec4](#exp_vec4)
* [faceForward\_dvec2](#faceForward_dvec2)
* [faceForward\_dvec3](#faceForward_dvec3)
* [faceForward\_dvec4](#faceForward_dvec4)
* [faceForward\_f32](#faceForward_f32)
* [faceForward\_f64](#faceForward_f64)
* [faceForward\_vec2](#faceForward_vec2)
* [faceForward\_vec3](#faceForward_vec3)
* [faceForward\_vec4](#faceForward_vec4)
* [floor\_dvec2](#floor_dvec2)
* [floor\_dvec3](#floor_dvec3)
* [floor\_dvec4](#floor_dvec4)
* [floor\_f32](#floor_f32)
* [floor\_f64](#floor_f64)
* [floor\_vec2](#floor_vec2)
* [floor\_vec3](#floor_vec3)
* [floor\_vec4](#floor_vec4)
* [fract\_dvec2](#fract_dvec2)
* [fract\_dvec3](#fract_dvec3)
* [fract\_dvec4](#fract_dvec4)
* [fract\_f32](#fract_f32)
* [fract\_f64](#fract_f64)
* [fract\_vec2](#fract_vec2)
* [fract\_vec3](#fract_vec3)
* [fract\_vec4](#fract_vec4)
* [greaterThanEqual\_dvec2](#greaterThanEqual_dvec2)
* [greaterThanEqual\_dvec3](#greaterThanEqual_dvec3)
* [greaterThanEqual\_dvec4](#greaterThanEqual_dvec4)
* [greaterThanEqual\_f32](#greaterThanEqual_f32)
* [greaterThanEqual\_f64](#greaterThanEqual_f64)
* [greaterThanEqual\_i32](#greaterThanEqual_i32)
* [greaterThanEqual\_ivec2](#greaterThanEqual_ivec2)
* [greaterThanEqual\_ivec3](#greaterThanEqual_ivec3)
* [greaterThanEqual\_ivec4](#greaterThanEqual_ivec4)
* [greaterThanEqual\_u32](#greaterThanEqual_u32)
* [greaterThanEqual\_uvec2](#greaterThanEqual_uvec2)
* [greaterThanEqual\_uvec3](#greaterThanEqual_uvec3)
* [greaterThanEqual\_uvec4](#greaterThanEqual_uvec4)
* [greaterThanEqual\_vec2](#greaterThanEqual_vec2)
* [greaterThanEqual\_vec3](#greaterThanEqual_vec3)
* [greaterThanEqual\_vec4](#greaterThanEqual_vec4)
* [greaterThan\_dvec2](#greaterThan_dvec2)
* [greaterThan\_dvec3](#greaterThan_dvec3)
* [greaterThan\_dvec4](#greaterThan_dvec4)
* [greaterThan\_f32](#greaterThan_f32)
* [greaterThan\_f64](#greaterThan_f64)
* [greaterThan\_i32](#greaterThan_i32)
* [greaterThan\_ivec2](#greaterThan_ivec2)
* [greaterThan\_ivec3](#greaterThan_ivec3)
* [greaterThan\_ivec4](#greaterThan_ivec4)
* [greaterThan\_u32](#greaterThan_u32)
* [greaterThan\_uvec2](#greaterThan_uvec2)
* [greaterThan\_uvec3](#greaterThan_uvec3)
* [greaterThan\_uvec4](#greaterThan_uvec4)
* [greaterThan\_vec2](#greaterThan_vec2)
* [greaterThan\_vec3](#greaterThan_vec3)
* [greaterThan\_vec4](#greaterThan_vec4)
* [hermitian\_adjoint](#hermitian_adjoint)
* [identity](#identity)
* [inverse\_dmat2](#inverse_dmat2)
* [inverse\_dmat3](#inverse_dmat3)
* [inverse\_dmat4](#inverse_dmat4)
* [inverse\_dquat](#inverse_dquat)
* [inverse\_mat2](#inverse_mat2)
* [inverse\_mat3](#inverse_mat3)
* [inverse\_mat4](#inverse_mat4)
* [inverse\_matrix1x1](#inverse_matrix1x1)
* [inverse\_matrix2x2](#inverse_matrix2x2)
* [inverse\_matrix3x3](#inverse_matrix3x3)
* [inverse\_matrix4x4](#inverse_matrix4x4)
* [inverse\_quat](#inverse_quat)
* [inverse\_transpose\_matrix1x1](#inverse_transpose_matrix1x1)
* [inverse\_transpose\_matrix2x2](#inverse_transpose_matrix2x2)
* [inverse\_transpose\_matrix3x3](#inverse_transpose_matrix3x3)
* [inverse\_transpose\_matrix4x4](#inverse_transpose_matrix4x4)
* [inversesqrt\_dvec2](#inversesqrt_dvec2)
* [inversesqrt\_dvec3](#inversesqrt_dvec3)
* [inversesqrt\_dvec4](#inversesqrt_dvec4)
* [inversesqrt\_f32](#inversesqrt_f32)
* [inversesqrt\_f64](#inversesqrt_f64)
* [inversesqrt\_vec2](#inversesqrt_vec2)
* [inversesqrt\_vec3](#inversesqrt_vec3)
* [inversesqrt\_vec4](#inversesqrt_vec4)
* [length\_dquat](#length_dquat)
* [length\_dvec2](#length_dvec2)
* [length\_dvec3](#length_dvec3)
* [length\_dvec4](#length_dvec4)
* [length\_f32](#length_f32)
* [length\_f64](#length_f64)
* [length\_quat](#length_quat)
* [length\_vec2](#length_vec2)
* [length\_vec3](#length_vec3)
* [length\_vec4](#length_vec4)
* [lerp\_dvec2](#lerp_dvec2)
* [lerp\_dvec3](#lerp_dvec3)
* [lerp\_dvec4](#lerp_dvec4)
* [lerp\_f32](#lerp_f32)
* [lerp\_f64](#lerp_f64)
* [lerp\_vec2](#lerp_vec2)
* [lerp\_vec3](#lerp_vec3)
* [lerp\_vec4](#lerp_vec4)
* [lessThanEqual\_dvec2](#lessThanEqual_dvec2)
* [lessThanEqual\_dvec3](#lessThanEqual_dvec3)
* [lessThanEqual\_dvec4](#lessThanEqual_dvec4)
* [lessThanEqual\_f32](#lessThanEqual_f32)
* [lessThanEqual\_f64](#lessThanEqual_f64)
* [lessThanEqual\_i32](#lessThanEqual_i32)
* [lessThanEqual\_ivec2](#lessThanEqual_ivec2)
* [lessThanEqual\_ivec3](#lessThanEqual_ivec3)
* [lessThanEqual\_ivec4](#lessThanEqual_ivec4)
* [lessThanEqual\_u32](#lessThanEqual_u32)
* [lessThanEqual\_uvec2](#lessThanEqual_uvec2)
* [lessThanEqual\_uvec3](#lessThanEqual_uvec3)
* [lessThanEqual\_uvec4](#lessThanEqual_uvec4)
* [lessThanEqual\_vec2](#lessThanEqual_vec2)
* [lessThanEqual\_vec3](#lessThanEqual_vec3)
* [lessThanEqual\_vec4](#lessThanEqual_vec4)
* [lessThan\_dvec2](#lessThan_dvec2)
* [lessThan\_dvec3](#lessThan_dvec3)
* [lessThan\_dvec4](#lessThan_dvec4)
* [lessThan\_f32](#lessThan_f32)
* [lessThan\_f64](#lessThan_f64)
* [lessThan\_i32](#lessThan_i32)
* [lessThan\_ivec2](#lessThan_ivec2)
* [lessThan\_ivec3](#lessThan_ivec3)
* [lessThan\_ivec4](#lessThan_ivec4)
* [lessThan\_u32](#lessThan_u32)
* [lessThan\_uvec2](#lessThan_uvec2)
* [lessThan\_uvec3](#lessThan_uvec3)
* [lessThan\_uvec4](#lessThan_uvec4)
* [lessThan\_vec2](#lessThan_vec2)
* [lessThan\_vec3](#lessThan_vec3)
* [lessThan\_vec4](#lessThan_vec4)
* [log\_dvec2](#log_dvec2)
* [log\_dvec3](#log_dvec3)
* [log\_dvec4](#log_dvec4)
* [log\_f32](#log_f32)
* [log\_f64](#log_f64)
* [log\_vec2](#log_vec2)
* [log\_vec3](#log_vec3)
* [log\_vec4](#log_vec4)
* [mat4FromQuat](#mat4FromQuat)
* [mat4LookAt](#mat4LookAt)
* [mat4Orientation](#mat4Orientation)
* [mat4Ortho3d](#mat4Ortho3d)
* [mat4Perspective](#mat4Perspective)
* [mat4PerspectiveInfinite](#mat4PerspectiveInfinite)
* [mat4Rotate](#mat4Rotate)
* [mat4Scale](#mat4Scale)
* [mat4Translate](#mat4Translate)
* [matrix\_minor](#matrix_minor)
* [max\_dvec2](#max_dvec2)
* [max\_dvec3](#max_dvec3)
* [max\_dvec4](#max_dvec4)
* [max\_f32](#max_f32)
* [max\_f64](#max_f64)
* [max\_i32](#max_i32)
* [max\_ivec2](#max_ivec2)
* [max\_ivec3](#max_ivec3)
* [max\_ivec4](#max_ivec4)
* [max\_u32](#max_u32)
* [max\_uvec2](#max_uvec2)
* [max\_uvec3](#max_uvec3)
* [max\_uvec4](#max_uvec4)
* [max\_vec2](#max_vec2)
* [max\_vec3](#max_vec3)
* [max\_vec4](#max_vec4)
* [min\_dvec2](#min_dvec2)
* [min\_dvec3](#min_dvec3)
* [min\_dvec4](#min_dvec4)
* [min\_f32](#min_f32)
* [min\_f64](#min_f64)
* [min\_i32](#min_i32)
* [min\_ivec2](#min_ivec2)
* [min\_ivec3](#min_ivec3)
* [min\_ivec4](#min_ivec4)
* [min\_u32](#min_u32)
* [min\_uvec2](#min_uvec2)
* [min\_uvec3](#min_uvec3)
* [min\_uvec4](#min_uvec4)
* [min\_vec2](#min_vec2)
* [min\_vec3](#min_vec3)
* [min\_vec4](#min_vec4)
* [mix\_dvec2](#mix_dvec2)
* [mix\_dvec3](#mix_dvec3)
* [mix\_dvec4](#mix_dvec4)
* [mix\_f32](#mix_f32)
* [mix\_f64](#mix_f64)
* [mix\_vec2](#mix_vec2)
* [mix\_vec3](#mix_vec3)
* [mix\_vec4](#mix_vec4)
* [mod\_dvec2](#mod_dvec2)
* [mod\_dvec3](#mod_dvec3)
* [mod\_dvec4](#mod_dvec4)
* [mod\_f32](#mod_f32)
* [mod\_f64](#mod_f64)
* [mod\_vec2](#mod_vec2)
* [mod\_vec3](#mod_vec3)
* [mod\_vec4](#mod_vec4)
* [normalize\_dquat](#normalize_dquat)
* [normalize\_dvec2](#normalize_dvec2)
* [normalize\_dvec3](#normalize_dvec3)
* [normalize\_dvec4](#normalize_dvec4)
* [normalize\_f32](#normalize_f32)
* [normalize\_f64](#normalize_f64)
* [normalize\_quat](#normalize_quat)
* [normalize\_vec2](#normalize_vec2)
* [normalize\_vec3](#normalize_vec3)
* [normalize\_vec4](#normalize_vec4)
* [notEqual\_dvec2](#notEqual_dvec2)
* [notEqual\_dvec3](#notEqual_dvec3)
* [notEqual\_dvec4](#notEqual_dvec4)
* [notEqual\_f32](#notEqual_f32)
* [notEqual\_f64](#notEqual_f64)
* [notEqual\_i32](#notEqual_i32)
* [notEqual\_ivec2](#notEqual_ivec2)
* [notEqual\_ivec3](#notEqual_ivec3)
* [notEqual\_ivec4](#notEqual_ivec4)
* [notEqual\_u32](#notEqual_u32)
* [notEqual\_uvec2](#notEqual_uvec2)
* [notEqual\_uvec3](#notEqual_uvec3)
* [notEqual\_uvec4](#notEqual_uvec4)
* [notEqual\_vec2](#notEqual_vec2)
* [notEqual\_vec3](#notEqual_vec3)
* [notEqual\_vec4](#notEqual_vec4)
* [not\_bool](#not_bool)
* [not\_bvec2](#not_bvec2)
* [not\_bvec3](#not_bvec3)
* [not\_bvec4](#not_bvec4)
* [pow\_dvec2](#pow_dvec2)
* [pow\_dvec3](#pow_dvec3)
* [pow\_dvec4](#pow_dvec4)
* [pow\_f32](#pow_f32)
* [pow\_f64](#pow_f64)
* [pow\_vec2](#pow_vec2)
* [pow\_vec3](#pow_vec3)
* [pow\_vec4](#pow_vec4)
* [quatAxisAngle](#quatAxisAngle)
* [quatFromMat3](#quatFromMat3)
* [quatFromMat4](#quatFromMat4)
* [quatMulVec3](#quatMulVec3)
* [quatNlerp](#quatNlerp)
* [quatSlerp](#quatSlerp)
* [radians\_dvec2](#radians_dvec2)
* [radians\_dvec3](#radians_dvec3)
* [radians\_dvec4](#radians_dvec4)
* [radians\_f32](#radians_f32)
* [radians\_f64](#radians_f64)
* [radians\_vec2](#radians_vec2)
* [radians\_vec3](#radians_vec3)
* [radians\_vec4](#radians_vec4)
* [reflect\_dvec2](#reflect_dvec2)
* [reflect\_dvec3](#reflect_dvec3)
* [reflect\_dvec4](#reflect_dvec4)
* [reflect\_f32](#reflect_f32)
* [reflect\_f64](#reflect_f64)
* [reflect\_vec2](#reflect_vec2)
* [reflect\_vec3](#reflect_vec3)
* [reflect\_vec4](#reflect_vec4)
* [refract\_dvec2](#refract_dvec2)
* [refract\_dvec3](#refract_dvec3)
* [refract\_dvec4](#refract_dvec4)
* [refract\_f32](#refract_f32)
* [refract\_f64](#refract_f64)
* [refract\_vec2](#refract_vec2)
* [refract\_vec3](#refract_vec3)
* [refract\_vec4](#refract_vec4)
* [round\_dvec2](#round_dvec2)
* [round\_dvec3](#round_dvec3)
* [round\_dvec4](#round_dvec4)
* [round\_f32](#round_f32)
* [round\_f64](#round_f64)
* [round\_vec2](#round_vec2)
* [round\_vec3](#round_vec3)
* [round\_vec4](#round_vec4)
* [saturate\_dvec2](#saturate_dvec2)
* [saturate\_dvec3](#saturate_dvec3)
* [saturate\_dvec4](#saturate_dvec4)
* [saturate\_f32](#saturate_f32)
* [saturate\_f64](#saturate_f64)
* [saturate\_i32](#saturate_i32)
* [saturate\_ivec2](#saturate_ivec2)
* [saturate\_ivec3](#saturate_ivec3)
* [saturate\_ivec4](#saturate_ivec4)
* [saturate\_u32](#saturate_u32)
* [saturate\_uvec2](#saturate_uvec2)
* [saturate\_uvec3](#saturate_uvec3)
* [saturate\_uvec4](#saturate_uvec4)
* [saturate\_vec2](#saturate_vec2)
* [saturate\_vec3](#saturate_vec3)
* [saturate\_vec4](#saturate_vec4)
* [scalarTripleProduct\_dvec3](#scalarTripleProduct_dvec3)
* [scalarTripleProduct\_ivec3](#scalarTripleProduct_ivec3)
* [scalarTripleProduct\_vec3](#scalarTripleProduct_vec3)
* [sign\_dvec2](#sign_dvec2)
* [sign\_dvec3](#sign_dvec3)
* [sign\_dvec4](#sign_dvec4)
* [sign\_f32](#sign_f32)
* [sign\_f64](#sign_f64)
* [sign\_i32](#sign_i32)
* [sign\_ivec2](#sign_ivec2)
* [sign\_ivec3](#sign_ivec3)
* [sign\_ivec4](#sign_ivec4)
* [sign\_u32](#sign_u32)
* [sign\_uvec2](#sign_uvec2)
* [sign\_uvec3](#sign_uvec3)
* [sign\_uvec4](#sign_uvec4)
* [sign\_vec2](#sign_vec2)
* [sign\_vec3](#sign_vec3)
* [sign\_vec4](#sign_vec4)
* [sin\_dvec2](#sin_dvec2)
* [sin\_dvec3](#sin_dvec3)
* [sin\_dvec4](#sin_dvec4)
* [sin\_f32](#sin_f32)
* [sin\_f64](#sin_f64)
* [sin\_vec2](#sin_vec2)
* [sin\_vec3](#sin_vec3)
* [sin\_vec4](#sin_vec4)
* [sinh\_dvec2](#sinh_dvec2)
* [sinh\_dvec3](#sinh_dvec3)
* [sinh\_dvec4](#sinh_dvec4)
* [sinh\_f32](#sinh_f32)
* [sinh\_f64](#sinh_f64)
* [sinh\_vec2](#sinh_vec2)
* [sinh\_vec3](#sinh_vec3)
* [sinh\_vec4](#sinh_vec4)
* [smoothstep\_dvec2](#smoothstep_dvec2)
* [smoothstep\_dvec3](#smoothstep_dvec3)
* [smoothstep\_dvec4](#smoothstep_dvec4)
* [smoothstep\_f32](#smoothstep_f32)
* [smoothstep\_f64](#smoothstep_f64)
* [smoothstep\_vec2](#smoothstep_vec2)
* [smoothstep\_vec3](#smoothstep_vec3)
* [smoothstep\_vec4](#smoothstep_vec4)
* [sqrt\_dvec2](#sqrt_dvec2)
* [sqrt\_dvec3](#sqrt_dvec3)
* [sqrt\_dvec4](#sqrt_dvec4)
* [sqrt\_f32](#sqrt_f32)
* [sqrt\_f64](#sqrt_f64)
* [sqrt\_vec2](#sqrt_vec2)
* [sqrt\_vec3](#sqrt_vec3)
* [sqrt\_vec4](#sqrt_vec4)
* [step\_dvec2](#step_dvec2)
* [step\_dvec3](#step_dvec3)
* [step\_dvec4](#step_dvec4)
* [step\_f32](#step_f32)
* [step\_f64](#step_f64)
* [step\_vec2](#step_vec2)
* [step\_vec3](#step_vec3)
* [step\_vec4](#step_vec4)
* [tan\_dvec2](#tan_dvec2)
* [tan\_dvec3](#tan_dvec3)
* [tan\_dvec4](#tan_dvec4)
* [tan\_f32](#tan_f32)
* [tan\_f64](#tan_f64)
* [tan\_vec2](#tan_vec2)
* [tan\_vec3](#tan_vec3)
* [tan\_vec4](#tan_vec4)
* [tanh\_dvec2](#tanh_dvec2)
* [tanh\_dvec3](#tanh_dvec3)
* [tanh\_dvec4](#tanh_dvec4)
* [tanh\_f32](#tanh_f32)
* [tanh\_f64](#tanh_f64)
* [tanh\_vec2](#tanh_vec2)
* [tanh\_vec3](#tanh_vec3)
* [tanh\_vec4](#tanh_vec4)
* [trace](#trace)
* [transpose](#transpose)
* [trunc\_dvec2](#trunc_dvec2)
* [trunc\_dvec3](#trunc_dvec3)
* [trunc\_dvec4](#trunc_dvec4)
* [trunc\_f32](#trunc_f32)
* [trunc\_f64](#trunc_f64)
* [trunc\_vec2](#trunc_vec2)
* [trunc\_vec3](#trunc_vec3)
* [trunc\_vec4](#trunc_vec4)
* [vectorTripleProduct\_dvec3](#vectorTripleProduct_dvec3)
* [vectorTripleProduct\_ivec3](#vectorTripleProduct_ivec3)
* [vectorTripleProduct\_vec3](#vectorTripleProduct_vec3)

Procedure Groups (64)

* [abs](#abs)
* [acos](#acos)
* [acosh](#acosh)
* [adjugate](#adjugate)
* [all](#all)
* [any](#any)
* [asin](#asin)
* [asinh](#asinh)
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
* [faceForward](#faceForward)
* [floor](#floor)
* [fract](#fract)
* [greaterThan](#greaterThan)
* [greaterThanEqual](#greaterThanEqual)
* [inverse](#inverse)
* [inverse\_transpose](#inverse_transpose)
* [inversesqrt](#inversesqrt)
* [length](#length)
* [lerp](#lerp)
* [lessThan](#lessThan)
* [lessThanEqual](#lessThanEqual)
* [log](#log)
* [max](#max)
* [min](#min)
* [mix](#mix)
* [mod](#mod)
* [nlerp](#nlerp)
* [normalize](#normalize)
* [not](#not)
* [notEqual](#notEqual)
* [pow](#pow)
* [radians](#radians)
* [reflect](#reflect)
* [refract](#refract)
* [round](#round)
* [rsqrt](#rsqrt)
* [saturate](#saturate)
* [scalarTripleProduct](#scalarTripleProduct)
* [sign](#sign)
* [sin](#sin)
* [sinh](#sinh)
* [slerp](#slerp)
* [smoothstep](#smoothstep)
* [sqrt](#sqrt)
* [step](#step)
* [tan](#tan)
* [tanh](#tanh)
* [trunc](#trunc)
* [vectorTripleProduct](#vectorTripleProduct)

## Types

### [bvec2 ¶](#bvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L55)

```
bvec2 :: [2]bool
```

##### Related Procedures With Parameters

* [all\_bvec2](/core/math/linalg/glsl/#all_bvec2)
* [any\_bvec2](/core/math/linalg/glsl/#any_bvec2)
* [not\_bvec2](/core/math/linalg/glsl/#not_bvec2)
* [all](/core/math/linalg/glsl/#all) *(procedure groups)*
* [any](/core/math/linalg/glsl/#any) *(procedure groups)*
* [not](/core/math/linalg/glsl/#not) *(procedure groups)*



##### Related Procedures With Returns

* [equal\_dvec2](/core/math/linalg/glsl/#equal_dvec2)
* [equal\_ivec2](/core/math/linalg/glsl/#equal_ivec2)
* [equal\_uvec2](/core/math/linalg/glsl/#equal_uvec2)
* [equal\_vec2](/core/math/linalg/glsl/#equal_vec2)
* [greaterThanEqual\_dvec2](/core/math/linalg/glsl/#greaterThanEqual_dvec2)
* [greaterThanEqual\_ivec2](/core/math/linalg/glsl/#greaterThanEqual_ivec2)
* [greaterThanEqual\_uvec2](/core/math/linalg/glsl/#greaterThanEqual_uvec2)
* [greaterThanEqual\_vec2](/core/math/linalg/glsl/#greaterThanEqual_vec2)
* [greaterThan\_dvec2](/core/math/linalg/glsl/#greaterThan_dvec2)
* [greaterThan\_ivec2](/core/math/linalg/glsl/#greaterThan_ivec2)
* [greaterThan\_uvec2](/core/math/linalg/glsl/#greaterThan_uvec2)
* [greaterThan\_vec2](/core/math/linalg/glsl/#greaterThan_vec2)
* [lessThanEqual\_dvec2](/core/math/linalg/glsl/#lessThanEqual_dvec2)
* [lessThanEqual\_ivec2](/core/math/linalg/glsl/#lessThanEqual_ivec2)
* [lessThanEqual\_uvec2](/core/math/linalg/glsl/#lessThanEqual_uvec2)
* [lessThanEqual\_vec2](/core/math/linalg/glsl/#lessThanEqual_vec2)
* [lessThan\_dvec2](/core/math/linalg/glsl/#lessThan_dvec2)
* [lessThan\_ivec2](/core/math/linalg/glsl/#lessThan_ivec2)
* [lessThan\_uvec2](/core/math/linalg/glsl/#lessThan_uvec2)
* [lessThan\_vec2](/core/math/linalg/glsl/#lessThan_vec2)
* [notEqual\_dvec2](/core/math/linalg/glsl/#notEqual_dvec2)
* [notEqual\_ivec2](/core/math/linalg/glsl/#notEqual_ivec2)
* [notEqual\_uvec2](/core/math/linalg/glsl/#notEqual_uvec2)
* [notEqual\_vec2](/core/math/linalg/glsl/#notEqual_vec2)
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*

### [bvec3 ¶](#bvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L56)

```
bvec3 :: [3]bool
```

##### Related Procedures With Parameters

* [all\_bvec3](/core/math/linalg/glsl/#all_bvec3)
* [any\_bvec3](/core/math/linalg/glsl/#any_bvec3)
* [not\_bvec3](/core/math/linalg/glsl/#not_bvec3)
* [all](/core/math/linalg/glsl/#all) *(procedure groups)*
* [any](/core/math/linalg/glsl/#any) *(procedure groups)*
* [not](/core/math/linalg/glsl/#not) *(procedure groups)*



##### Related Procedures With Returns

* [equal\_dvec3](/core/math/linalg/glsl/#equal_dvec3)
* [equal\_ivec3](/core/math/linalg/glsl/#equal_ivec3)
* [equal\_uvec3](/core/math/linalg/glsl/#equal_uvec3)
* [equal\_vec3](/core/math/linalg/glsl/#equal_vec3)
* [greaterThanEqual\_dvec3](/core/math/linalg/glsl/#greaterThanEqual_dvec3)
* [greaterThanEqual\_ivec3](/core/math/linalg/glsl/#greaterThanEqual_ivec3)
* [greaterThanEqual\_uvec3](/core/math/linalg/glsl/#greaterThanEqual_uvec3)
* [greaterThanEqual\_vec3](/core/math/linalg/glsl/#greaterThanEqual_vec3)
* [greaterThan\_dvec3](/core/math/linalg/glsl/#greaterThan_dvec3)
* [greaterThan\_ivec3](/core/math/linalg/glsl/#greaterThan_ivec3)
* [greaterThan\_uvec3](/core/math/linalg/glsl/#greaterThan_uvec3)
* [greaterThan\_vec3](/core/math/linalg/glsl/#greaterThan_vec3)
* [lessThanEqual\_dvec3](/core/math/linalg/glsl/#lessThanEqual_dvec3)
* [lessThanEqual\_ivec3](/core/math/linalg/glsl/#lessThanEqual_ivec3)
* [lessThanEqual\_uvec3](/core/math/linalg/glsl/#lessThanEqual_uvec3)
* [lessThanEqual\_vec3](/core/math/linalg/glsl/#lessThanEqual_vec3)
* [lessThan\_dvec3](/core/math/linalg/glsl/#lessThan_dvec3)
* [lessThan\_ivec3](/core/math/linalg/glsl/#lessThan_ivec3)
* [lessThan\_uvec3](/core/math/linalg/glsl/#lessThan_uvec3)
* [lessThan\_vec3](/core/math/linalg/glsl/#lessThan_vec3)
* [notEqual\_dvec3](/core/math/linalg/glsl/#notEqual_dvec3)
* [notEqual\_ivec3](/core/math/linalg/glsl/#notEqual_ivec3)
* [notEqual\_uvec3](/core/math/linalg/glsl/#notEqual_uvec3)
* [notEqual\_vec3](/core/math/linalg/glsl/#notEqual_vec3)
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*

### [bvec4 ¶](#bvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L57)

```
bvec4 :: [4]bool
```

##### Related Procedures With Parameters

* [all\_bvec4](/core/math/linalg/glsl/#all_bvec4)
* [any\_bvec4](/core/math/linalg/glsl/#any_bvec4)
* [not\_bvec4](/core/math/linalg/glsl/#not_bvec4)
* [all](/core/math/linalg/glsl/#all) *(procedure groups)*
* [any](/core/math/linalg/glsl/#any) *(procedure groups)*
* [not](/core/math/linalg/glsl/#not) *(procedure groups)*



##### Related Procedures With Returns

* [equal\_dvec4](/core/math/linalg/glsl/#equal_dvec4)
* [equal\_ivec4](/core/math/linalg/glsl/#equal_ivec4)
* [equal\_uvec4](/core/math/linalg/glsl/#equal_uvec4)
* [equal\_vec4](/core/math/linalg/glsl/#equal_vec4)
* [greaterThanEqual\_dvec4](/core/math/linalg/glsl/#greaterThanEqual_dvec4)
* [greaterThanEqual\_ivec4](/core/math/linalg/glsl/#greaterThanEqual_ivec4)
* [greaterThanEqual\_uvec4](/core/math/linalg/glsl/#greaterThanEqual_uvec4)
* [greaterThanEqual\_vec4](/core/math/linalg/glsl/#greaterThanEqual_vec4)
* [greaterThan\_dvec4](/core/math/linalg/glsl/#greaterThan_dvec4)
* [greaterThan\_ivec4](/core/math/linalg/glsl/#greaterThan_ivec4)
* [greaterThan\_uvec4](/core/math/linalg/glsl/#greaterThan_uvec4)
* [greaterThan\_vec4](/core/math/linalg/glsl/#greaterThan_vec4)
* [lessThanEqual\_dvec4](/core/math/linalg/glsl/#lessThanEqual_dvec4)
* [lessThanEqual\_ivec4](/core/math/linalg/glsl/#lessThanEqual_ivec4)
* [lessThanEqual\_uvec4](/core/math/linalg/glsl/#lessThanEqual_uvec4)
* [lessThanEqual\_vec4](/core/math/linalg/glsl/#lessThanEqual_vec4)
* [lessThan\_dvec4](/core/math/linalg/glsl/#lessThan_dvec4)
* [lessThan\_ivec4](/core/math/linalg/glsl/#lessThan_ivec4)
* [lessThan\_uvec4](/core/math/linalg/glsl/#lessThan_uvec4)
* [lessThan\_vec4](/core/math/linalg/glsl/#lessThan_vec4)
* [notEqual\_dvec4](/core/math/linalg/glsl/#notEqual_dvec4)
* [notEqual\_ivec4](/core/math/linalg/glsl/#notEqual_ivec4)
* [notEqual\_uvec4](/core/math/linalg/glsl/#notEqual_uvec4)
* [notEqual\_vec4](/core/math/linalg/glsl/#notEqual_vec4)
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*

### [dmat2 ¶](#dmat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L63)

```
dmat2 :: matrix[2, 2]f64
```

##### Related Procedures With Parameters

* [inverse\_dmat2](/core/math/linalg/glsl/#inverse_dmat2)

### [dmat2x2 ¶](#dmat2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L66)

```
dmat2x2 :: matrix[2, 2]f64
```

##### Related Procedures With Parameters

* [inverse\_dmat2](/core/math/linalg/glsl/#inverse_dmat2)

### [dmat2x3 ¶](#dmat2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L72)

```
dmat2x3 :: matrix[3, 2]f64
```

### [dmat2x4 ¶](#dmat2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L74)

```
dmat2x4 :: matrix[4, 2]f64
```

### [dmat3 ¶](#dmat3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L64)

```
dmat3 :: matrix[3, 3]f64
```

##### Related Procedures With Parameters

* [dquatFromdMat3](/core/math/linalg/glsl/#dquatFromdMat3)
* [inverse\_dmat3](/core/math/linalg/glsl/#inverse_dmat3)

### [dmat3x2 ¶](#dmat3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L70)

```
dmat3x2 :: matrix[2, 3]f64
```

### [dmat3x3 ¶](#dmat3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L67)

```
dmat3x3 :: matrix[3, 3]f64
```

##### Related Procedures With Parameters

* [dquatFromdMat3](/core/math/linalg/glsl/#dquatFromdMat3)
* [inverse\_dmat3](/core/math/linalg/glsl/#inverse_dmat3)

### [dmat3x4 ¶](#dmat3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L75)

```
dmat3x4 :: matrix[4, 3]f64
```

### [dmat4 ¶](#dmat4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L65)

```
dmat4 :: matrix[4, 4]f64
```

##### Related Procedures With Parameters

* [dquatFromDmat4](/core/math/linalg/glsl/#dquatFromDmat4)
* [inverse\_dmat4](/core/math/linalg/glsl/#inverse_dmat4)



##### Related Procedures With Returns

* [dmat4FromDquat](/core/math/linalg/glsl/#dmat4FromDquat)
* [dmat4LookAt](/core/math/linalg/glsl/#dmat4LookAt)
* [dmat4Orientation](/core/math/linalg/glsl/#dmat4Orientation)
* [dmat4Ortho3d](/core/math/linalg/glsl/#dmat4Ortho3d)
* [dmat4Perspective](/core/math/linalg/glsl/#dmat4Perspective)
* [dmat4PerspectiveInfinite](/core/math/linalg/glsl/#dmat4PerspectiveInfinite)
* [dmat4Rotate](/core/math/linalg/glsl/#dmat4Rotate)
* [dmat4Scale](/core/math/linalg/glsl/#dmat4Scale)
* [dmat4Translate](/core/math/linalg/glsl/#dmat4Translate)

### [dmat4x2 ¶](#dmat4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L71)

```
dmat4x2 :: matrix[2, 4]f64
```

### [dmat4x3 ¶](#dmat4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L73)

```
dmat4x3 :: matrix[3, 4]f64
```

### [dmat4x4 ¶](#dmat4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L68)

```
dmat4x4 :: matrix[4, 4]f64
```

##### Related Procedures With Parameters

* [dquatFromDmat4](/core/math/linalg/glsl/#dquatFromDmat4)
* [inverse\_dmat4](/core/math/linalg/glsl/#inverse_dmat4)



##### Related Procedures With Returns

* [dmat4FromDquat](/core/math/linalg/glsl/#dmat4FromDquat)
* [dmat4LookAt](/core/math/linalg/glsl/#dmat4LookAt)
* [dmat4Orientation](/core/math/linalg/glsl/#dmat4Orientation)
* [dmat4Ortho3d](/core/math/linalg/glsl/#dmat4Ortho3d)
* [dmat4Perspective](/core/math/linalg/glsl/#dmat4Perspective)
* [dmat4PerspectiveInfinite](/core/math/linalg/glsl/#dmat4PerspectiveInfinite)
* [dmat4Rotate](/core/math/linalg/glsl/#dmat4Rotate)
* [dmat4Scale](/core/math/linalg/glsl/#dmat4Scale)
* [dmat4Translate](/core/math/linalg/glsl/#dmat4Translate)

### [dquat ¶](#dquat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L81)

```
dquat :: quaternion256
```

##### Related Procedures With Parameters

* [dmat4FromDquat](/core/math/linalg/glsl/#dmat4FromDquat)
* [dot\_dquat](/core/math/linalg/glsl/#dot_dquat)
* [dquatMulDvec3](/core/math/linalg/glsl/#dquatMulDvec3)
* [dquatNlerp](/core/math/linalg/glsl/#dquatNlerp)
* [dquatSlerp](/core/math/linalg/glsl/#dquatSlerp)
* [inverse\_dquat](/core/math/linalg/glsl/#inverse_dquat)
* [length\_dquat](/core/math/linalg/glsl/#length_dquat)
* [normalize\_dquat](/core/math/linalg/glsl/#normalize_dquat)
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [nlerp](/core/math/linalg/glsl/#nlerp) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [slerp](/core/math/linalg/glsl/#slerp) *(procedure groups)*



##### Related Procedures With Returns

* [dquatAxisAngle](/core/math/linalg/glsl/#dquatAxisAngle)
* [dquatFromDmat4](/core/math/linalg/glsl/#dquatFromDmat4)
* [dquatFromdMat3](/core/math/linalg/glsl/#dquatFromdMat3)

### [dvec2 ¶](#dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L77)

```
dvec2 :: [2]f64
```

##### Related Procedures With Parameters

* [abs\_dvec2](/core/math/linalg/glsl/#abs_dvec2)
* [acos\_dvec2](/core/math/linalg/glsl/#acos_dvec2)
* [acosh\_dvec2](/core/math/linalg/glsl/#acosh_dvec2)
* [asin\_dvec2](/core/math/linalg/glsl/#asin_dvec2)
* [asinh\_dvec2](/core/math/linalg/glsl/#asinh_dvec2)
* [atan2\_dvec2](/core/math/linalg/glsl/#atan2_dvec2)
* [atan\_dvec2](/core/math/linalg/glsl/#atan_dvec2)
* [atanh\_dvec2](/core/math/linalg/glsl/#atanh_dvec2)
* [ceil\_dvec2](/core/math/linalg/glsl/#ceil_dvec2)
* [clamp\_dvec2](/core/math/linalg/glsl/#clamp_dvec2)
* [cos\_dvec2](/core/math/linalg/glsl/#cos_dvec2)
* [cosh\_dvec2](/core/math/linalg/glsl/#cosh_dvec2)
* [degrees\_dvec2](/core/math/linalg/glsl/#degrees_dvec2)
* [distance\_dvec2](/core/math/linalg/glsl/#distance_dvec2)
* [dot\_dvec2](/core/math/linalg/glsl/#dot_dvec2)
* [equal\_dvec2](/core/math/linalg/glsl/#equal_dvec2)
* [exp2\_dvec2](/core/math/linalg/glsl/#exp2_dvec2)
* [exp\_dvec2](/core/math/linalg/glsl/#exp_dvec2)
* [faceForward\_dvec2](/core/math/linalg/glsl/#faceForward_dvec2)
* [floor\_dvec2](/core/math/linalg/glsl/#floor_dvec2)
* [fract\_dvec2](/core/math/linalg/glsl/#fract_dvec2)
* [greaterThanEqual\_dvec2](/core/math/linalg/glsl/#greaterThanEqual_dvec2)
* [greaterThan\_dvec2](/core/math/linalg/glsl/#greaterThan_dvec2)
* [inversesqrt\_dvec2](/core/math/linalg/glsl/#inversesqrt_dvec2)
* [length\_dvec2](/core/math/linalg/glsl/#length_dvec2)
* [lerp\_dvec2](/core/math/linalg/glsl/#lerp_dvec2)
* [lessThanEqual\_dvec2](/core/math/linalg/glsl/#lessThanEqual_dvec2)
* [lessThan\_dvec2](/core/math/linalg/glsl/#lessThan_dvec2)
* [log\_dvec2](/core/math/linalg/glsl/#log_dvec2)
* [max\_dvec2](/core/math/linalg/glsl/#max_dvec2)
* [min\_dvec2](/core/math/linalg/glsl/#min_dvec2)
* [mix\_dvec2](/core/math/linalg/glsl/#mix_dvec2)
* [mod\_dvec2](/core/math/linalg/glsl/#mod_dvec2)
* [normalize\_dvec2](/core/math/linalg/glsl/#normalize_dvec2)
* [notEqual\_dvec2](/core/math/linalg/glsl/#notEqual_dvec2)
* [pow\_dvec2](/core/math/linalg/glsl/#pow_dvec2)
* [radians\_dvec2](/core/math/linalg/glsl/#radians_dvec2)
* [reflect\_dvec2](/core/math/linalg/glsl/#reflect_dvec2)
* [refract\_dvec2](/core/math/linalg/glsl/#refract_dvec2)
* [round\_dvec2](/core/math/linalg/glsl/#round_dvec2)
* [saturate\_dvec2](/core/math/linalg/glsl/#saturate_dvec2)
* [sign\_dvec2](/core/math/linalg/glsl/#sign_dvec2)
* [sin\_dvec2](/core/math/linalg/glsl/#sin_dvec2)
* [sinh\_dvec2](/core/math/linalg/glsl/#sinh_dvec2)
* [smoothstep\_dvec2](/core/math/linalg/glsl/#smoothstep_dvec2)
* [sqrt\_dvec2](/core/math/linalg/glsl/#sqrt_dvec2)
* [step\_dvec2](/core/math/linalg/glsl/#step_dvec2)
* [tan\_dvec2](/core/math/linalg/glsl/#tan_dvec2)
* [tanh\_dvec2](/core/math/linalg/glsl/#tanh_dvec2)
* [trunc\_dvec2](/core/math/linalg/glsl/#trunc_dvec2)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/glsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/glsl/#acosh) *(procedure groups)*
* [asin](/core/math/linalg/glsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/glsl/#asinh) *(procedure groups)*
* [atan](/core/math/linalg/glsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/glsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/glsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/glsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/glsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/glsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/glsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/glsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/glsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/glsl/#exp2) *(procedure groups)*
* [faceForward](/core/math/linalg/glsl/#faceForward) *(procedure groups)*
* [floor](/core/math/linalg/glsl/#floor) *(procedure groups)*
* [fract](/core/math/linalg/glsl/#fract) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [inversesqrt](/core/math/linalg/glsl/#inversesqrt) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/glsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/glsl/#log) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [mix](/core/math/linalg/glsl/#mix) *(procedure groups)*
* [mod](/core/math/linalg/glsl/#mod) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/glsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/glsl/#radians) *(procedure groups)*
* [reflect](/core/math/linalg/glsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/glsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/glsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/glsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/glsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/glsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/glsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/glsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/glsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/glsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/glsl/#tanh) *(procedure groups)*
* [trunc](/core/math/linalg/glsl/#trunc) *(procedure groups)*

### [dvec3 ¶](#dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L78)

```
dvec3 :: [3]f64
```

##### Related Procedures With Parameters

* [abs\_dvec3](/core/math/linalg/glsl/#abs_dvec3)
* [acos\_dvec3](/core/math/linalg/glsl/#acos_dvec3)
* [acosh\_dvec3](/core/math/linalg/glsl/#acosh_dvec3)
* [asin\_dvec3](/core/math/linalg/glsl/#asin_dvec3)
* [asinh\_dvec3](/core/math/linalg/glsl/#asinh_dvec3)
* [atan2\_dvec3](/core/math/linalg/glsl/#atan2_dvec3)
* [atan\_dvec3](/core/math/linalg/glsl/#atan_dvec3)
* [atanh\_dvec3](/core/math/linalg/glsl/#atanh_dvec3)
* [ceil\_dvec3](/core/math/linalg/glsl/#ceil_dvec3)
* [clamp\_dvec3](/core/math/linalg/glsl/#clamp_dvec3)
* [cos\_dvec3](/core/math/linalg/glsl/#cos_dvec3)
* [cosh\_dvec3](/core/math/linalg/glsl/#cosh_dvec3)
* [cross\_dvec3](/core/math/linalg/glsl/#cross_dvec3)
* [degrees\_dvec3](/core/math/linalg/glsl/#degrees_dvec3)
* [distance\_dvec3](/core/math/linalg/glsl/#distance_dvec3)
* [dmat4LookAt](/core/math/linalg/glsl/#dmat4LookAt)
* [dmat4Orientation](/core/math/linalg/glsl/#dmat4Orientation)
* [dmat4Rotate](/core/math/linalg/glsl/#dmat4Rotate)
* [dmat4Scale](/core/math/linalg/glsl/#dmat4Scale)
* [dmat4Translate](/core/math/linalg/glsl/#dmat4Translate)
* [dot\_dvec3](/core/math/linalg/glsl/#dot_dvec3)
* [dquatAxisAngle](/core/math/linalg/glsl/#dquatAxisAngle)
* [dquatMulDvec3](/core/math/linalg/glsl/#dquatMulDvec3)
* [equal\_dvec3](/core/math/linalg/glsl/#equal_dvec3)
* [exp2\_dvec3](/core/math/linalg/glsl/#exp2_dvec3)
* [exp\_dvec3](/core/math/linalg/glsl/#exp_dvec3)
* [faceForward\_dvec3](/core/math/linalg/glsl/#faceForward_dvec3)
* [floor\_dvec3](/core/math/linalg/glsl/#floor_dvec3)
* [fract\_dvec3](/core/math/linalg/glsl/#fract_dvec3)
* [greaterThanEqual\_dvec3](/core/math/linalg/glsl/#greaterThanEqual_dvec3)
* [greaterThan\_dvec3](/core/math/linalg/glsl/#greaterThan_dvec3)
* [inversesqrt\_dvec3](/core/math/linalg/glsl/#inversesqrt_dvec3)
* [length\_dvec3](/core/math/linalg/glsl/#length_dvec3)
* [lerp\_dvec3](/core/math/linalg/glsl/#lerp_dvec3)
* [lessThanEqual\_dvec3](/core/math/linalg/glsl/#lessThanEqual_dvec3)
* [lessThan\_dvec3](/core/math/linalg/glsl/#lessThan_dvec3)
* [log\_dvec3](/core/math/linalg/glsl/#log_dvec3)
* [max\_dvec3](/core/math/linalg/glsl/#max_dvec3)
* [min\_dvec3](/core/math/linalg/glsl/#min_dvec3)
* [mix\_dvec3](/core/math/linalg/glsl/#mix_dvec3)
* [mod\_dvec3](/core/math/linalg/glsl/#mod_dvec3)
* [normalize\_dvec3](/core/math/linalg/glsl/#normalize_dvec3)
* [notEqual\_dvec3](/core/math/linalg/glsl/#notEqual_dvec3)
* [pow\_dvec3](/core/math/linalg/glsl/#pow_dvec3)
* [radians\_dvec3](/core/math/linalg/glsl/#radians_dvec3)
* [reflect\_dvec3](/core/math/linalg/glsl/#reflect_dvec3)
* [refract\_dvec3](/core/math/linalg/glsl/#refract_dvec3)
* [round\_dvec3](/core/math/linalg/glsl/#round_dvec3)
* [saturate\_dvec3](/core/math/linalg/glsl/#saturate_dvec3)
* [scalarTripleProduct\_dvec3](/core/math/linalg/glsl/#scalarTripleProduct_dvec3)
* [sign\_dvec3](/core/math/linalg/glsl/#sign_dvec3)
* [sin\_dvec3](/core/math/linalg/glsl/#sin_dvec3)
* [sinh\_dvec3](/core/math/linalg/glsl/#sinh_dvec3)
* [smoothstep\_dvec3](/core/math/linalg/glsl/#smoothstep_dvec3)
* [sqrt\_dvec3](/core/math/linalg/glsl/#sqrt_dvec3)
* [step\_dvec3](/core/math/linalg/glsl/#step_dvec3)
* [tan\_dvec3](/core/math/linalg/glsl/#tan_dvec3)
* [tanh\_dvec3](/core/math/linalg/glsl/#tanh_dvec3)
* [trunc\_dvec3](/core/math/linalg/glsl/#trunc_dvec3)
* [vectorTripleProduct\_dvec3](/core/math/linalg/glsl/#vectorTripleProduct_dvec3)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/glsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/glsl/#acosh) *(procedure groups)*
* [asin](/core/math/linalg/glsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/glsl/#asinh) *(procedure groups)*
* [atan](/core/math/linalg/glsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/glsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/glsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/glsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/glsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/glsl/#cosh) *(procedure groups)*
* [cross](/core/math/linalg/glsl/#cross) *(procedure groups)*
* [degrees](/core/math/linalg/glsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/glsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/glsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/glsl/#exp2) *(procedure groups)*
* [faceForward](/core/math/linalg/glsl/#faceForward) *(procedure groups)*
* [floor](/core/math/linalg/glsl/#floor) *(procedure groups)*
* [fract](/core/math/linalg/glsl/#fract) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [inversesqrt](/core/math/linalg/glsl/#inversesqrt) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/glsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/glsl/#log) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [mix](/core/math/linalg/glsl/#mix) *(procedure groups)*
* [mod](/core/math/linalg/glsl/#mod) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/glsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/glsl/#radians) *(procedure groups)*
* [reflect](/core/math/linalg/glsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/glsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/glsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/glsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [scalarTripleProduct](/core/math/linalg/glsl/#scalarTripleProduct) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/glsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/glsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/glsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/glsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/glsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/glsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/glsl/#tanh) *(procedure groups)*
* [trunc](/core/math/linalg/glsl/#trunc) *(procedure groups)*
* [vectorTripleProduct](/core/math/linalg/glsl/#vectorTripleProduct) *(procedure groups)*

### [dvec4 ¶](#dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L79)

```
dvec4 :: [4]f64
```

##### Related Procedures With Parameters

* [abs\_dvec4](/core/math/linalg/glsl/#abs_dvec4)
* [acos\_dvec4](/core/math/linalg/glsl/#acos_dvec4)
* [acosh\_dvec4](/core/math/linalg/glsl/#acosh_dvec4)
* [asin\_dvec4](/core/math/linalg/glsl/#asin_dvec4)
* [asinh\_dvec4](/core/math/linalg/glsl/#asinh_dvec4)
* [atan2\_dvec4](/core/math/linalg/glsl/#atan2_dvec4)
* [atan\_dvec4](/core/math/linalg/glsl/#atan_dvec4)
* [atanh\_dvec4](/core/math/linalg/glsl/#atanh_dvec4)
* [ceil\_dvec4](/core/math/linalg/glsl/#ceil_dvec4)
* [clamp\_dvec4](/core/math/linalg/glsl/#clamp_dvec4)
* [cos\_dvec4](/core/math/linalg/glsl/#cos_dvec4)
* [cosh\_dvec4](/core/math/linalg/glsl/#cosh_dvec4)
* [degrees\_dvec4](/core/math/linalg/glsl/#degrees_dvec4)
* [distance\_dvec4](/core/math/linalg/glsl/#distance_dvec4)
* [dot\_dvec4](/core/math/linalg/glsl/#dot_dvec4)
* [equal\_dvec4](/core/math/linalg/glsl/#equal_dvec4)
* [exp2\_dvec4](/core/math/linalg/glsl/#exp2_dvec4)
* [exp\_dvec4](/core/math/linalg/glsl/#exp_dvec4)
* [faceForward\_dvec4](/core/math/linalg/glsl/#faceForward_dvec4)
* [floor\_dvec4](/core/math/linalg/glsl/#floor_dvec4)
* [fract\_dvec4](/core/math/linalg/glsl/#fract_dvec4)
* [greaterThanEqual\_dvec4](/core/math/linalg/glsl/#greaterThanEqual_dvec4)
* [greaterThan\_dvec4](/core/math/linalg/glsl/#greaterThan_dvec4)
* [inversesqrt\_dvec4](/core/math/linalg/glsl/#inversesqrt_dvec4)
* [length\_dvec4](/core/math/linalg/glsl/#length_dvec4)
* [lerp\_dvec4](/core/math/linalg/glsl/#lerp_dvec4)
* [lessThanEqual\_dvec4](/core/math/linalg/glsl/#lessThanEqual_dvec4)
* [lessThan\_dvec4](/core/math/linalg/glsl/#lessThan_dvec4)
* [log\_dvec4](/core/math/linalg/glsl/#log_dvec4)
* [max\_dvec4](/core/math/linalg/glsl/#max_dvec4)
* [min\_dvec4](/core/math/linalg/glsl/#min_dvec4)
* [mix\_dvec4](/core/math/linalg/glsl/#mix_dvec4)
* [mod\_dvec4](/core/math/linalg/glsl/#mod_dvec4)
* [normalize\_dvec4](/core/math/linalg/glsl/#normalize_dvec4)
* [notEqual\_dvec4](/core/math/linalg/glsl/#notEqual_dvec4)
* [pow\_dvec4](/core/math/linalg/glsl/#pow_dvec4)
* [radians\_dvec4](/core/math/linalg/glsl/#radians_dvec4)
* [reflect\_dvec4](/core/math/linalg/glsl/#reflect_dvec4)
* [refract\_dvec4](/core/math/linalg/glsl/#refract_dvec4)
* [round\_dvec4](/core/math/linalg/glsl/#round_dvec4)
* [saturate\_dvec4](/core/math/linalg/glsl/#saturate_dvec4)
* [sign\_dvec4](/core/math/linalg/glsl/#sign_dvec4)
* [sin\_dvec4](/core/math/linalg/glsl/#sin_dvec4)
* [sinh\_dvec4](/core/math/linalg/glsl/#sinh_dvec4)
* [smoothstep\_dvec4](/core/math/linalg/glsl/#smoothstep_dvec4)
* [sqrt\_dvec4](/core/math/linalg/glsl/#sqrt_dvec4)
* [step\_dvec4](/core/math/linalg/glsl/#step_dvec4)
* [tan\_dvec4](/core/math/linalg/glsl/#tan_dvec4)
* [tanh\_dvec4](/core/math/linalg/glsl/#tanh_dvec4)
* [trunc\_dvec4](/core/math/linalg/glsl/#trunc_dvec4)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/glsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/glsl/#acosh) *(procedure groups)*
* [asin](/core/math/linalg/glsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/glsl/#asinh) *(procedure groups)*
* [atan](/core/math/linalg/glsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/glsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/glsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/glsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/glsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/glsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/glsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/glsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/glsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/glsl/#exp2) *(procedure groups)*
* [faceForward](/core/math/linalg/glsl/#faceForward) *(procedure groups)*
* [floor](/core/math/linalg/glsl/#floor) *(procedure groups)*
* [fract](/core/math/linalg/glsl/#fract) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [inversesqrt](/core/math/linalg/glsl/#inversesqrt) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/glsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/glsl/#log) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [mix](/core/math/linalg/glsl/#mix) *(procedure groups)*
* [mod](/core/math/linalg/glsl/#mod) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/glsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/glsl/#radians) *(procedure groups)*
* [reflect](/core/math/linalg/glsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/glsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/glsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/glsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/glsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/glsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/glsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/glsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/glsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/glsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/glsl/#tanh) *(procedure groups)*
* [trunc](/core/math/linalg/glsl/#trunc) *(procedure groups)*

### [ivec2 ¶](#ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L47)

```
ivec2 :: [2]i32
```

##### Related Procedures With Parameters

* [abs\_ivec2](/core/math/linalg/glsl/#abs_ivec2)
* [clamp\_ivec2](/core/math/linalg/glsl/#clamp_ivec2)
* [dot\_ivec2](/core/math/linalg/glsl/#dot_ivec2)
* [equal\_ivec2](/core/math/linalg/glsl/#equal_ivec2)
* [greaterThanEqual\_ivec2](/core/math/linalg/glsl/#greaterThanEqual_ivec2)
* [greaterThan\_ivec2](/core/math/linalg/glsl/#greaterThan_ivec2)
* [lessThanEqual\_ivec2](/core/math/linalg/glsl/#lessThanEqual_ivec2)
* [lessThan\_ivec2](/core/math/linalg/glsl/#lessThan_ivec2)
* [max\_ivec2](/core/math/linalg/glsl/#max_ivec2)
* [min\_ivec2](/core/math/linalg/glsl/#min_ivec2)
* [notEqual\_ivec2](/core/math/linalg/glsl/#notEqual_ivec2)
* [saturate\_ivec2](/core/math/linalg/glsl/#saturate_ivec2)
* [sign\_ivec2](/core/math/linalg/glsl/#sign_ivec2)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*

### [ivec3 ¶](#ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L48)

```
ivec3 :: [3]i32
```

##### Related Procedures With Parameters

* [abs\_ivec3](/core/math/linalg/glsl/#abs_ivec3)
* [clamp\_ivec3](/core/math/linalg/glsl/#clamp_ivec3)
* [cross\_ivec3](/core/math/linalg/glsl/#cross_ivec3)
* [dot\_ivec3](/core/math/linalg/glsl/#dot_ivec3)
* [equal\_ivec3](/core/math/linalg/glsl/#equal_ivec3)
* [greaterThanEqual\_ivec3](/core/math/linalg/glsl/#greaterThanEqual_ivec3)
* [greaterThan\_ivec3](/core/math/linalg/glsl/#greaterThan_ivec3)
* [lessThanEqual\_ivec3](/core/math/linalg/glsl/#lessThanEqual_ivec3)
* [lessThan\_ivec3](/core/math/linalg/glsl/#lessThan_ivec3)
* [max\_ivec3](/core/math/linalg/glsl/#max_ivec3)
* [min\_ivec3](/core/math/linalg/glsl/#min_ivec3)
* [notEqual\_ivec3](/core/math/linalg/glsl/#notEqual_ivec3)
* [saturate\_ivec3](/core/math/linalg/glsl/#saturate_ivec3)
* [scalarTripleProduct\_ivec3](/core/math/linalg/glsl/#scalarTripleProduct_ivec3)
* [sign\_ivec3](/core/math/linalg/glsl/#sign_ivec3)
* [vectorTripleProduct\_ivec3](/core/math/linalg/glsl/#vectorTripleProduct_ivec3)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [cross](/core/math/linalg/glsl/#cross) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [scalarTripleProduct](/core/math/linalg/glsl/#scalarTripleProduct) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*
* [vectorTripleProduct](/core/math/linalg/glsl/#vectorTripleProduct) *(procedure groups)*

### [ivec4 ¶](#ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L49)

```
ivec4 :: [4]i32
```

##### Related Procedures With Parameters

* [abs\_ivec4](/core/math/linalg/glsl/#abs_ivec4)
* [clamp\_ivec4](/core/math/linalg/glsl/#clamp_ivec4)
* [dot\_ivec4](/core/math/linalg/glsl/#dot_ivec4)
* [equal\_ivec4](/core/math/linalg/glsl/#equal_ivec4)
* [greaterThanEqual\_ivec4](/core/math/linalg/glsl/#greaterThanEqual_ivec4)
* [greaterThan\_ivec4](/core/math/linalg/glsl/#greaterThan_ivec4)
* [lessThanEqual\_ivec4](/core/math/linalg/glsl/#lessThanEqual_ivec4)
* [lessThan\_ivec4](/core/math/linalg/glsl/#lessThan_ivec4)
* [max\_ivec4](/core/math/linalg/glsl/#max_ivec4)
* [min\_ivec4](/core/math/linalg/glsl/#min_ivec4)
* [notEqual\_ivec4](/core/math/linalg/glsl/#notEqual_ivec4)
* [saturate\_ivec4](/core/math/linalg/glsl/#saturate_ivec4)
* [sign\_ivec4](/core/math/linalg/glsl/#sign_ivec4)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*

### [mat2 ¶](#mat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L25)

```
mat2 :: matrix[2, 2]f32
```

 

Odin matrices are stored internally as Column-Major, which matches OpenGL/GLSL by default




##### Related Procedures With Parameters

* [inverse\_mat2](/core/math/linalg/glsl/#inverse_mat2)

### [mat2x2 ¶](#mat2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L28)

```
mat2x2 :: matrix[2, 2]f32
```

##### Related Procedures With Parameters

* [inverse\_mat2](/core/math/linalg/glsl/#inverse_mat2)

### [mat2x3 ¶](#mat2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L38)

```
mat2x3 :: matrix[3, 2]f32
```

### [mat2x4 ¶](#mat2x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L40)

```
mat2x4 :: matrix[4, 2]f32
```

### [mat3 ¶](#mat3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L26)

```
mat3 :: matrix[3, 3]f32
```

##### Related Procedures With Parameters

* [inverse\_mat3](/core/math/linalg/glsl/#inverse_mat3)
* [quatFromMat3](/core/math/linalg/glsl/#quatFromMat3)

### [mat3x2 ¶](#mat3x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L36)

```
mat3x2 :: matrix[2, 3]f32
```

 

IMPORTANT NOTE: These data types are "backwards" in normal mathematical terms
but they match how GLSL and OpenGL defines them in name
Odin: matrix[R, C]f32
GLSL: matCxR

### [mat3x3 ¶](#mat3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L29)

```
mat3x3 :: matrix[3, 3]f32
```

##### Related Procedures With Parameters

* [inverse\_mat3](/core/math/linalg/glsl/#inverse_mat3)
* [quatFromMat3](/core/math/linalg/glsl/#quatFromMat3)

### [mat3x4 ¶](#mat3x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L41)

```
mat3x4 :: matrix[4, 3]f32
```

### [mat4 ¶](#mat4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L27)

```
mat4 :: matrix[4, 4]f32
```

##### Related Procedures With Parameters

* [inverse\_mat4](/core/math/linalg/glsl/#inverse_mat4)
* [quatFromMat4](/core/math/linalg/glsl/#quatFromMat4)



##### Related Procedures With Returns

* [mat4FromQuat](/core/math/linalg/glsl/#mat4FromQuat)
* [mat4LookAt](/core/math/linalg/glsl/#mat4LookAt)
* [mat4Orientation](/core/math/linalg/glsl/#mat4Orientation)
* [mat4Ortho3d](/core/math/linalg/glsl/#mat4Ortho3d)
* [mat4Perspective](/core/math/linalg/glsl/#mat4Perspective)
* [mat4PerspectiveInfinite](/core/math/linalg/glsl/#mat4PerspectiveInfinite)
* [mat4Rotate](/core/math/linalg/glsl/#mat4Rotate)
* [mat4Scale](/core/math/linalg/glsl/#mat4Scale)
* [mat4Translate](/core/math/linalg/glsl/#mat4Translate)

### [mat4x2 ¶](#mat4x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L37)

```
mat4x2 :: matrix[2, 4]f32
```

### [mat4x3 ¶](#mat4x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L39)

```
mat4x3 :: matrix[3, 4]f32
```

### [mat4x4 ¶](#mat4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L30)

```
mat4x4 :: matrix[4, 4]f32
```

##### Related Procedures With Parameters

* [inverse\_mat4](/core/math/linalg/glsl/#inverse_mat4)
* [quatFromMat4](/core/math/linalg/glsl/#quatFromMat4)



##### Related Procedures With Returns

* [mat4FromQuat](/core/math/linalg/glsl/#mat4FromQuat)
* [mat4LookAt](/core/math/linalg/glsl/#mat4LookAt)
* [mat4Orientation](/core/math/linalg/glsl/#mat4Orientation)
* [mat4Ortho3d](/core/math/linalg/glsl/#mat4Ortho3d)
* [mat4Perspective](/core/math/linalg/glsl/#mat4Perspective)
* [mat4PerspectiveInfinite](/core/math/linalg/glsl/#mat4PerspectiveInfinite)
* [mat4Rotate](/core/math/linalg/glsl/#mat4Rotate)
* [mat4Scale](/core/math/linalg/glsl/#mat4Scale)
* [mat4Translate](/core/math/linalg/glsl/#mat4Translate)

### [quat ¶](#quat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L59)

```
quat :: quaternion128
```

##### Related Procedures With Parameters

* [dot\_quat](/core/math/linalg/glsl/#dot_quat)
* [inverse\_quat](/core/math/linalg/glsl/#inverse_quat)
* [length\_quat](/core/math/linalg/glsl/#length_quat)
* [mat4FromQuat](/core/math/linalg/glsl/#mat4FromQuat)
* [normalize\_quat](/core/math/linalg/glsl/#normalize_quat)
* [quatMulVec3](/core/math/linalg/glsl/#quatMulVec3)
* [quatNlerp](/core/math/linalg/glsl/#quatNlerp)
* [quatSlerp](/core/math/linalg/glsl/#quatSlerp)
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [nlerp](/core/math/linalg/glsl/#nlerp) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [slerp](/core/math/linalg/glsl/#slerp) *(procedure groups)*



##### Related Procedures With Returns

* [quatAxisAngle](/core/math/linalg/glsl/#quatAxisAngle)
* [quatFromMat3](/core/math/linalg/glsl/#quatFromMat3)
* [quatFromMat4](/core/math/linalg/glsl/#quatFromMat4)

### [uvec2 ¶](#uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L51)

```
uvec2 :: [2]u32
```

##### Related Procedures With Parameters

* [abs\_uvec2](/core/math/linalg/glsl/#abs_uvec2)
* [clamp\_uvec2](/core/math/linalg/glsl/#clamp_uvec2)
* [dot\_uvec2](/core/math/linalg/glsl/#dot_uvec2)
* [equal\_uvec2](/core/math/linalg/glsl/#equal_uvec2)
* [greaterThanEqual\_uvec2](/core/math/linalg/glsl/#greaterThanEqual_uvec2)
* [greaterThan\_uvec2](/core/math/linalg/glsl/#greaterThan_uvec2)
* [lessThanEqual\_uvec2](/core/math/linalg/glsl/#lessThanEqual_uvec2)
* [lessThan\_uvec2](/core/math/linalg/glsl/#lessThan_uvec2)
* [max\_uvec2](/core/math/linalg/glsl/#max_uvec2)
* [min\_uvec2](/core/math/linalg/glsl/#min_uvec2)
* [notEqual\_uvec2](/core/math/linalg/glsl/#notEqual_uvec2)
* [saturate\_uvec2](/core/math/linalg/glsl/#saturate_uvec2)
* [sign\_uvec2](/core/math/linalg/glsl/#sign_uvec2)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*

### [uvec3 ¶](#uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L52)

```
uvec3 :: [3]u32
```

##### Related Procedures With Parameters

* [abs\_uvec3](/core/math/linalg/glsl/#abs_uvec3)
* [clamp\_uvec3](/core/math/linalg/glsl/#clamp_uvec3)
* [dot\_uvec3](/core/math/linalg/glsl/#dot_uvec3)
* [equal\_uvec3](/core/math/linalg/glsl/#equal_uvec3)
* [greaterThanEqual\_uvec3](/core/math/linalg/glsl/#greaterThanEqual_uvec3)
* [greaterThan\_uvec3](/core/math/linalg/glsl/#greaterThan_uvec3)
* [lessThanEqual\_uvec3](/core/math/linalg/glsl/#lessThanEqual_uvec3)
* [lessThan\_uvec3](/core/math/linalg/glsl/#lessThan_uvec3)
* [max\_uvec3](/core/math/linalg/glsl/#max_uvec3)
* [min\_uvec3](/core/math/linalg/glsl/#min_uvec3)
* [notEqual\_uvec3](/core/math/linalg/glsl/#notEqual_uvec3)
* [saturate\_uvec3](/core/math/linalg/glsl/#saturate_uvec3)
* [sign\_uvec3](/core/math/linalg/glsl/#sign_uvec3)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*

### [uvec4 ¶](#uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L53)

```
uvec4 :: [4]u32
```

##### Related Procedures With Parameters

* [abs\_uvec4](/core/math/linalg/glsl/#abs_uvec4)
* [clamp\_uvec4](/core/math/linalg/glsl/#clamp_uvec4)
* [dot\_uvec4](/core/math/linalg/glsl/#dot_uvec4)
* [equal\_uvec4](/core/math/linalg/glsl/#equal_uvec4)
* [greaterThanEqual\_uvec4](/core/math/linalg/glsl/#greaterThanEqual_uvec4)
* [greaterThan\_uvec4](/core/math/linalg/glsl/#greaterThan_uvec4)
* [lessThanEqual\_uvec4](/core/math/linalg/glsl/#lessThanEqual_uvec4)
* [lessThan\_uvec4](/core/math/linalg/glsl/#lessThan_uvec4)
* [max\_uvec4](/core/math/linalg/glsl/#max_uvec4)
* [min\_uvec4](/core/math/linalg/glsl/#min_uvec4)
* [notEqual\_uvec4](/core/math/linalg/glsl/#notEqual_uvec4)
* [saturate\_uvec4](/core/math/linalg/glsl/#saturate_uvec4)
* [sign\_uvec4](/core/math/linalg/glsl/#sign_uvec4)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*

### [vec2 ¶](#vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L43)

```
vec2 :: [2]f32
```

##### Related Procedures With Parameters

* [abs\_vec2](/core/math/linalg/glsl/#abs_vec2)
* [acos\_vec2](/core/math/linalg/glsl/#acos_vec2)
* [acosh\_vec2](/core/math/linalg/glsl/#acosh_vec2)
* [asin\_vec2](/core/math/linalg/glsl/#asin_vec2)
* [asinh\_vec2](/core/math/linalg/glsl/#asinh_vec2)
* [atan2\_vec2](/core/math/linalg/glsl/#atan2_vec2)
* [atan\_vec2](/core/math/linalg/glsl/#atan_vec2)
* [atanh\_vec2](/core/math/linalg/glsl/#atanh_vec2)
* [ceil\_vec2](/core/math/linalg/glsl/#ceil_vec2)
* [clamp\_vec2](/core/math/linalg/glsl/#clamp_vec2)
* [cos\_vec2](/core/math/linalg/glsl/#cos_vec2)
* [cosh\_vec2](/core/math/linalg/glsl/#cosh_vec2)
* [degrees\_vec2](/core/math/linalg/glsl/#degrees_vec2)
* [distance\_vec2](/core/math/linalg/glsl/#distance_vec2)
* [dot\_vec2](/core/math/linalg/glsl/#dot_vec2)
* [equal\_vec2](/core/math/linalg/glsl/#equal_vec2)
* [exp2\_vec2](/core/math/linalg/glsl/#exp2_vec2)
* [exp\_vec2](/core/math/linalg/glsl/#exp_vec2)
* [faceForward\_vec2](/core/math/linalg/glsl/#faceForward_vec2)
* [floor\_vec2](/core/math/linalg/glsl/#floor_vec2)
* [fract\_vec2](/core/math/linalg/glsl/#fract_vec2)
* [greaterThanEqual\_vec2](/core/math/linalg/glsl/#greaterThanEqual_vec2)
* [greaterThan\_vec2](/core/math/linalg/glsl/#greaterThan_vec2)
* [inversesqrt\_vec2](/core/math/linalg/glsl/#inversesqrt_vec2)
* [length\_vec2](/core/math/linalg/glsl/#length_vec2)
* [lerp\_vec2](/core/math/linalg/glsl/#lerp_vec2)
* [lessThanEqual\_vec2](/core/math/linalg/glsl/#lessThanEqual_vec2)
* [lessThan\_vec2](/core/math/linalg/glsl/#lessThan_vec2)
* [log\_vec2](/core/math/linalg/glsl/#log_vec2)
* [max\_vec2](/core/math/linalg/glsl/#max_vec2)
* [min\_vec2](/core/math/linalg/glsl/#min_vec2)
* [mix\_vec2](/core/math/linalg/glsl/#mix_vec2)
* [mod\_vec2](/core/math/linalg/glsl/#mod_vec2)
* [normalize\_vec2](/core/math/linalg/glsl/#normalize_vec2)
* [notEqual\_vec2](/core/math/linalg/glsl/#notEqual_vec2)
* [pow\_vec2](/core/math/linalg/glsl/#pow_vec2)
* [radians\_vec2](/core/math/linalg/glsl/#radians_vec2)
* [reflect\_vec2](/core/math/linalg/glsl/#reflect_vec2)
* [refract\_vec2](/core/math/linalg/glsl/#refract_vec2)
* [round\_vec2](/core/math/linalg/glsl/#round_vec2)
* [saturate\_vec2](/core/math/linalg/glsl/#saturate_vec2)
* [sign\_vec2](/core/math/linalg/glsl/#sign_vec2)
* [sin\_vec2](/core/math/linalg/glsl/#sin_vec2)
* [sinh\_vec2](/core/math/linalg/glsl/#sinh_vec2)
* [smoothstep\_vec2](/core/math/linalg/glsl/#smoothstep_vec2)
* [sqrt\_vec2](/core/math/linalg/glsl/#sqrt_vec2)
* [step\_vec2](/core/math/linalg/glsl/#step_vec2)
* [tan\_vec2](/core/math/linalg/glsl/#tan_vec2)
* [tanh\_vec2](/core/math/linalg/glsl/#tanh_vec2)
* [trunc\_vec2](/core/math/linalg/glsl/#trunc_vec2)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/glsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/glsl/#acosh) *(procedure groups)*
* [asin](/core/math/linalg/glsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/glsl/#asinh) *(procedure groups)*
* [atan](/core/math/linalg/glsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/glsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/glsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/glsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/glsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/glsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/glsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/glsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/glsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/glsl/#exp2) *(procedure groups)*
* [faceForward](/core/math/linalg/glsl/#faceForward) *(procedure groups)*
* [floor](/core/math/linalg/glsl/#floor) *(procedure groups)*
* [fract](/core/math/linalg/glsl/#fract) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [inversesqrt](/core/math/linalg/glsl/#inversesqrt) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/glsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/glsl/#log) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [mix](/core/math/linalg/glsl/#mix) *(procedure groups)*
* [mod](/core/math/linalg/glsl/#mod) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/glsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/glsl/#radians) *(procedure groups)*
* [reflect](/core/math/linalg/glsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/glsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/glsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/glsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/glsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/glsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/glsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/glsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/glsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/glsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/glsl/#tanh) *(procedure groups)*
* [trunc](/core/math/linalg/glsl/#trunc) *(procedure groups)*

### [vec3 ¶](#vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L44)

```
vec3 :: [3]f32
```

##### Related Procedures With Parameters

* [abs\_vec3](/core/math/linalg/glsl/#abs_vec3)
* [acos\_vec3](/core/math/linalg/glsl/#acos_vec3)
* [acosh\_vec3](/core/math/linalg/glsl/#acosh_vec3)
* [asin\_vec3](/core/math/linalg/glsl/#asin_vec3)
* [asinh\_vec3](/core/math/linalg/glsl/#asinh_vec3)
* [atan2\_vec3](/core/math/linalg/glsl/#atan2_vec3)
* [atan\_vec3](/core/math/linalg/glsl/#atan_vec3)
* [atanh\_vec3](/core/math/linalg/glsl/#atanh_vec3)
* [ceil\_vec3](/core/math/linalg/glsl/#ceil_vec3)
* [clamp\_vec3](/core/math/linalg/glsl/#clamp_vec3)
* [cos\_vec3](/core/math/linalg/glsl/#cos_vec3)
* [cosh\_vec3](/core/math/linalg/glsl/#cosh_vec3)
* [cross\_vec3](/core/math/linalg/glsl/#cross_vec3)
* [degrees\_vec3](/core/math/linalg/glsl/#degrees_vec3)
* [distance\_vec3](/core/math/linalg/glsl/#distance_vec3)
* [dot\_vec3](/core/math/linalg/glsl/#dot_vec3)
* [equal\_vec3](/core/math/linalg/glsl/#equal_vec3)
* [exp2\_vec3](/core/math/linalg/glsl/#exp2_vec3)
* [exp\_vec3](/core/math/linalg/glsl/#exp_vec3)
* [faceForward\_vec3](/core/math/linalg/glsl/#faceForward_vec3)
* [floor\_vec3](/core/math/linalg/glsl/#floor_vec3)
* [fract\_vec3](/core/math/linalg/glsl/#fract_vec3)
* [greaterThanEqual\_vec3](/core/math/linalg/glsl/#greaterThanEqual_vec3)
* [greaterThan\_vec3](/core/math/linalg/glsl/#greaterThan_vec3)
* [inversesqrt\_vec3](/core/math/linalg/glsl/#inversesqrt_vec3)
* [length\_vec3](/core/math/linalg/glsl/#length_vec3)
* [lerp\_vec3](/core/math/linalg/glsl/#lerp_vec3)
* [lessThanEqual\_vec3](/core/math/linalg/glsl/#lessThanEqual_vec3)
* [lessThan\_vec3](/core/math/linalg/glsl/#lessThan_vec3)
* [log\_vec3](/core/math/linalg/glsl/#log_vec3)
* [mat4LookAt](/core/math/linalg/glsl/#mat4LookAt)
* [mat4Orientation](/core/math/linalg/glsl/#mat4Orientation)
* [mat4Rotate](/core/math/linalg/glsl/#mat4Rotate)
* [mat4Scale](/core/math/linalg/glsl/#mat4Scale)
* [mat4Translate](/core/math/linalg/glsl/#mat4Translate)
* [max\_vec3](/core/math/linalg/glsl/#max_vec3)
* [min\_vec3](/core/math/linalg/glsl/#min_vec3)
* [mix\_vec3](/core/math/linalg/glsl/#mix_vec3)
* [mod\_vec3](/core/math/linalg/glsl/#mod_vec3)
* [normalize\_vec3](/core/math/linalg/glsl/#normalize_vec3)
* [notEqual\_vec3](/core/math/linalg/glsl/#notEqual_vec3)
* [pow\_vec3](/core/math/linalg/glsl/#pow_vec3)
* [quatAxisAngle](/core/math/linalg/glsl/#quatAxisAngle)
* [quatMulVec3](/core/math/linalg/glsl/#quatMulVec3)
* [radians\_vec3](/core/math/linalg/glsl/#radians_vec3)
* [reflect\_vec3](/core/math/linalg/glsl/#reflect_vec3)
* [refract\_vec3](/core/math/linalg/glsl/#refract_vec3)
* [round\_vec3](/core/math/linalg/glsl/#round_vec3)
* [saturate\_vec3](/core/math/linalg/glsl/#saturate_vec3)
* [scalarTripleProduct\_vec3](/core/math/linalg/glsl/#scalarTripleProduct_vec3)
* [sign\_vec3](/core/math/linalg/glsl/#sign_vec3)
* [sin\_vec3](/core/math/linalg/glsl/#sin_vec3)
* [sinh\_vec3](/core/math/linalg/glsl/#sinh_vec3)
* [smoothstep\_vec3](/core/math/linalg/glsl/#smoothstep_vec3)
* [sqrt\_vec3](/core/math/linalg/glsl/#sqrt_vec3)
* [step\_vec3](/core/math/linalg/glsl/#step_vec3)
* [tan\_vec3](/core/math/linalg/glsl/#tan_vec3)
* [tanh\_vec3](/core/math/linalg/glsl/#tanh_vec3)
* [trunc\_vec3](/core/math/linalg/glsl/#trunc_vec3)
* [vectorTripleProduct\_vec3](/core/math/linalg/glsl/#vectorTripleProduct_vec3)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/glsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/glsl/#acosh) *(procedure groups)*
* [asin](/core/math/linalg/glsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/glsl/#asinh) *(procedure groups)*
* [atan](/core/math/linalg/glsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/glsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/glsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/glsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/glsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/glsl/#cosh) *(procedure groups)*
* [cross](/core/math/linalg/glsl/#cross) *(procedure groups)*
* [degrees](/core/math/linalg/glsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/glsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/glsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/glsl/#exp2) *(procedure groups)*
* [faceForward](/core/math/linalg/glsl/#faceForward) *(procedure groups)*
* [floor](/core/math/linalg/glsl/#floor) *(procedure groups)*
* [fract](/core/math/linalg/glsl/#fract) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [inversesqrt](/core/math/linalg/glsl/#inversesqrt) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/glsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/glsl/#log) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [mix](/core/math/linalg/glsl/#mix) *(procedure groups)*
* [mod](/core/math/linalg/glsl/#mod) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/glsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/glsl/#radians) *(procedure groups)*
* [reflect](/core/math/linalg/glsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/glsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/glsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/glsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [scalarTripleProduct](/core/math/linalg/glsl/#scalarTripleProduct) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/glsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/glsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/glsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/glsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/glsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/glsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/glsl/#tanh) *(procedure groups)*
* [trunc](/core/math/linalg/glsl/#trunc) *(procedure groups)*
* [vectorTripleProduct](/core/math/linalg/glsl/#vectorTripleProduct) *(procedure groups)*

### [vec4 ¶](#vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L45)

```
vec4 :: [4]f32
```

##### Related Procedures With Parameters

* [abs\_vec4](/core/math/linalg/glsl/#abs_vec4)
* [acos\_vec4](/core/math/linalg/glsl/#acos_vec4)
* [acosh\_vec4](/core/math/linalg/glsl/#acosh_vec4)
* [asin\_vec4](/core/math/linalg/glsl/#asin_vec4)
* [asinh\_vec4](/core/math/linalg/glsl/#asinh_vec4)
* [atan2\_vec4](/core/math/linalg/glsl/#atan2_vec4)
* [atan\_vec4](/core/math/linalg/glsl/#atan_vec4)
* [atanh\_vec4](/core/math/linalg/glsl/#atanh_vec4)
* [ceil\_vec4](/core/math/linalg/glsl/#ceil_vec4)
* [clamp\_vec4](/core/math/linalg/glsl/#clamp_vec4)
* [cos\_vec4](/core/math/linalg/glsl/#cos_vec4)
* [cosh\_vec4](/core/math/linalg/glsl/#cosh_vec4)
* [degrees\_vec4](/core/math/linalg/glsl/#degrees_vec4)
* [distance\_vec4](/core/math/linalg/glsl/#distance_vec4)
* [dot\_vec4](/core/math/linalg/glsl/#dot_vec4)
* [equal\_vec4](/core/math/linalg/glsl/#equal_vec4)
* [exp2\_vec4](/core/math/linalg/glsl/#exp2_vec4)
* [exp\_vec4](/core/math/linalg/glsl/#exp_vec4)
* [faceForward\_vec4](/core/math/linalg/glsl/#faceForward_vec4)
* [floor\_vec4](/core/math/linalg/glsl/#floor_vec4)
* [fract\_vec4](/core/math/linalg/glsl/#fract_vec4)
* [greaterThanEqual\_vec4](/core/math/linalg/glsl/#greaterThanEqual_vec4)
* [greaterThan\_vec4](/core/math/linalg/glsl/#greaterThan_vec4)
* [inversesqrt\_vec4](/core/math/linalg/glsl/#inversesqrt_vec4)
* [length\_vec4](/core/math/linalg/glsl/#length_vec4)
* [lerp\_vec4](/core/math/linalg/glsl/#lerp_vec4)
* [lessThanEqual\_vec4](/core/math/linalg/glsl/#lessThanEqual_vec4)
* [lessThan\_vec4](/core/math/linalg/glsl/#lessThan_vec4)
* [log\_vec4](/core/math/linalg/glsl/#log_vec4)
* [max\_vec4](/core/math/linalg/glsl/#max_vec4)
* [min\_vec4](/core/math/linalg/glsl/#min_vec4)
* [mix\_vec4](/core/math/linalg/glsl/#mix_vec4)
* [mod\_vec4](/core/math/linalg/glsl/#mod_vec4)
* [normalize\_vec4](/core/math/linalg/glsl/#normalize_vec4)
* [notEqual\_vec4](/core/math/linalg/glsl/#notEqual_vec4)
* [pow\_vec4](/core/math/linalg/glsl/#pow_vec4)
* [radians\_vec4](/core/math/linalg/glsl/#radians_vec4)
* [reflect\_vec4](/core/math/linalg/glsl/#reflect_vec4)
* [refract\_vec4](/core/math/linalg/glsl/#refract_vec4)
* [round\_vec4](/core/math/linalg/glsl/#round_vec4)
* [saturate\_vec4](/core/math/linalg/glsl/#saturate_vec4)
* [sign\_vec4](/core/math/linalg/glsl/#sign_vec4)
* [sin\_vec4](/core/math/linalg/glsl/#sin_vec4)
* [sinh\_vec4](/core/math/linalg/glsl/#sinh_vec4)
* [smoothstep\_vec4](/core/math/linalg/glsl/#smoothstep_vec4)
* [sqrt\_vec4](/core/math/linalg/glsl/#sqrt_vec4)
* [step\_vec4](/core/math/linalg/glsl/#step_vec4)
* [tan\_vec4](/core/math/linalg/glsl/#tan_vec4)
* [tanh\_vec4](/core/math/linalg/glsl/#tanh_vec4)
* [trunc\_vec4](/core/math/linalg/glsl/#trunc_vec4)
* [abs](/core/math/linalg/glsl/#abs) *(procedure groups)*
* [acos](/core/math/linalg/glsl/#acos) *(procedure groups)*
* [acosh](/core/math/linalg/glsl/#acosh) *(procedure groups)*
* [asin](/core/math/linalg/glsl/#asin) *(procedure groups)*
* [asinh](/core/math/linalg/glsl/#asinh) *(procedure groups)*
* [atan](/core/math/linalg/glsl/#atan) *(procedure groups)*
* [atan2](/core/math/linalg/glsl/#atan2) *(procedure groups)*
* [atanh](/core/math/linalg/glsl/#atanh) *(procedure groups)*
* [ceil](/core/math/linalg/glsl/#ceil) *(procedure groups)*
* [clamp](/core/math/linalg/glsl/#clamp) *(procedure groups)*
* [cos](/core/math/linalg/glsl/#cos) *(procedure groups)*
* [cosh](/core/math/linalg/glsl/#cosh) *(procedure groups)*
* [degrees](/core/math/linalg/glsl/#degrees) *(procedure groups)*
* [distance](/core/math/linalg/glsl/#distance) *(procedure groups)*
* [dot](/core/math/linalg/glsl/#dot) *(procedure groups)*
* [equal](/core/math/linalg/glsl/#equal) *(procedure groups)*
* [exp](/core/math/linalg/glsl/#exp) *(procedure groups)*
* [exp2](/core/math/linalg/glsl/#exp2) *(procedure groups)*
* [faceForward](/core/math/linalg/glsl/#faceForward) *(procedure groups)*
* [floor](/core/math/linalg/glsl/#floor) *(procedure groups)*
* [fract](/core/math/linalg/glsl/#fract) *(procedure groups)*
* [greaterThan](/core/math/linalg/glsl/#greaterThan) *(procedure groups)*
* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual) *(procedure groups)*
* [inversesqrt](/core/math/linalg/glsl/#inversesqrt) *(procedure groups)*
* [length](/core/math/linalg/glsl/#length) *(procedure groups)*
* [lerp](/core/math/linalg/glsl/#lerp) *(procedure groups)*
* [lessThan](/core/math/linalg/glsl/#lessThan) *(procedure groups)*
* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual) *(procedure groups)*
* [log](/core/math/linalg/glsl/#log) *(procedure groups)*
* [max](/core/math/linalg/glsl/#max) *(procedure groups)*
* [min](/core/math/linalg/glsl/#min) *(procedure groups)*
* [mix](/core/math/linalg/glsl/#mix) *(procedure groups)*
* [mod](/core/math/linalg/glsl/#mod) *(procedure groups)*
* [normalize](/core/math/linalg/glsl/#normalize) *(procedure groups)*
* [notEqual](/core/math/linalg/glsl/#notEqual) *(procedure groups)*
* [pow](/core/math/linalg/glsl/#pow) *(procedure groups)*
* [radians](/core/math/linalg/glsl/#radians) *(procedure groups)*
* [reflect](/core/math/linalg/glsl/#reflect) *(procedure groups)*
* [refract](/core/math/linalg/glsl/#refract) *(procedure groups)*
* [round](/core/math/linalg/glsl/#round) *(procedure groups)*
* [rsqrt](/core/math/linalg/glsl/#rsqrt) *(procedure groups)*
* [saturate](/core/math/linalg/glsl/#saturate) *(procedure groups)*
* [sign](/core/math/linalg/glsl/#sign) *(procedure groups)*
* [sin](/core/math/linalg/glsl/#sin) *(procedure groups)*
* [sinh](/core/math/linalg/glsl/#sinh) *(procedure groups)*
* [smoothstep](/core/math/linalg/glsl/#smoothstep) *(procedure groups)*
* [sqrt](/core/math/linalg/glsl/#sqrt) *(procedure groups)*
* [step](/core/math/linalg/glsl/#step) *(procedure groups)*
* [tan](/core/math/linalg/glsl/#tan) *(procedure groups)*
* [tanh](/core/math/linalg/glsl/#tanh) *(procedure groups)*
* [trunc](/core/math/linalg/glsl/#trunc) *(procedure groups)*

## Constants

### [E ¶](#E) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L9)

```
E :: 2.71828182845904523536
```

### [F32\_EPSILON ¶](#F32_EPSILON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L21)

```
F32_EPSILON :: 1e-7
```

### [F64\_EPSILON ¶](#F64_EPSILON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L22)

```
F64_EPSILON :: 1e-15
```

### [LN10 ¶](#LN10) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L19)

```
LN10 :: 2.30258509299404568401799145468436421
```

### [LN2 ¶](#LN2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L18)

```
LN2 :: 0.693147180559945309417232121458176568
```

### [PI ¶](#PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L8)

```
PI :: 3.14159265358979323846264338327950288
```

### [SQRT\_FIVE ¶](#SQRT_FIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L16)

```
SQRT_FIVE :: 2.23606797749978969640917366873127623
```

### [SQRT\_THREE ¶](#SQRT_THREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L15)

```
SQRT_THREE :: 1.73205080756887729352744634150587236
```

### [SQRT\_TWO ¶](#SQRT_TWO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L14)

```
SQRT_TWO :: 1.41421356237309504880168872420969808
```

### [TAU ¶](#TAU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L7)

```
TAU :: 6.28318530717958647692528676655900576
```

### [e ¶](#e) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L12)

```
e :: E
```

### [π ¶](#π) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L11)

```
π :: PI
```

### [τ ¶](#τ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L10)

```
τ :: TAU
```

## Variables

This section is empty.

## Procedures

### [abs\_dvec2 ¶](#abs_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L858)

```
abs_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_dvec3 ¶](#abs_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L859)

```
abs_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_dvec4 ¶](#abs_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L860)

```
abs_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_f32 ¶](#abs_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L853)

```
abs_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_f64 ¶](#abs_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L854)

```
abs_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_i32 ¶](#abs_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L851)

```
abs_i32 :: proc "c" (x: i32) -> i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_ivec2 ¶](#abs_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L861)

```
abs_ivec2 :: proc "c" (x: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_ivec3 ¶](#abs_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L862)

```
abs_ivec3 :: proc "c" (x: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_ivec4 ¶](#abs_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L863)

```
abs_ivec4 :: proc "c" (x: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_u32 ¶](#abs_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L852)

```
abs_u32 :: proc "c" (x: u32) -> u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_uvec2 ¶](#abs_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L864)

```
abs_uvec2 :: proc "c" (x: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_uvec3 ¶](#abs_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L865)

```
abs_uvec3 :: proc "c" (x: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_uvec4 ¶](#abs_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L866)

```
abs_uvec4 :: proc "c" (x: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_vec2 ¶](#abs_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L855)

```
abs_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_vec3 ¶](#abs_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L856)

```
abs_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [abs\_vec4 ¶](#abs_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L857)

```
abs_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [abs](/core/math/linalg/glsl/#abs)

### [acos\_dvec2 ¶](#acos_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L147)

```
acos_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acos\_dvec3 ¶](#acos_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L148)

```
acos_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acos\_dvec4 ¶](#acos_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L149)

```
acos_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acos\_f32 ¶](#acos_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L8)

```
acos_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acos\_f64 ¶](#acos_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L41)

```
acos_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acos\_vec2 ¶](#acos_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L144)

```
acos_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acos\_vec3 ¶](#acos_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L145)

```
acos_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acos\_vec4 ¶](#acos_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L146)

```
acos_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [acos](/core/math/linalg/glsl/#acos)

### [acosh\_dvec2 ¶](#acosh_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L277)

```
acosh_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [acosh\_dvec3 ¶](#acosh_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L278)

```
acosh_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [acosh\_dvec4 ¶](#acosh_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L279)

```
acosh_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [acosh\_f32 ¶](#acosh_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L15)

```
acosh_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [acosh\_f64 ¶](#acosh_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L48)

```
acosh_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [acosh\_vec2 ¶](#acosh_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L274)

```
acosh_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [acosh\_vec3 ¶](#acosh_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L275)

```
acosh_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [acosh\_vec4 ¶](#acosh_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L276)

```
acosh_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [acosh](/core/math/linalg/glsl/#acosh)

### [adjugate\_matrix1x1 ¶](#adjugate_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1965)

```
adjugate_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/glsl/#adjugate)

### [adjugate\_matrix2x2 ¶](#adjugate_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1971)

```
adjugate_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/glsl/#adjugate)

### [adjugate\_matrix3x3 ¶](#adjugate_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1980)

```
adjugate_matrix3x3 :: proc "contextless" (m: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/glsl/#adjugate)

### [adjugate\_matrix4x4 ¶](#adjugate_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1994)

```
adjugate_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [adjugate](/core/math/linalg/glsl/#adjugate)

### [all\_bool ¶](#all_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1354)

```
all_bool :: proc "c" (v: bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/glsl/#all)

### [all\_bvec2 ¶](#all_bvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1355)

```
all_bvec2 :: proc "c" (v: [2]bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/glsl/#all)

### [all\_bvec3 ¶](#all_bvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1356)

```
all_bvec3 :: proc "c" (v: [3]bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/glsl/#all)

### [all\_bvec4 ¶](#all_bvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1357)

```
all_bvec4 :: proc "c" (v: [4]bool) -> bool {…}
```

##### Related Procedure Groups

* [all](/core/math/linalg/glsl/#all)

### [any\_bool ¶](#any_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1343)

```
any_bool :: proc "c" (v: bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/glsl/#any)

### [any\_bvec2 ¶](#any_bvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1344)

```
any_bvec2 :: proc "c" (v: [2]bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/glsl/#any)

### [any\_bvec3 ¶](#any_bvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1345)

```
any_bvec3 :: proc "c" (v: [3]bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/glsl/#any)

### [any\_bvec4 ¶](#any_bvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1346)

```
any_bvec4 :: proc "c" (v: [4]bool) -> bool {…}
```

##### Related Procedure Groups

* [any](/core/math/linalg/glsl/#any)

### [asin\_dvec2 ¶](#asin_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L164)

```
asin_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asin\_dvec3 ¶](#asin_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L165)

```
asin_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asin\_dvec4 ¶](#asin_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L166)

```
asin_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asin\_f32 ¶](#asin_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L9)

```
asin_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asin\_f64 ¶](#asin_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L42)

```
asin_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asin\_vec2 ¶](#asin_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L161)

```
asin_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asin\_vec3 ¶](#asin_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L162)

```
asin_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asin\_vec4 ¶](#asin_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L163)

```
asin_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asin](/core/math/linalg/glsl/#asin)

### [asinh\_dvec2 ¶](#asinh_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L294)

```
asinh_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [asinh\_dvec3 ¶](#asinh_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L295)

```
asinh_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [asinh\_dvec4 ¶](#asinh_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L296)

```
asinh_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [asinh\_f32 ¶](#asinh_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L16)

```
asinh_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [asinh\_f64 ¶](#asinh_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L49)

```
asinh_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [asinh\_vec2 ¶](#asinh_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L291)

```
asinh_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [asinh\_vec3 ¶](#asinh_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L292)

```
asinh_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [asinh\_vec4 ¶](#asinh_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L293)

```
asinh_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [asinh](/core/math/linalg/glsl/#asinh)

### [atan2\_dvec2 ¶](#atan2_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L206)

```
atan2_dvec2 :: proc "c" (y, x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan2\_dvec3 ¶](#atan2_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L207)

```
atan2_dvec3 :: proc "c" (y, x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan2\_dvec4 ¶](#atan2_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L208)

```
atan2_dvec4 :: proc "c" (y, x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan2\_f32 ¶](#atan2_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L11)

```
atan2_f32 :: proc "c" (y, x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan2\_f64 ¶](#atan2_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L44)

```
atan2_f64 :: proc "c" (y, x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan2\_vec2 ¶](#atan2_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L203)

```
atan2_vec2 :: proc "c" (y, x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan2\_vec3 ¶](#atan2_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L204)

```
atan2_vec3 :: proc "c" (y, x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan2\_vec4 ¶](#atan2_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L205)

```
atan2_vec4 :: proc "c" (y, x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)
* [atan2](/core/math/linalg/glsl/#atan2)

### [atan\_dvec2 ¶](#atan_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L189)

```
atan_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atan\_dvec3 ¶](#atan_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L190)

```
atan_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atan\_dvec4 ¶](#atan_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L191)

```
atan_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atan\_f32 ¶](#atan_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L10)

```
atan_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atan\_f64 ¶](#atan_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L43)

```
atan_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atan\_vec2 ¶](#atan_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L186)

```
atan_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atan\_vec3 ¶](#atan_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L187)

```
atan_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atan\_vec4 ¶](#atan_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L188)

```
atan_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [atan](/core/math/linalg/glsl/#atan)

### [atanh\_dvec2 ¶](#atanh_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L311)

```
atanh_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [atanh\_dvec3 ¶](#atanh_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L312)

```
atanh_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [atanh\_dvec4 ¶](#atanh_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L313)

```
atanh_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [atanh\_f32 ¶](#atanh_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L17)

```
atanh_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [atanh\_f64 ¶](#atanh_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L50)

```
atanh_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [atanh\_vec2 ¶](#atanh_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L308)

```
atanh_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [atanh\_vec3 ¶](#atanh_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L309)

```
atanh_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [atanh\_vec4 ¶](#atanh_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L310)

```
atanh_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [atanh](/core/math/linalg/glsl/#atanh)

### [ceil\_dvec2 ¶](#ceil_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L525)

```
ceil_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [ceil\_dvec3 ¶](#ceil_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L526)

```
ceil_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [ceil\_dvec4 ¶](#ceil_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L527)

```
ceil_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [ceil\_f32 ¶](#ceil_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L28)

```
ceil_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [ceil\_f64 ¶](#ceil_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L61)

```
ceil_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [ceil\_vec2 ¶](#ceil_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L522)

```
ceil_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [ceil\_vec3 ¶](#ceil_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L523)

```
ceil_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [ceil\_vec4 ¶](#ceil_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L524)

```
ceil_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [ceil](/core/math/linalg/glsl/#ceil)

### [clamp\_dvec2 ¶](#clamp_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L704)

```
clamp_dvec2 :: proc "c" (x, y, z: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_dvec3 ¶](#clamp_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L705)

```
clamp_dvec3 :: proc "c" (x, y, z: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_dvec4 ¶](#clamp_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L706)

```
clamp_dvec4 :: proc "c" (x, y, z: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_f32 ¶](#clamp_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L699)

```
clamp_f32 :: proc "c" (x, y, z: f32) -> f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_f64 ¶](#clamp_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L700)

```
clamp_f64 :: proc "c" (x, y, z: f64) -> f64 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_i32 ¶](#clamp_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L697)

```
clamp_i32 :: proc "c" (x, y, z: i32) -> i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_ivec2 ¶](#clamp_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L707)

```
clamp_ivec2 :: proc "c" (x, y, z: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_ivec3 ¶](#clamp_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L708)

```
clamp_ivec3 :: proc "c" (x, y, z: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_ivec4 ¶](#clamp_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L709)

```
clamp_ivec4 :: proc "c" (x, y, z: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_u32 ¶](#clamp_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L698)

```
clamp_u32 :: proc "c" (x, y, z: u32) -> u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_uvec2 ¶](#clamp_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L710)

```
clamp_uvec2 :: proc "c" (x, y, z: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_uvec3 ¶](#clamp_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L711)

```
clamp_uvec3 :: proc "c" (x, y, z: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_uvec4 ¶](#clamp_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L712)

```
clamp_uvec4 :: proc "c" (x, y, z: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_vec2 ¶](#clamp_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L701)

```
clamp_vec2 :: proc "c" (x, y, z: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_vec3 ¶](#clamp_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L702)

```
clamp_vec3 :: proc "c" (x, y, z: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [clamp\_vec4 ¶](#clamp_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L703)

```
clamp_vec4 :: proc "c" (x, y, z: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [clamp](/core/math/linalg/glsl/#clamp)

### [cofactor\_matrix1x1 ¶](#cofactor_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2006)

```
cofactor_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/glsl/#cofactor)

### [cofactor\_matrix2x2 ¶](#cofactor_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2012)

```
cofactor_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/glsl/#cofactor)

### [cofactor\_matrix3x3 ¶](#cofactor_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2021)

```
cofactor_matrix3x3 :: proc "contextless" (m: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/glsl/#cofactor)

### [cofactor\_matrix4x4 ¶](#cofactor_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2036)

```
cofactor_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [cofactor](/core/math/linalg/glsl/#cofactor)

### [cos\_dvec2 ¶](#cos_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L96)

```
cos_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cos\_dvec3 ¶](#cos_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L97)

```
cos_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cos\_dvec4 ¶](#cos_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L98)

```
cos_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cos\_f32 ¶](#cos_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L5)

```
cos_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cos\_f64 ¶](#cos_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L38)

```
cos_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cos\_vec2 ¶](#cos_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L93)

```
cos_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cos\_vec3 ¶](#cos_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L94)

```
cos_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cos\_vec4 ¶](#cos_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L95)

```
cos_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [cos](/core/math/linalg/glsl/#cos)

### [cosh\_dvec2 ¶](#cosh_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L225)

```
cosh_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cosh\_dvec3 ¶](#cosh_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L226)

```
cosh_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cosh\_dvec4 ¶](#cosh_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L227)

```
cosh_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cosh\_f32 ¶](#cosh_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L12)

```
cosh_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cosh\_f64 ¶](#cosh_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L45)

```
cosh_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cosh\_vec2 ¶](#cosh_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L222)

```
cosh_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cosh\_vec3 ¶](#cosh_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L223)

```
cosh_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cosh\_vec4 ¶](#cosh_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L224)

```
cosh_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [cosh](/core/math/linalg/glsl/#cosh)

### [cross\_dvec3 ¶](#cross_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L963)

```
cross_dvec3 :: proc "c" (a, b: [3]f64) -> (c: [3]f64) {…}
```

##### Related Procedure Groups

* [cross](/core/math/linalg/glsl/#cross)

### [cross\_ivec3 ¶](#cross_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L969)

```
cross_ivec3 :: proc "c" (a, b: [3]i32) -> (c: [3]i32) {…}
```

##### Related Procedure Groups

* [cross](/core/math/linalg/glsl/#cross)

### [cross\_vec3 ¶](#cross_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L957)

```
cross_vec3 :: proc "c" (a, b: [3]f32) -> (c: [3]f32) {…}
```

##### Related Procedure Groups

* [cross](/core/math/linalg/glsl/#cross)

### [degrees\_dvec2 ¶](#degrees_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L602)

```
degrees_dvec2 :: proc "c" (radians: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [degrees\_dvec3 ¶](#degrees_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L603)

```
degrees_dvec3 :: proc "c" (radians: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [degrees\_dvec4 ¶](#degrees_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L604)

```
degrees_dvec4 :: proc "c" (radians: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [degrees\_f32 ¶](#degrees_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L597)

```
degrees_f32 :: proc "c" (radians: f32) -> f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [degrees\_f64 ¶](#degrees_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L598)

```
degrees_f64 :: proc "c" (radians: f64) -> f64 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [degrees\_vec2 ¶](#degrees_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L599)

```
degrees_vec2 :: proc "c" (radians: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [degrees\_vec3 ¶](#degrees_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L600)

```
degrees_vec3 :: proc "c" (radians: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [degrees\_vec4 ¶](#degrees_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L601)

```
degrees_vec4 :: proc "c" (radians: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [degrees](/core/math/linalg/glsl/#degrees)

### [determinant\_matrix1x1 ¶](#determinant_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1937)

```
determinant_matrix1x1 :: proc "contextless" (m: $M/matrix[1, 1]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/glsl/#determinant)

### [determinant\_matrix2x2 ¶](#determinant_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1942)

```
determinant_matrix2x2 :: proc "contextless" (m: $M/matrix[2, 2]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/glsl/#determinant)

### [determinant\_matrix3x3 ¶](#determinant_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1946)

```
determinant_matrix3x3 :: proc "contextless" (m: $M/matrix[3, 3]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/glsl/#determinant)

### [determinant\_matrix4x4 ¶](#determinant_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1953)

```
determinant_matrix4x4 :: proc "contextless" (m: $M/matrix[4, 4]$T) -> (det: $$deferred_return) {…}
```

##### Related Procedure Groups

* [determinant](/core/math/linalg/glsl/#determinant)

### [distance\_dvec2 ¶](#distance_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L946)

```
distance_dvec2 :: proc "c" (x, y: [2]f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [distance\_dvec3 ¶](#distance_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L947)

```
distance_dvec3 :: proc "c" (x, y: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [distance\_dvec4 ¶](#distance_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L948)

```
distance_dvec4 :: proc "c" (x, y: [4]f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [distance\_f32 ¶](#distance_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L941)

```
distance_f32 :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [distance\_f64 ¶](#distance_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L942)

```
distance_f64 :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [distance\_vec2 ¶](#distance_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L943)

```
distance_vec2 :: proc "c" (x, y: [2]f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [distance\_vec3 ¶](#distance_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L944)

```
distance_vec3 :: proc "c" (x, y: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [distance\_vec4 ¶](#distance_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L945)

```
distance_vec4 :: proc "c" (x, y: [4]f32) -> f32 {…}
```

##### Related Procedure Groups

* [distance](/core/math/linalg/glsl/#distance)

### [dmat4FromDquat ¶](#dmat4FromDquat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1601)

```
dmat4FromDquat :: proc "c" (q: quaternion256) -> (m: matrix[4, 4]f64) {…}
```

### [dmat4LookAt ¶](#dmat4LookAt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1535)

```
dmat4LookAt :: proc "c" (eye, centre: [3]f64, up: [3]f64) -> (m: matrix[4, 4]f64) {…}
```

### [dmat4Orientation ¶](#dmat4Orientation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1590)

```
dmat4Orientation :: proc "c" (normal, up: [3]f64) -> matrix[4, 4]f64 {…}
```

### [dmat4Ortho3d ¶](#dmat4Ortho3d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1524)

```
dmat4Ortho3d :: proc "c" (
	left, right, bottom, top, near, 
	far:                            f64, 
) -> (m: matrix[4, 4]f64) {…}
```

### [dmat4Perspective ¶](#dmat4Perspective) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1504)

```
dmat4Perspective :: proc "c" (fovy, aspect, near, far: f64) -> (m: matrix[4, 4]f64) {…}
```

### [dmat4PerspectiveInfinite ¶](#dmat4PerspectiveInfinite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1514)

```
dmat4PerspectiveInfinite :: proc "c" (fovy, aspect, near: f64) -> (m: matrix[4, 4]f64) {…}
```

### [dmat4Rotate ¶](#dmat4Rotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1549)

```
dmat4Rotate :: proc "c" (v: [3]f64, radians: f64) -> (rot: matrix[4, 4]f64) {…}
```

### [dmat4Scale ¶](#dmat4Scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1582)

```
dmat4Scale :: proc "c" (v: [3]f64) -> (m: matrix[4, 4]f64) {…}
```

### [dmat4Translate ¶](#dmat4Translate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1576)

```
dmat4Translate :: proc "c" (v: [3]f64) -> (m: matrix[4, 4]f64) {…}
```

### [dot\_dquat ¶](#dot_dquat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L905)

```
dot_dquat :: proc "c" (a, b: quaternion256) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_dvec2 ¶](#dot_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L895)

```
dot_dvec2 :: proc "c" (a, b: [2]f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_dvec3 ¶](#dot_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L896)

```
dot_dvec3 :: proc "c" (a, b: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_dvec4 ¶](#dot_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L897)

```
dot_dvec4 :: proc "c" (a, b: [4]f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_f32 ¶](#dot_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L890)

```
dot_f32 :: proc "c" (a, b: f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_f64 ¶](#dot_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L891)

```
dot_f64 :: proc "c" (a, b: f64) -> f64 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_i32 ¶](#dot_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L888)

```
dot_i32 :: proc "c" (a, b: i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_ivec2 ¶](#dot_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L898)

```
dot_ivec2 :: proc "c" (a, b: [2]i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_ivec3 ¶](#dot_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L899)

```
dot_ivec3 :: proc "c" (a, b: [3]i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_ivec4 ¶](#dot_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L900)

```
dot_ivec4 :: proc "c" (a, b: [4]i32) -> i32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_quat ¶](#dot_quat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L904)

```
dot_quat :: proc "c" (a, b: quaternion128) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_u32 ¶](#dot_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L889)

```
dot_u32 :: proc "c" (a, b: u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_uvec2 ¶](#dot_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L901)

```
dot_uvec2 :: proc "c" (a, b: [2]u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_uvec3 ¶](#dot_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L902)

```
dot_uvec3 :: proc "c" (a, b: [3]u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_uvec4 ¶](#dot_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L903)

```
dot_uvec4 :: proc "c" (a, b: [4]u32) -> u32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_vec2 ¶](#dot_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L892)

```
dot_vec2 :: proc "c" (a, b: [2]f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_vec3 ¶](#dot_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L893)

```
dot_vec3 :: proc "c" (a, b: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dot\_vec4 ¶](#dot_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L894)

```
dot_vec4 :: proc "c" (a, b: [4]f32) -> f32 {…}
```

##### Related Procedure Groups

* [dot](/core/math/linalg/glsl/#dot)

### [dquatAxisAngle ¶](#dquatAxisAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1748)

```
dquatAxisAngle :: proc "c" (axis: [3]f64, radians: f64) -> (q: quaternion256) {…}
```

### [dquatFromDmat4 ¶](#dquatFromDmat4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1844)

```
dquatFromDmat4 :: proc "c" (m: matrix[4, 4]f64) -> (q: quaternion256) {…}
```

### [dquatFromdMat3 ¶](#dquatFromdMat3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1794)

```
dquatFromdMat3 :: proc "c" (m: matrix[3, 3]f64) -> (q: quaternion256) {…}
```

### [dquatMulDvec3 ¶](#dquatMulDvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1849)

```
dquatMulDvec3 :: proc "c" (q: quaternion256, v: [3]f64) -> [3]f64 {…}
```

### [dquatNlerp ¶](#dquatNlerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1758)

```
dquatNlerp :: proc "c" (a, b: quaternion256, t: f64) -> (c: quaternion256) {…}
```

##### Related Procedure Groups

* [nlerp](/core/math/linalg/glsl/#nlerp)

### [dquatSlerp ¶](#dquatSlerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1767)

```
dquatSlerp :: proc "c" (x, y: quaternion256, t: f64) -> (q: quaternion256) {…}
```

##### Related Procedure Groups

* [slerp](/core/math/linalg/glsl/#slerp)

### [equal\_dvec2 ¶](#equal_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1289)

```
equal_dvec2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_dvec3 ¶](#equal_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1293)

```
equal_dvec3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_dvec4 ¶](#equal_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1297)

```
equal_dvec4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_f32 ¶](#equal_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1284)

```
equal_f32 :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_f64 ¶](#equal_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1285)

```
equal_f64 :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_i32 ¶](#equal_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1286)

```
equal_i32 :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_ivec2 ¶](#equal_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1290)

```
equal_ivec2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_ivec3 ¶](#equal_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1294)

```
equal_ivec3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_ivec4 ¶](#equal_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1298)

```
equal_ivec4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_u32 ¶](#equal_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1287)

```
equal_u32 :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_uvec2 ¶](#equal_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1291)

```
equal_uvec2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_uvec3 ¶](#equal_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1295)

```
equal_uvec3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_uvec4 ¶](#equal_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1299)

```
equal_uvec4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_vec2 ¶](#equal_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1288)

```
equal_vec2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_vec3 ¶](#equal_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1292)

```
equal_vec3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [equal\_vec4 ¶](#equal_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1296)

```
equal_vec4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [equal](/core/math/linalg/glsl/#equal)

### [exp2\_dvec2 ¶](#exp2_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L421)

```
exp2_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp2\_dvec3 ¶](#exp2_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L422)

```
exp2_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp2\_dvec4 ¶](#exp2_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L423)

```
exp2_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp2\_f32 ¶](#exp2_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L23)

```
exp2_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp2\_f64 ¶](#exp2_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L56)

```
exp2_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp2\_vec2 ¶](#exp2_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L418)

```
exp2_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp2\_vec3 ¶](#exp2_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L419)

```
exp2_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp2\_vec4 ¶](#exp2_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L420)

```
exp2_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [exp2](/core/math/linalg/glsl/#exp2)

### [exp\_dvec2 ¶](#exp_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L383)

```
exp_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [exp\_dvec3 ¶](#exp_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L384)

```
exp_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [exp\_dvec4 ¶](#exp_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L385)

```
exp_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [exp\_f32 ¶](#exp_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L21)

```
exp_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [exp\_f64 ¶](#exp_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L54)

```
exp_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [exp\_vec2 ¶](#exp_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L380)

```
exp_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [exp\_vec3 ¶](#exp_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L381)

```
exp_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [exp\_vec4 ¶](#exp_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L382)

```
exp_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [exp](/core/math/linalg/glsl/#exp)

### [faceForward\_dvec2 ¶](#faceForward_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1015)

```
faceForward_dvec2 :: proc "c" (N, I, Nref: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [faceForward\_dvec3 ¶](#faceForward_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1016)

```
faceForward_dvec3 :: proc "c" (N, I, Nref: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [faceForward\_dvec4 ¶](#faceForward_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1017)

```
faceForward_dvec4 :: proc "c" (N, I, Nref: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [faceForward\_f32 ¶](#faceForward_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1010)

```
faceForward_f32 :: proc "c" (N, I, Nref: f32) -> f32 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [faceForward\_f64 ¶](#faceForward_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1011)

```
faceForward_f64 :: proc "c" (N, I, Nref: f64) -> f64 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [faceForward\_vec2 ¶](#faceForward_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1012)

```
faceForward_vec2 :: proc "c" (N, I, Nref: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [faceForward\_vec3 ¶](#faceForward_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1013)

```
faceForward_vec3 :: proc "c" (N, I, Nref: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [faceForward\_vec4 ¶](#faceForward_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1014)

```
faceForward_vec4 :: proc "c" (N, I, Nref: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [faceForward](/core/math/linalg/glsl/#faceForward)

### [floor\_dvec2 ¶](#floor_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L472)

```
floor_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [floor\_dvec3 ¶](#floor_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L473)

```
floor_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [floor\_dvec4 ¶](#floor_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L474)

```
floor_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [floor\_f32 ¶](#floor_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L25)

```
floor_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [floor\_f64 ¶](#floor_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L58)

```
floor_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [floor\_vec2 ¶](#floor_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L469)

```
floor_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [floor\_vec3 ¶](#floor_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L470)

```
floor_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [floor\_vec4 ¶](#floor_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L471)

```
floor_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [floor](/core/math/linalg/glsl/#floor)

### [fract\_dvec2 ¶](#fract_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L561)

```
fract_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [fract\_dvec3 ¶](#fract_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L562)

```
fract_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [fract\_dvec4 ¶](#fract_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L563)

```
fract_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [fract\_f32 ¶](#fract_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L31)

```
fract_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [fract\_f64 ¶](#fract_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L64)

```
fract_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [fract\_vec2 ¶](#fract_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L558)

```
fract_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [fract\_vec3 ¶](#fract_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L559)

```
fract_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [fract\_vec4 ¶](#fract_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L560)

```
fract_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [fract](/core/math/linalg/glsl/#fract)

### [greaterThanEqual\_dvec2 ¶](#greaterThanEqual_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1253)

```
greaterThanEqual_dvec2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_dvec3 ¶](#greaterThanEqual_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1257)

```
greaterThanEqual_dvec3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_dvec4 ¶](#greaterThanEqual_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1261)

```
greaterThanEqual_dvec4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_f32 ¶](#greaterThanEqual_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1248)

```
greaterThanEqual_f32 :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_f64 ¶](#greaterThanEqual_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1249)

```
greaterThanEqual_f64 :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_i32 ¶](#greaterThanEqual_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1250)

```
greaterThanEqual_i32 :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_ivec2 ¶](#greaterThanEqual_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1254)

```
greaterThanEqual_ivec2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_ivec3 ¶](#greaterThanEqual_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1258)

```
greaterThanEqual_ivec3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_ivec4 ¶](#greaterThanEqual_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1262)

```
greaterThanEqual_ivec4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_u32 ¶](#greaterThanEqual_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1251)

```
greaterThanEqual_u32 :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_uvec2 ¶](#greaterThanEqual_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1255)

```
greaterThanEqual_uvec2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_uvec3 ¶](#greaterThanEqual_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1259)

```
greaterThanEqual_uvec3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_uvec4 ¶](#greaterThanEqual_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1263)

```
greaterThanEqual_uvec4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_vec2 ¶](#greaterThanEqual_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1252)

```
greaterThanEqual_vec2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_vec3 ¶](#greaterThanEqual_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1256)

```
greaterThanEqual_vec3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThanEqual\_vec4 ¶](#greaterThanEqual_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1260)

```
greaterThanEqual_vec4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThanEqual](/core/math/linalg/glsl/#greaterThanEqual)

### [greaterThan\_dvec2 ¶](#greaterThan_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1217)

```
greaterThan_dvec2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_dvec3 ¶](#greaterThan_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1221)

```
greaterThan_dvec3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_dvec4 ¶](#greaterThan_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1225)

```
greaterThan_dvec4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_f32 ¶](#greaterThan_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1212)

```
greaterThan_f32 :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_f64 ¶](#greaterThan_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1213)

```
greaterThan_f64 :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_i32 ¶](#greaterThan_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1214)

```
greaterThan_i32 :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_ivec2 ¶](#greaterThan_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1218)

```
greaterThan_ivec2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_ivec3 ¶](#greaterThan_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1222)

```
greaterThan_ivec3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_ivec4 ¶](#greaterThan_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1226)

```
greaterThan_ivec4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_u32 ¶](#greaterThan_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1215)

```
greaterThan_u32 :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_uvec2 ¶](#greaterThan_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1219)

```
greaterThan_uvec2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_uvec3 ¶](#greaterThan_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1223)

```
greaterThan_uvec3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_uvec4 ¶](#greaterThan_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1227)

```
greaterThan_uvec4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_vec2 ¶](#greaterThan_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1216)

```
greaterThan_vec2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_vec3 ¶](#greaterThan_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1220)

```
greaterThan_vec3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [greaterThan\_vec4 ¶](#greaterThan_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1224)

```
greaterThan_vec4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [greaterThan](/core/math/linalg/glsl/#greaterThan)

### [hermitian\_adjoint ¶](#hermitian_adjoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1908)

```
hermitian_adjoint :: proc "contextless" (m: $M/matrix[0, 0]$T) -> $$deferred_return {…}
```

### [identity ¶](#identity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1374)

```
identity :: proc "c" ($M: typeid/matrix[0, 0]$T) -> $$deferred_return {…}
```

### [inverse\_dmat2 ¶](#inverse_dmat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1861)

```
inverse_dmat2 :: proc "c" (m: matrix[2, 2]f64) -> matrix[2, 2]f64 {…}
```

### [inverse\_dmat3 ¶](#inverse_dmat3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1862)

```
inverse_dmat3 :: proc "c" (m: matrix[3, 3]f64) -> matrix[3, 3]f64 {…}
```

### [inverse\_dmat4 ¶](#inverse_dmat4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1863)

```
inverse_dmat4 :: proc "c" (m: matrix[4, 4]f64) -> matrix[4, 4]f64 {…}
```

### [inverse\_dquat ¶](#inverse_dquat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1865)

```
inverse_dquat :: proc "c" (q: quaternion256) -> quaternion256 {…}
```

### [inverse\_mat2 ¶](#inverse_mat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1858)

```
inverse_mat2 :: proc "c" (m: matrix[2, 2]f32) -> matrix[2, 2]f32 {…}
```

### [inverse\_mat3 ¶](#inverse_mat3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1859)

```
inverse_mat3 :: proc "c" (m: matrix[3, 3]f32) -> matrix[3, 3]f32 {…}
```

### [inverse\_mat4 ¶](#inverse_mat4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1860)

```
inverse_mat4 :: proc "c" (m: matrix[4, 4]f32) -> matrix[4, 4]f32 {…}
```

### [inverse\_matrix1x1 ¶](#inverse_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2116)

```
inverse_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/glsl/#inverse)

### [inverse\_matrix2x2 ¶](#inverse_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2122)

```
inverse_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/glsl/#inverse)

### [inverse\_matrix3x3 ¶](#inverse_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2140)

```
inverse_matrix3x3 :: proc "contextless" (x: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/glsl/#inverse)

### [inverse\_matrix4x4 ¶](#inverse_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2161)

```
inverse_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse](/core/math/linalg/glsl/#inverse)

### [inverse\_quat ¶](#inverse_quat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1864)

```
inverse_quat :: proc "c" (q: quaternion128) -> quaternion128 {…}
```

### [inverse\_transpose\_matrix1x1 ¶](#inverse_transpose_matrix1x1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2047)

```
inverse_transpose_matrix1x1 :: proc "contextless" (x: $M/matrix[1, 1]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/glsl/#inverse_transpose)

### [inverse\_transpose\_matrix2x2 ¶](#inverse_transpose_matrix2x2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2053)

```
inverse_transpose_matrix2x2 :: proc "contextless" (x: $M/matrix[2, 2]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/glsl/#inverse_transpose)

### [inverse\_transpose\_matrix3x3 ¶](#inverse_transpose_matrix3x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2071)

```
inverse_transpose_matrix3x3 :: proc "contextless" (x: $M/matrix[3, 3]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/glsl/#inverse_transpose)

### [inverse\_transpose\_matrix4x4 ¶](#inverse_transpose_matrix4x4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L2092)

```
inverse_transpose_matrix4x4 :: proc "contextless" (x: $M/matrix[4, 4]$T) -> (y: $$deferred_return) {…}
```

##### Related Procedure Groups

* [inverse\_transpose](/core/math/linalg/glsl/#inverse_transpose)

### [inversesqrt\_dvec2 ¶](#inversesqrt_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L346)

```
inversesqrt_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [inversesqrt\_dvec3 ¶](#inversesqrt_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L347)

```
inversesqrt_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [inversesqrt\_dvec4 ¶](#inversesqrt_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L348)

```
inversesqrt_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [inversesqrt\_f32 ¶](#inversesqrt_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L19)

```
inversesqrt_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [inversesqrt\_f64 ¶](#inversesqrt_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L52)

```
inversesqrt_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [inversesqrt\_vec2 ¶](#inversesqrt_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L343)

```
inversesqrt_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [inversesqrt\_vec3 ¶](#inversesqrt_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L344)

```
inversesqrt_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [inversesqrt\_vec4 ¶](#inversesqrt_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L345)

```
inversesqrt_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [inversesqrt](/core/math/linalg/glsl/#inversesqrt)
* [rsqrt](/core/math/linalg/glsl/#rsqrt)

### [length\_dquat ¶](#length_dquat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L928)

```
length_dquat :: proc "c" (x: quaternion256) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_dvec2 ¶](#length_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L924)

```
length_dvec2 :: proc "c" (x: [2]f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_dvec3 ¶](#length_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L925)

```
length_dvec3 :: proc "c" (x: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_dvec4 ¶](#length_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L926)

```
length_dvec4 :: proc "c" (x: [4]f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_f32 ¶](#length_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L919)

```
length_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_f64 ¶](#length_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L920)

```
length_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_quat ¶](#length_quat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L927)

```
length_quat :: proc "c" (x: quaternion128) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_vec2 ¶](#length_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L921)

```
length_vec2 :: proc "c" (x: [2]f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_vec3 ¶](#length_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L922)

```
length_vec3 :: proc "c" (x: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [length\_vec4 ¶](#length_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L923)

```
length_vec4 :: proc "c" (x: [4]f32) -> f32 {…}
```

##### Related Procedure Groups

* [length](/core/math/linalg/glsl/#length)

### [lerp\_dvec2 ¶](#lerp_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L783)

```
lerp_dvec2 :: proc "c" (x, y, t: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lerp\_dvec3 ¶](#lerp_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L784)

```
lerp_dvec3 :: proc "c" (x, y, t: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lerp\_dvec4 ¶](#lerp_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L785)

```
lerp_dvec4 :: proc "c" (x, y, t: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lerp\_f32 ¶](#lerp_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L778)

```
lerp_f32 :: proc "c" (x, y, t: f32) -> f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lerp\_f64 ¶](#lerp_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L779)

```
lerp_f64 :: proc "c" (x, y, t: f64) -> f64 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lerp\_vec2 ¶](#lerp_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L780)

```
lerp_vec2 :: proc "c" (x, y, t: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lerp\_vec3 ¶](#lerp_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L781)

```
lerp_vec3 :: proc "c" (x, y, t: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lerp\_vec4 ¶](#lerp_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L782)

```
lerp_vec4 :: proc "c" (x, y, t: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [lerp](/core/math/linalg/glsl/#lerp)

### [lessThanEqual\_dvec2 ¶](#lessThanEqual_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1181)

```
lessThanEqual_dvec2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_dvec3 ¶](#lessThanEqual_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1185)

```
lessThanEqual_dvec3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_dvec4 ¶](#lessThanEqual_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1189)

```
lessThanEqual_dvec4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_f32 ¶](#lessThanEqual_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1176)

```
lessThanEqual_f32 :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_f64 ¶](#lessThanEqual_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1177)

```
lessThanEqual_f64 :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_i32 ¶](#lessThanEqual_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1178)

```
lessThanEqual_i32 :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_ivec2 ¶](#lessThanEqual_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1182)

```
lessThanEqual_ivec2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_ivec3 ¶](#lessThanEqual_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1186)

```
lessThanEqual_ivec3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_ivec4 ¶](#lessThanEqual_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1190)

```
lessThanEqual_ivec4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_u32 ¶](#lessThanEqual_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1179)

```
lessThanEqual_u32 :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_uvec2 ¶](#lessThanEqual_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1183)

```
lessThanEqual_uvec2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_uvec3 ¶](#lessThanEqual_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1187)

```
lessThanEqual_uvec3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_uvec4 ¶](#lessThanEqual_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1191)

```
lessThanEqual_uvec4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_vec2 ¶](#lessThanEqual_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1180)

```
lessThanEqual_vec2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_vec3 ¶](#lessThanEqual_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1184)

```
lessThanEqual_vec3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThanEqual\_vec4 ¶](#lessThanEqual_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1188)

```
lessThanEqual_vec4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThanEqual](/core/math/linalg/glsl/#lessThanEqual)

### [lessThan\_dvec2 ¶](#lessThan_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1145)

```
lessThan_dvec2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_dvec3 ¶](#lessThan_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1149)

```
lessThan_dvec3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_dvec4 ¶](#lessThan_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1153)

```
lessThan_dvec4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_f32 ¶](#lessThan_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1140)

```
lessThan_f32 :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_f64 ¶](#lessThan_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1141)

```
lessThan_f64 :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_i32 ¶](#lessThan_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1142)

```
lessThan_i32 :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_ivec2 ¶](#lessThan_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1146)

```
lessThan_ivec2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_ivec3 ¶](#lessThan_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1150)

```
lessThan_ivec3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_ivec4 ¶](#lessThan_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1154)

```
lessThan_ivec4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_u32 ¶](#lessThan_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1143)

```
lessThan_u32 :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_uvec2 ¶](#lessThan_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1147)

```
lessThan_uvec2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_uvec3 ¶](#lessThan_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1151)

```
lessThan_uvec3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_uvec4 ¶](#lessThan_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1155)

```
lessThan_uvec4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_vec2 ¶](#lessThan_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1144)

```
lessThan_vec2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_vec3 ¶](#lessThan_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1148)

```
lessThan_vec3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [lessThan\_vec4 ¶](#lessThan_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1152)

```
lessThan_vec4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [lessThan](/core/math/linalg/glsl/#lessThan)

### [log\_dvec2 ¶](#log_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L402)

```
log_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [log\_dvec3 ¶](#log_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L403)

```
log_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [log\_dvec4 ¶](#log_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L404)

```
log_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [log\_f32 ¶](#log_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L22)

```
log_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [log\_f64 ¶](#log_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L55)

```
log_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [log\_vec2 ¶](#log_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L399)

```
log_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [log\_vec3 ¶](#log_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L400)

```
log_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [log\_vec4 ¶](#log_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L401)

```
log_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [log](/core/math/linalg/glsl/#log)

### [mat4FromQuat ¶](#mat4FromQuat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1474)

```
mat4FromQuat :: proc "c" (q: quaternion128) -> (m: matrix[4, 4]f32) {…}
```

### [mat4LookAt ¶](#mat4LookAt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1408)

```
mat4LookAt :: proc "c" (eye, centre: [3]f32, up: [3]f32) -> (m: matrix[4, 4]f32) {…}
```

### [mat4Orientation ¶](#mat4Orientation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1463)

```
mat4Orientation :: proc "c" (normal, up: [3]f32) -> matrix[4, 4]f32 {…}
```

### [mat4Ortho3d ¶](#mat4Ortho3d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1397)

```
mat4Ortho3d :: proc "c" (
	left, right, bottom, top, near, 
	far:                            f32, 
) -> (m: matrix[4, 4]f32) {…}
```

### [mat4Perspective ¶](#mat4Perspective) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1377)

```
mat4Perspective :: proc "c" (fovy, aspect, near, far: f32) -> (m: matrix[4, 4]f32) {…}
```

### [mat4PerspectiveInfinite ¶](#mat4PerspectiveInfinite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1387)

```
mat4PerspectiveInfinite :: proc "c" (fovy, aspect, near: f32) -> (m: matrix[4, 4]f32) {…}
```

### [mat4Rotate ¶](#mat4Rotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1422)

```
mat4Rotate :: proc "c" (v: [3]f32, radians: f32) -> (rot: matrix[4, 4]f32) {…}
```

### [mat4Scale ¶](#mat4Scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1455)

```
mat4Scale :: proc "c" (v: [3]f32) -> (m: matrix[4, 4]f32) {…}
```

### [mat4Translate ¶](#mat4Translate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1449)

```
mat4Translate :: proc "c" (v: [3]f32) -> (m: matrix[4, 4]f32) {…}
```

### [matrix\_minor ¶](#matrix_minor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1921)

```
matrix_minor :: proc "contextless" (m: $M/matrix[0, 0]$T, #any_int row, #any_int column: int) -> (minor: $$deferred_return) {…}
```

### [max\_dvec2 ¶](#max_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L667)

```
max_dvec2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_dvec3 ¶](#max_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L668)

```
max_dvec3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_dvec4 ¶](#max_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L669)

```
max_dvec4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_f32 ¶](#max_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L662)

```
max_f32 :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_f64 ¶](#max_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L663)

```
max_f64 :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_i32 ¶](#max_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L660)

```
max_i32 :: proc "c" (x, y: i32) -> i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_ivec2 ¶](#max_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L670)

```
max_ivec2 :: proc "c" (x, y: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_ivec3 ¶](#max_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L671)

```
max_ivec3 :: proc "c" (x, y: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_ivec4 ¶](#max_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L672)

```
max_ivec4 :: proc "c" (x, y: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_u32 ¶](#max_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L661)

```
max_u32 :: proc "c" (x, y: u32) -> u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_uvec2 ¶](#max_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L673)

```
max_uvec2 :: proc "c" (x, y: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_uvec3 ¶](#max_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L674)

```
max_uvec3 :: proc "c" (x, y: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_uvec4 ¶](#max_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L675)

```
max_uvec4 :: proc "c" (x, y: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_vec2 ¶](#max_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L664)

```
max_vec2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_vec3 ¶](#max_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L665)

```
max_vec3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [max\_vec4 ¶](#max_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L666)

```
max_vec4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [max](/core/math/linalg/glsl/#max)

### [min\_dvec2 ¶](#min_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L631)

```
min_dvec2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_dvec3 ¶](#min_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L632)

```
min_dvec3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_dvec4 ¶](#min_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L633)

```
min_dvec4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_f32 ¶](#min_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L626)

```
min_f32 :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_f64 ¶](#min_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L627)

```
min_f64 :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_i32 ¶](#min_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L624)

```
min_i32 :: proc "c" (x, y: i32) -> i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_ivec2 ¶](#min_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L634)

```
min_ivec2 :: proc "c" (x, y: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_ivec3 ¶](#min_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L635)

```
min_ivec3 :: proc "c" (x, y: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_ivec4 ¶](#min_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L636)

```
min_ivec4 :: proc "c" (x, y: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_u32 ¶](#min_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L625)

```
min_u32 :: proc "c" (x, y: u32) -> u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_uvec2 ¶](#min_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L637)

```
min_uvec2 :: proc "c" (x, y: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_uvec3 ¶](#min_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L638)

```
min_uvec3 :: proc "c" (x, y: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_uvec4 ¶](#min_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L639)

```
min_uvec4 :: proc "c" (x, y: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_vec2 ¶](#min_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L628)

```
min_vec2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_vec3 ¶](#min_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L629)

```
min_vec3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [min\_vec4 ¶](#min_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L630)

```
min_vec4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [min](/core/math/linalg/glsl/#min)

### [mix\_dvec2 ¶](#mix_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L764)

```
mix_dvec2 :: proc "c" (x, y, t: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mix\_dvec3 ¶](#mix_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L765)

```
mix_dvec3 :: proc "c" (x, y, t: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mix\_dvec4 ¶](#mix_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L766)

```
mix_dvec4 :: proc "c" (x, y, t: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mix\_f32 ¶](#mix_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L759)

```
mix_f32 :: proc "c" (x, y, t: f32) -> f32 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mix\_f64 ¶](#mix_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L760)

```
mix_f64 :: proc "c" (x, y, t: f64) -> f64 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mix\_vec2 ¶](#mix_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L761)

```
mix_vec2 :: proc "c" (x, y, t: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mix\_vec3 ¶](#mix_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L762)

```
mix_vec3 :: proc "c" (x, y, t: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mix\_vec4 ¶](#mix_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L763)

```
mix_vec4 :: proc "c" (x, y, t: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [mix](/core/math/linalg/glsl/#mix)

### [mod\_dvec2 ¶](#mod_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L543)

```
mod_dvec2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [mod\_dvec3 ¶](#mod_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L544)

```
mod_dvec3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [mod\_dvec4 ¶](#mod_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L545)

```
mod_dvec4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [mod\_f32 ¶](#mod_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L29)

```
mod_f32 :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [mod\_f64 ¶](#mod_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L62)

```
mod_f64 :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [mod\_vec2 ¶](#mod_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L540)

```
mod_vec2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [mod\_vec3 ¶](#mod_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L541)

```
mod_vec3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [mod\_vec4 ¶](#mod_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L542)

```
mod_vec4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [mod](/core/math/linalg/glsl/#mod)

### [normalize\_dquat ¶](#normalize_dquat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L997)

```
normalize_dquat :: proc "c" (x: quaternion256) -> quaternion256 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_dvec2 ¶](#normalize_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L993)

```
normalize_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_dvec3 ¶](#normalize_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L994)

```
normalize_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_dvec4 ¶](#normalize_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L995)

```
normalize_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_f32 ¶](#normalize_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L988)

```
normalize_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_f64 ¶](#normalize_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L989)

```
normalize_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_quat ¶](#normalize_quat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L996)

```
normalize_quat :: proc "c" (x: quaternion128) -> quaternion128 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_vec2 ¶](#normalize_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L990)

```
normalize_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_vec3 ¶](#normalize_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L991)

```
normalize_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [normalize\_vec4 ¶](#normalize_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L992)

```
normalize_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [normalize](/core/math/linalg/glsl/#normalize)

### [notEqual\_dvec2 ¶](#notEqual_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1324)

```
notEqual_dvec2 :: proc "c" (a, b: [2]f64) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_dvec3 ¶](#notEqual_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1328)

```
notEqual_dvec3 :: proc "c" (a, b: [3]f64) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_dvec4 ¶](#notEqual_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1332)

```
notEqual_dvec4 :: proc "c" (a, b: [4]f64) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_f32 ¶](#notEqual_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1319)

```
notEqual_f32 :: proc "c" (a, b: f32) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_f64 ¶](#notEqual_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1320)

```
notEqual_f64 :: proc "c" (a, b: f64) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_i32 ¶](#notEqual_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1321)

```
notEqual_i32 :: proc "c" (a, b: i32) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_ivec2 ¶](#notEqual_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1325)

```
notEqual_ivec2 :: proc "c" (a, b: [2]i32) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_ivec3 ¶](#notEqual_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1329)

```
notEqual_ivec3 :: proc "c" (a, b: [3]i32) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_ivec4 ¶](#notEqual_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1333)

```
notEqual_ivec4 :: proc "c" (a, b: [4]i32) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_u32 ¶](#notEqual_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1322)

```
notEqual_u32 :: proc "c" (a, b: u32) -> bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_uvec2 ¶](#notEqual_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1326)

```
notEqual_uvec2 :: proc "c" (a, b: [2]u32) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_uvec3 ¶](#notEqual_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1330)

```
notEqual_uvec3 :: proc "c" (a, b: [3]u32) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_uvec4 ¶](#notEqual_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1334)

```
notEqual_uvec4 :: proc "c" (a, b: [4]u32) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_vec2 ¶](#notEqual_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1323)

```
notEqual_vec2 :: proc "c" (a, b: [2]f32) -> [2]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_vec3 ¶](#notEqual_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1327)

```
notEqual_vec3 :: proc "c" (a, b: [3]f32) -> [3]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [notEqual\_vec4 ¶](#notEqual_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1331)

```
notEqual_vec4 :: proc "c" (a, b: [4]f32) -> [4]bool {…}
```

##### Related Procedure Groups

* [notEqual](/core/math/linalg/glsl/#notEqual)

### [not\_bool ¶](#not_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1365)

```
not_bool :: proc "c" (v: bool) -> bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/glsl/#not)

### [not\_bvec2 ¶](#not_bvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1366)

```
not_bvec2 :: proc "c" (v: [2]bool) -> [2]bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/glsl/#not)

### [not\_bvec3 ¶](#not_bvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1367)

```
not_bvec3 :: proc "c" (v: [3]bool) -> [3]bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/glsl/#not)

### [not\_bvec4 ¶](#not_bvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1368)

```
not_bvec4 :: proc "c" (v: [4]bool) -> [4]bool {…}
```

##### Related Procedure Groups

* [not](/core/math/linalg/glsl/#not)

### [pow\_dvec2 ¶](#pow_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L364)

```
pow_dvec2 :: proc "c" (x, y: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [pow\_dvec3 ¶](#pow_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L365)

```
pow_dvec3 :: proc "c" (x, y: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [pow\_dvec4 ¶](#pow_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L366)

```
pow_dvec4 :: proc "c" (x, y: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [pow\_f32 ¶](#pow_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L20)

```
pow_f32 :: proc "c" (x, y: f32) -> f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [pow\_f64 ¶](#pow_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L53)

```
pow_f64 :: proc "c" (x, y: f64) -> f64 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [pow\_vec2 ¶](#pow_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L361)

```
pow_vec2 :: proc "c" (x, y: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [pow\_vec3 ¶](#pow_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L362)

```
pow_vec3 :: proc "c" (x, y: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [pow\_vec4 ¶](#pow_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L363)

```
pow_vec4 :: proc "c" (x, y: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [pow](/core/math/linalg/glsl/#pow)

### [quatAxisAngle ¶](#quatAxisAngle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1640)

```
quatAxisAngle :: proc "c" (axis: [3]f32, radians: f32) -> (q: quaternion128) {…}
```

### [quatFromMat3 ¶](#quatFromMat3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1686)

```
quatFromMat3 :: proc "c" (m: matrix[3, 3]f32) -> (q: quaternion128) {…}
```

### [quatFromMat4 ¶](#quatFromMat4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1736)

```
quatFromMat4 :: proc "c" (m: matrix[4, 4]f32) -> (q: quaternion128) {…}
```

### [quatMulVec3 ¶](#quatMulVec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1741)

```
quatMulVec3 :: proc "c" (q: quaternion128, v: [3]f32) -> [3]f32 {…}
```

### [quatNlerp ¶](#quatNlerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1650)

```
quatNlerp :: proc "c" (a, b: quaternion128, t: f32) -> (c: quaternion128) {…}
```

##### Related Procedure Groups

* [nlerp](/core/math/linalg/glsl/#nlerp)

### [quatSlerp ¶](#quatSlerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1659)

```
quatSlerp :: proc "c" (x, y: quaternion128, t: f32) -> (q: quaternion128) {…}
```

##### Related Procedure Groups

* [slerp](/core/math/linalg/glsl/#slerp)

### [radians\_dvec2 ¶](#radians_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L582)

```
radians_dvec2 :: proc "c" (degrees: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [radians\_dvec3 ¶](#radians_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L583)

```
radians_dvec3 :: proc "c" (degrees: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [radians\_dvec4 ¶](#radians_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L584)

```
radians_dvec4 :: proc "c" (degrees: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [radians\_f32 ¶](#radians_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L577)

```
radians_f32 :: proc "c" (degrees: f32) -> f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [radians\_f64 ¶](#radians_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L578)

```
radians_f64 :: proc "c" (degrees: f64) -> f64 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [radians\_vec2 ¶](#radians_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L579)

```
radians_vec2 :: proc "c" (degrees: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [radians\_vec3 ¶](#radians_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L580)

```
radians_vec3 :: proc "c" (degrees: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [radians\_vec4 ¶](#radians_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L581)

```
radians_vec4 :: proc "c" (degrees: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [radians](/core/math/linalg/glsl/#radians)

### [reflect\_dvec2 ¶](#reflect_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1035)

```
reflect_dvec2 :: proc "c" (I, N: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [reflect\_dvec3 ¶](#reflect_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1036)

```
reflect_dvec3 :: proc "c" (I, N: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [reflect\_dvec4 ¶](#reflect_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1037)

```
reflect_dvec4 :: proc "c" (I, N: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [reflect\_f32 ¶](#reflect_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1030)

```
reflect_f32 :: proc "c" (I, N: f32) -> f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [reflect\_f64 ¶](#reflect_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1031)

```
reflect_f64 :: proc "c" (I, N: f64) -> f64 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [reflect\_vec2 ¶](#reflect_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1032)

```
reflect_vec2 :: proc "c" (I, N: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [reflect\_vec3 ¶](#reflect_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1033)

```
reflect_vec3 :: proc "c" (I, N: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [reflect\_vec4 ¶](#reflect_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1034)

```
reflect_vec4 :: proc "c" (I, N: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [reflect](/core/math/linalg/glsl/#reflect)

### [refract\_dvec2 ¶](#refract_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1082)

```
refract_dvec2 :: proc "c" (i, n, eta: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [refract\_dvec3 ¶](#refract_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1088)

```
refract_dvec3 :: proc "c" (i, n, eta: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [refract\_dvec4 ¶](#refract_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1094)

```
refract_dvec4 :: proc "c" (i, n, eta: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [refract\_f32 ¶](#refract_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1052)

```
refract_f32 :: proc "c" (i, n, eta: f32) -> f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [refract\_f64 ¶](#refract_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1058)

```
refract_f64 :: proc "c" (i, n, eta: f64) -> f64 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [refract\_vec2 ¶](#refract_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1064)

```
refract_vec2 :: proc "c" (i, n, eta: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [refract\_vec3 ¶](#refract_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1070)

```
refract_vec3 :: proc "c" (i, n, eta: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [refract\_vec4 ¶](#refract_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1076)

```
refract_vec4 :: proc "c" (i, n, eta: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [refract](/core/math/linalg/glsl/#refract)

### [round\_dvec2 ¶](#round_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L507)

```
round_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [round\_dvec3 ¶](#round_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L508)

```
round_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [round\_dvec4 ¶](#round_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L509)

```
round_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [round\_f32 ¶](#round_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L27)

```
round_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [round\_f64 ¶](#round_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L60)

```
round_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [round\_vec2 ¶](#round_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L504)

```
round_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [round\_vec3 ¶](#round_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L505)

```
round_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [round\_vec4 ¶](#round_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L506)

```
round_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [round](/core/math/linalg/glsl/#round)

### [saturate\_dvec2 ¶](#saturate_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L739)

```
saturate_dvec2 :: proc "c" (v: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_dvec3 ¶](#saturate_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L740)

```
saturate_dvec3 :: proc "c" (v: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_dvec4 ¶](#saturate_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L741)

```
saturate_dvec4 :: proc "c" (v: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_f32 ¶](#saturate_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L734)

```
saturate_f32 :: proc "c" (v: f32) -> f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_f64 ¶](#saturate_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L735)

```
saturate_f64 :: proc "c" (v: f64) -> f64 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_i32 ¶](#saturate_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L732)

```
saturate_i32 :: proc "c" (v: i32) -> i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_ivec2 ¶](#saturate_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L742)

```
saturate_ivec2 :: proc "c" (v: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_ivec3 ¶](#saturate_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L743)

```
saturate_ivec3 :: proc "c" (v: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_ivec4 ¶](#saturate_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L744)

```
saturate_ivec4 :: proc "c" (v: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_u32 ¶](#saturate_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L733)

```
saturate_u32 :: proc "c" (v: u32) -> u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_uvec2 ¶](#saturate_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L745)

```
saturate_uvec2 :: proc "c" (v: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_uvec3 ¶](#saturate_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L746)

```
saturate_uvec3 :: proc "c" (v: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_uvec4 ¶](#saturate_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L747)

```
saturate_uvec4 :: proc "c" (v: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_vec2 ¶](#saturate_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L736)

```
saturate_vec2 :: proc "c" (v: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_vec3 ¶](#saturate_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L737)

```
saturate_vec3 :: proc "c" (v: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [saturate\_vec4 ¶](#saturate_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L738)

```
saturate_vec4 :: proc "c" (v: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [saturate](/core/math/linalg/glsl/#saturate)

### [scalarTripleProduct\_dvec3 ¶](#scalarTripleProduct_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1107)

```
scalarTripleProduct_dvec3 :: proc "c" (a, b, c: [3]f64) -> f64 {…}
```

##### Related Procedure Groups

* [scalarTripleProduct](/core/math/linalg/glsl/#scalarTripleProduct)

### [scalarTripleProduct\_ivec3 ¶](#scalarTripleProduct_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1108)

```
scalarTripleProduct_ivec3 :: proc "c" (a, b, c: [3]i32) -> i32 {…}
```

##### Related Procedure Groups

* [scalarTripleProduct](/core/math/linalg/glsl/#scalarTripleProduct)

### [scalarTripleProduct\_vec3 ¶](#scalarTripleProduct_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1106)

```
scalarTripleProduct_vec3 :: proc "c" (a, b, c: [3]f32) -> f32 {…}
```

##### Related Procedure Groups

* [scalarTripleProduct](/core/math/linalg/glsl/#scalarTripleProduct)

### [sign\_dvec2 ¶](#sign_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L449)

```
sign_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_dvec3 ¶](#sign_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L450)

```
sign_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_dvec4 ¶](#sign_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L451)

```
sign_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_f32 ¶](#sign_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L24)

```
sign_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_f64 ¶](#sign_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L57)

```
sign_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_i32 ¶](#sign_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L444)

```
sign_i32 :: proc "c" (x: i32) -> i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_ivec2 ¶](#sign_ivec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L452)

```
sign_ivec2 :: proc "c" (x: [2]i32) -> [2]i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_ivec3 ¶](#sign_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L453)

```
sign_ivec3 :: proc "c" (x: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_ivec4 ¶](#sign_ivec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L454)

```
sign_ivec4 :: proc "c" (x: [4]i32) -> [4]i32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_u32 ¶](#sign_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L445)

```
sign_u32 :: proc "c" (x: u32) -> u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_uvec2 ¶](#sign_uvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L455)

```
sign_uvec2 :: proc "c" (x: [2]u32) -> [2]u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_uvec3 ¶](#sign_uvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L456)

```
sign_uvec3 :: proc "c" (x: [3]u32) -> [3]u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_uvec4 ¶](#sign_uvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L457)

```
sign_uvec4 :: proc "c" (x: [4]u32) -> [4]u32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_vec2 ¶](#sign_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L446)

```
sign_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_vec3 ¶](#sign_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L447)

```
sign_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sign\_vec4 ¶](#sign_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L448)

```
sign_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sign](/core/math/linalg/glsl/#sign)

### [sin\_dvec2 ¶](#sin_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L113)

```
sin_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sin\_dvec3 ¶](#sin_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L114)

```
sin_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sin\_dvec4 ¶](#sin_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L115)

```
sin_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sin\_f32 ¶](#sin_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L6)

```
sin_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sin\_f64 ¶](#sin_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L39)

```
sin_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sin\_vec2 ¶](#sin_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L110)

```
sin_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sin\_vec3 ¶](#sin_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L111)

```
sin_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sin\_vec4 ¶](#sin_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L112)

```
sin_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sin](/core/math/linalg/glsl/#sin)

### [sinh\_dvec2 ¶](#sinh_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L243)

```
sinh_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [sinh\_dvec3 ¶](#sinh_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L244)

```
sinh_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [sinh\_dvec4 ¶](#sinh_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L245)

```
sinh_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [sinh\_f32 ¶](#sinh_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L13)

```
sinh_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [sinh\_f64 ¶](#sinh_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L46)

```
sinh_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [sinh\_vec2 ¶](#sinh_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L240)

```
sinh_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [sinh\_vec3 ¶](#sinh_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L241)

```
sinh_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [sinh\_vec4 ¶](#sinh_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L242)

```
sinh_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sinh](/core/math/linalg/glsl/#sinh)

### [smoothstep\_dvec2 ¶](#smoothstep_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L828)

```
smoothstep_dvec2 :: proc "c" (edge0, edge1, x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [smoothstep\_dvec3 ¶](#smoothstep_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L829)

```
smoothstep_dvec3 :: proc "c" (edge0, edge1, x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [smoothstep\_dvec4 ¶](#smoothstep_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L830)

```
smoothstep_dvec4 :: proc "c" (edge0, edge1, x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [smoothstep\_f32 ¶](#smoothstep_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L817)

```
smoothstep_f32 :: proc "c" (edge0, edge1, x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [smoothstep\_f64 ¶](#smoothstep_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L821)

```
smoothstep_f64 :: proc "c" (edge0, edge1, x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [smoothstep\_vec2 ¶](#smoothstep_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L825)

```
smoothstep_vec2 :: proc "c" (edge0, edge1, x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [smoothstep\_vec3 ¶](#smoothstep_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L826)

```
smoothstep_vec3 :: proc "c" (edge0, edge1, x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [smoothstep\_vec4 ¶](#smoothstep_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L827)

```
smoothstep_vec4 :: proc "c" (edge0, edge1, x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [smoothstep](/core/math/linalg/glsl/#smoothstep)

### [sqrt\_dvec2 ¶](#sqrt_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L328)

```
sqrt_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [sqrt\_dvec3 ¶](#sqrt_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L329)

```
sqrt_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [sqrt\_dvec4 ¶](#sqrt_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L330)

```
sqrt_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [sqrt\_f32 ¶](#sqrt_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L18)

```
sqrt_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [sqrt\_f64 ¶](#sqrt_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L51)

```
sqrt_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [sqrt\_vec2 ¶](#sqrt_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L325)

```
sqrt_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [sqrt\_vec3 ¶](#sqrt_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L326)

```
sqrt_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [sqrt\_vec4 ¶](#sqrt_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L327)

```
sqrt_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [sqrt](/core/math/linalg/glsl/#sqrt)

### [step\_dvec2 ¶](#step_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L803)

```
step_dvec2 :: proc "c" (edge, x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [step\_dvec3 ¶](#step_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L804)

```
step_dvec3 :: proc "c" (edge, x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [step\_dvec4 ¶](#step_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L805)

```
step_dvec4 :: proc "c" (edge, x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [step\_f32 ¶](#step_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L798)

```
step_f32 :: proc "c" (edge, x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [step\_f64 ¶](#step_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L799)

```
step_f64 :: proc "c" (edge, x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [step\_vec2 ¶](#step_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L800)

```
step_vec2 :: proc "c" (edge, x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [step\_vec3 ¶](#step_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L801)

```
step_vec3 :: proc "c" (edge, x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [step\_vec4 ¶](#step_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L802)

```
step_vec4 :: proc "c" (edge, x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [step](/core/math/linalg/glsl/#step)

### [tan\_dvec2 ¶](#tan_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L130)

```
tan_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tan\_dvec3 ¶](#tan_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L131)

```
tan_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tan\_dvec4 ¶](#tan_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L132)

```
tan_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tan\_f32 ¶](#tan_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L7)

```
tan_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tan\_f64 ¶](#tan_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L40)

```
tan_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tan\_vec2 ¶](#tan_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L127)

```
tan_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tan\_vec3 ¶](#tan_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L128)

```
tan_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tan\_vec4 ¶](#tan_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L129)

```
tan_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [tan](/core/math/linalg/glsl/#tan)

### [tanh\_dvec2 ¶](#tanh_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L260)

```
tanh_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [tanh\_dvec3 ¶](#tanh_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L261)

```
tanh_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [tanh\_dvec4 ¶](#tanh_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L262)

```
tanh_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [tanh\_f32 ¶](#tanh_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L14)

```
tanh_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [tanh\_f64 ¶](#tanh_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L47)

```
tanh_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [tanh\_vec2 ¶](#tanh_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L257)

```
tanh_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [tanh\_vec3 ¶](#tanh_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L258)

```
tanh_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [tanh\_vec4 ¶](#tanh_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L259)

```
tanh_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [tanh](/core/math/linalg/glsl/#tanh)

### [trace ¶](#trace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1913)

```
trace :: proc "contextless" (m: $M/matrix[0, 0]$T) -> (trace: $$deferred_return) {…}
```

### [transpose ¶](#transpose)

```
transpose :: intrinsics.transpose  
transpose :: proc(m: $M/matrix[$R, $C]$E) -> matrix[C, R]E {…}
```

### [trunc\_dvec2 ¶](#trunc_dvec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L489)

```
trunc_dvec2 :: proc "c" (x: [2]f64) -> [2]f64 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [trunc\_dvec3 ¶](#trunc_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L490)

```
trunc_dvec3 :: proc "c" (x: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [trunc\_dvec4 ¶](#trunc_dvec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L491)

```
trunc_dvec4 :: proc "c" (x: [4]f64) -> [4]f64 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [trunc\_f32 ¶](#trunc_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L26)

```
trunc_f32 :: proc "c" (x: f32) -> f32 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [trunc\_f64 ¶](#trunc_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin#L59)

```
trunc_f64 :: proc "c" (x: f64) -> f64 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [trunc\_vec2 ¶](#trunc_vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L486)

```
trunc_vec2 :: proc "c" (x: [2]f32) -> [2]f32 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [trunc\_vec3 ¶](#trunc_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L487)

```
trunc_vec3 :: proc "c" (x: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [trunc\_vec4 ¶](#trunc_vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L488)

```
trunc_vec4 :: proc "c" (x: [4]f32) -> [4]f32 {…}
```

##### Related Procedure Groups

* [trunc](/core/math/linalg/glsl/#trunc)

### [vectorTripleProduct\_dvec3 ¶](#vectorTripleProduct_dvec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1116)

```
vectorTripleProduct_dvec3 :: proc "c" (a, b, c: [3]f64) -> [3]f64 {…}
```

##### Related Procedure Groups

* [vectorTripleProduct](/core/math/linalg/glsl/#vectorTripleProduct)

### [vectorTripleProduct\_ivec3 ¶](#vectorTripleProduct_ivec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1117)

```
vectorTripleProduct_ivec3 :: proc "c" (a, b, c: [3]i32) -> [3]i32 {…}
```

##### Related Procedure Groups

* [vectorTripleProduct](/core/math/linalg/glsl/#vectorTripleProduct)

### [vectorTripleProduct\_vec3 ¶](#vectorTripleProduct_vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1115)

```
vectorTripleProduct_vec3 :: proc "c" (a, b, c: [3]f32) -> [3]f32 {…}
```

##### Related Procedure Groups

* [vectorTripleProduct](/core/math/linalg/glsl/#vectorTripleProduct)

## Procedure Groups

### [abs ¶](#abs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L833)

```
abs :: proc{
	abs_i32,
	abs_u32,
	abs_f32,
	abs_f64,
	abs_vec2,
	abs_vec3,
	abs_vec4,
	abs_dvec2,
	abs_dvec3,
	abs_dvec4,
	abs_ivec2,
	abs_ivec3,
	abs_ivec4,
	abs_uvec2,
	abs_uvec3,
	abs_uvec4,
}
```

### [acos ¶](#acos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L134)

```
acos :: proc{
	acos_f32,
	acos_f64,
	acos_vec2,
	acos_vec3,
	acos_vec4,
	acos_dvec2,
	acos_dvec3,
	acos_dvec4,
}
```

### [acosh ¶](#acosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L264)

```
acosh :: proc{
	acosh_f32,
	acosh_f64,
	acosh_vec2,
	acosh_vec3,
	acosh_vec4,
	acosh_dvec2,
	acosh_dvec3,
	acosh_dvec4,
}
```

### [adjugate ¶](#adjugate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1878)

```
adjugate :: proc{
	adjugate_matrix1x1,
	adjugate_matrix2x2,
	adjugate_matrix3x3,
	adjugate_matrix4x4,
}
```

### [all ¶](#all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1348)

```
all :: proc{
	all_bool,
	all_bvec2,
	all_bvec3,
	all_bvec4,
}
```

### [any ¶](#any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1337)

```
any :: proc{
	any_bool,
	any_bvec2,
	any_bvec3,
	any_bvec4,
}
```

### [asin ¶](#asin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L151)

```
asin :: proc{
	asin_f32,
	asin_f64,
	asin_vec2,
	asin_vec3,
	asin_vec4,
	asin_dvec2,
	asin_dvec3,
	asin_dvec4,
}
```

### [asinh ¶](#asinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L281)

```
asinh :: proc{
	asinh_f32,
	asinh_f64,
	asinh_vec2,
	asinh_vec3,
	asinh_vec4,
	asinh_dvec2,
	asinh_dvec3,
	asinh_dvec4,
}
```

### [atan ¶](#atan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L168)

```
atan :: proc{
	atan_f32,
	atan_f64,
	atan_vec2,
	atan_vec3,
	atan_vec4,
	atan_dvec2,
	atan_dvec3,
	atan_dvec4,
	atan2_f32,
	atan2_f64,
	atan2_vec2,
	atan2_vec3,
	atan2_vec4,
	atan2_dvec2,
	atan2_dvec3,
	atan2_dvec4,
}
```

### [atan2 ¶](#atan2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L193)

```
atan2 :: proc{
	atan2_f32,
	atan2_f64,
	atan2_vec2,
	atan2_vec3,
	atan2_vec4,
	atan2_dvec2,
	atan2_dvec3,
	atan2_dvec4,
}
```

### [atanh ¶](#atanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L298)

```
atanh :: proc{
	atanh_f32,
	atanh_f64,
	atanh_vec2,
	atanh_vec3,
	atanh_vec4,
	atanh_dvec2,
	atanh_dvec3,
	atanh_dvec4,
}
```

### [ceil ¶](#ceil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L512)

```
ceil :: proc{
	ceil_f32,
	ceil_f64,
	ceil_vec2,
	ceil_vec3,
	ceil_vec4,
	ceil_dvec2,
	ceil_dvec3,
	ceil_dvec4,
}
```

### [clamp ¶](#clamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L679)

```
clamp :: proc{
	clamp_i32,
	clamp_u32,
	clamp_f32,
	clamp_f64,
	clamp_vec2,
	clamp_vec3,
	clamp_vec4,
	clamp_dvec2,
	clamp_dvec3,
	clamp_dvec4,
	clamp_ivec2,
	clamp_ivec3,
	clamp_ivec4,
	clamp_uvec2,
	clamp_uvec3,
	clamp_uvec4,
}
```

### [cofactor ¶](#cofactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1885)

```
cofactor :: proc{
	cofactor_matrix1x1,
	cofactor_matrix2x2,
	cofactor_matrix3x3,
	cofactor_matrix4x4,
}
```

### [cos ¶](#cos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L83)

```
cos :: proc{
	cos_f32,
	cos_f64,
	cos_vec2,
	cos_vec3,
	cos_vec4,
	cos_dvec2,
	cos_dvec3,
	cos_dvec4,
}
```

### [cosh ¶](#cosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L212)

```
cosh :: proc{
	cosh_f32,
	cosh_f64,
	cosh_vec2,
	cosh_vec3,
	cosh_vec4,
	cosh_dvec2,
	cosh_dvec3,
	cosh_dvec4,
}
```

### [cross ¶](#cross) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L951)

```
cross :: proc{
	cross_vec3,
	cross_dvec3,
	cross_ivec3,
}
```

### [degrees ¶](#degrees) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L587)

```
degrees :: proc{
	degrees_f32,
	degrees_f64,
	degrees_vec2,
	degrees_vec3,
	degrees_vec4,
	degrees_dvec2,
	degrees_dvec3,
	degrees_dvec4,
}
```

### [determinant ¶](#determinant) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1871)

```
determinant :: proc{
	determinant_matrix1x1,
	determinant_matrix2x2,
	determinant_matrix3x3,
	determinant_matrix4x4,
}
```

### [distance ¶](#distance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L931)

```
distance :: proc{
	distance_f32,
	distance_f64,
	distance_vec2,
	distance_vec3,
	distance_vec4,
	distance_dvec2,
	distance_dvec3,
	distance_dvec4,
}
```

### [dot ¶](#dot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L868)

```
dot :: proc{
	dot_i32,
	dot_u32,
	dot_f32,
	dot_f64,
	dot_vec2,
	dot_vec3,
	dot_vec4,
	dot_dvec2,
	dot_dvec3,
	dot_dvec4,
	dot_ivec2,
	dot_ivec3,
	dot_ivec4,
	dot_uvec2,
	dot_uvec3,
	dot_uvec4,
	dot_quat,
	dot_dquat,
}
```

### [equal ¶](#equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1266)

```
equal :: proc{
	equal_f32,
	equal_f64,
	equal_i32,
	equal_u32,
	equal_vec2,
	equal_dvec2,
	equal_ivec2,
	equal_uvec2,
	equal_vec3,
	equal_dvec3,
	equal_ivec3,
	equal_uvec3,
	equal_vec4,
	equal_dvec4,
	equal_ivec4,
	equal_uvec4,
}
```

### [exp ¶](#exp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L370)

```
exp :: proc{
	exp_f32,
	exp_f64,
	exp_vec2,
	exp_vec3,
	exp_vec4,
	exp_dvec2,
	exp_dvec3,
	exp_dvec4,
}
```

### [exp2 ¶](#exp2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L408)

```
exp2 :: proc{
	exp2_f32,
	exp2_f64,
	exp2_vec2,
	exp2_vec3,
	exp2_vec4,
	exp2_dvec2,
	exp2_dvec3,
	exp2_dvec4,
}
```

### [faceForward ¶](#faceForward) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1000)

```
faceForward :: proc{
	faceForward_f32,
	faceForward_f64,
	faceForward_vec2,
	faceForward_vec3,
	faceForward_vec4,
	faceForward_dvec2,
	faceForward_dvec3,
	faceForward_dvec4,
}
```

### [floor ¶](#floor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L459)

```
floor :: proc{
	floor_f32,
	floor_f64,
	floor_vec2,
	floor_vec3,
	floor_vec4,
	floor_dvec2,
	floor_dvec3,
	floor_dvec4,
}
```

### [fract ¶](#fract) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L548)

```
fract :: proc{
	fract_f32,
	fract_f64,
	fract_vec2,
	fract_vec3,
	fract_vec4,
	fract_dvec2,
	fract_dvec3,
	fract_dvec4,
}
```

### [greaterThan ¶](#greaterThan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1194)

```
greaterThan :: proc{
	greaterThan_f32,
	greaterThan_f64,
	greaterThan_i32,
	greaterThan_u32,
	greaterThan_vec2,
	greaterThan_dvec2,
	greaterThan_ivec2,
	greaterThan_uvec2,
	greaterThan_vec3,
	greaterThan_dvec3,
	greaterThan_ivec3,
	greaterThan_uvec3,
	greaterThan_vec4,
	greaterThan_dvec4,
	greaterThan_ivec4,
	greaterThan_uvec4,
}
```

### [greaterThanEqual ¶](#greaterThanEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1230)

```
greaterThanEqual :: proc{
	greaterThanEqual_f32,
	greaterThanEqual_f64,
	greaterThanEqual_i32,
	greaterThanEqual_u32,
	greaterThanEqual_vec2,
	greaterThanEqual_dvec2,
	greaterThanEqual_ivec2,
	greaterThanEqual_uvec2,
	greaterThanEqual_vec3,
	greaterThanEqual_dvec3,
	greaterThanEqual_ivec3,
	greaterThanEqual_uvec3,
	greaterThanEqual_vec4,
	greaterThanEqual_dvec4,
	greaterThanEqual_ivec4,
	greaterThanEqual_uvec4,
}
```

### [inverse ¶](#inverse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1900)

```
inverse :: proc{
	inverse_matrix1x1,
	inverse_matrix2x2,
	inverse_matrix3x3,
	inverse_matrix4x4,
}
```

### [inverse\_transpose ¶](#inverse_transpose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1892)

```
inverse_transpose :: proc{
	inverse_transpose_matrix1x1,
	inverse_transpose_matrix2x2,
	inverse_transpose_matrix3x3,
	inverse_transpose_matrix4x4,
}
```

### [inversesqrt ¶](#inversesqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L333)

```
inversesqrt :: proc{
	inversesqrt_f32,
	inversesqrt_f64,
	inversesqrt_vec2,
	inversesqrt_vec3,
	inversesqrt_vec4,
	inversesqrt_dvec2,
	inversesqrt_dvec3,
	inversesqrt_dvec4,
}
```

### [length ¶](#length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L907)

```
length :: proc{
	length_f32,
	length_f64,
	length_vec2,
	length_vec3,
	length_vec4,
	length_dvec2,
	length_dvec3,
	length_dvec4,
	length_quat,
	length_dquat,
}
```

### [lerp ¶](#lerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L768)

```
lerp :: proc{
	lerp_f32,
	lerp_f64,
	lerp_vec2,
	lerp_vec3,
	lerp_vec4,
	lerp_dvec2,
	lerp_dvec3,
	lerp_dvec4,
}
```

### [lessThan ¶](#lessThan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1122)

```
lessThan :: proc{
	lessThan_f32,
	lessThan_f64,
	lessThan_i32,
	lessThan_u32,
	lessThan_vec2,
	lessThan_dvec2,
	lessThan_ivec2,
	lessThan_uvec2,
	lessThan_vec3,
	lessThan_dvec3,
	lessThan_ivec3,
	lessThan_uvec3,
	lessThan_vec4,
	lessThan_dvec4,
	lessThan_ivec4,
	lessThan_uvec4,
}
```

### [lessThanEqual ¶](#lessThanEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1158)

```
lessThanEqual :: proc{
	lessThanEqual_f32,
	lessThanEqual_f64,
	lessThanEqual_i32,
	lessThanEqual_u32,
	lessThanEqual_vec2,
	lessThanEqual_dvec2,
	lessThanEqual_ivec2,
	lessThanEqual_uvec2,
	lessThanEqual_vec3,
	lessThanEqual_dvec3,
	lessThanEqual_ivec3,
	lessThanEqual_uvec3,
	lessThanEqual_vec4,
	lessThanEqual_dvec4,
	lessThanEqual_ivec4,
	lessThanEqual_uvec4,
}
```

### [log ¶](#log) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L389)

```
log :: proc{
	log_f32,
	log_f64,
	log_vec2,
	log_vec3,
	log_vec4,
	log_dvec2,
	log_dvec3,
	log_dvec4,
}
```

### [max ¶](#max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L642)

```
max :: proc{
	max_i32,
	max_u32,
	max_f32,
	max_f64,
	max_vec2,
	max_vec3,
	max_vec4,
	max_dvec2,
	max_dvec3,
	max_dvec4,
	max_ivec2,
	max_ivec3,
	max_ivec4,
	max_uvec2,
	max_uvec3,
	max_uvec4,
}
```

### [min ¶](#min) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L606)

```
min :: proc{
	min_i32,
	min_u32,
	min_f32,
	min_f64,
	min_vec2,
	min_vec3,
	min_vec4,
	min_dvec2,
	min_dvec3,
	min_dvec4,
	min_ivec2,
	min_ivec3,
	min_ivec4,
	min_uvec2,
	min_uvec3,
	min_uvec4,
}
```

### [mix ¶](#mix) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L749)

```
mix :: proc{
	mix_f32,
	mix_f64,
	mix_vec2,
	mix_vec3,
	mix_vec4,
	mix_dvec2,
	mix_dvec3,
	mix_dvec4,
}
```

### [mod ¶](#mod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L530)

```
mod :: proc{
	mod_f32,
	mod_f64,
	mod_vec2,
	mod_vec3,
	mod_vec4,
	mod_dvec2,
	mod_dvec3,
	mod_dvec4,
}
```

### [nlerp ¶](#nlerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1629)

```
nlerp :: proc{
	quatNlerp,
	dquatNlerp,
}
```

### [normalize ¶](#normalize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L976)

```
normalize :: proc{
	normalize_f32,
	normalize_f64,
	normalize_vec2,
	normalize_vec3,
	normalize_vec4,
	normalize_dvec2,
	normalize_dvec3,
	normalize_dvec4,
	normalize_quat,
	normalize_dquat,
}
```

### [not ¶](#not) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1359)

```
not :: proc{
	not_bool,
	not_bvec2,
	not_bvec3,
	not_bvec4,
}
```

### [notEqual ¶](#notEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1301)

```
notEqual :: proc{
	notEqual_f32,
	notEqual_f64,
	notEqual_i32,
	notEqual_u32,
	notEqual_vec2,
	notEqual_dvec2,
	notEqual_ivec2,
	notEqual_uvec2,
	notEqual_vec3,
	notEqual_dvec3,
	notEqual_ivec3,
	notEqual_uvec3,
	notEqual_vec4,
	notEqual_dvec4,
	notEqual_ivec4,
	notEqual_uvec4,
}
```

### [pow ¶](#pow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L351)

```
pow :: proc{
	pow_f32,
	pow_f64,
	pow_vec2,
	pow_vec3,
	pow_vec4,
	pow_dvec2,
	pow_dvec3,
	pow_dvec4,
}
```

### [radians ¶](#radians) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L567)

```
radians :: proc{
	radians_f32,
	radians_f64,
	radians_vec2,
	radians_vec3,
	radians_vec4,
	radians_dvec2,
	radians_dvec3,
	radians_dvec4,
}
```

### [reflect ¶](#reflect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1020)

```
reflect :: proc{
	reflect_f32,
	reflect_f64,
	reflect_vec2,
	reflect_vec3,
	reflect_vec4,
	reflect_dvec2,
	reflect_dvec3,
	reflect_dvec4,
}
```

### [refract ¶](#refract) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1042)

```
refract :: proc{
	refract_f32,
	refract_f64,
	refract_vec2,
	refract_vec3,
	refract_vec4,
	refract_dvec2,
	refract_dvec3,
	refract_dvec4,
}
```

### [round ¶](#round) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L494)

```
round :: proc{
	round_f32,
	round_f64,
	round_vec2,
	round_vec3,
	round_vec4,
	round_dvec2,
	round_dvec3,
	round_dvec4,
}
```

### [rsqrt ¶](#rsqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L332)

```
rsqrt :: proc{
	inversesqrt_f32,
	inversesqrt_f64,
	inversesqrt_vec2,
	inversesqrt_vec3,
	inversesqrt_vec4,
	inversesqrt_dvec2,
	inversesqrt_dvec3,
	inversesqrt_dvec4,
}
```

### [saturate ¶](#saturate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L714)

```
saturate :: proc{
	saturate_i32,
	saturate_u32,
	saturate_f32,
	saturate_f64,
	saturate_vec2,
	saturate_vec3,
	saturate_vec4,
	saturate_dvec2,
	saturate_dvec3,
	saturate_dvec4,
	saturate_ivec2,
	saturate_ivec3,
	saturate_ivec4,
	saturate_uvec2,
	saturate_uvec3,
	saturate_uvec4,
}
```

### [scalarTripleProduct ¶](#scalarTripleProduct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1101)

```
scalarTripleProduct :: proc{
	scalarTripleProduct_vec3,
	scalarTripleProduct_dvec3,
	scalarTripleProduct_ivec3,
}
```

### [sign ¶](#sign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L426)

```
sign :: proc{
	sign_i32,
	sign_u32,
	sign_f32,
	sign_f64,
	sign_vec2,
	sign_vec3,
	sign_vec4,
	sign_dvec2,
	sign_dvec3,
	sign_dvec4,
	sign_ivec2,
	sign_ivec3,
	sign_ivec4,
	sign_uvec2,
	sign_uvec3,
	sign_uvec4,
}
```

### [sin ¶](#sin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L100)

```
sin :: proc{
	sin_f32,
	sin_f64,
	sin_vec2,
	sin_vec3,
	sin_vec4,
	sin_dvec2,
	sin_dvec3,
	sin_dvec4,
}
```

### [sinh ¶](#sinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L230)

```
sinh :: proc{
	sinh_f32,
	sinh_f64,
	sinh_vec2,
	sinh_vec3,
	sinh_vec4,
	sinh_dvec2,
	sinh_dvec3,
	sinh_dvec4,
}
```

### [slerp ¶](#slerp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1633)

```
slerp :: proc{
	quatSlerp,
	dquatSlerp,
}
```

### [smoothstep ¶](#smoothstep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L807)

```
smoothstep :: proc{
	smoothstep_f32,
	smoothstep_f64,
	smoothstep_vec2,
	smoothstep_vec3,
	smoothstep_vec4,
	smoothstep_dvec2,
	smoothstep_dvec3,
	smoothstep_dvec4,
}
```

### [sqrt ¶](#sqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L315)

```
sqrt :: proc{
	sqrt_f32,
	sqrt_f64,
	sqrt_vec2,
	sqrt_vec3,
	sqrt_vec4,
	sqrt_dvec2,
	sqrt_dvec3,
	sqrt_dvec4,
}
```

### [step ¶](#step) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L788)

```
step :: proc{
	step_f32,
	step_f64,
	step_vec2,
	step_vec3,
	step_vec4,
	step_dvec2,
	step_dvec3,
	step_dvec4,
}
```

### [tan ¶](#tan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L117)

```
tan :: proc{
	tan_f32,
	tan_f64,
	tan_vec2,
	tan_vec3,
	tan_vec4,
	tan_dvec2,
	tan_dvec3,
	tan_dvec4,
}
```

### [tanh ¶](#tanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L247)

```
tanh :: proc{
	tanh_f32,
	tanh_f64,
	tanh_vec2,
	tanh_vec3,
	tanh_vec4,
	tanh_dvec2,
	tanh_dvec3,
	tanh_dvec4,
}
```

### [trunc ¶](#trunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L476)

```
trunc :: proc{
	trunc_f32,
	trunc_f64,
	trunc_vec2,
	trunc_vec3,
	trunc_vec4,
	trunc_dvec2,
	trunc_dvec3,
	trunc_dvec4,
}
```

### [vectorTripleProduct ¶](#vectorTripleProduct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin#L1110)

```
vectorTripleProduct :: proc{
	vectorTripleProduct_vec3,
	vectorTripleProduct_dvec3,
	vectorTripleProduct_ivec3,
}
```

## Source Files

* [linalg\_glsl.odin](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl.odin)
* [linalg\_glsl\_math.odin](https://github.com/odin-lang/Odin/tree/master/core/math/linalg/glsl/linalg_glsl_math.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.806018300 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [bvec2](#bvec2)
    + [bvec3](#bvec3)
    + [bvec4](#bvec4)
    + [dmat2](#dmat2)
    + [dmat2x2](#dmat2x2)
    + [dmat2x3](#dmat2x3)
    + [dmat2x4](#dmat2x4)
    + [dmat3](#dmat3)
    + [dmat3x2](#dmat3x2)
    + [dmat3x3](#dmat3x3)
    + [dmat3x4](#dmat3x4)
    + [dmat4](#dmat4)
    + [dmat4x2](#dmat4x2)
    + [dmat4x3](#dmat4x3)
    + [dmat4x4](#dmat4x4)
    + [dquat](#dquat)
    + [dvec2](#dvec2)
    + [dvec3](#dvec3)
    + [dvec4](#dvec4)
    + [ivec2](#ivec2)
    + [ivec3](#ivec3)
    + [ivec4](#ivec4)
    + [mat2](#mat2)
    + [mat2x2](#mat2x2)
    + [mat2x3](#mat2x3)
    + [mat2x4](#mat2x4)
    + [mat3](#mat3)
    + [mat3x2](#mat3x2)
    + [mat3x3](#mat3x3)
    + [mat3x4](#mat3x4)
    + [mat4](#mat4)
    + [mat4x2](#mat4x2)
    + [mat4x3](#mat4x3)
    + [mat4x4](#mat4x4)
    + [quat](#quat)
    + [uvec2](#uvec2)
    + [uvec3](#uvec3)
    + [uvec4](#uvec4)
    + [vec2](#vec2)
    + [vec3](#vec3)
    + [vec4](#vec4)
  * [Constants](#pkg-Constants)
    + [E](#E)
    + [F32\_EPSILON](#F32_EPSILON)
    + [F64\_EPSILON](#F64_EPSILON)
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
    + [abs\_dvec2](#abs_dvec2)
    + [abs\_dvec3](#abs_dvec3)
    + [abs\_dvec4](#abs_dvec4)
    + [abs\_f32](#abs_f32)
    + [abs\_f64](#abs_f64)
    + [abs\_i32](#abs_i32)
    + [abs\_ivec2](#abs_ivec2)
    + [abs\_ivec3](#abs_ivec3)
    + [abs\_ivec4](#abs_ivec4)
    + [abs\_u32](#abs_u32)
    + [abs\_uvec2](#abs_uvec2)
    + [abs\_uvec3](#abs_uvec3)
    + [abs\_uvec4](#abs_uvec4)
    + [abs\_vec2](#abs_vec2)
    + [abs\_vec3](#abs_vec3)
    + [abs\_vec4](#abs_vec4)
    + [acos\_dvec2](#acos_dvec2)
    + [acos\_dvec3](#acos_dvec3)
    + [acos\_dvec4](#acos_dvec4)
    + [acos\_f32](#acos_f32)
    + [acos\_f64](#acos_f64)
    + [acos\_vec2](#acos_vec2)
    + [acos\_vec3](#acos_vec3)
    + [acos\_vec4](#acos_vec4)
    + [acosh\_dvec2](#acosh_dvec2)
    + [acosh\_dvec3](#acosh_dvec3)
    + [acosh\_dvec4](#acosh_dvec4)
    + [acosh\_f32](#acosh_f32)
    + [acosh\_f64](#acosh_f64)
    + [acosh\_vec2](#acosh_vec2)
    + [acosh\_vec3](#acosh_vec3)
    + [acosh\_vec4](#acosh_vec4)
    + [adjugate\_matrix1x1](#adjugate_matrix1x1)
    + [adjugate\_matrix2x2](#adjugate_matrix2x2)
    + [adjugate\_matrix3x3](#adjugate_matrix3x3)
    + [adjugate\_matrix4x4](#adjugate_matrix4x4)
    + [all\_bool](#all_bool)
    + [all\_bvec2](#all_bvec2)
    + [all\_bvec3](#all_bvec3)
    + [all\_bvec4](#all_bvec4)
    + [any\_bool](#any_bool)
    + [any\_bvec2](#any_bvec2)
    + [any\_bvec3](#any_bvec3)
    + [any\_bvec4](#any_bvec4)
    + [asin\_dvec2](#asin_dvec2)
    + [asin\_dvec3](#asin_dvec3)
    + [asin\_dvec4](#asin_dvec4)
    + [asin\_f32](#asin_f32)
    + [asin\_f64](#asin_f64)
    + [asin\_vec2](#asin_vec2)
    + [asin\_vec3](#asin_vec3)
    + [asin\_vec4](#asin_vec4)
    + [asinh\_dvec2](#asinh_dvec2)
    + [asinh\_dvec3](#asinh_dvec3)
    + [asinh\_dvec4](#asinh_dvec4)
    + [asinh\_f32](#asinh_f32)
    + [asinh\_f64](#asinh_f64)
    + [asinh\_vec2](#asinh_vec2)
    + [asinh\_vec3](#asinh_vec3)
    + [asinh\_vec4](#asinh_vec4)
    + [atan2\_dvec2](#atan2_dvec2)
    + [atan2\_dvec3](#atan2_dvec3)
    + [atan2\_dvec4](#atan2_dvec4)
    + [atan2\_f32](#atan2_f32)
    + [atan2\_f64](#atan2_f64)
    + [atan2\_vec2](#atan2_vec2)
    + [atan2\_vec3](#atan2_vec3)
    + [atan2\_vec4](#atan2_vec4)
    + [atan\_dvec2](#atan_dvec2)
    + [atan\_dvec3](#atan_dvec3)
    + [atan\_dvec4](#atan_dvec4)
    + [atan\_f32](#atan_f32)
    + [atan\_f64](#atan_f64)
    + [atan\_vec2](#atan_vec2)
    + [atan\_vec3](#atan_vec3)
    + [atan\_vec4](#atan_vec4)
    + [atanh\_dvec2](#atanh_dvec2)
    + [atanh\_dvec3](#atanh_dvec3)
    + [atanh\_dvec4](#atanh_dvec4)
    + [atanh\_f32](#atanh_f32)
    + [atanh\_f64](#atanh_f64)
    + [atanh\_vec2](#atanh_vec2)
    + [atanh\_vec3](#atanh_vec3)
    + [atanh\_vec4](#atanh_vec4)
    + [ceil\_dvec2](#ceil_dvec2)
    + [ceil\_dvec3](#ceil_dvec3)
    + [ceil\_dvec4](#ceil_dvec4)
    + [ceil\_f32](#ceil_f32)
    + [ceil\_f64](#ceil_f64)
    + [ceil\_vec2](#ceil_vec2)
    + [ceil\_vec3](#ceil_vec3)
    + [ceil\_vec4](#ceil_vec4)
    + [clamp\_dvec2](#clamp_dvec2)
    + [clamp\_dvec3](#clamp_dvec3)
    + [clamp\_dvec4](#clamp_dvec4)
    + [clamp\_f32](#clamp_f32)
    + [clamp\_f64](#clamp_f64)
    + [clamp\_i32](#clamp_i32)
    + [clamp\_ivec2](#clamp_ivec2)
    + [clamp\_ivec3](#clamp_ivec3)
    + [clamp\_ivec4](#clamp_ivec4)
    + [clamp\_u32](#clamp_u32)
    + [clamp\_uvec2](#clamp_uvec2)
    + [clamp\_uvec3](#clamp_uvec3)
    + [clamp\_uvec4](#clamp_uvec4)
    + [clamp\_vec2](#clamp_vec2)
    + [clamp\_vec3](#clamp_vec3)
    + [clamp\_vec4](#clamp_vec4)
    + [cofactor\_matrix1x1](#cofactor_matrix1x1)
    + [cofactor\_matrix2x2](#cofactor_matrix2x2)
    + [cofactor\_matrix3x3](#cofactor_matrix3x3)
    + [cofactor\_matrix4x4](#cofactor_matrix4x4)
    + [cos\_dvec2](#cos_dvec2)
    + [cos\_dvec3](#cos_dvec3)
    + [cos\_dvec4](#cos_dvec4)
    + [cos\_f32](#cos_f32)
    + [cos\_f64](#cos_f64)
    + [cos\_vec2](#cos_vec2)
    + [cos\_vec3](#cos_vec3)
    + [cos\_vec4](#cos_vec4)
    + [cosh\_dvec2](#cosh_dvec2)
    + [cosh\_dvec3](#cosh_dvec3)
    + [cosh\_dvec4](#cosh_dvec4)
    + [cosh\_f32](#cosh_f32)
    + [cosh\_f64](#cosh_f64)
    + [cosh\_vec2](#cosh_vec2)
    + [cosh\_vec3](#cosh_vec3)
    + [cosh\_vec4](#cosh_vec4)
    + [cross\_dvec3](#cross_dvec3)
    + [cross\_ivec3](#cross_ivec3)
    + [cross\_vec3](#cross_vec3)
    + [degrees\_dvec2](#degrees_dvec2)
    + [degrees\_dvec3](#degrees_dvec3)
    + [degrees\_dvec4](#degrees_dvec4)
    + [degrees\_f32](#degrees_f32)
    + [degrees\_f64](#degrees_f64)
    + [degrees\_vec2](#degrees_vec2)
    + [degrees\_vec3](#degrees_vec3)
    + [degrees\_vec4](#degrees_vec4)
    + [determinant\_matrix1x1](#determinant_matrix1x1)
    + [determinant\_matrix2x2](#determinant_matrix2x2)
    + [determinant\_matrix3x3](#determinant_matrix3x3)
    + [determinant\_matrix4x4](#determinant_matrix4x4)
    + [distance\_dvec2](#distance_dvec2)
    + [distance\_dvec3](#distance_dvec3)
    + [distance\_dvec4](#distance_dvec4)
    + [distance\_f32](#distance_f32)
    + [distance\_f64](#distance_f64)
    + [distance\_vec2](#distance_vec2)
    + [distance\_vec3](#distance_vec3)
    + [distance\_vec4](#distance_vec4)
    + [dmat4FromDquat](#dmat4FromDquat)
    + [dmat4LookAt](#dmat4LookAt)
    + [dmat4Orientation](#dmat4Orientation)
    + [dmat4Ortho3d](#dmat4Ortho3d)
    + [dmat4Perspective](#dmat4Perspective)
    + [dmat4PerspectiveInfinite](#dmat4PerspectiveInfinite)
    + [dmat4Rotate](#dmat4Rotate)
    + [dmat4Scale](#dmat4Scale)
    + [dmat4Translate](#dmat4Translate)
    + [dot\_dquat](#dot_dquat)
    + [dot\_dvec2](#dot_dvec2)
    + [dot\_dvec3](#dot_dvec3)
    + [dot\_dvec4](#dot_dvec4)
    + [dot\_f32](#dot_f32)
    + [dot\_f64](#dot_f64)
    + [dot\_i32](#dot_i32)
    + [dot\_ivec2](#dot_ivec2)
    + [dot\_ivec3](#dot_ivec3)
    + [dot\_ivec4](#dot_ivec4)
    + [dot\_quat](#dot_quat)
    + [dot\_u32](#dot_u32)
    + [dot\_uvec2](#dot_uvec2)
    + [dot\_uvec3](#dot_uvec3)
    + [dot\_uvec4](#dot_uvec4)
    + [dot\_vec2](#dot_vec2)
    + [dot\_vec3](#dot_vec3)
    + [dot\_vec4](#dot_vec4)
    + [dquatAxisAngle](#dquatAxisAngle)
    + [dquatFromDmat4](#dquatFromDmat4)
    + [dquatFromdMat3](#dquatFromdMat3)
    + [dquatMulDvec3](#dquatMulDvec3)
    + [dquatNlerp](#dquatNlerp)
    + [dquatSlerp](#dquatSlerp)
    + [equal\_dvec2](#equal_dvec2)
    + [equal\_dvec3](#equal_dvec3)
    + [equal\_dvec4](#equal_dvec4)
    + [equal\_f32](#equal_f32)
    + [equal\_f64](#equal_f64)
    + [equal\_i32](#equal_i32)
    + [equal\_ivec2](#equal_ivec2)
    + [equal\_ivec3](#equal_ivec3)
    + [equal\_ivec4](#equal_ivec4)
    + [equal\_u32](#equal_u32)
    + [equal\_uvec2](#equal_uvec2)
    + [equal\_uvec3](#equal_uvec3)
    + [equal\_uvec4](#equal_uvec4)
    + [equal\_vec2](#equal_vec2)
    + [equal\_vec3](#equal_vec3)
    + [equal\_vec4](#equal_vec4)
    + [exp2\_dvec2](#exp2_dvec2)
    + [exp2\_dvec3](#exp2_dvec3)
    + [exp2\_dvec4](#exp2_dvec4)
    + [exp2\_f32](#exp2_f32)
    + [exp2\_f64](#exp2_f64)
    + [exp2\_vec2](#exp2_vec2)
    + [exp2\_vec3](#exp2_vec3)
    + [exp2\_vec4](#exp2_vec4)
    + [exp\_dvec2](#exp_dvec2)
    + [exp\_dvec3](#exp_dvec3)
    + [exp\_dvec4](#exp_dvec4)
    + [exp\_f32](#exp_f32)
    + [exp\_f64](#exp_f64)
    + [exp\_vec2](#exp_vec2)
    + [exp\_vec3](#exp_vec3)
    + [exp\_vec4](#exp_vec4)
    + [faceForward\_dvec2](#faceForward_dvec2)
    + [faceForward\_dvec3](#faceForward_dvec3)
    + [faceForward\_dvec4](#faceForward_dvec4)
    + [faceForward\_f32](#faceForward_f32)
    + [faceForward\_f64](#faceForward_f64)
    + [faceForward\_vec2](#faceForward_vec2)
    + [faceForward\_vec3](#faceForward_vec3)
    + [faceForward\_vec4](#faceForward_vec4)
    + [floor\_dvec2](#floor_dvec2)
    + [floor\_dvec3](#floor_dvec3)
    + [floor\_dvec4](#floor_dvec4)
    + [floor\_f32](#floor_f32)
    + [floor\_f64](#floor_f64)
    + [floor\_vec2](#floor_vec2)
    + [floor\_vec3](#floor_vec3)
    + [floor\_vec4](#floor_vec4)
    + [fract\_dvec2](#fract_dvec2)
    + [fract\_dvec3](#fract_dvec3)
    + [fract\_dvec4](#fract_dvec4)
    + [fract\_f32](#fract_f32)
    + [fract\_f64](#fract_f64)
    + [fract\_vec2](#fract_vec2)
    + [fract\_vec3](#fract_vec3)
    + [fract\_vec4](#fract_vec4)
    + [greaterThanEqual\_dvec2](#greaterThanEqual_dvec2)
    + [greaterThanEqual\_dvec3](#greaterThanEqual_dvec3)
    + [greaterThanEqual\_dvec4](#greaterThanEqual_dvec4)
    + [greaterThanEqual\_f32](#greaterThanEqual_f32)
    + [greaterThanEqual\_f64](#greaterThanEqual_f64)
    + [greaterThanEqual\_i32](#greaterThanEqual_i32)
    + [greaterThanEqual\_ivec2](#greaterThanEqual_ivec2)
    + [greaterThanEqual\_ivec3](#greaterThanEqual_ivec3)
    + [greaterThanEqual\_ivec4](#greaterThanEqual_ivec4)
    + [greaterThanEqual\_u32](#greaterThanEqual_u32)
    + [greaterThanEqual\_uvec2](#greaterThanEqual_uvec2)
    + [greaterThanEqual\_uvec3](#greaterThanEqual_uvec3)
    + [greaterThanEqual\_uvec4](#greaterThanEqual_uvec4)
    + [greaterThanEqual\_vec2](#greaterThanEqual_vec2)
    + [greaterThanEqual\_vec3](#greaterThanEqual_vec3)
    + [greaterThanEqual\_vec4](#greaterThanEqual_vec4)
    + [greaterThan\_dvec2](#greaterThan_dvec2)
    + [greaterThan\_dvec3](#greaterThan_dvec3)
    + [greaterThan\_dvec4](#greaterThan_dvec4)
    + [greaterThan\_f32](#greaterThan_f32)
    + [greaterThan\_f64](#greaterThan_f64)
    + [greaterThan\_i32](#greaterThan_i32)
    + [greaterThan\_ivec2](#greaterThan_ivec2)
    + [greaterThan\_ivec3](#greaterThan_ivec3)
    + [greaterThan\_ivec4](#greaterThan_ivec4)
    + [greaterThan\_u32](#greaterThan_u32)
    + [greaterThan\_uvec2](#greaterThan_uvec2)
    + [greaterThan\_uvec3](#greaterThan_uvec3)
    + [greaterThan\_uvec4](#greaterThan_uvec4)
    + [greaterThan\_vec2](#greaterThan_vec2)
    + [greaterThan\_vec3](#greaterThan_vec3)
    + [greaterThan\_vec4](#greaterThan_vec4)
    + [hermitian\_adjoint](#hermitian_adjoint)
    + [identity](#identity)
    + [inverse\_dmat2](#inverse_dmat2)
    + [inverse\_dmat3](#inverse_dmat3)
    + [inverse\_dmat4](#inverse_dmat4)
    + [inverse\_dquat](#inverse_dquat)
    + [inverse\_mat2](#inverse_mat2)
    + [inverse\_mat3](#inverse_mat3)
    + [inverse\_mat4](#inverse_mat4)
    + [inverse\_matrix1x1](#inverse_matrix1x1)
    + [inverse\_matrix2x2](#inverse_matrix2x2)
    + [inverse\_matrix3x3](#inverse_matrix3x3)
    + [inverse\_matrix4x4](#inverse_matrix4x4)
    + [inverse\_quat](#inverse_quat)
    + [inverse\_transpose\_matrix1x1](#inverse_transpose_matrix1x1)
    + [inverse\_transpose\_matrix2x2](#inverse_transpose_matrix2x2)
    + [inverse\_transpose\_matrix3x3](#inverse_transpose_matrix3x3)
    + [inverse\_transpose\_matrix4x4](#inverse_transpose_matrix4x4)
    + [inversesqrt\_dvec2](#inversesqrt_dvec2)
    + [inversesqrt\_dvec3](#inversesqrt_dvec3)
    + [inversesqrt\_dvec4](#inversesqrt_dvec4)
    + [inversesqrt\_f32](#inversesqrt_f32)
    + [inversesqrt\_f64](#inversesqrt_f64)
    + [inversesqrt\_vec2](#inversesqrt_vec2)
    + [inversesqrt\_vec3](#inversesqrt_vec3)
    + [inversesqrt\_vec4](#inversesqrt_vec4)
    + [length\_dquat](#length_dquat)
    + [length\_dvec2](#length_dvec2)
    + [length\_dvec3](#length_dvec3)
    + [length\_dvec4](#length_dvec4)
    + [length\_f32](#length_f32)
    + [length\_f64](#length_f64)
    + [length\_quat](#length_quat)
    + [length\_vec2](#length_vec2)
    + [length\_vec3](#length_vec3)
    + [length\_vec4](#length_vec4)
    + [lerp\_dvec2](#lerp_dvec2)
    + [lerp\_dvec3](#lerp_dvec3)
    + [lerp\_dvec4](#lerp_dvec4)
    + [lerp\_f32](#lerp_f32)
    + [lerp\_f64](#lerp_f64)
    + [lerp\_vec2](#lerp_vec2)
    + [lerp\_vec3](#lerp_vec3)
    + [lerp\_vec4](#lerp_vec4)
    + [lessThanEqual\_dvec2](#lessThanEqual_dvec2)
    + [lessThanEqual\_dvec3](#lessThanEqual_dvec3)
    + [lessThanEqual\_dvec4](#lessThanEqual_dvec4)
    + [lessThanEqual\_f32](#lessThanEqual_f32)
    + [lessThanEqual\_f64](#lessThanEqual_f64)
    + [lessThanEqual\_i32](#lessThanEqual_i32)
    + [lessThanEqual\_ivec2](#lessThanEqual_ivec2)
    + [lessThanEqual\_ivec3](#lessThanEqual_ivec3)
    + [lessThanEqual\_ivec4](#lessThanEqual_ivec4)
    + [lessThanEqual\_u32](#lessThanEqual_u32)
    + [lessThanEqual\_uvec2](#lessThanEqual_uvec2)
    + [lessThanEqual\_uvec3](#lessThanEqual_uvec3)
    + [lessThanEqual\_uvec4](#lessThanEqual_uvec4)
    + [lessThanEqual\_vec2](#lessThanEqual_vec2)
    + [lessThanEqual\_vec3](#lessThanEqual_vec3)
    + [lessThanEqual\_vec4](#lessThanEqual_vec4)
    + [lessThan\_dvec2](#lessThan_dvec2)
    + [lessThan\_dvec3](#lessThan_dvec3)
    + [lessThan\_dvec4](#lessThan_dvec4)
    + [lessThan\_f32](#lessThan_f32)
    + [lessThan\_f64](#lessThan_f64)
    + [lessThan\_i32](#lessThan_i32)
    + [lessThan\_ivec2](#lessThan_ivec2)
    + [lessThan\_ivec3](#lessThan_ivec3)
    + [lessThan\_ivec4](#lessThan_ivec4)
    + [lessThan\_u32](#lessThan_u32)
    + [lessThan\_uvec2](#lessThan_uvec2)
    + [lessThan\_uvec3](#lessThan_uvec3)
    + [lessThan\_uvec4](#lessThan_uvec4)
    + [lessThan\_vec2](#lessThan_vec2)
    + [lessThan\_vec3](#lessThan_vec3)
    + [lessThan\_vec4](#lessThan_vec4)
    + [log\_dvec2](#log_dvec2)
    + [log\_dvec3](#log_dvec3)
    + [log\_dvec4](#log_dvec4)
    + [log\_f32](#log_f32)
    + [log\_f64](#log_f64)
    + [log\_vec2](#log_vec2)
    + [log\_vec3](#log_vec3)
    + [log\_vec4](#log_vec4)
    + [mat4FromQuat](#mat4FromQuat)
    + [mat4LookAt](#mat4LookAt)
    + [mat4Orientation](#mat4Orientation)
    + [mat4Ortho3d](#mat4Ortho3d)
    + [mat4Perspective](#mat4Perspective)
    + [mat4PerspectiveInfinite](#mat4PerspectiveInfinite)
    + [mat4Rotate](#mat4Rotate)
    + [mat4Scale](#mat4Scale)
    + [mat4Translate](#mat4Translate)
    + [matrix\_minor](#matrix_minor)
    + [max\_dvec2](#max_dvec2)
    + [max\_dvec3](#max_dvec3)
    + [max\_dvec4](#max_dvec4)
    + [max\_f32](#max_f32)
    + [max\_f64](#max_f64)
    + [max\_i32](#max_i32)
    + [max\_ivec2](#max_ivec2)
    + [max\_ivec3](#max_ivec3)
    + [max\_ivec4](#max_ivec4)
    + [max\_u32](#max_u32)
    + [max\_uvec2](#max_uvec2)
    + [max\_uvec3](#max_uvec3)
    + [max\_uvec4](#max_uvec4)
    + [max\_vec2](#max_vec2)
    + [max\_vec3](#max_vec3)
    + [max\_vec4](#max_vec4)
    + [min\_dvec2](#min_dvec2)
    + [min\_dvec3](#min_dvec3)
    + [min\_dvec4](#min_dvec4)
    + [min\_f32](#min_f32)
    + [min\_f64](#min_f64)
    + [min\_i32](#min_i32)
    + [min\_ivec2](#min_ivec2)
    + [min\_ivec3](#min_ivec3)
    + [min\_ivec4](#min_ivec4)
    + [min\_u32](#min_u32)
    + [min\_uvec2](#min_uvec2)
    + [min\_uvec3](#min_uvec3)
    + [min\_uvec4](#min_uvec4)
    + [min\_vec2](#min_vec2)
    + [min\_vec3](#min_vec3)
    + [min\_vec4](#min_vec4)
    + [mix\_dvec2](#mix_dvec2)
    + [mix\_dvec3](#mix_dvec3)
    + [mix\_dvec4](#mix_dvec4)
    + [mix\_f32](#mix_f32)
    + [mix\_f64](#mix_f64)
    + [mix\_vec2](#mix_vec2)
    + [mix\_vec3](#mix_vec3)
    + [mix\_vec4](#mix_vec4)
    + [mod\_dvec2](#mod_dvec2)
    + [mod\_dvec3](#mod_dvec3)
    + [mod\_dvec4](#mod_dvec4)
    + [mod\_f32](#mod_f32)
    + [mod\_f64](#mod_f64)
    + [mod\_vec2](#mod_vec2)
    + [mod\_vec3](#mod_vec3)
    + [mod\_vec4](#mod_vec4)
    + [normalize\_dquat](#normalize_dquat)
    + [normalize\_dvec2](#normalize_dvec2)
    + [normalize\_dvec3](#normalize_dvec3)
    + [normalize\_dvec4](#normalize_dvec4)
    + [normalize\_f32](#normalize_f32)
    + [normalize\_f64](#normalize_f64)
    + [normalize\_quat](#normalize_quat)
    + [normalize\_vec2](#normalize_vec2)
    + [normalize\_vec3](#normalize_vec3)
    + [normalize\_vec4](#normalize_vec4)
    + [notEqual\_dvec2](#notEqual_dvec2)
    + [notEqual\_dvec3](#notEqual_dvec3)
    + [notEqual\_dvec4](#notEqual_dvec4)
    + [notEqual\_f32](#notEqual_f32)
    + [notEqual\_f64](#notEqual_f64)
    + [notEqual\_i32](#notEqual_i32)
    + [notEqual\_ivec2](#notEqual_ivec2)
    + [notEqual\_ivec3](#notEqual_ivec3)
    + [notEqual\_ivec4](#notEqual_ivec4)
    + [notEqual\_u32](#notEqual_u32)
    + [notEqual\_uvec2](#notEqual_uvec2)
    + [notEqual\_uvec3](#notEqual_uvec3)
    + [notEqual\_uvec4](#notEqual_uvec4)
    + [notEqual\_vec2](#notEqual_vec2)
    + [notEqual\_vec3](#notEqual_vec3)
    + [notEqual\_vec4](#notEqual_vec4)
    + [not\_bool](#not_bool)
    + [not\_bvec2](#not_bvec2)
    + [not\_bvec3](#not_bvec3)
    + [not\_bvec4](#not_bvec4)
    + [pow\_dvec2](#pow_dvec2)
    + [pow\_dvec3](#pow_dvec3)
    + [pow\_dvec4](#pow_dvec4)
    + [pow\_f32](#pow_f32)
    + [pow\_f64](#pow_f64)
    + [pow\_vec2](#pow_vec2)
    + [pow\_vec3](#pow_vec3)
    + [pow\_vec4](#pow_vec4)
    + [quatAxisAngle](#quatAxisAngle)
    + [quatFromMat3](#quatFromMat3)
    + [quatFromMat4](#quatFromMat4)
    + [quatMulVec3](#quatMulVec3)
    + [quatNlerp](#quatNlerp)
    + [quatSlerp](#quatSlerp)
    + [radians\_dvec2](#radians_dvec2)
    + [radians\_dvec3](#radians_dvec3)
    + [radians\_dvec4](#radians_dvec4)
    + [radians\_f32](#radians_f32)
    + [radians\_f64](#radians_f64)
    + [radians\_vec2](#radians_vec2)
    + [radians\_vec3](#radians_vec3)
    + [radians\_vec4](#radians_vec4)
    + [reflect\_dvec2](#reflect_dvec2)
    + [reflect\_dvec3](#reflect_dvec3)
    + [reflect\_dvec4](#reflect_dvec4)
    + [reflect\_f32](#reflect_f32)
    + [reflect\_f64](#reflect_f64)
    + [reflect\_vec2](#reflect_vec2)
    + [reflect\_vec3](#reflect_vec3)
    + [reflect\_vec4](#reflect_vec4)
    + [refract\_dvec2](#refract_dvec2)
    + [refract\_dvec3](#refract_dvec3)
    + [refract\_dvec4](#refract_dvec4)
    + [refract\_f32](#refract_f32)
    + [refract\_f64](#refract_f64)
    + [refract\_vec2](#refract_vec2)
    + [refract\_vec3](#refract_vec3)
    + [refract\_vec4](#refract_vec4)
    + [round\_dvec2](#round_dvec2)
    + [round\_dvec3](#round_dvec3)
    + [round\_dvec4](#round_dvec4)
    + [round\_f32](#round_f32)
    + [round\_f64](#round_f64)
    + [round\_vec2](#round_vec2)
    + [round\_vec3](#round_vec3)
    + [round\_vec4](#round_vec4)
    + [saturate\_dvec2](#saturate_dvec2)
    + [saturate\_dvec3](#saturate_dvec3)
    + [saturate\_dvec4](#saturate_dvec4)
    + [saturate\_f32](#saturate_f32)
    + [saturate\_f64](#saturate_f64)
    + [saturate\_i32](#saturate_i32)
    + [saturate\_ivec2](#saturate_ivec2)
    + [saturate\_ivec3](#saturate_ivec3)
    + [saturate\_ivec4](#saturate_ivec4)
    + [saturate\_u32](#saturate_u32)
    + [saturate\_uvec2](#saturate_uvec2)
    + [saturate\_uvec3](#saturate_uvec3)
    + [saturate\_uvec4](#saturate_uvec4)
    + [saturate\_vec2](#saturate_vec2)
    + [saturate\_vec3](#saturate_vec3)
    + [saturate\_vec4](#saturate_vec4)
    + [scalarTripleProduct\_dvec3](#scalarTripleProduct_dvec3)
    + [scalarTripleProduct\_ivec3](#scalarTripleProduct_ivec3)
    + [scalarTripleProduct\_vec3](#scalarTripleProduct_vec3)
    + [sign\_dvec2](#sign_dvec2)
    + [sign\_dvec3](#sign_dvec3)
    + [sign\_dvec4](#sign_dvec4)
    + [sign\_f32](#sign_f32)
    + [sign\_f64](#sign_f64)
    + [sign\_i32](#sign_i32)
    + [sign\_ivec2](#sign_ivec2)
    + [sign\_ivec3](#sign_ivec3)
    + [sign\_ivec4](#sign_ivec4)
    + [sign\_u32](#sign_u32)
    + [sign\_uvec2](#sign_uvec2)
    + [sign\_uvec3](#sign_uvec3)
    + [sign\_uvec4](#sign_uvec4)
    + [sign\_vec2](#sign_vec2)
    + [sign\_vec3](#sign_vec3)
    + [sign\_vec4](#sign_vec4)
    + [sin\_dvec2](#sin_dvec2)
    + [sin\_dvec3](#sin_dvec3)
    + [sin\_dvec4](#sin_dvec4)
    + [sin\_f32](#sin_f32)
    + [sin\_f64](#sin_f64)
    + [sin\_vec2](#sin_vec2)
    + [sin\_vec3](#sin_vec3)
    + [sin\_vec4](#sin_vec4)
    + [sinh\_dvec2](#sinh_dvec2)
    + [sinh\_dvec3](#sinh_dvec3)
    + [sinh\_dvec4](#sinh_dvec4)
    + [sinh\_f32](#sinh_f32)
    + [sinh\_f64](#sinh_f64)
    + [sinh\_vec2](#sinh_vec2)
    + [sinh\_vec3](#sinh_vec3)
    + [sinh\_vec4](#sinh_vec4)
    + [smoothstep\_dvec2](#smoothstep_dvec2)
    + [smoothstep\_dvec3](#smoothstep_dvec3)
    + [smoothstep\_dvec4](#smoothstep_dvec4)
    + [smoothstep\_f32](#smoothstep_f32)
    + [smoothstep\_f64](#smoothstep_f64)
    + [smoothstep\_vec2](#smoothstep_vec2)
    + [smoothstep\_vec3](#smoothstep_vec3)
    + [smoothstep\_vec4](#smoothstep_vec4)
    + [sqrt\_dvec2](#sqrt_dvec2)
    + [sqrt\_dvec3](#sqrt_dvec3)
    + [sqrt\_dvec4](#sqrt_dvec4)
    + [sqrt\_f32](#sqrt_f32)
    + [sqrt\_f64](#sqrt_f64)
    + [sqrt\_vec2](#sqrt_vec2)
    + [sqrt\_vec3](#sqrt_vec3)
    + [sqrt\_vec4](#sqrt_vec4)
    + [step\_dvec2](#step_dvec2)
    + [step\_dvec3](#step_dvec3)
    + [step\_dvec4](#step_dvec4)
    + [step\_f32](#step_f32)
    + [step\_f64](#step_f64)
    + [step\_vec2](#step_vec2)
    + [step\_vec3](#step_vec3)
    + [step\_vec4](#step_vec4)
    + [tan\_dvec2](#tan_dvec2)
    + [tan\_dvec3](#tan_dvec3)
    + [tan\_dvec4](#tan_dvec4)
    + [tan\_f32](#tan_f32)
    + [tan\_f64](#tan_f64)
    + [tan\_vec2](#tan_vec2)
    + [tan\_vec3](#tan_vec3)
    + [tan\_vec4](#tan_vec4)
    + [tanh\_dvec2](#tanh_dvec2)
    + [tanh\_dvec3](#tanh_dvec3)
    + [tanh\_dvec4](#tanh_dvec4)
    + [tanh\_f32](#tanh_f32)
    + [tanh\_f64](#tanh_f64)
    + [tanh\_vec2](#tanh_vec2)
    + [tanh\_vec3](#tanh_vec3)
    + [tanh\_vec4](#tanh_vec4)
    + [trace](#trace)
    + [transpose](#transpose)
    + [trunc\_dvec2](#trunc_dvec2)
    + [trunc\_dvec3](#trunc_dvec3)
    + [trunc\_dvec4](#trunc_dvec4)
    + [trunc\_f32](#trunc_f32)
    + [trunc\_f64](#trunc_f64)
    + [trunc\_vec2](#trunc_vec2)
    + [trunc\_vec3](#trunc_vec3)
    + [trunc\_vec4](#trunc_vec4)
    + [vectorTripleProduct\_dvec3](#vectorTripleProduct_dvec3)
    + [vectorTripleProduct\_ivec3](#vectorTripleProduct_ivec3)
    + [vectorTripleProduct\_vec3](#vectorTripleProduct_vec3)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [abs](#abs)
    + [acos](#acos)
    + [acosh](#acosh)
    + [adjugate](#adjugate)
    + [all](#all)
    + [any](#any)
    + [asin](#asin)
    + [asinh](#asinh)
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
    + [faceForward](#faceForward)
    + [floor](#floor)
    + [fract](#fract)
    + [greaterThan](#greaterThan)
    + [greaterThanEqual](#greaterThanEqual)
    + [inverse](#inverse)
    + [inverse\_transpose](#inverse_transpose)
    + [inversesqrt](#inversesqrt)
    + [length](#length)
    + [lerp](#lerp)
    + [lessThan](#lessThan)
    + [lessThanEqual](#lessThanEqual)
    + [log](#log)
    + [max](#max)
    + [min](#min)
    + [mix](#mix)
    + [mod](#mod)
    + [nlerp](#nlerp)
    + [normalize](#normalize)
    + [not](#not)
    + [notEqual](#notEqual)
    + [pow](#pow)
    + [radians](#radians)
    + [reflect](#reflect)
    + [refract](#refract)
    + [round](#round)
    + [rsqrt](#rsqrt)
    + [saturate](#saturate)
    + [scalarTripleProduct](#scalarTripleProduct)
    + [sign](#sign)
    + [sin](#sin)
    + [sinh](#sinh)
    + [slerp](#slerp)
    + [smoothstep](#smoothstep)
    + [sqrt](#sqrt)
    + [step](#step)
    + [tan](#tan)
    + [tanh](#tanh)
    + [trunc](#trunc)
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