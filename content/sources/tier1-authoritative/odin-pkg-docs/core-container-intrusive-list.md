package container/intrusive/list - pkg.odin-lang.org 






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



Current Package: *[container\_intrusive\_list](/core/container/intrusive/list)*

  

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
3. intrusive
4. [list](/core/container/intrusive/list)

# package core:container/intrusive/list [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

An intrusive doubly-linked list.

The intrusive container requires a `Node` to be embedded in your own structure, like this.

**Example:**

```
My_String :: struct {
	node:  list.Node,
	value: string,
}
```

Embedding the members of a `list.Node` in your structure with the `using` keyword is also allowed.

**Example:**

```
My_String :: struct {
	using node: list.Node,
	value: string,
}
```

Here is a full example.

**Example:**

```
package test

import "core:fmt"
import "core:container/intrusive/list"

main :: proc() {
    l: list.List

    one := My_String{value="Hello"}
    two := My_String{value="World"}

    list.push_back(&l, &one.node)
    list.push_back(&l, &two.node)

    iter := list.iterator_head(l, My_String, "node")
    for s in list.iterate_next(&iter) {
        fmt.println(s.value)
    }
}

My_String :: struct {
    node:  list.Node,
    value: string,
}
```

**Output:**

```
Hello
World
```

## Index

Types (3)

