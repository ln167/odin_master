package sys/valgrind - pkg.odin-lang.org 






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



Current Package: *[sys\_valgrind](/core/sys/valgrind)*

  

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
3. [valgrind](/core/sys/valgrind)

# package core:sys/valgrind [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind)

#### **Warning:**This was generated for `-target:windows_amd64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (7)

* [Callgrind\_Client\_Request](#Callgrind_Client_Request)
* [Client\_Request](#Client_Request)
* [Count\_Result](#Count_Result)
* [Helgrind\_Client\_Request](#Helgrind_Client_Request)
* [Mem\_Check\_Client\_Request](#Mem_Check_Client_Request)
* [Mem\_Pool\_Flag](#Mem_Pool_Flag)
* [Mem\_Pool\_Flags](#Mem_Pool_Flags)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (92)

* [added\_leak\_check](#added_leak_check)
* [callgrind\_client\_request\_expr](#callgrind_client_request_expr)
* [callgrind\_client\_request\_stmt](#callgrind_client_request_stmt)
* [changed\_leak\_check](#changed_leak_check)
* [check\_mem\_is\_addressable](#check_mem_is_addressable)
* [check\_mem\_is\_defined](#check_mem_is_defined)
* [client\_request\_expr](#client_request_expr)
* [client\_request\_stmt](#client_request_stmt)
* [count\_errrors](#count_errrors)
* [count\_leak\_blocks](#count_leak_blocks)
* [count\_leaks](#count_leaks)
* [create\_block](#create_block)
* [create\_mem\_pool](#create_mem_pool)
* [destroy\_mem\_pool](#destroy_mem_pool)
* [disable\_addr\_error\_reporting\_in\_range](#disable_addr_error_reporting_in_range)
* [disable\_error\_reporting](#disable_error_reporting)
* [discard](#discard)
* [discard\_translations](#discard_translations)
* [dump\_stats](#dump_stats)
* [dump\_stats\_at](#dump_stats_at)
* [enable\_addr\_error\_reporting\_in\_range](#enable_addr_error_reporting_in_range)
* [enable\_error\_reporting](#enable_error_reporting)
* [free\_like\_block](#free_like_block)
* [get\_vbits](#get_vbits)
* [helgrind\_annotate\_condvar\_lock\_wait](#helgrind_annotate_condvar_lock_wait)
* [helgrind\_annotate\_condvar\_signal](#helgrind_annotate_condvar_signal)
* [helgrind\_annotate\_condvar\_signal\_all](#helgrind_annotate_condvar_signal_all)
* [helgrind\_annotate\_condvar\_wait](#helgrind_annotate_condvar_wait)
* [helgrind\_barrier\_destroy\_pre](#helgrind_barrier_destroy_pre)
* [helgrind\_barrier\_init\_pre](#helgrind_barrier_init_pre)
* [helgrind\_barrier\_resize\_pre](#helgrind_barrier_resize_pre)
* [helgrind\_barrier\_wait\_pre](#helgrind_barrier_wait_pre)
* [helgrind\_clean\_memory](#helgrind_clean_memory)
* [helgrind\_clean\_memory\_heap\_block](#helgrind_clean_memory_heap_block)
* [helgrind\_clean\_memory\_slice](#helgrind_clean_memory_slice)
* [helgrind\_client\_request\_expr](#helgrind_client_request_expr)
* [helgrind\_client\_request\_stmt](#helgrind_client_request_stmt)
* [helgrind\_client\_request\_unimp](#helgrind_client_request_unimp)
* [helgrind\_cond\_broadcast\_pre](#helgrind_cond_broadcast_pre)
* [helgrind\_cond\_destroy\_pre](#helgrind_cond_destroy_pre)
* [helgrind\_cond\_init\_post](#helgrind_cond_init_post)
* [helgrind\_cond\_signal\_pre](#helgrind_cond_signal_pre)
* [helgrind\_cond\_wait\_post](#helgrind_cond_wait_post)
* [helgrind\_cond\_wait\_pre](#helgrind_cond_wait_pre)
* [helgrind\_disable\_checking](#helgrind_disable_checking)
* [helgrind\_enable\_checking](#helgrind_enable_checking)
* [helgrind\_mutex\_destroy\_pre](#helgrind_mutex_destroy_pre)
* [helgrind\_mutex\_init\_post](#helgrind_mutex_init_post)
* [helgrind\_mutex\_lock\_post](#helgrind_mutex_lock_post)
* [helgrind\_mutex\_lock\_pre](#helgrind_mutex_lock_pre)
* [helgrind\_mutex\_unlock\_post](#helgrind_mutex_unlock_post)
* [helgrind\_mutex\_unlock\_pre](#helgrind_mutex_unlock_pre)
* [helgrind\_rwlock\_destroy\_pre](#helgrind_rwlock_destroy_pre)
* [helgrind\_rwlock\_init\_post](#helgrind_rwlock_init_post)
* [helgrind\_rwlock\_lock\_pre](#helgrind_rwlock_lock_pre)
* [helgrind\_rwlock\_unlock\_post](#helgrind_rwlock_unlock_post)
* [helgrind\_sem\_destroy\_pre](#helgrind_sem_destroy_pre)
* [helgrind\_sem\_init\_post](#helgrind_sem_init_post)
* [helgrind\_sem\_post\_pre](#helgrind_sem_post_pre)
* [helgrind\_sem\_wait\_post](#helgrind_sem_wait_post)
* [inner\_threads](#inner_threads)
* [leak\_check](#leak_check)
* [make\_mem\_defined](#make_mem_defined)
* [make\_mem\_defined\_if\_addressable](#make_mem_defined_if_addressable)
* [make\_mem\_no\_access](#make_mem_no_access)
* [make\_mem\_undefined](#make_mem_undefined)
* [malloc\_like\_block](#malloc_like_block)
* [map\_ip\_to\_src\_loc](#map_ip_to_src_loc)
* [mem\_check\_client\_request\_expr](#mem_check_client_request_expr)
* [mem\_check\_client\_request\_stmt](#mem_check_client_request_stmt)
* [mem\_pool\_alloc](#mem_pool_alloc)
* [mem\_pool\_change](#mem_pool_change)
* [mem\_pool\_exists](#mem_pool_exists)
* [mem\_pool\_free](#mem_pool_free)
* [mem\_pool\_trim](#mem_pool_trim)
* [monitor\_command](#monitor_command)
* [move\_mem\_pool](#move_mem_pool)
* [non\_simd\_call0](#non_simd_call0)
* [non\_simd\_call1](#non_simd_call1)
* [non\_simd\_call2](#non_simd_call2)
* [non\_simd\_call3](#non_simd_call3)
* [quick\_leak\_check](#quick_leak_check)
* [resize\_inplace\_block](#resize_inplace_block)
* [running\_on\_valgrind](#running_on_valgrind)
* [set\_vbits](#set_vbits)
* [stack\_change](#stack_change)
* [stack\_deregister](#stack_deregister)
* [stack\_register](#stack_register)
* [start\_instrumentation](#start_instrumentation)
* [stop\_instrumentation](#stop_instrumentation)
* [toggle\_collect](#toggle_collect)
* [zero\_stats](#zero_stats)

Procedure Groups (0)

This section is empty.

## Types

### [Callgrind\_Client\_Request ¶](#Callgrind_Client_Request) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L6)

```
Callgrind_Client_Request :: enum uintptr {
	Dump_Stats            = 1129578496, 
	Zero_Stats, 
	Toggle_Collect, 
	Dump_Stats_At, 
	Start_Instrumentation, 
	Stop_Instrumentation, 
}
```

##### Related Procedures With Parameters

* [callgrind\_client\_request\_expr](/core/sys/valgrind/#callgrind_client_request_expr)
* [callgrind\_client\_request\_stmt](/core/sys/valgrind/#callgrind_client_request_stmt)

### [Client\_Request ¶](#Client_Request) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L6)

```
Client_Request :: enum uintptr {
	Running_On_Valgrind            = 4097, 
	Discard_Translations           = 4098, 
	Client_Call0                   = 4353, 
	Client_Call1                   = 4354, 
	Client_Call2                   = 4355, 
	Client_Call3                   = 4356, 
	Count_Errors                   = 4609, 
	Gdb_Monitor_Command            = 4610, 
	Malloc_Like_Block              = 4865, 
	Resize_Inplace_Block           = 4875, 
	Free_Like_Block                = 4866, 
	Create_Mem_Pool                = 4867, 
	Destroy_Mem_Pool               = 4868, 
	Mem_Pool_Alloc                 = 4869, 
	Mem_Pool_Free                  = 4870, 
	Mem_Pool_Trim                  = 4871, 
	Move_Mem_Pool                  = 4872, 
	Mem_Pool_Change                = 4873, 
	Mem_Pool_Exists                = 4874, 
	Printf                         = 5121, 
	Printf_Backtrace               = 5122, 
	Printf_Valist_By_Ref           = 5123, 
	Printf_Backtrace_Valist_By_Ref = 5124, 
	Stack_Register                 = 5377, 
	Stack_Deregister               = 5378, 
	Stack_Change                   = 5379, 
	Load_Pdb_Debug_Info            = 5633, 
	Map_Ip_To_Src_Loc              = 5889, 
	Change_Err_Disablement         = 6145, 
	Vex_Init_For_Iri               = 6401, 
	Inner_Threads                  = 6402, 
}
```

##### Related Procedures With Parameters

* [client\_request\_expr](/core/sys/valgrind/#client_request_expr)
* [client\_request\_stmt](/core/sys/valgrind/#client_request_stmt)

### [Count\_Result ¶](#Count_Result) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L103)

```
Count_Result :: struct {
	leaked:     uint,
	dubious:    uint,
	reachable:  uint,
	suppressed: uint,
}
```

##### Related Procedures With Returns

* [count\_leak\_blocks](/core/sys/valgrind/#count_leak_blocks)
* [count\_leaks](/core/sys/valgrind/#count_leaks)

### [Helgrind\_Client\_Request ¶](#Helgrind_Client_Request) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L6)

```
Helgrind_Client_Request :: enum uintptr {
	Clean_Memory                     = 1212612608, 
	Set_My_pthread_t                 = 2420572416, 
	Pthread_Join_Post, 
	Pthread_Mutex_Init_Post, 
	Pthread_Mutex_Destroy_Pre, 
	Pthread_Mutex_Unlock_Pre, 
	Pthread_Mutex_Unlock_Post, 
	Pthread_Mutex_Lock_Pre, 
	Pthread_Mutex_Lock_Post, 
	Pthread_Cond_Signal_Pre, 
	Pthread_Cond_Broadcast_Pre, 
	Pthread_Cond_Wait_Pre, 
	Pthread_Cond_Wait_Post, 
	Pthread_Cond_Destroy_Pre, 
	Pthread_Rwlock_Init_Post, 
	Pthread_Rwlock_Destroy_Pre, 
	Pthread_Rwlock_Lock_Pre, 
	Pthread_Rwlock_Lock_Post, 
	Pthread_Rwlock_Unlock_Pre, 
	Pthread_Rwlock_Unlock_Post, 
	Posix_Sem_Init_Post, 
	Posix_Sem_Destroy_Pre, 
	Posix_Sem_Post_Pre, 
	Posix_Sem_Wait_Post, 
	Pthread_Barrier_Init_Pre, 
	Pthread_Barrier_Wait_Pre, 
	Pthread_Barrier_Destroy_Pre, 
	Pthread_Spin_Init_Or_Unlock_Pre, 
	Pthread_Spin_Init_Or_Unlock_Post, 
	Pthread_Spin_Lock_Pre, 
	Pthread_Spin_Lock_Post, 
	Pthread_Spin_Destroy_Pre, 
	Clientreq_Unimp, 
	Userso_Send_Pre, 
	Userso_Recv_Post, 
	Userso_Forget_All, 
	Reserved2, 
	Reserved3, 
	Reserved4, 
	Arange_Make_Untracked, 
	Arange_Make_Tracked, 
	Pthread_Barrier_Resize_Pre, 
	Clean_Memory_Heapblock, 
	Pthread_Cond_Init_Post, 
}
```

##### Related Procedures With Parameters

* [helgrind\_client\_request\_expr](/core/sys/valgrind/#helgrind_client_request_expr)
* [helgrind\_client\_request\_stmt](/core/sys/valgrind/#helgrind_client_request_stmt)

### [Mem\_Check\_Client\_Request ¶](#Mem_Check_Client_Request) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L6)

```
Mem_Check_Client_Request :: enum uintptr {
	Make_Mem_No_Access                    = 1296236544, 
	Make_Mem_Undefined, 
	Make_Mem_Defined, 
	Discard, 
	Check_Mem_Is_Addressable, 
	Check_Mem_Is_Defined, 
	Do_Leak_Check, 
	Count_Leaks, 
	Get_Vbits, 
	Set_Vbits, 
	Create_Block, 
	Make_Mem_Defined_If_Addressable, 
	Count_Leak_Blocks, 
	Enable_Addr_Error_Reporting_In_Range, 
	Disable_Addr_Error_Reporting_In_Range, 
}
```

##### Related Procedures With Parameters

* [mem\_check\_client\_request\_expr](/core/sys/valgrind/#mem_check_client_request_expr)
* [mem\_check\_client\_request\_stmt](/core/sys/valgrind/#mem_check_client_request_stmt)

### [Mem\_Pool\_Flag ¶](#Mem_Pool_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L96)

```
Mem_Pool_Flag :: enum uintptr {
	Auto_Free = 0, 
	Meta_Pool = 1, 
}
```

### [Mem\_Pool\_Flags ¶](#Mem_Pool_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L95)

```
Mem_Pool_Flags :: distinct bit_set[Mem_Pool_Flag; uintptr]
```

##### Related Procedures With Parameters

* [create\_mem\_pool](/core/sys/valgrind/#create_mem_pool)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [added\_leak\_check ¶](#added_leak_check) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L90)

```
added_leak_check :: proc "c" () {…}
```

 

Same as `leak_check()` but only showing the entries for which there was an increase
in leaked bytes or leaked nr of blocks since the previous leak search.

### [callgrind\_client\_request\_expr ¶](#callgrind_client_request_expr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L16)

```
callgrind_client_request_expr :: proc "c" (
	default:        uintptr, 
	request:        Callgrind_Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) -> uintptr {…}
```

### [callgrind\_client\_request\_stmt ¶](#callgrind_client_request_stmt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L19)

```
callgrind_client_request_stmt :: proc "c" (
	request:        Callgrind_Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) {…}
```

### [changed\_leak\_check ¶](#changed_leak_check) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L95)

```
changed_leak_check :: proc "c" () {…}
```

 

Same as `added_leak_check()` but showing entries with increased or decreased
leaked bytes/blocks since previous leak search.

### [check\_mem\_is\_addressable ¶](#check_mem_is_addressable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L52)

```
check_mem_is_addressable :: proc "c" (qzz: []u8) -> uintptr {…}
```

 

Check that memory at `raw_data(qzz)` is addressable for `len(qzz)` bytes.
If suitable addressibility is not established, Valgrind prints an error
message and returns the address of the first offending byte.
Otherwise it returns zero.

### [check\_mem\_is\_defined ¶](#check_mem_is_defined) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L59)

```
check_mem_is_defined :: proc "c" (qzz: []u8) -> uintptr {…}
```

 

Check that memory at `raw_data(qzz)` is addressable and defined for `len(qzz)` bytes.
If suitable addressibility and definedness are not established,
Valgrind prints an error message and returns the address of the first
offending byte. Otherwise it returns zero.

### [client\_request\_expr ¶](#client_request_expr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L41)

```
client_request_expr :: proc "c" (
	default:        uintptr, 
	request:        Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) -> uintptr {…}
```

### [client\_request\_stmt ¶](#client_request_stmt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L44)

```
client_request_stmt :: proc "c" (
	request:        Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) {…}
```

### [count\_errrors ¶](#count_errrors) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L76)

```
count_errrors :: proc "c" () -> uint {…}
```

 

Counts the number of errors that have been recorded by a tool.

### [count\_leak\_blocks ¶](#count_leak_blocks) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L122)

```
count_leak_blocks :: proc "c" () -> (res: Count_Result) {…}
```

### [count\_leaks ¶](#count_leaks) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L110)

```
count_leaks :: proc "c" () -> (res: Count_Result) {…}
```

### [create\_block ¶](#create_block) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L75)

```
create_block :: proc "c" (qzz: []u8, desc: cstring) -> bool {…}
```

 

Create a block-description handle.
The description is an ascii string which is included in any messages
pertaining to addresses within the specified memory range.
Has no other effect on the properties of the memory range.

### [create\_mem\_pool ¶](#create_mem_pool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L102)

```
create_mem_pool :: proc "c" (pool: rawptr, rz_b: uintptr, is_zeroed: bool, flags: Mem_Pool_Flags) {…}
```

 

Create a memory pool.

### [destroy\_mem\_pool ¶](#destroy_mem_pool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L106)

```
destroy_mem_pool :: proc "c" (pool: rawptr) {…}
```

 

Destroy a memory pool.

### [disable\_addr\_error\_reporting\_in\_range ¶](#disable_addr_error_reporting_in_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L167)

```
disable_addr_error_reporting_in_range :: proc "c" (qzz: []u8) -> uintptr {…}
```

 

Disable reporting of addressing errors in the specified address range.

### [disable\_error\_reporting ¶](#disable_error_reporting) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L162)

```
disable_error_reporting :: proc "c" () {…}
```

 

Disable error reporting for the current thread/
It behaves in a stack-like way, meaning you can safely call this multiple times
given that `enable_error_reporting()` is called the same number of times to
re-enable the error reporting.
The first call of this macro disables reporting.
Subsequent calls have no effect except to increase the number of `enable_error_reporting()`
calls needed to re-enable reporting.
Child threads do not inherit this setting from their parents;
they are always created with reporting enabled.

### [discard ¶](#discard) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L79)

```
discard :: proc "c" (blk_index: uintptr) -> bool {…}
```

 

Discard a block-description-handle. Returns true for an invalid handle, false for a valid handle.

### [discard\_translations ¶](#discard_translations) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L58)

```
discard_translations :: proc "c" (qzz: []u8) {…}
```

 

Discard translation of code in the slice qzz. Useful if you are debugging a JIT-er or some such,
since it provides a way to make sure valgrind will retranslate the invalidated area.

### [dump\_stats ¶](#dump_stats) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L24)

```
dump_stats :: proc "c" () {…}
```

 

Dump current state of cost centres, and zero them afterwards.

### [dump\_stats\_at ¶](#dump_stats_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L44)

```
dump_stats_at :: proc "c" (pos_str: rawptr) {…}
```

 

Dump current state of cost centres, and zero them afterwards.
The argument is appended to a string stating the reason which triggered
the dump. This string is written as a description field into the
profile data dump.

### [enable\_addr\_error\_reporting\_in\_range ¶](#enable_addr_error_reporting_in_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L163)

```
enable_addr_error_reporting_in_range :: proc "c" (qzz: []u8) -> uintptr {…}
```

 

(Re-)enable reporting of addressing errors in the specified address range.

### [enable\_error\_reporting ¶](#enable_error_reporting) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L166)

```
enable_error_reporting :: proc "c" () {…}
```

 

Re-enable error reporting

### [free\_like\_block ¶](#free_like_block) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L91)

```
free_like_block :: proc "c" (addr: rawptr, rz_b: uintptr) {…}
```

### [get\_vbits ¶](#get_vbits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L142)

```
get_vbits :: proc(zza, zzvbits: []u8) -> u8 {…}
```

 

Get the validity data for addresses zza and copy it
into the provided zzvbits array. Return values:
0 - if not running on valgrind
1 - success
2 - [previously indicated unaligned arrays; these are now allowed]
3 - if any parts of zzsrc/zzvbits are not addressable.
The metadata is not copied in cases 0, 2 or 3 so it should be
impossible to segfault your system by using this call.

### [helgrind\_annotate\_condvar\_lock\_wait ¶](#helgrind_annotate_condvar_lock_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L167)

```
helgrind_annotate_condvar_lock_wait :: proc "c" (cv: rawptr, lock: rawptr) {…}
```

### [helgrind\_annotate\_condvar\_signal ¶](#helgrind_annotate_condvar_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L173)

```
helgrind_annotate_condvar_signal :: proc "c" (cv: rawptr) {…}
```

### [helgrind\_annotate\_condvar\_signal\_all ¶](#helgrind_annotate_condvar_signal_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L176)

```
helgrind_annotate_condvar_signal_all :: proc "c" (cv: rawptr) {…}
```

### [helgrind\_annotate\_condvar\_wait ¶](#helgrind_annotate_condvar_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L170)

```
helgrind_annotate_condvar_wait :: proc "c" (cv: rawptr) {…}
```

### [helgrind\_barrier\_destroy\_pre ¶](#helgrind_barrier_destroy_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L117)

```
helgrind_barrier_destroy_pre :: proc "c" (bar: rawptr) {…}
```

### [helgrind\_barrier\_init\_pre ¶](#helgrind_barrier_init_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L108)

```
helgrind_barrier_init_pre :: proc "c" (bar: rawptr, count: uint, resizable: bool) {…}
```

### [helgrind\_barrier\_resize\_pre ¶](#helgrind_barrier_resize_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L114)

```
helgrind_barrier_resize_pre :: proc "c" (bar: rawptr, new_count: uint) {…}
```

### [helgrind\_barrier\_wait\_pre ¶](#helgrind_barrier_wait_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L111)

```
helgrind_barrier_wait_pre :: proc "c" (bar: rawptr) {…}
```

### [helgrind\_clean\_memory ¶](#helgrind_clean_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L123)

```
helgrind_clean_memory :: proc "c" (qzz_start: rawptr, qzz_len: uint) {…}
```

### [helgrind\_clean\_memory\_heap\_block ¶](#helgrind_clean_memory_heap_block) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L129)

```
helgrind_clean_memory_heap_block :: proc "c" (qzz_blockstart: rawptr) -> int {…}
```

### [helgrind\_clean\_memory\_slice ¶](#helgrind_clean_memory_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L126)

```
helgrind_clean_memory_slice :: proc "c" (qzz: []u8) {…}
```

### [helgrind\_client\_request\_expr ¶](#helgrind_client_request_expr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L54)

```
helgrind_client_request_expr :: proc "c" (
	default:        uintptr, 
	request:        Helgrind_Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) -> uintptr {…}
```

### [helgrind\_client\_request\_stmt ¶](#helgrind_client_request_stmt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L57)

```
helgrind_client_request_stmt :: proc "c" (
	request:        Helgrind_Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) {…}
```

### [helgrind\_client\_request\_unimp ¶](#helgrind_client_request_unimp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L162)

```
helgrind_client_request_unimp :: proc "c" (msg: cstring) {…}
```

### [helgrind\_cond\_broadcast\_pre ¶](#helgrind_cond_broadcast_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L151)

```
helgrind_cond_broadcast_pre :: proc "c" (cond: rawptr) {…}
```

### [helgrind\_cond\_destroy\_pre ¶](#helgrind_cond_destroy_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L145)

```
helgrind_cond_destroy_pre :: proc "c" (cond: rawptr) {…}
```

### [helgrind\_cond\_init\_post ¶](#helgrind_cond_init_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L142)

```
helgrind_cond_init_post :: proc "c" (cond: rawptr) {…}
```

### [helgrind\_cond\_signal\_pre ¶](#helgrind_cond_signal_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L148)

```
helgrind_cond_signal_pre :: proc "c" (cond: rawptr) {…}
```

### [helgrind\_cond\_wait\_post ¶](#helgrind_cond_wait_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L157)

```
helgrind_cond_wait_post :: proc "c" (cond: rawptr, lock: rawptr) -> bool {…}
```

### [helgrind\_cond\_wait\_pre ¶](#helgrind_cond_wait_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L154)

```
helgrind_cond_wait_pre :: proc "c" (cond: rawptr, lock: rawptr) -> bool {…}
```

### [helgrind\_disable\_checking ¶](#helgrind_disable_checking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L134)

```
helgrind_disable_checking :: proc "c" (qzz_start: rawptr, qzz_len: uint) {…}
```

### [helgrind\_enable\_checking ¶](#helgrind_enable_checking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L137)

```
helgrind_enable_checking :: proc "c" (qzz_start: rawptr, qzz_len: uint) {…}
```

### [helgrind\_mutex\_destroy\_pre ¶](#helgrind_mutex_destroy_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L64)

```
helgrind_mutex_destroy_pre :: proc "c" (mutex: rawptr) {…}
```

### [helgrind\_mutex\_init\_post ¶](#helgrind_mutex_init_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L61)

```
helgrind_mutex_init_post :: proc "c" (mutex: rawptr, mb_rec: uint) {…}
```

### [helgrind\_mutex\_lock\_post ¶](#helgrind_mutex_lock_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L70)

```
helgrind_mutex_lock_post :: proc "c" (mutex: rawptr) {…}
```

### [helgrind\_mutex\_lock\_pre ¶](#helgrind_mutex_lock_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L67)

```
helgrind_mutex_lock_pre :: proc "c" (mutex: rawptr, is_try_lock: bool) {…}
```

### [helgrind\_mutex\_unlock\_post ¶](#helgrind_mutex_unlock_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L76)

```
helgrind_mutex_unlock_post :: proc "c" (mutex: rawptr) {…}
```

### [helgrind\_mutex\_unlock\_pre ¶](#helgrind_mutex_unlock_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L73)

```
helgrind_mutex_unlock_pre :: proc "c" (mutex: rawptr) {…}
```

### [helgrind\_rwlock\_destroy\_pre ¶](#helgrind_rwlock_destroy_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L83)

```
helgrind_rwlock_destroy_pre :: proc "c" (lock: rawptr) {…}
```

### [helgrind\_rwlock\_init\_post ¶](#helgrind_rwlock_init_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L80)

```
helgrind_rwlock_init_post :: proc "c" (lock: rawptr) {…}
```

### [helgrind\_rwlock\_lock\_pre ¶](#helgrind_rwlock_lock_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L86)

```
helgrind_rwlock_lock_pre :: proc "c" (lock: rawptr, is_w: bool) {…}
```

### [helgrind\_rwlock\_unlock\_post ¶](#helgrind_rwlock_unlock_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L89)

```
helgrind_rwlock_unlock_post :: proc "c" (lock: rawptr, is_w: bool) {…}
```

### [helgrind\_sem\_destroy\_pre ¶](#helgrind_sem_destroy_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L103)

```
helgrind_sem_destroy_pre :: proc "c" (sem: rawptr) {…}
```

### [helgrind\_sem\_init\_post ¶](#helgrind_sem_init_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L94)

```
helgrind_sem_init_post :: proc "c" (sem: rawptr, value: uint) {…}
```

### [helgrind\_sem\_post\_pre ¶](#helgrind_sem_post_pre) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L100)

```
helgrind_sem_post_pre :: proc "c" (sem: rawptr) {…}
```

### [helgrind\_sem\_wait\_post ¶](#helgrind_sem_wait_post) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin#L97)

```
helgrind_sem_wait_post :: proc "c" (sem: rawptr) {…}
```

### [inner\_threads ¶](#inner_threads) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L171)

```
inner_threads :: proc "c" (qzz: rawptr) {…}
```

### [leak\_check ¶](#leak_check) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L85)

```
leak_check :: proc "c" () {…}
```

 

Do a full memory leak check (like `--leak-check=full`) mid-execution.

### [make\_mem\_defined ¶](#make_mem_defined) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L44)

```
make_mem_defined :: proc "c" (qzz: []u8) -> bool {…}
```

 

Mark memory at `raw_data(qzz)` as addressable for `len(qzz)` bytes.
Returns true when run on Valgrind and false otherwise.

### [make\_mem\_defined\_if\_addressable ¶](#make_mem_defined_if_addressable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L67)

```
make_mem_defined_if_addressable :: proc "c" (qzz: []u8) -> bool {…}
```

 

Similar to `make_mem_defined(qzz)` except that addressability is not altered:
bytes which are addressable are marked as defined, but those which
are not addressable are left unchanged.
Returns true when run on Valgrind and false otherwise.

### [make\_mem\_no\_access ¶](#make_mem_no_access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L34)

```
make_mem_no_access :: proc "c" (qzz: []u8) -> bool {…}
```

 

Mark memory at `raw_data(qzz)` as unaddressable for `len(qzz)` bytes.
Returns true when run on Valgrind and false otherwise.

### [make\_mem\_undefined ¶](#make_mem_undefined) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L39)

```
make_mem_undefined :: proc "c" (qzz: []u8) -> bool {…}
```

 

Mark memory at `raw_data(qzz)` as addressable but undefined for `len(qzz)` bytes.
Returns true when run on Valgrind and false otherwise.

### [malloc\_like\_block ¶](#malloc_like_block) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L85)

```
malloc_like_block :: proc "c" (mem: []u8, rz_b: uintptr, is_zeroed: bool) {…}
```

### [map\_ip\_to\_src\_loc ¶](#map_ip_to_src_loc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L180)

```
map_ip_to_src_loc :: proc "c" (addr: rawptr, buf64: ^[64]u8) -> uintptr {…}
```

 

Map a code address to a source file name and line number.
`buf64` must point to a 64-byte buffer in the caller's address space.
The result will be dumped in there and is guaranteed to be zero terminated.
If no info is found, the first byte is set to zero.

### [mem\_check\_client\_request\_expr ¶](#mem_check_client_request_expr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L25)

```
mem_check_client_request_expr :: proc "c" (
	default:        uintptr, 
	request:        Mem_Check_Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) -> uintptr {…}
```

### [mem\_check\_client\_request\_stmt ¶](#mem_check_client_request_stmt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L28)

```
mem_check_client_request_stmt :: proc "c" (
	request:        Mem_Check_Client_Request, 
	a0, a1, a2, a3, 
	a4:             uintptr, 
) {…}
```

### [mem\_pool\_alloc ¶](#mem_pool_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L110)

```
mem_pool_alloc :: proc "c" (pool: rawptr, mem: []u8) {…}
```

 

Associate a section of memory with a memory pool.

### [mem\_pool\_change ¶](#mem_pool_change) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L126)

```
mem_pool_change :: proc "c" (pool: rawptr, addr_a: rawptr, mem: []u8) {…}
```

 

Resize and/or move a section of memory associated with a memory pool.

### [mem\_pool\_exists ¶](#mem_pool_exists) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L130)

```
mem_pool_exists :: proc "c" (pool: rawptr) -> bool {…}
```

 

Return true if a memory pool exists

### [mem\_pool\_free ¶](#mem_pool_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L114)

```
mem_pool_free :: proc "c" (pool: rawptr, addr: rawptr) {…}
```

 

Disassociate a section of memory from a memory pool.

### [mem\_pool\_trim ¶](#mem_pool_trim) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L118)

```
mem_pool_trim :: proc "c" (pool: rawptr, mem: []u8) {…}
```

 

Disassociate parts of a section of memory outside a particular range.

### [monitor\_command ¶](#monitor_command) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L80)

```
monitor_command :: proc "c" (command: cstring) -> bool {…}
```

### [move\_mem\_pool ¶](#move_mem_pool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L122)

```
move_mem_pool :: proc "c" (pool_a, pool_b: rawptr) {…}
```

 

Resize and/or move a section of memory associated with a memory pool.

### [non\_simd\_call0 ¶](#non_simd_call0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L62)

```
non_simd_call0 :: proc "c" (p: proc "c" (uintptr) -> uintptr) -> uintptr {…}
```

### [non\_simd\_call1 ¶](#non_simd_call1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L65)

```
non_simd_call1 :: proc "c" (p: proc "c" (uintptr, uintptr) -> uintptr, a0: uintptr) -> uintptr {…}
```

### [non\_simd\_call2 ¶](#non_simd_call2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L68)

```
non_simd_call2 :: proc "c" (p: proc "c" (uintptr, uintptr, uintptr) -> uintptr, a0, a1: uintptr) -> uintptr {…}
```

### [non\_simd\_call3 ¶](#non_simd_call3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L71)

```
non_simd_call3 :: proc "c" (p: proc "c" (uintptr, uintptr, uintptr, uintptr) -> uintptr, a0, a1, a2: uintptr) -> uintptr {…}
```

### [quick\_leak\_check ¶](#quick_leak_check) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L99)

```
quick_leak_check :: proc "c" () {…}
```

 

Do a summary memory leak check (like `--leak-check=summary`) mid-execution.

### [resize\_inplace\_block ¶](#resize_inplace_block) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L88)

```
resize_inplace_block :: proc "c" (old_mem: []u8, new_size: uint, rz_b: uintptr) {…}
```

### [running\_on\_valgrind ¶](#running_on_valgrind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L52)

```
running_on_valgrind :: proc "c" () -> uint {…}
```

 

Returns the number of Valgrinds this code is running under
0 - running natively
1 - running under Valgrind
2 - running under Valgrind which is running under another Valgrind

### [set\_vbits ¶](#set_vbits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin#L156)

```
set_vbits :: proc(zzvbits, zza: []u8) -> u8 {…}
```

 

Set the validity data for addresses zza, copying it
from the provided zzvbits array. Return values:
0 - if not running on valgrind
1 - success
2 - [previously indicated unaligned arrays; these are now allowed]
3 - if any parts of zza/zzvbits are not addressable.
The metadata is not copied in cases 0, 2 or 3 so it should be
impossible to segfault your system by using this call.

### [stack\_change ¶](#stack_change) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L147)

```
stack_change :: proc "c" (id: uint, new_stack: []u8) {…}
```

 

Change the start and end address of the stack id with the `new_stack` slice.

### [stack\_deregister ¶](#stack_deregister) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L142)

```
stack_deregister :: proc "c" (id: uintptr) {…}
```

 

Unmark a section of memory associated with a stack id as being a stack.

### [stack\_register ¶](#stack_register) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin#L136)

```
stack_register :: proc "c" (stack: []u8) -> (stack_id: uintptr) {…}
```

 

Mark a section of memory as being a stack. Returns a stack id.

### [start\_instrumentation ¶](#start_instrumentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L52)

```
start_instrumentation :: proc "c" () {…}
```

 

Start full callgrind instrumentation if not already switched on.
When cache simulation is done, it will flush the simulated cache;
this will lead to an artificial cache warmup phase afterwards with
cache misses which would not have happened in reality.

### [stop\_instrumentation ¶](#stop_instrumentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L61)

```
stop_instrumentation :: proc "c" () {…}
```

 

Stop full callgrind instrumentation if not already switched off.
This flushes Valgrinds translation cache, and does no additional instrumentation
afterwards, which effectivly will run at the same speed as the "none" tool (ie. at minimal slowdown).
Use this to bypass Callgrind aggregation for uninteresting code parts.
To start Callgrind in this mode to ignore the setup phase, use the option "--instr-atstart=no".

### [toggle\_collect ¶](#toggle_collect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L36)

```
toggle_collect :: proc "c" () {…}
```

 

Toggles collection state.
The collection state specifies whether the happening of events should be noted or
if they are to be ignored. Events are noted by increment of counters in a cost centre.

### [zero\_stats ¶](#zero_stats) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin#L29)

```
zero_stats :: proc "c" () {…}
```

 

Zero cost centres

## Procedure Groups

This section is empty.

## Source Files

* [callgrind.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/callgrind.odin)
* [helgrind.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/helgrind.odin)
* [memcheck.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/memcheck.odin)
* [valgrind.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/valgrind/valgrind.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.988310800 +0000 UTC`

* [Types](#pkg-Types)
  + [Callgrind\_Client\_Request](#Callgrind_Client_Request)
  + [Client\_Request](#Client_Request)
  + [Count\_Result](#Count_Result)
  + [Helgrind\_Client\_Request](#Helgrind_Client_Request)
  + [Mem\_Check\_Client\_Request](#Mem_Check_Client_Request)
  + [Mem\_Pool\_Flag](#Mem_Pool_Flag)
  + [Mem\_Pool\_Flags](#Mem_Pool_Flags)
* [Procedures](#pkg-Procedures)
  + [added\_leak\_check](#added_leak_check)
  + [callgrind\_client\_request\_expr](#callgrind_client_request_expr)
  + [callgrind\_client\_request\_stmt](#callgrind_client_request_stmt)
  + [changed\_leak\_check](#changed_leak_check)
  + [check\_mem\_is\_addressable](#check_mem_is_addressable)
  + [check\_mem\_is\_defined](#check_mem_is_defined)
  + [client\_request\_expr](#client_request_expr)
  + [client\_request\_stmt](#client_request_stmt)
  + [count\_errrors](#count_errrors)
  + [count\_leak\_blocks](#count_leak_blocks)
  + [count\_leaks](#count_leaks)
  + [create\_block](#create_block)
  + [create\_mem\_pool](#create_mem_pool)
  + [destroy\_mem\_pool](#destroy_mem_pool)
  + [disable\_addr\_error\_reporting\_in\_range](#disable_addr_error_reporting_in_range)
  + [disable\_error\_reporting](#disable_error_reporting)
  + [discard](#discard)
  + [discard\_translations](#discard_translations)
  + [dump\_stats](#dump_stats)
  + [dump\_stats\_at](#dump_stats_at)
  + [enable\_addr\_error\_reporting\_in\_range](#enable_addr_error_reporting_in_range)
  + [enable\_error\_reporting](#enable_error_reporting)
  + [free\_like\_block](#free_like_block)
  + [get\_vbits](#get_vbits)
  + [helgrind\_annotate\_condvar\_lock\_wait](#helgrind_annotate_condvar_lock_wait)
  + [helgrind\_annotate\_condvar\_signal](#helgrind_annotate_condvar_signal)
  + [helgrind\_annotate\_condvar\_signal\_all](#helgrind_annotate_condvar_signal_all)
  + [helgrind\_annotate\_condvar\_wait](#helgrind_annotate_condvar_wait)
  + [helgrind\_barrier\_destroy\_pre](#helgrind_barrier_destroy_pre)
  + [helgrind\_barrier\_init\_pre](#helgrind_barrier_init_pre)
  + [helgrind\_barrier\_resize\_pre](#helgrind_barrier_resize_pre)
  + [helgrind\_barrier\_wait\_pre](#helgrind_barrier_wait_pre)
  + [helgrind\_clean\_memory](#helgrind_clean_memory)
  + [helgrind\_clean\_memory\_heap\_block](#helgrind_clean_memory_heap_block)
  + [helgrind\_clean\_memory\_slice](#helgrind_clean_memory_slice)
  + [helgrind\_client\_request\_expr](#helgrind_client_request_expr)
  + [helgrind\_client\_request\_stmt](#helgrind_client_request_stmt)
  + [helgrind\_client\_request\_unimp](#helgrind_client_request_unimp)
  + [helgrind\_cond\_broadcast\_pre](#helgrind_cond_broadcast_pre)
  + [helgrind\_cond\_destroy\_pre](#helgrind_cond_destroy_pre)
  + [helgrind\_cond\_init\_post](#helgrind_cond_init_post)
  + [helgrind\_cond\_signal\_pre](#helgrind_cond_signal_pre)
  + [helgrind\_cond\_wait\_post](#helgrind_cond_wait_post)
  + [helgrind\_cond\_wait\_pre](#helgrind_cond_wait_pre)
  + [helgrind\_disable\_checking](#helgrind_disable_checking)
  + [helgrind\_enable\_checking](#helgrind_enable_checking)
  + [helgrind\_mutex\_destroy\_pre](#helgrind_mutex_destroy_pre)
  + [helgrind\_mutex\_init\_post](#helgrind_mutex_init_post)
  + [helgrind\_mutex\_lock\_post](#helgrind_mutex_lock_post)
  + [helgrind\_mutex\_lock\_pre](#helgrind_mutex_lock_pre)
  + [helgrind\_mutex\_unlock\_post](#helgrind_mutex_unlock_post)
  + [helgrind\_mutex\_unlock\_pre](#helgrind_mutex_unlock_pre)
  + [helgrind\_rwlock\_destroy\_pre](#helgrind_rwlock_destroy_pre)
  + [helgrind\_rwlock\_init\_post](#helgrind_rwlock_init_post)
  + [helgrind\_rwlock\_lock\_pre](#helgrind_rwlock_lock_pre)
  + [helgrind\_rwlock\_unlock\_post](#helgrind_rwlock_unlock_post)
  + [helgrind\_sem\_destroy\_pre](#helgrind_sem_destroy_pre)
  + [helgrind\_sem\_init\_post](#helgrind_sem_init_post)
  + [helgrind\_sem\_post\_pre](#helgrind_sem_post_pre)
  + [helgrind\_sem\_wait\_post](#helgrind_sem_wait_post)
  + [inner\_threads](#inner_threads)
  + [leak\_check](#leak_check)
  + [make\_mem\_defined](#make_mem_defined)
  + [make\_mem\_defined\_if\_addressable](#make_mem_defined_if_addressable)
  + [make\_mem\_no\_access](#make_mem_no_access)
  + [make\_mem\_undefined](#make_mem_undefined)
  + [malloc\_like\_block](#malloc_like_block)
  + [map\_ip\_to\_src\_loc](#map_ip_to_src_loc)
  + [mem\_check\_client\_request\_expr](#mem_check_client_request_expr)
  + [mem\_check\_client\_request\_stmt](#mem_check_client_request_stmt)
  + [mem\_pool\_alloc](#mem_pool_alloc)
  + [mem\_pool\_change](#mem_pool_change)
  + [mem\_pool\_exists](#mem_pool_exists)
  + [mem\_pool\_free](#mem_pool_free)
  + [mem\_pool\_trim](#mem_pool_trim)
  + [monitor\_command](#monitor_command)
  + [move\_mem\_pool](#move_mem_pool)
  + [non\_simd\_call0](#non_simd_call0)
  + [non\_simd\_call1](#non_simd_call1)
  + [non\_simd\_call2](#non_simd_call2)
  + [non\_simd\_call3](#non_simd_call3)
  + [quick\_leak\_check](#quick_leak_check)
  + [resize\_inplace\_block](#resize_inplace_block)
  + [running\_on\_valgrind](#running_on_valgrind)
  + [set\_vbits](#set_vbits)
  + [stack\_change](#stack_change)
  + [stack\_deregister](#stack_deregister)
  + [stack\_register](#stack_register)
  + [start\_instrumentation](#start_instrumentation)
  + [stop\_instrumentation](#stop_instrumentation)
  + [toggle\_collect](#toggle_collect)
  + [zero\_stats](#zero_stats)
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