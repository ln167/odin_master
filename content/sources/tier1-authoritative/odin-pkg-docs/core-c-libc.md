package c/libc - pkg.odin-lang.org 






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



Current Package: *[libc](/core/c/libc)*

  

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
2. [c](/core/c)
3. [libc](/core/c/libc)

# package core:c/libc [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Declares the commonly used things in `libc` (`C` standard library).

## Index

Types (117)

* [FILE](#FILE)
* [Locale\_Category](#Locale_Category)
* [Whence](#Whence)
* [atomic\_bool](#atomic_bool)
* [atomic\_char](#atomic_char)
* [atomic\_char16\_t](#atomic_char16_t)
* [atomic\_char32\_t](#atomic_char32_t)
* [atomic\_flag](#atomic_flag)
* [atomic\_int](#atomic_int)
* [atomic\_int\_fast16\_t](#atomic_int_fast16_t)
* [atomic\_int\_fast32\_t](#atomic_int_fast32_t)
* [atomic\_int\_fast64\_t](#atomic_int_fast64_t)
* [atomic\_int\_fast8\_t](#atomic_int_fast8_t)
* [atomic\_int\_least16\_t](#atomic_int_least16_t)
* [atomic\_int\_least32\_t](#atomic_int_least32_t)
* [atomic\_int\_least64\_t](#atomic_int_least64_t)
* [atomic\_int\_least8\_t](#atomic_int_least8_t)
* [atomic\_intmax\_t](#atomic_intmax_t)
* [atomic\_intptr\_t](#atomic_intptr_t)
* [atomic\_llong](#atomic_llong)
* [atomic\_long](#atomic_long)
* [atomic\_ptrdiff\_t](#atomic_ptrdiff_t)
* [atomic\_schar](#atomic_schar)
* [atomic\_short](#atomic_short)
* [atomic\_size\_t](#atomic_size_t)
* [atomic\_uchar](#atomic_uchar)
* [atomic\_uint](#atomic_uint)
* [atomic\_uint\_fast16\_t](#atomic_uint_fast16_t)
* [atomic\_uint\_fast32\_t](#atomic_uint_fast32_t)
* [atomic\_uint\_fast64\_t](#atomic_uint_fast64_t)
* [atomic\_uint\_fast8\_t](#atomic_uint_fast8_t)
* [atomic\_uint\_least16\_t](#atomic_uint_least16_t)
* [atomic\_uint\_least32\_t](#atomic_uint_least32_t)
* [atomic\_uint\_least64\_t](#atomic_uint_least64_t)
* [atomic\_uint\_least8\_t](#atomic_uint_least8_t)
* [atomic\_uintmax\_t](#atomic_uintmax_t)
* [atomic\_uintptr\_t](#atomic_uintptr_t)
* [atomic\_ullong](#atomic_ullong)
* [atomic\_ulong](#atomic_ulong)
* [atomic\_ushort](#atomic_ushort)
* [atomic\_wchar\_t](#atomic_wchar_t)
* [bool](#bool)
* [char](#char)
* [char16\_t](#char16_t)
* [char32\_t](#char32_t)
* [clock\_t](#clock_t)
* [cnd\_t](#cnd_t)
* [complex\_double](#complex_double)
* [complex\_float](#complex_float)
* [div\_t](#div_t)
* [double](#double)
* [double\_t](#double_t)
* [float](#float)
* [float\_t](#float_t)
* [fpos\_t](#fpos_t)
* [int](#int)
* [int16\_t](#int16_t)
* [int32\_t](#int32_t)
* [int64\_t](#int64_t)
* [int8\_t](#int8_t)
* [int\_fast16\_t](#int_fast16_t)
* [int\_fast32\_t](#int_fast32_t)
* [int\_fast64\_t](#int_fast64_t)
* [int\_fast8\_t](#int_fast8_t)
* [int\_least16\_t](#int_least16_t)
* [int\_least32\_t](#int_least32_t)
* [int\_least64\_t](#int_least64_t)
* [int\_least8\_t](#int_least8_t)
* [intmax\_t](#intmax_t)
* [intptr\_t](#intptr_t)
* [jmp\_buf](#jmp_buf)
* [lconv](#lconv)
* [ldiv\_t](#ldiv_t)
* [lldiv\_t](#lldiv_t)
* [long](#long)
* [longlong](#longlong)
* [mbstate\_t](#mbstate_t)
* [memory\_order](#memory_order)
* [mtx\_t](#mtx_t)
* [once\_flag](#once_flag)
* [ptrdiff\_t](#ptrdiff_t)
* [schar](#schar)
* [short](#short)
* [sig\_atomic\_t](#sig_atomic_t)
* [size\_t](#size_t)
* [ssize\_t](#ssize_t)
* [thrd\_start\_t](#thrd_start_t)
* [thrd\_t](#thrd_t)
* [time\_t](#time_t)
* [timespec](#timespec)
* [tm](#tm)
* [tss\_dtor\_t](#tss_dtor_t)
* [tss\_t](#tss_t)
* [uchar](#uchar)
* [uint](#uint)
* [uint16\_t](#uint16_t)
* [uint32\_t](#uint32_t)
* [uint64\_t](#uint64_t)
* [uint8\_t](#uint8_t)
* [uint\_fast16\_t](#uint_fast16_t)
* [uint\_fast32\_t](#uint_fast32_t)
* [uint\_fast64\_t](#uint_fast64_t)
* [uint\_fast8\_t](#uint_fast8_t)
* [uint\_least16\_t](#uint_least16_t)
* [uint\_least32\_t](#uint_least32_t)
* [uint\_least64\_t](#uint_least64_t)
* [uint\_least8\_t](#uint_least8_t)
* [uintmax\_t](#uintmax_t)
* [uintptr\_t](#uintptr_t)
* [ulong](#ulong)
* [ulonglong](#ulonglong)
* [ushort](#ushort)
* [va\_list](#va_list)
* [wchar\_t](#wchar_t)
* [wctrans\_t](#wctrans_t)
* [wctype\_t](#wctype_t)
* [wint\_t](#wint_t)

Constants (96)

* [ATOMIC\_BOOL\_LOCK\_FREE](#ATOMIC_BOOL_LOCK_FREE)
* [ATOMIC\_CHAR16\_T\_LOCK\_FREE](#ATOMIC_CHAR16_T_LOCK_FREE)
* [ATOMIC\_CHAR32\_T\_LOCK\_FREE](#ATOMIC_CHAR32_T_LOCK_FREE)
* [ATOMIC\_CHAR\_LOCK\_FREE](#ATOMIC_CHAR_LOCK_FREE)
* [ATOMIC\_INT\_LOCK\_FREE](#ATOMIC_INT_LOCK_FREE)
* [ATOMIC\_LLONG\_LOCK\_FREE](#ATOMIC_LLONG_LOCK_FREE)
* [ATOMIC\_LONG\_LOCK\_FREE](#ATOMIC_LONG_LOCK_FREE)
* [ATOMIC\_POINTER\_LOCK\_FREE](#ATOMIC_POINTER_LOCK_FREE)
* [ATOMIC\_SHORT\_LOCK\_FREE](#ATOMIC_SHORT_LOCK_FREE)
* [ATOMIC\_WCHAR\_T\_LOCK\_FREE](#ATOMIC_WCHAR_T_LOCK_FREE)
* [BUFSIZ](#BUFSIZ)
* [CHAR\_BIT](#CHAR_BIT)
* [CLOCKS\_PER\_SEC](#CLOCKS_PER_SEC)
* [EDOM](#EDOM)
* [EILSEQ](#EILSEQ)
* [EOF](#EOF)
* [ERANGE](#ERANGE)
* [EXIT\_FAILURE](#EXIT_FAILURE)
* [EXIT\_SUCCESS](#EXIT_SUCCESS)
* [FILENAME\_MAX](#FILENAME_MAX)
* [FOPEN\_MAX](#FOPEN_MAX)
* [FP\_ILOGB0](#FP_ILOGB0)
* [FP\_ILOGBNAN](#FP_ILOGBNAN)
* [FP\_INFINITE](#FP_INFINITE)
* [FP\_NAN](#FP_NAN)
* [FP\_NORMAL](#FP_NORMAL)
* [FP\_SUBNORMAL](#FP_SUBNORMAL)
* [FP\_ZERO](#FP_ZERO)
* [HUGE\_VAL](#HUGE_VAL)
* [HUGE\_VALF](#HUGE_VALF)
* [INFINITY](#INFINITY)
* [INT16\_MAX](#INT16_MAX)
* [INT16\_MIN](#INT16_MIN)
* [INT32\_MAX](#INT32_MAX)
* [INT32\_MIN](#INT32_MIN)
* [INT64\_MAX](#INT64_MAX)
* [INT64\_MIN](#INT64_MIN)
* [INT8\_MAX](#INT8_MAX)
* [INT8\_MIN](#INT8_MIN)
* [LC\_ALL](#LC_ALL)
* [LC\_COLLATE](#LC_COLLATE)
* [LC\_CTYPE](#LC_CTYPE)
* [LC\_MESSAGES](#LC_MESSAGES)
* [LC\_MONETARY](#LC_MONETARY)
* [LC\_NUMERIC](#LC_NUMERIC)
* [LC\_TIME](#LC_TIME)
* [L\_tmpnam](#L_tmpnam)
* [MATH\_ERREXCEPT](#MATH_ERREXCEPT)
* [MATH\_ERRNO](#MATH_ERRNO)
* [NDEBUG](#NDEBUG)
* [NULL](#NULL)
* [PTRDIFF\_MAX](#PTRDIFF_MAX)
* [PTRDIFF\_MIN](#PTRDIFF_MIN)
* [RAND\_MAX](#RAND_MAX)
* [SEEK\_CUR](#SEEK_CUR)
* [SEEK\_END](#SEEK_END)
* [SEEK\_SET](#SEEK_SET)
* [SIGABRT](#SIGABRT)
* [SIGFPE](#SIGFPE)
* [SIGILL](#SIGILL)
* [SIGINT](#SIGINT)
* [SIGSEGV](#SIGSEGV)
* [SIGTERM](#SIGTERM)
* [SIG\_ATOMIC\_MAX](#SIG_ATOMIC_MAX)
* [SIG\_ATOMIC\_MIN](#SIG_ATOMIC_MIN)
* [SIG\_DFL](#SIG_DFL)
* [SIG\_ERR](#SIG_ERR)
* [SIG\_IGN](#SIG_IGN)
* [SIZE\_MAX](#SIZE_MAX)
* [TIME\_UTC](#TIME_UTC)
* [TMP\_MAX](#TMP_MAX)
* [TSS\_DTOR\_ITERATIONS](#TSS_DTOR_ITERATIONS)
* [UINT16\_MAX](#UINT16_MAX)
* [UINT32\_MAX](#UINT32_MAX)
* [UINT64\_MAX](#UINT64_MAX)
* [UINT8\_MAX](#UINT8_MAX)
* [WCHAR\_MAX](#WCHAR_MAX)
* [WCHAR\_MIN](#WCHAR_MIN)
* [WEOF](#WEOF)
* [WINT\_MAX](#WINT_MAX)
* [WINT\_MIN](#WINT_MIN)
* [math\_errhandling](#math_errhandling)
* [memory\_order\_acq\_rel](#memory_order_acq_rel)
* [memory\_order\_acquire](#memory_order_acquire)
* [memory\_order\_consume](#memory_order_consume)
* [memory\_order\_relaxed](#memory_order_relaxed)
* [memory\_order\_release](#memory_order_release)
* [memory\_order\_seq\_cst](#memory_order_seq_cst)
* [mtx\_plain](#mtx_plain)
* [mtx\_recursive](#mtx_recursive)
* [mtx\_timed](#mtx_timed)
* [thrd\_busy](#thrd_busy)
* [thrd\_error](#thrd_error)
* [thrd\_nomem](#thrd_nomem)
* [thrd\_success](#thrd_success)
* [thrd\_timedout](#thrd_timedout)

Variables (4)

* [NAN](#NAN)
* [stderr](#stderr)
* [stdin](#stdin)
* [stdout](#stdout)

Procedures (329)

* [ATOMIC\_VAR\_INIT](#ATOMIC_VAR_INIT)
* [CMPLX](#CMPLX)
* [CMPLXF](#CMPLXF)
* [MB\_CUR\_MAX](#MB_CUR_MAX)
* [abort](#abort)
* [abs](#abs)
* [aligned\_alloc](#aligned_alloc)
* [aligned\_free](#aligned_free)
* [asctime](#asctime)
* [at\_quick\_exit](#at_quick_exit)
* [atexit](#atexit)
* [atof](#atof)
* [atoi](#atoi)
* [atol](#atol)
* [atoll](#atoll)
* [atomic\_compare\_exchange\_strong](#atomic_compare_exchange_strong)
* [atomic\_compare\_exchange\_strong\_explicit](#atomic_compare_exchange_strong_explicit)
* [atomic\_compare\_exchange\_weak](#atomic_compare_exchange_weak)
* [atomic\_compare\_exchange\_weak\_explicit](#atomic_compare_exchange_weak_explicit)
* [atomic\_exchange](#atomic_exchange)
* [atomic\_exchange\_explicit](#atomic_exchange_explicit)
* [atomic\_fetch\_add](#atomic_fetch_add)
* [atomic\_fetch\_add\_explicit](#atomic_fetch_add_explicit)
* [atomic\_fetch\_and](#atomic_fetch_and)
* [atomic\_fetch\_and\_explicit](#atomic_fetch_and_explicit)
* [atomic\_fetch\_or](#atomic_fetch_or)
* [atomic\_fetch\_or\_explicit](#atomic_fetch_or_explicit)
* [atomic\_fetch\_sub](#atomic_fetch_sub)
* [atomic\_fetch\_sub\_explicit](#atomic_fetch_sub_explicit)
* [atomic\_fetch\_xor](#atomic_fetch_xor)
* [atomic\_fetch\_xor\_explicit](#atomic_fetch_xor_explicit)
* [atomic\_flag\_clear](#atomic_flag_clear)
* [atomic\_flag\_clear\_explicit](#atomic_flag_clear_explicit)
* [atomic\_flag\_test\_and\_set](#atomic_flag_test_and_set)
* [atomic\_flag\_test\_and\_set\_explicit](#atomic_flag_test_and_set_explicit)
* [atomic\_init](#atomic_init)
* [atomic\_is\_lock\_free](#atomic_is_lock_free)
* [atomic\_load](#atomic_load)
* [atomic\_load\_explicit](#atomic_load_explicit)
* [atomic\_signal\_fence](#atomic_signal_fence)
* [atomic\_store](#atomic_store)
* [atomic\_store\_explicit](#atomic_store_explicit)
* [atomic\_thread\_fence](#atomic_thread_fence)
* [bsearch](#bsearch)
* [btowc](#btowc)
* [c16rtomb](#c16rtomb)
* [c32rtomb](#c32rtomb)
* [cabs](#cabs)
* [cabsf](#cabsf)
* [cacos](#cacos)
* [cacosf](#cacosf)
* [cacosh](#cacosh)
* [cacoshf](#cacoshf)
* [call\_once](#call_once)
* [calloc](#calloc)
* [carg](#carg)
* [cargf](#cargf)
* [casin](#casin)
* [casinf](#casinf)
* [casinh](#casinh)
* [casinhf](#casinhf)
* [catan](#catan)
* [catanf](#catanf)
* [catanh](#catanh)
* [catanhf](#catanhf)
* [ccos](#ccos)
* [ccosf](#ccosf)
* [ccosh](#ccosh)
* [ccoshf](#ccoshf)
* [cexp](#cexp)
* [cexpf](#cexpf)
* [cimag](#cimag)
* [cimagf](#cimagf)
* [clearerr](#clearerr)
* [clock](#clock)
* [clog](#clog)
* [clogf](#clogf)
* [cnd\_broadcast](#cnd_broadcast)
* [cnd\_destroy](#cnd_destroy)
* [cnd\_init](#cnd_init)
* [cnd\_signal](#cnd_signal)
* [cnd\_timedwait](#cnd_timedwait)
* [cnd\_wait](#cnd_wait)
* [conj](#conj)
* [conjf](#conjf)
* [cpow](#cpow)
* [cpowf](#cpowf)
* [cproj](#cproj)
* [cprojf](#cprojf)
* [creal](#creal)
* [crealf](#crealf)
* [csin](#csin)
* [csinf](#csinf)
* [csinh](#csinh)
* [csinhf](#csinhf)
* [csqrt](#csqrt)
* [csqrtf](#csqrtf)
* [ctan](#ctan)
* [ctanf](#ctanf)
* [ctanh](#ctanh)
* [ctanhf](#ctanhf)
* [ctime](#ctime)
* [difftime](#difftime)
* [div](#div)
* [errno](#errno)
* [exit](#exit)
* [fclose](#fclose)
* [feof](#feof)
* [ferror](#ferror)
* [fflush](#fflush)
* [fgetc](#fgetc)
* [fgetpos](#fgetpos)
* [fgets](#fgets)
* [fgetws](#fgetws)
* [fopen](#fopen)
* [fprintf](#fprintf)
* [fputc](#fputc)
* [fputwc](#fputwc)
* [fputws](#fputws)
* [fread](#fread)
* [free](#free)
* [freopen](#freopen)
* [fscanf](#fscanf)
* [fseek](#fseek)
* [fsetpos](#fsetpos)
* [ftell](#ftell)
* [fwgetc](#fwgetc)
* [fwide](#fwide)
* [fwprintf](#fwprintf)
* [fwrite](#fwrite)
* [fwscanf](#fwscanf)
* [getc](#getc)
* [getchar](#getchar)
* [getenv](#getenv)
* [getwc](#getwc)
* [getwchar](#getwchar)
* [gmtime](#gmtime)
* [isalnum](#isalnum)
* [isalpha](#isalpha)
* [isblank](#isblank)
* [iscntrl](#iscntrl)
* [isdigit](#isdigit)
* [isfinite](#isfinite)
* [isgraph](#isgraph)
* [isgreater](#isgreater)
* [isgreaterequal](#isgreaterequal)
* [isinf](#isinf)
* [isless](#isless)
* [islessequal](#islessequal)
* [islessgreater](#islessgreater)
* [islower](#islower)
* [isnan](#isnan)
* [isnormal](#isnormal)
* [isprint](#isprint)
* [ispunct](#ispunct)
* [isspace](#isspace)
* [isunordered](#isunordered)
* [isupper](#isupper)
* [iswalnum](#iswalnum)
* [iswalpha](#iswalpha)
* [iswblank](#iswblank)
* [iswcntrl](#iswcntrl)
* [iswctype](#iswctype)
* [iswdigit](#iswdigit)
* [iswgraph](#iswgraph)
* [iswlower](#iswlower)
* [iswprint](#iswprint)
* [iswpunct](#iswpunct)
* [iswspace](#iswspace)
* [iswupper](#iswupper)
* [iswxdigit](#iswxdigit)
* [isxdigit](#isxdigit)
* [kill\_dependency](#kill_dependency)
* [labs](#labs)
* [ldiv](#ldiv)
* [llabs](#llabs)
* [lldiv](#lldiv)
* [localeconv](#localeconv)
* [localtime](#localtime)
* [longjmp](#longjmp)
* [malloc](#malloc)
* [mblen](#mblen)
* [mbrlen](#mbrlen)
* [mbrtoc16](#mbrtoc16)
* [mbrtoc32](#mbrtoc32)
* [mbrtowc](#mbrtowc)
* [mbsinit](#mbsinit)
* [mbsrtowcs](#mbsrtowcs)
* [mbstowcs](#mbstowcs)
* [mbtowc](#mbtowc)
* [memchr](#memchr)
* [memcmp](#memcmp)
* [memcpy](#memcpy)
* [memmove](#memmove)
* [memset](#memset)
* [mktime](#mktime)
* [mtx\_destroy](#mtx_destroy)
* [mtx\_init](#mtx_init)
* [mtx\_lock](#mtx_lock)
* [mtx\_timedlock](#mtx_timedlock)
* [mtx\_trylock](#mtx_trylock)
* [mtx\_unlock](#mtx_unlock)
* [perror](#perror)
* [printf](#printf)
* [putc](#putc)
* [putchar](#putchar)
* [puts](#puts)
* [putwc](#putwc)
* [putwchar](#putwchar)
* [qsort](#qsort)
* [quick\_exit](#quick_exit)
* [raise](#raise)
* [rand](#rand)
* [realloc](#realloc)
* [remove](#remove)
* [rename](#rename)
* [rewind](#rewind)
* [scanf](#scanf)
* [setbuf](#setbuf)
* [setjmp](#setjmp)
* [setlocale](#setlocale)
* [setvbuf](#setvbuf)
* [signal](#signal)
* [snprintf](#snprintf)
* [srand](#srand)
* [sscanf](#sscanf)
* [strcat](#strcat)
* [strchr](#strchr)
* [strcmp](#strcmp)
* [strcoll](#strcoll)
* [strcpn](#strcpn)
* [strcpy](#strcpy)
* [strcspn](#strcspn)
* [strerror](#strerror)
* [strftime](#strftime)
* [strlen](#strlen)
* [strncat](#strncat)
* [strncmp](#strncmp)
* [strncpy](#strncpy)
* [strpbrk](#strpbrk)
* [strrchr](#strrchr)
* [strtod](#strtod)
* [strtof](#strtof)
* [strtok](#strtok)
* [strtol](#strtol)
* [strtoll](#strtoll)
* [strtoul](#strtoul)
* [strtoull](#strtoull)
* [strxfrm](#strxfrm)
* [swprintf](#swprintf)
* [swscanf](#swscanf)
* [system](#system)
* [thrd\_create](#thrd_create)
* [thrd\_current](#thrd_current)
* [thrd\_detach](#thrd_detach)
* [thrd\_equal](#thrd_equal)
* [thrd\_exit](#thrd_exit)
* [thrd\_join](#thrd_join)
* [thrd\_sleep](#thrd_sleep)
* [thrd\_yield](#thrd_yield)
* [time](#time)
* [timespec\_get](#timespec_get)
* [tmpfile](#tmpfile)
* [tmpnam](#tmpnam)
* [to\_stream](#to_stream)
* [tolower](#tolower)
* [toupper](#toupper)
* [towctrans](#towctrans)
* [towlower](#towlower)
* [towupper](#towupper)
* [tss\_create](#tss_create)
* [tss\_delete](#tss_delete)
* [tss\_get](#tss_get)
* [tss\_set](#tss_set)
* [ungetc](#ungetc)
* [ungetwc](#ungetwc)
* [va\_copy](#va_copy)
* [va\_end](#va_end)
* [va\_start](#va_start)
* [vfprintf](#vfprintf)
* [vfscanf](#vfscanf)
* [vfwprintf](#vfwprintf)
* [vfwscanf](#vfwscanf)
* [vprintf](#vprintf)
* [vscanf](#vscanf)
* [vsnprintf](#vsnprintf)
* [vsprintf](#vsprintf)
* [vsscanf](#vsscanf)
* [vswprintf](#vswprintf)
* [vswscanf](#vswscanf)
* [vwprintf](#vwprintf)
* [vwscanf](#vwscanf)
* [wcrtomb](#wcrtomb)
* [wcscat](#wcscat)
* [wcschr](#wcschr)
* [wcscmp](#wcscmp)
* [wcscoll](#wcscoll)
* [wcscpy](#wcscpy)
* [wcscspn](#wcscspn)
* [wcsftime](#wcsftime)
* [wcslen](#wcslen)
* [wcsncat](#wcsncat)
* [wcsncmp](#wcsncmp)
* [wcsncpy](#wcsncpy)
* [wcspbrk](#wcspbrk)
* [wcsrchr](#wcsrchr)
* [wcsrtombs](#wcsrtombs)
* [wcsspn](#wcsspn)
* [wcsstr](#wcsstr)
* [wcstod](#wcstod)
* [wcstof](#wcstof)
* [wcstok](#wcstok)
* [wcstol](#wcstol)
* [wcstoll](#wcstoll)
* [wcstombs](#wcstombs)
* [wcstoul](#wcstoul)
* [wcstoull](#wcstoull)
* [wcsxfrm](#wcsxfrm)
* [wctob](#wctob)
* [wctomb](#wctomb)
* [wctrans](#wctrans)
* [wctype](#wctype)
* [wmemchr](#wmemchr)
* [wmemcmp](#wmemcmp)
* [wmemcpy](#wmemcpy)
* [wmemmove](#wmemmove)
* [wmemset](#wmemset)
* [wprintf](#wprintf)
* [wscanf](#wscanf)

Procedure Groups (114)

* [acos](#acos)
* [acosf](#acosf)
* [acosh](#acosh)
* [acoshf](#acoshf)
* [asin](#asin)
* [asinf](#asinf)
* [asinh](#asinh)
* [asinhf](#asinhf)
* [atan](#atan)
* [atan2](#atan2)
* [atan2f](#atan2f)
* [atanf](#atanf)
* [atanh](#atanh)
* [atanhf](#atanhf)
* [cbrt](#cbrt)
* [cbrtf](#cbrtf)
* [ceil](#ceil)
* [ceilf](#ceilf)
* [copysign](#copysign)
* [copysignf](#copysignf)
* [cos](#cos)
* [cosf](#cosf)
* [cosh](#cosh)
* [coshf](#coshf)
* [erf](#erf)
* [erfc](#erfc)
* [erfcf](#erfcf)
* [erff](#erff)
* [exp](#exp)
* [exp2](#exp2)
* [exp2f](#exp2f)
* [expf](#expf)
* [expm1](#expm1)
* [expm1f](#expm1f)
* [fabs](#fabs)
* [fabsf](#fabsf)
* [fdim](#fdim)
* [fdimf](#fdimf)
* [floor](#floor)
* [floorf](#floorf)
* [fma](#fma)
* [fmaf](#fmaf)
* [fmax](#fmax)
* [fmaxf](#fmaxf)
* [fmin](#fmin)
* [fminf](#fminf)
* [fmod](#fmod)
* [fmodf](#fmodf)
* [fpclassify](#fpclassify)
* [frexp](#frexp)
* [frexpf](#frexpf)
* [hypot](#hypot)
* [hypotf](#hypotf)
* [ilogb](#ilogb)
* [ilogbf](#ilogbf)
* [ldexp](#ldexp)
* [ldexpf](#ldexpf)
* [lgamma](#lgamma)
* [lgammaf](#lgammaf)
* [llrint](#llrint)
* [llrintf](#llrintf)
* [llround](#llround)
* [llroundf](#llroundf)
* [log](#log)
* [log10](#log10)
* [log10f](#log10f)
* [log1p](#log1p)
* [log1pf](#log1pf)
* [log2](#log2)
* [log2f](#log2f)
* [logb](#logb)
* [logbf](#logbf)
* [logf](#logf)
* [lrint](#lrint)
* [lrintf](#lrintf)
* [lround](#lround)
* [lroundf](#lroundf)
* [modf](#modf)
* [modff](#modff)
* [nan](#nan)
* [nanf](#nanf)
* [nearbyint](#nearbyint)
* [nearbyintf](#nearbyintf)
* [nextafter](#nextafter)
* [nextafterf](#nextafterf)
* [pow](#pow)
* [powf](#powf)
* [remainder](#remainder)
* [remainderf](#remainderf)
* [remquo](#remquo)
* [remquof](#remquof)
* [rint](#rint)
* [rintf](#rintf)
* [round](#round)
* [roundf](#roundf)
* [scalbln](#scalbln)
* [scalblnf](#scalblnf)
* [scalbn](#scalbn)
* [scalbnf](#scalbnf)
* [signbit](#signbit)
* [sin](#sin)
* [sinf](#sinf)
* [sinh](#sinh)
* [sinhf](#sinhf)
* [sqrt](#sqrt)
* [sqrtf](#sqrtf)
* [tan](#tan)
* [tanf](#tanf)
* [tanh](#tanh)
* [tanhf](#tanhf)
* [tgamma](#tgamma)
* [tgammaf](#tgammaf)
* [trunc](#trunc)
* [truncf](#truncf)

## Types

### [FILE ¶](#FILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L19)

```
FILE :: c.FILE
```

##### Related Procedures With Parameters

* [clearerr](/core/c/libc/#clearerr)
* [fclose](/core/c/libc/#fclose)
* [feof](/core/c/libc/#feof)
* [ferror](/core/c/libc/#ferror)
* [fflush](/core/c/libc/#fflush)
* [fgetc](/core/c/libc/#fgetc)
* [fgetpos](/core/c/libc/#fgetpos)
* [fgets](/core/c/libc/#fgets)
* [fgetws](/core/c/libc/#fgetws)
* [fprintf](/core/c/libc/#fprintf)
* [fputc](/core/c/libc/#fputc)
* [fputwc](/core/c/libc/#fputwc)
* [fputws](/core/c/libc/#fputws)
* [fread](/core/c/libc/#fread)
* [freopen](/core/c/libc/#freopen)
* [fscanf](/core/c/libc/#fscanf)
* [fseek](/core/c/libc/#fseek)
* [fsetpos](/core/c/libc/#fsetpos)
* [ftell](/core/c/libc/#ftell)
* [fwgetc](/core/c/libc/#fwgetc)
* [fwide](/core/c/libc/#fwide)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwrite](/core/c/libc/#fwrite)
* [fwscanf](/core/c/libc/#fwscanf)
* [getc](/core/c/libc/#getc)
* [getwc](/core/c/libc/#getwc)
* [putc](/core/c/libc/#putc)
* [putwc](/core/c/libc/#putwc)
* [rewind](/core/c/libc/#rewind)
* [setbuf](/core/c/libc/#setbuf)
* [setvbuf](/core/c/libc/#setvbuf)
* [swprintf](/core/c/libc/#swprintf)
* [to\_stream](/core/c/libc/#to_stream)
* [ungetc](/core/c/libc/#ungetc)
* [ungetwc](/core/c/libc/#ungetwc)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)



##### Related Procedures With Returns

* [fopen](/core/c/libc/#fopen)
* [tmpfile](/core/c/libc/#tmpfile)

### [Locale\_Category ¶](#Locale_Category) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L39)

```
Locale_Category :: enum i32 {
	ALL      = 0, 
	COLLATE  = 1, 
	CTYPE    = 2, 
	MESSAGES = 6, 
	MONETARY = 3, 
	NUMERIC  = 4, 
	TIME     = 5, 
}
```

##### Related Procedures With Parameters

* [setlocale](/core/c/libc/#setlocale)

### [Whence ¶](#Whence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L21)

```
Whence :: enum i32 {
	SET = 0, 
	CUR = 1, 
	END = 2, 
}
```

##### Related Procedures With Parameters

* [fseek](/core/c/libc/#fseek)

### [atomic\_bool ¶](#atomic_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L77)

```
atomic_bool :: distinct bool
```

 

7.17.6 Atomic integer types

### [atomic\_char ¶](#atomic_char) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L78)

```
atomic_char :: distinct u8
```

### [atomic\_char16\_t ¶](#atomic_char16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L89)

```
atomic_char16_t :: distinct u16
```

### [atomic\_char32\_t ¶](#atomic_char32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L90)

```
atomic_char32_t :: distinct u32
```

### [atomic\_flag ¶](#atomic_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L365)

```
atomic_flag :: distinct bool
```

 

7.17.8 Atomic flag type and operations




##### Related Procedures With Parameters

* [atomic\_flag\_clear](/core/c/libc/#atomic_flag_clear)
* [atomic\_flag\_clear\_explicit](/core/c/libc/#atomic_flag_clear_explicit)
* [atomic\_flag\_test\_and\_set](/core/c/libc/#atomic_flag_test_and_set)
* [atomic\_flag\_test\_and\_set\_explicit](/core/c/libc/#atomic_flag_test_and_set_explicit)

### [atomic\_int ¶](#atomic_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L83)

```
atomic_int :: distinct i32
```

### [atomic\_int\_fast16\_t ¶](#atomic_int_fast16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L102)

```
atomic_int_fast16_t :: distinct i32
```

### [atomic\_int\_fast32\_t ¶](#atomic_int_fast32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L104)

```
atomic_int_fast32_t :: distinct i32
```

### [atomic\_int\_fast64\_t ¶](#atomic_int_fast64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L106)

```
atomic_int_fast64_t :: distinct i64
```

### [atomic\_int\_fast8\_t ¶](#atomic_int_fast8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L100)

```
atomic_int_fast8_t :: distinct i8
```

### [atomic\_int\_least16\_t ¶](#atomic_int_least16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L94)

```
atomic_int_least16_t :: distinct i16
```

### [atomic\_int\_least32\_t ¶](#atomic_int_least32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L96)

```
atomic_int_least32_t :: distinct i32
```

### [atomic\_int\_least64\_t ¶](#atomic_int_least64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L98)

```
atomic_int_least64_t :: distinct i64
```

### [atomic\_int\_least8\_t ¶](#atomic_int_least8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L92)

```
atomic_int_least8_t :: distinct i8
```

### [atomic\_intmax\_t ¶](#atomic_intmax_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L112)

```
atomic_intmax_t :: distinct i64
```

### [atomic\_intptr\_t ¶](#atomic_intptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L108)

```
atomic_intptr_t :: distinct int
```

### [atomic\_llong ¶](#atomic_llong) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L87)

```
atomic_llong :: distinct i64
```

### [atomic\_long ¶](#atomic_long) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L85)

```
atomic_long :: distinct i32
```

### [atomic\_ptrdiff\_t ¶](#atomic_ptrdiff_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L111)

```
atomic_ptrdiff_t :: distinct int
```

### [atomic\_schar ¶](#atomic_schar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L79)

```
atomic_schar :: distinct u8
```

### [atomic\_short ¶](#atomic_short) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L81)

```
atomic_short :: distinct i16
```

### [atomic\_size\_t ¶](#atomic_size_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L110)

```
atomic_size_t :: distinct uint
```

### [atomic\_uchar ¶](#atomic_uchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L80)

```
atomic_uchar :: distinct u8
```

### [atomic\_uint ¶](#atomic_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L84)

```
atomic_uint :: distinct u32
```

### [atomic\_uint\_fast16\_t ¶](#atomic_uint_fast16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L103)

```
atomic_uint_fast16_t :: distinct u32
```

### [atomic\_uint\_fast32\_t ¶](#atomic_uint_fast32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L105)

```
atomic_uint_fast32_t :: distinct u32
```

### [atomic\_uint\_fast64\_t ¶](#atomic_uint_fast64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L107)

```
atomic_uint_fast64_t :: distinct u64
```

### [atomic\_uint\_fast8\_t ¶](#atomic_uint_fast8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L101)

```
atomic_uint_fast8_t :: distinct u8
```

### [atomic\_uint\_least16\_t ¶](#atomic_uint_least16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L95)

```
atomic_uint_least16_t :: distinct u16
```

### [atomic\_uint\_least32\_t ¶](#atomic_uint_least32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L97)

```
atomic_uint_least32_t :: distinct u32
```

### [atomic\_uint\_least64\_t ¶](#atomic_uint_least64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L99)

```
atomic_uint_least64_t :: distinct u64
```

### [atomic\_uint\_least8\_t ¶](#atomic_uint_least8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L93)

```
atomic_uint_least8_t :: distinct u8
```

### [atomic\_uintmax\_t ¶](#atomic_uintmax_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L113)

```
atomic_uintmax_t :: distinct u64
```

### [atomic\_uintptr\_t ¶](#atomic_uintptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L109)

```
atomic_uintptr_t :: distinct uintptr
```

### [atomic\_ullong ¶](#atomic_ullong) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L88)

```
atomic_ullong :: distinct u64
```

### [atomic\_ulong ¶](#atomic_ulong) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L86)

```
atomic_ulong :: distinct u32
```

### [atomic\_ushort ¶](#atomic_ushort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L82)

```
atomic_ushort :: distinct u16
```

### [atomic\_wchar\_t ¶](#atomic_wchar_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L91)

```
atomic_wchar_t :: distinct u16
```

### [bool ¶](#bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L21)

```
bool :: bool
```

##### Related Procedures With Returns

* [atomic\_compare\_exchange\_strong](/core/c/libc/#atomic_compare_exchange_strong)
* [atomic\_compare\_exchange\_strong\_explicit](/core/c/libc/#atomic_compare_exchange_strong_explicit)
* [atomic\_compare\_exchange\_weak](/core/c/libc/#atomic_compare_exchange_weak)
* [atomic\_compare\_exchange\_weak\_explicit](/core/c/libc/#atomic_compare_exchange_weak_explicit)
* [atomic\_flag\_test\_and\_set](/core/c/libc/#atomic_flag_test_and_set)
* [atomic\_flag\_test\_and\_set\_explicit](/core/c/libc/#atomic_flag_test_and_set_explicit)
* [atomic\_is\_lock\_free](/core/c/libc/#atomic_is_lock_free)
* [isfinite](/core/c/libc/#isfinite)
* [isgreater](/core/c/libc/#isgreater)
* [isgreaterequal](/core/c/libc/#isgreaterequal)
* [isinf](/core/c/libc/#isinf)
* [isless](/core/c/libc/#isless)
* [islessequal](/core/c/libc/#islessequal)
* [islessgreater](/core/c/libc/#islessgreater)
* [isnan](/core/c/libc/#isnan)
* [isnormal](/core/c/libc/#isnormal)
* [isunordered](/core/c/libc/#isunordered)

### [char ¶](#char) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L7)

```
char :: u8
```

 

assuming -funsigned-char




##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [c32rtomb](/core/c/libc/#c32rtomb)
* [fgets](/core/c/libc/#fgets)
* [setbuf](/core/c/libc/#setbuf)
* [setvbuf](/core/c/libc/#setvbuf)
* [snprintf](/core/c/libc/#snprintf)
* [strcat](/core/c/libc/#strcat)
* [strcpy](/core/c/libc/#strcpy)
* [strftime](/core/c/libc/#strftime)
* [strncat](/core/c/libc/#strncat)
* [strncpy](/core/c/libc/#strncpy)
* [strrchr](/core/c/libc/#strrchr)
* [strtok](/core/c/libc/#strtok)
* [strxfrm](/core/c/libc/#strxfrm)
* [tmpnam](/core/c/libc/#tmpnam)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcsrtombs](/core/c/libc/#wcsrtombs)
* [wcstombs](/core/c/libc/#wcstombs)
* [wctomb](/core/c/libc/#wctomb)



##### Related Procedures With Returns

* [asctime](/core/c/libc/#asctime)
* [ctime](/core/c/libc/#ctime)
* [strchr](/core/c/libc/#strchr)
* [strcpn](/core/c/libc/#strcpn)
* [strpbrk](/core/c/libc/#strpbrk)

### [char16\_t ¶](#char16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/uchar.odin#L22)

```
char16_t :: u16
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [fgetws](/core/c/libc/#fgetws)
* [fputwc](/core/c/libc/#fputwc)
* [fputws](/core/c/libc/#fputws)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [mbrtoc16](/core/c/libc/#mbrtoc16)
* [mbrtowc](/core/c/libc/#mbrtowc)
* [mbsrtowcs](/core/c/libc/#mbsrtowcs)
* [mbstowcs](/core/c/libc/#mbstowcs)
* [mbtowc](/core/c/libc/#mbtowc)
* [putwc](/core/c/libc/#putwc)
* [putwchar](/core/c/libc/#putwchar)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [ungetwc](/core/c/libc/#ungetwc)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcscat](/core/c/libc/#wcscat)
* [wcschr](/core/c/libc/#wcschr)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcscpy](/core/c/libc/#wcscpy)
* [wcscspn](/core/c/libc/#wcscspn)
* [wcsftime](/core/c/libc/#wcsftime)
* [wcslen](/core/c/libc/#wcslen)
* [wcsncat](/core/c/libc/#wcsncat)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wcsncpy](/core/c/libc/#wcsncpy)
* [wcspbrk](/core/c/libc/#wcspbrk)
* [wcsrchr](/core/c/libc/#wcsrchr)
* [wcsspn](/core/c/libc/#wcsspn)
* [wcsstr](/core/c/libc/#wcsstr)
* [wcstod](/core/c/libc/#wcstod)
* [wcstof](/core/c/libc/#wcstof)
* [wcstok](/core/c/libc/#wcstok)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstombs](/core/c/libc/#wcstombs)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)
* [wcsxfrm](/core/c/libc/#wcsxfrm)
* [wctomb](/core/c/libc/#wctomb)
* [wmemchr](/core/c/libc/#wmemchr)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wmemcpy](/core/c/libc/#wmemcpy)
* [wmemmove](/core/c/libc/#wmemmove)
* [wmemset](/core/c/libc/#wmemset)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [char32\_t ¶](#char32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/uchar.odin#L23)

```
char32_t :: u32
```

##### Related Procedures With Parameters

* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [srand](/core/c/libc/#srand)



##### Related Procedures With Returns

* [strtoul](/core/c/libc/#strtoul)
* [wcstoul](/core/c/libc/#wcstoul)

### [clock\_t ¶](#clock_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L35)

```
clock_t :: distinct i32
```

##### Related Procedures With Returns

* [clock](/core/c/libc/#clock)

### [cnd\_t ¶](#cnd_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L29)

```
cnd_t :: distinct rawptr
```

 

\_Cnd\_imp\_t




##### Related Procedures With Parameters

* [cnd\_broadcast](/core/c/libc/#cnd_broadcast)
* [cnd\_destroy](/core/c/libc/#cnd_destroy)
* [cnd\_init](/core/c/libc/#cnd_init)
* [cnd\_signal](/core/c/libc/#cnd_signal)
* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)

### [complex\_double ¶](#complex_double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L73)

```
complex_double :: distinct complex128
```

##### Related Procedures With Parameters

* [cabs](/core/c/libc/#cabs)
* [cacos](/core/c/libc/#cacos)
* [cacosh](/core/c/libc/#cacosh)
* [carg](/core/c/libc/#carg)
* [casin](/core/c/libc/#casin)
* [casinh](/core/c/libc/#casinh)
* [catan](/core/c/libc/#catan)
* [catanh](/core/c/libc/#catanh)
* [ccos](/core/c/libc/#ccos)
* [ccosh](/core/c/libc/#ccosh)
* [cexp](/core/c/libc/#cexp)
* [cimag](/core/c/libc/#cimag)
* [clog](/core/c/libc/#clog)
* [conj](/core/c/libc/#conj)
* [cpow](/core/c/libc/#cpow)
* [cproj](/core/c/libc/#cproj)
* [creal](/core/c/libc/#creal)
* [csin](/core/c/libc/#csin)
* [csinh](/core/c/libc/#csinh)
* [csqrt](/core/c/libc/#csqrt)
* [ctan](/core/c/libc/#ctan)
* [ctanh](/core/c/libc/#ctanh)
* [acos](/core/c/libc/#acos) *(procedure groups)*
* [acosh](/core/c/libc/#acosh) *(procedure groups)*
* [asin](/core/c/libc/#asin) *(procedure groups)*
* [asinh](/core/c/libc/#asinh) *(procedure groups)*
* [atan](/core/c/libc/#atan) *(procedure groups)*
* [atanh](/core/c/libc/#atanh) *(procedure groups)*
* [cos](/core/c/libc/#cos) *(procedure groups)*
* [cosh](/core/c/libc/#cosh) *(procedure groups)*
* [exp](/core/c/libc/#exp) *(procedure groups)*
* [fabs](/core/c/libc/#fabs) *(procedure groups)*
* [log](/core/c/libc/#log) *(procedure groups)*
* [pow](/core/c/libc/#pow) *(procedure groups)*
* [sin](/core/c/libc/#sin) *(procedure groups)*
* [sinh](/core/c/libc/#sinh) *(procedure groups)*
* [sqrt](/core/c/libc/#sqrt) *(procedure groups)*
* [tan](/core/c/libc/#tan) *(procedure groups)*
* [tanh](/core/c/libc/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [CMPLX](/core/c/libc/#CMPLX)

### [complex\_float ¶](#complex_float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L72)

```
complex_float :: distinct complex64
```

##### Related Procedures With Parameters

* [cabsf](/core/c/libc/#cabsf)
* [cacosf](/core/c/libc/#cacosf)
* [cacoshf](/core/c/libc/#cacoshf)
* [cargf](/core/c/libc/#cargf)
* [casinf](/core/c/libc/#casinf)
* [casinhf](/core/c/libc/#casinhf)
* [catanf](/core/c/libc/#catanf)
* [catanhf](/core/c/libc/#catanhf)
* [ccosf](/core/c/libc/#ccosf)
* [ccoshf](/core/c/libc/#ccoshf)
* [cexpf](/core/c/libc/#cexpf)
* [cimagf](/core/c/libc/#cimagf)
* [clogf](/core/c/libc/#clogf)
* [conjf](/core/c/libc/#conjf)
* [cpowf](/core/c/libc/#cpowf)
* [cprojf](/core/c/libc/#cprojf)
* [crealf](/core/c/libc/#crealf)
* [csinf](/core/c/libc/#csinf)
* [csinhf](/core/c/libc/#csinhf)
* [csqrtf](/core/c/libc/#csqrtf)
* [ctanf](/core/c/libc/#ctanf)
* [ctanhf](/core/c/libc/#ctanhf)
* [acos](/core/c/libc/#acos) *(procedure groups)*
* [acosh](/core/c/libc/#acosh) *(procedure groups)*
* [asin](/core/c/libc/#asin) *(procedure groups)*
* [asinh](/core/c/libc/#asinh) *(procedure groups)*
* [atan](/core/c/libc/#atan) *(procedure groups)*
* [atanh](/core/c/libc/#atanh) *(procedure groups)*
* [cos](/core/c/libc/#cos) *(procedure groups)*
* [cosh](/core/c/libc/#cosh) *(procedure groups)*
* [exp](/core/c/libc/#exp) *(procedure groups)*
* [fabs](/core/c/libc/#fabs) *(procedure groups)*
* [log](/core/c/libc/#log) *(procedure groups)*
* [pow](/core/c/libc/#pow) *(procedure groups)*
* [sin](/core/c/libc/#sin) *(procedure groups)*
* [sinh](/core/c/libc/#sinh) *(procedure groups)*
* [sqrt](/core/c/libc/#sqrt) *(procedure groups)*
* [tan](/core/c/libc/#tan) *(procedure groups)*
* [tanh](/core/c/libc/#tanh) *(procedure groups)*



##### Related Procedures With Returns

* [CMPLXF](/core/c/libc/#CMPLXF)

### [div\_t ¶](#div_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L99)

```
div_t :: struct {
	quot: i32,
	rem:  i32,
}
```

 

C does not declare which order 'quot' and 'rem' should be for the divide
structures. An implementation could put 'rem' first. However, nobody actually
does and everyone appears to have agreed upon this layout.




##### Related Procedures With Returns

* [div](/core/c/libc/#div)

### [double ¶](#double) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L28)

```
double :: f64
```

##### Related Procedures With Parameters

* [CMPLX](/core/c/libc/#CMPLX)



##### Related Procedures With Returns

* [atof](/core/c/libc/#atof)
* [cabs](/core/c/libc/#cabs)
* [carg](/core/c/libc/#carg)
* [cimag](/core/c/libc/#cimag)
* [creal](/core/c/libc/#creal)
* [difftime](/core/c/libc/#difftime)
* [strtod](/core/c/libc/#strtod)
* [wcstod](/core/c/libc/#wcstod)
* [fabs](/core/c/libc/#fabs) *(procedure groups)*

### [double\_t ¶](#double_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L159)

```
double_t :: f64
```

##### Related Procedures With Parameters

* [CMPLX](/core/c/libc/#CMPLX)



##### Related Procedures With Returns

* [atof](/core/c/libc/#atof)
* [cabs](/core/c/libc/#cabs)
* [carg](/core/c/libc/#carg)
* [cimag](/core/c/libc/#cimag)
* [creal](/core/c/libc/#creal)
* [difftime](/core/c/libc/#difftime)
* [strtod](/core/c/libc/#strtod)
* [wcstod](/core/c/libc/#wcstod)
* [fabs](/core/c/libc/#fabs) *(procedure groups)*

### [float ¶](#float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L27)

```
float :: f32
```

##### Related Procedures With Parameters

* [CMPLXF](/core/c/libc/#CMPLXF)



##### Related Procedures With Returns

* [cabsf](/core/c/libc/#cabsf)
* [cargf](/core/c/libc/#cargf)
* [cimagf](/core/c/libc/#cimagf)
* [crealf](/core/c/libc/#crealf)
* [strtof](/core/c/libc/#strtof)
* [wcstof](/core/c/libc/#wcstof)
* [fabs](/core/c/libc/#fabs) *(procedure groups)*

### [float\_t ¶](#float_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L158)

```
float_t :: f32
```

 

On amd64 Windows and Linux, float\_t and double\_t are respectively both
their usual types. On x86 it's not possible to define these types correctly
since they would be long double which Odin does NOT have support for.




##### Related Procedures With Parameters

* [CMPLXF](/core/c/libc/#CMPLXF)



##### Related Procedures With Returns

* [cabsf](/core/c/libc/#cabsf)
* [cargf](/core/c/libc/#cargf)
* [cimagf](/core/c/libc/#cimagf)
* [crealf](/core/c/libc/#crealf)
* [strtof](/core/c/libc/#strtof)
* [wcstof](/core/c/libc/#wcstof)
* [fabs](/core/c/libc/#fabs) *(procedure groups)*

### [fpos\_t ¶](#fpos_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L49)

```
fpos_t :: distinct i64
```

##### Related Procedures With Parameters

* [fgetpos](/core/c/libc/#fgetpos)
* [fsetpos](/core/c/libc/#fsetpos)

### [int ¶](#int) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L11)

```
int :: i32
```

##### Related Procedures With Parameters

* [abs](/core/c/libc/#abs)
* [btowc](/core/c/libc/#btowc)
* [div](/core/c/libc/#div)
* [exit](/core/c/libc/#exit)
* [fgets](/core/c/libc/#fgets)
* [fgetws](/core/c/libc/#fgetws)
* [fputc](/core/c/libc/#fputc)
* [fseek](/core/c/libc/#fseek)
* [fwide](/core/c/libc/#fwide)
* [isalnum](/core/c/libc/#isalnum)
* [isalpha](/core/c/libc/#isalpha)
* [isblank](/core/c/libc/#isblank)
* [iscntrl](/core/c/libc/#iscntrl)
* [isdigit](/core/c/libc/#isdigit)
* [isgraph](/core/c/libc/#isgraph)
* [islower](/core/c/libc/#islower)
* [isprint](/core/c/libc/#isprint)
* [ispunct](/core/c/libc/#ispunct)
* [isspace](/core/c/libc/#isspace)
* [isupper](/core/c/libc/#isupper)
* [isxdigit](/core/c/libc/#isxdigit)
* [labs](/core/c/libc/#labs)
* [ldiv](/core/c/libc/#ldiv)
* [longjmp](/core/c/libc/#longjmp)
* [memchr](/core/c/libc/#memchr)
* [memset](/core/c/libc/#memset)
* [mtx\_init](/core/c/libc/#mtx_init)
* [putc](/core/c/libc/#putc)
* [putchar](/core/c/libc/#putchar)
* [quick\_exit](/core/c/libc/#quick_exit)
* [raise](/core/c/libc/#raise)
* [setvbuf](/core/c/libc/#setvbuf)
* [signal](/core/c/libc/#signal)
* [strchr](/core/c/libc/#strchr)
* [strerror](/core/c/libc/#strerror)
* [strrchr](/core/c/libc/#strrchr)
* [strtol](/core/c/libc/#strtol)
* [strtoll](/core/c/libc/#strtoll)
* [strtoul](/core/c/libc/#strtoul)
* [strtoull](/core/c/libc/#strtoull)
* [thrd\_exit](/core/c/libc/#thrd_exit)
* [thrd\_join](/core/c/libc/#thrd_join)
* [timespec\_get](/core/c/libc/#timespec_get)
* [tolower](/core/c/libc/#tolower)
* [toupper](/core/c/libc/#toupper)
* [ungetc](/core/c/libc/#ungetc)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)



##### Related Procedures With Returns

* [at\_quick\_exit](/core/c/libc/#at_quick_exit)
* [atexit](/core/c/libc/#atexit)
* [atoi](/core/c/libc/#atoi)
* [atol](/core/c/libc/#atol)
* [cnd\_broadcast](/core/c/libc/#cnd_broadcast)
* [cnd\_init](/core/c/libc/#cnd_init)
* [cnd\_signal](/core/c/libc/#cnd_signal)
* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)
* [errno](/core/c/libc/#errno)
* [fclose](/core/c/libc/#fclose)
* [feof](/core/c/libc/#feof)
* [ferror](/core/c/libc/#ferror)
* [fflush](/core/c/libc/#fflush)
* [fgetc](/core/c/libc/#fgetc)
* [fgetpos](/core/c/libc/#fgetpos)
* [fprintf](/core/c/libc/#fprintf)
* [fputws](/core/c/libc/#fputws)
* [fscanf](/core/c/libc/#fscanf)
* [fsetpos](/core/c/libc/#fsetpos)
* [ftell](/core/c/libc/#ftell)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [getc](/core/c/libc/#getc)
* [getchar](/core/c/libc/#getchar)
* [iswalnum](/core/c/libc/#iswalnum)
* [iswalpha](/core/c/libc/#iswalpha)
* [iswblank](/core/c/libc/#iswblank)
* [iswcntrl](/core/c/libc/#iswcntrl)
* [iswctype](/core/c/libc/#iswctype)
* [iswdigit](/core/c/libc/#iswdigit)
* [iswgraph](/core/c/libc/#iswgraph)
* [iswlower](/core/c/libc/#iswlower)
* [iswprint](/core/c/libc/#iswprint)
* [iswpunct](/core/c/libc/#iswpunct)
* [iswspace](/core/c/libc/#iswspace)
* [iswupper](/core/c/libc/#iswupper)
* [iswxdigit](/core/c/libc/#iswxdigit)
* [mblen](/core/c/libc/#mblen)
* [mbsinit](/core/c/libc/#mbsinit)
* [mbtowc](/core/c/libc/#mbtowc)
* [memcmp](/core/c/libc/#memcmp)
* [mtx\_lock](/core/c/libc/#mtx_lock)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [mtx\_trylock](/core/c/libc/#mtx_trylock)
* [mtx\_unlock](/core/c/libc/#mtx_unlock)
* [printf](/core/c/libc/#printf)
* [puts](/core/c/libc/#puts)
* [rand](/core/c/libc/#rand)
* [remove](/core/c/libc/#remove)
* [rename](/core/c/libc/#rename)
* [scanf](/core/c/libc/#scanf)
* [setjmp](/core/c/libc/#setjmp)
* [snprintf](/core/c/libc/#snprintf)
* [sscanf](/core/c/libc/#sscanf)
* [strcmp](/core/c/libc/#strcmp)
* [strcoll](/core/c/libc/#strcoll)
* [strncmp](/core/c/libc/#strncmp)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [system](/core/c/libc/#system)
* [thrd\_create](/core/c/libc/#thrd_create)
* [thrd\_detach](/core/c/libc/#thrd_detach)
* [thrd\_equal](/core/c/libc/#thrd_equal)
* [thrd\_sleep](/core/c/libc/#thrd_sleep)
* [tss\_create](/core/c/libc/#tss_create)
* [tss\_set](/core/c/libc/#tss_set)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vprintf](/core/c/libc/#vprintf)
* [vscanf](/core/c/libc/#vscanf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [vsscanf](/core/c/libc/#vsscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wctob](/core/c/libc/#wctob)
* [wctomb](/core/c/libc/#wctomb)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [int16\_t ¶](#int16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L32)

```
int16_t :: i16
```

### [int32\_t ¶](#int32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L34)

```
int32_t :: i32
```

##### Related Procedures With Parameters

* [abs](/core/c/libc/#abs)
* [btowc](/core/c/libc/#btowc)
* [div](/core/c/libc/#div)
* [exit](/core/c/libc/#exit)
* [fgets](/core/c/libc/#fgets)
* [fgetws](/core/c/libc/#fgetws)
* [fputc](/core/c/libc/#fputc)
* [fseek](/core/c/libc/#fseek)
* [fwide](/core/c/libc/#fwide)
* [isalnum](/core/c/libc/#isalnum)
* [isalpha](/core/c/libc/#isalpha)
* [isblank](/core/c/libc/#isblank)
* [iscntrl](/core/c/libc/#iscntrl)
* [isdigit](/core/c/libc/#isdigit)
* [isgraph](/core/c/libc/#isgraph)
* [islower](/core/c/libc/#islower)
* [isprint](/core/c/libc/#isprint)
* [ispunct](/core/c/libc/#ispunct)
* [isspace](/core/c/libc/#isspace)
* [isupper](/core/c/libc/#isupper)
* [isxdigit](/core/c/libc/#isxdigit)
* [labs](/core/c/libc/#labs)
* [ldiv](/core/c/libc/#ldiv)
* [longjmp](/core/c/libc/#longjmp)
* [memchr](/core/c/libc/#memchr)
* [memset](/core/c/libc/#memset)
* [mtx\_init](/core/c/libc/#mtx_init)
* [putc](/core/c/libc/#putc)
* [putchar](/core/c/libc/#putchar)
* [quick\_exit](/core/c/libc/#quick_exit)
* [raise](/core/c/libc/#raise)
* [setvbuf](/core/c/libc/#setvbuf)
* [signal](/core/c/libc/#signal)
* [strchr](/core/c/libc/#strchr)
* [strerror](/core/c/libc/#strerror)
* [strrchr](/core/c/libc/#strrchr)
* [strtol](/core/c/libc/#strtol)
* [strtoll](/core/c/libc/#strtoll)
* [strtoul](/core/c/libc/#strtoul)
* [strtoull](/core/c/libc/#strtoull)
* [thrd\_exit](/core/c/libc/#thrd_exit)
* [thrd\_join](/core/c/libc/#thrd_join)
* [timespec\_get](/core/c/libc/#timespec_get)
* [tolower](/core/c/libc/#tolower)
* [toupper](/core/c/libc/#toupper)
* [ungetc](/core/c/libc/#ungetc)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)



##### Related Procedures With Returns

* [at\_quick\_exit](/core/c/libc/#at_quick_exit)
* [atexit](/core/c/libc/#atexit)
* [atoi](/core/c/libc/#atoi)
* [atol](/core/c/libc/#atol)
* [cnd\_broadcast](/core/c/libc/#cnd_broadcast)
* [cnd\_init](/core/c/libc/#cnd_init)
* [cnd\_signal](/core/c/libc/#cnd_signal)
* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)
* [errno](/core/c/libc/#errno)
* [fclose](/core/c/libc/#fclose)
* [feof](/core/c/libc/#feof)
* [ferror](/core/c/libc/#ferror)
* [fflush](/core/c/libc/#fflush)
* [fgetc](/core/c/libc/#fgetc)
* [fgetpos](/core/c/libc/#fgetpos)
* [fprintf](/core/c/libc/#fprintf)
* [fputws](/core/c/libc/#fputws)
* [fscanf](/core/c/libc/#fscanf)
* [fsetpos](/core/c/libc/#fsetpos)
* [ftell](/core/c/libc/#ftell)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [getc](/core/c/libc/#getc)
* [getchar](/core/c/libc/#getchar)
* [iswalnum](/core/c/libc/#iswalnum)
* [iswalpha](/core/c/libc/#iswalpha)
* [iswblank](/core/c/libc/#iswblank)
* [iswcntrl](/core/c/libc/#iswcntrl)
* [iswctype](/core/c/libc/#iswctype)
* [iswdigit](/core/c/libc/#iswdigit)
* [iswgraph](/core/c/libc/#iswgraph)
* [iswlower](/core/c/libc/#iswlower)
* [iswprint](/core/c/libc/#iswprint)
* [iswpunct](/core/c/libc/#iswpunct)
* [iswspace](/core/c/libc/#iswspace)
* [iswupper](/core/c/libc/#iswupper)
* [iswxdigit](/core/c/libc/#iswxdigit)
* [mblen](/core/c/libc/#mblen)
* [mbsinit](/core/c/libc/#mbsinit)
* [mbtowc](/core/c/libc/#mbtowc)
* [memcmp](/core/c/libc/#memcmp)
* [mtx\_lock](/core/c/libc/#mtx_lock)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [mtx\_trylock](/core/c/libc/#mtx_trylock)
* [mtx\_unlock](/core/c/libc/#mtx_unlock)
* [printf](/core/c/libc/#printf)
* [puts](/core/c/libc/#puts)
* [rand](/core/c/libc/#rand)
* [remove](/core/c/libc/#remove)
* [rename](/core/c/libc/#rename)
* [scanf](/core/c/libc/#scanf)
* [setjmp](/core/c/libc/#setjmp)
* [snprintf](/core/c/libc/#snprintf)
* [sscanf](/core/c/libc/#sscanf)
* [strcmp](/core/c/libc/#strcmp)
* [strcoll](/core/c/libc/#strcoll)
* [strncmp](/core/c/libc/#strncmp)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [system](/core/c/libc/#system)
* [thrd\_create](/core/c/libc/#thrd_create)
* [thrd\_detach](/core/c/libc/#thrd_detach)
* [thrd\_equal](/core/c/libc/#thrd_equal)
* [thrd\_sleep](/core/c/libc/#thrd_sleep)
* [tss\_create](/core/c/libc/#tss_create)
* [tss\_set](/core/c/libc/#tss_set)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vprintf](/core/c/libc/#vprintf)
* [vscanf](/core/c/libc/#vscanf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [vsscanf](/core/c/libc/#vsscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wctob](/core/c/libc/#wctob)
* [wctomb](/core/c/libc/#wctomb)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [int64\_t ¶](#int64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L36)

```
int64_t :: i64
```

##### Related Procedures With Parameters

* [llabs](/core/c/libc/#llabs)
* [lldiv](/core/c/libc/#lldiv)



##### Related Procedures With Returns

* [atoll](/core/c/libc/#atoll)
* [strtoll](/core/c/libc/#strtoll)
* [wcstoll](/core/c/libc/#wcstoll)

### [int8\_t ¶](#int8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L30)

```
int8_t :: i8
```

### [int\_fast16\_t ¶](#int_fast16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L50)

```
int_fast16_t :: i32
```

##### Related Procedures With Parameters

* [abs](/core/c/libc/#abs)
* [btowc](/core/c/libc/#btowc)
* [div](/core/c/libc/#div)
* [exit](/core/c/libc/#exit)
* [fgets](/core/c/libc/#fgets)
* [fgetws](/core/c/libc/#fgetws)
* [fputc](/core/c/libc/#fputc)
* [fseek](/core/c/libc/#fseek)
* [fwide](/core/c/libc/#fwide)
* [isalnum](/core/c/libc/#isalnum)
* [isalpha](/core/c/libc/#isalpha)
* [isblank](/core/c/libc/#isblank)
* [iscntrl](/core/c/libc/#iscntrl)
* [isdigit](/core/c/libc/#isdigit)
* [isgraph](/core/c/libc/#isgraph)
* [islower](/core/c/libc/#islower)
* [isprint](/core/c/libc/#isprint)
* [ispunct](/core/c/libc/#ispunct)
* [isspace](/core/c/libc/#isspace)
* [isupper](/core/c/libc/#isupper)
* [isxdigit](/core/c/libc/#isxdigit)
* [labs](/core/c/libc/#labs)
* [ldiv](/core/c/libc/#ldiv)
* [longjmp](/core/c/libc/#longjmp)
* [memchr](/core/c/libc/#memchr)
* [memset](/core/c/libc/#memset)
* [mtx\_init](/core/c/libc/#mtx_init)
* [putc](/core/c/libc/#putc)
* [putchar](/core/c/libc/#putchar)
* [quick\_exit](/core/c/libc/#quick_exit)
* [raise](/core/c/libc/#raise)
* [setvbuf](/core/c/libc/#setvbuf)
* [signal](/core/c/libc/#signal)
* [strchr](/core/c/libc/#strchr)
* [strerror](/core/c/libc/#strerror)
* [strrchr](/core/c/libc/#strrchr)
* [strtol](/core/c/libc/#strtol)
* [strtoll](/core/c/libc/#strtoll)
* [strtoul](/core/c/libc/#strtoul)
* [strtoull](/core/c/libc/#strtoull)
* [thrd\_exit](/core/c/libc/#thrd_exit)
* [thrd\_join](/core/c/libc/#thrd_join)
* [timespec\_get](/core/c/libc/#timespec_get)
* [tolower](/core/c/libc/#tolower)
* [toupper](/core/c/libc/#toupper)
* [ungetc](/core/c/libc/#ungetc)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)



##### Related Procedures With Returns

* [at\_quick\_exit](/core/c/libc/#at_quick_exit)
* [atexit](/core/c/libc/#atexit)
* [atoi](/core/c/libc/#atoi)
* [atol](/core/c/libc/#atol)
* [cnd\_broadcast](/core/c/libc/#cnd_broadcast)
* [cnd\_init](/core/c/libc/#cnd_init)
* [cnd\_signal](/core/c/libc/#cnd_signal)
* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)
* [errno](/core/c/libc/#errno)
* [fclose](/core/c/libc/#fclose)
* [feof](/core/c/libc/#feof)
* [ferror](/core/c/libc/#ferror)
* [fflush](/core/c/libc/#fflush)
* [fgetc](/core/c/libc/#fgetc)
* [fgetpos](/core/c/libc/#fgetpos)
* [fprintf](/core/c/libc/#fprintf)
* [fputws](/core/c/libc/#fputws)
* [fscanf](/core/c/libc/#fscanf)
* [fsetpos](/core/c/libc/#fsetpos)
* [ftell](/core/c/libc/#ftell)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [getc](/core/c/libc/#getc)
* [getchar](/core/c/libc/#getchar)
* [iswalnum](/core/c/libc/#iswalnum)
* [iswalpha](/core/c/libc/#iswalpha)
* [iswblank](/core/c/libc/#iswblank)
* [iswcntrl](/core/c/libc/#iswcntrl)
* [iswctype](/core/c/libc/#iswctype)
* [iswdigit](/core/c/libc/#iswdigit)
* [iswgraph](/core/c/libc/#iswgraph)
* [iswlower](/core/c/libc/#iswlower)
* [iswprint](/core/c/libc/#iswprint)
* [iswpunct](/core/c/libc/#iswpunct)
* [iswspace](/core/c/libc/#iswspace)
* [iswupper](/core/c/libc/#iswupper)
* [iswxdigit](/core/c/libc/#iswxdigit)
* [mblen](/core/c/libc/#mblen)
* [mbsinit](/core/c/libc/#mbsinit)
* [mbtowc](/core/c/libc/#mbtowc)
* [memcmp](/core/c/libc/#memcmp)
* [mtx\_lock](/core/c/libc/#mtx_lock)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [mtx\_trylock](/core/c/libc/#mtx_trylock)
* [mtx\_unlock](/core/c/libc/#mtx_unlock)
* [printf](/core/c/libc/#printf)
* [puts](/core/c/libc/#puts)
* [rand](/core/c/libc/#rand)
* [remove](/core/c/libc/#remove)
* [rename](/core/c/libc/#rename)
* [scanf](/core/c/libc/#scanf)
* [setjmp](/core/c/libc/#setjmp)
* [snprintf](/core/c/libc/#snprintf)
* [sscanf](/core/c/libc/#sscanf)
* [strcmp](/core/c/libc/#strcmp)
* [strcoll](/core/c/libc/#strcoll)
* [strncmp](/core/c/libc/#strncmp)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [system](/core/c/libc/#system)
* [thrd\_create](/core/c/libc/#thrd_create)
* [thrd\_detach](/core/c/libc/#thrd_detach)
* [thrd\_equal](/core/c/libc/#thrd_equal)
* [thrd\_sleep](/core/c/libc/#thrd_sleep)
* [tss\_create](/core/c/libc/#tss_create)
* [tss\_set](/core/c/libc/#tss_set)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vprintf](/core/c/libc/#vprintf)
* [vscanf](/core/c/libc/#vscanf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [vsscanf](/core/c/libc/#vsscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wctob](/core/c/libc/#wctob)
* [wctomb](/core/c/libc/#wctomb)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [int\_fast32\_t ¶](#int_fast32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L52)

```
int_fast32_t :: i32
```

##### Related Procedures With Parameters

* [abs](/core/c/libc/#abs)
* [btowc](/core/c/libc/#btowc)
* [div](/core/c/libc/#div)
* [exit](/core/c/libc/#exit)
* [fgets](/core/c/libc/#fgets)
* [fgetws](/core/c/libc/#fgetws)
* [fputc](/core/c/libc/#fputc)
* [fseek](/core/c/libc/#fseek)
* [fwide](/core/c/libc/#fwide)
* [isalnum](/core/c/libc/#isalnum)
* [isalpha](/core/c/libc/#isalpha)
* [isblank](/core/c/libc/#isblank)
* [iscntrl](/core/c/libc/#iscntrl)
* [isdigit](/core/c/libc/#isdigit)
* [isgraph](/core/c/libc/#isgraph)
* [islower](/core/c/libc/#islower)
* [isprint](/core/c/libc/#isprint)
* [ispunct](/core/c/libc/#ispunct)
* [isspace](/core/c/libc/#isspace)
* [isupper](/core/c/libc/#isupper)
* [isxdigit](/core/c/libc/#isxdigit)
* [labs](/core/c/libc/#labs)
* [ldiv](/core/c/libc/#ldiv)
* [longjmp](/core/c/libc/#longjmp)
* [memchr](/core/c/libc/#memchr)
* [memset](/core/c/libc/#memset)
* [mtx\_init](/core/c/libc/#mtx_init)
* [putc](/core/c/libc/#putc)
* [putchar](/core/c/libc/#putchar)
* [quick\_exit](/core/c/libc/#quick_exit)
* [raise](/core/c/libc/#raise)
* [setvbuf](/core/c/libc/#setvbuf)
* [signal](/core/c/libc/#signal)
* [strchr](/core/c/libc/#strchr)
* [strerror](/core/c/libc/#strerror)
* [strrchr](/core/c/libc/#strrchr)
* [strtol](/core/c/libc/#strtol)
* [strtoll](/core/c/libc/#strtoll)
* [strtoul](/core/c/libc/#strtoul)
* [strtoull](/core/c/libc/#strtoull)
* [thrd\_exit](/core/c/libc/#thrd_exit)
* [thrd\_join](/core/c/libc/#thrd_join)
* [timespec\_get](/core/c/libc/#timespec_get)
* [tolower](/core/c/libc/#tolower)
* [toupper](/core/c/libc/#toupper)
* [ungetc](/core/c/libc/#ungetc)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)



##### Related Procedures With Returns

* [at\_quick\_exit](/core/c/libc/#at_quick_exit)
* [atexit](/core/c/libc/#atexit)
* [atoi](/core/c/libc/#atoi)
* [atol](/core/c/libc/#atol)
* [cnd\_broadcast](/core/c/libc/#cnd_broadcast)
* [cnd\_init](/core/c/libc/#cnd_init)
* [cnd\_signal](/core/c/libc/#cnd_signal)
* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)
* [errno](/core/c/libc/#errno)
* [fclose](/core/c/libc/#fclose)
* [feof](/core/c/libc/#feof)
* [ferror](/core/c/libc/#ferror)
* [fflush](/core/c/libc/#fflush)
* [fgetc](/core/c/libc/#fgetc)
* [fgetpos](/core/c/libc/#fgetpos)
* [fprintf](/core/c/libc/#fprintf)
* [fputws](/core/c/libc/#fputws)
* [fscanf](/core/c/libc/#fscanf)
* [fsetpos](/core/c/libc/#fsetpos)
* [ftell](/core/c/libc/#ftell)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [getc](/core/c/libc/#getc)
* [getchar](/core/c/libc/#getchar)
* [iswalnum](/core/c/libc/#iswalnum)
* [iswalpha](/core/c/libc/#iswalpha)
* [iswblank](/core/c/libc/#iswblank)
* [iswcntrl](/core/c/libc/#iswcntrl)
* [iswctype](/core/c/libc/#iswctype)
* [iswdigit](/core/c/libc/#iswdigit)
* [iswgraph](/core/c/libc/#iswgraph)
* [iswlower](/core/c/libc/#iswlower)
* [iswprint](/core/c/libc/#iswprint)
* [iswpunct](/core/c/libc/#iswpunct)
* [iswspace](/core/c/libc/#iswspace)
* [iswupper](/core/c/libc/#iswupper)
* [iswxdigit](/core/c/libc/#iswxdigit)
* [mblen](/core/c/libc/#mblen)
* [mbsinit](/core/c/libc/#mbsinit)
* [mbtowc](/core/c/libc/#mbtowc)
* [memcmp](/core/c/libc/#memcmp)
* [mtx\_lock](/core/c/libc/#mtx_lock)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [mtx\_trylock](/core/c/libc/#mtx_trylock)
* [mtx\_unlock](/core/c/libc/#mtx_unlock)
* [printf](/core/c/libc/#printf)
* [puts](/core/c/libc/#puts)
* [rand](/core/c/libc/#rand)
* [remove](/core/c/libc/#remove)
* [rename](/core/c/libc/#rename)
* [scanf](/core/c/libc/#scanf)
* [setjmp](/core/c/libc/#setjmp)
* [snprintf](/core/c/libc/#snprintf)
* [sscanf](/core/c/libc/#sscanf)
* [strcmp](/core/c/libc/#strcmp)
* [strcoll](/core/c/libc/#strcoll)
* [strncmp](/core/c/libc/#strncmp)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [system](/core/c/libc/#system)
* [thrd\_create](/core/c/libc/#thrd_create)
* [thrd\_detach](/core/c/libc/#thrd_detach)
* [thrd\_equal](/core/c/libc/#thrd_equal)
* [thrd\_sleep](/core/c/libc/#thrd_sleep)
* [tss\_create](/core/c/libc/#tss_create)
* [tss\_set](/core/c/libc/#tss_set)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vprintf](/core/c/libc/#vprintf)
* [vscanf](/core/c/libc/#vscanf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [vsscanf](/core/c/libc/#vsscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wctob](/core/c/libc/#wctob)
* [wctomb](/core/c/libc/#wctomb)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [int\_fast64\_t ¶](#int_fast64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L54)

```
int_fast64_t :: i64
```

##### Related Procedures With Parameters

* [llabs](/core/c/libc/#llabs)
* [lldiv](/core/c/libc/#lldiv)



##### Related Procedures With Returns

* [atoll](/core/c/libc/#atoll)
* [strtoll](/core/c/libc/#strtoll)
* [wcstoll](/core/c/libc/#wcstoll)

### [int\_fast8\_t ¶](#int_fast8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L48)

```
int_fast8_t :: i8
```

### [int\_least16\_t ¶](#int_least16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L41)

```
int_least16_t :: i16
```

### [int\_least32\_t ¶](#int_least32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L43)

```
int_least32_t :: i32
```

##### Related Procedures With Parameters

* [abs](/core/c/libc/#abs)
* [btowc](/core/c/libc/#btowc)
* [div](/core/c/libc/#div)
* [exit](/core/c/libc/#exit)
* [fgets](/core/c/libc/#fgets)
* [fgetws](/core/c/libc/#fgetws)
* [fputc](/core/c/libc/#fputc)
* [fseek](/core/c/libc/#fseek)
* [fwide](/core/c/libc/#fwide)
* [isalnum](/core/c/libc/#isalnum)
* [isalpha](/core/c/libc/#isalpha)
* [isblank](/core/c/libc/#isblank)
* [iscntrl](/core/c/libc/#iscntrl)
* [isdigit](/core/c/libc/#isdigit)
* [isgraph](/core/c/libc/#isgraph)
* [islower](/core/c/libc/#islower)
* [isprint](/core/c/libc/#isprint)
* [ispunct](/core/c/libc/#ispunct)
* [isspace](/core/c/libc/#isspace)
* [isupper](/core/c/libc/#isupper)
* [isxdigit](/core/c/libc/#isxdigit)
* [labs](/core/c/libc/#labs)
* [ldiv](/core/c/libc/#ldiv)
* [longjmp](/core/c/libc/#longjmp)
* [memchr](/core/c/libc/#memchr)
* [memset](/core/c/libc/#memset)
* [mtx\_init](/core/c/libc/#mtx_init)
* [putc](/core/c/libc/#putc)
* [putchar](/core/c/libc/#putchar)
* [quick\_exit](/core/c/libc/#quick_exit)
* [raise](/core/c/libc/#raise)
* [setvbuf](/core/c/libc/#setvbuf)
* [signal](/core/c/libc/#signal)
* [strchr](/core/c/libc/#strchr)
* [strerror](/core/c/libc/#strerror)
* [strrchr](/core/c/libc/#strrchr)
* [strtol](/core/c/libc/#strtol)
* [strtoll](/core/c/libc/#strtoll)
* [strtoul](/core/c/libc/#strtoul)
* [strtoull](/core/c/libc/#strtoull)
* [thrd\_exit](/core/c/libc/#thrd_exit)
* [thrd\_join](/core/c/libc/#thrd_join)
* [timespec\_get](/core/c/libc/#timespec_get)
* [tolower](/core/c/libc/#tolower)
* [toupper](/core/c/libc/#toupper)
* [ungetc](/core/c/libc/#ungetc)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)



##### Related Procedures With Returns

* [at\_quick\_exit](/core/c/libc/#at_quick_exit)
* [atexit](/core/c/libc/#atexit)
* [atoi](/core/c/libc/#atoi)
* [atol](/core/c/libc/#atol)
* [cnd\_broadcast](/core/c/libc/#cnd_broadcast)
* [cnd\_init](/core/c/libc/#cnd_init)
* [cnd\_signal](/core/c/libc/#cnd_signal)
* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)
* [errno](/core/c/libc/#errno)
* [fclose](/core/c/libc/#fclose)
* [feof](/core/c/libc/#feof)
* [ferror](/core/c/libc/#ferror)
* [fflush](/core/c/libc/#fflush)
* [fgetc](/core/c/libc/#fgetc)
* [fgetpos](/core/c/libc/#fgetpos)
* [fprintf](/core/c/libc/#fprintf)
* [fputws](/core/c/libc/#fputws)
* [fscanf](/core/c/libc/#fscanf)
* [fsetpos](/core/c/libc/#fsetpos)
* [ftell](/core/c/libc/#ftell)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [getc](/core/c/libc/#getc)
* [getchar](/core/c/libc/#getchar)
* [iswalnum](/core/c/libc/#iswalnum)
* [iswalpha](/core/c/libc/#iswalpha)
* [iswblank](/core/c/libc/#iswblank)
* [iswcntrl](/core/c/libc/#iswcntrl)
* [iswctype](/core/c/libc/#iswctype)
* [iswdigit](/core/c/libc/#iswdigit)
* [iswgraph](/core/c/libc/#iswgraph)
* [iswlower](/core/c/libc/#iswlower)
* [iswprint](/core/c/libc/#iswprint)
* [iswpunct](/core/c/libc/#iswpunct)
* [iswspace](/core/c/libc/#iswspace)
* [iswupper](/core/c/libc/#iswupper)
* [iswxdigit](/core/c/libc/#iswxdigit)
* [mblen](/core/c/libc/#mblen)
* [mbsinit](/core/c/libc/#mbsinit)
* [mbtowc](/core/c/libc/#mbtowc)
* [memcmp](/core/c/libc/#memcmp)
* [mtx\_lock](/core/c/libc/#mtx_lock)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [mtx\_trylock](/core/c/libc/#mtx_trylock)
* [mtx\_unlock](/core/c/libc/#mtx_unlock)
* [printf](/core/c/libc/#printf)
* [puts](/core/c/libc/#puts)
* [rand](/core/c/libc/#rand)
* [remove](/core/c/libc/#remove)
* [rename](/core/c/libc/#rename)
* [scanf](/core/c/libc/#scanf)
* [setjmp](/core/c/libc/#setjmp)
* [snprintf](/core/c/libc/#snprintf)
* [sscanf](/core/c/libc/#sscanf)
* [strcmp](/core/c/libc/#strcmp)
* [strcoll](/core/c/libc/#strcoll)
* [strncmp](/core/c/libc/#strncmp)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [system](/core/c/libc/#system)
* [thrd\_create](/core/c/libc/#thrd_create)
* [thrd\_detach](/core/c/libc/#thrd_detach)
* [thrd\_equal](/core/c/libc/#thrd_equal)
* [thrd\_sleep](/core/c/libc/#thrd_sleep)
* [tss\_create](/core/c/libc/#tss_create)
* [tss\_set](/core/c/libc/#tss_set)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vprintf](/core/c/libc/#vprintf)
* [vscanf](/core/c/libc/#vscanf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [vsscanf](/core/c/libc/#vsscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wctob](/core/c/libc/#wctob)
* [wctomb](/core/c/libc/#wctomb)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [int\_least64\_t ¶](#int_least64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L45)

```
int_least64_t :: i64
```

##### Related Procedures With Parameters

* [llabs](/core/c/libc/#llabs)
* [lldiv](/core/c/libc/#lldiv)



##### Related Procedures With Returns

* [atoll](/core/c/libc/#atoll)
* [strtoll](/core/c/libc/#strtoll)
* [wcstoll](/core/c/libc/#wcstoll)

### [int\_least8\_t ¶](#int_least8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L39)

```
int_least8_t :: i8
```

### [intmax\_t ¶](#intmax_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L61)

```
intmax_t :: i64
```

##### Related Procedures With Parameters

* [llabs](/core/c/libc/#llabs)
* [lldiv](/core/c/libc/#lldiv)



##### Related Procedures With Returns

* [atoll](/core/c/libc/#atoll)
* [strtoll](/core/c/libc/#strtoll)
* [wcstoll](/core/c/libc/#wcstoll)

### [intptr\_t ¶](#intptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L57)

```
intptr_t :: int
```

### [jmp\_buf ¶](#jmp_buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/setjmp.odin#L63)

```
jmp_buf :: struct #align (16) {
	_: [4096]u8,
}
```

 

The C99 Rationale describes jmp\_buf as being an array type for backward
compatibility. Odin does not need to honor this and couldn't as arrays in
Odin don't decay to pointers. It is somewhat easy for us to bind this, we
just need to ensure the structure contains enough storage with appropriate
alignment. Since there are no types in C with an alignment larger than
that of max\_align\_t, which cannot be larger than sizeof(long double) as any
other exposed type wouldn't be valid C, the maximum alignment possible in a
strictly conformant C implementation is 16 on the platforms we care about.
The choice of 4096 bytes for storage of this type is more than enough on all
relevant platforms.




##### Related Procedures With Parameters

* [longjmp](/core/c/libc/#longjmp)
* [setjmp](/core/c/libc/#setjmp)

### [lconv ¶](#lconv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L56)

```
lconv :: struct {
	decimal_point:        cstring,
	thousand_sep:         cstring,
	grouping:             cstring,
	int_curr_symbol:      cstring,
	currency_symbol:      cstring,
	mon_decimal_points:   cstring,
	mon_thousands_sep:    cstring,
	mon_grouping:         cstring,
	positive_sign:        cstring,
	negative_sign:        cstring,
	int_frac_digits:      u8,
	frac_digits:          u8,
	p_cs_precedes:        u8,
	p_sep_by_space:       u8,
	n_cs_precedes:        u8,
	n_sep_by_space:       u8,
	p_sign_posn:          u8,
	n_sign_posn:          u8,
	_W_decimal_point:     cstring16,
	_W_thousands_sep:     cstring16,
	_W_int_curr_symbol:   cstring16,
	_W_currency_symbol:   cstring16,
	_W_mon_decimal_point: cstring16,
	_W_mon_thousands_sep: cstring16,
	_W_positive_sign:     cstring16,
	_W_negative_sign:     cstring16,
}
```

##### Related Procedures With Returns

* [localeconv](/core/c/libc/#localeconv)

### [ldiv\_t ¶](#ldiv_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L100)

```
ldiv_t :: struct {
	quot: i32,
	rem:  i32,
}
```

##### Related Procedures With Returns

* [ldiv](/core/c/libc/#ldiv)

### [lldiv\_t ¶](#lldiv_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L101)

```
lldiv_t :: struct {
	quot: i64,
	rem:  i64,
}
```

##### Related Procedures With Returns

* [lldiv](/core/c/libc/#lldiv)

### [long ¶](#long) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L12)

```
long :: i32
```

##### Related Procedures With Parameters

* [abs](/core/c/libc/#abs)
* [btowc](/core/c/libc/#btowc)
* [div](/core/c/libc/#div)
* [exit](/core/c/libc/#exit)
* [fgets](/core/c/libc/#fgets)
* [fgetws](/core/c/libc/#fgetws)
* [fputc](/core/c/libc/#fputc)
* [fseek](/core/c/libc/#fseek)
* [fwide](/core/c/libc/#fwide)
* [isalnum](/core/c/libc/#isalnum)
* [isalpha](/core/c/libc/#isalpha)
* [isblank](/core/c/libc/#isblank)
* [iscntrl](/core/c/libc/#iscntrl)
* [isdigit](/core/c/libc/#isdigit)
* [isgraph](/core/c/libc/#isgraph)
* [islower](/core/c/libc/#islower)
* [isprint](/core/c/libc/#isprint)
* [ispunct](/core/c/libc/#ispunct)
* [isspace](/core/c/libc/#isspace)
* [isupper](/core/c/libc/#isupper)
* [isxdigit](/core/c/libc/#isxdigit)
* [labs](/core/c/libc/#labs)
* [ldiv](/core/c/libc/#ldiv)
* [longjmp](/core/c/libc/#longjmp)
* [memchr](/core/c/libc/#memchr)
* [memset](/core/c/libc/#memset)
* [mtx\_init](/core/c/libc/#mtx_init)
* [putc](/core/c/libc/#putc)
* [putchar](/core/c/libc/#putchar)
* [quick\_exit](/core/c/libc/#quick_exit)
* [raise](/core/c/libc/#raise)
* [setvbuf](/core/c/libc/#setvbuf)
* [signal](/core/c/libc/#signal)
* [strchr](/core/c/libc/#strchr)
* [strerror](/core/c/libc/#strerror)
* [strrchr](/core/c/libc/#strrchr)
* [strtol](/core/c/libc/#strtol)
* [strtoll](/core/c/libc/#strtoll)
* [strtoul](/core/c/libc/#strtoul)
* [strtoull](/core/c/libc/#strtoull)
* [thrd\_exit](/core/c/libc/#thrd_exit)
* [thrd\_join](/core/c/libc/#thrd_join)
* [timespec\_get](/core/c/libc/#timespec_get)
* [tolower](/core/c/libc/#tolower)
* [toupper](/core/c/libc/#toupper)
* [ungetc](/core/c/libc/#ungetc)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)



##### Related Procedures With Returns

* [at\_quick\_exit](/core/c/libc/#at_quick_exit)
* [atexit](/core/c/libc/#atexit)
* [atoi](/core/c/libc/#atoi)
* [atol](/core/c/libc/#atol)
* [cnd\_broadcast](/core/c/libc/#cnd_broadcast)
* [cnd\_init](/core/c/libc/#cnd_init)
* [cnd\_signal](/core/c/libc/#cnd_signal)
* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)
* [errno](/core/c/libc/#errno)
* [fclose](/core/c/libc/#fclose)
* [feof](/core/c/libc/#feof)
* [ferror](/core/c/libc/#ferror)
* [fflush](/core/c/libc/#fflush)
* [fgetc](/core/c/libc/#fgetc)
* [fgetpos](/core/c/libc/#fgetpos)
* [fprintf](/core/c/libc/#fprintf)
* [fputws](/core/c/libc/#fputws)
* [fscanf](/core/c/libc/#fscanf)
* [fsetpos](/core/c/libc/#fsetpos)
* [ftell](/core/c/libc/#ftell)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [getc](/core/c/libc/#getc)
* [getchar](/core/c/libc/#getchar)
* [iswalnum](/core/c/libc/#iswalnum)
* [iswalpha](/core/c/libc/#iswalpha)
* [iswblank](/core/c/libc/#iswblank)
* [iswcntrl](/core/c/libc/#iswcntrl)
* [iswctype](/core/c/libc/#iswctype)
* [iswdigit](/core/c/libc/#iswdigit)
* [iswgraph](/core/c/libc/#iswgraph)
* [iswlower](/core/c/libc/#iswlower)
* [iswprint](/core/c/libc/#iswprint)
* [iswpunct](/core/c/libc/#iswpunct)
* [iswspace](/core/c/libc/#iswspace)
* [iswupper](/core/c/libc/#iswupper)
* [iswxdigit](/core/c/libc/#iswxdigit)
* [mblen](/core/c/libc/#mblen)
* [mbsinit](/core/c/libc/#mbsinit)
* [mbtowc](/core/c/libc/#mbtowc)
* [memcmp](/core/c/libc/#memcmp)
* [mtx\_lock](/core/c/libc/#mtx_lock)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [mtx\_trylock](/core/c/libc/#mtx_trylock)
* [mtx\_unlock](/core/c/libc/#mtx_unlock)
* [printf](/core/c/libc/#printf)
* [puts](/core/c/libc/#puts)
* [rand](/core/c/libc/#rand)
* [remove](/core/c/libc/#remove)
* [rename](/core/c/libc/#rename)
* [scanf](/core/c/libc/#scanf)
* [setjmp](/core/c/libc/#setjmp)
* [snprintf](/core/c/libc/#snprintf)
* [sscanf](/core/c/libc/#sscanf)
* [strcmp](/core/c/libc/#strcmp)
* [strcoll](/core/c/libc/#strcoll)
* [strncmp](/core/c/libc/#strncmp)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [system](/core/c/libc/#system)
* [thrd\_create](/core/c/libc/#thrd_create)
* [thrd\_detach](/core/c/libc/#thrd_detach)
* [thrd\_equal](/core/c/libc/#thrd_equal)
* [thrd\_sleep](/core/c/libc/#thrd_sleep)
* [tss\_create](/core/c/libc/#tss_create)
* [tss\_set](/core/c/libc/#tss_set)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vprintf](/core/c/libc/#vprintf)
* [vscanf](/core/c/libc/#vscanf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [vsscanf](/core/c/libc/#vsscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wctob](/core/c/libc/#wctob)
* [wctomb](/core/c/libc/#wctomb)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [longlong ¶](#longlong) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L13)

```
longlong :: i64
```

##### Related Procedures With Parameters

* [llabs](/core/c/libc/#llabs)
* [lldiv](/core/c/libc/#lldiv)



##### Related Procedures With Returns

* [atoll](/core/c/libc/#atoll)
* [strtoll](/core/c/libc/#strtoll)
* [wcstoll](/core/c/libc/#wcstoll)

### [mbstate\_t ¶](#mbstate_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L101)

```
mbstate_t :: struct #align (16) {
	_: [32]u8,
}
```

 

Large enough and aligned enough for any wide-spread in-use libc.




##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrlen](/core/c/libc/#mbrlen)
* [mbrtoc16](/core/c/libc/#mbrtoc16)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [mbrtowc](/core/c/libc/#mbrtowc)
* [mbsinit](/core/c/libc/#mbsinit)
* [mbsrtowcs](/core/c/libc/#mbsrtowcs)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcsrtombs](/core/c/libc/#wcsrtombs)

### [memory\_order ¶](#memory_order) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L19)

```
memory_order :: enum i32 {
	relaxed, 
	consume, 
	acquire, 
	release, 
	acq_rel, 
	seq_cst, 
}
```

 

7.17.3 Order and consistency




##### Related Procedures With Parameters

* [atomic\_compare\_exchange\_strong\_explicit](/core/c/libc/#atomic_compare_exchange_strong_explicit)
* [atomic\_compare\_exchange\_weak\_explicit](/core/c/libc/#atomic_compare_exchange_weak_explicit)
* [atomic\_exchange\_explicit](/core/c/libc/#atomic_exchange_explicit)
* [atomic\_fetch\_add\_explicit](/core/c/libc/#atomic_fetch_add_explicit)
* [atomic\_fetch\_and\_explicit](/core/c/libc/#atomic_fetch_and_explicit)
* [atomic\_fetch\_or\_explicit](/core/c/libc/#atomic_fetch_or_explicit)
* [atomic\_fetch\_sub\_explicit](/core/c/libc/#atomic_fetch_sub_explicit)
* [atomic\_fetch\_xor\_explicit](/core/c/libc/#atomic_fetch_xor_explicit)
* [atomic\_flag\_clear\_explicit](/core/c/libc/#atomic_flag_clear_explicit)
* [atomic\_flag\_test\_and\_set\_explicit](/core/c/libc/#atomic_flag_test_and_set_explicit)
* [atomic\_load\_explicit](/core/c/libc/#atomic_load_explicit)
* [atomic\_signal\_fence](/core/c/libc/#atomic_signal_fence)
* [atomic\_store\_explicit](/core/c/libc/#atomic_store_explicit)
* [atomic\_thread\_fence](/core/c/libc/#atomic_thread_fence)

##### Related Constants

* [memory\_order\_acq\_rel](/core/c/libc/#memory_order_acq_rel)
* [memory\_order\_acquire](/core/c/libc/#memory_order_acquire)
* [memory\_order\_consume](/core/c/libc/#memory_order_consume)
* [memory\_order\_relaxed](/core/c/libc/#memory_order_relaxed)
* [memory\_order\_release](/core/c/libc/#memory_order_release)
* [memory\_order\_seq\_cst](/core/c/libc/#memory_order_seq_cst)

### [mtx\_t ¶](#mtx_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L30)

```
mtx_t :: distinct rawptr
```

 

\_Mtx\_imp\_t




##### Related Procedures With Parameters

* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [cnd\_wait](/core/c/libc/#cnd_wait)
* [mtx\_destroy](/core/c/libc/#mtx_destroy)
* [mtx\_init](/core/c/libc/#mtx_init)
* [mtx\_lock](/core/c/libc/#mtx_lock)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [mtx\_trylock](/core/c/libc/#mtx_trylock)
* [mtx\_unlock](/core/c/libc/#mtx_unlock)

### [once\_flag ¶](#once_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L26)

```
once_flag :: distinct i8
```

 

\_Once\_flag\_imp\_t




##### Related Procedures With Parameters

* [call\_once](/core/c/libc/#call_once)

### [ptrdiff\_t ¶](#ptrdiff_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L59)

```
ptrdiff_t :: c.ptrdiff_t
```

##### Related Constants

* [PTRDIFF\_MAX](/core/c/libc/#PTRDIFF_MAX)
* [PTRDIFF\_MIN](/core/c/libc/#PTRDIFF_MIN)

### [schar ¶](#schar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L9)

```
schar :: i8
```

### [short ¶](#short) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L10)

```
short :: i16
```

### [sig\_atomic\_t ¶](#sig_atomic_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L13)

```
sig_atomic_t :: distinct i32
```

##### Related Constants

* [SIG\_ATOMIC\_MAX](/core/c/libc/#SIG_ATOMIC_MAX)
* [SIG\_ATOMIC\_MIN](/core/c/libc/#SIG_ATOMIC_MIN)

### [size\_t ¶](#size_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L23)

```
size_t :: uint
```

##### Related Procedures With Parameters

* [aligned\_alloc](/core/c/libc/#aligned_alloc)
* [bsearch](/core/c/libc/#bsearch)
* [calloc](/core/c/libc/#calloc)
* [fread](/core/c/libc/#fread)
* [fwrite](/core/c/libc/#fwrite)
* [malloc](/core/c/libc/#malloc)
* [mblen](/core/c/libc/#mblen)
* [mbrlen](/core/c/libc/#mbrlen)
* [mbrtoc16](/core/c/libc/#mbrtoc16)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [mbrtowc](/core/c/libc/#mbrtowc)
* [mbsrtowcs](/core/c/libc/#mbsrtowcs)
* [mbstowcs](/core/c/libc/#mbstowcs)
* [mbtowc](/core/c/libc/#mbtowc)
* [memchr](/core/c/libc/#memchr)
* [memcmp](/core/c/libc/#memcmp)
* [memcpy](/core/c/libc/#memcpy)
* [memmove](/core/c/libc/#memmove)
* [memset](/core/c/libc/#memset)
* [qsort](/core/c/libc/#qsort)
* [realloc](/core/c/libc/#realloc)
* [setvbuf](/core/c/libc/#setvbuf)
* [snprintf](/core/c/libc/#snprintf)
* [strftime](/core/c/libc/#strftime)
* [strncat](/core/c/libc/#strncat)
* [strncmp](/core/c/libc/#strncmp)
* [strncpy](/core/c/libc/#strncpy)
* [strxfrm](/core/c/libc/#strxfrm)
* [swprintf](/core/c/libc/#swprintf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vswprintf](/core/c/libc/#vswprintf)
* [wcsftime](/core/c/libc/#wcsftime)
* [wcsncat](/core/c/libc/#wcsncat)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wcsncpy](/core/c/libc/#wcsncpy)
* [wcsrtombs](/core/c/libc/#wcsrtombs)
* [wcstombs](/core/c/libc/#wcstombs)
* [wcsxfrm](/core/c/libc/#wcsxfrm)
* [wmemchr](/core/c/libc/#wmemchr)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wmemcpy](/core/c/libc/#wmemcpy)
* [wmemmove](/core/c/libc/#wmemmove)
* [wmemset](/core/c/libc/#wmemset)



##### Related Procedures With Returns

* [MB\_CUR\_MAX](/core/c/libc/#MB_CUR_MAX)
* [c16rtomb](/core/c/libc/#c16rtomb)
* [c32rtomb](/core/c/libc/#c32rtomb)
* [strcspn](/core/c/libc/#strcspn)
* [strlen](/core/c/libc/#strlen)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcscspn](/core/c/libc/#wcscspn)
* [wcslen](/core/c/libc/#wcslen)
* [wcsspn](/core/c/libc/#wcsspn)

### [ssize\_t ¶](#ssize_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L24)

```
ssize_t :: int
```

### [thrd\_start\_t ¶](#thrd_start_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L5)

```
thrd_start_t :: proc "c" (rawptr) -> i32
```

##### Related Procedures With Parameters

* [thrd\_create](/core/c/libc/#thrd_create)

### [thrd\_t ¶](#thrd_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L27)

```
thrd_t :: struct {
	_: rawptr,
	_: u32,
}
```

 

\_Thrd\_t




##### Related Procedures With Parameters

* [thrd\_create](/core/c/libc/#thrd_create)
* [thrd\_detach](/core/c/libc/#thrd_detach)
* [thrd\_equal](/core/c/libc/#thrd_equal)
* [thrd\_join](/core/c/libc/#thrd_join)



##### Related Procedures With Returns

* [thrd\_current](/core/c/libc/#thrd_current)

### [time\_t ¶](#time_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L36)

```
time_t :: distinct i64
```

##### Related Procedures With Parameters

* [ctime](/core/c/libc/#ctime)
* [difftime](/core/c/libc/#difftime)
* [gmtime](/core/c/libc/#gmtime)
* [localtime](/core/c/libc/#localtime)
* [time](/core/c/libc/#time)



##### Related Procedures With Returns

* [mktime](/core/c/libc/#mktime)

### [timespec ¶](#timespec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L38)

```
timespec :: struct #align (8) {
	tv_sec:  time_t,
	tv_nsec: i32,
}
```

##### Related Procedures With Parameters

* [cnd\_timedwait](/core/c/libc/#cnd_timedwait)
* [mtx\_timedlock](/core/c/libc/#mtx_timedlock)
* [thrd\_sleep](/core/c/libc/#thrd_sleep)
* [timespec\_get](/core/c/libc/#timespec_get)

### [tm ¶](#tm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L43)

```
tm :: struct #align (8) {
	tm_sec:   i32,
	tm_min:   i32,
	tm_hour:  i32,
	tm_mday:  i32,
	tm_mon:   i32,
	tm_year:  i32,
	tm_wday:  i32,
	tm_yday:  i32,
	tm_isdst: i32,
}
```

##### Related Procedures With Parameters

* [asctime](/core/c/libc/#asctime)
* [mktime](/core/c/libc/#mktime)
* [strftime](/core/c/libc/#strftime)
* [wcsftime](/core/c/libc/#wcsftime)



##### Related Procedures With Returns

* [gmtime](/core/c/libc/#gmtime)
* [localtime](/core/c/libc/#localtime)

### [tss\_dtor\_t ¶](#tss_dtor_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L6)

```
tss_dtor_t :: proc "c" (rawptr)
```

##### Related Procedures With Parameters

* [tss\_create](/core/c/libc/#tss_create)

### [tss\_t ¶](#tss_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L28)

```
tss_t :: distinct i32
```

 

\_Tss\_imp\_t




##### Related Procedures With Parameters

* [tss\_create](/core/c/libc/#tss_create)
* [tss\_delete](/core/c/libc/#tss_delete)
* [tss\_get](/core/c/libc/#tss_get)
* [tss\_set](/core/c/libc/#tss_set)

### [uchar ¶](#uchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L15)

```
uchar :: u8
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [c32rtomb](/core/c/libc/#c32rtomb)
* [fgets](/core/c/libc/#fgets)
* [setbuf](/core/c/libc/#setbuf)
* [setvbuf](/core/c/libc/#setvbuf)
* [snprintf](/core/c/libc/#snprintf)
* [strcat](/core/c/libc/#strcat)
* [strcpy](/core/c/libc/#strcpy)
* [strftime](/core/c/libc/#strftime)
* [strncat](/core/c/libc/#strncat)
* [strncpy](/core/c/libc/#strncpy)
* [strrchr](/core/c/libc/#strrchr)
* [strtok](/core/c/libc/#strtok)
* [strxfrm](/core/c/libc/#strxfrm)
* [tmpnam](/core/c/libc/#tmpnam)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcsrtombs](/core/c/libc/#wcsrtombs)
* [wcstombs](/core/c/libc/#wcstombs)
* [wctomb](/core/c/libc/#wctomb)



##### Related Procedures With Returns

* [asctime](/core/c/libc/#asctime)
* [ctime](/core/c/libc/#ctime)
* [strchr](/core/c/libc/#strchr)
* [strcpn](/core/c/libc/#strcpn)
* [strpbrk](/core/c/libc/#strpbrk)

### [uint ¶](#uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L17)

```
uint :: u32
```

##### Related Procedures With Parameters

* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [srand](/core/c/libc/#srand)



##### Related Procedures With Returns

* [strtoul](/core/c/libc/#strtoul)
* [wcstoul](/core/c/libc/#wcstoul)

### [uint16\_t ¶](#uint16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L33)

```
uint16_t :: u16
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [fgetws](/core/c/libc/#fgetws)
* [fputwc](/core/c/libc/#fputwc)
* [fputws](/core/c/libc/#fputws)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [mbrtoc16](/core/c/libc/#mbrtoc16)
* [mbrtowc](/core/c/libc/#mbrtowc)
* [mbsrtowcs](/core/c/libc/#mbsrtowcs)
* [mbstowcs](/core/c/libc/#mbstowcs)
* [mbtowc](/core/c/libc/#mbtowc)
* [putwc](/core/c/libc/#putwc)
* [putwchar](/core/c/libc/#putwchar)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [ungetwc](/core/c/libc/#ungetwc)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcscat](/core/c/libc/#wcscat)
* [wcschr](/core/c/libc/#wcschr)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcscpy](/core/c/libc/#wcscpy)
* [wcscspn](/core/c/libc/#wcscspn)
* [wcsftime](/core/c/libc/#wcsftime)
* [wcslen](/core/c/libc/#wcslen)
* [wcsncat](/core/c/libc/#wcsncat)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wcsncpy](/core/c/libc/#wcsncpy)
* [wcspbrk](/core/c/libc/#wcspbrk)
* [wcsrchr](/core/c/libc/#wcsrchr)
* [wcsspn](/core/c/libc/#wcsspn)
* [wcsstr](/core/c/libc/#wcsstr)
* [wcstod](/core/c/libc/#wcstod)
* [wcstof](/core/c/libc/#wcstof)
* [wcstok](/core/c/libc/#wcstok)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstombs](/core/c/libc/#wcstombs)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)
* [wcsxfrm](/core/c/libc/#wcsxfrm)
* [wctomb](/core/c/libc/#wctomb)
* [wmemchr](/core/c/libc/#wmemchr)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wmemcpy](/core/c/libc/#wmemcpy)
* [wmemmove](/core/c/libc/#wmemmove)
* [wmemset](/core/c/libc/#wmemset)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [uint32\_t ¶](#uint32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L35)

```
uint32_t :: u32
```

##### Related Procedures With Parameters

* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [srand](/core/c/libc/#srand)



##### Related Procedures With Returns

* [strtoul](/core/c/libc/#strtoul)
* [wcstoul](/core/c/libc/#wcstoul)

### [uint64\_t ¶](#uint64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L37)

```
uint64_t :: u64
```

##### Related Procedures With Returns

* [strtoull](/core/c/libc/#strtoull)
* [wcstoull](/core/c/libc/#wcstoull)

### [uint8\_t ¶](#uint8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L31)

```
uint8_t :: u8
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [c32rtomb](/core/c/libc/#c32rtomb)
* [fgets](/core/c/libc/#fgets)
* [setbuf](/core/c/libc/#setbuf)
* [setvbuf](/core/c/libc/#setvbuf)
* [snprintf](/core/c/libc/#snprintf)
* [strcat](/core/c/libc/#strcat)
* [strcpy](/core/c/libc/#strcpy)
* [strftime](/core/c/libc/#strftime)
* [strncat](/core/c/libc/#strncat)
* [strncpy](/core/c/libc/#strncpy)
* [strrchr](/core/c/libc/#strrchr)
* [strtok](/core/c/libc/#strtok)
* [strxfrm](/core/c/libc/#strxfrm)
* [tmpnam](/core/c/libc/#tmpnam)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcsrtombs](/core/c/libc/#wcsrtombs)
* [wcstombs](/core/c/libc/#wcstombs)
* [wctomb](/core/c/libc/#wctomb)



##### Related Procedures With Returns

* [asctime](/core/c/libc/#asctime)
* [ctime](/core/c/libc/#ctime)
* [strchr](/core/c/libc/#strchr)
* [strcpn](/core/c/libc/#strcpn)
* [strpbrk](/core/c/libc/#strpbrk)

### [uint\_fast16\_t ¶](#uint_fast16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L51)

```
uint_fast16_t :: u32
```

##### Related Procedures With Parameters

* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [srand](/core/c/libc/#srand)



##### Related Procedures With Returns

* [strtoul](/core/c/libc/#strtoul)
* [wcstoul](/core/c/libc/#wcstoul)

### [uint\_fast32\_t ¶](#uint_fast32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L53)

```
uint_fast32_t :: u32
```

##### Related Procedures With Parameters

* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [srand](/core/c/libc/#srand)



##### Related Procedures With Returns

* [strtoul](/core/c/libc/#strtoul)
* [wcstoul](/core/c/libc/#wcstoul)

### [uint\_fast64\_t ¶](#uint_fast64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L55)

```
uint_fast64_t :: u64
```

##### Related Procedures With Returns

* [strtoull](/core/c/libc/#strtoull)
* [wcstoull](/core/c/libc/#wcstoull)

### [uint\_fast8\_t ¶](#uint_fast8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L49)

```
uint_fast8_t :: u8
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [c32rtomb](/core/c/libc/#c32rtomb)
* [fgets](/core/c/libc/#fgets)
* [setbuf](/core/c/libc/#setbuf)
* [setvbuf](/core/c/libc/#setvbuf)
* [snprintf](/core/c/libc/#snprintf)
* [strcat](/core/c/libc/#strcat)
* [strcpy](/core/c/libc/#strcpy)
* [strftime](/core/c/libc/#strftime)
* [strncat](/core/c/libc/#strncat)
* [strncpy](/core/c/libc/#strncpy)
* [strrchr](/core/c/libc/#strrchr)
* [strtok](/core/c/libc/#strtok)
* [strxfrm](/core/c/libc/#strxfrm)
* [tmpnam](/core/c/libc/#tmpnam)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcsrtombs](/core/c/libc/#wcsrtombs)
* [wcstombs](/core/c/libc/#wcstombs)
* [wctomb](/core/c/libc/#wctomb)



##### Related Procedures With Returns

* [asctime](/core/c/libc/#asctime)
* [ctime](/core/c/libc/#ctime)
* [strchr](/core/c/libc/#strchr)
* [strcpn](/core/c/libc/#strcpn)
* [strpbrk](/core/c/libc/#strpbrk)

### [uint\_least16\_t ¶](#uint_least16_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L42)

```
uint_least16_t :: u16
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [fgetws](/core/c/libc/#fgetws)
* [fputwc](/core/c/libc/#fputwc)
* [fputws](/core/c/libc/#fputws)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [mbrtoc16](/core/c/libc/#mbrtoc16)
* [mbrtowc](/core/c/libc/#mbrtowc)
* [mbsrtowcs](/core/c/libc/#mbsrtowcs)
* [mbstowcs](/core/c/libc/#mbstowcs)
* [mbtowc](/core/c/libc/#mbtowc)
* [putwc](/core/c/libc/#putwc)
* [putwchar](/core/c/libc/#putwchar)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [ungetwc](/core/c/libc/#ungetwc)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcscat](/core/c/libc/#wcscat)
* [wcschr](/core/c/libc/#wcschr)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcscpy](/core/c/libc/#wcscpy)
* [wcscspn](/core/c/libc/#wcscspn)
* [wcsftime](/core/c/libc/#wcsftime)
* [wcslen](/core/c/libc/#wcslen)
* [wcsncat](/core/c/libc/#wcsncat)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wcsncpy](/core/c/libc/#wcsncpy)
* [wcspbrk](/core/c/libc/#wcspbrk)
* [wcsrchr](/core/c/libc/#wcsrchr)
* [wcsspn](/core/c/libc/#wcsspn)
* [wcsstr](/core/c/libc/#wcsstr)
* [wcstod](/core/c/libc/#wcstod)
* [wcstof](/core/c/libc/#wcstof)
* [wcstok](/core/c/libc/#wcstok)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstombs](/core/c/libc/#wcstombs)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)
* [wcsxfrm](/core/c/libc/#wcsxfrm)
* [wctomb](/core/c/libc/#wctomb)
* [wmemchr](/core/c/libc/#wmemchr)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wmemcpy](/core/c/libc/#wmemcpy)
* [wmemmove](/core/c/libc/#wmemmove)
* [wmemset](/core/c/libc/#wmemset)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [uint\_least32\_t ¶](#uint_least32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L44)

```
uint_least32_t :: u32
```

##### Related Procedures With Parameters

* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [srand](/core/c/libc/#srand)



##### Related Procedures With Returns

* [strtoul](/core/c/libc/#strtoul)
* [wcstoul](/core/c/libc/#wcstoul)

### [uint\_least64\_t ¶](#uint_least64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L46)

```
uint_least64_t :: u64
```

##### Related Procedures With Returns

* [strtoull](/core/c/libc/#strtoull)
* [wcstoull](/core/c/libc/#wcstoull)

### [uint\_least8\_t ¶](#uint_least8_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L40)

```
uint_least8_t :: u8
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [c32rtomb](/core/c/libc/#c32rtomb)
* [fgets](/core/c/libc/#fgets)
* [setbuf](/core/c/libc/#setbuf)
* [setvbuf](/core/c/libc/#setvbuf)
* [snprintf](/core/c/libc/#snprintf)
* [strcat](/core/c/libc/#strcat)
* [strcpy](/core/c/libc/#strcpy)
* [strftime](/core/c/libc/#strftime)
* [strncat](/core/c/libc/#strncat)
* [strncpy](/core/c/libc/#strncpy)
* [strrchr](/core/c/libc/#strrchr)
* [strtok](/core/c/libc/#strtok)
* [strxfrm](/core/c/libc/#strxfrm)
* [tmpnam](/core/c/libc/#tmpnam)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcsrtombs](/core/c/libc/#wcsrtombs)
* [wcstombs](/core/c/libc/#wcstombs)
* [wctomb](/core/c/libc/#wctomb)



##### Related Procedures With Returns

* [asctime](/core/c/libc/#asctime)
* [ctime](/core/c/libc/#ctime)
* [strchr](/core/c/libc/#strchr)
* [strcpn](/core/c/libc/#strcpn)
* [strpbrk](/core/c/libc/#strpbrk)

### [uintmax\_t ¶](#uintmax_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L62)

```
uintmax_t :: u64
```

##### Related Procedures With Returns

* [strtoull](/core/c/libc/#strtoull)
* [wcstoull](/core/c/libc/#wcstoull)

### [uintptr\_t ¶](#uintptr_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L58)

```
uintptr_t :: uintptr
```

### [ulong ¶](#ulong) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L18)

```
ulong :: u32
```

##### Related Procedures With Parameters

* [c32rtomb](/core/c/libc/#c32rtomb)
* [mbrtoc32](/core/c/libc/#mbrtoc32)
* [srand](/core/c/libc/#srand)



##### Related Procedures With Returns

* [strtoul](/core/c/libc/#strtoul)
* [wcstoul](/core/c/libc/#wcstoul)

### [ulonglong ¶](#ulonglong) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L19)

```
ulonglong :: u64
```

##### Related Procedures With Returns

* [strtoull](/core/c/libc/#strtoull)
* [wcstoull](/core/c/libc/#wcstoull)

### [ushort ¶](#ushort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L16)

```
ushort :: u16
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [fgetws](/core/c/libc/#fgetws)
* [fputwc](/core/c/libc/#fputwc)
* [fputws](/core/c/libc/#fputws)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [mbrtoc16](/core/c/libc/#mbrtoc16)
* [mbrtowc](/core/c/libc/#mbrtowc)
* [mbsrtowcs](/core/c/libc/#mbsrtowcs)
* [mbstowcs](/core/c/libc/#mbstowcs)
* [mbtowc](/core/c/libc/#mbtowc)
* [putwc](/core/c/libc/#putwc)
* [putwchar](/core/c/libc/#putwchar)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [ungetwc](/core/c/libc/#ungetwc)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcscat](/core/c/libc/#wcscat)
* [wcschr](/core/c/libc/#wcschr)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcscpy](/core/c/libc/#wcscpy)
* [wcscspn](/core/c/libc/#wcscspn)
* [wcsftime](/core/c/libc/#wcsftime)
* [wcslen](/core/c/libc/#wcslen)
* [wcsncat](/core/c/libc/#wcsncat)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wcsncpy](/core/c/libc/#wcsncpy)
* [wcspbrk](/core/c/libc/#wcspbrk)
* [wcsrchr](/core/c/libc/#wcsrchr)
* [wcsspn](/core/c/libc/#wcsspn)
* [wcsstr](/core/c/libc/#wcsstr)
* [wcstod](/core/c/libc/#wcstod)
* [wcstof](/core/c/libc/#wcstof)
* [wcstok](/core/c/libc/#wcstok)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstombs](/core/c/libc/#wcstombs)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)
* [wcsxfrm](/core/c/libc/#wcsxfrm)
* [wctomb](/core/c/libc/#wctomb)
* [wmemchr](/core/c/libc/#wmemchr)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wmemcpy](/core/c/libc/#wmemcpy)
* [wmemmove](/core/c/libc/#wmemmove)
* [wmemset](/core/c/libc/#wmemset)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [va\_list ¶](#va_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdarg.odin#L17)

```
va_list :: c.va_list
```

##### Related Procedures With Parameters

* [va\_copy](/core/c/libc/#va_copy)
* [va\_end](/core/c/libc/#va_end)
* [va\_start](/core/c/libc/#va_start)
* [vfprintf](/core/c/libc/#vfprintf)
* [vfscanf](/core/c/libc/#vfscanf)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vprintf](/core/c/libc/#vprintf)
* [vscanf](/core/c/libc/#vscanf)
* [vsnprintf](/core/c/libc/#vsnprintf)
* [vsprintf](/core/c/libc/#vsprintf)
* [vsscanf](/core/c/libc/#vsscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)

### [wchar\_t ¶](#wchar_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L25)

```
wchar_t :: u16
```

##### Related Procedures With Parameters

* [c16rtomb](/core/c/libc/#c16rtomb)
* [fgetws](/core/c/libc/#fgetws)
* [fputwc](/core/c/libc/#fputwc)
* [fputws](/core/c/libc/#fputws)
* [fwprintf](/core/c/libc/#fwprintf)
* [fwscanf](/core/c/libc/#fwscanf)
* [mbrtoc16](/core/c/libc/#mbrtoc16)
* [mbrtowc](/core/c/libc/#mbrtowc)
* [mbsrtowcs](/core/c/libc/#mbsrtowcs)
* [mbstowcs](/core/c/libc/#mbstowcs)
* [mbtowc](/core/c/libc/#mbtowc)
* [putwc](/core/c/libc/#putwc)
* [putwchar](/core/c/libc/#putwchar)
* [swprintf](/core/c/libc/#swprintf)
* [swscanf](/core/c/libc/#swscanf)
* [ungetwc](/core/c/libc/#ungetwc)
* [vfwprintf](/core/c/libc/#vfwprintf)
* [vfwscanf](/core/c/libc/#vfwscanf)
* [vswprintf](/core/c/libc/#vswprintf)
* [vswscanf](/core/c/libc/#vswscanf)
* [vwprintf](/core/c/libc/#vwprintf)
* [vwscanf](/core/c/libc/#vwscanf)
* [wcrtomb](/core/c/libc/#wcrtomb)
* [wcscat](/core/c/libc/#wcscat)
* [wcschr](/core/c/libc/#wcschr)
* [wcscmp](/core/c/libc/#wcscmp)
* [wcscoll](/core/c/libc/#wcscoll)
* [wcscpy](/core/c/libc/#wcscpy)
* [wcscspn](/core/c/libc/#wcscspn)
* [wcsftime](/core/c/libc/#wcsftime)
* [wcslen](/core/c/libc/#wcslen)
* [wcsncat](/core/c/libc/#wcsncat)
* [wcsncmp](/core/c/libc/#wcsncmp)
* [wcsncpy](/core/c/libc/#wcsncpy)
* [wcspbrk](/core/c/libc/#wcspbrk)
* [wcsrchr](/core/c/libc/#wcsrchr)
* [wcsspn](/core/c/libc/#wcsspn)
* [wcsstr](/core/c/libc/#wcsstr)
* [wcstod](/core/c/libc/#wcstod)
* [wcstof](/core/c/libc/#wcstof)
* [wcstok](/core/c/libc/#wcstok)
* [wcstol](/core/c/libc/#wcstol)
* [wcstoll](/core/c/libc/#wcstoll)
* [wcstombs](/core/c/libc/#wcstombs)
* [wcstoul](/core/c/libc/#wcstoul)
* [wcstoull](/core/c/libc/#wcstoull)
* [wcsxfrm](/core/c/libc/#wcsxfrm)
* [wctomb](/core/c/libc/#wctomb)
* [wmemchr](/core/c/libc/#wmemchr)
* [wmemcmp](/core/c/libc/#wmemcmp)
* [wmemcpy](/core/c/libc/#wmemcpy)
* [wmemmove](/core/c/libc/#wmemmove)
* [wmemset](/core/c/libc/#wmemset)
* [wprintf](/core/c/libc/#wprintf)
* [wscanf](/core/c/libc/#wscanf)

### [wctrans\_t ¶](#wctrans_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L14)

```
wctrans_t :: distinct u16
```

##### Related Procedures With Parameters

* [towctrans](/core/c/libc/#towctrans)



##### Related Procedures With Returns

* [wctrans](/core/c/libc/#wctrans)

### [wctype\_t ¶](#wctype_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L15)

```
wctype_t :: distinct u16
```

##### Related Procedures With Parameters

* [iswctype](/core/c/libc/#iswctype)



##### Related Procedures With Returns

* [wctype](/core/c/libc/#wctype)

### [wint\_t ¶](#wint_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L105)

```
wint_t :: distinct u16
```

 

Odin does not have default argument promotion so the need for a separate type
here isn't necessary, though make it distinct just to be safe.




##### Related Procedures With Parameters

* [iswalnum](/core/c/libc/#iswalnum)
* [iswalpha](/core/c/libc/#iswalpha)
* [iswblank](/core/c/libc/#iswblank)
* [iswcntrl](/core/c/libc/#iswcntrl)
* [iswctype](/core/c/libc/#iswctype)
* [iswdigit](/core/c/libc/#iswdigit)
* [iswgraph](/core/c/libc/#iswgraph)
* [iswlower](/core/c/libc/#iswlower)
* [iswprint](/core/c/libc/#iswprint)
* [iswpunct](/core/c/libc/#iswpunct)
* [iswspace](/core/c/libc/#iswspace)
* [iswupper](/core/c/libc/#iswupper)
* [iswxdigit](/core/c/libc/#iswxdigit)
* [towctrans](/core/c/libc/#towctrans)
* [towlower](/core/c/libc/#towlower)
* [towupper](/core/c/libc/#towupper)
* [wctob](/core/c/libc/#wctob)



##### Related Procedures With Returns

* [btowc](/core/c/libc/#btowc)
* [fputwc](/core/c/libc/#fputwc)
* [fwgetc](/core/c/libc/#fwgetc)
* [getwc](/core/c/libc/#getwc)
* [getwchar](/core/c/libc/#getwchar)
* [putwc](/core/c/libc/#putwc)
* [putwchar](/core/c/libc/#putwchar)
* [ungetwc](/core/c/libc/#ungetwc)

##### Related Constants

* [WEOF](/core/c/libc/#WEOF)

## Constants

### [ATOMIC\_BOOL\_LOCK\_FREE ¶](#ATOMIC_BOOL_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L7)

```
ATOMIC_BOOL_LOCK_FREE :: true
```

### [ATOMIC\_CHAR16\_T\_LOCK\_FREE ¶](#ATOMIC_CHAR16_T_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L9)

```
ATOMIC_CHAR16_T_LOCK_FREE :: true
```

### [ATOMIC\_CHAR32\_T\_LOCK\_FREE ¶](#ATOMIC_CHAR32_T_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L10)

```
ATOMIC_CHAR32_T_LOCK_FREE :: true
```

### [ATOMIC\_CHAR\_LOCK\_FREE ¶](#ATOMIC_CHAR_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L8)

```
ATOMIC_CHAR_LOCK_FREE :: true
```

### [ATOMIC\_INT\_LOCK\_FREE ¶](#ATOMIC_INT_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L13)

```
ATOMIC_INT_LOCK_FREE :: true
```

### [ATOMIC\_LLONG\_LOCK\_FREE ¶](#ATOMIC_LLONG_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L15)

```
ATOMIC_LLONG_LOCK_FREE :: true
```

### [ATOMIC\_LONG\_LOCK\_FREE ¶](#ATOMIC_LONG_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L14)

```
ATOMIC_LONG_LOCK_FREE :: true
```

### [ATOMIC\_POINTER\_LOCK\_FREE ¶](#ATOMIC_POINTER_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L16)

```
ATOMIC_POINTER_LOCK_FREE :: true
```

### [ATOMIC\_SHORT\_LOCK\_FREE ¶](#ATOMIC_SHORT_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L12)

```
ATOMIC_SHORT_LOCK_FREE :: true
```

### [ATOMIC\_WCHAR\_T\_LOCK\_FREE ¶](#ATOMIC_WCHAR_T_LOCK_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L11)

```
ATOMIC_WCHAR_T_LOCK_FREE :: true
```

### [BUFSIZ ¶](#BUFSIZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L33)

```
BUFSIZ :: 512
```

### [CHAR\_BIT ¶](#CHAR_BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L92)

```
CHAR_BIT :: 8
```

### [CLOCKS\_PER\_SEC ¶](#CLOCKS_PER_SEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L32)

```
CLOCKS_PER_SEC :: 1000
```

### [EDOM ¶](#EDOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/errno.odin#L64)

```
EDOM :: 33
```

### [EILSEQ ¶](#EILSEQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/errno.odin#L65)

```
EILSEQ :: 42
```

### [EOF ¶](#EOF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L35)

```
EOF: i32 : int(-1)
```

### [ERANGE ¶](#ERANGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/errno.odin#L66)

```
ERANGE :: 34
```

### [EXIT\_FAILURE ¶](#EXIT_FAILURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L94)

```
EXIT_FAILURE :: 1
```

### [EXIT\_SUCCESS ¶](#EXIT_SUCCESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L93)

```
EXIT_SUCCESS :: 0
```

 

C does not declare what these values should be, as an implementation is free
to use any two distinct values it wants to indicate success or failure.
However, nobody actually does and everyone appears to have agreed upon these
values.

### [FILENAME\_MAX ¶](#FILENAME_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L39)

```
FILENAME_MAX :: 260
```

### [FOPEN\_MAX ¶](#FOPEN_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L37)

```
FOPEN_MAX :: 20
```

### [FP\_ILOGB0 ¶](#FP_ILOGB0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L173)

```
FP_ILOGB0: i32 : FP_ILOGBNAN
```

### [FP\_ILOGBNAN ¶](#FP_ILOGBNAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L172)

```
FP_ILOGBNAN: i32 : -1 - int((~uint(0)) >> 1)
```

### [FP\_INFINITE ¶](#FP_INFINITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L179)

```
FP_INFINITE :: 1
```

### [FP\_NAN ¶](#FP_NAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L178)

```
FP_NAN :: 0
```

 

Number classification constants. These do not have to match libc since we
implement our own classification functions as libc requires they be macros,
which means libc does not export standard functions for them.

### [FP\_NORMAL ¶](#FP_NORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L181)

```
FP_NORMAL :: 3
```

### [FP\_SUBNORMAL ¶](#FP_SUBNORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L182)

```
FP_SUBNORMAL :: 4
```

### [FP\_ZERO ¶](#FP_ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L180)

```
FP_ZERO :: 2
```

### [HUGE\_VAL ¶](#HUGE_VAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L165)

```
HUGE_VAL: f64 : double(INFINITY)
```

### [HUGE\_VALF ¶](#HUGE_VALF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L164)

```
HUGE_VALF :: INFINITY
```

### [INFINITY ¶](#INFINITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L162)

```
INFINITY :: 0h7ff00000_00000000
```

### [INT16\_MAX ¶](#INT16_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L66)

```
INT16_MAX: i32 : c.INT16_MAX
```

### [INT16\_MIN ¶](#INT16_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L76)

```
INT16_MIN: i32 : c.INT16_MIN
```

### [INT32\_MAX ¶](#INT32_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L67)

```
INT32_MAX: i32 : c.INT32_MAX
```

### [INT32\_MIN ¶](#INT32_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L77)

```
INT32_MIN: i32 : c.INT32_MIN
```

### [INT64\_MAX ¶](#INT64_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L68)

```
INT64_MAX: i64 : c.INT64_MAX
```

### [INT64\_MIN ¶](#INT64_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L78)

```
INT64_MIN: i64 : c.INT64_MIN
```

### [INT8\_MAX ¶](#INT8_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L65)

```
INT8_MAX: i32 : c.INT8_MAX
```

 

Copy C's rules for type promotion here by forcing the type on the literals.

### [INT8\_MIN ¶](#INT8_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L75)

```
INT8_MIN: i32 : c.INT8_MIN
```

### [LC\_ALL ¶](#LC_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L115)

```
LC_ALL :: 0
```

### [LC\_COLLATE ¶](#LC_COLLATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L116)

```
LC_COLLATE :: 1
```

### [LC\_CTYPE ¶](#LC_CTYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L117)

```
LC_CTYPE :: 2
```

### [LC\_MESSAGES ¶](#LC_MESSAGES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L118)

```
LC_MESSAGES :: 6
```

### [LC\_MONETARY ¶](#LC_MONETARY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L119)

```
LC_MONETARY :: 3
```

### [LC\_NUMERIC ¶](#LC_NUMERIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L120)

```
LC_NUMERIC :: 4
```

### [LC\_TIME ¶](#LC_TIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L121)

```
LC_TIME :: 5
```

### [L\_tmpnam ¶](#L_tmpnam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L41)

```
L_tmpnam :: 15
```

 

"\\" + 12 + NUL

### [MATH\_ERREXCEPT ¶](#MATH_ERREXCEPT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L168)

```
MATH_ERREXCEPT :: 2
```

### [MATH\_ERRNO ¶](#MATH_ERRNO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L167)

```
MATH_ERRNO :: 1
```

### [NDEBUG ¶](#NDEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L90)

```
NDEBUG :: !ODIN_DEBUG
```

### [NULL ¶](#NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L88)

```
NULL :: rawptr(uintptr(0))
```

### [PTRDIFF\_MAX ¶](#PTRDIFF_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L83)

```
PTRDIFF_MAX: c.ptrdiff_t : c.PTRDIFF_MAX
```

### [PTRDIFF\_MIN ¶](#PTRDIFF_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L82)

```
PTRDIFF_MIN: c.ptrdiff_t : c.PTRDIFF_MIN
```

### [RAND\_MAX ¶](#RAND_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L17)

```
RAND_MAX :: 0x7fff
```

### [SEEK\_CUR ¶](#SEEK_CUR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L44)

```
SEEK_CUR :: 1
```

### [SEEK\_END ¶](#SEEK_END) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L45)

```
SEEK_END :: 2
```

### [SEEK\_SET ¶](#SEEK_SET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L43)

```
SEEK_SET :: 0
```

### [SIGABRT ¶](#SIGABRT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L29)

```
SIGABRT :: 22
```

### [SIGFPE ¶](#SIGFPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L30)

```
SIGFPE :: 8
```

### [SIGILL ¶](#SIGILL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L31)

```
SIGILL :: 4
```

### [SIGINT ¶](#SIGINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L32)

```
SIGINT :: 2
```

### [SIGSEGV ¶](#SIGSEGV) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L33)

```
SIGSEGV :: 11
```

### [SIGTERM ¶](#SIGTERM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L34)

```
SIGTERM :: 15
```

### [SIG\_ATOMIC\_MAX ¶](#SIG_ATOMIC_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L16)

```
SIG_ATOMIC_MAX: sig_atomic_t : max(sig_atomic_t)
```

### [SIG\_ATOMIC\_MIN ¶](#SIG_ATOMIC_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L15)

```
SIG_ATOMIC_MIN: sig_atomic_t : min(sig_atomic_t)
```

### [SIG\_DFL ¶](#SIG_DFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L26)

```
SIG_DFL :: rawptr(uintptr(0))
```

### [SIG\_ERR ¶](#SIG_ERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L25)

```
SIG_ERR :: rawptr(~uintptr(0))
```

### [SIG\_IGN ¶](#SIG_IGN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L27)

```
SIG_IGN :: rawptr(uintptr(1))
```

### [SIZE\_MAX ¶](#SIZE_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L80)

```
SIZE_MAX: uint : c.SIZE_MAX
```

### [TIME\_UTC ¶](#TIME_UTC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L33)

```
TIME_UTC :: 1
```

### [TMP\_MAX ¶](#TMP_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L47)

```
TMP_MAX :: 32767
```

 

SHRT\_MAX

### [TSS\_DTOR\_ITERATIONS ¶](#TSS_DTOR_ITERATIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L24)

```
TSS_DTOR_ITERATIONS :: 4
```

 

\_TSS\_DTOR\_ITERATIONS\_IMP

### [UINT16\_MAX ¶](#UINT16_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L71)

```
UINT16_MAX: i32 : c.UINT16_MAX
```

### [UINT32\_MAX ¶](#UINT32_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L72)

```
UINT32_MAX: u32 : c.UINT32_MAX
```

### [UINT64\_MAX ¶](#UINT64_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L73)

```
UINT64_MAX: u64 : c.UINT64_MAX
```

### [UINT8\_MAX ¶](#UINT8_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L70)

```
UINT8_MAX: i32 : c.UINT8_MAX
```

### [WCHAR\_MAX ¶](#WCHAR_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L86)

```
WCHAR_MAX: u16 : c.WCHAR_MAX
```

### [WCHAR\_MIN ¶](#WCHAR_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin#L85)

```
WCHAR_MIN: u16 : c.WCHAR_MIN
```

### [WEOF ¶](#WEOF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L110)

```
WEOF: wint_t : ~wint_t(0)
```

### [WINT\_MAX ¶](#WINT_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L109)

```
WINT_MAX :: 1 << (size_of(wint_t) * 8)
```

### [WINT\_MIN ¶](#WINT_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L108)

```
WINT_MIN :: 0
```

 

Calculate these values correctly regardless of what type wchar\_t actually is.

### [math\_errhandling ¶](#math_errhandling) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L170)

```
math_errhandling :: 2
```

 

Windows, Linux, macOS all use this mode.

### [memory\_order\_acq\_rel ¶](#memory_order_acq_rel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L32)

```
memory_order_acq_rel :: memory_order.acq_rel
```

### [memory\_order\_acquire ¶](#memory_order_acquire) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L30)

```
memory_order_acquire :: memory_order.acquire
```

### [memory\_order\_consume ¶](#memory_order_consume) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L29)

```
memory_order_consume :: memory_order.consume
```

### [memory\_order\_relaxed ¶](#memory_order_relaxed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L28)

```
memory_order_relaxed :: memory_order.relaxed
```

### [memory\_order\_release ¶](#memory_order_release) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L31)

```
memory_order_release :: memory_order.release
```

### [memory\_order\_seq\_cst ¶](#memory_order_seq_cst) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L33)

```
memory_order_seq_cst :: memory_order.seq_cst
```

### [mtx\_plain ¶](#mtx_plain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L20)

```
mtx_plain :: 1
```

 

\_Mtx\_plain

### [mtx\_recursive ¶](#mtx_recursive) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L21)

```
mtx_recursive :: 0x100
```

 

\_Mtx\_recursive

### [mtx\_timed ¶](#mtx_timed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L22)

```
mtx_timed :: 4
```

 

\_Mtx\_timed

### [thrd\_busy ¶](#thrd_busy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L17)

```
thrd_busy :: 3
```

 

\_Thrd\_busy

### [thrd\_error ¶](#thrd_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L18)

```
thrd_error :: 4
```

 

\_Thrd\_error

### [thrd\_nomem ¶](#thrd_nomem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L15)

```
thrd_nomem :: 1
```

 

\_Thrd\_nomem

### [thrd\_success ¶](#thrd_success) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L14)

```
thrd_success :: 0
```

 

\_Thrd\_success

### [thrd\_timedout ¶](#thrd_timedout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L16)

```
thrd_timedout :: 2
```

 

\_Thrd\_timedout

## Variables

### [NAN ¶](#NAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L161)

```
NAN: f64 = …
```

### [stderr ¶](#stderr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L59)

```
stderr: ^c.FILE = …
```

### [stdin ¶](#stdin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L57)

```
stdin: ^c.FILE = …
```

### [stdout ¶](#stdout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L58)

```
stdout: ^c.FILE = …
```

## Procedures

### [ATOMIC\_VAR\_INIT ¶](#ATOMIC_VAR_INIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L36)

```
ATOMIC_VAR_INIT :: proc(value: $T) -> $$deferred_return {…}
```

 

7.17.2 Initialization

### [CMPLX ¶](#CMPLX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L78)

```
CMPLX :: proc(x, y: f64) -> complex_double {…}
```

### [CMPLXF ¶](#CMPLXF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L82)

```
CMPLXF :: proc(x, y: f32) -> complex_float {…}
```

### [MB\_CUR\_MAX ¶](#MB_CUR_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L25)

```
MB_CUR_MAX :: proc() -> uint {…}
```

### [abort ¶](#abort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L128)

```
abort :: proc "c" () ---
```

 

7.22.4 Communication with the environment

### [abs ¶](#abs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L142)

```
abs :: proc "c" (j: i32) -> i32 ---
```

 

7.22.6 Integer arithmetic functions

### [aligned\_alloc ¶](#aligned_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L160)

```
aligned_alloc :: proc "c" (alignment, size: uint) -> rawptr {…}
```

### [aligned\_free ¶](#aligned_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L179)

```
aligned_free :: proc "c" (ptr: rawptr) {…}
```

### [asctime ¶](#asctime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L25)

```
asctime :: proc "c" (timeptr: ^tm) -> [^]u8 ---
```

 

7.27.3 Time conversion functions

### [at\_quick\_exit ¶](#at_quick_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L130)

```
at_quick_exit :: proc "c" (func: proc "c" ()) -> i32 ---
```

### [atexit ¶](#atexit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L129)

```
atexit :: proc "c" (func: proc "c" ()) -> i32 ---
```

### [atof ¶](#atof) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L106)

```
atof :: proc "c" (nptr: cstring) -> f64 ---
```

 

7.22.1 Numeric conversion functions

### [atoi ¶](#atoi) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L107)

```
atoi :: proc "c" (nptr: cstring) -> i32 ---
```

### [atol ¶](#atol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L108)

```
atol :: proc "c" (nptr: cstring) -> i32 ---
```

### [atoll ¶](#atoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L109)

```
atoll :: proc "c" (nptr: cstring) -> i64 ---
```

### [atomic\_compare\_exchange\_strong ¶](#atomic_compare_exchange_strong) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L180)

```
atomic_compare_exchange_strong :: proc(object, expected: ^$T, desired: $T) -> bool {…}
```

 

C does not allow failure memory order to be order\_release or acq\_rel.
Similarly, it does not allow the failure order to be stronger than success
order. Since consume and acquire are both monotonic, we can count them as
one, for a total of three memory orders that are relevant in compare exchange.

```
relaxed, acquire (consume), seq_cst.
```

The requirement that the failure order cannot be stronger than success limits
the valid combinations for the failure order to this table:

```
[success = seq_cst, failure = seq_cst] => _
[success = acquire, failure = seq_cst] => acq
[success = release, failure = seq_cst] => rel
[success = acq_rel, failure = seq_cst] => acqrel
[success = relaxed, failure = relaxed] => relaxed
[success = seq_cst, failure = relaxed] => failrelaxed
[success = seq_cst, failure = acquire] => failacq
[success = acquire, failure = relaxed] => acq_failrelaxed
[success = acq_rel, failure = relaxed] => acqrel_failrelaxed
```

### [atomic\_compare\_exchange\_strong\_explicit ¶](#atomic_compare_exchange_strong_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L186)

```
atomic_compare_exchange_strong_explicit :: proc(object, expected: ^$T, desired: $T, success, failure: memory_order) -> bool {…}
```

### [atomic\_compare\_exchange\_weak ¶](#atomic_compare_exchange_weak) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L232)

```
atomic_compare_exchange_weak :: proc(object, expected: ^$T, desired: $T) -> bool {…}
```

### [atomic\_compare\_exchange\_weak\_explicit ¶](#atomic_compare_exchange_weak_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L238)

```
atomic_compare_exchange_weak_explicit :: proc(object, expected: ^$T, desired: $T, success, failure: memory_order) -> bool {…}
```

### [atomic\_exchange ¶](#atomic_exchange) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L148)

```
atomic_exchange :: proc(object: ^$T, desired: $T) -> $$deferred_return {…}
```

### [atomic\_exchange\_explicit ¶](#atomic_exchange_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L152)

```
atomic_exchange_explicit :: proc(object: ^$T, desired: $T, order: memory_order) -> $$deferred_return {…}
```

### [atomic\_fetch\_add ¶](#atomic_fetch_add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L285)

```
atomic_fetch_add :: proc(object: ^$T, operand: $T) -> $$deferred_return {…}
```

 

7.17.7.5 The atomic\_fetch and modify generic functions

### [atomic\_fetch\_add\_explicit ¶](#atomic_fetch_add_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L289)

```
atomic_fetch_add_explicit :: proc(object: ^$T, operand: $T, order: memory_order) -> $$deferred_return {…}
```

### [atomic\_fetch\_and ¶](#atomic_fetch_and) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L349)

```
atomic_fetch_and :: proc(object: ^$T, operand: $T) -> $$deferred_return {…}
```

### [atomic\_fetch\_and\_explicit ¶](#atomic_fetch_and_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L352)

```
atomic_fetch_and_explicit :: proc(object: ^$T, operand: $T, order: memory_order) -> $$deferred_return {…}
```

### [atomic\_fetch\_or ¶](#atomic_fetch_or) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L317)

```
atomic_fetch_or :: proc(object: ^$T, operand: $T) -> $$deferred_return {…}
```

### [atomic\_fetch\_or\_explicit ¶](#atomic_fetch_or_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L321)

```
atomic_fetch_or_explicit :: proc(object: ^$T, operand: $T, order: memory_order) -> $$deferred_return {…}
```

### [atomic\_fetch\_sub ¶](#atomic_fetch_sub) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L301)

```
atomic_fetch_sub :: proc(object: ^$T, operand: $T) -> $$deferred_return {…}
```

### [atomic\_fetch\_sub\_explicit ¶](#atomic_fetch_sub_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L305)

```
atomic_fetch_sub_explicit :: proc(object: ^$T, operand: $T, order: memory_order) -> $$deferred_return {…}
```

### [atomic\_fetch\_xor ¶](#atomic_fetch_xor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L333)

```
atomic_fetch_xor :: proc(object: ^$T, operand: $T) -> $$deferred_return {…}
```

### [atomic\_fetch\_xor\_explicit ¶](#atomic_fetch_xor_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L337)

```
atomic_fetch_xor_explicit :: proc(object: ^$T, operand: $T, order: memory_order) -> $$deferred_return {…}
```

### [atomic\_flag\_clear ¶](#atomic_flag_clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L375)

```
atomic_flag_clear :: proc(flag: ^atomic_flag) {…}
```

### [atomic\_flag\_clear\_explicit ¶](#atomic_flag_clear_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L379)

```
atomic_flag_clear_explicit :: proc(flag: ^atomic_flag, order: memory_order) {…}
```

### [atomic\_flag\_test\_and\_set ¶](#atomic_flag_test_and_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L367)

```
atomic_flag_test_and_set :: proc(flag: ^atomic_flag) -> bool {…}
```

### [atomic\_flag\_test\_and\_set\_explicit ¶](#atomic_flag_test_and_set_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L371)

```
atomic_flag_test_and_set_explicit :: proc(flag: ^atomic_flag, order: memory_order) -> bool {…}
```

### [atomic\_init ¶](#atomic_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L40)

```
atomic_init :: proc(obj: ^$T, value: $T) {…}
```

### [atomic\_is\_lock\_free ¶](#atomic_is_lock_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L72)

```
atomic_is_lock_free :: proc(obj: ^$T) -> bool {…}
```

 

7.17.5 Lock-free property

### [atomic\_load ¶](#atomic_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L132)

```
atomic_load :: proc(object: ^$T) -> $$deferred_return {…}
```

### [atomic\_load\_explicit ¶](#atomic_load_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L136)

```
atomic_load_explicit :: proc(object: ^$T, order: memory_order) {…}
```

### [atomic\_signal\_fence ¶](#atomic_signal_fence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L60)

```
atomic_signal_fence :: proc(order: memory_order) {…}
```

### [atomic\_store ¶](#atomic_store) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L116)

```
atomic_store :: proc(object: ^$T, desired: $T) {…}
```

 

7.17.7 Operations on atomic types

### [atomic\_store\_explicit ¶](#atomic_store_explicit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L120)

```
atomic_store_explicit :: proc(object: ^$T, desired: $T, order: memory_order) {…}
```

### [atomic\_thread\_fence ¶](#atomic_thread_fence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L49)

```
atomic_thread_fence :: proc(order: memory_order) {…}
```

 

7.17.4 Fences

### [bsearch ¶](#bsearch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L138)

```
bsearch :: proc "c" (key, base: rawptr, nmemb, size: uint, compar: proc "c" (lhs, rhs: rawptr) -> i32) -> rawptr ---
```

 

7.22.5 Searching and sorting utilities

### [btowc ¶](#btowc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L84)

```
btowc :: proc "c" (c: i32) -> wint_t ---
```

 

7.29.6.1 Single-byte/wide character conversion functions

### [c16rtomb ¶](#c16rtomb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/uchar.odin#L17)

```
c16rtomb :: proc "c" (s: ^u8, c16: u16, ps: ^mbstate_t) -> uint ---
```

### [c32rtomb ¶](#c32rtomb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/uchar.odin#L19)

```
c32rtomb :: proc "c" (s: ^u8, c32: u32, ps: ^mbstate_t) -> uint ---
```

### [cabs ¶](#cabs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L50)

```
cabs :: proc "c" (z: complex_double) -> f64 ---
```

 

7.3.8 Power and absolute-value functions




##### Related Procedure Groups

* [fabs](/core/c/libc/#fabs)

### [cabsf ¶](#cabsf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L51)

```
cabsf :: proc "c" (z: complex_float) -> f32 ---
```

##### Related Procedure Groups

* [fabs](/core/c/libc/#fabs)

### [cacos ¶](#cacos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L16)

```
cacos :: proc "c" (z: complex_double) -> complex_double ---
```

 

7.3.5 Trigonometric functions




##### Related Procedure Groups

* [acos](/core/c/libc/#acos)

### [cacosf ¶](#cacosf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L17)

```
cacosf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [acos](/core/c/libc/#acos)

### [cacosh ¶](#cacosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L30)

```
cacosh :: proc "c" (z: complex_double) -> complex_double ---
```

 

7.3.6 Hyperbolic functions




##### Related Procedure Groups

* [acosh](/core/c/libc/#acosh)

### [cacoshf ¶](#cacoshf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L31)

```
cacoshf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [acosh](/core/c/libc/#acosh)

### [call\_once ¶](#call_once) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L41)

```
call_once :: proc "c" (flag: ^once_flag, func: proc "c" ()) ---
```

 

7.26.2 Initialization functions

### [calloc ¶](#calloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L122)

```
calloc :: proc "c" (nmemb, size: uint) -> rawptr ---
```

 

7.22.3 Memory management functions

### [carg ¶](#carg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L58)

```
carg :: proc "c" (z: complex_double) -> f64 ---
```

 

7.3.9 Manipulation functions

### [cargf ¶](#cargf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L59)

```
cargf :: proc "c" (z: complex_float) -> f32 ---
```

### [casin ¶](#casin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L18)

```
casin :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [asin](/core/c/libc/#asin)

### [casinf ¶](#casinf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L19)

```
casinf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [asin](/core/c/libc/#asin)

### [casinh ¶](#casinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L32)

```
casinh :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [asinh](/core/c/libc/#asinh)

### [casinhf ¶](#casinhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L33)

```
casinhf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [asinh](/core/c/libc/#asinh)

### [catan ¶](#catan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L20)

```
catan :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [atan](/core/c/libc/#atan)

### [catanf ¶](#catanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L21)

```
catanf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [atan](/core/c/libc/#atan)

### [catanh ¶](#catanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L34)

```
catanh :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [atanh](/core/c/libc/#atanh)

### [catanhf ¶](#catanhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L35)

```
catanhf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [atanh](/core/c/libc/#atanh)

### [ccos ¶](#ccos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L22)

```
ccos :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [cos](/core/c/libc/#cos)

### [ccosf ¶](#ccosf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L23)

```
ccosf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [cos](/core/c/libc/#cos)

### [ccosh ¶](#ccosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L36)

```
ccosh :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [cosh](/core/c/libc/#cosh)

### [ccoshf ¶](#ccoshf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L37)

```
ccoshf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [cosh](/core/c/libc/#cosh)

### [cexp ¶](#cexp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L44)

```
cexp :: proc "c" (z: complex_double) -> complex_double ---
```

 

7.3.7 Exponential and logarithmic functions




##### Related Procedure Groups

* [exp](/core/c/libc/#exp)

### [cexpf ¶](#cexpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L45)

```
cexpf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [exp](/core/c/libc/#exp)

### [cimag ¶](#cimag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L60)

```
cimag :: proc "c" (z: complex_double) -> f64 ---
```

### [cimagf ¶](#cimagf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L61)

```
cimagf :: proc "c" (z: complex_float) -> f32 ---
```

### [clearerr ¶](#clearerr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L298)

```
clearerr :: proc "c" (stream: ^c.FILE) ---
```

 

7.21.10 Error-handling functions

### [clock ¶](#clock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L18)

```
clock :: proc "c" () -> clock_t ---
```

 

7.27.2 Time manipulation functions

### [clog ¶](#clog) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L46)

```
clog :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [log](/core/c/libc/#log)

### [clogf ¶](#clogf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L47)

```
clogf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [log](/core/c/libc/#log)

### [cnd\_broadcast ¶](#cnd_broadcast) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L43)

```
cnd_broadcast :: proc "c" (cond: ^cnd_t) -> i32 ---
```

 

7.26.3 Condition variable functions

### [cnd\_destroy ¶](#cnd_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L44)

```
cnd_destroy :: proc "c" (cond: ^cnd_t) ---
```

### [cnd\_init ¶](#cnd_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L45)

```
cnd_init :: proc "c" (cond: ^cnd_t) -> i32 ---
```

### [cnd\_signal ¶](#cnd_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L46)

```
cnd_signal :: proc "c" (cond: ^cnd_t) -> i32 ---
```

### [cnd\_timedwait ¶](#cnd_timedwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L47)

```
cnd_timedwait :: proc "c" (cond: ^cnd_t, mtx: ^mtx_t, ts: ^timespec) -> i32 ---
```

### [cnd\_wait ¶](#cnd_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L48)

```
cnd_wait :: proc "c" (cond: ^cnd_t, mtx: ^mtx_t) -> i32 ---
```

### [conj ¶](#conj) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L62)

```
conj :: proc "c" (z: complex_double) -> complex_double ---
```

### [conjf ¶](#conjf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L63)

```
conjf :: proc "c" (z: complex_float) -> complex_float ---
```

### [cpow ¶](#cpow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L52)

```
cpow :: proc "c" (x, y: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [pow](/core/c/libc/#pow)

### [cpowf ¶](#cpowf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L53)

```
cpowf :: proc "c" (x, y: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [pow](/core/c/libc/#pow)

### [cproj ¶](#cproj) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L64)

```
cproj :: proc "c" (z: complex_double) -> complex_double ---
```

### [cprojf ¶](#cprojf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L65)

```
cprojf :: proc "c" (z: complex_float) -> complex_float ---
```

### [creal ¶](#creal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L66)

```
creal :: proc "c" (z: complex_double) -> f64 ---
```

### [crealf ¶](#crealf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L67)

```
crealf :: proc "c" (z: complex_float) -> f32 ---
```

### [csin ¶](#csin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L24)

```
csin :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [sin](/core/c/libc/#sin)

### [csinf ¶](#csinf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L25)

```
csinf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [sin](/core/c/libc/#sin)

### [csinh ¶](#csinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L38)

```
csinh :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [sinh](/core/c/libc/#sinh)

### [csinhf ¶](#csinhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L39)

```
csinhf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [sinh](/core/c/libc/#sinh)

### [csqrt ¶](#csqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L54)

```
csqrt :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [sqrt](/core/c/libc/#sqrt)

### [csqrtf ¶](#csqrtf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L55)

```
csqrtf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [sqrt](/core/c/libc/#sqrt)

### [ctan ¶](#ctan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L26)

```
ctan :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [tan](/core/c/libc/#tan)

### [ctanf ¶](#ctanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L27)

```
ctanf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [tan](/core/c/libc/#tan)

### [ctanh ¶](#ctanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L40)

```
ctanh :: proc "c" (z: complex_double) -> complex_double ---
```

##### Related Procedure Groups

* [tanh](/core/c/libc/#tanh)

### [ctanhf ¶](#ctanhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin#L41)

```
ctanhf :: proc "c" (z: complex_float) -> complex_float ---
```

##### Related Procedure Groups

* [tanh](/core/c/libc/#tanh)

### [ctime ¶](#ctime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L26)

```
ctime :: proc "c" (timer: ^time_t) -> [^]u8 ---
```

### [difftime ¶](#difftime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L19)

```
difftime :: proc "c" (time1, time2: time_t) -> f64 ---
```

### [div ¶](#div) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L145)

```
div :: proc "c" (numer, denom: i32) -> div_t ---
```

### [errno ¶](#errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/errno.odin#L114)

```
errno :: proc "contextless" () -> ^i32 {…}
```

 

Odin has no way to make an identifier "errno" behave as a function call to
read the value, or to produce an lvalue such that you can assign a different
error value to errno. To work around this, just expose it as a function like
it actually is.

### [exit ¶](#exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L131)

```
exit :: proc "c" (status: i32) -> ! ---
```

### [fclose ¶](#fclose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L253)

```
fclose :: proc "c" (stream: ^c.FILE) -> i32 ---
```

 

7.21.5 File access functions

### [feof ¶](#feof) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L299)

```
feof :: proc "c" (stream: ^c.FILE) -> i32 ---
```

### [ferror ¶](#ferror) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L300)

```
ferror :: proc "c" (stream: ^c.FILE) -> i32 ---
```

### [fflush ¶](#fflush) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L254)

```
fflush :: proc "c" (stream: ^c.FILE) -> i32 ---
```

### [fgetc ¶](#fgetc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L276)

```
fgetc :: proc "c" (stream: ^c.FILE) -> i32 ---
```

 

7.21.7 Character input/output functions

### [fgetpos ¶](#fgetpos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L290)

```
fgetpos :: proc "c" (stream: ^c.FILE, pos: ^fpos_t) -> i32 ---
```

 

7.21.9 File positioning functions

### [fgets ¶](#fgets) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L277)

```
fgets :: proc "c" (s: [^]u8, n: i32, stream: ^c.FILE) -> [^]u8 ---
```

### [fgetws ¶](#fgetws) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L31)

```
fgetws :: proc "c" (s: [^]u16, n: i32, stream: ^c.FILE) -> u16 ---
```

### [fopen ¶](#fopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L255)

```
fopen :: proc "c" (filename, mode: cstring) -> ^c.FILE ---
```

### [fprintf ¶](#fprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L261)

```
fprintf :: proc "c" (stream: ^c.FILE, format: cstring, .. args: ..any) -> i32 ---
```

 

7.21.6 Formatted input/output functions

### [fputc ¶](#fputc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L278)

```
fputc :: proc "c" (s: i32, stream: ^c.FILE) -> i32 ---
```

### [fputwc ¶](#fputwc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L32)

```
fputwc :: proc "c" (c: u16, stream: ^c.FILE) -> wint_t ---
```

### [fputws ¶](#fputws) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L33)

```
fputws :: proc "c" (s: [^]u16, stream: ^c.FILE) -> i32 ---
```

### [fread ¶](#fread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L285)

```
fread :: proc "c" (ptr: rawptr, size: uint, nmemb: uint, stream: ^c.FILE) -> uint ---
```

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L123)

```
free :: proc "c" (ptr: rawptr) ---
```

### [freopen ¶](#freopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L256)

```
freopen :: proc "c" (filename, mode: cstring, stream: ^c.FILE) -> ^c.FILE ---
```

### [fscanf ¶](#fscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L262)

```
fscanf :: proc "c" (stream: ^c.FILE, format: cstring, .. args: ..any) -> i32 ---
```

### [fseek ¶](#fseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L291)

```
fseek :: proc "c" (stream: ^c.FILE, offset: i32, whence: Whence) -> i32 ---
```

### [fsetpos ¶](#fsetpos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L293)

```
fsetpos :: proc "c" (stream: ^c.FILE, pos: ^fpos_t) -> i32 ---
```

### [ftell ¶](#ftell) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L294)

```
ftell :: proc "c" (stream: ^c.FILE) -> i32 ---
```

### [fwgetc ¶](#fwgetc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L30)

```
fwgetc :: proc "c" (stream: ^c.FILE) -> wint_t ---
```

 

7.29.3 Wide character input/output functions

### [fwide ¶](#fwide) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L34)

```
fwide :: proc "c" (stream: ^c.FILE, mode: i32) -> i32 ---
```

### [fwprintf ¶](#fwprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L16)

```
fwprintf :: proc "c" (stream: ^c.FILE, format: [^]u16, .. arg: ..any) -> i32 ---
```

 

7.29.2 Formatted wide character input/output functions

### [fwrite ¶](#fwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L286)

```
fwrite :: proc "c" (ptr: rawptr, size: uint, nmemb: uint, stream: ^c.FILE) -> uint ---
```

### [fwscanf ¶](#fwscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L17)

```
fwscanf :: proc "c" (stream: ^c.FILE, format: [^]u16, .. arg: ..any) -> i32 ---
```

### [getc ¶](#getc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L279)

```
getc :: proc "c" (stream: ^c.FILE) -> i32 ---
```

### [getchar ¶](#getchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L280)

```
getchar :: proc "c" () -> i32 ---
```

### [getenv ¶](#getenv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L133)

```
getenv :: proc "c" (name: cstring) -> cstring ---
```

### [getwc ¶](#getwc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L35)

```
getwc :: proc "c" (stream: ^c.FILE) -> wint_t ---
```

### [getwchar ¶](#getwchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L36)

```
getwchar :: proc "c" () -> wint_t ---
```

### [gmtime ¶](#gmtime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L27)

```
gmtime :: proc "c" (timer: ^time_t) -> ^tm ---
```

### [isalnum ¶](#isalnum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L16)

```
isalnum :: proc "c" (c: i32) -> i32 ---
```

 

7.4.1 Character classification functions

### [isalpha ¶](#isalpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L17)

```
isalpha :: proc "c" (c: i32) -> i32 ---
```

### [isblank ¶](#isblank) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L18)

```
isblank :: proc "c" (c: i32) -> i32 ---
```

### [iscntrl ¶](#iscntrl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L19)

```
iscntrl :: proc "c" (c: i32) -> i32 ---
```

### [isdigit ¶](#isdigit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L20)

```
isdigit :: proc "c" (c: i32) -> i32 ---
```

### [isfinite ¶](#isfinite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L214)

```
isfinite :: proc(x: $T) -> bool {…}
```

### [isgraph ¶](#isgraph) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L21)

```
isgraph :: proc "c" (c: i32) -> i32 ---
```

### [isgreater ¶](#isgreater) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L234)

```
isgreater :: proc(x, y: $T) -> bool {…}
```

 

These are special in that they avoid float exceptions. They cannot just be
implemented as the relational comparisons, as that would produce an invalid
"sticky" state that propagates and affects maths results. These need
to be implemented natively in Odin assuming isunordered to prevent that.

### [isgreaterequal ¶](#isgreaterequal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L238)

```
isgreaterequal :: proc(x, y: $T) -> bool {…}
```

### [isinf ¶](#isinf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L218)

```
isinf :: proc(x: $T) -> bool {…}
```

### [isless ¶](#isless) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L242)

```
isless :: proc(x, y: $T) -> bool {…}
```

### [islessequal ¶](#islessequal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L246)

```
islessequal :: proc(x, y: $T) -> bool {…}
```

### [islessgreater ¶](#islessgreater) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L250)

```
islessgreater :: proc(x, y: $T) -> bool {…}
```

### [islower ¶](#islower) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L22)

```
islower :: proc "c" (c: i32) -> i32 ---
```

### [isnan ¶](#isnan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L222)

```
isnan :: proc(x: $T) -> bool {…}
```

### [isnormal ¶](#isnormal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L226)

```
isnormal :: proc(x: $T) -> bool {…}
```

### [isprint ¶](#isprint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L23)

```
isprint :: proc "c" (c: i32) -> i32 ---
```

### [ispunct ¶](#ispunct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L24)

```
ispunct :: proc "c" (c: i32) -> i32 ---
```

### [isspace ¶](#isspace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L25)

```
isspace :: proc "c" (c: i32) -> i32 ---
```

### [isunordered ¶](#isunordered) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L254)

```
isunordered :: proc(x, y: $T) -> bool {…}
```

### [isupper ¶](#isupper) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L26)

```
isupper :: proc "c" (c: i32) -> i32 ---
```

### [iswalnum ¶](#iswalnum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L42)

```
iswalnum :: proc "c" (wc: wint_t) -> i32 ---
```

 

7.30.2.1 Wide character classification functions

### [iswalpha ¶](#iswalpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L43)

```
iswalpha :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswblank ¶](#iswblank) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L44)

```
iswblank :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswcntrl ¶](#iswcntrl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L45)

```
iswcntrl :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswctype ¶](#iswctype) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L56)

```
iswctype :: proc "c" (wc: wint_t, desc: wctype_t) -> i32 ---
```

 

7.30.2.2 Extensible wide character classification functions

### [iswdigit ¶](#iswdigit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L46)

```
iswdigit :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswgraph ¶](#iswgraph) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L47)

```
iswgraph :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswlower ¶](#iswlower) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L48)

```
iswlower :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswprint ¶](#iswprint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L49)

```
iswprint :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswpunct ¶](#iswpunct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L50)

```
iswpunct :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswspace ¶](#iswspace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L51)

```
iswspace :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswupper ¶](#iswupper) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L52)

```
iswupper :: proc "c" (wc: wint_t) -> i32 ---
```

### [iswxdigit ¶](#iswxdigit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L53)

```
iswxdigit :: proc "c" (wc: wint_t) -> i32 ---
```

### [isxdigit ¶](#isxdigit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L27)

```
isxdigit :: proc "c" (c: i32) -> i32 ---
```

### [kill\_dependency ¶](#kill_dependency) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin#L44)

```
kill_dependency :: proc(value: $T) -> $$deferred_return {…}
```

### [labs ¶](#labs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L143)

```
labs :: proc "c" (j: i32) -> i32 ---
```

### [ldiv ¶](#ldiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L146)

```
ldiv :: proc "c" (numer, denom: i32) -> ldiv_t ---
```

### [llabs ¶](#llabs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L144)

```
llabs :: proc "c" (j: i64) -> i64 ---
```

### [lldiv ¶](#lldiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L147)

```
lldiv :: proc "c" (numer, denom: i64) -> lldiv_t ---
```

### [localeconv ¶](#localeconv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L25)

```
localeconv :: proc "c" () -> ^lconv ---
```

 

Sets the components of an object with the type lconv with the values appropriate for the
formatting of numeric quantities (monetary and otherwise) according to the rules of the current
locale.

**Returns:**  
a pointer to the lconv structure, might be invalidated by subsequent calls to localeconv() and setlocale()

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/localeconv.html)

### [localtime ¶](#localtime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L28)

```
localtime :: proc "c" (timer: ^time_t) -> ^tm ---
```

### [longjmp ¶](#longjmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/setjmp.odin#L50)

```
longjmp :: proc "c" (env: ^jmp_buf, val: i32) -> ! ---
```

 

7.13.2 Restore calling environment

### [malloc ¶](#malloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L124)

```
malloc :: proc "c" (size: uint) -> rawptr ---
```

### [mblen ¶](#mblen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L150)

```
mblen :: proc "c" (s: cstring, n: uint) -> i32 ---
```

 

7.22.7 Multibyte/wide character conversion functions

### [mbrlen ¶](#mbrlen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L91)

```
mbrlen :: proc "c" (s: cstring, n: uint, ps: ^mbstate_t) -> uint ---
```

 

7.29.6.3 Restartable multibyte/wide character conversion functions

### [mbrtoc16 ¶](#mbrtoc16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/uchar.odin#L16)

```
mbrtoc16 :: proc "c" (pc16: [^]u16, s: cstring, n: uint, ps: ^mbstate_t) -> uint ---
```

 

7.28.1 Restartable multibyte/wide character conversion functions

### [mbrtoc32 ¶](#mbrtoc32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/uchar.odin#L18)

```
mbrtoc32 :: proc "c" (pc32: [^]u32, s: cstring, n: uint, ps: ^mbstate_t) -> uint ---
```

### [mbrtowc ¶](#mbrtowc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L92)

```
mbrtowc :: proc "c" (pwc: [^]u16, s: cstring, n: uint, ps: ^mbstate_t) -> uint ---
```

### [mbsinit ¶](#mbsinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L88)

```
mbsinit :: proc "c" (ps: ^mbstate_t) -> i32 ---
```

 

7.29.6.2 Conversion state functions

### [mbsrtowcs ¶](#mbsrtowcs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L96)

```
mbsrtowcs :: proc "c" (dst: [^]u16, src: ^cstring, len: uint, ps: ^mbstate_t) -> uint ---
```

 

7.29.6.4 Restartable multibyte/wide string conversion functions

### [mbstowcs ¶](#mbstowcs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L155)

```
mbstowcs :: proc "c" (pwcs: ^u16, s: cstring, n: uint) -> uint ---
```

 

7.22.8 Multibyte/wide string conversion functions

### [mbtowc ¶](#mbtowc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L151)

```
mbtowc :: proc "c" (pwc: ^u16, s: cstring, n: uint) -> i32 ---
```

### [memchr ¶](#memchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L35)

```
memchr :: proc "c" (s: rawptr, c: i32, n: uint) -> rawptr ---
```

 

7.24.5 Search functions

### [memcmp ¶](#memcmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L28)

```
memcmp :: proc "c" (s1, s2: rawptr, n: uint) -> i32 ---
```

 

7.24.4 Comparison functions

### [memcpy ¶](#memcpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L18)

```
memcpy :: proc "c" (s1, s2: rawptr, n: uint) -> rawptr ---
```

 

7.24.2 Copying functions

### [memmove ¶](#memmove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L19)

```
memmove :: proc "c" (s1, s2: rawptr, n: uint) -> rawptr ---
```

### [memset ¶](#memset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L47)

```
memset :: proc "c" (s: rawptr, c: i32, n: uint) -> rawptr {…}
```

### [mktime ¶](#mktime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L20)

```
mktime :: proc "c" (timeptr: ^tm) -> time_t ---
```

### [mtx\_destroy ¶](#mtx_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L51)

```
mtx_destroy :: proc "c" (mtx: ^mtx_t) ---
```

 

7.26.4 Mutex functions

### [mtx\_init ¶](#mtx_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L52)

```
mtx_init :: proc "c" (mtx: ^mtx_t, type: i32) -> i32 ---
```

### [mtx\_lock ¶](#mtx_lock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L53)

```
mtx_lock :: proc "c" (mtx: ^mtx_t) -> i32 ---
```

### [mtx\_timedlock ¶](#mtx_timedlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L54)

```
mtx_timedlock :: proc "c" (mtx: ^mtx_t, ts: ^timespec) -> i32 ---
```

### [mtx\_trylock ¶](#mtx_trylock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L55)

```
mtx_trylock :: proc "c" (mtx: ^mtx_t) -> i32 ---
```

### [mtx\_unlock ¶](#mtx_unlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L56)

```
mtx_unlock :: proc "c" (mtx: ^mtx_t) -> i32 ---
```

### [perror ¶](#perror) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L301)

```
perror :: proc "c" (s: cstring) ---
```

### [printf ¶](#printf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L263)

```
printf :: proc "c" (format: cstring, .. args: ..any) -> i32 ---
```

### [putc ¶](#putc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L281)

```
putc :: proc "c" (c: i32, stream: ^c.FILE) -> i32 ---
```

### [putchar ¶](#putchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L282)

```
putchar :: proc "c" (c: i32) -> i32 ---
```

### [puts ¶](#puts) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L283)

```
puts :: proc "c" (s: cstring) -> i32 ---
```

### [putwc ¶](#putwc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L37)

```
putwc :: proc "c" (c: u16, stream: ^c.FILE) -> wint_t ---
```

### [putwchar ¶](#putwchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L38)

```
putwchar :: proc "c" (c: u16) -> wint_t ---
```

### [qsort ¶](#qsort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L139)

```
qsort :: proc "c" (base: rawptr, nmemb, size: uint, compar: proc "c" (lhs, rhs: rawptr) -> i32) ---
```

### [quick\_exit ¶](#quick_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L134)

```
quick_exit :: proc "c" (status: i32) -> ! ---
```

### [raise ¶](#raise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L21)

```
raise :: proc "c" (sig: i32) -> i32 ---
```

### [rand ¶](#rand) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L118)

```
rand :: proc "c" () -> i32 ---
```

 

7.22.2 Pseudo-random sequence generation functions

### [realloc ¶](#realloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L125)

```
realloc :: proc "c" (ptr: rawptr, size: uint) -> rawptr ---
```

### [remove ¶](#remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L246)

```
remove :: proc "c" (filename: cstring) -> i32 ---
```

 

7.21.4 Operations on files

### [rename ¶](#rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L248)

```
rename :: proc "c" (old, new: cstring) -> i32 ---
```

### [rewind ¶](#rewind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L295)

```
rewind :: proc "c" (stream: ^c.FILE) ---
```

### [scanf ¶](#scanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L264)

```
scanf :: proc "c" (format: cstring, .. args: ..any) -> i32 ---
```

### [setbuf ¶](#setbuf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L257)

```
setbuf :: proc "c" (stream: ^c.FILE, buf: [^]u8) ---
```

### [setjmp ¶](#setjmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/setjmp.odin#L35)

```
setjmp :: proc "c" (env: ^jmp_buf, hack: rawptr = nil) -> i32 ---
```

 

7.13.1 Save calling environment

NOTE(dweiler): C11 requires setjmp be a macro, which means it won't
necessarily export a symbol named setjmp but rather \_setjmp in the case
of musl, glibc, BSD libc, and msvcrt.

/ NOTE(dweiler): UCRT has two implementations of longjmp. One that performs
stack unwinding and one that doesn't. The choice of which to use depends on a
flag which is set inside the jmp\_buf structure given to setjmp. The default
behavior is to unwind the stack. Within Odin, we cannot use the stack
unwinding version as the unwinding information isn't present. To opt-in to
the regular non-unwinding version we need a way to set this flag. Since the
location of the flag within the struct is not defined or part of the ABI and
can change between versions of UCRT, we must rely on setjmp to set it. It
turns out that setjmp receives this flag in the RDX register on Win64, this
just so happens to coincide with the second argument of a function in the
Win64 ABI. By giving our setjmp a second argument with the value of zero,
the RDX register will contain zero and correctly set the flag to disable
stack unwinding.

### [setlocale ¶](#setlocale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin#L36)

```
setlocale :: proc "c" (category: Locale_Category, locale: cstring) -> cstring ---
```

 

Selects the appropriate piece of the global locale, as specified by the category and locale arguments,
and can be used to change or query the entire global locale or portions thereof.

**Returns:**  
the current locale if `locale` is `nil`, the set locale otherwise

[More](https://pubs.opengroup.org/onlinepubs/9699919799/functions/setlocale.html)

### [setvbuf ¶](#setvbuf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L258)

```
setvbuf :: proc "c" (stream: ^c.FILE, buf: [^]u8, mode: i32, size: uint) -> i32 ---
```

### [signal ¶](#signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin#L20)

```
signal :: proc "c" (sig: i32, func: proc "c" (i32)) -> proc "c" (i32) ---
```

### [snprintf ¶](#snprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L265)

```
snprintf :: proc "c" (s: [^]u8, n: uint, format: cstring, .. args: ..any) -> i32 ---
```

### [srand ¶](#srand) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L119)

```
srand :: proc "c" (seed: u32) ---
```

### [sscanf ¶](#sscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L266)

```
sscanf :: proc "c" (s, format: cstring, .. args: ..any) -> i32 ---
```

### [strcat ¶](#strcat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L24)

```
strcat :: proc "c" (s1: [^]u8, s2: cstring) -> [^]u8 ---
```

 

7.24.3 Concatenation functions

### [strchr ¶](#strchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L36)

```
strchr :: proc "c" (s: cstring, c: i32) -> [^]u8 ---
```

### [strcmp ¶](#strcmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L29)

```
strcmp :: proc "c" (s1, s2: cstring) -> i32 ---
```

### [strcoll ¶](#strcoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L30)

```
strcoll :: proc "c" (s1, s2: cstring) -> i32 ---
```

### [strcpn ¶](#strcpn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L40)

```
strcpn :: proc "c" (s1, s2: cstring) -> [^]u8 ---
```

### [strcpy ¶](#strcpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L20)

```
strcpy :: proc "c" (s1: [^]u8, s2: cstring) -> [^]u8 ---
```

### [strcspn ¶](#strcspn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L37)

```
strcspn :: proc "c" (s1, s2: cstring) -> uint ---
```

### [strerror ¶](#strerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L44)

```
strerror :: proc "c" (errnum: i32) -> cstring ---
```

 

7.24.6 Miscellaneous functions

### [strftime ¶](#strftime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L29)

```
strftime :: proc "c" (s: [^]u8, maxsize: uint, format: cstring, timeptr: ^tm) -> uint ---
```

### [strlen ¶](#strlen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L45)

```
strlen :: proc "c" (s: cstring) -> uint ---
```

### [strncat ¶](#strncat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L25)

```
strncat :: proc "c" (s1: [^]u8, s2: cstring, n: uint) -> [^]u8 ---
```

### [strncmp ¶](#strncmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L31)

```
strncmp :: proc "c" (s1, s2: cstring, n: uint) -> i32 ---
```

### [strncpy ¶](#strncpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L21)

```
strncpy :: proc "c" (s1: [^]u8, s2: cstring, n: uint) -> [^]u8 ---
```

### [strpbrk ¶](#strpbrk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L38)

```
strpbrk :: proc "c" (s1, s2: cstring) -> [^]u8 ---
```

### [strrchr ¶](#strrchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L39)

```
strrchr :: proc "c" (s: [^]u8, c: i32) -> [^]u8 ---
```

### [strtod ¶](#strtod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L110)

```
strtod :: proc "c" (nptr: cstring, endptr: ^[^]u8) -> f64 ---
```

### [strtof ¶](#strtof) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L111)

```
strtof :: proc "c" (nptr: cstring, endptr: ^[^]u8) -> f32 ---
```

### [strtok ¶](#strtok) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L41)

```
strtok :: proc "c" (s1: [^]u8, s2: cstring) -> [^]u8 ---
```

### [strtol ¶](#strtol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L112)

```
strtol :: proc "c" (nptr: cstring, endptr: ^[^]u8, base: i32) -> i32 ---
```

### [strtoll ¶](#strtoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L113)

```
strtoll :: proc "c" (nptr: cstring, endptr: ^[^]u8, base: i32) -> i64 ---
```

### [strtoul ¶](#strtoul) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L114)

```
strtoul :: proc "c" (nptr: cstring, endptr: ^[^]u8, base: i32) -> u32 ---
```

### [strtoull ¶](#strtoull) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L115)

```
strtoull :: proc "c" (nptr: cstring, endptr: ^[^]u8, base: i32) -> u64 ---
```

### [strxfrm ¶](#strxfrm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin#L32)

```
strxfrm :: proc "c" (s1: [^]u8, s2: cstring, n: uint) -> uint ---
```

### [swprintf ¶](#swprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L18)

```
swprintf :: proc "c" (stream: ^c.FILE, n: uint, format: [^]u16, .. arg: ..any) -> i32 ---
```

### [swscanf ¶](#swscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L19)

```
swscanf :: proc "c" (s, format: [^]u16, .. arg: ..any) -> i32 ---
```

### [system ¶](#system) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L135)

```
system :: proc "c" (cmd: cstring) -> i32 ---
```

### [thrd\_create ¶](#thrd_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L59)

```
thrd_create :: proc "c" (thr: ^thrd_t, func: thrd_start_t, arg: rawptr) -> i32 ---
```

 

7.26.5 Thread functions

### [thrd\_current ¶](#thrd_current) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L60)

```
thrd_current :: proc "c" () -> thrd_t ---
```

### [thrd\_detach ¶](#thrd_detach) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L61)

```
thrd_detach :: proc "c" (thr: thrd_t) -> i32 ---
```

### [thrd\_equal ¶](#thrd_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L62)

```
thrd_equal :: proc "c" (lhs, rhs: thrd_t) -> i32 ---
```

### [thrd\_exit ¶](#thrd_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L63)

```
thrd_exit :: proc "c" (res: i32) -> ! ---
```

### [thrd\_join ¶](#thrd_join) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L64)

```
thrd_join :: proc "c" (thr: thrd_t, res: ^i32) -> i32 ---
```

### [thrd\_sleep ¶](#thrd_sleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L65)

```
thrd_sleep :: proc "c" (duration, remaining: ^timespec) -> i32 ---
```

### [thrd\_yield ¶](#thrd_yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L66)

```
thrd_yield :: proc "c" () ---
```

### [time ¶](#time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L21)

```
time :: proc "c" (timer: ^time_t) -> time_t ---
```

### [timespec\_get ¶](#timespec_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin#L22)

```
timespec_get :: proc "c" (ts: ^timespec, base: i32) -> i32 ---
```

### [tmpfile ¶](#tmpfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L249)

```
tmpfile :: proc "c" () -> ^c.FILE ---
```

### [tmpnam ¶](#tmpnam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L250)

```
tmpnam :: proc "c" (s: [^]u8) -> [^]u8 ---
```

### [to\_stream ¶](#to_stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L304)

```
to_stream :: proc(file: ^c.FILE) -> io.Stream {…}
```

### [tolower ¶](#tolower) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L30)

```
tolower :: proc "c" (c: i32) -> i32 ---
```

 

7.4.2 Character case mapping functions

### [toupper ¶](#toupper) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin#L31)

```
toupper :: proc "c" (c: i32) -> i32 ---
```

### [towctrans ¶](#towctrans) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L64)

```
towctrans :: proc "c" (wc: wint_t, desc: wctrans_t) -> wint_t ---
```

 

7.30.3.2 Extensible wide character case mapping functions

### [towlower ¶](#towlower) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L60)

```
towlower :: proc "c" (wc: wint_t) -> wint_t ---
```

 

7.30.3 Wide character case mapping utilities

### [towupper ¶](#towupper) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L61)

```
towupper :: proc "c" (wc: wint_t) -> wint_t ---
```

### [tss\_create ¶](#tss_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L69)

```
tss_create :: proc "c" (key: ^tss_t, dtor: tss_dtor_t) -> i32 ---
```

 

7.26.6 Thread-specific storage functions

### [tss\_delete ¶](#tss_delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L70)

```
tss_delete :: proc "c" (key: tss_t) ---
```

### [tss\_get ¶](#tss_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L71)

```
tss_get :: proc "c" (key: tss_t) -> rawptr ---
```

### [tss\_set ¶](#tss_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin#L72)

```
tss_set :: proc "c" (key: tss_t, val: rawptr) -> i32 ---
```

### [ungetc ¶](#ungetc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L284)

```
ungetc :: proc "c" (c: i32, stream: ^c.FILE) -> i32 ---
```

### [ungetwc ¶](#ungetwc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L39)

```
ungetwc :: proc "c" (c: u16, stream: ^c.FILE) -> wint_t ---
```

### [va\_copy ¶](#va_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdarg.odin#L27)

```
va_copy :: proc(dst, src: ^c.va_list) {…}
```

### [va\_end ¶](#va_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdarg.odin#L23)

```
va_end :: proc(ap: ^c.va_list) {…}
```

### [va\_start ¶](#va_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdarg.odin#L19)

```
va_start :: proc(ap: ^c.va_list, _: any) {…}
```

### [vfprintf ¶](#vfprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L267)

```
vfprintf :: proc "c" (stream: ^c.FILE, format: cstring, arg: ^c.va_list) -> i32 ---
```

### [vfscanf ¶](#vfscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L268)

```
vfscanf :: proc "c" (stream: ^c.FILE, format: cstring, arg: ^c.va_list) -> i32 ---
```

### [vfwprintf ¶](#vfwprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L20)

```
vfwprintf :: proc "c" (stream: ^c.FILE, format: [^]u16, arg: c.va_list) -> i32 ---
```

### [vfwscanf ¶](#vfwscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L21)

```
vfwscanf :: proc "c" (stream: ^c.FILE, format: [^]u16, arg: c.va_list) -> i32 ---
```

### [vprintf ¶](#vprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L269)

```
vprintf :: proc "c" (format: cstring, arg: ^c.va_list) -> i32 ---
```

### [vscanf ¶](#vscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L270)

```
vscanf :: proc "c" (format: cstring, arg: ^c.va_list) -> i32 ---
```

### [vsnprintf ¶](#vsnprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L271)

```
vsnprintf :: proc "c" (s: [^]u8, n: uint, format: cstring, arg: ^c.va_list) -> i32 ---
```

### [vsprintf ¶](#vsprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L272)

```
vsprintf :: proc "c" (s: [^]u8, format: cstring, arg: ^c.va_list) -> i32 ---
```

### [vsscanf ¶](#vsscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin#L273)

```
vsscanf :: proc "c" (s, format: cstring, arg: ^c.va_list) -> i32 ---
```

### [vswprintf ¶](#vswprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L22)

```
vswprintf :: proc "c" (s: [^]u16, n: uint, format: [^]u16, arg: c.va_list) -> i32 ---
```

### [vswscanf ¶](#vswscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L23)

```
vswscanf :: proc "c" (s, format: [^]u16, arg: c.va_list) -> i32 ---
```

### [vwprintf ¶](#vwprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L24)

```
vwprintf :: proc "c" (format: [^]u16, arg: c.va_list) -> i32 ---
```

### [vwscanf ¶](#vwscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L25)

```
vwscanf :: proc "c" (format: [^]u16, arg: c.va_list) -> i32 ---
```

### [wcrtomb ¶](#wcrtomb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L93)

```
wcrtomb :: proc "c" (s: ^u8, wc: u16, ps: ^mbstate_t) -> uint ---
```

### [wcscat ¶](#wcscat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L56)

```
wcscat :: proc "c" (s1, s2: [^]u16) -> [^]u16 ---
```

 

7.29.4.3 Wide string concatenation functions

### [wcschr ¶](#wcschr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L67)

```
wcschr :: proc "c" (s: [^]u16, c: u16) -> [^]u16 ---
```

 

7.29.4.5 Wide string search functions

### [wcscmp ¶](#wcscmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L60)

```
wcscmp :: proc "c" (s1, s2: [^]u16) -> i32 ---
```

 

7.29.4.4 Wide string comparison functions

### [wcscoll ¶](#wcscoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L61)

```
wcscoll :: proc "c" (s1, s2: [^]u16) -> i32 ---
```

### [wcscpy ¶](#wcscpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L50)

```
wcscpy :: proc "c" (s1, s2: [^]u16) -> [^]u16 ---
```

 

7.29.4.2 Wide string copying functions

### [wcscspn ¶](#wcscspn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L68)

```
wcscspn :: proc "c" (s1, s2: [^]u16) -> uint ---
```

### [wcsftime ¶](#wcsftime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L81)

```
wcsftime :: proc "c" (s: [^]u16, maxsize: uint, format: [^]u16, timeptr: ^tm) -> uint ---
```

 

7.29.5 Wide character time conversion functions

### [wcslen ¶](#wcslen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L77)

```
wcslen :: proc "c" (s: [^]u16) -> uint ---
```

 

7.29.4.6 Miscellaneous functions

### [wcsncat ¶](#wcsncat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L57)

```
wcsncat :: proc "c" (s1, s2: [^]u16, n: uint) -> [^]u16 ---
```

### [wcsncmp ¶](#wcsncmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L62)

```
wcsncmp :: proc "c" (s1, s2: [^]u16, n: uint) -> i32 ---
```

### [wcsncpy ¶](#wcsncpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L51)

```
wcsncpy :: proc "c" (s1, s2: [^]u16, n: uint) -> [^]u16 ---
```

### [wcspbrk ¶](#wcspbrk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L69)

```
wcspbrk :: proc "c" (s1, s2: [^]u16) -> [^]u16 ---
```

### [wcsrchr ¶](#wcsrchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L70)

```
wcsrchr :: proc "c" (s: [^]u16, c: u16) -> [^]u16 ---
```

### [wcsrtombs ¶](#wcsrtombs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L97)

```
wcsrtombs :: proc "c" (dst: ^u8, src: ^[^]u16, len: uint, ps: ^mbstate_t) -> uint ---
```

### [wcsspn ¶](#wcsspn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L71)

```
wcsspn :: proc "c" (s1, s2: [^]u16) -> uint ---
```

### [wcsstr ¶](#wcsstr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L72)

```
wcsstr :: proc "c" (s1, s2: [^]u16) -> [^]u16 ---
```

### [wcstod ¶](#wcstod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L42)

```
wcstod :: proc "c" (nptr: [^]u16, endptr: ^[^]u16) -> f64 ---
```

 

7.29.4 General wide string utilities

### [wcstof ¶](#wcstof) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L43)

```
wcstof :: proc "c" (nptr: [^]u16, endptr: ^[^]u16) -> f32 ---
```

### [wcstok ¶](#wcstok) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L73)

```
wcstok :: proc "c" (s1, s2: [^]u16, ptr: ^[^]u16) -> [^]u16 ---
```

### [wcstol ¶](#wcstol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L44)

```
wcstol :: proc "c" (nptr: [^]u16, endptr: ^[^]u16, base: i32) -> i32 ---
```

### [wcstoll ¶](#wcstoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L45)

```
wcstoll :: proc "c" (nptr: [^]u16, endptr: ^[^]u16, base: i32) -> i64 ---
```

### [wcstombs ¶](#wcstombs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L156)

```
wcstombs :: proc "c" (s: [^]u8, pwcs: ^u16, n: uint) -> uint ---
```

### [wcstoul ¶](#wcstoul) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L46)

```
wcstoul :: proc "c" (nptr: [^]u16, endptr: ^[^]u16, base: i32) -> u32 ---
```

### [wcstoull ¶](#wcstoull) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L47)

```
wcstoull :: proc "c" (nptr: [^]u16, endptr: ^[^]u16, base: i32) -> u64 ---
```

### [wcsxfrm ¶](#wcsxfrm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L63)

```
wcsxfrm :: proc "c" (s1, s2: [^]u16, n: uint) -> uint ---
```

### [wctob ¶](#wctob) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L85)

```
wctob :: proc "c" (c: wint_t) -> i32 ---
```

### [wctomb ¶](#wctomb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin#L152)

```
wctomb :: proc "c" (s: [^]u8, wc: u16) -> i32 ---
```

### [wctrans ¶](#wctrans) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L65)

```
wctrans :: proc "c" (property: cstring) -> wctrans_t ---
```

### [wctype ¶](#wctype) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin#L57)

```
wctype :: proc "c" (property: cstring) -> wctype_t ---
```

### [wmemchr ¶](#wmemchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L74)

```
wmemchr :: proc "c" (s: [^]u16, c: u16, n: uint) -> [^]u16 ---
```

### [wmemcmp ¶](#wmemcmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L64)

```
wmemcmp :: proc "c" (s1, s2: [^]u16, n: uint) -> i32 ---
```

### [wmemcpy ¶](#wmemcpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L52)

```
wmemcpy :: proc "c" (s1, s2: [^]u16, n: uint) -> [^]u16 ---
```

### [wmemmove ¶](#wmemmove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L53)

```
wmemmove :: proc "c" (s1, s2: [^]u16, n: uint) -> [^]u16 ---
```

### [wmemset ¶](#wmemset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L78)

```
wmemset :: proc "c" (s: [^]u16, c: u16, n: uint) -> [^]u16 ---
```

### [wprintf ¶](#wprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L26)

```
wprintf :: proc "c" (format: [^]u16, .. arg: ..any) -> i32 ---
```

### [wscanf ¶](#wscanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin#L27)

```
wscanf :: proc "c" (format: [^]u16, .. arg: ..any) -> i32 ---
```

## Procedure Groups

### [acos ¶](#acos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L269)

```
acos :: proc{
	libc_acos,
	libc_acosf,
	cacos,
	cacosf,
}
```

 

Emulate tgmath.h behavior with explicit procedure overloading here.

### [acosf ¶](#acosf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L337)

```
acosf :: proc{
	libc_acosf,
}
```

 

But retain the 'f' suffix-variant functions as well so they can be used,
a trick is used here where we use explicit procedural overloading of one
procedure. This is done because the foreign block is marked @(private) and
aliasing functions does not remove privateness from the entity.

### [acosh ¶](#acosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L277)

```
acosh :: proc{
	libc_acosh,
	libc_acoshf,
	cacosh,
	cacoshf,
}
```

### [acoshf ¶](#acoshf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L345)

```
acoshf :: proc{
	libc_acoshf,
}
```

### [asin ¶](#asin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L270)

```
asin :: proc{
	libc_asin,
	libc_asinf,
	casin,
	casinf,
}
```

### [asinf ¶](#asinf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L338)

```
asinf :: proc{
	libc_asinf,
}
```

### [asinh ¶](#asinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L278)

```
asinh :: proc{
	libc_asinh,
	libc_asinhf,
	casinh,
	casinhf,
}
```

### [asinhf ¶](#asinhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L346)

```
asinhf :: proc{
	libc_asinhf,
}
```

### [atan ¶](#atan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L271)

```
atan :: proc{
	libc_atan,
	libc_atanf,
	catan,
	catanf,
}
```

### [atan2 ¶](#atan2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L272)

```
atan2 :: proc{
	libc_atan2,
	libc_atan2f,
}
```

### [atan2f ¶](#atan2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L340)

```
atan2f :: proc{
	libc_atan2f,
}
```

### [atanf ¶](#atanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L339)

```
atanf :: proc{
	libc_atanf,
}
```

### [atanh ¶](#atanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L279)

```
atanh :: proc{
	libc_atanh,
	libc_atanhf,
	catanh,
	catanhf,
}
```

### [atanhf ¶](#atanhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L347)

```
atanhf :: proc{
	libc_atanhf,
}
```

### [cbrt ¶](#cbrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L299)

```
cbrt :: proc{
	libc_cbrt,
	libc_cbrtf,
}
```

### [cbrtf ¶](#cbrtf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L367)

```
cbrtf :: proc{
	libc_cbrtf,
}
```

### [ceil ¶](#ceil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L310)

```
ceil :: proc{
	libc_ceil,
	libc_ceilf,
}
```

### [ceilf ¶](#ceilf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L378)

```
ceilf :: proc{
	libc_ceilf,
}
```

### [copysign ¶](#copysign) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L325)

```
copysign :: proc{
	libc_copysign,
	libc_copysignf,
}
```

### [copysignf ¶](#copysignf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L393)

```
copysignf :: proc{
	libc_copysignf,
}
```

### [cos ¶](#cos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L273)

```
cos :: proc{
	libc_cos,
	libc_cosf,
	ccos,
	ccosf,
}
```

### [cosf ¶](#cosf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L341)

```
cosf :: proc{
	libc_cosf,
}
```

### [cosh ¶](#cosh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L280)

```
cosh :: proc{
	libc_cosh,
	libc_coshf,
	ccosh,
	ccoshf,
}
```

### [coshf ¶](#coshf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L348)

```
coshf :: proc{
	libc_coshf,
}
```

### [erf ¶](#erf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L305)

```
erf :: proc{
	libc_erf,
	libc_erff,
}
```

### [erfc ¶](#erfc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L306)

```
erfc :: proc{
	libc_erfc,
	libc_erfcf,
}
```

### [erfcf ¶](#erfcf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L374)

```
erfcf :: proc{
	libc_erfcf,
}
```

### [erff ¶](#erff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L373)

```
erff :: proc{
	libc_erff,
}
```

### [exp ¶](#exp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L284)

```
exp :: proc{
	libc_exp,
	libc_expf,
	cexp,
	cexpf,
}
```

### [exp2 ¶](#exp2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L285)

```
exp2 :: proc{
	libc_exp2,
	libc_exp2f,
}
```

### [exp2f ¶](#exp2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L353)

```
exp2f :: proc{
	libc_exp2f,
}
```

### [expf ¶](#expf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L352)

```
expf :: proc{
	libc_expf,
}
```

### [expm1 ¶](#expm1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L286)

```
expm1 :: proc{
	libc_expm1,
	libc_expm1f,
}
```

### [expm1f ¶](#expm1f) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L354)

```
expm1f :: proc{
	libc_expm1f,
}
```

### [fabs ¶](#fabs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L300)

```
fabs :: proc{
	libc_fabs,
	libc_fabsf,
	cabs,
	cabsf,
}
```

### [fabsf ¶](#fabsf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L368)

```
fabsf :: proc{
	libc_fabsf,
}
```

### [fdim ¶](#fdim) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L328)

```
fdim :: proc{
	libc_fdim,
	libc_fdimf,
}
```

### [fdimf ¶](#fdimf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L396)

```
fdimf :: proc{
	libc_fdimf,
}
```

### [floor ¶](#floor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L311)

```
floor :: proc{
	libc_floor,
	libc_floorf,
}
```

### [floorf ¶](#floorf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L379)

```
floorf :: proc{
	libc_floorf,
}
```

### [fma ¶](#fma) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L331)

```
fma :: proc{
	libc_fma,
	libc_fmaf,
}
```

### [fmaf ¶](#fmaf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L399)

```
fmaf :: proc{
	libc_fmaf,
}
```

### [fmax ¶](#fmax) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L329)

```
fmax :: proc{
	libc_fmax,
	libc_fmaxf,
}
```

### [fmaxf ¶](#fmaxf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L397)

```
fmaxf :: proc{
	libc_fmaxf,
}
```

### [fmin ¶](#fmin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L330)

```
fmin :: proc{
	libc_fmin,
	libc_fminf,
}
```

### [fminf ¶](#fminf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L398)

```
fminf :: proc{
	libc_fminf,
}
```

### [fmod ¶](#fmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L321)

```
fmod :: proc{
	libc_fmod,
	libc_fmodf,
}
```

### [fmodf ¶](#fmodf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L389)

```
fmodf :: proc{
	libc_fmodf,
}
```

### [fpclassify ¶](#fpclassify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L265)

```
fpclassify :: proc{
	_fpclassify,
	_fpclassifyf,
}
```

### [frexp ¶](#frexp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L287)

```
frexp :: proc{
	libc_frexp,
	libc_frexpf,
}
```

### [frexpf ¶](#frexpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L355)

```
frexpf :: proc{
	libc_frexpf,
}
```

### [hypot ¶](#hypot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L301)

```
hypot :: proc{
	libc_hypot,
	libc_hypotf,
}
```

### [hypotf ¶](#hypotf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L369)

```
hypotf :: proc{
	libc_hypotf,
}
```

### [ilogb ¶](#ilogb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L288)

```
ilogb :: proc{
	libc_ilogb,
	libc_ilogbf,
}
```

### [ilogbf ¶](#ilogbf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L356)

```
ilogbf :: proc{
	libc_ilogbf,
}
```

### [ldexp ¶](#ldexp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L289)

```
ldexp :: proc{
	libc_ldexp,
	libc_ldexpf,
}
```

### [ldexpf ¶](#ldexpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L357)

```
ldexpf :: proc{
	libc_ldexpf,
}
```

### [lgamma ¶](#lgamma) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L307)

```
lgamma :: proc{
	libc_lgamma,
	libc_lgammaf,
}
```

### [lgammaf ¶](#lgammaf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L375)

```
lgammaf :: proc{
	libc_lgammaf,
}
```

### [llrint ¶](#llrint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L315)

```
llrint :: proc{
	libc_llrint,
	libc_llrintf,
}
```

### [llrintf ¶](#llrintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L383)

```
llrintf :: proc{
	libc_llrintf,
}
```

### [llround ¶](#llround) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L318)

```
llround :: proc{
	libc_llround,
	libc_llroundf,
}
```

### [llroundf ¶](#llroundf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L386)

```
llroundf :: proc{
	libc_llroundf,
}
```

### [log ¶](#log) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L290)

```
log :: proc{
	libc_log,
	libc_logf,
	clog,
	clogf,
}
```

### [log10 ¶](#log10) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L291)

```
log10 :: proc{
	libc_log10,
	libc_log10f,
}
```

### [log10f ¶](#log10f) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L359)

```
log10f :: proc{
	libc_log10f,
}
```

### [log1p ¶](#log1p) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L292)

```
log1p :: proc{
	libc_log1p,
	libc_log1pf,
}
```

### [log1pf ¶](#log1pf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L360)

```
log1pf :: proc{
	libc_log1pf,
}
```

### [log2 ¶](#log2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L293)

```
log2 :: proc{
	libc_log2,
	libc_log2f,
}
```

### [log2f ¶](#log2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L361)

```
log2f :: proc{
	libc_log2f,
}
```

### [logb ¶](#logb) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L294)

```
logb :: proc{
	libc_logb,
	libc_logbf,
}
```

### [logbf ¶](#logbf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L362)

```
logbf :: proc{
	libc_logbf,
}
```

### [logf ¶](#logf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L358)

```
logf :: proc{
	libc_logf,
}
```

### [lrint ¶](#lrint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L314)

```
lrint :: proc{
	libc_lrint,
	libc_lrintf,
}
```

### [lrintf ¶](#lrintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L382)

```
lrintf :: proc{
	libc_lrintf,
}
```

### [lround ¶](#lround) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L317)

```
lround :: proc{
	libc_lround,
	libc_lroundf,
}
```

### [lroundf ¶](#lroundf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L385)

```
lroundf :: proc{
	libc_lroundf,
}
```

### [modf ¶](#modf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L295)

```
modf :: proc{
	libc_modf,
	libc_modff,
}
```

### [modff ¶](#modff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L363)

```
modff :: proc{
	libc_modff,
}
```

### [nan ¶](#nan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L403)

```
nan :: proc{
	libc_nan,
}
```

 

These two functions are special and not made type generic in tgmath.h since
they only differ by their return type.

### [nanf ¶](#nanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L404)

```
nanf :: proc{
	libc_nanf,
}
```

### [nearbyint ¶](#nearbyint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L312)

```
nearbyint :: proc{
	libc_nearbyint,
	libc_nearbyintf,
}
```

### [nearbyintf ¶](#nearbyintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L380)

```
nearbyintf :: proc{
	libc_nearbyintf,
}
```

### [nextafter ¶](#nextafter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L326)

```
nextafter :: proc{
	libc_nextafter,
	libc_nextafterf,
}
```

### [nextafterf ¶](#nextafterf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L394)

```
nextafterf :: proc{
	libc_nextafterf,
}
```

### [pow ¶](#pow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L302)

```
pow :: proc{
	libc_pow,
	libc_powf,
	cpow,
	cpowf,
}
```

### [powf ¶](#powf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L370)

```
powf :: proc{
	libc_powf,
}
```

### [remainder ¶](#remainder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L322)

```
remainder :: proc{
	libc_remainder,
	libc_remainderf,
}
```

### [remainderf ¶](#remainderf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L390)

```
remainderf :: proc{
	libc_remainderf,
}
```

### [remquo ¶](#remquo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L323)

```
remquo :: proc{
	libc_remquo,
	libc_remquof,
}
```

### [remquof ¶](#remquof) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L391)

```
remquof :: proc{
	libc_remquof,
}
```

### [rint ¶](#rint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L313)

```
rint :: proc{
	libc_rint,
	libc_rintf,
}
```

### [rintf ¶](#rintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L381)

```
rintf :: proc{
	libc_rintf,
}
```

### [round ¶](#round) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L316)

```
round :: proc{
	libc_round,
	libc_roundf,
}
```

### [roundf ¶](#roundf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L384)

```
roundf :: proc{
	libc_roundf,
}
```

### [scalbln ¶](#scalbln) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L297)

```
scalbln :: proc{
	libc_scalbln,
	libc_scalblnf,
}
```

### [scalblnf ¶](#scalblnf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L365)

```
scalblnf :: proc{
	libc_scalblnf,
}
```

### [scalbn ¶](#scalbn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L296)

```
scalbn :: proc{
	libc_scalbn,
	libc_scalbnf,
}
```

### [scalbnf ¶](#scalbnf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L364)

```
scalbnf :: proc{
	libc_scalbnf,
}
```

### [signbit ¶](#signbit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L266)

```
signbit :: proc{
	_signbit,
	_signbitf,
}
```

### [sin ¶](#sin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L274)

```
sin :: proc{
	libc_sin,
	libc_sinf,
	csin,
	csinf,
}
```

### [sinf ¶](#sinf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L342)

```
sinf :: proc{
	libc_sinf,
}
```

### [sinh ¶](#sinh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L281)

```
sinh :: proc{
	libc_sinh,
	libc_sinhf,
	csinh,
	csinhf,
}
```

### [sinhf ¶](#sinhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L349)

```
sinhf :: proc{
	libc_sinhf,
}
```

### [sqrt ¶](#sqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L303)

```
sqrt :: proc{
	libc_sqrt,
	libc_sqrtf,
	csqrt,
	csqrtf,
}
```

### [sqrtf ¶](#sqrtf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L371)

```
sqrtf :: proc{
	libc_sqrtf,
}
```

### [tan ¶](#tan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L275)

```
tan :: proc{
	libc_tan,
	libc_tanf,
	ctan,
	ctanf,
}
```

### [tanf ¶](#tanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L343)

```
tanf :: proc{
	libc_tanf,
}
```

### [tanh ¶](#tanh) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L282)

```
tanh :: proc{
	libc_tanh,
	libc_tanhf,
	ctanh,
	ctanhf,
}
```

### [tanhf ¶](#tanhf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L350)

```
tanhf :: proc{
	libc_tanhf,
}
```

### [tgamma ¶](#tgamma) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L308)

```
tgamma :: proc{
	libc_tgamma,
	libc_tgammaf,
}
```

### [tgammaf ¶](#tgammaf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L376)

```
tgammaf :: proc{
	libc_tgammaf,
}
```

### [trunc ¶](#trunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L319)

```
trunc :: proc{
	libc_trunc,
	libc_truncf,
}
```

### [truncf ¶](#truncf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin#L387)

```
truncf :: proc{
	libc_truncf,
}
```

## Source Files

* [complex.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/complex.odin)
* [ctype.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/ctype.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/doc.odin)
* [errno.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/errno.odin)
* [locale.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/locale.odin)
* [math.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/math.odin)
* [setjmp.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/setjmp.odin)
* [signal.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/signal.odin)
* [stdarg.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdarg.odin)
* [stdatomic.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdatomic.odin)
* [stdio.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdio.odin)
* [stdlib.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/stdlib.odin)
* [string.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/string.odin)
* [threads.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/threads.odin)
* [time.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/time.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/types.odin)
* [uchar.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/uchar.odin)
* [wchar.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wchar.odin)
* [wctype.odin](https://github.com/odin-lang/Odin/tree/master/core/c/libc/wctype.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.017258900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [FILE](#FILE)
    + [Locale\_Category](#Locale_Category)
    + [Whence](#Whence)
    + [atomic\_bool](#atomic_bool)
    + [atomic\_char](#atomic_char)
    + [atomic\_char16\_t](#atomic_char16_t)
    + [atomic\_char32\_t](#atomic_char32_t)
    + [atomic\_flag](#atomic_flag)
    + [atomic\_int](#atomic_int)
    + [atomic\_int\_fast16\_t](#atomic_int_fast16_t)
    + [atomic\_int\_fast32\_t](#atomic_int_fast32_t)
    + [atomic\_int\_fast64\_t](#atomic_int_fast64_t)
    + [atomic\_int\_fast8\_t](#atomic_int_fast8_t)
    + [atomic\_int\_least16\_t](#atomic_int_least16_t)
    + [atomic\_int\_least32\_t](#atomic_int_least32_t)
    + [atomic\_int\_least64\_t](#atomic_int_least64_t)
    + [atomic\_int\_least8\_t](#atomic_int_least8_t)
    + [atomic\_intmax\_t](#atomic_intmax_t)
    + [atomic\_intptr\_t](#atomic_intptr_t)
    + [atomic\_llong](#atomic_llong)
    + [atomic\_long](#atomic_long)
    + [atomic\_ptrdiff\_t](#atomic_ptrdiff_t)
    + [atomic\_schar](#atomic_schar)
    + [atomic\_short](#atomic_short)
    + [atomic\_size\_t](#atomic_size_t)
    + [atomic\_uchar](#atomic_uchar)
    + [atomic\_uint](#atomic_uint)
    + [atomic\_uint\_fast16\_t](#atomic_uint_fast16_t)
    + [atomic\_uint\_fast32\_t](#atomic_uint_fast32_t)
    + [atomic\_uint\_fast64\_t](#atomic_uint_fast64_t)
    + [atomic\_uint\_fast8\_t](#atomic_uint_fast8_t)
    + [atomic\_uint\_least16\_t](#atomic_uint_least16_t)
    + [atomic\_uint\_least32\_t](#atomic_uint_least32_t)
    + [atomic\_uint\_least64\_t](#atomic_uint_least64_t)
    + [atomic\_uint\_least8\_t](#atomic_uint_least8_t)
    + [atomic\_uintmax\_t](#atomic_uintmax_t)
    + [atomic\_uintptr\_t](#atomic_uintptr_t)
    + [atomic\_ullong](#atomic_ullong)
    + [atomic\_ulong](#atomic_ulong)
    + [atomic\_ushort](#atomic_ushort)
    + [atomic\_wchar\_t](#atomic_wchar_t)
    + [bool](#bool)
    + [char](#char)
    + [char16\_t](#char16_t)
    + [char32\_t](#char32_t)
    + [clock\_t](#clock_t)
    + [cnd\_t](#cnd_t)
    + [complex\_double](#complex_double)
    + [complex\_float](#complex_float)
    + [div\_t](#div_t)
    + [double](#double)
    + [double\_t](#double_t)
    + [float](#float)
    + [float\_t](#float_t)
    + [fpos\_t](#fpos_t)
    + [int](#int)
    + [int16\_t](#int16_t)
    + [int32\_t](#int32_t)
    + [int64\_t](#int64_t)
    + [int8\_t](#int8_t)
    + [int\_fast16\_t](#int_fast16_t)
    + [int\_fast32\_t](#int_fast32_t)
    + [int\_fast64\_t](#int_fast64_t)
    + [int\_fast8\_t](#int_fast8_t)
    + [int\_least16\_t](#int_least16_t)
    + [int\_least32\_t](#int_least32_t)
    + [int\_least64\_t](#int_least64_t)
    + [int\_least8\_t](#int_least8_t)
    + [intmax\_t](#intmax_t)
    + [intptr\_t](#intptr_t)
    + [jmp\_buf](#jmp_buf)
    + [lconv](#lconv)
    + [ldiv\_t](#ldiv_t)
    + [lldiv\_t](#lldiv_t)
    + [long](#long)
    + [longlong](#longlong)
    + [mbstate\_t](#mbstate_t)
    + [memory\_order](#memory_order)
    + [mtx\_t](#mtx_t)
    + [once\_flag](#once_flag)
    + [ptrdiff\_t](#ptrdiff_t)
    + [schar](#schar)
    + [short](#short)
    + [sig\_atomic\_t](#sig_atomic_t)
    + [size\_t](#size_t)
    + [ssize\_t](#ssize_t)
    + [thrd\_start\_t](#thrd_start_t)
    + [thrd\_t](#thrd_t)
    + [time\_t](#time_t)
    + [timespec](#timespec)
    + [tm](#tm)
    + [tss\_dtor\_t](#tss_dtor_t)
    + [tss\_t](#tss_t)
    + [uchar](#uchar)
    + [uint](#uint)
    + [uint16\_t](#uint16_t)
    + [uint32\_t](#uint32_t)
    + [uint64\_t](#uint64_t)
    + [uint8\_t](#uint8_t)
    + [uint\_fast16\_t](#uint_fast16_t)
    + [uint\_fast32\_t](#uint_fast32_t)
    + [uint\_fast64\_t](#uint_fast64_t)
    + [uint\_fast8\_t](#uint_fast8_t)
    + [uint\_least16\_t](#uint_least16_t)
    + [uint\_least32\_t](#uint_least32_t)
    + [uint\_least64\_t](#uint_least64_t)
    + [uint\_least8\_t](#uint_least8_t)
    + [uintmax\_t](#uintmax_t)
    + [uintptr\_t](#uintptr_t)
    + [ulong](#ulong)
    + [ulonglong](#ulonglong)
    + [ushort](#ushort)
    + [va\_list](#va_list)
    + [wchar\_t](#wchar_t)
    + [wctrans\_t](#wctrans_t)
    + [wctype\_t](#wctype_t)
    + [wint\_t](#wint_t)
  * [Constants](#pkg-Constants)
    + [ATOMIC\_BOOL\_LOCK\_FREE](#ATOMIC_BOOL_LOCK_FREE)
    + [ATOMIC\_CHAR16\_T\_LOCK\_FREE](#ATOMIC_CHAR16_T_LOCK_FREE)
    + [ATOMIC\_CHAR32\_T\_LOCK\_FREE](#ATOMIC_CHAR32_T_LOCK_FREE)
    + [ATOMIC\_CHAR\_LOCK\_FREE](#ATOMIC_CHAR_LOCK_FREE)
    + [ATOMIC\_INT\_LOCK\_FREE](#ATOMIC_INT_LOCK_FREE)
    + [ATOMIC\_LLONG\_LOCK\_FREE](#ATOMIC_LLONG_LOCK_FREE)
    + [ATOMIC\_LONG\_LOCK\_FREE](#ATOMIC_LONG_LOCK_FREE)
    + [ATOMIC\_POINTER\_LOCK\_FREE](#ATOMIC_POINTER_LOCK_FREE)
    + [ATOMIC\_SHORT\_LOCK\_FREE](#ATOMIC_SHORT_LOCK_FREE)
    + [ATOMIC\_WCHAR\_T\_LOCK\_FREE](#ATOMIC_WCHAR_T_LOCK_FREE)
    + [BUFSIZ](#BUFSIZ)
    + [CHAR\_BIT](#CHAR_BIT)
    + [CLOCKS\_PER\_SEC](#CLOCKS_PER_SEC)
    + [EDOM](#EDOM)
    + [EILSEQ](#EILSEQ)
    + [EOF](#EOF)
    + [ERANGE](#ERANGE)
    + [EXIT\_FAILURE](#EXIT_FAILURE)
    + [EXIT\_SUCCESS](#EXIT_SUCCESS)
    + [FILENAME\_MAX](#FILENAME_MAX)
    + [FOPEN\_MAX](#FOPEN_MAX)
    + [FP\_ILOGB0](#FP_ILOGB0)
    + [FP\_ILOGBNAN](#FP_ILOGBNAN)
    + [FP\_INFINITE](#FP_INFINITE)
    + [FP\_NAN](#FP_NAN)
    + [FP\_NORMAL](#FP_NORMAL)
    + [FP\_SUBNORMAL](#FP_SUBNORMAL)
    + [FP\_ZERO](#FP_ZERO)
    + [HUGE\_VAL](#HUGE_VAL)
    + [HUGE\_VALF](#HUGE_VALF)
    + [INFINITY](#INFINITY)
    + [INT16\_MAX](#INT16_MAX)
    + [INT16\_MIN](#INT16_MIN)
    + [INT32\_MAX](#INT32_MAX)
    + [INT32\_MIN](#INT32_MIN)
    + [INT64\_MAX](#INT64_MAX)
    + [INT64\_MIN](#INT64_MIN)
    + [INT8\_MAX](#INT8_MAX)
    + [INT8\_MIN](#INT8_MIN)
    + [LC\_ALL](#LC_ALL)
    + [LC\_COLLATE](#LC_COLLATE)
    + [LC\_CTYPE](#LC_CTYPE)
    + [LC\_MESSAGES](#LC_MESSAGES)
    + [LC\_MONETARY](#LC_MONETARY)
    + [LC\_NUMERIC](#LC_NUMERIC)
    + [LC\_TIME](#LC_TIME)
    + [L\_tmpnam](#L_tmpnam)
    + [MATH\_ERREXCEPT](#MATH_ERREXCEPT)
    + [MATH\_ERRNO](#MATH_ERRNO)
    + [NDEBUG](#NDEBUG)
    + [NULL](#NULL)
    + [PTRDIFF\_MAX](#PTRDIFF_MAX)
    + [PTRDIFF\_MIN](#PTRDIFF_MIN)
    + [RAND\_MAX](#RAND_MAX)
    + [SEEK\_CUR](#SEEK_CUR)
    + [SEEK\_END](#SEEK_END)
    + [SEEK\_SET](#SEEK_SET)
    + [SIGABRT](#SIGABRT)
    + [SIGFPE](#SIGFPE)
    + [SIGILL](#SIGILL)
    + [SIGINT](#SIGINT)
    + [SIGSEGV](#SIGSEGV)
    + [SIGTERM](#SIGTERM)
    + [SIG\_ATOMIC\_MAX](#SIG_ATOMIC_MAX)
    + [SIG\_ATOMIC\_MIN](#SIG_ATOMIC_MIN)
    + [SIG\_DFL](#SIG_DFL)
    + [SIG\_ERR](#SIG_ERR)
    + [SIG\_IGN](#SIG_IGN)
    + [SIZE\_MAX](#SIZE_MAX)
    + [TIME\_UTC](#TIME_UTC)
    + [TMP\_MAX](#TMP_MAX)
    + [TSS\_DTOR\_ITERATIONS](#TSS_DTOR_ITERATIONS)
    + [UINT16\_MAX](#UINT16_MAX)
    + [UINT32\_MAX](#UINT32_MAX)
    + [UINT64\_MAX](#UINT64_MAX)
    + [UINT8\_MAX](#UINT8_MAX)
    + [WCHAR\_MAX](#WCHAR_MAX)
    + [WCHAR\_MIN](#WCHAR_MIN)
    + [WEOF](#WEOF)
    + [WINT\_MAX](#WINT_MAX)
    + [WINT\_MIN](#WINT_MIN)
    + [math\_errhandling](#math_errhandling)
    + [memory\_order\_acq\_rel](#memory_order_acq_rel)
    + [memory\_order\_acquire](#memory_order_acquire)
    + [memory\_order\_consume](#memory_order_consume)
    + [memory\_order\_relaxed](#memory_order_relaxed)
    + [memory\_order\_release](#memory_order_release)
    + [memory\_order\_seq\_cst](#memory_order_seq_cst)
    + [mtx\_plain](#mtx_plain)
    + [mtx\_recursive](#mtx_recursive)
    + [mtx\_timed](#mtx_timed)
    + [thrd\_busy](#thrd_busy)
    + [thrd\_error](#thrd_error)
    + [thrd\_nomem](#thrd_nomem)
    + [thrd\_success](#thrd_success)
    + [thrd\_timedout](#thrd_timedout)
  * [Variables](#pkg-Variables)
    + [NAN](#NAN)
    + [stderr](#stderr)
    + [stdin](#stdin)
    + [stdout](#stdout)
  * [Procedures](#pkg-Procedures)
    + [ATOMIC\_VAR\_INIT](#ATOMIC_VAR_INIT)
    + [CMPLX](#CMPLX)
    + [CMPLXF](#CMPLXF)
    + [MB\_CUR\_MAX](#MB_CUR_MAX)
    + [abort](#abort)
    + [abs](#abs)
    + [aligned\_alloc](#aligned_alloc)
    + [aligned\_free](#aligned_free)
    + [asctime](#asctime)
    + [at\_quick\_exit](#at_quick_exit)
    + [atexit](#atexit)
    + [atof](#atof)
    + [atoi](#atoi)
    + [atol](#atol)
    + [atoll](#atoll)
    + [atomic\_compare\_exchange\_strong](#atomic_compare_exchange_strong)
    + [atomic\_compare\_exchange\_strong\_explicit](#atomic_compare_exchange_strong_explicit)
    + [atomic\_compare\_exchange\_weak](#atomic_compare_exchange_weak)
    + [atomic\_compare\_exchange\_weak\_explicit](#atomic_compare_exchange_weak_explicit)
    + [atomic\_exchange](#atomic_exchange)
    + [atomic\_exchange\_explicit](#atomic_exchange_explicit)
    + [atomic\_fetch\_add](#atomic_fetch_add)
    + [atomic\_fetch\_add\_explicit](#atomic_fetch_add_explicit)
    + [atomic\_fetch\_and](#atomic_fetch_and)
    + [atomic\_fetch\_and\_explicit](#atomic_fetch_and_explicit)
    + [atomic\_fetch\_or](#atomic_fetch_or)
    + [atomic\_fetch\_or\_explicit](#atomic_fetch_or_explicit)
    + [atomic\_fetch\_sub](#atomic_fetch_sub)
    + [atomic\_fetch\_sub\_explicit](#atomic_fetch_sub_explicit)
    + [atomic\_fetch\_xor](#atomic_fetch_xor)
    + [atomic\_fetch\_xor\_explicit](#atomic_fetch_xor_explicit)
    + [atomic\_flag\_clear](#atomic_flag_clear)
    + [atomic\_flag\_clear\_explicit](#atomic_flag_clear_explicit)
    + [atomic\_flag\_test\_and\_set](#atomic_flag_test_and_set)
    + [atomic\_flag\_test\_and\_set\_explicit](#atomic_flag_test_and_set_explicit)
    + [atomic\_init](#atomic_init)
    + [atomic\_is\_lock\_free](#atomic_is_lock_free)
    + [atomic\_load](#atomic_load)
    + [atomic\_load\_explicit](#atomic_load_explicit)
    + [atomic\_signal\_fence](#atomic_signal_fence)
    + [atomic\_store](#atomic_store)
    + [atomic\_store\_explicit](#atomic_store_explicit)
    + [atomic\_thread\_fence](#atomic_thread_fence)
    + [bsearch](#bsearch)
    + [btowc](#btowc)
    + [c16rtomb](#c16rtomb)
    + [c32rtomb](#c32rtomb)
    + [cabs](#cabs)
    + [cabsf](#cabsf)
    + [cacos](#cacos)
    + [cacosf](#cacosf)
    + [cacosh](#cacosh)
    + [cacoshf](#cacoshf)
    + [call\_once](#call_once)
    + [calloc](#calloc)
    + [carg](#carg)
    + [cargf](#cargf)
    + [casin](#casin)
    + [casinf](#casinf)
    + [casinh](#casinh)
    + [casinhf](#casinhf)
    + [catan](#catan)
    + [catanf](#catanf)
    + [catanh](#catanh)
    + [catanhf](#catanhf)
    + [ccos](#ccos)
    + [ccosf](#ccosf)
    + [ccosh](#ccosh)
    + [ccoshf](#ccoshf)
    + [cexp](#cexp)
    + [cexpf](#cexpf)
    + [cimag](#cimag)
    + [cimagf](#cimagf)
    + [clearerr](#clearerr)
    + [clock](#clock)
    + [clog](#clog)
    + [clogf](#clogf)
    + [cnd\_broadcast](#cnd_broadcast)
    + [cnd\_destroy](#cnd_destroy)
    + [cnd\_init](#cnd_init)
    + [cnd\_signal](#cnd_signal)
    + [cnd\_timedwait](#cnd_timedwait)
    + [cnd\_wait](#cnd_wait)
    + [conj](#conj)
    + [conjf](#conjf)
    + [cpow](#cpow)
    + [cpowf](#cpowf)
    + [cproj](#cproj)
    + [cprojf](#cprojf)
    + [creal](#creal)
    + [crealf](#crealf)
    + [csin](#csin)
    + [csinf](#csinf)
    + [csinh](#csinh)
    + [csinhf](#csinhf)
    + [csqrt](#csqrt)
    + [csqrtf](#csqrtf)
    + [ctan](#ctan)
    + [ctanf](#ctanf)
    + [ctanh](#ctanh)
    + [ctanhf](#ctanhf)
    + [ctime](#ctime)
    + [difftime](#difftime)
    + [div](#div)
    + [errno](#errno)
    + [exit](#exit)
    + [fclose](#fclose)
    + [feof](#feof)
    + [ferror](#ferror)
    + [fflush](#fflush)
    + [fgetc](#fgetc)
    + [fgetpos](#fgetpos)
    + [fgets](#fgets)
    + [fgetws](#fgetws)
    + [fopen](#fopen)
    + [fprintf](#fprintf)
    + [fputc](#fputc)
    + [fputwc](#fputwc)
    + [fputws](#fputws)
    + [fread](#fread)
    + [free](#free)
    + [freopen](#freopen)
    + [fscanf](#fscanf)
    + [fseek](#fseek)
    + [fsetpos](#fsetpos)
    + [ftell](#ftell)
    + [fwgetc](#fwgetc)
    + [fwide](#fwide)
    + [fwprintf](#fwprintf)
    + [fwrite](#fwrite)
    + [fwscanf](#fwscanf)
    + [getc](#getc)
    + [getchar](#getchar)
    + [getenv](#getenv)
    + [getwc](#getwc)
    + [getwchar](#getwchar)
    + [gmtime](#gmtime)
    + [isalnum](#isalnum)
    + [isalpha](#isalpha)
    + [isblank](#isblank)
    + [iscntrl](#iscntrl)
    + [isdigit](#isdigit)
    + [isfinite](#isfinite)
    + [isgraph](#isgraph)
    + [isgreater](#isgreater)
    + [isgreaterequal](#isgreaterequal)
    + [isinf](#isinf)
    + [isless](#isless)
    + [islessequal](#islessequal)
    + [islessgreater](#islessgreater)
    + [islower](#islower)
    + [isnan](#isnan)
    + [isnormal](#isnormal)
    + [isprint](#isprint)
    + [ispunct](#ispunct)
    + [isspace](#isspace)
    + [isunordered](#isunordered)
    + [isupper](#isupper)
    + [iswalnum](#iswalnum)
    + [iswalpha](#iswalpha)
    + [iswblank](#iswblank)
    + [iswcntrl](#iswcntrl)
    + [iswctype](#iswctype)
    + [iswdigit](#iswdigit)
    + [iswgraph](#iswgraph)
    + [iswlower](#iswlower)
    + [iswprint](#iswprint)
    + [iswpunct](#iswpunct)
    + [iswspace](#iswspace)
    + [iswupper](#iswupper)
    + [iswxdigit](#iswxdigit)
    + [isxdigit](#isxdigit)
    + [kill\_dependency](#kill_dependency)
    + [labs](#labs)
    + [ldiv](#ldiv)
    + [llabs](#llabs)
    + [lldiv](#lldiv)
    + [localeconv](#localeconv)
    + [localtime](#localtime)
    + [longjmp](#longjmp)
    + [malloc](#malloc)
    + [mblen](#mblen)
    + [mbrlen](#mbrlen)
    + [mbrtoc16](#mbrtoc16)
    + [mbrtoc32](#mbrtoc32)
    + [mbrtowc](#mbrtowc)
    + [mbsinit](#mbsinit)
    + [mbsrtowcs](#mbsrtowcs)
    + [mbstowcs](#mbstowcs)
    + [mbtowc](#mbtowc)
    + [memchr](#memchr)
    + [memcmp](#memcmp)
    + [memcpy](#memcpy)
    + [memmove](#memmove)
    + [memset](#memset)
    + [mktime](#mktime)
    + [mtx\_destroy](#mtx_destroy)
    + [mtx\_init](#mtx_init)
    + [mtx\_lock](#mtx_lock)
    + [mtx\_timedlock](#mtx_timedlock)
    + [mtx\_trylock](#mtx_trylock)
    + [mtx\_unlock](#mtx_unlock)
    + [perror](#perror)
    + [printf](#printf)
    + [putc](#putc)
    + [putchar](#putchar)
    + [puts](#puts)
    + [putwc](#putwc)
    + [putwchar](#putwchar)
    + [qsort](#qsort)
    + [quick\_exit](#quick_exit)
    + [raise](#raise)
    + [rand](#rand)
    + [realloc](#realloc)
    + [remove](#remove)
    + [rename](#rename)
    + [rewind](#rewind)
    + [scanf](#scanf)
    + [setbuf](#setbuf)
    + [setjmp](#setjmp)
    + [setlocale](#setlocale)
    + [setvbuf](#setvbuf)
    + [signal](#signal)
    + [snprintf](#snprintf)
    + [srand](#srand)
    + [sscanf](#sscanf)
    + [strcat](#strcat)
    + [strchr](#strchr)
    + [strcmp](#strcmp)
    + [strcoll](#strcoll)
    + [strcpn](#strcpn)
    + [strcpy](#strcpy)
    + [strcspn](#strcspn)
    + [strerror](#strerror)
    + [strftime](#strftime)
    + [strlen](#strlen)
    + [strncat](#strncat)
    + [strncmp](#strncmp)
    + [strncpy](#strncpy)
    + [strpbrk](#strpbrk)
    + [strrchr](#strrchr)
    + [strtod](#strtod)
    + [strtof](#strtof)
    + [strtok](#strtok)
    + [strtol](#strtol)
    + [strtoll](#strtoll)
    + [strtoul](#strtoul)
    + [strtoull](#strtoull)
    + [strxfrm](#strxfrm)
    + [swprintf](#swprintf)
    + [swscanf](#swscanf)
    + [system](#system)
    + [thrd\_create](#thrd_create)
    + [thrd\_current](#thrd_current)
    + [thrd\_detach](#thrd_detach)
    + [thrd\_equal](#thrd_equal)
    + [thrd\_exit](#thrd_exit)
    + [thrd\_join](#thrd_join)
    + [thrd\_sleep](#thrd_sleep)
    + [thrd\_yield](#thrd_yield)
    + [time](#time)
    + [timespec\_get](#timespec_get)
    + [tmpfile](#tmpfile)
    + [tmpnam](#tmpnam)
    + [to\_stream](#to_stream)
    + [tolower](#tolower)
    + [toupper](#toupper)
    + [towctrans](#towctrans)
    + [towlower](#towlower)
    + [towupper](#towupper)
    + [tss\_create](#tss_create)
    + [tss\_delete](#tss_delete)
    + [tss\_get](#tss_get)
    + [tss\_set](#tss_set)
    + [ungetc](#ungetc)
    + [ungetwc](#ungetwc)
    + [va\_copy](#va_copy)
    + [va\_end](#va_end)
    + [va\_start](#va_start)
    + [vfprintf](#vfprintf)
    + [vfscanf](#vfscanf)
    + [vfwprintf](#vfwprintf)
    + [vfwscanf](#vfwscanf)
    + [vprintf](#vprintf)
    + [vscanf](#vscanf)
    + [vsnprintf](#vsnprintf)
    + [vsprintf](#vsprintf)
    + [vsscanf](#vsscanf)
    + [vswprintf](#vswprintf)
    + [vswscanf](#vswscanf)
    + [vwprintf](#vwprintf)
    + [vwscanf](#vwscanf)
    + [wcrtomb](#wcrtomb)
    + [wcscat](#wcscat)
    + [wcschr](#wcschr)
    + [wcscmp](#wcscmp)
    + [wcscoll](#wcscoll)
    + [wcscpy](#wcscpy)
    + [wcscspn](#wcscspn)
    + [wcsftime](#wcsftime)
    + [wcslen](#wcslen)
    + [wcsncat](#wcsncat)
    + [wcsncmp](#wcsncmp)
    + [wcsncpy](#wcsncpy)
    + [wcspbrk](#wcspbrk)
    + [wcsrchr](#wcsrchr)
    + [wcsrtombs](#wcsrtombs)
    + [wcsspn](#wcsspn)
    + [wcsstr](#wcsstr)
    + [wcstod](#wcstod)
    + [wcstof](#wcstof)
    + [wcstok](#wcstok)
    + [wcstol](#wcstol)
    + [wcstoll](#wcstoll)
    + [wcstombs](#wcstombs)
    + [wcstoul](#wcstoul)
    + [wcstoull](#wcstoull)
    + [wcsxfrm](#wcsxfrm)
    + [wctob](#wctob)
    + [wctomb](#wctomb)
    + [wctrans](#wctrans)
    + [wctype](#wctype)
    + [wmemchr](#wmemchr)
    + [wmemcmp](#wmemcmp)
    + [wmemcpy](#wmemcpy)
    + [wmemmove](#wmemmove)
    + [wmemset](#wmemset)
    + [wprintf](#wprintf)
    + [wscanf](#wscanf)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [acos](#acos)
    + [acosf](#acosf)
    + [acosh](#acosh)
    + [acoshf](#acoshf)
    + [asin](#asin)
    + [asinf](#asinf)
    + [asinh](#asinh)
    + [asinhf](#asinhf)
    + [atan](#atan)
    + [atan2](#atan2)
    + [atan2f](#atan2f)
    + [atanf](#atanf)
    + [atanh](#atanh)
    + [atanhf](#atanhf)
    + [cbrt](#cbrt)
    + [cbrtf](#cbrtf)
    + [ceil](#ceil)
    + [ceilf](#ceilf)
    + [copysign](#copysign)
    + [copysignf](#copysignf)
    + [cos](#cos)
    + [cosf](#cosf)
    + [cosh](#cosh)
    + [coshf](#coshf)
    + [erf](#erf)
    + [erfc](#erfc)
    + [erfcf](#erfcf)
    + [erff](#erff)
    + [exp](#exp)
    + [exp2](#exp2)
    + [exp2f](#exp2f)
    + [expf](#expf)
    + [expm1](#expm1)
    + [expm1f](#expm1f)
    + [fabs](#fabs)
    + [fabsf](#fabsf)
    + [fdim](#fdim)
    + [fdimf](#fdimf)
    + [floor](#floor)
    + [floorf](#floorf)
    + [fma](#fma)
    + [fmaf](#fmaf)
    + [fmax](#fmax)
    + [fmaxf](#fmaxf)
    + [fmin](#fmin)
    + [fminf](#fminf)
    + [fmod](#fmod)
    + [fmodf](#fmodf)
    + [fpclassify](#fpclassify)
    + [frexp](#frexp)
    + [frexpf](#frexpf)
    + [hypot](#hypot)
    + [hypotf](#hypotf)
    + [ilogb](#ilogb)
    + [ilogbf](#ilogbf)
    + [ldexp](#ldexp)
    + [ldexpf](#ldexpf)
    + [lgamma](#lgamma)
    + [lgammaf](#lgammaf)
    + [llrint](#llrint)
    + [llrintf](#llrintf)
    + [llround](#llround)
    + [llroundf](#llroundf)
    + [log](#log)
    + [log10](#log10)
    + [log10f](#log10f)
    + [log1p](#log1p)
    + [log1pf](#log1pf)
    + [log2](#log2)
    + [log2f](#log2f)
    + [logb](#logb)
    + [logbf](#logbf)
    + [logf](#logf)
    + [lrint](#lrint)
    + [lrintf](#lrintf)
    + [lround](#lround)
    + [lroundf](#lroundf)
    + [modf](#modf)
    + [modff](#modff)
    + [nan](#nan)
    + [nanf](#nanf)
    + [nearbyint](#nearbyint)
    + [nearbyintf](#nearbyintf)
    + [nextafter](#nextafter)
    + [nextafterf](#nextafterf)
    + [pow](#pow)
    + [powf](#powf)
    + [remainder](#remainder)
    + [remainderf](#remainderf)
    + [remquo](#remquo)
    + [remquof](#remquof)
    + [rint](#rint)
    + [rintf](#rintf)
    + [round](#round)
    + [roundf](#roundf)
    + [scalbln](#scalbln)
    + [scalblnf](#scalblnf)
    + [scalbn](#scalbn)
    + [scalbnf](#scalbnf)
    + [signbit](#signbit)
    + [sin](#sin)
    + [sinf](#sinf)
    + [sinh](#sinh)
    + [sinhf](#sinhf)
    + [sqrt](#sqrt)
    + [sqrtf](#sqrtf)
    + [tan](#tan)
    + [tanf](#tanf)
    + [tanh](#tanh)
    + [tanhf](#tanhf)
    + [tgamma](#tgamma)
    + [tgammaf](#tgammaf)
    + [trunc](#trunc)
    + [truncf](#truncf)
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