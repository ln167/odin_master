package sys/darwin/CoreGraphics - pkg.odin-lang.org 






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



Current Package: *[CoreGraphics](/core/sys/darwin/CoreGraphics)*

  

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
2. sys
3. [darwin](/core/sys/darwin)
4. [CoreGraphics](/core/sys/darwin/CoreGraphics)

# package core:sys/darwin/CoreGraphics [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics)

#### **Warning:**This was generated for `-target:windows_amd64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (9)

* [DirectDisplayID](#DirectDisplayID)
* [Error](#Error)
* [EventSourceStateID](#EventSourceStateID)
* [Float](#Float)
* [KeyCode](#KeyCode)
* [OpenGLDisplayMask](#OpenGLDisplayMask)
* [Point](#Point)
* [Rect](#Rect)
* [Size](#Size)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (12)

* [AssociateMouseAndMouseCursorPosition](#AssociateMouseAndMouseCursorPosition)
* [DisplayIDToOpenGLDisplayMask](#DisplayIDToOpenGLDisplayMask)
* [DisplayMoveCursorToPoint](#DisplayMoveCursorToPoint)
* [EventSourceKeyState](#EventSourceKeyState)
* [GetActiveDisplayList](#GetActiveDisplayList)
* [GetDisplaysWithOpenGLDisplayMask](#GetDisplaysWithOpenGLDisplayMask)
* [GetDisplaysWithPoint](#GetDisplaysWithPoint)
* [GetDisplaysWithRect](#GetDisplaysWithRect)
* [GetOnlineDisplayList](#GetOnlineDisplayList)
* [MainDisplayID](#MainDisplayID)
* [OpenGLDisplayMaskToDisplayID](#OpenGLDisplayMaskToDisplayID)
* [WarpMouseCursorPosition](#WarpMouseCursorPosition)

Procedure Groups (0)

This section is empty.

## Types

### [DirectDisplayID ¶](#DirectDisplayID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L25)

```
DirectDisplayID :: u32
```

##### Related Procedures With Parameters

* [DisplayIDToOpenGLDisplayMask](/core/sys/darwin/CoreGraphics/#DisplayIDToOpenGLDisplayMask)
* [DisplayMoveCursorToPoint](/core/sys/darwin/CoreGraphics/#DisplayMoveCursorToPoint)
* [GetActiveDisplayList](/core/sys/darwin/CoreGraphics/#GetActiveDisplayList)
* [GetDisplaysWithOpenGLDisplayMask](/core/sys/darwin/CoreGraphics/#GetDisplaysWithOpenGLDisplayMask)
* [GetDisplaysWithPoint](/core/sys/darwin/CoreGraphics/#GetDisplaysWithPoint)
* [GetDisplaysWithRect](/core/sys/darwin/CoreGraphics/#GetDisplaysWithRect)
* [GetOnlineDisplayList](/core/sys/darwin/CoreGraphics/#GetOnlineDisplayList)
* [OpenGLDisplayMaskToDisplayID](/core/sys/darwin/CoreGraphics/#OpenGLDisplayMaskToDisplayID)



##### Related Procedures With Returns

* [MainDisplayID](/core/sys/darwin/CoreGraphics/#MainDisplayID)

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L27)

```
Error :: enum i32 {
	Success           = 0, 
	Failure           = 1000, 
	IllegalArgument   = 1001, 
	InvalidConnection = 1002, 
	InvalidContext    = 1003, 
	CannotComplete    = 1004, 
	NotImplemented    = 1006, 
	RangeCheck        = 1007, 
	TypeCheck         = 1008, 
	InvalidOperation  = 1010, 
	NoneAvailable     = 1011, 
}
```

##### Related Procedures With Returns

* [AssociateMouseAndMouseCursorPosition](/core/sys/darwin/CoreGraphics/#AssociateMouseAndMouseCursorPosition)
* [DisplayMoveCursorToPoint](/core/sys/darwin/CoreGraphics/#DisplayMoveCursorToPoint)
* [GetActiveDisplayList](/core/sys/darwin/CoreGraphics/#GetActiveDisplayList)
* [GetDisplaysWithOpenGLDisplayMask](/core/sys/darwin/CoreGraphics/#GetDisplaysWithOpenGLDisplayMask)
* [GetDisplaysWithPoint](/core/sys/darwin/CoreGraphics/#GetDisplaysWithPoint)
* [GetDisplaysWithRect](/core/sys/darwin/CoreGraphics/#GetDisplaysWithRect)
* [GetOnlineDisplayList](/core/sys/darwin/CoreGraphics/#GetOnlineDisplayList)
* [WarpMouseCursorPosition](/core/sys/darwin/CoreGraphics/#WarpMouseCursorPosition)

### [EventSourceStateID ¶](#EventSourceStateID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L41)

```
EventSourceStateID :: enum i32 {
	Private              = -1, 
	CombinedSessionState = 0, 
	HIDSystemState       = 1, 
}
```

##### Related Procedures With Parameters

* [EventSourceKeyState](/core/sys/darwin/CoreGraphics/#EventSourceKeyState)

### [Float ¶](#Float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L47)

```
Float :: CoreFoundation.CGFloat
```

### [KeyCode ¶](#KeyCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L49)

```
KeyCode :: u16
```

##### Related Procedures With Parameters

* [EventSourceKeyState](/core/sys/darwin/CoreGraphics/#EventSourceKeyState)

### [OpenGLDisplayMask ¶](#OpenGLDisplayMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L51)

```
OpenGLDisplayMask :: u32
```

##### Related Procedures With Parameters

* [DisplayIDToOpenGLDisplayMask](/core/sys/darwin/CoreGraphics/#DisplayIDToOpenGLDisplayMask)
* [DisplayMoveCursorToPoint](/core/sys/darwin/CoreGraphics/#DisplayMoveCursorToPoint)
* [GetActiveDisplayList](/core/sys/darwin/CoreGraphics/#GetActiveDisplayList)
* [GetDisplaysWithOpenGLDisplayMask](/core/sys/darwin/CoreGraphics/#GetDisplaysWithOpenGLDisplayMask)
* [GetDisplaysWithPoint](/core/sys/darwin/CoreGraphics/#GetDisplaysWithPoint)
* [GetDisplaysWithRect](/core/sys/darwin/CoreGraphics/#GetDisplaysWithRect)
* [GetOnlineDisplayList](/core/sys/darwin/CoreGraphics/#GetOnlineDisplayList)
* [OpenGLDisplayMaskToDisplayID](/core/sys/darwin/CoreGraphics/#OpenGLDisplayMaskToDisplayID)



##### Related Procedures With Returns

* [MainDisplayID](/core/sys/darwin/CoreGraphics/#MainDisplayID)

### [Point ¶](#Point) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L53)

```
Point :: CoreFoundation.CGPoint
```

##### Related Procedures With Parameters

* [DisplayMoveCursorToPoint](/core/sys/darwin/CoreGraphics/#DisplayMoveCursorToPoint)
* [GetDisplaysWithPoint](/core/sys/darwin/CoreGraphics/#GetDisplaysWithPoint)
* [WarpMouseCursorPosition](/core/sys/darwin/CoreGraphics/#WarpMouseCursorPosition)

### [Rect ¶](#Rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L55)

```
Rect :: CoreFoundation.CGRect
```

##### Related Procedures With Parameters

* [GetDisplaysWithRect](/core/sys/darwin/CoreGraphics/#GetDisplaysWithRect)

### [Size ¶](#Size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L57)

```
Size :: CoreFoundation.CGSize
```

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [AssociateMouseAndMouseCursorPosition ¶](#AssociateMouseAndMouseCursorPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L11)

```
AssociateMouseAndMouseCursorPosition :: proc "c" (connected: b32) -> Error ---
```

### [DisplayIDToOpenGLDisplayMask ¶](#DisplayIDToOpenGLDisplayMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L12)

```
DisplayIDToOpenGLDisplayMask :: proc "c" (display: u32) -> u32 ---
```

### [DisplayMoveCursorToPoint ¶](#DisplayMoveCursorToPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L13)

```
DisplayMoveCursorToPoint :: proc "c" (display: u32, point: CoreFoundation.CGPoint) -> Error ---
```

### [EventSourceKeyState ¶](#EventSourceKeyState) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L14)

```
EventSourceKeyState :: proc "c" (stateID: EventSourceStateID, key: u16) -> bool ---
```

### [GetActiveDisplayList ¶](#GetActiveDisplayList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L15)

```
GetActiveDisplayList :: proc "c" (maxDisplays: u32, activeDisplays: [^]u32, displayCount: ^u32) -> Error ---
```

### [GetDisplaysWithOpenGLDisplayMask ¶](#GetDisplaysWithOpenGLDisplayMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L16)

```
GetDisplaysWithOpenGLDisplayMask :: proc "c" (mask: u32, maxDisplays: u32, displays: [^]u32, matchingDisplayCount: ^u32) -> Error ---
```

### [GetDisplaysWithPoint ¶](#GetDisplaysWithPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L17)

```
GetDisplaysWithPoint :: proc "c" (point: CoreFoundation.CGPoint, maxDisplays: u32, displays: [^]u32, matchingDisplayCount: ^u32) -> Error ---
```

### [GetDisplaysWithRect ¶](#GetDisplaysWithRect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L18)

```
GetDisplaysWithRect :: proc "c" (rect: CoreFoundation.CGRect, maxDisplays: u32, displays: [^]u32, matchingDisplayCount: ^u32) -> Error ---
```

### [GetOnlineDisplayList ¶](#GetOnlineDisplayList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L19)

```
GetOnlineDisplayList :: proc "c" (maxDisplays: u32, onlineDisplays: [^]u32, displayCount: ^u32) -> Error ---
```

### [MainDisplayID ¶](#MainDisplayID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L20)

```
MainDisplayID :: proc "c" () -> u32 ---
```

### [OpenGLDisplayMaskToDisplayID ¶](#OpenGLDisplayMaskToDisplayID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L21)

```
OpenGLDisplayMaskToDisplayID :: proc "c" (mask: u32) -> u32 ---
```

### [WarpMouseCursorPosition ¶](#WarpMouseCursorPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin#L22)

```
WarpMouseCursorPosition :: proc "c" (newCursorPosition: CoreFoundation.CGPoint) -> Error ---
```

## Procedure Groups

This section is empty.

## Source Files

* [CoreGraphics.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/CoreGraphics/CoreGraphics.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.385024000 +0000 UTC`

* [Types](#pkg-Types)
  + [DirectDisplayID](#DirectDisplayID)
  + [Error](#Error)
  + [EventSourceStateID](#EventSourceStateID)
  + [Float](#Float)
  + [KeyCode](#KeyCode)
  + [OpenGLDisplayMask](#OpenGLDisplayMask)
  + [Point](#Point)
  + [Rect](#Rect)
  + [Size](#Size)
* [Procedures](#pkg-Procedures)
  + [AssociateMouseAndMouseCursorPosition](#AssociateMouseAndMouseCursorPosition)
  + [DisplayIDToOpenGLDisplayMask](#DisplayIDToOpenGLDisplayMask)
  + [DisplayMoveCursorToPoint](#DisplayMoveCursorToPoint)
  + [EventSourceKeyState](#EventSourceKeyState)
  + [GetActiveDisplayList](#GetActiveDisplayList)
  + [GetDisplaysWithOpenGLDisplayMask](#GetDisplaysWithOpenGLDisplayMask)
  + [GetDisplaysWithPoint](#GetDisplaysWithPoint)
  + [GetDisplaysWithRect](#GetDisplaysWithRect)
  + [GetOnlineDisplayList](#GetOnlineDisplayList)
  + [MainDisplayID](#MainDisplayID)
  + [OpenGLDisplayMaskToDisplayID](#OpenGLDisplayMaskToDisplayID)
  + [WarpMouseCursorPosition](#WarpMouseCursorPosition)
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