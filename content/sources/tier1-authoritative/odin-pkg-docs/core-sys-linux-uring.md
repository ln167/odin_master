package sys/linux/uring - pkg.odin-lang.org 






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



Current Package: *[uring](/core/sys/linux/uring)*

  

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
3. [linux](/core/sys/linux)
4. [uring](/core/sys/linux/uring)

# package core:sys/linux/uring [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring)

#### **Warning:**This was generated for `-target:windows_amd64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Wrapper/convenience package over the raw io\_uring syscalls, providing help with setup, creation, and operating the ring.

The following example shows a simple `cat` program implementation using the package.

**Example:**

```
package main

import "base:runtime"

import "core:fmt"
import "core:os"
import "core:sys/linux"
import "core:sys/linux/uring"

Request :: struct {
	path:       cstring,
	buffer:     []byte,
	completion: linux.IO_Uring_CQE,
}

main :: proc() {
	if len(os.args) < 2 {
		fmt.eprintfln("Usage: %s [file name] <[file name] ...>", os.args[0])
		os.exit(1)
	}

	requests := make_soa(#soa []Request, len(os.args)-1)
	defer delete(requests)

	ring: uring.Ring
	params := uring.DEFAULT_PARAMS
	err := uring.init(˚, &params)
	fmt.assertf(err == nil, "uring.init: %v", err)
	defer uring.destroy(˚)

	for &request, i in requests {
		request.path = runtime.args__[i+1]
		// sets up a read requests and adds it to the ring buffer.
		submit_read_request(request.path, &request.buffer, ˚)
	}

	ulen := u32(len(requests))

	// submit the requests and wait for them to complete right away.
	n, serr := uring.submit(˚, ulen)
	fmt.assertf(serr == nil, "uring.submit: %v", serr)
	assert(n == ulen)

	// copy the completed requests out of the ring buffer.
	cn := uring.copy_cqes_ready(˚, requests.completion[:ulen])
	assert(cn == ulen)

	for request in requests {
		// check result of the requests.
		fmt.assertf(request.completion.res >= 0, "read %q failed: %v", request.path, linux.Errno(-request.completion.res))
		// print out.
		fmt.print(string(request.buffer))

		delete(request.buffer)
	}
}

submit_read_request :: proc(path: cstring, buffer: ^[]byte, ring: ^uring.Ring) {
	fd, err := linux.open(path, {})
	fmt.assertf(err == nil, "open(%q): %v", path, err)

	file_sz := get_file_size(fd)

	buffer^ = make([]byte, file_sz)

	_, ok := uring.read(ring, 0, fd, buffer^, 0)
	assert(ok, "could not get read sqe")
}

get_file_size :: proc(fd: linux.Fd) -> uint {
	st: linux.Stat
	err := linux.fstat(fd, &st)
	fmt.assertf(err == nil, "fstat: %v", err)

	if linux.S_ISREG(st.mode) {
		return uint(st.size)
	}

	panic("not a regular file")
}
```

## Index

Types (3)