* [Iterator](#Iterator)
* [List](#List)
* [Node](#Node)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (13)

* [is\_empty](#is_empty)
* [iterate\_next](#iterate_next)
* [iterate\_prev](#iterate_prev)
* [iterator\_from\_node](#iterator_from_node)
* [iterator\_head](#iterator_head)
* [iterator\_tail](#iterator_tail)
* [pop\_back](#pop_back)
* [pop\_front](#pop_front)
* [push\_back](#push_back)
* [push\_front](#push_front)
* [remove](#remove)
* [remove\_by\_proc](#remove_by_proc)
* [remove\_by\_proc\_contextless](#remove_by_proc_contextless)

Procedure Groups (0)

This section is empty.

## Types

### [Iterator ¶](#Iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L209)

```
Iterator :: struct($T: typeid) {
	… // See source for fields
}
```

##### Related Procedures With Parameters

* [iterate\_next](/core/container/intrusive/list/#iterate_next)
* [iterate\_prev](/core/container/intrusive/list/#iterate_prev)



##### Related Procedures With Returns

* [iterator\_from\_node](/core/container/intrusive/list/#iterator_from_node)
* [iterator\_head](/core/container/intrusive/list/#iterator_head)
* [iterator\_tail](/core/container/intrusive/list/#iterator_tail)

### [List ¶](#List) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L16)

```
List :: struct {
	head: ^Node,
	tail: ^Node,
}
```

 

An intrusive doubly-linked list

As this is an intrusive container, a `Node` must be embedded in your own
structure which is conventionally called a "link". The use of `push_front`
and `push_back` take the address of this node. Retrieving the data
associated with the node requires finding the relative offset of the node
of the parent structure. The parent type and field name are given to
`iterator_*` procedures, or to the built-in `container_of` procedure.

This data structure is two-pointers in size:

```
8 bytes on 32-bit platforms and 16 bytes on 64-bit platforms
```




##### Related Procedures With Parameters

* [is\_empty](/core/container/intrusive/list/#is_empty)
* [iterator\_head](/core/container/intrusive/list/#iterator_head)
* [iterator\_tail](/core/container/intrusive/list/#iterator_tail)
* [pop\_back](/core/container/intrusive/list/#pop_back)
* [pop\_front](/core/container/intrusive/list/#pop_front)
* [push\_back](/core/container/intrusive/list/#push_back)
* [push\_front](/core/container/intrusive/list/#push_front)
* [remove](/core/container/intrusive/list/#remove)
* [remove\_by\_proc](/core/container/intrusive/list/#remove_by_proc)
* [remove\_by\_proc\_contextless](/core/container/intrusive/list/#remove_by_proc_contextless)

### [Node ¶](#Node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L22)

```
Node :: struct {
	prev: ^Node,
	next: ^Node,
}
```

 

The list link you must include in your own structure.




##### Related Procedures With Parameters

* [iterator\_from\_node](/core/container/intrusive/list/#iterator_from_node)
* [push\_back](/core/container/intrusive/list/#push_back)
* [push\_front](/core/container/intrusive/list/#push_front)
* [remove](/core/container/intrusive/list/#remove)



##### Related Procedures With Returns

* [pop\_back](/core/container/intrusive/list/#pop_back)
* [pop\_front](/core/container/intrusive/list/#pop_front)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [is\_empty ¶](#is_empty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L147)

```
is_empty :: proc "contextless" (list: ^List) -> bool {…}
```

 

Checks whether the given list does not contain any element.

**Inputs**
list: The container list

**Returns** `true` if `list` is empty, `false` otherwise

### [iterate\_next ¶](#iterate_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L304)

```
iterate_next :: proc "contextless" (it: ^Iterator($T)) -> (ptr: $$deferred_return, ok: bool) {…}
```

 

Retrieves the next element in a list and advances the iterator.

**Inputs**  
it: The iterator

**Returns**
ptr: The next list element
ok: `true` if the element is valid (the iterator could advance), `false` otherwise

**Example:**

```
import "core:fmt"
import "core:container/intrusive/list"

iterate_next_example :: proc() {
	l: list.List

	one := My_Next_Struct{value=1}
	two := My_Next_Struct{value=2}

	list.push_back(&l, &one.node)
	list.push_back(&l, &two.node)

	it := list.iterator_head(l, My_Next_Struct, "node")
	for num in list.iterate_next(⁢) {
		fmt.println(num.value)
	}
}

My_Next_Struct :: struct {
	node : list.Node,
	value: int,
}
```

**Output:**

```
1
2
```

### [iterate\_prev ¶](#iterate_prev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L354)

```
iterate_prev :: proc "contextless" (it: ^Iterator($T)) -> (ptr: $$deferred_return, ok: bool) {…}
```

 

Retrieves the previous element in a list and recede the iterator.

**Inputs**  
it: The iterator

**Returns**
ptr: The previous list element
ok: `true` if the element is valid (the iterator could recede), `false` otherwise

**Example:**

```
import "core:fmt"
import "core:container/intrusive/list"

iterate_prev_example :: proc() {
	l: list.List

	one := My_Prev_Struct{value=1}
	two := My_Prev_Struct{value=2}

	list.push_back(&l, &one.node)
	list.push_back(&l, &two.node)

	it := list.iterator_tail(l, My_Prev_Struct, "node")
	for num in list.iterate_prev(⁢) {
		fmt.println(num.value)
	}
}

My_Prev_Struct :: struct {
	node : list.Node,
	value: int,
}
```

**Output:**

```
2
1
```

### [iterator\_from\_node ¶](#iterator_from_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L257)

```
iterator_from_node :: proc "contextless" (node: ^Node, $T: typeid, $field_name: string) -> Iterator($T=typeid) {…}
```

 

Creates an iterator pointing at the specified node of a list.

**Inputs**
node: a list node
T: The type of the list's elements
field\_name: The name of the node field in the `T` structure

**Returns** An iterator pointing at `node`

### [iterator\_head ¶](#iterator_head) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L225)

```
iterator_head :: proc "contextless" (list: List, $T: typeid, $field_name: string) -> Iterator($T=typeid) {…}
```

 

Creates an iterator pointing at the head of the given list. For an example, see `iterate_next`.

**Inputs**
list: The container list
T: The type of the list's elements
field\_name: The name of the node field in the `T` structure

**Returns** An iterator pointing at the head of `list`

### [iterator\_tail ¶](#iterator_tail) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L241)

```
iterator_tail :: proc "contextless" (list: List, $T: typeid, $field_name: string) -> Iterator($T=typeid) {…}
```

 

Creates an iterator pointing at the tail of the given list. For an example, see `iterate_prev`.

**Inputs**
list: The container list
T: The type of the list's elements
field\_name: The name of the node field in the `T` structure

**Returns** An iterator pointing at the tail of `list`

### [pop\_back ¶](#pop_back) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L187)

```
pop_back :: proc "contextless" (list: ^List) -> ^Node {…}
```

 

Removes and returns the element at the back of the list with O(1) time complexity.

**Inputs**
list: The container list

**Returns** The node member of the user-defined element structure, or `nil` if the list is empty

### [pop\_front ¶](#pop_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L159)

```
pop_front :: proc "contextless" (list: ^List) -> ^Node {…}
```

 

Removes and returns the element at the front of the list with O(1) time complexity.

**Inputs**
list: The container list

**Returns** The node member of the user-defined element structure, or `nil` if the list is empty

### [push\_back ¶](#push_back) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L50)

```
push_back :: proc "contextless" (list: ^List, node: ^Node) {…}
```

 

Inserts a new element at the back of the list with O(1) time complexity.

**Inputs**
list: The container list
node: The node member of the user-defined element structure

### [push\_front ¶](#push_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L33)

```
push_front :: proc "contextless" (list: ^List, node: ^Node) {…}
```

 

Inserts a new element at the front of the list with O(1) time complexity.

**Inputs**
list: The container list
node: The node member of the user-defined element structure

### [remove ¶](#remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L68)

```
remove :: proc "contextless" (list: ^List, node: ^Node) {…}
```

 

Removes an element from a list with O(1) time complexity.

**Inputs**
list: The container list
node: The node member of the user-defined element structure to be removed

### [remove\_by\_proc ¶](#remove_by_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L91)

```
remove_by_proc :: proc(list: ^List, to_erase: proc(^Node) -> bool) {…}
```

 

Removes from the given list all elements that satisfy a condition with O(N) time complexity.

**Inputs**
list: The container list
to\_erase: The condition procedure. It should return `true` if a node should be removed, `false` otherwise

### [remove\_by\_proc\_contextless ¶](#remove_by_proc_contextless) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin#L118)

```
remove_by_proc_contextless :: proc(list: ^List, to_erase: proc "contextless" (^Node) -> bool) {…}
```

 

Removes from the given list all elements that satisfy a condition with O(N) time complexity.

**Inputs**
list: The container list
to\_erase: The \_contextless\_ condition procedure. It should return `true` if a node should be removed, `false` otherwise

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/doc.odin)
* [intrusive\_list.odin](https://github.com/odin-lang/Odin/tree/master/core/container/intrusive/list/intrusive_list.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:47.077144600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Iterator](#Iterator)
    + [List](#List)
    + [Node](#Node)
  * [Procedures](#pkg-Procedures)
    + [is\_empty](#is_empty)
    + [iterate\_next](#iterate_next)
    + [iterate\_prev](#iterate_prev)
    + [iterator\_from\_node](#iterator_from_node)
    + [iterator\_head](#iterator_head)
    + [iterator\_tail](#iterator_tail)
    + [pop\_back](#pop_back)
    + [pop\_front](#pop_front)
    + [push\_back](#push_back)
    + [push\_front](#push_front)
    + [remove](#remove)
    + [remove\_by\_proc](#remove_by_proc)
    + [remove\_by\_proc\_contextless](#remove_by_proc_contextless)
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