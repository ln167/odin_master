package dynlib - pkg.odin-lang.org 






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



Current Package: *[dynlib](/core/dynlib)*

  

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
2. [dynlib](/core/dynlib)

# package core:dynlib [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Cross-platform loading of shared libraries/DLLs and their symbols.

The behaviour of dynamically loaded libraries is specific to the target platform of the program.
For in depth detail on the underlying behaviour please refer to your target platform's documentation.

For a full example, see: [core/dynlib/example](https://github.com/odin-lang/Odin/tree/master/core/dynlib/example)

## Index

Types (1)

* [Library](#Library)

Constants (1)

* [LIBRARY\_FILE\_EXTENSION](#LIBRARY_FILE_EXTENSION)

Variables (0)

This section is empty.

Procedures (5)

* [initialize\_symbols](#initialize_symbols)
* [last\_error](#last_error)
* [load\_library](#load_library)
* [symbol\_address](#symbol_address)
* [unload\_library](#unload_library)

Procedure Groups (0)

This section is empty.

## Types

### [Library ¶](#Library) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin#L13)

```
Library :: distinct rawptr
```

 

A handle to a dynamically loaded library.




##### Related Procedures With Parameters

* [symbol\_address](/core/dynlib/#symbol_address)
* [unload\_library](/core/dynlib/#unload_library)



##### Related Procedures With Returns

* [load\_library](/core/dynlib/#load_library)

## Constants

### [LIBRARY\_FILE\_EXTENSION ¶](#LIBRARY_FILE_EXTENSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin#L18)

```
LIBRARY_FILE_EXTENSION :: _LIBRARY_FILE_EXTENSION
```

 

The file extension for dynamic libraries on the target OS.

## Variables

This section is empty.

## Procedures

### [initialize\_symbols ¶](#initialize_symbols) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin#L125)

```
initialize_symbols :: proc(symbol_table: ^$T, library_path: string, symbol_prefix: string = "", handle_field_name: string = "__handle") -> (count: int = -1, ok: bool = false) {…}
```

 

Scans a dynamic library for symbols matching a struct's members, assigning found procedure pointers to the corresponding entry.
Optionally takes a symbol prefix added to the struct's member name to construct the symbol looked up in the library.
Optionally also takes the struct member to assign the library handle to, `__handle` by default.

This allows using one struct to hold library handles and symbol pointers for more than 1 dynamic library.

Loading the same library twice unloads the previous incarnation, allowing for straightforward hot reload support.

**Returns:**  
`-1, false` if the library could not be loaded.
The number of symbols assigned on success. `ok` = true if `count` > 0

See doc.odin for an example.

### [last\_error ¶](#last_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin#L190)

```
last_error :: proc() -> string {…}
```

 

Returns an error message for the last failed procedure call.

### [load\_library ¶](#load_library) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin#L45)

```
load_library :: proc(path: string, global_symbols: bool = false, allocator := context.temp_allocator) -> (library: Library, did_load: bool) {…}
```

 

Loads a dynamic library from the filesystem. The paramater `global_symbols` makes the symbols in the loaded
library available to resolve references in subsequently loaded libraries.

The parameter `global_symbols` is only used for the platforms `linux`, `darwin`, `freebsd` and `openbsd`.
On `windows` this paramater is ignored.

The underlying behaviour is platform specific.
On `linux`, `darwin`, `freebsd` and `openbsd` refer to `dlopen`.
On `windows` refer to `LoadLibraryW`. Also temporarily needs an allocator to convert a string.

**Example:**

```
import "core:dynlib"
import "core:fmt"

load_my_library :: proc() {
	LIBRARY_PATH :: "my_library.dll"
	library, ok := dynlib.load_library(LIBRARY_PATH)
	if ! ok {
		fmt.eprintln(dynlib.last_error())
		return
	}
	fmt.println("The library %q was successfully loaded", LIBRARY_PATH)
}
```

### [symbol\_address ¶](#symbol_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin#L106)

```
symbol_address :: proc(library: Library, symbol: string, allocator := context.temp_allocator) -> (ptr: rawptr, found: bool) #optional_ok {…}
```

 

Loads the address of a procedure/variable from a dynamic library.

The underlying behaviour is platform specific.
On `linux`, `darwin`, `freebsd` and `openbsd` refer to `dlsym`.
On `windows` refer to `GetProcAddress`. Also temporarily needs an allocator to convert a string.

**Example:**

```
import "core:dynlib"
import "core:fmt"

find_a_in_my_library :: proc() {
	LIBRARY_PATH :: "my_library.dll"
	library, ok := dynlib.load_library(LIBRARY_PATH)
	if ! ok {
		fmt.eprintln(dynlib.last_error())
		return
	}

	a, found_a := dynlib.symbol_address(library, "a")
	if found_a {
		fmt.printf("The symbol %q was found at the address %v", "a", a)
	} else {
		fmt.eprintln(dynlib.last_error())
	}
}
```

### [unload\_library ¶](#unload_library) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin#L75)

```
unload_library :: proc(library: Library) -> (did_unload: bool) {…}
```

 

Unloads a dynamic library.

The underlying behaviour is platform specific.
On `linux`, `darwin`, `freebsd` and `openbsd` refer to `dlclose`.
On `windows` refer to `FreeLibrary`.

**Example:**

```
import "core:dynlib"
import "core:fmt"

load_then_unload_my_library :: proc() {
	LIBRARY_PATH :: "my_library.dll"
	library, ok := dynlib.load_library(LIBRARY_PATH)
	if ! ok {
		fmt.eprintln(dynlib.last_error())
		return
	}
	did_unload := dynlib.unload_library(library)
	if ! did_unload {
		fmt.eprintln(dynlib.last_error())
		return
	}
	fmt.println("The library %q was successfully unloaded", LIBRARY_PATH)
}
```

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/dynlib/doc.odin)
* [lib.odin](https://github.com/odin-lang/Odin/tree/master/core/dynlib/lib.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.306870400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Library](#Library)
  * [Constants](#pkg-Constants)
    + [LIBRARY\_FILE\_EXTENSION](#LIBRARY_FILE_EXTENSION)
  * [Procedures](#pkg-Procedures)
    + [initialize\_symbols](#initialize_symbols)
    + [last\_error](#last_error)
    + [load\_library](#load_library)
    + [symbol\_address](#symbol_address)
    + [unload\_library](#unload_library)
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