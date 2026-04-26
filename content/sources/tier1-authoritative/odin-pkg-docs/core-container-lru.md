package container/lru - pkg.odin-lang.org 






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



Current Package: *[container\_lru](/core/container/lru)*

  

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
2. container
3. [lru](/core/container/lru)

# package core:container/lru [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A least-recently-used (`LRU`) cache. It automatically removes older entries if its capacity is reached.

## Index

Types (2)

* [Cache](#Cache)
* [Node](#Node)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (9)

* [clear](#clear)
* [destroy](#destroy)
* [exists](#exists)
* [get](#get)
* [get\_ptr](#get_ptr)
* [init](#init)
* [peek](#peek)
* [remove](#remove)
* [set](#set)

Procedure Groups (0)

This section is empty.

## Types

### [Cache ¶](#Cache) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L18)

```
Cache :: struct($Key: typeid, $Value: typeid) where intrinsics.type_is_valid_map_key(Key) {
	… // See source for fields
}
```

 

Cache is an LRU cache. It automatically removes entries as new entries are
added if the capacity is reached. Entries are removed based on how recently
they were used where the oldest entries are removed first.




##### Related Procedures With Parameters

* [clear](/core/container/lru/#clear)
* [destroy](/core/container/lru/#destroy)
* [exists](/core/container/lru/#exists)
* [get](/core/container/lru/#get)
* [get\_ptr](/core/container/lru/#get_ptr)
* [init](/core/container/lru/#init)
* [peek](/core/container/lru/#peek)
* [remove](/core/container/lru/#remove)
* [set](/core/container/lru/#set)

### [Node ¶](#Node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L9)

```
Node :: struct($Key: typeid, $Value: typeid) where intrinsics.type_is_valid_map_key(Key) {
	… // See source for fields
}
```

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [clear ¶](#clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L47)

```
clear :: proc(c: ^$C/Cache($Key, $Value), call_on_remove: bool) {…}
```

 

clear the contents of a Cache

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L41)

```
destroy :: proc(c: ^$C/Cache($Key, $Value), call_on_remove: bool) {…}
```

 

destroy deinitializes a Cachem

### [exists ¶](#exists) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L122)

```
exists :: proc(c: ^$C/Cache($Key, $Value), key: $Key) -> bool {…}
```

 

exists checks for the existence of a value from a given key without updating the recent usage.

### [get ¶](#get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L88)

```
get :: proc(c: ^$C/Cache($Key, $Value), key: $Key) -> (value: $$deferred_return, ok: bool) #optional_ok {…}
```

 

get a value from the cache from a given key. This operation updates the usage of the item.

### [get\_ptr ¶](#get_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L100)

```
get_ptr :: proc(c: ^$C/Cache($Key, $Value), key: $Key) -> (value: $$deferred_return, ok: bool) #optional_ok {…}
```

 

get\_ptr gets the pointer to a value the cache from a given key. This operation updates the usage of the item.

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L34)

```
init :: proc(c: ^$C/Cache($Key, $Value), capacity: int, entries_allocator := context.allocator, node_allocator := context.allocator) {…}
```

 

init initializes a Cache

### [peek ¶](#peek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L112)

```
peek :: proc(c: ^$C/Cache($Key, $Value), key: $Key) -> (value: $$deferred_return, ok: bool) #optional_ok {…}
```

 

peek gets the value from the cache from a given key without updating the recent usage.

### [remove ¶](#remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L127)

```
remove :: proc(c: ^$C/Cache($Key, $Value), key: $Key) -> bool {…}
```

 

remove removes an item from the cache.

### [set ¶](#set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin#L61)

```
set :: proc(c: ^$C/Cache($Key, $Value), key: $Key, value: $Value) -> runtime.Allocator_Error {…}
```

 

set the given key value pair. This operation updates the recent usage of the item.

## Procedure Groups

This section is empty.

## Source Files

* [lru\_cache.odin](https://github.com/odin-lang/Odin/tree/master/core/container/lru/lru_cache.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.083133200 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Cache](#Cache)
    + [Node](#Node)
  * [Procedures](#pkg-Procedures)
    + [clear](#clear)
    + [destroy](#destroy)
    + [exists](#exists)
    + [get](#get)
    + [get\_ptr](#get_ptr)
    + [init](#init)
    + [peek](#peek)
    + [remove](#remove)
    + [set](#set)
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