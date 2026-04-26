package sys/darwin - pkg.odin-lang.org 






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



Current Package: *[darwin](/core/sys/darwin)*

  

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

# package core:sys/darwin [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin)

#### **Warning:**This was generated for `-target:darwin_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (94)

* [Bool](#Bool)
* [Bootstrap\_Error](#Bootstrap_Error)
* [Kern\_Return](#Kern_Return)
* [Msg\_Header\_Bits](#Msg_Header_Bits)
* [Msg\_Option](#Msg_Option)
* [Msg\_Option\_Flags](#Msg_Option_Flags)
* [Msg\_Type](#Msg_Type)
* [Offset\_From](#Offset_From)
* [Open\_Flags](#Open_Flags)
* [Open\_Flags\_Enum](#Open_Flags_Enum)
* [PBI\_Flag\_Bits](#PBI_Flag_Bits)
* [PBI\_Flags](#PBI_Flags)
* [PID\_Info\_Flavor](#PID_Info_Flavor)
* [Permission](#Permission)
* [Permission\_Enum](#Permission_Enum)
* [Pid\_Rusage\_Flavor](#Pid_Rusage_Flavor)
* [Port\_Right](#Port_Right)
* [RUsage](#RUsage)
* [Sync\_Policy](#Sync_Policy)
* [System\_Call\_Number](#System_Call_Number)
* [Task\_Port\_Type](#Task_Port_Type)
* [VM\_Flag](#VM_Flag)
* [VM\_Flags](#VM_Flags)
* [VM\_Inherit](#VM_Inherit)
* [VM\_Prot](#VM_Prot)
* [VM\_Prot\_Flags](#VM_Prot_Flags)
* [arm\_thread\_state64\_t](#arm_thread_state64_t)
* [blkcnt\_t](#blkcnt_t)
* [blksize\_t](#blksize_t)
* [boolean\_t](#boolean_t)
* [copyfile\_flags](#copyfile_flags)
* [copyfile\_state\_flag](#copyfile_state_flag)
* [copyfile\_state\_t](#copyfile_state_t)
* [dev\_t](#dev_t)
* [dyld\_all\_image\_infos](#dyld_all_image_infos)
* [dyld\_image\_info](#dyld_image_info)
* [dyld\_uuid\_info](#dyld_uuid_info)
* [fsid\_t](#fsid_t)
* [gid\_t](#gid_t)
* [ipc\_space\_t](#ipc_space_t)
* [kern\_return\_t](#kern_return_t)
* [mach\_msg\_body\_t](#mach_msg_body_t)
* [mach\_msg\_header\_t](#mach_msg_header_t)
* [mach\_msg\_option\_t](#mach_msg_option_t)
* [mach\_msg\_port\_descriptor\_t](#mach_msg_port_descriptor_t)
* [mach\_msg\_trailer\_t](#mach_msg_trailer_t)
* [mach\_msg\_type\_t](#mach_msg_type_t)
* [mach\_port\_name\_t](#mach_port_name_t)
* [mach\_port\_right\_t](#mach_port_right_t)
* [mach\_port\_t](#mach_port_t)
* [mem\_entry\_name\_port\_t](#mem_entry_name_port_t)
* [mode\_t](#mode_t)
* [name\_t](#name_t)
* [nlink\_t](#nlink_t)
* [off\_t](#off_t)
* [os\_clockid](#os_clockid)
* [os\_sync\_wait\_on\_address\_flag](#os_sync_wait_on_address_flag)
* [os\_sync\_wait\_on\_address\_flags](#os_sync_wait_on_address_flags)
* [os\_sync\_wake\_by\_address\_flag](#os_sync_wake_by_address_flag)
* [os\_sync\_wake\_by\_address\_flags](#os_sync_wake_by_address_flags)
* [pid\_t](#pid_t)
* [proc\_bsdinfo](#proc_bsdinfo)
* [proc\_bsdshortinfo](#proc_bsdshortinfo)
* [proc\_taskallinfo](#proc_taskallinfo)
* [proc\_taskinfo](#proc_taskinfo)
* [proc\_vnodepathinfo](#proc_vnodepathinfo)
* [rusage\_info\_v0](#rusage_info_v0)
* [semaphore\_t](#semaphore_t)
* [stat](#stat)
* [sync\_policy\_t](#sync_policy_t)
* [task\_dyld\_info](#task_dyld_info)
* [task\_info\_t](#task_info_t)
* [task\_t](#task_t)
* [thread\_act\_t](#thread_act_t)
* [thread\_identifier\_info](#thread_identifier_info)
* [thread\_list\_t](#thread_list_t)
* [thread\_state\_t](#thread_state_t)
* [thread\_t](#thread_t)
* [time\_t](#time_t)
* [timeval](#timeval)
* [uid\_t](#uid_t)
* [vinfo\_stat](#vinfo_stat)
* [vm\_address\_t](#vm_address_t)
* [vm\_inherit\_t](#vm_inherit_t)
* [vm\_map\_t](#vm_map_t)
* [vm\_offset\_t](#vm_offset_t)
* [vm\_prot\_t](#vm_prot_t)
* [vm\_region\_recurse\_info\_t](#vm_region_recurse_info_t)
* [vm\_region\_submap\_info\_64](#vm_region_submap_info_64)
* [vm\_size\_t](#vm_size_t)
* [vnode\_info](#vnode_info)
* [vnode\_info\_path](#vnode_info_path)
* [x86\_thread\_state32\_t](#x86_thread_state32_t)
* [x86\_thread\_state64\_t](#x86_thread_state64_t)

Constants (117)

* [ARM\_THREAD\_STATE64](#ARM_THREAD_STATE64)
* [ARM\_THREAD\_STATE64\_COUNT](#ARM_THREAD_STATE64_COUNT)
* [COPYFILE\_ALL](#COPYFILE_ALL)
* [COPYFILE\_METADATA](#COPYFILE_METADATA)
* [COPYFILE\_NOFOLLOW](#COPYFILE_NOFOLLOW)
* [COPYFILE\_SECURITY](#COPYFILE_SECURITY)
* [DARWIN\_MAXCOMLEN](#DARWIN_MAXCOMLEN)
* [DARWIN\_PROC\_ALL\_PIDS](#DARWIN_PROC_ALL_PIDS)
* [DARWIN\_PROC\_INFO\_CALL\_CANUSEFGHW](#DARWIN_PROC_INFO_CALL_CANUSEFGHW)
* [DARWIN\_PROC\_INFO\_CALL\_DIRTYCONTROL](#DARWIN_PROC_INFO_CALL_DIRTYCONTROL)
* [DARWIN\_PROC\_INFO\_CALL\_KERNMSGBUF](#DARWIN_PROC_INFO_CALL_KERNMSGBUF)
* [DARWIN\_PROC\_INFO\_CALL\_LISTCOALITIONS](#DARWIN_PROC_INFO_CALL_LISTCOALITIONS)
* [DARWIN\_PROC\_INFO\_CALL\_LISTPIDS](#DARWIN_PROC_INFO_CALL_LISTPIDS)
* [DARWIN\_PROC\_INFO\_CALL\_PIDDYNKQUEUEINFO](#DARWIN_PROC_INFO_CALL_PIDDYNKQUEUEINFO)
* [DARWIN\_PROC\_INFO\_CALL\_PIDFDINFO](#DARWIN_PROC_INFO_CALL_PIDFDINFO)
* [DARWIN\_PROC\_INFO\_CALL\_PIDFILEPORTINFO](#DARWIN_PROC_INFO_CALL_PIDFILEPORTINFO)
* [DARWIN\_PROC\_INFO\_CALL\_PIDINFO](#DARWIN_PROC_INFO_CALL_PIDINFO)
* [DARWIN\_PROC\_INFO\_CALL\_PIDORIGINATORINFO](#DARWIN_PROC_INFO_CALL_PIDORIGINATORINFO)
* [DARWIN\_PROC\_INFO\_CALL\_PIDRUSAGE](#DARWIN_PROC_INFO_CALL_PIDRUSAGE)
* [DARWIN\_PROC\_INFO\_CALL\_SETCONTROL](#DARWIN_PROC_INFO_CALL_SETCONTROL)
* [DARWIN\_PROC\_INFO\_CALL\_TERMINATE](#DARWIN_PROC_INFO_CALL_TERMINATE)
* [DARWIN\_PROC\_INFO\_CALL\_UDATA\_INFO](#DARWIN_PROC_INFO_CALL_UDATA_INFO)
* [DARWIN\_PROC\_KDBG\_ONLY](#DARWIN_PROC_KDBG_ONLY)
* [DARWIN\_PROC\_PGRP\_ONLY](#DARWIN_PROC_PGRP_ONLY)
* [DARWIN\_PROC\_PIDPATHINFO](#DARWIN_PROC_PIDPATHINFO)
* [DARWIN\_PROC\_PIDPATHINFO\_SIZE](#DARWIN_PROC_PIDPATHINFO_SIZE)
* [DARWIN\_PROC\_PPID\_ONLY](#DARWIN_PROC_PPID_ONLY)
* [DARWIN\_PROC\_RUID\_ONLY](#DARWIN_PROC_RUID_ONLY)
* [DARWIN\_PROC\_TTY\_ONLY](#DARWIN_PROC_TTY_ONLY)
* [DARWIN\_PROC\_UID\_ONLY](#DARWIN_PROC_UID_ONLY)
* [F\_OK](#F_OK)
* [LOCK\_EX](#LOCK_EX)
* [LOCK\_NB](#LOCK_NB)
* [LOCK\_SH](#LOCK_SH)
* [LOCK\_UN](#LOCK_UN)
* [MACH\_MSG\_PORT\_DESCRIPTOR](#MACH_MSG_PORT_DESCRIPTOR)
* [MACH\_PORT\_DEAD](#MACH_PORT_DEAD)
* [MACH\_PORT\_NULL](#MACH_PORT_NULL)
* [MAP\_32BIT](#MAP_32BIT)
* [MAP\_ANONYMOUS](#MAP_ANONYMOUS)
* [MAP\_FILE](#MAP_FILE)
* [MAP\_FIXED](#MAP_FIXED)
* [MAP\_HASSEMAPHORE](#MAP_HASSEMAPHORE)
* [MAP\_JIT](#MAP_JIT)
* [MAP\_NOCACHE](#MAP_NOCACHE)
* [MAP\_PRIVATE](#MAP_PRIVATE)
* [MAP\_SHARED](#MAP_SHARED)
* [MASK\_ACCMODE](#MASK_ACCMODE)
* [MAXCOMLEN](#MAXCOMLEN)
* [MAXPATHLEN](#MAXPATHLEN)
* [OPEN\_FLAG\_APPEND](#OPEN_FLAG_APPEND)
* [OPEN\_FLAG\_CLOEXEC](#OPEN_FLAG_CLOEXEC)
* [OPEN\_FLAG\_CREAT](#OPEN_FLAG_CREAT)
* [OPEN\_FLAG\_DIRECTORY](#OPEN_FLAG_DIRECTORY)
* [OPEN\_FLAG\_EVTONLY](#OPEN_FLAG_EVTONLY)
* [OPEN\_FLAG\_EXCL](#OPEN_FLAG_EXCL)
* [OPEN\_FLAG\_EXLOCK](#OPEN_FLAG_EXLOCK)
* [OPEN\_FLAG\_NOFOLLOW](#OPEN_FLAG_NOFOLLOW)
* [OPEN\_FLAG\_NOFOLLOW\_ANY](#OPEN_FLAG_NOFOLLOW_ANY)
* [OPEN\_FLAG\_NONBLOCK](#OPEN_FLAG_NONBLOCK)
* [OPEN\_FLAG\_RDONLY](#OPEN_FLAG_RDONLY)
* [OPEN\_FLAG\_RDWR](#OPEN_FLAG_RDWR)
* [OPEN\_FLAG\_SHLOCK](#OPEN_FLAG_SHLOCK)
* [OPEN\_FLAG\_SYMLINK](#OPEN_FLAG_SYMLINK)
* [OPEN\_FLAG\_TRUNC](#OPEN_FLAG_TRUNC)
* [OPEN\_FLAG\_WRONLY](#OPEN_FLAG_WRONLY)
* [PATH\_MAX](#PATH_MAX)
* [PERMISSION\_ALL\_ALL](#PERMISSION_ALL_ALL)
* [PERMISSION\_GROUP\_ALL](#PERMISSION_GROUP_ALL)
* [PERMISSION\_MASK\_IRGRP](#PERMISSION_MASK_IRGRP)
* [PERMISSION\_MASK\_IROTH](#PERMISSION_MASK_IROTH)
* [PERMISSION\_MASK\_IRUSR](#PERMISSION_MASK_IRUSR)
* [PERMISSION\_MASK\_IRWXG](#PERMISSION_MASK_IRWXG)
* [PERMISSION\_MASK\_IRWXO](#PERMISSION_MASK_IRWXO)
* [PERMISSION\_MASK\_IRWXU](#PERMISSION_MASK_IRWXU)
* [PERMISSION\_MASK\_ISGID](#PERMISSION_MASK_ISGID)
* [PERMISSION\_MASK\_ISUID](#PERMISSION_MASK_ISUID)
* [PERMISSION\_MASK\_ISVTX](#PERMISSION_MASK_ISVTX)
* [PERMISSION\_MASK\_IWGRP](#PERMISSION_MASK_IWGRP)
* [PERMISSION\_MASK\_IWOTH](#PERMISSION_MASK_IWOTH)
* [PERMISSION\_MASK\_IWUSR](#PERMISSION_MASK_IWUSR)
* [PERMISSION\_MASK\_IXGRP](#PERMISSION_MASK_IXGRP)
* [PERMISSION\_MASK\_IXOTH](#PERMISSION_MASK_IXOTH)
* [PERMISSION\_MASK\_IXUSR](#PERMISSION_MASK_IXUSR)
* [PERMISSION\_NONE\_NONE](#PERMISSION_NONE_NONE)
* [PERMISSION\_OTHER\_ALL](#PERMISSION_OTHER_ALL)
* [PERMISSION\_OWNER\_ALL](#PERMISSION_OWNER_ALL)
* [PIDPATHINFO\_MAXSIZE](#PIDPATHINFO_MAXSIZE)
* [PROT\_EXEC](#PROT_EXEC)
* [PROT\_NONE](#PROT_NONE)
* [PROT\_READ](#PROT_READ)
* [PROT\_WRITE](#PROT_WRITE)
* [R\_OK](#R_OK)
* [TASK\_DYLD\_INFO](#TASK_DYLD_INFO)
* [TASK\_DYLD\_INFO\_COUNT](#TASK_DYLD_INFO_COUNT)
* [THREAD\_IDENTIFIER\_INFO](#THREAD_IDENTIFIER_INFO)
* [THREAD\_IDENTIFIER\_INFO\_COUNT](#THREAD_IDENTIFIER_INFO_COUNT)
* [TIOCGWINSZ](#TIOCGWINSZ)
* [ULOCK\_WAIT\_2\_AVAILABLE](#ULOCK_WAIT_2_AVAILABLE)
* [VM\_FLAGS\_ALIAS\_MASK](#VM_FLAGS_ALIAS_MASK)
* [VM\_FLAGS\_FIXED](#VM_FLAGS_FIXED)
* [VM\_FLAGS\_SUPERPAGE\_MASK](#VM_FLAGS_SUPERPAGE_MASK)
* [VM\_FLAGS\_SUPERPAGE\_NONE](#VM_FLAGS_SUPERPAGE_NONE)
* [VM\_FLAGS\_USER\_ALLOCATE](#VM_FLAGS_USER_ALLOCATE)
* [VM\_FLAGS\_USER\_MAP](#VM_FLAGS_USER_MAP)
* [VM\_FLAGS\_USER\_REMAP](#VM_FLAGS_USER_REMAP)
* [VM\_PROT\_ALL](#VM_PROT_ALL)
* [VM\_PROT\_DEFAULT](#VM_PROT_DEFAULT)
* [VM\_PROT\_NONE](#VM_PROT_NONE)
* [VM\_REGION\_SUBMAP\_INFO\_COUNT\_64](#VM_REGION_SUBMAP_INFO_COUNT_64)
* [WAIT\_ON\_ADDRESS\_AVAILABLE](#WAIT_ON_ADDRESS_AVAILABLE)
* [W\_OK](#W_OK)
* [X86\_THREAD\_STATE32](#X86_THREAD_STATE32)
* [X86\_THREAD\_STATE32\_COUNT](#X86_THREAD_STATE32_COUNT)
* [X86\_THREAD\_STATE64](#X86_THREAD_STATE64)
* [X86\_THREAD\_STATE64\_COUNT](#X86_THREAD_STATE64_COUNT)
* [X\_OK](#X_OK)

Variables (3)

* [vm\_page\_mask](#vm_page_mask)
* [vm\_page\_shift](#vm_page_shift)
* [vm\_page\_size](#vm_page_size)

Procedures (109)

* [VM\_GET\_FLAGS\_ALIAS](#VM_GET_FLAGS_ALIAS)
* [bootstrap\_look\_up](#bootstrap_look_up)
* [bootstrap\_register2](#bootstrap_register2)
* [copyfile](#copyfile)
* [copyfile\_state\_alloc](#copyfile_state_alloc)
* [copyfile\_state\_free](#copyfile_state_free)
* [copyfile\_state\_get](#copyfile_state_get)
* [copyfile\_state\_set](#copyfile_state_set)
* [errno](#errno)
* [fcopyfile](#fcopyfile)
* [mach\_make\_memory\_entry](#mach_make_memory_entry)
* [mach\_msg](#mach_msg)
* [mach\_msg\_send](#mach_msg_send)
* [mach\_port\_allocate](#mach_port_allocate)
* [mach\_port\_deallocate](#mach_port_deallocate)
* [mach\_port\_extract\_right](#mach_port_extract_right)
* [mach\_task\_self](#mach_task_self)
* [mach\_vm\_allocate](#mach_vm_allocate)
* [mach\_vm\_deallocate](#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](#mach_vm_region_recurse)
* [mach\_vm\_remap](#mach_vm_remap)
* [mach\_vm\_trunc\_page](#mach_vm_trunc_page)
* [os\_sync\_wait\_on\_address](#os_sync_wait_on_address)
* [os\_sync\_wait\_on\_address\_with\_deadline](#os_sync_wait_on_address_with_deadline)
* [os\_sync\_wait\_on\_address\_with\_timeout](#os_sync_wait_on_address_with_timeout)
* [os\_sync\_wake\_by\_address\_all](#os_sync_wake_by_address_all)
* [os\_sync\_wake\_by\_address\_any](#os_sync_wake_by_address_any)
* [proc\_listallpids](#proc_listallpids)
* [proc\_pid\_rusage](#proc_pid_rusage)
* [proc\_pidinfo](#proc_pidinfo)
* [proc\_pidpath](#proc_pidpath)
* [semaphore\_create](#semaphore_create)
* [semaphore\_destroy](#semaphore_destroy)
* [semaphore\_signal](#semaphore_signal)
* [semaphore\_signal\_all](#semaphore_signal_all)
* [semaphore\_signal\_thread](#semaphore_signal_thread)
* [semaphore\_wait](#semaphore_wait)
* [sys\_chmod](#sys_chmod)
* [sys\_lseek](#sys_lseek)
* [sys\_lstat](#sys_lstat)
* [sys\_mkdir](#sys_mkdir)
* [sys\_mkdir\_at](#sys_mkdir_at)
* [sys\_open](#sys_open)
* [sys\_rename](#sys_rename)
* [sys\_rename\_at](#sys_rename_at)
* [sys\_rmdir](#sys_rmdir)
* [sys\_shm\_open](#sys_shm_open)
* [sys\_write\_string](#sys_write_string)
* [syscall\_access](#syscall_access)
* [syscall\_adjtime](#syscall_adjtime)
* [syscall\_chdir](#syscall_chdir)
* [syscall\_chmod](#syscall_chmod)
* [syscall\_close](#syscall_close)
* [syscall\_copyfile](#syscall_copyfile)
* [syscall\_dup](#syscall_dup)
* [syscall\_execve](#syscall_execve)
* [syscall\_exit](#syscall_exit)
* [syscall\_faccessat](#syscall_faccessat)
* [syscall\_fchdir](#syscall_fchdir)
* [syscall\_fchmod](#syscall_fchmod)
* [syscall\_fcntl](#syscall_fcntl)
* [syscall\_flock](#syscall_flock)
* [syscall\_fstat](#syscall_fstat)
* [syscall\_fstatat](#syscall_fstatat)
* [syscall\_fsync](#syscall_fsync)
* [syscall\_ftruncate](#syscall_ftruncate)
* [syscall\_futimes](#syscall_futimes)
* [syscall\_getdirentries](#syscall_getdirentries)
* [syscall\_getentropy](#syscall_getentropy)
* [syscall\_getrusage](#syscall_getrusage)
* [syscall\_gettid](#syscall_gettid)
* [syscall\_ioctl](#syscall_ioctl)
* [syscall\_kill](#syscall_kill)
* [syscall\_link](#syscall_link)
* [syscall\_linkat](#syscall_linkat)
* [syscall\_lseek](#syscall_lseek)
* [syscall\_lstat](#syscall_lstat)
* [syscall\_mkdir](#syscall_mkdir)
* [syscall\_mkdir\_at](#syscall_mkdir_at)
* [syscall\_mmap](#syscall_mmap)
* [syscall\_munmap](#syscall_munmap)
* [syscall\_open](#syscall_open)
* [syscall\_openat](#syscall_openat)
* [syscall\_pipe](#syscall_pipe)
* [syscall\_proc\_info](#syscall_proc_info)
* [syscall\_read](#syscall_read)
* [syscall\_readlink](#syscall_readlink)
* [syscall\_readlinkat](#syscall_readlinkat)
* [syscall\_rename](#syscall_rename)
* [syscall\_rename\_at](#syscall_rename_at)
* [syscall\_rmdir](#syscall_rmdir)
* [syscall\_shm\_open](#syscall_shm_open)
* [syscall\_shm\_unlink](#syscall_shm_unlink)
* [syscall\_stat](#syscall_stat)
* [syscall\_sysctl](#syscall_sysctl)
* [syscall\_sysctlbyname](#syscall_sysctlbyname)
* [syscall\_truncate](#syscall_truncate)
* [syscall\_utimes](#syscall_utimes)
* [syscall\_write](#syscall_write)
* [task\_get\_special\_port](#task_get_special_port)
* [task\_info](#task_info)
* [task\_resume](#task_resume)
* [task\_suspend](#task_suspend)
* [task\_terminate](#task_terminate)
* [task\_threads](#task_threads)
* [thread\_get\_state](#thread_get_state)
* [thread\_info](#thread_info)
* [unix\_offset\_syscall](#unix_offset_syscall)
* [vm\_map](#vm_map)

Procedure Groups (0)

This section is empty.

## Types

### [Bool ¶](#Bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/darwin.odin#L9)

```
Bool :: b8
```

### [Bootstrap\_Error ¶](#Bootstrap_Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L74)

```
Bootstrap_Error :: enum u32 {
	Success, 
	Not_Privileged  = 1100, 
	Name_In_Use     = 1101, 
	Unknown_Service = 1102, 
	Service_Active  = 1103, 
	Bad_Count       = 1104, 
	No_Memory       = 1105, 
	No_Children     = 1106, 
}
```

### [Kern\_Return ¶](#Kern_Return) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L366)

```
Kern_Return :: enum kern_return_t {
	Success, 
	// Specified address is not currently valid.
	Invalid_Address, 
	// Specified memory is valid, but does not permit the
	// 	 * required forms of access.
	Protection_Failure, 
	// The address range specified is already in use, or
	// 	 * no address range of the size specified could be
	// 	 * found.
	No_Space, 
	// The function requested was not applicable to this
	// 	 * type of argument, or an argument is invalid
	Invalid_Argument, 
	// The function could not be performed.  A catch-all.
	Failure, 
	// A system resource could not be allocated to fulfill
	// 	 * this request.  This failure may not be permanent.
	Resource_Shortage, 
	// The task in question does not hold receive rights
	// 	 * for the port argument.
	Not_Receiver, 
	// Bogus access restriction.
	No_Access, 
	// During a page fault, the target address refers to a
	// 	 * memory object that has been destroyed.  This
	// 	 * failure is permanent.
	Memory_Failure, 
	// During a page fault, the memory object indicated
	// 	 * that the data could not be returned.  This failure
	// 	 * may be temporary; future attempts to access this
	// 	 * same data may succeed, as defined by the memory
	// 	 * object.
	Memory_Error, 
	// The receive right is already a member of the portset.
	Already_In_Set, 
	// The receive right is not a member of a port set.
	Not_In_Set, 
	// The name already denotes a right in the task.
	Name_Exists, 
	// The operation was aborted.  Ipc code will
	// 	 * catch this and reflect it as a message error.
	Aborted, 
	// The name doesn't denote a right in the task.
	Invalid_Name, 
	// Target task isn't an active task.
	Invalid_Task, 
	// The name denotes a right, but not an appropriate right.
	Invalid_Right, 
	// A blatant range error.
	Invalid_Value, 
	// Operation would overflow limit on user-references.
	URefs_Overflow, 
	// The supplied (port) capability is improper.
	Invalid_Capability, 
	// The task already has send or receive rights
	// 	 * for the port under another name.
	Right_Exists, 
	// Target host isn't actually a host.
	Invalid_Host, 
	// An attempt was made to supply "precious" data
	// 	 * for memory that is already present in a
	// 	 * memory object.
	Memory_Present, 
	// A page was requested of a memory manager via
	// 	 * memory_object_data_request for an object using
	// 	 * a MEMORY_OBJECT_COPY_CALL strategy, with the
	// 	 * VM_PROT_WANTS_COPY flag being used to specify
	// 	 * that the page desired is for a copy of the
	// 	 * object, and the memory manager has detected
	// 	 * the page was pushed into a copy of the object
	// 	 * while the kernel was walking the shadow chain
	// 	 * from the copy to the object. This error code
	// 	 * is delivered via memory_object_data_error
	// 	 * and is handled by the kernel (it forces the
	// 	 * kernel to restart the fault). It will not be
	// 	 * seen by users.
	Memory_Data_Moved, 
	// A strategic copy was attempted of an object
	// 	 * upon which a quicker copy is now possible.
	// 	 * The caller should retry the copy using
	// 	 * vm_object_copy_quickly. This error code
	// 	 * is seen only by the kernel.
	Memory_Restart_Copy, 
	// An argument applied to assert processor set privilege
	// 	 * was not a processor set control port.
	Invalid_Processor_Set, 
	// The specified scheduling attributes exceed the thread's
	// 	 * limits.
	Policy_Limit, 
	// The specified scheduling policy is not currently
	// 	 * enabled for the processor set.
	Invalid_Policy, 
	// The external memory manager failed to initialize the
	// 	 * memory object.
	Invalid_Object, 
	// A thread is attempting to wait for an event for which
	// 	 * there is already a waiting thread.
	Already_Waiting, 
	// An attempt was made to destroy the default processor
	// 	 * set.
	Default_Set, 
	// An attempt was made to fetch an exception port that is
	// 	 * protected, or to abort a thread while processing a
	// 	 * protected exception.
	Exception_Protected, 
	// A ledger was required but not supplied.
	Invalid_Ledger, 
	// The port was not a memory cache control port.
	Invalid_Memory_Control, 
	// An argument supplied to assert security privilege
	// 	 * was not a host security port.
	Invalid_Security, 
	// thread_depress_abort was called on a thread which
	// 	 * was not currently depressed.
	Not_Depressed, 
	// Object has been terminated and is no longer available
	Terminated, 
	// Lock set has been destroyed and is no longer available.
	Lock_Set_Destroyed, 
	// The thread holding the lock terminated before releasing
	// 	 * the lock
	Lock_Unstable, 
	// The lock is already owned by another thread
	Lock_Owned, 
	// The lock is already owned by the calling thread
	Lock_Owned_Self, 
	// Semaphore has been destroyed and is no longer available.
	Semaphore_Destroyed, 
	// Return from RPC indicating the target server was
	// 	 * terminated before it successfully replied
	Rpc_Server_Terminated, 
	// Terminate an orphaned activation.
	RPC_Terminate_Orphan, 
	// Allow an orphaned activation to continue executing.
	RPC_Continue_Orphan, 
	// Empty thread activation (No thread linked to it)
	Not_Supported, 
	// Remote node down or inaccessible.
	Node_Down, 
	// A signalled thread was not actually waiting. 
	Not_Waiting, 
	// Some thread-oriented operation (semaphore_wait) timed out
	Operation_Timed_Out, 
	// During a page fault, indicates that the page was rejected
	// 	 * as a result of a signature check.
	Codesign_Error, 
	// The requested property cannot be changed at this time.
	Policy_Static, 
	// The provided buffer is of insufficient size for the requested data.
	Insufficient_Buffer_Size, 
	// Denied by security policy
	Denied, 
	// The KC on which the function is operating is missing
	Missing_KC, 
	// The KC on which the function is operating is invalid
	Invalid_KC, 
	// A search or query operation did not return a result
	Not_Found, 
	// Maximum return value allowable
	Return_Max               = 256, 
}
```

##### Related Procedures With Returns

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)
* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [mach\_msg](/core/sys/darwin/#mach_msg)
* [mach\_msg\_send](/core/sys/darwin/#mach_msg_send)
* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)
* [mach\_port\_deallocate](/core/sys/darwin/#mach_port_deallocate)
* [mach\_port\_extract\_right](/core/sys/darwin/#mach_port_extract_right)
* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_deallocate](/core/sys/darwin/#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal](/core/sys/darwin/#semaphore_signal)
* [semaphore\_signal\_all](/core/sys/darwin/#semaphore_signal_all)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [semaphore\_wait](/core/sys/darwin/#semaphore_wait)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [task\_resume](/core/sys/darwin/#task_resume)
* [task\_suspend](/core/sys/darwin/#task_suspend)
* [task\_terminate](/core/sys/darwin/#task_terminate)
* [task\_threads](/core/sys/darwin/#task_threads)
* [thread\_get\_state](/core/sys/darwin/#thread_get_state)
* [thread\_info](/core/sys/darwin/#thread_info)
* [vm\_map](/core/sys/darwin/#vm_map)

### [Msg\_Header\_Bits ¶](#Msg_Header_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L112)

```
Msg_Header_Bits :: enum u32 {
	Zero          = 0, 
	Remote_Mask   = 255, 
	Local_Mask    = 65280, 
	Migrated      = 134217728, 
	Unused        = 134152192, 
	Complex_Data  = 268435456, 
	Complex_Ports = 536870912, 
	Circular      = 1073741824, 
	Complex       = 2147483648, 
}
```

### [Msg\_Option ¶](#Msg_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L791)

```
Msg_Option :: enum mach_msg_option_t {
	Send_Msg, 
	Receive_Msg, 
	Send_Timeout      = 4, 
	Send_Notify       = 5, 
	Send_Interrupt    = 6, 
	Send_Cancel       = 7, 
	Receive_Timeout   = 8, 
	Receive_Notify    = 9, 
	Receive_Interrupt = 10, 
	Receive_Large     = 11, 
	Send_Always       = 16, 
}
```

### [Msg\_Option\_Flags ¶](#Msg_Option_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L806)

```
Msg_Option_Flags :: distinct bit_set[Msg_Option; mach_msg_option_t]
```

##### Related Procedures With Parameters

* [mach\_msg](/core/sys/darwin/#mach_msg)

### [Msg\_Type ¶](#Msg_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L85)

```
Msg_Type :: enum u32 {
	Unstructured   = 0, 
	Bit            = 0, 
	Boolean        = 0, 
	Integer_16     = 1, 
	Integer_32     = 2, 
	Char           = 8, 
	Byte           = 9, 
	Integer_8      = 9, 
	Real           = 10, 
	Integer_64     = 11, 
	String         = 12, 
	String_C       = 12, 
	Port_Name      = 15, 
	Move_Receive   = 16, 
	Port_Receive   = 16, 
	Move_Send      = 17, 
	Port_Send      = 17, 
	Move_Send_Once = 18, 
	Port_Send_Once = 18, 
	Copy_Send      = 19, 
	Make_Send      = 20, 
	Make_Send_Once = 21, 
}
```

### [Offset\_From ¶](#Offset_From) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L15)

```
Offset_From :: enum i32 {
	SEEK_SET  = 0, // the offset is set to offset bytes.
	SEEK_CUR  = 1, // the offset is set to its current location plus offset bytes.
	SEEK_END  = 2, // the offset is set to the size of the file plus offset bytes.
	SEEK_HOLE = 3, //  the offset is set to the start of the next hole greater than or equal to the supplied offset.
	SEEK_DATA = 4, //  the offset is set to the start of the next non-hole file region greater than or equal to the supplied offset.
}
```

##### Related Procedures With Parameters

* [sys\_lseek](/core/sys/darwin/#sys_lseek)

### [Open\_Flags ¶](#Open_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L42)

```
Open_Flags :: bit_set[Open_Flags_Enum; u16]
```

##### Related Procedures With Parameters

* [sys\_open](/core/sys/darwin/#sys_open)
* [sys\_shm\_open](/core/sys/darwin/#sys_shm_open)

### [Open\_Flags\_Enum ¶](#Open_Flags_Enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L23)

```
Open_Flags_Enum :: enum u8 {
	RDONLY,       // open for reading only
	WRONLY,       // open for writing only
	RDWR,         // open for reading and writing
	NONBLOCK,     // no delay
	APPEND,       // set append mode
	CREAT,        // create if nonexistant
	TRUNC,        // truncate to zero length
	EXCL,         // error if already exists
	SHLOCK,       // open with shared file lock
	EXLOCK,       // open with exclusive file lock
	DIRECTORY,    // restrict open to only directories
	NOFOLLOW,     // don't follow symlinks
	SYMLINK,      // allow open of a symlink
	EVTONLY,      // descriptor requested for event notifications only
	CLOEXEC,      // causes the descriptor to be closed if you use any of the exec like functions
	NOFOLLOW_ANY, // no symlinks allowed in path
}
```

### [PBI\_Flag\_Bits ¶](#PBI_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L130)

```
PBI_Flag_Bits :: enum u32 {
	SYSTEM      = 0, 
	TRACED      = 1, 
	INEXIT      = 2, 
	PWAIT       = 3, 
	LP64        = 4, 
	SLEADER     = 5, 
	CTTY        = 6, 
	CONTROLT    = 7, 
	THCWD       = 8, 
	PC_THROTTLE = 9, 
	PC_SUSP     = 10, 
	PC_KILL     = 10, 
	PA_THROTTLE = 11, 
	PA_SUSP     = 12, 
	PA_PSUGID   = 13, 
	EXEC        = 14, 
}
```

### [PBI\_Flags ¶](#PBI_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L148)

```
PBI_Flags :: bit_set[PBI_Flag_Bits; u32]
```

### [PID\_Info\_Flavor ¶](#PID_Info_Flavor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L150)

```
PID_Info_Flavor :: enum i32 {
	LISTFDS        = 1, 
	TASKALLINFO, 
	BSDINFO, 
	TASKINFO, 
	THREADINFO, 
	LISTTHREADS, 
	REGIONINFO, 
	REGIONPATHINFO, 
	VNODEPATHINFO, 
	THREADPATHINFO, 
	PATHINFO, 
	WORKQUEUEINFO, 
	SHORTBSDINFO, 
	LISTFILEPORTS, 
	THREADID64INFO, 
	RUSAGE, 
}
```

##### Related Procedures With Parameters

* [proc\_pidinfo](/core/sys/darwin/#proc_pidinfo)

### [Permission ¶](#Permission) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L70)

```
Permission :: bit_set[Permission_Enum; u16]
```

##### Related Procedures With Parameters

* [sys\_chmod](/core/sys/darwin/#sys_chmod)
* [sys\_mkdir](/core/sys/darwin/#sys_mkdir)
* [sys\_mkdir\_at](/core/sys/darwin/#sys_mkdir_at)
* [sys\_open](/core/sys/darwin/#sys_open)
* [sys\_rmdir](/core/sys/darwin/#sys_rmdir)
* [sys\_shm\_open](/core/sys/darwin/#sys_shm_open)

##### Related Constants

* [PERMISSION\_ALL\_ALL](/core/sys/darwin/#PERMISSION_ALL_ALL)
* [PERMISSION\_GROUP\_ALL](/core/sys/darwin/#PERMISSION_GROUP_ALL)
* [PERMISSION\_NONE\_NONE](/core/sys/darwin/#PERMISSION_NONE_NONE)
* [PERMISSION\_OTHER\_ALL](/core/sys/darwin/#PERMISSION_OTHER_ALL)
* [PERMISSION\_OWNER\_ALL](/core/sys/darwin/#PERMISSION_OWNER_ALL)

### [Permission\_Enum ¶](#Permission_Enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L44)

```
Permission_Enum :: enum u8 {
	// For owner 
	PERMISSION_OWNER_READ,             // R for owner
	PERMISSION_OWNER_WRITE,            // W for owner
	PERMISSION_OWNER_EXECUTE,          // X for owner
	// For group 
	PERMISSION_GROUP_READ,             // R for group
	PERMISSION_GROUP_WRITE,            // W for group
	PERMISSION_GROUP_EXECUTE,          // X for group
	// For other 
	PERMISSION_OTHER_READ,             // R for other
	PERMISSION_OTHER_WRITE,            // W for other
	PERMISSION_OTHER_EXECUTE,          // X for other
	// Special 
	PERMISSION_SET_USER_ON_EXECUTION,  // set user id on execution
	PERMISSION_SET_GROUP_ON_EXECUTION, // set group id on execution
	// ?? 
	PERMISSION_ISVTX,                  // save swapped text even after use
}
```

### [Pid\_Rusage\_Flavor ¶](#Pid_Rusage_Flavor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L171)

```
Pid_Rusage_Flavor :: enum i32 {
	V0, 
	V1, 
	V2, 
	V3, 
	V4, 
	V5, 
}
```

##### Related Procedures With Parameters

* [proc\_pid\_rusage](/core/sys/darwin/#proc_pid_rusage)

### [Port\_Right ¶](#Port_Right) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L812)

```
Port_Right :: enum mach_port_right_t {
	Send, 
	Receive, 
	Send_Once, 
	Port_Set, 
	Dead_Name, 
}
```

##### Related Procedures With Parameters

* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)

### [RUsage ¶](#RUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/darwin.odin#L11)

```
RUsage :: struct {
	ru_utime:    _STRUCT_TIMEVAL,
	ru_stime:    _STRUCT_TIMEVAL,
	ru_maxrss:   i64,
	ru_ixrss:    i64,
	ru_idrss:    i64,
	ru_isrss:    i64,
	ru_minflt:   i64,
	ru_majflt:   i64,
	ru_nswap:    i64,
	ru_inblock:  i64,
	ru_oublock:  i64,
	ru_msgsnd:   i64,
	ru_msgrcv:   i64,
	ru_nsignals: i64,
	ru_nvcsw:    i64,
	ru_nivcsw:   i64,
}
```

##### Related Procedures With Parameters

* [syscall\_getrusage](/core/sys/darwin/#syscall_getrusage)

### [Sync\_Policy ¶](#Sync_Policy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L834)

```
Sync_Policy :: enum sync_policy_t {
	Fifo, 
	Fixed_Priority, 
	Reversed, 
	Order_Mask, 
	Lifo           = 2, 
}
```

##### Related Procedures With Parameters

* [semaphore\_create](/core/sys/darwin/#semaphore_create)

### [System\_Call\_Number ¶](#System_Call_Number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_numbers.odin#L11)

```
System_Call_Number :: enum uintptr {
	// 0 syscall 
	exit                             = 1, 
	fork                             = 2, 
	read                             = 3, 
	write                            = 4, 
	open                             = 5, 
	close                            = 6, 
	wait4                            = 7, 
	// 8  old creat 
	link                             = 9, 
	unlink                           = 10, 
	// 11  old execv 
	chdir                            = 12, 
	fchdir                           = 13, 
	mknod                            = 14, 
	chmod                            = 15, 
	chown                            = 16, 
	// 17  old break 
	getfsstat                        = 18, 
	// 19  old lseek 
	getpid                           = 20, 
	// 21  old mount 
	// 22  old umount 
	setuid                           = 23, 
	getuid                           = 24, 
	geteuid                          = 25, 
	ptrace                           = 26, 
	recvmsg                          = 27, 
	sendmsg                          = 28, 
	recvfrom                         = 29, 
	accept                           = 30, 
	getpeername                      = 31, 
	getsockname                      = 32, 
	access                           = 33, 
	chflags                          = 34, 
	fchflags                         = 35, 
	sync                             = 36, 
	kill                             = 37, 
	// 38  old stat 
	getppid                          = 39, 
	// 40  old lstat 
	dup                              = 41, 
	pipe                             = 42, 
	getegid                          = 43, 
	// 44  old profil 
	// 45  old ktrace 
	sigaction                        = 46, 
	getgid                           = 47, 
	sigprocmask                      = 48, 
	getlogin                         = 49, 
	setlogin                         = 50, 
	acct                             = 51, 
	sigpending                       = 52, 
	sigaltstack                      = 53, 
	ioctl                            = 54, 
	reboot                           = 55, 
	revoke                           = 56, 
	symlink                          = 57, 
	readlink                         = 58, 
	execve                           = 59, 
	umask                            = 60, 
	chroot                           = 61, 
	// 62  old fstat 
	// 63  used internally and reserved 
	// getpagesize = 64, invalid 
	msync                            = 65, 
	vfork                            = 66, 
	// 67  old vread 
	// 68  old vwrite 
	// 69  old sbrk 
	// 70  old sstk 
	// 71  old mmap 
	// 72  old vadvise 
	munmap                           = 73, 
	mprotect                         = 74, 
	madvise                          = 75, 
	// 76  old vhangup 
	// 77  old vlimit 
	mincore                          = 78, 
	getgroups                        = 79, 
	setgroups                        = 80, 
	getpgrp                          = 81, 
	setpgid                          = 82, 
	setitimer                        = 83, 
	// 84  old wait 
	swapon                           = 85, 
	getitimer                        = 86, 
	// 87  old gethostname 
	// 88  old sethostname 
	getdtablesize                    = 89, 
	dup2                             = 90, 
	// 91  old getdopt 
	fcntl                            = 92, 
	select                           = 93, 
	// 94  old setdopt 
	fsync                            = 95, 
	setpriority                      = 96, 
	socket                           = 97, 
	connect                          = 98, 
	// 99  old accept 
	getpriority                      = 100, 
	// 101  old send 
	// 102  old recv 
	// 103  old sigreturn 
	bind                             = 104, 
	setsockopt                       = 105, 
	listen                           = 106, 
	// 107  old vtimes 
	// 108  old sigvec 
	// 109  old sigblock 
	// 110  old sigsetmask 
	sigsuspend                       = 111, 
	// 112  old sigstack 
	// 113  old recvmsg 
	// 114  old sendmsg 
	// 115  old vtrace 
	gettimeofday                     = 116, 
	getrusage                        = 117, 
	getsockopt                       = 118, 
	// 119  old resuba 
	readv                            = 120, 
	writev                           = 121, 
	settimeofday                     = 122, 
	fchown                           = 123, 
	fchmod                           = 124, 
	// 125  old recvfrom 
	setreuid                         = 126, 
	setregid                         = 127, 
	rename                           = 128, 
	// 129  old truncate 
	// 130  old ftruncate 
	flock                            = 131, 
	mkfifo                           = 132, 
	sendto                           = 133, 
	shutdown                         = 134, 
	socketpair                       = 135, 
	mkdir                            = 136, 
	rmdir                            = 137, 
	utimes                           = 138, 
	futimes                          = 139, 
	adjtime                          = 140, 
	// 141  old getpeername 
	gethostuuid                      = 142, 
	// 143  old sethostid 
	// 144  old getrlimit 
	// 145  old setrlimit 
	// 146  old killpg 
	setsid                           = 147, 
	// 148  old setquota 
	// 149  old qquota 
	// 150  old getsockname 
	getpgid                          = 151, 
	setprivexec                      = 152, 
	pread                            = 153, 
	pwrite                           = 154, 
	nfssvc                           = 155, 
	// 156  old getdirentries 
	statfs                           = 157, 
	fstatfs                          = 158, 
	unmount                          = 159, 
	// 160  old async_daemon 
	getfh                            = 161, 
	// 162  old getdomainname 
	// 163  old setdomainname 
	// 164  
	quotactl                         = 165, 
	// 166  old exportfs 
	mount                            = 167, 
	// 168  old ustat 
	csops                            = 169, 
	csops_audittoken                 = 170, 
	// 171  old wait3 
	// 172  old rpause 
	waitid                           = 173, 
	// 174  old getdents 
	// 175  old gc_control 
	// 176  old add_profil 
	kdebug_typefilter                = 177, 
	kdebug_trace_string              = 178, 
	kdebug_trace64                   = 179, 
	kdebug_trace                     = 180, 
	setgid                           = 181, 
	setegid                          = 182, 
	seteuid                          = 183, 
	sigreturn                        = 184, 
	// 185  old chud 
	thread_selfcounts                = 186, 
	fdatasync                        = 187, 
	stat                             = 188, 
	fstat                            = 189, 
	lstat                            = 190, 
	pathconf                         = 191, 
	fpathconf                        = 192, 
	// 193  old getfsstat 
	getrlimit                        = 194, 
	setrlimit                        = 195, 
	getdirentries                    = 196, 
	mmap                             = 197, 
	// 198  old __syscall 
	lseek                            = 199, 
	truncate                         = 200, 
	ftruncate                        = 201, 
	sysctl                           = 202, 
	mlock                            = 203, 
	munlock                          = 204, 
	undelete                         = 205, 
	// 206  old ATsocket 
	// 207  old ATgetmsg 
	// 208  old ATputmsg 
	// 209  old ATsndreq 
	// 210  old ATsndrsp 
	// 211  old ATgetreq 
	// 212  old ATgetrsp 
	// 213  Reserved for AppleTalk 
	// 214  
	// 215  
	open_dprotected_np               = 216, 
	fsgetpath_ext                    = 217, 
	// 218  old lstatv 
	// 219  old fstatv 
	getattrlist                      = 220, 
	setattrlist                      = 221, 
	getdirentriesattr                = 222, 
	exchangedata                     = 223, 
	// 224  old checkuseraccess or fsgetpath 
	searchfs                         = 225, 
	delete                           = 226, 
	copyfile                         = 227, 
	fgetattrlist                     = 228, 
	fsetattrlist                     = 229, 
	poll                             = 230, 
	// 231  old watchevent 
	// 232  old waitevent 
	// 233  old modwatch 
	getxattr                         = 234, 
	fgetxattr                        = 235, 
	setxattr                         = 236, 
	fsetxattr                        = 237, 
	removexattr                      = 238, 
	fremovexattr                     = 239, 
	listxattr                        = 240, 
	flistxattr                       = 241, 
	fsctl                            = 242, 
	initgroups                       = 243, 
	posix_spawn                      = 244, 
	ffsctl                           = 245, 
	// 246  
	nfsclnt                          = 247, 
	fhopen                           = 248, 
	// 249  
	minherit                         = 250, 
	semsys                           = 251, 
	msgsys                           = 252, 
	shmsys                           = 253, 
	semctl                           = 254, 
	semget                           = 255, 
	semop                            = 256, 
	// 257  old semconfig 
	msgctl                           = 258, 
	msgget                           = 259, 
	msgsnd                           = 260, 
	msgrcv                           = 261, 
	shmat                            = 262, 
	shmctl                           = 263, 
	shmdt                            = 264, 
	shmget                           = 265, 
	shm_open                         = 266, 
	shm_unlink                       = 267, 
	sem_open                         = 268, 
	sem_close                        = 269, 
	sem_unlink                       = 270, 
	sem_wait                         = 271, 
	sem_trywait                      = 272, 
	sem_post                         = 273, 
	sysctlbyname                     = 274, 
	// 275  old sem_init 
	// 276  old sem_destroy 
	open_extended                    = 277, 
	umask_extended                   = 278, 
	stat_extended                    = 279, 
	lstat_extended                   = 280, 
	fstat_extended                   = 281, 
	chmod_extended                   = 282, 
	fchmod_extended                  = 283, 
	access_extended                  = 284, 
	settid                           = 285, 
	gettid                           = 286, 
	setsgroups                       = 287, 
	getsgroups                       = 288, 
	setwgroups                       = 289, 
	getwgroups                       = 290, 
	mkfifo_extended                  = 291, 
	mkdir_extended                   = 292, 
	identitysvc                      = 293, 
	shared_region_check_np           = 294, 
	// 295  old shared_region_map_np 
	vm_pressure_monitor              = 296, 
	psynch_rw_longrdlock             = 297, 
	psynch_rw_yieldwrlock            = 298, 
	psynch_rw_downgrade              = 299, 
	psynch_rw_upgrade                = 300, 
	psynch_mutexwait                 = 301, 
	psynch_mutexdrop                 = 302, 
	psynch_cvbroad                   = 303, 
	psynch_cvsignal                  = 304, 
	psynch_cvwait                    = 305, 
	psynch_rw_rdlock                 = 306, 
	psynch_rw_wrlock                 = 307, 
	psynch_rw_unlock                 = 308, 
	psynch_rw_unlock2                = 309, 
	getsid                           = 310, 
	settid_with_pid                  = 311, 
	psynch_cvclrprepost              = 312, 
	aio_fsync                        = 313, 
	aio_return                       = 314, 
	aio_suspend                      = 315, 
	aio_cancel                       = 316, 
	aio_error                        = 317, 
	aio_read                         = 318, 
	aio_write                        = 319, 
	lio_listio                       = 320, 
	// 321  old __pthread_cond_wait 
	iopolicysys                      = 322, 
	process_policy                   = 323, 
	mlockall                         = 324, 
	munlockall                       = 325, 
	// 326  
	issetugid                        = 327, 
	__pthread_kill                   = 328, 
	__pthread_sigmask                = 329, 
	__sigwait                        = 330, 
	__disable_threadsignal           = 331, 
	__pthread_markcancel             = 332, 
	__pthread_canceled               = 333, 
	__semwait_signal                 = 334, 
	// 335  old utrace 
	proc_info                        = 336, 
	sendfile                         = 337, 
	stat64                           = 338, 
	fstat64                          = 339, 
	lstat64                          = 340, 
	stat64_extended                  = 341, 
	lstat64_extended                 = 342, 
	fstat64_extended                 = 343, 
	getdirentries64                  = 344, 
	statfs64                         = 345, 
	fstatfs64                        = 346, 
	getfsstat64                      = 347, 
	__pthread_chdir                  = 348, 
	__pthread_fchdir                 = 349, 
	audit                            = 350, 
	auditon                          = 351, 
	// 352  
	getauid                          = 353, 
	setauid                          = 354, 
	// 355  old getaudit 
	// 356  old setaudit 
	getaudit_addr                    = 357, 
	setaudit_addr                    = 358, 
	auditctl                         = 359, 
	bsdthread_create                 = 360, 
	bsdthread_terminate              = 361, 
	kqueue                           = 362, 
	kevent                           = 363, 
	lchown                           = 364, 
	// 365  old stack_snapshot 
	bsdthread_register               = 366, 
	workq_open                       = 367, 
	workq_kernreturn                 = 368, 
	kevent64                         = 369, 
	__old_semwait_signal             = 370, 
	__old_semwait_signal_nocancel    = 371, 
	thread_selfid                    = 372, 
	ledger                           = 373, 
	kevent_qos                       = 374, 
	kevent_id                        = 375, 
	// 376  
	// 377  
	// 378  
	// 379  
	__mac_execve                     = 380, 
	__mac_syscall                    = 381, 
	__mac_get_file                   = 382, 
	__mac_set_file                   = 383, 
	__mac_get_link                   = 384, 
	__mac_set_link                   = 385, 
	__mac_get_proc                   = 386, 
	__mac_set_proc                   = 387, 
	__mac_get_fd                     = 388, 
	__mac_set_fd                     = 389, 
	__mac_get_pid                    = 390, 
	// 391  
	// 392  
	// 393  
	pselect                          = 394, 
	pselect_nocancel                 = 395, 
	read_nocancel                    = 396, 
	write_nocancel                   = 397, 
	open_nocancel                    = 398, 
	close_nocancel                   = 399, 
	wait4_nocancel                   = 400, 
	recvmsg_nocancel                 = 401, 
	sendmsg_nocancel                 = 402, 
	recvfrom_nocancel                = 403, 
	accept_nocancel                  = 404, 
	msync_nocancel                   = 405, 
	fcntl_nocancel                   = 406, 
	select_nocancel                  = 407, 
	fsync_nocancel                   = 408, 
	connect_nocancel                 = 409, 
	sigsuspend_nocancel              = 410, 
	readv_nocancel                   = 411, 
	writev_nocancel                  = 412, 
	sendto_nocancel                  = 413, 
	pread_nocancel                   = 414, 
	pwrite_nocancel                  = 415, 
	waitid_nocancel                  = 416, 
	poll_nocancel                    = 417, 
	msgsnd_nocancel                  = 418, 
	msgrcv_nocancel                  = 419, 
	sem_wait_nocancel                = 420, 
	aio_suspend_nocancel             = 421, 
	__sigwait_nocancel               = 422, 
	__semwait_signal_nocancel        = 423, 
	__mac_mount                      = 424, 
	__mac_get_mount                  = 425, 
	__mac_getfsstat                  = 426, 
	fsgetpath                        = 427, 
	audit_session_self               = 428, 
	audit_session_join               = 429, 
	fileport_makeport                = 430, 
	fileport_makefd                  = 431, 
	audit_session_port               = 432, 
	pid_suspend                      = 433, 
	pid_resume                       = 434, 
	pid_hibernate                    = 435, 
	pid_shutdown_sockets             = 436, 
	// 437  old shared_region_slide_np 
	shared_region_map_and_slide_np   = 438, 
	kas_info                         = 439, 
	memorystatus_control             = 440, 
	guarded_open_np                  = 441, 
	guarded_close_np                 = 442, 
	guarded_kqueue_np                = 443, 
	change_fdguard_np                = 444, 
	usrctl                           = 445, 
	proc_rlimit_control              = 446, 
	connectx                         = 447, 
	disconnectx                      = 448, 
	peeloff                          = 449, 
	socket_delegate                  = 450, 
	telemetry                        = 451, 
	proc_uuid_policy                 = 452, 
	memorystatus_get_level           = 453, 
	system_override                  = 454, 
	vfs_purge                        = 455, 
	sfi_ctl                          = 456, 
	sfi_pidctl                       = 457, 
	coalition                        = 458, 
	coalition_info                   = 459, 
	necp_match_policy                = 460, 
	getattrlistbulk                  = 461, 
	clonefileat                      = 462, 
	openat                           = 463, 
	openat_nocancel                  = 464, 
	renameat                         = 465, 
	faccessat                        = 466, 
	fchmodat                         = 467, 
	fchownat                         = 468, 
	fstatat                          = 469, 
	fstatat64                        = 470, 
	linkat                           = 471, 
	unlinkat                         = 472, 
	readlinkat                       = 473, 
	symlinkat                        = 474, 
	mkdirat                          = 475, 
	getattrlistat                    = 476, 
	proc_trace_log                   = 477, 
	bsdthread_ctl                    = 478, 
	openbyid_np                      = 479, 
	recvmsg_x                        = 480, 
	sendmsg_x                        = 481, 
	thread_selfusage                 = 482, 
	csrctl                           = 483, 
	guarded_open_dprotected_np       = 484, 
	guarded_write_np                 = 485, 
	guarded_pwrite_np                = 486, 
	guarded_writev_np                = 487, 
	renameatx_np                     = 488, 
	mremap_encrypted                 = 489, 
	netagent_trigger                 = 490, 
	stack_snapshot_with_config       = 491, 
	microstackshot                   = 492, 
	grab_pgo_data                    = 493, 
	persona                          = 494, 
	// 495  
	mach_eventlink_signal            = 496, 
	mach_eventlink_wait_until        = 497, 
	mach_eventlink_signal_wait_until = 498, 
	work_interval_ctl                = 499, 
	getentropy                       = 500, 
	necp_open                        = 501, 
	necp_client_action               = 502, 
	nexus_open                       = 503, // for those who are intressted http://newosxbook.com/bonus/vol1ch16.html
	nexus_register                   = 504, 
	nexus_deregister                 = 505, 
	nexus_create                     = 506, 
	nexus_destroy                    = 507, 
	nexus_get_opt                    = 508, 
	nexus_set_opt                    = 509, 
	channel_open                     = 510, 
	channel_get_info                 = 511, 
	channel_sync                     = 512, 
	channel_get_opt                  = 513, 
	channel_set_opt                  = 514, 
	ulock_wait                       = 515, 
	ulock_wake                       = 516, 
	fclonefileat                     = 517, 
	fs_snapshot                      = 518, 
	register_uexc_handler            = 519, 
	terminate_with_payload           = 520, 
	abort_with_payload               = 521, 
	necp_session_open                = 522, 
	necp_session_action              = 523, 
	setattrlistat                    = 524, 
	net_qos_guideline                = 525, 
	fmount                           = 526, 
	ntp_adjtime                      = 527, 
	ntp_gettime                      = 528, 
	os_fault_with_payload            = 529, 
	kqueue_workloop_ctl              = 530, 
	mach_bridge_remote_time          = 531, 
	coalition_ledger                 = 532, 
	log_data                         = 533, 
	memorystatus_available_memory    = 534, 
	objc_bp_assist_cfg_np            = 535, 
	shared_region_map_and_slide_2_np = 536, 
	pivot_root                       = 537, 
	task_inspect_for_pid             = 538, 
	task_read_for_pid                = 539, 
	preadv                           = 540, 
	pwritev                          = 541, 
	preadv_nocancel                  = 542, 
	pwritev_nocancel                 = 543, 
	ulock_wait2                      = 544, 
	proc_info_extended_id            = 545, 
	tracker_action                   = 546, 
	debug_syscall_reject             = 547, 
	MAXSYSCALL                       = 548, 
}
```

##### Related Procedures With Parameters

* [unix\_offset\_syscall](/core/sys/darwin/#unix_offset_syscall)

### [Task\_Port\_Type ¶](#Task_Port_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L65)

```
Task_Port_Type :: enum u32 {
	Kernel    = 1, 
	Host, 
	Name, 
	Bootstrap, 
	Seatbelt  = 7, 
	Access    = 9, 
}
```

### [VM\_Flag ¶](#VM_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L677)

```
VM_Flag :: enum i32 {
	Anywhere, 
	Purgable, 
	_4GB_Chunk, 
	Random_Addr, 
	No_Cache, 
	Resilient_Codesign, 
	Resilient_Media, 
	Permanent, 
	TPRO                = 12, 
	Overwrite           = 14, // delete any existing mappings first
	Superpage_Size_Any  = 16, 
	Superpage_Size_2MB  = 17, 
	__Superpage3        = 18, 
	Return_Data_Addr    = 20, 
	Return_4K_Data_Addr = 23, 
	Alias_Mask1         = 24, 
	Alias_Mask2, 
	Alias_Mask3, 
	Alias_Mask4, 
	Alias_Mask5, 
	Alias_Mask6, 
	Alias_Mask7, 
	Alias_Mask8, 
	HW                  = 12, 
}
```

### [VM\_Flags ¶](#VM_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L712)

```
VM_Flags :: distinct bit_set[VM_Flag; i32]
```

##### Related Procedures With Parameters

* [VM\_GET\_FLAGS\_ALIAS](/core/sys/darwin/#VM_GET_FLAGS_ALIAS)
* [vm\_map](/core/sys/darwin/#vm_map)

##### Related Constants

* [VM\_FLAGS\_ALIAS\_MASK](/core/sys/darwin/#VM_FLAGS_ALIAS_MASK)
* [VM\_FLAGS\_FIXED](/core/sys/darwin/#VM_FLAGS_FIXED)
* [VM\_FLAGS\_SUPERPAGE\_MASK](/core/sys/darwin/#VM_FLAGS_SUPERPAGE_MASK)
* [VM\_FLAGS\_SUPERPAGE\_NONE](/core/sys/darwin/#VM_FLAGS_SUPERPAGE_NONE)
* [VM\_FLAGS\_USER\_ALLOCATE](/core/sys/darwin/#VM_FLAGS_USER_ALLOCATE)
* [VM\_FLAGS\_USER\_MAP](/core/sys/darwin/#VM_FLAGS_USER_MAP)
* [VM\_FLAGS\_USER\_REMAP](/core/sys/darwin/#VM_FLAGS_USER_REMAP)

### [VM\_Inherit ¶](#VM_Inherit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L824)

```
VM_Inherit :: enum vm_inherit_t {
	Share, 
	Copy, 
	None, 
	Donate_Copy, 
	Default     = 1, 
	Last_Valid  = 2, 
}
```

##### Related Procedures With Parameters

* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [vm\_map](/core/sys/darwin/#vm_map)

### [VM\_Prot ¶](#VM_Prot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L775)

```
VM_Prot :: enum vm_prot_t {
	Read, 
	Write, 
	Execute, 
}
```

### [VM\_Prot\_Flags ¶](#VM_Prot_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L781)

```
VM_Prot_Flags :: distinct bit_set[VM_Prot; vm_prot_t]
```

##### Related Procedures With Parameters

* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [vm\_map](/core/sys/darwin/#vm_map)

##### Related Constants

* [VM\_PROT\_ALL](/core/sys/darwin/#VM_PROT_ALL)
* [VM\_PROT\_DEFAULT](/core/sys/darwin/#VM_PROT_DEFAULT)
* [VM\_PROT\_NONE](/core/sys/darwin/#VM_PROT_NONE)

### [arm\_thread\_state64\_t ¶](#arm_thread_state64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L199)

```
arm_thread_state64_t :: struct #packed {
	x:    [29]u64,
	fp:   u64,
	lr:   u64,
	sp:   u64,
	pc:   u64,
	cpsr: u32,
	pad:  u32,
}
```

### [blkcnt\_t ¶](#blkcnt_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L138)

```
blkcnt_t :: i64
```

##### Related Procedures With Parameters

* [proc\_pidinfo](/core/sys/darwin/#proc_pidinfo)
* [sys\_lseek](/core/sys/darwin/#sys_lseek)
* [syscall\_ftruncate](/core/sys/darwin/#syscall_ftruncate)
* [syscall\_lseek](/core/sys/darwin/#syscall_lseek)
* [syscall\_mmap](/core/sys/darwin/#syscall_mmap)
* [syscall\_truncate](/core/sys/darwin/#syscall_truncate)



##### Related Procedures With Returns

* [syscall\_read](/core/sys/darwin/#syscall_read)
* [syscall\_readlink](/core/sys/darwin/#syscall_readlink)
* [syscall\_readlinkat](/core/sys/darwin/#syscall_readlinkat)

### [blksize\_t ¶](#blksize_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L139)

```
blksize_t :: i32
```

##### Related Procedures With Parameters

* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [proc\_listallpids](/core/sys/darwin/#proc_listallpids)
* [proc\_pidinfo](/core/sys/darwin/#proc_pidinfo)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [sys\_lseek](/core/sys/darwin/#sys_lseek)
* [sys\_mkdir\_at](/core/sys/darwin/#sys_mkdir_at)
* [sys\_rename\_at](/core/sys/darwin/#sys_rename_at)
* [sys\_write\_string](/core/sys/darwin/#sys_write_string)
* [syscall\_access](/core/sys/darwin/#syscall_access)
* [syscall\_close](/core/sys/darwin/#syscall_close)
* [syscall\_dup](/core/sys/darwin/#syscall_dup)
* [syscall\_exit](/core/sys/darwin/#syscall_exit)
* [syscall\_faccessat](/core/sys/darwin/#syscall_faccessat)
* [syscall\_fchdir](/core/sys/darwin/#syscall_fchdir)
* [syscall\_fchmod](/core/sys/darwin/#syscall_fchmod)
* [syscall\_fcntl](/core/sys/darwin/#syscall_fcntl)
* [syscall\_flock](/core/sys/darwin/#syscall_flock)
* [syscall\_fstat](/core/sys/darwin/#syscall_fstat)
* [syscall\_fstatat](/core/sys/darwin/#syscall_fstatat)
* [syscall\_fsync](/core/sys/darwin/#syscall_fsync)
* [syscall\_ftruncate](/core/sys/darwin/#syscall_ftruncate)
* [syscall\_futimes](/core/sys/darwin/#syscall_futimes)
* [syscall\_getdirentries](/core/sys/darwin/#syscall_getdirentries)
* [syscall\_getrusage](/core/sys/darwin/#syscall_getrusage)
* [syscall\_ioctl](/core/sys/darwin/#syscall_ioctl)
* [syscall\_kill](/core/sys/darwin/#syscall_kill)
* [syscall\_linkat](/core/sys/darwin/#syscall_linkat)
* [syscall\_lseek](/core/sys/darwin/#syscall_lseek)
* [syscall\_mkdir\_at](/core/sys/darwin/#syscall_mkdir_at)
* [syscall\_mmap](/core/sys/darwin/#syscall_mmap)
* [syscall\_pipe](/core/sys/darwin/#syscall_pipe)
* [syscall\_proc\_info](/core/sys/darwin/#syscall_proc_info)
* [syscall\_read](/core/sys/darwin/#syscall_read)
* [syscall\_readlinkat](/core/sys/darwin/#syscall_readlinkat)
* [syscall\_rename\_at](/core/sys/darwin/#syscall_rename_at)
* [syscall\_sysctl](/core/sys/darwin/#syscall_sysctl)
* [syscall\_write](/core/sys/darwin/#syscall_write)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [thread\_get\_state](/core/sys/darwin/#thread_get_state)



##### Related Procedures With Returns

* [VM\_GET\_FLAGS\_ALIAS](/core/sys/darwin/#VM_GET_FLAGS_ALIAS)
* [copyfile](/core/sys/darwin/#copyfile)
* [errno](/core/sys/darwin/#errno)
* [fcopyfile](/core/sys/darwin/#fcopyfile)
* [os\_sync\_wait\_on\_address](/core/sys/darwin/#os_sync_wait_on_address)
* [os\_sync\_wait\_on\_address\_with\_deadline](/core/sys/darwin/#os_sync_wait_on_address_with_deadline)
* [os\_sync\_wait\_on\_address\_with\_timeout](/core/sys/darwin/#os_sync_wait_on_address_with_timeout)
* [os\_sync\_wake\_by\_address\_all](/core/sys/darwin/#os_sync_wake_by_address_all)
* [os\_sync\_wake\_by\_address\_any](/core/sys/darwin/#os_sync_wake_by_address_any)
* [proc\_pid\_rusage](/core/sys/darwin/#proc_pid_rusage)
* [proc\_pidpath](/core/sys/darwin/#proc_pidpath)
* [sys\_open](/core/sys/darwin/#sys_open)
* [sys\_shm\_open](/core/sys/darwin/#sys_shm_open)
* [syscall\_adjtime](/core/sys/darwin/#syscall_adjtime)
* [syscall\_chdir](/core/sys/darwin/#syscall_chdir)
* [syscall\_chmod](/core/sys/darwin/#syscall_chmod)
* [syscall\_copyfile](/core/sys/darwin/#syscall_copyfile)
* [syscall\_execve](/core/sys/darwin/#syscall_execve)
* [syscall\_getentropy](/core/sys/darwin/#syscall_getentropy)
* [syscall\_link](/core/sys/darwin/#syscall_link)
* [syscall\_lstat](/core/sys/darwin/#syscall_lstat)
* [syscall\_mkdir](/core/sys/darwin/#syscall_mkdir)
* [syscall\_munmap](/core/sys/darwin/#syscall_munmap)
* [syscall\_open](/core/sys/darwin/#syscall_open)
* [syscall\_openat](/core/sys/darwin/#syscall_openat)
* [syscall\_rename](/core/sys/darwin/#syscall_rename)
* [syscall\_rmdir](/core/sys/darwin/#syscall_rmdir)
* [syscall\_shm\_open](/core/sys/darwin/#syscall_shm_open)
* [syscall\_shm\_unlink](/core/sys/darwin/#syscall_shm_unlink)
* [syscall\_stat](/core/sys/darwin/#syscall_stat)
* [syscall\_sysctlbyname](/core/sys/darwin/#syscall_sysctlbyname)
* [syscall\_truncate](/core/sys/darwin/#syscall_truncate)
* [syscall\_utimes](/core/sys/darwin/#syscall_utimes)

### [boolean\_t ¶](#boolean_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L43)

```
boolean_t :: b32
```

 

NOTE(beau): typedefed to int in the original headers




##### Related Procedures With Parameters

* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [vm\_map](/core/sys/darwin/#vm_map)

### [copyfile\_flags ¶](#copyfile_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L7)

```
copyfile_flags :: bit_set[enum int {
	ACL, 
	STAT, 
	XATTR, 
	DATA, 
	RECURSIVE            = 15, 
	CHECK, 
	EXCL, 
	NOFOLLOW_SRC, 
	NOFOLLOW_DST, 
	MOVE, 
	UNLINK, 
	PACK, 
	UNPACK, 
	CLONE, 
	CLONE_FORCE, 
	RUN_IN_PLACE, 
	DATA_SPARSE, 
	PRESERVE_DST_TRACKED, 
	VERBOSE              = 30, 
}; u32]
```

##### Related Procedures With Parameters

* [copyfile](/core/sys/darwin/#copyfile)
* [fcopyfile](/core/sys/darwin/#fcopyfile)

##### Related Constants

* [COPYFILE\_ALL](/core/sys/darwin/#COPYFILE_ALL)
* [COPYFILE\_METADATA](/core/sys/darwin/#COPYFILE_METADATA)
* [COPYFILE\_NOFOLLOW](/core/sys/darwin/#COPYFILE_NOFOLLOW)
* [COPYFILE\_SECURITY](/core/sys/darwin/#COPYFILE_SECURITY)

### [copyfile\_state\_flag ¶](#copyfile_state_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L38)

```
copyfile_state_flag :: enum u32 {
	SRC_FD                       = 1, 
	SRC_FILENAME, 
	DST_FD, 
	DST_FILENAME, 
	QUARANTINE, 
	STATUS_CB, 
	STATUS_CTX, 
	COPIED, 
	XATTRNAME, 
	WAS_CLONED, 
	SRC_BSIZE, 
	DST_BSIZE, 
	BSIZE, 
	FORBID_CROSS_MOUNT, 
	NOCPROTECT, 
	PRESERVE_SUID, 
	RECURSIVE_SRC_FTSENT, 
	FORBID_DST_EXISTING_SYMLINKS, 
}
```

##### Related Procedures With Parameters

* [copyfile\_state\_get](/core/sys/darwin/#copyfile_state_get)
* [copyfile\_state\_set](/core/sys/darwin/#copyfile_state_set)

### [copyfile\_state\_t ¶](#copyfile_state_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L5)

```
copyfile_state_t :: distinct rawptr
```

##### Related Procedures With Parameters

* [copyfile](/core/sys/darwin/#copyfile)
* [copyfile\_state\_free](/core/sys/darwin/#copyfile_state_free)
* [copyfile\_state\_get](/core/sys/darwin/#copyfile_state_get)
* [copyfile\_state\_set](/core/sys/darwin/#copyfile_state_set)
* [fcopyfile](/core/sys/darwin/#fcopyfile)



##### Related Procedures With Returns

* [copyfile\_state\_alloc](/core/sys/darwin/#copyfile_state_alloc)

### [dev\_t ¶](#dev_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L132)

```
dev_t :: i32
```

##### Related Procedures With Parameters

* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [proc\_listallpids](/core/sys/darwin/#proc_listallpids)
* [proc\_pidinfo](/core/sys/darwin/#proc_pidinfo)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [sys\_lseek](/core/sys/darwin/#sys_lseek)
* [sys\_mkdir\_at](/core/sys/darwin/#sys_mkdir_at)
* [sys\_rename\_at](/core/sys/darwin/#sys_rename_at)
* [sys\_write\_string](/core/sys/darwin/#sys_write_string)
* [syscall\_access](/core/sys/darwin/#syscall_access)
* [syscall\_close](/core/sys/darwin/#syscall_close)
* [syscall\_dup](/core/sys/darwin/#syscall_dup)
* [syscall\_exit](/core/sys/darwin/#syscall_exit)
* [syscall\_faccessat](/core/sys/darwin/#syscall_faccessat)
* [syscall\_fchdir](/core/sys/darwin/#syscall_fchdir)
* [syscall\_fchmod](/core/sys/darwin/#syscall_fchmod)
* [syscall\_fcntl](/core/sys/darwin/#syscall_fcntl)
* [syscall\_flock](/core/sys/darwin/#syscall_flock)
* [syscall\_fstat](/core/sys/darwin/#syscall_fstat)
* [syscall\_fstatat](/core/sys/darwin/#syscall_fstatat)
* [syscall\_fsync](/core/sys/darwin/#syscall_fsync)
* [syscall\_ftruncate](/core/sys/darwin/#syscall_ftruncate)
* [syscall\_futimes](/core/sys/darwin/#syscall_futimes)
* [syscall\_getdirentries](/core/sys/darwin/#syscall_getdirentries)
* [syscall\_getrusage](/core/sys/darwin/#syscall_getrusage)
* [syscall\_ioctl](/core/sys/darwin/#syscall_ioctl)
* [syscall\_kill](/core/sys/darwin/#syscall_kill)
* [syscall\_linkat](/core/sys/darwin/#syscall_linkat)
* [syscall\_lseek](/core/sys/darwin/#syscall_lseek)
* [syscall\_mkdir\_at](/core/sys/darwin/#syscall_mkdir_at)
* [syscall\_mmap](/core/sys/darwin/#syscall_mmap)
* [syscall\_pipe](/core/sys/darwin/#syscall_pipe)
* [syscall\_proc\_info](/core/sys/darwin/#syscall_proc_info)
* [syscall\_read](/core/sys/darwin/#syscall_read)
* [syscall\_readlinkat](/core/sys/darwin/#syscall_readlinkat)
* [syscall\_rename\_at](/core/sys/darwin/#syscall_rename_at)
* [syscall\_sysctl](/core/sys/darwin/#syscall_sysctl)
* [syscall\_write](/core/sys/darwin/#syscall_write)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [thread\_get\_state](/core/sys/darwin/#thread_get_state)



##### Related Procedures With Returns

* [VM\_GET\_FLAGS\_ALIAS](/core/sys/darwin/#VM_GET_FLAGS_ALIAS)
* [copyfile](/core/sys/darwin/#copyfile)
* [errno](/core/sys/darwin/#errno)
* [fcopyfile](/core/sys/darwin/#fcopyfile)
* [os\_sync\_wait\_on\_address](/core/sys/darwin/#os_sync_wait_on_address)
* [os\_sync\_wait\_on\_address\_with\_deadline](/core/sys/darwin/#os_sync_wait_on_address_with_deadline)
* [os\_sync\_wait\_on\_address\_with\_timeout](/core/sys/darwin/#os_sync_wait_on_address_with_timeout)
* [os\_sync\_wake\_by\_address\_all](/core/sys/darwin/#os_sync_wake_by_address_all)
* [os\_sync\_wake\_by\_address\_any](/core/sys/darwin/#os_sync_wake_by_address_any)
* [proc\_pid\_rusage](/core/sys/darwin/#proc_pid_rusage)
* [proc\_pidpath](/core/sys/darwin/#proc_pidpath)
* [sys\_open](/core/sys/darwin/#sys_open)
* [sys\_shm\_open](/core/sys/darwin/#sys_shm_open)
* [syscall\_adjtime](/core/sys/darwin/#syscall_adjtime)
* [syscall\_chdir](/core/sys/darwin/#syscall_chdir)
* [syscall\_chmod](/core/sys/darwin/#syscall_chmod)
* [syscall\_copyfile](/core/sys/darwin/#syscall_copyfile)
* [syscall\_execve](/core/sys/darwin/#syscall_execve)
* [syscall\_getentropy](/core/sys/darwin/#syscall_getentropy)
* [syscall\_link](/core/sys/darwin/#syscall_link)
* [syscall\_lstat](/core/sys/darwin/#syscall_lstat)
* [syscall\_mkdir](/core/sys/darwin/#syscall_mkdir)
* [syscall\_munmap](/core/sys/darwin/#syscall_munmap)
* [syscall\_open](/core/sys/darwin/#syscall_open)
* [syscall\_openat](/core/sys/darwin/#syscall_openat)
* [syscall\_rename](/core/sys/darwin/#syscall_rename)
* [syscall\_rmdir](/core/sys/darwin/#syscall_rmdir)
* [syscall\_shm\_open](/core/sys/darwin/#syscall_shm_open)
* [syscall\_shm\_unlink](/core/sys/darwin/#syscall_shm_unlink)
* [syscall\_stat](/core/sys/darwin/#syscall_stat)
* [syscall\_sysctlbyname](/core/sys/darwin/#syscall_sysctlbyname)
* [syscall\_truncate](/core/sys/darwin/#syscall_truncate)
* [syscall\_utimes](/core/sys/darwin/#syscall_utimes)

### [dyld\_all\_image\_infos ¶](#dyld_all_image_infos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L259)

```
dyld_all_image_infos :: struct {
	version:                             u32,
	info_array_count:                    u32,
	info_array:                          rawptr,
	notification:                        rawptr,
	process_detached_from_shared_region: b32,
	libSystem_initialized:               b32,
	dyld_image_load_addr:                u64,
	jit_info:                            rawptr,
	dyld_version:                        cstring,
	error_message:                       cstring,
	termination_flags:                   u64,
	core_symbolication_shm_page:         rawptr,
	system_order_flag:                   u64,
	uuid_array_count:                    u64,
	uuid_array:                          rawptr,
	dyld_all_image_infos_addr:           u64,
	initial_image_count:                 u64,
	error_kind:                          u64,
	error_client_of_dylib_path:          cstring,
	error_target_dylib_path:             cstring,
	error_symbol:                        cstring,
	shared_cache_slide:                  u64,
	shared_cache_uuid:                   [16]u8,
	shared_cache_base_addr:              u64,
	info_array_change_timestamp:         u64,
	dyld_path:                           cstring,
	notify_ports:                        [8]mach_port_t,
	reserved:                            [7]u64,
	shared_cache_fsid:                   u64,
	shared_cache_fsobjid:                u64,
	compact_dyld_image_info_addr:        u64,
	compact_dyld_image_info_size:        u64,
	platform:                            u32,
	aot_info_count:                      u32,
	aot_info_array:                      rawptr,
	aot_info_array_change_timestamp:     u64,
	aot_shared_cache_base_address:       u64,
	aot_shared_cache_uuid:               [16]u8,
}
```

### [dyld\_image\_info ¶](#dyld_image_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L248)

```
dyld_image_info :: struct {
	image_load_addr:     u64,
	image_file_path:     cstring,
	image_file_mod_date: u64,
}
```

### [dyld\_uuid\_info ¶](#dyld_uuid_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L254)

```
dyld_uuid_info :: struct {
	image_load_addr: u64,
	image_uuid:      [16]u8,
}
```

### [fsid\_t ¶](#fsid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L128)

```
fsid_t :: distinct [2]i32
```

### [gid\_t ¶](#gid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L136)

```
gid_t :: u16
```

### [ipc\_space\_t ¶](#ipc_space_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L34)

```
ipc_space_t :: mach_port_t
```

##### Related Procedures With Parameters

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)
* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [mach\_msg](/core/sys/darwin/#mach_msg)
* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)
* [mach\_port\_deallocate](/core/sys/darwin/#mach_port_deallocate)
* [mach\_port\_extract\_right](/core/sys/darwin/#mach_port_extract_right)
* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_deallocate](/core/sys/darwin/#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [task\_resume](/core/sys/darwin/#task_resume)
* [task\_suspend](/core/sys/darwin/#task_suspend)
* [task\_terminate](/core/sys/darwin/#task_terminate)
* [task\_threads](/core/sys/darwin/#task_threads)
* [vm\_map](/core/sys/darwin/#vm_map)



##### Related Procedures With Returns

* [mach\_task\_self](/core/sys/darwin/#mach_task_self)

##### Related Constants

* [MACH\_PORT\_DEAD](/core/sys/darwin/#MACH_PORT_DEAD)

### [kern\_return\_t ¶](#kern_return_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L13)

```
kern_return_t :: distinct i32
```

### [mach\_msg\_body\_t ¶](#mach_msg_body_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L145)

```
mach_msg_body_t :: struct {
	msgh_descriptor_count: u32,
}
```

### [mach\_msg\_header\_t ¶](#mach_msg_header_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L136)

```
mach_msg_header_t :: struct {
	msgh_bits:         u32,
	msgh_size:         u32,
	msgh_remote_port:  mach_port_t,
	msgh_local_port:   mach_port_t,
	msgh_voucher_port: u32,
	msgh_id:           i32,
}
```

### [mach\_msg\_option\_t ¶](#mach_msg_option_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L29)

```
mach_msg_option_t :: distinct i32
```

### [mach\_msg\_port\_descriptor\_t ¶](#mach_msg_port_descriptor_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L55)

```
mach_msg_port_descriptor_t :: struct {
	name: mach_port_t,
	_:    u32,
	using _: bit_field u32 {
		_:           u32 | 16,
		disposition: u32 | 8,
		type:        u32 | 8,
	},
}
```

### [mach\_msg\_trailer\_t ¶](#mach_msg_trailer_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L149)

```
mach_msg_trailer_t :: struct {
	msgh_trailer_type: u32,
	msgh_trailer_size: u32,
}
```

### [mach\_msg\_type\_t ¶](#mach_msg_type_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L124)

```
mach_msg_type_t :: struct {
	using _: bit_field u32 {
		name:       u32 | 8,
		size:       u32 | 8,
		number:     u32 | 12,
		inline:     u32 | 1,
		longform:   u32 | 1,
		deallocate: u32 | 1,
		unused:     u32 | 1,
	},
}
```

### [mach\_port\_name\_t ¶](#mach_port_name_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L49)

```
mach_port_name_t :: distinct u32
```

### [mach\_port\_right\_t ¶](#mach_port_right_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L51)

```
mach_port_right_t :: distinct u32
```

### [mach\_port\_t ¶](#mach_port_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L8)

```
mach_port_t :: distinct u32
```

##### Related Procedures With Parameters

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)
* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [mach\_msg](/core/sys/darwin/#mach_msg)
* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)
* [mach\_port\_deallocate](/core/sys/darwin/#mach_port_deallocate)
* [mach\_port\_extract\_right](/core/sys/darwin/#mach_port_extract_right)
* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_deallocate](/core/sys/darwin/#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [task\_resume](/core/sys/darwin/#task_resume)
* [task\_suspend](/core/sys/darwin/#task_suspend)
* [task\_terminate](/core/sys/darwin/#task_terminate)
* [task\_threads](/core/sys/darwin/#task_threads)
* [vm\_map](/core/sys/darwin/#vm_map)



##### Related Procedures With Returns

* [mach\_task\_self](/core/sys/darwin/#mach_task_self)

##### Related Constants

* [MACH\_PORT\_DEAD](/core/sys/darwin/#MACH_PORT_DEAD)

### [mem\_entry\_name\_port\_t ¶](#mem_entry_name_port_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L33)

```
mem_entry_name_port_t :: mach_port_t
```

##### Related Procedures With Parameters

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)
* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [mach\_msg](/core/sys/darwin/#mach_msg)
* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)
* [mach\_port\_deallocate](/core/sys/darwin/#mach_port_deallocate)
* [mach\_port\_extract\_right](/core/sys/darwin/#mach_port_extract_right)
* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_deallocate](/core/sys/darwin/#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [task\_resume](/core/sys/darwin/#task_resume)
* [task\_suspend](/core/sys/darwin/#task_suspend)
* [task\_terminate](/core/sys/darwin/#task_terminate)
* [task\_threads](/core/sys/darwin/#task_threads)
* [vm\_map](/core/sys/darwin/#vm_map)



##### Related Procedures With Returns

* [mach\_task\_self](/core/sys/darwin/#mach_task_self)

##### Related Constants

* [MACH\_PORT\_DEAD](/core/sys/darwin/#MACH_PORT_DEAD)

### [mode\_t ¶](#mode_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L133)

```
mode_t :: u16
```

### [name\_t ¶](#name_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L30)

```
name_t :: distinct cstring
```

##### Related Procedures With Parameters

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)

### [nlink\_t ¶](#nlink_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L134)

```
nlink_t :: u16
```

### [off\_t ¶](#off_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L137)

```
off_t :: i64
```

##### Related Procedures With Parameters

* [proc\_pidinfo](/core/sys/darwin/#proc_pidinfo)
* [sys\_lseek](/core/sys/darwin/#sys_lseek)
* [syscall\_ftruncate](/core/sys/darwin/#syscall_ftruncate)
* [syscall\_lseek](/core/sys/darwin/#syscall_lseek)
* [syscall\_mmap](/core/sys/darwin/#syscall_mmap)
* [syscall\_truncate](/core/sys/darwin/#syscall_truncate)



##### Related Procedures With Returns

* [syscall\_read](/core/sys/darwin/#syscall_read)
* [syscall\_readlink](/core/sys/darwin/#syscall_readlink)
* [syscall\_readlinkat](/core/sys/darwin/#syscall_readlinkat)

### [os\_clockid ¶](#os_clockid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L52)

```
os_clockid :: enum u32 {
	MACH_ABSOLUTE_TIME = 32, 
}
```

##### Related Procedures With Parameters

* [os\_sync\_wait\_on\_address\_with\_deadline](/core/sys/darwin/#os_sync_wait_on_address_with_deadline)
* [os\_sync\_wait\_on\_address\_with\_timeout](/core/sys/darwin/#os_sync_wait_on_address_with_timeout)

### [os\_sync\_wait\_on\_address\_flag ¶](#os_sync_wait_on_address_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L18)

```
os_sync_wait_on_address_flag :: enum u32 {
	// This flag should be used when synchronizing among multiple processes by
	// placing the @addr passed to os_sync_wake_by_address_any and its variants
	// in a shared memory region.
	// 
	// When using this flag, it is important to pass OS_SYNC_WAIT_ON_ADDRESS_SHARED
	// flag along with the exact same @addr to os_sync_wait_on_address and
	// its variants to correctly find and wake up blocked waiters on the @addr.
	// 
	// This flag should not be used when synchronizing among multiple threads of
	// a single process. It allows the kernel to perform performance optimizations
	// as the @addr is local the calling process.
	SHARED = 0, 
}
```

### [os\_sync\_wait\_on\_address\_flags ¶](#os_sync_wait_on_address_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L33)

```
os_sync_wait_on_address_flags :: distinct bit_set[os_sync_wait_on_address_flag; u32]
```

##### Related Procedures With Parameters

* [os\_sync\_wait\_on\_address](/core/sys/darwin/#os_sync_wait_on_address)
* [os\_sync\_wait\_on\_address\_with\_deadline](/core/sys/darwin/#os_sync_wait_on_address_with_deadline)
* [os\_sync\_wait\_on\_address\_with\_timeout](/core/sys/darwin/#os_sync_wait_on_address_with_timeout)

### [os\_sync\_wake\_by\_address\_flag ¶](#os_sync_wake_by_address_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L35)

```
os_sync_wake_by_address_flag :: enum u32 {
	// This flag should be used when synchronizing among multiple processes by
	// placing the @addr passed to os_sync_wake_by_address_any and its variants
	// in a shared memory region.
	// 
	// When using this flag, it is important to pass OS_SYNC_WAIT_ON_ADDRESS_SHARED
	// flag along with the exact same @addr to os_sync_wait_on_address and
	// its variants to correctly find and wake up blocked waiters on the @addr.
	// 
	// This flag should not be used when synchronizing among multiple threads of
	// a single process. It allows the kernel to perform performance optimizations
	// as the @addr is local the calling process.
	SHARED = 0, 
}
```

### [os\_sync\_wake\_by\_address\_flags ¶](#os_sync_wake_by_address_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L50)

```
os_sync_wake_by_address_flags :: distinct bit_set[os_sync_wake_by_address_flag; u32]
```

##### Related Procedures With Parameters

* [os\_sync\_wake\_by\_address\_all](/core/sys/darwin/#os_sync_wake_by_address_all)
* [os\_sync\_wake\_by\_address\_any](/core/sys/darwin/#os_sync_wake_by_address_any)

### [pid\_t ¶](#pid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L140)

```
pid_t :: i32
```

##### Related Procedures With Parameters

* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [proc\_listallpids](/core/sys/darwin/#proc_listallpids)
* [proc\_pidinfo](/core/sys/darwin/#proc_pidinfo)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [sys\_lseek](/core/sys/darwin/#sys_lseek)
* [sys\_mkdir\_at](/core/sys/darwin/#sys_mkdir_at)
* [sys\_rename\_at](/core/sys/darwin/#sys_rename_at)
* [sys\_write\_string](/core/sys/darwin/#sys_write_string)
* [syscall\_access](/core/sys/darwin/#syscall_access)
* [syscall\_close](/core/sys/darwin/#syscall_close)
* [syscall\_dup](/core/sys/darwin/#syscall_dup)
* [syscall\_exit](/core/sys/darwin/#syscall_exit)
* [syscall\_faccessat](/core/sys/darwin/#syscall_faccessat)
* [syscall\_fchdir](/core/sys/darwin/#syscall_fchdir)
* [syscall\_fchmod](/core/sys/darwin/#syscall_fchmod)
* [syscall\_fcntl](/core/sys/darwin/#syscall_fcntl)
* [syscall\_flock](/core/sys/darwin/#syscall_flock)
* [syscall\_fstat](/core/sys/darwin/#syscall_fstat)
* [syscall\_fstatat](/core/sys/darwin/#syscall_fstatat)
* [syscall\_fsync](/core/sys/darwin/#syscall_fsync)
* [syscall\_ftruncate](/core/sys/darwin/#syscall_ftruncate)
* [syscall\_futimes](/core/sys/darwin/#syscall_futimes)
* [syscall\_getdirentries](/core/sys/darwin/#syscall_getdirentries)
* [syscall\_getrusage](/core/sys/darwin/#syscall_getrusage)
* [syscall\_ioctl](/core/sys/darwin/#syscall_ioctl)
* [syscall\_kill](/core/sys/darwin/#syscall_kill)
* [syscall\_linkat](/core/sys/darwin/#syscall_linkat)
* [syscall\_lseek](/core/sys/darwin/#syscall_lseek)
* [syscall\_mkdir\_at](/core/sys/darwin/#syscall_mkdir_at)
* [syscall\_mmap](/core/sys/darwin/#syscall_mmap)
* [syscall\_pipe](/core/sys/darwin/#syscall_pipe)
* [syscall\_proc\_info](/core/sys/darwin/#syscall_proc_info)
* [syscall\_read](/core/sys/darwin/#syscall_read)
* [syscall\_readlinkat](/core/sys/darwin/#syscall_readlinkat)
* [syscall\_rename\_at](/core/sys/darwin/#syscall_rename_at)
* [syscall\_sysctl](/core/sys/darwin/#syscall_sysctl)
* [syscall\_write](/core/sys/darwin/#syscall_write)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [thread\_get\_state](/core/sys/darwin/#thread_get_state)



##### Related Procedures With Returns

* [VM\_GET\_FLAGS\_ALIAS](/core/sys/darwin/#VM_GET_FLAGS_ALIAS)
* [copyfile](/core/sys/darwin/#copyfile)
* [errno](/core/sys/darwin/#errno)
* [fcopyfile](/core/sys/darwin/#fcopyfile)
* [os\_sync\_wait\_on\_address](/core/sys/darwin/#os_sync_wait_on_address)
* [os\_sync\_wait\_on\_address\_with\_deadline](/core/sys/darwin/#os_sync_wait_on_address_with_deadline)
* [os\_sync\_wait\_on\_address\_with\_timeout](/core/sys/darwin/#os_sync_wait_on_address_with_timeout)
* [os\_sync\_wake\_by\_address\_all](/core/sys/darwin/#os_sync_wake_by_address_all)
* [os\_sync\_wake\_by\_address\_any](/core/sys/darwin/#os_sync_wake_by_address_any)
* [proc\_pid\_rusage](/core/sys/darwin/#proc_pid_rusage)
* [proc\_pidpath](/core/sys/darwin/#proc_pidpath)
* [sys\_open](/core/sys/darwin/#sys_open)
* [sys\_shm\_open](/core/sys/darwin/#sys_shm_open)
* [syscall\_adjtime](/core/sys/darwin/#syscall_adjtime)
* [syscall\_chdir](/core/sys/darwin/#syscall_chdir)
* [syscall\_chmod](/core/sys/darwin/#syscall_chmod)
* [syscall\_copyfile](/core/sys/darwin/#syscall_copyfile)
* [syscall\_execve](/core/sys/darwin/#syscall_execve)
* [syscall\_getentropy](/core/sys/darwin/#syscall_getentropy)
* [syscall\_link](/core/sys/darwin/#syscall_link)
* [syscall\_lstat](/core/sys/darwin/#syscall_lstat)
* [syscall\_mkdir](/core/sys/darwin/#syscall_mkdir)
* [syscall\_munmap](/core/sys/darwin/#syscall_munmap)
* [syscall\_open](/core/sys/darwin/#syscall_open)
* [syscall\_openat](/core/sys/darwin/#syscall_openat)
* [syscall\_rename](/core/sys/darwin/#syscall_rename)
* [syscall\_rmdir](/core/sys/darwin/#syscall_rmdir)
* [syscall\_shm\_open](/core/sys/darwin/#syscall_shm_open)
* [syscall\_shm\_unlink](/core/sys/darwin/#syscall_shm_unlink)
* [syscall\_stat](/core/sys/darwin/#syscall_stat)
* [syscall\_sysctlbyname](/core/sys/darwin/#syscall_sysctlbyname)
* [syscall\_truncate](/core/sys/darwin/#syscall_truncate)
* [syscall\_utimes](/core/sys/darwin/#syscall_utimes)

### [proc\_bsdinfo ¶](#proc_bsdinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L20)

```
proc_bsdinfo :: struct {
	pbi_flags:        bit_set[PBI_Flag_Bits; u32],
	pbi_status:       u32,
	pbi_xstatus:      u32,
	pbi_pid:          u32,
	pbi_ppid:         u32,
	pbi_uid:          posix.uid_t,
	pbi_gid:          posix.gid_t,
	pbi_ruid:         posix.uid_t,
	pbi_rgid:         posix.gid_t,
	pbi_svuid:        posix.uid_t,
	pbi_svgid:        posix.gid_t,
	rfu_1:            u32,
	pbi_comm:         [16]u8 `fmt:"s,0"`,
	pbi_name:         [32]u8 `fmt:"s,0"`,
	pbi_nfiles:       u32,
	pbi_pgid:         u32,
	pbi_pjobc:        u32,
	e_tdev:           u32,
	e_tpgid:          u32,
	pbi_nice:         i32,
	pbi_start_tvsec:  u64,
	pbi_start_tvusec: u64,
}
```

### [proc\_bsdshortinfo ¶](#proc_bsdshortinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L45)

```
proc_bsdshortinfo :: struct {
	pbsi_pid:    u32,
	pbsi_ppid:   u32,
	pbsi_pgid:   u32,
	pbsi_status: u32,
	pbsi_comm:   [16]u8 `fmt:"s,0"`,
	pbsi_flags:  bit_set[PBI_Flag_Bits; u32],
	pbsi_uid:    posix.uid_t,
	pbsi_gid:    posix.gid_t,
	pbsi_ruid:   posix.uid_t,
	pbsi_rgid:   posix.gid_t,
	pbsi_svuid:  posix.uid_t,
	pbsi_svgid:  posix.gid_t,
	pbsi_rfu:    u32,
}
```

### [proc\_taskallinfo ¶](#proc_taskallinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L123)

```
proc_taskallinfo :: struct {
	pbsd:   proc_bsdinfo,
	ptinfo: proc_taskinfo,
}
```

### [proc\_taskinfo ¶](#proc_taskinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L102)

```
proc_taskinfo :: struct {
	pti_virtual_size:      u64 `fmt:"M"`,
	pti_resident_size:     u64 `fmt:"M"`,
	pti_total_user:        u64,
	pti_total_system:      u64,
	pti_threads_user:      u64,
	pti_threads_system:    u64,
	pti_policy:            i32,
	pti_faults:            i32,
	pti_pageins:           i32,
	pti_cow_faults:        i32,
	pti_messages_sent:     i32,
	pti_messages_received: i32,
	pti_syscalls_mach:     i32,
	pti_syscalls_unix:     i32,
	pti_csw:               i32,
	pti_threadnum:         i32,
	pti_numrunning:        i32,
	pti_priority:          i32,
}
```

### [proc\_vnodepathinfo ¶](#proc_vnodepathinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L61)

```
proc_vnodepathinfo :: struct {
	pvi_cdir: vnode_info_path,
	pvi_rdir: vnode_info_path,
}
```

### [rusage\_info\_v0 ¶](#rusage_info_v0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L180)

```
rusage_info_v0 :: struct {
	ri_uuid:               [16]u8,
	ri_user_time:          u64,
	ri_system_time:        u64,
	ri_pkg_idle_wkups:     u64,
	ri_interrupt_wkups:    u64,
	ri_pageins:            u64,
	ri_wired_size:         u64,
	ri_resident_size:      u64,
	ri_phys_footprint:     u64,
	ri_proc_start_abstime: u64,
	ri_proc_exit_abstime:  u64,
}
```

### [semaphore\_t ¶](#semaphore_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L11)

```
semaphore_t :: distinct u64
```

##### Related Procedures With Parameters

* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal](/core/sys/darwin/#semaphore_signal)
* [semaphore\_signal\_all](/core/sys/darwin/#semaphore_signal_all)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [semaphore\_wait](/core/sys/darwin/#semaphore_wait)

### [stat ¶](#stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L142)

```
stat :: __DARWIN_STRUCT_STAT64
```

##### Related Procedures With Parameters

* [sys\_lstat](/core/sys/darwin/#sys_lstat)
* [syscall\_fstat](/core/sys/darwin/#syscall_fstat)
* [syscall\_fstatat](/core/sys/darwin/#syscall_fstatat)
* [syscall\_lstat](/core/sys/darwin/#syscall_lstat)
* [syscall\_stat](/core/sys/darwin/#syscall_stat)

### [sync\_policy\_t ¶](#sync_policy_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L53)

```
sync_policy_t :: distinct i32
```

### [task\_dyld\_info ¶](#task_dyld_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L241)

```
task_dyld_info :: struct {
	all_image_info_addr:   u64,
	all_image_info_size:   u64,
	all_image_info_format: i32,
}
```

### [task\_info\_t ¶](#task_info_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L18)

```
task_info_t :: distinct ^i32
```

##### Related Procedures With Parameters

* [task\_info](/core/sys/darwin/#task_info)

### [task\_t ¶](#task_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L9)

```
task_t :: mach_port_t
```

##### Related Procedures With Parameters

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)
* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [mach\_msg](/core/sys/darwin/#mach_msg)
* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)
* [mach\_port\_deallocate](/core/sys/darwin/#mach_port_deallocate)
* [mach\_port\_extract\_right](/core/sys/darwin/#mach_port_extract_right)
* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_deallocate](/core/sys/darwin/#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [task\_resume](/core/sys/darwin/#task_resume)
* [task\_suspend](/core/sys/darwin/#task_suspend)
* [task\_terminate](/core/sys/darwin/#task_terminate)
* [task\_threads](/core/sys/darwin/#task_threads)
* [vm\_map](/core/sys/darwin/#vm_map)



##### Related Procedures With Returns

* [mach\_task\_self](/core/sys/darwin/#mach_task_self)

##### Related Constants

* [MACH\_PORT\_DEAD](/core/sys/darwin/#MACH_PORT_DEAD)

### [thread\_act\_t ¶](#thread_act_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L14)

```
thread_act_t :: distinct u32
```

##### Related Procedures With Parameters

* [thread\_get\_state](/core/sys/darwin/#thread_get_state)
* [thread\_info](/core/sys/darwin/#thread_info)

### [thread\_identifier\_info ¶](#thread_identifier_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L211)

```
thread_identifier_info :: struct {
	thread_id:      u64,
	thread_handler: u64,
	dispatch_qaddr: u64,
}
```

##### Related Procedures With Parameters

* [thread\_info](/core/sys/darwin/#thread_info)

### [thread\_list\_t ¶](#thread_list_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L16)

```
thread_list_t :: [^]thread_act_t
```

##### Related Procedures With Parameters

* [task\_threads](/core/sys/darwin/#task_threads)

### [thread\_state\_t ¶](#thread_state_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L15)

```
thread_state_t :: distinct ^u32
```

##### Related Procedures With Parameters

* [thread\_get\_state](/core/sys/darwin/#thread_get_state)

### [thread\_t ¶](#thread_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L35)

```
thread_t :: mach_port_t
```

##### Related Procedures With Parameters

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)
* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [mach\_msg](/core/sys/darwin/#mach_msg)
* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)
* [mach\_port\_deallocate](/core/sys/darwin/#mach_port_deallocate)
* [mach\_port\_extract\_right](/core/sys/darwin/#mach_port_extract_right)
* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_deallocate](/core/sys/darwin/#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [task\_resume](/core/sys/darwin/#task_resume)
* [task\_suspend](/core/sys/darwin/#task_suspend)
* [task\_terminate](/core/sys/darwin/#task_terminate)
* [task\_threads](/core/sys/darwin/#task_threads)
* [vm\_map](/core/sys/darwin/#vm_map)



##### Related Procedures With Returns

* [mach\_task\_self](/core/sys/darwin/#mach_task_self)

##### Related Constants

* [MACH\_PORT\_DEAD](/core/sys/darwin/#MACH_PORT_DEAD)

### [time\_t ¶](#time_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L131)

```
time_t :: i64
```

##### Related Procedures With Parameters

* [proc\_pidinfo](/core/sys/darwin/#proc_pidinfo)
* [sys\_lseek](/core/sys/darwin/#sys_lseek)
* [syscall\_ftruncate](/core/sys/darwin/#syscall_ftruncate)
* [syscall\_lseek](/core/sys/darwin/#syscall_lseek)
* [syscall\_mmap](/core/sys/darwin/#syscall_mmap)
* [syscall\_truncate](/core/sys/darwin/#syscall_truncate)



##### Related Procedures With Returns

* [syscall\_read](/core/sys/darwin/#syscall_read)
* [syscall\_readlink](/core/sys/darwin/#syscall_readlink)
* [syscall\_readlinkat](/core/sys/darwin/#syscall_readlinkat)

### [timeval ¶](#timeval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L143)

```
timeval :: _STRUCT_TIMEVAL
```

##### Related Procedures With Parameters

* [syscall\_adjtime](/core/sys/darwin/#syscall_adjtime)
* [syscall\_futimes](/core/sys/darwin/#syscall_futimes)
* [syscall\_utimes](/core/sys/darwin/#syscall_utimes)

### [uid\_t ¶](#uid_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L135)

```
uid_t :: u16
```

### [vinfo\_stat ¶](#vinfo_stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L78)

```
vinfo_stat :: struct {
	vst_dev:           u32,
	vst_mode:          u16,
	vst_nlink:         u16,
	vst_ino:           u64,
	vst_uid:           posix.uid_t,
	vst_gid:           posix.gid_t,
	vst_atime:         i64,
	vst_atimensec:     i64,
	vst_mtime:         i64,
	vst_mtimensec:     i64,
	vst_ctime:         i64,
	vst_ctimensec:     i64,
	vst_birthtime:     i64,
	vst_birthtimensec: i64,
	vst_size:          posix.off_t,
	vst_blocks:        i64,
	vst_blksize:       i32,
	vst_flags:         u32,
	vst_gen:           u32,
	vst_rdev:          u32,
	vst_qspare:        [2]i64,
}
```

### [vm\_address\_t ¶](#vm_address_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L39)

```
vm_address_t :: vm_offset_t
```

##### Related Procedures With Parameters

* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [vm\_map](/core/sys/darwin/#vm_map)

### [vm\_inherit\_t ¶](#vm_inherit_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L47)

```
vm_inherit_t :: distinct u32
```

### [vm\_map\_t ¶](#vm_map_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L32)

```
vm_map_t :: mach_port_t
```

##### Related Procedures With Parameters

* [bootstrap\_look\_up](/core/sys/darwin/#bootstrap_look_up)
* [bootstrap\_register2](/core/sys/darwin/#bootstrap_register2)
* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [mach\_msg](/core/sys/darwin/#mach_msg)
* [mach\_port\_allocate](/core/sys/darwin/#mach_port_allocate)
* [mach\_port\_deallocate](/core/sys/darwin/#mach_port_deallocate)
* [mach\_port\_extract\_right](/core/sys/darwin/#mach_port_extract_right)
* [mach\_vm\_allocate](/core/sys/darwin/#mach_vm_allocate)
* [mach\_vm\_deallocate](/core/sys/darwin/#mach_vm_deallocate)
* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)
* [mach\_vm\_remap](/core/sys/darwin/#mach_vm_remap)
* [semaphore\_create](/core/sys/darwin/#semaphore_create)
* [semaphore\_destroy](/core/sys/darwin/#semaphore_destroy)
* [semaphore\_signal\_thread](/core/sys/darwin/#semaphore_signal_thread)
* [task\_get\_special\_port](/core/sys/darwin/#task_get_special_port)
* [task\_info](/core/sys/darwin/#task_info)
* [task\_resume](/core/sys/darwin/#task_resume)
* [task\_suspend](/core/sys/darwin/#task_suspend)
* [task\_terminate](/core/sys/darwin/#task_terminate)
* [task\_threads](/core/sys/darwin/#task_threads)
* [vm\_map](/core/sys/darwin/#vm_map)



##### Related Procedures With Returns

* [mach\_task\_self](/core/sys/darwin/#mach_task_self)

##### Related Constants

* [MACH\_PORT\_DEAD](/core/sys/darwin/#MACH_PORT_DEAD)

### [vm\_offset\_t ¶](#vm_offset_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L40)

```
vm_offset_t :: distinct uintptr
```

##### Related Procedures With Parameters

* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [vm\_map](/core/sys/darwin/#vm_map)

### [vm\_prot\_t ¶](#vm_prot_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L45)

```
vm_prot_t :: distinct i32
```

### [vm\_region\_recurse\_info\_t ¶](#vm_region_recurse_info_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L17)

```
vm_region_recurse_info_t :: distinct ^i32
```

##### Related Procedures With Parameters

* [mach\_vm\_region\_recurse](/core/sys/darwin/#mach_vm_region_recurse)

### [vm\_region\_submap\_info\_64 ¶](#vm_region_submap_info_64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L218)

```
vm_region_submap_info_64 :: struct {
	protection:               u32,
	max_protection:           u32,
	inheritance:              u32,
	offset:                   u64,
	user_tag:                 u32,
	pages_residept:           u32,
	pages_shared_now_private: u32,
	pages_swapped_out:        u32,
	pages_dirtied:            u32,
	ref_count:                u32,
	shadow_depth:             u16,
	external_pager:           u8,
	share_mode:               u8,
	is_submap:                b32,
	behavior:                 i32,
	object_id:                u32,
	user_wired_count:         u16,
	pages_reusable:           u32,
}
```

### [vm\_size\_t ¶](#vm_size_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L37)

```
vm_size_t :: distinct uintptr
```

##### Related Procedures With Parameters

* [mach\_make\_memory\_entry](/core/sys/darwin/#mach_make_memory_entry)
* [vm\_map](/core/sys/darwin/#vm_map)

### [vnode\_info ¶](#vnode_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L71)

```
vnode_info :: struct {
	vi_stat: vinfo_stat,
	vi_type: i32,
	vi_pad:  i32,
	vi_fsid: fsid_t,
}
```

### [vnode\_info\_path ¶](#vnode_info_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L66)

```
vnode_info_path :: struct {
	vip_vi:   vnode_info,
	vip_path: [1024]u8,
}
```

### [x86\_thread\_state32\_t ¶](#x86_thread_state32_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L154)

```
x86_thread_state32_t :: struct {
	eax:    u32,
	ebx:    u32,
	ecx:    u32,
	edx:    u32,
	edi:    u32,
	esi:    u32,
	ebp:    u32,
	esp:    u32,
	ss:     u32,
	eflags: u32,
	eip:    u32,
	cs:     u32,
	ds:     u32,
	es:     u32,
	fs:     u32,
	gs:     u32,
}
```

### [x86\_thread\_state64\_t ¶](#x86_thread_state64_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L174)

```
x86_thread_state64_t :: struct #packed {
	rax:    u64,
	rbx:    u64,
	rcx:    u64,
	rdx:    u64,
	rdi:    u64,
	rsi:    u64,
	rbp:    u64,
	rsp:    u64,
	r8:     u64,
	r9:     u64,
	r10:    u64,
	r11:    u64,
	r12:    u64,
	r13:    u64,
	r14:    u64,
	r15:    u64,
	rip:    u64,
	rflags: u64,
	cs:     u64,
	fs:     u64,
	gs:     u64,
}
```

## Constants

### [ARM\_THREAD\_STATE64 ¶](#ARM_THREAD_STATE64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L27)

```
ARM_THREAD_STATE64 :: 6
```

### [ARM\_THREAD\_STATE64\_COUNT ¶](#ARM_THREAD_STATE64_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L208)

```
ARM_THREAD_STATE64_COUNT :: size_of(arm_thread_state64_t) / size_of(u32)
```

### [COPYFILE\_ALL ¶](#COPYFILE_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L34)

```
COPYFILE_ALL: bit_set[enum int {
	ACL, 
	STAT, 
	XATTR, 
	DATA, 
	RECURSIVE            = 15, 
	CHECK, 
	EXCL, 
	NOFOLLOW_SRC, 
	NOFOLLOW_DST, 
	MOVE, 
	UNLINK, 
	PACK, 
	UNPACK, 
	CLONE, 
	CLONE_FORCE, 
	RUN_IN_PLACE, 
	DATA_SPARSE, 
	PRESERVE_DST_TRACKED, 
	VERBOSE              = 30, 
}; u32] : COPYFILE_METADATA + copyfile_flags{.DATA}
```

### [COPYFILE\_METADATA ¶](#COPYFILE_METADATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L33)

```
COPYFILE_METADATA: bit_set[enum int {
	ACL, 
	STAT, 
	XATTR, 
	DATA, 
	RECURSIVE            = 15, 
	CHECK, 
	EXCL, 
	NOFOLLOW_SRC, 
	NOFOLLOW_DST, 
	MOVE, 
	UNLINK, 
	PACK, 
	UNPACK, 
	CLONE, 
	CLONE_FORCE, 
	RUN_IN_PLACE, 
	DATA_SPARSE, 
	PRESERVE_DST_TRACKED, 
	VERBOSE              = 30, 
}; u32] : COPYFILE_SECURITY + copyfile_flags{.XATTR}
```

### [COPYFILE\_NOFOLLOW ¶](#COPYFILE_NOFOLLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L36)

```
COPYFILE_NOFOLLOW: bit_set[enum int {
	ACL, 
	STAT, 
	XATTR, 
	DATA, 
	RECURSIVE            = 15, 
	CHECK, 
	EXCL, 
	NOFOLLOW_SRC, 
	NOFOLLOW_DST, 
	MOVE, 
	UNLINK, 
	PACK, 
	UNPACK, 
	CLONE, 
	CLONE_FORCE, 
	RUN_IN_PLACE, 
	DATA_SPARSE, 
	PRESERVE_DST_TRACKED, 
	VERBOSE              = 30, 
}; u32] : copyfile_flags{.NOFOLLOW_SRC, .NOFOLLOW_DST}
```

### [COPYFILE\_SECURITY ¶](#COPYFILE_SECURITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L32)

```
COPYFILE_SECURITY: bit_set[enum int {
	ACL, 
	STAT, 
	XATTR, 
	DATA, 
	RECURSIVE            = 15, 
	CHECK, 
	EXCL, 
	NOFOLLOW_SRC, 
	NOFOLLOW_DST, 
	MOVE, 
	UNLINK, 
	PACK, 
	UNPACK, 
	CLONE, 
	CLONE_FORCE, 
	RUN_IN_PLACE, 
	DATA_SPARSE, 
	PRESERVE_DST_TRACKED, 
	VERBOSE              = 30, 
}; u32] : copyfile_flags{.STAT, .ACL}
```

### [DARWIN\_MAXCOMLEN ¶](#DARWIN_MAXCOMLEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L117)

```
DARWIN_MAXCOMLEN :: 16
```

 

bsd/sys/param.h

### [DARWIN\_PROC\_ALL\_PIDS ¶](#DARWIN_PROC_ALL_PIDS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L32)

```
DARWIN_PROC_ALL_PIDS: i32 : c.int(1)
```

### [DARWIN\_PROC\_INFO\_CALL\_CANUSEFGHW ¶](#DARWIN_PROC_INFO_CALL_CANUSEFGHW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L51)

```
DARWIN_PROC_INFO_CALL_CANUSEFGHW: i32 : c.int(0xc)
```

### [DARWIN\_PROC\_INFO\_CALL\_DIRTYCONTROL ¶](#DARWIN_PROC_INFO_CALL_DIRTYCONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L47)

```
DARWIN_PROC_INFO_CALL_DIRTYCONTROL: i32 : c.int(0x8)
```

### [DARWIN\_PROC\_INFO\_CALL\_KERNMSGBUF ¶](#DARWIN_PROC_INFO_CALL_KERNMSGBUF) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L43)

```
DARWIN_PROC_INFO_CALL_KERNMSGBUF: i32 : c.int(0x4)
```

### [DARWIN\_PROC\_INFO\_CALL\_LISTCOALITIONS ¶](#DARWIN_PROC_INFO_CALL_LISTCOALITIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L50)

```
DARWIN_PROC_INFO_CALL_LISTCOALITIONS: i32 : c.int(0xb)
```

### [DARWIN\_PROC\_INFO\_CALL\_LISTPIDS ¶](#DARWIN_PROC_INFO_CALL_LISTPIDS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L40)

```
DARWIN_PROC_INFO_CALL_LISTPIDS: i32 : c.int(0x1)
```

### [DARWIN\_PROC\_INFO\_CALL\_PIDDYNKQUEUEINFO ¶](#DARWIN_PROC_INFO_CALL_PIDDYNKQUEUEINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L52)

```
DARWIN_PROC_INFO_CALL_PIDDYNKQUEUEINFO: i32 : c.int(0xd)
```

### [DARWIN\_PROC\_INFO\_CALL\_PIDFDINFO ¶](#DARWIN_PROC_INFO_CALL_PIDFDINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L42)

```
DARWIN_PROC_INFO_CALL_PIDFDINFO: i32 : c.int(0x3)
```

### [DARWIN\_PROC\_INFO\_CALL\_PIDFILEPORTINFO ¶](#DARWIN_PROC_INFO_CALL_PIDFILEPORTINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L45)

```
DARWIN_PROC_INFO_CALL_PIDFILEPORTINFO: i32 : c.int(0x6)
```

### [DARWIN\_PROC\_INFO\_CALL\_PIDINFO ¶](#DARWIN_PROC_INFO_CALL_PIDINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L41)

```
DARWIN_PROC_INFO_CALL_PIDINFO: i32 : c.int(0x2)
```

### [DARWIN\_PROC\_INFO\_CALL\_PIDORIGINATORINFO ¶](#DARWIN_PROC_INFO_CALL_PIDORIGINATORINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L49)

```
DARWIN_PROC_INFO_CALL_PIDORIGINATORINFO: i32 : c.int(0xa)
```

### [DARWIN\_PROC\_INFO\_CALL\_PIDRUSAGE ¶](#DARWIN_PROC_INFO_CALL_PIDRUSAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L48)

```
DARWIN_PROC_INFO_CALL_PIDRUSAGE: i32 : c.int(0x9)
```

### [DARWIN\_PROC\_INFO\_CALL\_SETCONTROL ¶](#DARWIN_PROC_INFO_CALL_SETCONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L44)

```
DARWIN_PROC_INFO_CALL_SETCONTROL: i32 : c.int(0x5)
```

### [DARWIN\_PROC\_INFO\_CALL\_TERMINATE ¶](#DARWIN_PROC_INFO_CALL_TERMINATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L46)

```
DARWIN_PROC_INFO_CALL_TERMINATE: i32 : c.int(0x7)
```

### [DARWIN\_PROC\_INFO\_CALL\_UDATA\_INFO ¶](#DARWIN_PROC_INFO_CALL_UDATA_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L53)

```
DARWIN_PROC_INFO_CALL_UDATA_INFO: i32 : c.int(0xe)
```

### [DARWIN\_PROC\_KDBG\_ONLY ¶](#DARWIN_PROC_KDBG_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L38)

```
DARWIN_PROC_KDBG_ONLY: i32 : c.int(7)
```

### [DARWIN\_PROC\_PGRP\_ONLY ¶](#DARWIN_PROC_PGRP_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L33)

```
DARWIN_PROC_PGRP_ONLY: i32 : c.int(2)
```

### [DARWIN\_PROC\_PIDPATHINFO ¶](#DARWIN_PROC_PIDPATHINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L30)

```
DARWIN_PROC_PIDPATHINFO :: 11
```

### [DARWIN\_PROC\_PIDPATHINFO\_SIZE ¶](#DARWIN_PROC_PIDPATHINFO_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L29)

```
DARWIN_PROC_PIDPATHINFO_SIZE :: MAXPATHLEN
```

 

proc\_info.h

### [DARWIN\_PROC\_PPID\_ONLY ¶](#DARWIN_PROC_PPID_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L37)

```
DARWIN_PROC_PPID_ONLY: i32 : c.int(6)
```

### [DARWIN\_PROC\_RUID\_ONLY ¶](#DARWIN_PROC_RUID_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L36)

```
DARWIN_PROC_RUID_ONLY: i32 : c.int(5)
```

### [DARWIN\_PROC\_TTY\_ONLY ¶](#DARWIN_PROC_TTY_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L34)

```
DARWIN_PROC_TTY_ONLY: i32 : c.int(3)
```

### [DARWIN\_PROC\_UID\_ONLY ¶](#DARWIN_PROC_UID_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L35)

```
DARWIN_PROC_UID_ONLY: i32 : c.int(4)
```

### [F\_OK ¶](#F_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L17)

```
F_OK: i32 : c.int(0)
```

 

sys/unistd.h for access

### [LOCK\_EX ¶](#LOCK_EX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L12)

```
LOCK_EX :: 2
```

 

exclusive lock

### [LOCK\_NB ¶](#LOCK_NB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L13)

```
LOCK_NB :: 4
```

 

don't block when locking

### [LOCK\_SH ¶](#LOCK_SH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L11)

```
LOCK_SH :: 1
```

 

flock

### [LOCK\_UN ¶](#LOCK_UN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L14)

```
LOCK_UN :: 8
```

 

unlock

### [MACH\_MSG\_PORT\_DESCRIPTOR ¶](#MACH_MSG_PORT_DESCRIPTOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L23)

```
MACH_MSG_PORT_DESCRIPTOR :: 0
```

### [MACH\_PORT\_DEAD ¶](#MACH_PORT_DEAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L21)

```
MACH_PORT_DEAD: mach_port_t : ~mach_port_t(0)
```

### [MACH\_PORT\_NULL ¶](#MACH_PORT_NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L20)

```
MACH_PORT_NULL :: 0
```

### [MAP\_32BIT ¶](#MAP_32BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L64)

```
MAP_32BIT :: 0x8000
```

 

Return virtual addresses <4G only

### [MAP\_ANONYMOUS ¶](#MAP_ANONYMOUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L56)

```
MAP_ANONYMOUS :: 0x1000
```

 

mmap flags

### [MAP\_FILE ¶](#MAP_FILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L57)

```
MAP_FILE :: 0x0000
```

 

map from file (default)

### [MAP\_FIXED ¶](#MAP_FIXED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L58)

```
MAP_FIXED :: 0x0010
```

 

[MF|SHM] interpret addr exactly

### [MAP\_HASSEMAPHORE ¶](#MAP_HASSEMAPHORE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L59)

```
MAP_HASSEMAPHORE :: 0x0200
```

 

region may contain semaphores

### [MAP\_JIT ¶](#MAP_JIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L63)

```
MAP_JIT :: 0x0800
```

 

Allocate a region that will be used for JIT purposes

### [MAP\_NOCACHE ¶](#MAP_NOCACHE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L62)

```
MAP_NOCACHE :: 0x0400
```

 

don't cache pages for this mapping

### [MAP\_PRIVATE ¶](#MAP_PRIVATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L60)

```
MAP_PRIVATE :: 0x0002
```

 

[MF|SHM] changes are private

### [MAP\_SHARED ¶](#MAP_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L61)

```
MAP_SHARED :: 0x0001
```

 

[MF|SHM] share changes

### [MASK\_ACCMODE ¶](#MASK_ACCMODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L100)

```
MASK_ACCMODE :: 0x0003
```

 

mask for above rd/wr/rdwr flags

### [MAXCOMLEN ¶](#MAXCOMLEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L18)

```
MAXCOMLEN :: 16
```

### [MAXPATHLEN ¶](#MAXPATHLEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L26)

```
MAXPATHLEN :: PATH_MAX
```

 

param.h

### [OPEN\_FLAG\_APPEND ¶](#OPEN_FLAG_APPEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L103)

```
OPEN_FLAG_APPEND :: 0x00000008
```

 

set append mode

### [OPEN\_FLAG\_CLOEXEC ¶](#OPEN_FLAG_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L113)

```
OPEN_FLAG_CLOEXEC :: 0x01000000
```

 

causes the descriptor to be closed if you use any of the exec like functions

### [OPEN\_FLAG\_CREAT ¶](#OPEN_FLAG_CREAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L104)

```
OPEN_FLAG_CREAT :: 0x00000200
```

 

create if nonexistant

### [OPEN\_FLAG\_DIRECTORY ¶](#OPEN_FLAG_DIRECTORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L109)

```
OPEN_FLAG_DIRECTORY :: 0x00100000
```

 

restrict open to only directories

### [OPEN\_FLAG\_EVTONLY ¶](#OPEN_FLAG_EVTONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L112)

```
OPEN_FLAG_EVTONLY :: 0x00008000
```

 

descriptor requested for event notifications only

### [OPEN\_FLAG\_EXCL ¶](#OPEN_FLAG_EXCL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L106)

```
OPEN_FLAG_EXCL :: 0x00000800
```

 

error if already exists

### [OPEN\_FLAG\_EXLOCK ¶](#OPEN_FLAG_EXLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L108)

```
OPEN_FLAG_EXLOCK :: 0x00000020
```

 

open with exclusive file lock

### [OPEN\_FLAG\_NOFOLLOW ¶](#OPEN_FLAG_NOFOLLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L110)

```
OPEN_FLAG_NOFOLLOW :: 0x00000100
```

 

don't follow symlinks

### [OPEN\_FLAG\_NOFOLLOW\_ANY ¶](#OPEN_FLAG_NOFOLLOW_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L114)

```
OPEN_FLAG_NOFOLLOW_ANY :: 0x20000000
```

 

no symlinks allowed in path

### [OPEN\_FLAG\_NONBLOCK ¶](#OPEN_FLAG_NONBLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L102)

```
OPEN_FLAG_NONBLOCK :: 0x00000004
```

 

no delay

### [OPEN\_FLAG\_RDONLY ¶](#OPEN_FLAG_RDONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L95)

```
OPEN_FLAG_RDONLY :: 0x0000
```

 

open for reading only

### [OPEN\_FLAG\_RDWR ¶](#OPEN_FLAG_RDWR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L97)

```
OPEN_FLAG_RDWR :: 0x0002
```

 

open for reading and writing

### [OPEN\_FLAG\_SHLOCK ¶](#OPEN_FLAG_SHLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L107)

```
OPEN_FLAG_SHLOCK :: 0x00000010
```

 

open with shared file lock

### [OPEN\_FLAG\_SYMLINK ¶](#OPEN_FLAG_SYMLINK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L111)

```
OPEN_FLAG_SYMLINK :: 0x00200000
```

 

allow open of a symlink

### [OPEN\_FLAG\_TRUNC ¶](#OPEN_FLAG_TRUNC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L105)

```
OPEN_FLAG_TRUNC :: 0x00000400
```

 

truncate to zero length

### [OPEN\_FLAG\_WRONLY ¶](#OPEN_FLAG_WRONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L96)

```
OPEN_FLAG_WRONLY :: 0x0001
```

 

open for writing only

### [PATH\_MAX ¶](#PATH_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L23)

```
PATH_MAX :: 1024
```

 

syslimits.h

### [PERMISSION\_ALL\_ALL ¶](#PERMISSION_ALL_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L76)

```
PERMISSION_ALL_ALL: bit_set[Permission_Enum; u16] : PERMISSION_OWNER_ALL | PERMISSION_GROUP_ALL | PERMISSION_OTHER_ALL
```

### [PERMISSION\_GROUP\_ALL ¶](#PERMISSION_GROUP_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L74)

```
PERMISSION_GROUP_ALL: bit_set[Permission_Enum; u16] : Permission{.PERMISSION_GROUP_READ, .PERMISSION_GROUP_WRITE, .PERMISSION_GROUP_EXECUTE}
```

### [PERMISSION\_MASK\_IRGRP ¶](#PERMISSION_MASK_IRGRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L80)

```
PERMISSION_MASK_IRGRP :: 0o000040
```

 

R for group

### [PERMISSION\_MASK\_IROTH ¶](#PERMISSION_MASK_IROTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L86)

```
PERMISSION_MASK_IROTH :: 0o000004
```

 

R for other

### [PERMISSION\_MASK\_IRUSR ¶](#PERMISSION_MASK_IRUSR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L74)

```
PERMISSION_MASK_IRUSR :: 0o000400
```

 

R for owner

### [PERMISSION\_MASK\_IRWXG ¶](#PERMISSION_MASK_IRWXG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L79)

```
PERMISSION_MASK_IRWXG :: 0o000070
```

 

For group Mode/Permission Flags for Open etc.

### [PERMISSION\_MASK\_IRWXO ¶](#PERMISSION_MASK_IRWXO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L85)

```
PERMISSION_MASK_IRWXO :: 0o000007
```

 

For other Mode/Permission Flags for Open etc.

### [PERMISSION\_MASK\_IRWXU ¶](#PERMISSION_MASK_IRWXU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L73)

```
PERMISSION_MASK_IRWXU :: 0o000700
```

 

For owner Mode/Permission Flags for Open etc.

### [PERMISSION\_MASK\_ISGID ¶](#PERMISSION_MASK_ISGID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L92)

```
PERMISSION_MASK_ISGID :: 0o002000
```

 

set group id on execution

### [PERMISSION\_MASK\_ISUID ¶](#PERMISSION_MASK_ISUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L91)

```
PERMISSION_MASK_ISUID :: 0o004000
```

 

Special Mode/Permission Flags for Open etc.

### [PERMISSION\_MASK\_ISVTX ¶](#PERMISSION_MASK_ISVTX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L93)

```
PERMISSION_MASK_ISVTX :: 0o001000
```

 

save swapped text even after use

### [PERMISSION\_MASK\_IWGRP ¶](#PERMISSION_MASK_IWGRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L81)

```
PERMISSION_MASK_IWGRP :: 0o000020
```

 

W for group

### [PERMISSION\_MASK\_IWOTH ¶](#PERMISSION_MASK_IWOTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L87)

```
PERMISSION_MASK_IWOTH :: 0o000002
```

 

W for other

### [PERMISSION\_MASK\_IWUSR ¶](#PERMISSION_MASK_IWUSR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L75)

```
PERMISSION_MASK_IWUSR :: 0o000200
```

 

W for owner

### [PERMISSION\_MASK\_IXGRP ¶](#PERMISSION_MASK_IXGRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L82)

```
PERMISSION_MASK_IXGRP :: 0o000010
```

 

X for group

### [PERMISSION\_MASK\_IXOTH ¶](#PERMISSION_MASK_IXOTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L88)

```
PERMISSION_MASK_IXOTH :: 0o000001
```

 

X for other

### [PERMISSION\_MASK\_IXUSR ¶](#PERMISSION_MASK_IXUSR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L76)

```
PERMISSION_MASK_IXUSR :: 0o000100
```

 

X for owner

### [PERMISSION\_NONE\_NONE ¶](#PERMISSION_NONE_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L72)

```
PERMISSION_NONE_NONE: bit_set[Permission_Enum; u16] : Permission{}
```

### [PERMISSION\_OTHER\_ALL ¶](#PERMISSION_OTHER_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L75)

```
PERMISSION_OTHER_ALL: bit_set[Permission_Enum; u16] : Permission{.PERMISSION_OTHER_READ, .PERMISSION_OTHER_WRITE, .PERMISSION_OTHER_EXECUTE}
```

### [PERMISSION\_OWNER\_ALL ¶](#PERMISSION_OWNER_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L73)

```
PERMISSION_OWNER_ALL: bit_set[Permission_Enum; u16] : Permission{.PERMISSION_OWNER_READ, .PERMISSION_OWNER_WRITE, .PERMISSION_OWNER_EXECUTE}
```

### [PIDPATHINFO\_MAXSIZE ¶](#PIDPATHINFO_MAXSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L169)

```
PIDPATHINFO_MAXSIZE :: 4 * posix.PATH_MAX
```

### [PROT\_EXEC ¶](#PROT_EXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L70)

```
PROT_EXEC :: 0x04
```

 

[MC2] pages can be executed

### [PROT\_NONE ¶](#PROT_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L67)

```
PROT_NONE :: 0x00
```

 

mmap prot flags

### [PROT\_READ ¶](#PROT_READ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L68)

```
PROT_READ :: 0x01
```

 

[MC2] pages can be read

### [PROT\_WRITE ¶](#PROT_WRITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L69)

```
PROT_WRITE :: 0x02
```

 

[MC2] pages can be written

### [R\_OK ¶](#R_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L20)

```
R_OK: i32 : c.int((1 << 2))
```

 

test for read permission

### [TASK\_DYLD\_INFO ¶](#TASK_DYLD_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L240)

```
TASK_DYLD_INFO :: 17
```

### [TASK\_DYLD\_INFO\_COUNT ¶](#TASK_DYLD_INFO_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L246)

```
TASK_DYLD_INFO_COUNT :: size_of(task_dyld_info) / size_of(u32)
```

### [THREAD\_IDENTIFIER\_INFO ¶](#THREAD_IDENTIFIER_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L210)

```
THREAD_IDENTIFIER_INFO :: 4
```

### [THREAD\_IDENTIFIER\_INFO\_COUNT ¶](#THREAD_IDENTIFIER_INFO_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L216)

```
THREAD_IDENTIFIER_INFO_COUNT :: size_of(thread_identifier_info) / size_of(u32)
```

### [TIOCGWINSZ ¶](#TIOCGWINSZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L227)

```
TIOCGWINSZ :: 0x40087468
```

 

Get window size

### [ULOCK\_WAIT\_2\_AVAILABLE ¶](#ULOCK_WAIT_2_AVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L11)

```
ULOCK_WAIT_2_AVAILABLE :: ODIN_MINIMUM_OS_VERSION >= 11_00_00
```

### [VM\_FLAGS\_ALIAS\_MASK ¶](#VM_FLAGS_ALIAS_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L727)

```
VM_FLAGS_ALIAS_MASK :: VM_Flags{.Alias_Mask1, .Alias_Mask2, .Alias_Mask3, .Alias_Mask4, .Alias_Mask5, .Alias_Mask6, .Alias_Mask7, .Alias_Mask8}
```

 

0xFF000000

### [VM\_FLAGS\_FIXED ¶](#VM_FLAGS_FIXED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L713)

```
VM_FLAGS_FIXED :: VM_Flags{}
```

### [VM\_FLAGS\_SUPERPAGE\_MASK ¶](#VM_FLAGS_SUPERPAGE_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L720)

```
VM_FLAGS_SUPERPAGE_MASK :: VM_Flags{.Superpage_Size_Any, .Superpage_Size_2MB, .__Superpage3}
```

 

\* VM\_FLAGS\_SUPERPAGE\_MASK
\* 3 bits that specify whether large pages should be used instead of
\* base pages (!=0), as well as the requested page size.

### [VM\_FLAGS\_SUPERPAGE\_NONE ¶](#VM_FLAGS_SUPERPAGE_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L769)

```
VM_FLAGS_SUPERPAGE_NONE :: VM_Flags{}
```

 

no superpages, if all bits are 0

### [VM\_FLAGS\_USER\_ALLOCATE ¶](#VM_FLAGS_USER_ALLOCATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L745)

```
VM_FLAGS_USER_ALLOCATE :: VM_Flags{.Anywhere, .Purgable, ._4GB_Chunk, .Random_Addr, .No_Cache, .Permanent, .Overwrite} | VM_FLAGS_FIXED | VM_FLAGS_SUPERPAGE_MASK | VM_FLAGS_ALIAS_MASK
```

 

These are the flags that we accept from user-space

### [VM\_FLAGS\_USER\_MAP ¶](#VM_FLAGS_USER_MAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L755)

```
VM_FLAGS_USER_MAP :: VM_Flags{.Return_4K_Data_Addr, .Return_Data_Addr} | VM_FLAGS_USER_ALLOCATE
```

### [VM\_FLAGS\_USER\_REMAP ¶](#VM_FLAGS_USER_REMAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L760)

```
VM_FLAGS_USER_REMAP :: VM_Flags{.Anywhere, .Random_Addr, .Overwrite, .Return_Data_Addr, .Resilient_Codesign, .Resilient_Media} | VM_FLAGS_FIXED
```

### [VM\_PROT\_ALL ¶](#VM_PROT_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L785)

```
VM_PROT_ALL :: VM_Prot_Flags{.Read, .Write, .Execute}
```

### [VM\_PROT\_DEFAULT ¶](#VM_PROT_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L784)

```
VM_PROT_DEFAULT :: VM_Prot_Flags{.Read, .Write}
```

### [VM\_PROT\_NONE ¶](#VM_PROT_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L783)

```
VM_PROT_NONE :: VM_Prot_Flags{}
```

### [VM\_REGION\_SUBMAP\_INFO\_COUNT\_64 ¶](#VM_REGION_SUBMAP_INFO_COUNT_64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L238)

```
VM_REGION_SUBMAP_INFO_COUNT_64 :: size_of(vm_region_submap_info_64) / size_of(u32)
```

### [WAIT\_ON\_ADDRESS\_AVAILABLE ¶](#WAIT_ON_ADDRESS_AVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L10)

```
WAIT_ON_ADDRESS_AVAILABLE :: ODIN_MINIMUM_OS_VERSION >= 14_04_00
```

### [W\_OK ¶](#W_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L19)

```
W_OK: i32 : c.int((1 << 1))
```

 

test for write permission

### [X86\_THREAD\_STATE32 ¶](#X86_THREAD_STATE32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L25)

```
X86_THREAD_STATE32 :: 1
```

### [X86\_THREAD\_STATE32\_COUNT ¶](#X86_THREAD_STATE32_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L172)

```
X86_THREAD_STATE32_COUNT :: size_of(x86_thread_state32_t) / size_of(u32)
```

### [X86\_THREAD\_STATE64 ¶](#X86_THREAD_STATE64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L26)

```
X86_THREAD_STATE64 :: 4
```

### [X86\_THREAD\_STATE64\_COUNT ¶](#X86_THREAD_STATE64_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L197)

```
X86_THREAD_STATE64_COUNT :: size_of(x86_thread_state64_t) / size_of(u32)
```

### [X\_OK ¶](#X_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L18)

```
X_OK: i32 : c.int((1 << 0))
```

 

test for execute or search permission

## Variables

### [vm\_page\_mask ¶](#vm_page_mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L311)

```
vm_page_mask: u64
```

### [vm\_page\_shift ¶](#vm_page_shift) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L312)

```
vm_page_shift: i32
```

### [vm\_page\_size ¶](#vm_page_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L310)

```
vm_page_size: u64
```

## Procedures

### [VM\_GET\_FLAGS\_ALIAS ¶](#VM_GET_FLAGS_ALIAS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L738)

```
VM_GET_FLAGS_ALIAS :: proc(flags: VM_Flags) -> i32 {…}
```

### [bootstrap\_look\_up ¶](#bootstrap_look_up) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L338)

```
bootstrap_look_up :: proc "c" (bp: mach_port_t, service_name: name_t, sp: ^mach_port_t) -> Kern_Return ---
```

### [bootstrap\_register2 ¶](#bootstrap_register2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L337)

```
bootstrap_register2 :: proc "c" (bp: mach_port_t, service_name: name_t, sp: mach_port_t, flags: u64) -> Kern_Return ---
```

### [copyfile ¶](#copyfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L60)

```
copyfile :: proc "c" (from, to: cstring, state: copyfile_state_t, flags: bit_set[enum int {ACL, STAT, XATTR, DATA, RECURSIVE            = 15, CHECK, EXCL, NOFOLLOW_SRC, NOFOLLOW_DST, MOVE, UNLINK, PACK, UNPACK, CLONE, CLONE_FORCE, RUN_IN_PLACE, DATA_SPARSE, PRESERVE_DST_TRACKED, VERBOSE              = 30, }; u32]) -> i32 ---
```

### [copyfile\_state\_alloc ¶](#copyfile_state_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L63)

```
copyfile_state_alloc :: proc "c" () -> copyfile_state_t ---
```

### [copyfile\_state\_free ¶](#copyfile_state_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L64)

```
copyfile_state_free :: proc "c" (state: copyfile_state_t) -> posix.result ---
```

### [copyfile\_state\_get ¶](#copyfile_state_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L65)

```
copyfile_state_get :: proc "c" (state: copyfile_state_t, flag: copyfile_state_flag, dst: rawptr) -> posix.result ---
```

### [copyfile\_state\_set ¶](#copyfile_state_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L66)

```
copyfile_state_set :: proc "c" (state: copyfile_state_t, flag: copyfile_state_flag, src: rawptr) -> posix.result ---
```

### [errno ¶](#errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/darwin.odin#L34)

```
errno :: proc "contextless" () -> i32 {…}
```

### [fcopyfile ¶](#fcopyfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin#L61)

```
fcopyfile :: proc "c" (from, to: posix.FD, state: copyfile_state_t, flags: bit_set[enum int {ACL, STAT, XATTR, DATA, RECURSIVE            = 15, CHECK, EXCL, NOFOLLOW_SRC, NOFOLLOW_DST, MOVE, UNLINK, PACK, UNPACK, CLONE, CLONE_FORCE, RUN_IN_PLACE, DATA_SPARSE, PRESERVE_DST_TRACKED, VERBOSE              = 30, }; u32]) -> i32 ---
```

### [mach\_make\_memory\_entry ¶](#mach_make_memory_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L354)

```
mach_make_memory_entry :: proc "c" (
	target_task:   mach_port_t, 
	size:          ^vm_size_t, 
	offset:        vm_offset_t, 
	permission:    VM_Prot_Flags, 
	object_handle: ^mach_port_t, 
	parent_entry:  mach_port_t, 
) -> Kern_Return ---
```

### [mach\_msg ¶](#mach_msg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L304)

```
mach_msg :: proc "c" (
	header:        rawptr, 
	option:        Msg_Option_Flags, 
	send_size:     u32, 
	receive_limit: u32, 
	receive_name:  mach_port_t, 
	timeout:       u32, 
	notify:        mach_port_t, 
) -> Kern_Return ---
```

### [mach\_msg\_send ¶](#mach_msg_send) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L305)

```
mach_msg_send :: proc "c" (header: rawptr) -> Kern_Return ---
```

### [mach\_port\_allocate ¶](#mach_port_allocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L314)

```
mach_port_allocate :: proc "c" (task: mach_port_t, right: Port_Right, name: rawptr) -> Kern_Return ---
```

### [mach\_port\_deallocate ¶](#mach_port_deallocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L315)

```
mach_port_deallocate :: proc "c" (task: mach_port_t, name: u32) -> Kern_Return ---
```

### [mach\_port\_extract\_right ¶](#mach_port_extract_right) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L316)

```
mach_port_extract_right :: proc "c" (task: mach_port_t, name: u32, msgt_name: u32, poly: ^mach_port_t, poly_poly: ^mach_port_t) -> Kern_Return ---
```

### [mach\_task\_self ¶](#mach_task_self) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L303)

```
mach_task_self :: proc "c" () -> mach_port_t ---
```

### [mach\_vm\_allocate ¶](#mach_vm_allocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L306)

```
mach_vm_allocate :: proc "c" (target_task: mach_port_t, adddress: u64, size: u64, flags: i32) -> Kern_Return ---
```

### [mach\_vm\_deallocate ¶](#mach_vm_deallocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L307)

```
mach_vm_deallocate :: proc "c" (target_task: mach_port_t, adddress: ^u64, size: u64) -> Kern_Return ---
```

### [mach\_vm\_region\_recurse ¶](#mach_vm_region_recurse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L309)

```
mach_vm_region_recurse :: proc "c" (
	target_task: mach_port_t, 
	address:     ^u64, 
	size:        ^u64, 
	depth:       ^u32, 
	info:        vm_region_recurse_info_t, 
	count:       ^u32, 
) -> Kern_Return ---
```

### [mach\_vm\_remap ¶](#mach_vm_remap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L308)

```
mach_vm_remap :: proc "c" (
	target_task:    mach_port_t, 
	page:           rawptr, 
	size:           u64, 
	mask:           u64, 
	flags:          i32, 
	src_task:       mach_port_t, 
	src_address:    u64, 
	copy:           b32, 
	cur_protection: ^i32, 
	max_protection: ^i32, 
	inheritance:    VM_Inherit, 
) -> Kern_Return ---
```

### [mach\_vm\_trunc\_page ¶](#mach_vm_trunc_page) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L843)

```
mach_vm_trunc_page :: proc(v: u64) -> u64 {…}
```

### [os\_sync\_wait\_on\_address ¶](#os_sync_wait_on_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L136)

```
os_sync_wait_on_address :: proc "c" (addr: rawptr, value: u64, size: uint, flags: os_sync_wait_on_address_flags) -> i32 ---
```

 

This function provides an atomic compare-and-wait functionality that
can be used to implement other higher level synchronization primitives.

It reads a value from @addr, compares it to expected @value and blocks
the calling thread if they are equal. This sequence of operations is
done atomically with respect to other concurrent operations that can
be performed on this @addr by other threads using this same function
or os\_sync\_wake\_by\_addr variants. At this point, the blocked calling
thread is considered to be a waiter on this @addr, waiting to be woken
up by a call to os\_sync\_wake\_by\_addr variants. If the value at @addr
turns out to be different than expected, the calling thread returns
immediately without blocking.

This function is expected to be used for implementing synchronization
primitives that do not have a sense of ownership (e.g. condition
variables, semaphores) as it does not provide priority inversion avoidance.
For locking primitives, it is recommended that you use existing OS
primitives such as os\_unfair\_lock API family / pthread mutex or
std::mutex.

@param addr
The userspace address to be used for atomic compare-and-wait.
This address must be aligned to @size.

@param value
The value expected at @addr.

@param size
The size of @value, in bytes. This can be either 4 or 8 today.
For @value of @size 4 bytes, the upper 4 bytes of @value are ignored.

@param flags
Flags to alter behavior of os\_sync\_wait\_on\_address.
See os\_sync\_wait\_on\_address\_flags\_t.

@return
If the calling thread is woken up by a call to os\_sync\_wake\_by\_addr
variants or the value at @addr is different than expected, this function
returns successfully and the return value indicates the number
of outstanding waiters blocked on this address.
In the event of an error, returns -1 with errno set to indicate the error.

EINVAL : Invalid flags or size.
EINVAL : The @addr passed is NULL or misaligned.
EINVAL : The operation associated with existing kernel state

```
			at this @addr is inconsistent with what the caller
			has requested.
			It is important to make sure consistent values are
			passed across wait and wake APIs for @addr, @size
			and the shared memory specification
			(See os_sync_wait_on_address_flags_t).
```

It is possible for the os\_sync\_wait\_on\_address and its variants to perform
an early return in the event of following errors where user may want to
re-try the wait operation. E.g. low memory conditions could cause such early
return.
It is important to read the current value at the @addr before re-trying
to ensure that the new value still requires waiting on @addr.

ENOMEM : Unable to allocate memory for kernel internal data

```
			structures.
```

EINTR : The syscall was interrupted / spurious wake up.
EFAULT : Unable to read value from the @addr. Kernel copyin failed.

```
			It is possible to receive EFAULT error in following cases:
			1. The @addr is an invalid address. This is a programmer error.
			2. The @addr is valid; but, this is a transient error such as
			due to low memory conditions. User may want to re-try the wait
			operation.
```

Following code snippet illustrates a possible re-try loop.
<code>
retry:

```
current = atomic_load_explicit(addr, memory_order_relaxed);
if (current != expected) {
	int ret = os_sync_wait_on_address(addr, current, size, flags);
	if ((ret < 0) && ((errno == EINTR) || (errno == EFAULT))) {
		goto retry;
	}
```

}
</code>

### [os\_sync\_wait\_on\_address\_with\_deadline ¶](#os_sync_wait_on_address_with_deadline) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L187)

```
os_sync_wait_on_address_with_deadline :: proc "c" (
	addr:     rawptr, 
	value:    u64, 
	size:     uint, 
	flags:    os_sync_wait_on_address_flags, 
	clockid:  os_clockid, 
	deadline: u64, 
) -> i32 ---
```

 

This function is a variant of os\_sync\_wait\_on\_address that
allows the calling thread to specify a deadline
until which it is willing to block.

@param addr
The userspace address to be used for atomic compare-and-wait.
This address must be aligned to @size.

@param value
The value expected at @addr.

@param size
The size of @value, in bytes. This can be either 4 or 8 today.
For @value of @size 4 bytes, the upper 4 bytes of @value are ignored.

@param flags
Flags to alter behavior of os\_sync\_wait\_on\_address\_with\_deadline.
See os\_sync\_wait\_on\_address\_flags\_t.

@param clockid
This value anchors @deadline argument to a specific clock id.
See os\_clockid\_t.

@param deadline
This value is used to specify a deadline until which the calling
thread is willing to block.
Passing zero for the @deadline results in an error being returned.
It is recommended to use os\_sync\_wait\_on\_address API to block
indefinitely until woken up by a call to os\_sync\_wake\_by\_address\_any
or os\_sync\_wake\_by\_address\_all APIs.

@return
If the calling thread is woken up by a call to os\_sync\_wake\_by\_addr
variants or the value at @addr is different than expected, this function
returns successfully and the return value indicates the number
of outstanding waiters blocked on this address.
In the event of an error, returns -1 with errno set to indicate the error.

In addition to errors returned by os\_sync\_wait\_on\_address, this function
can return the following additional error codes.

EINVAL : Invalid clock id.
EINVAL : The @deadline passed is 0.
ETIMEDOUT : Deadline expired.

### [os\_sync\_wait\_on\_address\_with\_timeout ¶](#os_sync_wait_on_address_with_timeout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L240)

```
os_sync_wait_on_address_with_timeout :: proc "c" (
	addr:       rawptr, 
	value:      u64, 
	size:       uint, 
	flags:      os_sync_wait_on_address_flags, 
	clockid:    os_clockid, 
	timeout_ns: u64, 
) -> i32 ---
```

 

This function is a variant of os\_sync\_wait\_on\_address that
allows the calling thread to specify a timeout
until which it is willing to block.

@param addr
The userspace address to be used for atomic compare-and-wait.
This address must be aligned to @size.

@param value
The value expected at @addr.

@param size
The size of @value, in bytes. This can be either 4 or 8 today.
For @value of @size 4 bytes, the upper 4 bytes of @value are ignored.

@param flags
Flags to alter behavior of os\_sync\_wait\_on\_address\_with\_timeout.
See os\_sync\_wait\_on\_address\_flags\_t.

@param clockid
This value anchors @timeout\_ns argument to a specific clock id.
See os\_clockid\_t.

@param timeout\_ns
This value is used to specify a timeout in nanoseconds until which
the calling thread is willing to block.
Passing zero for the @timeout\_ns results in an error being returned.
It is recommended to use os\_sync\_wait\_on\_address API to block
indefinitely until woken up by a call to os\_sync\_wake\_by\_address\_any
or os\_sync\_wake\_by\_address\_all APIs.

@return
If the calling thread is woken up by a call to os\_sync\_wake\_by\_address
variants or the value at @addr is different than expected, this function
returns successfully and the return value indicates the number
of outstanding waiters blocked on this address.
In the event of an error, returns -1 with errno set to indicate the error.

In addition to errors returned by os\_sync\_wait\_on\_address, this function
can return the following additional error codes.

EINVAL : Invalid clock id.
EINVAL : The @timeout\_ns passed is 0.
ETIMEDOUT : Timeout expired.

### [os\_sync\_wake\_by\_address\_all ¶](#os_sync_wake_by_address_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L301)

```
os_sync_wake_by_address_all :: proc "c" (addr: rawptr, size: uint, flags: os_sync_wake_by_address_flags) -> i32 ---
```

 

This function is a variant of os\_sync\_wake\_by\_address\_any that wakes up all waiters
blocked in os\_sync\_wait\_on\_address or its variants.

@param addr
The userspace address to be used for waking up the blocked waiters.
It should be same as what is passed to os\_sync\_wait\_on\_address or its variants.

@param size
The size of lock value, in bytes. This can be either 4 or 8 today.
It should be same as what is passed to os\_sync\_wait\_on\_address or its variants.

@param flags
Flags to alter behavior of os\_sync\_wake\_by\_address\_all.
See os\_sync\_wake\_by\_address\_flags\_t.

@return
Returns 0 on success.
In the event of an error, returns -1 with errno set to indicate the error.

This function returns same error codes as returned by os\_sync\_wait\_on\_address.

### [os\_sync\_wake\_by\_address\_any ¶](#os_sync_wake_by_address_any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin#L279)

```
os_sync_wake_by_address_any :: proc "c" (addr: rawptr, size: uint, flags: os_sync_wake_by_address_flags) -> i32 ---
```

 

This function wakes up one waiter out of all those blocked in os\_sync\_wait\_on\_address
or its variants on the @addr. No guarantee is provided about which
specific waiter is woken up.

@param addr
The userspace address to be used for waking up the blocked waiter.
It should be same as what is passed to os\_sync\_wait\_on\_address or its variants.

@param size
The size of lock value, in bytes. This can be either 4 or 8 today.
It should be same as what is passed to os\_sync\_wait\_on\_address or its variants.

@param flags
Flags to alter behavior of os\_sync\_wake\_by\_address\_any.
See os\_sync\_wake\_by\_address\_flags\_t.

@return
Returns 0 on success.
In the event of an error, returns -1 with errno set to indicate the error.

EINVAL : Invalid flags or size.
EINVAL : The @addr passed is NULL.
EINVAL : The operation associated with existing kernel state

```
			at this @addr is inconsistent with what caller
			has requested.
			It is important to make sure consistent values are
			passed across wait and wake APIs for @addr, @size
			and the shared memory specification
			(See os_sync_wake_by_address_flags_t).
```

ENOENT : No waiter(s) found waiting on the @addr.

### [proc\_listallpids ¶](#proc_listallpids) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L14)

```
proc_listallpids :: proc "c" (buffer: [^]i32, buffersize: i32) -> i32 ---
```

### [proc\_pid\_rusage ¶](#proc_pid_rusage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L15)

```
proc_pid_rusage :: proc "c" (pid: posix.pid_t, flavor: Pid_Rusage_Flavor, buffer: rawptr) -> i32 ---
```

### [proc\_pidinfo ¶](#proc_pidinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L12)

```
proc_pidinfo :: proc "c" (pid: posix.pid_t, flavor: PID_Info_Flavor, arg: i64, buffer: rawptr, buffersize: i32) -> i32 ---
```

### [proc\_pidpath ¶](#proc_pidpath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin#L13)

```
proc_pidpath :: proc "c" (pid: posix.pid_t, buffer: [^]u8, buffersize: u32) -> i32 ---
```

### [semaphore\_create ¶](#semaphore_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L325)

```
semaphore_create :: proc "c" (task: mach_port_t, semaphore: ^semaphore_t, policy: Sync_Policy, value: i32) -> Kern_Return ---
```

### [semaphore\_destroy ¶](#semaphore_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L326)

```
semaphore_destroy :: proc "c" (task: mach_port_t, semaphore: semaphore_t) -> Kern_Return ---
```

### [semaphore\_signal ¶](#semaphore_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L328)

```
semaphore_signal :: proc "c" (semaphore: semaphore_t) -> Kern_Return ---
```

### [semaphore\_signal\_all ¶](#semaphore_signal_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L329)

```
semaphore_signal_all :: proc "c" (semaphore: semaphore_t) -> Kern_Return ---
```

### [semaphore\_signal\_thread ¶](#semaphore_signal_thread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L330)

```
semaphore_signal_thread :: proc "c" (semaphore: semaphore_t, thread: mach_port_t) -> Kern_Return ---
```

### [semaphore\_wait ¶](#semaphore_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L332)

```
semaphore_wait :: proc "c" (semaphore: semaphore_t) -> Kern_Return ---
```

### [sys\_chmod ¶](#sys_chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L186)

```
sys_chmod :: proc(path: string, mode: bit_set[Permission_Enum; u16]) -> bool {…}
```

### [sys\_lseek ¶](#sys_lseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L182)

```
sys_lseek :: proc(fd: i32, offset: i64, whence: Offset_From) -> i64 {…}
```

### [sys\_lstat ¶](#sys_lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L193)

```
sys_lstat :: proc(path: string, status: ^__DARWIN_STRUCT_STAT64) -> bool {…}
```

### [sys\_mkdir ¶](#sys_mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L147)

```
sys_mkdir :: proc(path: string, mode: bit_set[Permission_Enum; u16]) -> bool {…}
```

### [sys\_mkdir\_at ¶](#sys_mkdir_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L154)

```
sys_mkdir_at :: proc(fd: i32, path: string, mode: bit_set[Permission_Enum; u16]) -> bool {…}
```

### [sys\_open ¶](#sys_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L126)

```
sys_open :: proc(path: string, oflag: bit_set[Open_Flags_Enum; u16], mode: bit_set[Permission_Enum; u16]) -> (i32, bool) {…}
```

### [sys\_rename ¶](#sys_rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L168)

```
sys_rename :: proc(path: string, new_path: string) -> bool {…}
```

### [sys\_rename\_at ¶](#sys_rename_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L175)

```
sys_rename_at :: proc(fd: i32, path: string, to_fd: i32, new_path: string) -> bool {…}
```

### [sys\_rmdir ¶](#sys_rmdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L161)

```
sys_rmdir :: proc(path: string, mode: bit_set[Permission_Enum; u16]) -> bool {…}
```

### [sys\_shm\_open ¶](#sys_shm_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L199)

```
sys_shm_open :: proc(name: string, oflag: bit_set[Open_Flags_Enum; u16], mode: bit_set[Permission_Enum; u16]) -> (i32, bool) {…}
```

### [sys\_write\_string ¶](#sys_write_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin#L11)

```
sys_write_string :: proc(fd: i32, message: string) -> bool {…}
```

 

this package uses the sys prefix for the proc names to indicate that these aren't native syscalls but directly call such

### [syscall\_access ¶](#syscall_access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L323)

```
syscall_access :: proc "contextless" (path: cstring, mode: i32) -> i32 {…}
```

### [syscall\_adjtime ¶](#syscall_adjtime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L392)

```
syscall_adjtime :: proc "contextless" (delta: ^_STRUCT_TIMEVAL, old_delta: ^_STRUCT_TIMEVAL) -> i32 {…}
```

### [syscall\_chdir ¶](#syscall_chdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L416)

```
syscall_chdir :: proc "contextless" (path: cstring) -> i32 {…}
```

### [syscall\_chmod ¶](#syscall_chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L255)

```
syscall_chmod :: proc "contextless" (path: cstring, mode: u32) -> i32 {…}
```

### [syscall\_close ¶](#syscall_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L247)

```
syscall_close :: proc "contextless" (fd: i32) -> bool {…}
```

### [syscall\_copyfile ¶](#syscall_copyfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L347)

```
syscall_copyfile :: proc "contextless" (from: cstring, to: cstring, state: rawptr, flags: u32) -> i32 {…}
```

### [syscall\_dup ¶](#syscall_dup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L364)

```
syscall_dup :: proc "contextless" (fd: i32) -> i32 {…}
```

### [syscall\_execve ¶](#syscall_execve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L368)

```
syscall_execve :: proc "contextless" (path: cstring, argv: [^]cstring, env: [^]cstring) -> i32 {…}
```

### [syscall\_exit ¶](#syscall_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L356)

```
syscall_exit :: proc "contextless" (code: i32) {…}
```

### [syscall\_faccessat ¶](#syscall_faccessat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L327)

```
syscall_faccessat :: proc "contextless" (fd: i32, path: cstring, mode: i32, flag: i32) -> i32 {…}
```

### [syscall\_fchdir ¶](#syscall_fchdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L420)

```
syscall_fchdir :: proc "contextless" (fd: i32, path: cstring) -> i32 {…}
```

### [syscall\_fchmod ¶](#syscall_fchmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L251)

```
syscall_fchmod :: proc "contextless" (fildes: i32, mode: u32) -> i32 {…}
```

### [syscall\_fcntl ¶](#syscall_fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L352)

```
syscall_fcntl :: proc "contextless" (fd: i32, cmd: i32, other: rawptr) -> i32 {…}
```

 

think about this? last arg should be more than one

### [syscall\_flock ¶](#syscall_flock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L380)

```
syscall_flock :: proc "contextless" (fd: i32, operation: i32) -> i32 {…}
```

### [syscall\_fstat ¶](#syscall_fstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L291)

```
syscall_fstat :: proc "contextless" (fd: i32, status: ^__DARWIN_STRUCT_STAT64) -> i32 {…}
```

### [syscall\_fstatat ¶](#syscall_fstatat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L303)

```
syscall_fstatat :: proc "contextless" (fd: i32, path: cstring, status: ^__DARWIN_STRUCT_STAT64) -> i32 {…}
```

### [syscall\_fsync ¶](#syscall_fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L231)

```
syscall_fsync :: proc "contextless" (fildes: i32) -> bool {…}
```

### [syscall\_ftruncate ¶](#syscall_ftruncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L339)

```
syscall_ftruncate :: proc "contextless" (fd: i32, length: i64) -> i32 {…}
```

### [syscall\_futimes ¶](#syscall_futimes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L388)

```
syscall_futimes :: proc "contextless" (fd: i32, times: ^_STRUCT_TIMEVAL) -> i32 {…}
```

### [syscall\_getdirentries ¶](#syscall_getdirentries) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L331)

```
syscall_getdirentries :: proc "contextless" (fd: i32, buf: ^u8, nbytes: i32, base_pointer: ^u32) -> i32 {…}
```

### [syscall\_getentropy ¶](#syscall_getentropy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L408)

```
syscall_getentropy :: proc "contextless" (buf: [^]u8, buflen: u64) -> i32 {…}
```

### [syscall\_getrusage ¶](#syscall_getrusage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L424)

```
syscall_getrusage :: proc "contextless" (who: i32, rusage: ^RUsage) -> i32 {…}
```

### [syscall\_gettid ¶](#syscall_gettid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L287)

```
syscall_gettid :: proc "contextless" () -> u64 {…}
```

### [syscall\_ioctl ¶](#syscall_ioctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L283)

```
syscall_ioctl :: proc "contextless" (fd: i32, request: u32, arg: rawptr) -> i32 {…}
```

### [syscall\_kill ¶](#syscall_kill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L360)

```
syscall_kill :: proc "contextless" (pid: i32, sig: i32) -> i32 {…}
```

### [syscall\_link ¶](#syscall_link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L307)

```
syscall_link :: proc "contextless" (path: cstring, to_link: cstring) -> i32 {…}
```

### [syscall\_linkat ¶](#syscall_linkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L311)

```
syscall_linkat :: proc "contextless" (fd: i32, path: cstring, fd2: i32, to_link: cstring) -> i32 {…}
```

### [syscall\_lseek ¶](#syscall_lseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L279)

```
syscall_lseek :: proc "contextless" (fd: i32, offset: i64, whence: i32) -> i64 {…}
```

### [syscall\_lstat ¶](#syscall_lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L295)

```
syscall_lstat :: proc "contextless" (path: cstring, status: ^__DARWIN_STRUCT_STAT64) -> i32 {…}
```

### [syscall\_mkdir ¶](#syscall_mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L259)

```
syscall_mkdir :: proc "contextless" (path: cstring, mode: u32) -> i32 {…}
```

### [syscall\_mkdir\_at ¶](#syscall_mkdir_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L263)

```
syscall_mkdir_at :: proc "contextless" (fd: i32, path: cstring, mode: u32) -> i32 {…}
```

### [syscall\_mmap ¶](#syscall_mmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L376)

```
syscall_mmap :: proc "contextless" (
	addr:   ^u8, 
	len:    u64, 
	port:   i32, 
	flags:  i32, 
	fd:     int, 
	offset: i64, 
) -> ^u8 {…}
```

### [syscall\_munmap ¶](#syscall_munmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L372)

```
syscall_munmap :: proc "contextless" (addr: rawptr, len: u64) -> i32 {…}
```

### [syscall\_open ¶](#syscall_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L243)

```
syscall_open :: proc "contextless" (path: cstring, oflag: u32, mode: u32) -> i32 {…}
```

### [syscall\_openat ¶](#syscall_openat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L404)

```
syscall_openat :: proc "contextless" (fd: int, path: cstring, oflag: u32, mode: u32) -> i32 {…}
```

### [syscall\_pipe ¶](#syscall_pipe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L412)

```
syscall_pipe :: proc "contextless" (fds: [^]i32) -> i32 {…}
```

### [syscall\_proc\_info ¶](#syscall_proc_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L400)

```
syscall_proc_info :: proc "contextless" (
	num:         i32, 
	pid:         u32, 
	flavor:      i32, 
	arg:         u64, 
	buffer:      rawptr, 
	buffer_size: i32, 
) -> i32 {…}
```

### [syscall\_read ¶](#syscall_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L239)

```
syscall_read :: proc "contextless" (fildes: i32, buf: ^u8, nbyte: u64) -> i64 {…}
```

### [syscall\_readlink ¶](#syscall_readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L315)

```
syscall_readlink :: proc "contextless" (path: cstring, buf: ^u8, buf_size: u64) -> i64 {…}
```

### [syscall\_readlinkat ¶](#syscall_readlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L319)

```
syscall_readlinkat :: proc "contextless" (fd: i32, path: cstring, buf: ^u8, buf_size: u64) -> i64 {…}
```

### [syscall\_rename ¶](#syscall_rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L271)

```
syscall_rename :: proc "contextless" (path_old: cstring, path_new: cstring) -> i32 {…}
```

### [syscall\_rename\_at ¶](#syscall_rename_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L275)

```
syscall_rename_at :: proc "contextless" (from_fd: i32, from: cstring, to_fd: i32, to: cstring) -> i32 {…}
```

### [syscall\_rmdir ¶](#syscall_rmdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L267)

```
syscall_rmdir :: proc "contextless" (path: cstring, mode: u32) -> i32 {…}
```

### [syscall\_shm\_open ¶](#syscall_shm_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L428)

```
syscall_shm_open :: proc "contextless" (name: cstring, oflag: u32, mode: u32) -> i32 {…}
```

### [syscall\_shm\_unlink ¶](#syscall_shm_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L432)

```
syscall_shm_unlink :: proc "contextless" (name: cstring) -> i32 {…}
```

### [syscall\_stat ¶](#syscall_stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L299)

```
syscall_stat :: proc "contextless" (path: cstring, status: ^__DARWIN_STRUCT_STAT64) -> i32 {…}
```

### [syscall\_sysctl ¶](#syscall_sysctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L343)

```
syscall_sysctl :: proc "contextless" (
	name:    [^]i32, 
	namelen: uint, 
	oldp:    rawptr, 
	oldlenp: ^uint, 
	newp:    rawptr, 
	newlen:  uint, 
) -> i32 {…}
```

### [syscall\_sysctlbyname ¶](#syscall_sysctlbyname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L396)

```
syscall_sysctlbyname :: proc "contextless" (name: string, oldp: rawptr, oldlenp: ^uint, newp: rawptr, newlen: uint) -> i32 {…}
```

### [syscall\_truncate ¶](#syscall_truncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L335)

```
syscall_truncate :: proc "contextless" (path: cstring, length: i64) -> i32 {…}
```

### [syscall\_utimes ¶](#syscall_utimes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L384)

```
syscall_utimes :: proc "contextless" (path: cstring, times: ^_STRUCT_TIMEVAL) -> i32 {…}
```

### [syscall\_write ¶](#syscall_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin#L235)

```
syscall_write :: proc "contextless" (fildes: i32, buf: ^u8, nbyte: u64) -> bool {…}
```

### [task\_get\_special\_port ¶](#task_get_special_port) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L318)

```
task_get_special_port :: proc "c" (task: mach_port_t, port: i32, special_port: ^mach_port_t) -> Kern_Return ---
```

### [task\_info ¶](#task_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L322)

```
task_info :: proc "c" (task: mach_port_t, flavor: i32, info: task_info_t, count: ^u32) -> Kern_Return ---
```

### [task\_resume ¶](#task_resume) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L320)

```
task_resume :: proc "c" (task: mach_port_t) -> Kern_Return ---
```

### [task\_suspend ¶](#task_suspend) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L319)

```
task_suspend :: proc "c" (task: mach_port_t) -> Kern_Return ---
```

### [task\_terminate ¶](#task_terminate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L323)

```
task_terminate :: proc "c" (task: mach_port_t) -> Kern_Return ---
```

### [task\_threads ¶](#task_threads) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L321)

```
task_threads :: proc "c" (task: mach_port_t, thread_list: ^[^]thread_act_t, list_count: ^u32) -> Kern_Return ---
```

### [thread\_get\_state ¶](#thread_get_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L334)

```
thread_get_state :: proc "c" (thread: thread_act_t, flavor: i32, thread_state: thread_state_t, old_state_count: ^u32) -> Kern_Return ---
```

### [thread\_info ¶](#thread_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L335)

```
thread_info :: proc "c" (thread: thread_act_t, flavor: u32, thread_info: ^thread_identifier_info, info_count: ^u32) -> Kern_Return ---
```

### [unix\_offset\_syscall ¶](#unix_offset_syscall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_numbers.odin#L7)

```
unix_offset_syscall :: proc "contextless" (number: System_Call_Number) -> uintptr {…}
```

### [vm\_map ¶](#vm_map) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/mach_darwin.odin#L340)

```
vm_map :: proc "c" (
	target_task:                    mach_port_t, 
	address:                        ^vm_offset_t, 
	size:                           vm_size_t, 
	mask:                           vm_offset_t, 
	flags:                          VM_Flags, 
	object:                         mach_port_t, 
	offset:                         vm_offset_t, 
	copy:                           b32, 
	cur_protection, max_protection: VM_Prot_Flags, 
	inheritance:                    VM_Inherit, 
) -> Kern_Return ---
```

## Procedure Groups

This section is empty.

## Source Files

* [copyfile.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/copyfile.odin)
* [darwin.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/darwin.odin)
* [proc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/proc.odin)
* [sync.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/sync.odin)
* [xnu\_system\_call\_helpers.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_helpers.odin)
* [xnu\_system\_call\_numbers.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_numbers.odin)
* [xnu\_system\_call\_wrappers.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/xnu_system_call_wrappers.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.369076600 +0000 UTC`

* [Types](#pkg-Types)
  + [Bool](#Bool)
  + [Bootstrap\_Error](#Bootstrap_Error)
  + [Kern\_Return](#Kern_Return)
  + [Msg\_Header\_Bits](#Msg_Header_Bits)
  + [Msg\_Option](#Msg_Option)
  + [Msg\_Option\_Flags](#Msg_Option_Flags)
  + [Msg\_Type](#Msg_Type)
  + [Offset\_From](#Offset_From)
  + [Open\_Flags](#Open_Flags)
  + [Open\_Flags\_Enum](#Open_Flags_Enum)
  + [PBI\_Flag\_Bits](#PBI_Flag_Bits)
  + [PBI\_Flags](#PBI_Flags)
  + [PID\_Info\_Flavor](#PID_Info_Flavor)
  + [Permission](#Permission)
  + [Permission\_Enum](#Permission_Enum)
  + [Pid\_Rusage\_Flavor](#Pid_Rusage_Flavor)
  + [Port\_Right](#Port_Right)
  + [RUsage](#RUsage)
  + [Sync\_Policy](#Sync_Policy)
  + [System\_Call\_Number](#System_Call_Number)
  + [Task\_Port\_Type](#Task_Port_Type)
  + [VM\_Flag](#VM_Flag)
  + [VM\_Flags](#VM_Flags)
  + [VM\_Inherit](#VM_Inherit)
  + [VM\_Prot](#VM_Prot)
  + [VM\_Prot\_Flags](#VM_Prot_Flags)
  + [arm\_thread\_state64\_t](#arm_thread_state64_t)
  + [blkcnt\_t](#blkcnt_t)
  + [blksize\_t](#blksize_t)
  + [boolean\_t](#boolean_t)
  + [copyfile\_flags](#copyfile_flags)
  + [copyfile\_state\_flag](#copyfile_state_flag)
  + [copyfile\_state\_t](#copyfile_state_t)
  + [dev\_t](#dev_t)
  + [dyld\_all\_image\_infos](#dyld_all_image_infos)
  + [dyld\_image\_info](#dyld_image_info)
  + [dyld\_uuid\_info](#dyld_uuid_info)
  + [fsid\_t](#fsid_t)
  + [gid\_t](#gid_t)
  + [ipc\_space\_t](#ipc_space_t)
  + [kern\_return\_t](#kern_return_t)
  + [mach\_msg\_body\_t](#mach_msg_body_t)
  + [mach\_msg\_header\_t](#mach_msg_header_t)
  + [mach\_msg\_option\_t](#mach_msg_option_t)
  + [mach\_msg\_port\_descriptor\_t](#mach_msg_port_descriptor_t)
  + [mach\_msg\_trailer\_t](#mach_msg_trailer_t)
  + [mach\_msg\_type\_t](#mach_msg_type_t)
  + [mach\_port\_name\_t](#mach_port_name_t)
  + [mach\_port\_right\_t](#mach_port_right_t)
  + [mach\_port\_t](#mach_port_t)
  + [mem\_entry\_name\_port\_t](#mem_entry_name_port_t)
  + [mode\_t](#mode_t)
  + [name\_t](#name_t)
  + [nlink\_t](#nlink_t)
  + [off\_t](#off_t)
  + [os\_clockid](#os_clockid)
  + [os\_sync\_wait\_on\_address\_flag](#os_sync_wait_on_address_flag)
  + [os\_sync\_wait\_on\_address\_flags](#os_sync_wait_on_address_flags)
  + [os\_sync\_wake\_by\_address\_flag](#os_sync_wake_by_address_flag)
  + [os\_sync\_wake\_by\_address\_flags](#os_sync_wake_by_address_flags)
  + [pid\_t](#pid_t)
  + [proc\_bsdinfo](#proc_bsdinfo)
  + [proc\_bsdshortinfo](#proc_bsdshortinfo)
  + [proc\_taskallinfo](#proc_taskallinfo)
  + [proc\_taskinfo](#proc_taskinfo)
  + [proc\_vnodepathinfo](#proc_vnodepathinfo)
  + [rusage\_info\_v0](#rusage_info_v0)
  + [semaphore\_t](#semaphore_t)
  + [stat](#stat)
  + [sync\_policy\_t](#sync_policy_t)
  + [task\_dyld\_info](#task_dyld_info)
  + [task\_info\_t](#task_info_t)
  + [task\_t](#task_t)
  + [thread\_act\_t](#thread_act_t)
  + [thread\_identifier\_info](#thread_identifier_info)
  + [thread\_list\_t](#thread_list_t)
  + [thread\_state\_t](#thread_state_t)
  + [thread\_t](#thread_t)
  + [time\_t](#time_t)
  + [timeval](#timeval)
  + [uid\_t](#uid_t)
  + [vinfo\_stat](#vinfo_stat)
  + [vm\_address\_t](#vm_address_t)
  + [vm\_inherit\_t](#vm_inherit_t)
  + [vm\_map\_t](#vm_map_t)
  + [vm\_offset\_t](#vm_offset_t)
  + [vm\_prot\_t](#vm_prot_t)
  + [vm\_region\_recurse\_info\_t](#vm_region_recurse_info_t)
  + [vm\_region\_submap\_info\_64](#vm_region_submap_info_64)
  + [vm\_size\_t](#vm_size_t)
  + [vnode\_info](#vnode_info)
  + [vnode\_info\_path](#vnode_info_path)
  + [x86\_thread\_state32\_t](#x86_thread_state32_t)
  + [x86\_thread\_state64\_t](#x86_thread_state64_t)
* [Constants](#pkg-Constants)
  + [ARM\_THREAD\_STATE64](#ARM_THREAD_STATE64)
  + [ARM\_THREAD\_STATE64\_COUNT](#ARM_THREAD_STATE64_COUNT)
  + [COPYFILE\_ALL](#COPYFILE_ALL)
  + [COPYFILE\_METADATA](#COPYFILE_METADATA)
  + [COPYFILE\_NOFOLLOW](#COPYFILE_NOFOLLOW)
  + [COPYFILE\_SECURITY](#COPYFILE_SECURITY)
  + [DARWIN\_MAXCOMLEN](#DARWIN_MAXCOMLEN)
  + [DARWIN\_PROC\_ALL\_PIDS](#DARWIN_PROC_ALL_PIDS)
  + [DARWIN\_PROC\_INFO\_CALL\_CANUSEFGHW](#DARWIN_PROC_INFO_CALL_CANUSEFGHW)
  + [DARWIN\_PROC\_INFO\_CALL\_DIRTYCONTROL](#DARWIN_PROC_INFO_CALL_DIRTYCONTROL)
  + [DARWIN\_PROC\_INFO\_CALL\_KERNMSGBUF](#DARWIN_PROC_INFO_CALL_KERNMSGBUF)
  + [DARWIN\_PROC\_INFO\_CALL\_LISTCOALITIONS](#DARWIN_PROC_INFO_CALL_LISTCOALITIONS)
  + [DARWIN\_PROC\_INFO\_CALL\_LISTPIDS](#DARWIN_PROC_INFO_CALL_LISTPIDS)
  + [DARWIN\_PROC\_INFO\_CALL\_PIDDYNKQUEUEINFO](#DARWIN_PROC_INFO_CALL_PIDDYNKQUEUEINFO)
  + [DARWIN\_PROC\_INFO\_CALL\_PIDFDINFO](#DARWIN_PROC_INFO_CALL_PIDFDINFO)
  + [DARWIN\_PROC\_INFO\_CALL\_PIDFILEPORTINFO](#DARWIN_PROC_INFO_CALL_PIDFILEPORTINFO)
  + [DARWIN\_PROC\_INFO\_CALL\_PIDINFO](#DARWIN_PROC_INFO_CALL_PIDINFO)
  + [DARWIN\_PROC\_INFO\_CALL\_PIDORIGINATORINFO](#DARWIN_PROC_INFO_CALL_PIDORIGINATORINFO)
  + [DARWIN\_PROC\_INFO\_CALL\_PIDRUSAGE](#DARWIN_PROC_INFO_CALL_PIDRUSAGE)
  + [DARWIN\_PROC\_INFO\_CALL\_SETCONTROL](#DARWIN_PROC_INFO_CALL_SETCONTROL)
  + [DARWIN\_PROC\_INFO\_CALL\_TERMINATE](#DARWIN_PROC_INFO_CALL_TERMINATE)
  + [DARWIN\_PROC\_INFO\_CALL\_UDATA\_INFO](#DARWIN_PROC_INFO_CALL_UDATA_INFO)
  + [DARWIN\_PROC\_KDBG\_ONLY](#DARWIN_PROC_KDBG_ONLY)
  + [DARWIN\_PROC\_PGRP\_ONLY](#DARWIN_PROC_PGRP_ONLY)
  + [DARWIN\_PROC\_PIDPATHINFO](#DARWIN_PROC_PIDPATHINFO)
  + [DARWIN\_PROC\_PIDPATHINFO\_SIZE](#DARWIN_PROC_PIDPATHINFO_SIZE)
  + [DARWIN\_PROC\_PPID\_ONLY](#DARWIN_PROC_PPID_ONLY)
  + [DARWIN\_PROC\_RUID\_ONLY](#DARWIN_PROC_RUID_ONLY)
  + [DARWIN\_PROC\_TTY\_ONLY](#DARWIN_PROC_TTY_ONLY)
  + [DARWIN\_PROC\_UID\_ONLY](#DARWIN_PROC_UID_ONLY)
  + [F\_OK](#F_OK)
  + [LOCK\_EX](#LOCK_EX)
  + [LOCK\_NB](#LOCK_NB)
  + [LOCK\_SH](#LOCK_SH)
  + [LOCK\_UN](#LOCK_UN)
  + [MACH\_MSG\_PORT\_DESCRIPTOR](#MACH_MSG_PORT_DESCRIPTOR)
  + [MACH\_PORT\_DEAD](#MACH_PORT_DEAD)
  + [MACH\_PORT\_NULL](#MACH_PORT_NULL)
  + [MAP\_32BIT](#MAP_32BIT)
  + [MAP\_ANONYMOUS](#MAP_ANONYMOUS)
  + [MAP\_FILE](#MAP_FILE)
  + [MAP\_FIXED](#MAP_FIXED)
  + [MAP\_HASSEMAPHORE](#MAP_HASSEMAPHORE)
  + [MAP\_JIT](#MAP_JIT)
  + [MAP\_NOCACHE](#MAP_NOCACHE)
  + [MAP\_PRIVATE](#MAP_PRIVATE)
  + [MAP\_SHARED](#MAP_SHARED)
  + [MASK\_ACCMODE](#MASK_ACCMODE)
  + [MAXCOMLEN](#MAXCOMLEN)
  + [MAXPATHLEN](#MAXPATHLEN)
  + [OPEN\_FLAG\_APPEND](#OPEN_FLAG_APPEND)
  + [OPEN\_FLAG\_CLOEXEC](#OPEN_FLAG_CLOEXEC)
  + [OPEN\_FLAG\_CREAT](#OPEN_FLAG_CREAT)
  + [OPEN\_FLAG\_DIRECTORY](#OPEN_FLAG_DIRECTORY)
  + [OPEN\_FLAG\_EVTONLY](#OPEN_FLAG_EVTONLY)
  + [OPEN\_FLAG\_EXCL](#OPEN_FLAG_EXCL)
  + [OPEN\_FLAG\_EXLOCK](#OPEN_FLAG_EXLOCK)
  + [OPEN\_FLAG\_NOFOLLOW](#OPEN_FLAG_NOFOLLOW)
  + [OPEN\_FLAG\_NOFOLLOW\_ANY](#OPEN_FLAG_NOFOLLOW_ANY)
  + [OPEN\_FLAG\_NONBLOCK](#OPEN_FLAG_NONBLOCK)
  + [OPEN\_FLAG\_RDONLY](#OPEN_FLAG_RDONLY)
  + [OPEN\_FLAG\_RDWR](#OPEN_FLAG_RDWR)
  + [OPEN\_FLAG\_SHLOCK](#OPEN_FLAG_SHLOCK)
  + [OPEN\_FLAG\_SYMLINK](#OPEN_FLAG_SYMLINK)
  + [OPEN\_FLAG\_TRUNC](#OPEN_FLAG_TRUNC)
  + [OPEN\_FLAG\_WRONLY](#OPEN_FLAG_WRONLY)
  + [PATH\_MAX](#PATH_MAX)
  + [PERMISSION\_ALL\_ALL](#PERMISSION_ALL_ALL)
  + [PERMISSION\_GROUP\_ALL](#PERMISSION_GROUP_ALL)
  + [PERMISSION\_MASK\_IRGRP](#PERMISSION_MASK_IRGRP)
  + [PERMISSION\_MASK\_IROTH](#PERMISSION_MASK_IROTH)
  + [PERMISSION\_MASK\_IRUSR](#PERMISSION_MASK_IRUSR)
  + [PERMISSION\_MASK\_IRWXG](#PERMISSION_MASK_IRWXG)
  + [PERMISSION\_MASK\_IRWXO](#PERMISSION_MASK_IRWXO)
  + [PERMISSION\_MASK\_IRWXU](#PERMISSION_MASK_IRWXU)
  + [PERMISSION\_MASK\_ISGID](#PERMISSION_MASK_ISGID)
  + [PERMISSION\_MASK\_ISUID](#PERMISSION_MASK_ISUID)
  + [PERMISSION\_MASK\_ISVTX](#PERMISSION_MASK_ISVTX)
  + [PERMISSION\_MASK\_IWGRP](#PERMISSION_MASK_IWGRP)
  + [PERMISSION\_MASK\_IWOTH](#PERMISSION_MASK_IWOTH)
  + [PERMISSION\_MASK\_IWUSR](#PERMISSION_MASK_IWUSR)
  + [PERMISSION\_MASK\_IXGRP](#PERMISSION_MASK_IXGRP)
  + [PERMISSION\_MASK\_IXOTH](#PERMISSION_MASK_IXOTH)
  + [PERMISSION\_MASK\_IXUSR](#PERMISSION_MASK_IXUSR)
  + [PERMISSION\_NONE\_NONE](#PERMISSION_NONE_NONE)
  + [PERMISSION\_OTHER\_ALL](#PERMISSION_OTHER_ALL)
  + [PERMISSION\_OWNER\_ALL](#PERMISSION_OWNER_ALL)
  + [PIDPATHINFO\_MAXSIZE](#PIDPATHINFO_MAXSIZE)
  + [PROT\_EXEC](#PROT_EXEC)
  + [PROT\_NONE](#PROT_NONE)
  + [PROT\_READ](#PROT_READ)
  + [PROT\_WRITE](#PROT_WRITE)
  + [R\_OK](#R_OK)
  + [TASK\_DYLD\_INFO](#TASK_DYLD_INFO)
  + [TASK\_DYLD\_INFO\_COUNT](#TASK_DYLD_INFO_COUNT)
  + [THREAD\_IDENTIFIER\_INFO](#THREAD_IDENTIFIER_INFO)
  + [THREAD\_IDENTIFIER\_INFO\_COUNT](#THREAD_IDENTIFIER_INFO_COUNT)
  + [TIOCGWINSZ](#TIOCGWINSZ)
  + [ULOCK\_WAIT\_2\_AVAILABLE](#ULOCK_WAIT_2_AVAILABLE)
  + [VM\_FLAGS\_ALIAS\_MASK](#VM_FLAGS_ALIAS_MASK)
  + [VM\_FLAGS\_FIXED](#VM_FLAGS_FIXED)
  + [VM\_FLAGS\_SUPERPAGE\_MASK](#VM_FLAGS_SUPERPAGE_MASK)
  + [VM\_FLAGS\_SUPERPAGE\_NONE](#VM_FLAGS_SUPERPAGE_NONE)
  + [VM\_FLAGS\_USER\_ALLOCATE](#VM_FLAGS_USER_ALLOCATE)
  + [VM\_FLAGS\_USER\_MAP](#VM_FLAGS_USER_MAP)
  + [VM\_FLAGS\_USER\_REMAP](#VM_FLAGS_USER_REMAP)
  + [VM\_PROT\_ALL](#VM_PROT_ALL)
  + [VM\_PROT\_DEFAULT](#VM_PROT_DEFAULT)
  + [VM\_PROT\_NONE](#VM_PROT_NONE)
  + [VM\_REGION\_SUBMAP\_INFO\_COUNT\_64](#VM_REGION_SUBMAP_INFO_COUNT_64)
  + [WAIT\_ON\_ADDRESS\_AVAILABLE](#WAIT_ON_ADDRESS_AVAILABLE)
  + [W\_OK](#W_OK)
  + [X86\_THREAD\_STATE32](#X86_THREAD_STATE32)
  + [X86\_THREAD\_STATE32\_COUNT](#X86_THREAD_STATE32_COUNT)
  + [X86\_THREAD\_STATE64](#X86_THREAD_STATE64)
  + [X86\_THREAD\_STATE64\_COUNT](#X86_THREAD_STATE64_COUNT)
  + [X\_OK](#X_OK)
* [Variables](#pkg-Variables)
  + [vm\_page\_mask](#vm_page_mask)
  + [vm\_page\_shift](#vm_page_shift)
  + [vm\_page\_size](#vm_page_size)
* [Procedures](#pkg-Procedures)
  + [VM\_GET\_FLAGS\_ALIAS](#VM_GET_FLAGS_ALIAS)
  + [bootstrap\_look\_up](#bootstrap_look_up)
  + [bootstrap\_register2](#bootstrap_register2)
  + [copyfile](#copyfile)
  + [copyfile\_state\_alloc](#copyfile_state_alloc)
  + [copyfile\_state\_free](#copyfile_state_free)
  + [copyfile\_state\_get](#copyfile_state_get)
  + [copyfile\_state\_set](#copyfile_state_set)
  + [errno](#errno)
  + [fcopyfile](#fcopyfile)
  + [mach\_make\_memory\_entry](#mach_make_memory_entry)
  + [mach\_msg](#mach_msg)
  + [mach\_msg\_send](#mach_msg_send)
  + [mach\_port\_allocate](#mach_port_allocate)
  + [mach\_port\_deallocate](#mach_port_deallocate)
  + [mach\_port\_extract\_right](#mach_port_extract_right)
  + [mach\_task\_self](#mach_task_self)
  + [mach\_vm\_allocate](#mach_vm_allocate)
  + [mach\_vm\_deallocate](#mach_vm_deallocate)
  + [mach\_vm\_region\_recurse](#mach_vm_region_recurse)
  + [mach\_vm\_remap](#mach_vm_remap)
  + [mach\_vm\_trunc\_page](#mach_vm_trunc_page)
  + [os\_sync\_wait\_on\_address](#os_sync_wait_on_address)
  + [os\_sync\_wait\_on\_address\_with\_deadline](#os_sync_wait_on_address_with_deadline)
  + [os\_sync\_wait\_on\_address\_with\_timeout](#os_sync_wait_on_address_with_timeout)
  + [os\_sync\_wake\_by\_address\_all](#os_sync_wake_by_address_all)
  + [os\_sync\_wake\_by\_address\_any](#os_sync_wake_by_address_any)
  + [proc\_listallpids](#proc_listallpids)
  + [proc\_pid\_rusage](#proc_pid_rusage)
  + [proc\_pidinfo](#proc_pidinfo)
  + [proc\_pidpath](#proc_pidpath)
  + [semaphore\_create](#semaphore_create)
  + [semaphore\_destroy](#semaphore_destroy)
  + [semaphore\_signal](#semaphore_signal)
  + [semaphore\_signal\_all](#semaphore_signal_all)
  + [semaphore\_signal\_thread](#semaphore_signal_thread)
  + [semaphore\_wait](#semaphore_wait)
  + [sys\_chmod](#sys_chmod)
  + [sys\_lseek](#sys_lseek)
  + [sys\_lstat](#sys_lstat)
  + [sys\_mkdir](#sys_mkdir)
  + [sys\_mkdir\_at](#sys_mkdir_at)
  + [sys\_open](#sys_open)
  + [sys\_rename](#sys_rename)
  + [sys\_rename\_at](#sys_rename_at)
  + [sys\_rmdir](#sys_rmdir)
  + [sys\_shm\_open](#sys_shm_open)
  + [sys\_write\_string](#sys_write_string)
  + [syscall\_access](#syscall_access)
  + [syscall\_adjtime](#syscall_adjtime)
  + [syscall\_chdir](#syscall_chdir)
  + [syscall\_chmod](#syscall_chmod)
  + [syscall\_close](#syscall_close)
  + [syscall\_copyfile](#syscall_copyfile)
  + [syscall\_dup](#syscall_dup)
  + [syscall\_execve](#syscall_execve)
  + [syscall\_exit](#syscall_exit)
  + [syscall\_faccessat](#syscall_faccessat)
  + [syscall\_fchdir](#syscall_fchdir)
  + [syscall\_fchmod](#syscall_fchmod)
  + [syscall\_fcntl](#syscall_fcntl)
  + [syscall\_flock](#syscall_flock)
  + [syscall\_fstat](#syscall_fstat)
  + [syscall\_fstatat](#syscall_fstatat)
  + [syscall\_fsync](#syscall_fsync)
  + [syscall\_ftruncate](#syscall_ftruncate)
  + [syscall\_futimes](#syscall_futimes)
  + [syscall\_getdirentries](#syscall_getdirentries)
  + [syscall\_getentropy](#syscall_getentropy)
  + [syscall\_getrusage](#syscall_getrusage)
  + [syscall\_gettid](#syscall_gettid)
  + [syscall\_ioctl](#syscall_ioctl)
  + [syscall\_kill](#syscall_kill)
  + [syscall\_link](#syscall_link)
  + [syscall\_linkat](#syscall_linkat)
  + [syscall\_lseek](#syscall_lseek)
  + [syscall\_lstat](#syscall_lstat)
  + [syscall\_mkdir](#syscall_mkdir)
  + [syscall\_mkdir\_at](#syscall_mkdir_at)
  + [syscall\_mmap](#syscall_mmap)
  + [syscall\_munmap](#syscall_munmap)
  + [syscall\_open](#syscall_open)
  + [syscall\_openat](#syscall_openat)
  + [syscall\_pipe](#syscall_pipe)
  + [syscall\_proc\_info](#syscall_proc_info)
  + [syscall\_read](#syscall_read)
  + [syscall\_readlink](#syscall_readlink)
  + [syscall\_readlinkat](#syscall_readlinkat)
  + [syscall\_rename](#syscall_rename)
  + [syscall\_rename\_at](#syscall_rename_at)
  + [syscall\_rmdir](#syscall_rmdir)
  + [syscall\_shm\_open](#syscall_shm_open)
  + [syscall\_shm\_unlink](#syscall_shm_unlink)
  + [syscall\_stat](#syscall_stat)
  + [syscall\_sysctl](#syscall_sysctl)
  + [syscall\_sysctlbyname](#syscall_sysctlbyname)
  + [syscall\_truncate](#syscall_truncate)
  + [syscall\_utimes](#syscall_utimes)
  + [syscall\_write](#syscall_write)
  + [task\_get\_special\_port](#task_get_special_port)
  + [task\_info](#task_info)
  + [task\_resume](#task_resume)
  + [task\_suspend](#task_suspend)
  + [task\_terminate](#task_terminate)
  + [task\_threads](#task_threads)
  + [thread\_get\_state](#thread_get_state)
  + [thread\_info](#thread_info)
  + [unix\_offset\_syscall](#unix_offset_syscall)
  + [vm\_map](#vm_map)
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