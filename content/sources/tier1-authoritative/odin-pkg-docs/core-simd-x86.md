package simd/x86 - pkg.odin-lang.org 






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



Current Package: *[simd\_x86](/core/simd/x86)*

  

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
3. [x86](/core/simd/x86)

# package core:simd/x86 [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

`SIMD` intrinsics specific to the Intel `x86` and `AMD64` architectures.

## Index

Types (21)

* [\_MM\_CMPINT\_ENUM](#_MM_CMPINT_ENUM)
* [\_MM\_MANTISSA\_NORM\_ENUM](#_MM_MANTISSA_NORM_ENUM)
* [\_MM\_MANTISSA\_SIGN\_ENUM](#_MM_MANTISSA_SIGN_ENUM)
* [\_MM\_PERM\_ENUM](#_MM_PERM_ENUM)
* [\_\_m128](#__m128)
* [\_\_m128bh](#__m128bh)
* [\_\_m128d](#__m128d)
* [\_\_m128i](#__m128i)
* [\_\_m256](#__m256)
* [\_\_m256bh](#__m256bh)
* [\_\_m256d](#__m256d)
* [\_\_m256i](#__m256i)
* [\_\_m512](#__m512)
* [\_\_m512bh](#__m512bh)
* [\_\_m512d](#__m512d)
* [\_\_m512i](#__m512i)
* [\_\_mmask16](#__mmask16)
* [\_\_mmask32](#__mmask32)
* [\_\_mmask64](#__mmask64)
* [\_\_mmask8](#__mmask8)
* [bf16](#bf16)

Constants (89)

* [\_CMP\_EQ\_OQ](#_CMP_EQ_OQ)
* [\_CMP\_EQ\_OS](#_CMP_EQ_OS)
* [\_CMP\_EQ\_UQ](#_CMP_EQ_UQ)
* [\_CMP\_EQ\_US](#_CMP_EQ_US)
* [\_CMP\_FALSE\_OQ](#_CMP_FALSE_OQ)
* [\_CMP\_FALSE\_OS](#_CMP_FALSE_OS)
* [\_CMP\_GE\_OQ](#_CMP_GE_OQ)
* [\_CMP\_GE\_OS](#_CMP_GE_OS)
* [\_CMP\_GT\_OQ](#_CMP_GT_OQ)
* [\_CMP\_GT\_OS](#_CMP_GT_OS)
* [\_CMP\_LE\_OQ](#_CMP_LE_OQ)
* [\_CMP\_LE\_OS](#_CMP_LE_OS)
* [\_CMP\_LT\_OQ](#_CMP_LT_OQ)
* [\_CMP\_LT\_OS](#_CMP_LT_OS)
* [\_CMP\_NEQ\_OQ](#_CMP_NEQ_OQ)
* [\_CMP\_NEQ\_OS](#_CMP_NEQ_OS)
* [\_CMP\_NEQ\_UQ](#_CMP_NEQ_UQ)
* [\_CMP\_NEQ\_US](#_CMP_NEQ_US)
* [\_CMP\_NGE\_UQ](#_CMP_NGE_UQ)
* [\_CMP\_NGE\_US](#_CMP_NGE_US)
* [\_CMP\_NGT\_UQ](#_CMP_NGT_UQ)
* [\_CMP\_NGT\_US](#_CMP_NGT_US)
* [\_CMP\_NLE\_UQ](#_CMP_NLE_UQ)
* [\_CMP\_NLE\_US](#_CMP_NLE_US)
* [\_CMP\_NLT\_UQ](#_CMP_NLT_UQ)
* [\_CMP\_NLT\_US](#_CMP_NLT_US)
* [\_CMP\_ORD\_Q](#_CMP_ORD_Q)
* [\_CMP\_ORD\_S](#_CMP_ORD_S)
* [\_CMP\_TRUE\_UQ](#_CMP_TRUE_UQ)
* [\_CMP\_TRUE\_US](#_CMP_TRUE_US)
* [\_CMP\_UNORD\_Q](#_CMP_UNORD_Q)
* [\_CMP\_UNORD\_S](#_CMP_UNORD_S)
* [\_MM\_EXCEPT\_DENORM](#_MM_EXCEPT_DENORM)
* [\_MM\_EXCEPT\_DIV\_ZERO](#_MM_EXCEPT_DIV_ZERO)
* [\_MM\_EXCEPT\_INEXACT](#_MM_EXCEPT_INEXACT)
* [\_MM\_EXCEPT\_INVALID](#_MM_EXCEPT_INVALID)
* [\_MM\_EXCEPT\_MASK](#_MM_EXCEPT_MASK)
* [\_MM\_EXCEPT\_OVERFLOW](#_MM_EXCEPT_OVERFLOW)
* [\_MM\_EXCEPT\_UNDERFLOW](#_MM_EXCEPT_UNDERFLOW)
* [\_MM\_FLUSH\_ZERO\_MASK](#_MM_FLUSH_ZERO_MASK)
* [\_MM\_FLUSH\_ZERO\_OFF](#_MM_FLUSH_ZERO_OFF)
* [\_MM\_FLUSH\_ZERO\_ON](#_MM_FLUSH_ZERO_ON)
* [\_MM\_FROUND\_CEIL](#_MM_FROUND_CEIL)
* [\_MM\_FROUND\_CUR\_DIRECTION](#_MM_FROUND_CUR_DIRECTION)
* [\_MM\_FROUND\_FLOOR](#_MM_FROUND_FLOOR)
* [\_MM\_FROUND\_NEARBYINT](#_MM_FROUND_NEARBYINT)
* [\_MM\_FROUND\_NINT](#_MM_FROUND_NINT)
* [\_MM\_FROUND\_NO\_EXC](#_MM_FROUND_NO_EXC)
* [\_MM\_FROUND\_RAISE\_EXC](#_MM_FROUND_RAISE_EXC)
* [\_MM\_FROUND\_RINT](#_MM_FROUND_RINT)
* [\_MM\_FROUND\_TO\_NEAREST\_INT](#_MM_FROUND_TO_NEAREST_INT)
* [\_MM\_FROUND\_TO\_NEG\_INF](#_MM_FROUND_TO_NEG_INF)
* [\_MM\_FROUND\_TO\_POS\_INF](#_MM_FROUND_TO_POS_INF)
* [\_MM\_FROUND\_TO\_ZERO](#_MM_FROUND_TO_ZERO)
* [\_MM\_FROUND\_TRUNC](#_MM_FROUND_TRUNC)
* [\_MM\_HINT\_ET0](#_MM_HINT_ET0)
* [\_MM\_HINT\_ET1](#_MM_HINT_ET1)
* [\_MM\_HINT\_NTA](#_MM_HINT_NTA)
* [\_MM\_HINT\_T0](#_MM_HINT_T0)
* [\_MM\_HINT\_T1](#_MM_HINT_T1)
* [\_MM\_HINT\_T2](#_MM_HINT_T2)
* [\_MM\_MASK\_DENORM](#_MM_MASK_DENORM)
* [\_MM\_MASK\_DIV\_ZERO](#_MM_MASK_DIV_ZERO)
* [\_MM\_MASK\_INEXACT](#_MM_MASK_INEXACT)
* [\_MM\_MASK\_INVALID](#_MM_MASK_INVALID)
* [\_MM\_MASK\_MASK](#_MM_MASK_MASK)
* [\_MM\_MASK\_OVERFLOW](#_MM_MASK_OVERFLOW)
* [\_MM\_MASK\_UNDERFLOW](#_MM_MASK_UNDERFLOW)
* [\_MM\_ROUND\_DOWN](#_MM_ROUND_DOWN)
* [\_MM\_ROUND\_MASK](#_MM_ROUND_MASK)
* [\_MM\_ROUND\_NEAREST](#_MM_ROUND_NEAREST)
* [\_MM\_ROUND\_TOWARD\_ZERO](#_MM_ROUND_TOWARD_ZERO)
* [\_MM\_ROUND\_UP](#_MM_ROUND_UP)
* [\_SIDD\_BIT\_MASK](#_SIDD_BIT_MASK)
* [\_SIDD\_CMP\_EQUAL\_ANY](#_SIDD_CMP_EQUAL_ANY)
* [\_SIDD\_CMP\_EQUAL\_EACH](#_SIDD_CMP_EQUAL_EACH)
* [\_SIDD\_CMP\_EQUAL\_ORDERED](#_SIDD_CMP_EQUAL_ORDERED)
* [\_SIDD\_CMP\_RANGES](#_SIDD_CMP_RANGES)
* [\_SIDD\_LEAST\_SIGNIFICANT](#_SIDD_LEAST_SIGNIFICANT)
* [\_SIDD\_MASKED\_NEGATIVE\_POLARITY](#_SIDD_MASKED_NEGATIVE_POLARITY)
* [\_SIDD\_MASKED\_POSITIVE\_POLARITY](#_SIDD_MASKED_POSITIVE_POLARITY)
* [\_SIDD\_MOST\_SIGNIFICANT](#_SIDD_MOST_SIGNIFICANT)
* [\_SIDD\_NEGATIVE\_POLARITY](#_SIDD_NEGATIVE_POLARITY)
* [\_SIDD\_POSITIVE\_POLARITY](#_SIDD_POSITIVE_POLARITY)
* [\_SIDD\_SBYTE\_OPS](#_SIDD_SBYTE_OPS)
* [\_SIDD\_SWORD\_OPS](#_SIDD_SWORD_OPS)
* [\_SIDD\_UBYTE\_OPS](#_SIDD_UBYTE_OPS)
* [\_SIDD\_UNIT\_MASK](#_SIDD_UNIT_MASK)
* [\_SIDD\_UWORD\_OPS](#_SIDD_UWORD_OPS)

Variables (0)

This section is empty.

Procedures (674)

* [\_MM\_GET\_EXCEPTION\_MASK](#_MM_GET_EXCEPTION_MASK)
* [\_MM\_GET\_EXCEPTION\_STATE](#_MM_GET_EXCEPTION_STATE)
* [\_MM\_GET\_FLUSH\_ZERO\_MODE](#_MM_GET_FLUSH_ZERO_MODE)
* [\_MM\_GET\_ROUNDING\_MODE](#_MM_GET_ROUNDING_MODE)
* [\_MM\_SET\_EXCEPTION\_MASK](#_MM_SET_EXCEPTION_MASK)
* [\_MM\_SET\_EXCEPTION\_STATE](#_MM_SET_EXCEPTION_STATE)
* [\_MM\_SET\_FLUSH\_ZERO\_MODE](#_MM_SET_FLUSH_ZERO_MODE)
* [\_MM\_SET\_ROUNDING\_MODE](#_MM_SET_ROUNDING_MODE)
* [\_MM\_SHUFFLE](#_MM_SHUFFLE)
* [\_MM\_TRANSPOSE4\_PS](#_MM_TRANSPOSE4_PS)
* [\_\_rdtscp](#__rdtscp)
* [\_addcarry\_u32](#_addcarry_u32)
* [\_addcarry\_u64](#_addcarry_u64)
* [\_addcarryx\_u32](#_addcarryx_u32)
* [\_addcarryx\_u64](#_addcarryx_u64)
* [\_andn\_u32](#_andn_u32)
* [\_andn\_u64](#_andn_u64)
* [\_bextr2\_u32](#_bextr2_u32)
* [\_bextr2\_u64](#_bextr2_u64)
* [\_bextr\_u32](#_bextr_u32)
* [\_bextr\_u64](#_bextr_u64)
* [\_blsi\_u32](#_blsi_u32)
* [\_blsi\_u64](#_blsi_u64)
* [\_blsmsk\_u32](#_blsmsk_u32)
* [\_blsmsk\_u64](#_blsmsk_u64)
* [\_blsr\_u32](#_blsr_u32)
* [\_blsr\_u64](#_blsr_u64)
* [\_bzhi\_u32](#_bzhi_u32)
* [\_bzhi\_u64](#_bzhi_u64)
* [\_fxrstor](#_fxrstor)
* [\_fxrstor64](#_fxrstor64)
* [\_fxsave](#_fxsave)
* [\_fxsave64](#_fxsave64)
* [\_lzcnt\_u32](#_lzcnt_u32)
* [\_lzcnt\_u64](#_lzcnt_u64)
* [\_mm256\_add\_pd](#_mm256_add_pd)
* [\_mm256\_add\_ps](#_mm256_add_ps)
* [\_mm256\_addsub\_pd](#_mm256_addsub_pd)
* [\_mm256\_addsub\_ps](#_mm256_addsub_ps)
* [\_mm256\_and\_pd](#_mm256_and_pd)
* [\_mm256\_and\_ps](#_mm256_and_ps)
* [\_mm256\_andnot\_pd](#_mm256_andnot_pd)
* [\_mm256\_andnot\_ps](#_mm256_andnot_ps)
* [\_mm256\_blend\_pd](#_mm256_blend_pd)
* [\_mm256\_blend\_ps](#_mm256_blend_ps)
* [\_mm256\_blendv\_pd](#_mm256_blendv_pd)
* [\_mm256\_blendv\_ps](#_mm256_blendv_ps)
* [\_mm256\_broadcast\_pd](#_mm256_broadcast_pd)
* [\_mm256\_broadcast\_ps](#_mm256_broadcast_ps)
* [\_mm256\_broadcast\_sd](#_mm256_broadcast_sd)
* [\_mm256\_broadcast\_ss](#_mm256_broadcast_ss)
* [\_mm256\_castpd128\_pd256](#_mm256_castpd128_pd256)
* [\_mm256\_castpd256\_pd128](#_mm256_castpd256_pd128)
* [\_mm256\_castpd\_ps](#_mm256_castpd_ps)
* [\_mm256\_castpd\_si256](#_mm256_castpd_si256)
* [\_mm256\_castps128\_ps256](#_mm256_castps128_ps256)
* [\_mm256\_castps256\_ps128](#_mm256_castps256_ps128)
* [\_mm256\_castps\_pd](#_mm256_castps_pd)
* [\_mm256\_castps\_si256](#_mm256_castps_si256)
* [\_mm256\_castsi128\_si256](#_mm256_castsi128_si256)
* [\_mm256\_castsi256\_pd](#_mm256_castsi256_pd)
* [\_mm256\_castsi256\_ps](#_mm256_castsi256_ps)
* [\_mm256\_castsi256\_si128](#_mm256_castsi256_si128)
* [\_mm256\_ceil\_pd](#_mm256_ceil_pd)
* [\_mm256\_ceil\_ps](#_mm256_ceil_ps)
* [\_mm256\_cmp\_pd](#_mm256_cmp_pd)
* [\_mm256\_cmp\_ps](#_mm256_cmp_ps)
* [\_mm256\_cvtepi32\_pd](#_mm256_cvtepi32_pd)
* [\_mm256\_cvtepi32\_ps](#_mm256_cvtepi32_ps)
* [\_mm256\_cvtpd\_epi32](#_mm256_cvtpd_epi32)
* [\_mm256\_cvtpd\_ps](#_mm256_cvtpd_ps)
* [\_mm256\_cvtps\_epi32](#_mm256_cvtps_epi32)
* [\_mm256\_cvtps\_pd](#_mm256_cvtps_pd)
* [\_mm256\_cvtsd\_f64](#_mm256_cvtsd_f64)
* [\_mm256\_cvtsi256\_si32](#_mm256_cvtsi256_si32)
* [\_mm256\_cvtss\_f32](#_mm256_cvtss_f32)
* [\_mm256\_cvttpd\_epi32](#_mm256_cvttpd_epi32)
* [\_mm256\_cvttps\_epi32](#_mm256_cvttps_epi32)
* [\_mm256\_div\_pd](#_mm256_div_pd)
* [\_mm256\_div\_ps](#_mm256_div_ps)
* [\_mm256\_dp\_ps](#_mm256_dp_ps)
* [\_mm256\_extract\_epi32](#_mm256_extract_epi32)
* [\_mm256\_extract\_epi64](#_mm256_extract_epi64)
* [\_mm256\_extractf128\_pd](#_mm256_extractf128_pd)
* [\_mm256\_extractf128\_ps](#_mm256_extractf128_ps)
* [\_mm256\_extractf128\_si256](#_mm256_extractf128_si256)
* [\_mm256\_floor\_pd](#_mm256_floor_pd)
* [\_mm256\_floor\_ps](#_mm256_floor_ps)
* [\_mm256\_hadd\_pd](#_mm256_hadd_pd)
* [\_mm256\_hadd\_ps](#_mm256_hadd_ps)
* [\_mm256\_hsub\_pd](#_mm256_hsub_pd)
* [\_mm256\_hsub\_ps](#_mm256_hsub_ps)
* [\_mm256\_insert\_epi16](#_mm256_insert_epi16)
* [\_mm256\_insert\_epi32](#_mm256_insert_epi32)
* [\_mm256\_insert\_epi64](#_mm256_insert_epi64)
* [\_mm256\_insert\_epi8](#_mm256_insert_epi8)
* [\_mm256\_insertf128\_pd](#_mm256_insertf128_pd)
* [\_mm256\_insertf128\_ps](#_mm256_insertf128_ps)
* [\_mm256\_insertf128\_si256](#_mm256_insertf128_si256)
* [\_mm256\_lddqu\_si256](#_mm256_lddqu_si256)
* [\_mm256\_load\_pd](#_mm256_load_pd)
* [\_mm256\_load\_ps](#_mm256_load_ps)
* [\_mm256\_load\_si256](#_mm256_load_si256)
* [\_mm256\_loadu2\_m128](#_mm256_loadu2_m128)
* [\_mm256\_loadu2\_m128d](#_mm256_loadu2_m128d)
* [\_mm256\_loadu2\_m128i](#_mm256_loadu2_m128i)
* [\_mm256\_loadu\_pd](#_mm256_loadu_pd)
* [\_mm256\_loadu\_ps](#_mm256_loadu_ps)
* [\_mm256\_loadu\_si256](#_mm256_loadu_si256)
* [\_mm256\_maskload\_pd](#_mm256_maskload_pd)
* [\_mm256\_maskload\_ps](#_mm256_maskload_ps)
* [\_mm256\_maskstore\_pd](#_mm256_maskstore_pd)
* [\_mm256\_maskstore\_ps](#_mm256_maskstore_ps)
* [\_mm256\_max\_pd](#_mm256_max_pd)
* [\_mm256\_max\_ps](#_mm256_max_ps)
* [\_mm256\_min\_pd](#_mm256_min_pd)
* [\_mm256\_min\_ps](#_mm256_min_ps)
* [\_mm256\_movedup\_pd](#_mm256_movedup_pd)
* [\_mm256\_movehdup\_ps](#_mm256_movehdup_ps)
* [\_mm256\_moveldup\_ps](#_mm256_moveldup_ps)
* [\_mm256\_movemask\_pd](#_mm256_movemask_pd)
* [\_mm256\_movemask\_ps](#_mm256_movemask_ps)
* [\_mm256\_mul\_pd](#_mm256_mul_pd)
* [\_mm256\_mul\_ps](#_mm256_mul_ps)
* [\_mm256\_or\_pd](#_mm256_or_pd)
* [\_mm256\_or\_ps](#_mm256_or_ps)
* [\_mm256\_permute2f128\_pd](#_mm256_permute2f128_pd)
* [\_mm256\_permute2f128\_ps](#_mm256_permute2f128_ps)
* [\_mm256\_permute2f128\_si256](#_mm256_permute2f128_si256)
* [\_mm256\_permute\_pd](#_mm256_permute_pd)
* [\_mm256\_permute\_ps](#_mm256_permute_ps)
* [\_mm256\_permutevar\_pd](#_mm256_permutevar_pd)
* [\_mm256\_permutevar\_ps](#_mm256_permutevar_ps)
* [\_mm256\_rcp\_ps](#_mm256_rcp_ps)
* [\_mm256\_round\_pd](#_mm256_round_pd)
* [\_mm256\_round\_ps](#_mm256_round_ps)
* [\_mm256\_rsqrt\_ps](#_mm256_rsqrt_ps)
* [\_mm256\_set1\_epi16](#_mm256_set1_epi16)
* [\_mm256\_set1\_epi32](#_mm256_set1_epi32)
* [\_mm256\_set1\_epi64x](#_mm256_set1_epi64x)
* [\_mm256\_set1\_epi8](#_mm256_set1_epi8)
* [\_mm256\_set1\_pd](#_mm256_set1_pd)
* [\_mm256\_set1\_ps](#_mm256_set1_ps)
* [\_mm256\_set\_epi16](#_mm256_set_epi16)
* [\_mm256\_set\_epi32](#_mm256_set_epi32)
* [\_mm256\_set\_epi64x](#_mm256_set_epi64x)
* [\_mm256\_set\_epi8](#_mm256_set_epi8)
* [\_mm256\_set\_m128](#_mm256_set_m128)
* [\_mm256\_set\_m128d](#_mm256_set_m128d)
* [\_mm256\_set\_m128i](#_mm256_set_m128i)
* [\_mm256\_set\_pd](#_mm256_set_pd)
* [\_mm256\_set\_ps](#_mm256_set_ps)
* [\_mm256\_setr\_epi16](#_mm256_setr_epi16)
* [\_mm256\_setr\_epi32](#_mm256_setr_epi32)
* [\_mm256\_setr\_epi64x](#_mm256_setr_epi64x)
* [\_mm256\_setr\_epi8](#_mm256_setr_epi8)
* [\_mm256\_setr\_m128](#_mm256_setr_m128)
* [\_mm256\_setr\_m128d](#_mm256_setr_m128d)
* [\_mm256\_setr\_m128i](#_mm256_setr_m128i)
* [\_mm256\_setr\_pd](#_mm256_setr_pd)
* [\_mm256\_setr\_ps](#_mm256_setr_ps)
* [\_mm256\_setzero\_pd](#_mm256_setzero_pd)
* [\_mm256\_setzero\_ps](#_mm256_setzero_ps)
* [\_mm256\_setzero\_si256](#_mm256_setzero_si256)
* [\_mm256\_shuffle\_pd](#_mm256_shuffle_pd)
* [\_mm256\_shuffle\_ps](#_mm256_shuffle_ps)
* [\_mm256\_sqrt\_pd](#_mm256_sqrt_pd)
* [\_mm256\_sqrt\_ps](#_mm256_sqrt_ps)
* [\_mm256\_store\_pd](#_mm256_store_pd)
* [\_mm256\_store\_ps](#_mm256_store_ps)
* [\_mm256\_store\_si256](#_mm256_store_si256)
* [\_mm256\_storeu2\_m128](#_mm256_storeu2_m128)
* [\_mm256\_storeu2\_m128d](#_mm256_storeu2_m128d)
* [\_mm256\_storeu2\_m128i](#_mm256_storeu2_m128i)
* [\_mm256\_storeu\_pd](#_mm256_storeu_pd)
* [\_mm256\_storeu\_ps](#_mm256_storeu_ps)
* [\_mm256\_storeu\_si256](#_mm256_storeu_si256)
* [\_mm256\_sub\_pd](#_mm256_sub_pd)
* [\_mm256\_sub\_ps](#_mm256_sub_ps)
* [\_mm256\_testc\_pd](#_mm256_testc_pd)
* [\_mm256\_testc\_ps](#_mm256_testc_ps)
* [\_mm256\_testc\_si256](#_mm256_testc_si256)
* [\_mm256\_testnzc\_pd](#_mm256_testnzc_pd)
* [\_mm256\_testnzc\_ps](#_mm256_testnzc_ps)
* [\_mm256\_testnzc\_si256](#_mm256_testnzc_si256)
* [\_mm256\_testz\_pd](#_mm256_testz_pd)
* [\_mm256\_testz\_ps](#_mm256_testz_ps)
* [\_mm256\_testz\_si256](#_mm256_testz_si256)
* [\_mm256\_undefined\_pd](#_mm256_undefined_pd)
* [\_mm256\_undefined\_ps](#_mm256_undefined_ps)
* [\_mm256\_undefined\_si256](#_mm256_undefined_si256)
* [\_mm256\_unpackhi\_pd](#_mm256_unpackhi_pd)
* [\_mm256\_unpackhi\_ps](#_mm256_unpackhi_ps)
* [\_mm256\_unpacklo\_pd](#_mm256_unpacklo_pd)
* [\_mm256\_unpacklo\_ps](#_mm256_unpacklo_ps)
* [\_mm256\_xor\_pd](#_mm256_xor_pd)
* [\_mm256\_xor\_ps](#_mm256_xor_ps)
* [\_mm256\_zeroall](#_mm256_zeroall)
* [\_mm256\_zeroupper](#_mm256_zeroupper)
* [\_mm256\_zextpd128\_pd256](#_mm256_zextpd128_pd256)
* [\_mm256\_zextps128\_ps256](#_mm256_zextps128_ps256)
* [\_mm256\_zextsi128\_si256](#_mm256_zextsi128_si256)
* [\_mm\_abs\_epi16](#_mm_abs_epi16)
* [\_mm\_abs\_epi32](#_mm_abs_epi32)
* [\_mm\_abs\_epi8](#_mm_abs_epi8)
* [\_mm\_add\_epi16](#_mm_add_epi16)
* [\_mm\_add\_epi32](#_mm_add_epi32)
* [\_mm\_add\_epi64](#_mm_add_epi64)
* [\_mm\_add\_epi8](#_mm_add_epi8)
* [\_mm\_add\_pd](#_mm_add_pd)
* [\_mm\_add\_ps](#_mm_add_ps)
* [\_mm\_add\_sd](#_mm_add_sd)
* [\_mm\_add\_ss](#_mm_add_ss)
* [\_mm\_adds\_epi16](#_mm_adds_epi16)
* [\_mm\_adds\_epi8](#_mm_adds_epi8)
* [\_mm\_adds\_epu16](#_mm_adds_epu16)
* [\_mm\_adds\_epu8](#_mm_adds_epu8)
* [\_mm\_addsub\_pd](#_mm_addsub_pd)
* [\_mm\_addsub\_ps](#_mm_addsub_ps)
* [\_mm\_aesdec\_si128](#_mm_aesdec_si128)
* [\_mm\_aesdeclast\_si128](#_mm_aesdeclast_si128)
* [\_mm\_aesenc\_si128](#_mm_aesenc_si128)
* [\_mm\_aesenclast\_si128](#_mm_aesenclast_si128)
* [\_mm\_aesimc\_si128](#_mm_aesimc_si128)
* [\_mm\_aeskeygenassist\_si128](#_mm_aeskeygenassist_si128)
* [\_mm\_alignr\_epi8](#_mm_alignr_epi8)
* [\_mm\_and\_pd](#_mm_and_pd)
* [\_mm\_and\_ps](#_mm_and_ps)
* [\_mm\_and\_si128](#_mm_and_si128)
* [\_mm\_andnot\_pd](#_mm_andnot_pd)
* [\_mm\_andnot\_ps](#_mm_andnot_ps)
* [\_mm\_andnot\_si128](#_mm_andnot_si128)
* [\_mm\_avg\_epu16](#_mm_avg_epu16)
* [\_mm\_avg\_epu8](#_mm_avg_epu8)
* [\_mm\_blend\_epi16](#_mm_blend_epi16)
* [\_mm\_blend\_pd](#_mm_blend_pd)
* [\_mm\_blend\_ps](#_mm_blend_ps)
* [\_mm\_blendv\_epi8](#_mm_blendv_epi8)
* [\_mm\_blendv\_pd](#_mm_blendv_pd)
* [\_mm\_blendv\_ps](#_mm_blendv_ps)
* [\_mm\_broadcast\_ss](#_mm_broadcast_ss)
* [\_mm\_bslli\_si128](#_mm_bslli_si128)
* [\_mm\_bsrli\_si128](#_mm_bsrli_si128)
* [\_mm\_castpd\_ps](#_mm_castpd_ps)
* [\_mm\_castpd\_si128](#_mm_castpd_si128)
* [\_mm\_castps\_pd](#_mm_castps_pd)
* [\_mm\_castps\_si128](#_mm_castps_si128)
* [\_mm\_castsi128\_pd](#_mm_castsi128_pd)
* [\_mm\_castsi128\_ps](#_mm_castsi128_ps)
* [\_mm\_ceil\_pd](#_mm_ceil_pd)
* [\_mm\_ceil\_ps](#_mm_ceil_ps)
* [\_mm\_ceil\_sd](#_mm_ceil_sd)
* [\_mm\_ceil\_ss](#_mm_ceil_ss)
* [\_mm\_clflush](#_mm_clflush)
* [\_mm\_clmulepi64\_si128](#_mm_clmulepi64_si128)
* [\_mm\_cmp\_pd](#_mm_cmp_pd)
* [\_mm\_cmp\_ps](#_mm_cmp_ps)
* [\_mm\_cmp\_sd](#_mm_cmp_sd)
* [\_mm\_cmp\_ss](#_mm_cmp_ss)
* [\_mm\_cmpeq\_epi16](#_mm_cmpeq_epi16)
* [\_mm\_cmpeq\_epi32](#_mm_cmpeq_epi32)
* [\_mm\_cmpeq\_epi64](#_mm_cmpeq_epi64)
* [\_mm\_cmpeq\_epi8](#_mm_cmpeq_epi8)
* [\_mm\_cmpeq\_pd](#_mm_cmpeq_pd)
* [\_mm\_cmpeq\_ps](#_mm_cmpeq_ps)
* [\_mm\_cmpeq\_sd](#_mm_cmpeq_sd)
* [\_mm\_cmpeq\_ss](#_mm_cmpeq_ss)
* [\_mm\_cmpestra](#_mm_cmpestra)
* [\_mm\_cmpestrc](#_mm_cmpestrc)
* [\_mm\_cmpestri](#_mm_cmpestri)
* [\_mm\_cmpestrm](#_mm_cmpestrm)
* [\_mm\_cmpestro](#_mm_cmpestro)
* [\_mm\_cmpestrs](#_mm_cmpestrs)
* [\_mm\_cmpestrz](#_mm_cmpestrz)
* [\_mm\_cmpge\_pd](#_mm_cmpge_pd)
* [\_mm\_cmpge\_ps](#_mm_cmpge_ps)
* [\_mm\_cmpge\_sd](#_mm_cmpge_sd)
* [\_mm\_cmpge\_ss](#_mm_cmpge_ss)
* [\_mm\_cmpgt\_epi16](#_mm_cmpgt_epi16)
* [\_mm\_cmpgt\_epi32](#_mm_cmpgt_epi32)
* [\_mm\_cmpgt\_epi64](#_mm_cmpgt_epi64)
* [\_mm\_cmpgt\_epi8](#_mm_cmpgt_epi8)
* [\_mm\_cmpgt\_pd](#_mm_cmpgt_pd)
* [\_mm\_cmpgt\_ps](#_mm_cmpgt_ps)
* [\_mm\_cmpgt\_sd](#_mm_cmpgt_sd)
* [\_mm\_cmpgt\_ss](#_mm_cmpgt_ss)
* [\_mm\_cmpistra](#_mm_cmpistra)
* [\_mm\_cmpistrc](#_mm_cmpistrc)
* [\_mm\_cmpistri](#_mm_cmpistri)
* [\_mm\_cmpistrm](#_mm_cmpistrm)
* [\_mm\_cmpistro](#_mm_cmpistro)
* [\_mm\_cmpistrs](#_mm_cmpistrs)
* [\_mm\_cmpistrz](#_mm_cmpistrz)
* [\_mm\_cmple\_pd](#_mm_cmple_pd)
* [\_mm\_cmple\_ps](#_mm_cmple_ps)
* [\_mm\_cmple\_sd](#_mm_cmple_sd)
* [\_mm\_cmple\_ss](#_mm_cmple_ss)
* [\_mm\_cmplt\_epi16](#_mm_cmplt_epi16)
* [\_mm\_cmplt\_epi32](#_mm_cmplt_epi32)
* [\_mm\_cmplt\_epi8](#_mm_cmplt_epi8)
* [\_mm\_cmplt\_pd](#_mm_cmplt_pd)
* [\_mm\_cmplt\_ps](#_mm_cmplt_ps)
* [\_mm\_cmplt\_sd](#_mm_cmplt_sd)
* [\_mm\_cmplt\_ss](#_mm_cmplt_ss)
* [\_mm\_cmpneq\_pd](#_mm_cmpneq_pd)
* [\_mm\_cmpneq\_ps](#_mm_cmpneq_ps)
* [\_mm\_cmpneq\_sd](#_mm_cmpneq_sd)
* [\_mm\_cmpneq\_ss](#_mm_cmpneq_ss)
* [\_mm\_cmpnge\_pd](#_mm_cmpnge_pd)
* [\_mm\_cmpnge\_ps](#_mm_cmpnge_ps)
* [\_mm\_cmpnge\_sd](#_mm_cmpnge_sd)
* [\_mm\_cmpnge\_ss](#_mm_cmpnge_ss)
* [\_mm\_cmpngt\_pd](#_mm_cmpngt_pd)
* [\_mm\_cmpngt\_ps](#_mm_cmpngt_ps)
* [\_mm\_cmpngt\_sd](#_mm_cmpngt_sd)
* [\_mm\_cmpngt\_ss](#_mm_cmpngt_ss)
* [\_mm\_cmpnle\_pd](#_mm_cmpnle_pd)
* [\_mm\_cmpnle\_ps](#_mm_cmpnle_ps)
* [\_mm\_cmpnle\_sd](#_mm_cmpnle_sd)
* [\_mm\_cmpnle\_ss](#_mm_cmpnle_ss)
* [\_mm\_cmpnlt\_pd](#_mm_cmpnlt_pd)
* [\_mm\_cmpnlt\_ps](#_mm_cmpnlt_ps)
* [\_mm\_cmpnlt\_sd](#_mm_cmpnlt_sd)
* [\_mm\_cmpnlt\_ss](#_mm_cmpnlt_ss)
* [\_mm\_cmpord\_pd](#_mm_cmpord_pd)
* [\_mm\_cmpord\_ps](#_mm_cmpord_ps)
* [\_mm\_cmpord\_sd](#_mm_cmpord_sd)
* [\_mm\_cmpord\_ss](#_mm_cmpord_ss)
* [\_mm\_cmpunord\_pd](#_mm_cmpunord_pd)
* [\_mm\_cmpunord\_ps](#_mm_cmpunord_ps)
* [\_mm\_cmpunord\_sd](#_mm_cmpunord_sd)
* [\_mm\_cmpunord\_ss](#_mm_cmpunord_ss)
* [\_mm\_comieq\_sd](#_mm_comieq_sd)
* [\_mm\_comieq\_ss](#_mm_comieq_ss)
* [\_mm\_comige\_sd](#_mm_comige_sd)
* [\_mm\_comige\_ss](#_mm_comige_ss)
* [\_mm\_comigt\_sd](#_mm_comigt_sd)
* [\_mm\_comigt\_ss](#_mm_comigt_ss)
* [\_mm\_comile\_sd](#_mm_comile_sd)
* [\_mm\_comile\_ss](#_mm_comile_ss)
* [\_mm\_comilt\_sd](#_mm_comilt_sd)
* [\_mm\_comilt\_ss](#_mm_comilt_ss)
* [\_mm\_comineq\_sd](#_mm_comineq_sd)
* [\_mm\_comineq\_ss](#_mm_comineq_ss)
* [\_mm\_crc32\_u16](#_mm_crc32_u16)
* [\_mm\_crc32\_u32](#_mm_crc32_u32)
* [\_mm\_crc32\_u64](#_mm_crc32_u64)
* [\_mm\_crc32\_u8](#_mm_crc32_u8)
* [\_mm\_cvt\_si2ss](#_mm_cvt_si2ss)
* [\_mm\_cvt\_ss2si](#_mm_cvt_ss2si)
* [\_mm\_cvtepi16\_epi32](#_mm_cvtepi16_epi32)
* [\_mm\_cvtepi16\_epi64](#_mm_cvtepi16_epi64)
* [\_mm\_cvtepi32\_epi64](#_mm_cvtepi32_epi64)
* [\_mm\_cvtepi32\_pd](#_mm_cvtepi32_pd)
* [\_mm\_cvtepi32\_ps](#_mm_cvtepi32_ps)
* [\_mm\_cvtepi8\_epi16](#_mm_cvtepi8_epi16)
* [\_mm\_cvtepi8\_epi32](#_mm_cvtepi8_epi32)
* [\_mm\_cvtepi8\_epi64](#_mm_cvtepi8_epi64)
* [\_mm\_cvtepu16\_epi32](#_mm_cvtepu16_epi32)
* [\_mm\_cvtepu16\_epi64](#_mm_cvtepu16_epi64)
* [\_mm\_cvtepu32\_epi64](#_mm_cvtepu32_epi64)
* [\_mm\_cvtepu8\_epi16](#_mm_cvtepu8_epi16)
* [\_mm\_cvtepu8\_epi32](#_mm_cvtepu8_epi32)
* [\_mm\_cvtepu8\_epi64](#_mm_cvtepu8_epi64)
* [\_mm\_cvtpd\_epi32](#_mm_cvtpd_epi32)
* [\_mm\_cvtpd\_ps](#_mm_cvtpd_ps)
* [\_mm\_cvtps\_epi32](#_mm_cvtps_epi32)
* [\_mm\_cvtps\_pd](#_mm_cvtps_pd)
* [\_mm\_cvtsd\_f64](#_mm_cvtsd_f64)
* [\_mm\_cvtsd\_si32](#_mm_cvtsd_si32)
* [\_mm\_cvtsd\_si64](#_mm_cvtsd_si64)
* [\_mm\_cvtsd\_si64x](#_mm_cvtsd_si64x)
* [\_mm\_cvtsd\_ss](#_mm_cvtsd_ss)
* [\_mm\_cvtsi128\_si32](#_mm_cvtsi128_si32)
* [\_mm\_cvtsi128\_si64](#_mm_cvtsi128_si64)
* [\_mm\_cvtsi128\_si64x](#_mm_cvtsi128_si64x)
* [\_mm\_cvtsi32\_sd](#_mm_cvtsi32_sd)
* [\_mm\_cvtsi32\_si128](#_mm_cvtsi32_si128)
* [\_mm\_cvtsi32\_ss](#_mm_cvtsi32_ss)
* [\_mm\_cvtsi64\_sd](#_mm_cvtsi64_sd)
* [\_mm\_cvtsi64\_si128](#_mm_cvtsi64_si128)
* [\_mm\_cvtsi64\_ss](#_mm_cvtsi64_ss)
* [\_mm\_cvtsi64x\_sd](#_mm_cvtsi64x_sd)
* [\_mm\_cvtsi64x\_si128](#_mm_cvtsi64x_si128)
* [\_mm\_cvtss\_f32](#_mm_cvtss_f32)
* [\_mm\_cvtss\_sd](#_mm_cvtss_sd)
* [\_mm\_cvtss\_si32](#_mm_cvtss_si32)
* [\_mm\_cvtss\_si64](#_mm_cvtss_si64)
* [\_mm\_cvttpd\_epi32](#_mm_cvttpd_epi32)
* [\_mm\_cvttps\_epi32](#_mm_cvttps_epi32)
* [\_mm\_cvttsd\_si32](#_mm_cvttsd_si32)
* [\_mm\_cvttsd\_si64](#_mm_cvttsd_si64)
* [\_mm\_cvttsd\_si64x](#_mm_cvttsd_si64x)
* [\_mm\_cvttss\_si32](#_mm_cvttss_si32)
* [\_mm\_cvttss\_si64](#_mm_cvttss_si64)
* [\_mm\_div\_pd](#_mm_div_pd)
* [\_mm\_div\_ps](#_mm_div_ps)
* [\_mm\_div\_sd](#_mm_div_sd)
* [\_mm\_div\_ss](#_mm_div_ss)
* [\_mm\_dp\_pd](#_mm_dp_pd)
* [\_mm\_dp\_ps](#_mm_dp_ps)
* [\_mm\_extract\_epi16](#_mm_extract_epi16)
* [\_mm\_extract\_epi32](#_mm_extract_epi32)
* [\_mm\_extract\_epi64](#_mm_extract_epi64)
* [\_mm\_extract\_epi8](#_mm_extract_epi8)
* [\_mm\_extract\_ps](#_mm_extract_ps)
* [\_mm\_floor\_pd](#_mm_floor_pd)
* [\_mm\_floor\_ps](#_mm_floor_ps)
* [\_mm\_floor\_sd](#_mm_floor_sd)
* [\_mm\_floor\_ss](#_mm_floor_ss)
* [\_mm\_getcsr](#_mm_getcsr)
* [\_mm\_hadd\_epi16](#_mm_hadd_epi16)
* [\_mm\_hadd\_epi32](#_mm_hadd_epi32)
* [\_mm\_hadd\_pd](#_mm_hadd_pd)
* [\_mm\_hadd\_ps](#_mm_hadd_ps)
* [\_mm\_hadds\_epi16](#_mm_hadds_epi16)
* [\_mm\_hsub\_epi16](#_mm_hsub_epi16)
* [\_mm\_hsub\_epi32](#_mm_hsub_epi32)
* [\_mm\_hsub\_pd](#_mm_hsub_pd)
* [\_mm\_hsub\_ps](#_mm_hsub_ps)
* [\_mm\_hsubs\_epi16](#_mm_hsubs_epi16)
* [\_mm\_insert\_epi16](#_mm_insert_epi16)
* [\_mm\_insert\_epi32](#_mm_insert_epi32)
* [\_mm\_insert\_epi64](#_mm_insert_epi64)
* [\_mm\_insert\_epi8](#_mm_insert_epi8)
* [\_mm\_insert\_ps](#_mm_insert_ps)
* [\_mm\_lddqu\_si128](#_mm_lddqu_si128)
* [\_mm\_lfence](#_mm_lfence)
* [\_mm\_load1\_pd](#_mm_load1_pd)
* [\_mm\_load1\_ps](#_mm_load1_ps)
* [\_mm\_load\_pd](#_mm_load_pd)
* [\_mm\_load\_pd1](#_mm_load_pd1)
* [\_mm\_load\_ps](#_mm_load_ps)
* [\_mm\_load\_ps1](#_mm_load_ps1)
* [\_mm\_load\_sd](#_mm_load_sd)
* [\_mm\_load\_si128](#_mm_load_si128)
* [\_mm\_load\_ss](#_mm_load_ss)
* [\_mm\_loaddup\_pd](#_mm_loaddup_pd)
* [\_mm\_loadh\_pd](#_mm_loadh_pd)
* [\_mm\_loadl\_epi64](#_mm_loadl_epi64)
* [\_mm\_loadl\_pd](#_mm_loadl_pd)
* [\_mm\_loadr\_pd](#_mm_loadr_pd)
* [\_mm\_loadr\_ps](#_mm_loadr_ps)
* [\_mm\_loadu\_pd](#_mm_loadu_pd)
* [\_mm\_loadu\_ps](#_mm_loadu_ps)
* [\_mm\_loadu\_si128](#_mm_loadu_si128)
* [\_mm\_loadu\_si64](#_mm_loadu_si64)
* [\_mm\_madd\_epi16](#_mm_madd_epi16)
* [\_mm\_maddubs\_epi16](#_mm_maddubs_epi16)
* [\_mm\_maskload\_pd](#_mm_maskload_pd)
* [\_mm\_maskload\_ps](#_mm_maskload_ps)
* [\_mm\_maskmoveu\_si128](#_mm_maskmoveu_si128)
* [\_mm\_maskstore\_pd](#_mm_maskstore_pd)
* [\_mm\_maskstore\_ps](#_mm_maskstore_ps)
* [\_mm\_max\_epi16](#_mm_max_epi16)
* [\_mm\_max\_epi32](#_mm_max_epi32)
* [\_mm\_max\_epi8](#_mm_max_epi8)
* [\_mm\_max\_epu16](#_mm_max_epu16)
* [\_mm\_max\_epu32](#_mm_max_epu32)
* [\_mm\_max\_epu8](#_mm_max_epu8)
* [\_mm\_max\_pd](#_mm_max_pd)
* [\_mm\_max\_ps](#_mm_max_ps)
* [\_mm\_max\_sd](#_mm_max_sd)
* [\_mm\_max\_ss](#_mm_max_ss)
* [\_mm\_mfence](#_mm_mfence)
* [\_mm\_min\_epi16](#_mm_min_epi16)
* [\_mm\_min\_epi32](#_mm_min_epi32)
* [\_mm\_min\_epi8](#_mm_min_epi8)
* [\_mm\_min\_epu16](#_mm_min_epu16)
* [\_mm\_min\_epu32](#_mm_min_epu32)
* [\_mm\_min\_epu8](#_mm_min_epu8)
* [\_mm\_min\_pd](#_mm_min_pd)
* [\_mm\_min\_ps](#_mm_min_ps)
* [\_mm\_min\_sd](#_mm_min_sd)
* [\_mm\_min\_ss](#_mm_min_ss)
* [\_mm\_minpos\_epu16](#_mm_minpos_epu16)
* [\_mm\_move\_epi64](#_mm_move_epi64)
* [\_mm\_move\_sd](#_mm_move_sd)
* [\_mm\_move\_ss](#_mm_move_ss)
* [\_mm\_movedup\_pd](#_mm_movedup_pd)
* [\_mm\_movehdup\_ps](#_mm_movehdup_ps)
* [\_mm\_movehl\_ps](#_mm_movehl_ps)
* [\_mm\_moveldup\_ps](#_mm_moveldup_ps)
* [\_mm\_movelh\_ps](#_mm_movelh_ps)
* [\_mm\_movemask\_epi8](#_mm_movemask_epi8)
* [\_mm\_movemask\_pd](#_mm_movemask_pd)
* [\_mm\_movemask\_ps](#_mm_movemask_ps)
* [\_mm\_mpsadbw\_epu8](#_mm_mpsadbw_epu8)
* [\_mm\_mul\_epi32](#_mm_mul_epi32)
* [\_mm\_mul\_epu32](#_mm_mul_epu32)
* [\_mm\_mul\_pd](#_mm_mul_pd)
* [\_mm\_mul\_ps](#_mm_mul_ps)
* [\_mm\_mul\_sd](#_mm_mul_sd)
* [\_mm\_mul\_ss](#_mm_mul_ss)
* [\_mm\_mulhi\_epi16](#_mm_mulhi_epi16)
* [\_mm\_mulhi\_epu16](#_mm_mulhi_epu16)
* [\_mm\_mulhrs\_epi16](#_mm_mulhrs_epi16)
* [\_mm\_mullo\_epi16](#_mm_mullo_epi16)
* [\_mm\_mullo\_epi32](#_mm_mullo_epi32)
* [\_mm\_or\_pd](#_mm_or_pd)
* [\_mm\_or\_ps](#_mm_or_ps)
* [\_mm\_or\_si128](#_mm_or_si128)
* [\_mm\_packs\_epi16](#_mm_packs_epi16)
* [\_mm\_packs\_epi32](#_mm_packs_epi32)
* [\_mm\_packus\_epi16](#_mm_packus_epi16)
* [\_mm\_packus\_epi32](#_mm_packus_epi32)
* [\_mm\_pause](#_mm_pause)
* [\_mm\_permute\_pd](#_mm_permute_pd)
* [\_mm\_permute\_ps](#_mm_permute_ps)
* [\_mm\_permutevar\_pd](#_mm_permutevar_pd)
* [\_mm\_permutevar\_ps](#_mm_permutevar_ps)
* [\_mm\_prefetch](#_mm_prefetch)
* [\_mm\_rcp\_ps](#_mm_rcp_ps)
* [\_mm\_rcp\_ss](#_mm_rcp_ss)
* [\_mm\_round\_pd](#_mm_round_pd)
* [\_mm\_round\_ps](#_mm_round_ps)
* [\_mm\_round\_sd](#_mm_round_sd)
* [\_mm\_round\_ss](#_mm_round_ss)
* [\_mm\_rsqrt\_ps](#_mm_rsqrt_ps)
* [\_mm\_rsqrt\_ss](#_mm_rsqrt_ss)
* [\_mm\_sad\_epu8](#_mm_sad_epu8)
* [\_mm\_set1\_epi16](#_mm_set1_epi16)
* [\_mm\_set1\_epi32](#_mm_set1_epi32)
* [\_mm\_set1\_epi64x](#_mm_set1_epi64x)
* [\_mm\_set1\_epi8](#_mm_set1_epi8)
* [\_mm\_set1\_pd](#_mm_set1_pd)
* [\_mm\_set1\_ps](#_mm_set1_ps)
* [\_mm\_set\_epi16](#_mm_set_epi16)
* [\_mm\_set\_epi32](#_mm_set_epi32)
* [\_mm\_set\_epi64x](#_mm_set_epi64x)
* [\_mm\_set\_epi8](#_mm_set_epi8)
* [\_mm\_set\_pd](#_mm_set_pd)
* [\_mm\_set\_pd1](#_mm_set_pd1)
* [\_mm\_set\_ps](#_mm_set_ps)
* [\_mm\_set\_ps1](#_mm_set_ps1)
* [\_mm\_set\_sd](#_mm_set_sd)
* [\_mm\_set\_ss](#_mm_set_ss)
* [\_mm\_setcsr](#_mm_setcsr)
* [\_mm\_setr\_epi16](#_mm_setr_epi16)
* [\_mm\_setr\_epi32](#_mm_setr_epi32)
* [\_mm\_setr\_epi8](#_mm_setr_epi8)
* [\_mm\_setr\_pd](#_mm_setr_pd)
* [\_mm\_setr\_ps](#_mm_setr_ps)
* [\_mm\_setzero\_pd](#_mm_setzero_pd)
* [\_mm\_setzero\_ps](#_mm_setzero_ps)
* [\_mm\_setzero\_si128](#_mm_setzero_si128)
* [\_mm\_sfence](#_mm_sfence)
* [\_mm\_sha1msg1\_epu32](#_mm_sha1msg1_epu32)
* [\_mm\_sha1msg2\_epu32](#_mm_sha1msg2_epu32)
* [\_mm\_sha1nexte\_epu32](#_mm_sha1nexte_epu32)
* [\_mm\_sha1rnds4\_epu32](#_mm_sha1rnds4_epu32)
* [\_mm\_sha256msg1\_epu32](#_mm_sha256msg1_epu32)
* [\_mm\_sha256msg2\_epu32](#_mm_sha256msg2_epu32)
* [\_mm\_sha256rnds2\_epu32](#_mm_sha256rnds2_epu32)
* [\_mm\_shuffle\_epi32](#_mm_shuffle_epi32)
* [\_mm\_shuffle\_epi8](#_mm_shuffle_epi8)
* [\_mm\_shuffle\_pd](#_mm_shuffle_pd)
* [\_mm\_shuffle\_ps](#_mm_shuffle_ps)
* [\_mm\_shufflehi\_epi16](#_mm_shufflehi_epi16)
* [\_mm\_shufflelo\_epi16](#_mm_shufflelo_epi16)
* [\_mm\_sign\_epi16](#_mm_sign_epi16)
* [\_mm\_sign\_epi32](#_mm_sign_epi32)
* [\_mm\_sign\_epi8](#_mm_sign_epi8)
* [\_mm\_sll\_epi16](#_mm_sll_epi16)
* [\_mm\_sll\_epi32](#_mm_sll_epi32)
* [\_mm\_sll\_epi64](#_mm_sll_epi64)
* [\_mm\_slli\_epi16](#_mm_slli_epi16)
* [\_mm\_slli\_epi32](#_mm_slli_epi32)
* [\_mm\_slli\_epi64](#_mm_slli_epi64)
* [\_mm\_slli\_si128](#_mm_slli_si128)
* [\_mm\_sqrt\_pd](#_mm_sqrt_pd)
* [\_mm\_sqrt\_ps](#_mm_sqrt_ps)
* [\_mm\_sqrt\_sd](#_mm_sqrt_sd)
* [\_mm\_sqrt\_ss](#_mm_sqrt_ss)
* [\_mm\_sra\_epi16](#_mm_sra_epi16)
* [\_mm\_sra\_epi32](#_mm_sra_epi32)
* [\_mm\_srai\_epi16](#_mm_srai_epi16)
* [\_mm\_srai\_epi32](#_mm_srai_epi32)
* [\_mm\_srl\_epi16](#_mm_srl_epi16)
* [\_mm\_srl\_epi32](#_mm_srl_epi32)
* [\_mm\_srl\_epi64](#_mm_srl_epi64)
* [\_mm\_srli\_epi16](#_mm_srli_epi16)
* [\_mm\_srli\_epi32](#_mm_srli_epi32)
* [\_mm\_srli\_epi64](#_mm_srli_epi64)
* [\_mm\_srli\_si128](#_mm_srli_si128)
* [\_mm\_store1\_pd](#_mm_store1_pd)
* [\_mm\_store1\_ps](#_mm_store1_ps)
* [\_mm\_store\_pd](#_mm_store_pd)
* [\_mm\_store\_pd1](#_mm_store_pd1)
* [\_mm\_store\_ps](#_mm_store_ps)
* [\_mm\_store\_ps1](#_mm_store_ps1)
* [\_mm\_store\_sd](#_mm_store_sd)
* [\_mm\_store\_si128](#_mm_store_si128)
* [\_mm\_store\_ss](#_mm_store_ss)
* [\_mm\_storeh\_pd](#_mm_storeh_pd)
* [\_mm\_storel\_epi64](#_mm_storel_epi64)
* [\_mm\_storel\_pd](#_mm_storel_pd)
* [\_mm\_storer\_pd](#_mm_storer_pd)
* [\_mm\_storer\_ps](#_mm_storer_ps)
* [\_mm\_storeu\_pd](#_mm_storeu_pd)
* [\_mm\_storeu\_ps](#_mm_storeu_ps)
* [\_mm\_storeu\_si128](#_mm_storeu_si128)
* [\_mm\_stream\_pd](#_mm_stream_pd)
* [\_mm\_stream\_ps](#_mm_stream_ps)
* [\_mm\_stream\_si128](#_mm_stream_si128)
* [\_mm\_stream\_si32](#_mm_stream_si32)
* [\_mm\_stream\_si64](#_mm_stream_si64)
* [\_mm\_sub\_epi16](#_mm_sub_epi16)
* [\_mm\_sub\_epi32](#_mm_sub_epi32)
* [\_mm\_sub\_epi64](#_mm_sub_epi64)
* [\_mm\_sub\_epi8](#_mm_sub_epi8)
* [\_mm\_sub\_pd](#_mm_sub_pd)
* [\_mm\_sub\_ps](#_mm_sub_ps)
* [\_mm\_sub\_sd](#_mm_sub_sd)
* [\_mm\_sub\_ss](#_mm_sub_ss)
* [\_mm\_subs\_epi16](#_mm_subs_epi16)
* [\_mm\_subs\_epi8](#_mm_subs_epi8)
* [\_mm\_subs\_epu16](#_mm_subs_epu16)
* [\_mm\_subs\_epu8](#_mm_subs_epu8)
* [\_mm\_test\_all\_ones](#_mm_test_all_ones)
* [\_mm\_test\_all\_zeros](#_mm_test_all_zeros)
* [\_mm\_test\_mix\_ones\_zeros](#_mm_test_mix_ones_zeros)
* [\_mm\_testc\_pd](#_mm_testc_pd)
* [\_mm\_testc\_ps](#_mm_testc_ps)
* [\_mm\_testc\_si128](#_mm_testc_si128)
* [\_mm\_testnzc\_pd](#_mm_testnzc_pd)
* [\_mm\_testnzc\_ps](#_mm_testnzc_ps)
* [\_mm\_testnzc\_si128](#_mm_testnzc_si128)
* [\_mm\_testz\_pd](#_mm_testz_pd)
* [\_mm\_testz\_ps](#_mm_testz_ps)
* [\_mm\_testz\_si128](#_mm_testz_si128)
* [\_mm\_ucomieq\_sd](#_mm_ucomieq_sd)
* [\_mm\_ucomieq\_ss](#_mm_ucomieq_ss)
* [\_mm\_ucomige\_sd](#_mm_ucomige_sd)
* [\_mm\_ucomige\_ss](#_mm_ucomige_ss)
* [\_mm\_ucomigt\_sd](#_mm_ucomigt_sd)
* [\_mm\_ucomigt\_ss](#_mm_ucomigt_ss)
* [\_mm\_ucomile\_sd](#_mm_ucomile_sd)
* [\_mm\_ucomile\_ss](#_mm_ucomile_ss)
* [\_mm\_ucomilt\_sd](#_mm_ucomilt_sd)
* [\_mm\_ucomilt\_ss](#_mm_ucomilt_ss)
* [\_mm\_ucomineq\_sd](#_mm_ucomineq_sd)
* [\_mm\_ucomineq\_ss](#_mm_ucomineq_ss)
* [\_mm\_undefined\_pd](#_mm_undefined_pd)
* [\_mm\_undefined\_ps](#_mm_undefined_ps)
* [\_mm\_undefined\_si128](#_mm_undefined_si128)
* [\_mm\_unpackhi\_epi16](#_mm_unpackhi_epi16)
* [\_mm\_unpackhi\_epi32](#_mm_unpackhi_epi32)
* [\_mm\_unpackhi\_epi64](#_mm_unpackhi_epi64)
* [\_mm\_unpackhi\_epi8](#_mm_unpackhi_epi8)
* [\_mm\_unpackhi\_pd](#_mm_unpackhi_pd)
* [\_mm\_unpackhi\_ps](#_mm_unpackhi_ps)
* [\_mm\_unpacklo\_epi16](#_mm_unpacklo_epi16)
* [\_mm\_unpacklo\_epi32](#_mm_unpacklo_epi32)
* [\_mm\_unpacklo\_epi64](#_mm_unpacklo_epi64)
* [\_mm\_unpacklo\_epi8](#_mm_unpacklo_epi8)
* [\_mm\_unpacklo\_pd](#_mm_unpacklo_pd)
* [\_mm\_unpacklo\_ps](#_mm_unpacklo_ps)
* [\_mm\_xor\_pd](#_mm_xor_pd)
* [\_mm\_xor\_ps](#_mm_xor_ps)
* [\_mm\_xor\_si128](#_mm_xor_si128)
* [\_pdep\_u32](#_pdep_u32)
* [\_pdep\_u64](#_pdep_u64)
* [\_pext\_u32](#_pext_u32)
* [\_pext\_u64](#_pext_u64)
* [\_popcnt32](#_popcnt32)
* [\_popcnt64](#_popcnt64)
* [\_rdtsc](#_rdtsc)
* [\_subborrow\_u32](#_subborrow_u32)
* [\_subborrow\_u64](#_subborrow_u64)
* [\_tzcnt\_u16](#_tzcnt_u16)
* [\_tzcnt\_u32](#_tzcnt_u32)
* [\_tzcnt\_u64](#_tzcnt_u64)
* [cmpxchg16b](#cmpxchg16b)

Procedure Groups (0)

This section is empty.

## Types

### [\_MM\_CMPINT\_ENUM ¶](#_MM_CMPINT_ENUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L38)

```
_MM_CMPINT_ENUM :: i32
```

 

The `_MM_CMPINT_ENUM` type used to specify comparison operations in AVX-512 intrinsics.

### [\_MM\_MANTISSA\_NORM\_ENUM ¶](#_MM_MANTISSA_NORM_ENUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L41)

```
_MM_MANTISSA_NORM_ENUM :: i32
```

 

The `MM_MANTISSA_NORM_ENUM` type used to specify mantissa normalized operations in AVX-512 intrinsics.

### [\_MM\_MANTISSA\_SIGN\_ENUM ¶](#_MM_MANTISSA_SIGN_ENUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L44)

```
_MM_MANTISSA_SIGN_ENUM :: i32
```

 

The `MM_MANTISSA_SIGN_ENUM` type used to specify mantissa signed operations in AVX-512 intrinsics.

### [\_MM\_PERM\_ENUM ¶](#_MM_PERM_ENUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L46)

```
_MM_PERM_ENUM :: i32
```

### [\_\_m128 ¶](#__m128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L9)

```
__m128 :: #simd[4]f32
```

### [\_\_m128bh ¶](#__m128bh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L20)

```
__m128bh :: #simd[8]u16
```

### [\_\_m128d ¶](#__m128d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L10)

```
__m128d :: #simd[2]f64
```

### [\_\_m128i ¶](#__m128i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L8)

```
__m128i :: #simd[2]i64
```

### [\_\_m256 ¶](#__m256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L13)

```
__m256 :: #simd[8]f32
```

### [\_\_m256bh ¶](#__m256bh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L21)

```
__m256bh :: #simd[16]u16
```

### [\_\_m256d ¶](#__m256d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L14)

```
__m256d :: #simd[4]f64
```

### [\_\_m256i ¶](#__m256i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L12)

```
__m256i :: #simd[4]i64
```

### [\_\_m512 ¶](#__m512) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L17)

```
__m512 :: #simd[16]f32
```

### [\_\_m512bh ¶](#__m512bh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L22)

```
__m512bh :: #simd[32]u16
```

### [\_\_m512d ¶](#__m512d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L18)

```
__m512d :: #simd[8]f64
```

### [\_\_m512i ¶](#__m512i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L16)

```
__m512i :: #simd[8]i64
```

### [\_\_mmask16 ¶](#__mmask16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L32)

```
__mmask16 :: u16
```

 

The `__mmask16` type used in AVX-512 intrinsics, a 16-bit integer

### [\_\_mmask32 ¶](#__mmask32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L29)

```
__mmask32 :: u32
```

 

The `__mmask32` type used in AVX-512 intrinsics, a 32-bit integer

### [\_\_mmask64 ¶](#__mmask64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L26)

```
__mmask64 :: u64
```

 

The `__mmask64` type used in AVX-512 intrinsics, a 64-bit integer

### [\_\_mmask8 ¶](#__mmask8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L35)

```
__mmask8 :: u8
```

 

The `__mmask8` type used in AVX-512 intrinsics, a 8-bit integer

### [bf16 ¶](#bf16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin#L6)

```
bf16 :: u16
```

## Constants

### [\_CMP\_EQ\_OQ ¶](#_CMP_EQ_OQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L409)

```
_CMP_EQ_OQ :: 0x00
```

 

Equal (ordered, non-signaling)

### [\_CMP\_EQ\_OS ¶](#_CMP_EQ_OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L425)

```
_CMP_EQ_OS :: 0x10
```

 

Equal (ordered, signaling)

### [\_CMP\_EQ\_UQ ¶](#_CMP_EQ_UQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L417)

```
_CMP_EQ_UQ :: 0x08
```

 

Equal (unordered, non-signaling)

### [\_CMP\_EQ\_US ¶](#_CMP_EQ_US) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L433)

```
_CMP_EQ_US :: 0x18
```

 

Equal (unordered, signaling)

### [\_CMP\_FALSE\_OQ ¶](#_CMP_FALSE_OQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L420)

```
_CMP_FALSE_OQ :: 0x0b
```

 

False (ordered, non-signaling)

### [\_CMP\_FALSE\_OS ¶](#_CMP_FALSE_OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L436)

```
_CMP_FALSE_OS :: 0x1b
```

 

False (ordered, signaling)

### [\_CMP\_GE\_OQ ¶](#_CMP_GE_OQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L438)

```
_CMP_GE_OQ :: 0x1d
```

 

Greater-than-or-equal (ordered, non-signaling)

### [\_CMP\_GE\_OS ¶](#_CMP_GE_OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L422)

```
_CMP_GE_OS :: 0x0d
```

 

Greater-than-or-equal (ordered, signaling)

### [\_CMP\_GT\_OQ ¶](#_CMP_GT_OQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L439)

```
_CMP_GT_OQ :: 0x1e
```

 

Greater-than (ordered, non-signaling)

### [\_CMP\_GT\_OS ¶](#_CMP_GT_OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L423)

```
_CMP_GT_OS :: 0x0e
```

 

Greater-than (ordered, signaling)

### [\_CMP\_LE\_OQ ¶](#_CMP_LE_OQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L427)

```
_CMP_LE_OQ :: 0x12
```

 

Less-than-or-equal (ordered, non-signaling)

### [\_CMP\_LE\_OS ¶](#_CMP_LE_OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L411)

```
_CMP_LE_OS :: 0x02
```

 

Less-than-or-equal (ordered, signaling)

### [\_CMP\_LT\_OQ ¶](#_CMP_LT_OQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L426)

```
_CMP_LT_OQ :: 0x11
```

 

Less-than (ordered, non-signaling)

### [\_CMP\_LT\_OS ¶](#_CMP_LT_OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L410)

```
_CMP_LT_OS :: 0x01
```

 

Less-than (ordered, signaling)

### [\_CMP\_NEQ\_OQ ¶](#_CMP_NEQ_OQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L421)

```
_CMP_NEQ_OQ :: 0x0c
```

 

Not-equal (ordered, non-signaling)

### [\_CMP\_NEQ\_OS ¶](#_CMP_NEQ_OS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L437)

```
_CMP_NEQ_OS :: 0x1c
```

 

Not-equal (ordered, signaling)

### [\_CMP\_NEQ\_UQ ¶](#_CMP_NEQ_UQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L413)

```
_CMP_NEQ_UQ :: 0x04
```

 

Not-equal (unordered, non-signaling)

### [\_CMP\_NEQ\_US ¶](#_CMP_NEQ_US) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L429)

```
_CMP_NEQ_US :: 0x14
```

 

Not-equal (unordered, signaling)

### [\_CMP\_NGE\_UQ ¶](#_CMP_NGE_UQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L434)

```
_CMP_NGE_UQ :: 0x19
```

 

Not-greater-than-or-equal (unordered, non-signaling)

### [\_CMP\_NGE\_US ¶](#_CMP_NGE_US) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L418)

```
_CMP_NGE_US :: 0x09
```

 

Not-greater-than-or-equal (unordered, signaling)

### [\_CMP\_NGT\_UQ ¶](#_CMP_NGT_UQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L435)

```
_CMP_NGT_UQ :: 0x1a
```

 

Not-greater-than (unordered, non-signaling)

### [\_CMP\_NGT\_US ¶](#_CMP_NGT_US) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L419)

```
_CMP_NGT_US :: 0x0a
```

 

Not-greater-than (unordered, signaling)

### [\_CMP\_NLE\_UQ ¶](#_CMP_NLE_UQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L431)

```
_CMP_NLE_UQ :: 0x16
```

 

Not-less-than-or-equal (unordered, non-signaling)

### [\_CMP\_NLE\_US ¶](#_CMP_NLE_US) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L415)

```
_CMP_NLE_US :: 0x06
```

 

Not-less-than-or-equal (unordered, signaling)

### [\_CMP\_NLT\_UQ ¶](#_CMP_NLT_UQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L430)

```
_CMP_NLT_UQ :: 0x15
```

 

Not-less-than (unordered, non-signaling)

### [\_CMP\_NLT\_US ¶](#_CMP_NLT_US) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L414)

```
_CMP_NLT_US :: 0x05
```

 

Not-less-than (unordered, signaling)

### [\_CMP\_ORD\_Q ¶](#_CMP_ORD_Q) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L416)

```
_CMP_ORD_Q :: 0x07
```

 

Ordered (non-signaling)

### [\_CMP\_ORD\_S ¶](#_CMP_ORD_S) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L432)

```
_CMP_ORD_S :: 0x17
```

 

Ordered (signaling)

### [\_CMP\_TRUE\_UQ ¶](#_CMP_TRUE_UQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L424)

```
_CMP_TRUE_UQ :: 0x0f
```

 

True (unordered, non-signaling)

### [\_CMP\_TRUE\_US ¶](#_CMP_TRUE_US) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L440)

```
_CMP_TRUE_US :: 0x1f
```

 

True (unordered, signaling)

### [\_CMP\_UNORD\_Q ¶](#_CMP_UNORD_Q) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L412)

```
_CMP_UNORD_Q :: 0x03
```

 

Unordered (non-signaling)

### [\_CMP\_UNORD\_S ¶](#_CMP_UNORD_S) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L428)

```
_CMP_UNORD_S :: 0x13
```

 

Unordered (signaling)

### [\_MM\_EXCEPT\_DENORM ¶](#_MM_EXCEPT_DENORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L19)

```
_MM_EXCEPT_DENORM :: 0x0002
```

### [\_MM\_EXCEPT\_DIV\_ZERO ¶](#_MM_EXCEPT_DIV_ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L20)

```
_MM_EXCEPT_DIV_ZERO :: 0x0004
```

### [\_MM\_EXCEPT\_INEXACT ¶](#_MM_EXCEPT_INEXACT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L23)

```
_MM_EXCEPT_INEXACT :: 0x0020
```

### [\_MM\_EXCEPT\_INVALID ¶](#_MM_EXCEPT_INVALID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L18)

```
_MM_EXCEPT_INVALID :: 0x0001
```

### [\_MM\_EXCEPT\_MASK ¶](#_MM_EXCEPT_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L24)

```
_MM_EXCEPT_MASK :: 0x003f
```

### [\_MM\_EXCEPT\_OVERFLOW ¶](#_MM_EXCEPT_OVERFLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L21)

```
_MM_EXCEPT_OVERFLOW :: 0x0008
```

### [\_MM\_EXCEPT\_UNDERFLOW ¶](#_MM_EXCEPT_UNDERFLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L22)

```
_MM_EXCEPT_UNDERFLOW :: 0x0010
```

### [\_MM\_FLUSH\_ZERO\_MASK ¶](#_MM_FLUSH_ZERO_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L41)

```
_MM_FLUSH_ZERO_MASK :: 0x8000
```

### [\_MM\_FLUSH\_ZERO\_OFF ¶](#_MM_FLUSH_ZERO_OFF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L43)

```
_MM_FLUSH_ZERO_OFF :: 0x0000
```

### [\_MM\_FLUSH\_ZERO\_ON ¶](#_MM_FLUSH_ZERO_ON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L42)

```
_MM_FLUSH_ZERO_ON :: 0x8000
```

### [\_MM\_FROUND\_CEIL ¶](#_MM_FROUND_CEIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L16)

```
_MM_FROUND_CEIL :: _MM_FROUND_RAISE_EXC | _MM_FROUND_TO_POS_INF
```

### [\_MM\_FROUND\_CUR\_DIRECTION ¶](#_MM_FROUND_CUR_DIRECTION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L11)

```
_MM_FROUND_CUR_DIRECTION :: 0x04
```

### [\_MM\_FROUND\_FLOOR ¶](#_MM_FROUND_FLOOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L15)

```
_MM_FROUND_FLOOR :: _MM_FROUND_RAISE_EXC | _MM_FROUND_TO_NEG_INF
```

### [\_MM\_FROUND\_NEARBYINT ¶](#_MM_FROUND_NEARBYINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L19)

```
_MM_FROUND_NEARBYINT :: _MM_FROUND_NO_EXC | _MM_FROUND_CUR_DIRECTION
```

### [\_MM\_FROUND\_NINT ¶](#_MM_FROUND_NINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L14)

```
_MM_FROUND_NINT :: 0x00
```

### [\_MM\_FROUND\_NO\_EXC ¶](#_MM_FROUND_NO_EXC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L13)

```
_MM_FROUND_NO_EXC :: 0x08
```

### [\_MM\_FROUND\_RAISE\_EXC ¶](#_MM_FROUND_RAISE_EXC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L12)

```
_MM_FROUND_RAISE_EXC :: 0x00
```

### [\_MM\_FROUND\_RINT ¶](#_MM_FROUND_RINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L18)

```
_MM_FROUND_RINT :: _MM_FROUND_RAISE_EXC | _MM_FROUND_CUR_DIRECTION
```

### [\_MM\_FROUND\_TO\_NEAREST\_INT ¶](#_MM_FROUND_TO_NEAREST_INT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L7)

```
_MM_FROUND_TO_NEAREST_INT :: 0x00
```

 

SSE4 rounding constants

### [\_MM\_FROUND\_TO\_NEG\_INF ¶](#_MM_FROUND_TO_NEG_INF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L8)

```
_MM_FROUND_TO_NEG_INF :: 0x01
```

### [\_MM\_FROUND\_TO\_POS\_INF ¶](#_MM_FROUND_TO_POS_INF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L9)

```
_MM_FROUND_TO_POS_INF :: 0x02
```

### [\_MM\_FROUND\_TO\_ZERO ¶](#_MM_FROUND_TO_ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L10)

```
_MM_FROUND_TO_ZERO :: 0x03
```

### [\_MM\_FROUND\_TRUNC ¶](#_MM_FROUND_TRUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L17)

```
_MM_FROUND_TRUNC :: _MM_FROUND_RAISE_EXC | _MM_FROUND_TO_ZERO
```

### [\_MM\_HINT\_ET0 ¶](#_MM_HINT_ET0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L14)

```
_MM_HINT_ET0 :: 7
```

### [\_MM\_HINT\_ET1 ¶](#_MM_HINT_ET1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L15)

```
_MM_HINT_ET1 :: 6
```

### [\_MM\_HINT\_NTA ¶](#_MM_HINT_NTA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L13)

```
_MM_HINT_NTA :: 0
```

### [\_MM\_HINT\_T0 ¶](#_MM_HINT_T0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L10)

```
_MM_HINT_T0 :: 3
```

### [\_MM\_HINT\_T1 ¶](#_MM_HINT_T1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L11)

```
_MM_HINT_T1 :: 2
```

### [\_MM\_HINT\_T2 ¶](#_MM_HINT_T2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L12)

```
_MM_HINT_T2 :: 1
```

### [\_MM\_MASK\_DENORM ¶](#_MM_MASK_DENORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L27)

```
_MM_MASK_DENORM :: 0x0100
```

### [\_MM\_MASK\_DIV\_ZERO ¶](#_MM_MASK_DIV_ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L28)

```
_MM_MASK_DIV_ZERO :: 0x0200
```

### [\_MM\_MASK\_INEXACT ¶](#_MM_MASK_INEXACT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L31)

```
_MM_MASK_INEXACT :: 0x1000
```

### [\_MM\_MASK\_INVALID ¶](#_MM_MASK_INVALID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L26)

```
_MM_MASK_INVALID :: 0x0080
```

### [\_MM\_MASK\_MASK ¶](#_MM_MASK_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L32)

```
_MM_MASK_MASK :: 0x1f80
```

### [\_MM\_MASK\_OVERFLOW ¶](#_MM_MASK_OVERFLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L29)

```
_MM_MASK_OVERFLOW :: 0x0400
```

### [\_MM\_MASK\_UNDERFLOW ¶](#_MM_MASK_UNDERFLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L30)

```
_MM_MASK_UNDERFLOW :: 0x0800
```

### [\_MM\_ROUND\_DOWN ¶](#_MM_ROUND_DOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L35)

```
_MM_ROUND_DOWN :: 0x2000
```

### [\_MM\_ROUND\_MASK ¶](#_MM_ROUND_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L39)

```
_MM_ROUND_MASK :: 0x6000
```

### [\_MM\_ROUND\_NEAREST ¶](#_MM_ROUND_NEAREST) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L34)

```
_MM_ROUND_NEAREST :: 0x0000
```

### [\_MM\_ROUND\_TOWARD\_ZERO ¶](#_MM_ROUND_TOWARD_ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L37)

```
_MM_ROUND_TOWARD_ZERO :: 0x6000
```

### [\_MM\_ROUND\_UP ¶](#_MM_ROUND_UP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L36)

```
_MM_ROUND_UP :: 0x4000
```

### [\_SIDD\_BIT\_MASK ¶](#_SIDD_BIT_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L24)

```
_SIDD_BIT_MASK :: 0b0000_0000
```

### [\_SIDD\_CMP\_EQUAL\_ANY ¶](#_SIDD_CMP_EQUAL_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L11)

```
_SIDD_CMP_EQUAL_ANY :: 0b0000_0000
```

### [\_SIDD\_CMP\_EQUAL\_EACH ¶](#_SIDD_CMP_EQUAL_EACH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L13)

```
_SIDD_CMP_EQUAL_EACH :: 0b0000_1000
```

### [\_SIDD\_CMP\_EQUAL\_ORDERED ¶](#_SIDD_CMP_EQUAL_ORDERED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L14)

```
_SIDD_CMP_EQUAL_ORDERED :: 0b0000_1100
```

### [\_SIDD\_CMP\_RANGES ¶](#_SIDD_CMP_RANGES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L12)

```
_SIDD_CMP_RANGES :: 0b0000_0100
```

### [\_SIDD\_LEAST\_SIGNIFICANT ¶](#_SIDD_LEAST_SIGNIFICANT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L21)

```
_SIDD_LEAST_SIGNIFICANT :: 0b0000_0000
```

### [\_SIDD\_MASKED\_NEGATIVE\_POLARITY ¶](#_SIDD_MASKED_NEGATIVE_POLARITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L19)

```
_SIDD_MASKED_NEGATIVE_POLARITY :: 0b0011_0000
```

### [\_SIDD\_MASKED\_POSITIVE\_POLARITY ¶](#_SIDD_MASKED_POSITIVE_POLARITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L18)

```
_SIDD_MASKED_POSITIVE_POLARITY :: 0b0010_0000
```

### [\_SIDD\_MOST\_SIGNIFICANT ¶](#_SIDD_MOST_SIGNIFICANT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L22)

```
_SIDD_MOST_SIGNIFICANT :: 0b0100_0000
```

### [\_SIDD\_NEGATIVE\_POLARITY ¶](#_SIDD_NEGATIVE_POLARITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L17)

```
_SIDD_NEGATIVE_POLARITY :: 0b0001_0000
```

### [\_SIDD\_POSITIVE\_POLARITY ¶](#_SIDD_POSITIVE_POLARITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L16)

```
_SIDD_POSITIVE_POLARITY :: 0b0000_0000
```

### [\_SIDD\_SBYTE\_OPS ¶](#_SIDD_SBYTE_OPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L8)

```
_SIDD_SBYTE_OPS :: 0b0000_0010
```

### [\_SIDD\_SWORD\_OPS ¶](#_SIDD_SWORD_OPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L9)

```
_SIDD_SWORD_OPS :: 0b0000_0011
```

### [\_SIDD\_UBYTE\_OPS ¶](#_SIDD_UBYTE_OPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L6)

```
_SIDD_UBYTE_OPS :: 0b0000_0000
```

### [\_SIDD\_UNIT\_MASK ¶](#_SIDD_UNIT_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L25)

```
_SIDD_UNIT_MASK :: 0b0100_0000
```

### [\_SIDD\_UWORD\_OPS ¶](#_SIDD_UWORD_OPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L7)

```
_SIDD_UWORD_OPS :: 0b0000_0001
```

## Variables

This section is empty.

## Procedures

### [\_MM\_GET\_EXCEPTION\_MASK ¶](#_MM_GET_EXCEPTION_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L457)

```
_MM_GET_EXCEPTION_MASK :: proc "c" () -> u32 {…}
```

### [\_MM\_GET\_EXCEPTION\_STATE ¶](#_MM_GET_EXCEPTION_STATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L461)

```
_MM_GET_EXCEPTION_STATE :: proc "c" () -> u32 {…}
```

### [\_MM\_GET\_FLUSH\_ZERO\_MODE ¶](#_MM_GET_FLUSH_ZERO_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L465)

```
_MM_GET_FLUSH_ZERO_MODE :: proc "c" () -> u32 {…}
```

### [\_MM\_GET\_ROUNDING\_MODE ¶](#_MM_GET_ROUNDING_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L469)

```
_MM_GET_ROUNDING_MODE :: proc "c" () -> u32 {…}
```

### [\_MM\_SET\_EXCEPTION\_MASK ¶](#_MM_SET_EXCEPTION_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L474)

```
_MM_SET_EXCEPTION_MASK :: proc "c" (x: u32) {…}
```

### [\_MM\_SET\_EXCEPTION\_STATE ¶](#_MM_SET_EXCEPTION_STATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L478)

```
_MM_SET_EXCEPTION_STATE :: proc "c" (x: u32) {…}
```

### [\_MM\_SET\_FLUSH\_ZERO\_MODE ¶](#_MM_SET_FLUSH_ZERO_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L482)

```
_MM_SET_FLUSH_ZERO_MODE :: proc "c" (x: u32) {…}
```

### [\_MM\_SET\_ROUNDING\_MODE ¶](#_MM_SET_ROUNDING_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L486)

```
_MM_SET_ROUNDING_MODE :: proc "c" (x: u32) {…}
```

### [\_MM\_SHUFFLE ¶](#_MM_SHUFFLE)

```
_MM_SHUFFLE :: intrinsics.simd_x86__MM_SHUFFLE
```

 

\_MM\_SHUFFLE(z, y, x, w) -> (z<<6 | y<<4 | x<<2 | w)

### [\_MM\_TRANSPOSE4\_PS ¶](#_MM_TRANSPOSE4_PS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L502)

```
_MM_TRANSPOSE4_PS :: proc "c" (row0, row1, row2, row3: ^#simd[4]f32) {…}
```

### [\_\_rdtscp ¶](#__rdtscp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/rdtsc.odin#L10)

```
__rdtscp :: proc "c" (aux: ^u32) -> u64 {…}
```

### [\_addcarry\_u32 ¶](#_addcarry_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/adx.odin#L5)

```
_addcarry_u32 :: proc "c" (c_in: u8, a: u32, b: u32, out: ^u32) -> u8 {…}
```

### [\_addcarry\_u64 ¶](#_addcarry_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/adx.odin#L23)

```
_addcarry_u64 :: proc "c" (c_in: u8, a: u64, b: u64, out: ^u64) -> u8 {…}
```

### [\_addcarryx\_u32 ¶](#_addcarryx_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/adx.odin#L11)

```
_addcarryx_u32 :: proc "c" (c_in: u8, a: u32, b: u32, out: ^u32) -> u8 {…}
```

### [\_addcarryx\_u64 ¶](#_addcarryx_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/adx.odin#L29)

```
_addcarryx_u64 :: proc "c" (c_in: u8, a: u64, b: u64, out: ^u64) -> u8 {…}
```

### [\_andn\_u32 ¶](#_andn_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L7)

```
_andn_u32 :: proc "c" (a, b: u32) -> u32 {…}
```

### [\_andn\_u64 ¶](#_andn_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L11)

```
_andn_u64 :: proc "c" (a, b: u64) -> u64 {…}
```

### [\_bextr2\_u32 ¶](#_bextr2_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L25)

```
_bextr2_u32 :: proc "c" (a, control: u32) -> u32 {…}
```

### [\_bextr2\_u64 ¶](#_bextr2_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L29)

```
_bextr2_u64 :: proc "c" (a, control: u64) -> u64 {…}
```

### [\_bextr\_u32 ¶](#_bextr_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L16)

```
_bextr_u32 :: proc "c" (a, start, len: u32) -> u32 {…}
```

### [\_bextr\_u64 ¶](#_bextr_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L20)

```
_bextr_u64 :: proc "c" (a: u64, start, len: u32) -> u64 {…}
```

### [\_blsi\_u32 ¶](#_blsi_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L34)

```
_blsi_u32 :: proc "c" (a: u32) -> u32 {…}
```

### [\_blsi\_u64 ¶](#_blsi_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L38)

```
_blsi_u64 :: proc "c" (a: u64) -> u64 {…}
```

### [\_blsmsk\_u32 ¶](#_blsmsk_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L43)

```
_blsmsk_u32 :: proc "c" (a: u32) -> u32 {…}
```

### [\_blsmsk\_u64 ¶](#_blsmsk_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L47)

```
_blsmsk_u64 :: proc "c" (a: u64) -> u64 {…}
```

### [\_blsr\_u32 ¶](#_blsr_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L52)

```
_blsr_u32 :: proc "c" (a: u32) -> u32 {…}
```

### [\_blsr\_u64 ¶](#_blsr_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L56)

```
_blsr_u64 :: proc "c" (a: u64) -> u64 {…}
```

### [\_bzhi\_u32 ¶](#_bzhi_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi2.odin#L5)

```
_bzhi_u32 :: proc "c" (a, index: u32) -> u32 {…}
```

### [\_bzhi\_u64 ¶](#_bzhi_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi2.odin#L9)

```
_bzhi_u64 :: proc "c" (a, index: u64) -> u64 {…}
```

### [\_fxrstor ¶](#_fxrstor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/fxsr.odin#L9)

```
_fxrstor :: proc "c" (mem_addr: rawptr) {…}
```

### [\_fxrstor64 ¶](#_fxrstor64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/fxsr.odin#L19)

```
_fxrstor64 :: proc "c" (mem_addr: rawptr) {…}
```

### [\_fxsave ¶](#_fxsave) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/fxsr.odin#L5)

```
_fxsave :: proc "c" (mem_addr: rawptr) {…}
```

### [\_fxsave64 ¶](#_fxsave64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/fxsr.odin#L15)

```
_fxsave64 :: proc "c" (mem_addr: rawptr) {…}
```

### [\_lzcnt\_u32 ¶](#_lzcnt_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/abm.odin#L7)

```
_lzcnt_u32 :: proc "c" (x: u32) -> u32 {…}
```

### [\_lzcnt\_u64 ¶](#_lzcnt_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/abm.odin#L17)

```
_lzcnt_u64 :: proc "c" (x: u64) -> u64 {…}
```

### [\_mm256\_add\_pd ¶](#_mm256_add_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L8)

```
_mm256_add_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Adds packed double-precision (64-bit) floating-point elements in `a` and `b`.

### [\_mm256\_add\_ps ¶](#_mm256_add_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L14)

```
_mm256_add_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Adds packed single-precision (32-bit) floating-point elements in `a` and `b`.

### [\_mm256\_addsub\_pd ¶](#_mm256_addsub_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L149)

```
_mm256_addsub_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Alternatively adds and subtracts packed double-precision (64-bit) floating-point elements in `a` to/from packed elements in `b`.

### [\_mm256\_addsub\_ps ¶](#_mm256_addsub_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L158)

```
_mm256_addsub_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Alternatively adds and subtracts packed single-precision (32-bit) floating-point elements in `a` to/from packed elements in `b`.

### [\_mm256\_and\_pd ¶](#_mm256_and_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L20)

```
_mm256_and_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Computes the bitwise AND of a packed double-precision (64-bit) floating-point elements in `a` and `b`.

### [\_mm256\_and\_ps ¶](#_mm256_and_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L28)

```
_mm256_and_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Computes the bitwise AND of packed single-precision (32-bit) floating-point elements in `a` and `b`.

### [\_mm256\_andnot\_pd ¶](#_mm256_andnot_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L85)

```
_mm256_andnot_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Computes the bitwise NOT of packed double-precision (64-bit) floating-point elements in `a`, and then AND with `b`.

### [\_mm256\_andnot\_ps ¶](#_mm256_andnot_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L93)

```
_mm256_andnot_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Computes the bitwise NOT of packed single-precision (32-bit) floating-point elements in `a` and then AND with `b`.

### [\_mm256\_blend\_pd ¶](#_mm256_blend_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L284)

```
_mm256_blend_pd :: proc "c" (a, b: #simd[4]f64, $IIM4: u32) -> #simd[4]f64 {…}
```

 

Blends packed double-precision (64-bit) floating-point elements from
`a` and `b` using control mask `imm8`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_blend\_pd)

### [\_mm256\_blend\_ps ¶](#_mm256_blend_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L298)

```
_mm256_blend_ps :: proc "c" (a, b: #simd[8]f32, $IMM8: u8) -> #simd[8]f32 {…}
```

 

Blends packed single-precision (32-bit) floating-point elements from
`a` and `b` using control mask `imm8`.

### [\_mm256\_blendv\_pd ¶](#_mm256_blendv_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L318)

```
_mm256_blendv_pd :: proc "c" (a, b: #simd[4]f64, c: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Blends packed double-precision (64-bit) floating-point elements from
`a` and `b` using `c` as a mask.

### [\_mm256\_blendv\_ps ¶](#_mm256_blendv_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L326)

```
_mm256_blendv_ps :: proc "c" (a, b: #simd[8]f32, c: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Blends packed single-precision (32-bit) floating-point elements from
`a` and `b` using `c` as a mask.

### [\_mm256\_broadcast\_pd ¶](#_mm256_broadcast_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L781)

```
_mm256_broadcast_pd :: proc "c" (a: ^#simd[2]f64) -> #simd[4]f64 {…}
```

 

Broadcasts 128 bits from memory (composed of 2 packed double-precision (64-bit) floating-point elements) to all elements of the returned vector.

### [\_mm256\_broadcast\_ps ¶](#_mm256_broadcast_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L775)

```
_mm256_broadcast_ps :: proc "c" (a: ^#simd[4]f32) -> #simd[8]f32 {…}
```

 

Broadcasts 128 bits from memory (composed of 4 packed single-precision (32-bit) floating-point elements) to all elements of the returned vector.

### [\_mm256\_broadcast\_sd ¶](#_mm256_broadcast_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L769)

```
_mm256_broadcast_sd :: proc "c" (f: ^f64) -> #simd[4]f64 {…}
```

 

Broadcasts a double-precision (64-bit) floating-point element from memory to all elements of the returned vector.

### [\_mm256\_broadcast\_ss ¶](#_mm256_broadcast_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L757)

```
_mm256_broadcast_ss :: proc "c" (f: ^f32) -> #simd[8]f32 {…}
```

 

Broadcasts a single-precision (32-bit) floating-point element from memory to all elements of the returned vector.

### [\_mm256\_castpd128\_pd256 ¶](#_mm256_castpd128_pd256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1640)

```
_mm256_castpd128_pd256 :: proc "c" (a: #simd[2]f64) -> #simd[4]f64 {…}
```

 

Casts vector of type \_\_m128d to type \_\_m256d;
the upper 128 bits of the result are indeterminate.

In the Intel documentation, the upper bits are declared to be "undefined".

### [\_mm256\_castpd256\_pd128 ¶](#_mm256_castpd256_pd128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1616)

```
_mm256_castpd256_pd128 :: proc "c" (a: #simd[4]f64) -> #simd[2]f64 {…}
```

 

Casts vector of type \_\_m256d to type \_\_m128d.

### [\_mm256\_castpd\_ps ¶](#_mm256_castpd_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1574)

```
_mm256_castpd_ps :: proc "c" (a: #simd[4]f64) -> #simd[8]f32 {…}
```

 

Cast vector of type \_\_m256d to type \_\_m256.

### [\_mm256\_castpd\_si256 ¶](#_mm256_castpd_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1598)

```
_mm256_castpd_si256 :: proc "c" (a: #simd[4]f64) -> #simd[4]i64 {…}
```

 

Casts vector of type \_\_m256d to type \_\_m256i.

### [\_mm256\_castps128\_ps256 ¶](#_mm256_castps128_ps256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1631)

```
_mm256_castps128_ps256 :: proc "c" (a: #simd[4]f32) -> #simd[8]f32 {…}
```

 

Casts vector of type \_\_m128 to type \_\_m256;
the upper 128 bits of the result are indeterminate.

In the Intel documentation, the upper bits are declared to be "undefined".

### [\_mm256\_castps256\_ps128 ¶](#_mm256_castps256_ps128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1610)

```
_mm256_castps256_ps128 :: proc "c" (a: #simd[8]f32) -> #simd[4]f32 {…}
```

 

Casts vector of type \_\_m256 to type \_\_m128.

### [\_mm256\_castps\_pd ¶](#_mm256_castps_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1580)

```
_mm256_castps_pd :: proc "c" (a: #simd[8]f32) -> #simd[4]f64 {…}
```

 

Cast vector of type \_\_m256 to type \_\_m256d.

### [\_mm256\_castps\_si256 ¶](#_mm256_castps_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1586)

```
_mm256_castps_si256 :: proc "c" (a: #simd[8]f32) -> #simd[4]i64 {…}
```

 

Casts vector of type \_\_m256 to type \_\_m256i.

### [\_mm256\_castsi128\_si256 ¶](#_mm256_castsi128_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1649)

```
_mm256_castsi128_si256 :: proc "c" (a: #simd[2]i64) -> #simd[4]i64 {…}
```

 

Casts vector of type \_\_m128i to type \_\_m256i;
the upper 128 bits of the result are indeterminate.

In the Intel documentation, the upper bits are declared to be "undefined".

### [\_mm256\_castsi256\_pd ¶](#_mm256_castsi256_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1604)

```
_mm256_castsi256_pd :: proc "c" (a: #simd[4]i64) -> #simd[4]f64 {…}
```

 

Casts vector of type \_\_m256i to type \_\_m256d.

### [\_mm256\_castsi256\_ps ¶](#_mm256_castsi256_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1592)

```
_mm256_castsi256_ps :: proc "c" (a: #simd[4]i64) -> #simd[8]f32 {…}
```

 

Casts vector of type \_\_m256i to type \_\_m256.

### [\_mm256\_castsi256\_si128 ¶](#_mm256_castsi256_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1622)

```
_mm256_castsi256_si128 :: proc "c" (a: #simd[4]i64) -> #simd[2]i64 {…}
```

 

Casts vector of type \_\_m256i to type \_\_m128i.

### [\_mm256\_ceil\_pd ¶](#_mm256_ceil_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L216)

```
_mm256_ceil_pd :: proc "c" (a: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Rounds packed double-precision (64-bit) floating point elements in `a`
toward positive infinity.

### [\_mm256\_ceil\_ps ¶](#_mm256_ceil_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L250)

```
_mm256_ceil_ps :: proc "c" (a: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Rounds packed single-precision (32-bit) floating point elements in `a`
toward positive infinity.

### [\_mm256\_cmp\_pd ¶](#_mm256_cmp_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L456)

```
_mm256_cmp_pd :: proc "c" (a, b: #simd[4]f64, $IMM5: u8) -> #simd[4]f64 {…}
```

 

Compares packed double-precision (64-bit) floating-point elements in `a` and `b` based on the comparison operand specified by `IMM5`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_cmp\_pd)

### [\_mm256\_cmp\_ps ¶](#_mm256_cmp_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L472)

```
_mm256_cmp_ps :: proc "c" (a, b: #simd[8]f32, $IMM5: u8) -> #simd[8]f32 {…}
```

 

Compares packed single-precision (32-bit) floating-point elements in `a` and `b` based on the comparison operand specified by `IMM5`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_cmp\_ps)

### [\_mm256\_cvtepi32\_pd ¶](#_mm256_cvtepi32_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L502)

```
_mm256_cvtepi32_pd :: proc "c" (a: #simd[2]i64) -> #simd[4]f64 {…}
```

 

Converts packed 32-bit integers in `a` to packed double-precision (64-bit) floating-point elements.

### [\_mm256\_cvtepi32\_ps ¶](#_mm256_cvtepi32_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L508)

```
_mm256_cvtepi32_ps :: proc "c" (a: #simd[4]i64) -> #simd[8]f32 {…}
```

 

Converts packed 32-bit integers in `a` to packed single-precision (32-bit) floating-point elements.

### [\_mm256\_cvtpd\_epi32 ¶](#_mm256_cvtpd_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L550)

```
_mm256_cvtpd_epi32 :: proc "c" (a: #simd[4]f64) -> #simd[2]i64 {…}
```

 

Converts packed double-precision (64-bit) floating-point elements in `a` to packed 32-bit integers.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_cvtpd\_epi32)

### [\_mm256\_cvtpd\_ps ¶](#_mm256_cvtpd_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L514)

```
_mm256_cvtpd_ps :: proc "c" (a: #simd[4]f64) -> #simd[4]f32 {…}
```

 

Converts packed double-precision (64-bit) floating-point elements in `a` to packed single-precision (32-bit) floating-point elements.

### [\_mm256\_cvtps\_epi32 ¶](#_mm256_cvtps_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L522)

```
_mm256_cvtps_epi32 :: proc "c" (a: #simd[8]f32) -> #simd[4]i64 {…}
```

 

Converts packed single-precision (32-bit) floating-point elements in `a` to packed 32-bit integers.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_cvtps\_epi32)

### [\_mm256\_cvtps\_pd ¶](#_mm256_cvtps_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L528)

```
_mm256_cvtps_pd :: proc "c" (a: #simd[4]f32) -> #simd[4]f64 {…}
```

 

Converts packed single-precision (32-bit) floating-point elements in `a` to packed double-precision (64-bit) floating-point elements.

### [\_mm256\_cvtsd\_f64 ¶](#_mm256_cvtsd_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L534)

```
_mm256_cvtsd_f64 :: proc "c" (a: #simd[4]f64) -> f64 {…}
```

 

Returns the first element of the input vector of `[4 x double]`.

### [\_mm256\_cvtsi256\_si32 ¶](#_mm256_cvtsi256_si32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L603)

```
_mm256_cvtsi256_si32 :: proc "c" (a: #simd[4]i64) -> i32 {…}
```

### [\_mm256\_cvtss\_f32 ¶](#_mm256_cvtss_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1800)

```
_mm256_cvtss_f32 :: proc "c" (a: #simd[8]f32) -> f32 {…}
```

 

Returns the first element of the input vector of `[8 x float]`.

### [\_mm256\_cvttpd\_epi32 ¶](#_mm256_cvttpd_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L542)

```
_mm256_cvttpd_epi32 :: proc "c" (a: #simd[4]f64) -> #simd[2]i64 {…}
```

 

Converts packed double-precision (64-bit) floating-point elements in `a` to packed 32-bit integers with truncation.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_cvttpd\_epi32)

### [\_mm256\_cvttps\_epi32 ¶](#_mm256_cvttps_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L558)

```
_mm256_cvttps_epi32 :: proc "c" (a: #simd[8]f32) -> #simd[4]i64 {…}
```

 

Converts packed single-precision (32-bit) floating-point elements in `a` to packed 32-bit integers with truncation.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_cvttps\_epi32)

### [\_mm256\_div\_pd ¶](#_mm256_div_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L189)

```
_mm256_div_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Computes the division of each of the 4 packed 64-bit floating-point elements
in `a` by the corresponding packed elements in `b`.

### [\_mm256\_div\_ps ¶](#_mm256_div_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L182)

```
_mm256_div_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Computes the division of each of the 8 packed 32-bit floating-point elements
in `a` by the corresponding packed elements in `b`.

### [\_mm256\_dp\_ps ¶](#_mm256_dp_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L339)

```
_mm256_dp_ps :: proc "c" (a, b: #simd[8]f32, $IMM8: u8) -> #simd[8]f32 {…}
```

 

Conditionally multiplies the packed single-precision (32-bit) floating-point elements in `a` and `b` using the high 4 bits in `imm8`,
sum the four products, and conditionally return the sum
using the low 4 bits of `imm8`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_dp\_ps)

### [\_mm256\_extract\_epi32 ¶](#_mm256_extract_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L598)

```
_mm256_extract_epi32 :: proc "c" (a: #simd[4]i64, $INDEX: u8) -> i32 {…}
```

 

Extracts a 32-bit integer from `a`, selected with `INDEX`.

### [\_mm256\_extract\_epi64 ¶](#_mm256_extract_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1812)

```
_mm256_extract_epi64 :: proc "c" (a: #simd[4]i64, $idx: u32) -> i64 {…}
```

### [\_mm256\_extractf128\_pd ¶](#_mm256_extractf128_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L576)

```
_mm256_extractf128_pd :: proc "c" (a: #simd[4]f64, $IMM1: u8) -> #simd[2]f64 {…}
```

 

Extracts 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from `a`, selected with `imm8`.

### [\_mm256\_extractf128\_ps ¶](#_mm256_extractf128_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L566)

```
_mm256_extractf128_ps :: proc "c" (a: #simd[8]f32, $IMM1: u8) -> #simd[4]f32 {…}
```

 

Extracts 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from `a`, selected with `imm8`.

### [\_mm256\_extractf128\_si256 ¶](#_mm256_extractf128_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L586)

```
_mm256_extractf128_si256 :: proc "c" (a: #simd[4]i64, $IMM1: u8) -> #simd[2]i64 {…}
```

 

Extracts 128 bits (composed of integer data) from `a`, selected with `imm8`.

### [\_mm256\_floor\_pd ¶](#_mm256_floor_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L223)

```
_mm256_floor_pd :: proc "c" (a: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Rounds packed double-precision (64-bit) floating point elements in `a`
toward negative infinity.

### [\_mm256\_floor\_ps ¶](#_mm256_floor_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L257)

```
_mm256_floor_ps :: proc "c" (a: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Rounds packed single-precision (32-bit) floating point elements in `a`
toward negative infinity.

### [\_mm256\_hadd\_pd ¶](#_mm256_hadd_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L348)

```
_mm256_hadd_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Horizontal addition of adjacent pairs in the two packed vectors
of 4 64-bit floating points `a` and `b`.
In the result, sums of elements from `a` are returned in even locations,
while sums of elements from `b` are returned in odd locations.

### [\_mm256\_hadd\_ps ¶](#_mm256_hadd_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L362)

```
_mm256_hadd_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Horizontal addition of adjacent pairs in the two packed vectors
of 8 32-bit floating points `a` and `b`.
In the result, sums of elements from `a` are returned in locations of
indices 0, 1, 4, 5; while sums of elements from `b` are locations
2, 3, 6, 7.

### [\_mm256\_hsub\_pd ¶](#_mm256_hsub_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L373)

```
_mm256_hsub_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Horizontal subtraction of adjacent pairs in the two packed vectors
of 4 64-bit floating points `a` and `b`.
In the result, sums of elements from `a` are returned in even locations,
while sums of elements from `b` are returned in odd locations.

### [\_mm256\_hsub\_ps ¶](#_mm256_hsub_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L385)

```
_mm256_hsub_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Horizontal subtraction of adjacent pairs in the two packed vectors
of 8 32-bit floating points `a` and `b`.
In the result, sums of elements from `a` are returned in locations of
indices 0, 1, 4, 5; while sums of elements from `b` are locations
2, 3, 6, 7.

### [\_mm256\_insert\_epi16 ¶](#_mm256_insert_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L851)

```
_mm256_insert_epi16 :: proc "c" (a: #simd[4]i64, i: i16, $INDEX: u8) -> #simd[4]i64 {…}
```

 

Copies `a` to result, and inserts the 16-bit integer `i` into result at the location specified by `index`.

### [\_mm256\_insert\_epi32 ¶](#_mm256_insert_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L857)

```
_mm256_insert_epi32 :: proc "c" (a: #simd[4]i64, i: i32, $INDEX: u8) -> #simd[4]i64 {…}
```

 

Copies `a` to result, and inserts the 32-bit integer `i` into result at the location specified by `index`.

### [\_mm256\_insert\_epi64 ¶](#_mm256_insert_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1807)

```
_mm256_insert_epi64 :: proc "c" (a: #simd[4]i64, i: i64, $idx: u32) -> #simd[4]i64 {…}
```

### [\_mm256\_insert\_epi8 ¶](#_mm256_insert_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L845)

```
_mm256_insert_epi8 :: proc "c" (a: #simd[4]i64, i: i8, $INDEX: u8) -> #simd[4]i64 {…}
```

 

Copies `a` to result, and inserts the 8-bit integer `i` into result at the location specified by `index`.

### [\_mm256\_insertf128\_pd ¶](#_mm256_insertf128_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L809)

```
_mm256_insertf128_pd :: proc "c" (a: #simd[4]f64, b: #simd[2]f64, $IMM1: u8) -> #simd[4]f64 {…}
```

 

Copies `a` to result, then inserts 128 bits (composed of 2 packed
double-precision (64-bit) floating-point elements) from `b` into result
at the location specified by `imm8`.

### [\_mm256\_insertf128\_ps ¶](#_mm256_insertf128_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L789)

```
_mm256_insertf128_ps :: proc "c" (a: #simd[8]f32, b: #simd[4]f32, $IMM1: u8) -> #simd[8]f32 {…}
```

 

Copies `a` to result, then inserts 128 bits (composed of 4 packed
single-precision (32-bit) floating-point elements) from `b` into result
at the location specified by `imm8`.

### [\_mm256\_insertf128\_si256 ¶](#_mm256_insertf128_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L827)

```
_mm256_insertf128_si256 :: proc "c" (a: #simd[4]i64, b: #simd[2]i64, $IMM1: u8) -> #simd[4]i64 {…}
```

 

Copies `a` to result, then inserts 128 bits from `b` into result at the location specified by `imm8`.

### [\_mm256\_lddqu\_si256 ¶](#_mm256_lddqu_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1062)

```
_mm256_lddqu_si256 :: proc "c" (mem_addr: ^#simd[4]i64) -> #simd[4]i64 {…}
```

 

Loads 256-bits of integer data from unaligned memory into result.
This intrinsic may perform better than `_mm256_loadu_si256` when the
data crosses a cache line boundary.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_lddqu\_si256)

### [\_mm256\_load\_pd ¶](#_mm256_load_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L869)

```
_mm256_load_pd :: proc "c" (mem_addr: ^f64) -> #simd[4]f64 {…}
```

 

Loads 256-bits (composed of 4 packed double-precision (64-bit) floating-point elements) from memory into result.
`mem_addr` must be aligned on a 32-byte boundary or a
general-protection exception may be generated.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_load\_pd)

### [\_mm256\_load\_ps ¶](#_mm256_load_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L889)

```
_mm256_load_ps :: proc "c" (mem_addr: ^f32) -> #simd[8]f32 {…}
```

 

Loads 256-bits (composed of 8 packed single-precision (32-bit) floating-point elements) from memory into result.
`mem_addr` must be aligned on a 32-byte boundary or a
general-protection exception may be generated.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_load\_ps)

### [\_mm256\_load\_si256 ¶](#_mm256_load_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L937)

```
_mm256_load_si256 :: proc "c" (mem_addr: ^#simd[4]i64) -> #simd[4]i64 {…}
```

 

Loads 256-bits of integer data from memory into result.
`mem_addr` must be aligned on a 32-byte boundary or a
general-protection exception may be generated.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_load\_si256)

### [\_mm256\_loadu2\_m128 ¶](#_mm256_loadu2_m128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1742)

```
_mm256_loadu2_m128 :: proc "c" (hiaddr, loaddr: ^f32) -> #simd[8]f32 {…}
```

 

Loads two 128-bit values (composed of 4 packed single-precision (32-bit) floating-point elements) from memory, and combine them into a 256-bit value.
`hiaddr` and `loaddr` do not need to be aligned on any particular boundary.

### [\_mm256\_loadu2\_m128d ¶](#_mm256_loadu2_m128d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1750)

```
_mm256_loadu2_m128d :: proc "c" (hiaddr, loaddr: ^f64) -> #simd[4]f64 {…}
```

 

Loads two 128-bit values (composed of 2 packed double-precision (64-bit) floating-point elements) from memory, and combine them into a 256-bit value.
`hiaddr` and `loaddr` do not need to be aligned on any particular boundary.

### [\_mm256\_loadu2\_m128i ¶](#_mm256_loadu2_m128i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1758)

```
_mm256_loadu2_m128i :: proc "c" (hiaddr, loaddr: ^#simd[2]i64) -> #simd[4]i64 {…}
```

 

Loads two 128-bit values (composed of integer data) from memory, and combine them into a 256-bit value.
`hiaddr` and `loaddr` do not need to be aligned on any particular boundary.

### [\_mm256\_loadu\_pd ¶](#_mm256_loadu_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L906)

```
_mm256_loadu_pd :: proc "c" (mem_addr: ^f64) -> #simd[4]f64 {…}
```

 

Loads 256-bits (composed of 4 packed double-precision (64-bit) floating-point elements) from memory into result.
`mem_addr` does not need to be aligned on any particular boundary.

### [\_mm256\_loadu\_ps ¶](#_mm256_loadu_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L920)

```
_mm256_loadu_ps :: proc "c" (mem_addr: ^f32) -> #simd[8]f32 {…}
```

 

Loads 256-bits (composed of 8 packed single-precision (32-bit) floating-point elements) from memory into result.
`mem_addr` does not need to be aligned on any particular boundary.

### [\_mm256\_loadu\_si256 ¶](#_mm256_loadu_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L954)

```
_mm256_loadu_si256 :: proc "c" (mem_addr: ^#simd[4]i64) -> #simd[4]i64 {…}
```

 

Loads 256-bits of integer data from memory into result.
`mem_addr` does not need to be aligned on any particular boundary.

### [\_mm256\_maskload\_pd ¶](#_mm256_maskload_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L969)

```
_mm256_maskload_pd :: proc "c" (mem_addr: ^f64, mask: #simd[4]i64) -> #simd[4]f64 {…}
```

 

Loads packed double-precision (64-bit) floating-point elements from memory
into result using `mask` (elements are zeroed out when the high bit of the
corresponding element is not set).

### [\_mm256\_maskload\_ps ¶](#_mm256_maskload_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1004)

```
_mm256_maskload_ps :: proc "c" (mem_addr: ^f32, mask: #simd[4]i64) -> #simd[8]f32 {…}
```

 

Loads packed single-precision (32-bit) floating-point elements from memory
into result using `mask` (elements are zeroed out when the high bit of the
corresponding element is not set).

### [\_mm256\_maskstore\_pd ¶](#_mm256_maskstore_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L977)

```
_mm256_maskstore_pd :: proc "c" (mem_addr: ^f64, mask: #simd[4]i64, a: #simd[4]f64) {…}
```

 

Stores packed double-precision (64-bit) floating-point elements from `a`
into memory using `mask`.

### [\_mm256\_maskstore\_ps ¶](#_mm256_maskstore_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1012)

```
_mm256_maskstore_ps :: proc "c" (mem_addr: ^f32, mask: #simd[4]i64, a: #simd[8]f32) {…}
```

 

Stores packed single-precision (32-bit) floating-point elements from `a`
into memory using `mask`.

### [\_mm256\_max\_pd ¶](#_mm256_max_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L105)

```
_mm256_max_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Compares packed double-precision (64-bit) floating-point elements in `a` and `b`, and returns packed maximum values

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_max\_pd)

### [\_mm256\_max\_ps ¶](#_mm256_max_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L113)

```
_mm256_max_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Compares packed single-precision (32-bit) floating-point elements in `a` and `b`, and returns packed maximum values

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_max\_ps)

### [\_mm256\_min\_pd ¶](#_mm256_min_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L121)

```
_mm256_min_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Compares packed double-precision (64-bit) floating-point elements in `a` and `b`, and returns packed minimum values

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_min\_pd)

### [\_mm256\_min\_ps ¶](#_mm256_min_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L129)

```
_mm256_min_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Compares packed single-precision (32-bit) floating-point elements in `a` and `b`, and returns packed minimum values

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_min\_ps)

### [\_mm256\_movedup\_pd ¶](#_mm256_movedup_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1051)

```
_mm256_movedup_pd :: proc "c" (a: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Duplicate even-indexed double-precision (64-bit) floating-point elements from `a`, and returns the results.

### [\_mm256\_movehdup\_ps ¶](#_mm256_movehdup_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1039)

```
_mm256_movehdup_ps :: proc "c" (a: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Duplicate odd-indexed single-precision (32-bit) floating-point elements from `a`, and returns the results.

### [\_mm256\_moveldup\_ps ¶](#_mm256_moveldup_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1045)

```
_mm256_moveldup_ps :: proc "c" (a: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Duplicate even-indexed single-precision (32-bit) floating-point elements from `a`, and returns the results.

### [\_mm256\_movemask\_pd ¶](#_mm256_movemask_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1369)

```
_mm256_movemask_pd :: proc "c" (a: #simd[4]f64) -> i32 {…}
```

 

Sets each bit of the returned mask based on the most significant bit of the
corresponding packed double-precision (64-bit) floating-point element in
`a`.

### [\_mm256\_movemask\_ps ¶](#_mm256_movemask_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1378)

```
_mm256_movemask_ps :: proc "c" (a: #simd[8]f32) -> i32 {…}
```

 

Sets each bit of the returned mask based on the most significant bit of the
corresponding packed single-precision (32-bit) floating-point element in
`a`.

### [\_mm256\_mul\_pd ¶](#_mm256_mul_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L137)

```
_mm256_mul_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Multiplies packed double-precision (64-bit) floating-point elements in `a` and `b`.

### [\_mm256\_mul\_ps ¶](#_mm256_mul_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L143)

```
_mm256_mul_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Multiplies packed single-precision (32-bit) floating-point elements in `a` and `b`.

### [\_mm256\_or\_pd ¶](#_mm256_or_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L36)

```
_mm256_or_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Computes the bitwise OR packed double-precision (64-bit) floating-point elements in `a` and `b`.

### [\_mm256\_or\_ps ¶](#_mm256_or_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L44)

```
_mm256_or_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Computes the bitwise OR packed single-precision (32-bit) floating-point elements in `a` and `b`.

### [\_mm256\_permute2f128\_pd ¶](#_mm256_permute2f128_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L723)

```
_mm256_permute2f128_pd :: proc "c" (a, b: #simd[4]f64, $IMM8: u8) -> #simd[4]f64 {…}
```

 

Shuffles 256 bits (composed of 4 packed double-precision (64-bit) floating-point elements) selected by `imm8` from `a` and `b`.

### [\_mm256\_permute2f128\_ps ¶](#_mm256_permute2f128_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L713)

```
_mm256_permute2f128_ps :: proc "c" (a, b: #simd[8]f32, $IMM8: u8) -> #simd[8]f32 {…}
```

 

Shuffles 256 bits (composed of 8 packed single-precision (32-bit) floating-point elements) selected by `imm8` from `a` and `b`.

### [\_mm256\_permute2f128\_si256 ¶](#_mm256_permute2f128_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L733)

```
_mm256_permute2f128_si256 :: proc "c" (a, b: #simd[4]i64, $IMM8: u8) -> #simd[4]i64 {…}
```

 

Shuffles 128-bits (composed of integer data) selected by `imm8` from `a` and `b`.

### [\_mm256\_permute\_pd ¶](#_mm256_permute_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L687)

```
_mm256_permute_pd :: proc "c" (a: #simd[4]f64, $IMM4: u8) -> #simd[4]f64 {…}
```

 

Shuffles double-precision (64-bit) floating-point elements in `a` within 128-bit lanes using the control in `imm8`.

### [\_mm256\_permute\_ps ¶](#_mm256_permute_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L641)

```
_mm256_permute_ps :: proc "c" (a: #simd[8]f32, $IMM8: u8) -> #simd[8]f32 {…}
```

 

Shuffles single-precision (32-bit) floating-point elements in `a` within 128-bit lanes using the control in `imm8`.

### [\_mm256\_permutevar\_pd ¶](#_mm256_permutevar_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L673)

```
_mm256_permutevar_pd :: proc "c" (a: #simd[4]f64, b: #simd[4]i64) -> #simd[4]f64 {…}
```

 

Shuffles double-precision (64-bit) floating-point elements in `a` within 256-bit lanes using the control in `b`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_permutevar\_pd)

### [\_mm256\_permutevar\_ps ¶](#_mm256_permutevar_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L627)

```
_mm256_permutevar_ps :: proc "c" (a: #simd[8]f32, b: #simd[4]i64) -> #simd[8]f32 {…}
```

 

Shuffles single-precision (32-bit) floating-point elements in `a` within 128-bit lanes using the control in `b`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_permutevar\_ps)

### [\_mm256\_rcp\_ps ¶](#_mm256_rcp_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1131)

```
_mm256_rcp_ps :: proc "c" (a: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Computes the approximate reciprocal of packed single-precision (32-bit) floating-point elements in `a`, and returns the results. The maximum
relative error for this approximation is less than 1.5\*2^-12.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_rcp\_ps)

### [\_mm256\_round\_pd ¶](#_mm256_round_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L209)

```
_mm256_round_pd :: proc "c" (a: #simd[4]f64, $ROUNDING: u8) -> #simd[4]f64 {…}
```

 

Rounds packed double-precision (64-bit) floating point elements in `a`
according to the flag `ROUNDING`. The value of `ROUNDING` may be as follows:

`0x00`: Round to the nearest whole number.
`0x01`: Round down, toward negative infinity.
`0x02`: Round up, toward positive infinity.
`0x03`: Truncate the values.

For a complete list of options, check [the LLVM docs][llvm\_docs].

[llvm\_docs]: https://github.com/llvm-mirror/clang/blob/dcd8d797b20291f1a6b3e0ddda085aa2bbb382a8/lib/Headers/avxintrin.h#L382

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_round\_pd)

### [\_mm256\_round\_ps ¶](#_mm256_round_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L243)

```
_mm256_round_ps :: proc(a: #simd[8]f32, $ROUNDING: u8) -> #simd[8]f32 {…}
```

 

Rounds packed single-precision (32-bit) floating point elements in `a`
according to the flag `ROUNDING`. The value of `ROUNDING` may be as follows:

`0x00`: Round to the nearest whole number.
`0x01`: Round down, toward negative infinity.
`0x02`: Round up, toward positive infinity.
`0x03`: Truncate the values.

For a complete list of options, check [the LLVM docs][llvm\_docs].

[llvm\_docs]: https://github.com/llvm-mirror/clang/blob/dcd8d797b20291f1a6b3e0ddda085aa2bbb382a8/lib/Headers/avxintrin.h#L382

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_round\_ps)

### [\_mm256\_rsqrt\_ps ¶](#_mm256_rsqrt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1141)

```
_mm256_rsqrt_ps :: proc "c" (a: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Computes the approximate reciprocal square root of packed single-precision
(32-bit) floating-point elements in `a`, and returns the results.
The maximum relative error for this approximation is less than 1.5\*2^-12.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_rsqrt\_ps)

### [\_mm256\_set1\_epi16 ¶](#_mm256_set1_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1552)

```
_mm256_set1_epi16 :: proc "c" (a: i16) -> #simd[4]i64 {…}
```

 

Broadcasts 16-bit integer `a` to all elements of returned vector.
This intrinsic may generate the `vpbroadcastw`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_set1\_epi16)

### [\_mm256\_set1\_epi32 ¶](#_mm256_set1_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1559)

```
_mm256_set1_epi32 :: proc "c" (a: i32) -> #simd[4]i64 {…}
```

 

Broadcasts 32-bit integer `a` to all elements of returned vector.
This intrinsic may generate the `vpbroadcastd`.

### [\_mm256\_set1\_epi64x ¶](#_mm256_set1_epi64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1568)

```
_mm256_set1_epi64x :: proc "c" (a: i64) -> #simd[4]i64 {…}
```

 

Broadcasts 64-bit integer `a` to all elements of returned vector.
This intrinsic may generate the `vpbroadcastq`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_set1\_epi64x)

### [\_mm256\_set1\_epi8 ¶](#_mm256_set1_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1543)

```
_mm256_set1_epi8 :: proc "c" (a: i8) -> #simd[4]i64 {…}
```

 

Broadcasts 8-bit integer `a` to all elements of returned vector.
This intrinsic may generate the `vpbroadcastb`.

### [\_mm256\_set1\_pd ¶](#_mm256_set1_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1530)

```
_mm256_set1_pd :: proc "c" (a: f64) -> #simd[4]f64 {…}
```

 

Broadcasts double-precision (64-bit) floating-point value `a` to all elements of returned vector.

### [\_mm256\_set1\_ps ¶](#_mm256_set1_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1536)

```
_mm256_set1_ps :: proc "c" (a: f32) -> #simd[8]f32 {…}
```

 

Broadcasts single-precision (32-bit) floating-point value `a` to all elements of returned vector.

### [\_mm256\_set\_epi16 ¶](#_mm256_set_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1444)

```
_mm256_set_epi16 :: proc "c" (
	e00, e01, e02, e03, e04, e05, e06, e07: i16, 
	e08, e09, e10, e11, e12, e13, e14, 
	e15:                                    i16, 
) -> #simd[4]i64 {…}
```

 

Sets packed 16-bit integers in returned vector with the supplied values.

### [\_mm256\_set\_epi32 ¶](#_mm256_set_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1458)

```
_mm256_set_epi32 :: proc "c" (
	e0, e1, e2, e3, e4, e5, e6, 
	e7:                         i32, 
) -> #simd[4]i64 {…}
```

 

Sets packed 32-bit integers in returned vector with the supplied values.

### [\_mm256\_set\_epi64x ¶](#_mm256_set_epi64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1464)

```
_mm256_set_epi64x :: proc "c" (a: i64, b: i64, c: i64, d: i64) -> #simd[4]i64 {…}
```

 

Sets packed 64-bit integers in returned vector with the supplied values.

### [\_mm256\_set\_epi8 ¶](#_mm256_set_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1428)

```
_mm256_set_epi8 :: proc "c" (
	e00, e01, e02, e03, e04, e05, e06, e07: i8, 
	e08, e09, e10, e11, e12, e13, e14, e15: i8, 
	e16, e17, e18, e19, e20, e21, e22, e23: i8, 
	e24, e25, e26, e27, e28, e29, e30, 
	e31:                                    i8, 
) -> #simd[4]i64 {…}
```

 

Sets packed 8-bit integers in returned vector with the supplied values.

### [\_mm256\_set\_m128 ¶](#_mm256_set_m128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1701)

```
_mm256_set_m128 :: proc "c" (hi: #simd[4]f32, lo: #simd[4]f32) -> #simd[8]f32 {…}
```

 

Sets packed \_\_m256 returned vector with the supplied values.

### [\_mm256\_set\_m128d ¶](#_mm256_set_m128d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1707)

```
_mm256_set_m128d :: proc "c" (hi: #simd[2]f64, lo: #simd[2]f64) -> #simd[4]f64 {…}
```

 

Sets packed \_\_m256d returned vector with the supplied values.

### [\_mm256\_set\_m128i ¶](#_mm256_set_m128i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1715)

```
_mm256_set_m128i :: proc "c" (hi: #simd[2]i64, lo: #simd[2]i64) -> #simd[4]i64 {…}
```

 

Sets packed \_\_m256i returned vector with the supplied values.

### [\_mm256\_set\_pd ¶](#_mm256_set_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1406)

```
_mm256_set_pd :: proc "c" (a: f64, b: f64, c: f64, d: f64) -> #simd[4]f64 {…}
```

 

Sets packed double-precision (64-bit) floating-point elements in returned
vector with the supplied values.

### [\_mm256\_set\_ps ¶](#_mm256_set_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1413)

```
_mm256_set_ps :: proc "c" (
	a, b, c, d, e, f, g, 
	h:                   f32, 
) -> #simd[8]f32 {…}
```

 

Sets packed single-precision (32-bit) floating-point elements in returned
vector with the supplied values.

### [\_mm256\_setr\_epi16 ¶](#_mm256_setr_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1502)

```
_mm256_setr_epi16 :: proc "c" (
	e00, e01, e02, e03, e04, e05, e06, e07: i16, 
	e08, e09, e10, e11, e12, e13, e14, 
	e15:                                    i16, 
) -> #simd[4]i64 {…}
```

 

Sets packed 16-bit integers in returned vector with the supplied values in
reverse order.

### [\_mm256\_setr\_epi32 ¶](#_mm256_setr_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1517)

```
_mm256_setr_epi32 :: proc "c" (
	e0, e1, e2, e3, e4, e5, e6, 
	e7:                         i32, 
) -> #simd[4]i64 {…}
```

 

Sets packed 32-bit integers in returned vector with the supplied values in
reverse order.

### [\_mm256\_setr\_epi64x ¶](#_mm256_setr_epi64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1524)

```
_mm256_setr_epi64x :: proc "c" (a: i64, b: i64, c: i64, d: i64) -> #simd[4]i64 {…}
```

 

Sets packed 64-bit integers in returned vector with the supplied values in
reverse order.

### [\_mm256\_setr\_epi8 ¶](#_mm256_setr_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1485)

```
_mm256_setr_epi8 :: proc "c" (
	e00, e01, e02, e03, e04, e05, e06, e07: i8, 
	e08, e09, e10, e11, e12, e13, e14, e15: i8, 
	e16, e17, e18, e19, e20, e21, e22, e23: i8, 
	e24, e25, e26, e27, e28, e29, e30, 
	e31:                                    i8, 
) -> #simd[4]i64 {…}
```

 

Sets packed 8-bit integers in returned vector with the supplied values in
reverse order.

### [\_mm256\_setr\_m128 ¶](#_mm256_setr_m128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1723)

```
_mm256_setr_m128 :: proc "c" (lo: #simd[4]f32, hi: #simd[4]f32) -> #simd[8]f32 {…}
```

 

Sets packed \_\_m256 returned vector with the supplied values.

### [\_mm256\_setr\_m128d ¶](#_mm256_setr_m128d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1729)

```
_mm256_setr_m128d :: proc "c" (lo: #simd[2]f64, hi: #simd[2]f64) -> #simd[4]f64 {…}
```

 

Sets packed \_\_m256d returned vector with the supplied values.

### [\_mm256\_setr\_m128i ¶](#_mm256_setr_m128i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1735)

```
_mm256_setr_m128i :: proc "c" (lo: #simd[2]i64, hi: #simd[2]i64) -> #simd[4]i64 {…}
```

 

Sets packed \_\_m256i returned vector with the supplied values.

### [\_mm256\_setr\_pd ¶](#_mm256_setr_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1471)

```
_mm256_setr_pd :: proc "c" (a: f64, b: f64, c: f64, d: f64) -> #simd[4]f64 {…}
```

 

Sets packed double-precision (64-bit) floating-point elements in returned
vector with the supplied values in reverse order.

### [\_mm256\_setr\_ps ¶](#_mm256_setr_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1478)

```
_mm256_setr_ps :: proc "c" (
	a, b, c, d, e, f, g, 
	h:                   f32, 
) -> #simd[8]f32 {…}
```

 

Sets packed single-precision (32-bit) floating-point elements in returned
vector with the supplied values in reverse order.

### [\_mm256\_setzero\_pd ¶](#_mm256_setzero_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1387)

```
_mm256_setzero_pd :: proc "c" () -> #simd[4]f64 {…}
```

 

Returns vector of type \_\_m256d with all elements set to zero.

### [\_mm256\_setzero\_ps ¶](#_mm256_setzero_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1393)

```
_mm256_setzero_ps :: proc "c" () -> #simd[8]f32 {…}
```

 

Returns vector of type \_\_m256 with all elements set to zero.

### [\_mm256\_setzero\_si256 ¶](#_mm256_setzero_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1399)

```
_mm256_setzero_si256 :: proc "c" () -> #simd[4]i64 {…}
```

 

Returns vector of type \_\_m256i with all elements set to zero.

### [\_mm256\_shuffle\_pd ¶](#_mm256_shuffle_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L52)

```
_mm256_shuffle_pd :: proc "c" (a, b: #simd[4]f64, $MASK: u8) -> #simd[4]f64 {…}
```

 

Shuffles double-precision (64-bit) floating-point elements within 128-bit lanes using the control in `imm8`.

### [\_mm256\_shuffle\_ps ¶](#_mm256_shuffle_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L66)

```
_mm256_shuffle_ps :: proc "c" (a, b: #simd[8]f32, $MASK: u8) -> #simd[8]f32 {…}
```

 

Shuffles single-precision (32-bit) floating-point elements in `a` within 128-bit lanes using the control in `imm8`.

### [\_mm256\_sqrt\_pd ¶](#_mm256_sqrt_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L273)

```
_mm256_sqrt_pd :: proc "c" (a: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Returns the square root of packed double-precision (64-bit) floating point elements in `a`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_sqrt\_pd)

### [\_mm256\_sqrt\_ps ¶](#_mm256_sqrt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L265)

```
_mm256_sqrt_ps :: proc "c" (a: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Returns the square root of packed single-precision (32-bit) floating point elements in `a`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_sqrt\_ps)

### [\_mm256\_store\_pd ¶](#_mm256_store_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L879)

```
_mm256_store_pd :: proc "c" (mem_addr: ^f64, a: #simd[4]f64) {…}
```

 

Stores 256-bits (composed of 4 packed double-precision (64-bit) floating-point elements) from `a` into memory.
`mem_addr` must be aligned on a 32-byte boundary or a
general-protection exception may be generated.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_store\_pd)

### [\_mm256\_store\_ps ¶](#_mm256_store_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L899)

```
_mm256_store_ps :: proc "c" (mem_addr: ^f32, a: #simd[8]f32) {…}
```

 

Stores 256-bits (composed of 8 packed single-precision (32-bit) floating-point elements) from `a` into memory.
`mem_addr` must be aligned on a 32-byte boundary or a
general-protection exception may be generated.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_store\_ps)

### [\_mm256\_store\_si256 ¶](#_mm256_store_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L947)

```
_mm256_store_si256 :: proc "c" (mem_addr: ^#simd[4]i64, a: #simd[4]i64) {…}
```

 

Stores 256-bits of integer data from `a` into memory.
`mem_addr` must be aligned on a 32-byte boundary or a
general-protection exception may be generated.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_store\_si256)

### [\_mm256\_storeu2\_m128 ¶](#_mm256_storeu2_m128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1768)

```
_mm256_storeu2_m128 :: proc "c" (hiaddr, loaddr: ^f32, a: #simd[8]f32) {…}
```

 

Stores the high and low 128-bit halves (each composed of 4 packed
single-precision (32-bit) floating-point elements) from `a` into memory two
different 128-bit locations.
`hiaddr` and `loaddr` do not need to be aligned on any particular boundary.

### [\_mm256\_storeu2\_m128d ¶](#_mm256_storeu2_m128d) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1780)

```
_mm256_storeu2_m128d :: proc "c" (hiaddr, loaddr: ^f64, a: #simd[4]f64) {…}
```

 

Stores the high and low 128-bit halves (each composed of 2 packed
double-precision (64-bit) floating-point elements) from `a` into memory two
different 128-bit locations.
`hiaddr` and `loaddr` do not need to be aligned on any particular boundary.

### [\_mm256\_storeu2\_m128i ¶](#_mm256_storeu2_m128i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1791)

```
_mm256_storeu2_m128i :: proc "c" (hiaddr, loaddr: ^#simd[2]i64, a: #simd[4]i64) {…}
```

 

Stores the high and low 128-bit halves (each composed of integer data) from
`a` into memory two different 128-bit locations.
`hiaddr` and `loaddr` do not need to be aligned on any particular boundary.

### [\_mm256\_storeu\_pd ¶](#_mm256_storeu_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L913)

```
_mm256_storeu_pd :: proc "c" (mem_addr: ^f64, a: #simd[4]f64) {…}
```

 

Stores 256-bits (composed of 4 packed double-precision (64-bit) floating-point elements) from `a` into memory.
`mem_addr` does not need to be aligned on any particular boundary.

### [\_mm256\_storeu\_ps ¶](#_mm256_storeu_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L927)

```
_mm256_storeu_ps :: proc "c" (mem_addr: ^f32, a: #simd[8]f32) {…}
```

 

Stores 256-bits (composed of 8 packed single-precision (32-bit) floating-point elements) from `a` into memory.
`mem_addr` does not need to be aligned on any particular boundary.

### [\_mm256\_storeu\_si256 ¶](#_mm256_storeu_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L961)

```
_mm256_storeu_si256 :: proc "c" (mem_addr: ^#simd[4]i64, a: #simd[4]i64) {…}
```

 

Stores 256-bits of integer data from `a` into memory.
`mem_addr` does not need to be aligned on any particular boundary.

### [\_mm256\_sub\_pd ¶](#_mm256_sub_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L168)

```
_mm256_sub_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Subtracts packed double-precision (64-bit) floating-point elements in `b`
from packed elements in `a`.

### [\_mm256\_sub\_ps ¶](#_mm256_sub_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L175)

```
_mm256_sub_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Subtracts packed single-precision (32-bit) floating-point elements in `b`
from packed elements in `a`.

### [\_mm256\_testc\_pd ¶](#_mm256_testc_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1231)

```
_mm256_testc_pd :: proc "c" (a, b: #simd[4]f64) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing double-precision (64-bit) floating-point elements) in `a` and `b`, producing an intermediate 256-bit
value, and set `ZF` to 1 if the sign bit of each 64-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 64-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `CF` value.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_testc\_pd)

### [\_mm256\_testc\_ps ¶](#_mm256_testc_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1309)

```
_mm256_testc_ps :: proc "c" (a, b: #simd[8]f32) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing single-precision (32-bit) floating-point elements) in `a` and `b`, producing an intermediate 256-bit
value, and set `ZF` to 1 if the sign bit of each 32-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 32-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `CF` value.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_testc\_ps)

### [\_mm256\_testc\_si256 ¶](#_mm256_testc_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1190)

```
_mm256_testc_si256 :: proc "c" (a, b: #simd[4]i64) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing integer data) in `a` and
`b`, and set `ZF` to 1 if the result is zero, otherwise set `ZF` to 0.
Computes the bitwise NOT of `a` and then AND with `b`, and set `CF` to 1 if
the result is zero, otherwise set `CF` to 0. Return the `CF` value.

### [\_mm256\_testnzc\_pd ¶](#_mm256_testnzc_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1245)

```
_mm256_testnzc_pd :: proc "c" (a, b: #simd[4]f64) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing double-precision (64-bit) floating-point elements) in `a` and `b`, producing an intermediate 256-bit
value, and set `ZF` to 1 if the sign bit of each 64-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 64-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return 1 if both the `ZF` and `CF` values
are zero, otherwise return 0.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_testnzc\_pd)

### [\_mm256\_testnzc\_ps ¶](#_mm256_testnzc_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1323)

```
_mm256_testnzc_ps :: proc "c" (a, b: #simd[8]f32) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing single-precision (32-bit) floating-point elements) in `a` and `b`, producing an intermediate 256-bit
value, and set `ZF` to 1 if the sign bit of each 32-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 32-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return 1 if both the `ZF` and `CF` values
are zero, otherwise return 0.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_testnzc\_ps)

### [\_mm256\_testnzc\_si256 ¶](#_mm256_testnzc_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1205)

```
_mm256_testnzc_si256 :: proc "c" (a, b: #simd[4]i64) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing integer data) in `a` and
`b`, and set `ZF` to 1 if the result is zero, otherwise set `ZF` to 0.
Computes the bitwise NOT of `a` and then AND with `b`, and set `CF` to 1 if
the result is zero, otherwise set `CF` to 0. Return 1 if both the `ZF` and
`CF` values are zero, otherwise return 0.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_testnzc\_si256)

### [\_mm256\_testz\_pd ¶](#_mm256_testz_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1218)

```
_mm256_testz_pd :: proc "c" (a, b: #simd[4]f64) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing double-precision (64-bit) floating-point elements) in `a` and `b`, producing an intermediate 256-bit
value, and set `ZF` to 1 if the sign bit of each 64-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 64-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `ZF` value.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_testz\_pd)

### [\_mm256\_testz\_ps ¶](#_mm256_testz_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1296)

```
_mm256_testz_ps :: proc "c" (a, b: #simd[8]f32) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing single-precision (32-bit) floating-point elements) in `a` and `b`, producing an intermediate 256-bit
value, and set `ZF` to 1 if the sign bit of each 32-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 32-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `ZF` value.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_testz\_ps)

### [\_mm256\_testz\_si256 ¶](#_mm256_testz_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1180)

```
_mm256_testz_si256 :: proc "c" (a, b: #simd[4]i64) -> i32 {…}
```

 

Computes the bitwise AND of 256 bits (representing integer data) in `a` and
`b`, and set `ZF` to 1 if the result is zero, otherwise set `ZF` to 0.
Computes the bitwise NOT of `a` and then AND with `b`, and set `CF` to 1 if
the result is zero, otherwise set `CF` to 0. Return the `ZF` value.

### [\_mm256\_undefined\_pd ¶](#_mm256_undefined_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1688)

```
_mm256_undefined_pd :: proc "c" () -> #simd[4]f64 {…}
```

 

Returns vector of type `__m256d` with indeterminate elements.
Despite using the word "undefined" (following Intel's naming scheme), this non-deterministically

### [\_mm256\_undefined\_ps ¶](#_mm256_undefined_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1681)

```
_mm256_undefined_ps :: proc "c" () -> #simd[8]f32 {…}
```

 

Returns vector of type `__m256` with indeterminate elements.
Despite using the word "undefined" (following Intel's naming scheme), this non-deterministically

### [\_mm256\_undefined\_si256 ¶](#_mm256_undefined_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1695)

```
_mm256_undefined_si256 :: proc "c" () -> #simd[4]i64 {…}
```

 

Returns vector of type \_\_m256i with with indeterminate elements.
Despite using the word "undefined" (following Intel's naming scheme), this non-deterministically

### [\_mm256\_unpackhi\_pd ¶](#_mm256_unpackhi_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1150)

```
_mm256_unpackhi_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Unpacks and interleave double-precision (64-bit) floating-point elements
from the high half of each 128-bit lane in `a` and `b`.

### [\_mm256\_unpackhi\_ps ¶](#_mm256_unpackhi_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1157)

```
_mm256_unpackhi_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Unpacks and interleave single-precision (32-bit) floating-point elements
from the high half of each 128-bit lane in `a` and `b`.

### [\_mm256\_unpacklo\_pd ¶](#_mm256_unpacklo_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1164)

```
_mm256_unpacklo_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Unpacks and interleave double-precision (64-bit) floating-point elements
from the low half of each 128-bit lane in `a` and `b`.

### [\_mm256\_unpacklo\_ps ¶](#_mm256_unpacklo_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1171)

```
_mm256_unpacklo_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Unpacks and interleave single-precision (32-bit) floating-point elements
from the low half of each 128-bit lane in `a` and `b`.

### [\_mm256\_xor\_pd ¶](#_mm256_xor_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L393)

```
_mm256_xor_pd :: proc "c" (a, b: #simd[4]f64) -> #simd[4]f64 {…}
```

 

Computes the bitwise XOR of packed double-precision (64-bit) floating-point elements in `a` and `b`.

### [\_mm256\_xor\_ps ¶](#_mm256_xor_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L401)

```
_mm256_xor_ps :: proc "c" (a, b: #simd[8]f32) -> #simd[8]f32 {…}
```

 

Computes the bitwise XOR of packed single-precision (32-bit) floating-point elements in `a` and `b`.

### [\_mm256\_zeroall ¶](#_mm256_zeroall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L611)

```
_mm256_zeroall :: proc "c" () {…}
```

 

Zeroes the contents of all XMM or YMM registers.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_zeroall)

### [\_mm256\_zeroupper ¶](#_mm256_zeroupper) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L619)

```
_mm256_zeroupper :: proc "c" () {…}
```

 

Zeroes the upper 128 bits of all YMM registers; the lower 128-bits of the registers are unmodified.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm256\_zeroupper)

### [\_mm256\_zextpd128\_pd256 ¶](#_mm256_zextpd128_pd256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1674)

```
_mm256_zextpd128_pd256 :: proc "c" (a: #simd[2]f64) -> #simd[4]f64 {…}
```

 

Constructs a 256-bit floating-point vector of `[4 x double]` from a
128-bit floating-point vector of `[2 x double]`. The lower 128 bits
contain the value of the source vector. The upper 128 bits are set
to zero.

### [\_mm256\_zextps128\_ps256 ¶](#_mm256_zextps128_ps256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1657)

```
_mm256_zextps128_ps256 :: proc "c" (a: #simd[4]f32) -> #simd[8]f32 {…}
```

 

Constructs a 256-bit floating-point vector of `[8 x float]` from a
128-bit floating-point vector of `[4 x float]`. The lower 128 bits contain
the value of the source vector. The upper 128 bits are set to zero.

### [\_mm256\_zextsi128\_si256 ¶](#_mm256_zextsi128_si256) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1665)

```
_mm256_zextsi128_si256 :: proc "c" (a: #simd[2]i64) -> #simd[4]i64 {…}
```

 

Constructs a 256-bit integer vector from a 128-bit integer vector.
The lower 128 bits contain the value of the source vector. The upper
128 bits are set to zero.

### [\_mm\_abs\_epi16 ¶](#_mm_abs_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L13)

```
_mm_abs_epi16 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_abs\_epi32 ¶](#_mm_abs_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L17)

```
_mm_abs_epi32 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_abs\_epi8 ¶](#_mm_abs_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L9)

```
_mm_abs_epi8 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_add\_epi16 ¶](#_mm_add_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L29)

```
_mm_add_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_add\_epi32 ¶](#_mm_add_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L33)

```
_mm_add_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_add\_epi64 ¶](#_mm_add_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L37)

```
_mm_add_epi64 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_add\_epi8 ¶](#_mm_add_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L25)

```
_mm_add_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_add\_pd ¶](#_mm_add_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L586)

```
_mm_add_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_add\_ps ¶](#_mm_add_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L51)

```
_mm_add_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_add\_sd ¶](#_mm_add_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L582)

```
_mm_add_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_add\_ss ¶](#_mm_add_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L47)

```
_mm_add_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_adds\_epi16 ¶](#_mm_adds_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L45)

```
_mm_adds_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_adds\_epi8 ¶](#_mm_adds_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L41)

```
_mm_adds_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_adds\_epu16 ¶](#_mm_adds_epu16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L53)

```
_mm_adds_epu16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_adds\_epu8 ¶](#_mm_adds_epu8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L49)

```
_mm_adds_epu8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_addsub\_pd ¶](#_mm_addsub_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L12)

```
_mm_addsub_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_addsub\_ps ¶](#_mm_addsub_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L8)

```
_mm_addsub_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_aesdec\_si128 ¶](#_mm_aesdec_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/aes.odin#L5)

```
_mm_aesdec_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_aesdeclast\_si128 ¶](#_mm_aesdeclast_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/aes.odin#L10)

```
_mm_aesdeclast_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_aesenc\_si128 ¶](#_mm_aesenc_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/aes.odin#L15)

```
_mm_aesenc_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_aesenclast\_si128 ¶](#_mm_aesenclast_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/aes.odin#L20)

```
_mm_aesenclast_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_aesimc\_si128 ¶](#_mm_aesimc_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/aes.odin#L25)

```
_mm_aesimc_si128 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_aeskeygenassist\_si128 ¶](#_mm_aeskeygenassist_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/aes.odin#L30)

```
_mm_aeskeygenassist_si128 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_alignr\_epi8 ¶](#_mm_alignr_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L25)

```
_mm_alignr_epi8 :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> #simd[2]i64 {…}
```

### [\_mm\_and\_pd ¶](#_mm_and_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L638)

```
_mm_and_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_and\_ps ¶](#_mm_and_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L128)

```
_mm_and_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_and\_si128 ¶](#_mm_and_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L290)

```
_mm_and_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_andnot\_pd ¶](#_mm_andnot_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L642)

```
_mm_andnot_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_andnot\_ps ¶](#_mm_andnot_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L132)

```
_mm_andnot_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_andnot\_si128 ¶](#_mm_andnot_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L294)

```
_mm_andnot_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_avg\_epu16 ¶](#_mm_avg_epu16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L61)

```
_mm_avg_epu16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_avg\_epu8 ¶](#_mm_avg_epu8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L57)

```
_mm_avg_epu8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_blend\_epi16 ¶](#_mm_blend_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L28)

```
_mm_blend_epi16 :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> #simd[2]i64 {…}
```

### [\_mm\_blend\_pd ¶](#_mm_blend_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L51)

```
_mm_blend_pd :: proc "c" (a, b: #simd[2]f64, $IMM2: u8) -> #simd[2]f64 {…}
```

### [\_mm\_blend\_ps ¶](#_mm_blend_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L55)

```
_mm_blend_ps :: proc "c" (a, b: #simd[4]f32, $IMM4: u8) -> #simd[4]f32 {…}
```

### [\_mm\_blendv\_epi8 ¶](#_mm_blendv_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L24)

```
_mm_blendv_epi8 :: proc "c" (a, b, mask: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_blendv\_pd ¶](#_mm_blendv_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L43)

```
_mm_blendv_pd :: proc "c" (a, b, mask: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_blendv\_ps ¶](#_mm_blendv_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L47)

```
_mm_blendv_ps :: proc "c" (a, b, mask: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_broadcast\_ss ¶](#_mm_broadcast_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L763)

```
_mm_broadcast_ss :: proc "c" (f: ^f32) -> #simd[4]f32 {…}
```

 

Broadcasts a single-precision (32-bit) floating-point element from memory to all elements of the returned vector.

### [\_mm\_bslli\_si128 ¶](#_mm_bslli_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L208)

```
_mm_bslli_si128 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_bsrli\_si128 ¶](#_mm_bsrli_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L214)

```
_mm_bsrli_si128 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_castpd\_ps ¶](#_mm_castpd_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L959)

```
_mm_castpd_ps :: proc "c" (a: #simd[2]f64) -> #simd[4]f32 {…}
```

### [\_mm\_castpd\_si128 ¶](#_mm_castpd_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L963)

```
_mm_castpd_si128 :: proc "c" (a: #simd[2]f64) -> #simd[2]i64 {…}
```

### [\_mm\_castps\_pd ¶](#_mm_castps_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L967)

```
_mm_castps_pd :: proc "c" (a: #simd[4]f32) -> #simd[2]f64 {…}
```

### [\_mm\_castps\_si128 ¶](#_mm_castps_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L971)

```
_mm_castps_si128 :: proc "c" (a: #simd[4]f32) -> #simd[2]i64 {…}
```

### [\_mm\_castsi128\_pd ¶](#_mm_castsi128_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L975)

```
_mm_castsi128_pd :: proc "c" (a: #simd[2]i64) -> #simd[2]f64 {…}
```

### [\_mm\_castsi128\_ps ¶](#_mm_castsi128_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L979)

```
_mm_castsi128_ps :: proc "c" (a: #simd[2]i64) -> #simd[4]f32 {…}
```

### [\_mm\_ceil\_pd ¶](#_mm_ceil_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L219)

```
_mm_ceil_pd :: proc "c" (a: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_ceil\_ps ¶](#_mm_ceil_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L223)

```
_mm_ceil_ps :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_ceil\_sd ¶](#_mm_ceil_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L227)

```
_mm_ceil_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_ceil\_ss ¶](#_mm_ceil_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L231)

```
_mm_ceil_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_clflush ¶](#_mm_clflush) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L12)

```
_mm_clflush :: proc "c" (p: rawptr) {…}
```

### [\_mm\_clmulepi64\_si128 ¶](#_mm_clmulepi64_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/pclmulqdq.odin#L5)

```
_mm_clmulepi64_si128 :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> #simd[2]i64 {…}
```

### [\_mm\_cmp\_pd ¶](#_mm_cmp_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L448)

```
_mm_cmp_pd :: proc "c" (a, b: #simd[2]f64, $IMM5: u8) -> #simd[2]f64 {…}
```

 

Compares packed double-precision (64-bit) floating-point elements in `a` and `b` based on the comparison operand specified by `IMM5`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_cmp\_pd)

### [\_mm\_cmp\_ps ¶](#_mm_cmp_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L464)

```
_mm_cmp_ps :: proc "c" (a: #simd[4]f32, b: #simd[4]f32, $IMM5: u8) -> #simd[4]f32 {…}
```

 

Compares packed single-precision (32-bit) floating-point elements in `a` and `b` based on the comparison operand specified by `IMM5`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_cmp\_ps)

### [\_mm\_cmp\_sd ¶](#_mm_cmp_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L484)

```
_mm_cmp_sd :: proc "c" (a, b: #simd[2]f64, $IMM5: u8) -> #simd[2]f64 {…}
```

 

Compares the lower double-precision (64-bit) floating-point element in
`a` and `b` based on the comparison operand specified by `IMM5`,
store the result in the lower element of returned vector,
and copies the upper element from `a` to the upper element of returned
vector.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_cmp\_sd)

### [\_mm\_cmp\_ss ¶](#_mm_cmp_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L496)

```
_mm_cmp_ss :: proc "c" (a: #simd[4]f32, b: #simd[4]f32, $IMM5: u8) -> #simd[4]f32 {…}
```

 

Compares the lower single-precision (32-bit) floating-point element in
`a` and `b` based on the comparison operand specified by `IMM5`,
store the result in the lower element of returned vector,
and copies the upper 3 packed elements from `a` to the upper elements of
returned vector.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_cmp\_ss)

### [\_mm\_cmpeq\_epi16 ¶](#_mm_cmpeq_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L310)

```
_mm_cmpeq_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpeq\_epi32 ¶](#_mm_cmpeq_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L314)

```
_mm_cmpeq_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpeq\_epi64 ¶](#_mm_cmpeq_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L119)

```
_mm_cmpeq_epi64 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpeq\_epi8 ¶](#_mm_cmpeq_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L306)

```
_mm_cmpeq_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpeq\_pd ¶](#_mm_cmpeq_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L706)

```
_mm_cmpeq_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpeq\_ps ¶](#_mm_cmpeq_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L196)

```
_mm_cmpeq_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpeq\_sd ¶](#_mm_cmpeq_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L658)

```
_mm_cmpeq_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpeq\_ss ¶](#_mm_cmpeq_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L146)

```
_mm_cmpeq_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpestra ¶](#_mm_cmpestra) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L80)

```
_mm_cmpestra :: proc "c" (a: #simd[2]i64, la: i32, b: #simd[2]i64, lb: i32, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpestrc ¶](#_mm_cmpestrc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L68)

```
_mm_cmpestrc :: proc "c" (a: #simd[2]i64, la: i32, b: #simd[2]i64, lb: i32, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpestri ¶](#_mm_cmpestri) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L60)

```
_mm_cmpestri :: proc "c" (a: #simd[2]i64, la: i32, b: #simd[2]i64, lb: i32, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpestrm ¶](#_mm_cmpestrm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L56)

```
_mm_cmpestrm :: proc "c" (a: #simd[2]i64, la: i32, b: #simd[2]i64, lb: i32, $IMM8: i8) -> #simd[2]i64 {…}
```

### [\_mm\_cmpestro ¶](#_mm_cmpestro) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L76)

```
_mm_cmpestro :: proc "c" (a: #simd[2]i64, la: i32, b: #simd[2]i64, lb: i32, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpestrs ¶](#_mm_cmpestrs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L72)

```
_mm_cmpestrs :: proc "c" (a: #simd[2]i64, la: i32, b: #simd[2]i64, lb: i32, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpestrz ¶](#_mm_cmpestrz) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L64)

```
_mm_cmpestrz :: proc "c" (a: #simd[2]i64, la: i32, b: #simd[2]i64, lb: i32, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpge\_pd ¶](#_mm_cmpge_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L722)

```
_mm_cmpge_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpge\_ps ¶](#_mm_cmpge_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L212)

```
_mm_cmpge_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpge\_sd ¶](#_mm_cmpge_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L674)

```
_mm_cmpge_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpge\_ss ¶](#_mm_cmpge_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L162)

```
_mm_cmpge_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpgt\_epi16 ¶](#_mm_cmpgt_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L322)

```
_mm_cmpgt_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpgt\_epi32 ¶](#_mm_cmpgt_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L326)

```
_mm_cmpgt_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpgt\_epi64 ¶](#_mm_cmpgt_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L96)

```
_mm_cmpgt_epi64 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpgt\_epi8 ¶](#_mm_cmpgt_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L318)

```
_mm_cmpgt_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmpgt\_pd ¶](#_mm_cmpgt_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L718)

```
_mm_cmpgt_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpgt\_ps ¶](#_mm_cmpgt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L208)

```
_mm_cmpgt_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpgt\_sd ¶](#_mm_cmpgt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L670)

```
_mm_cmpgt_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpgt\_ss ¶](#_mm_cmpgt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L158)

```
_mm_cmpgt_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpistra ¶](#_mm_cmpistra) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L52)

```
_mm_cmpistra :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpistrc ¶](#_mm_cmpistrc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L40)

```
_mm_cmpistrc :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpistri ¶](#_mm_cmpistri) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L32)

```
_mm_cmpistri :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpistrm ¶](#_mm_cmpistrm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L28)

```
_mm_cmpistrm :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> #simd[2]i64 {…}
```

### [\_mm\_cmpistro ¶](#_mm_cmpistro) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L48)

```
_mm_cmpistro :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpistrs ¶](#_mm_cmpistrs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L44)

```
_mm_cmpistrs :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmpistrz ¶](#_mm_cmpistrz) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L36)

```
_mm_cmpistrz :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> i32 {…}
```

### [\_mm\_cmple\_pd ¶](#_mm_cmple_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L714)

```
_mm_cmple_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmple\_ps ¶](#_mm_cmple_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L204)

```
_mm_cmple_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmple\_sd ¶](#_mm_cmple_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L666)

```
_mm_cmple_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmple\_ss ¶](#_mm_cmple_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L154)

```
_mm_cmple_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmplt\_epi16 ¶](#_mm_cmplt_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L334)

```
_mm_cmplt_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmplt\_epi32 ¶](#_mm_cmplt_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L338)

```
_mm_cmplt_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmplt\_epi8 ¶](#_mm_cmplt_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L330)

```
_mm_cmplt_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cmplt\_pd ¶](#_mm_cmplt_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L710)

```
_mm_cmplt_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmplt\_ps ¶](#_mm_cmplt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L200)

```
_mm_cmplt_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmplt\_sd ¶](#_mm_cmplt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L662)

```
_mm_cmplt_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmplt\_ss ¶](#_mm_cmplt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L150)

```
_mm_cmplt_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpneq\_pd ¶](#_mm_cmpneq_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L734)

```
_mm_cmpneq_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpneq\_ps ¶](#_mm_cmpneq_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L216)

```
_mm_cmpneq_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpneq\_sd ¶](#_mm_cmpneq_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L686)

```
_mm_cmpneq_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpneq\_ss ¶](#_mm_cmpneq_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L166)

```
_mm_cmpneq_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpnge\_pd ¶](#_mm_cmpnge_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L750)

```
_mm_cmpnge_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpnge\_ps ¶](#_mm_cmpnge_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L232)

```
_mm_cmpnge_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpnge\_sd ¶](#_mm_cmpnge_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L702)

```
_mm_cmpnge_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpnge\_ss ¶](#_mm_cmpnge_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L182)

```
_mm_cmpnge_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpngt\_pd ¶](#_mm_cmpngt_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L746)

```
_mm_cmpngt_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpngt\_ps ¶](#_mm_cmpngt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L228)

```
_mm_cmpngt_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpngt\_sd ¶](#_mm_cmpngt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L698)

```
_mm_cmpngt_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpngt\_ss ¶](#_mm_cmpngt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L178)

```
_mm_cmpngt_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpnle\_pd ¶](#_mm_cmpnle_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L742)

```
_mm_cmpnle_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpnle\_ps ¶](#_mm_cmpnle_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L224)

```
_mm_cmpnle_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpnle\_sd ¶](#_mm_cmpnle_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L694)

```
_mm_cmpnle_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpnle\_ss ¶](#_mm_cmpnle_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L174)

```
_mm_cmpnle_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpnlt\_pd ¶](#_mm_cmpnlt_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L738)

```
_mm_cmpnlt_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpnlt\_ps ¶](#_mm_cmpnlt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L220)

```
_mm_cmpnlt_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpnlt\_sd ¶](#_mm_cmpnlt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L690)

```
_mm_cmpnlt_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpnlt\_ss ¶](#_mm_cmpnlt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L170)

```
_mm_cmpnlt_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpord\_pd ¶](#_mm_cmpord_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L726)

```
_mm_cmpord_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpord\_ps ¶](#_mm_cmpord_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L236)

```
_mm_cmpord_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpord\_sd ¶](#_mm_cmpord_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L678)

```
_mm_cmpord_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpord\_ss ¶](#_mm_cmpord_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L186)

```
_mm_cmpord_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpunord\_pd ¶](#_mm_cmpunord_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L730)

```
_mm_cmpunord_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpunord\_ps ¶](#_mm_cmpunord_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L240)

```
_mm_cmpunord_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_cmpunord\_sd ¶](#_mm_cmpunord_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L682)

```
_mm_cmpunord_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_cmpunord\_ss ¶](#_mm_cmpunord_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L190)

```
_mm_cmpunord_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_comieq\_sd ¶](#_mm_comieq_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L754)

```
_mm_comieq_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_comieq\_ss ¶](#_mm_comieq_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L246)

```
_mm_comieq_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_comige\_sd ¶](#_mm_comige_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L770)

```
_mm_comige_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_comige\_ss ¶](#_mm_comige_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L262)

```
_mm_comige_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_comigt\_sd ¶](#_mm_comigt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L766)

```
_mm_comigt_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_comigt\_ss ¶](#_mm_comigt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L258)

```
_mm_comigt_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_comile\_sd ¶](#_mm_comile_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L762)

```
_mm_comile_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_comile\_ss ¶](#_mm_comile_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L254)

```
_mm_comile_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_comilt\_sd ¶](#_mm_comilt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L758)

```
_mm_comilt_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_comilt\_ss ¶](#_mm_comilt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L250)

```
_mm_comilt_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_comineq\_sd ¶](#_mm_comineq_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L774)

```
_mm_comineq_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_comineq\_ss ¶](#_mm_comineq_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L266)

```
_mm_comineq_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_crc32\_u16 ¶](#_mm_crc32_u16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L88)

```
_mm_crc32_u16 :: proc "c" (crc: u32, v: u16) -> u32 {…}
```

### [\_mm\_crc32\_u32 ¶](#_mm_crc32_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L92)

```
_mm_crc32_u32 :: proc "c" (crc: u32, v: u32) -> u32 {…}
```

### [\_mm\_crc32\_u64 ¶](#_mm_crc32_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L102)

```
_mm_crc32_u64 :: proc "c" (crc: u64, v: u64) -> u64 {…}
```

### [\_mm\_crc32\_u8 ¶](#_mm_crc32_u8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin#L84)

```
_mm_crc32_u8 :: proc "c" (crc: u32, v: u8) -> u32 {…}
```

### [\_mm\_cvt\_si2ss ¶](#_mm_cvt_si2ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L308)

```
_mm_cvt_si2ss :: _mm_cvtsi32_ss
```

### [\_mm\_cvt\_ss2si ¶](#_mm_cvt_ss2si) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L296)

```
_mm_cvt_ss2si :: _mm_cvtss_si32
```

### [\_mm\_cvtepi16\_epi32 ¶](#_mm_cvtepi16_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L141)

```
_mm_cvtepi16_epi32 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepi16\_epi64 ¶](#_mm_cvtepi16_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L147)

```
_mm_cvtepi16_epi64 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepi32\_epi64 ¶](#_mm_cvtepi32_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L153)

```
_mm_cvtepi32_epi64 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepi32\_pd ¶](#_mm_cvtepi32_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L344)

```
_mm_cvtepi32_pd :: proc "c" (a: #simd[2]i64) -> #simd[2]f64 {…}
```

### [\_mm\_cvtepi32\_ps ¶](#_mm_cvtepi32_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L353)

```
_mm_cvtepi32_ps :: proc "c" (a: #simd[2]i64) -> #simd[4]f32 {…}
```

### [\_mm\_cvtepi8\_epi16 ¶](#_mm_cvtepi8_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L123)

```
_mm_cvtepi8_epi16 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepi8\_epi32 ¶](#_mm_cvtepi8_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L129)

```
_mm_cvtepi8_epi32 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepi8\_epi64 ¶](#_mm_cvtepi8_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L135)

```
_mm_cvtepi8_epi64 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepu16\_epi32 ¶](#_mm_cvtepu16_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L177)

```
_mm_cvtepu16_epi32 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepu16\_epi64 ¶](#_mm_cvtepu16_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L183)

```
_mm_cvtepu16_epi64 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepu32\_epi64 ¶](#_mm_cvtepu32_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L189)

```
_mm_cvtepu32_epi64 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepu8\_epi16 ¶](#_mm_cvtepu8_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L159)

```
_mm_cvtepu8_epi16 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepu8\_epi32 ¶](#_mm_cvtepu8_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L165)

```
_mm_cvtepu8_epi32 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtepu8\_epi64 ¶](#_mm_cvtepu8_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L171)

```
_mm_cvtepu8_epi64 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtpd\_epi32 ¶](#_mm_cvtpd_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L815)

```
_mm_cvtpd_epi32 :: proc "c" (a: #simd[2]f64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtpd\_ps ¶](#_mm_cvtpd_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L807)

```
_mm_cvtpd_ps :: proc "c" (a: #simd[2]f64) -> #simd[4]f32 {…}
```

### [\_mm\_cvtps\_epi32 ¶](#_mm_cvtps_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L357)

```
_mm_cvtps_epi32 :: proc "c" (a: #simd[4]f32) -> #simd[2]i64 {…}
```

### [\_mm\_cvtps\_pd ¶](#_mm_cvtps_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L811)

```
_mm_cvtps_pd :: proc "c" (a: #simd[4]f32) -> #simd[2]f64 {…}
```

### [\_mm\_cvtsd\_f64 ¶](#_mm_cvtsd_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L827)

```
_mm_cvtsd_f64 :: proc "c" (a: #simd[2]f64) -> f64 {…}
```

### [\_mm\_cvtsd\_si32 ¶](#_mm_cvtsd_si32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L819)

```
_mm_cvtsd_si32 :: proc "c" (a: #simd[2]f64) -> i32 {…}
```

### [\_mm\_cvtsd\_si64 ¶](#_mm_cvtsd_si64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1004)

```
_mm_cvtsd_si64 :: proc "c" (a: #simd[2]f64) -> i64 {…}
```

### [\_mm\_cvtsd\_si64x ¶](#_mm_cvtsd_si64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1008)

```
_mm_cvtsd_si64x :: proc "c" (a: #simd[2]f64) -> i64 {…}
```

### [\_mm\_cvtsd\_ss ¶](#_mm_cvtsd_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L823)

```
_mm_cvtsd_ss :: proc "c" (a, b: #simd[2]f64) -> #simd[4]f32 {…}
```

### [\_mm\_cvtsi128\_si32 ¶](#_mm_cvtsi128_si32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L365)

```
_mm_cvtsi128_si32 :: proc "c" (a: #simd[2]i64) -> i32 {…}
```

### [\_mm\_cvtsi128\_si64 ¶](#_mm_cvtsi128_si64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1032)

```
_mm_cvtsi128_si64 :: proc "c" (a: #simd[2]i64) -> i64 {…}
```

### [\_mm\_cvtsi128\_si64x ¶](#_mm_cvtsi128_si64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1036)

```
_mm_cvtsi128_si64x :: proc "c" (a: #simd[2]i64) -> i64 {…}
```

### [\_mm\_cvtsi32\_sd ¶](#_mm_cvtsi32_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L349)

```
_mm_cvtsi32_sd :: proc "c" (a: #simd[2]f64, b: i32) -> #simd[2]f64 {…}
```

### [\_mm\_cvtsi32\_si128 ¶](#_mm_cvtsi32_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L361)

```
_mm_cvtsi32_si128 :: proc "c" (a: i32) -> #simd[2]i64 {…}
```

### [\_mm\_cvtsi32\_ss ¶](#_mm_cvtsi32_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L308)

```
_mm_cvtsi32_ss :: proc "c" (a: #simd[4]f32, b: i32) -> #simd[4]f32 {…}
```

### [\_mm\_cvtsi64\_sd ¶](#_mm_cvtsi64_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1040)

```
_mm_cvtsi64_sd :: proc "c" (a: #simd[2]f64, b: i64) -> #simd[2]f64 {…}
```

### [\_mm\_cvtsi64\_si128 ¶](#_mm_cvtsi64_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1024)

```
_mm_cvtsi64_si128 :: proc "c" (a: i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtsi64\_ss ¶](#_mm_cvtsi64_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L529)

```
_mm_cvtsi64_ss :: proc "c" (a: #simd[4]f32, b: i64) -> #simd[4]f32 {…}
```

### [\_mm\_cvtsi64x\_sd ¶](#_mm_cvtsi64x_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1044)

```
_mm_cvtsi64x_sd :: proc "c" (a: #simd[2]f64, b: i64) -> #simd[2]f64 {…}
```

### [\_mm\_cvtsi64x\_si128 ¶](#_mm_cvtsi64x_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1028)

```
_mm_cvtsi64x_si128 :: proc "c" (a: i64) -> #simd[2]i64 {…}
```

### [\_mm\_cvtss\_f32 ¶](#_mm_cvtss_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L303)

```
_mm_cvtss_f32 :: proc "c" (a: #simd[4]f32) -> f32 {…}
```

### [\_mm\_cvtss\_sd ¶](#_mm_cvtss_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L831)

```
_mm_cvtss_sd :: proc "c" (a, b: #simd[4]f32) -> #simd[2]f64 {…}
```

### [\_mm\_cvtss\_si32 ¶](#_mm_cvtss_si32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L296)

```
_mm_cvtss_si32 :: proc "c" (a: #simd[4]f32) -> i32 {…}
```

### [\_mm\_cvtss\_si64 ¶](#_mm_cvtss_si64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L521)

```
_mm_cvtss_si64 :: proc "c" (a: #simd[4]f32) -> i64 {…}
```

### [\_mm\_cvttpd\_epi32 ¶](#_mm_cvttpd_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L835)

```
_mm_cvttpd_epi32 :: proc "c" (a: #simd[2]f64) -> #simd[2]i64 {…}
```

### [\_mm\_cvttps\_epi32 ¶](#_mm_cvttps_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L843)

```
_mm_cvttps_epi32 :: proc "c" (a: #simd[4]f32) -> #simd[2]i64 {…}
```

### [\_mm\_cvttsd\_si32 ¶](#_mm_cvttsd_si32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L839)

```
_mm_cvttsd_si32 :: proc "c" (a: #simd[2]f64) -> i32 {…}
```

### [\_mm\_cvttsd\_si64 ¶](#_mm_cvttsd_si64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1012)

```
_mm_cvttsd_si64 :: proc "c" (a: #simd[2]f64) -> i64 {…}
```

### [\_mm\_cvttsd\_si64x ¶](#_mm_cvttsd_si64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1016)

```
_mm_cvttsd_si64x :: proc "c" (a: #simd[2]f64) -> i64 {…}
```

### [\_mm\_cvttss\_si32 ¶](#_mm_cvttss_si32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L296)

```
_mm_cvttss_si32 :: _mm_cvtss_si32
```

### [\_mm\_cvttss\_si64 ¶](#_mm_cvttss_si64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L525)

```
_mm_cvttss_si64 :: proc "c" (a: #simd[4]f32) -> i64 {…}
```

### [\_mm\_div\_pd ¶](#_mm_div_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L594)

```
_mm_div_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_div\_ps ¶](#_mm_div_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L78)

```
_mm_div_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_div\_sd ¶](#_mm_div_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L590)

```
_mm_div_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_div\_ss ¶](#_mm_div_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L74)

```
_mm_div_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_dp\_pd ¶](#_mm_dp_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L195)

```
_mm_dp_pd :: proc "c" (a, b: #simd[2]f64, $IMM8: u8) -> #simd[2]f64 {…}
```

### [\_mm\_dp\_ps ¶](#_mm_dp_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L199)

```
_mm_dp_ps :: proc "c" (a, b: #simd[4]f32, $IMM8: u8) -> #simd[4]f32 {…}
```

### [\_mm\_extract\_epi16 ¶](#_mm_extract_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L482)

```
_mm_extract_epi16 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> i32 {…}
```

### [\_mm\_extract\_epi32 ¶](#_mm_extract_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L67)

```
_mm_extract_epi32 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> i32 {…}
```

### [\_mm\_extract\_epi64 ¶](#_mm_extract_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L294)

```
_mm_extract_epi64 :: proc "c" (a: #simd[2]i64, $IMM1: u32) -> i64 {…}
```

### [\_mm\_extract\_epi8 ¶](#_mm_extract_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L63)

```
_mm_extract_epi8 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> i32 {…}
```

### [\_mm\_extract\_ps ¶](#_mm_extract_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L59)

```
_mm_extract_ps :: proc "c" (a: #simd[4]f32, $IMM8: u32) -> i32 {…}
```

### [\_mm\_floor\_pd ¶](#_mm_floor_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L203)

```
_mm_floor_pd :: proc "c" (a: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_floor\_ps ¶](#_mm_floor_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L207)

```
_mm_floor_ps :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_floor\_sd ¶](#_mm_floor_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L211)

```
_mm_floor_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_floor\_ss ¶](#_mm_floor_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L215)

```
_mm_floor_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_getcsr ¶](#_mm_getcsr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L445)

```
_mm_getcsr :: proc "c" () -> (result: u32) {…}
```

### [\_mm\_hadd\_epi16 ¶](#_mm_hadd_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L62)

```
_mm_hadd_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_hadd\_epi32 ¶](#_mm_hadd_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L70)

```
_mm_hadd_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_hadd\_pd ¶](#_mm_hadd_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L16)

```
_mm_hadd_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_hadd\_ps ¶](#_mm_hadd_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L20)

```
_mm_hadd_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_hadds\_epi16 ¶](#_mm_hadds_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L66)

```
_mm_hadds_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_hsub\_epi16 ¶](#_mm_hsub_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L74)

```
_mm_hsub_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_hsub\_epi32 ¶](#_mm_hsub_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L82)

```
_mm_hsub_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_hsub\_pd ¶](#_mm_hsub_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L24)

```
_mm_hsub_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_hsub\_ps ¶](#_mm_hsub_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L28)

```
_mm_hsub_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_hsubs\_epi16 ¶](#_mm_hsubs_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L78)

```
_mm_hsubs_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_insert\_epi16 ¶](#_mm_insert_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L486)

```
_mm_insert_epi16 :: proc "c" (a: #simd[2]i64, i: i32, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_insert\_epi32 ¶](#_mm_insert_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L79)

```
_mm_insert_epi32 :: proc "c" (a: #simd[2]i64, i: i32, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_insert\_epi64 ¶](#_mm_insert_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L299)

```
_mm_insert_epi64 :: proc "c" (a: #simd[2]i64, i: i64, $IMM1: u32) -> #simd[2]i64 {…}
```

### [\_mm\_insert\_epi8 ¶](#_mm_insert_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L75)

```
_mm_insert_epi8 :: proc "c" (a: #simd[2]i64, i: i32, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_insert\_ps ¶](#_mm_insert_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L71)

```
_mm_insert_ps :: proc "c" (a, b: #simd[4]f32, $IMM8: u8) -> #simd[4]f32 {…}
```

### [\_mm\_lddqu\_si128 ¶](#_mm_lddqu_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L32)

```
_mm_lddqu_si128 :: proc "c" (mem_addr: ^#simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_lfence ¶](#_mm_lfence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L16)

```
_mm_lfence :: proc "c" () {…}
```

### [\_mm\_load1\_pd ¶](#_mm_load1_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L927)

```
_mm_load1_pd :: proc "c" (mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_load1\_ps ¶](#_mm_load1_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L377)

```
_mm_load1_ps :: proc "c" (p: ^f32) -> #simd[4]f32 {…}
```

### [\_mm\_load\_pd ¶](#_mm_load_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L875)

```
_mm_load_pd :: proc "c" (mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_load\_pd1 ¶](#_mm_load_pd1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L932)

```
_mm_load_pd1 :: proc "c" (mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_load\_ps ¶](#_mm_load_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L384)

```
_mm_load_ps :: proc "c" (p: [^]f32) -> #simd[4]f32 {…}
```

### [\_mm\_load\_ps1 ¶](#_mm_load_ps1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L377)

```
_mm_load_ps1 :: _mm_load1_ps
```

### [\_mm\_load\_sd ¶](#_mm_load_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L879)

```
_mm_load_sd :: proc "c" (mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_load\_si128 ¶](#_mm_load_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L426)

```
_mm_load_si128 :: proc "c" (mem_addr: ^#simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_load\_ss ¶](#_mm_load_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L373)

```
_mm_load_ss :: proc "c" (p: ^f32) -> #simd[4]f32 {…}
```

### [\_mm\_loaddup\_pd ¶](#_mm_loaddup_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L40)

```
_mm_loaddup_pd :: proc "c" (mem_addr: [^]f64) -> #simd[2]f64 {…}
```

### [\_mm\_loadh\_pd ¶](#_mm_loadh_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L883)

```
_mm_loadh_pd :: proc "c" (a: #simd[2]f64, mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_loadl\_epi64 ¶](#_mm_loadl_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L422)

```
_mm_loadl_epi64 :: proc "c" (mem_addr: ^#simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_loadl\_pd ¶](#_mm_loadl_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L887)

```
_mm_loadl_pd :: proc "c" (a: #simd[2]f64, mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_loadr\_pd ¶](#_mm_loadr_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L936)

```
_mm_loadr_pd :: proc "c" (mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_loadr\_ps ¶](#_mm_loadr_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L396)

```
_mm_loadr_ps :: proc "c" (p: [^]f32) -> #simd[4]f32 {…}
```

### [\_mm\_loadu\_pd ¶](#_mm_loadu_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L941)

```
_mm_loadu_pd :: proc "c" (mem_addr: ^f64) -> #simd[2]f64 {…}
```

### [\_mm\_loadu\_ps ¶](#_mm_loadu_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L389)

```
_mm_loadu_ps :: proc "c" (p: [^]f32) -> #simd[4]f32 {…}
```

### [\_mm\_loadu\_si128 ¶](#_mm_loadu_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L430)

```
_mm_loadu_si128 :: proc "c" (mem_addr: ^#simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_loadu\_si64 ¶](#_mm_loadu_si64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L401)

```
_mm_loadu_si64 :: proc "c" (mem_addr: rawptr) -> #simd[2]i64 {…}
```

### [\_mm\_madd\_epi16 ¶](#_mm_madd_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L66)

```
_mm_madd_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_maddubs\_epi16 ¶](#_mm_maddubs_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L86)

```
_mm_maddubs_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_maskload\_pd ¶](#_mm_maskload_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L987)

```
_mm_maskload_pd :: proc "c" (mem_addr: ^f64, mask: #simd[2]i64) -> #simd[2]f64 {…}
```

 

Loads packed double-precision (64-bit) floating-point elements from memory
into result using `mask` (elements are zeroed out when the high bit of the
corresponding element is not set).

### [\_mm\_maskload\_ps ¶](#_mm_maskload_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1021)

```
_mm_maskload_ps :: proc "c" (mem_addr: ^f32, mask: #simd[2]i64) -> #simd[4]f32 {…}
```

 

Loads packed single-precision (32-bit) floating-point elements from memory
into result using `mask` (elements are zeroed out when the high bit of the
corresponding element is not set).

### [\_mm\_maskmoveu\_si128 ¶](#_mm_maskmoveu_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L436)

```
_mm_maskmoveu_si128 :: proc "c" (a, mask: #simd[2]i64, mem_addr: rawptr) {…}
```

### [\_mm\_maskstore\_pd ¶](#_mm_maskstore_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L995)

```
_mm_maskstore_pd :: proc "c" (mem_addr: ^f64, mask: #simd[2]i64, a: #simd[2]f64) {…}
```

 

Stores packed double-precision (64-bit) floating-point elements from `a`
into memory using `mask`.

### [\_mm\_maskstore\_ps ¶](#_mm_maskstore_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1029)

```
_mm_maskstore_ps :: proc "c" (mem_addr: ^f32, mask: #simd[2]i64, a: #simd[4]f32) {…}
```

 

Stores packed single-precision (32-bit) floating-point elements from `a`
into memory using `mask`.

### [\_mm\_max\_epi16 ¶](#_mm_max_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L70)

```
_mm_max_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_max\_epi32 ¶](#_mm_max_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L91)

```
_mm_max_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_max\_epi8 ¶](#_mm_max_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L83)

```
_mm_max_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_max\_epu16 ¶](#_mm_max_epu16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L87)

```
_mm_max_epu16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_max\_epu32 ¶](#_mm_max_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L95)

```
_mm_max_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_max\_epu8 ¶](#_mm_max_epu8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L74)

```
_mm_max_epu8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_max\_pd ¶](#_mm_max_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L602)

```
_mm_max_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_max\_ps ¶](#_mm_max_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L123)

```
_mm_max_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_max\_sd ¶](#_mm_max_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L598)

```
_mm_max_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_max\_ss ¶](#_mm_max_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L119)

```
_mm_max_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_mfence ¶](#_mm_mfence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L20)

```
_mm_mfence :: proc "c" () {…}
```

### [\_mm\_min\_epi16 ¶](#_mm_min_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L78)

```
_mm_min_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_min\_epi32 ¶](#_mm_min_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L107)

```
_mm_min_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_min\_epi8 ¶](#_mm_min_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L99)

```
_mm_min_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_min\_epu16 ¶](#_mm_min_epu16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L103)

```
_mm_min_epu16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_min\_epu32 ¶](#_mm_min_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L111)

```
_mm_min_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_min\_epu8 ¶](#_mm_min_epu8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L82)

```
_mm_min_epu8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_min\_pd ¶](#_mm_min_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L610)

```
_mm_min_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_min\_ps ¶](#_mm_min_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L114)

```
_mm_min_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_min\_sd ¶](#_mm_min_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L606)

```
_mm_min_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_min\_ss ¶](#_mm_min_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L110)

```
_mm_min_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_minpos\_epu16 ¶](#_mm_minpos_epu16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L251)

```
_mm_minpos_epu16 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_move\_epi64 ¶](#_mm_move_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L461)

```
_mm_move_epi64 :: proc "c" (a: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_move\_sd ¶](#_mm_move_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L951)

```
_mm_move_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_move\_ss ¶](#_mm_move_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L435)

```
_mm_move_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_movedup\_pd ¶](#_mm_movedup_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L36)

```
_mm_movedup_pd :: proc "c" (a: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_movehdup\_ps ¶](#_mm_movehdup_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L44)

```
_mm_movehdup_ps :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_movehl\_ps ¶](#_mm_movehl_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L359)

```
_mm_movehl_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_moveldup\_ps ¶](#_mm_moveldup_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin#L48)

```
_mm_moveldup_ps :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_movelh\_ps ¶](#_mm_movelh_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L363)

```
_mm_movelh_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_movemask\_epi8 ¶](#_mm_movemask_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L490)

```
_mm_movemask_epi8 :: proc "c" (a: #simd[2]i64) -> i32 {…}
```

### [\_mm\_movemask\_pd ¶](#_mm_movemask_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L871)

```
_mm_movemask_pd :: proc "c" (a: #simd[2]f64) -> i32 {…}
```

### [\_mm\_movemask\_ps ¶](#_mm_movemask_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L368)

```
_mm_movemask_ps :: proc "c" (a: #simd[4]f32) -> u32 {…}
```

### [\_mm\_mpsadbw\_epu8 ¶](#_mm_mpsadbw_epu8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L263)

```
_mm_mpsadbw_epu8 :: proc "c" (a: #simd[2]i64, b: #simd[2]i64, $IMM8: i8) -> #simd[2]i64 {…}
```

### [\_mm\_mul\_epi32 ¶](#_mm_mul_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L255)

```
_mm_mul_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_mul\_epu32 ¶](#_mm_mul_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L100)

```
_mm_mul_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_mul\_pd ¶](#_mm_mul_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L618)

```
_mm_mul_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_mul\_ps ¶](#_mm_mul_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L69)

```
_mm_mul_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_mul\_sd ¶](#_mm_mul_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L614)

```
_mm_mul_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_mul\_ss ¶](#_mm_mul_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L65)

```
_mm_mul_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_mulhi\_epi16 ¶](#_mm_mulhi_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L88)

```
_mm_mulhi_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_mulhi\_epu16 ¶](#_mm_mulhi_epu16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L92)

```
_mm_mulhi_epu16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_mulhrs\_epi16 ¶](#_mm_mulhrs_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L90)

```
_mm_mulhrs_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_mullo\_epi16 ¶](#_mm_mullo_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L96)

```
_mm_mullo_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_mullo\_epi32 ¶](#_mm_mullo_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L259)

```
_mm_mullo_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_or\_pd ¶](#_mm_or_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L646)

```
_mm_or_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_or\_ps ¶](#_mm_or_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L136)

```
_mm_or_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_or\_si128 ¶](#_mm_or_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L298)

```
_mm_or_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_packs\_epi16 ¶](#_mm_packs_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L470)

```
_mm_packs_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_packs\_epi32 ¶](#_mm_packs_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L474)

```
_mm_packs_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_packus\_epi16 ¶](#_mm_packus_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L478)

```
_mm_packus_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_packus\_epi32 ¶](#_mm_packus_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L115)

```
_mm_packus_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_pause ¶](#_mm_pause) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L8)

```
_mm_pause :: proc "c" () {…}
```

### [\_mm\_permute\_pd ¶](#_mm_permute_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L700)

```
_mm_permute_pd :: proc "c" (a: #simd[2]f64, $IMM2: u8) -> #simd[2]f64 {…}
```

 

Shuffles double-precision (64-bit) floating-point elements in `a` using the control in `imm8`.

### [\_mm\_permute\_ps ¶](#_mm_permute_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L658)

```
_mm_permute_ps :: proc "c" (a: #simd[4]f32, $IMM8: u32) -> #simd[4]f32 {…}
```

 

Shuffles single-precision (32-bit) floating-point elements in `a` using the control in `imm8`.

### [\_mm\_permutevar\_pd ¶](#_mm_permutevar_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L681)

```
_mm_permutevar_pd :: proc "c" (a: #simd[2]f64, b: #simd[2]i64) -> #simd[2]f64 {…}
```

 

Shuffles double-precision (64-bit) floating-point elements in `a` using the control in `b`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_permutevar\_pd)

### [\_mm\_permutevar\_ps ¶](#_mm_permutevar_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L635)

```
_mm_permutevar_ps :: proc "c" (a: #simd[4]f32, b: #simd[2]i64) -> #simd[4]f32 {…}
```

 

Shuffles single-precision (32-bit) floating-point elements in `a` using the control in `b`.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_permutevar\_ps)

### [\_mm\_prefetch ¶](#_mm_prefetch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L491)

```
_mm_prefetch :: proc "c" (p: rawptr, $STRATEGY: u32) {…}
```

### [\_mm\_rcp\_ps ¶](#_mm_rcp_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L96)

```
_mm_rcp_ps :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_rcp\_ss ¶](#_mm_rcp_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L92)

```
_mm_rcp_ss :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_round\_pd ¶](#_mm_round_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L235)

```
_mm_round_pd :: proc "c" (a: #simd[2]f64, $ROUNDING: i32) -> #simd[2]f64 {…}
```

### [\_mm\_round\_ps ¶](#_mm_round_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L239)

```
_mm_round_ps :: proc "c" (a: #simd[4]f32, $ROUNDING: i32) -> #simd[4]f32 {…}
```

### [\_mm\_round\_sd ¶](#_mm_round_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L243)

```
_mm_round_sd :: proc "c" (a, b: #simd[2]f64, $ROUNDING: i32) -> #simd[2]f64 {…}
```

### [\_mm\_round\_ss ¶](#_mm_round_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L247)

```
_mm_round_ss :: proc "c" (a, b: #simd[4]f32, $ROUNDING: i32) -> #simd[4]f32 {…}
```

### [\_mm\_rsqrt\_ps ¶](#_mm_rsqrt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L105)

```
_mm_rsqrt_ps :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_rsqrt\_ss ¶](#_mm_rsqrt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L101)

```
_mm_rsqrt_ss :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_sad\_epu8 ¶](#_mm_sad_epu8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L104)

```
_mm_sad_epu8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_set1\_epi16 ¶](#_mm_set1_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L396)

```
_mm_set1_epi16 :: proc "c" (a: i16) -> #simd[2]i64 {…}
```

### [\_mm\_set1\_epi32 ¶](#_mm_set1_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L392)

```
_mm_set1_epi32 :: proc "c" (a: i32) -> #simd[2]i64 {…}
```

### [\_mm\_set1\_epi64x ¶](#_mm_set1_epi64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L388)

```
_mm_set1_epi64x :: proc "c" (a: i64) -> #simd[2]i64 {…}
```

### [\_mm\_set1\_epi8 ¶](#_mm_set1_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L400)

```
_mm_set1_epi8 :: proc "c" (a: i8) -> #simd[2]i64 {…}
```

### [\_mm\_set1\_pd ¶](#_mm_set1_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L851)

```
_mm_set1_pd :: proc "c" (a: f64) -> #simd[2]f64 {…}
```

### [\_mm\_set1\_ps ¶](#_mm_set1_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L319)

```
_mm_set1_ps :: proc "c" (a: f32) -> #simd[4]f32 {…}
```

### [\_mm\_set\_epi16 ¶](#_mm_set_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L380)

```
_mm_set_epi16 :: proc "c" (
	e7, e6, e5, e4, e3, e2, e1, 
	e0:                         i16, 
) -> #simd[2]i64 {…}
```

### [\_mm\_set\_epi32 ¶](#_mm_set_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L376)

```
_mm_set_epi32 :: proc "c" (e3, e2, e1, e0: i32) -> #simd[2]i64 {…}
```

### [\_mm\_set\_epi64x ¶](#_mm_set_epi64x) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L372)

```
_mm_set_epi64x :: proc "c" (e1, e0: i64) -> #simd[2]i64 {…}
```

### [\_mm\_set\_epi8 ¶](#_mm_set_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L384)

```
_mm_set_epi8 :: proc "c" (
	e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, 
	e0:                                                               i8, 
) -> #simd[2]i64 {…}
```

### [\_mm\_set\_pd ¶](#_mm_set_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L859)

```
_mm_set_pd :: proc "c" (a, b: f64) -> #simd[2]f64 {…}
```

### [\_mm\_set\_pd1 ¶](#_mm_set_pd1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L855)

```
_mm_set_pd1 :: proc "c" (a: f64) -> #simd[2]f64 {…}
```

### [\_mm\_set\_ps ¶](#_mm_set_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L325)

```
_mm_set_ps :: proc "c" (a, b, c, d: f32) -> #simd[4]f32 {…}
```

### [\_mm\_set\_ps1 ¶](#_mm_set_ps1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L319)

```
_mm_set_ps1 :: _mm_set1_ps
```

### [\_mm\_set\_sd ¶](#_mm_set_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L847)

```
_mm_set_sd :: proc "c" (a: f64) -> #simd[2]f64 {…}
```

### [\_mm\_set\_ss ¶](#_mm_set_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L315)

```
_mm_set_ss :: proc "c" (a: f32) -> #simd[4]f32 {…}
```

### [\_mm\_setcsr ¶](#_mm_setcsr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L451)

```
_mm_setcsr :: proc "c" (val: u32) {…}
```

### [\_mm\_setr\_epi16 ¶](#_mm_setr_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L408)

```
_mm_setr_epi16 :: proc "c" (
	e7, e6, e5, e4, e3, e2, e1, 
	e0:                         i16, 
) -> #simd[2]i64 {…}
```

### [\_mm\_setr\_epi32 ¶](#_mm_setr_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L404)

```
_mm_setr_epi32 :: proc "c" (e3, e2, e1, e0: i32) -> #simd[2]i64 {…}
```

### [\_mm\_setr\_epi8 ¶](#_mm_setr_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L412)

```
_mm_setr_epi8 :: proc "c" (
	e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, 
	e0:                                                               i8, 
) -> #simd[2]i64 {…}
```

### [\_mm\_setr\_pd ¶](#_mm_setr_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L863)

```
_mm_setr_pd :: proc "c" (a, b: f64) -> #simd[2]f64 {…}
```

### [\_mm\_setr\_ps ¶](#_mm_setr_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L329)

```
_mm_setr_ps :: proc "c" (a, b, c, d: f32) -> #simd[4]f32 {…}
```

### [\_mm\_setzero\_pd ¶](#_mm_setzero_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L867)

```
_mm_setzero_pd :: proc "c" () -> #simd[2]f64 {…}
```

### [\_mm\_setzero\_ps ¶](#_mm_setzero_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L334)

```
_mm_setzero_ps :: proc "c" () -> #simd[4]f32 {…}
```

### [\_mm\_setzero\_si128 ¶](#_mm_setzero_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L416)

```
_mm_setzero_si128 :: proc "c" () -> #simd[2]i64 {…}
```

### [\_mm\_sfence ¶](#_mm_sfence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L440)

```
_mm_sfence :: proc "c" () {…}
```

### [\_mm\_sha1msg1\_epu32 ¶](#_mm_sha1msg1_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin#L5)

```
_mm_sha1msg1_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sha1msg2\_epu32 ¶](#_mm_sha1msg2_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin#L9)

```
_mm_sha1msg2_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sha1nexte\_epu32 ¶](#_mm_sha1nexte_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin#L13)

```
_mm_sha1nexte_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sha1rnds4\_epu32 ¶](#_mm_sha1rnds4_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin#L17)

```
_mm_sha1rnds4_epu32 :: proc "c" (a, b: #simd[2]i64, $FUNC: u32) -> #simd[2]i64 {…}
```

### [\_mm\_sha256msg1\_epu32 ¶](#_mm_sha256msg1_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin#L21)

```
_mm_sha256msg1_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sha256msg2\_epu32 ¶](#_mm_sha256msg2_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin#L25)

```
_mm_sha256msg2_epu32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sha256rnds2\_epu32 ¶](#_mm_sha256rnds2_epu32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin#L29)

```
_mm_sha256rnds2_epu32 :: proc "c" (a, b, k: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_shuffle\_epi32 ¶](#_mm_shuffle_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L494)

```
_mm_shuffle_epi32 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_shuffle\_epi8 ¶](#_mm_shuffle_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L21)

```
_mm_shuffle_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_shuffle\_pd ¶](#_mm_shuffle_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L947)

```
_mm_shuffle_pd :: proc "c" (a, b: #simd[2]f64, $MASK: u32) -> #simd[2]f64 {…}
```

### [\_mm\_shuffle\_ps ¶](#_mm_shuffle_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L339)

```
_mm_shuffle_ps :: proc "c" (a, b: #simd[4]f32, $MASK: u32) -> #simd[4]f32 {…}
```

### [\_mm\_shufflehi\_epi16 ¶](#_mm_shufflehi_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L506)

```
_mm_shufflehi_epi16 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_shufflelo\_epi16 ¶](#_mm_shufflelo_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L522)

```
_mm_shufflelo_epi16 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_sign\_epi16 ¶](#_mm_sign_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L98)

```
_mm_sign_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sign\_epi32 ¶](#_mm_sign_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L102)

```
_mm_sign_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sign\_epi8 ¶](#_mm_sign_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin#L94)

```
_mm_sign_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sll\_epi16 ¶](#_mm_sll_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L222)

```
_mm_sll_epi16 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sll\_epi32 ¶](#_mm_sll_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L230)

```
_mm_sll_epi32 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sll\_epi64 ¶](#_mm_sll_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L238)

```
_mm_sll_epi64 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_slli\_epi16 ¶](#_mm_slli_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L218)

```
_mm_slli_epi16 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_slli\_epi32 ¶](#_mm_slli_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L226)

```
_mm_slli_epi32 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_slli\_epi64 ¶](#_mm_slli_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L234)

```
_mm_slli_epi64 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_slli\_si128 ¶](#_mm_slli_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L204)

```
_mm_slli_si128 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_sqrt\_pd ¶](#_mm_sqrt_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L626)

```
_mm_sqrt_pd :: proc "c" (a: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_sqrt\_ps ¶](#_mm_sqrt_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L87)

```
_mm_sqrt_ps :: proc "c" (a: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_sqrt\_sd ¶](#_mm_sqrt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L622)

```
_mm_sqrt_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_sqrt\_ss ¶](#_mm_sqrt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L83)

```
_mm_sqrt_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_sra\_epi16 ¶](#_mm_sra_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L246)

```
_mm_sra_epi16 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sra\_epi32 ¶](#_mm_sra_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L254)

```
_mm_sra_epi32 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_srai\_epi16 ¶](#_mm_srai_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L242)

```
_mm_srai_epi16 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_srai\_epi32 ¶](#_mm_srai_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L250)

```
_mm_srai_epi32 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_srl\_epi16 ¶](#_mm_srl_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L268)

```
_mm_srl_epi16 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_srl\_epi32 ¶](#_mm_srl_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L276)

```
_mm_srl_epi32 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_srl\_epi64 ¶](#_mm_srl_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L284)

```
_mm_srl_epi64 :: proc "c" (a, count: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_srli\_epi16 ¶](#_mm_srli_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L264)

```
_mm_srli_epi16 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_srli\_epi32 ¶](#_mm_srli_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L272)

```
_mm_srli_epi32 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_srli\_epi64 ¶](#_mm_srli_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L280)

```
_mm_srli_epi64 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_srli\_si128 ¶](#_mm_srli_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L260)

```
_mm_srli_si128 :: proc "c" (a: #simd[2]i64, $IMM8: u32) -> #simd[2]i64 {…}
```

### [\_mm\_store1\_pd ¶](#_mm_store1_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L907)

```
_mm_store1_pd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_store1\_ps ¶](#_mm_store1_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L412)

```
_mm_store1_ps :: proc "c" (p: [^]f32, a: #simd[4]f32) {…}
```

### [\_mm\_store\_pd ¶](#_mm_store_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L899)

```
_mm_store_pd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_store\_pd1 ¶](#_mm_store_pd1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L911)

```
_mm_store_pd1 :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_store\_ps ¶](#_mm_store_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L420)

```
_mm_store_ps :: proc "c" (p: [^]f32, a: #simd[4]f32) {…}
```

### [\_mm\_store\_ps1 ¶](#_mm_store_ps1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L412)

```
_mm_store_ps1 :: _mm_store1_ps
```

### [\_mm\_store\_sd ¶](#_mm_store_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L895)

```
_mm_store_sd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_store\_si128 ¶](#_mm_store_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L440)

```
_mm_store_si128 :: proc "c" (mem_addr: ^#simd[2]i64, a: #simd[2]i64) {…}
```

### [\_mm\_store\_ss ¶](#_mm_store_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L407)

```
_mm_store_ss :: proc "c" (p: ^f32, a: #simd[4]f32) {…}
```

### [\_mm\_storeh\_pd ¶](#_mm_storeh_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L919)

```
_mm_storeh_pd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_storel\_epi64 ¶](#_mm_storel_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L448)

```
_mm_storel_epi64 :: proc "c" (mem_addr: ^#simd[2]i64, a: #simd[2]i64) {…}
```

### [\_mm\_storel\_pd ¶](#_mm_storel_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L923)

```
_mm_storel_pd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_storer\_pd ¶](#_mm_storer_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L915)

```
_mm_storer_pd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_storer\_ps ¶](#_mm_storer_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L429)

```
_mm_storer_ps :: proc "c" (p: [^]f32, a: #simd[4]f32) {…}
```

### [\_mm\_storeu\_pd ¶](#_mm_storeu_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L903)

```
_mm_storeu_pd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_storeu\_ps ¶](#_mm_storeu_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L424)

```
_mm_storeu_ps :: proc "c" (p: [^]f32, a: #simd[4]f32) {…}
```

### [\_mm\_storeu\_si128 ¶](#_mm_storeu_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L444)

```
_mm_storeu_si128 :: proc "c" (mem_addr: ^#simd[2]i64, a: #simd[2]i64) {…}
```

### [\_mm\_stream\_pd ¶](#_mm_stream_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L891)

```
_mm_stream_pd :: proc "c" (mem_addr: ^f64, a: #simd[2]f64) {…}
```

### [\_mm\_stream\_ps ¶](#_mm_stream_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L515)

```
_mm_stream_ps :: proc "c" (addr: [^]f32, a: #simd[4]f32) {…}
```

### [\_mm\_stream\_si128 ¶](#_mm_stream_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L453)

```
_mm_stream_si128 :: proc "c" (mem_addr: ^#simd[2]i64, a: #simd[2]i64) {…}
```

### [\_mm\_stream\_si32 ¶](#_mm_stream_si32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L457)

```
_mm_stream_si32 :: proc "c" (mem_addr: ^i32, a: i32) {…}
```

### [\_mm\_stream\_si64 ¶](#_mm_stream_si64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L1020)

```
_mm_stream_si64 :: proc "c" (mem_addr: ^i64, a: i64) {…}
```

### [\_mm\_sub\_epi16 ¶](#_mm_sub_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L112)

```
_mm_sub_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sub\_epi32 ¶](#_mm_sub_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L116)

```
_mm_sub_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sub\_epi64 ¶](#_mm_sub_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L120)

```
_mm_sub_epi64 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sub\_epi8 ¶](#_mm_sub_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L108)

```
_mm_sub_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_sub\_pd ¶](#_mm_sub_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L634)

```
_mm_sub_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_sub\_ps ¶](#_mm_sub_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L60)

```
_mm_sub_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_sub\_sd ¶](#_mm_sub_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L630)

```
_mm_sub_sd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_sub\_ss ¶](#_mm_sub_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L56)

```
_mm_sub_ss :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_subs\_epi16 ¶](#_mm_subs_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L128)

```
_mm_subs_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_subs\_epi8 ¶](#_mm_subs_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L124)

```
_mm_subs_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_subs\_epu16 ¶](#_mm_subs_epu16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L136)

```
_mm_subs_epu16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_subs\_epu8 ¶](#_mm_subs_epu8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L132)

```
_mm_subs_epu8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_test\_all\_ones ¶](#_mm_test_all_ones) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L283)

```
_mm_test_all_ones :: proc "c" (a: #simd[2]i64) -> i32 {…}
```

### [\_mm\_test\_all\_zeros ¶](#_mm_test_all_zeros) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L279)

```
_mm_test_all_zeros :: proc "c" (a: #simd[2]i64, mask: #simd[2]i64) -> i32 {…}
```

### [\_mm\_test\_mix\_ones\_zeros ¶](#_mm_test_mix_ones_zeros) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L287)

```
_mm_test_mix_ones_zeros :: proc "c" (a: #simd[2]i64, mask: #simd[2]i64) -> i32 {…}
```

### [\_mm\_testc\_pd ¶](#_mm_testc_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1268)

```
_mm_testc_pd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

 

Computes the bitwise AND of 128 bits (representing double-precision (64-bit) floating-point elements) in `a` and `b`, producing an intermediate 128-bit
value, and set `ZF` to 1 if the sign bit of each 64-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 64-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `CF` value.

### [\_mm\_testc\_ps ¶](#_mm_testc_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1346)

```
_mm_testc_ps :: proc "c" (a, b: #simd[4]f32) -> i32 {…}
```

 

Computes the bitwise AND of 128 bits (representing single-precision (32-bit) floating-point elements) in `a` and `b`, producing an intermediate 128-bit
value, and set `ZF` to 1 if the sign bit of each 32-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 32-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `CF` value.

### [\_mm\_testc\_si128 ¶](#_mm_testc_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L271)

```
_mm_testc_si128 :: proc "c" (a: #simd[2]i64, mask: #simd[2]i64) -> i32 {…}
```

### [\_mm\_testnzc\_pd ¶](#_mm_testnzc_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1283)

```
_mm_testnzc_pd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

 

Computes the bitwise AND of 128 bits (representing double-precision (64-bit) floating-point elements) in `a` and `b`, producing an intermediate 128-bit
value, and set `ZF` to 1 if the sign bit of each 64-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 64-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return 1 if both the `ZF` and `CF` values
are zero, otherwise return 0.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_testnzc\_pd)

### [\_mm\_testnzc\_ps ¶](#_mm_testnzc_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1361)

```
_mm_testnzc_ps :: proc "c" (a, b: #simd[4]f32) -> i32 {…}
```

 

Computes the bitwise AND of 128 bits (representing single-precision (32-bit) floating-point elements) in `a` and `b`, producing an intermediate 128-bit
value, and set `ZF` to 1 if the sign bit of each 32-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 32-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return 1 if both the `ZF` and `CF` values
are zero, otherwise return 0.

[Intel's documentation](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#text=\_mm\_testnzc\_ps)

### [\_mm\_testnzc\_si128 ¶](#_mm_testnzc_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L275)

```
_mm_testnzc_si128 :: proc "c" (a: #simd[2]i64, mask: #simd[2]i64) -> i32 {…}
```

### [\_mm\_testz\_pd ¶](#_mm_testz_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1256)

```
_mm_testz_pd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

 

Computes the bitwise AND of 128 bits (representing double-precision (64-bit) floating-point elements) in `a` and `b`, producing an intermediate 128-bit
value, and set `ZF` to 1 if the sign bit of each 64-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 64-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `ZF` value.

### [\_mm\_testz\_ps ¶](#_mm_testz_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin#L1334)

```
_mm_testz_ps :: proc "c" (a, b: #simd[4]f32) -> i32 {…}
```

 

Computes the bitwise AND of 128 bits (representing single-precision (32-bit) floating-point elements) in `a` and `b`, producing an intermediate 128-bit
value, and set `ZF` to 1 if the sign bit of each 32-bit element in the
intermediate value is zero, otherwise set `ZF` to 0. Compute the bitwise
NOT of `a` and then AND with `b`, producing an intermediate value, and set
`CF` to 1 if the sign bit of each 32-bit element in the intermediate value
is zero, otherwise set `CF` to 0. Return the `ZF` value.

### [\_mm\_testz\_si128 ¶](#_mm_testz_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin#L267)

```
_mm_testz_si128 :: proc "c" (a: #simd[2]i64, mask: #simd[2]i64) -> i32 {…}
```

### [\_mm\_ucomieq\_sd ¶](#_mm_ucomieq_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L778)

```
_mm_ucomieq_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_ucomieq\_ss ¶](#_mm_ucomieq_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L271)

```
_mm_ucomieq_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_ucomige\_sd ¶](#_mm_ucomige_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L794)

```
_mm_ucomige_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_ucomige\_ss ¶](#_mm_ucomige_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L287)

```
_mm_ucomige_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_ucomigt\_sd ¶](#_mm_ucomigt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L790)

```
_mm_ucomigt_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_ucomigt\_ss ¶](#_mm_ucomigt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L283)

```
_mm_ucomigt_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_ucomile\_sd ¶](#_mm_ucomile_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L786)

```
_mm_ucomile_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_ucomile\_ss ¶](#_mm_ucomile_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L279)

```
_mm_ucomile_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_ucomilt\_sd ¶](#_mm_ucomilt_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L782)

```
_mm_ucomilt_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_ucomilt\_ss ¶](#_mm_ucomilt_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L275)

```
_mm_ucomilt_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_ucomineq\_sd ¶](#_mm_ucomineq_sd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L798)

```
_mm_ucomineq_sd :: proc "c" (a, b: #simd[2]f64) -> i32 {…}
```

### [\_mm\_ucomineq\_ss ¶](#_mm_ucomineq_ss) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L291)

```
_mm_ucomineq_ss :: proc "c" (a, b: #simd[4]f32) -> b32 {…}
```

### [\_mm\_undefined\_pd ¶](#_mm_undefined_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L985)

```
_mm_undefined_pd :: proc "c" () -> #simd[2]f64 {…}
```

### [\_mm\_undefined\_ps ¶](#_mm_undefined_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L497)

```
_mm_undefined_ps :: proc "c" () -> #simd[4]f32 {…}
```

### [\_mm\_undefined\_si128 ¶](#_mm_undefined_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L989)

```
_mm_undefined_si128 :: proc "c" () -> #simd[2]i64 {…}
```

### [\_mm\_unpackhi\_epi16 ¶](#_mm_unpackhi_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L546)

```
_mm_unpackhi_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpackhi\_epi32 ¶](#_mm_unpackhi_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L550)

```
_mm_unpackhi_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpackhi\_epi64 ¶](#_mm_unpackhi_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L554)

```
_mm_unpackhi_epi64 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpackhi\_epi8 ¶](#_mm_unpackhi_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L538)

```
_mm_unpackhi_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpackhi\_pd ¶](#_mm_unpackhi_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L993)

```
_mm_unpackhi_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_unpackhi\_ps ¶](#_mm_unpackhi_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L350)

```
_mm_unpackhi_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_unpacklo\_epi16 ¶](#_mm_unpacklo_epi16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L566)

```
_mm_unpacklo_epi16 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpacklo\_epi32 ¶](#_mm_unpacklo_epi32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L570)

```
_mm_unpacklo_epi32 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpacklo\_epi64 ¶](#_mm_unpacklo_epi64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L574)

```
_mm_unpacklo_epi64 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpacklo\_epi8 ¶](#_mm_unpacklo_epi8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L558)

```
_mm_unpacklo_epi8 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_mm\_unpacklo\_pd ¶](#_mm_unpacklo_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L997)

```
_mm_unpacklo_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_unpacklo\_ps ¶](#_mm_unpacklo_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L354)

```
_mm_unpacklo_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_xor\_pd ¶](#_mm_xor_pd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L650)

```
_mm_xor_pd :: proc "c" (a, b: #simd[2]f64) -> #simd[2]f64 {…}
```

### [\_mm\_xor\_ps ¶](#_mm_xor_ps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin#L140)

```
_mm_xor_ps :: proc "c" (a, b: #simd[4]f32) -> #simd[4]f32 {…}
```

### [\_mm\_xor\_si128 ¶](#_mm_xor_si128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin#L302)

```
_mm_xor_si128 :: proc "c" (a, b: #simd[2]i64) -> #simd[2]i64 {…}
```

### [\_pdep\_u32 ¶](#_pdep_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi2.odin#L14)

```
_pdep_u32 :: proc "c" (a, mask: u32) -> u32 {…}
```

### [\_pdep\_u64 ¶](#_pdep_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi2.odin#L18)

```
_pdep_u64 :: proc "c" (a, mask: u64) -> u64 {…}
```

### [\_pext\_u32 ¶](#_pext_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi2.odin#L23)

```
_pext_u32 :: proc "c" (a, mask: u32) -> u32 {…}
```

### [\_pext\_u64 ¶](#_pext_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi2.odin#L27)

```
_pext_u64 :: proc "c" (a, mask: u64) -> u64 {…}
```

### [\_popcnt32 ¶](#_popcnt32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/abm.odin#L11)

```
_popcnt32 :: proc "c" (x: u32) -> i32 {…}
```

### [\_popcnt64 ¶](#_popcnt64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/abm.odin#L21)

```
_popcnt64 :: proc "c" (x: u64) -> i32 {…}
```

### [\_rdtsc ¶](#_rdtsc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/rdtsc.odin#L5)

```
_rdtsc :: proc "c" () -> u64 {…}
```

### [\_subborrow\_u32 ¶](#_subborrow_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/adx.odin#L15)

```
_subborrow_u32 :: proc "c" (c_in: u8, a: u32, b: u32, out: ^u32) -> u8 {…}
```

### [\_subborrow\_u64 ¶](#_subborrow_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/adx.odin#L33)

```
_subborrow_u64 :: proc "c" (c_in: u8, a: u64, b: u64, out: ^u64) -> u8 {…}
```

### [\_tzcnt\_u16 ¶](#_tzcnt_u16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L61)

```
_tzcnt_u16 :: proc "c" (a: u16) -> u16 {…}
```

### [\_tzcnt\_u32 ¶](#_tzcnt_u32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L65)

```
_tzcnt_u32 :: proc "c" (a: u32) -> u32 {…}
```

### [\_tzcnt\_u64 ¶](#_tzcnt_u64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin#L69)

```
_tzcnt_u64 :: proc "c" (a: u64) -> u64 {…}
```

### [cmpxchg16b ¶](#cmpxchg16b) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/cmpxchg16b.odin#L6)

```
cmpxchg16b :: proc "c" (dst: ^u128, old, new: u128, $success, $failure: .Atomic_Memory_Order) -> (val: u128) {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [abm.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/abm.odin)
* [adx.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/adx.odin)
* [aes.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/aes.odin)
* [avx.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/avx.odin)
* [bmi.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi.odin)
* [bmi2.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/bmi2.odin)
* [cmpxchg16b.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/cmpxchg16b.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/doc.odin)
* [fxsr.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/fxsr.odin)
* [pclmulqdq.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/pclmulqdq.odin)
* [rdtsc.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/rdtsc.odin)
* [sha.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sha.odin)
* [sse.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse.odin)
* [sse2.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse2.odin)
* [sse3.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse3.odin)
* [sse41.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse41.odin)
* [sse42.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/sse42.odin)
* [ssse3.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/ssse3.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/core/simd/x86/types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.273808600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [\_MM\_CMPINT\_ENUM](#_MM_CMPINT_ENUM)
    + [\_MM\_MANTISSA\_NORM\_ENUM](#_MM_MANTISSA_NORM_ENUM)
    + [\_MM\_MANTISSA\_SIGN\_ENUM](#_MM_MANTISSA_SIGN_ENUM)
    + [\_MM\_PERM\_ENUM](#_MM_PERM_ENUM)
    + [\_\_m128](#__m128)
    + [\_\_m128bh](#__m128bh)
    + [\_\_m128d](#__m128d)
    + [\_\_m128i](#__m128i)
    + [\_\_m256](#__m256)
    + [\_\_m256bh](#__m256bh)
    + [\_\_m256d](#__m256d)
    + [\_\_m256i](#__m256i)
    + [\_\_m512](#__m512)
    + [\_\_m512bh](#__m512bh)
    + [\_\_m512d](#__m512d)
    + [\_\_m512i](#__m512i)
    + [\_\_mmask16](#__mmask16)
    + [\_\_mmask32](#__mmask32)
    + [\_\_mmask64](#__mmask64)
    + [\_\_mmask8](#__mmask8)
    + [bf16](#bf16)
  * [Constants](#pkg-Constants)
    + [\_CMP\_EQ\_OQ](#_CMP_EQ_OQ)
    + [\_CMP\_EQ\_OS](#_CMP_EQ_OS)
    + [\_CMP\_EQ\_UQ](#_CMP_EQ_UQ)
    + [\_CMP\_EQ\_US](#_CMP_EQ_US)
    + [\_CMP\_FALSE\_OQ](#_CMP_FALSE_OQ)
    + [\_CMP\_FALSE\_OS](#_CMP_FALSE_OS)
    + [\_CMP\_GE\_OQ](#_CMP_GE_OQ)
    + [\_CMP\_GE\_OS](#_CMP_GE_OS)
    + [\_CMP\_GT\_OQ](#_CMP_GT_OQ)
    + [\_CMP\_GT\_OS](#_CMP_GT_OS)
    + [\_CMP\_LE\_OQ](#_CMP_LE_OQ)
    + [\_CMP\_LE\_OS](#_CMP_LE_OS)
    + [\_CMP\_LT\_OQ](#_CMP_LT_OQ)
    + [\_CMP\_LT\_OS](#_CMP_LT_OS)
    + [\_CMP\_NEQ\_OQ](#_CMP_NEQ_OQ)
    + [\_CMP\_NEQ\_OS](#_CMP_NEQ_OS)
    + [\_CMP\_NEQ\_UQ](#_CMP_NEQ_UQ)
    + [\_CMP\_NEQ\_US](#_CMP_NEQ_US)
    + [\_CMP\_NGE\_UQ](#_CMP_NGE_UQ)
    + [\_CMP\_NGE\_US](#_CMP_NGE_US)
    + [\_CMP\_NGT\_UQ](#_CMP_NGT_UQ)
    + [\_CMP\_NGT\_US](#_CMP_NGT_US)
    + [\_CMP\_NLE\_UQ](#_CMP_NLE_UQ)
    + [\_CMP\_NLE\_US](#_CMP_NLE_US)
    + [\_CMP\_NLT\_UQ](#_CMP_NLT_UQ)
    + [\_CMP\_NLT\_US](#_CMP_NLT_US)
    + [\_CMP\_ORD\_Q](#_CMP_ORD_Q)
    + [\_CMP\_ORD\_S](#_CMP_ORD_S)
    + [\_CMP\_TRUE\_UQ](#_CMP_TRUE_UQ)
    + [\_CMP\_TRUE\_US](#_CMP_TRUE_US)
    + [\_CMP\_UNORD\_Q](#_CMP_UNORD_Q)
    + [\_CMP\_UNORD\_S](#_CMP_UNORD_S)
    + [\_MM\_EXCEPT\_DENORM](#_MM_EXCEPT_DENORM)
    + [\_MM\_EXCEPT\_DIV\_ZERO](#_MM_EXCEPT_DIV_ZERO)
    + [\_MM\_EXCEPT\_INEXACT](#_MM_EXCEPT_INEXACT)
    + [\_MM\_EXCEPT\_INVALID](#_MM_EXCEPT_INVALID)
    + [\_MM\_EXCEPT\_MASK](#_MM_EXCEPT_MASK)
    + [\_MM\_EXCEPT\_OVERFLOW](#_MM_EXCEPT_OVERFLOW)
    + [\_MM\_EXCEPT\_UNDERFLOW](#_MM_EXCEPT_UNDERFLOW)
    + [\_MM\_FLUSH\_ZERO\_MASK](#_MM_FLUSH_ZERO_MASK)
    + [\_MM\_FLUSH\_ZERO\_OFF](#_MM_FLUSH_ZERO_OFF)
    + [\_MM\_FLUSH\_ZERO\_ON](#_MM_FLUSH_ZERO_ON)
    + [\_MM\_FROUND\_CEIL](#_MM_FROUND_CEIL)
    + [\_MM\_FROUND\_CUR\_DIRECTION](#_MM_FROUND_CUR_DIRECTION)
    + [\_MM\_FROUND\_FLOOR](#_MM_FROUND_FLOOR)
    + [\_MM\_FROUND\_NEARBYINT](#_MM_FROUND_NEARBYINT)
    + [\_MM\_FROUND\_NINT](#_MM_FROUND_NINT)
    + [\_MM\_FROUND\_NO\_EXC](#_MM_FROUND_NO_EXC)
    + [\_MM\_FROUND\_RAISE\_EXC](#_MM_FROUND_RAISE_EXC)
    + [\_MM\_FROUND\_RINT](#_MM_FROUND_RINT)
    + [\_MM\_FROUND\_TO\_NEAREST\_INT](#_MM_FROUND_TO_NEAREST_INT)
    + [\_MM\_FROUND\_TO\_NEG\_INF](#_MM_FROUND_TO_NEG_INF)
    + [\_MM\_FROUND\_TO\_POS\_INF](#_MM_FROUND_TO_POS_INF)
    + [\_MM\_FROUND\_TO\_ZERO](#_MM_FROUND_TO_ZERO)
    + [\_MM\_FROUND\_TRUNC](#_MM_FROUND_TRUNC)
    + [\_MM\_HINT\_ET0](#_MM_HINT_ET0)
    + [\_MM\_HINT\_ET1](#_MM_HINT_ET1)
    + [\_MM\_HINT\_NTA](#_MM_HINT_NTA)
    + [\_MM\_HINT\_T0](#_MM_HINT_T0)
    + [\_MM\_HINT\_T1](#_MM_HINT_T1)
    + [\_MM\_HINT\_T2](#_MM_HINT_T2)
    + [\_MM\_MASK\_DENORM](#_MM_MASK_DENORM)
    + [\_MM\_MASK\_DIV\_ZERO](#_MM_MASK_DIV_ZERO)
    + [\_MM\_MASK\_INEXACT](#_MM_MASK_INEXACT)
    + [\_MM\_MASK\_INVALID](#_MM_MASK_INVALID)
    + [\_MM\_MASK\_MASK](#_MM_MASK_MASK)
    + [\_MM\_MASK\_OVERFLOW](#_MM_MASK_OVERFLOW)
    + [\_MM\_MASK\_UNDERFLOW](#_MM_MASK_UNDERFLOW)
    + [\_MM\_ROUND\_DOWN](#_MM_ROUND_DOWN)
    + [\_MM\_ROUND\_MASK](#_MM_ROUND_MASK)
    + [\_MM\_ROUND\_NEAREST](#_MM_ROUND_NEAREST)
    + [\_MM\_ROUND\_TOWARD\_ZERO](#_MM_ROUND_TOWARD_ZERO)
    + [\_MM\_ROUND\_UP](#_MM_ROUND_UP)
    + [\_SIDD\_BIT\_MASK](#_SIDD_BIT_MASK)
    + [\_SIDD\_CMP\_EQUAL\_ANY](#_SIDD_CMP_EQUAL_ANY)
    + [\_SIDD\_CMP\_EQUAL\_EACH](#_SIDD_CMP_EQUAL_EACH)
    + [\_SIDD\_CMP\_EQUAL\_ORDERED](#_SIDD_CMP_EQUAL_ORDERED)
    + [\_SIDD\_CMP\_RANGES](#_SIDD_CMP_RANGES)
    + [\_SIDD\_LEAST\_SIGNIFICANT](#_SIDD_LEAST_SIGNIFICANT)
    + [\_SIDD\_MASKED\_NEGATIVE\_POLARITY](#_SIDD_MASKED_NEGATIVE_POLARITY)
    + [\_SIDD\_MASKED\_POSITIVE\_POLARITY](#_SIDD_MASKED_POSITIVE_POLARITY)
    + [\_SIDD\_MOST\_SIGNIFICANT](#_SIDD_MOST_SIGNIFICANT)
    + [\_SIDD\_NEGATIVE\_POLARITY](#_SIDD_NEGATIVE_POLARITY)
    + [\_SIDD\_POSITIVE\_POLARITY](#_SIDD_POSITIVE_POLARITY)
    + [\_SIDD\_SBYTE\_OPS](#_SIDD_SBYTE_OPS)
    + [\_SIDD\_SWORD\_OPS](#_SIDD_SWORD_OPS)
    + [\_SIDD\_UBYTE\_OPS](#_SIDD_UBYTE_OPS)
    + [\_SIDD\_UNIT\_MASK](#_SIDD_UNIT_MASK)
    + [\_SIDD\_UWORD\_OPS](#_SIDD_UWORD_OPS)
  * [Procedures](#pkg-Procedures)
    + [\_MM\_GET\_EXCEPTION\_MASK](#_MM_GET_EXCEPTION_MASK)
    + [\_MM\_GET\_EXCEPTION\_STATE](#_MM_GET_EXCEPTION_STATE)
    + [\_MM\_GET\_FLUSH\_ZERO\_MODE](#_MM_GET_FLUSH_ZERO_MODE)
    + [\_MM\_GET\_ROUNDING\_MODE](#_MM_GET_ROUNDING_MODE)
    + [\_MM\_SET\_EXCEPTION\_MASK](#_MM_SET_EXCEPTION_MASK)
    + [\_MM\_SET\_EXCEPTION\_STATE](#_MM_SET_EXCEPTION_STATE)
    + [\_MM\_SET\_FLUSH\_ZERO\_MODE](#_MM_SET_FLUSH_ZERO_MODE)
    + [\_MM\_SET\_ROUNDING\_MODE](#_MM_SET_ROUNDING_MODE)
    + [\_MM\_SHUFFLE](#_MM_SHUFFLE)
    + [\_MM\_TRANSPOSE4\_PS](#_MM_TRANSPOSE4_PS)
    + [\_\_rdtscp](#__rdtscp)
    + [\_addcarry\_u32](#_addcarry_u32)
    + [\_addcarry\_u64](#_addcarry_u64)
    + [\_addcarryx\_u32](#_addcarryx_u32)
    + [\_addcarryx\_u64](#_addcarryx_u64)
    + [\_andn\_u32](#_andn_u32)
    + [\_andn\_u64](#_andn_u64)
    + [\_bextr2\_u32](#_bextr2_u32)
    + [\_bextr2\_u64](#_bextr2_u64)
    + [\_bextr\_u32](#_bextr_u32)
    + [\_bextr\_u64](#_bextr_u64)
    + [\_blsi\_u32](#_blsi_u32)
    + [\_blsi\_u64](#_blsi_u64)
    + [\_blsmsk\_u32](#_blsmsk_u32)
    + [\_blsmsk\_u64](#_blsmsk_u64)
    + [\_blsr\_u32](#_blsr_u32)
    + [\_blsr\_u64](#_blsr_u64)
    + [\_bzhi\_u32](#_bzhi_u32)
    + [\_bzhi\_u64](#_bzhi_u64)
    + [\_fxrstor](#_fxrstor)
    + [\_fxrstor64](#_fxrstor64)
    + [\_fxsave](#_fxsave)
    + [\_fxsave64](#_fxsave64)
    + [\_lzcnt\_u32](#_lzcnt_u32)
    + [\_lzcnt\_u64](#_lzcnt_u64)
    + [\_mm256\_add\_pd](#_mm256_add_pd)
    + [\_mm256\_add\_ps](#_mm256_add_ps)
    + [\_mm256\_addsub\_pd](#_mm256_addsub_pd)
    + [\_mm256\_addsub\_ps](#_mm256_addsub_ps)
    + [\_mm256\_and\_pd](#_mm256_and_pd)
    + [\_mm256\_and\_ps](#_mm256_and_ps)
    + [\_mm256\_andnot\_pd](#_mm256_andnot_pd)
    + [\_mm256\_andnot\_ps](#_mm256_andnot_ps)
    + [\_mm256\_blend\_pd](#_mm256_blend_pd)
    + [\_mm256\_blend\_ps](#_mm256_blend_ps)
    + [\_mm256\_blendv\_pd](#_mm256_blendv_pd)
    + [\_mm256\_blendv\_ps](#_mm256_blendv_ps)
    + [\_mm256\_broadcast\_pd](#_mm256_broadcast_pd)
    + [\_mm256\_broadcast\_ps](#_mm256_broadcast_ps)
    + [\_mm256\_broadcast\_sd](#_mm256_broadcast_sd)
    + [\_mm256\_broadcast\_ss](#_mm256_broadcast_ss)
    + [\_mm256\_castpd128\_pd256](#_mm256_castpd128_pd256)
    + [\_mm256\_castpd256\_pd128](#_mm256_castpd256_pd128)
    + [\_mm256\_castpd\_ps](#_mm256_castpd_ps)
    + [\_mm256\_castpd\_si256](#_mm256_castpd_si256)
    + [\_mm256\_castps128\_ps256](#_mm256_castps128_ps256)
    + [\_mm256\_castps256\_ps128](#_mm256_castps256_ps128)
    + [\_mm256\_castps\_pd](#_mm256_castps_pd)
    + [\_mm256\_castps\_si256](#_mm256_castps_si256)
    + [\_mm256\_castsi128\_si256](#_mm256_castsi128_si256)
    + [\_mm256\_castsi256\_pd](#_mm256_castsi256_pd)
    + [\_mm256\_castsi256\_ps](#_mm256_castsi256_ps)
    + [\_mm256\_castsi256\_si128](#_mm256_castsi256_si128)
    + [\_mm256\_ceil\_pd](#_mm256_ceil_pd)
    + [\_mm256\_ceil\_ps](#_mm256_ceil_ps)
    + [\_mm256\_cmp\_pd](#_mm256_cmp_pd)
    + [\_mm256\_cmp\_ps](#_mm256_cmp_ps)
    + [\_mm256\_cvtepi32\_pd](#_mm256_cvtepi32_pd)
    + [\_mm256\_cvtepi32\_ps](#_mm256_cvtepi32_ps)
    + [\_mm256\_cvtpd\_epi32](#_mm256_cvtpd_epi32)
    + [\_mm256\_cvtpd\_ps](#_mm256_cvtpd_ps)
    + [\_mm256\_cvtps\_epi32](#_mm256_cvtps_epi32)
    + [\_mm256\_cvtps\_pd](#_mm256_cvtps_pd)
    + [\_mm256\_cvtsd\_f64](#_mm256_cvtsd_f64)
    + [\_mm256\_cvtsi256\_si32](#_mm256_cvtsi256_si32)
    + [\_mm256\_cvtss\_f32](#_mm256_cvtss_f32)
    + [\_mm256\_cvttpd\_epi32](#_mm256_cvttpd_epi32)
    + [\_mm256\_cvttps\_epi32](#_mm256_cvttps_epi32)
    + [\_mm256\_div\_pd](#_mm256_div_pd)
    + [\_mm256\_div\_ps](#_mm256_div_ps)
    + [\_mm256\_dp\_ps](#_mm256_dp_ps)
    + [\_mm256\_extract\_epi32](#_mm256_extract_epi32)
    + [\_mm256\_extract\_epi64](#_mm256_extract_epi64)
    + [\_mm256\_extractf128\_pd](#_mm256_extractf128_pd)
    + [\_mm256\_extractf128\_ps](#_mm256_extractf128_ps)
    + [\_mm256\_extractf128\_si256](#_mm256_extractf128_si256)
    + [\_mm256\_floor\_pd](#_mm256_floor_pd)
    + [\_mm256\_floor\_ps](#_mm256_floor_ps)
    + [\_mm256\_hadd\_pd](#_mm256_hadd_pd)
    + [\_mm256\_hadd\_ps](#_mm256_hadd_ps)
    + [\_mm256\_hsub\_pd](#_mm256_hsub_pd)
    + [\_mm256\_hsub\_ps](#_mm256_hsub_ps)
    + [\_mm256\_insert\_epi16](#_mm256_insert_epi16)
    + [\_mm256\_insert\_epi32](#_mm256_insert_epi32)
    + [\_mm256\_insert\_epi64](#_mm256_insert_epi64)
    + [\_mm256\_insert\_epi8](#_mm256_insert_epi8)
    + [\_mm256\_insertf128\_pd](#_mm256_insertf128_pd)
    + [\_mm256\_insertf128\_ps](#_mm256_insertf128_ps)
    + [\_mm256\_insertf128\_si256](#_mm256_insertf128_si256)
    + [\_mm256\_lddqu\_si256](#_mm256_lddqu_si256)
    + [\_mm256\_load\_pd](#_mm256_load_pd)
    + [\_mm256\_load\_ps](#_mm256_load_ps)
    + [\_mm256\_load\_si256](#_mm256_load_si256)
    + [\_mm256\_loadu2\_m128](#_mm256_loadu2_m128)
    + [\_mm256\_loadu2\_m128d](#_mm256_loadu2_m128d)
    + [\_mm256\_loadu2\_m128i](#_mm256_loadu2_m128i)
    + [\_mm256\_loadu\_pd](#_mm256_loadu_pd)
    + [\_mm256\_loadu\_ps](#_mm256_loadu_ps)
    + [\_mm256\_loadu\_si256](#_mm256_loadu_si256)
    + [\_mm256\_maskload\_pd](#_mm256_maskload_pd)
    + [\_mm256\_maskload\_ps](#_mm256_maskload_ps)
    + [\_mm256\_maskstore\_pd](#_mm256_maskstore_pd)
    + [\_mm256\_maskstore\_ps](#_mm256_maskstore_ps)
    + [\_mm256\_max\_pd](#_mm256_max_pd)
    + [\_mm256\_max\_ps](#_mm256_max_ps)
    + [\_mm256\_min\_pd](#_mm256_min_pd)
    + [\_mm256\_min\_ps](#_mm256_min_ps)
    + [\_mm256\_movedup\_pd](#_mm256_movedup_pd)
    + [\_mm256\_movehdup\_ps](#_mm256_movehdup_ps)
    + [\_mm256\_moveldup\_ps](#_mm256_moveldup_ps)
    + [\_mm256\_movemask\_pd](#_mm256_movemask_pd)
    + [\_mm256\_movemask\_ps](#_mm256_movemask_ps)
    + [\_mm256\_mul\_pd](#_mm256_mul_pd)
    + [\_mm256\_mul\_ps](#_mm256_mul_ps)
    + [\_mm256\_or\_pd](#_mm256_or_pd)
    + [\_mm256\_or\_ps](#_mm256_or_ps)
    + [\_mm256\_permute2f128\_pd](#_mm256_permute2f128_pd)
    + [\_mm256\_permute2f128\_ps](#_mm256_permute2f128_ps)
    + [\_mm256\_permute2f128\_si256](#_mm256_permute2f128_si256)
    + [\_mm256\_permute\_pd](#_mm256_permute_pd)
    + [\_mm256\_permute\_ps](#_mm256_permute_ps)
    + [\_mm256\_permutevar\_pd](#_mm256_permutevar_pd)
    + [\_mm256\_permutevar\_ps](#_mm256_permutevar_ps)
    + [\_mm256\_rcp\_ps](#_mm256_rcp_ps)
    + [\_mm256\_round\_pd](#_mm256_round_pd)
    + [\_mm256\_round\_ps](#_mm256_round_ps)
    + [\_mm256\_rsqrt\_ps](#_mm256_rsqrt_ps)
    + [\_mm256\_set1\_epi16](#_mm256_set1_epi16)
    + [\_mm256\_set1\_epi32](#_mm256_set1_epi32)
    + [\_mm256\_set1\_epi64x](#_mm256_set1_epi64x)
    + [\_mm256\_set1\_epi8](#_mm256_set1_epi8)
    + [\_mm256\_set1\_pd](#_mm256_set1_pd)
    + [\_mm256\_set1\_ps](#_mm256_set1_ps)
    + [\_mm256\_set\_epi16](#_mm256_set_epi16)
    + [\_mm256\_set\_epi32](#_mm256_set_epi32)
    + [\_mm256\_set\_epi64x](#_mm256_set_epi64x)
    + [\_mm256\_set\_epi8](#_mm256_set_epi8)
    + [\_mm256\_set\_m128](#_mm256_set_m128)
    + [\_mm256\_set\_m128d](#_mm256_set_m128d)
    + [\_mm256\_set\_m128i](#_mm256_set_m128i)
    + [\_mm256\_set\_pd](#_mm256_set_pd)
    + [\_mm256\_set\_ps](#_mm256_set_ps)
    + [\_mm256\_setr\_epi16](#_mm256_setr_epi16)
    + [\_mm256\_setr\_epi32](#_mm256_setr_epi32)
    + [\_mm256\_setr\_epi64x](#_mm256_setr_epi64x)
    + [\_mm256\_setr\_epi8](#_mm256_setr_epi8)
    + [\_mm256\_setr\_m128](#_mm256_setr_m128)
    + [\_mm256\_setr\_m128d](#_mm256_setr_m128d)
    + [\_mm256\_setr\_m128i](#_mm256_setr_m128i)
    + [\_mm256\_setr\_pd](#_mm256_setr_pd)
    + [\_mm256\_setr\_ps](#_mm256_setr_ps)
    + [\_mm256\_setzero\_pd](#_mm256_setzero_pd)
    + [\_mm256\_setzero\_ps](#_mm256_setzero_ps)
    + [\_mm256\_setzero\_si256](#_mm256_setzero_si256)
    + [\_mm256\_shuffle\_pd](#_mm256_shuffle_pd)
    + [\_mm256\_shuffle\_ps](#_mm256_shuffle_ps)
    + [\_mm256\_sqrt\_pd](#_mm256_sqrt_pd)
    + [\_mm256\_sqrt\_ps](#_mm256_sqrt_ps)
    + [\_mm256\_store\_pd](#_mm256_store_pd)
    + [\_mm256\_store\_ps](#_mm256_store_ps)
    + [\_mm256\_store\_si256](#_mm256_store_si256)
    + [\_mm256\_storeu2\_m128](#_mm256_storeu2_m128)
    + [\_mm256\_storeu2\_m128d](#_mm256_storeu2_m128d)
    + [\_mm256\_storeu2\_m128i](#_mm256_storeu2_m128i)
    + [\_mm256\_storeu\_pd](#_mm256_storeu_pd)
    + [\_mm256\_storeu\_ps](#_mm256_storeu_ps)
    + [\_mm256\_storeu\_si256](#_mm256_storeu_si256)
    + [\_mm256\_sub\_pd](#_mm256_sub_pd)
    + [\_mm256\_sub\_ps](#_mm256_sub_ps)
    + [\_mm256\_testc\_pd](#_mm256_testc_pd)
    + [\_mm256\_testc\_ps](#_mm256_testc_ps)
    + [\_mm256\_testc\_si256](#_mm256_testc_si256)
    + [\_mm256\_testnzc\_pd](#_mm256_testnzc_pd)
    + [\_mm256\_testnzc\_ps](#_mm256_testnzc_ps)
    + [\_mm256\_testnzc\_si256](#_mm256_testnzc_si256)
    + [\_mm256\_testz\_pd](#_mm256_testz_pd)
    + [\_mm256\_testz\_ps](#_mm256_testz_ps)
    + [\_mm256\_testz\_si256](#_mm256_testz_si256)
    + [\_mm256\_undefined\_pd](#_mm256_undefined_pd)
    + [\_mm256\_undefined\_ps](#_mm256_undefined_ps)
    + [\_mm256\_undefined\_si256](#_mm256_undefined_si256)
    + [\_mm256\_unpackhi\_pd](#_mm256_unpackhi_pd)
    + [\_mm256\_unpackhi\_ps](#_mm256_unpackhi_ps)
    + [\_mm256\_unpacklo\_pd](#_mm256_unpacklo_pd)
    + [\_mm256\_unpacklo\_ps](#_mm256_unpacklo_ps)
    + [\_mm256\_xor\_pd](#_mm256_xor_pd)
    + [\_mm256\_xor\_ps](#_mm256_xor_ps)
    + [\_mm256\_zeroall](#_mm256_zeroall)
    + [\_mm256\_zeroupper](#_mm256_zeroupper)
    + [\_mm256\_zextpd128\_pd256](#_mm256_zextpd128_pd256)
    + [\_mm256\_zextps128\_ps256](#_mm256_zextps128_ps256)
    + [\_mm256\_zextsi128\_si256](#_mm256_zextsi128_si256)
    + [\_mm\_abs\_epi16](#_mm_abs_epi16)
    + [\_mm\_abs\_epi32](#_mm_abs_epi32)
    + [\_mm\_abs\_epi8](#_mm_abs_epi8)
    + [\_mm\_add\_epi16](#_mm_add_epi16)
    + [\_mm\_add\_epi32](#_mm_add_epi32)
    + [\_mm\_add\_epi64](#_mm_add_epi64)
    + [\_mm\_add\_epi8](#_mm_add_epi8)
    + [\_mm\_add\_pd](#_mm_add_pd)
    + [\_mm\_add\_ps](#_mm_add_ps)
    + [\_mm\_add\_sd](#_mm_add_sd)
    + [\_mm\_add\_ss](#_mm_add_ss)
    + [\_mm\_adds\_epi16](#_mm_adds_epi16)
    + [\_mm\_adds\_epi8](#_mm_adds_epi8)
    + [\_mm\_adds\_epu16](#_mm_adds_epu16)
    + [\_mm\_adds\_epu8](#_mm_adds_epu8)
    + [\_mm\_addsub\_pd](#_mm_addsub_pd)
    + [\_mm\_addsub\_ps](#_mm_addsub_ps)
    + [\_mm\_aesdec\_si128](#_mm_aesdec_si128)
    + [\_mm\_aesdeclast\_si128](#_mm_aesdeclast_si128)
    + [\_mm\_aesenc\_si128](#_mm_aesenc_si128)
    + [\_mm\_aesenclast\_si128](#_mm_aesenclast_si128)
    + [\_mm\_aesimc\_si128](#_mm_aesimc_si128)
    + [\_mm\_aeskeygenassist\_si128](#_mm_aeskeygenassist_si128)
    + [\_mm\_alignr\_epi8](#_mm_alignr_epi8)
    + [\_mm\_and\_pd](#_mm_and_pd)
    + [\_mm\_and\_ps](#_mm_and_ps)
    + [\_mm\_and\_si128](#_mm_and_si128)
    + [\_mm\_andnot\_pd](#_mm_andnot_pd)
    + [\_mm\_andnot\_ps](#_mm_andnot_ps)
    + [\_mm\_andnot\_si128](#_mm_andnot_si128)
    + [\_mm\_avg\_epu16](#_mm_avg_epu16)
    + [\_mm\_avg\_epu8](#_mm_avg_epu8)
    + [\_mm\_blend\_epi16](#_mm_blend_epi16)
    + [\_mm\_blend\_pd](#_mm_blend_pd)
    + [\_mm\_blend\_ps](#_mm_blend_ps)
    + [\_mm\_blendv\_epi8](#_mm_blendv_epi8)
    + [\_mm\_blendv\_pd](#_mm_blendv_pd)
    + [\_mm\_blendv\_ps](#_mm_blendv_ps)
    + [\_mm\_broadcast\_ss](#_mm_broadcast_ss)
    + [\_mm\_bslli\_si128](#_mm_bslli_si128)
    + [\_mm\_bsrli\_si128](#_mm_bsrli_si128)
    + [\_mm\_castpd\_ps](#_mm_castpd_ps)
    + [\_mm\_castpd\_si128](#_mm_castpd_si128)
    + [\_mm\_castps\_pd](#_mm_castps_pd)
    + [\_mm\_castps\_si128](#_mm_castps_si128)
    + [\_mm\_castsi128\_pd](#_mm_castsi128_pd)
    + [\_mm\_castsi128\_ps](#_mm_castsi128_ps)
    + [\_mm\_ceil\_pd](#_mm_ceil_pd)
    + [\_mm\_ceil\_ps](#_mm_ceil_ps)
    + [\_mm\_ceil\_sd](#_mm_ceil_sd)
    + [\_mm\_ceil\_ss](#_mm_ceil_ss)
    + [\_mm\_clflush](#_mm_clflush)
    + [\_mm\_clmulepi64\_si128](#_mm_clmulepi64_si128)
    + [\_mm\_cmp\_pd](#_mm_cmp_pd)
    + [\_mm\_cmp\_ps](#_mm_cmp_ps)
    + [\_mm\_cmp\_sd](#_mm_cmp_sd)
    + [\_mm\_cmp\_ss](#_mm_cmp_ss)
    + [\_mm\_cmpeq\_epi16](#_mm_cmpeq_epi16)
    + [\_mm\_cmpeq\_epi32](#_mm_cmpeq_epi32)
    + [\_mm\_cmpeq\_epi64](#_mm_cmpeq_epi64)
    + [\_mm\_cmpeq\_epi8](#_mm_cmpeq_epi8)
    + [\_mm\_cmpeq\_pd](#_mm_cmpeq_pd)
    + [\_mm\_cmpeq\_ps](#_mm_cmpeq_ps)
    + [\_mm\_cmpeq\_sd](#_mm_cmpeq_sd)
    + [\_mm\_cmpeq\_ss](#_mm_cmpeq_ss)
    + [\_mm\_cmpestra](#_mm_cmpestra)
    + [\_mm\_cmpestrc](#_mm_cmpestrc)
    + [\_mm\_cmpestri](#_mm_cmpestri)
    + [\_mm\_cmpestrm](#_mm_cmpestrm)
    + [\_mm\_cmpestro](#_mm_cmpestro)
    + [\_mm\_cmpestrs](#_mm_cmpestrs)
    + [\_mm\_cmpestrz](#_mm_cmpestrz)
    + [\_mm\_cmpge\_pd](#_mm_cmpge_pd)
    + [\_mm\_cmpge\_ps](#_mm_cmpge_ps)
    + [\_mm\_cmpge\_sd](#_mm_cmpge_sd)
    + [\_mm\_cmpge\_ss](#_mm_cmpge_ss)
    + [\_mm\_cmpgt\_epi16](#_mm_cmpgt_epi16)
    + [\_mm\_cmpgt\_epi32](#_mm_cmpgt_epi32)
    + [\_mm\_cmpgt\_epi64](#_mm_cmpgt_epi64)
    + [\_mm\_cmpgt\_epi8](#_mm_cmpgt_epi8)
    + [\_mm\_cmpgt\_pd](#_mm_cmpgt_pd)
    + [\_mm\_cmpgt\_ps](#_mm_cmpgt_ps)
    + [\_mm\_cmpgt\_sd](#_mm_cmpgt_sd)
    + [\_mm\_cmpgt\_ss](#_mm_cmpgt_ss)
    + [\_mm\_cmpistra](#_mm_cmpistra)
    + [\_mm\_cmpistrc](#_mm_cmpistrc)
    + [\_mm\_cmpistri](#_mm_cmpistri)
    + [\_mm\_cmpistrm](#_mm_cmpistrm)
    + [\_mm\_cmpistro](#_mm_cmpistro)
    + [\_mm\_cmpistrs](#_mm_cmpistrs)
    + [\_mm\_cmpistrz](#_mm_cmpistrz)
    + [\_mm\_cmple\_pd](#_mm_cmple_pd)
    + [\_mm\_cmple\_ps](#_mm_cmple_ps)
    + [\_mm\_cmple\_sd](#_mm_cmple_sd)
    + [\_mm\_cmple\_ss](#_mm_cmple_ss)
    + [\_mm\_cmplt\_epi16](#_mm_cmplt_epi16)
    + [\_mm\_cmplt\_epi32](#_mm_cmplt_epi32)
    + [\_mm\_cmplt\_epi8](#_mm_cmplt_epi8)
    + [\_mm\_cmplt\_pd](#_mm_cmplt_pd)
    + [\_mm\_cmplt\_ps](#_mm_cmplt_ps)
    + [\_mm\_cmplt\_sd](#_mm_cmplt_sd)
    + [\_mm\_cmplt\_ss](#_mm_cmplt_ss)
    + [\_mm\_cmpneq\_pd](#_mm_cmpneq_pd)
    + [\_mm\_cmpneq\_ps](#_mm_cmpneq_ps)
    + [\_mm\_cmpneq\_sd](#_mm_cmpneq_sd)
    + [\_mm\_cmpneq\_ss](#_mm_cmpneq_ss)
    + [\_mm\_cmpnge\_pd](#_mm_cmpnge_pd)
    + [\_mm\_cmpnge\_ps](#_mm_cmpnge_ps)
    + [\_mm\_cmpnge\_sd](#_mm_cmpnge_sd)
    + [\_mm\_cmpnge\_ss](#_mm_cmpnge_ss)
    + [\_mm\_cmpngt\_pd](#_mm_cmpngt_pd)
    + [\_mm\_cmpngt\_ps](#_mm_cmpngt_ps)
    + [\_mm\_cmpngt\_sd](#_mm_cmpngt_sd)
    + [\_mm\_cmpngt\_ss](#_mm_cmpngt_ss)
    + [\_mm\_cmpnle\_pd](#_mm_cmpnle_pd)
    + [\_mm\_cmpnle\_ps](#_mm_cmpnle_ps)
    + [\_mm\_cmpnle\_sd](#_mm_cmpnle_sd)
    + [\_mm\_cmpnle\_ss](#_mm_cmpnle_ss)
    + [\_mm\_cmpnlt\_pd](#_mm_cmpnlt_pd)
    + [\_mm\_cmpnlt\_ps](#_mm_cmpnlt_ps)
    + [\_mm\_cmpnlt\_sd](#_mm_cmpnlt_sd)
    + [\_mm\_cmpnlt\_ss](#_mm_cmpnlt_ss)
    + [\_mm\_cmpord\_pd](#_mm_cmpord_pd)
    + [\_mm\_cmpord\_ps](#_mm_cmpord_ps)
    + [\_mm\_cmpord\_sd](#_mm_cmpord_sd)
    + [\_mm\_cmpord\_ss](#_mm_cmpord_ss)
    + [\_mm\_cmpunord\_pd](#_mm_cmpunord_pd)
    + [\_mm\_cmpunord\_ps](#_mm_cmpunord_ps)
    + [\_mm\_cmpunord\_sd](#_mm_cmpunord_sd)
    + [\_mm\_cmpunord\_ss](#_mm_cmpunord_ss)
    + [\_mm\_comieq\_sd](#_mm_comieq_sd)
    + [\_mm\_comieq\_ss](#_mm_comieq_ss)
    + [\_mm\_comige\_sd](#_mm_comige_sd)
    + [\_mm\_comige\_ss](#_mm_comige_ss)
    + [\_mm\_comigt\_sd](#_mm_comigt_sd)
    + [\_mm\_comigt\_ss](#_mm_comigt_ss)
    + [\_mm\_comile\_sd](#_mm_comile_sd)
    + [\_mm\_comile\_ss](#_mm_comile_ss)
    + [\_mm\_comilt\_sd](#_mm_comilt_sd)
    + [\_mm\_comilt\_ss](#_mm_comilt_ss)
    + [\_mm\_comineq\_sd](#_mm_comineq_sd)
    + [\_mm\_comineq\_ss](#_mm_comineq_ss)
    + [\_mm\_crc32\_u16](#_mm_crc32_u16)
    + [\_mm\_crc32\_u32](#_mm_crc32_u32)
    + [\_mm\_crc32\_u64](#_mm_crc32_u64)
    + [\_mm\_crc32\_u8](#_mm_crc32_u8)
    + [\_mm\_cvt\_si2ss](#_mm_cvt_si2ss)
    + [\_mm\_cvt\_ss2si](#_mm_cvt_ss2si)
    + [\_mm\_cvtepi16\_epi32](#_mm_cvtepi16_epi32)
    + [\_mm\_cvtepi16\_epi64](#_mm_cvtepi16_epi64)
    + [\_mm\_cvtepi32\_epi64](#_mm_cvtepi32_epi64)
    + [\_mm\_cvtepi32\_pd](#_mm_cvtepi32_pd)
    + [\_mm\_cvtepi32\_ps](#_mm_cvtepi32_ps)
    + [\_mm\_cvtepi8\_epi16](#_mm_cvtepi8_epi16)
    + [\_mm\_cvtepi8\_epi32](#_mm_cvtepi8_epi32)
    + [\_mm\_cvtepi8\_epi64](#_mm_cvtepi8_epi64)
    + [\_mm\_cvtepu16\_epi32](#_mm_cvtepu16_epi32)
    + [\_mm\_cvtepu16\_epi64](#_mm_cvtepu16_epi64)
    + [\_mm\_cvtepu32\_epi64](#_mm_cvtepu32_epi64)
    + [\_mm\_cvtepu8\_epi16](#_mm_cvtepu8_epi16)
    + [\_mm\_cvtepu8\_epi32](#_mm_cvtepu8_epi32)
    + [\_mm\_cvtepu8\_epi64](#_mm_cvtepu8_epi64)
    + [\_mm\_cvtpd\_epi32](#_mm_cvtpd_epi32)
    + [\_mm\_cvtpd\_ps](#_mm_cvtpd_ps)
    + [\_mm\_cvtps\_epi32](#_mm_cvtps_epi32)
    + [\_mm\_cvtps\_pd](#_mm_cvtps_pd)
    + [\_mm\_cvtsd\_f64](#_mm_cvtsd_f64)
    + [\_mm\_cvtsd\_si32](#_mm_cvtsd_si32)
    + [\_mm\_cvtsd\_si64](#_mm_cvtsd_si64)
    + [\_mm\_cvtsd\_si64x](#_mm_cvtsd_si64x)
    + [\_mm\_cvtsd\_ss](#_mm_cvtsd_ss)
    + [\_mm\_cvtsi128\_si32](#_mm_cvtsi128_si32)
    + [\_mm\_cvtsi128\_si64](#_mm_cvtsi128_si64)
    + [\_mm\_cvtsi128\_si64x](#_mm_cvtsi128_si64x)
    + [\_mm\_cvtsi32\_sd](#_mm_cvtsi32_sd)
    + [\_mm\_cvtsi32\_si128](#_mm_cvtsi32_si128)
    + [\_mm\_cvtsi32\_ss](#_mm_cvtsi32_ss)
    + [\_mm\_cvtsi64\_sd](#_mm_cvtsi64_sd)
    + [\_mm\_cvtsi64\_si128](#_mm_cvtsi64_si128)
    + [\_mm\_cvtsi64\_ss](#_mm_cvtsi64_ss)
    + [\_mm\_cvtsi64x\_sd](#_mm_cvtsi64x_sd)
    + [\_mm\_cvtsi64x\_si128](#_mm_cvtsi64x_si128)
    + [\_mm\_cvtss\_f32](#_mm_cvtss_f32)
    + [\_mm\_cvtss\_sd](#_mm_cvtss_sd)
    + [\_mm\_cvtss\_si32](#_mm_cvtss_si32)
    + [\_mm\_cvtss\_si64](#_mm_cvtss_si64)
    + [\_mm\_cvttpd\_epi32](#_mm_cvttpd_epi32)
    + [\_mm\_cvttps\_epi32](#_mm_cvttps_epi32)
    + [\_mm\_cvttsd\_si32](#_mm_cvttsd_si32)
    + [\_mm\_cvttsd\_si64](#_mm_cvttsd_si64)
    + [\_mm\_cvttsd\_si64x](#_mm_cvttsd_si64x)
    + [\_mm\_cvttss\_si32](#_mm_cvttss_si32)
    + [\_mm\_cvttss\_si64](#_mm_cvttss_si64)
    + [\_mm\_div\_pd](#_mm_div_pd)
    + [\_mm\_div\_ps](#_mm_div_ps)
    + [\_mm\_div\_sd](#_mm_div_sd)
    + [\_mm\_div\_ss](#_mm_div_ss)
    + [\_mm\_dp\_pd](#_mm_dp_pd)
    + [\_mm\_dp\_ps](#_mm_dp_ps)
    + [\_mm\_extract\_epi16](#_mm_extract_epi16)
    + [\_mm\_extract\_epi32](#_mm_extract_epi32)
    + [\_mm\_extract\_epi64](#_mm_extract_epi64)
    + [\_mm\_extract\_epi8](#_mm_extract_epi8)
    + [\_mm\_extract\_ps](#_mm_extract_ps)
    + [\_mm\_floor\_pd](#_mm_floor_pd)
    + [\_mm\_floor\_ps](#_mm_floor_ps)
    + [\_mm\_floor\_sd](#_mm_floor_sd)
    + [\_mm\_floor\_ss](#_mm_floor_ss)
    + [\_mm\_getcsr](#_mm_getcsr)
    + [\_mm\_hadd\_epi16](#_mm_hadd_epi16)
    + [\_mm\_hadd\_epi32](#_mm_hadd_epi32)
    + [\_mm\_hadd\_pd](#_mm_hadd_pd)
    + [\_mm\_hadd\_ps](#_mm_hadd_ps)
    + [\_mm\_hadds\_epi16](#_mm_hadds_epi16)
    + [\_mm\_hsub\_epi16](#_mm_hsub_epi16)
    + [\_mm\_hsub\_epi32](#_mm_hsub_epi32)
    + [\_mm\_hsub\_pd](#_mm_hsub_pd)
    + [\_mm\_hsub\_ps](#_mm_hsub_ps)
    + [\_mm\_hsubs\_epi16](#_mm_hsubs_epi16)
    + [\_mm\_insert\_epi16](#_mm_insert_epi16)
    + [\_mm\_insert\_epi32](#_mm_insert_epi32)
    + [\_mm\_insert\_epi64](#_mm_insert_epi64)
    + [\_mm\_insert\_epi8](#_mm_insert_epi8)
    + [\_mm\_insert\_ps](#_mm_insert_ps)
    + [\_mm\_lddqu\_si128](#_mm_lddqu_si128)
    + [\_mm\_lfence](#_mm_lfence)
    + [\_mm\_load1\_pd](#_mm_load1_pd)
    + [\_mm\_load1\_ps](#_mm_load1_ps)
    + [\_mm\_load\_pd](#_mm_load_pd)
    + [\_mm\_load\_pd1](#_mm_load_pd1)
    + [\_mm\_load\_ps](#_mm_load_ps)
    + [\_mm\_load\_ps1](#_mm_load_ps1)
    + [\_mm\_load\_sd](#_mm_load_sd)
    + [\_mm\_load\_si128](#_mm_load_si128)
    + [\_mm\_load\_ss](#_mm_load_ss)
    + [\_mm\_loaddup\_pd](#_mm_loaddup_pd)
    + [\_mm\_loadh\_pd](#_mm_loadh_pd)
    + [\_mm\_loadl\_epi64](#_mm_loadl_epi64)
    + [\_mm\_loadl\_pd](#_mm_loadl_pd)
    + [\_mm\_loadr\_pd](#_mm_loadr_pd)
    + [\_mm\_loadr\_ps](#_mm_loadr_ps)
    + [\_mm\_loadu\_pd](#_mm_loadu_pd)
    + [\_mm\_loadu\_ps](#_mm_loadu_ps)
    + [\_mm\_loadu\_si128](#_mm_loadu_si128)
    + [\_mm\_loadu\_si64](#_mm_loadu_si64)
    + [\_mm\_madd\_epi16](#_mm_madd_epi16)
    + [\_mm\_maddubs\_epi16](#_mm_maddubs_epi16)
    + [\_mm\_maskload\_pd](#_mm_maskload_pd)
    + [\_mm\_maskload\_ps](#_mm_maskload_ps)
    + [\_mm\_maskmoveu\_si128](#_mm_maskmoveu_si128)
    + [\_mm\_maskstore\_pd](#_mm_maskstore_pd)
    + [\_mm\_maskstore\_ps](#_mm_maskstore_ps)
    + [\_mm\_max\_epi16](#_mm_max_epi16)
    + [\_mm\_max\_epi32](#_mm_max_epi32)
    + [\_mm\_max\_epi8](#_mm_max_epi8)
    + [\_mm\_max\_epu16](#_mm_max_epu16)
    + [\_mm\_max\_epu32](#_mm_max_epu32)
    + [\_mm\_max\_epu8](#_mm_max_epu8)
    + [\_mm\_max\_pd](#_mm_max_pd)
    + [\_mm\_max\_ps](#_mm_max_ps)
    + [\_mm\_max\_sd](#_mm_max_sd)
    + [\_mm\_max\_ss](#_mm_max_ss)
    + [\_mm\_mfence](#_mm_mfence)
    + [\_mm\_min\_epi16](#_mm_min_epi16)
    + [\_mm\_min\_epi32](#_mm_min_epi32)
    + [\_mm\_min\_epi8](#_mm_min_epi8)
    + [\_mm\_min\_epu16](#_mm_min_epu16)
    + [\_mm\_min\_epu32](#_mm_min_epu32)
    + [\_mm\_min\_epu8](#_mm_min_epu8)
    + [\_mm\_min\_pd](#_mm_min_pd)
    + [\_mm\_min\_ps](#_mm_min_ps)
    + [\_mm\_min\_sd](#_mm_min_sd)
    + [\_mm\_min\_ss](#_mm_min_ss)
    + [\_mm\_minpos\_epu16](#_mm_minpos_epu16)
    + [\_mm\_move\_epi64](#_mm_move_epi64)
    + [\_mm\_move\_sd](#_mm_move_sd)
    + [\_mm\_move\_ss](#_mm_move_ss)
    + [\_mm\_movedup\_pd](#_mm_movedup_pd)
    + [\_mm\_movehdup\_ps](#_mm_movehdup_ps)
    + [\_mm\_movehl\_ps](#_mm_movehl_ps)
    + [\_mm\_moveldup\_ps](#_mm_moveldup_ps)
    + [\_mm\_movelh\_ps](#_mm_movelh_ps)
    + [\_mm\_movemask\_epi8](#_mm_movemask_epi8)
    + [\_mm\_movemask\_pd](#_mm_movemask_pd)
    + [\_mm\_movemask\_ps](#_mm_movemask_ps)
    + [\_mm\_mpsadbw\_epu8](#_mm_mpsadbw_epu8)
    + [\_mm\_mul\_epi32](#_mm_mul_epi32)
    + [\_mm\_mul\_epu32](#_mm_mul_epu32)
    + [\_mm\_mul\_pd](#_mm_mul_pd)
    + [\_mm\_mul\_ps](#_mm_mul_ps)
    + [\_mm\_mul\_sd](#_mm_mul_sd)
    + [\_mm\_mul\_ss](#_mm_mul_ss)
    + [\_mm\_mulhi\_epi16](#_mm_mulhi_epi16)
    + [\_mm\_mulhi\_epu16](#_mm_mulhi_epu16)
    + [\_mm\_mulhrs\_epi16](#_mm_mulhrs_epi16)
    + [\_mm\_mullo\_epi16](#_mm_mullo_epi16)
    + [\_mm\_mullo\_epi32](#_mm_mullo_epi32)
    + [\_mm\_or\_pd](#_mm_or_pd)
    + [\_mm\_or\_ps](#_mm_or_ps)
    + [\_mm\_or\_si128](#_mm_or_si128)
    + [\_mm\_packs\_epi16](#_mm_packs_epi16)
    + [\_mm\_packs\_epi32](#_mm_packs_epi32)
    + [\_mm\_packus\_epi16](#_mm_packus_epi16)
    + [\_mm\_packus\_epi32](#_mm_packus_epi32)
    + [\_mm\_pause](#_mm_pause)
    + [\_mm\_permute\_pd](#_mm_permute_pd)
    + [\_mm\_permute\_ps](#_mm_permute_ps)
    + [\_mm\_permutevar\_pd](#_mm_permutevar_pd)
    + [\_mm\_permutevar\_ps](#_mm_permutevar_ps)
    + [\_mm\_prefetch](#_mm_prefetch)
    + [\_mm\_rcp\_ps](#_mm_rcp_ps)
    + [\_mm\_rcp\_ss](#_mm_rcp_ss)
    + [\_mm\_round\_pd](#_mm_round_pd)
    + [\_mm\_round\_ps](#_mm_round_ps)
    + [\_mm\_round\_sd](#_mm_round_sd)
    + [\_mm\_round\_ss](#_mm_round_ss)
    + [\_mm\_rsqrt\_ps](#_mm_rsqrt_ps)
    + [\_mm\_rsqrt\_ss](#_mm_rsqrt_ss)
    + [\_mm\_sad\_epu8](#_mm_sad_epu8)
    + [\_mm\_set1\_epi16](#_mm_set1_epi16)
    + [\_mm\_set1\_epi32](#_mm_set1_epi32)
    + [\_mm\_set1\_epi64x](#_mm_set1_epi64x)
    + [\_mm\_set1\_epi8](#_mm_set1_epi8)
    + [\_mm\_set1\_pd](#_mm_set1_pd)
    + [\_mm\_set1\_ps](#_mm_set1_ps)
    + [\_mm\_set\_epi16](#_mm_set_epi16)
    + [\_mm\_set\_epi32](#_mm_set_epi32)
    + [\_mm\_set\_epi64x](#_mm_set_epi64x)
    + [\_mm\_set\_epi8](#_mm_set_epi8)
    + [\_mm\_set\_pd](#_mm_set_pd)
    + [\_mm\_set\_pd1](#_mm_set_pd1)
    + [\_mm\_set\_ps](#_mm_set_ps)
    + [\_mm\_set\_ps1](#_mm_set_ps1)
    + [\_mm\_set\_sd](#_mm_set_sd)
    + [\_mm\_set\_ss](#_mm_set_ss)
    + [\_mm\_setcsr](#_mm_setcsr)
    + [\_mm\_setr\_epi16](#_mm_setr_epi16)
    + [\_mm\_setr\_epi32](#_mm_setr_epi32)
    + [\_mm\_setr\_epi8](#_mm_setr_epi8)
    + [\_mm\_setr\_pd](#_mm_setr_pd)
    + [\_mm\_setr\_ps](#_mm_setr_ps)
    + [\_mm\_setzero\_pd](#_mm_setzero_pd)
    + [\_mm\_setzero\_ps](#_mm_setzero_ps)
    + [\_mm\_setzero\_si128](#_mm_setzero_si128)
    + [\_mm\_sfence](#_mm_sfence)
    + [\_mm\_sha1msg1\_epu32](#_mm_sha1msg1_epu32)
    + [\_mm\_sha1msg2\_epu32](#_mm_sha1msg2_epu32)
    + [\_mm\_sha1nexte\_epu32](#_mm_sha1nexte_epu32)
    + [\_mm\_sha1rnds4\_epu32](#_mm_sha1rnds4_epu32)
    + [\_mm\_sha256msg1\_epu32](#_mm_sha256msg1_epu32)
    + [\_mm\_sha256msg2\_epu32](#_mm_sha256msg2_epu32)
    + [\_mm\_sha256rnds2\_epu32](#_mm_sha256rnds2_epu32)
    + [\_mm\_shuffle\_epi32](#_mm_shuffle_epi32)
    + [\_mm\_shuffle\_epi8](#_mm_shuffle_epi8)
    + [\_mm\_shuffle\_pd](#_mm_shuffle_pd)
    + [\_mm\_shuffle\_ps](#_mm_shuffle_ps)
    + [\_mm\_shufflehi\_epi16](#_mm_shufflehi_epi16)
    + [\_mm\_shufflelo\_epi16](#_mm_shufflelo_epi16)
    + [\_mm\_sign\_epi16](#_mm_sign_epi16)
    + [\_mm\_sign\_epi32](#_mm_sign_epi32)
    + [\_mm\_sign\_epi8](#_mm_sign_epi8)
    + [\_mm\_sll\_epi16](#_mm_sll_epi16)
    + [\_mm\_sll\_epi32](#_mm_sll_epi32)
    + [\_mm\_sll\_epi64](#_mm_sll_epi64)
    + [\_mm\_slli\_epi16](#_mm_slli_epi16)
    + [\_mm\_slli\_epi32](#_mm_slli_epi32)
    + [\_mm\_slli\_epi64](#_mm_slli_epi64)
    + [\_mm\_slli\_si128](#_mm_slli_si128)
    + [\_mm\_sqrt\_pd](#_mm_sqrt_pd)
    + [\_mm\_sqrt\_ps](#_mm_sqrt_ps)
    + [\_mm\_sqrt\_sd](#_mm_sqrt_sd)
    + [\_mm\_sqrt\_ss](#_mm_sqrt_ss)
    + [\_mm\_sra\_epi16](#_mm_sra_epi16)
    + [\_mm\_sra\_epi32](#_mm_sra_epi32)
    + [\_mm\_srai\_epi16](#_mm_srai_epi16)
    + [\_mm\_srai\_epi32](#_mm_srai_epi32)
    + [\_mm\_srl\_epi16](#_mm_srl_epi16)
    + [\_mm\_srl\_epi32](#_mm_srl_epi32)
    + [\_mm\_srl\_epi64](#_mm_srl_epi64)
    + [\_mm\_srli\_epi16](#_mm_srli_epi16)
    + [\_mm\_srli\_epi32](#_mm_srli_epi32)
    + [\_mm\_srli\_epi64](#_mm_srli_epi64)
    + [\_mm\_srli\_si128](#_mm_srli_si128)
    + [\_mm\_store1\_pd](#_mm_store1_pd)
    + [\_mm\_store1\_ps](#_mm_store1_ps)
    + [\_mm\_store\_pd](#_mm_store_pd)
    + [\_mm\_store\_pd1](#_mm_store_pd1)
    + [\_mm\_store\_ps](#_mm_store_ps)
    + [\_mm\_store\_ps1](#_mm_store_ps1)
    + [\_mm\_store\_sd](#_mm_store_sd)
    + [\_mm\_store\_si128](#_mm_store_si128)
    + [\_mm\_store\_ss](#_mm_store_ss)
    + [\_mm\_storeh\_pd](#_mm_storeh_pd)
    + [\_mm\_storel\_epi64](#_mm_storel_epi64)
    + [\_mm\_storel\_pd](#_mm_storel_pd)
    + [\_mm\_storer\_pd](#_mm_storer_pd)
    + [\_mm\_storer\_ps](#_mm_storer_ps)
    + [\_mm\_storeu\_pd](#_mm_storeu_pd)
    + [\_mm\_storeu\_ps](#_mm_storeu_ps)
    + [\_mm\_storeu\_si128](#_mm_storeu_si128)
    + [\_mm\_stream\_pd](#_mm_stream_pd)
    + [\_mm\_stream\_ps](#_mm_stream_ps)
    + [\_mm\_stream\_si128](#_mm_stream_si128)
    + [\_mm\_stream\_si32](#_mm_stream_si32)
    + [\_mm\_stream\_si64](#_mm_stream_si64)
    + [\_mm\_sub\_epi16](#_mm_sub_epi16)
    + [\_mm\_sub\_epi32](#_mm_sub_epi32)
    + [\_mm\_sub\_epi64](#_mm_sub_epi64)
    + [\_mm\_sub\_epi8](#_mm_sub_epi8)
    + [\_mm\_sub\_pd](#_mm_sub_pd)
    + [\_mm\_sub\_ps](#_mm_sub_ps)
    + [\_mm\_sub\_sd](#_mm_sub_sd)
    + [\_mm\_sub\_ss](#_mm_sub_ss)
    + [\_mm\_subs\_epi16](#_mm_subs_epi16)
    + [\_mm\_subs\_epi8](#_mm_subs_epi8)
    + [\_mm\_subs\_epu16](#_mm_subs_epu16)
    + [\_mm\_subs\_epu8](#_mm_subs_epu8)
    + [\_mm\_test\_all\_ones](#_mm_test_all_ones)
    + [\_mm\_test\_all\_zeros](#_mm_test_all_zeros)
    + [\_mm\_test\_mix\_ones\_zeros](#_mm_test_mix_ones_zeros)
    + [\_mm\_testc\_pd](#_mm_testc_pd)
    + [\_mm\_testc\_ps](#_mm_testc_ps)
    + [\_mm\_testc\_si128](#_mm_testc_si128)
    + [\_mm\_testnzc\_pd](#_mm_testnzc_pd)
    + [\_mm\_testnzc\_ps](#_mm_testnzc_ps)
    + [\_mm\_testnzc\_si128](#_mm_testnzc_si128)
    + [\_mm\_testz\_pd](#_mm_testz_pd)
    + [\_mm\_testz\_ps](#_mm_testz_ps)
    + [\_mm\_testz\_si128](#_mm_testz_si128)
    + [\_mm\_ucomieq\_sd](#_mm_ucomieq_sd)
    + [\_mm\_ucomieq\_ss](#_mm_ucomieq_ss)
    + [\_mm\_ucomige\_sd](#_mm_ucomige_sd)
    + [\_mm\_ucomige\_ss](#_mm_ucomige_ss)
    + [\_mm\_ucomigt\_sd](#_mm_ucomigt_sd)
    + [\_mm\_ucomigt\_ss](#_mm_ucomigt_ss)
    + [\_mm\_ucomile\_sd](#_mm_ucomile_sd)
    + [\_mm\_ucomile\_ss](#_mm_ucomile_ss)
    + [\_mm\_ucomilt\_sd](#_mm_ucomilt_sd)
    + [\_mm\_ucomilt\_ss](#_mm_ucomilt_ss)
    + [\_mm\_ucomineq\_sd](#_mm_ucomineq_sd)
    + [\_mm\_ucomineq\_ss](#_mm_ucomineq_ss)
    + [\_mm\_undefined\_pd](#_mm_undefined_pd)
    + [\_mm\_undefined\_ps](#_mm_undefined_ps)
    + [\_mm\_undefined\_si128](#_mm_undefined_si128)
    + [\_mm\_unpackhi\_epi16](#_mm_unpackhi_epi16)
    + [\_mm\_unpackhi\_epi32](#_mm_unpackhi_epi32)
    + [\_mm\_unpackhi\_epi64](#_mm_unpackhi_epi64)
    + [\_mm\_unpackhi\_epi8](#_mm_unpackhi_epi8)
    + [\_mm\_unpackhi\_pd](#_mm_unpackhi_pd)
    + [\_mm\_unpackhi\_ps](#_mm_unpackhi_ps)
    + [\_mm\_unpacklo\_epi16](#_mm_unpacklo_epi16)
    + [\_mm\_unpacklo\_epi32](#_mm_unpacklo_epi32)
    + [\_mm\_unpacklo\_epi64](#_mm_unpacklo_epi64)
    + [\_mm\_unpacklo\_epi8](#_mm_unpacklo_epi8)
    + [\_mm\_unpacklo\_pd](#_mm_unpacklo_pd)
    + [\_mm\_unpacklo\_ps](#_mm_unpacklo_ps)
    + [\_mm\_xor\_pd](#_mm_xor_pd)
    + [\_mm\_xor\_ps](#_mm_xor_ps)
    + [\_mm\_xor\_si128](#_mm_xor_si128)
    + [\_pdep\_u32](#_pdep_u32)
    + [\_pdep\_u64](#_pdep_u64)
    + [\_pext\_u32](#_pext_u32)
    + [\_pext\_u64](#_pext_u64)
    + [\_popcnt32](#_popcnt32)
    + [\_popcnt64](#_popcnt64)
    + [\_rdtsc](#_rdtsc)
    + [\_subborrow\_u32](#_subborrow_u32)
    + [\_subborrow\_u64](#_subborrow_u64)
    + [\_tzcnt\_u16](#_tzcnt_u16)
    + [\_tzcnt\_u32](#_tzcnt_u32)
    + [\_tzcnt\_u64](#_tzcnt_u64)
    + [cmpxchg16b](#cmpxchg16b)
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