* [Completion\_Queue](#Completion_Queue)
* [Ring](#Ring)
* [Submission\_Queue](#Submission_Queue)

Constants (4)

* [DEFAULT\_ENTRIES](#DEFAULT_ENTRIES)
* [DEFAULT\_PARAMS](#DEFAULT_PARAMS)
* [DEFAULT\_THREAD\_IDLE\_MS](#DEFAULT_THREAD_IDLE_MS)
* [MAX\_ENTRIES](#MAX_ENTRIES)

Variables (0)

This section is empty.

Procedures (79)

* [accept](#accept)
* [async\_cancel](#async_cancel)
* [bind](#bind)
* [close](#close)
* [completion\_queue\_make](#completion_queue_make)
* [connect](#connect)
* [copy\_cqes](#copy_cqes)
* [copy\_cqes\_ready](#copy_cqes_ready)
* [cq\_advance](#cq_advance)
* [cq\_ready](#cq_ready)
* [cq\_ring\_needs\_flush](#cq_ring_needs_flush)
* [cqe\_seen](#cqe_seen)
* [destroy](#destroy)
* [epoll\_ctl](#epoll_ctl)
* [fadvise](#fadvise)
* [fallocate](#fallocate)
* [fgetxattr](#fgetxattr)
* [files\_update](#files_update)
* [fixed\_fd\_install](#fixed_fd_install)
* [fixed\_file](#fixed_file)
* [flush\_sq](#flush_sq)
* [free\_space](#free_space)
* [fsetxattr](#fsetxattr)
* [fsync](#fsync)
* [ftruncate](#ftruncate)
* [futex\_wait](#futex_wait)
* [futex\_waitv](#futex_waitv)
* [futex\_wake](#futex_wake)
* [get\_sqe](#get_sqe)
* [getxattr](#getxattr)
* [init](#init)
* [link\_timeout](#link_timeout)
* [linkat](#linkat)
* [listen](#listen)
* [madvise](#madvise)
* [mkdirat](#mkdirat)
* [msg\_ring](#msg_ring)
* [nop](#nop)
* [openat](#openat)
* [openat2](#openat2)
* [poll\_add](#poll_add)
* [poll\_remove](#poll_remove)
* [poll\_update\_events](#poll_update_events)
* [poll\_update\_user\_data](#poll_update_user_data)
* [provide\_buffers](#provide_buffers)
* [read](#read)
* [read\_fixed](#read_fixed)
* [read\_multishot](#read_multishot)
* [readv](#readv)
* [recv](#recv)
* [recvmsg](#recvmsg)
* [remove\_buffers](#remove_buffers)
* [renameat](#renameat)
* [send](#send)
* [send\_zc](#send_zc)
* [sendmsg](#sendmsg)
* [sendmsg\_zc](#sendmsg_zc)
* [sendto](#sendto)
* [setxattr](#setxattr)
* [shutdown](#shutdown)
* [socket](#socket)
* [splice](#splice)
* [sq\_ready](#sq_ready)
* [sq\_ring\_needs\_enter](#sq_ring_needs_enter)
* [statx](#statx)
* [submission\_queue\_destroy](#submission_queue_destroy)
* [submission\_queue\_make](#submission_queue_make)
* [submit](#submit)
* [symlinkat](#symlinkat)
* [sync\_file\_range](#sync_file_range)
* [tee](#tee)
* [timeout](#timeout)
* [timeout\_remove](#timeout_remove)
* [unlinkat](#unlinkat)
* [uring\_cmd](#uring_cmd)
* [waitid](#waitid)
* [write](#write)
* [write\_fixed](#write_fixed)
* [writev](#writev)

Procedure Groups (0)

This section is empty.

## Types

### [Completion\_Queue ¶](#Completion_Queue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L270)

```
Completion_Queue :: struct {
	head:     ^u32,
	tail:     ^u32,
	mask:     u32,
	overflow: ^u32,
	cqes:     []linux.IO_Uring_CQE,
}
```

##### Related Procedures With Returns

* [completion\_queue\_make](/core/sys/linux/uring/#completion_queue_make)

### [Ring ¶](#Ring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L11)

```
Ring :: struct {
	fd:       linux.Fd,
	sq:       Submission_Queue,
	cq:       Completion_Queue,
	flags:    bit_set[linux.IO_Uring_Setup_Flags_Bits; u32],
	features: bit_set[linux.IO_Uring_Features_Bits; u32],
}
```

##### Related Procedures With Parameters

* [accept](/core/sys/linux/uring/#accept)
* [async\_cancel](/core/sys/linux/uring/#async_cancel)
* [bind](/core/sys/linux/uring/#bind)
* [close](/core/sys/linux/uring/#close)
* [connect](/core/sys/linux/uring/#connect)
* [copy\_cqes](/core/sys/linux/uring/#copy_cqes)
* [copy\_cqes\_ready](/core/sys/linux/uring/#copy_cqes_ready)
* [cq\_advance](/core/sys/linux/uring/#cq_advance)
* [cq\_ready](/core/sys/linux/uring/#cq_ready)
* [cq\_ring\_needs\_flush](/core/sys/linux/uring/#cq_ring_needs_flush)
* [cqe\_seen](/core/sys/linux/uring/#cqe_seen)
* [destroy](/core/sys/linux/uring/#destroy)
* [epoll\_ctl](/core/sys/linux/uring/#epoll_ctl)
* [files\_update](/core/sys/linux/uring/#files_update)
* [flush\_sq](/core/sys/linux/uring/#flush_sq)
* [free\_space](/core/sys/linux/uring/#free_space)
* [fsync](/core/sys/linux/uring/#fsync)
* [get\_sqe](/core/sys/linux/uring/#get_sqe)
* [init](/core/sys/linux/uring/#init)
* [link\_timeout](/core/sys/linux/uring/#link_timeout)
* [listen](/core/sys/linux/uring/#listen)
* [madvise](/core/sys/linux/uring/#madvise)
* [nop](/core/sys/linux/uring/#nop)
* [openat](/core/sys/linux/uring/#openat)
* [poll\_add](/core/sys/linux/uring/#poll_add)
* [poll\_remove](/core/sys/linux/uring/#poll_remove)
* [poll\_update\_events](/core/sys/linux/uring/#poll_update_events)
* [poll\_update\_user\_data](/core/sys/linux/uring/#poll_update_user_data)
* [read](/core/sys/linux/uring/#read)
* [readv](/core/sys/linux/uring/#readv)
* [recv](/core/sys/linux/uring/#recv)
* [recvmsg](/core/sys/linux/uring/#recvmsg)
* [send](/core/sys/linux/uring/#send)
* [sendmsg](/core/sys/linux/uring/#sendmsg)
* [sendto](/core/sys/linux/uring/#sendto)
* [shutdown](/core/sys/linux/uring/#shutdown)
* [socket](/core/sys/linux/uring/#socket)
* [splice](/core/sys/linux/uring/#splice)
* [sq\_ready](/core/sys/linux/uring/#sq_ready)
* [sq\_ring\_needs\_enter](/core/sys/linux/uring/#sq_ring_needs_enter)
* [statx](/core/sys/linux/uring/#statx)
* [submit](/core/sys/linux/uring/#submit)
* [tee](/core/sys/linux/uring/#tee)
* [timeout](/core/sys/linux/uring/#timeout)
* [timeout\_remove](/core/sys/linux/uring/#timeout_remove)
* [write](/core/sys/linux/uring/#write)
* [writev](/core/sys/linux/uring/#writev)

### [Submission\_Queue ¶](#Submission_Queue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L212)

```
Submission_Queue :: struct {
	head:      ^u32,
	tail:      ^u32,
	mask:      u32,
	flags:     ^bit_set[linux.IO_Uring_Submission_Queue_Flags_Bits; u32],
	dropped:   ^u32,
	array:     []u32,
	sqes:      []linux.IO_Uring_SQE,
	mmap:      []u8,
	mmap_sqes: []u8,
	// We use `sqe_head` and `sqe_tail` in the same way as liburing:
	// We increment `sqe_tail` (but not `tail`) for each call to `get_sqe()`.
	// We then set `tail` to `sqe_tail` once, only when these events are actually submitted.
	// This allows us to amortize the cost of the @atomicStore to `tail` across multiple SQEs.
	sqe_head:  u32,
	sqe_tail:  u32,
}
```

##### Related Procedures With Parameters

* [completion\_queue\_make](/core/sys/linux/uring/#completion_queue_make)
* [submission\_queue\_destroy](/core/sys/linux/uring/#submission_queue_destroy)



##### Related Procedures With Returns

* [submission\_queue\_make](/core/sys/linux/uring/#submission_queue_make)

## Constants

### [DEFAULT\_ENTRIES ¶](#DEFAULT_ENTRIES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L8)

```
DEFAULT_ENTRIES :: 32
```

### [DEFAULT\_PARAMS ¶](#DEFAULT_PARAMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L19)

```
DEFAULT_PARAMS: linux.IO_Uring_Params : linux.IO_Uring_Params{sq_thread_idle = DEFAULT_THREAD_IDLE_MS}
```

### [DEFAULT\_THREAD\_IDLE\_MS ¶](#DEFAULT_THREAD_IDLE_MS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L7)

```
DEFAULT_THREAD_IDLE_MS :: 1000
```

### [MAX\_ENTRIES ¶](#MAX_ENTRIES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L9)

```
MAX_ENTRIES :: 4096
```

## Variables

This section is empty.

## Procedures

### [accept ¶](#accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L360)

```
accept :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	sockfd:     linux.Fd, 
	addr:       ^$T, 
	addr_len:   ^i32, 
	flags:      bit_set[linux.Socket_FD_Flags_Bits; i32], 
	file_index: u32 = 0, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of an accept4(2) system call.

See also accept4(2) for the general description of the related system call.

If the file\_index field is set to a positive number, the file won't be installed into the normal file table as usual
but will be placed into the fixed file table at index file\_index - 1.
In this case, instead of returning a file descriptor, the result will contain either 0 on success or an error.
If the index points to a valid empty slot, the installation is guaranteed to not fail.
If there is already a file in the slot, it will be replaced, similar to IORING\_OP\_FILES\_UPDATE.
Please note that only uring has access to such files and no other syscall can use them. See IOSQE\_FIXED\_FILE and IORING\_REGISTER\_FILES.

Available since 5.5.

### [async\_cancel ¶](#async_cancel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L392)

```
async_cancel :: proc(ring: ^Ring, orig_user_data: u64, user_data: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Attempt to cancel an already issued request.

The request is identified by it's user data.

The cancelation request will complete with one of the following results codes.

If found, the res field of the cqe will contain 0.
If not found, res will contain -ENOENT.

If found and attempted canceled, the res field will contain -EALREADY.
In this case, the request may or may not terminate.
In general, requests that are interruptible (like socket IO) will get canceled, while disk IO requests cannot be canceled if already started.

Available since 5.5.

### [bind ¶](#bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L785)

```
bind :: proc(ring: ^Ring, user_data: u64, sock: linux.Fd, addr: ^$T) -> (sqe: linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issues the equivalent of the bind(2) system call.

Available since 6.11.

### [close ¶](#close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L529)

```
close :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, file_index: u32 = 0) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a close(2) system call.

See also close(2) for the general description of the related system call.

Available since 5.6.

If the file\_index field is set to a positive number, this command can be used to close files that were
direct opened through IORING\_OP\_OPENAT, IORING\_OP\_OPENAT2, or IORING\_OP\_ACCEPT using the uring specific direct descriptors.
Note that only one of the descriptor fields may be set.
The direct close feature is available since the 5.15 kernel, where direct descriptors were introduced.

### [completion\_queue\_make ¶](#completion_queue_make) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L278)

```
completion_queue_make :: proc(fd: linux.Fd, params: ^linux.IO_Uring_Params, sq: ^Submission_Queue) -> Completion_Queue {…}
```

### [connect ¶](#connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L441)

```
connect :: proc(ring: ^Ring, user_data: u64, sockfd: linux.Fd, addr: ^$T) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a connect(2) system call.

See also connect(2) for the general description of the related system call.

Available since 5.5.

### [copy\_cqes ¶](#copy_cqes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L165)

```
copy_cqes :: proc(ring: ^Ring, cqes: []linux.IO_Uring_CQE, wait_nr: u32) -> (n_copied: u32, err: linux.Errno) {…}
```

 

Copies as many CQEs as are ready, and that can fit into the destination `cqes` slice.
If none are available, enters into the kernel to wait for at most `wait_nr` CQEs.
Returns the number of CQEs copied, advancing the CQ ring.
Provides all the wait/peek methods found in liburing, but with batching and a single method.
TODO: allow for timeout.

### [copy\_cqes\_ready ¶](#copy_cqes_ready) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L175)

```
copy_cqes_ready :: proc(ring: ^Ring, cqes: []linux.IO_Uring_CQE) -> (n_copied: u32) {…}
```

### [cq\_advance ¶](#cq_advance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L207)

```
cq_advance :: proc(ring: ^Ring, count: u32) {…}
```

 

For advanced use cases only that implement custom completion queue methods.
Matches the implementation of cq\_advance() in liburing.

### [cq\_ready ¶](#cq_ready) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L156)

```
cq_ready :: proc(ring: ^Ring) -> (n_ready: u32) {…}
```

 

Returns the number of completion queue entries in the completion queue (yet to consume).

### [cq\_ring\_needs\_flush ¶](#cq_ring_needs_flush) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L192)

```
cq_ring_needs_flush :: proc(ring: ^Ring) -> bool {…}
```

### [cqe\_seen ¶](#cqe_seen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L201)

```
cqe_seen :: proc(ring: ^Ring) {…}
```

 

For advanced use cases only that implement custom completion queue methods.
If you use copy\_cqes() or copy\_cqe() you must not call cqe\_seen() or cq\_advance().
Must be called exactly once after a zero-copy CQE has been processed by your application.
Not idempotent, calling more than once will result in other CQEs being lost.
Matches the implementation of cqe\_seen() in liburing.

### [destroy ¶](#destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L52)

```
destroy :: proc(ring: ^Ring) {…}
```

### [epoll\_ctl ¶](#epoll_ctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L170)

```
epoll_ctl :: proc(
	ring:      ^Ring, 
	user_data: u64, 
	epfd:      linux.Fd, 
	op:        linux.EPoll_Ctl_Opcode, 
	fd:        linux.Fd, 
	event:     ^linux.EPoll_Event, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Add, remove or modify entries in the interest list of epoll(7).

See epoll\_ctl(2) for details of the system call.

Available since 5.6.

### [fadvise ¶](#fadvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L459)

```
fadvise :: proc() {…}
```

### [fallocate ¶](#fallocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L455)

```
fallocate :: proc() {…}
```

### [fgetxattr ¶](#fgetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L776)

```
fgetxattr :: proc() {…}
```

### [files\_update ¶](#files_update) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L659)

```
files_update :: proc(ring: ^Ring, user_data: u64, fds: []linux.Fd, off: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

This command is an alternative to using IORING\_REGISTER\_FILES\_UPDATE which then works in an async fashion, like the rest of the uring commands.

Note that the array of file descriptors pointed to in addr must remain valid until this operation has completed.

Available since 5.6.

### [fixed\_fd\_install ¶](#fixed_fd_install) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L841)

```
fixed_fd_install :: proc() {…}
```

### [fixed\_file ¶](#fixed_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L845)

```
fixed_file :: proc() {…}
```

### [flush\_sq ¶](#flush_sq) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L93)

```
flush_sq :: proc(ring: ^Ring) -> (n_pending: u32) {…}
```

 

Sync internal state with kernel ring state on the submission queue side.
Returns the number of all pending events in the submission queue.
Rationale is to determine that an enter call is needed.

### [free\_space ¶](#free_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L81)

```
free_space :: proc(ring: ^Ring) -> int {…}
```

### [fsetxattr ¶](#fsetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L772)

```
fsetxattr :: proc() {…}
```

### [fsync ¶](#fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L63)

```
fsync :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, flags: bit_set[linux.IO_Uring_Fsync_Flags_Bits; u32]) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

File sync. See also fsync(2).

Optionally off and len can be used to specify a range within the file to be synced rather than syncing the entire file, which is the default behavior.

Note that, while I/O is initiated in the order in which it appears in the submission queue, completions are unordered.
For example, an application which places a write I/O followed by an fsync in the submission queue cannot expect the fsync to apply to the write.
The two operations execute in parallel, so the fsync may complete before the write is issued to the storage.
The same is also true for previously issued writes that have not completed prior to the fsync.
To enforce ordering one may utilize linked SQEs,
IOSQE\_IO\_DRAIN or wait for the arrival of CQEs of requests which have to be ordered before a given request before submitting its SQE.

### [ftruncate ¶](#ftruncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L821)

```
ftruncate :: proc() {…}
```

### [futex\_wait ¶](#futex_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L829)

```
futex_wait :: proc() {…}
```

### [futex\_waitv ¶](#futex_waitv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L837)

```
futex_waitv :: proc() {…}
```

### [futex\_wake ¶](#futex_wake) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L833)

```
futex_wake :: proc() {…}
```

### [get\_sqe ¶](#get_sqe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L62)

```
get_sqe :: proc(ring: ^Ring, extra: int = 1) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Returns a pointer to a vacant submission queue entry, or nil if the submission queue is full.
NOTE: extra is so you can make sure there is space for related entries, defaults to 1 so
a link timeout op can always be added after another.

### [getxattr ¶](#getxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L768)

```
getxattr :: proc() {…}
```

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L24)

```
init :: proc(ring: ^Ring, params: ^linux.IO_Uring_Params, entries: u32 = DEFAULT_ENTRIES) -> (err: linux.Errno) {…}
```

 

Initialize and setup an uring, `entries` must be a power of 2 between 1 and 4096.

### [link\_timeout ¶](#link_timeout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L421)

```
link_timeout :: proc(ring: ^Ring, user_data: u64, ts: ^linux.Time_Spec, flags: bit_set[linux.IO_Uring_Timeout_Flags_Bits; u32]) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Adds a link timeout operation.

You need to set linux.IOSQE\_IO\_LINK to flags of the target operation
and then call this method right after the target operation.
See https://lwn.net/Articles/803932/ for detail.

If the dependent request finishes before the linked timeout, the timeout
is canceled. If the timeout finishes before the dependent request, the
dependent request will be canceled.

The completion event result of the link\_timeout will be
`-ETIME` if the timeout finishes before the dependent request
(in this case, the completion event result of the dependent request will
be `-ECANCELED`), or
`-EALREADY` if the dependent request finishes before the linked timeout.

Available since 5.5.

### [linkat ¶](#linkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L711)

```
linkat :: proc() {…}
```

### [listen ¶](#listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L810)

```
listen :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, backlog: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issues the equivalent of the listen(2) system call.

fd must contain the file descriptor of the socket and addr must contain the backlog parameter, i.e. the maximum amount of pending queued connections.

Available since 6.11.

### [madvise ¶](#madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L470)

```
madvise :: proc(ring: ^Ring, user_data: u64, addr: rawptr, size: u32, advise: linux.MAdvice) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a madvise(2) system call.

See also madvise(2) for the general description of the related system call.

Available since 5.6.

### [mkdirat ¶](#mkdirat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L703)

```
mkdirat :: proc() {…}
```

### [msg\_ring ¶](#msg_ring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L715)

```
msg_ring :: proc() {…}
```

### [nop ¶](#nop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L6)

```
nop :: proc(ring: ^Ring, user_data: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Do not perform any I/O. This is useful for testing the performance of the uring implementation itself.

### [openat ¶](#openat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L499)

```
openat :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	dirfd:      linux.Fd, 
	path:       cstring, 
	mode:       bit_set[linux.Mode_Bits; u32], 
	flags:      bit_set[linux.Open_Flags_Bits; u32], 
	file_index: u32 = 0, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a openat(2) system call.

See also openat(2) for the general description of the related system call.

Available since 5.6.

If the file\_index is set to a positive number,
the file won't be installed into the normal file table as usual but will be placed into the fixed file table at index file\_index - 1.
In this case, instead of returning a file descriptor, the result will contain either 0 on success or an error.
If the index points to a valid empty slot, the installation is guaranteed to not fail.
If there is already a file in the slot, it will be replaced, similar to IORING\_OP\_FILES\_UPDATE.
Please note that only uring has access to such files and no other syscall can use them.
See IOSQE\_FIXED\_FILE and IORING\_REGISTER\_FILES.

Available since 5.15.

### [openat2 ¶](#openat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L513)

```
openat2 :: proc() {…}
```

### [poll\_add ¶](#poll_add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L93)

```
poll_add :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, events: bit_set[linux.Fd_Poll_Events_Bits; u16], flags: bit_set[linux.IO_Uring_Poll_Add_Flags_Bits; u32]) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Poll the fd specified in the submission queue entry for the events specified in the poll\_events field.

Unlike poll or epoll without EPOLLONESHOT, by default this interface always works in one shot mode.
That is, once the poll operation is completed, it will have to be resubmitted.

If IORING\_POLL\_ADD\_MULTI is set in the SQE len field, then the poll will work in multi shot mode instead.
That means it'll repatedly trigger when the requested event becomes true, and hence multiple CQEs can be generated from this single SQE.
The CQE flags field will have IORING\_CQE\_F\_MORE set on completion if the application should expect further CQE entries from the original request.
If this flag isn't set on completion, then the poll request has been terminated and no further events will be generated.
This mode is available since 5.13.

This command works like an async poll(2) and the completion event result is the returned mask of events.

Without IORING\_POLL\_ADD\_MULTI and the initial poll operation with IORING\_POLL\_ADD\_MULTI the operation is level triggered,
i.e. if there is data ready or events pending etc.
at the time of submission a corresponding CQE will be posted.
Potential further completions beyond the first caused by a IORING\_POLL\_ADD\_MULTI are edge triggered.

### [poll\_remove ¶](#poll_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L111)

```
poll_remove :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, events: bit_set[linux.Fd_Poll_Events_Bits; u16]) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Remove an existing poll request.

If found, the res field of the struct io\_uring\_cqe will contain 0.
If not found, res will contain -ENOENT, or -EALREADY if the poll request was in the process of completing already.

### [poll\_update\_events ¶](#poll_update_events) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L130)

```
poll_update_events :: proc(ring: ^Ring, user_data: u64, orig_user_data: u64, fd: linux.Fd, events: bit_set[linux.Fd_Poll_Events_Bits; u16]) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Update the events of an existing poll request.

The request will update an existing poll request with the mask of events passed in with this request.
The lookup is based on the user\_data field of the original SQE submitted.

Updating an existing poll is available since 5.13.

### [poll\_update\_user\_data ¶](#poll_update_user_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L150)

```
poll_update_user_data :: proc(ring: ^Ring, user_data: u64, orig_user_data: u64, new_user_data: u64, fd: linux.Fd) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Update the user data of an existing poll request.

The request will update the user\_data of an existing poll request based on the value passed.

Updating an existing poll is available since 5.13.

### [provide\_buffers ¶](#provide_buffers) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L671)

```
provide_buffers :: proc() {…}
```

### [read ¶](#read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L570)

```
read :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, buf: []u8, offset: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a pread(2) system call.

If offset is set to -1 , the offset will use (and advance) the file position, like the read(2) system calls.
These are non-vectored versions of the IORING\_OP\_READV and IORING\_OP\_WRITEV opcodes.
See also read(2) for the general description of the related system call.

Available since 5.6.

### [read\_fixed ¶](#read_fixed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L43)

```
read_fixed :: proc() {…}
```

### [read\_multishot ¶](#read_multishot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L825)

```
read_multishot :: proc() {…}
```

### [readv ¶](#readv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L16)

```
readv :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, iovs: []linux.IO_Vec, off: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Vectored read operation, see also readv(2).

### [recv ¶](#recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L283)

```
recv :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	sockfd:     linux.Fd, 
	buf:        []u8, 
	flags:      bit_set[linux.Socket_Msg_Bits; i32], 
	poll_first: bool = false, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Works just like send, but receives instead of sends.

poll\_first: If set, uring will assume the socket is currently empty and attempting to receive data will be unsuccessful.
For this case, uring will arm internal poll and trigger a receive of the data when the socket has data to be read.
This initial receive attempt can be wasteful for the case where the socket is expected to be empty, setting this flag will bypass the initial receive attempt and go straight to arming poll.
If poll does indicate that data is ready to be received, the operation will proceed.

Available since 5.6.

### [recvmsg ¶](#recvmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L223)

```
recvmsg :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	fd:         linux.Fd, 
	msghdr:     ^linux.Msg_Hdr, 
	flags:      bit_set[linux.Socket_Msg_Bits; i32], 
	poll_first: bool = false, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Works just like sendmsg, but receives instead of sends.

poll\_first: If set, uring will assume the socket is currently empty and attempting to receive data will be unsuccessful.
For this case, uring will arm internal poll and trigger a receive of the data when the socket has data to be read.
This initial receive attempt can be wasteful for the case where the socket is expected to be empty, setting this flag will bypass the initial receive attempt and go straight to arming poll.
If poll does indicate that data is ready to be received, the operation will proceed.

Available since 5.3.

### [remove\_buffers ¶](#remove_buffers) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L675)

```
remove_buffers :: proc() {…}
```

### [renameat ¶](#renameat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L695)

```
renameat :: proc() {…}
```

### [send ¶](#send) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L248)

```
send :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	sockfd:     linux.Fd, 
	buf:        []u8, 
	flags:      bit_set[linux.Socket_Msg_Bits; i32], 
	poll_first: bool = false, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a send(2) system call.

See also send(2) for the general description of the related system call.

poll\_first: If set, uring will assume the socket is currently full and attempting to send data will be unsuccessful.
For this case, uring will arm internal poll and trigger a send of the data when there is enough space available.
This initial send attempt can be wasteful for the case where the socket is expected to be full, setting this flag will bypass the initial send attempt and go straight to arming poll.
If poll does indicate that data can be sent, the operation will proceed.

Available since 5.6.

### [send\_zc ¶](#send_zc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L752)

```
send_zc :: proc() {…}
```

### [sendmsg ¶](#sendmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L200)

```
sendmsg :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	fd:         linux.Fd, 
	msghdr:     ^linux.Msg_Hdr, 
	flags:      bit_set[linux.Socket_Msg_Bits; i32], 
	poll_first: bool = false, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a sendmsg(2) system call.

See also sendmsg(2) for the general description of the related system call.

poll\_first: if set, uring will assume the socket is currently full and attempting to send data will be unsuccessful.
For this case, uring will arm internal poll and trigger a send of the data when there is enough space available.
This initial send attempt can be wasteful for the case where the socket is expected to be full, setting this flag will
bypass the initial send attempt and go straight to arming poll.
If poll does indicate that data can be sent, the operation will proceed.

Available since 5.3.

### [sendmsg\_zc ¶](#sendmsg_zc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L756)

```
sendmsg_zc :: proc() {…}
```

### [sendto ¶](#sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L262)

```
sendto :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	sockfd:     linux.Fd, 
	buf:        []u8, 
	flags:      bit_set[linux.Socket_Msg_Bits; i32], 
	dest:       ^$T, 
	poll_first: bool = false, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

### [setxattr ¶](#setxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L764)

```
setxattr :: proc() {…}
```

### [shutdown ¶](#shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L684)

```
shutdown :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, how: linux.Shutdown_How) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a shutdown(2) system call.

Available since 5.11.

### [socket ¶](#socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L734)

```
socket :: proc(
	ring:       ^Ring, 
	user_data:  u64, 
	domain:     linux.Address_Family, 
	socktype:   linux.Socket_Type, 
	protocol:   linux.Protocol, 
	file_index: u32 = 0, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a socket(2) system call.

See also socket(2) for the general description of the related system call.

Available since 5.19.

If the file\_index field is set to a positive number, the file won't be installed into the normal file
table as usual but will be placed into the fixed file table at index file\_index - 1.
In this case, instead of returning a file descriptor, the result will contain either 0 on success or an error.
If the index points to a valid empty slot, the installation is guaranteed to not fail.
If there is already a file in the slot, it will be replaced, similar to IORING\_OP\_FILES\_UPDATE.
Please note that only uring has access to such files and no other syscall can use them.
See IOSQE\_FIXED\_FILE and IORING\_REGISTER\_FILES.

### [splice ¶](#splice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L616)

```
splice :: proc(
	ring:      ^Ring, 
	user_data: u64, 
	fd_in:     linux.Fd, 
	off_in:    i64, 
	fd_out:    linux.Fd, 
	off_out:   i64, 
	len:       u32, 
	flags:     bit_set[linux.IO_Uring_Splice_Flags_Bits; u32], 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a splice(2) system call.

A sentinel value of -1 is used to pass the equivalent of a NULL for the offsets to splice(2).

Please note that one of the file descriptors must refer to a pipe.
See also splice(2) for the general description of the related system call.

Available since 5.7.

### [sq\_ready ¶](#sq_ready) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L149)

```
sq_ready :: proc(ring: ^Ring) -> u32 {…}
```

 

Returns the number of submission queue entries in the submission queue.

### [sq\_ring\_needs\_enter ¶](#sq_ring_needs_enter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L114)

```
sq_ring_needs_enter :: proc(ring: ^Ring, flags: ^bit_set[linux.IO_Uring_Enter_Flags_Bits; u32]) -> bool {…}
```

 

Returns true if we are not using an SQ thread (thus nobody submits but us),
or if IORING\_SQ\_NEED\_WAKEUP is set and the SQ thread must be explicitly awakened.
For the latter case, we set the SQ thread wakeup flag.
Matches the implementation of sq\_ring\_needs\_enter() in liburing.

### [statx ¶](#statx) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L547)

```
statx :: proc(
	ring:      ^Ring, 
	user_data: u64, 
	dirfd:     linux.Fd, 
	pathname:  cstring, 
	flags:     bit_set[linux.FD_Flags_Bits; i32], 
	mask:      bit_set[linux.Statx_Mask_Bits; u32], 
	buf:       ^linux.Statx, 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a statx(2) system call.

See also statx(2) for the general description of the related system call.

Available since 5.6.

### [submission\_queue\_destroy ¶](#submission_queue_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L263)

```
submission_queue_destroy :: proc(sq: ^Submission_Queue) -> (err: linux.Errno) {…}
```

### [submission\_queue\_make ¶](#submission_queue_make) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L231)

```
submission_queue_make :: proc(fd: linux.Fd, params: ^linux.IO_Uring_Params) -> (sq: Submission_Queue, err: linux.Errno) {…}
```

### [submit ¶](#submit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin#L128)

```
submit :: proc(ring: ^Ring, wait_nr: u32 = 0, timeout: ^linux.Time_Spec = nil) -> (n_submitted: u32, err: linux.Errno) {…}
```

 

Submits the submission queue entries acquired via get\_sqe().
Returns the number of entries submitted.
Optionally wait for a number of events by setting `wait_nr`, and/or set a maximum wait time by setting `timeout`.

### [symlinkat ¶](#symlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L707)

```
symlinkat :: proc() {…}
```

### [sync\_file\_range ¶](#sync_file_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L183)

```
sync_file_range :: proc() {…}
```

### [tee ¶](#tee) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L639)

```
tee :: proc(
	ring:      ^Ring, 
	user_data: u64, 
	fd_in:     linux.Fd, 
	fd_out:    linux.Fd, 
	len:       u32, 
	flags:     bit_set[linux.IO_Uring_Splice_Flags_Bits; u32], 
) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a tee(2) system call.

Please note that both of the file descriptors must refer to a pipe.
See also tee(2) for the general description of the related system call.

Available since 5.8.

### [timeout ¶](#timeout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L311)

```
timeout :: proc(ring: ^Ring, user_data: u64, ts: ^linux.Time_Spec, count: u32, flags: bit_set[linux.IO_Uring_Timeout_Flags_Bits; u32]) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Register a timeout operation.

The timeout will complete when either the timeout expires, or after the specified number of
events complete (if `count` is greater than `0`).

`flags` may be `0` for a relative timeout, or `IORING_TIMEOUT_ABS` for an absolute timeout.

The completion event result will be `-ETIME` if the timeout completed through expiration,
`0` if the timeout completed after the specified number of events, or `-ECANCELED` if the
timeout was removed before it expired.

uring timeouts use the `CLOCK.MONOTONIC` clock source.

### [timeout\_remove ¶](#timeout_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L334)

```
timeout_remove :: proc(ring: ^Ring, user_data: u64, timeout_user_data: u64, flags: bit_set[linux.IO_Uring_Timeout_Flags_Bits; u32]) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Rmove an existing timeout operation.

The timeout is identified by it's `user_data`.

The completion event result will be `0` if the timeout was found and cancelled successfully,
`-EBUSY` if the timeout was found but expiration was already in progress, or
`-ENOENT` if the timeout was not found.

### [unlinkat ¶](#unlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L699)

```
unlinkat :: proc() {…}
```

### [uring\_cmd ¶](#uring_cmd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L748)

```
uring_cmd :: proc() {…}
```

### [waitid ¶](#waitid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L760)

```
waitid :: proc() {…}
```

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L592)

```
write :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, buf: []u8, offset: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Issue the equivalent of a pwrite(2) system call.

If offset is set to -1 , the offset will use (and advance) the file position, like the read(2) system calls.
These are non-vectored versions of the IORING\_OP\_READV and IORING\_OP\_WRITEV opcodes.
See also write(2) for the general description of the related system call.

Available since 5.6.

### [write\_fixed ¶](#write_fixed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L47)

```
write_fixed :: proc() {…}
```

### [writev ¶](#writev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin#L30)

```
writev :: proc(ring: ^Ring, user_data: u64, fd: linux.Fd, iovs: []linux.IO_Vec, off: u64) -> (sqe: ^linux.IO_Uring_SQE, ok: bool) {…}
```

 

Vectored write operation, see also writev(2).

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/doc.odin)
* [ops.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/ops.odin)
* [uring.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/uring/uring.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.776007700 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Completion\_Queue](#Completion_Queue)
    + [Ring](#Ring)
    + [Submission\_Queue](#Submission_Queue)
  * [Constants](#pkg-Constants)
    + [DEFAULT\_ENTRIES](#DEFAULT_ENTRIES)
    + [DEFAULT\_PARAMS](#DEFAULT_PARAMS)
    + [DEFAULT\_THREAD\_IDLE\_MS](#DEFAULT_THREAD_IDLE_MS)
    + [MAX\_ENTRIES](#MAX_ENTRIES)
  * [Procedures](#pkg-Procedures)
    + [accept](#accept)
    + [async\_cancel](#async_cancel)
    + [bind](#bind)
    + [close](#close)
    + [completion\_queue\_make](#completion_queue_make)
    + [connect](#connect)
    + [copy\_cqes](#copy_cqes)
    + [copy\_cqes\_ready](#copy_cqes_ready)
    + [cq\_advance](#cq_advance)
    + [cq\_ready](#cq_ready)
    + [cq\_ring\_needs\_flush](#cq_ring_needs_flush)
    + [cqe\_seen](#cqe_seen)
    + [destroy](#destroy)
    + [epoll\_ctl](#epoll_ctl)
    + [fadvise](#fadvise)
    + [fallocate](#fallocate)
    + [fgetxattr](#fgetxattr)
    + [files\_update](#files_update)
    + [fixed\_fd\_install](#fixed_fd_install)
    + [fixed\_file](#fixed_file)
    + [flush\_sq](#flush_sq)
    + [free\_space](#free_space)
    + [fsetxattr](#fsetxattr)
    + [fsync](#fsync)
    + [ftruncate](#ftruncate)
    + [futex\_wait](#futex_wait)
    + [futex\_waitv](#futex_waitv)
    + [futex\_wake](#futex_wake)
    + [get\_sqe](#get_sqe)
    + [getxattr](#getxattr)
    + [init](#init)
    + [link\_timeout](#link_timeout)
    + [linkat](#linkat)
    + [listen](#listen)
    + [madvise](#madvise)
    + [mkdirat](#mkdirat)
    + [msg\_ring](#msg_ring)
    + [nop](#nop)
    + [openat](#openat)
    + [openat2](#openat2)
    + [poll\_add](#poll_add)
    + [poll\_remove](#poll_remove)
    + [poll\_update\_events](#poll_update_events)
    + [poll\_update\_user\_data](#poll_update_user_data)
    + [provide\_buffers](#provide_buffers)
    + [read](#read)
    + [read\_fixed](#read_fixed)
    + [read\_multishot](#read_multishot)
    + [readv](#readv)
    + [recv](#recv)
    + [recvmsg](#recvmsg)
    + [remove\_buffers](#remove_buffers)
    + [renameat](#renameat)
    + [send](#send)
    + [send\_zc](#send_zc)
    + [sendmsg](#sendmsg)
    + [sendmsg\_zc](#sendmsg_zc)
    + [sendto](#sendto)
    + [setxattr](#setxattr)
    + [shutdown](#shutdown)
    + [socket](#socket)
    + [splice](#splice)
    + [sq\_ready](#sq_ready)
    + [sq\_ring\_needs\_enter](#sq_ring_needs_enter)
    + [statx](#statx)
    + [submission\_queue\_destroy](#submission_queue_destroy)
    + [submission\_queue\_make](#submission_queue_make)
    + [submit](#submit)
    + [symlinkat](#symlinkat)
    + [sync\_file\_range](#sync_file_range)
    + [tee](#tee)
    + [timeout](#timeout)
    + [timeout\_remove](#timeout_remove)
    + [unlinkat](#unlinkat)
    + [uring\_cmd](#uring_cmd)
    + [waitid](#waitid)
    + [write](#write)
    + [write\_fixed](#write_fixed)
    + [writev](#writev)
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