package sys/kqueue - pkg.odin-lang.org 






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



Current Package: *[kqueue](/core/sys/kqueue)*

  

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
3. [kqueue](/core/sys/kqueue)

# package core:sys/kqueue [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue)

#### **Warning:**This was generated for `-target:darwin_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (15)

* [Filter](#Filter)
* [Flag](#Flag)
* [Flags](#Flags)
* [KEvent](#KEvent)
* [KQ](#KQ)
* [Proc\_Flag](#Proc_Flag)
* [Proc\_Flags](#Proc_Flags)
* [RW\_Flag](#RW_Flag)
* [RW\_Flags](#RW_Flags)
* [Timer\_Flag](#Timer_Flag)
* [Timer\_Flags](#Timer_Flags)
* [User\_Flag](#User_Flag)
* [User\_Flags](#User_Flags)
* [VNode\_Flag](#VNode_Flag)
* [VNode\_Flags](#VNode_Flags)

Constants (4)

* [TIMER\_FLAGS\_NSECONDS](#TIMER_FLAGS_NSECONDS)
* [USER\_FLAGS\_CONTROL\_MASK](#USER_FLAGS_CONTROL_MASK)
* [USER\_FLAGS\_COPY](#USER_FLAGS_COPY)
* [USER\_FLAGS\_MASK](#USER_FLAGS_MASK)

Variables (0)

This section is empty.

Procedures (2)

* [kevent](#kevent)
* [kqueue](#kqueue)

Procedure Groups (0)

This section is empty.

## Types

### [Filter ¶](#Filter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L56)

```
Filter :: enum _Filter_Backing {
	Read   = -1,  // Check for read availability on the file descriptor.
	Write  = -2,  // Check for write availability on the file descriptor.
	AIO    = -3,  // Attached to AIO requests.
	VNode  = -4,  // Check for changes to the subject file.
	Proc   = -5,  // Check for changes to the subject process.
	Signal = -6,  // Check for signals delivered to the process.
	Timer  = -7,  // Timers.
	User   = -01, // User events.
}
```

### [Flag ¶](#Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L41)

```
Flag :: enum _Flags_Backing {
	Add      = 0,  // Add event to kq (implies .Enable).
	Delete   = 1,  // Delete event from kq.
	Enable   = 2,  // Enable event.
	Disable  = 3,  // Disable event (not reported).
	One_Shot = 4,  // Only report one occurrence.
	Clear    = 5,  // Clear event state after reporting.
	Receipt  = 6,  // Force immediate event output.
	Dispatch = 7,  // Disable event after reporting.
	Error    = 14, // Error, data contains errno.
	EOF      = 15, // EOF detected.
}
```

### [Flags ¶](#Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L54)

```
Flags :: bit_set[Flag; _Flags_Backing]
```

### [KEvent ¶](#KEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L131)

```
KEvent :: struct #align (4) {
	// Value used to identify this event. The exact interpretation is determined by the attached filter.
	ident:  uintptr,
	// Filter for event.
	filter: Filter,
	// General flags.
	flags:  bit_set[Flag; _Flags_Backing],
	// Filter specific flags.
	fflags: struct #raw_union {
		rw:    bit_set[RW_Flag; u32] `raw_union_tag:"filter=.Read, filter=.Write"`,
		vnode: bit_set[VNode_Flag; u32] `raw_union_tag:"filter=.VNode"`,
		fproc: bit_set[Proc_Flag; u32] `raw_union_tag:"filter=.Proc"`,
		// vm:    VM_Flags,
		timer: bit_set[Timer_Flag; u32] `raw_union_tag:"filter=.Timer"`,
		user:  bit_set[User_Flag; u32] `raw_union_tag:"filter=.User"`,
	},
	// Filter specific data.
	data:   i64,
	// Opaque user data passed through the kernel unchanged.
	udata:  rawptr,
}
```

### [KQ ¶](#KQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L15)

```
KQ :: posix.FD
```

##### Related Procedures With Parameters

* [kevent](/core/sys/kqueue/#kevent)



##### Related Procedures With Returns

* [kqueue](/core/sys/kqueue/#kqueue)

### [Proc\_Flag ¶](#Proc_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L83)

```
Proc_Flag :: enum u32 {
	Exit = 31, // Process exited.
	Fork = 30, // Process forked.
	Exec = 29, // Process exec'd.
}
```

### [Proc\_Flags ¶](#Proc_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L88)

```
Proc_Flags :: bit_set[Proc_Flag; u32]
```

### [RW\_Flag ¶](#RW_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L67)

```
RW_Flag :: enum u32 {
	Low_Water_Mark = 0, 
}
```

### [RW\_Flags ¶](#RW_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L70)

```
RW_Flags :: bit_set[RW_Flag; u32]
```

### [Timer\_Flag ¶](#Timer_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L90)

```
Timer_Flag :: enum u32 {
	Seconds  = 0, // Data is seconds.
	USeconds = 1, // Data is microseconds.
	Absolute = 3, // Absolute timeout.
}
```

### [Timer\_Flags ¶](#Timer_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L95)

```
Timer_Flags :: bit_set[Timer_Flag; u32]
```

##### Related Constants

* [TIMER\_FLAGS\_NSECONDS](/core/sys/kqueue/#TIMER_FLAGS_NSECONDS)

### [User\_Flag ¶](#User_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L97)

```
User_Flag :: enum u32 {
	Trigger = 24, 
	FFAnd   = 30, 
	FFOr    = 31, 
}
```

### [User\_Flags ¶](#User_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L102)

```
User_Flags :: bit_set[User_Flag; u32]
```

##### Related Constants

* [USER\_FLAGS\_CONTROL\_MASK](/core/sys/kqueue/#USER_FLAGS_CONTROL_MASK)
* [USER\_FLAGS\_COPY](/core/sys/kqueue/#USER_FLAGS_COPY)
* [USER\_FLAGS\_MASK](/core/sys/kqueue/#USER_FLAGS_MASK)

### [VNode\_Flag ¶](#VNode_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L72)

```
VNode_Flag :: enum u32 {
	Delete = 0, // Deleted.
	Write  = 1, // Contents changed.
	Extend = 2, // Size increased.
	Attrib = 3, // Attributes changed.
	Link   = 4, // Link count changed.
	Rename = 5, // Renamed.
	Revoke = 6, // Access was revoked.
}
```

### [VNode\_Flags ¶](#VNode_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L81)

```
VNode_Flags :: bit_set[VNode_Flag; u32]
```

## Constants

### [TIMER\_FLAGS\_NSECONDS ¶](#TIMER_FLAGS_NSECONDS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L109)

```
TIMER_FLAGS_NSECONDS: bit_set[Timer_Flag; u32] : _TIMER_FLAGS_NSECONDS
```

 

Data is nanoseconds.

### [USER\_FLAGS\_CONTROL\_MASK ¶](#USER_FLAGS_CONTROL_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L105)

```
USER_FLAGS_CONTROL_MASK: bit_set[User_Flag; u32] : transmute(User_Flags)u32(0xc0000000)
```

### [USER\_FLAGS\_COPY ¶](#USER_FLAGS_COPY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L104)

```
USER_FLAGS_COPY: bit_set[User_Flag; u32] : User_Flags{.FFOr, .FFAnd}
```

### [USER\_FLAGS\_MASK ¶](#USER_FLAGS_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L106)

```
USER_FLAGS_MASK: bit_set[User_Flag; u32] : transmute(User_Flags)u32(0x00FFFFFF)
```

## Variables

This section is empty.

## Procedures

### [kevent ¶](#kevent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L25)

```
kevent :: proc(kq: posix.FD, change_list: []KEvent, event_list: []KEvent, timeout: ^libc.timespec) -> (n_events: i32, err: posix.Errno) {…}
```

### [kqueue ¶](#kqueue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin#L17)

```
kqueue :: proc() -> (kq: posix.FD, err: posix.Errno) {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [kqueue.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/kqueue/kqueue.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.580541800 +0000 UTC`

* [Types](#pkg-Types)
  + [Filter](#Filter)
  + [Flag](#Flag)
  + [Flags](#Flags)
  + [KEvent](#KEvent)
  + [KQ](#KQ)
  + [Proc\_Flag](#Proc_Flag)
  + [Proc\_Flags](#Proc_Flags)
  + [RW\_Flag](#RW_Flag)
  + [RW\_Flags](#RW_Flags)
  + [Timer\_Flag](#Timer_Flag)
  + [Timer\_Flags](#Timer_Flags)
  + [User\_Flag](#User_Flag)
  + [User\_Flags](#User_Flags)
  + [VNode\_Flag](#VNode_Flag)
  + [VNode\_Flags](#VNode_Flags)
* [Constants](#pkg-Constants)
  + [TIMER\_FLAGS\_NSECONDS](#TIMER_FLAGS_NSECONDS)
  + [USER\_FLAGS\_CONTROL\_MASK](#USER_FLAGS_CONTROL_MASK)
  + [USER\_FLAGS\_COPY](#USER_FLAGS_COPY)
  + [USER\_FLAGS\_MASK](#USER_FLAGS_MASK)
* [Procedures](#pkg-Procedures)
  + [kevent](#kevent)
  + [kqueue](#kqueue)
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