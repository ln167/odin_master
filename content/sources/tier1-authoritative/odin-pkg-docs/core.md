core library - pkg.odin-lang.org 






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

# core Library Collection

* License: [zlib](https://github.com/odin-lang/Odin/tree/master/LICENSE)
* Repository: <https://github.com/odin-lang/Odin/tree/master/core>

⌘K

Ctrl+K

or

/

---



## Directories

|  |  |
| --- | --- |
| [bufio](/core/bufio) | Wraps an `io.Stream` interface to provide buffered I/O. |
| [bytes](/core/bytes) | Procedures for manipulation of `[]byte` slices. |
| [c](/core/c) | Defines the basic types used by `C` programs for foreign function and data structure interop. |
| [libc](/core/c/libc/) | Declares the commonly used things in `libc` (`C` standard library). |
| [compress](/core/compress) | A collection of utilities to aid with other `compress`ion packages. |
| [gzip](/core/compress/gzip/) | A small `GZIP` unpacker. |
| [shoco](/core/compress/shoco/) | `Shoco` short string compression and decompression. |
| [zlib](/core/compress/zlib/) | `Deflate` decompression of raw and `ZLIB`-type streams. |
| container |  |
| [avl](/core/container/avl/) | A non-intrusive and non-recursive implementation of `AVL` trees. |
| [bit\_array](/core/container/bit_array/) | A dynamically-sized array of bits. |
| [handle\_map](/core/container/handle_map/) | Handle-based map using either fixed-length arrays, or exponential arrays from "core:container/xar". |
| [intrusive/list](/core/container/intrusive/list/) | An intrusive doubly-linked list. |
| [lru](/core/container/lru/) | A least-recently-used (`LRU`) cache. It automatically removes older entries if its capacity is reached. |
| [pool](/core/container/pool/) |  |
| [priority\_queue](/core/container/priority_queue/) | A priority queue data structure. |
| [queue](/core/container/queue/) | A dynamically resizable double-ended queue/ring-buffer. |
| [rbtree](/core/container/rbtree/) | A red-black tree with the same API as our AVL tree. |
| [small\_array](/core/container/small_array/) | Deprecation Notice: Prefer using `[dynamic; N]T` (fixed capacity dynamic arrays). |
| [topological\_sort](/core/container/topological_sort/) | A generic `O(V+E)` topological sorter implementation. This is the fastest known method for topological sorting. |
| [xar](/core/container/xar/) | Exponential Array (Xar). |
| [crypto](/core/crypto) | A selection of cryptography algorithms and useful helper routines. |
| [aead](/core/crypto/aead/) | A generic interface to Authenticated Encryption with Associated Data (`AEAD`) algorithms. |
| [aegis](/core/crypto/aegis/) | `AEGIS-128L` and `AEGIS-256` AEAD algorithms. |
| [aes](/core/crypto/aes/) | The `AES` block cipher and some common modes. |
| [argon2id](/core/crypto/argon2id/) | package argon2id implements the Argon2id password hashing algorithm. |
| [blake2b](/core/crypto/blake2b/) | `BLAKE2b` hash algorithm. |
| [blake2s](/core/crypto/blake2s/) | `BLAKE2s` hash algorithm. |
| [chacha20](/core/crypto/chacha20/) | `ChaCha20` and `XChaCha20` stream ciphers. |
| [chacha20poly1305](/core/crypto/chacha20poly1305/) | `AEAD_CHACHA20_POLY1305` and `AEAD_XChaCha20_Poly1305` algorithms. |
| [deoxysii](/core/crypto/deoxysii/) | `Deoxys-II-256` Authenticated Encryption with Additional Data (`AEAD`) algorithm. |
| [ecdh](/core/crypto/ecdh/) | A generic interface to Elliptic Curve Diffie-Hellman key exchange. |
| [ecdsa](/core/crypto/ecdsa/) | Elliptic Curve Digital Signature Algorithm per SEC 2.0 section 4.1. |
| [ed25519](/core/crypto/ed25519/) | `Ed25519` EdDSA signature algorithm. |
| [hash](/core/crypto/hash/) | A generic interface to the supported hash algorithms. |
| [hkdf](/core/crypto/hkdf/) | `HKDF` HMAC-based Extract-and-Expand Key Derivation Function. |
| [hmac](/core/crypto/hmac/) | `HMAC` message authentication code (`MAC`) algorithm. |
| [kmac](/core/crypto/kmac/) | `KMAC` message authentication code (`MAC`) algorithm. |
| [legacy/keccak](/core/crypto/legacy/keccak/) | `Keccak` hash algorithm family. |
| [legacy/md5](/core/crypto/legacy/md5/) | `MD5` hash algorithm. |
| [legacy/sha1](/core/crypto/legacy/sha1/) | `SHA1` hash algorithm. |
| [pbkdf2](/core/crypto/pbkdf2/) | `PBKDF2` password-based key derivation function. |
| [poly1305](/core/crypto/poly1305/) | `Poly1305` one-time MAC algorithm. |
| [ristretto255](/core/crypto/ristretto255/) | Ristretto255 prime-order group. |
| [sha2](/core/crypto/sha2/) | `SHA2` hash algorithm family. |
| [sha3](/core/crypto/sha3/) | `SHA3` hash algorithm family. |
| [shake](/core/crypto/shake/) | `SHAKE` and `cSHAKE` XOF algorithm families. |
| [sm3](/core/crypto/sm3/) | `SM3` hash algorithm. |
| [tuplehash](/core/crypto/tuplehash/) | `TupleHash` and `TupleHashXOF` algorithms. |
| [x25519](/core/crypto/x25519/) | `X25519` (aka `curve25519`) Elliptic-Curve Diffie-Hellman key exchange protocol. |
| [x448](/core/crypto/x448/) | `X448` (aka `curve448`) Elliptic-Curve Diffie-Hellman key exchange protocol. |
| debug |  |
| [pe](/core/debug/pe/) | A reader for the Windows `PE` executable format for debug purposes. |
| [trace](/core/debug/trace/) | Stack trace library. Only works when debug symbols are enabled using `-debug`. |
| [dynlib](/core/dynlib) | Cross-platform loading of shared libraries/DLLs and their symbols. |
| encoding |  |
| [base32](/core/encoding/base32/) | `Base32` encoding and decoding, as specified in [RFC 4648](https://www.rfc-editor.org/rfc/rfc4648.html). |
| [base64](/core/encoding/base64/) | `Base64` encoding and decoding. |
| [cbor](/core/encoding/cbor/) | Encodes and decodes types from/into [RCF 8949](https://www.rfc-editor.org/rfc/rfc8949.html) compatible `CBOR` binary. |
| [csv](/core/encoding/csv/) | Reader and writer for comma-separated values (`CSV`) files, per [RFC 4180](https://tools.ietf.org/html/rfc4180.html). |
| [endian](/core/encoding/endian/) | A simple translation between bytes and numbers with specific endian encodings. |
| [entity](/core/encoding/entity/) | Encode and decode `rune`s to/from a Unicode `&entity`. |
| [hex](/core/encoding/hex/) | Encoding and decoding of hex-encoded binary, e.g. `0x23` -> `#`. |
| [hxa](/core/encoding/hxa/) | Eskil Steenberg's `HxA` 3D asset interchange format. |
| [ini](/core/encoding/ini/) | Reader and writer for a variant of the `.ini` file format with `key = value` entries in `[sections]`. |
| [json](/core/encoding/json/) | Encoding and decoding JSON in strict `JSON`, [JSON5](https://json5.org/) and [BitSquid](https://bitsquid.blogspot.com/2009/10/simplified-json-notation.html) variants. |
| [uuid](/core/encoding/uuid/) | Universally Unique Identifiers (`UUID`) according to [RFC 4122](https://tools.ietf.org/html/rfc4122.html), with additions from [RFC 9562](https://tools.ietf.org/html/rfc9562.html). |
| [uuid/legacy](/core/encoding/uuid/legacy/) | Versions 3 and 5 of `UUID` generation, both of which use legacy (`MD5` + `SHA1`) hashes. |
| [varint](/core/encoding/varint/) | `LEB128` variable integer encoding and decoding, as used by `DWARF` & `DEX` files. |
| [xml](/core/encoding/xml/) | A parser for a useful subset of the `XML` specification. |
| [flags](/core/flags) | Command-line argument parser. |
| [fmt](/core/fmt) | Formatted `I/O` with procedures similar to `C`'s printf and `Python`'s format. |
| [hash](/core/hash) | `crc32`, `crc64`, `adler32`, `djb`, `fnv`, `jenkins`, `murmur` and other hashes. |
| [xxhash](/core/hash/xxhash/) | Yann Collet's `xxhash`. |
| [image](/core/image) | General 2D image types and procedures to be used with other image related packages. |
| [bmp](/core/image/bmp/) | Reader and writer for Microsoft `BMP` images. |
| [jpeg](/core/image/jpeg/) | Reader for baseline `JPEG` images. |
| [netpbm](/core/image/netpbm/) | Readers and writers for `PBM`, `PGM`, `PPM`, `PAM` and `PFM` images. |
| [png](/core/image/png/) | Reader for `PNG` images. |
| [qoi](/core/image/qoi/) | Reader and writer for `QOI` images. |
| [tga](/core/image/tga/) | Reader and writer for 8-bit RGB and RGBA `TGA` images. |
| [io](/core/io) | Basic interfaces for generic data stream primitives. |
| [log](/core/log) | Implementations of the `context.Logger` interface. |
| [math](/core/math) | Typical trignometric and other basic math routines. |
| [big](/core/math/big/) | Arbitrary precision integers and rationals. |
| [bits](/core/math/bits/) | Bit-level operations, including the ability to set or toggle individual bits in an integer. |
| [cmplx](/core/math/cmplx/) | Trigonometric and other mathematic operations on complex numbers. |
| [ease](/core/math/ease/) | Easing procedures used for animations. |
| [fixed](/core/math/fixed/) | Fixed-point rational numbers and conversion to/from `f64`. |
| [linalg](/core/math/linalg/) | Linear algebra procedures useful for 3D spatial transformations. |
| [linalg/glsl](/core/math/linalg/glsl/) | `GLSL`-like mathematics library plus numerous other utility procedures. |
| [linalg/hlsl](/core/math/linalg/hlsl/) | `HLSL`-like mathematics library plus numerous other utility procedures. |
| [noise](/core/math/noise/) | [OpenSimplex2](https://github.com/KdotJPG/OpenSimplex2) noise algorithm. |
| [rand](/core/math/rand/) | Random number generators. |
| [mem](/core/mem) | Various allocators and provides helpers for dealing with memory, pointers and slices. |
| [tlsf](/core/mem/tlsf/) | Two Level Segregated Fit memory allocator. |
| [virtual](/core/mem/virtual/) | A platform agnostic way to reserve/commit/decommit virtual memory. |
| [nbio](/core/nbio) | package nbio implements a non-blocking I/O and event loop abstraction layer |
| [net](/core/net) | Cross-platform Berkeley Sockets, `DNS` resolution and associated procedures. |
| odin |  |
| [ast](/core/odin/ast/) | Abstract Syntax Tree for the `Odin` parser packages. |
| [doc-format](/core/odin/doc-format/) | The `.odin-doc` file format, as used by these package docs at `pkg.odin-lang.org`. |
| [parser](/core/odin/parser/) | The `Odin` file parser to be used in tooling. |
| [tokenizer](/core/odin/tokenizer/) | The tokenizer (lexer) for `Odin` files, used to create tooling. |
| [os](/core/os) | A cross-platform API for things like `I/O`, intended to be uniform across all operating systems. |
| [old](/core/os/old/) | The original implementation of `core:os`, to be removed in Q2 2026. |
| path |  |
| [filepath](/core/path/filepath/) | Process paths using either forward slashes or backslashes depending on the operating system. |
| [slashpath](/core/path/slashpath/) | Process paths separated by forward slashes only, e.g. paths in `URL`s. |
| prof |  |
| [spall](/core/prof/spall/) | Profiling using the "`spall`" format. |
| [reflect](/core/reflect) | Utility procedures and types to perform runtime type introspection/reflection (`RTTI`). |
| [relative](/core/relative) | Relative pointers and slices. |
| [simd](/core/simd) | Cross-platform `SIMD` support types and procedures. |
| [x86](/core/simd/x86/) | `SIMD` intrinsics specific to the Intel `x86` and `AMD64` architectures. |
| [slice](/core/slice) | Utility procedures for working with slices, including sorting and searching them. |
| [heap](/core/slice/heap/) | A generic in-place max heap on a slice for any type. |
| [sort](/core/sort) | A sorting interface and algorithms. |
| [strconv](/core/strconv) | Conversions to and from `string` representations of other data types like integers and booleans. |
| [decimal](/core/strconv/decimal/) | Multiple precision decimal numbers for use by the `strconv` package. |
| [strings](/core/strings) | A `string` builder, as well as procedures to manipulate `UTF-8` encoded strings. |
| [sync](/core/sync) | Various synchronization primitives useful to mediate threads' access to shared memory. |
| [chan](/core/sync/chan/) | High-level and low-level channel types for thread-safe communication. |
| sys | Platform specific packages - documentation may be for a specific platform only |
| [darwin](/core/sys/darwin/) | *(Generated with `-target:darwin_arm64`, please read the source code directly)* |
| [darwin/CoreFoundation](/core/sys/darwin/CoreFoundation/) | *(Generated with `-target:darwin_arm64`, please read the source code directly)* |
| [darwin/CoreGraphics](/core/sys/darwin/CoreGraphics/) | *(Generated with `-target:windows_amd64`, please read the source code directly)* |
| [darwin/Foundation](/core/sys/darwin/Foundation/) | *(Generated with `-target:darwin_arm64`, please read the source code directly)* |
| [darwin/Security](/core/sys/darwin/Security/) | *(Generated with `-target:darwin_arm64`, please read the source code directly)* |
| [freebsd](/core/sys/freebsd/) | *(Generated with `-target:freebsd_amd64`, please read the source code directly)* |
| [haiku](/core/sys/haiku/) | *(Generated with `-target:haiku_arm64`, please read the source code directly)* |
| [info](/core/sys/info/) | Gathers system information on `Windows`, `Linux`, `macOS`, `FreeBSD` & `OpenBSD`. |
| [kqueue](/core/sys/kqueue/) | *(Generated with `-target:darwin_arm64`, please read the source code directly)* |
| [linux](/core/sys/linux/) | *(Generated with `-target:linux_arm64`, please read the source code directly)* |
| [linux/uring](/core/sys/linux/uring/) | Wrapper/convenience package over the raw io\_uring syscalls, providing help with setup, creation, and operating the ring. |
| [orca](/core/sys/orca/) | *(Generated with `-target:windows_amd64`, please read the source code directly)* |
| [posix](/core/sys/posix/) | Raw bindings for most `POSIX` APIs. |
| [unix](/core/sys/unix/) | *(Generated with `-target:linux_arm64`, please read the source code directly)* |
| [valgrind](/core/sys/valgrind/) | *(Generated with `-target:windows_amd64`, please read the source code directly)* |
| [wasm/js](/core/sys/wasm/js/) | *(Generated with `-target:js_wasm32`, please read the source code directly)* |
| [wasm/wasi](/core/sys/wasm/wasi/) | *(Generated with `-target:js_wasm32`, please read the source code directly)* |
| [windows](/core/sys/windows/) | *(Generated with `-target:windows_amd64`, please read the source code directly)* |
| [terminal](/core/terminal) | Interaction with the command line interface (`CLI`) of the system. |
| [ansi](/core/terminal/ansi/) | Constant references to many widely-supported `ANSI` escape codes. |
| [testing](/core/testing) | The implementation of the `odin test` runner and procedures user tests can use for this purpose. |
| text |  |
| [edit](/core/text/edit/) | Text edit primitives to use in a text box. |
| [i18n](/core/text/i18n/) | A flexible and easy way to add translations/internationalization (`i18n`) to applications. |
| [match](/core/text/match/) | A Lua-like string match algorithm. |
| [regex](/core/text/regex/) | A complete suite for using Regular Expressions to match and capture text. |
| [regex/common](/core/text/regex/common/) | This package helps break dependency cycles for the regular expression engine. |
| [regex/compiler](/core/text/regex/compiler/) | A bytecode compiler for the virtual machine included alongside it. |
| [regex/optimizer](/core/text/regex/optimizer/) | An optimizer for the regular expression AST. |
| [regex/parser](/core/text/regex/parser/) | A `Pratt` parser (a.k.a. Top-Down Operator Precedence parser) for parsing tokenized regular expression patterns. |
| [regex/tokenizer](/core/text/regex/tokenizer/) | Tokenizes regular expressions. |
| [regex/virtual\_machine](/core/text/regex/virtual_machine/) | A threaded virtual machine for interpreting regular expressions. |
| [scanner](/core/text/scanner/) | A scanner and tokenizer for UTF-8-encoded text. |
| [table](/core/text/table/) | Plain-text/markdown/HTML/custom rendering of tables. |
| [thread](/core/thread) | Multi-threading operations to spawn threads and thread pools. |
| [time](/core/time) | `Time`-related procedures and types, including `sleep`, `now`, and string formatting of moments. |
| [unicode](/core/unicode) | Data and procedures to test properties of `Unicode` code points. |
| [utf16](/core/unicode/utf16/) | Procedures and constants to support text-encoding in the `UTF-16` character encoding. |
| [utf8](/core/unicode/utf8/) | Procedures and constants to support text-encoding in the `UTF-8` character encoding. |
| [utf8/utf8string](/core/unicode/utf8/utf8string/) | A convenient and efficient way to index strings by `Unicode` code point (`rune`) rather than byte. |



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