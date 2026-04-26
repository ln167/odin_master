package sys/unix - pkg.odin-lang.org 






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



Current Package: *[unix](/core/sys/unix)*

  

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
3. [unix](/core/sys/unix)

# package core:sys/unix [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix)

#### **Warning:**This was generated for `-target:linux_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (14)

* [Perf\_Capabilities](#Perf_Capabilities)
* [Perf\_Event\_Attr](#Perf_Event_Attr)
* [Perf\_Event\_Flag](#Perf_Event_Flag)
* [Perf\_Event\_Flags](#Perf_Event_Flags)
* [Perf\_Event\_mmap\_Page](#Perf_Event_mmap_Page)
* [Perf\_Field1](#Perf_Field1)
* [Perf\_Field2](#Perf_Field2)
* [Perf\_Flag](#Perf_Flag)
* [Perf\_Flags](#Perf_Flags)
* [Perf\_Hardware\_Id](#Perf_Hardware_Id)
* [Perf\_Sample](#Perf_Sample)
* [Perf\_Type\_Id](#Perf_Type_Id)
* [Perf\_Wakeup](#Perf_Wakeup)
* [timespec](#timespec)

Constants (410)

* [AT\_FDCWD](#AT_FDCWD)
* [AT\_REMOVEDIR](#AT_REMOVEDIR)
* [AT\_SYMLINK\_FOLLOW](#AT_SYMLINK_FOLLOW)
* [AT\_SYMLINK\_NOFOLLOW](#AT_SYMLINK_NOFOLLOW)
* [MADV\_DODUMP](#MADV_DODUMP)
* [MADV\_DOFORK](#MADV_DOFORK)
* [MADV\_DONTDUMP](#MADV_DONTDUMP)
* [MADV\_DONTFORK](#MADV_DONTFORK)
* [MADV\_DONTNEED](#MADV_DONTNEED)
* [MADV\_FREE](#MADV_FREE)
* [MADV\_HUGEPAGE](#MADV_HUGEPAGE)
* [MADV\_HWPOISON](#MADV_HWPOISON)
* [MADV\_KEEPONFORK](#MADV_KEEPONFORK)
* [MADV\_MERGEABLE](#MADV_MERGEABLE)
* [MADV\_NOHUGEPAGE](#MADV_NOHUGEPAGE)
* [MADV\_NORMAL](#MADV_NORMAL)
* [MADV\_RANDOM](#MADV_RANDOM)
* [MADV\_REMOVE](#MADV_REMOVE)
* [MADV\_SEQUENTIAL](#MADV_SEQUENTIAL)
* [MADV\_UNMERGEABLE](#MADV_UNMERGEABLE)
* [MADV\_WILLNEED](#MADV_WILLNEED)
* [MADV\_WIPEONFORK](#MADV_WIPEONFORK)
* [MAP\_ANONYMOUS](#MAP_ANONYMOUS)
* [MAP\_FIXED](#MAP_FIXED)
* [MAP\_PRIVATE](#MAP_PRIVATE)
* [MAP\_SHARED](#MAP_SHARED)
* [MAP\_SHARED\_VALIDATE](#MAP_SHARED_VALIDATE)
* [MREMAP\_DONTUNMAP](#MREMAP_DONTUNMAP)
* [MREMAP\_FIXED](#MREMAP_FIXED)
* [MREMAP\_MAYMOVE](#MREMAP_MAYMOVE)
* [O\_CLOEXEC](#O_CLOEXEC)
* [POLLERR](#POLLERR)
* [POLLFREE](#POLLFREE)
* [POLLHUP](#POLLHUP)
* [POLLIN](#POLLIN)
* [POLLMSG](#POLLMSG)
* [POLLNVAL](#POLLNVAL)
* [POLLOUT](#POLLOUT)
* [POLLPRI](#POLLPRI)
* [POLLRDBAND](#POLLRDBAND)
* [POLLRDHUP](#POLLRDHUP)
* [POLLRDNORM](#POLLRDNORM)
* [POLLREMOVE](#POLLREMOVE)
* [POLLWRBAND](#POLLWRBAND)
* [POLLWRNORM](#POLLWRNORM)
* [POLL\_BUSY\_LOOP](#POLL_BUSY_LOOP)
* [PROT\_EXEC](#PROT_EXEC)
* [PROT\_GROWSDOWN](#PROT_GROWSDOWN)
* [PROT\_GROWSUP](#PROT_GROWSUP)
* [PROT\_NONE](#PROT_NONE)
* [PROT\_READ](#PROT_READ)
* [PROT\_WRITE](#PROT_WRITE)
* [SYS\_\_sysctl](#SYS__sysctl)
* [SYS\_accept](#SYS_accept)
* [SYS\_accept4](#SYS_accept4)
* [SYS\_access](#SYS_access)
* [SYS\_acct](#SYS_acct)
* [SYS\_add\_key](#SYS_add_key)
* [SYS\_adjtimex](#SYS_adjtimex)
* [SYS\_afs\_syscall](#SYS_afs_syscall)
* [SYS\_alarm](#SYS_alarm)
* [SYS\_arch\_prctl](#SYS_arch_prctl)
* [SYS\_bind](#SYS_bind)
* [SYS\_bpf](#SYS_bpf)
* [SYS\_brk](#SYS_brk)
* [SYS\_capget](#SYS_capget)
* [SYS\_capset](#SYS_capset)
* [SYS\_chdir](#SYS_chdir)
* [SYS\_chmod](#SYS_chmod)
* [SYS\_chown](#SYS_chown)
* [SYS\_chroot](#SYS_chroot)
* [SYS\_clock\_adjtime](#SYS_clock_adjtime)
* [SYS\_clock\_getres](#SYS_clock_getres)
* [SYS\_clock\_gettime](#SYS_clock_gettime)
* [SYS\_clock\_nanosleep](#SYS_clock_nanosleep)
* [SYS\_clock\_settime](#SYS_clock_settime)
* [SYS\_clone](#SYS_clone)
* [SYS\_clone3](#SYS_clone3)
* [SYS\_close](#SYS_close)
* [SYS\_close\_range](#SYS_close_range)
* [SYS\_connect](#SYS_connect)
* [SYS\_copy\_file\_range](#SYS_copy_file_range)
* [SYS\_creat](#SYS_creat)
* [SYS\_create\_module](#SYS_create_module)
* [SYS\_delete\_module](#SYS_delete_module)
* [SYS\_dup](#SYS_dup)
* [SYS\_dup2](#SYS_dup2)
* [SYS\_dup3](#SYS_dup3)
* [SYS\_epoll\_create](#SYS_epoll_create)
* [SYS\_epoll\_create1](#SYS_epoll_create1)
* [SYS\_epoll\_ctl](#SYS_epoll_ctl)
* [SYS\_epoll\_ctl\_old](#SYS_epoll_ctl_old)
* [SYS\_epoll\_pwait](#SYS_epoll_pwait)
* [SYS\_epoll\_pwait2](#SYS_epoll_pwait2)
* [SYS\_epoll\_wait](#SYS_epoll_wait)
* [SYS\_epoll\_wait\_old](#SYS_epoll_wait_old)
* [SYS\_eventfd](#SYS_eventfd)
* [SYS\_eventfd2](#SYS_eventfd2)
* [SYS\_execve](#SYS_execve)
* [SYS\_execveat](#SYS_execveat)
* [SYS\_exit](#SYS_exit)
* [SYS\_exit\_group](#SYS_exit_group)
* [SYS\_faccessat](#SYS_faccessat)
* [SYS\_faccessat2](#SYS_faccessat2)
* [SYS\_fadvise64](#SYS_fadvise64)
* [SYS\_fallocate](#SYS_fallocate)
* [SYS\_fanotify\_init](#SYS_fanotify_init)
* [SYS\_fanotify\_mark](#SYS_fanotify_mark)
* [SYS\_fchdir](#SYS_fchdir)
* [SYS\_fchmod](#SYS_fchmod)
* [SYS\_fchmodat](#SYS_fchmodat)
* [SYS\_fchown](#SYS_fchown)
* [SYS\_fchownat](#SYS_fchownat)
* [SYS\_fcntl](#SYS_fcntl)
* [SYS\_fdatasync](#SYS_fdatasync)
* [SYS\_fgetxattr](#SYS_fgetxattr)
* [SYS\_finit\_module](#SYS_finit_module)
* [SYS\_flistxattr](#SYS_flistxattr)
* [SYS\_flock](#SYS_flock)
* [SYS\_fork](#SYS_fork)
* [SYS\_fremovexattr](#SYS_fremovexattr)
* [SYS\_fsconfig](#SYS_fsconfig)
* [SYS\_fsetxattr](#SYS_fsetxattr)
* [SYS\_fsmount](#SYS_fsmount)
* [SYS\_fsopen](#SYS_fsopen)
* [SYS\_fspick](#SYS_fspick)
* [SYS\_fstat](#SYS_fstat)
* [SYS\_fstatat](#SYS_fstatat)
* [SYS\_fstatfs](#SYS_fstatfs)
* [SYS\_fsync](#SYS_fsync)
* [SYS\_ftruncate](#SYS_ftruncate)
* [SYS\_futex](#SYS_futex)
* [SYS\_futimesat](#SYS_futimesat)
* [SYS\_get\_kernel\_syms](#SYS_get_kernel_syms)
* [SYS\_get\_mempolicy](#SYS_get_mempolicy)
* [SYS\_get\_robust\_list](#SYS_get_robust_list)
* [SYS\_get\_thread\_area](#SYS_get_thread_area)
* [SYS\_getcpu](#SYS_getcpu)
* [SYS\_getcwd](#SYS_getcwd)
* [SYS\_getdents](#SYS_getdents)
* [SYS\_getdents64](#SYS_getdents64)
* [SYS\_getegid](#SYS_getegid)
* [SYS\_geteuid](#SYS_geteuid)
* [SYS\_getgid](#SYS_getgid)
* [SYS\_getgroups](#SYS_getgroups)
* [SYS\_getitimer](#SYS_getitimer)
* [SYS\_getpeername](#SYS_getpeername)
* [SYS\_getpgid](#SYS_getpgid)
* [SYS\_getpgrp](#SYS_getpgrp)
* [SYS\_getpid](#SYS_getpid)
* [SYS\_getpmsg](#SYS_getpmsg)
* [SYS\_getppid](#SYS_getppid)
* [SYS\_getpriority](#SYS_getpriority)
* [SYS\_getrandom](#SYS_getrandom)
* [SYS\_getresgid](#SYS_getresgid)
* [SYS\_getresuid](#SYS_getresuid)
* [SYS\_getrlimit](#SYS_getrlimit)
* [SYS\_getrusage](#SYS_getrusage)
* [SYS\_getsid](#SYS_getsid)
* [SYS\_getsockname](#SYS_getsockname)
* [SYS\_getsockopt](#SYS_getsockopt)
* [SYS\_gettid](#SYS_gettid)
* [SYS\_gettimeofday](#SYS_gettimeofday)
* [SYS\_getuid](#SYS_getuid)
* [SYS\_getxattr](#SYS_getxattr)
* [SYS\_init\_module](#SYS_init_module)
* [SYS\_inotify\_add\_watch](#SYS_inotify_add_watch)
* [SYS\_inotify\_init](#SYS_inotify_init)
* [SYS\_inotify\_init1](#SYS_inotify_init1)
* [SYS\_inotify\_rm\_watch](#SYS_inotify_rm_watch)
* [SYS\_io\_cancel](#SYS_io_cancel)
* [SYS\_io\_destroy](#SYS_io_destroy)
* [SYS\_io\_getevents](#SYS_io_getevents)
* [SYS\_io\_pgetevents](#SYS_io_pgetevents)
* [SYS\_io\_setup](#SYS_io_setup)
* [SYS\_io\_submit](#SYS_io_submit)
* [SYS\_io\_uring\_enter](#SYS_io_uring_enter)
* [SYS\_io\_uring\_register](#SYS_io_uring_register)
* [SYS\_io\_uring\_setup](#SYS_io_uring_setup)
* [SYS\_ioctl](#SYS_ioctl)
* [SYS\_ioperm](#SYS_ioperm)
* [SYS\_iopl](#SYS_iopl)
* [SYS\_ioprio\_get](#SYS_ioprio_get)
* [SYS\_ioprio\_set](#SYS_ioprio_set)
* [SYS\_kcmp](#SYS_kcmp)
* [SYS\_kexec\_file\_load](#SYS_kexec_file_load)
* [SYS\_kexec\_load](#SYS_kexec_load)
* [SYS\_keyctl](#SYS_keyctl)
* [SYS\_kill](#SYS_kill)
* [SYS\_landlock\_add\_rule](#SYS_landlock_add_rule)
* [SYS\_landlock\_create\_ruleset](#SYS_landlock_create_ruleset)
* [SYS\_landlock\_restrict\_self](#SYS_landlock_restrict_self)
* [SYS\_lchown](#SYS_lchown)
* [SYS\_lgetxattr](#SYS_lgetxattr)
* [SYS\_link](#SYS_link)
* [SYS\_linkat](#SYS_linkat)
* [SYS\_listen](#SYS_listen)
* [SYS\_listxattr](#SYS_listxattr)
* [SYS\_llistxattr](#SYS_llistxattr)
* [SYS\_lookup\_dcookie](#SYS_lookup_dcookie)
* [SYS\_lremovexattr](#SYS_lremovexattr)
* [SYS\_lseek](#SYS_lseek)
* [SYS\_lsetxattr](#SYS_lsetxattr)
* [SYS\_lstat](#SYS_lstat)
* [SYS\_madvise](#SYS_madvise)
* [SYS\_mbind](#SYS_mbind)
* [SYS\_membarrier](#SYS_membarrier)
* [SYS\_memfd\_create](#SYS_memfd_create)
* [SYS\_memfd\_secret](#SYS_memfd_secret)
* [SYS\_migrate\_pages](#SYS_migrate_pages)
* [SYS\_mincore](#SYS_mincore)
* [SYS\_mkdir](#SYS_mkdir)
* [SYS\_mkdirat](#SYS_mkdirat)
* [SYS\_mknod](#SYS_mknod)
* [SYS\_mknodat](#SYS_mknodat)
* [SYS\_mlock](#SYS_mlock)
* [SYS\_mlock2](#SYS_mlock2)
* [SYS\_mlockall](#SYS_mlockall)
* [SYS\_mmap](#SYS_mmap)
* [SYS\_modify\_ldt](#SYS_modify_ldt)
* [SYS\_mount](#SYS_mount)
* [SYS\_mount\_setattr](#SYS_mount_setattr)
* [SYS\_move\_mount](#SYS_move_mount)
* [SYS\_move\_pages](#SYS_move_pages)
* [SYS\_mprotect](#SYS_mprotect)
* [SYS\_mq\_getsetattr](#SYS_mq_getsetattr)
* [SYS\_mq\_notify](#SYS_mq_notify)
* [SYS\_mq\_open](#SYS_mq_open)
* [SYS\_mq\_timedreceive](#SYS_mq_timedreceive)
* [SYS\_mq\_timedsend](#SYS_mq_timedsend)
* [SYS\_mq\_unlink](#SYS_mq_unlink)
* [SYS\_mremap](#SYS_mremap)
* [SYS\_msgctl](#SYS_msgctl)
* [SYS\_msgget](#SYS_msgget)
* [SYS\_msgrcv](#SYS_msgrcv)
* [SYS\_msgsnd](#SYS_msgsnd)
* [SYS\_msync](#SYS_msync)
* [SYS\_munlock](#SYS_munlock)
* [SYS\_munlockall](#SYS_munlockall)
* [SYS\_munmap](#SYS_munmap)
* [SYS\_name\_to\_handle\_at](#SYS_name_to_handle_at)
* [SYS\_nanosleep](#SYS_nanosleep)
* [SYS\_nfsservctl](#SYS_nfsservctl)
* [SYS\_open](#SYS_open)
* [SYS\_open\_by\_handle\_at](#SYS_open_by_handle_at)
* [SYS\_open\_tree](#SYS_open_tree)
* [SYS\_openat](#SYS_openat)
* [SYS\_openat2](#SYS_openat2)
* [SYS\_pause](#SYS_pause)
* [SYS\_perf\_event\_open](#SYS_perf_event_open)
* [SYS\_personality](#SYS_personality)
* [SYS\_pidfd\_getfd](#SYS_pidfd_getfd)
* [SYS\_pidfd\_open](#SYS_pidfd_open)
* [SYS\_pidfd\_send\_signal](#SYS_pidfd_send_signal)
* [SYS\_pipe](#SYS_pipe)
* [SYS\_pipe2](#SYS_pipe2)
* [SYS\_pivot\_root](#SYS_pivot_root)
* [SYS\_pkey\_alloc](#SYS_pkey_alloc)
* [SYS\_pkey\_free](#SYS_pkey_free)
* [SYS\_pkey\_mprotect](#SYS_pkey_mprotect)
* [SYS\_poll](#SYS_poll)
* [SYS\_ppoll](#SYS_ppoll)
* [SYS\_prctl](#SYS_prctl)
* [SYS\_pread64](#SYS_pread64)
* [SYS\_preadv](#SYS_preadv)
* [SYS\_preadv2](#SYS_preadv2)
* [SYS\_prlimit64](#SYS_prlimit64)
* [SYS\_process\_madvise](#SYS_process_madvise)
* [SYS\_process\_vm\_readv](#SYS_process_vm_readv)
* [SYS\_process\_vm\_writev](#SYS_process_vm_writev)
* [SYS\_pselect6](#SYS_pselect6)
* [SYS\_ptrace](#SYS_ptrace)
* [SYS\_putpmsg](#SYS_putpmsg)
* [SYS\_pwrite64](#SYS_pwrite64)
* [SYS\_pwritev](#SYS_pwritev)
* [SYS\_pwritev2](#SYS_pwritev2)
* [SYS\_query\_module](#SYS_query_module)
* [SYS\_quotactl](#SYS_quotactl)
* [SYS\_read](#SYS_read)
* [SYS\_readahead](#SYS_readahead)
* [SYS\_readlink](#SYS_readlink)
* [SYS\_readlinkat](#SYS_readlinkat)
* [SYS\_readv](#SYS_readv)
* [SYS\_reboot](#SYS_reboot)
* [SYS\_recvfrom](#SYS_recvfrom)
* [SYS\_recvmmsg](#SYS_recvmmsg)
* [SYS\_recvmsg](#SYS_recvmsg)
* [SYS\_remap\_file\_pages](#SYS_remap_file_pages)
* [SYS\_removexattr](#SYS_removexattr)
* [SYS\_rename](#SYS_rename)
* [SYS\_renameat](#SYS_renameat)
* [SYS\_renameat2](#SYS_renameat2)
* [SYS\_request\_key](#SYS_request_key)
* [SYS\_restart\_syscall](#SYS_restart_syscall)
* [SYS\_rmdir](#SYS_rmdir)
* [SYS\_rseq](#SYS_rseq)
* [SYS\_rt\_sigaction](#SYS_rt_sigaction)
* [SYS\_rt\_sigpending](#SYS_rt_sigpending)
* [SYS\_rt\_sigprocmask](#SYS_rt_sigprocmask)
* [SYS\_rt\_sigqueueinfo](#SYS_rt_sigqueueinfo)
* [SYS\_rt\_sigreturn](#SYS_rt_sigreturn)
* [SYS\_rt\_sigsuspend](#SYS_rt_sigsuspend)
* [SYS\_rt\_sigtimedwait](#SYS_rt_sigtimedwait)
* [SYS\_rt\_tgsigqueueinfo](#SYS_rt_tgsigqueueinfo)
* [SYS\_sched\_get\_priority\_max](#SYS_sched_get_priority_max)
* [SYS\_sched\_get\_priority\_min](#SYS_sched_get_priority_min)
* [SYS\_sched\_getaffinity](#SYS_sched_getaffinity)
* [SYS\_sched\_getattr](#SYS_sched_getattr)
* [SYS\_sched\_getparam](#SYS_sched_getparam)
* [SYS\_sched\_getscheduler](#SYS_sched_getscheduler)
* [SYS\_sched\_rr\_get\_interval](#SYS_sched_rr_get_interval)
* [SYS\_sched\_setaffinity](#SYS_sched_setaffinity)
* [SYS\_sched\_setattr](#SYS_sched_setattr)
* [SYS\_sched\_setparam](#SYS_sched_setparam)
* [SYS\_sched\_setscheduler](#SYS_sched_setscheduler)
* [SYS\_sched\_yield](#SYS_sched_yield)
* [SYS\_seccomp](#SYS_seccomp)
* [SYS\_security](#SYS_security)
* [SYS\_select](#SYS_select)
* [SYS\_semctl](#SYS_semctl)
* [SYS\_semget](#SYS_semget)
* [SYS\_semop](#SYS_semop)
* [SYS\_semtimedop](#SYS_semtimedop)
* [SYS\_sendfile](#SYS_sendfile)
* [SYS\_sendmmsg](#SYS_sendmmsg)
* [SYS\_sendmsg](#SYS_sendmsg)
* [SYS\_sendto](#SYS_sendto)
* [SYS\_set\_mempolicy](#SYS_set_mempolicy)
* [SYS\_set\_robust\_list](#SYS_set_robust_list)
* [SYS\_set\_thread\_area](#SYS_set_thread_area)
* [SYS\_set\_tid\_address](#SYS_set_tid_address)
* [SYS\_setdomainname](#SYS_setdomainname)
* [SYS\_setfsgid](#SYS_setfsgid)
* [SYS\_setfsuid](#SYS_setfsuid)
* [SYS\_setgid](#SYS_setgid)
* [SYS\_setgroups](#SYS_setgroups)
* [SYS\_sethostname](#SYS_sethostname)
* [SYS\_setitimer](#SYS_setitimer)
* [SYS\_setns](#SYS_setns)
* [SYS\_setpgid](#SYS_setpgid)
* [SYS\_setpriority](#SYS_setpriority)
* [SYS\_setregid](#SYS_setregid)
* [SYS\_setresgid](#SYS_setresgid)
* [SYS\_setresuid](#SYS_setresuid)
* [SYS\_setreuid](#SYS_setreuid)
* [SYS\_setrlimit](#SYS_setrlimit)
* [SYS\_setsid](#SYS_setsid)
* [SYS\_setsockopt](#SYS_setsockopt)
* [SYS\_settimeofday](#SYS_settimeofday)
* [SYS\_setuid](#SYS_setuid)
* [SYS\_setxattr](#SYS_setxattr)
* [SYS\_shmat](#SYS_shmat)
* [SYS\_shmctl](#SYS_shmctl)
* [SYS\_shmdt](#SYS_shmdt)
* [SYS\_shmget](#SYS_shmget)
* [SYS\_shutdown](#SYS_shutdown)
* [SYS\_sigaltstack](#SYS_sigaltstack)
* [SYS\_signalfd](#SYS_signalfd)
* [SYS\_signalfd4](#SYS_signalfd4)
* [SYS\_socket](#SYS_socket)
* [SYS\_socketpair](#SYS_socketpair)
* [SYS\_splice](#SYS_splice)
* [SYS\_stat](#SYS_stat)
* [SYS\_statfs](#SYS_statfs)
* [SYS\_statx](#SYS_statx)
* [SYS\_swapoff](#SYS_swapoff)
* [SYS\_swapon](#SYS_swapon)
* [SYS\_symlink](#SYS_symlink)
* [SYS\_symlinkat](#SYS_symlinkat)
* [SYS\_sync](#SYS_sync)
* [SYS\_sync\_file\_range](#SYS_sync_file_range)
* [SYS\_syncfs](#SYS_syncfs)
* [SYS\_sysfs](#SYS_sysfs)
* [SYS\_sysinfo](#SYS_sysinfo)
* [SYS\_syslog](#SYS_syslog)
* [SYS\_tee](#SYS_tee)
* [SYS\_tgkill](#SYS_tgkill)
* [SYS\_time](#SYS_time)
* [SYS\_timer\_create](#SYS_timer_create)
* [SYS\_timer\_delete](#SYS_timer_delete)
* [SYS\_timer\_getoverrun](#SYS_timer_getoverrun)
* [SYS\_timer\_gettime](#SYS_timer_gettime)
* [SYS\_timer\_settime](#SYS_timer_settime)
* [SYS\_timerfd\_create](#SYS_timerfd_create)
* [SYS\_timerfd\_gettime](#SYS_timerfd_gettime)
* [SYS\_timerfd\_settime](#SYS_timerfd_settime)
* [SYS\_times](#SYS_times)
* [SYS\_tkill](#SYS_tkill)
* [SYS\_truncate](#SYS_truncate)
* [SYS\_tuxcall](#SYS_tuxcall)
* [SYS\_umask](#SYS_umask)
* [SYS\_umount2](#SYS_umount2)
* [SYS\_uname](#SYS_uname)
* [SYS\_unlink](#SYS_unlink)
* [SYS\_unlinkat](#SYS_unlinkat)
* [SYS\_unshare](#SYS_unshare)
* [SYS\_uselib](#SYS_uselib)
* [SYS\_userfaultfd](#SYS_userfaultfd)
* [SYS\_ustat](#SYS_ustat)
* [SYS\_utime](#SYS_utime)
* [SYS\_utimensat](#SYS_utimensat)
* [SYS\_utimes](#SYS_utimes)
* [SYS\_vfork](#SYS_vfork)
* [SYS\_vhangup](#SYS_vhangup)
* [SYS\_vmsplice](#SYS_vmsplice)
* [SYS\_vserver](#SYS_vserver)
* [SYS\_wait4](#SYS_wait4)
* [SYS\_waitid](#SYS_waitid)
* [SYS\_write](#SYS_write)
* [SYS\_writev](#SYS_writev)

Variables (0)

This section is empty.

Procedures (61)

* [get\_errno](#get_errno)
* [sys\_accept](#sys_accept)
* [sys\_access](#sys_access)
* [sys\_bind](#sys_bind)
* [sys\_chdir](#sys_chdir)
* [sys\_chmod](#sys_chmod)
* [sys\_chown](#sys_chown)
* [sys\_close](#sys_close)
* [sys\_connect](#sys_connect)
* [sys\_dup2](#sys_dup2)
* [sys\_fchdir](#sys_fchdir)
* [sys\_fchmod](#sys_fchmod)
* [sys\_fchown](#sys_fchown)
* [sys\_fcntl](#sys_fcntl)
* [sys\_fork](#sys_fork)
* [sys\_fstat](#sys_fstat)
* [sys\_fsync](#sys_fsync)
* [sys\_ftruncate](#sys_ftruncate)
* [sys\_getcwd](#sys_getcwd)
* [sys\_getdents64](#sys_getdents64)
* [sys\_getrandom](#sys_getrandom)
* [sys\_gettid](#sys_gettid)
* [sys\_lchown](#sys_lchown)
* [sys\_link](#sys_link)
* [sys\_listen](#sys_listen)
* [sys\_lseek](#sys_lseek)
* [sys\_lstat](#sys_lstat)
* [sys\_madvise](#sys_madvise)
* [sys\_mkdir](#sys_mkdir)
* [sys\_mkdirat](#sys_mkdirat)
* [sys\_mknod](#sys_mknod)
* [sys\_mknodat](#sys_mknodat)
* [sys\_mmap](#sys_mmap)
* [sys\_mprotect](#sys_mprotect)
* [sys\_mremap](#sys_mremap)
* [sys\_munmap](#sys_munmap)
* [sys\_open](#sys_open)
* [sys\_openat](#sys_openat)
* [sys\_perf\_event\_open](#sys_perf_event_open)
* [sys\_personality](#sys_personality)
* [sys\_pipe2](#sys_pipe2)
* [sys\_poll](#sys_poll)
* [sys\_ppoll](#sys_ppoll)
* [sys\_pread](#sys_pread)
* [sys\_pwrite](#sys_pwrite)
* [sys\_read](#sys_read)
* [sys\_readlink](#sys_readlink)
* [sys\_recvfrom](#sys_recvfrom)
* [sys\_rename](#sys_rename)
* [sys\_rmdir](#sys_rmdir)
* [sys\_sendto](#sys_sendto)
* [sys\_setsockopt](#sys_setsockopt)
* [sys\_shutdown](#sys_shutdown)
* [sys\_socket](#sys_socket)
* [sys\_stat](#sys_stat)
* [sys\_symlink](#sys_symlink)
* [sys\_truncate](#sys_truncate)
* [sys\_unlink](#sys_unlink)
* [sys\_unlinkat](#sys_unlinkat)
* [sys\_utimensat](#sys_utimensat)
* [sys\_write](#sys_write)

Procedure Groups (0)

This section is empty.

## Types

### [Perf\_Capabilities ¶](#Perf_Capabilities) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1971)

```
Perf_Capabilities :: struct #raw_union {
	capabilities: u64,
	flags:        Perf_Event_Flags,
}
```

### [Perf\_Event\_Attr ¶](#Perf_Event_Attr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1940)

```
Perf_Event_Attr :: struct #packed {
	type:               u32,
	size:               u32,
	config:             u64,
	sample:             Perf_Sample,
	sample_type:        u64,
	read_format:        u64,
	flags:              Perf_Flags,
	wakeup:             Perf_Wakeup,
	breakpoint_type:    u32,
	field1:             Perf_Field1,
	field2:             Perf_Field2,
	branch_sample_type: u64,
	sample_regs_user:   u64,
	sample_stack_user:  u32,
	clock_id:           i32,
	sample_regs_intr:   u64,
	aux_watermark:      u32,
	sample_max_stack:   u16,
	_padding:           u16,
}
```

### [Perf\_Event\_Flag ¶](#Perf_Event_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1963)

```
Perf_Event_Flag :: enum u64 {
	Bit0               = 0, 
	Bit0_Is_Deprecated = 1, 
	User_Rdpmc         = 2, 
	User_Time          = 3, 
	User_Time_Zero     = 4, 
	User_Time_Short    = 5, 
}
```

### [Perf\_Event\_Flags ¶](#Perf_Event_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1962)

```
Perf_Event_Flags :: distinct bit_set[Perf_Event_Flag; u64]
```

### [Perf\_Event\_mmap\_Page ¶](#Perf_Event_mmap_Page) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1975)

```
Perf_Event_mmap_Page :: struct #packed {
	version:        u32,
	compat_version: u32,
	lock:           u32,
	index:          u32,
	offset:         i64,
	time_enabled:   u64,
	time_running:   u64,
	cap:            Perf_Capabilities,
	pmc_width:      u16,
	time_shift:     u16,
	time_mult:      u32,
	time_offset:    u64,
	time_zero:      u64,
	size:           u32,
	reserved1:      u32,
	time_cycles:    u64,
	time_mask:      u64,
	reserved2:      [928]u8,
	data_head:      u64,
	data_tail:      u64,
	data_offset:    u64,
	data_size:      u64,
	aux_head:       u64,
	aux_tail:       u64,
	aux_offset:     u64,
	aux_size:       u64,
}
```

### [Perf\_Field1 ¶](#Perf_Field1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1928)

```
Perf_Field1 :: struct #raw_union {
	breakpoint_addr: u64,
	kprobe_func:     u64,
	uprobe_path:     u64,
	config1:         u64,
}
```

### [Perf\_Field2 ¶](#Perf_Field2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1934)

```
Perf_Field2 :: struct #raw_union {
	breakpoint_len: u64,
	kprobe_addr:    u64,
	uprobe_offset:  u64,
	config2:        u64,
}
```

### [Perf\_Flag ¶](#Perf_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2027)

```
Perf_Flag :: enum u64 {
	Disabled                 = 0, 
	Inherit                  = 1, 
	Pinned                   = 2, 
	Exclusive                = 3, 
	Exclude_User             = 4, 
	Exclude_Kernel           = 5, 
	Exclude_HV               = 6, 
	Exclude_Idle             = 7, 
	mmap                     = 8, 
	Comm                     = 9, 
	Freq                     = 10, 
	Inherit_Stat             = 11, 
	Enable_On_Exec           = 12, 
	Task                     = 13, 
	Watermark                = 14, 
	Precise_IP_0             = 15, 
	Precise_IP_1             = 16, 
	mmap_Data                = 17, 
	Sample_Id_All            = 18, 
	Exclude_Host             = 19, 
	Exclude_Guest            = 20, 
	Exclude_Callchain_Kernel = 21, 
	Exclude_Callchain_User   = 22, 
	mmap2                    = 23, 
	Comm_Exec                = 24, 
	Use_Clockid              = 25, 
	Context_Switch           = 26, 
	Write_Backward           = 27, 
	Namespaces               = 28, 
	KSymbol                  = 29, 
	BPF_Event                = 30, 
	Aux_Output               = 31, 
	CGroup                   = 32, 
	Text_Poke                = 33, 
	Build_Id                 = 34, 
	Inherit_Thread           = 35, 
	Remove_On_Exec           = 36, 
	Sigtrap                  = 37, 
}
```

### [Perf\_Flags ¶](#Perf_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2026)

```
Perf_Flags :: distinct bit_set[Perf_Flag; u64]
```

### [Perf\_Hardware\_Id ¶](#Perf_Hardware_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2013)

```
Perf_Hardware_Id :: enum u64 {
	CPU_Cycles              = 0, 
	Instructions            = 1, 
	Cache_References        = 2, 
	Cache_Misses            = 3, 
	Branch_Instructions     = 4, 
	Branch_Misses           = 5, 
	Bus_Cycles              = 6, 
	Stalled_Cycles_Frontend = 7, 
	Stalled_Cycles_Backend  = 8, 
	Ref_CPU_Cycles          = 9, 
}
```

### [Perf\_Sample ¶](#Perf_Sample) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1920)

```
Perf_Sample :: struct #raw_union {
	period:    u64,
	frequency: u64,
}
```

 

perf event data

### [Perf\_Type\_Id ¶](#Perf_Type_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2004)

```
Perf_Type_Id :: enum u32 {
	Hardware   = 0, 
	Software   = 1, 
	Tracepoint = 2, 
	HW_Cache   = 3, 
	Raw        = 4, 
	Breakpoint = 5, 
}
```

### [Perf\_Wakeup ¶](#Perf_Wakeup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1924)

```
Perf_Wakeup :: struct #raw_union {
	events:    u32,
	watermark: u32,
}
```

### [timespec ¶](#timespec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/unix.odin#L5)

```
timespec :: struct {
	secs:  i64,
	nsecs: i64,
}
```

## Constants

### [AT\_FDCWD ¶](#AT_FDCWD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1855)

```
AT_FDCWD: uintptr : ~uintptr(99)
```

 

syscall related constants

### [AT\_REMOVEDIR ¶](#AT_REMOVEDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1856)

```
AT_REMOVEDIR :: uintptr(0x200)
```

### [AT\_SYMLINK\_FOLLOW ¶](#AT_SYMLINK_FOLLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1857)

```
AT_SYMLINK_FOLLOW :: uintptr(0x400)
```

### [AT\_SYMLINK\_NOFOLLOW ¶](#AT_SYMLINK_NOFOLLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1858)

```
AT_SYMLINK_NOFOLLOW :: uintptr(0x100)
```

### [MADV\_DODUMP ¶](#MADV_DODUMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1894)

```
MADV_DODUMP :: 17
```

### [MADV\_DOFORK ¶](#MADV_DOFORK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1888)

```
MADV_DOFORK :: 11
```

### [MADV\_DONTDUMP ¶](#MADV_DONTDUMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1893)

```
MADV_DONTDUMP :: 16
```

### [MADV\_DONTFORK ¶](#MADV_DONTFORK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1887)

```
MADV_DONTFORK :: 10
```

### [MADV\_DONTNEED ¶](#MADV_DONTNEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1884)

```
MADV_DONTNEED :: 4
```

### [MADV\_FREE ¶](#MADV_FREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1885)

```
MADV_FREE :: 8
```

### [MADV\_HUGEPAGE ¶](#MADV_HUGEPAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1891)

```
MADV_HUGEPAGE :: 14
```

### [MADV\_HWPOISON ¶](#MADV_HWPOISON) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1897)

```
MADV_HWPOISON :: 100
```

### [MADV\_KEEPONFORK ¶](#MADV_KEEPONFORK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1896)

```
MADV_KEEPONFORK :: 19
```

### [MADV\_MERGEABLE ¶](#MADV_MERGEABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1889)

```
MADV_MERGEABLE :: 12
```

### [MADV\_NOHUGEPAGE ¶](#MADV_NOHUGEPAGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1892)

```
MADV_NOHUGEPAGE :: 15
```

### [MADV\_NORMAL ¶](#MADV_NORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1880)

```
MADV_NORMAL :: 0
```

 

madvise flags

### [MADV\_RANDOM ¶](#MADV_RANDOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1881)

```
MADV_RANDOM :: 1
```

### [MADV\_REMOVE ¶](#MADV_REMOVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1886)

```
MADV_REMOVE :: 9
```

### [MADV\_SEQUENTIAL ¶](#MADV_SEQUENTIAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1882)

```
MADV_SEQUENTIAL :: 2
```

### [MADV\_UNMERGEABLE ¶](#MADV_UNMERGEABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1890)

```
MADV_UNMERGEABLE :: 13
```

### [MADV\_WILLNEED ¶](#MADV_WILLNEED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1883)

```
MADV_WILLNEED :: 3
```

### [MADV\_WIPEONFORK ¶](#MADV_WIPEONFORK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1895)

```
MADV_WIPEONFORK :: 18
```

### [MAP\_ANONYMOUS ¶](#MAP_ANONYMOUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1872)

```
MAP_ANONYMOUS :: 0x20
```

### [MAP\_FIXED ¶](#MAP_FIXED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1868)

```
MAP_FIXED :: 0x10
```

### [MAP\_PRIVATE ¶](#MAP_PRIVATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1870)

```
MAP_PRIVATE :: 0x2
```

### [MAP\_SHARED ¶](#MAP_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1869)

```
MAP_SHARED :: 0x1
```

### [MAP\_SHARED\_VALIDATE ¶](#MAP_SHARED_VALIDATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1871)

```
MAP_SHARED_VALIDATE :: 0x3
```

### [MREMAP\_DONTUNMAP ¶](#MREMAP_DONTUNMAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1877)

```
MREMAP_DONTUNMAP :: 4
```

### [MREMAP\_FIXED ¶](#MREMAP_FIXED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1876)

```
MREMAP_FIXED :: 2
```

### [MREMAP\_MAYMOVE ¶](#MREMAP_MAYMOVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1875)

```
MREMAP_MAYMOVE :: 1
```

 

mremap flags

### [O\_CLOEXEC ¶](#O_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1900)

```
O_CLOEXEC :: 0o2000000
```

 

pipe2 flags

### [POLLERR ¶](#POLLERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1906)

```
POLLERR :: 0x0008
```

### [POLLFREE ¶](#POLLFREE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1916)

```
POLLFREE :: 0x4000
```

### [POLLHUP ¶](#POLLHUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1907)

```
POLLHUP :: 0x0010
```

### [POLLIN ¶](#POLLIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1903)

```
POLLIN :: 0x0001
```

 

poll events

### [POLLMSG ¶](#POLLMSG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1913)

```
POLLMSG :: 0x0400
```

### [POLLNVAL ¶](#POLLNVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1908)

```
POLLNVAL :: 0x0020
```

### [POLLOUT ¶](#POLLOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1905)

```
POLLOUT :: 0x0004
```

### [POLLPRI ¶](#POLLPRI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1904)

```
POLLPRI :: 0x0002
```

### [POLLRDBAND ¶](#POLLRDBAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1910)

```
POLLRDBAND :: 0x0080
```

### [POLLRDHUP ¶](#POLLRDHUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1915)

```
POLLRDHUP :: 0x2000
```

### [POLLRDNORM ¶](#POLLRDNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1909)

```
POLLRDNORM :: 0x0040
```

### [POLLREMOVE ¶](#POLLREMOVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1914)

```
POLLREMOVE :: 0x1000
```

### [POLLWRBAND ¶](#POLLWRBAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1912)

```
POLLWRBAND :: 0x0200
```

### [POLLWRNORM ¶](#POLLWRNORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1911)

```
POLLWRNORM :: 0x0100
```

### [POLL\_BUSY\_LOOP ¶](#POLL_BUSY_LOOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1917)

```
POLL_BUSY_LOOP :: 0x8000
```

### [PROT\_EXEC ¶](#PROT_EXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1864)

```
PROT_EXEC :: 0x4
```

### [PROT\_GROWSDOWN ¶](#PROT_GROWSDOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1865)

```
PROT_GROWSDOWN :: 0x01000000
```

### [PROT\_GROWSUP ¶](#PROT_GROWSUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1866)

```
PROT_GROWSUP :: 0x02000000
```

### [PROT\_NONE ¶](#PROT_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1861)

```
PROT_NONE :: 0x0
```

 

mmap flags

### [PROT\_READ ¶](#PROT_READ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1862)

```
PROT_READ :: 0x1
```

### [PROT\_WRITE ¶](#PROT_WRITE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L1863)

```
PROT_WRITE :: 0x2
```

### [SYS\_\_sysctl ¶](#SYS__sysctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L175)

```
SYS__sysctl: uintptr : 156
```

### [SYS\_accept ¶](#SYS_accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L62)

```
SYS_accept: uintptr : 43
```

### [SYS\_accept4 ¶](#SYS_accept4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L307)

```
SYS_accept4: uintptr : 288
```

### [SYS\_access ¶](#SYS_access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L40)

```
SYS_access: uintptr : 21
```

### [SYS\_acct ¶](#SYS_acct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L182)

```
SYS_acct: uintptr : 163
```

### [SYS\_add\_key ¶](#SYS_add_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L267)

```
SYS_add_key: uintptr : 248
```

### [SYS\_adjtimex ¶](#SYS_adjtimex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L178)

```
SYS_adjtimex: uintptr : 159
```

### [SYS\_afs\_syscall ¶](#SYS_afs_syscall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L202)

```
SYS_afs_syscall: uintptr : 183
```

### [SYS\_alarm ¶](#SYS_alarm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L56)

```
SYS_alarm: uintptr : 37
```

### [SYS\_arch\_prctl ¶](#SYS_arch_prctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L177)

```
SYS_arch_prctl: uintptr : 158
```

### [SYS\_bind ¶](#SYS_bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L68)

```
SYS_bind: uintptr : 49
```

### [SYS\_bpf ¶](#SYS_bpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L340)

```
SYS_bpf: uintptr : 321
```

### [SYS\_brk ¶](#SYS_brk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L31)

```
SYS_brk: uintptr : 12
```

### [SYS\_capget ¶](#SYS_capget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L144)

```
SYS_capget: uintptr : 125
```

### [SYS\_capset ¶](#SYS_capset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L145)

```
SYS_capset: uintptr : 126
```

### [SYS\_chdir ¶](#SYS_chdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L99)

```
SYS_chdir: uintptr : 80
```

### [SYS\_chmod ¶](#SYS_chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L109)

```
SYS_chmod: uintptr : 90
```

### [SYS\_chown ¶](#SYS_chown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L111)

```
SYS_chown: uintptr : 92
```

### [SYS\_chroot ¶](#SYS_chroot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L180)

```
SYS_chroot: uintptr : 161
```

### [SYS\_clock\_adjtime ¶](#SYS_clock_adjtime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L324)

```
SYS_clock_adjtime: uintptr : 305
```

### [SYS\_clock\_getres ¶](#SYS_clock_getres) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L248)

```
SYS_clock_getres: uintptr : 229
```

### [SYS\_clock\_gettime ¶](#SYS_clock_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L247)

```
SYS_clock_gettime: uintptr : 228
```

### [SYS\_clock\_nanosleep ¶](#SYS_clock_nanosleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L249)

```
SYS_clock_nanosleep: uintptr : 230
```

### [SYS\_clock\_settime ¶](#SYS_clock_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L246)

```
SYS_clock_settime: uintptr : 227
```

### [SYS\_clone ¶](#SYS_clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L75)

```
SYS_clone: uintptr : 56
```

### [SYS\_clone3 ¶](#SYS_clone3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L365)

```
SYS_clone3: uintptr : 435
```

### [SYS\_close ¶](#SYS_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L22)

```
SYS_close: uintptr : 3
```

### [SYS\_close\_range ¶](#SYS_close_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L366)

```
SYS_close_range: uintptr : 436
```

### [SYS\_connect ¶](#SYS_connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L61)

```
SYS_connect: uintptr : 42
```

### [SYS\_copy\_file\_range ¶](#SYS_copy_file_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L345)

```
SYS_copy_file_range: uintptr : 326
```

### [SYS\_creat ¶](#SYS_creat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L104)

```
SYS_creat: uintptr : 85
```

### [SYS\_create\_module ¶](#SYS_create_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L193)

```
SYS_create_module: uintptr : 174
```

### [SYS\_delete\_module ¶](#SYS_delete_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L195)

```
SYS_delete_module: uintptr : 176
```

### [SYS\_dup ¶](#SYS_dup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L51)

```
SYS_dup: uintptr : 32
```

### [SYS\_dup2 ¶](#SYS_dup2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L52)

```
SYS_dup2: uintptr : 33
```

### [SYS\_dup3 ¶](#SYS_dup3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L311)

```
SYS_dup3: uintptr : 292
```

### [SYS\_epoll\_create ¶](#SYS_epoll_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L232)

```
SYS_epoll_create: uintptr : 213
```

### [SYS\_epoll\_create1 ¶](#SYS_epoll_create1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L310)

```
SYS_epoll_create1: uintptr : 291
```

### [SYS\_epoll\_ctl ¶](#SYS_epoll_ctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L252)

```
SYS_epoll_ctl: uintptr : 233
```

### [SYS\_epoll\_ctl\_old ¶](#SYS_epoll_ctl_old) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L233)

```
SYS_epoll_ctl_old: uintptr : 214
```

### [SYS\_epoll\_pwait ¶](#SYS_epoll_pwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L300)

```
SYS_epoll_pwait: uintptr : 281
```

### [SYS\_epoll\_pwait2 ¶](#SYS_epoll_pwait2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L371)

```
SYS_epoll_pwait2: uintptr : 441
```

### [SYS\_epoll\_wait ¶](#SYS_epoll_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L251)

```
SYS_epoll_wait: uintptr : 232
```

### [SYS\_epoll\_wait\_old ¶](#SYS_epoll_wait_old) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L234)

```
SYS_epoll_wait_old: uintptr : 215
```

### [SYS\_eventfd ¶](#SYS_eventfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L303)

```
SYS_eventfd: uintptr : 284
```

### [SYS\_eventfd2 ¶](#SYS_eventfd2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L309)

```
SYS_eventfd2: uintptr : 290
```

### [SYS\_execve ¶](#SYS_execve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L78)

```
SYS_execve: uintptr : 59
```

### [SYS\_execveat ¶](#SYS_execveat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L341)

```
SYS_execveat: uintptr : 322
```

### [SYS\_exit ¶](#SYS_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L79)

```
SYS_exit: uintptr : 60
```

### [SYS\_exit\_group ¶](#SYS_exit_group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L250)

```
SYS_exit_group: uintptr : 231
```

### [SYS\_faccessat ¶](#SYS_faccessat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L288)

```
SYS_faccessat: uintptr : 269
```

### [SYS\_faccessat2 ¶](#SYS_faccessat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L369)

```
SYS_faccessat2: uintptr : 439
```

### [SYS\_fadvise64 ¶](#SYS_fadvise64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L240)

```
SYS_fadvise64: uintptr : 221
```

### [SYS\_fallocate ¶](#SYS_fallocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L304)

```
SYS_fallocate: uintptr : 285
```

### [SYS\_fanotify\_init ¶](#SYS_fanotify_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L319)

```
SYS_fanotify_init: uintptr : 300
```

### [SYS\_fanotify\_mark ¶](#SYS_fanotify_mark) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L320)

```
SYS_fanotify_mark: uintptr : 301
```

### [SYS\_fchdir ¶](#SYS_fchdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L100)

```
SYS_fchdir: uintptr : 81
```

### [SYS\_fchmod ¶](#SYS_fchmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L110)

```
SYS_fchmod: uintptr : 91
```

### [SYS\_fchmodat ¶](#SYS_fchmodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L287)

```
SYS_fchmodat: uintptr : 268
```

### [SYS\_fchown ¶](#SYS_fchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L112)

```
SYS_fchown: uintptr : 93
```

### [SYS\_fchownat ¶](#SYS_fchownat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L279)

```
SYS_fchownat: uintptr : 260
```

### [SYS\_fcntl ¶](#SYS_fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L91)

```
SYS_fcntl: uintptr : 72
```

### [SYS\_fdatasync ¶](#SYS_fdatasync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L94)

```
SYS_fdatasync: uintptr : 75
```

### [SYS\_fgetxattr ¶](#SYS_fgetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L212)

```
SYS_fgetxattr: uintptr : 193
```

### [SYS\_finit\_module ¶](#SYS_finit_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L332)

```
SYS_finit_module: uintptr : 313
```

### [SYS\_flistxattr ¶](#SYS_flistxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L215)

```
SYS_flistxattr: uintptr : 196
```

### [SYS\_flock ¶](#SYS_flock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L92)

```
SYS_flock: uintptr : 73
```

### [SYS\_fork ¶](#SYS_fork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L76)

```
SYS_fork: uintptr : 57
```

### [SYS\_fremovexattr ¶](#SYS_fremovexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L218)

```
SYS_fremovexattr: uintptr : 199
```

### [SYS\_fsconfig ¶](#SYS_fsconfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L361)

```
SYS_fsconfig: uintptr : 431
```

### [SYS\_fsetxattr ¶](#SYS_fsetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L209)

```
SYS_fsetxattr: uintptr : 190
```

### [SYS\_fsmount ¶](#SYS_fsmount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L362)

```
SYS_fsmount: uintptr : 432
```

### [SYS\_fsopen ¶](#SYS_fsopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L360)

```
SYS_fsopen: uintptr : 430
```

### [SYS\_fspick ¶](#SYS_fspick) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L363)

```
SYS_fspick: uintptr : 433
```

### [SYS\_fstat ¶](#SYS_fstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L24)

```
SYS_fstat: uintptr : 5
```

### [SYS\_fstatat ¶](#SYS_fstatat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L281)

```
SYS_fstatat: uintptr : 262
```

### [SYS\_fstatfs ¶](#SYS_fstatfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L157)

```
SYS_fstatfs: uintptr : 138
```

### [SYS\_fsync ¶](#SYS_fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L93)

```
SYS_fsync: uintptr : 74
```

### [SYS\_ftruncate ¶](#SYS_ftruncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L96)

```
SYS_ftruncate: uintptr : 77
```

### [SYS\_futex ¶](#SYS_futex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L221)

```
SYS_futex: uintptr : 202
```

### [SYS\_futimesat ¶](#SYS_futimesat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L280)

```
SYS_futimesat: uintptr : 261
```

### [SYS\_get\_kernel\_syms ¶](#SYS_get_kernel_syms) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L196)

```
SYS_get_kernel_syms: uintptr : 177
```

### [SYS\_get\_mempolicy ¶](#SYS_get_mempolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L258)

```
SYS_get_mempolicy: uintptr : 239
```

### [SYS\_get\_robust\_list ¶](#SYS_get_robust_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L293)

```
SYS_get_robust_list: uintptr : 274
```

### [SYS\_get\_thread\_area ¶](#SYS_get_thread_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L230)

```
SYS_get_thread_area: uintptr : 211
```

### [SYS\_getcpu ¶](#SYS_getcpu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L328)

```
SYS_getcpu: uintptr : 309
```

### [SYS\_getcwd ¶](#SYS_getcwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L98)

```
SYS_getcwd: uintptr : 79
```

### [SYS\_getdents ¶](#SYS_getdents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L97)

```
SYS_getdents: uintptr : 78
```

### [SYS\_getdents64 ¶](#SYS_getdents64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L236)

```
SYS_getdents64: uintptr : 217
```

### [SYS\_getegid ¶](#SYS_getegid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L127)

```
SYS_getegid: uintptr : 108
```

### [SYS\_geteuid ¶](#SYS_geteuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L126)

```
SYS_geteuid: uintptr : 107
```

### [SYS\_getgid ¶](#SYS_getgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L123)

```
SYS_getgid: uintptr : 104
```

### [SYS\_getgroups ¶](#SYS_getgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L134)

```
SYS_getgroups: uintptr : 115
```

### [SYS\_getitimer ¶](#SYS_getitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L55)

```
SYS_getitimer: uintptr : 36
```

### [SYS\_getpeername ¶](#SYS_getpeername) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L71)

```
SYS_getpeername: uintptr : 52
```

### [SYS\_getpgid ¶](#SYS_getpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L140)

```
SYS_getpgid: uintptr : 121
```

### [SYS\_getpgrp ¶](#SYS_getpgrp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L130)

```
SYS_getpgrp: uintptr : 111
```

### [SYS\_getpid ¶](#SYS_getpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L58)

```
SYS_getpid: uintptr : 39
```

### [SYS\_getpmsg ¶](#SYS_getpmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L200)

```
SYS_getpmsg: uintptr : 181
```

### [SYS\_getppid ¶](#SYS_getppid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L129)

```
SYS_getppid: uintptr : 110
```

### [SYS\_getpriority ¶](#SYS_getpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L159)

```
SYS_getpriority: uintptr : 140
```

### [SYS\_getrandom ¶](#SYS_getrandom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L337)

```
SYS_getrandom: uintptr : 318
```

### [SYS\_getresgid ¶](#SYS_getresgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L139)

```
SYS_getresgid: uintptr : 120
```

### [SYS\_getresuid ¶](#SYS_getresuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L137)

```
SYS_getresuid: uintptr : 118
```

### [SYS\_getrlimit ¶](#SYS_getrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L116)

```
SYS_getrlimit: uintptr : 97
```

### [SYS\_getrusage ¶](#SYS_getrusage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L117)

```
SYS_getrusage: uintptr : 98
```

### [SYS\_getsid ¶](#SYS_getsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L143)

```
SYS_getsid: uintptr : 124
```

### [SYS\_getsockname ¶](#SYS_getsockname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L70)

```
SYS_getsockname: uintptr : 51
```

### [SYS\_getsockopt ¶](#SYS_getsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L74)

```
SYS_getsockopt: uintptr : 55
```

### [SYS\_gettid ¶](#SYS_gettid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L205)

```
SYS_gettid: uintptr : 186
```

### [SYS\_gettimeofday ¶](#SYS_gettimeofday) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L115)

```
SYS_gettimeofday: uintptr : 96
```

### [SYS\_getuid ¶](#SYS_getuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L121)

```
SYS_getuid: uintptr : 102
```

### [SYS\_getxattr ¶](#SYS_getxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L210)

```
SYS_getxattr: uintptr : 191
```

### [SYS\_init\_module ¶](#SYS_init_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L194)

```
SYS_init_module: uintptr : 175
```

### [SYS\_inotify\_add\_watch ¶](#SYS_inotify_add_watch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L273)

```
SYS_inotify_add_watch: uintptr : 254
```

### [SYS\_inotify\_init ¶](#SYS_inotify_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L272)

```
SYS_inotify_init: uintptr : 253
```

### [SYS\_inotify\_init1 ¶](#SYS_inotify_init1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L313)

```
SYS_inotify_init1: uintptr : 294
```

### [SYS\_inotify\_rm\_watch ¶](#SYS_inotify_rm_watch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L274)

```
SYS_inotify_rm_watch: uintptr : 255
```

### [SYS\_io\_cancel ¶](#SYS_io_cancel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L229)

```
SYS_io_cancel: uintptr : 210
```

### [SYS\_io\_destroy ¶](#SYS_io_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L226)

```
SYS_io_destroy: uintptr : 207
```

### [SYS\_io\_getevents ¶](#SYS_io_getevents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L227)

```
SYS_io_getevents: uintptr : 208
```

### [SYS\_io\_pgetevents ¶](#SYS_io_pgetevents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L352)

```
SYS_io_pgetevents: uintptr : 333
```

### [SYS\_io\_setup ¶](#SYS_io_setup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L225)

```
SYS_io_setup: uintptr : 206
```

### [SYS\_io\_submit ¶](#SYS_io_submit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L228)

```
SYS_io_submit: uintptr : 209
```

### [SYS\_io\_uring\_enter ¶](#SYS_io_uring_enter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L356)

```
SYS_io_uring_enter: uintptr : 426
```

### [SYS\_io\_uring\_register ¶](#SYS_io_uring_register) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L357)

```
SYS_io_uring_register: uintptr : 427
```

### [SYS\_io\_uring\_setup ¶](#SYS_io_uring_setup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L355)

```
SYS_io_uring_setup: uintptr : 425
```

### [SYS\_ioctl ¶](#SYS_ioctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L35)

```
SYS_ioctl: uintptr : 16
```

### [SYS\_ioperm ¶](#SYS_ioperm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L192)

```
SYS_ioperm: uintptr : 173
```

### [SYS\_iopl ¶](#SYS_iopl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L191)

```
SYS_iopl: uintptr : 172
```

### [SYS\_ioprio\_get ¶](#SYS_ioprio_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L271)

```
SYS_ioprio_get: uintptr : 252
```

### [SYS\_ioprio\_set ¶](#SYS_ioprio_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L270)

```
SYS_ioprio_set: uintptr : 251
```

### [SYS\_kcmp ¶](#SYS_kcmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L331)

```
SYS_kcmp: uintptr : 312
```

### [SYS\_kexec\_file\_load ¶](#SYS_kexec_file_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L339)

```
SYS_kexec_file_load: uintptr : 320
```

### [SYS\_kexec\_load ¶](#SYS_kexec_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L265)

```
SYS_kexec_load: uintptr : 246
```

### [SYS\_keyctl ¶](#SYS_keyctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L269)

```
SYS_keyctl: uintptr : 250
```

### [SYS\_kill ¶](#SYS_kill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L81)

```
SYS_kill: uintptr : 62
```

### [SYS\_landlock\_add\_rule ¶](#SYS_landlock_add_rule) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L374)

```
SYS_landlock_add_rule: uintptr : 445
```

### [SYS\_landlock\_create\_ruleset ¶](#SYS_landlock_create_ruleset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L373)

```
SYS_landlock_create_ruleset: uintptr : 444
```

### [SYS\_landlock\_restrict\_self ¶](#SYS_landlock_restrict_self) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L375)

```
SYS_landlock_restrict_self: uintptr : 446
```

### [SYS\_lchown ¶](#SYS_lchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L113)

```
SYS_lchown: uintptr : 94
```

### [SYS\_lgetxattr ¶](#SYS_lgetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L211)

```
SYS_lgetxattr: uintptr : 192
```

### [SYS\_link ¶](#SYS_link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L105)

```
SYS_link: uintptr : 86
```

### [SYS\_linkat ¶](#SYS_linkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L284)

```
SYS_linkat: uintptr : 265
```

### [SYS\_listen ¶](#SYS_listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L69)

```
SYS_listen: uintptr : 50
```

### [SYS\_listxattr ¶](#SYS_listxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L213)

```
SYS_listxattr: uintptr : 194
```

### [SYS\_llistxattr ¶](#SYS_llistxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L214)

```
SYS_llistxattr: uintptr : 195
```

### [SYS\_lookup\_dcookie ¶](#SYS_lookup_dcookie) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L231)

```
SYS_lookup_dcookie: uintptr : 212
```

### [SYS\_lremovexattr ¶](#SYS_lremovexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L217)

```
SYS_lremovexattr: uintptr : 198
```

### [SYS\_lseek ¶](#SYS_lseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L27)

```
SYS_lseek: uintptr : 8
```

### [SYS\_lsetxattr ¶](#SYS_lsetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L208)

```
SYS_lsetxattr: uintptr : 189
```

### [SYS\_lstat ¶](#SYS_lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L25)

```
SYS_lstat: uintptr : 6
```

### [SYS\_madvise ¶](#SYS_madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L47)

```
SYS_madvise: uintptr : 28
```

### [SYS\_mbind ¶](#SYS_mbind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L256)

```
SYS_mbind: uintptr : 237
```

### [SYS\_membarrier ¶](#SYS_membarrier) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L343)

```
SYS_membarrier: uintptr : 324
```

### [SYS\_memfd\_create ¶](#SYS_memfd_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L338)

```
SYS_memfd_create: uintptr : 319
```

### [SYS\_memfd\_secret ¶](#SYS_memfd_secret) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L376)

```
SYS_memfd_secret: uintptr : 447
```

### [SYS\_migrate\_pages ¶](#SYS_migrate_pages) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L275)

```
SYS_migrate_pages: uintptr : 256
```

### [SYS\_mincore ¶](#SYS_mincore) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L46)

```
SYS_mincore: uintptr : 27
```

### [SYS\_mkdir ¶](#SYS_mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L102)

```
SYS_mkdir: uintptr : 83
```

### [SYS\_mkdirat ¶](#SYS_mkdirat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L277)

```
SYS_mkdirat: uintptr : 258
```

### [SYS\_mknod ¶](#SYS_mknod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L152)

```
SYS_mknod: uintptr : 133
```

### [SYS\_mknodat ¶](#SYS_mknodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L278)

```
SYS_mknodat: uintptr : 259
```

### [SYS\_mlock ¶](#SYS_mlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L168)

```
SYS_mlock: uintptr : 149
```

### [SYS\_mlock2 ¶](#SYS_mlock2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L344)

```
SYS_mlock2: uintptr : 325
```

### [SYS\_mlockall ¶](#SYS_mlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L170)

```
SYS_mlockall: uintptr : 151
```

### [SYS\_mmap ¶](#SYS_mmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L28)

```
SYS_mmap: uintptr : 9
```

### [SYS\_modify\_ldt ¶](#SYS_modify_ldt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L173)

```
SYS_modify_ldt: uintptr : 154
```

### [SYS\_mount ¶](#SYS_mount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L184)

```
SYS_mount: uintptr : 165
```

### [SYS\_mount\_setattr ¶](#SYS_mount_setattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L372)

```
SYS_mount_setattr: uintptr : 442
```

### [SYS\_move\_mount ¶](#SYS_move_mount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L359)

```
SYS_move_mount: uintptr : 429
```

### [SYS\_move\_pages ¶](#SYS_move_pages) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L298)

```
SYS_move_pages: uintptr : 279
```

### [SYS\_mprotect ¶](#SYS_mprotect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L29)

```
SYS_mprotect: uintptr : 10
```

### [SYS\_mq\_getsetattr ¶](#SYS_mq_getsetattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L264)

```
SYS_mq_getsetattr: uintptr : 245
```

### [SYS\_mq\_notify ¶](#SYS_mq_notify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L263)

```
SYS_mq_notify: uintptr : 244
```

### [SYS\_mq\_open ¶](#SYS_mq_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L259)

```
SYS_mq_open: uintptr : 240
```

### [SYS\_mq\_timedreceive ¶](#SYS_mq_timedreceive) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L262)

```
SYS_mq_timedreceive: uintptr : 243
```

### [SYS\_mq\_timedsend ¶](#SYS_mq_timedsend) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L261)

```
SYS_mq_timedsend: uintptr : 242
```

### [SYS\_mq\_unlink ¶](#SYS_mq_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L260)

```
SYS_mq_unlink: uintptr : 241
```

### [SYS\_mremap ¶](#SYS_mremap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L44)

```
SYS_mremap: uintptr : 25
```

### [SYS\_msgctl ¶](#SYS_msgctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L90)

```
SYS_msgctl: uintptr : 71
```

### [SYS\_msgget ¶](#SYS_msgget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L87)

```
SYS_msgget: uintptr : 68
```

### [SYS\_msgrcv ¶](#SYS_msgrcv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L89)

```
SYS_msgrcv: uintptr : 70
```

### [SYS\_msgsnd ¶](#SYS_msgsnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L88)

```
SYS_msgsnd: uintptr : 69
```

### [SYS\_msync ¶](#SYS_msync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L45)

```
SYS_msync: uintptr : 26
```

### [SYS\_munlock ¶](#SYS_munlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L169)

```
SYS_munlock: uintptr : 150
```

### [SYS\_munlockall ¶](#SYS_munlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L171)

```
SYS_munlockall: uintptr : 152
```

### [SYS\_munmap ¶](#SYS_munmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L30)

```
SYS_munmap: uintptr : 11
```

### [SYS\_name\_to\_handle\_at ¶](#SYS_name_to_handle_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L322)

```
SYS_name_to_handle_at: uintptr : 303
```

### [SYS\_nanosleep ¶](#SYS_nanosleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L54)

```
SYS_nanosleep: uintptr : 35
```

### [SYS\_nfsservctl ¶](#SYS_nfsservctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L199)

```
SYS_nfsservctl: uintptr : 180
```

### [SYS\_open ¶](#SYS_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L21)

```
SYS_open: uintptr : 2
```

### [SYS\_open\_by\_handle\_at ¶](#SYS_open_by_handle_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L323)

```
SYS_open_by_handle_at: uintptr : 304
```

### [SYS\_open\_tree ¶](#SYS_open_tree) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L358)

```
SYS_open_tree: uintptr : 428
```

### [SYS\_openat ¶](#SYS_openat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L276)

```
SYS_openat: uintptr : 257
```

### [SYS\_openat2 ¶](#SYS_openat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L367)

```
SYS_openat2: uintptr : 437
```

### [SYS\_pause ¶](#SYS_pause) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L53)

```
SYS_pause: uintptr : 34
```

### [SYS\_perf\_event\_open ¶](#SYS_perf_event_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L317)

```
SYS_perf_event_open: uintptr : 298
```

### [SYS\_personality ¶](#SYS_personality) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L154)

```
SYS_personality: uintptr : 135
```

### [SYS\_pidfd\_getfd ¶](#SYS_pidfd_getfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L368)

```
SYS_pidfd_getfd: uintptr : 438
```

### [SYS\_pidfd\_open ¶](#SYS_pidfd_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L364)

```
SYS_pidfd_open: uintptr : 434
```

### [SYS\_pidfd\_send\_signal ¶](#SYS_pidfd_send_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L354)

```
SYS_pidfd_send_signal: uintptr : 424
```

### [SYS\_pipe ¶](#SYS_pipe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L41)

```
SYS_pipe: uintptr : 22
```

### [SYS\_pipe2 ¶](#SYS_pipe2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L312)

```
SYS_pipe2: uintptr : 293
```

### [SYS\_pivot\_root ¶](#SYS_pivot_root) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L174)

```
SYS_pivot_root: uintptr : 155
```

### [SYS\_pkey\_alloc ¶](#SYS_pkey_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L349)

```
SYS_pkey_alloc: uintptr : 330
```

### [SYS\_pkey\_free ¶](#SYS_pkey_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L350)

```
SYS_pkey_free: uintptr : 331
```

### [SYS\_pkey\_mprotect ¶](#SYS_pkey_mprotect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L348)

```
SYS_pkey_mprotect: uintptr : 329
```

### [SYS\_poll ¶](#SYS_poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L26)

```
SYS_poll: uintptr : 7
```

### [SYS\_ppoll ¶](#SYS_ppoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L290)

```
SYS_ppoll: uintptr : 271
```

### [SYS\_prctl ¶](#SYS_prctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L176)

```
SYS_prctl: uintptr : 157
```

### [SYS\_pread64 ¶](#SYS_pread64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L36)

```
SYS_pread64: uintptr : 17
```

### [SYS\_preadv ¶](#SYS_preadv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L314)

```
SYS_preadv: uintptr : 295
```

### [SYS\_preadv2 ¶](#SYS_preadv2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L346)

```
SYS_preadv2: uintptr : 327
```

### [SYS\_prlimit64 ¶](#SYS_prlimit64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L321)

```
SYS_prlimit64: uintptr : 302
```

### [SYS\_process\_madvise ¶](#SYS_process_madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L370)

```
SYS_process_madvise: uintptr : 440
```

### [SYS\_process\_vm\_readv ¶](#SYS_process_vm_readv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L329)

```
SYS_process_vm_readv: uintptr : 310
```

### [SYS\_process\_vm\_writev ¶](#SYS_process_vm_writev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L330)

```
SYS_process_vm_writev: uintptr : 311
```

### [SYS\_pselect6 ¶](#SYS_pselect6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L289)

```
SYS_pselect6: uintptr : 270
```

### [SYS\_ptrace ¶](#SYS_ptrace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L120)

```
SYS_ptrace: uintptr : 101
```

### [SYS\_putpmsg ¶](#SYS_putpmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L201)

```
SYS_putpmsg: uintptr : 182
```

### [SYS\_pwrite64 ¶](#SYS_pwrite64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L37)

```
SYS_pwrite64: uintptr : 18
```

### [SYS\_pwritev ¶](#SYS_pwritev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L315)

```
SYS_pwritev: uintptr : 296
```

### [SYS\_pwritev2 ¶](#SYS_pwritev2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L347)

```
SYS_pwritev2: uintptr : 328
```

### [SYS\_query\_module ¶](#SYS_query_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L197)

```
SYS_query_module: uintptr : 178
```

### [SYS\_quotactl ¶](#SYS_quotactl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L198)

```
SYS_quotactl: uintptr : 179
```

### [SYS\_read ¶](#SYS_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L19)

```
SYS_read: uintptr : 0
```

### [SYS\_readahead ¶](#SYS_readahead) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L206)

```
SYS_readahead: uintptr : 187
```

### [SYS\_readlink ¶](#SYS_readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L108)

```
SYS_readlink: uintptr : 89
```

### [SYS\_readlinkat ¶](#SYS_readlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L286)

```
SYS_readlinkat: uintptr : 267
```

### [SYS\_readv ¶](#SYS_readv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L38)

```
SYS_readv: uintptr : 19
```

### [SYS\_reboot ¶](#SYS_reboot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L188)

```
SYS_reboot: uintptr : 169
```

### [SYS\_recvfrom ¶](#SYS_recvfrom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L64)

```
SYS_recvfrom: uintptr : 45
```

### [SYS\_recvmmsg ¶](#SYS_recvmmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L318)

```
SYS_recvmmsg: uintptr : 299
```

### [SYS\_recvmsg ¶](#SYS_recvmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L66)

```
SYS_recvmsg: uintptr : 47
```

### [SYS\_remap\_file\_pages ¶](#SYS_remap_file_pages) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L235)

```
SYS_remap_file_pages: uintptr : 216
```

### [SYS\_removexattr ¶](#SYS_removexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L216)

```
SYS_removexattr: uintptr : 197
```

### [SYS\_rename ¶](#SYS_rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L101)

```
SYS_rename: uintptr : 82
```

### [SYS\_renameat ¶](#SYS_renameat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L283)

```
SYS_renameat: uintptr : 264
```

### [SYS\_renameat2 ¶](#SYS_renameat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L335)

```
SYS_renameat2: uintptr : 316
```

### [SYS\_request\_key ¶](#SYS_request_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L268)

```
SYS_request_key: uintptr : 249
```

### [SYS\_restart\_syscall ¶](#SYS_restart_syscall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L238)

```
SYS_restart_syscall: uintptr : 219
```

### [SYS\_rmdir ¶](#SYS_rmdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L103)

```
SYS_rmdir: uintptr : 84
```

### [SYS\_rseq ¶](#SYS_rseq) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L353)

```
SYS_rseq: uintptr : 334
```

### [SYS\_rt\_sigaction ¶](#SYS_rt_sigaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L32)

```
SYS_rt_sigaction: uintptr : 13
```

### [SYS\_rt\_sigpending ¶](#SYS_rt_sigpending) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L146)

```
SYS_rt_sigpending: uintptr : 127
```

### [SYS\_rt\_sigprocmask ¶](#SYS_rt_sigprocmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L33)

```
SYS_rt_sigprocmask: uintptr : 14
```

### [SYS\_rt\_sigqueueinfo ¶](#SYS_rt_sigqueueinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L148)

```
SYS_rt_sigqueueinfo: uintptr : 129
```

### [SYS\_rt\_sigreturn ¶](#SYS_rt_sigreturn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L34)

```
SYS_rt_sigreturn: uintptr : 15
```

### [SYS\_rt\_sigsuspend ¶](#SYS_rt_sigsuspend) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L149)

```
SYS_rt_sigsuspend: uintptr : 130
```

### [SYS\_rt\_sigtimedwait ¶](#SYS_rt_sigtimedwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L147)

```
SYS_rt_sigtimedwait: uintptr : 128
```

### [SYS\_rt\_tgsigqueueinfo ¶](#SYS_rt_tgsigqueueinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L316)

```
SYS_rt_tgsigqueueinfo: uintptr : 297
```

### [SYS\_sched\_get\_priority\_max ¶](#SYS_sched_get_priority_max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L165)

```
SYS_sched_get_priority_max: uintptr : 146
```

### [SYS\_sched\_get\_priority\_min ¶](#SYS_sched_get_priority_min) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L166)

```
SYS_sched_get_priority_min: uintptr : 147
```

### [SYS\_sched\_getaffinity ¶](#SYS_sched_getaffinity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L223)

```
SYS_sched_getaffinity: uintptr : 204
```

### [SYS\_sched\_getattr ¶](#SYS_sched_getattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L334)

```
SYS_sched_getattr: uintptr : 315
```

### [SYS\_sched\_getparam ¶](#SYS_sched_getparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L162)

```
SYS_sched_getparam: uintptr : 143
```

### [SYS\_sched\_getscheduler ¶](#SYS_sched_getscheduler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L164)

```
SYS_sched_getscheduler: uintptr : 145
```

### [SYS\_sched\_rr\_get\_interval ¶](#SYS_sched_rr_get_interval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L167)

```
SYS_sched_rr_get_interval: uintptr : 148
```

### [SYS\_sched\_setaffinity ¶](#SYS_sched_setaffinity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L222)

```
SYS_sched_setaffinity: uintptr : 203
```

### [SYS\_sched\_setattr ¶](#SYS_sched_setattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L333)

```
SYS_sched_setattr: uintptr : 314
```

### [SYS\_sched\_setparam ¶](#SYS_sched_setparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L161)

```
SYS_sched_setparam: uintptr : 142
```

### [SYS\_sched\_setscheduler ¶](#SYS_sched_setscheduler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L163)

```
SYS_sched_setscheduler: uintptr : 144
```

### [SYS\_sched\_yield ¶](#SYS_sched_yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L43)

```
SYS_sched_yield: uintptr : 24
```

### [SYS\_seccomp ¶](#SYS_seccomp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L336)

```
SYS_seccomp: uintptr : 317
```

### [SYS\_security ¶](#SYS_security) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L204)

```
SYS_security: uintptr : 185
```

### [SYS\_select ¶](#SYS_select) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L42)

```
SYS_select: uintptr : 23
```

### [SYS\_semctl ¶](#SYS_semctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L85)

```
SYS_semctl: uintptr : 66
```

### [SYS\_semget ¶](#SYS_semget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L83)

```
SYS_semget: uintptr : 64
```

### [SYS\_semop ¶](#SYS_semop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L84)

```
SYS_semop: uintptr : 65
```

### [SYS\_semtimedop ¶](#SYS_semtimedop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L239)

```
SYS_semtimedop: uintptr : 220
```

### [SYS\_sendfile ¶](#SYS_sendfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L59)

```
SYS_sendfile: uintptr : 40
```

### [SYS\_sendmmsg ¶](#SYS_sendmmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L326)

```
SYS_sendmmsg: uintptr : 307
```

### [SYS\_sendmsg ¶](#SYS_sendmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L65)

```
SYS_sendmsg: uintptr : 46
```

### [SYS\_sendto ¶](#SYS_sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L63)

```
SYS_sendto: uintptr : 44
```

### [SYS\_set\_mempolicy ¶](#SYS_set_mempolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L257)

```
SYS_set_mempolicy: uintptr : 238
```

### [SYS\_set\_robust\_list ¶](#SYS_set_robust_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L292)

```
SYS_set_robust_list: uintptr : 273
```

### [SYS\_set\_thread\_area ¶](#SYS_set_thread_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L224)

```
SYS_set_thread_area: uintptr : 205
```

### [SYS\_set\_tid\_address ¶](#SYS_set_tid_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L237)

```
SYS_set_tid_address: uintptr : 218
```

### [SYS\_setdomainname ¶](#SYS_setdomainname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L190)

```
SYS_setdomainname: uintptr : 171
```

### [SYS\_setfsgid ¶](#SYS_setfsgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L142)

```
SYS_setfsgid: uintptr : 123
```

### [SYS\_setfsuid ¶](#SYS_setfsuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L141)

```
SYS_setfsuid: uintptr : 122
```

### [SYS\_setgid ¶](#SYS_setgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L125)

```
SYS_setgid: uintptr : 106
```

### [SYS\_setgroups ¶](#SYS_setgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L135)

```
SYS_setgroups: uintptr : 116
```

### [SYS\_sethostname ¶](#SYS_sethostname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L189)

```
SYS_sethostname: uintptr : 170
```

### [SYS\_setitimer ¶](#SYS_setitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L57)

```
SYS_setitimer: uintptr : 38
```

### [SYS\_setns ¶](#SYS_setns) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L327)

```
SYS_setns: uintptr : 308
```

### [SYS\_setpgid ¶](#SYS_setpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L128)

```
SYS_setpgid: uintptr : 109
```

### [SYS\_setpriority ¶](#SYS_setpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L160)

```
SYS_setpriority: uintptr : 141
```

### [SYS\_setregid ¶](#SYS_setregid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L133)

```
SYS_setregid: uintptr : 114
```

### [SYS\_setresgid ¶](#SYS_setresgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L138)

```
SYS_setresgid: uintptr : 119
```

### [SYS\_setresuid ¶](#SYS_setresuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L136)

```
SYS_setresuid: uintptr : 117
```

### [SYS\_setreuid ¶](#SYS_setreuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L132)

```
SYS_setreuid: uintptr : 113
```

### [SYS\_setrlimit ¶](#SYS_setrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L179)

```
SYS_setrlimit: uintptr : 160
```

### [SYS\_setsid ¶](#SYS_setsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L131)

```
SYS_setsid: uintptr : 112
```

### [SYS\_setsockopt ¶](#SYS_setsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L73)

```
SYS_setsockopt: uintptr : 54
```

### [SYS\_settimeofday ¶](#SYS_settimeofday) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L183)

```
SYS_settimeofday: uintptr : 164
```

### [SYS\_setuid ¶](#SYS_setuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L124)

```
SYS_setuid: uintptr : 105
```

### [SYS\_setxattr ¶](#SYS_setxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L207)

```
SYS_setxattr: uintptr : 188
```

### [SYS\_shmat ¶](#SYS_shmat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L49)

```
SYS_shmat: uintptr : 30
```

### [SYS\_shmctl ¶](#SYS_shmctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L50)

```
SYS_shmctl: uintptr : 31
```

### [SYS\_shmdt ¶](#SYS_shmdt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L86)

```
SYS_shmdt: uintptr : 67
```

### [SYS\_shmget ¶](#SYS_shmget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L48)

```
SYS_shmget: uintptr : 29
```

### [SYS\_shutdown ¶](#SYS_shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L67)

```
SYS_shutdown: uintptr : 48
```

### [SYS\_sigaltstack ¶](#SYS_sigaltstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L150)

```
SYS_sigaltstack: uintptr : 131
```

### [SYS\_signalfd ¶](#SYS_signalfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L301)

```
SYS_signalfd: uintptr : 282
```

### [SYS\_signalfd4 ¶](#SYS_signalfd4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L308)

```
SYS_signalfd4: uintptr : 289
```

### [SYS\_socket ¶](#SYS_socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L60)

```
SYS_socket: uintptr : 41
```

### [SYS\_socketpair ¶](#SYS_socketpair) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L72)

```
SYS_socketpair: uintptr : 53
```

### [SYS\_splice ¶](#SYS_splice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L294)

```
SYS_splice: uintptr : 275
```

### [SYS\_stat ¶](#SYS_stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L23)

```
SYS_stat: uintptr : 4
```

### [SYS\_statfs ¶](#SYS_statfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L156)

```
SYS_statfs: uintptr : 137
```

### [SYS\_statx ¶](#SYS_statx) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L351)

```
SYS_statx: uintptr : 332
```

### [SYS\_swapoff ¶](#SYS_swapoff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L187)

```
SYS_swapoff: uintptr : 168
```

### [SYS\_swapon ¶](#SYS_swapon) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L186)

```
SYS_swapon: uintptr : 167
```

### [SYS\_symlink ¶](#SYS_symlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L107)

```
SYS_symlink: uintptr : 88
```

### [SYS\_symlinkat ¶](#SYS_symlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L285)

```
SYS_symlinkat: uintptr : 266
```

### [SYS\_sync ¶](#SYS_sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L181)

```
SYS_sync: uintptr : 162
```

### [SYS\_sync\_file\_range ¶](#SYS_sync_file_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L296)

```
SYS_sync_file_range: uintptr : 277
```

### [SYS\_syncfs ¶](#SYS_syncfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L325)

```
SYS_syncfs: uintptr : 306
```

### [SYS\_sysfs ¶](#SYS_sysfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L158)

```
SYS_sysfs: uintptr : 139
```

### [SYS\_sysinfo ¶](#SYS_sysinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L118)

```
SYS_sysinfo: uintptr : 99
```

### [SYS\_syslog ¶](#SYS_syslog) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L122)

```
SYS_syslog: uintptr : 103
```

### [SYS\_tee ¶](#SYS_tee) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L295)

```
SYS_tee: uintptr : 276
```

### [SYS\_tgkill ¶](#SYS_tgkill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L253)

```
SYS_tgkill: uintptr : 234
```

### [SYS\_time ¶](#SYS_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L220)

```
SYS_time: uintptr : 201
```

### [SYS\_timer\_create ¶](#SYS_timer_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L241)

```
SYS_timer_create: uintptr : 222
```

### [SYS\_timer\_delete ¶](#SYS_timer_delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L245)

```
SYS_timer_delete: uintptr : 226
```

### [SYS\_timer\_getoverrun ¶](#SYS_timer_getoverrun) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L244)

```
SYS_timer_getoverrun: uintptr : 225
```

### [SYS\_timer\_gettime ¶](#SYS_timer_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L243)

```
SYS_timer_gettime: uintptr : 224
```

### [SYS\_timer\_settime ¶](#SYS_timer_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L242)

```
SYS_timer_settime: uintptr : 223
```

### [SYS\_timerfd\_create ¶](#SYS_timerfd_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L302)

```
SYS_timerfd_create: uintptr : 283
```

### [SYS\_timerfd\_gettime ¶](#SYS_timerfd_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L306)

```
SYS_timerfd_gettime: uintptr : 287
```

### [SYS\_timerfd\_settime ¶](#SYS_timerfd_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L305)

```
SYS_timerfd_settime: uintptr : 286
```

### [SYS\_times ¶](#SYS_times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L119)

```
SYS_times: uintptr : 100
```

### [SYS\_tkill ¶](#SYS_tkill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L219)

```
SYS_tkill: uintptr : 200
```

### [SYS\_truncate ¶](#SYS_truncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L95)

```
SYS_truncate: uintptr : 76
```

### [SYS\_tuxcall ¶](#SYS_tuxcall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L203)

```
SYS_tuxcall: uintptr : 184
```

### [SYS\_umask ¶](#SYS_umask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L114)

```
SYS_umask: uintptr : 95
```

### [SYS\_umount2 ¶](#SYS_umount2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L185)

```
SYS_umount2: uintptr : 166
```

### [SYS\_uname ¶](#SYS_uname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L82)

```
SYS_uname: uintptr : 63
```

### [SYS\_unlink ¶](#SYS_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L106)

```
SYS_unlink: uintptr : 87
```

### [SYS\_unlinkat ¶](#SYS_unlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L282)

```
SYS_unlinkat: uintptr : 263
```

### [SYS\_unshare ¶](#SYS_unshare) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L291)

```
SYS_unshare: uintptr : 272
```

### [SYS\_uselib ¶](#SYS_uselib) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L153)

```
SYS_uselib: uintptr : 134
```

### [SYS\_userfaultfd ¶](#SYS_userfaultfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L342)

```
SYS_userfaultfd: uintptr : 323
```

### [SYS\_ustat ¶](#SYS_ustat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L155)

```
SYS_ustat: uintptr : 136
```

### [SYS\_utime ¶](#SYS_utime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L151)

```
SYS_utime: uintptr : 132
```

### [SYS\_utimensat ¶](#SYS_utimensat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L299)

```
SYS_utimensat: uintptr : 280
```

### [SYS\_utimes ¶](#SYS_utimes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L254)

```
SYS_utimes: uintptr : 235
```

### [SYS\_vfork ¶](#SYS_vfork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L77)

```
SYS_vfork: uintptr : 58
```

### [SYS\_vhangup ¶](#SYS_vhangup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L172)

```
SYS_vhangup: uintptr : 153
```

### [SYS\_vmsplice ¶](#SYS_vmsplice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L297)

```
SYS_vmsplice: uintptr : 278
```

### [SYS\_vserver ¶](#SYS_vserver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L255)

```
SYS_vserver: uintptr : 236
```

### [SYS\_wait4 ¶](#SYS_wait4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L80)

```
SYS_wait4: uintptr : 61
```

### [SYS\_waitid ¶](#SYS_waitid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L266)

```
SYS_waitid: uintptr : 247
```

### [SYS\_write ¶](#SYS_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L20)

```
SYS_write: uintptr : 1
```

### [SYS\_writev ¶](#SYS_writev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L39)

```
SYS_writev: uintptr : 20
```

## Variables

This section is empty.

## Procedures

### [get\_errno ¶](#get_errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2426)

```
get_errno :: proc "contextless" (res: int) -> i32 {…}
```

### [sys\_accept ¶](#sys_accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2369)

```
sys_accept :: proc "contextless" (sd: int, addr: rawptr, len: rawptr) -> int {…}
```

### [sys\_access ¶](#sys_access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2176)

```
sys_access :: proc "contextless" (path: cstring, mask: int) -> int {…}
```

### [sys\_bind ¶](#sys_bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2377)

```
sys_bind :: proc "contextless" (sd: int, addr: rawptr, len: i32) -> int {…}
```

### [sys\_chdir ¶](#sys_chdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2188)

```
sys_chdir :: proc "contextless" (path: cstring) -> int {…}
```

### [sys\_chmod ¶](#sys_chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2196)

```
sys_chmod :: proc "contextless" (path: cstring, mode: uint) -> int {…}
```

### [sys\_chown ¶](#sys_chown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2208)

```
sys_chown :: proc "contextless" (path: cstring, user: int, group: int) -> int {…}
```

### [sys\_close ¶](#sys_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2088)

```
sys_close :: proc "contextless" (fd: int) -> int {…}
```

### [sys\_connect ¶](#sys_connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2365)

```
sys_connect :: proc "contextless" (sd: int, addr: rawptr, len: i32) -> int {…}
```

### [sys\_dup2 ¶](#sys_dup2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2326)

```
sys_dup2 :: proc "contextless" (oldfd: int, newfd: int) -> int {…}
```

### [sys\_fchdir ¶](#sys_fchdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2192)

```
sys_fchdir :: proc "contextless" (fd: int) -> int {…}
```

### [sys\_fchmod ¶](#sys_fchmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2204)

```
sys_fchmod :: proc "contextless" (fd: int, mode: uint) -> int {…}
```

### [sys\_fchown ¶](#sys_fchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2216)

```
sys_fchown :: proc "contextless" (fd: int, user: int, group: int) -> int {…}
```

### [sys\_fcntl ¶](#sys_fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2405)

```
sys_fcntl :: proc "contextless" (fd: int, cmd: int, arg: int) -> int {…}
```

### [sys\_fork ¶](#sys_fork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2316)

```
sys_fork :: proc "contextless" () -> int {…}
```

### [sys\_fstat ¶](#sys_fstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2142)

```
sys_fstat :: proc "contextless" (fd: int, stat: rawptr) -> int {…}
```

### [sys\_fsync ¶](#sys_fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2308)

```
sys_fsync :: proc "contextless" (fd: int) -> int {…}
```

### [sys\_ftruncate ¶](#sys_ftruncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2298)

```
sys_ftruncate :: proc "contextless" (fd: int, length: i64) -> int {…}
```

### [sys\_getcwd ¶](#sys_getcwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2184)

```
sys_getcwd :: proc "contextless" (buf: rawptr, size: uint) -> int {…}
```

### [sys\_getdents64 ¶](#sys_getdents64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2312)

```
sys_getdents64 :: proc "contextless" (fd: int, dirent: rawptr, count: int) -> int {…}
```

### [sys\_getrandom ¶](#sys_getrandom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2072)

```
sys_getrandom :: proc "contextless" (buf: [^]u8, buflen: uint, flags: int) -> int {…}
```

### [sys\_gettid ¶](#sys_gettid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2068)

```
sys_gettid :: proc "contextless" () -> int {…}
```

### [sys\_lchown ¶](#sys_lchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2220)

```
sys_lchown :: proc "contextless" (path: cstring, user: int, group: int) -> int {…}
```

### [sys\_link ¶](#sys_link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2236)

```
sys_link :: proc "contextless" (old_name: cstring, new_name: cstring) -> int {…}
```

### [sys\_listen ¶](#sys_listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2373)

```
sys_listen :: proc "contextless" (sd: int, backlog: int) -> int {…}
```

### [sys\_lseek ¶](#sys_lseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2120)

```
sys_lseek :: proc "contextless" (fd: int, offset: i64, whence: int) -> i64 {…}
```

### [sys\_lstat ¶](#sys_lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2150)

```
sys_lstat :: proc "contextless" (path: cstring, stat: rawptr) -> int {…}
```

### [sys\_madvise ¶](#sys_madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2350)

```
sys_madvise :: proc "contextless" (addr: rawptr, length: uint, advice: int) -> int {…}
```

### [sys\_mkdir ¶](#sys_mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2264)

```
sys_mkdir :: proc "contextless" (path: cstring, mode: uint) -> int {…}
```

### [sys\_mkdirat ¶](#sys_mkdirat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2272)

```
sys_mkdirat :: proc "contextless" (dfd: int, path: cstring, mode: uint) -> int {…}
```

### [sys\_mknod ¶](#sys_mknod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2276)

```
sys_mknod :: proc "contextless" (path: cstring, mode: uint, dev: int) -> int {…}
```

### [sys\_mknodat ¶](#sys_mknodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2284)

```
sys_mknodat :: proc "contextless" (dfd: int, path: cstring, mode: uint, dev: int) -> int {…}
```

### [sys\_mmap ¶](#sys_mmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2334)

```
sys_mmap :: proc "contextless" (
	addr:            rawptr, 
	length:          uint, 
	prot, flags, fd: int, 
	offset:          uintptr, 
) -> int {…}
```

### [sys\_mprotect ¶](#sys_mprotect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2346)

```
sys_mprotect :: proc "contextless" (addr: rawptr, length: uint, prot: int) -> int {…}
```

### [sys\_mremap ¶](#sys_mremap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2338)

```
sys_mremap :: proc "contextless" (addr: rawptr, old_length, new_length: uint, flags: int, new_addr: rawptr = nil) -> int {…}
```

### [sys\_munmap ¶](#sys_munmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2342)

```
sys_munmap :: proc "contextless" (addr: rawptr, length: uint) -> int {…}
```

### [sys\_open ¶](#sys_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2076)

```
sys_open :: proc "contextless" (path: cstring, flags: int, mode: uint = 0o000) -> int {…}
```

### [sys\_openat ¶](#sys_openat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2084)

```
sys_openat :: proc "contextless" (dfd: int, path: cstring, flags: int, mode: uint = 0o000) -> int {…}
```

### [sys\_perf\_event\_open ¶](#sys_perf_event_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2397)

```
sys_perf_event_open :: proc "contextless" (event_attr: rawptr, pid: i32, cpu: i32, group_fd: i32, flags: u32) -> int {…}
```

### [sys\_personality ¶](#sys_personality) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2401)

```
sys_personality :: proc(persona: u64) -> int {…}
```

### [sys\_pipe2 ¶](#sys_pipe2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2323)

```
sys_pipe2 :: proc "contextless" (fds: rawptr, flags: int) -> int {…}
```

### [sys\_poll ¶](#sys_poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2409)

```
sys_poll :: proc "contextless" (fds: rawptr, nfds: uint, timeout: int) -> int {…}
```

### [sys\_ppoll ¶](#sys_ppoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2422)

```
sys_ppoll :: proc "contextless" (fds: rawptr, nfds: uint, timeout: rawptr, sigmask: rawptr, sigsetsize: uint) -> int {…}
```

### [sys\_pread ¶](#sys_pread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2096)

```
sys_pread :: proc "contextless" (fd: int, buf: rawptr, size: uint, offset: i64) -> int {…}
```

### [sys\_pwrite ¶](#sys_pwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2110)

```
sys_pwrite :: proc "contextless" (fd: int, buf: rawptr, size: uint, offset: i64) -> int {…}
```

### [sys\_read ¶](#sys_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2092)

```
sys_read :: proc "contextless" (fd: int, buf: rawptr, size: uint) -> int {…}
```

### [sys\_readlink ¶](#sys_readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2160)

```
sys_readlink :: proc "contextless" (path: cstring, buf: rawptr, bufsiz: uint) -> int {…}
```

### [sys\_recvfrom ¶](#sys_recvfrom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2385)

```
sys_recvfrom :: proc "contextless" (
	sd:    int, 
	buf:   rawptr, 
	len:   uint, 
	flags: int, 
	addr:  rawptr, 
	alen:  uintptr, 
) -> i64 {…}
```

### [sys\_rename ¶](#sys_rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2228)

```
sys_rename :: proc "contextless" (old, new: cstring) -> int {…}
```

### [sys\_rmdir ¶](#sys_rmdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2256)

```
sys_rmdir :: proc "contextless" (path: cstring) -> int {…}
```

### [sys\_sendto ¶](#sys_sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2389)

```
sys_sendto :: proc "contextless" (
	sd:    int, 
	buf:   rawptr, 
	len:   uint, 
	flags: int, 
	addr:  rawptr, 
	alen:  i32, 
) -> i64 {…}
```

### [sys\_setsockopt ¶](#sys_setsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2381)

```
sys_setsockopt :: proc "contextless" (sd: int, level: int, optname: int, optval: rawptr, optlen: i32) -> int {…}
```

### [sys\_shutdown ¶](#sys_shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2393)

```
sys_shutdown :: proc "contextless" (sd: int, how: int) -> int {…}
```

### [sys\_socket ¶](#sys_socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2361)

```
sys_socket :: proc "contextless" (domain: int, type: int, protocol: int) -> int {…}
```

### [sys\_stat ¶](#sys_stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2132)

```
sys_stat :: proc "contextless" (path: cstring, stat: rawptr) -> int {…}
```

### [sys\_symlink ¶](#sys_symlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2168)

```
sys_symlink :: proc "contextless" (old_name: cstring, new_name: cstring) -> int {…}
```

### [sys\_truncate ¶](#sys_truncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2288)

```
sys_truncate :: proc "contextless" (path: cstring, length: i64) -> int {…}
```

### [sys\_unlink ¶](#sys_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2244)

```
sys_unlink :: proc "contextless" (path: cstring) -> int {…}
```

### [sys\_unlinkat ¶](#sys_unlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2252)

```
sys_unlinkat :: proc "contextless" (dfd: int, path: cstring, flag: int = 0) -> int {…}
```

### [sys\_utimensat ¶](#sys_utimensat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2357)

```
sys_utimensat :: proc "contextless" (dfd: int, path: cstring, times: rawptr, flags: int) -> int {…}
```

 

NOTE: Unsure about if this works directly on 32 bit archs. It may need 32 bit version of the time struct.
As of Linux 5.1, there is a utimensat\_time64 function. Maybe use this in the future?

### [sys\_write ¶](#sys_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin#L2106)

```
sys_write :: proc "contextless" (fd: int, buf: rawptr, size: uint) -> int {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [syscalls\_linux.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/syscalls_linux.odin)
* [unix.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/unix/unix.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.976491000 +0000 UTC`

* [Types](#pkg-Types)
  + [Perf\_Capabilities](#Perf_Capabilities)
  + [Perf\_Event\_Attr](#Perf_Event_Attr)
  + [Perf\_Event\_Flag](#Perf_Event_Flag)
  + [Perf\_Event\_Flags](#Perf_Event_Flags)
  + [Perf\_Event\_mmap\_Page](#Perf_Event_mmap_Page)
  + [Perf\_Field1](#Perf_Field1)
  + [Perf\_Field2](#Perf_Field2)
  + [Perf\_Flag](#Perf_Flag)
  + [Perf\_Flags](#Perf_Flags)
  + [Perf\_Hardware\_Id](#Perf_Hardware_Id)
  + [Perf\_Sample](#Perf_Sample)
  + [Perf\_Type\_Id](#Perf_Type_Id)
  + [Perf\_Wakeup](#Perf_Wakeup)
  + [timespec](#timespec)
* [Constants](#pkg-Constants)
  + [AT\_FDCWD](#AT_FDCWD)
  + [AT\_REMOVEDIR](#AT_REMOVEDIR)
  + [AT\_SYMLINK\_FOLLOW](#AT_SYMLINK_FOLLOW)
  + [AT\_SYMLINK\_NOFOLLOW](#AT_SYMLINK_NOFOLLOW)
  + [MADV\_DODUMP](#MADV_DODUMP)
  + [MADV\_DOFORK](#MADV_DOFORK)
  + [MADV\_DONTDUMP](#MADV_DONTDUMP)
  + [MADV\_DONTFORK](#MADV_DONTFORK)
  + [MADV\_DONTNEED](#MADV_DONTNEED)
  + [MADV\_FREE](#MADV_FREE)
  + [MADV\_HUGEPAGE](#MADV_HUGEPAGE)
  + [MADV\_HWPOISON](#MADV_HWPOISON)
  + [MADV\_KEEPONFORK](#MADV_KEEPONFORK)
  + [MADV\_MERGEABLE](#MADV_MERGEABLE)
  + [MADV\_NOHUGEPAGE](#MADV_NOHUGEPAGE)
  + [MADV\_NORMAL](#MADV_NORMAL)
  + [MADV\_RANDOM](#MADV_RANDOM)
  + [MADV\_REMOVE](#MADV_REMOVE)
  + [MADV\_SEQUENTIAL](#MADV_SEQUENTIAL)
  + [MADV\_UNMERGEABLE](#MADV_UNMERGEABLE)
  + [MADV\_WILLNEED](#MADV_WILLNEED)
  + [MADV\_WIPEONFORK](#MADV_WIPEONFORK)
  + [MAP\_ANONYMOUS](#MAP_ANONYMOUS)
  + [MAP\_FIXED](#MAP_FIXED)
  + [MAP\_PRIVATE](#MAP_PRIVATE)
  + [MAP\_SHARED](#MAP_SHARED)
  + [MAP\_SHARED\_VALIDATE](#MAP_SHARED_VALIDATE)
  + [MREMAP\_DONTUNMAP](#MREMAP_DONTUNMAP)
  + [MREMAP\_FIXED](#MREMAP_FIXED)
  + [MREMAP\_MAYMOVE](#MREMAP_MAYMOVE)
  + [O\_CLOEXEC](#O_CLOEXEC)
  + [POLLERR](#POLLERR)
  + [POLLFREE](#POLLFREE)
  + [POLLHUP](#POLLHUP)
  + [POLLIN](#POLLIN)
  + [POLLMSG](#POLLMSG)
  + [POLLNVAL](#POLLNVAL)
  + [POLLOUT](#POLLOUT)
  + [POLLPRI](#POLLPRI)
  + [POLLRDBAND](#POLLRDBAND)
  + [POLLRDHUP](#POLLRDHUP)
  + [POLLRDNORM](#POLLRDNORM)
  + [POLLREMOVE](#POLLREMOVE)
  + [POLLWRBAND](#POLLWRBAND)
  + [POLLWRNORM](#POLLWRNORM)
  + [POLL\_BUSY\_LOOP](#POLL_BUSY_LOOP)
  + [PROT\_EXEC](#PROT_EXEC)
  + [PROT\_GROWSDOWN](#PROT_GROWSDOWN)
  + [PROT\_GROWSUP](#PROT_GROWSUP)
  + [PROT\_NONE](#PROT_NONE)
  + [PROT\_READ](#PROT_READ)
  + [PROT\_WRITE](#PROT_WRITE)
  + [SYS\_\_sysctl](#SYS__sysctl)
  + [SYS\_accept](#SYS_accept)
  + [SYS\_accept4](#SYS_accept4)
  + [SYS\_access](#SYS_access)
  + [SYS\_acct](#SYS_acct)
  + [SYS\_add\_key](#SYS_add_key)
  + [SYS\_adjtimex](#SYS_adjtimex)
  + [SYS\_afs\_syscall](#SYS_afs_syscall)
  + [SYS\_alarm](#SYS_alarm)
  + [SYS\_arch\_prctl](#SYS_arch_prctl)
  + [SYS\_bind](#SYS_bind)
  + [SYS\_bpf](#SYS_bpf)
  + [SYS\_brk](#SYS_brk)
  + [SYS\_capget](#SYS_capget)
  + [SYS\_capset](#SYS_capset)
  + [SYS\_chdir](#SYS_chdir)
  + [SYS\_chmod](#SYS_chmod)
  + [SYS\_chown](#SYS_chown)
  + [SYS\_chroot](#SYS_chroot)
  + [SYS\_clock\_adjtime](#SYS_clock_adjtime)
  + [SYS\_clock\_getres](#SYS_clock_getres)
  + [SYS\_clock\_gettime](#SYS_clock_gettime)
  + [SYS\_clock\_nanosleep](#SYS_clock_nanosleep)
  + [SYS\_clock\_settime](#SYS_clock_settime)
  + [SYS\_clone](#SYS_clone)
  + [SYS\_clone3](#SYS_clone3)
  + [SYS\_close](#SYS_close)
  + [SYS\_close\_range](#SYS_close_range)
  + [SYS\_connect](#SYS_connect)
  + [SYS\_copy\_file\_range](#SYS_copy_file_range)
  + [SYS\_creat](#SYS_creat)
  + [SYS\_create\_module](#SYS_create_module)
  + [SYS\_delete\_module](#SYS_delete_module)
  + [SYS\_dup](#SYS_dup)
  + [SYS\_dup2](#SYS_dup2)
  + [SYS\_dup3](#SYS_dup3)
  + [SYS\_epoll\_create](#SYS_epoll_create)
  + [SYS\_epoll\_create1](#SYS_epoll_create1)
  + [SYS\_epoll\_ctl](#SYS_epoll_ctl)
  + [SYS\_epoll\_ctl\_old](#SYS_epoll_ctl_old)
  + [SYS\_epoll\_pwait](#SYS_epoll_pwait)
  + [SYS\_epoll\_pwait2](#SYS_epoll_pwait2)
  + [SYS\_epoll\_wait](#SYS_epoll_wait)
  + [SYS\_epoll\_wait\_old](#SYS_epoll_wait_old)
  + [SYS\_eventfd](#SYS_eventfd)
  + [SYS\_eventfd2](#SYS_eventfd2)
  + [SYS\_execve](#SYS_execve)
  + [SYS\_execveat](#SYS_execveat)
  + [SYS\_exit](#SYS_exit)
  + [SYS\_exit\_group](#SYS_exit_group)
  + [SYS\_faccessat](#SYS_faccessat)
  + [SYS\_faccessat2](#SYS_faccessat2)
  + [SYS\_fadvise64](#SYS_fadvise64)
  + [SYS\_fallocate](#SYS_fallocate)
  + [SYS\_fanotify\_init](#SYS_fanotify_init)
  + [SYS\_fanotify\_mark](#SYS_fanotify_mark)
  + [SYS\_fchdir](#SYS_fchdir)
  + [SYS\_fchmod](#SYS_fchmod)
  + [SYS\_fchmodat](#SYS_fchmodat)
  + [SYS\_fchown](#SYS_fchown)
  + [SYS\_fchownat](#SYS_fchownat)
  + [SYS\_fcntl](#SYS_fcntl)
  + [SYS\_fdatasync](#SYS_fdatasync)
  + [SYS\_fgetxattr](#SYS_fgetxattr)
  + [SYS\_finit\_module](#SYS_finit_module)
  + [SYS\_flistxattr](#SYS_flistxattr)
  + [SYS\_flock](#SYS_flock)
  + [SYS\_fork](#SYS_fork)
  + [SYS\_fremovexattr](#SYS_fremovexattr)
  + [SYS\_fsconfig](#SYS_fsconfig)
  + [SYS\_fsetxattr](#SYS_fsetxattr)
  + [SYS\_fsmount](#SYS_fsmount)
  + [SYS\_fsopen](#SYS_fsopen)
  + [SYS\_fspick](#SYS_fspick)
  + [SYS\_fstat](#SYS_fstat)
  + [SYS\_fstatat](#SYS_fstatat)
  + [SYS\_fstatfs](#SYS_fstatfs)
  + [SYS\_fsync](#SYS_fsync)
  + [SYS\_ftruncate](#SYS_ftruncate)
  + [SYS\_futex](#SYS_futex)
  + [SYS\_futimesat](#SYS_futimesat)
  + [SYS\_get\_kernel\_syms](#SYS_get_kernel_syms)
  + [SYS\_get\_mempolicy](#SYS_get_mempolicy)
  + [SYS\_get\_robust\_list](#SYS_get_robust_list)
  + [SYS\_get\_thread\_area](#SYS_get_thread_area)
  + [SYS\_getcpu](#SYS_getcpu)
  + [SYS\_getcwd](#SYS_getcwd)
  + [SYS\_getdents](#SYS_getdents)
  + [SYS\_getdents64](#SYS_getdents64)
  + [SYS\_getegid](#SYS_getegid)
  + [SYS\_geteuid](#SYS_geteuid)
  + [SYS\_getgid](#SYS_getgid)
  + [SYS\_getgroups](#SYS_getgroups)
  + [SYS\_getitimer](#SYS_getitimer)
  + [SYS\_getpeername](#SYS_getpeername)
  + [SYS\_getpgid](#SYS_getpgid)
  + [SYS\_getpgrp](#SYS_getpgrp)
  + [SYS\_getpid](#SYS_getpid)
  + [SYS\_getpmsg](#SYS_getpmsg)
  + [SYS\_getppid](#SYS_getppid)
  + [SYS\_getpriority](#SYS_getpriority)
  + [SYS\_getrandom](#SYS_getrandom)
  + [SYS\_getresgid](#SYS_getresgid)
  + [SYS\_getresuid](#SYS_getresuid)
  + [SYS\_getrlimit](#SYS_getrlimit)
  + [SYS\_getrusage](#SYS_getrusage)
  + [SYS\_getsid](#SYS_getsid)
  + [SYS\_getsockname](#SYS_getsockname)
  + [SYS\_getsockopt](#SYS_getsockopt)
  + [SYS\_gettid](#SYS_gettid)
  + [SYS\_gettimeofday](#SYS_gettimeofday)
  + [SYS\_getuid](#SYS_getuid)
  + [SYS\_getxattr](#SYS_getxattr)
  + [SYS\_init\_module](#SYS_init_module)
  + [SYS\_inotify\_add\_watch](#SYS_inotify_add_watch)
  + [SYS\_inotify\_init](#SYS_inotify_init)
  + [SYS\_inotify\_init1](#SYS_inotify_init1)
  + [SYS\_inotify\_rm\_watch](#SYS_inotify_rm_watch)
  + [SYS\_io\_cancel](#SYS_io_cancel)
  + [SYS\_io\_destroy](#SYS_io_destroy)
  + [SYS\_io\_getevents](#SYS_io_getevents)
  + [SYS\_io\_pgetevents](#SYS_io_pgetevents)
  + [SYS\_io\_setup](#SYS_io_setup)
  + [SYS\_io\_submit](#SYS_io_submit)
  + [SYS\_io\_uring\_enter](#SYS_io_uring_enter)
  + [SYS\_io\_uring\_register](#SYS_io_uring_register)
  + [SYS\_io\_uring\_setup](#SYS_io_uring_setup)
  + [SYS\_ioctl](#SYS_ioctl)
  + [SYS\_ioperm](#SYS_ioperm)
  + [SYS\_iopl](#SYS_iopl)
  + [SYS\_ioprio\_get](#SYS_ioprio_get)
  + [SYS\_ioprio\_set](#SYS_ioprio_set)
  + [SYS\_kcmp](#SYS_kcmp)
  + [SYS\_kexec\_file\_load](#SYS_kexec_file_load)
  + [SYS\_kexec\_load](#SYS_kexec_load)
  + [SYS\_keyctl](#SYS_keyctl)
  + [SYS\_kill](#SYS_kill)
  + [SYS\_landlock\_add\_rule](#SYS_landlock_add_rule)
  + [SYS\_landlock\_create\_ruleset](#SYS_landlock_create_ruleset)
  + [SYS\_landlock\_restrict\_self](#SYS_landlock_restrict_self)
  + [SYS\_lchown](#SYS_lchown)
  + [SYS\_lgetxattr](#SYS_lgetxattr)
  + [SYS\_link](#SYS_link)
  + [SYS\_linkat](#SYS_linkat)
  + [SYS\_listen](#SYS_listen)
  + [SYS\_listxattr](#SYS_listxattr)
  + [SYS\_llistxattr](#SYS_llistxattr)
  + [SYS\_lookup\_dcookie](#SYS_lookup_dcookie)
  + [SYS\_lremovexattr](#SYS_lremovexattr)
  + [SYS\_lseek](#SYS_lseek)
  + [SYS\_lsetxattr](#SYS_lsetxattr)
  + [SYS\_lstat](#SYS_lstat)
  + [SYS\_madvise](#SYS_madvise)
  + [SYS\_mbind](#SYS_mbind)
  + [SYS\_membarrier](#SYS_membarrier)
  + [SYS\_memfd\_create](#SYS_memfd_create)
  + [SYS\_memfd\_secret](#SYS_memfd_secret)
  + [SYS\_migrate\_pages](#SYS_migrate_pages)
  + [SYS\_mincore](#SYS_mincore)
  + [SYS\_mkdir](#SYS_mkdir)
  + [SYS\_mkdirat](#SYS_mkdirat)
  + [SYS\_mknod](#SYS_mknod)
  + [SYS\_mknodat](#SYS_mknodat)
  + [SYS\_mlock](#SYS_mlock)
  + [SYS\_mlock2](#SYS_mlock2)
  + [SYS\_mlockall](#SYS_mlockall)
  + [SYS\_mmap](#SYS_mmap)
  + [SYS\_modify\_ldt](#SYS_modify_ldt)
  + [SYS\_mount](#SYS_mount)
  + [SYS\_mount\_setattr](#SYS_mount_setattr)
  + [SYS\_move\_mount](#SYS_move_mount)
  + [SYS\_move\_pages](#SYS_move_pages)
  + [SYS\_mprotect](#SYS_mprotect)
  + [SYS\_mq\_getsetattr](#SYS_mq_getsetattr)
  + [SYS\_mq\_notify](#SYS_mq_notify)
  + [SYS\_mq\_open](#SYS_mq_open)
  + [SYS\_mq\_timedreceive](#SYS_mq_timedreceive)
  + [SYS\_mq\_timedsend](#SYS_mq_timedsend)
  + [SYS\_mq\_unlink](#SYS_mq_unlink)
  + [SYS\_mremap](#SYS_mremap)
  + [SYS\_msgctl](#SYS_msgctl)
  + [SYS\_msgget](#SYS_msgget)
  + [SYS\_msgrcv](#SYS_msgrcv)
  + [SYS\_msgsnd](#SYS_msgsnd)
  + [SYS\_msync](#SYS_msync)
  + [SYS\_munlock](#SYS_munlock)
  + [SYS\_munlockall](#SYS_munlockall)
  + [SYS\_munmap](#SYS_munmap)
  + [SYS\_name\_to\_handle\_at](#SYS_name_to_handle_at)
  + [SYS\_nanosleep](#SYS_nanosleep)
  + [SYS\_nfsservctl](#SYS_nfsservctl)
  + [SYS\_open](#SYS_open)
  + [SYS\_open\_by\_handle\_at](#SYS_open_by_handle_at)
  + [SYS\_open\_tree](#SYS_open_tree)
  + [SYS\_openat](#SYS_openat)
  + [SYS\_openat2](#SYS_openat2)
  + [SYS\_pause](#SYS_pause)
  + [SYS\_perf\_event\_open](#SYS_perf_event_open)
  + [SYS\_personality](#SYS_personality)
  + [SYS\_pidfd\_getfd](#SYS_pidfd_getfd)
  + [SYS\_pidfd\_open](#SYS_pidfd_open)
  + [SYS\_pidfd\_send\_signal](#SYS_pidfd_send_signal)
  + [SYS\_pipe](#SYS_pipe)
  + [SYS\_pipe2](#SYS_pipe2)
  + [SYS\_pivot\_root](#SYS_pivot_root)
  + [SYS\_pkey\_alloc](#SYS_pkey_alloc)
  + [SYS\_pkey\_free](#SYS_pkey_free)
  + [SYS\_pkey\_mprotect](#SYS_pkey_mprotect)
  + [SYS\_poll](#SYS_poll)
  + [SYS\_ppoll](#SYS_ppoll)
  + [SYS\_prctl](#SYS_prctl)
  + [SYS\_pread64](#SYS_pread64)
  + [SYS\_preadv](#SYS_preadv)
  + [SYS\_preadv2](#SYS_preadv2)
  + [SYS\_prlimit64](#SYS_prlimit64)
  + [SYS\_process\_madvise](#SYS_process_madvise)
  + [SYS\_process\_vm\_readv](#SYS_process_vm_readv)
  + [SYS\_process\_vm\_writev](#SYS_process_vm_writev)
  + [SYS\_pselect6](#SYS_pselect6)
  + [SYS\_ptrace](#SYS_ptrace)
  + [SYS\_putpmsg](#SYS_putpmsg)
  + [SYS\_pwrite64](#SYS_pwrite64)
  + [SYS\_pwritev](#SYS_pwritev)
  + [SYS\_pwritev2](#SYS_pwritev2)
  + [SYS\_query\_module](#SYS_query_module)
  + [SYS\_quotactl](#SYS_quotactl)
  + [SYS\_read](#SYS_read)
  + [SYS\_readahead](#SYS_readahead)
  + [SYS\_readlink](#SYS_readlink)
  + [SYS\_readlinkat](#SYS_readlinkat)
  + [SYS\_readv](#SYS_readv)
  + [SYS\_reboot](#SYS_reboot)
  + [SYS\_recvfrom](#SYS_recvfrom)
  + [SYS\_recvmmsg](#SYS_recvmmsg)
  + [SYS\_recvmsg](#SYS_recvmsg)
  + [SYS\_remap\_file\_pages](#SYS_remap_file_pages)
  + [SYS\_removexattr](#SYS_removexattr)
  + [SYS\_rename](#SYS_rename)
  + [SYS\_renameat](#SYS_renameat)
  + [SYS\_renameat2](#SYS_renameat2)
  + [SYS\_request\_key](#SYS_request_key)
  + [SYS\_restart\_syscall](#SYS_restart_syscall)
  + [SYS\_rmdir](#SYS_rmdir)
  + [SYS\_rseq](#SYS_rseq)
  + [SYS\_rt\_sigaction](#SYS_rt_sigaction)
  + [SYS\_rt\_sigpending](#SYS_rt_sigpending)
  + [SYS\_rt\_sigprocmask](#SYS_rt_sigprocmask)
  + [SYS\_rt\_sigqueueinfo](#SYS_rt_sigqueueinfo)
  + [SYS\_rt\_sigreturn](#SYS_rt_sigreturn)
  + [SYS\_rt\_sigsuspend](#SYS_rt_sigsuspend)
  + [SYS\_rt\_sigtimedwait](#SYS_rt_sigtimedwait)
  + [SYS\_rt\_tgsigqueueinfo](#SYS_rt_tgsigqueueinfo)
  + [SYS\_sched\_get\_priority\_max](#SYS_sched_get_priority_max)
  + [SYS\_sched\_get\_priority\_min](#SYS_sched_get_priority_min)
  + [SYS\_sched\_getaffinity](#SYS_sched_getaffinity)
  + [SYS\_sched\_getattr](#SYS_sched_getattr)
  + [SYS\_sched\_getparam](#SYS_sched_getparam)
  + [SYS\_sched\_getscheduler](#SYS_sched_getscheduler)
  + [SYS\_sched\_rr\_get\_interval](#SYS_sched_rr_get_interval)
  + [SYS\_sched\_setaffinity](#SYS_sched_setaffinity)
  + [SYS\_sched\_setattr](#SYS_sched_setattr)
  + [SYS\_sched\_setparam](#SYS_sched_setparam)
  + [SYS\_sched\_setscheduler](#SYS_sched_setscheduler)
  + [SYS\_sched\_yield](#SYS_sched_yield)
  + [SYS\_seccomp](#SYS_seccomp)
  + [SYS\_security](#SYS_security)
  + [SYS\_select](#SYS_select)
  + [SYS\_semctl](#SYS_semctl)
  + [SYS\_semget](#SYS_semget)
  + [SYS\_semop](#SYS_semop)
  + [SYS\_semtimedop](#SYS_semtimedop)
  + [SYS\_sendfile](#SYS_sendfile)
  + [SYS\_sendmmsg](#SYS_sendmmsg)
  + [SYS\_sendmsg](#SYS_sendmsg)
  + [SYS\_sendto](#SYS_sendto)
  + [SYS\_set\_mempolicy](#SYS_set_mempolicy)
  + [SYS\_set\_robust\_list](#SYS_set_robust_list)
  + [SYS\_set\_thread\_area](#SYS_set_thread_area)
  + [SYS\_set\_tid\_address](#SYS_set_tid_address)
  + [SYS\_setdomainname](#SYS_setdomainname)
  + [SYS\_setfsgid](#SYS_setfsgid)
  + [SYS\_setfsuid](#SYS_setfsuid)
  + [SYS\_setgid](#SYS_setgid)
  + [SYS\_setgroups](#SYS_setgroups)
  + [SYS\_sethostname](#SYS_sethostname)
  + [SYS\_setitimer](#SYS_setitimer)
  + [SYS\_setns](#SYS_setns)
  + [SYS\_setpgid](#SYS_setpgid)
  + [SYS\_setpriority](#SYS_setpriority)
  + [SYS\_setregid](#SYS_setregid)
  + [SYS\_setresgid](#SYS_setresgid)
  + [SYS\_setresuid](#SYS_setresuid)
  + [SYS\_setreuid](#SYS_setreuid)
  + [SYS\_setrlimit](#SYS_setrlimit)
  + [SYS\_setsid](#SYS_setsid)
  + [SYS\_setsockopt](#SYS_setsockopt)
  + [SYS\_settimeofday](#SYS_settimeofday)
  + [SYS\_setuid](#SYS_setuid)
  + [SYS\_setxattr](#SYS_setxattr)
  + [SYS\_shmat](#SYS_shmat)
  + [SYS\_shmctl](#SYS_shmctl)
  + [SYS\_shmdt](#SYS_shmdt)
  + [SYS\_shmget](#SYS_shmget)
  + [SYS\_shutdown](#SYS_shutdown)
  + [SYS\_sigaltstack](#SYS_sigaltstack)
  + [SYS\_signalfd](#SYS_signalfd)
  + [SYS\_signalfd4](#SYS_signalfd4)
  + [SYS\_socket](#SYS_socket)
  + [SYS\_socketpair](#SYS_socketpair)
  + [SYS\_splice](#SYS_splice)
  + [SYS\_stat](#SYS_stat)
  + [SYS\_statfs](#SYS_statfs)
  + [SYS\_statx](#SYS_statx)
  + [SYS\_swapoff](#SYS_swapoff)
  + [SYS\_swapon](#SYS_swapon)
  + [SYS\_symlink](#SYS_symlink)
  + [SYS\_symlinkat](#SYS_symlinkat)
  + [SYS\_sync](#SYS_sync)
  + [SYS\_sync\_file\_range](#SYS_sync_file_range)
  + [SYS\_syncfs](#SYS_syncfs)
  + [SYS\_sysfs](#SYS_sysfs)
  + [SYS\_sysinfo](#SYS_sysinfo)
  + [SYS\_syslog](#SYS_syslog)
  + [SYS\_tee](#SYS_tee)
  + [SYS\_tgkill](#SYS_tgkill)
  + [SYS\_time](#SYS_time)
  + [SYS\_timer\_create](#SYS_timer_create)
  + [SYS\_timer\_delete](#SYS_timer_delete)
  + [SYS\_timer\_getoverrun](#SYS_timer_getoverrun)
  + [SYS\_timer\_gettime](#SYS_timer_gettime)
  + [SYS\_timer\_settime](#SYS_timer_settime)
  + [SYS\_timerfd\_create](#SYS_timerfd_create)
  + [SYS\_timerfd\_gettime](#SYS_timerfd_gettime)
  + [SYS\_timerfd\_settime](#SYS_timerfd_settime)
  + [SYS\_times](#SYS_times)
  + [SYS\_tkill](#SYS_tkill)
  + [SYS\_truncate](#SYS_truncate)
  + [SYS\_tuxcall](#SYS_tuxcall)
  + [SYS\_umask](#SYS_umask)
  + [SYS\_umount2](#SYS_umount2)
  + [SYS\_uname](#SYS_uname)
  + [SYS\_unlink](#SYS_unlink)
  + [SYS\_unlinkat](#SYS_unlinkat)
  + [SYS\_unshare](#SYS_unshare)
  + [SYS\_uselib](#SYS_uselib)
  + [SYS\_userfaultfd](#SYS_userfaultfd)
  + [SYS\_ustat](#SYS_ustat)
  + [SYS\_utime](#SYS_utime)
  + [SYS\_utimensat](#SYS_utimensat)
  + [SYS\_utimes](#SYS_utimes)
  + [SYS\_vfork](#SYS_vfork)
  + [SYS\_vhangup](#SYS_vhangup)
  + [SYS\_vmsplice](#SYS_vmsplice)
  + [SYS\_vserver](#SYS_vserver)
  + [SYS\_wait4](#SYS_wait4)
  + [SYS\_waitid](#SYS_waitid)
  + [SYS\_write](#SYS_write)
  + [SYS\_writev](#SYS_writev)
* [Procedures](#pkg-Procedures)
  + [get\_errno](#get_errno)
  + [sys\_accept](#sys_accept)
  + [sys\_access](#sys_access)
  + [sys\_bind](#sys_bind)
  + [sys\_chdir](#sys_chdir)
  + [sys\_chmod](#sys_chmod)
  + [sys\_chown](#sys_chown)
  + [sys\_close](#sys_close)
  + [sys\_connect](#sys_connect)
  + [sys\_dup2](#sys_dup2)
  + [sys\_fchdir](#sys_fchdir)
  + [sys\_fchmod](#sys_fchmod)
  + [sys\_fchown](#sys_fchown)
  + [sys\_fcntl](#sys_fcntl)
  + [sys\_fork](#sys_fork)
  + [sys\_fstat](#sys_fstat)
  + [sys\_fsync](#sys_fsync)
  + [sys\_ftruncate](#sys_ftruncate)
  + [sys\_getcwd](#sys_getcwd)
  + [sys\_getdents64](#sys_getdents64)
  + [sys\_getrandom](#sys_getrandom)
  + [sys\_gettid](#sys_gettid)
  + [sys\_lchown](#sys_lchown)
  + [sys\_link](#sys_link)
  + [sys\_listen](#sys_listen)
  + [sys\_lseek](#sys_lseek)
  + [sys\_lstat](#sys_lstat)
  + [sys\_madvise](#sys_madvise)
  + [sys\_mkdir](#sys_mkdir)
  + [sys\_mkdirat](#sys_mkdirat)
  + [sys\_mknod](#sys_mknod)
  + [sys\_mknodat](#sys_mknodat)
  + [sys\_mmap](#sys_mmap)
  + [sys\_mprotect](#sys_mprotect)
  + [sys\_mremap](#sys_mremap)
  + [sys\_munmap](#sys_munmap)
  + [sys\_open](#sys_open)
  + [sys\_openat](#sys_openat)
  + [sys\_perf\_event\_open](#sys_perf_event_open)
  + [sys\_personality](#sys_personality)
  + [sys\_pipe2](#sys_pipe2)
  + [sys\_poll](#sys_poll)
  + [sys\_ppoll](#sys_ppoll)
  + [sys\_pread](#sys_pread)
  + [sys\_pwrite](#sys_pwrite)
  + [sys\_read](#sys_read)
  + [sys\_readlink](#sys_readlink)
  + [sys\_recvfrom](#sys_recvfrom)
  + [sys\_rename](#sys_rename)
  + [sys\_rmdir](#sys_rmdir)
  + [sys\_sendto](#sys_sendto)
  + [sys\_setsockopt](#sys_setsockopt)
  + [sys\_shutdown](#sys_shutdown)
  + [sys\_socket](#sys_socket)
  + [sys\_stat](#sys_stat)
  + [sys\_symlink](#sys_symlink)
  + [sys\_truncate](#sys_truncate)
  + [sys\_unlink](#sys_unlink)
  + [sys\_unlinkat](#sys_unlinkat)
  + [sys\_utimensat](#sys_utimensat)
  + [sys\_write](#sys_write)
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