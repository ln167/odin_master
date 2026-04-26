package container/rbtree - pkg.odin-lang.org 






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



Current Package: *[container\_rbtree](/core/container/rbtree)*

  

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
3. [rbtree](/core/container/rbtree)

# package core:container/rbtree [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A red-black tree with the same API as our AVL tree.

## Index

Types (6)

* [Color](#Color)
* [Direction](#Direction)
* [Iterator](#Iterator)
* [Node](#Node)
* [Ordering](#Ordering)
* [Tree](#Tree)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (17)

* [destroy](#destroy)
* [find](#find)
* [find\_or\_insert](#find_or_insert)
* [find\_value](#find_value)
* [first](#first)
* [init\_cmp](#init_cmp)
* [init\_ordered](#init_ordered)
* [iterator](#iterator)
* [iterator\_from\_pos](#iterator_from_pos)
* [iterator\_get](#iterator_get)
* [iterator\_next](#iterator_next)
* [iterator\_remove](#iterator_remove)
* [last](#last)
* [len](#len)
* [node\_color](#node_color)
* [remove\_key](#remove_key)
* [remove\_node](#remove_node)

Procedure Groups (2)

* [init](#init)
* [remove](#remove)

## Types

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L52)

```
Color :: enum uintptr {
	Black = 0, 
	Red   = 1, 
}
```

 

Might store this in the node pointer in the future, but that'll require a decent amount of rework to pass ^^N instead of ^N




##### Related Procedures With Returns

* [node\_color](/core/container/rbtree/#node_color)

### [Direction ¶](#Direction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L12)

```
Direction :: enum i8 {
	// Backward is the in-order backwards direction.
	Backward = -1, 
	// Forward is the in-order forwards direction.
	Forward  = 1, 
}
```

 

Direction specifies the traversal direction for a tree iterator.




##### Related Procedures With Parameters

* [iterator](/core/container/rbtree/#iterator)
* [iterator\_from\_pos](/core/container/rbtree/#iterator_from_pos)

### [Iterator ¶](#Iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L58)

```
Iterator :: struct($Key: typeid, $Value: typeid) where intrinsics.type_is_valid_map_key(Key) {
	… // See source for fields
}
```

 

Iterator is a tree iterator.

WARNING: It is unsafe to modify the tree while iterating, except via
the iterator\_remove method.




##### Related Procedures With Parameters

* [iterator\_get](/core/container/rbtree/#iterator_get)
* [iterator\_next](/core/container/rbtree/#iterator_next)
* [iterator\_remove](/core/container/rbtree/#iterator_remove)

### [Node ¶](#Node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L41)

```
Node :: struct($Key: typeid, $Value: typeid) where intrinsics.type_is_valid_map_key(Key) {
	… // See source for fields
}
```

 

Node is a red-black tree node.

WARNING: It is unsafe to mutate value if the node is part of a tree
if doing so will alter the Node's sort position relative to other
elements in the tree.




##### Related Procedures With Parameters

* [iterator\_from\_pos](/core/container/rbtree/#iterator_from_pos)
* [node\_color](/core/container/rbtree/#node_color)
* [remove\_node](/core/container/rbtree/#remove_node)
* [remove](/core/container/rbtree/#remove) *(procedure groups)*

### [Ordering ¶](#Ordering) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L19)

```
Ordering :: slice.Ordering
```

### [Tree ¶](#Tree) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L22)

```
Tree :: struct($Key: typeid, $Value: typeid) where intrinsics.type_is_valid_map_key(Key) {
	… // See source for fields
}
```

 

Tree is a red-black tree




##### Related Procedures With Parameters

* [destroy](/core/container/rbtree/#destroy)
* [find](/core/container/rbtree/#find)
* [find\_or\_insert](/core/container/rbtree/#find_or_insert)
* [find\_value](/core/container/rbtree/#find_value)
* [first](/core/container/rbtree/#first)
* [init\_cmp](/core/container/rbtree/#init_cmp)
* [init\_ordered](/core/container/rbtree/#init_ordered)
* [iterator](/core/container/rbtree/#iterator)
* [iterator\_from\_pos](/core/container/rbtree/#iterator_from_pos)
* [last](/core/container/rbtree/#last)
* [len](/core/container/rbtree/#len)
* [remove\_key](/core/container/rbtree/#remove_key)
* [remove\_node](/core/container/rbtree/#remove_node)
* [init](/core/container/rbtree/#init) *(procedure groups)*
* [remove](/core/container/rbtree/#remove) *(procedure groups)*

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L87)

```
destroy :: proc(t: ^$T/Tree($Key, $Value), call_on_remove: bool = true) {…}
```

 

destroy de-initializes a tree.

### [find ¶](#find) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L111)

```
find :: proc(t: $T/Tree($Key, $Value), key: $Key) -> (node: $$deferred_return) {…}
```

 

find finds the key in the tree, and returns the corresponding node, or nil iff the value is not present.

### [find\_or\_insert ¶](#find_or_insert) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L134)

```
find_or_insert :: proc(t: ^$T/Tree($Key, $Value), key: $Key, value: $Value) -> (n: $$deferred_return, inserted: bool, err: runtime.Allocator_Error) {…}
```

 

find\_or\_insert attempts to insert the key-value pair into the tree, and returns
the node, a boolean indicating if a new node was inserted, and the
node allocator error if relevant. If the key is already present, the existing node is updated and returned.

### [find\_value ¶](#find_value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L124)

```
find_value :: proc(t: $T/Tree($Key, $Value), key: $Key) -> (value: $$deferred_return, ok: bool) #optional_ok {…}
```

 

find\_value finds the key in the tree, and returns the corresponding value, or nil iff the value is not present.

### [first ¶](#first) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L100)

```
first :: proc "contextless" (t: ^$T/Tree($Key, $Value)) -> $$deferred_return {…}
```

 

first returns the first node in the tree (in-order) or nil iff
the tree is empty.

### [init\_cmp ¶](#init_cmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L73)

```
init_cmp :: proc(t: ^$T/Tree($Key, $Value), cmp_fn: proc(a, b: $Key) -> slice.Ordering, node_allocator := context.allocator) {…}
```

 

init\_cmp initializes a tree.




##### Related Procedure Groups

* [init](/core/container/rbtree/#init)

### [init\_ordered ¶](#init_ordered) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L82)

```
init_ordered :: proc(t: ^$T/Tree($Key, $Value), node_allocator := context.allocator) {…}
```

 

init\_ordered initializes a tree containing ordered keys, with
a comparison function that results in an ascending order sort.




##### Related Procedure Groups

* [init](/core/container/rbtree/#init)

### [iterator ¶](#iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L211)

```
iterator :: proc "contextless" (t: ^$T/Tree($Key, $Value), direction: Direction) -> $$deferred_return {…}
```

 

iterator returns a tree iterator in the specified direction.

### [iterator\_from\_pos ¶](#iterator_from_pos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L223)

```
iterator_from_pos :: proc "contextless" (t: ^$T/Tree($Key, $Value), pos: ^Node($Key, $Value), direction: Direction) -> $$deferred_return {…}
```

 

iterator\_from\_pos returns a tree iterator in the specified direction,
spanning the range [pos, last] (inclusive).

### [iterator\_get ¶](#iterator_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L240)

```
iterator_get :: proc "contextless" (it: ^$I/Iterator($Key, $Value)) -> $$deferred_return {…}
```

 

iterator\_get returns the node currently pointed to by the iterator,
or nil iff the node has been removed, the tree is empty, or the end
of the tree has been reached.

### [iterator\_next ¶](#iterator_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L265)

```
iterator_next :: proc "contextless" (it: ^$I/Iterator($Key, $Value)) -> ($$deferred_return, bool) {…}
```

 

iterator\_next advances the iterator and returns the (node, true) or
or (nil, false) iff the end of the tree has been reached.

Note: The first call to iterator\_next will return the first node instead
of advancing the iterator.

### [iterator\_remove ¶](#iterator_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L247)

```
iterator_remove :: proc(it: ^$I/Iterator($Key, $Value), call_on_remove: bool = true) -> bool {…}
```

 

iterator\_remove removes the node currently pointed to by the iterator,
and returns true iff the removal was successful. Semantics are the
same as the Tree remove.

### [last ¶](#last) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L106)

```
last :: proc "contextless" (t: ^$T/Tree($Key, $Value)) -> $$deferred_return {…}
```

 

last returns the last element in the tree (in-order) or nil iff
the tree is empty.

### [len ¶](#len) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L94)

```
len :: proc "contextless" (t: $T/Tree($Key, $Value)) -> (node_count: int) {…}
```

### [node\_color ¶](#node_color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L567)

```
node_color :: proc(n: ^$N/Node($Key, $Value)) -> (c: Color) {…}
```

### [remove\_key ¶](#remove_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L168)

```
remove_key :: proc(t: ^$T/Tree($Key, $Value), key: $Key, call_on_remove: bool = true) -> bool {…}
```

 

remove\_value removes a value from the tree, and returns true iff the
removal was successful. While the node's key + value will be left intact,
the node itself will be freed via the tree's node allocator.




##### Related Procedure Groups

* [remove](/core/container/rbtree/#remove)

### [remove\_node ¶](#remove_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L179)

```
remove_node :: proc(t: ^$T/Tree($Key, $Value), node: ^$N/Node($Key, $Value), call_on_remove: bool = true) -> (found: bool) {…}
```

 

remove\_node removes a node from the tree, and returns true iff the
removal was successful. While the node's key + value will be left intact,
the node itself will be freed via the tree's node allocator.




##### Related Procedure Groups

* [remove](/core/container/rbtree/#remove)

## Procedure Groups

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L67)

```
init :: proc{
	init_ordered,
	init_cmp,
}
```

 

init initializes a tree.

### [remove ¶](#remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin#L160)

```
remove :: proc{
	remove_key,
	remove_node,
}
```

 

remove removes a node or value from the tree, and returns true iff the
removal was successful. While the node's value will be left intact,
the node itself will be freed via the tree's node allocator.

## Source Files

* [rbtree.odin](https://github.com/odin-lang/Odin/tree/master/core/container/rbtree/rbtree.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.107639100 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Color](#Color)
    + [Direction](#Direction)
    + [Iterator](#Iterator)
    + [Node](#Node)
    + [Ordering](#Ordering)
    + [Tree](#Tree)
  * [Procedures](#pkg-Procedures)
    + [destroy](#destroy)
    + [find](#find)
    + [find\_or\_insert](#find_or_insert)
    + [find\_value](#find_value)
    + [first](#first)
    + [init\_cmp](#init_cmp)
    + [init\_ordered](#init_ordered)
    + [iterator](#iterator)
    + [iterator\_from\_pos](#iterator_from_pos)
    + [iterator\_get](#iterator_get)
    + [iterator\_next](#iterator_next)
    + [iterator\_remove](#iterator_remove)
    + [last](#last)
    + [len](#len)
    + [node\_color](#node_color)
    + [remove\_key](#remove_key)
    + [remove\_node](#remove_node)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [init](#init)
    + [remove](#remove)
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