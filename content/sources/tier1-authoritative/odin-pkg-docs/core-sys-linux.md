package sys/linux - pkg.odin-lang.org 






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



Current Package: *[linux](/core/sys/linux)*

  

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

# package core:sys/linux [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux)

#### **Warning:**This was generated for `-target:linux_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (349)

* [Address\_Family](#Address_Family)
* [Branch\_Sample\_Type](#Branch_Sample_Type)
* [Branch\_Sample\_Type\_Bits](#Branch_Sample_Type_Bits)
* [Clock\_Id](#Clock_Id)
* [Clock\_State](#Clock_State)
* [Close\_Range\_Flags](#Close_Range_Flags)
* [Close\_Range\_Flags\_Bits](#Close_Range_Flags_Bits)
* [Cpu\_Set](#Cpu_Set)
* [Dev](#Dev)
* [Dirent](#Dirent)
* [Dirent\_Type](#Dirent_Type)
* [EPoll\_Ctl\_Opcode](#EPoll_Ctl_Opcode)
* [EPoll\_Data](#EPoll_Data)
* [EPoll\_Event](#EPoll_Event)
* [EPoll\_Event\_Kind](#EPoll_Event_Kind)
* [EPoll\_Event\_Set](#EPoll_Event_Set)
* [EPoll\_Flags](#EPoll_Flags)
* [EPoll\_Flags\_Bits](#EPoll_Flags_Bits)
* [Errno](#Errno)
* [Eventfd\_Flags](#Eventfd_Flags)
* [Eventfd\_Flags\_Bits](#Eventfd_Flags_Bits)
* [Execveat\_Flags](#Execveat_Flags)
* [Execveat\_Flags\_Bits](#Execveat_Flags_Bits)
* [FCntl\_Command](#FCntl_Command)
* [FCntl\_Command\_ADD\_SEALS](#FCntl_Command_ADD_SEALS)
* [FCntl\_Command\_DUPFD](#FCntl_Command_DUPFD)
* [FCntl\_Command\_DUPFD\_CLOEXEC](#FCntl_Command_DUPFD_CLOEXEC)
* [FCntl\_Command\_GETFD](#FCntl_Command_GETFD)
* [FCntl\_Command\_GETFL](#FCntl_Command_GETFL)
* [FCntl\_Command\_GETLEASE](#FCntl_Command_GETLEASE)
* [FCntl\_Command\_GETLK](#FCntl_Command_GETLK)
* [FCntl\_Command\_GETOWN](#FCntl_Command_GETOWN)
* [FCntl\_Command\_GETOWN\_EX](#FCntl_Command_GETOWN_EX)
* [FCntl\_Command\_GETPIPE\_SZ](#FCntl_Command_GETPIPE_SZ)
* [FCntl\_Command\_GETSIG](#FCntl_Command_GETSIG)
* [FCntl\_Command\_GET\_FILE\_RW\_HINT](#FCntl_Command_GET_FILE_RW_HINT)
* [FCntl\_Command\_GET\_RW\_HINT](#FCntl_Command_GET_RW_HINT)
* [FCntl\_Command\_GET\_SEALS](#FCntl_Command_GET_SEALS)
* [FCntl\_Command\_NOTIFY](#FCntl_Command_NOTIFY)
* [FCntl\_Command\_SETFD](#FCntl_Command_SETFD)
* [FCntl\_Command\_SETFL](#FCntl_Command_SETFL)
* [FCntl\_Command\_SETLEASE](#FCntl_Command_SETLEASE)
* [FCntl\_Command\_SETLK](#FCntl_Command_SETLK)
* [FCntl\_Command\_SETLKW](#FCntl_Command_SETLKW)
* [FCntl\_Command\_SETOWN](#FCntl_Command_SETOWN)
* [FCntl\_Command\_SETOWN\_EX](#FCntl_Command_SETOWN_EX)
* [FCntl\_Command\_SETPIPE\_SZ](#FCntl_Command_SETPIPE_SZ)
* [FCntl\_Command\_SETSIG](#FCntl_Command_SETSIG)
* [FCntl\_Command\_SET\_FILE\_RW\_HINT](#FCntl_Command_SET_FILE_RW_HINT)
* [FCntl\_Command\_SET\_RW\_HINT](#FCntl_Command_SET_RW_HINT)
* [FD\_Flags](#FD_Flags)
* [FD\_Flags\_Bits](#FD_Flags_Bits)
* [FD\_Lease](#FD_Lease)
* [FD\_Notifications](#FD_Notifications)
* [FD\_Notifications\_Bits](#FD_Notifications_Bits)
* [FLock](#FLock)
* [FLock\_Op](#FLock_Op)
* [FLock\_Op\_Bits](#FLock_Op_Bits)
* [FLock\_Type](#FLock_Type)
* [FS\_Flags](#FS_Flags)
* [FS\_Flags\_Bits](#FS_Flags_Bits)
* [FS\_Magic](#FS_Magic)
* [F\_Owner](#F_Owner)
* [F\_Owner\_Type](#F_Owner_Type)
* [Fd](#Fd)
* [Fd\_Poll\_Events](#Fd_Poll_Events)
* [Fd\_Poll\_Events\_Bits](#Fd_Poll_Events_Bits)
* [Futex](#Futex)
* [Futex\_Arg\_Op](#Futex_Arg_Op)
* [Futex\_Cmp\_Op](#Futex_Cmp_Op)
* [Futex\_Cmp\_Requeue\_Type](#Futex_Cmp_Requeue_Type)
* [Futex\_Cmp\_requeue\_Pi\_Type](#Futex_Cmp_requeue_Pi_Type)
* [Futex\_Fd\_Type](#Futex_Fd_Type)
* [Futex\_Flags](#Futex_Flags)
* [Futex\_Flags\_Bits](#Futex_Flags_Bits)
* [Futex\_Lock\_Pi2\_Type](#Futex_Lock_Pi2_Type)
* [Futex\_Lock\_Pi\_Type](#Futex_Lock_Pi_Type)
* [Futex\_Op](#Futex_Op)
* [Futex\_Requeue\_Type](#Futex_Requeue_Type)
* [Futex\_Trylock\_Pi\_Type](#Futex_Trylock_Pi_Type)
* [Futex\_Unlock\_Pi\_Type](#Futex_Unlock_Pi_Type)
* [Futex\_Wait\_Bitset\_Type](#Futex_Wait_Bitset_Type)
* [Futex\_Wait\_Type](#Futex_Wait_Type)
* [Futex\_Wait\_requeue\_Pi\_Type](#Futex_Wait_requeue_Pi_Type)
* [Futex\_Wake\_Bitset\_Type](#Futex_Wake_Bitset_Type)
* [Futex\_Wake\_Op\_Type](#Futex_Wake_Op_Type)
* [Futex\_Wake\_Type](#Futex_Wake_Type)
* [Get\_Random\_Flags](#Get_Random_Flags)
* [Get\_Random\_Flags\_Bits](#Get_Random_Flags_Bits)
* [Gid](#Gid)
* [Hardware\_Breakpoint\_Type](#Hardware_Breakpoint_Type)
* [IO\_CQ\_Ring\_Offsets](#IO_CQ_Ring_Offsets)
* [IO\_SQ\_Ring\_Offsets](#IO_SQ_Ring_Offsets)
* [IO\_Uring\_Accept\_Flags](#IO_Uring_Accept_Flags)
* [IO\_Uring\_Accept\_Flags\_Bits](#IO_Uring_Accept_Flags_Bits)
* [IO\_Uring\_CQE](#IO_Uring_CQE)
* [IO\_Uring\_CQE32](#IO_Uring_CQE32)
* [IO\_Uring\_CQE\_Flags](#IO_Uring_CQE_Flags)
* [IO\_Uring\_CQE\_Flags\_Bits](#IO_Uring_CQE_Flags_Bits)
* [IO\_Uring\_Cmd\_Flags](#IO_Uring_Cmd_Flags)
* [IO\_Uring\_Cmd\_Flags\_Bits](#IO_Uring_Cmd_Flags_Bits)
* [IO\_Uring\_Enter\_Flags](#IO_Uring_Enter_Flags)
* [IO\_Uring\_Enter\_Flags\_Bits](#IO_Uring_Enter_Flags_Bits)
* [IO\_Uring\_Features](#IO_Uring_Features)
* [IO\_Uring\_Features\_Bits](#IO_Uring_Features_Bits)
* [IO\_Uring\_Fsync\_Flags](#IO_Uring_Fsync_Flags)
* [IO\_Uring\_Fsync\_Flags\_Bits](#IO_Uring_Fsync_Flags_Bits)
* [IO\_Uring\_Getevents\_Arg](#IO_Uring_Getevents_Arg)
* [IO\_Uring\_OP](#IO_Uring_OP)
* [IO\_Uring\_Params](#IO_Uring_Params)
* [IO\_Uring\_Poll\_Add\_Flags](#IO_Uring_Poll_Add_Flags)
* [IO\_Uring\_Poll\_Add\_Flags\_Bits](#IO_Uring_Poll_Add_Flags_Bits)
* [IO\_Uring\_Register\_Opcode](#IO_Uring_Register_Opcode)
* [IO\_Uring\_Rsrc\_Register](#IO_Uring_Rsrc_Register)
* [IO\_Uring\_Rsrc\_Update2](#IO_Uring_Rsrc_Update2)
* [IO\_Uring\_SQE](#IO_Uring_SQE)
* [IO\_Uring\_SQE128](#IO_Uring_SQE128)
* [IO\_Uring\_SQE\_Flags](#IO_Uring_SQE_Flags)
* [IO\_Uring\_SQE\_Flags\_Bits](#IO_Uring_SQE_Flags_Bits)
* [IO\_Uring\_Send\_Recv\_Flags](#IO_Uring_Send_Recv_Flags)
* [IO\_Uring\_Send\_Recv\_Flags\_Bits](#IO_Uring_Send_Recv_Flags_Bits)
* [IO\_Uring\_Setup\_Flags](#IO_Uring_Setup_Flags)
* [IO\_Uring\_Setup\_Flags\_Bits](#IO_Uring_Setup_Flags_Bits)
* [IO\_Uring\_Splice\_Flags](#IO_Uring_Splice_Flags)
* [IO\_Uring\_Splice\_Flags\_Bits](#IO_Uring_Splice_Flags_Bits)
* [IO\_Uring\_Submission\_Queue\_Flags](#IO_Uring_Submission_Queue_Flags)
* [IO\_Uring\_Submission\_Queue\_Flags\_Bits](#IO_Uring_Submission_Queue_Flags_Bits)
* [IO\_Uring\_Timeout\_Flags](#IO_Uring_Timeout_Flags)
* [IO\_Uring\_Timeout\_Flags\_Bits](#IO_Uring_Timeout_Flags_Bits)
* [IO\_Vec](#IO_Vec)
* [IPC\_Cmd](#IPC_Cmd)
* [IPC\_Flags](#IPC_Flags)
* [IPC\_Flags\_Bits](#IPC_Flags_Bits)
* [IPC\_Perm](#IPC_Perm)
* [ITimer\_Flags](#ITimer_Flags)
* [ITimer\_Flags\_Bits](#ITimer_Flags_Bits)
* [ITimer\_Spec](#ITimer_Spec)
* [ITimer\_Val](#ITimer_Val)
* [ITimer\_Which](#ITimer_Which)
* [Id](#Id)
* [Id\_Type](#Id_Type)
* [Inode](#Inode)
* [Inotify\_Event](#Inotify_Event)
* [Inotify\_Event\_Bits](#Inotify_Event_Bits)
* [Inotify\_Event\_Mask](#Inotify_Event_Mask)
* [Inotify\_Init\_Bits](#Inotify_Init_Bits)
* [Inotify\_Init\_Flags](#Inotify_Init_Flags)
* [Key](#Key)
* [MAdvice](#MAdvice)
* [MLock\_Flags](#MLock_Flags)
* [MLock\_Flags\_Bits](#MLock_Flags_Bits)
* [MMsg\_Hdr](#MMsg_Hdr)
* [MRemap\_Flags](#MRemap_Flags)
* [MRemap\_Flags\_Bits](#MRemap_Flags_Bits)
* [MSync\_Flags](#MSync_Flags)
* [MSync\_Flags\_Bits](#MSync_Flags_Bits)
* [Map\_Flags](#Map_Flags)
* [Map\_Flags\_Bits](#Map_Flags_Bits)
* [Mem\_Protection](#Mem_Protection)
* [Mem\_Protection\_Bits](#Mem_Protection_Bits)
* [Memfd\_Create\_Flag\_Bits](#Memfd_Create_Flag_Bits)
* [Memfd\_Create\_Flags](#Memfd_Create_Flags)
* [Mode](#Mode)
* [Mode\_Bits](#Mode_Bits)
* [Mount\_Flags](#Mount_Flags)
* [Mount\_Flags\_Bits](#Mount_Flags_Bits)
* [Msg\_Buf](#Msg_Buf)
* [Msg\_Hdr](#Msg_Hdr)
* [Msqid\_DS](#Msqid_DS)
* [Open\_Flags](#Open_Flags)
* [Open\_Flags\_Bits](#Open_Flags_Bits)
* [PKey\_Access\_Bits](#PKey_Access_Bits)
* [PKey\_Access\_Rights](#PKey_Access_Rights)
* [PTrace\_Arch\_Prctl\_Type](#PTrace_Arch_Prctl_Type)
* [PTrace\_Attach\_Type](#PTrace_Attach_Type)
* [PTrace\_Cont\_Type](#PTrace_Cont_Type)
* [PTrace\_Detach\_Type](#PTrace_Detach_Type)
* [PTrace\_Event\_Code](#PTrace_Event_Code)
* [PTrace\_Get\_RSeq\_Configuration\_Type](#PTrace_Get_RSeq_Configuration_Type)
* [PTrace\_Get\_Syscall\_Info\_Op](#PTrace_Get_Syscall_Info_Op)
* [PTrace\_Get\_Syscall\_Info\_Type](#PTrace_Get_Syscall_Info_Type)
* [PTrace\_Get\_Thread\_Area\_Type](#PTrace_Get_Thread_Area_Type)
* [PTrace\_Geteventmsg\_Type](#PTrace_Geteventmsg_Type)
* [PTrace\_Getfpregs\_Type](#PTrace_Getfpregs_Type)
* [PTrace\_Getfpxregs\_Type](#PTrace_Getfpxregs_Type)
* [PTrace\_Getregs\_Type](#PTrace_Getregs_Type)
* [PTrace\_Getregset\_Type](#PTrace_Getregset_Type)
* [PTrace\_Getsiginfo\_Type](#PTrace_Getsiginfo_Type)
* [PTrace\_Getsigmask\_Type](#PTrace_Getsigmask_Type)
* [PTrace\_Interrupt\_Type](#PTrace_Interrupt_Type)
* [PTrace\_Kill\_Type](#PTrace_Kill_Type)
* [PTrace\_Listen\_Type](#PTrace_Listen_Type)
* [PTrace\_Note\_Type](#PTrace_Note_Type)
* [PTrace\_Options](#PTrace_Options)
* [PTrace\_Options\_Bits](#PTrace_Options_Bits)
* [PTrace\_Peek\_Sig\_Info\_Args](#PTrace_Peek_Sig_Info_Args)
* [PTrace\_Peek\_Sig\_Info\_Flags](#PTrace_Peek_Sig_Info_Flags)
* [PTrace\_Peek\_Sig\_Info\_Flags\_Bits](#PTrace_Peek_Sig_Info_Flags_Bits)
* [PTrace\_Peek\_Type](#PTrace_Peek_Type)
* [PTrace\_Peeksiginfo\_Type](#PTrace_Peeksiginfo_Type)
* [PTrace\_Poke\_Type](#PTrace_Poke_Type)
* [PTrace\_RSeq\_Configuration](#PTrace_RSeq_Configuration)
* [PTrace\_Request](#PTrace_Request)
* [PTrace\_Seccomp\_Get\_Filter\_Type](#PTrace_Seccomp_Get_Filter_Type)
* [PTrace\_Seccomp\_Get\_Metadata\_Type](#PTrace_Seccomp_Get_Metadata_Type)
* [PTrace\_Seccomp\_Metadata](#PTrace_Seccomp_Metadata)
* [PTrace\_Seize\_Type](#PTrace_Seize_Type)
* [PTrace\_Set\_Thread\_Area\_Type](#PTrace_Set_Thread_Area_Type)
* [PTrace\_Setfpregs\_Type](#PTrace_Setfpregs_Type)
* [PTrace\_Setfpxregs\_Type](#PTrace_Setfpxregs_Type)
* [PTrace\_Setoptions\_Type](#PTrace_Setoptions_Type)
* [PTrace\_Setregs\_Type](#PTrace_Setregs_Type)
* [PTrace\_Setregset\_Type](#PTrace_Setregset_Type)
* [PTrace\_Setsiginfo\_Type](#PTrace_Setsiginfo_Type)
* [PTrace\_Setsigmask\_Type](#PTrace_Setsigmask_Type)
* [PTrace\_Singleblock\_Type](#PTrace_Singleblock_Type)
* [PTrace\_Singlestep\_Type](#PTrace_Singlestep_Type)
* [PTrace\_Syscall\_Info](#PTrace_Syscall_Info)
* [PTrace\_Syscall\_Type](#PTrace_Syscall_Type)
* [PTrace\_Sysemu\_Singlestep\_Type](#PTrace_Sysemu_Singlestep_Type)
* [PTrace\_Sysemu\_Type](#PTrace_Sysemu_Type)
* [PTrace\_Traceme\_Type](#PTrace_Traceme_Type)
* [Perf\_Cap\_Flags](#Perf_Cap_Flags)
* [Perf\_Cap\_Flags\_Bits](#Perf_Cap_Flags_Bits)
* [Perf\_Event\_Attr](#Perf_Event_Attr)
* [Perf\_Event\_Flags](#Perf_Event_Flags)
* [Perf\_Event\_Flags\_Bits](#Perf_Event_Flags_Bits)
* [Perf\_Event\_Mmap\_Page](#Perf_Event_Mmap_Page)
* [Perf\_Event\_Sample\_Type](#Perf_Event_Sample_Type)
* [Perf\_Event\_Sample\_Type\_Bits](#Perf_Event_Sample_Type_Bits)
* [Perf\_Event\_Type](#Perf_Event_Type)
* [Perf\_Flags](#Perf_Flags)
* [Perf\_Flags\_Bits](#Perf_Flags_Bits)
* [Perf\_Hardware\_Cache\_Id](#Perf_Hardware_Cache_Id)
* [Perf\_Hardware\_Cache\_Op\_Id](#Perf_Hardware_Cache_Op_Id)
* [Perf\_Hardware\_Cache\_Result\_Id](#Perf_Hardware_Cache_Result_Id)
* [Perf\_Hardware\_Id](#Perf_Hardware_Id)
* [Perf\_Read\_Format](#Perf_Read_Format)
* [Perf\_Read\_Format\_Bits](#Perf_Read_Format_Bits)
* [Perf\_Software\_Id](#Perf_Software_Id)
* [Pid](#Pid)
* [Pid\_FD](#Pid_FD)
* [Pid\_FD\_Flags](#Pid_FD_Flags)
* [Pid\_FD\_Flags\_Bits](#Pid_FD_Flags_Bits)
* [Poll\_Fd](#Poll_Fd)
* [Priority\_Which](#Priority_Which)
* [Protocol](#Protocol)
* [Protocol\_Family](#Protocol_Family)
* [RISCV\_HWProbe](#RISCV_HWProbe)
* [RISCV\_HWProbe\_Base\_Behavior](#RISCV_HWProbe_Base_Behavior)
* [RISCV\_HWProbe\_Base\_Behavior\_Bits](#RISCV_HWProbe_Base_Behavior_Bits)
* [RISCV\_HWProbe\_CPU\_Perf\_0](#RISCV_HWProbe_CPU_Perf_0)
* [RISCV\_HWProbe\_Flags](#RISCV_HWProbe_Flags)
* [RISCV\_HWProbe\_Flags\_Bits](#RISCV_HWProbe_Flags_Bits)
* [RISCV\_HWProbe\_IMA\_Ext\_0](#RISCV_HWProbe_IMA_Ext_0)
* [RISCV\_HWProbe\_IMA\_Ext\_0\_Bits](#RISCV_HWProbe_IMA_Ext_0_Bits)
* [RISCV\_HWProbe\_Key](#RISCV_HWProbe_Key)
* [RISCV\_HWProbe\_Misaligned\_Scalar\_Perf](#RISCV_HWProbe_Misaligned_Scalar_Perf)
* [RLimit](#RLimit)
* [RLimit\_Kind](#RLimit_Kind)
* [RUsage](#RUsage)
* [RUsage\_Who](#RUsage_Who)
* [RW\_Hint](#RW_Hint)
* [Reboot\_Magic](#Reboot_Magic)
* [Reboot\_Operation](#Reboot_Operation)
* [Rename\_Flags](#Rename_Flags)
* [Rename\_Flags\_Bits](#Rename_Flags_Bits)
* [Sched\_Attr](#Sched_Attr)
* [Sched\_Attr\_Flag\_Bits](#Sched_Attr_Flag_Bits)
* [Sched\_Attr\_Flags](#Sched_Attr_Flags)
* [Sched\_Flag\_Bits](#Sched_Flag_Bits)
* [Sched\_Flags](#Sched_Flags)
* [Sched\_Param](#Sched_Param)
* [Sched\_Policy](#Sched_Policy)
* [Seal](#Seal)
* [Seal\_Bits](#Seal_Bits)
* [Seek\_Whence](#Seek_Whence)
* [Sem\_Buf](#Sem_Buf)
* [Sem\_Info](#Sem_Info)
* [Sem\_Un](#Sem_Un)
* [Semid\_DS](#Semid_DS)
* [Shm\_Info](#Shm_Info)
* [Shmid\_DS](#Shmid_DS)
* [Shutdown\_How](#Shutdown_How)
* [Sig\_Action](#Sig_Action)
* [Sig\_Action\_Flag](#Sig_Action_Flag)
* [Sig\_Action\_Flags](#Sig_Action_Flags)
* [Sig\_Action\_Special](#Sig_Action_Special)
* [Sig\_Child\_Code](#Sig_Child_Code)
* [Sig\_Event](#Sig_Event)
* [Sig\_Handler\_Fn](#Sig_Handler_Fn)
* [Sig\_Info](#Sig_Info)
* [Sig\_Mask\_Kind](#Sig_Mask_Kind)
* [Sig\_Restore\_Fn](#Sig_Restore_Fn)
* [Sig\_Set](#Sig_Set)
* [Sig\_Stack](#Sig_Stack)
* [Sig\_Stack\_Flag](#Sig_Stack_Flag)
* [Sig\_Stack\_Flags](#Sig_Stack_Flags)
* [Sig\_Val](#Sig_Val)
* [Signal](#Signal)
* [Sock\_Addr](#Sock_Addr)
* [Sock\_Addr\_Any](#Sock_Addr_Any)
* [Sock\_Addr\_In](#Sock_Addr_In)
* [Sock\_Addr\_In6](#Sock_Addr_In6)
* [Sock\_Addr\_Un](#Sock_Addr_Un)
* [Socket\_API\_Level](#Socket_API_Level)
* [Socket\_API\_Level\_Raw](#Socket_API_Level_Raw)
* [Socket\_API\_Level\_Sock](#Socket_API_Level_Sock)
* [Socket\_API\_Level\_TCP](#Socket_API_Level_TCP)
* [Socket\_API\_Level\_UDP](#Socket_API_Level_UDP)
* [Socket\_FD\_Flags](#Socket_FD_Flags)
* [Socket\_FD\_Flags\_Bits](#Socket_FD_Flags_Bits)
* [Socket\_Msg](#Socket_Msg)
* [Socket\_Msg\_Bits](#Socket_Msg_Bits)
* [Socket\_Option](#Socket_Option)
* [Socket\_TCP\_Option](#Socket_TCP_Option)
* [Socket\_Type](#Socket_Type)
* [Socket\_UDP\_Option](#Socket_UDP_Option)
* [Splice\_Flags](#Splice_Flags)
* [Splice\_Flags\_Bits](#Splice_Flags_Bits)
* [Stat](#Stat)
* [Stat\_FS](#Stat_FS)
* [Statx](#Statx)
* [Statx\_Attr](#Statx_Attr)
* [Statx\_Attr\_Bits](#Statx_Attr_Bits)
* [Statx\_Mask](#Statx_Mask)
* [Statx\_Mask\_Bits](#Statx_Mask_Bits)
* [Statx\_Timestamp](#Statx_Timestamp)
* [Swap\_Flags](#Swap_Flags)
* [Swap\_Flags\_Bits](#Swap_Flags_Bits)
* [Sys\_Info](#Sys_Info)
* [Syslog\_Action](#Syslog_Action)
* [Time\_Spec](#Time_Spec)
* [Time\_Val](#Time_Val)
* [Timer](#Timer)
* [Timex](#Timex)
* [Tms](#Tms)
* [UPD\_Encapsulation](#UPD_Encapsulation)
* [UTS\_Name](#UTS_Name)
* [UTim\_Buf](#UTim_Buf)
* [Uid](#Uid)
* [Umount2\_Flags](#Umount2_Flags)
* [Umount2\_Flags\_Bits](#Umount2_Flags_Bits)
* [User\_FPX\_Regs](#User_FPX_Regs)
* [User\_FP\_Regs](#User_FP_Regs)
* [User\_Regs](#User_Regs)
* [Wait\_Option](#Wait_Option)
* [Wait\_Options](#Wait_Options)
* [Wd](#Wd)

Constants (555)

* [ADDR\_COMPAT\_LAYOUT](#ADDR_COMPAT_LAYOUT)
* [ADDR\_LIMIT\_32BIT](#ADDR_LIMIT_32BIT)
* [ADDR\_LIMIT\_3GB](#ADDR_LIMIT_3GB)
* [ADDR\_NO\_RANDOMIZE](#ADDR_NO_RANDOMIZE)
* [AT\_FDCWD](#AT_FDCWD)
* [FDPIC\_FUNCPTRS](#FDPIC_FUNCPTRS)
* [FUTEX\_CMP\_REQUEUE](#FUTEX_CMP_REQUEUE)
* [FUTEX\_CMP\_REQUEUE\_PI](#FUTEX_CMP_REQUEUE_PI)
* [FUTEX\_FD](#FUTEX_FD)
* [FUTEX\_LOCK\_PI](#FUTEX_LOCK_PI)
* [FUTEX\_LOCK\_PI2](#FUTEX_LOCK_PI2)
* [FUTEX\_REQUEUE](#FUTEX_REQUEUE)
* [FUTEX\_TRYLOCK\_PI](#FUTEX_TRYLOCK_PI)
* [FUTEX\_UNLOCK\_PI](#FUTEX_UNLOCK_PI)
* [FUTEX\_WAIT](#FUTEX_WAIT)
* [FUTEX\_WAIT\_BITSET](#FUTEX_WAIT_BITSET)
* [FUTEX\_WAIT\_REQUEUE\_PI](#FUTEX_WAIT_REQUEUE_PI)
* [FUTEX\_WAKE](#FUTEX_WAKE)
* [FUTEX\_WAKE\_BITSET](#FUTEX_WAKE_BITSET)
* [FUTEX\_WAKE\_OP](#FUTEX_WAKE_OP)
* [F\_ADD\_SEALS](#F_ADD_SEALS)
* [F\_DUPFD](#F_DUPFD)
* [F\_DUPFD\_CLOEXEC](#F_DUPFD_CLOEXEC)
* [F\_GETFD](#F_GETFD)
* [F\_GETFL](#F_GETFL)
* [F\_GETLEASE](#F_GETLEASE)
* [F\_GETLK](#F_GETLK)
* [F\_GETOWN](#F_GETOWN)
* [F\_GETOWN\_EX](#F_GETOWN_EX)
* [F\_GETPIPE\_SZ](#F_GETPIPE_SZ)
* [F\_GETSIG](#F_GETSIG)
* [F\_GET\_FILE\_RW\_HINT](#F_GET_FILE_RW_HINT)
* [F\_GET\_RW\_HINT](#F_GET_RW_HINT)
* [F\_GET\_SEALS](#F_GET_SEALS)
* [F\_NOTIFY](#F_NOTIFY)
* [F\_OK](#F_OK)
* [F\_SETFD](#F_SETFD)
* [F\_SETFL](#F_SETFL)
* [F\_SETLEASE](#F_SETLEASE)
* [F\_SETLK](#F_SETLK)
* [F\_SETLKW](#F_SETLKW)
* [F\_SETOWN](#F_SETOWN)
* [F\_SETOWN\_EX](#F_SETOWN_EX)
* [F\_SETPIPE\_SZ](#F_SETPIPE_SZ)
* [F\_SETSIG](#F_SETSIG)
* [F\_SET\_FILE\_RW\_HINT](#F_SET_FILE_RW_HINT)
* [F\_SET\_RW\_HINT](#F_SET_RW_HINT)
* [IN\_ALL\_EVENTS](#IN_ALL_EVENTS)
* [IN\_CLOSE](#IN_CLOSE)
* [IN\_MOVE](#IN_MOVE)
* [IORING\_OFF\_CQ\_RING](#IORING_OFF_CQ_RING)
* [IORING\_OFF\_MMAP\_MASK](#IORING_OFF_MMAP_MASK)
* [IORING\_OFF\_PBUF\_RING](#IORING_OFF_PBUF_RING)
* [IORING\_OFF\_PBUF\_SHIFT](#IORING_OFF_PBUF_SHIFT)
* [IORING\_OFF\_SQES](#IORING_OFF_SQES)
* [IORING\_OFF\_SQ\_RING](#IORING_OFF_SQ_RING)
* [IORING\_TIMEOUT\_CLOCK\_MASK](#IORING_TIMEOUT_CLOCK_MASK)
* [IORING\_TIMEOUT\_UPDATE\_MASK](#IORING_TIMEOUT_UPDATE_MASK)
* [IPC\_PRIVATE](#IPC_PRIVATE)
* [MAP\_HUGE\_16GB](#MAP_HUGE_16GB)
* [MAP\_HUGE\_16KB](#MAP_HUGE_16KB)
* [MAP\_HUGE\_16MB](#MAP_HUGE_16MB)
* [MAP\_HUGE\_1GB](#MAP_HUGE_1GB)
* [MAP\_HUGE\_1MB](#MAP_HUGE_1MB)
* [MAP\_HUGE\_256MB](#MAP_HUGE_256MB)
* [MAP\_HUGE\_2GB](#MAP_HUGE_2GB)
* [MAP\_HUGE\_2MB](#MAP_HUGE_2MB)
* [MAP\_HUGE\_32MB](#MAP_HUGE_32MB)
* [MAP\_HUGE\_512KB](#MAP_HUGE_512KB)
* [MAP\_HUGE\_512MB](#MAP_HUGE_512MB)
* [MAP\_HUGE\_64KB](#MAP_HUGE_64KB)
* [MAP\_HUGE\_8MB](#MAP_HUGE_8MB)
* [MAP\_HUGE\_MASK](#MAP_HUGE_MASK)
* [MAP\_HUGE\_SHIFT](#MAP_HUGE_SHIFT)
* [MAP\_SHARED\_VALIDATE](#MAP_SHARED_VALIDATE)
* [MFD\_HUGE\_16GB](#MFD_HUGE_16GB)
* [MFD\_HUGE\_16KB](#MFD_HUGE_16KB)
* [MFD\_HUGE\_16MB](#MFD_HUGE_16MB)
* [MFD\_HUGE\_1GB](#MFD_HUGE_1GB)
* [MFD\_HUGE\_1MB](#MFD_HUGE_1MB)
* [MFD\_HUGE\_256MB](#MFD_HUGE_256MB)
* [MFD\_HUGE\_2GB](#MFD_HUGE_2GB)
* [MFD\_HUGE\_2MB](#MFD_HUGE_2MB)
* [MFD\_HUGE\_32MB](#MFD_HUGE_32MB)
* [MFD\_HUGE\_512KB](#MFD_HUGE_512KB)
* [MFD\_HUGE\_512MB](#MFD_HUGE_512MB)
* [MFD\_HUGE\_64KB](#MFD_HUGE_64KB)
* [MFD\_HUGE\_8MB](#MFD_HUGE_8MB)
* [MMAP\_PAGE\_ZERO](#MMAP_PAGE_ZERO)
* [PER\_BSD](#PER_BSD)
* [PER\_HPUX](#PER_HPUX)
* [PER\_IRIX32](#PER_IRIX32)
* [PER\_IRIX64](#PER_IRIX64)
* [PER\_IRIXN32](#PER_IRIXN32)
* [PER\_ISCR4](#PER_ISCR4)
* [PER\_LINUX](#PER_LINUX)
* [PER\_LINUX32](#PER_LINUX32)
* [PER\_LINUX32\_3GB](#PER_LINUX32_3GB)
* [PER\_LINUX\_32BIT](#PER_LINUX_32BIT)
* [PER\_LINUX\_FDPIC](#PER_LINUX_FDPIC)
* [PER\_MASK](#PER_MASK)
* [PER\_OSF4](#PER_OSF4)
* [PER\_OSR5](#PER_OSR5)
* [PER\_RISCOS](#PER_RISCOS)
* [PER\_SCOSVR3](#PER_SCOSVR3)
* [PER\_SOLARIS](#PER_SOLARIS)
* [PER\_SUNOS](#PER_SUNOS)
* [PER\_SVR3](#PER_SVR3)
* [PER\_SVR4](#PER_SVR4)
* [PER\_UW7](#PER_UW7)
* [PER\_WYSEV386](#PER_WYSEV386)
* [PER\_XENIX](#PER_XENIX)
* [PRIO\_MAX](#PRIO_MAX)
* [PRIO\_MIN](#PRIO_MIN)
* [PTRACE\_ARCH\_PRCTL](#PTRACE_ARCH_PRCTL)
* [PTRACE\_ATTACH](#PTRACE_ATTACH)
* [PTRACE\_CONT](#PTRACE_CONT)
* [PTRACE\_DETACH](#PTRACE_DETACH)
* [PTRACE\_GETEVENTMSG](#PTRACE_GETEVENTMSG)
* [PTRACE\_GETFPREGS](#PTRACE_GETFPREGS)
* [PTRACE\_GETFPXREGS](#PTRACE_GETFPXREGS)
* [PTRACE\_GETREGS](#PTRACE_GETREGS)
* [PTRACE\_GETREGSET](#PTRACE_GETREGSET)
* [PTRACE\_GETSIGINFO](#PTRACE_GETSIGINFO)
* [PTRACE\_GETSIGMASK](#PTRACE_GETSIGMASK)
* [PTRACE\_GET\_RSEQ\_CONFIGURATION](#PTRACE_GET_RSEQ_CONFIGURATION)
* [PTRACE\_GET\_SYSCALL\_INFO](#PTRACE_GET_SYSCALL_INFO)
* [PTRACE\_GET\_THREAD\_AREA](#PTRACE_GET_THREAD_AREA)
* [PTRACE\_INTERRUPT](#PTRACE_INTERRUPT)
* [PTRACE\_KILL](#PTRACE_KILL)
* [PTRACE\_LISTEN](#PTRACE_LISTEN)
* [PTRACE\_PEEKDATA](#PTRACE_PEEKDATA)
* [PTRACE\_PEEKSIGINFO](#PTRACE_PEEKSIGINFO)
* [PTRACE\_PEEKTEXT](#PTRACE_PEEKTEXT)
* [PTRACE\_PEEKUSER](#PTRACE_PEEKUSER)
* [PTRACE\_POKEDATA](#PTRACE_POKEDATA)
* [PTRACE\_POKETEXT](#PTRACE_POKETEXT)
* [PTRACE\_POKEUSER](#PTRACE_POKEUSER)
* [PTRACE\_SECCOMP\_GET\_FILTER](#PTRACE_SECCOMP_GET_FILTER)
* [PTRACE\_SECCOMP\_GET\_METADATA](#PTRACE_SECCOMP_GET_METADATA)
* [PTRACE\_SEIZE](#PTRACE_SEIZE)
* [PTRACE\_SETFPREGS](#PTRACE_SETFPREGS)
* [PTRACE\_SETFPXREGS](#PTRACE_SETFPXREGS)
* [PTRACE\_SETOPTIONS](#PTRACE_SETOPTIONS)
* [PTRACE\_SETREGS](#PTRACE_SETREGS)
* [PTRACE\_SETREGSET](#PTRACE_SETREGSET)
* [PTRACE\_SETSIGINFO](#PTRACE_SETSIGINFO)
* [PTRACE\_SETSIGMASK](#PTRACE_SETSIGMASK)
* [PTRACE\_SET\_THREAD\_AREA](#PTRACE_SET_THREAD_AREA)
* [PTRACE\_SINGLEBLOCK](#PTRACE_SINGLEBLOCK)
* [PTRACE\_SINGLESTEP](#PTRACE_SINGLESTEP)
* [PTRACE\_SYSCALL](#PTRACE_SYSCALL)
* [PTRACE\_SYSEMU](#PTRACE_SYSEMU)
* [PTRACE\_SYSEMU\_SINGLESTEP](#PTRACE_SYSEMU_SINGLESTEP)
* [PTRACE\_TRACEME](#PTRACE_TRACEME)
* [READ\_IMPLIES\_EXEC](#READ_IMPLIES_EXEC)
* [R\_OK](#R_OK)
* [SHORT\_INODE](#SHORT_INODE)
* [SIGEV\_MAX\_SIZE](#SIGEV_MAX_SIZE)
* [SIGEV\_PAD\_SIZE](#SIGEV_PAD_SIZE)
* [SIGRTMAX](#SIGRTMAX)
* [SIGRTMIN](#SIGRTMIN)
* [SOL\_RAW](#SOL_RAW)
* [SOL\_SOCKET](#SOL_SOCKET)
* [SOL\_TCP](#SOL_TCP)
* [SOL\_UDP](#SOL_UDP)
* [STATX\_BASIC\_STATS](#STATX_BASIC_STATS)
* [STDERR\_FILENO](#STDERR_FILENO)
* [STDIN\_FILENO](#STDIN_FILENO)
* [STDOUT\_FILENO](#STDOUT_FILENO)
* [STICKY\_TIMEOUTS](#STICKY_TIMEOUTS)
* [SWAP\_FLAG\_PRIO\_MASK](#SWAP_FLAG_PRIO_MASK)
* [SWAP\_FLAG\_PRIO\_SHIFT](#SWAP_FLAG_PRIO_SHIFT)
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
* [SYS\_cachestat](#SYS_cachestat)
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
* [SYS\_fchmodat2](#SYS_fchmodat2)
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
* [SYS\_fstatfs](#SYS_fstatfs)
* [SYS\_fsync](#SYS_fsync)
* [SYS\_ftruncate](#SYS_ftruncate)
* [SYS\_futex](#SYS_futex)
* [SYS\_futex\_waitv](#SYS_futex_waitv)
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
* [SYS\_map\_shadow\_stack](#SYS_map_shadow_stack)
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
* [SYS\_newfstatat](#SYS_newfstatat)
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
* [SYS\_process\_mrelease](#SYS_process_mrelease)
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
* [SYS\_quotactl\_fd](#SYS_quotactl_fd)
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
* [SYS\_set\_mempolicy\_home\_node](#SYS_set_mempolicy_home_node)
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
* [S\_IFBLK](#S_IFBLK)
* [S\_IFCHR](#S_IFCHR)
* [S\_IFDIR](#S_IFDIR)
* [S\_IFIFO](#S_IFIFO)
* [S\_IFLNK](#S_IFLNK)
* [S\_IFMT](#S_IFMT)
* [S\_IFREG](#S_IFREG)
* [S\_IFSOCK](#S_IFSOCK)
* [TIOCGWINSZ](#TIOCGWINSZ)
* [UNAME26](#UNAME26)
* [UTIME\_NOW](#UTIME_NOW)
* [UTIME\_OMIT](#UTIME_OMIT)
* [WAIT\_ANY](#WAIT_ANY)
* [WAIT\_MYPGRP](#WAIT_MYPGRP)
* [WHOLE\_SECONDS](#WHOLE_SECONDS)
* [W\_OK](#W_OK)
* [X\_OK](#X_OK)

Variables (0)

This section is empty.

Procedures (330)

* [S\_ISBLK](#S_ISBLK)
* [S\_ISCHR](#S_ISCHR)
* [S\_ISDIR](#S_ISDIR)
* [S\_ISFIFO](#S_ISFIFO)
* [S\_ISLNK](#S_ISLNK)
* [S\_ISREG](#S_ISREG)
* [S\_ISSOCK](#S_ISSOCK)
* [WCOREDUMP](#WCOREDUMP)
* [WEXITSTATUS](#WEXITSTATUS)
* [WIFCONTINUED](#WIFCONTINUED)
* [WIFEXITED](#WIFEXITED)
* [WIFSIGNALED](#WIFSIGNALED)
* [WIFSTOPPED](#WIFSTOPPED)
* [WSTOPSIG](#WSTOPSIG)
* [WTERMSIG](#WTERMSIG)
* [accept](#accept)
* [access](#access)
* [acct](#acct)
* [adjtimex](#adjtimex)
* [alarm](#alarm)
* [arch\_prctl](#arch_prctl)
* [bind](#bind)
* [brk](#brk)
* [chdir](#chdir)
* [chmod](#chmod)
* [chown](#chown)
* [chroot](#chroot)
* [clock\_getres](#clock_getres)
* [clock\_gettime](#clock_gettime)
* [clock\_nanosleep](#clock_nanosleep)
* [clock\_settime](#clock_settime)
* [close](#close)
* [close\_range](#close_range)
* [connect](#connect)
* [creat](#creat)
* [delete\_module](#delete_module)
* [dirent\_iterate\_buf](#dirent_iterate_buf)
* [dirent\_name](#dirent_name)
* [dup](#dup)
* [dup2](#dup2)
* [dup3](#dup3)
* [epoll\_create](#epoll_create)
* [epoll\_create1](#epoll_create1)
* [epoll\_ctl](#epoll_ctl)
* [epoll\_pwait](#epoll_pwait)
* [epoll\_pwait2](#epoll_pwait2)
* [epoll\_wait](#epoll_wait)
* [eventfd](#eventfd)
* [execve](#execve)
* [execveat](#execveat)
* [exit](#exit)
* [exit\_group](#exit_group)
* [faccessat](#faccessat)
* [faccessat2](#faccessat2)
* [fchdir](#fchdir)
* [fchmod](#fchmod)
* [fchmodat](#fchmodat)
* [fchown](#fchown)
* [fchownat](#fchownat)
* [fcntl\_add\_seals](#fcntl_add_seals)
* [fcntl\_dupfd](#fcntl_dupfd)
* [fcntl\_dupfd\_cloexec](#fcntl_dupfd_cloexec)
* [fcntl\_get\_file\_rw\_hint](#fcntl_get_file_rw_hint)
* [fcntl\_get\_rw\_hint](#fcntl_get_rw_hint)
* [fcntl\_get\_seals](#fcntl_get_seals)
* [fcntl\_getfd](#fcntl_getfd)
* [fcntl\_getfl](#fcntl_getfl)
* [fcntl\_getlease](#fcntl_getlease)
* [fcntl\_getlk](#fcntl_getlk)
* [fcntl\_getown\_ex](#fcntl_getown_ex)
* [fcntl\_getpipe\_sz](#fcntl_getpipe_sz)
* [fcntl\_getsig](#fcntl_getsig)
* [fcntl\_notify](#fcntl_notify)
* [fcntl\_set\_file\_rw\_hint](#fcntl_set_file_rw_hint)
* [fcntl\_set\_rw\_hint](#fcntl_set_rw_hint)
* [fcntl\_setfd](#fcntl_setfd)
* [fcntl\_setfl](#fcntl_setfl)
* [fcntl\_setlease](#fcntl_setlease)
* [fcntl\_setlk](#fcntl_setlk)
* [fcntl\_setlkw](#fcntl_setlkw)
* [fcntl\_setown\_ex](#fcntl_setown_ex)
* [fcntl\_setpipe\_sz](#fcntl_setpipe_sz)
* [fcntl\_setsig](#fcntl_setsig)
* [fdatasync](#fdatasync)
* [fgetxattr](#fgetxattr)
* [flistxattr](#flistxattr)
* [flock](#flock)
* [fork](#fork)
* [fremovexattr](#fremovexattr)
* [fsetxattr](#fsetxattr)
* [fstat](#fstat)
* [fstatat](#fstatat)
* [fstatfs](#fstatfs)
* [fsync](#fsync)
* [ftruncate](#ftruncate)
* [futex\_cmp\_requeue](#futex_cmp_requeue)
* [futex\_op](#futex_op)
* [futex\_requeue](#futex_requeue)
* [futex\_wait](#futex_wait)
* [futex\_wait\_bitset](#futex_wait_bitset)
* [futex\_wake](#futex_wake)
* [futex\_wake\_bitset](#futex_wake_bitset)
* [futex\_wake\_op](#futex_wake_op)
* [getcpu](#getcpu)
* [getcwd](#getcwd)
* [getdents](#getdents)
* [getegid](#getegid)
* [geteuid](#geteuid)
* [getgid](#getgid)
* [getgroups](#getgroups)
* [getitimer](#getitimer)
* [getpeername](#getpeername)
* [getpgid](#getpgid)
* [getpgrp](#getpgrp)
* [getpid](#getpid)
* [getppid](#getppid)
* [getpriority](#getpriority)
* [getrandom](#getrandom)
* [getresgid](#getresgid)
* [getresuid](#getresuid)
* [getrlimit](#getrlimit)
* [getrusage](#getrusage)
* [getsid](#getsid)
* [getsockname](#getsockname)
* [getsockopt\_base](#getsockopt_base)
* [getsockopt\_sock](#getsockopt_sock)
* [getsockopt\_tcp](#getsockopt_tcp)
* [getsockopt\_udp](#getsockopt_udp)
* [gettid](#gettid)
* [gettimeofday](#gettimeofday)
* [getuid](#getuid)
* [getxattr](#getxattr)
* [init\_module](#init_module)
* [inotify\_add\_watch](#inotify_add_watch)
* [inotify\_init](#inotify_init)
* [inotify\_init1](#inotify_init1)
* [inotify\_rm\_watch](#inotify_rm_watch)
* [io\_uring\_enter](#io_uring_enter)
* [io\_uring\_enter2](#io_uring_enter2)
* [io\_uring\_register](#io_uring_register)
* [io\_uring\_setup](#io_uring_setup)
* [ioctl](#ioctl)
* [ioperm](#ioperm)
* [kill](#kill)
* [lchown](#lchown)
* [lgetxattr](#lgetxattr)
* [link](#link)
* [linkat](#linkat)
* [listen](#listen)
* [listxattr](#listxattr)
* [llistxattr](#llistxattr)
* [lremovexattr](#lremovexattr)
* [lseek](#lseek)
* [lsetxattr](#lsetxattr)
* [lstat](#lstat)
* [madvise](#madvise)
* [memfd\_create](#memfd_create)
* [mincore](#mincore)
* [mkdir](#mkdir)
* [mkdirat](#mkdirat)
* [mknod](#mknod)
* [mknodat](#mknodat)
* [mlock](#mlock)
* [mlockall](#mlockall)
* [mmap](#mmap)
* [modify\_ldt](#modify_ldt)
* [mount](#mount)
* [mprotect](#mprotect)
* [mremap](#mremap)
* [msgctl](#msgctl)
* [msgget](#msgget)
* [msgrcv](#msgrcv)
* [msgsnd](#msgsnd)
* [msync](#msync)
* [munlock](#munlock)
* [munlockall](#munlockall)
* [munmap](#munmap)
* [nanosleep](#nanosleep)
* [open](#open)
* [openat](#openat)
* [pause](#pause)
* [perf\_cache\_config](#perf_cache_config)
* [perf\_event\_open](#perf_event_open)
* [personality](#personality)
* [pidfd\_getfd](#pidfd_getfd)
* [pidfd\_open](#pidfd_open)
* [pipe2](#pipe2)
* [pivot\_root](#pivot_root)
* [poll](#poll)
* [ppoll](#ppoll)
* [prctl](#prctl)
* [pread](#pread)
* [ptrace\_attach](#ptrace_attach)
* [ptrace\_cont](#ptrace_cont)
* [ptrace\_detach](#ptrace_detach)
* [ptrace\_geteventmsg](#ptrace_geteventmsg)
* [ptrace\_getfpregs](#ptrace_getfpregs)
* [ptrace\_getfpxregs](#ptrace_getfpxregs)
* [ptrace\_getregs](#ptrace_getregs)
* [ptrace\_getregset](#ptrace_getregset)
* [ptrace\_getsiginfo](#ptrace_getsiginfo)
* [ptrace\_getsigmask](#ptrace_getsigmask)
* [ptrace\_interrupt](#ptrace_interrupt)
* [ptrace\_listen](#ptrace_listen)
* [ptrace\_peek](#ptrace_peek)
* [ptrace\_peeksiginfo](#ptrace_peeksiginfo)
* [ptrace\_poke](#ptrace_poke)
* [ptrace\_seize](#ptrace_seize)
* [ptrace\_setfpregs](#ptrace_setfpregs)
* [ptrace\_setfpxregs](#ptrace_setfpxregs)
* [ptrace\_setoptions](#ptrace_setoptions)
* [ptrace\_setregs](#ptrace_setregs)
* [ptrace\_setregset](#ptrace_setregset)
* [ptrace\_setsigmask](#ptrace_setsigmask)
* [ptrace\_singlestep](#ptrace_singlestep)
* [ptrace\_syscall](#ptrace_syscall)
* [ptrace\_sysemu](#ptrace_sysemu)
* [ptrace\_sysemu\_singlestep](#ptrace_sysemu_singlestep)
* [ptrace\_traceme](#ptrace_traceme)
* [pwrite](#pwrite)
* [quotactl](#quotactl)
* [read](#read)
* [readahead](#readahead)
* [readlink](#readlink)
* [readlinkat](#readlinkat)
* [readv](#readv)
* [reboot](#reboot)
* [recvfrom](#recvfrom)
* [recvmmsg](#recvmmsg)
* [recvmsg](#recvmsg)
* [removexattr](#removexattr)
* [rename](#rename)
* [renameat](#renameat)
* [renameat2](#renameat2)
* [rmdir](#rmdir)
* [rt\_sigaction](#rt_sigaction)
* [rt\_sigpending](#rt_sigpending)
* [rt\_sigprocmask](#rt_sigprocmask)
* [rt\_sigqueueinfo](#rt_sigqueueinfo)
* [rt\_sigreturn](#rt_sigreturn)
* [rt\_sigsuspend](#rt_sigsuspend)
* [rt\_sigtimedwait](#rt_sigtimedwait)
* [rt\_tgsigqueueinfo](#rt_tgsigqueueinfo)
* [sched\_get\_priority\_max](#sched_get_priority_max)
* [sched\_get\_priority\_min](#sched_get_priority_min)
* [sched\_getaffinity](#sched_getaffinity)
* [sched\_getattr](#sched_getattr)
* [sched\_getparam](#sched_getparam)
* [sched\_getscheduler](#sched_getscheduler)
* [sched\_rr\_get\_interval](#sched_rr_get_interval)
* [sched\_setaffinity](#sched_setaffinity)
* [sched\_setattr](#sched_setattr)
* [sched\_setparam](#sched_setparam)
* [sched\_setscheduler](#sched_setscheduler)
* [sched\_yield](#sched_yield)
* [semctl3](#semctl3)
* [semctl4](#semctl4)
* [semget](#semget)
* [semop](#semop)
* [sendfile](#sendfile)
* [sendmmsg](#sendmmsg)
* [sendmsg](#sendmsg)
* [sendto](#sendto)
* [set\_tid\_address](#set_tid_address)
* [setdomainname](#setdomainname)
* [setgid](#setgid)
* [setgroups](#setgroups)
* [sethostname](#sethostname)
* [setitimer](#setitimer)
* [setpgid](#setpgid)
* [setpriority](#setpriority)
* [setregid](#setregid)
* [setresgid](#setresgid)
* [setresuid](#setresuid)
* [setreuid](#setreuid)
* [setrlimit](#setrlimit)
* [setsid](#setsid)
* [setsockopt\_base](#setsockopt_base)
* [setsockopt\_sock](#setsockopt_sock)
* [setsockopt\_tcp](#setsockopt_tcp)
* [setsockopt\_udp](#setsockopt_udp)
* [settimeofday](#settimeofday)
* [setuid](#setuid)
* [setxattr](#setxattr)
* [shmat](#shmat)
* [shmctl\_ds](#shmctl_ds)
* [shmctl\_info](#shmctl_info)
* [shmdt](#shmdt)
* [shmget](#shmget)
* [shutdown](#shutdown)
* [sigaltstack](#sigaltstack)
* [socket](#socket)
* [socketpair](#socketpair)
* [splice](#splice)
* [stat](#stat)
* [statfs](#statfs)
* [statx](#statx)
* [swapoff](#swapoff)
* [swapon](#swapon)
* [symlink](#symlink)
* [symlinkat](#symlinkat)
* [sync](#sync)
* [sysinfo](#sysinfo)
* [syslog](#syslog)
* [tee](#tee)
* [tgkill](#tgkill)
* [time](#time)
* [timer\_create](#timer_create)
* [timer\_delete](#timer_delete)
* [timer\_getoverrun](#timer_getoverrun)
* [timer\_gettime](#timer_gettime)
* [timer\_settime](#timer_settime)
* [timerfd\_create](#timerfd_create)
* [timerfd\_gettime](#timerfd_gettime)
* [timerfd\_settime](#timerfd_settime)
* [times](#times)
* [truncate](#truncate)
* [umask](#umask)
* [umount2](#umount2)
* [uname](#uname)
* [unlink](#unlink)
* [unlinkat](#unlinkat)
* [utimensat](#utimensat)
* [vfork](#vfork)
* [vhangup](#vhangup)
* [wait4](#wait4)
* [waitid](#waitid)
* [waitpid](#waitpid)
* [write](#write)
* [writev](#writev)

Procedure Groups (10)

* [fcntl](#fcntl)
* [futex](#futex)
* [getsockopt](#getsockopt)
* [ptrace](#ptrace)
* [recv](#recv)
* [semctl](#semctl)
* [send](#send)
* [setsockopt](#setsockopt)
* [shmctl](#shmctl)
* [syscall](#syscall)

## Types

### [Address\_Family ¶](#Address_Family) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L772)

```
Address_Family :: enum u16 {
	UNSPEC     = 0, 
	LOCAL      = 1, 
	UNIX       = 1, 
	FILE       = 1, 
	INET       = 2, 
	AX25       = 3, 
	IPX        = 4, 
	APPLETALK  = 5, 
	NETROM     = 6, 
	BRIDGE     = 7, 
	ATMPVC     = 8, 
	X25        = 9, 
	INET6      = 10, 
	ROSE       = 11, 
	DECnet     = 12, 
	NETBEUI    = 13, 
	SECURITY   = 14, 
	KEY        = 15, 
	NETLINK    = 16, 
	ROUTE      = 16, 
	PACKET     = 17, 
	ASH        = 18, 
	ECONET     = 19, 
	ATMSVC     = 20, 
	RDS        = 21, 
	SNA        = 22, 
	IRDA       = 23, 
	PPPOX      = 24, 
	WANPIPE    = 25, 
	LLC        = 26, 
	IB         = 27, 
	MPLS       = 28, 
	CAN        = 29, 
	TIPC       = 30, 
	BLUETOOTH  = 31, 
	IUCV       = 32, 
	RXRPC      = 33, 
	ISDN       = 34, 
	PHONET     = 35, 
	IEEE802154 = 36, 
	CAIF       = 37, 
	ALG        = 38, 
	NFC        = 39, 
	VSOCK      = 40, 
	KCM        = 41, 
	QIPCRTR    = 42, 
	SMC        = 43, 
	XDP        = 44, 
	MCTP       = 45, 
}
```

 

Address family for the socket.
Typically there's one address family for every protocol family.




##### Related Procedures With Parameters

* [socket](/core/sys/linux/#socket)

### [Branch\_Sample\_Type ¶](#Branch_Sample_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L417)

```
Branch_Sample_Type :: bit_set[Branch_Sample_Type_Bits; u64]
```

 

Specifies which branches to include in branch record.

### [Branch\_Sample\_Type\_Bits ¶](#Branch_Sample_Type_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L889)

```
Branch_Sample_Type_Bits :: enum int {
	USER       = 0, 
	KERNEL     = 1, 
	HV         = 2, 
	ANY        = 3, 
	ANY_CALL   = 4, 
	ANY_RETURN = 5, 
	IND_CALL   = 6, 
	ABORT_TX   = 7, 
	IN_TX      = 8, 
	NO_TX      = 9, 
	COND       = 10, 
	CALL_STACK = 11, 
	IND_JUMP   = 12, 
	CALL       = 13, 
	NO_FLAGS   = 14, 
	NO_CYCLES  = 15, 
	TYPE_SAVE  = 16, 
	HW_INDEX   = 17, 
	PRIV_SAVE  = 18, 
}
```

 

Bits for Branch\_Sample\_Type

### [Clock\_Id ¶](#Clock_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1824)

```
Clock_Id :: enum int {
	REALTIME           = 0, 
	MONOTONIC          = 1, 
	PROCESS_CPUTIME_ID = 2, 
	THREAD_CPUTIME_ID  = 3, 
	MONOTONIC_RAW      = 4, 
	REALTIME_COARSE    = 5, 
	MONOTONIC_COARSE   = 6, 
	BOOTTIME           = 7, 
	REALTIME_ALARM     = 8, 
	BOOTTIME_ALARM     = 9, 
}
```

 

Clock IDs for various system clocks.




##### Related Procedures With Parameters

* [clock\_getres](/core/sys/linux/#clock_getres)
* [clock\_gettime](/core/sys/linux/#clock_gettime)
* [clock\_nanosleep](/core/sys/linux/#clock_nanosleep)
* [clock\_settime](/core/sys/linux/#clock_settime)
* [timer\_create](/core/sys/linux/#timer_create)
* [timerfd\_create](/core/sys/linux/#timerfd_create)

### [Clock\_State ¶](#Clock_State) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1695)

```
Clock_State :: enum i32 {
	TIME_OK    = 0, 
	TIME_INS   = 1, 
	TIME_DEL   = 2, 
	TIME_OOP   = 3, 
	TIME_WAIT  = 4, 
	TIME_ERROR = 5, 
}
```

##### Related Procedures With Returns

* [adjtimex](/core/sys/linux/#adjtimex)

### [Close\_Range\_Flags ¶](#Close_Range_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L282)

```
Close_Range_Flags :: bit_set[Close_Range_Flags_Bits; u32]
```

 

Flags for close\_range(2).




##### Related Procedures With Parameters

* [close\_range](/core/sys/linux/#close_range)

### [Close\_Range\_Flags\_Bits ¶](#Close_Range_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L411)

```
Close_Range_Flags_Bits :: enum int {
	CLOEXEC = 2, 
	UNSHARE = 1, 
}
```

 

Bits for Close\_Range\_Flags

### [Cpu\_Set ¶](#Cpu_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1754)

```
Cpu_Set :: bit_set[int]
```

### [Dev ¶](#Dev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L6)

```
Dev :: distinct u64
```

 

Type for storage device handle.




##### Related Procedures With Parameters

* [mknod](/core/sys/linux/#mknod)
* [mknodat](/core/sys/linux/#mknodat)

### [Dirent ¶](#Dirent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L294)

```
Dirent :: struct {
	ino:    Inode,
	off:    i64,
	reclen: u16,
	type:   Dirent_Type,
	name:   [0]u8,
}
```

 

Directory entry record.
Recommended to iterate these with `dirent_iterate_buf()`,
and obtain the name via `dirent_name()`.




##### Related Procedures With Parameters

* [dirent\_name](/core/sys/linux/#dirent_name)



##### Related Procedures With Returns

* [dirent\_iterate\_buf](/core/sys/linux/#dirent_iterate_buf)

### [Dirent\_Type ¶](#Dirent_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L428)

```
Dirent_Type :: enum u8 {
	UNKNOWN = 0, 
	FIFO    = 1, 
	CHR     = 2, 
	DIR     = 4, 
	BLK     = 6, 
	REG     = 8, 
	LNK     = 10, 
	SOCK    = 12, 
	WHT     = 14, 
}
```

 

Type of the file in a directory entry

### [EPoll\_Ctl\_Opcode ¶](#EPoll_Ctl_Opcode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1870)

```
EPoll_Ctl_Opcode :: enum i32 {
	ADD = 1, 
	DEL = 2, 
	MOD = 3, 
}
```

##### Related Procedures With Parameters

* [epoll\_ctl](/core/sys/linux/#epoll_ctl)

### [EPoll\_Data ¶](#EPoll_Data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1442)

```
EPoll_Data :: struct #raw_union {
	ptr: rawptr,
	fd:  Fd,
	u32: u32,
	u64: u64,
}
```

### [EPoll\_Event ¶](#EPoll_Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1459)

```
EPoll_Event :: struct #packed {
	events: bit_set[EPoll_Event_Kind; u32],
	data:   EPoll_Data,
}
```

##### Related Procedures With Parameters

* [epoll\_ctl](/core/sys/linux/#epoll_ctl)
* [epoll\_pwait](/core/sys/linux/#epoll_pwait)
* [epoll\_pwait2](/core/sys/linux/#epoll_pwait2)
* [epoll\_wait](/core/sys/linux/#epoll_wait)

### [EPoll\_Event\_Kind ¶](#EPoll_Event_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1851)

```
EPoll_Event_Kind :: enum u32 {
	IN        = 0, 
	PRI       = 1, 
	OUT       = 2, 
	RDNORM    = 6, 
	RDBAND    = 7, 
	WRNORM    = 8, 
	WRBAND    = 9, 
	MSG       = 10, 
	ERR       = 3, 
	HUP       = 4, 
	RDHUP     = 13, 
	EXCLUSIVE = 28, 
	WAKEUP    = 29, 
	ONESHOT   = 30, 
	ET        = 31, 
}
```

### [EPoll\_Event\_Set ¶](#EPoll_Event_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1868)

```
EPoll_Event_Set :: bit_set[EPoll_Event_Kind; u32]
```

### [EPoll\_Flags ¶](#EPoll_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1440)

```
EPoll_Flags :: bit_set[EPoll_Flags_Bits; i32]
```

 

Flags for epoll\_create(2) syscall.




##### Related Procedures With Parameters

* [epoll\_create1](/core/sys/linux/#epoll_create1)

### [EPoll\_Flags\_Bits ¶](#EPoll_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1847)

```
EPoll_Flags_Bits :: enum int {
	FDCLOEXEC = 19, 
}
```

 

Bits for epoll\_create(2) flags.

### [Errno ¶](#Errno) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L12)

```
Errno :: enum i32 {
	NONE            = 0, 
	// Errno-base
	EPERM           = 1, 
	ENOENT          = 2, 
	ESRCH           = 3, 
	EINTR           = 4, 
	EIO             = 5, 
	ENXIO           = 6, 
	E2BIG           = 7, 
	ENOEXEC         = 8, 
	EBADF           = 9, 
	ECHILD          = 10, 
	EAGAIN          = 11, 
	ENOMEM          = 12, 
	EACCES          = 13, 
	EFAULT          = 14, 
	ENOTBLK         = 15, 
	EBUSY           = 16, 
	EEXIST          = 17, 
	EXDEV           = 18, 
	ENODEV          = 19, 
	ENOTDIR         = 20, 
	EISDIR          = 21, 
	EINVAL          = 22, 
	ENFILE          = 23, 
	EMFILE          = 24, 
	ENOTTY          = 25, 
	ETXTBSY         = 26, 
	EFBIG           = 27, 
	ENOSPC          = 28, 
	ESPIPE          = 29, 
	EROFS           = 30, 
	EMLINK          = 31, 
	EPIPE           = 32, 
	EDOM            = 33, 
	ERANGE          = 34, 
	// Linux
	EDEADLK         = 35, 
	ENAMETOOLONG    = 36, 
	ENOLCK          = 37, 
	ENOSYS          = 38, 
	ENOTEMPTY       = 39, 
	ELOOP           = 40, 
	EUNKNOWN_41     = 41, 
	ENOMSG          = 42, 
	EIDRM           = 43, 
	ECHRNG          = 44, 
	EL2NSYNC        = 45, 
	EL3HLT          = 46, 
	EL3RST          = 47, 
	ELNRNG          = 48, 
	EUNATCH         = 49, 
	ENOCSI          = 50, 
	EL2HLT          = 51, 
	EBADE           = 52, 
	EBADR           = 53, 
	EXFULL          = 54, 
	ENOANO          = 55, 
	EBADRQC         = 56, 
	EBADSLT         = 57, 
	EUNKNOWN_58     = 58, 
	EBFONT          = 59, 
	ENOSTR          = 60, 
	ENODATA         = 61, 
	ETIME           = 62, 
	ENOSR           = 63, 
	ENONET          = 64, 
	ENOPKG          = 65, 
	EREMOTE         = 66, 
	ENOLINK         = 67, 
	EADV            = 68, 
	ESRMNT          = 69, 
	ECOMM           = 70, 
	EPROTO          = 71, 
	EMULTIHOP       = 72, 
	EDOTDOT         = 73, 
	EBADMSG         = 74, 
	EOVERFLOW       = 75, 
	ENOTUNIQ        = 76, 
	EBADFD          = 77, 
	EREMCHG         = 78, 
	ELIBACC         = 79, 
	ELIBBAD         = 80, 
	ELIBSCN         = 81, 
	ELIBMAX         = 82, 
	ELIBEXEC        = 83, 
	EILSEQ          = 84, 
	ERESTART        = 85, 
	ESTRPIPE        = 86, 
	EUSERS          = 87, 
	ENOTSOCK        = 88, 
	EDESTADDRREQ    = 89, 
	EMSGSIZE        = 90, 
	EPROTOTYPE      = 91, 
	ENOPROTOOPT     = 92, 
	EPROTONOSUPPORT = 93, 
	ESOCKTNOSUPPORT = 94, 
	EOPNOTSUPP      = 95, 
	EPFNOSUPPORT    = 96, 
	EAFNOSUPPORT    = 97, 
	EADDRINUSE      = 98, 
	EADDRNOTAVAIL   = 99, 
	ENETDOWN        = 100, 
	ENETUNREACH     = 101, 
	ENETRESET       = 102, 
	ECONNABORTED    = 103, 
	ECONNRESET      = 104, 
	ENOBUFS         = 105, 
	EISCONN         = 106, 
	ENOTCONN        = 107, 
	ESHUTDOWN       = 108, 
	ETOOMANYREFS    = 109, 
	ETIMEDOUT       = 110, 
	ECONNREFUSED    = 111, 
	EHOSTDOWN       = 112, 
	EHOSTUNREACH    = 113, 
	EALREADY        = 114, 
	EINPROGRESS     = 115, 
	ESTALE          = 116, 
	EUCLEAN         = 117, 
	ENOTNAM         = 118, 
	ENAVAIL         = 119, 
	EISNAM          = 120, 
	EREMOTEIO       = 121, 
	EDQUOT          = 122, 
	ENOMEDIUM       = 123, 
	EMEDIUMTYPE     = 124, 
	ECANCELED       = 125, 
	ENOKEY          = 126, 
	EKEYEXPIRED     = 127, 
	EKEYREVOKED     = 128, 
	EKEYREJECTED    = 129, 
	EOWNERDEAD      = 130, 
	ENOTRECOVERABLE = 131, 
	ERFKILL         = 132, 
	EHWPOISON       = 133, 
	// Errno aliases
	EWOULDBLOCK     = 11, 
	EDEADLOCK       = 35, 
}
```

 

Represents an error returned by most of syscalls




##### Related Procedures With Returns

* [accept](/core/sys/linux/#accept)
* [access](/core/sys/linux/#access)
* [acct](/core/sys/linux/#acct)
* [adjtimex](/core/sys/linux/#adjtimex)
* [arch\_prctl](/core/sys/linux/#arch_prctl)
* [bind](/core/sys/linux/#bind)
* [brk](/core/sys/linux/#brk)
* [chdir](/core/sys/linux/#chdir)
* [chmod](/core/sys/linux/#chmod)
* [chown](/core/sys/linux/#chown)
* [chroot](/core/sys/linux/#chroot)
* [clock\_getres](/core/sys/linux/#clock_getres)
* [clock\_gettime](/core/sys/linux/#clock_gettime)
* [clock\_nanosleep](/core/sys/linux/#clock_nanosleep)
* [clock\_settime](/core/sys/linux/#clock_settime)
* [close](/core/sys/linux/#close)
* [close\_range](/core/sys/linux/#close_range)
* [connect](/core/sys/linux/#connect)
* [creat](/core/sys/linux/#creat)
* [delete\_module](/core/sys/linux/#delete_module)
* [dup](/core/sys/linux/#dup)
* [dup2](/core/sys/linux/#dup2)
* [dup3](/core/sys/linux/#dup3)
* [epoll\_create](/core/sys/linux/#epoll_create)
* [epoll\_create1](/core/sys/linux/#epoll_create1)
* [epoll\_ctl](/core/sys/linux/#epoll_ctl)
* [epoll\_pwait](/core/sys/linux/#epoll_pwait)
* [epoll\_pwait2](/core/sys/linux/#epoll_pwait2)
* [epoll\_wait](/core/sys/linux/#epoll_wait)
* [eventfd](/core/sys/linux/#eventfd)
* [execve](/core/sys/linux/#execve)
* [execveat](/core/sys/linux/#execveat)
* [faccessat](/core/sys/linux/#faccessat)
* [faccessat2](/core/sys/linux/#faccessat2)
* [fchdir](/core/sys/linux/#fchdir)
* [fchmod](/core/sys/linux/#fchmod)
* [fchmodat](/core/sys/linux/#fchmodat)
* [fchown](/core/sys/linux/#fchown)
* [fchownat](/core/sys/linux/#fchownat)
* [fcntl\_add\_seals](/core/sys/linux/#fcntl_add_seals)
* [fcntl\_dupfd](/core/sys/linux/#fcntl_dupfd)
* [fcntl\_dupfd\_cloexec](/core/sys/linux/#fcntl_dupfd_cloexec)
* [fcntl\_get\_file\_rw\_hint](/core/sys/linux/#fcntl_get_file_rw_hint)
* [fcntl\_get\_rw\_hint](/core/sys/linux/#fcntl_get_rw_hint)
* [fcntl\_get\_seals](/core/sys/linux/#fcntl_get_seals)
* [fcntl\_getfd](/core/sys/linux/#fcntl_getfd)
* [fcntl\_getfl](/core/sys/linux/#fcntl_getfl)
* [fcntl\_getlease](/core/sys/linux/#fcntl_getlease)
* [fcntl\_getlk](/core/sys/linux/#fcntl_getlk)
* [fcntl\_getown\_ex](/core/sys/linux/#fcntl_getown_ex)
* [fcntl\_getpipe\_sz](/core/sys/linux/#fcntl_getpipe_sz)
* [fcntl\_getsig](/core/sys/linux/#fcntl_getsig)
* [fcntl\_notify](/core/sys/linux/#fcntl_notify)
* [fcntl\_set\_file\_rw\_hint](/core/sys/linux/#fcntl_set_file_rw_hint)
* [fcntl\_set\_rw\_hint](/core/sys/linux/#fcntl_set_rw_hint)
* [fcntl\_setfd](/core/sys/linux/#fcntl_setfd)
* [fcntl\_setfl](/core/sys/linux/#fcntl_setfl)
* [fcntl\_setlease](/core/sys/linux/#fcntl_setlease)
* [fcntl\_setlk](/core/sys/linux/#fcntl_setlk)
* [fcntl\_setlkw](/core/sys/linux/#fcntl_setlkw)
* [fcntl\_setown\_ex](/core/sys/linux/#fcntl_setown_ex)
* [fcntl\_setpipe\_sz](/core/sys/linux/#fcntl_setpipe_sz)
* [fcntl\_setsig](/core/sys/linux/#fcntl_setsig)
* [fdatasync](/core/sys/linux/#fdatasync)
* [fgetxattr](/core/sys/linux/#fgetxattr)
* [flistxattr](/core/sys/linux/#flistxattr)
* [flock](/core/sys/linux/#flock)
* [fork](/core/sys/linux/#fork)
* [fremovexattr](/core/sys/linux/#fremovexattr)
* [fsetxattr](/core/sys/linux/#fsetxattr)
* [fstat](/core/sys/linux/#fstat)
* [fstatat](/core/sys/linux/#fstatat)
* [fstatfs](/core/sys/linux/#fstatfs)
* [fsync](/core/sys/linux/#fsync)
* [ftruncate](/core/sys/linux/#ftruncate)
* [futex\_cmp\_requeue](/core/sys/linux/#futex_cmp_requeue)
* [futex\_requeue](/core/sys/linux/#futex_requeue)
* [futex\_wait](/core/sys/linux/#futex_wait)
* [futex\_wait\_bitset](/core/sys/linux/#futex_wait_bitset)
* [futex\_wake](/core/sys/linux/#futex_wake)
* [futex\_wake\_bitset](/core/sys/linux/#futex_wake_bitset)
* [futex\_wake\_op](/core/sys/linux/#futex_wake_op)
* [getcpu](/core/sys/linux/#getcpu)
* [getcwd](/core/sys/linux/#getcwd)
* [getdents](/core/sys/linux/#getdents)
* [getgroups](/core/sys/linux/#getgroups)
* [getitimer](/core/sys/linux/#getitimer)
* [getpeername](/core/sys/linux/#getpeername)
* [getpgid](/core/sys/linux/#getpgid)
* [getpgrp](/core/sys/linux/#getpgrp)
* [getpriority](/core/sys/linux/#getpriority)
* [getrandom](/core/sys/linux/#getrandom)
* [getresgid](/core/sys/linux/#getresgid)
* [getresuid](/core/sys/linux/#getresuid)
* [getrlimit](/core/sys/linux/#getrlimit)
* [getrusage](/core/sys/linux/#getrusage)
* [getsid](/core/sys/linux/#getsid)
* [getsockname](/core/sys/linux/#getsockname)
* [getsockopt\_base](/core/sys/linux/#getsockopt_base)
* [getsockopt\_sock](/core/sys/linux/#getsockopt_sock)
* [getsockopt\_tcp](/core/sys/linux/#getsockopt_tcp)
* [getsockopt\_udp](/core/sys/linux/#getsockopt_udp)
* [gettimeofday](/core/sys/linux/#gettimeofday)
* [getxattr](/core/sys/linux/#getxattr)
* [init\_module](/core/sys/linux/#init_module)
* [inotify\_add\_watch](/core/sys/linux/#inotify_add_watch)
* [inotify\_init](/core/sys/linux/#inotify_init)
* [inotify\_init1](/core/sys/linux/#inotify_init1)
* [inotify\_rm\_watch](/core/sys/linux/#inotify_rm_watch)
* [io\_uring\_enter](/core/sys/linux/#io_uring_enter)
* [io\_uring\_enter2](/core/sys/linux/#io_uring_enter2)
* [io\_uring\_register](/core/sys/linux/#io_uring_register)
* [io\_uring\_setup](/core/sys/linux/#io_uring_setup)
* [ioperm](/core/sys/linux/#ioperm)
* [kill](/core/sys/linux/#kill)
* [lchown](/core/sys/linux/#lchown)
* [lgetxattr](/core/sys/linux/#lgetxattr)
* [link](/core/sys/linux/#link)
* [linkat](/core/sys/linux/#linkat)
* [listen](/core/sys/linux/#listen)
* [listxattr](/core/sys/linux/#listxattr)
* [llistxattr](/core/sys/linux/#llistxattr)
* [lremovexattr](/core/sys/linux/#lremovexattr)
* [lseek](/core/sys/linux/#lseek)
* [lsetxattr](/core/sys/linux/#lsetxattr)
* [lstat](/core/sys/linux/#lstat)
* [madvise](/core/sys/linux/#madvise)
* [memfd\_create](/core/sys/linux/#memfd_create)
* [mincore](/core/sys/linux/#mincore)
* [mkdir](/core/sys/linux/#mkdir)
* [mkdirat](/core/sys/linux/#mkdirat)
* [mknod](/core/sys/linux/#mknod)
* [mknodat](/core/sys/linux/#mknodat)
* [mlock](/core/sys/linux/#mlock)
* [mlockall](/core/sys/linux/#mlockall)
* [mmap](/core/sys/linux/#mmap)
* [modify\_ldt](/core/sys/linux/#modify_ldt)
* [mount](/core/sys/linux/#mount)
* [mprotect](/core/sys/linux/#mprotect)
* [mremap](/core/sys/linux/#mremap)
* [msgctl](/core/sys/linux/#msgctl)
* [msgget](/core/sys/linux/#msgget)
* [msgrcv](/core/sys/linux/#msgrcv)
* [msgsnd](/core/sys/linux/#msgsnd)
* [msync](/core/sys/linux/#msync)
* [munlock](/core/sys/linux/#munlock)
* [munlockall](/core/sys/linux/#munlockall)
* [munmap](/core/sys/linux/#munmap)
* [nanosleep](/core/sys/linux/#nanosleep)
* [open](/core/sys/linux/#open)
* [openat](/core/sys/linux/#openat)
* [perf\_event\_open](/core/sys/linux/#perf_event_open)
* [personality](/core/sys/linux/#personality)
* [pidfd\_getfd](/core/sys/linux/#pidfd_getfd)
* [pidfd\_open](/core/sys/linux/#pidfd_open)
* [pipe2](/core/sys/linux/#pipe2)
* [pivot\_root](/core/sys/linux/#pivot_root)
* [poll](/core/sys/linux/#poll)
* [ppoll](/core/sys/linux/#ppoll)
* [prctl](/core/sys/linux/#prctl)
* [pread](/core/sys/linux/#pread)
* [ptrace\_attach](/core/sys/linux/#ptrace_attach)
* [ptrace\_cont](/core/sys/linux/#ptrace_cont)
* [ptrace\_detach](/core/sys/linux/#ptrace_detach)
* [ptrace\_geteventmsg](/core/sys/linux/#ptrace_geteventmsg)
* [ptrace\_getfpregs](/core/sys/linux/#ptrace_getfpregs)
* [ptrace\_getfpxregs](/core/sys/linux/#ptrace_getfpxregs)
* [ptrace\_getregs](/core/sys/linux/#ptrace_getregs)
* [ptrace\_getregset](/core/sys/linux/#ptrace_getregset)
* [ptrace\_getsiginfo](/core/sys/linux/#ptrace_getsiginfo)
* [ptrace\_getsigmask](/core/sys/linux/#ptrace_getsigmask)
* [ptrace\_interrupt](/core/sys/linux/#ptrace_interrupt)
* [ptrace\_listen](/core/sys/linux/#ptrace_listen)
* [ptrace\_peek](/core/sys/linux/#ptrace_peek)
* [ptrace\_peeksiginfo](/core/sys/linux/#ptrace_peeksiginfo)
* [ptrace\_poke](/core/sys/linux/#ptrace_poke)
* [ptrace\_seize](/core/sys/linux/#ptrace_seize)
* [ptrace\_setfpregs](/core/sys/linux/#ptrace_setfpregs)
* [ptrace\_setfpxregs](/core/sys/linux/#ptrace_setfpxregs)
* [ptrace\_setoptions](/core/sys/linux/#ptrace_setoptions)
* [ptrace\_setregs](/core/sys/linux/#ptrace_setregs)
* [ptrace\_setregset](/core/sys/linux/#ptrace_setregset)
* [ptrace\_setsigmask](/core/sys/linux/#ptrace_setsigmask)
* [ptrace\_singlestep](/core/sys/linux/#ptrace_singlestep)
* [ptrace\_syscall](/core/sys/linux/#ptrace_syscall)
* [ptrace\_sysemu](/core/sys/linux/#ptrace_sysemu)
* [ptrace\_sysemu\_singlestep](/core/sys/linux/#ptrace_sysemu_singlestep)
* [ptrace\_traceme](/core/sys/linux/#ptrace_traceme)
* [pwrite](/core/sys/linux/#pwrite)
* [quotactl](/core/sys/linux/#quotactl)
* [read](/core/sys/linux/#read)
* [readahead](/core/sys/linux/#readahead)
* [readlink](/core/sys/linux/#readlink)
* [readlinkat](/core/sys/linux/#readlinkat)
* [readv](/core/sys/linux/#readv)
* [reboot](/core/sys/linux/#reboot)
* [recvfrom](/core/sys/linux/#recvfrom)
* [recvmmsg](/core/sys/linux/#recvmmsg)
* [recvmsg](/core/sys/linux/#recvmsg)
* [removexattr](/core/sys/linux/#removexattr)
* [rename](/core/sys/linux/#rename)
* [renameat](/core/sys/linux/#renameat)
* [renameat2](/core/sys/linux/#renameat2)
* [rmdir](/core/sys/linux/#rmdir)
* [rt\_sigaction](/core/sys/linux/#rt_sigaction)
* [rt\_sigpending](/core/sys/linux/#rt_sigpending)
* [rt\_sigprocmask](/core/sys/linux/#rt_sigprocmask)
* [rt\_sigqueueinfo](/core/sys/linux/#rt_sigqueueinfo)
* [rt\_sigsuspend](/core/sys/linux/#rt_sigsuspend)
* [rt\_sigtimedwait](/core/sys/linux/#rt_sigtimedwait)
* [rt\_tgsigqueueinfo](/core/sys/linux/#rt_tgsigqueueinfo)
* [sched\_get\_priority\_max](/core/sys/linux/#sched_get_priority_max)
* [sched\_get\_priority\_min](/core/sys/linux/#sched_get_priority_min)
* [sched\_getaffinity](/core/sys/linux/#sched_getaffinity)
* [sched\_getattr](/core/sys/linux/#sched_getattr)
* [sched\_getparam](/core/sys/linux/#sched_getparam)
* [sched\_getscheduler](/core/sys/linux/#sched_getscheduler)
* [sched\_rr\_get\_interval](/core/sys/linux/#sched_rr_get_interval)
* [sched\_setaffinity](/core/sys/linux/#sched_setaffinity)
* [sched\_setattr](/core/sys/linux/#sched_setattr)
* [sched\_setparam](/core/sys/linux/#sched_setparam)
* [sched\_setscheduler](/core/sys/linux/#sched_setscheduler)
* [semctl3](/core/sys/linux/#semctl3)
* [semctl4](/core/sys/linux/#semctl4)
* [semget](/core/sys/linux/#semget)
* [semop](/core/sys/linux/#semop)
* [sendfile](/core/sys/linux/#sendfile)
* [sendmmsg](/core/sys/linux/#sendmmsg)
* [sendmsg](/core/sys/linux/#sendmsg)
* [sendto](/core/sys/linux/#sendto)
* [setdomainname](/core/sys/linux/#setdomainname)
* [setgid](/core/sys/linux/#setgid)
* [setgroups](/core/sys/linux/#setgroups)
* [sethostname](/core/sys/linux/#sethostname)
* [setitimer](/core/sys/linux/#setitimer)
* [setpgid](/core/sys/linux/#setpgid)
* [setpriority](/core/sys/linux/#setpriority)
* [setregid](/core/sys/linux/#setregid)
* [setresgid](/core/sys/linux/#setresgid)
* [setresuid](/core/sys/linux/#setresuid)
* [setreuid](/core/sys/linux/#setreuid)
* [setrlimit](/core/sys/linux/#setrlimit)
* [setsid](/core/sys/linux/#setsid)
* [setsockopt\_base](/core/sys/linux/#setsockopt_base)
* [setsockopt\_sock](/core/sys/linux/#setsockopt_sock)
* [setsockopt\_tcp](/core/sys/linux/#setsockopt_tcp)
* [setsockopt\_udp](/core/sys/linux/#setsockopt_udp)
* [settimeofday](/core/sys/linux/#settimeofday)
* [setuid](/core/sys/linux/#setuid)
* [setxattr](/core/sys/linux/#setxattr)
* [shmat](/core/sys/linux/#shmat)
* [shmctl\_ds](/core/sys/linux/#shmctl_ds)
* [shmctl\_info](/core/sys/linux/#shmctl_info)
* [shmdt](/core/sys/linux/#shmdt)
* [shmget](/core/sys/linux/#shmget)
* [shutdown](/core/sys/linux/#shutdown)
* [sigaltstack](/core/sys/linux/#sigaltstack)
* [socket](/core/sys/linux/#socket)
* [socketpair](/core/sys/linux/#socketpair)
* [splice](/core/sys/linux/#splice)
* [stat](/core/sys/linux/#stat)
* [statfs](/core/sys/linux/#statfs)
* [statx](/core/sys/linux/#statx)
* [swapoff](/core/sys/linux/#swapoff)
* [swapon](/core/sys/linux/#swapon)
* [symlink](/core/sys/linux/#symlink)
* [symlinkat](/core/sys/linux/#symlinkat)
* [sync](/core/sys/linux/#sync)
* [sysinfo](/core/sys/linux/#sysinfo)
* [syslog](/core/sys/linux/#syslog)
* [tee](/core/sys/linux/#tee)
* [tgkill](/core/sys/linux/#tgkill)
* [time](/core/sys/linux/#time)
* [timer\_create](/core/sys/linux/#timer_create)
* [timer\_delete](/core/sys/linux/#timer_delete)
* [timer\_getoverrun](/core/sys/linux/#timer_getoverrun)
* [timer\_gettime](/core/sys/linux/#timer_gettime)
* [timer\_settime](/core/sys/linux/#timer_settime)
* [timerfd\_create](/core/sys/linux/#timerfd_create)
* [timerfd\_gettime](/core/sys/linux/#timerfd_gettime)
* [timerfd\_settime](/core/sys/linux/#timerfd_settime)
* [times](/core/sys/linux/#times)
* [truncate](/core/sys/linux/#truncate)
* [umount2](/core/sys/linux/#umount2)
* [uname](/core/sys/linux/#uname)
* [unlink](/core/sys/linux/#unlink)
* [unlinkat](/core/sys/linux/#unlinkat)
* [utimensat](/core/sys/linux/#utimensat)
* [vhangup](/core/sys/linux/#vhangup)
* [wait4](/core/sys/linux/#wait4)
* [waitid](/core/sys/linux/#waitid)
* [write](/core/sys/linux/#write)
* [writev](/core/sys/linux/#writev)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*
* [futex](/core/sys/linux/#futex) *(procedure groups)*
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*
* [recv](/core/sys/linux/#recv) *(procedure groups)*
* [semctl](/core/sys/linux/#semctl) *(procedure groups)*
* [send](/core/sys/linux/#send) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*
* [shmctl](/core/sys/linux/#shmctl) *(procedure groups)*

### [Eventfd\_Flags ¶](#Eventfd_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1752)

```
Eventfd_Flags :: bit_set[Eventfd_Flags_Bits; i32]
```

##### Related Procedures With Parameters

* [eventfd](/core/sys/linux/#eventfd)

### [Eventfd\_Flags\_Bits ¶](#Eventfd_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2273)

```
Eventfd_Flags_Bits :: enum int {
	SEMAPHORE, 
	CLOEXEC   = 19, 
	NONBLOCK  = 11, 
}
```

### [Execveat\_Flags ¶](#Execveat_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1473)

```
Execveat_Flags :: bit_set[Execveat_Flags_Bits; i32]
```

 

Flags for execveat(2) syscall.




##### Related Procedures With Parameters

* [execveat](/core/sys/linux/#execveat)

### [Execveat\_Flags\_Bits ¶](#Execveat_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1879)

```
Execveat_Flags_Bits :: enum int {
	AT_SYMLINK_NOFOLLOW = 8, 
	AT_EMPTY_PATH       = 12, 
}
```

 

Bits for execveat(2) flags.

### [FCntl\_Command ¶](#FCntl_Command) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L500)

```
FCntl_Command :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

 

Command for fcntl(2)

### [FCntl\_Command\_ADD\_SEALS ¶](#FCntl_Command_ADD_SEALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L190)

```
FCntl_Command_ADD_SEALS :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_add\_seals](/core/sys/linux/#fcntl_add_seals)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_ADD\_SEALS](/core/sys/linux/#F_ADD_SEALS)

### [FCntl\_Command\_DUPFD ¶](#FCntl_Command_DUPFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L170)

```
FCntl_Command_DUPFD :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_dupfd](/core/sys/linux/#fcntl_dupfd)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_DUPFD](/core/sys/linux/#F_DUPFD)

### [FCntl\_Command\_DUPFD\_CLOEXEC ¶](#FCntl_Command_DUPFD_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L178)

```
FCntl_Command_DUPFD_CLOEXEC :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_dupfd\_cloexec](/core/sys/linux/#fcntl_dupfd_cloexec)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_DUPFD\_CLOEXEC](/core/sys/linux/#F_DUPFD_CLOEXEC)

### [FCntl\_Command\_GETFD ¶](#FCntl_Command_GETFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L171)

```
FCntl_Command_GETFD :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_getfd](/core/sys/linux/#fcntl_getfd)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GETFD](/core/sys/linux/#F_GETFD)

### [FCntl\_Command\_GETFL ¶](#FCntl_Command_GETFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L173)

```
FCntl_Command_GETFL :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_getfl](/core/sys/linux/#fcntl_getfl)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GETFL](/core/sys/linux/#F_GETFL)

### [FCntl\_Command\_GETLEASE ¶](#FCntl_Command_GETLEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L186)

```
FCntl_Command_GETLEASE :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_getlease](/core/sys/linux/#fcntl_getlease)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GETLEASE](/core/sys/linux/#F_GETLEASE)

### [FCntl\_Command\_GETLK ¶](#FCntl_Command_GETLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L175)

```
FCntl_Command_GETLK :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_getlk](/core/sys/linux/#fcntl_getlk)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GETLK](/core/sys/linux/#F_GETLK)

### [FCntl\_Command\_GETOWN ¶](#FCntl_Command_GETOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L180)

```
FCntl_Command_GETOWN :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Constants

* [F\_GETOWN](/core/sys/linux/#F_GETOWN)

### [FCntl\_Command\_GETOWN\_EX ¶](#FCntl_Command_GETOWN_EX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L184)

```
FCntl_Command_GETOWN_EX :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_getown\_ex](/core/sys/linux/#fcntl_getown_ex)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GETOWN\_EX](/core/sys/linux/#F_GETOWN_EX)

### [FCntl\_Command\_GETPIPE\_SZ ¶](#FCntl_Command_GETPIPE_SZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L189)

```
FCntl_Command_GETPIPE_SZ :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_getpipe\_sz](/core/sys/linux/#fcntl_getpipe_sz)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GETPIPE\_SZ](/core/sys/linux/#F_GETPIPE_SZ)

### [FCntl\_Command\_GETSIG ¶](#FCntl_Command_GETSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L182)

```
FCntl_Command_GETSIG :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_getsig](/core/sys/linux/#fcntl_getsig)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GETSIG](/core/sys/linux/#F_GETSIG)

### [FCntl\_Command\_GET\_FILE\_RW\_HINT ¶](#FCntl_Command_GET_FILE_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L194)

```
FCntl_Command_GET_FILE_RW_HINT :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_get\_file\_rw\_hint](/core/sys/linux/#fcntl_get_file_rw_hint)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GET\_FILE\_RW\_HINT](/core/sys/linux/#F_GET_FILE_RW_HINT)

### [FCntl\_Command\_GET\_RW\_HINT ¶](#FCntl_Command_GET_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L192)

```
FCntl_Command_GET_RW_HINT :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_get\_rw\_hint](/core/sys/linux/#fcntl_get_rw_hint)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GET\_RW\_HINT](/core/sys/linux/#F_GET_RW_HINT)

### [FCntl\_Command\_GET\_SEALS ¶](#FCntl_Command_GET_SEALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L191)

```
FCntl_Command_GET_SEALS :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_get\_seals](/core/sys/linux/#fcntl_get_seals)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_GET\_SEALS](/core/sys/linux/#F_GET_SEALS)

### [FCntl\_Command\_NOTIFY ¶](#FCntl_Command_NOTIFY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L187)

```
FCntl_Command_NOTIFY :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_notify](/core/sys/linux/#fcntl_notify)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_NOTIFY](/core/sys/linux/#F_NOTIFY)

### [FCntl\_Command\_SETFD ¶](#FCntl_Command_SETFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L172)

```
FCntl_Command_SETFD :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setfd](/core/sys/linux/#fcntl_setfd)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETFD](/core/sys/linux/#F_SETFD)

### [FCntl\_Command\_SETFL ¶](#FCntl_Command_SETFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L174)

```
FCntl_Command_SETFL :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setfl](/core/sys/linux/#fcntl_setfl)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETFL](/core/sys/linux/#F_SETFL)

### [FCntl\_Command\_SETLEASE ¶](#FCntl_Command_SETLEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L185)

```
FCntl_Command_SETLEASE :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setlease](/core/sys/linux/#fcntl_setlease)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETLEASE](/core/sys/linux/#F_SETLEASE)

### [FCntl\_Command\_SETLK ¶](#FCntl_Command_SETLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L176)

```
FCntl_Command_SETLK :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setlk](/core/sys/linux/#fcntl_setlk)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETLK](/core/sys/linux/#F_SETLK)

### [FCntl\_Command\_SETLKW ¶](#FCntl_Command_SETLKW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L177)

```
FCntl_Command_SETLKW :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setlkw](/core/sys/linux/#fcntl_setlkw)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETLKW](/core/sys/linux/#F_SETLKW)

### [FCntl\_Command\_SETOWN ¶](#FCntl_Command_SETOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L179)

```
FCntl_Command_SETOWN :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Constants

* [F\_SETOWN](/core/sys/linux/#F_SETOWN)

### [FCntl\_Command\_SETOWN\_EX ¶](#FCntl_Command_SETOWN_EX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L183)

```
FCntl_Command_SETOWN_EX :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setown\_ex](/core/sys/linux/#fcntl_setown_ex)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETOWN\_EX](/core/sys/linux/#F_SETOWN_EX)

### [FCntl\_Command\_SETPIPE\_SZ ¶](#FCntl_Command_SETPIPE_SZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L188)

```
FCntl_Command_SETPIPE_SZ :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setpipe\_sz](/core/sys/linux/#fcntl_setpipe_sz)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETPIPE\_SZ](/core/sys/linux/#F_SETPIPE_SZ)

### [FCntl\_Command\_SETSIG ¶](#FCntl_Command_SETSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L181)

```
FCntl_Command_SETSIG :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setsig](/core/sys/linux/#fcntl_setsig)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SETSIG](/core/sys/linux/#F_SETSIG)

### [FCntl\_Command\_SET\_FILE\_RW\_HINT ¶](#FCntl_Command_SET_FILE_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L195)

```
FCntl_Command_SET_FILE_RW_HINT :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_set\_file\_rw\_hint](/core/sys/linux/#fcntl_set_file_rw_hint)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SET\_FILE\_RW\_HINT](/core/sys/linux/#F_SET_FILE_RW_HINT)

### [FCntl\_Command\_SET\_RW\_HINT ¶](#FCntl_Command_SET_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L193)

```
FCntl_Command_SET_RW_HINT :: enum int {
	DUPFD            = 0, 
	GETFD            = 1, 
	SETFD            = 2, 
	GETFL            = 3, 
	SETFL            = 4, 
	GETLK            = 5, 
	SETLK            = 6, 
	SETLKW           = 7, 
	SETOWN           = 8, 
	GETOWN           = 9, 
	SETSIG           = 10, 
	GETSIG           = 11, 
	SETOWN_EX        = 15, 
	GETOWN_EX        = 16, 
	// OFD_GETLK         = 36,
	// OFD_SETLK         = 37,
	// OFD_SETLKW        = 38,
	SETLEASE         = 1024, 
	GETLEASE         = 1025, 
	NOTIFY           = 1026, 
	DUPFD_CLOEXEC    = 1030, 
	SETPIPE_SZ       = 1031, 
	GETPIPE_SZ       = 1032, 
	ADD_SEALS        = 1033, 
	GET_SEALS        = 1034, 
	GET_RW_HINT      = 1035, 
	SET_RW_HINT      = 1036, 
	GET_FILE_RW_HINT = 1037, 
	SET_FILE_RW_HINT = 1038, 
}
```

##### Related Procedures With Parameters

* [fcntl\_set\_rw\_hint](/core/sys/linux/#fcntl_set_rw_hint)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

##### Related Constants

* [F\_SET\_RW\_HINT](/core/sys/linux/#F_SET_RW_HINT)

### [FD\_Flags ¶](#FD_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L91)

```
FD_Flags :: bit_set[FD_Flags_Bits; i32]
```

 

Flags for the file descriptors.




##### Related Procedures With Parameters

* [faccessat2](/core/sys/linux/#faccessat2)
* [fchmodat](/core/sys/linux/#fchmodat)
* [fstatat](/core/sys/linux/#fstatat)
* [linkat](/core/sys/linux/#linkat)
* [statx](/core/sys/linux/#statx)
* [unlinkat](/core/sys/linux/#unlinkat)
* [utimensat](/core/sys/linux/#utimensat)

### [FD\_Flags\_Bits ¶](#FD_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L223)

```
FD_Flags_Bits :: enum int {
	SYMLINK_NOFOLLOW = 8, 
	REMOVEDIR        = 9, 
	EACCESS          = 9, 
	SYMLINK_FOLLOW   = 10, 
	NO_AUTOMOUNT     = 11, 
	EMPTY_PATH       = 12, 
	STATX_FORCE_SYNC = 13, 
	STATX_DONT_SYNC  = 14, 
	RECURSIVE        = 15, 
}
```

 

Bits for FD\_Flags bitset

### [FD\_Lease ¶](#FD_Lease) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L482)

```
FD_Lease :: enum int {
	RDLCK = 0, 
	WRLCK = 1, 
	UNLCK = 2, 
}
```

##### Related Procedures With Parameters

* [fcntl\_setlease](/core/sys/linux/#fcntl_setlease)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*



##### Related Procedures With Returns

* [fcntl\_getlease](/core/sys/linux/#fcntl_getlease)

### [FD\_Notifications ¶](#FD_Notifications) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L323)

```
FD_Notifications :: bit_set[FD_Notifications_Bits; i32]
```

 

Flags for `fcntl_notify()`.




##### Related Procedures With Parameters

* [fcntl\_notify](/core/sys/linux/#fcntl_notify)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

### [FD\_Notifications\_Bits ¶](#FD_Notifications_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L452)

```
FD_Notifications_Bits :: enum i32 {
	ACCESS    = 0, 
	MODIFY    = 1, 
	CREATE    = 2, 
	DELETE    = 3, 
	RENAME    = 4, 
	ATTRIB    = 5, 
	MULTISHOT = 31, 
}
```

 

Bits for FD\_Notifications

### [FLock ¶](#FLock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L305)

```
FLock :: struct {
	type:   FLock_Type,
	whence: Seek_Whence,
	start:  i64,
	len:    i64,
	pid:    Pid,
}
```

 

Lock record for fcntl(2).




##### Related Procedures With Parameters

* [fcntl\_getlk](/core/sys/linux/#fcntl_getlk)
* [fcntl\_setlk](/core/sys/linux/#fcntl_setlk)
* [fcntl\_setlkw](/core/sys/linux/#fcntl_setlkw)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

### [FLock\_Op ¶](#FLock_Op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L318)

```
FLock_Op :: bit_set[FLock_Op_Bits; i32]
```

 

File locking operations.
Use one of `EX`, `RW` or `UN` to specify the operation, and add `UN` if
you need a non-blocking operation.




##### Related Procedures With Parameters

* [flock](/core/sys/linux/#flock)

### [FLock\_Op\_Bits ¶](#FLock_Op_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1693)

```
FLock_Op_Bits :: enum i32 {
	SH = 0, 
	EX = 1, 
	NB = 2, 
	UN = 3, 
}
```

 

File locking operation bits

### [FLock\_Type ¶](#FLock_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L443)

```
FLock_Type :: enum i16 {
	RDLCK = 0, 
	WRLCK = 1, 
	UNLCK = 2, 
}
```

 

Type of a lock for fcntl(2)

### [FS\_Flags ¶](#FS_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L233)

```
FS_Flags :: bit_set[FS_Flags_Bits; u32]
```

 

Mount flags for filesystem.

### [FS\_Flags\_Bits ¶](#FS_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L386)

```
FS_Flags_Bits :: enum int {
	RDONLY      = 0, 
	NOSUID      = 1, 
	NODEV       = 2, 
	NOEXEC      = 3, 
	SYNCHRONOUS = 4, 
	VALID       = 5, 
	MANDLOCK    = 6, 
	NOATIME     = 10, 
	NODIRATIME  = 11, 
	RELATIME    = 12, 
	NOSYMFOLLOW = 13, 
}
```

 

Bits for FS\_Flags bitset

### [FS\_Magic ¶](#FS_Magic) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L296)

```
FS_Magic :: enum u32 {
	ADFS_SUPER_MAGIC      = 44533, 
	AFFS_SUPER_MAGIC      = 44543, 
	AFS_SUPER_MAGIC       = 1397113167, 
	ANON_INODE_FS_MAGIC   = 151263540, 
	AUTOFS_SUPER_MAGIC    = 391, 
	BDEVFS_MAGIC          = 1650746742, 
	BEFS_SUPER_MAGIC      = 1111905073, 
	BFS_MAGIC             = 464386766, 
	BINFMTFS_MAGIC        = 1112100429, 
	BPF_FS_MAGIC          = 3405662737, 
	BTRFS_SUPER_MAGIC     = 2435016766, 
	BTRFS_TEST_MAGIC      = 1936880249, 
	CGROUP_SUPER_MAGIC    = 2613483, 
	CGROUP2_SUPER_MAGIC   = 1667723888, 
	CIFS_MAGIC_NUMBER     = 4283649346, 
	CODA_SUPER_MAGIC      = 1937076805, 
	COH_SUPER_MAGIC       = 19920823, 
	CRAMFS_MAGIC          = 684539205, 
	DEBUGFS_MAGIC         = 1684170528, 
	DEVFS_SUPER_MAGIC     = 4979, 
	DEVPTS_SUPER_MAGIC    = 7377, 
	ECRYPTFS_SUPER_MAGIC  = 61791, 
	EFIVARFS_MAGIC        = 3730735588, 
	EFS_SUPER_MAGIC       = 4278867, 
	EXT_SUPER_MAGIC       = 4989, 
	EXT2_OLD_SUPER_MAGIC  = 61265, 
	EXT2_SUPER_MAGIC      = 61267, 
	EXT3_SUPER_MAGIC      = 61267, 
	EXT4_SUPER_MAGIC      = 61267, 
	F2FS_SUPER_MAGIC      = 4076150800, 
	FUSE_SUPER_MAGIC      = 1702057286, 
	FUTEXFS_SUPER_MAGIC   = 195894762, 
	HFS_SUPER_MAGIC       = 16964, 
	HOSTFS_SUPER_MAGIC    = 12648430, 
	HPFS_SUPER_MAGIC      = 4187351113, 
	HUGETLBFS_MAGIC       = 2508478710, 
	ISOFS_SUPER_MAGIC     = 38496, 
	JFFS2_SUPER_MAGIC     = 29366, 
	JFS_SUPER_MAGIC       = 827541066, 
	MINIX_SUPER_MAGIC     = 4991, 
	MINIX_SUPER_MAGIC2    = 5007, 
	MINIX2_SUPER_MAGIC    = 9320, 
	MINIX2_SUPER_MAGIC2   = 9336, 
	MINIX3_SUPER_MAGIC    = 19802, 
	MQUEUE_MAGIC          = 427819522, 
	MSDOS_SUPER_MAGIC     = 19780, 
	MTD_INODE_FS_MAGIC    = 288389204, 
	NCP_SUPER_MAGIC       = 22092, 
	NFS_SUPER_MAGIC       = 26985, 
	NILFS_SUPER_MAGIC     = 13364, 
	NSFS_MAGIC            = 1853056627, 
	NTFS_SB_MAGIC         = 1397118030, 
	OCFS2_SUPER_MAGIC     = 1952539503, 
	OPENPROM_SUPER_MAGIC  = 40865, 
	OVERLAYFS_SUPER_MAGIC = 2035054128, 
	PIPEFS_MAGIC          = 1346981957, 
	PROC_SUPER_MAGIC      = 40864, 
	PSTOREFS_MAGIC        = 1634035564, 
	QNX4_SUPER_MAGIC      = 47, 
	QNX6_SUPER_MAGIC      = 1746473250, 
	RAMFS_MAGIC           = 2240043254, 
	REISERFS_SUPER_MAGIC  = 1382369651, 
	ROMFS_MAGIC           = 29301, 
	SECURITYFS_MAGIC      = 1935894131, 
	SELINUX_MAGIC         = 4185718668, 
	SMACK_MAGIC           = 1128357203, 
	SMB_SUPER_MAGIC       = 20859, 
	SMB2_MAGIC_NUMBER     = 4266872130, 
	SOCKFS_MAGIC          = 1397703499, 
	SQUASHFS_MAGIC        = 1936814952, 
	SYSFS_MAGIC           = 1650812274, 
	SYSV2_SUPER_MAGIC     = 19920822, 
	SYSV4_SUPER_MAGIC     = 19920821, 
	TMPFS_MAGIC           = 16914836, 
	TRACEFS_MAGIC         = 1953653091, 
	UDF_SUPER_MAGIC       = 352400198, 
	UFS_MAGIC             = 72020, 
	USBDEVICE_SUPER_MAGIC = 40866, 
	V9FS_MAGIC            = 16914839, 
	VXFS_SUPER_MAGIC      = 2768370933, 
	XENFS_SUPER_MAGIC     = 2881100148, 
	XENIX_SUPER_MAGIC     = 19920820, 
	XFS_SUPER_MAGIC       = 1481003842, 
	_XIAFS_SUPER_MAGIC    = 19911021, 
}
```

 

Magic bits for filesystems returned by Stat\_FS

### [F\_Owner ¶](#F_Owner) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L333)

```
F_Owner :: struct {
	type: F_Owner_Type,
	pid:  Pid,
}
```

 

Represents owner that receives events on file updates.




##### Related Procedures With Parameters

* [fcntl\_getown\_ex](/core/sys/linux/#fcntl_getown_ex)
* [fcntl\_setown\_ex](/core/sys/linux/#fcntl_setown_ex)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

### [F\_Owner\_Type ¶](#F_Owner_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L491)

```
F_Owner_Type :: enum i32 {
	OWNER_TID  = 0, 
	OWNER_PID  = 1, 
	OWNER_PGRP = 2, 
}
```

 

Kind of owner for FD\_Owner

### [Fd ¶](#Fd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L31)

```
Fd :: distinct i32
```

 

Represents a file descriptor.




##### Related Procedures With Parameters

* [accept](/core/sys/linux/#accept)
* [bind](/core/sys/linux/#bind)
* [close](/core/sys/linux/#close)
* [close\_range](/core/sys/linux/#close_range)
* [connect](/core/sys/linux/#connect)
* [dup](/core/sys/linux/#dup)
* [dup2](/core/sys/linux/#dup2)
* [dup3](/core/sys/linux/#dup3)
* [epoll\_ctl](/core/sys/linux/#epoll_ctl)
* [epoll\_pwait](/core/sys/linux/#epoll_pwait)
* [epoll\_pwait2](/core/sys/linux/#epoll_pwait2)
* [epoll\_wait](/core/sys/linux/#epoll_wait)
* [execveat](/core/sys/linux/#execveat)
* [faccessat](/core/sys/linux/#faccessat)
* [faccessat2](/core/sys/linux/#faccessat2)
* [fchdir](/core/sys/linux/#fchdir)
* [fchmod](/core/sys/linux/#fchmod)
* [fchmodat](/core/sys/linux/#fchmodat)
* [fchown](/core/sys/linux/#fchown)
* [fchownat](/core/sys/linux/#fchownat)
* [fcntl\_add\_seals](/core/sys/linux/#fcntl_add_seals)
* [fcntl\_dupfd](/core/sys/linux/#fcntl_dupfd)
* [fcntl\_dupfd\_cloexec](/core/sys/linux/#fcntl_dupfd_cloexec)
* [fcntl\_get\_file\_rw\_hint](/core/sys/linux/#fcntl_get_file_rw_hint)
* [fcntl\_get\_rw\_hint](/core/sys/linux/#fcntl_get_rw_hint)
* [fcntl\_get\_seals](/core/sys/linux/#fcntl_get_seals)
* [fcntl\_getfd](/core/sys/linux/#fcntl_getfd)
* [fcntl\_getfl](/core/sys/linux/#fcntl_getfl)
* [fcntl\_getlease](/core/sys/linux/#fcntl_getlease)
* [fcntl\_getlk](/core/sys/linux/#fcntl_getlk)
* [fcntl\_getown\_ex](/core/sys/linux/#fcntl_getown_ex)
* [fcntl\_getpipe\_sz](/core/sys/linux/#fcntl_getpipe_sz)
* [fcntl\_getsig](/core/sys/linux/#fcntl_getsig)
* [fcntl\_notify](/core/sys/linux/#fcntl_notify)
* [fcntl\_set\_file\_rw\_hint](/core/sys/linux/#fcntl_set_file_rw_hint)
* [fcntl\_set\_rw\_hint](/core/sys/linux/#fcntl_set_rw_hint)
* [fcntl\_setfd](/core/sys/linux/#fcntl_setfd)
* [fcntl\_setfl](/core/sys/linux/#fcntl_setfl)
* [fcntl\_setlease](/core/sys/linux/#fcntl_setlease)
* [fcntl\_setlk](/core/sys/linux/#fcntl_setlk)
* [fcntl\_setlkw](/core/sys/linux/#fcntl_setlkw)
* [fcntl\_setown\_ex](/core/sys/linux/#fcntl_setown_ex)
* [fcntl\_setpipe\_sz](/core/sys/linux/#fcntl_setpipe_sz)
* [fcntl\_setsig](/core/sys/linux/#fcntl_setsig)
* [fdatasync](/core/sys/linux/#fdatasync)
* [fgetxattr](/core/sys/linux/#fgetxattr)
* [flistxattr](/core/sys/linux/#flistxattr)
* [flock](/core/sys/linux/#flock)
* [fremovexattr](/core/sys/linux/#fremovexattr)
* [fsetxattr](/core/sys/linux/#fsetxattr)
* [fstat](/core/sys/linux/#fstat)
* [fstatat](/core/sys/linux/#fstatat)
* [fstatfs](/core/sys/linux/#fstatfs)
* [fsync](/core/sys/linux/#fsync)
* [ftruncate](/core/sys/linux/#ftruncate)
* [getdents](/core/sys/linux/#getdents)
* [getpeername](/core/sys/linux/#getpeername)
* [getsockname](/core/sys/linux/#getsockname)
* [getsockopt\_base](/core/sys/linux/#getsockopt_base)
* [getsockopt\_sock](/core/sys/linux/#getsockopt_sock)
* [getsockopt\_tcp](/core/sys/linux/#getsockopt_tcp)
* [getsockopt\_udp](/core/sys/linux/#getsockopt_udp)
* [inotify\_add\_watch](/core/sys/linux/#inotify_add_watch)
* [inotify\_rm\_watch](/core/sys/linux/#inotify_rm_watch)
* [io\_uring\_enter](/core/sys/linux/#io_uring_enter)
* [io\_uring\_enter2](/core/sys/linux/#io_uring_enter2)
* [io\_uring\_register](/core/sys/linux/#io_uring_register)
* [ioctl](/core/sys/linux/#ioctl)
* [linkat](/core/sys/linux/#linkat)
* [listen](/core/sys/linux/#listen)
* [lseek](/core/sys/linux/#lseek)
* [mkdirat](/core/sys/linux/#mkdirat)
* [mknodat](/core/sys/linux/#mknodat)
* [mmap](/core/sys/linux/#mmap)
* [openat](/core/sys/linux/#openat)
* [perf\_event\_open](/core/sys/linux/#perf_event_open)
* [pidfd\_getfd](/core/sys/linux/#pidfd_getfd)
* [pread](/core/sys/linux/#pread)
* [pwrite](/core/sys/linux/#pwrite)
* [read](/core/sys/linux/#read)
* [readahead](/core/sys/linux/#readahead)
* [readlinkat](/core/sys/linux/#readlinkat)
* [readv](/core/sys/linux/#readv)
* [recvfrom](/core/sys/linux/#recvfrom)
* [recvmmsg](/core/sys/linux/#recvmmsg)
* [recvmsg](/core/sys/linux/#recvmsg)
* [renameat](/core/sys/linux/#renameat)
* [renameat2](/core/sys/linux/#renameat2)
* [sendfile](/core/sys/linux/#sendfile)
* [sendmmsg](/core/sys/linux/#sendmmsg)
* [sendmsg](/core/sys/linux/#sendmsg)
* [sendto](/core/sys/linux/#sendto)
* [setsockopt\_base](/core/sys/linux/#setsockopt_base)
* [setsockopt\_sock](/core/sys/linux/#setsockopt_sock)
* [setsockopt\_tcp](/core/sys/linux/#setsockopt_tcp)
* [setsockopt\_udp](/core/sys/linux/#setsockopt_udp)
* [shutdown](/core/sys/linux/#shutdown)
* [splice](/core/sys/linux/#splice)
* [statx](/core/sys/linux/#statx)
* [symlinkat](/core/sys/linux/#symlinkat)
* [tee](/core/sys/linux/#tee)
* [timerfd\_gettime](/core/sys/linux/#timerfd_gettime)
* [timerfd\_settime](/core/sys/linux/#timerfd_settime)
* [unlinkat](/core/sys/linux/#unlinkat)
* [utimensat](/core/sys/linux/#utimensat)
* [write](/core/sys/linux/#write)
* [writev](/core/sys/linux/#writev)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [recv](/core/sys/linux/#recv) *(procedure groups)*
* [send](/core/sys/linux/#send) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*



##### Related Procedures With Returns

* [creat](/core/sys/linux/#creat)
* [epoll\_create](/core/sys/linux/#epoll_create)
* [epoll\_create1](/core/sys/linux/#epoll_create1)
* [eventfd](/core/sys/linux/#eventfd)
* [inotify\_init](/core/sys/linux/#inotify_init)
* [inotify\_init1](/core/sys/linux/#inotify_init1)
* [io\_uring\_setup](/core/sys/linux/#io_uring_setup)
* [memfd\_create](/core/sys/linux/#memfd_create)
* [open](/core/sys/linux/#open)
* [socket](/core/sys/linux/#socket)
* [timerfd\_create](/core/sys/linux/#timerfd_create)

##### Related Constants

* [AT\_FDCWD](/core/sys/linux/#AT_FDCWD)
* [STDERR\_FILENO](/core/sys/linux/#STDERR_FILENO)
* [STDIN\_FILENO](/core/sys/linux/#STDIN_FILENO)
* [STDOUT\_FILENO](/core/sys/linux/#STDOUT_FILENO)

### [Fd\_Poll\_Events ¶](#Fd_Poll_Events) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L341)

```
Fd_Poll_Events :: bit_set[Fd_Poll_Events_Bits; u16]
```

 

Events for ppoll(2).

### [Fd\_Poll\_Events\_Bits ¶](#Fd_Poll_Events_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L533)

```
Fd_Poll_Events_Bits :: enum int {
	IN     = 0, 
	PRI    = 1, 
	OUT    = 2, 
	ERR    = 3, 
	HUP    = 4, 
	NVAL   = 5, 
	RDNORM = 6, 
	RDBAND = 7, 
	WRNORM = 8, 
	WRBAND = 9, 
	MSG    = 10, 
	REMOVE = 12, 
	RDHUP  = 13, 
}
```

### [Futex ¶](#Futex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L852)

```
Futex :: u32
```

 

Just an alias to make futex-values more visible




##### Related Procedures With Parameters

* [WCOREDUMP](/core/sys/linux/#WCOREDUMP)
* [WEXITSTATUS](/core/sys/linux/#WEXITSTATUS)
* [WIFCONTINUED](/core/sys/linux/#WIFCONTINUED)
* [WIFEXITED](/core/sys/linux/#WIFEXITED)
* [WIFSIGNALED](/core/sys/linux/#WIFSIGNALED)
* [WIFSTOPPED](/core/sys/linux/#WIFSTOPPED)
* [WSTOPSIG](/core/sys/linux/#WSTOPSIG)
* [WTERMSIG](/core/sys/linux/#WTERMSIG)
* [alarm](/core/sys/linux/#alarm)
* [delete\_module](/core/sys/linux/#delete_module)
* [eventfd](/core/sys/linux/#eventfd)
* [futex\_cmp\_requeue](/core/sys/linux/#futex_cmp_requeue)
* [futex\_op](/core/sys/linux/#futex_op)
* [futex\_requeue](/core/sys/linux/#futex_requeue)
* [futex\_wait](/core/sys/linux/#futex_wait)
* [futex\_wait\_bitset](/core/sys/linux/#futex_wait_bitset)
* [futex\_wake](/core/sys/linux/#futex_wake)
* [futex\_wake\_bitset](/core/sys/linux/#futex_wake_bitset)
* [futex\_wake\_op](/core/sys/linux/#futex_wake_op)
* [getcpu](/core/sys/linux/#getcpu)
* [init\_module](/core/sys/linux/#init_module)
* [io\_uring\_enter](/core/sys/linux/#io_uring_enter)
* [io\_uring\_enter2](/core/sys/linux/#io_uring_enter2)
* [io\_uring\_register](/core/sys/linux/#io_uring_register)
* [io\_uring\_setup](/core/sys/linux/#io_uring_setup)
* [ioctl](/core/sys/linux/#ioctl)
* [ioperm](/core/sys/linux/#ioperm)
* [sched\_getattr](/core/sys/linux/#sched_getattr)
* [set\_tid\_address](/core/sys/linux/#set_tid_address)
* [wait4](/core/sys/linux/#wait4)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

### [Futex\_Arg\_Op ¶](#Futex_Arg_Op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1519)

```
Futex_Arg_Op :: enum int {
	SET      = 0, // uaddr2 =       oparg
	ADD      = 1, // uaddr2 +=      oparg
	OR       = 2, // uaddr2 |=      oparg
	ANDN     = 3, // uaddr2 &=     ~oparg
	XOR      = 4, // uaddr2 ^=      oparg
	PO2_SET  = 0, // uaddr2 =    1<<oparg
	PO2_ADD  = 1, // uaddr2 +=   1<<oparg
	PO2_OR   = 2, // uaddr2 |=   1<<oparg
	PO2_ANDN = 3, // uaddr2 &~=  1<<oparg
	PO2_XOR  = 4, // uaddr2 ^=   1<<oparg
}
```

 

Kind of operation on futex, see FUTEX\_WAKE\_OP




##### Related Procedures With Parameters

* [futex\_op](/core/sys/linux/#futex_op)

### [Futex\_Cmp\_Op ¶](#Futex_Cmp_Op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1535)

```
Futex_Cmp_Op :: enum int {
	EQ = 0, // if (oldval == cmparg) wake
	NE = 1, // if (oldval != cmparg) wake
	LT = 2, // if (oldval < cmparg) wake
	LE = 3, // if (oldval <= cmparg) wake
	GT = 4, // if (oldval > cmparg) wake
	GE = 5, // if (oldval >= cmparg) wake
}
```

 

Kind of comparison operation on futex, see FUTEX\_WAKE\_OP




##### Related Procedures With Parameters

* [futex\_op](/core/sys/linux/#futex_op)

### [Futex\_Cmp\_Requeue\_Type ¶](#Futex_Cmp_Requeue_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L240)

```
Futex_Cmp_Requeue_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Procedures With Parameters

* [futex\_cmp\_requeue](/core/sys/linux/#futex_cmp_requeue)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

##### Related Constants

* [FUTEX\_CMP\_REQUEUE](/core/sys/linux/#FUTEX_CMP_REQUEUE)

### [Futex\_Cmp\_requeue\_Pi\_Type ¶](#Futex_Cmp_requeue_Pi_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L248)

```
Futex_Cmp_requeue_Pi_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Constants

* [FUTEX\_CMP\_REQUEUE\_PI](/core/sys/linux/#FUTEX_CMP_REQUEUE_PI)

### [Futex\_Fd\_Type ¶](#Futex_Fd_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L238)

```
Futex_Fd_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Constants

* [FUTEX\_FD](/core/sys/linux/#FUTEX_FD)

### [Futex\_Flags ¶](#Futex_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L857)

```
Futex_Flags :: bit_set[Futex_Flags_Bits; u32]
```

 

Flags for the futex (they are kept separately)




##### Related Procedures With Parameters

* [futex\_cmp\_requeue](/core/sys/linux/#futex_cmp_requeue)
* [futex\_requeue](/core/sys/linux/#futex_requeue)
* [futex\_wait](/core/sys/linux/#futex_wait)
* [futex\_wait\_bitset](/core/sys/linux/#futex_wait_bitset)
* [futex\_wake](/core/sys/linux/#futex_wake)
* [futex\_wake\_bitset](/core/sys/linux/#futex_wake_bitset)
* [futex\_wake\_op](/core/sys/linux/#futex_wake_op)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

### [Futex\_Flags\_Bits ¶](#Futex_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1511)

```
Futex_Flags_Bits :: enum int {
	PRIVATE  = 7, 
	REALTIME = 8, 
}
```

 

Bits for Futex\_Flags

### [Futex\_Lock\_Pi2\_Type ¶](#Futex_Lock_Pi2_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L249)

```
Futex_Lock_Pi2_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Constants

* [FUTEX\_LOCK\_PI2](/core/sys/linux/#FUTEX_LOCK_PI2)

### [Futex\_Lock\_Pi\_Type ¶](#Futex_Lock_Pi_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L242)

```
Futex_Lock_Pi_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Constants

* [FUTEX\_LOCK\_PI](/core/sys/linux/#FUTEX_LOCK_PI)

### [Futex\_Op ¶](#Futex_Op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1491)

```
Futex_Op :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

 

Second argument to futex(2) syscall

### [Futex\_Requeue\_Type ¶](#Futex_Requeue_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L239)

```
Futex_Requeue_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Procedures With Parameters

* [futex\_requeue](/core/sys/linux/#futex_requeue)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

##### Related Constants

* [FUTEX\_REQUEUE](/core/sys/linux/#FUTEX_REQUEUE)

### [Futex\_Trylock\_Pi\_Type ¶](#Futex_Trylock_Pi_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L244)

```
Futex_Trylock_Pi_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Constants

* [FUTEX\_TRYLOCK\_PI](/core/sys/linux/#FUTEX_TRYLOCK_PI)

### [Futex\_Unlock\_Pi\_Type ¶](#Futex_Unlock_Pi_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L243)

```
Futex_Unlock_Pi_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Constants

* [FUTEX\_UNLOCK\_PI](/core/sys/linux/#FUTEX_UNLOCK_PI)

### [Futex\_Wait\_Bitset\_Type ¶](#Futex_Wait_Bitset_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L245)

```
Futex_Wait_Bitset_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Procedures With Parameters

* [futex\_wait\_bitset](/core/sys/linux/#futex_wait_bitset)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

##### Related Constants

* [FUTEX\_WAIT\_BITSET](/core/sys/linux/#FUTEX_WAIT_BITSET)

### [Futex\_Wait\_Type ¶](#Futex_Wait_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L236)

```
Futex_Wait_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Procedures With Parameters

* [futex\_wait](/core/sys/linux/#futex_wait)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

##### Related Constants

* [FUTEX\_WAIT](/core/sys/linux/#FUTEX_WAIT)

### [Futex\_Wait\_requeue\_Pi\_Type ¶](#Futex_Wait_requeue_Pi_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L247)

```
Futex_Wait_requeue_Pi_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Constants

* [FUTEX\_WAIT\_REQUEUE\_PI](/core/sys/linux/#FUTEX_WAIT_REQUEUE_PI)

### [Futex\_Wake\_Bitset\_Type ¶](#Futex_Wake_Bitset_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L246)

```
Futex_Wake_Bitset_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Procedures With Parameters

* [futex\_wake\_bitset](/core/sys/linux/#futex_wake_bitset)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

##### Related Constants

* [FUTEX\_WAKE\_BITSET](/core/sys/linux/#FUTEX_WAKE_BITSET)

### [Futex\_Wake\_Op\_Type ¶](#Futex_Wake_Op_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L241)

```
Futex_Wake_Op_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Procedures With Parameters

* [futex\_wake\_op](/core/sys/linux/#futex_wake_op)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

##### Related Constants

* [FUTEX\_WAKE\_OP](/core/sys/linux/#FUTEX_WAKE_OP)

### [Futex\_Wake\_Type ¶](#Futex_Wake_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L237)

```
Futex_Wake_Type :: enum u32 {
	WAIT            = 0, 
	WAKE            = 1, 
	FD              = 2, 
	REQUEUE         = 3, 
	CMP_REQUEUE     = 4, 
	WAKE_OP         = 5, 
	LOCK_PI         = 6, 
	UNLOCK_PI       = 7, 
	TRYLOCK_PI      = 8, 
	WAIT_BITSET     = 9, 
	WAKE_BITSET     = 10, 
	WAIT_REQUEUE_PI = 11, 
	CMP_REQUEUE_PI  = 12, 
	LOCK_PI2        = 13, 
}
```

##### Related Procedures With Parameters

* [futex\_wake](/core/sys/linux/#futex_wake)
* [futex](/core/sys/linux/#futex) *(procedure groups)*

##### Related Constants

* [FUTEX\_WAKE](/core/sys/linux/#FUTEX_WAKE)

### [Get\_Random\_Flags ¶](#Get_Random_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L399)

```
Get_Random_Flags :: bit_set[Get_Random_Flags_Bits; i32]
```

 

Flags for getrandom(2) syscall.




##### Related Procedures With Parameters

* [getrandom](/core/sys/linux/#getrandom)

### [Get\_Random\_Flags\_Bits ¶](#Get_Random_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L691)

```
Get_Random_Flags_Bits :: enum int {
	RANDOM   = 0, 
	NONBLOCK = 1, 
	INSECURE = 2, 
}
```

 

Bits for Get\_Random\_Flags

### [Gid ¶](#Gid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L16)

```
Gid :: distinct u32
```

 

Type for 32-bit Group IDs.




##### Related Procedures With Parameters

* [chown](/core/sys/linux/#chown)
* [fchown](/core/sys/linux/#fchown)
* [fchownat](/core/sys/linux/#fchownat)
* [getresgid](/core/sys/linux/#getresgid)
* [lchown](/core/sys/linux/#lchown)
* [setgid](/core/sys/linux/#setgid)
* [setregid](/core/sys/linux/#setregid)
* [setresgid](/core/sys/linux/#setresgid)



##### Related Procedures With Returns

* [getegid](/core/sys/linux/#getegid)
* [getgid](/core/sys/linux/#getgid)

### [Hardware\_Breakpoint\_Type ¶](#Hardware_Breakpoint_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L877)

```
Hardware_Breakpoint_Type :: enum u32 {
	EMPTY   = 0, 
	R       = 1, 
	W       = 2, 
	X       = 4, 
	RW      = 3, 
	INVALID = 7, 
}
```

 

Chooses the breakpoint type

### [IO\_CQ\_Ring\_Offsets ¶](#IO_CQ_Ring_Offsets) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1521)

```
IO_CQ_Ring_Offsets :: struct {
	head:         u32,
	tail:         u32,
	ring_mask:    u32,
	ring_entries: u32,
	overflow:     u32,
	cqes:         u32,
	flags:        u32,
	resv1:        u32,
	user_addr:    u64,
}
```

### [IO\_SQ\_Ring\_Offsets ¶](#IO_SQ_Ring_Offsets) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1509)

```
IO_SQ_Ring_Offsets :: struct {
	head:         u32,
	tail:         u32,
	ring_mask:    u32,
	ring_entries: u32,
	flags:        u32,
	dropped:      u32,
	array:        u32,
	resv1:        u32,
	user_addr:    u64,
}
```

### [IO\_Uring\_Accept\_Flags ¶](#IO_Uring_Accept_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1689)

```
IO_Uring_Accept_Flags :: bit_set[IO_Uring_Accept_Flags_Bits; u16]
```

### [IO\_Uring\_Accept\_Flags\_Bits ¶](#IO_Uring_Accept_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2190)

```
IO_Uring_Accept_Flags_Bits :: enum int {
	MULTISHOT, 
}
```

### [IO\_Uring\_CQE ¶](#IO_Uring_CQE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1565)

```
IO_Uring_CQE :: struct {
	// sq.data submission passed back.
	user_data: u64,
	// result code for this event.
	res:       i32,
	flags:     bit_set[IO_Uring_CQE_Flags_Bits; u32],
}
```

 

The completion queue entry when the .CQE32 flag is not set on setup.

### [IO\_Uring\_CQE32 ¶](#IO_Uring_CQE32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1575)

```
IO_Uring_CQE32 :: struct {
	using _: IO_Uring_CQE,
	pad:  u64,
	pad2: u64,
}
```

 

The completion queue entry when the .CQE32 flag is set on setup.

### [IO\_Uring\_CQE\_Flags ¶](#IO_Uring_CQE_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1582)

```
IO_Uring_CQE_Flags :: bit_set[IO_Uring_CQE_Flags_Bits; u32]
```

### [IO\_Uring\_CQE\_Flags\_Bits ¶](#IO_Uring_CQE_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2068)

```
IO_Uring_CQE_Flags_Bits :: enum int {
	// If set, the upper 16 bits are the buffer ID.
	BUFFER, 
	// If set, parent SQE will generate more CQE entries.
	MORE, 
	// If set, more data to read after socket recv.
	SOCK_NONEMPTY, 
	// Set for notification CQEs. Can be used to distinct them from sends.
	NOTIF, 
}
```

### [IO\_Uring\_Cmd\_Flags ¶](#IO_Uring_Cmd_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1685)

```
IO_Uring_Cmd_Flags :: bit_set[IO_Uring_Cmd_Flags_Bits; u32]
```

### [IO\_Uring\_Cmd\_Flags\_Bits ¶](#IO_Uring_Cmd_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2177)

```
IO_Uring_Cmd_Flags_Bits :: enum int {
	// use registered buffer; pass this flag along with setting sqe.buf_index.
	FIXED, 
}
```

### [IO\_Uring\_Enter\_Flags ¶](#IO_Uring_Enter_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1533)

```
IO_Uring_Enter_Flags :: bit_set[IO_Uring_Enter_Flags_Bits; u32]
```

##### Related Procedures With Parameters

* [io\_uring\_enter](/core/sys/linux/#io_uring_enter)
* [io\_uring\_enter2](/core/sys/linux/#io_uring_enter2)

### [IO\_Uring\_Enter\_Flags\_Bits ¶](#IO_Uring_Enter_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1967)

```
IO_Uring_Enter_Flags_Bits :: enum int {
	GETEVENTS, 
	SQ_WAKEUP, 
	SQ_WAIT, 
	EXT_ARG,         // Available since Linux 5.11
	REGISTERED_RING, 
}
```

### [IO\_Uring\_Features ¶](#IO_Uring_Features) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1507)

```
IO_Uring_Features :: bit_set[IO_Uring_Features_Bits; u32]
```

### [IO\_Uring\_Features\_Bits ¶](#IO_Uring_Features_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2054)

```
IO_Uring_Features_Bits :: enum int {
	SINGLE_MMAP, 
	NODROP, 
	SUBMIT_STABLE, 
	RW_CUR_POS, 
	CUR_PERSONALITY, 
	FAST_POLL, 
	POLL_32BITS, 
	SQPOLL_NONFIXED, 
	EXT_ARG, 
	NATIVE_WORKERS, 
	RSRC_TAGS, 
}
```

### [IO\_Uring\_Fsync\_Flags ¶](#IO_Uring_Fsync_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1681)

```
IO_Uring_Fsync_Flags :: bit_set[IO_Uring_Fsync_Flags_Bits; u32]
```

### [IO\_Uring\_Fsync\_Flags\_Bits ¶](#IO_Uring_Fsync_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2164)

```
IO_Uring_Fsync_Flags_Bits :: enum int {
	DATASYNC, 
}
```

### [IO\_Uring\_Getevents\_Arg ¶](#IO_Uring_Getevents_Arg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1535)

```
IO_Uring_Getevents_Arg :: struct {
	sigmask:    ^[1]uint,
	sigmask_sz: u32,
	// pad:     u32,
	ts:         ^Time_Spec,
}
```

##### Related Procedures With Parameters

* [io\_uring\_enter2](/core/sys/linux/#io_uring_enter2)

### [IO\_Uring\_OP ¶](#IO_Uring_OP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2079)

```
IO_Uring_OP :: enum u8 {
	NOP, 
	READV, 
	WRITEV, 
	FSYNC, 
	READ_FIXED, 
	WRITE_FIXED, 
	POLL_ADD, 
	POLL_REMOVE, 
	SYNC_FILE_RANGE, 
	SENDMSG, 
	RECVMSG, 
	TIMEOUT, 
	TIMEOUT_REMOVE, 
	ACCEPT, 
	ASYNC_CANCEL, 
	LINK_TIMEOUT, 
	CONNECT, 
	FALLOCATE, 
	OPENAT, 
	CLOSE, 
	FILES_UPDATE, 
	STATX, 
	READ, 
	WRITE, 
	FADVISE, 
	MADVISE, 
	SEND, 
	RECV, 
	OPENAT2, 
	EPOLL_CTL, 
	SPLICE, 
	PROVIDE_BUFFERS, 
	REMOVE_BUFFERS, 
	TEE, 
	SHUTDOWN, 
	RENAMEAT, 
	UNLINKAT, 
	MKDIRAT, 
	SYMLINKAT, 
	LINKAT, 
	MSG_RING, 
	FSETXATTR, 
	SETXATTR, 
	FGETXATTR, 
	GETXATTR, 
	SOCKET, 
	URING_CMD, 
	SEND_ZC, 
	SENDMSG_ZC, 
	READ_MULTISHOT, 
	WAITID, 
	FUTEX_WAIT, 
	FUTEX_WAKE, 
	FUTEX_WAITV, 
	FIXED_FD_INSTALL, 
	FTRUNCATE, 
	BIND, 
	LISTEN, 
}
```

### [IO\_Uring\_Params ¶](#IO_Uring_Params) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1492)

```
IO_Uring_Params :: struct {
	sq_entries:     u32,
	cq_entries:     u32,
	flags:          bit_set[IO_Uring_Setup_Flags_Bits; u32],
	sq_thread_cpu:  u32,
	sq_thread_idle: u32,
	features:       bit_set[IO_Uring_Features_Bits; u32],
	wq_fd:          u32,
	resv:           [3]u32,
	sq_off:         IO_SQ_Ring_Offsets,
	cq_off:         IO_CQ_Ring_Offsets,
}
```

##### Related Procedures With Parameters

* [io\_uring\_setup](/core/sys/linux/#io_uring_setup)

### [IO\_Uring\_Poll\_Add\_Flags ¶](#IO_Uring_Poll_Add_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1679)

```
IO_Uring_Poll_Add_Flags :: bit_set[IO_Uring_Poll_Add_Flags_Bits; u32]
```

### [IO\_Uring\_Poll\_Add\_Flags\_Bits ¶](#IO_Uring_Poll_Add_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2157)

```
IO_Uring_Poll_Add_Flags_Bits :: enum int {
	ADD_MULTI, 
	UPDATE_EVENTS, 
	UPDATE_USER_DATA, 
	ADD_LEVEL, 
}
```

### [IO\_Uring\_Register\_Opcode ¶](#IO_Uring_Register_Opcode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1975)

```
IO_Uring_Register_Opcode :: enum uint {
	REGISTER_BUFFERS             = 0, 
	UNREGISTER_BUFFERS           = 1, 
	REGISTER_FILES               = 2, 
	UNREGISTER_FILES             = 3, 
	REGISTER_EVENTFD             = 4, 
	UNREGISTER_EVENTFD           = 5, 
	REGISTER_FILES_UPDATE        = 6, 
	REGISTER_EVENTFD_ASYNC       = 7, 
	REGISTER_PROBE               = 8, 
	REGISTER_PERSONALITY         = 9, 
	UNREGISTER_PERSONALITY       = 10, 
	REGISTER_RESTRICTIONS        = 11, 
	REGISTER_ENABLE_RINGS        = 12, 
	// extended with tagging 
	REGISTER_FILES2              = 13, 
	REGISTER_FILES_UPDATE2       = 14, 
	REGISTER_BUFFERS2            = 15, 
	REGISTER_BUFFERS_UPDATE      = 16, 
	// set/clear io-wq thread affinities 
	REGISTER_IOWQ_AFF            = 17, 
	UNREGISTER_IOWQ_AFF          = 18, 
	// set/get max number of io-wq workers 
	REGISTER_IOWQ_MAX_WORKERS    = 19, 
	// register/unregister io_uring fd with the ring 
	REGISTER_RING_FDS            = 20, 
	UNREGISTER_RING_FDS          = 21, 
	// register ring based provide buffer group 
	REGISTER_PBUF_RING           = 22, 
	UNREGISTER_PBUF_RING         = 23, 
	// sync cancelation API 
	REGISTER_SYNC_CANCEL         = 24, 
	// register a range of fixed file slots for automatic slot allocation 
	REGISTER_FILE_ALLOC_RANGE    = 25, 
	// this goes last 
	REGISTER_LAST, 
	// flag added to the opcode to use a registered ring fd 
	REGISTER_USE_REGISTERED_RING = 2147483648, 
}
```

##### Related Procedures With Parameters

* [io\_uring\_register](/core/sys/linux/#io_uring_register)

### [IO\_Uring\_Rsrc\_Register ¶](#IO_Uring_Rsrc_Register) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1543)

```
IO_Uring_Rsrc_Register :: struct($T: typeid) {
	… // See source for fields
}
```

### [IO\_Uring\_Rsrc\_Update2 ¶](#IO_Uring_Rsrc_Update2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1553)

```
IO_Uring_Rsrc_Update2 :: struct($T: typeid) {
	… // See source for fields
}
```

### [IO\_Uring\_SQE ¶](#IO_Uring_SQE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1586)

```
IO_Uring_SQE :: struct {
	opcode:      IO_Uring_OP,
	flags:       bit_set[IO_Uring_SQE_Flags_Bits; u8],
	using __ioprio: struct #raw_union {
		ioprio:             u16,
		sq_accept_flags:    bit_set[IO_Uring_Accept_Flags_Bits; u16],
		sq_send_recv_flags: bit_set[IO_Uring_Send_Recv_Flags_Bits; u16] `raw_union_tag:"opcode=.SENDMSG, opcode=.RECVMSG, opcode=.SEND, opcode=.RECV"`,
	},
	fd:          Fd,
	using __offset: struct #raw_union {
		// Offset into file.
		off:   u64 `raw_union_tag:"opcode=.READV, opcode=.WRITEV, opcode=.SPLICE, opcode=.POLL_REMOVE, opcode=.EPOLL_CTL, opcode=.TIMEOUT, opcode=.ACCEPT, opcode=.CONNECT, opcode=.READ, opcode=.WRITE, opcode=.FILES_UPDATE, opcode=.SOCKET"`,
		addr2: u64 `raw_union_tag:"opcode=.SEND, opcode=.BIND"`,
		using _: struct {
			cmd_op: u32,
			__pad1: u32,
		},
		statx: ^Statx `raw_union_tag:"opcode=.STATX"`,
	},
	using __iovecs: struct #raw_union {
		// Pointer to buffer or iovecs.
		addr:          u64 `raw_union_tag:"opcode=.READV, opcode=.WRITEV, opcode=.POLL_REMOVE, opcode=.EPOLL_CTL, opcode=.SENDMSG, opcode=.RECVMSG, opcode=.SEND, opcode=.RECV, opcode=.TIMEOUT, opcode=.TIMEOUT_REMOVE, opcode=.ACCEPT, opcode=.ASYNC_CANCEL, opcode=.LINK_TIMEOUT, opcode=.CONNECT, opcode=.MADVISE, opcode=.OPENAT, opcode=.STATX, opcode=.READ, opcode=.WRITE, opcode=.FILES_UPDATE, opcode=.BIND, opcode=.LISTEN"`,
		splice_off_in: u64 `raw_union_tag:"opcode=.SPLICE"`,
		using _:       struct {
			level:   u32,
			optname: u32,
		},
	},
	using __len: struct #raw_union {
		// Buffer size or number of iovecs.
		len:          u32 `raw_union_tag:"opcode=.READV, opcode=.WRITEV, opcode=.SPLICE, opcode=.SEND, opcode=.RECV, opcode=.TIMEOUT, opcode=.LINK_TIMEOUT, opcode=.MADVISE, opcode=.OPENAT, opcode=.READ, opcode=.WRITE, opcode=.TEE, opcode=.FILES_UPDATE, opcode=.SOCKET"`,
		poll_flags:   bit_set[IO_Uring_Poll_Add_Flags_Bits; u32] `raw_union_tag:"opcode=.POLL_ADD, opcode=.POLL_REMOVE"`,
		statx_mask:   bit_set[Statx_Mask_Bits; u32] `raw_union_tag:"opcode=.STATX"`,
		epoll_ctl_op: EPoll_Ctl_Opcode `raw_union_tag:"opcode=.EPOLL_CTL"`,
		shutdown_how: Shutdown_How `raw_union_tag:"opcode=.SHUTDOWN"`,
	},
	using __contents: struct #raw_union {
		rw_flags:         i32 `raw_union_tag:"opcode=.READV, opcode=.WRITEV, opcode=.SOCKET"`,
		fsync_flags:      bit_set[IO_Uring_Fsync_Flags_Bits; u32] `raw_union_tag:"opcode=.FSYNC"`,
		// compatibility.
		poll_events:      bit_set[Fd_Poll_Events_Bits; u16] `raw_union_tag:"opcode=.POLL_ADD, opcode=.POLL_REMOVE"`,
		// word-reversed for BE.
		poll32_events:    u32,
		sync_range_flags: u32,
		msg_flags:        bit_set[Socket_Msg_Bits; i32] `raw_union_tag:"opcode=.SENDMSG, opcode=.RECVMSG, opcode=.SEND, opcode=.RECV"`,
		timeout_flags:    bit_set[IO_Uring_Timeout_Flags_Bits; u32] `raw_union_tag:"opcode=.TIMEOUT, opcode=.TIMEOUT_REMOVE, opcode=.LINK_TIMEOUT"`,
		accept_flags:     bit_set[Socket_FD_Flags_Bits; i32] `raw_union_tag:"opcode=.ACCEPT"`,
		cancel_flags:     u32,
		open_flags:       bit_set[Open_Flags_Bits; u32] `raw_union_tag:"opcode=.OPENAT"`,
		statx_flags:      bit_set[FD_Flags_Bits; i32] `raw_union_tag:"opcode=.STATX"`,
		fadvise_advice:   u32 `raw_union_tag:"opcode=.MADVISE"`,
		splice_flags:     bit_set[IO_Uring_Splice_Flags_Bits; u32] `raw_union_tag:"opcode=.SPLICE, opcode=.TEE"`,
		rename_flags:     u32,
		unlink_flags:     u32,
		hardlink_flags:   u32,
		xattr_flags:      u32,
		msg_ring_flags:   u32,
		uring_cmd_flags:  bit_set[IO_Uring_Cmd_Flags_Bits; u32],
	},
	// Data to be passed back at completion time.
	user_data:   u64,
	using __buffer: struct #raw_union {
		// Index into fixed buffers, if used.
		buf_index: u16,
		// For grouped buffer selection.
		buf_group: u16,
	},
	// Personality to use, if used.
	personality: u16,
	using _:     struct #raw_union {
		splice_fd_in: Fd `raw_union_tag:"opcode=.SPLICE, opcode=.TEE"`,
		file_index:   u32 `raw_union_tag:"opcode=.ACCEPT, opcode=.OPENAT, opcode=.CLOSE, opcode=.SOCKET"`,
		using _:      struct {
			addr_len: u16 `raw_union_tag:"opcode=.SEND"`,
			__pad3:   [1]u16,
		},
	},
	using __:    struct {
		using _: struct {
			addr3:  u64,
			__pad2: [1]u64,
		},
	},
}
```

 

The submission queue entry when the .SQE128 flag is not set on setup.




###### Procedures Through `using` From [splice\_fd\_in](/core/sys/linux/#splice_fd_in)

* [recv](/core/sys/linux/#recv) *(procedure groups)*
* [send](/core/sys/linux/#send) *(procedure groups)*

### [IO\_Uring\_SQE128 ¶](#IO_Uring_SQE128) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1673)

```
IO_Uring_SQE128 :: struct {
	using _: IO_Uring_SQE,
	cmd: [64]u8,
}
```

 

The submission queue entry when the .SQE128 flag is set on setup.




###### Procedures Through `using` From [splice\_fd\_in](/core/sys/linux/#splice_fd_in)

* [recv](/core/sys/linux/#recv) *(procedure groups)*
* [send](/core/sys/linux/#send) *(procedure groups)*

### [IO\_Uring\_SQE\_Flags ¶](#IO_Uring_SQE_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1583)

```
IO_Uring_SQE_Flags :: bit_set[IO_Uring_SQE_Flags_Bits; u8]
```

### [IO\_Uring\_SQE\_Flags\_Bits ¶](#IO_Uring_SQE_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2140)

```
IO_Uring_SQE_Flags_Bits :: enum int {
	// Use fixed fileset.
	FIXED_FILE, 
	// Issue after inflight IO.
	IO_DRAIN, 
	// Links next sqe.
	IO_LINK, 
	// Like LINK, but stronger.
	IO_HARDLINK, 
	// Always go async.
	ASYNC, 
	// Select buffer from sq.buf_group.
	BUFFER_SELECT, 
	// Don't post CQE if request succeeded.
	CQE_SKIP_SUCCESS, 
}
```

### [IO\_Uring\_Send\_Recv\_Flags ¶](#IO_Uring_Send_Recv_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1691)

```
IO_Uring_Send_Recv_Flags :: bit_set[IO_Uring_Send_Recv_Flags_Bits; u16]
```

### [IO\_Uring\_Send\_Recv\_Flags\_Bits ¶](#IO_Uring_Send_Recv_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2194)

```
IO_Uring_Send_Recv_Flags_Bits :: enum int {
	// 		If set, instead of first attempting to send
	// 		or receive and arm poll if that yields an
	// 		-EAGAIN result, arm poll upfront and skip
	// 		the initial transfer attempt.
	RECVSEND_POLL_FIRST, 
	// 		Multishot recv. Sets IORING_CQE_F_MORE if
	// 		the handler will continue to report
	// 		CQEs on behalf of the same SQE.
	RECV_MULTISHOT, 
	// 		Use registered buffers, the index is stored in
	// 		the buf_index field.
	RECVSEND_FIXED_BUF, 
	// 		If set, SEND[MSG]_ZC should report
	// 		the zerocopy usage in cqe.res
	// 		for the IORING_CQE_F_NOTIF cqe.
	// 		0 is reported if zerocopy was actually possible.
	// 		IORING_NOTIF_USAGE_ZC_COPIED if data was copied
	// 		(at least partially).
	SEND_ZC_REPORT_USAGE, 
}
```

### [IO\_Uring\_Setup\_Flags ¶](#IO_Uring_Setup_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1505)

```
IO_Uring_Setup_Flags :: bit_set[IO_Uring_Setup_Flags_Bits; u32]
```

### [IO\_Uring\_Setup\_Flags\_Bits ¶](#IO_Uring_Setup_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2015)

```
IO_Uring_Setup_Flags_Bits :: enum int {
	// io_context is polled.
	IOPOLL, 
	// SQ poll thread.
	SQPOLL, 
	// sq_thread_cpu is valid.
	SQ_AFF, 
	// app defines CQ size.
	CQSIZE, 
	// clamp SQ/CQ ring sizes.
	CLAMP, 
	// attach to existing wq.
	ATTACH_WQ, 
	// start with ring disabled.
	R_DISABLED, 
	// continue submit on error.
	SUBMIT_ALL, 
	// Cooperative task running. When requests complete, they often require
	// forcing the submitter to transition to the kernel to complete. If this
	// flag is set, work will be done when the task transitions anyway, rather
	// than force an inter-processor interrupt reschedule. This avoids interrupting
	// a task running in userspace, and saves an IPI.
	COOP_TASKRUN, 
	// If COOP_TASKRUN is set, get notified if task work is available for
	// running and a kernel transition would be needed to run it. This sets
	// IORING_SQ_TASKRUN in the sq ring flags. Not valid with COOP_TASKRUN.
	TASKRUN_FLAG, 
	// SQEs are 128 bytes.
	SQE128, 
	// CQEs are 32 bytes.
	CQE32, 
	// Only one task is allowed to submit requests
	SINGLE_ISSUER, 
	// Defer running task work to get events.
	// Rather than running bits of task work whenever the task transitions
	// try to do it just before it is needed.
	DEFER_TASKRUN, 
}
```

### [IO\_Uring\_Splice\_Flags ¶](#IO_Uring_Splice_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1687)

```
IO_Uring_Splice_Flags :: bit_set[IO_Uring_Splice_Flags_Bits; u32]
```

### [IO\_Uring\_Splice\_Flags\_Bits ¶](#IO_Uring_Splice_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2182)

```
IO_Uring_Splice_Flags_Bits :: enum int {
	MOVE, 
	NONBLOCK, 
	MORE, 
	GIFT, 
	F_FD_IN_FIXED = 31, 
}
```

### [IO\_Uring\_Submission\_Queue\_Flags ¶](#IO_Uring_Submission_Queue_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1693)

```
IO_Uring_Submission_Queue_Flags :: bit_set[IO_Uring_Submission_Queue_Flags_Bits; u32]
```

### [IO\_Uring\_Submission\_Queue\_Flags\_Bits ¶](#IO_Uring_Submission_Queue_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2224)

```
IO_Uring_Submission_Queue_Flags_Bits :: enum int {
	NEED_WAKEUP, 
	CQ_OVERFLOW, 
	TASKRUN, 
}
```

### [IO\_Uring\_Timeout\_Flags ¶](#IO_Uring_Timeout_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1683)

```
IO_Uring_Timeout_Flags :: bit_set[IO_Uring_Timeout_Flags_Bits; u32]
```

##### Related Constants

* [IORING\_TIMEOUT\_CLOCK\_MASK](/core/sys/linux/#IORING_TIMEOUT_CLOCK_MASK)
* [IORING\_TIMEOUT\_UPDATE\_MASK](/core/sys/linux/#IORING_TIMEOUT_UPDATE_MASK)

### [IO\_Uring\_Timeout\_Flags\_Bits ¶](#IO_Uring_Timeout_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2168)

```
IO_Uring_Timeout_Flags_Bits :: enum int {
	ABS, 
	UPDATE, 
	BOOTTIME, 
	REALTIME, 
	LINK_TIMEOUT_UPDATE, 
	ETIME_SUCCESS, 
}
```

### [IO\_Vec ¶](#IO_Vec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L934)

```
IO_Vec :: struct {
	base: [^]u8,
	len:  uint,
}
```

 

Struct used for IO operations




##### Related Procedures With Parameters

* [ptrace\_getregset](/core/sys/linux/#ptrace_getregset)
* [ptrace\_setregset](/core/sys/linux/#ptrace_setregset)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [IPC\_Cmd ¶](#IPC_Cmd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1662)

```
IPC_Cmd :: enum i16 {
	// IPC common
	IPC_RMID     = 0, 
	IPC_SET      = 1, 
	IPC_STAT     = 2, 
	// Shared memory
	SHM_LOCK     = 11, 
	SHM_UNLOCK   = 12, 
	SHM_STAT     = 13, 
	SHM_INFO     = 14, 
	SHM_STAT_ANY = 15, 
	// Semaphore
	GETPID       = 11, 
	GETVAL       = 12, 
	GETALL       = 13, 
	GETNCNT      = 14, 
	GETZCNT      = 15, 
	SETVAL       = 16, 
	SETALL       = 17, 
	SEM_STAT     = 18, 
	SEM_INFO     = 19, 
	SEM_STAT_ANY = 20, 
	// Message queue
	MSG_STAT     = 11, 
	MSG_INFO     = 12, 
	MSG_STAT_ANY = 13, 
}
```

 

IPC memory commands




##### Related Procedures With Parameters

* [msgctl](/core/sys/linux/#msgctl)
* [semctl3](/core/sys/linux/#semctl3)
* [semctl4](/core/sys/linux/#semctl4)
* [shmctl\_ds](/core/sys/linux/#shmctl_ds)
* [shmctl\_info](/core/sys/linux/#shmctl_info)
* [semctl](/core/sys/linux/#semctl) *(procedure groups)*
* [shmctl](/core/sys/linux/#shmctl) *(procedure groups)*

### [IPC\_Flags ¶](#IPC_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L942)

```
IPC_Flags :: bit_set[IPC_Flags_Bits; i16]
```

 

Access modes and flags used by SystemV IPC procedures.




##### Related Procedures With Parameters

* [msgget](/core/sys/linux/#msgget)
* [msgrcv](/core/sys/linux/#msgrcv)
* [msgsnd](/core/sys/linux/#msgsnd)
* [semget](/core/sys/linux/#semget)
* [shmat](/core/sys/linux/#shmat)
* [shmget](/core/sys/linux/#shmget)

### [IPC\_Flags\_Bits ¶](#IPC_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1634)

```
IPC_Flags_Bits :: enum int {
	// Access modes for shared memory.
	WROTH         = 1, 
	RDOTH         = 2, 
	WRGRP         = 4, 
	RDGRP         = 5, 
	WRUSR         = 7, 
	RDUSR         = 8, 
	// Creation flags for shared memory.
	IPC_CREAT     = 9, 
	IPC_EXCL      = 10, 
	SHM_HUGETLB   = 11, 
	SHM_NORESERVE = 12, 
	// Usage flags for shared memory.
	IPC_NOWAIT    = 11, 
	SEM_UNDO      = 9, 
	SHM_RDONLY    = 12, 
	SHM_RND       = 13, 
	SHM_REMAP     = 14, 
	SHM_EXEC      = 15, 
	MSG_NOERROR   = 12, 
	MSG_EXCEPT    = 13, 
	MSG_COPY      = 14, 
}
```

 

Bits for SystemV IPC flags.

In this enum, access modes are common for any shared memory. Prefixed
entries (i.e. `IPC_` or `SHM_`) denote flags, where `IPC_` are common flags
for all SystemV IPC primitives, and `SHM_`, `SEM_` and `MSG_` are specific
to shared memory segments, semaphores and message queues respectively.

These bits overlap, because they are meant to be used within the
context of specific procedures. Creation flags, used for `*get` procedures,
and usage flags used by all other IPC procedures. Do not mix creation and
usage flags, as well as flags prefixed differently (excluding `IPC_`
prefix).

### [IPC\_Perm ¶](#IPC_Perm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L947)

```
IPC_Perm :: struct {
	key:  Key,
	uid:  u32,
	gid:  u32,
	cuid: u32,
	cgid: u32,
	mode: bit_set[IPC_Flags_Bits; i16],
	// Only contains mode flags.
	seq:  u16,
	_:    [18]u8,
}
```

 

Permissions for SystemV IPC primitives.

### [ITimer\_Flags ¶](#ITimer_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1136)

```
ITimer_Flags :: bit_set[ITimer_Flags_Bits; u32]
```

 

Flags for POSIX interval timers.




##### Related Procedures With Parameters

* [clock\_nanosleep](/core/sys/linux/#clock_nanosleep)
* [timer\_settime](/core/sys/linux/#timer_settime)
* [timerfd\_settime](/core/sys/linux/#timerfd_settime)

### [ITimer\_Flags\_Bits ¶](#ITimer_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1840)

```
ITimer_Flags_Bits :: enum int {
	ABSTIME = 0, 
}
```

 

Bits for POSIX interval timer flags.

### [ITimer\_Spec ¶](#ITimer_Spec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1128)

```
ITimer_Spec :: struct {
	interval: Time_Spec,
	value:    Time_Spec,
}
```

##### Related Procedures With Parameters

* [timer\_gettime](/core/sys/linux/#timer_gettime)
* [timer\_settime](/core/sys/linux/#timer_settime)
* [timerfd\_gettime](/core/sys/linux/#timerfd_gettime)
* [timerfd\_settime](/core/sys/linux/#timerfd_settime)

### [ITimer\_Val ¶](#ITimer_Val) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1123)

```
ITimer_Val :: struct {
	interval: Time_Val,
	value:    Time_Val,
}
```

 

Interval timer value




##### Related Procedures With Parameters

* [getitimer](/core/sys/linux/#getitimer)
* [setitimer](/core/sys/linux/#setitimer)

### [ITimer\_Which ¶](#ITimer_Which) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1114)

```
ITimer_Which :: enum int {
	REAL    = 0, 
	VIRTUAL = 1, 
	PROF    = 2, 
}
```

 

Interval timer types




##### Related Procedures With Parameters

* [getitimer](/core/sys/linux/#getitimer)
* [setitimer](/core/sys/linux/#setitimer)

### [Id ¶](#Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L26)

```
Id :: distinct uint
```

 

Type for any of: pid, pidfd, pgid.




##### Related Procedures With Parameters

* [waitid](/core/sys/linux/#waitid)

### [Id\_Type ¶](#Id_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L914)

```
Id_Type :: enum uint {
	ALL   = 0, 
	PID   = 1, 
	PGID  = 2, 
	PIDFD = 3, 
}
```

 

Represent the type of Id




##### Related Procedures With Parameters

* [waitid](/core/sys/linux/#waitid)

### [Inode ¶](#Inode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L47)

```
Inode :: distinct u64
```

 

Type for 64-bit inode number for files.
Used pretty much only in struct Stat64 for 32-bit platforms.

### [Inotify\_Event ¶](#Inotify_Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L354)

```
Inotify_Event :: struct {
	wd:     Wd,
	mask:   bit_set[Inotify_Event_Bits; u32],
	cookie: u32,
	len:    u32,
	name:   [0]u8,
}
```

### [Inotify\_Event\_Bits ¶](#Inotify_Event_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L554)

```
Inotify_Event_Bits :: enum u32 {
	ACCESS        = 0, 
	MODIFY        = 1, 
	ATTRIB        = 2, 
	CLOSE_WRITE   = 3, 
	CLOSE_NOWRITE = 4, 
	OPEN          = 5, 
	MOVED_FROM    = 6, 
	MOVED_TO      = 7, 
	CREATE        = 8, 
	DELETE        = 9, 
	DELETE_SELF   = 10, 
	MOVE_SELF     = 11, 
	UNMOUNT       = 13, 
	Q_OVERFLOW    = 14, 
	IGNORED       = 15, 
	ONLYDIR       = 24, 
	DONT_FOLLOW   = 25, 
	EXCL_UNLINK   = 26, 
	MASK_CREATE   = 28, 
	MASK_ADD      = 29, 
	ISDIR         = 30, 
	ONESHOT       = 31, 
}
```

### [Inotify\_Event\_Mask ¶](#Inotify_Event_Mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L362)

```
Inotify_Event_Mask :: bit_set[Inotify_Event_Bits; u32]
```

##### Related Procedures With Parameters

* [inotify\_add\_watch](/core/sys/linux/#inotify_add_watch)

##### Related Constants

* [IN\_ALL\_EVENTS](/core/sys/linux/#IN_ALL_EVENTS)
* [IN\_CLOSE](/core/sys/linux/#IN_CLOSE)
* [IN\_MOVE](/core/sys/linux/#IN_MOVE)

### [Inotify\_Init\_Bits ¶](#Inotify_Init_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L549)

```
Inotify_Init_Bits :: enum int {
	NONBLOCK = 11, 
	CLOEXEC  = 19, 
}
```

### [Inotify\_Init\_Flags ¶](#Inotify_Init_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L352)

```
Inotify_Init_Flags :: bit_set[Inotify_Init_Bits; i32]
```

##### Related Procedures With Parameters

* [inotify\_init1](/core/sys/linux/#inotify_init1)

### [Key ¶](#Key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L52)

```
Key :: distinct i32
```

 

Shared memory identifiers used by shmget(2) and other calls.




##### Related Procedures With Parameters

* [msgctl](/core/sys/linux/#msgctl)
* [msgget](/core/sys/linux/#msgget)
* [msgrcv](/core/sys/linux/#msgrcv)
* [msgsnd](/core/sys/linux/#msgsnd)
* [semctl3](/core/sys/linux/#semctl3)
* [semctl4](/core/sys/linux/#semctl4)
* [semget](/core/sys/linux/#semget)
* [semop](/core/sys/linux/#semop)
* [shmat](/core/sys/linux/#shmat)
* [shmctl\_ds](/core/sys/linux/#shmctl_ds)
* [shmctl\_info](/core/sys/linux/#shmctl_info)
* [shmget](/core/sys/linux/#shmget)
* [semctl](/core/sys/linux/#semctl) *(procedure groups)*
* [shmctl](/core/sys/linux/#shmctl) *(procedure groups)*

##### Related Constants

* [IPC\_PRIVATE](/core/sys/linux/#IPC_PRIVATE)

### [MAdvice ¶](#MAdvice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L643)

```
MAdvice :: enum int {
	NORMAL          = 0, 
	RANDOM          = 1, 
	SEQUENTIAL      = 2, 
	WILLNEED        = 3, 
	DONTNEED        = 4, 
	FREE            = 8, 
	REMOVE          = 9, 
	DONTFORK        = 10, 
	DOFORK          = 11, 
	MERGEABLE       = 12, 
	UNMERGEABLE     = 13, 
	HUGEPAGE        = 14, 
	NOHUGEPAGE      = 15, 
	DONTDUMP        = 16, 
	DODUMP          = 17, 
	WIPEONFORK      = 18, 
	KEEPONFORK      = 19, 
	COLD            = 20, 
	PAGEOUT         = 21, 
	POPULATE_READ   = 22, 
	POPULATE_WRITE  = 23, 
	DONTNEED_LOCKED = 24, 
	COLLAPSE        = 25, 
	HWPOISON        = 100, 
	SOFT_OFFLINE    = 101, 
}
```

 

Argument for madvice(2)




##### Related Procedures With Parameters

* [madvise](/core/sys/linux/#madvise)

### [MLock\_Flags ¶](#MLock_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L379)

```
MLock_Flags :: bit_set[MLock_Flags_Bits; u32]
```

 

Flags for mlock(2).




##### Related Procedures With Parameters

* [mlock](/core/sys/linux/#mlock)
* [mlockall](/core/sys/linux/#mlockall)

### [MLock\_Flags\_Bits ¶](#MLock_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L627)

```
MLock_Flags_Bits :: enum int {
	ONFAULT = 0, 
}
```

 

Bits for MLock\_Flags

### [MMsg\_Hdr ¶](#MMsg_Hdr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L844)

```
MMsg_Hdr :: struct {
	hdr: Msg_Hdr,
	len: u32,
}
```

 

Multiple message header for sendmmsg/recvmmsg

### [MRemap\_Flags ¶](#MRemap_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L394)

```
MRemap_Flags :: bit_set[MRemap_Flags_Bits; i32]
```

 

Flags for mremap(2).




##### Related Procedures With Parameters

* [mremap](/core/sys/linux/#mremap)

### [MRemap\_Flags\_Bits ¶](#MRemap_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L682)

```
MRemap_Flags_Bits :: enum int {
	MAYMOVE   = 0, 
	FIXED     = 1, 
	DONTUNMAP = 2, 
}
```

 

Bits for MRemap\_Flags

### [MSync\_Flags ¶](#MSync_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L384)

```
MSync_Flags :: bit_set[MSync_Flags_Bits; i32]
```

 

Flags for msync(2).




##### Related Procedures With Parameters

* [msync](/core/sys/linux/#msync)

### [MSync\_Flags\_Bits ¶](#MSync_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L634)

```
MSync_Flags_Bits :: enum int {
	ASYNC      = 0, 
	INVALIDATE = 1, 
	SYNC       = 2, 
}
```

 

Bits for MSync\_Flags

### [Map\_Flags ¶](#Map_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L374)

```
Map_Flags :: bit_set[Map_Flags_Bits; i32]
```

 

Flags for mmap.

See `constants.odin` for `MAP_SHARED_VALIDATE` and `MAP_HUGE_16KB`, et al.




##### Related Procedures With Parameters

* [mmap](/core/sys/linux/#mmap)

##### Related Constants

* [MAP\_HUGE\_16GB](/core/sys/linux/#MAP_HUGE_16GB)
* [MAP\_HUGE\_16KB](/core/sys/linux/#MAP_HUGE_16KB)
* [MAP\_HUGE\_16MB](/core/sys/linux/#MAP_HUGE_16MB)
* [MAP\_HUGE\_1GB](/core/sys/linux/#MAP_HUGE_1GB)
* [MAP\_HUGE\_1MB](/core/sys/linux/#MAP_HUGE_1MB)
* [MAP\_HUGE\_256MB](/core/sys/linux/#MAP_HUGE_256MB)
* [MAP\_HUGE\_2GB](/core/sys/linux/#MAP_HUGE_2GB)
* [MAP\_HUGE\_2MB](/core/sys/linux/#MAP_HUGE_2MB)
* [MAP\_HUGE\_32MB](/core/sys/linux/#MAP_HUGE_32MB)
* [MAP\_HUGE\_512KB](/core/sys/linux/#MAP_HUGE_512KB)
* [MAP\_HUGE\_512MB](/core/sys/linux/#MAP_HUGE_512MB)
* [MAP\_HUGE\_64KB](/core/sys/linux/#MAP_HUGE_64KB)
* [MAP\_HUGE\_8MB](/core/sys/linux/#MAP_HUGE_8MB)
* [MAP\_SHARED\_VALIDATE](/core/sys/linux/#MAP_SHARED_VALIDATE)

### [Map\_Flags\_Bits ¶](#Map_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L600)

```
Map_Flags_Bits :: enum int {
	SHARED          = 0, 
	PRIVATE         = 1, 
	DROPPABLE       = 3, 
	FIXED           = 4, 
	ANONYMOUS       = 5, 
	// platform-dependent section start
	X86_32BIT       = 6, 
	X86_ABOVE4G     = 7, 
	// platform-dependent section end
	GROWSDOWN       = 8, 
	DENYWRITE       = 11, 
	EXECUTABLE      = 12, 
	LOCKED          = 13, 
	NORESERVE       = 14, 
	POPULATE        = 15, 
	NONBLOCK        = 16, 
	STACK           = 17, 
	HUGETLB         = 18, 
	SYNC            = 19, 
	FIXED_NOREPLACE = 20, 
	UNINITIALIZED   = 26, 
}
```

 

Bits for Map\_Flags

See `constants.odin` for `MAP_SHARED_VALIDATE` and `MAP_HUGE_16KB`, et al.

### [Mem\_Protection ¶](#Mem_Protection) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L367)

```
Mem_Protection :: bit_set[Mem_Protection_Bits; i32]
```

 

Specifies protection for memory pages.




##### Related Procedures With Parameters

* [mmap](/core/sys/linux/#mmap)
* [mprotect](/core/sys/linux/#mprotect)

### [Mem\_Protection\_Bits ¶](#Mem_Protection_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L582)

```
Mem_Protection_Bits :: enum int {
	READ      = 0, 
	WRITE     = 1, 
	EXEC      = 2, 
	SEM       = 3, 
	// platform-specific section start
	ARM64_BTI = 4, 
	ARM64_MTE = 5, 
	// platform-specific section end
	GROWSDOWN = 24, 
	GROWSUP   = 25, 
}
```

 

Bits for Mem\_Protection bitfield

### [Memfd\_Create\_Flag\_Bits ¶](#Memfd_Create_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2303)

```
Memfd_Create_Flag_Bits :: enum int {
	CLOEXEC       = 0, 
	ALLOW_SEALING = 1, 
	HUGETLB       = 2, 
}
```

 

See `constants.odin` for `MFD_HUGE_16KB`, et al.

### [Memfd\_Create\_Flags ¶](#Memfd_Create_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1782)

```
Memfd_Create_Flags :: bit_set[Memfd_Create_Flag_Bits; u32]
```

##### Related Procedures With Parameters

* [memfd\_create](/core/sys/linux/#memfd_create)

##### Related Constants

* [MFD\_HUGE\_16GB](/core/sys/linux/#MFD_HUGE_16GB)
* [MFD\_HUGE\_16KB](/core/sys/linux/#MFD_HUGE_16KB)
* [MFD\_HUGE\_16MB](/core/sys/linux/#MFD_HUGE_16MB)
* [MFD\_HUGE\_1GB](/core/sys/linux/#MFD_HUGE_1GB)
* [MFD\_HUGE\_1MB](/core/sys/linux/#MFD_HUGE_1MB)
* [MFD\_HUGE\_256MB](/core/sys/linux/#MFD_HUGE_256MB)
* [MFD\_HUGE\_2GB](/core/sys/linux/#MFD_HUGE_2GB)
* [MFD\_HUGE\_2MB](/core/sys/linux/#MFD_HUGE_2MB)
* [MFD\_HUGE\_32MB](/core/sys/linux/#MFD_HUGE_32MB)
* [MFD\_HUGE\_512KB](/core/sys/linux/#MFD_HUGE_512KB)
* [MFD\_HUGE\_512MB](/core/sys/linux/#MFD_HUGE_512MB)
* [MFD\_HUGE\_64KB](/core/sys/linux/#MFD_HUGE_64KB)
* [MFD\_HUGE\_8MB](/core/sys/linux/#MFD_HUGE_8MB)

### [Mode ¶](#Mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L106)

```
Mode :: bit_set[Mode_Bits; u32]
```

 

```
Represents file's permission and status bits
```

**Example:**

```
When you're passing a value of this type the recommended usage is:

```
  linux.Mode{.S_IXOTH, .S_IROTH} | linux.S_IRWXU | linux.S_IRWXG
```

This would generate a mode that has full permissions for the
file's owner and group, and only "read" and "execute" bits
for others.
```




##### Related Procedures With Parameters

* [S\_ISBLK](/core/sys/linux/#S_ISBLK)
* [S\_ISCHR](/core/sys/linux/#S_ISCHR)
* [S\_ISDIR](/core/sys/linux/#S_ISDIR)
* [S\_ISFIFO](/core/sys/linux/#S_ISFIFO)
* [S\_ISLNK](/core/sys/linux/#S_ISLNK)
* [S\_ISREG](/core/sys/linux/#S_ISREG)
* [S\_ISSOCK](/core/sys/linux/#S_ISSOCK)
* [access](/core/sys/linux/#access)
* [chmod](/core/sys/linux/#chmod)
* [creat](/core/sys/linux/#creat)
* [faccessat](/core/sys/linux/#faccessat)
* [faccessat2](/core/sys/linux/#faccessat2)
* [fchmod](/core/sys/linux/#fchmod)
* [fchmodat](/core/sys/linux/#fchmodat)
* [mkdir](/core/sys/linux/#mkdir)
* [mkdirat](/core/sys/linux/#mkdirat)
* [mknod](/core/sys/linux/#mknod)
* [mknodat](/core/sys/linux/#mknodat)
* [open](/core/sys/linux/#open)
* [openat](/core/sys/linux/#openat)
* [umask](/core/sys/linux/#umask)

##### Related Constants

* [F\_OK](/core/sys/linux/#F_OK)
* [R\_OK](/core/sys/linux/#R_OK)
* [S\_IFBLK](/core/sys/linux/#S_IFBLK)
* [S\_IFCHR](/core/sys/linux/#S_IFCHR)
* [S\_IFDIR](/core/sys/linux/#S_IFDIR)
* [S\_IFIFO](/core/sys/linux/#S_IFIFO)
* [S\_IFLNK](/core/sys/linux/#S_IFLNK)
* [S\_IFMT](/core/sys/linux/#S_IFMT)
* [S\_IFREG](/core/sys/linux/#S_IFREG)
* [S\_IFSOCK](/core/sys/linux/#S_IFSOCK)
* [W\_OK](/core/sys/linux/#W_OK)
* [X\_OK](/core/sys/linux/#X_OK)

### [Mode\_Bits ¶](#Mode_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L238)

```
Mode_Bits :: enum int {
	IXOTH = 0,  // 0o0000001
	IWOTH = 1,  // 0o0000002
	IROTH = 2,  // 0o0000004
	IXGRP = 3,  // 0o0000010
	IWGRP = 4,  // 0o0000020
	IRGRP = 5,  // 0o0000040
	IXUSR = 6,  // 0o0000100
	IWUSR = 7,  // 0o0000200
	IRUSR = 8,  // 0o0000400
	ISVTX = 9,  // 0o0001000
	ISGID = 10, // 0o0002000
	ISUID = 11, // 0o0004000
	IFIFO = 12, // 0o0010000
	IFCHR = 13, // 0o0020000
	IFDIR = 14, // 0o0040000
	IFREG = 15, // 0o0100000
}
```

 

The bits for the Mode bitset.

### [Mount\_Flags ¶](#Mount_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1746)

```
Mount_Flags :: bit_set[Mount_Flags_Bits; uint]
```

##### Related Procedures With Parameters

* [mount](/core/sys/linux/#mount)

### [Mount\_Flags\_Bits ¶](#Mount_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2230)

```
Mount_Flags_Bits :: enum int {
	RDONLY      = 0, 
	NOSUID      = 1, 
	NODEV       = 2, 
	NOEXEC      = 3, 
	SYNCHRONOUS = 4, 
	REMOUNT     = 5, 
	MANDLOCK    = 6, 
	DIRSYNC     = 7, 
	NOATIME     = 10, 
	NODIRATIME  = 11, 
	BIND        = 12, 
	MOVE        = 13, 
	REC         = 14, 
	SILENT      = 15, 
	POSIXACL    = 16, 
	UNBINDABLE  = 17, 
	PRIVATE     = 18, 
	SLAVE       = 19, 
	SHARED      = 20, 
	RELATIME    = 21, 
	KERNMOUNT   = 22, 
	I_VERSION   = 23, 
	STRICTATIME = 24, 
	LAZYTIME    = 25, 
	ACTIVE      = 30, 
	NOUSER      = 31, 
	NOSYMFOLLOW = 8, 
}
```

### [Msg\_Buf ¶](#Msg_Buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1090)

```
Msg_Buf :: struct {
	type: int,
	text: [0]u8,
}
```

 

Template for the struct used for sending and receiving messages

### [Msg\_Hdr ¶](#Msg_Hdr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L833)

```
Msg_Hdr :: struct {
	name:    rawptr,
	namelen: i32,
	iov:     []IO_Vec,
	// ptr followed by length, abi matches
	control: []u8,
	flags:   bit_set[Socket_Msg_Bits; i32],
}
```

 

Message header for sendmsg/recvmsg




##### Related Procedures With Parameters

* [recvmsg](/core/sys/linux/#recvmsg)
* [sendmsg](/core/sys/linux/#sendmsg)

### [Msqid\_DS ¶](#Msqid_DS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1098)

```
Msqid_DS :: struct {
	perm:   IPC_Perm,
	stime:  uint,
	rtime:  uint,
	ctime:  uint,
	cbytes: uint,
	qnum:   uint,
	qbytes: uint,
	lspid:  Pid,
	lrpid:  Pid,
	_:      [2]uint,
}
```

 

SystemV message queue data.




##### Related Procedures With Parameters

* [msgctl](/core/sys/linux/#msgctl)

### [Open\_Flags ¶](#Open_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L86)

```
Open_Flags :: bit_set[Open_Flags_Bits; u32]
```

 

Flags for open(2).




##### Related Procedures With Parameters

* [dup3](/core/sys/linux/#dup3)
* [fcntl\_setfl](/core/sys/linux/#fcntl_setfl)
* [open](/core/sys/linux/#open)
* [openat](/core/sys/linux/#openat)
* [pipe2](/core/sys/linux/#pipe2)
* [timerfd\_create](/core/sys/linux/#timerfd_create)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*



##### Related Procedures With Returns

* [fcntl\_getfl](/core/sys/linux/#fcntl_getfl)

### [Open\_Flags\_Bits ¶](#Open_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L161)

```
Open_Flags_Bits :: enum int {
	WRONLY    = 0, 
	RDWR      = 1, 
	CREAT     = 6, 
	EXCL      = 7, 
	NOCTTY    = 8, 
	TRUNC     = 9, 
	APPEND    = 10, 
	NONBLOCK  = 11, 
	DSYNC     = 12, 
	ASYNC     = 13, 
	DIRECT    = 14, 
	LARGEFILE = 15, 
	DIRECTORY = 16, 
	NOFOLLOW  = 17, 
	NOATIME   = 18, 
	CLOEXEC   = 19, 
	PATH      = 21, 
}
```

### [PKey\_Access\_Bits ¶](#PKey_Access_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L674)

```
PKey_Access_Bits :: enum int {
	DISABLE_ACCESS = 0, 
	DISABLE_WRITE  = 2, 
}
```

 

Bits for PKey\_Access\_Rights

### [PKey\_Access\_Rights ¶](#PKey_Access_Rights) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L389)

```
PKey_Access_Rights :: bit_set[PKey_Access_Bits; u32]
```

 

Access rights for pkey\_alloc(2).

### [PTrace\_Arch\_Prctl\_Type ¶](#PTrace_Arch_Prctl_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L316)

```
PTrace_Arch_Prctl_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_ARCH\_PRCTL](/core/sys/linux/#PTRACE_ARCH_PRCTL)

### [PTrace\_Attach\_Type ¶](#PTrace_Attach_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L309)

```
PTrace_Attach_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_attach](/core/sys/linux/#ptrace_attach)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_ATTACH](/core/sys/linux/#PTRACE_ATTACH)

### [PTrace\_Cont\_Type ¶](#PTrace_Cont_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L302)

```
PTrace_Cont_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_cont](/core/sys/linux/#ptrace_cont)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_CONT](/core/sys/linux/#PTRACE_CONT)

### [PTrace\_Detach\_Type ¶](#PTrace_Detach_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L310)

```
PTrace_Detach_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_detach](/core/sys/linux/#ptrace_detach)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_DETACH](/core/sys/linux/#PTRACE_DETACH)

### [PTrace\_Event\_Code ¶](#PTrace_Event_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1766)

```
PTrace_Event_Code :: enum int {
	EVENT_FORK       = 1, 
	EVENT_VFORK      = 2, 
	EVENT_CLONE      = 3, 
	EVENT_EXEC       = 4, 
	EVENT_VFORK_DONE = 5, 
	EVENT_EXIT       = 6, 
	EVENT_SECCOMP    = 7, 
	EVENT_STOP       = 128, 
}
```

 

ptrace event codes.

### [PTrace\_Get\_RSeq\_Configuration\_Type ¶](#PTrace_Get_RSeq_Configuration_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L335)

```
PTrace_Get_RSeq_Configuration_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_GET\_RSEQ\_CONFIGURATION](/core/sys/linux/#PTRACE_GET_RSEQ_CONFIGURATION)

### [PTrace\_Get\_Syscall\_Info\_Op ¶](#PTrace_Get_Syscall_Info_Op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1780)

```
PTrace_Get_Syscall_Info_Op :: enum u8 {
	NONE    = 0, 
	ENTRY   = 1, 
	EXIT    = 2, 
	SECCOMP = 3, 
}
```

 

ptrace's get syscall info operation.

### [PTrace\_Get\_Syscall\_Info\_Type ¶](#PTrace_Get_Syscall_Info_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L334)

```
PTrace_Get_Syscall_Info_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_GET\_SYSCALL\_INFO](/core/sys/linux/#PTRACE_GET_SYSCALL_INFO)

### [PTrace\_Get\_Thread\_Area\_Type ¶](#PTrace_Get_Thread_Area_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L314)

```
PTrace_Get_Thread_Area_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_GET\_THREAD\_AREA](/core/sys/linux/#PTRACE_GET_THREAD_AREA)

### [PTrace\_Geteventmsg\_Type ¶](#PTrace_Geteventmsg_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L321)

```
PTrace_Geteventmsg_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_geteventmsg](/core/sys/linux/#ptrace_geteventmsg)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_GETEVENTMSG](/core/sys/linux/#PTRACE_GETEVENTMSG)

### [PTrace\_Getfpregs\_Type ¶](#PTrace_Getfpregs_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L307)

```
PTrace_Getfpregs_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_getfpregs](/core/sys/linux/#ptrace_getfpregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_GETFPREGS](/core/sys/linux/#PTRACE_GETFPREGS)

### [PTrace\_Getfpxregs\_Type ¶](#PTrace_Getfpxregs_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L311)

```
PTrace_Getfpxregs_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_getfpxregs](/core/sys/linux/#ptrace_getfpxregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_GETFPXREGS](/core/sys/linux/#PTRACE_GETFPXREGS)

### [PTrace\_Getregs\_Type ¶](#PTrace_Getregs_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L305)

```
PTrace_Getregs_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_getregs](/core/sys/linux/#ptrace_getregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_GETREGS](/core/sys/linux/#PTRACE_GETREGS)

### [PTrace\_Getregset\_Type ¶](#PTrace_Getregset_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L324)

```
PTrace_Getregset_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_getregset](/core/sys/linux/#ptrace_getregset)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_GETREGSET](/core/sys/linux/#PTRACE_GETREGSET)

### [PTrace\_Getsiginfo\_Type ¶](#PTrace_Getsiginfo_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L322)

```
PTrace_Getsiginfo_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_getsiginfo](/core/sys/linux/#ptrace_getsiginfo)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_GETSIGINFO](/core/sys/linux/#PTRACE_GETSIGINFO)

### [PTrace\_Getsigmask\_Type ¶](#PTrace_Getsigmask_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L330)

```
PTrace_Getsigmask_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_getsigmask](/core/sys/linux/#ptrace_getsigmask)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_GETSIGMASK](/core/sys/linux/#PTRACE_GETSIGMASK)

### [PTrace\_Interrupt\_Type ¶](#PTrace_Interrupt_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L327)

```
PTrace_Interrupt_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_interrupt](/core/sys/linux/#ptrace_interrupt)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_INTERRUPT](/core/sys/linux/#PTRACE_INTERRUPT)

### [PTrace\_Kill\_Type ¶](#PTrace_Kill_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L303)

```
PTrace_Kill_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_KILL](/core/sys/linux/#PTRACE_KILL)

### [PTrace\_Listen\_Type ¶](#PTrace_Listen_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L328)

```
PTrace_Listen_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_listen](/core/sys/linux/#ptrace_listen)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_LISTEN](/core/sys/linux/#PTRACE_LISTEN)

### [PTrace\_Note\_Type ¶](#PTrace_Note_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1403)

```
PTrace_Note_Type :: enum int {
	NT_PRSTATUS             = 1, 
	NT_PRFPREG              = 2, 
	NT_PRPSINFO             = 3, 
	NT_TASKSTRUCT           = 4, 
	NT_AUXV                 = 6, 
	NT_SIGINFO              = 1397311305, 
	NT_FILE                 = 1179208773, 
	NT_PRXFPREG             = 1189489535, 
	NT_386_TLS              = 512, 
	NT_386_IOPERM           = 513, 
	NT_X86_XSTATE           = 514, 
	NT_X86_SHSTK            = 516, 
	NT_ARM_VFP              = 1024, 
	NT_ARM_TLS              = 1025, 
	NT_ARM_HW_BREAK         = 1026, 
	NT_ARM_HW_WATCH         = 1027, 
	NT_ARM_SYSTEM_CALL      = 1028, 
	NT_ARM_SVE              = 1029, 
	NT_ARM_PAC_MASK         = 1030, 
	NT_ARM_PACA_KEYS        = 1031, 
	NT_ARM_PACG_KEYS        = 1032, 
	NT_ARM_TAGGED_ADDR_CTRL = 1033, 
	NT_ARM_PAC_ENABLED_KEYS = 1034, 
	NT_ARM_SSVE             = 1035, 
	NT_ARM_ZA               = 1036, 
	NT_ARM_ZT               = 1037, 
}
```

 

Note types for PTRACE\_GETREGSET. Mirrors constants in `elf` definition,
files though this enum only contains the constants defined for architectures
Odin can compile to.




##### Related Procedures With Parameters

* [ptrace\_getregset](/core/sys/linux/#ptrace_getregset)
* [ptrace\_setregset](/core/sys/linux/#ptrace_setregset)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [PTrace\_Options ¶](#PTrace_Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1338)

```
PTrace_Options :: bit_set[PTrace_Options_Bits; u32]
```

 

ptrace options.




##### Related Procedures With Parameters

* [ptrace\_seize](/core/sys/linux/#ptrace_seize)
* [ptrace\_setoptions](/core/sys/linux/#ptrace_setoptions)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [PTrace\_Options\_Bits ¶](#PTrace_Options_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1750)

```
PTrace_Options_Bits :: enum i32 {
	TRACESYSGOOD    = 0, 
	TRACEFORK       = 1, 
	TRACEVFORK      = 2, 
	TRACECLONE      = 3, 
	TRACEEXEC       = 4, 
	TRACEVFORKDONE  = 5, 
	TRACEEXIT       = 6, 
	TRACESECCOMP    = 7, 
	EXITKILL        = 20, 
	SUSPEND_SECCOMP = 21, 
}
```

 

ptrace options

### [PTrace\_Peek\_Sig\_Info\_Args ¶](#PTrace_Peek_Sig_Info_Args) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1343)

```
PTrace_Peek_Sig_Info_Args :: struct {
	off:   u64,
	flags: bit_set[PTrace_Peek_Sig_Info_Flags_Bits; u32],
	nr:    i32,
}
```

 

ptrace's PEEKSIGINFO argument.

### [PTrace\_Peek\_Sig\_Info\_Flags ¶](#PTrace_Peek_Sig_Info_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1352)

```
PTrace_Peek_Sig_Info_Flags :: bit_set[PTrace_Peek_Sig_Info_Flags_Bits; u32]
```

 

ptrace's PEEKSIGINFO flags.

### [PTrace\_Peek\_Sig\_Info\_Flags\_Bits ¶](#PTrace_Peek_Sig_Info_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1790)

```
PTrace_Peek_Sig_Info_Flags_Bits :: enum int {
	SHARED = 0, 
}
```

 

ptrace's PEEKSIGINFO flags bits

### [PTrace\_Peek\_Type ¶](#PTrace_Peek_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L300)

```
PTrace_Peek_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_peek](/core/sys/linux/#ptrace_peek)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_PEEKDATA](/core/sys/linux/#PTRACE_PEEKDATA)
* [PTRACE\_PEEKTEXT](/core/sys/linux/#PTRACE_PEEKTEXT)
* [PTRACE\_PEEKUSER](/core/sys/linux/#PTRACE_PEEKUSER)

### [PTrace\_Peeksiginfo\_Type ¶](#PTrace_Peeksiginfo_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L329)

```
PTrace_Peeksiginfo_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_peeksiginfo](/core/sys/linux/#ptrace_peeksiginfo)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_PEEKSIGINFO](/core/sys/linux/#PTRACE_PEEKSIGINFO)

### [PTrace\_Poke\_Type ¶](#PTrace_Poke_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L301)

```
PTrace_Poke_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_poke](/core/sys/linux/#ptrace_poke)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_POKEDATA](/core/sys/linux/#PTRACE_POKEDATA)
* [PTRACE\_POKETEXT](/core/sys/linux/#PTRACE_POKETEXT)
* [PTRACE\_POKEUSER](/core/sys/linux/#PTRACE_POKEUSER)

### [PTrace\_RSeq\_Configuration ¶](#PTrace_RSeq_Configuration) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1390)

```
PTrace_RSeq_Configuration :: struct {
	rseq_abi_pointer: u64,
	rseq_abi_size:    u32,
	signature:        u32,
	flags:            u32,
	_:                u32,
}
```

 

ptrace's results of GET\_RSEQ\_CONFIGURATION.

### [PTrace\_Request ¶](#PTrace_Request) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1703)

```
PTrace_Request :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

 

ptrace requests

### [PTrace\_Seccomp\_Get\_Filter\_Type ¶](#PTrace_Seccomp_Get_Filter_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L332)

```
PTrace_Seccomp_Get_Filter_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_SECCOMP\_GET\_FILTER](/core/sys/linux/#PTRACE_SECCOMP_GET_FILTER)

### [PTrace\_Seccomp\_Get\_Metadata\_Type ¶](#PTrace_Seccomp_Get_Metadata_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L333)

```
PTrace_Seccomp_Get_Metadata_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_SECCOMP\_GET\_METADATA](/core/sys/linux/#PTRACE_SECCOMP_GET_METADATA)

### [PTrace\_Seccomp\_Metadata ¶](#PTrace_Seccomp_Metadata) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1357)

```
PTrace_Seccomp_Metadata :: struct {
	filter_off: u64,
	flags:      u64,
}
```

 

ptrace's SECCOMP metadata.

### [PTrace\_Seize\_Type ¶](#PTrace_Seize_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L326)

```
PTrace_Seize_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_seize](/core/sys/linux/#ptrace_seize)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SEIZE](/core/sys/linux/#PTRACE_SEIZE)

### [PTrace\_Set\_Thread\_Area\_Type ¶](#PTrace_Set_Thread_Area_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L315)

```
PTrace_Set_Thread_Area_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_SET\_THREAD\_AREA](/core/sys/linux/#PTRACE_SET_THREAD_AREA)

### [PTrace\_Setfpregs\_Type ¶](#PTrace_Setfpregs_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L308)

```
PTrace_Setfpregs_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_setfpregs](/core/sys/linux/#ptrace_setfpregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SETFPREGS](/core/sys/linux/#PTRACE_SETFPREGS)

### [PTrace\_Setfpxregs\_Type ¶](#PTrace_Setfpxregs_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L312)

```
PTrace_Setfpxregs_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_setfpxregs](/core/sys/linux/#ptrace_setfpxregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SETFPXREGS](/core/sys/linux/#PTRACE_SETFPXREGS)

### [PTrace\_Setoptions\_Type ¶](#PTrace_Setoptions_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L320)

```
PTrace_Setoptions_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_setoptions](/core/sys/linux/#ptrace_setoptions)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SETOPTIONS](/core/sys/linux/#PTRACE_SETOPTIONS)

### [PTrace\_Setregs\_Type ¶](#PTrace_Setregs_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L306)

```
PTrace_Setregs_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_setregs](/core/sys/linux/#ptrace_setregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SETREGS](/core/sys/linux/#PTRACE_SETREGS)

### [PTrace\_Setregset\_Type ¶](#PTrace_Setregset_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L325)

```
PTrace_Setregset_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_setregset](/core/sys/linux/#ptrace_setregset)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SETREGSET](/core/sys/linux/#PTRACE_SETREGSET)

### [PTrace\_Setsiginfo\_Type ¶](#PTrace_Setsiginfo_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L323)

```
PTrace_Setsiginfo_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_SETSIGINFO](/core/sys/linux/#PTRACE_SETSIGINFO)

### [PTrace\_Setsigmask\_Type ¶](#PTrace_Setsigmask_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L331)

```
PTrace_Setsigmask_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_setsigmask](/core/sys/linux/#ptrace_setsigmask)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SETSIGMASK](/core/sys/linux/#PTRACE_SETSIGMASK)

### [PTrace\_Singleblock\_Type ¶](#PTrace_Singleblock_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L319)

```
PTrace_Singleblock_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Constants

* [PTRACE\_SINGLEBLOCK](/core/sys/linux/#PTRACE_SINGLEBLOCK)

### [PTrace\_Singlestep\_Type ¶](#PTrace_Singlestep_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L304)

```
PTrace_Singlestep_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_singlestep](/core/sys/linux/#ptrace_singlestep)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SINGLESTEP](/core/sys/linux/#PTRACE_SINGLESTEP)

### [PTrace\_Syscall\_Info ¶](#PTrace_Syscall_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1365)

```
PTrace_Syscall_Info :: struct {
	op:                  PTrace_Get_Syscall_Info_Op,
	arch:                u32,
	// TODO: AUDIT_ARCH*
	instruction_pointer: u64,
	stack_pointer:       u64,
	using _:             struct #raw_union {
		entry:   struct {
			nr:   u64,
			args: [6]u64,
		},
		exit:    struct {
			rval:     i64,
			is_error: b8,
		},
		seccomp: struct {
			nr:       u64,
			args:     [6]u64,
			ret_data: u32,
		},
	},
}
```

 

ptrace's results of GET\_SYSCALL\_INFO.

### [PTrace\_Syscall\_Type ¶](#PTrace_Syscall_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L313)

```
PTrace_Syscall_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_syscall](/core/sys/linux/#ptrace_syscall)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SYSCALL](/core/sys/linux/#PTRACE_SYSCALL)

### [PTrace\_Sysemu\_Singlestep\_Type ¶](#PTrace_Sysemu_Singlestep_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L318)

```
PTrace_Sysemu_Singlestep_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_sysemu\_singlestep](/core/sys/linux/#ptrace_sysemu_singlestep)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SYSEMU\_SINGLESTEP](/core/sys/linux/#PTRACE_SYSEMU_SINGLESTEP)

### [PTrace\_Sysemu\_Type ¶](#PTrace_Sysemu_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L317)

```
PTrace_Sysemu_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_sysemu](/core/sys/linux/#ptrace_sysemu)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_SYSEMU](/core/sys/linux/#PTRACE_SYSEMU)

### [PTrace\_Traceme\_Type ¶](#PTrace_Traceme_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L299)

```
PTrace_Traceme_Type :: enum i32 {
	TRACEME                = 0, 
	PEEKTEXT               = 1, 
	PEEKDATA               = 2, 
	PEEKUSER               = 3, 
	POKETEXT               = 4, 
	POKEDATA               = 5, 
	POKEUSER               = 6, 
	CONT                   = 7, 
	KILL                   = 8, 
	SINGLESTEP             = 9, 
	GETREGS                = 12, 
	SETREGS                = 13, 
	GETFPREGS              = 14, 
	SETFPREGS              = 15, 
	ATTACH                 = 16, 
	DETACH                 = 17, 
	GETFPXREGS             = 18, 
	SETFPXREGS             = 19, 
	SYSCALL                = 24, 
	GET_THREAD_AREA        = 25, 
	SET_THREAD_AREA        = 26, 
	ARCH_PRCTL             = 30, 
	SYSEMU                 = 31, 
	SYSEMU_SINGLESTEP      = 32, 
	SINGLEBLOCK            = 33, 
	SETOPTIONS             = 16896, 
	GETEVENTMSG            = 16897, 
	GETSIGINFO             = 16898, 
	SETSIGINFO             = 16899, 
	GETREGSET              = 16900, 
	SETREGSET              = 16901, 
	SEIZE                  = 16902, 
	INTERRUPT              = 16903, 
	LISTEN                 = 16904, 
	PEEKSIGINFO            = 16905, 
	GETSIGMASK             = 16906, 
	SETSIGMASK             = 16907, 
	SECCOMP_GET_FILTER     = 16908, 
	SECCOMP_GET_METADATA   = 16909, 
	GET_SYSCALL_INFO       = 16910, 
	GET_RSEQ_CONFIGURATION = 16911, 
}
```

##### Related Procedures With Parameters

* [ptrace\_traceme](/core/sys/linux/#ptrace_traceme)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

##### Related Constants

* [PTRACE\_TRACEME](/core/sys/linux/#PTRACE_TRACEME)

### [Perf\_Cap\_Flags ¶](#Perf_Cap_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L410)

```
Perf_Cap_Flags :: distinct bit_set[Perf_Cap_Flags_Bits; u64]
```

### [Perf\_Cap\_Flags\_Bits ¶](#Perf_Cap_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L760)

```
Perf_Cap_Flags_Bits :: enum u64 {
	Bit0               = 0, 
	Bit0_Is_Deprecated = 1, 
	User_Rdpmc         = 2, 
	User_Time          = 3, 
	User_Time_Zero     = 4, 
	User_Time_Short    = 5, 
}
```

### [Perf\_Event\_Attr ¶](#Perf_Event_Attr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L422)

```
Perf_Event_Attr :: struct #packed {
	type:               Perf_Event_Type,
	size:               u32,
	config:             struct #raw_union {
		hw:    Perf_Hardware_Id,
		sw:    Perf_Software_Id,
		cache: u64,
		other: u64,
	},
	sample:             struct #raw_union {
		period:    u64,
		frequency: u64,
	},
	sample_type:        bit_set[Perf_Event_Sample_Type_Bits; u64],
	read_format:        Perf_Read_Format,
	flags:              Perf_Event_Flags,
	wakeup:             struct #raw_union {
		events:    u32,
		watermark: u32,
	},
	breakpoint_type:    Hardware_Breakpoint_Type,
	using _:            struct #raw_union {
		breakpoint_addr: u64,
		kprobe_func:     u64,
		uprobe_path:     u64,
		config1:         u64,
	},
	using _:            struct #raw_union {
		breakpoint_len: u64,
		kprobe_addr:    u64,
		uprobe_offset:  u64,
		config2:        u64,
	},
	branch_sample_type: bit_set[Branch_Sample_Type_Bits; u64],
	sample_regs_user:   u64,
	sample_stack_user:  u32,
	clock_id:           i32,
	// TODO(flysand): clock_id
	sample_regs_intr:   u64,
	aux_watermark:      u32,
	sample_max_stack:   u16,
	_:                  u16,
}
```

 

The struct for perf\_event\_open.




##### Related Procedures With Parameters

* [perf\_event\_open](/core/sys/linux/#perf_event_open)

### [Perf\_Event\_Flags ¶](#Perf_Event_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L406)

```
Perf_Event_Flags :: distinct bit_set[Perf_Event_Flags_Bits; u64]
```

### [Perf\_Event\_Flags\_Bits ¶](#Perf_Event_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L719)

```
Perf_Event_Flags_Bits :: enum u64 {
	Disabled                 = 0, 
	Inherit                  = 1, 
	Pinned                   = 2, 
	Exclusive                = 3, 
	Exclude_User             = 4, 
	Exclude_Kernel           = 5, 
	Exclude_HV               = 6, 
	Exclude_Idle             = 7, 
	Mmap                     = 8, 
	Comm                     = 9, 
	Freq                     = 10, 
	Inherit_Stat             = 11, 
	Enable_On_Exec           = 12, 
	Task                     = 13, 
	Watermark                = 14, 
	Precise_IP_0             = 15, 
	Precise_IP_1             = 16, 
	Mmap_Data                = 17, 
	Sample_Id_All            = 18, 
	Exclude_Host             = 19, 
	Exclude_Guest            = 20, 
	Exclude_Callchain_Kernel = 21, 
	Exclude_Callchain_User   = 22, 
	Mmap2                    = 23, 
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

### [Perf\_Event\_Mmap\_Page ¶](#Perf_Event_Mmap_Page) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L468)

```
Perf_Event_Mmap_Page :: struct #packed {
	version:        u32,
	compat_version: u32,
	lock:           u32,
	index:          u32,
	offset:         i64,
	time_enabled:   u64,
	time_running:   u64,
	cap:            struct #raw_union {
		capabilities: u64,
		flags:        Perf_Cap_Flags,
	},
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

 

The ring buffer structure when mmaping Perf\_Event\_Attr.

### [Perf\_Event\_Sample\_Type ¶](#Perf_Event_Sample_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L412)

```
Perf_Event_Sample_Type :: bit_set[Perf_Event_Sample_Type_Bits; u64]
```

### [Perf\_Event\_Sample\_Type\_Bits ¶](#Perf_Event_Sample_Type_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L837)

```
Perf_Event_Sample_Type_Bits :: enum int {
	IP             = 0, 
	TID            = 1, 
	TIME           = 2, 
	ADDR           = 3, 
	READ           = 4, 
	CALLCHAIN      = 5, 
	ID             = 6, 
	CPU            = 7, 
	PERIOD         = 8, 
	STREAM_ID      = 9, 
	RAW            = 10, 
	BRANCH_STACK   = 11, 
	REGS_USER      = 12, 
	STACK_USER     = 13, 
	WEIGHT         = 14, 
	DATA_SRC       = 15, 
	IDENTIFIER     = 16, 
	TRANSACTION    = 17, 
	REGS_INTR      = 18, 
	PHYS_ADDR      = 19, 
	AUX            = 20, 
	CGROUP         = 21, 
	DATA_PAGE_SIZE = 22, 
	CODE_PAGE_SIZE = 23, 
	WEIGHT_STRUCT  = 24, 
}
```

 

Specifies which values to include in the sample

### [Perf\_Event\_Type ¶](#Perf_Event_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L710)

```
Perf_Event_Type :: enum u32 {
	HARDWARE   = 0, 
	SOFTWARE   = 1, 
	TRACEPOINT = 2, 
	HW_CACHE   = 3, 
	RAW        = 4, 
	BREAKPOINT = 5, 
}
```

 

Union tag for Perf\_Event\_Attr struct

### [Perf\_Flags ¶](#Perf_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L404)

```
Perf_Flags :: bit_set[Perf_Flags_Bits; uint]
```

 

Flags for perf\_event\_open(2) syscall.




##### Related Procedures With Parameters

* [perf\_event\_open](/core/sys/linux/#perf_event_open)

### [Perf\_Flags\_Bits ¶](#Perf_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L700)

```
Perf_Flags_Bits :: enum int {
	FD_NO_GROUP = 0, 
	FD_OUTPUT   = 1, 
	PID_CGROUP  = 2, 
	FD_CLOEXEC  = 3, 
}
```

 

Bits for Perf\_Flags

### [Perf\_Hardware\_Cache\_Id ¶](#Perf_Hardware_Cache_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L788)

```
Perf_Hardware_Cache_Id :: enum u64 {
	L1D  = 0, 
	L1I  = 1, 
	LL   = 2, 
	DTLB = 3, 
	ITLB = 4, 
	BPU  = 5, 
	NODE = 6, 
}
```

 

Specifies the cache for the particular cache event that you want to get info about




##### Related Procedures With Parameters

* [perf\_cache\_config](/core/sys/linux/#perf_cache_config)

### [Perf\_Hardware\_Cache\_Op\_Id ¶](#Perf_Hardware_Cache_Op_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L801)

```
Perf_Hardware_Cache_Op_Id :: enum u64 {
	READ     = 0, 
	WRITE    = 1, 
	PREFETCH = 2, 
}
```

 

Specifies the cache op that you want to get info about




##### Related Procedures With Parameters

* [perf\_cache\_config](/core/sys/linux/#perf_cache_config)

### [Perf\_Hardware\_Cache\_Result\_Id ¶](#Perf_Hardware_Cache_Result_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L810)

```
Perf_Hardware_Cache_Result_Id :: enum u64 {
	ACCESS = 0, 
	MISS   = 1, 
}
```

 

Specifies the cache operation result that you want to get info about




##### Related Procedures With Parameters

* [perf\_cache\_config](/core/sys/linux/#perf_cache_config)

### [Perf\_Hardware\_Id ¶](#Perf_Hardware_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L772)

```
Perf_Hardware_Id :: enum u64 {
	CPU_CYCLES              = 0, 
	INSTRUCTIONS            = 1, 
	CACHE_REFERENCES        = 2, 
	CACHE_MISSES            = 3, 
	BRANCH_INSTRUCTIONS     = 4, 
	BRANCH_MISSES           = 5, 
	BUS_CYCLES              = 6, 
	STALLED_CYCLES_FRONTEND = 7, 
	STALLED_CYCLES_BACKEND  = 8, 
	REF_CPU_CYCLES          = 9, 
}
```

 

Specifies the type of the hardware event that you want to get info about

### [Perf\_Read\_Format ¶](#Perf_Read_Format) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L408)

```
Perf_Read_Format :: distinct bit_set[Perf_Read_Format_Bits; u64]
```

### [Perf\_Read\_Format\_Bits ¶](#Perf_Read_Format_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L866)

```
Perf_Read_Format_Bits :: enum int {
	TOTAL_TIME_ENABLED = 0, 
	TOTAL_TIME_RUNNING = 1, 
	ID                 = 2, 
	GROUP              = 3, 
	LOST               = 4, 
}
```

 

/ Describes field sets to include in mmaped page

### [Perf\_Software\_Id ¶](#Perf_Software_Id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L818)

```
Perf_Software_Id :: enum u64 {
	CPU_CLOCK        = 0, 
	TASK_CLOCK       = 1, 
	PAGE_FAULTS      = 2, 
	CONTEXT_SWITCHES = 3, 
	CPU_MIGRATIONS   = 4, 
	PAGE_FAULTS_MIN  = 5, 
	PAGE_FAULTS_MAJ  = 6, 
	ALIGNMENT_FAULTS = 7, 
	EMULATION_FAULTS = 8, 
	DUMMY            = 9, 
	BPF_OUTPUT       = 10, 
	CGROUP_SWITCHES  = 11, 
}
```

 

Specifies the particular software event that you want to get info about

### [Pid ¶](#Pid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L21)

```
Pid :: distinct i32
```

 

Type for Process IDs, Thread IDs, Thread group ID.




##### Related Procedures With Parameters

* [getpgid](/core/sys/linux/#getpgid)
* [getsid](/core/sys/linux/#getsid)
* [kill](/core/sys/linux/#kill)
* [perf\_event\_open](/core/sys/linux/#perf_event_open)
* [pidfd\_open](/core/sys/linux/#pidfd_open)
* [ptrace\_attach](/core/sys/linux/#ptrace_attach)
* [ptrace\_cont](/core/sys/linux/#ptrace_cont)
* [ptrace\_detach](/core/sys/linux/#ptrace_detach)
* [ptrace\_geteventmsg](/core/sys/linux/#ptrace_geteventmsg)
* [ptrace\_getfpregs](/core/sys/linux/#ptrace_getfpregs)
* [ptrace\_getfpxregs](/core/sys/linux/#ptrace_getfpxregs)
* [ptrace\_getregs](/core/sys/linux/#ptrace_getregs)
* [ptrace\_getregset](/core/sys/linux/#ptrace_getregset)
* [ptrace\_getsiginfo](/core/sys/linux/#ptrace_getsiginfo)
* [ptrace\_getsigmask](/core/sys/linux/#ptrace_getsigmask)
* [ptrace\_interrupt](/core/sys/linux/#ptrace_interrupt)
* [ptrace\_listen](/core/sys/linux/#ptrace_listen)
* [ptrace\_peek](/core/sys/linux/#ptrace_peek)
* [ptrace\_peeksiginfo](/core/sys/linux/#ptrace_peeksiginfo)
* [ptrace\_poke](/core/sys/linux/#ptrace_poke)
* [ptrace\_seize](/core/sys/linux/#ptrace_seize)
* [ptrace\_setfpregs](/core/sys/linux/#ptrace_setfpregs)
* [ptrace\_setfpxregs](/core/sys/linux/#ptrace_setfpxregs)
* [ptrace\_setoptions](/core/sys/linux/#ptrace_setoptions)
* [ptrace\_setregs](/core/sys/linux/#ptrace_setregs)
* [ptrace\_setregset](/core/sys/linux/#ptrace_setregset)
* [ptrace\_setsigmask](/core/sys/linux/#ptrace_setsigmask)
* [ptrace\_singlestep](/core/sys/linux/#ptrace_singlestep)
* [ptrace\_syscall](/core/sys/linux/#ptrace_syscall)
* [ptrace\_sysemu](/core/sys/linux/#ptrace_sysemu)
* [ptrace\_sysemu\_singlestep](/core/sys/linux/#ptrace_sysemu_singlestep)
* [rt\_sigqueueinfo](/core/sys/linux/#rt_sigqueueinfo)
* [rt\_tgsigqueueinfo](/core/sys/linux/#rt_tgsigqueueinfo)
* [sched\_getaffinity](/core/sys/linux/#sched_getaffinity)
* [sched\_getattr](/core/sys/linux/#sched_getattr)
* [sched\_getparam](/core/sys/linux/#sched_getparam)
* [sched\_getscheduler](/core/sys/linux/#sched_getscheduler)
* [sched\_rr\_get\_interval](/core/sys/linux/#sched_rr_get_interval)
* [sched\_setaffinity](/core/sys/linux/#sched_setaffinity)
* [sched\_setattr](/core/sys/linux/#sched_setattr)
* [sched\_setparam](/core/sys/linux/#sched_setparam)
* [sched\_setscheduler](/core/sys/linux/#sched_setscheduler)
* [setpgid](/core/sys/linux/#setpgid)
* [tgkill](/core/sys/linux/#tgkill)
* [wait4](/core/sys/linux/#wait4)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*



##### Related Procedures With Returns

* [fork](/core/sys/linux/#fork)
* [getpgrp](/core/sys/linux/#getpgrp)
* [getpid](/core/sys/linux/#getpid)
* [getppid](/core/sys/linux/#getppid)
* [gettid](/core/sys/linux/#gettid)
* [setsid](/core/sys/linux/#setsid)
* [vfork](/core/sys/linux/#vfork)

##### Related Constants

* [WAIT\_ANY](/core/sys/linux/#WAIT_ANY)
* [WAIT\_MYPGRP](/core/sys/linux/#WAIT_MYPGRP)

### [Pid\_FD ¶](#Pid_FD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L41)

```
Pid_FD :: distinct i32
```

 

Type for PID file descriptors.




##### Related Procedures With Parameters

* [pidfd\_getfd](/core/sys/linux/#pidfd_getfd)



##### Related Procedures With Returns

* [pidfd\_open](/core/sys/linux/#pidfd_open)

### [Pid\_FD\_Flags ¶](#Pid_FD_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L510)

```
Pid_FD_Flags :: bit_set[Pid_FD_Flags_Bits; i32]
```

 

Flags for pidfd\_open(2).




##### Related Procedures With Parameters

* [pidfd\_open](/core/sys/linux/#pidfd_open)

### [Pid\_FD\_Flags\_Bits ¶](#Pid_FD_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L940)

```
Pid_FD_Flags_Bits :: enum int {
	NONBLOCK = 11, 
}
```

 

Bits for flags for pidfd

### [Poll\_Fd ¶](#Poll_Fd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L346)

```
Poll_Fd :: struct {
	fd:      Fd,
	events:  bit_set[Fd_Poll_Events_Bits; u16],
	revents: bit_set[Fd_Poll_Events_Bits; u16],
}
```

 

Struct for ppoll(2).

### [Priority\_Which ¶](#Priority_Which) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L947)

```
Priority_Which :: enum i32 {
	PROCESS = 0, 
	PGRP    = 1, 
	USER    = 2, 
}
```

 

Priority for process, process group, user




##### Related Procedures With Parameters

* [getpriority](/core/sys/linux/#getpriority)
* [setpriority](/core/sys/linux/#setpriority)

### [Protocol ¶](#Protocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1122)

```
Protocol :: enum int {
	HOPOPT          = 0, 
	ICMP            = 1, 
	IGMP            = 2, 
	GGP             = 3, 
	IPv4            = 4, 
	ST              = 5, 
	TCP             = 6, 
	CBT             = 7, 
	EGP             = 8, 
	IGP             = 9, 
	BBN_RCC_MON     = 10, 
	NVP_II          = 11, 
	PUP             = 12, 
	EMCON           = 14, 
	XNET            = 15, 
	CHAOS           = 16, 
	UDP             = 17, 
	MUX             = 18, 
	DCN_MEAS        = 19, 
	HMP             = 20, 
	PRM             = 21, 
	XNS_IDP         = 22, 
	TRUNK_1         = 23, 
	TRUNK_2         = 24, 
	LEAF_1          = 25, 
	LEAF_2          = 26, 
	RDP             = 27, 
	IRTP            = 28, 
	ISO_TP4         = 29, 
	NETBLT          = 30, 
	MFE_NSP         = 31, 
	MERIT_INP       = 32, 
	DCCP            = 33, 
	THREE_PC        = 34, 
	IDPR            = 35, 
	XTP             = 36, 
	DDP             = 37, 
	IDPR_CMTP       = 38, 
	TP_PlusPlus     = 39, 
	IL              = 40, 
	IPv6            = 41, 
	SDRP            = 42, 
	IPv6_Route      = 43, 
	IPv6_Frag       = 44, 
	IDRP            = 45, 
	RSVP            = 46, 
	GRE             = 47, 
	DSR             = 48, 
	BNA             = 49, 
	ESP             = 50, 
	AH              = 51, 
	I_NLSP          = 52, 
	NARP            = 54, 
	MOBILE          = 55, 
	TLSP            = 56, 
	SKIP            = 57, 
	IPv6_ICMP       = 58, 
	IPv6_NoNxt      = 59, 
	IPv6_Opts       = 60, 
	CFTP            = 62, 
	SAT_EXPAK       = 64, 
	KRYPTOLAN       = 65, 
	RVD             = 66, 
	IPPC            = 67, 
	SAT_MON         = 69, 
	VISA            = 70, 
	IPCV            = 71, 
	CPNX            = 72, 
	CPHB            = 73, 
	WSN             = 74, 
	PVP             = 75, 
	BR_SAT_MON      = 76, 
	SUN_ND          = 77, 
	WB_MON          = 78, 
	WB_EXPAK        = 79, 
	ISO_IP          = 80, 
	VMTP            = 81, 
	SECURE_VMTP     = 82, 
	VINES           = 83, 
	IPTM            = 84, 
	NSFNET_IGP      = 85, 
	DGP             = 86, 
	TCF             = 87, 
	EIGRP           = 88, 
	OSPFIGP         = 89, 
	Sprite_RPC      = 90, 
	LARP            = 91, 
	MTP             = 92, 
	AX_25           = 93, 
	IPIP            = 94, 
	SCC_SP          = 96, 
	ETHERIP         = 97, 
	ENCAP           = 98, 
	GMTP            = 100, 
	IFMP            = 101, 
	PNNI            = 102, 
	PIM             = 103, 
	ARIS            = 104, 
	SCPS            = 105, 
	QNX             = 106, 
	A_N             = 107, 
	IPComp          = 108, 
	SNP             = 109, 
	Compaq_Peer     = 110, 
	IPX_in_IP       = 111, 
	VRRP            = 112, 
	PGM             = 113, 
	L2TP            = 115, 
	DDX             = 116, 
	IATP            = 117, 
	STP             = 118, 
	SRP             = 119, 
	UTI             = 120, 
	SMP             = 121, 
	PTP             = 123, 
	FIRE            = 125, 
	CRTP            = 126, 
	CRUDP           = 127, 
	SSCOPMCE        = 128, 
	IPLT            = 129, 
	SPS             = 130, 
	PIPE            = 131, 
	SCTP            = 132, 
	FC              = 133, 
	RSVP_E2E_IGNORE = 134, 
	UDPLite         = 136, 
	MPLS_in_IP      = 137, 
	manet           = 138, 
	HIP             = 139, 
	Shim6           = 140, 
	WESP            = 141, 
	ROHC            = 142, 
	Ethernet        = 143, 
	AGGFRAG         = 144, 
	NSH             = 145, 
	Reserved        = 255, 
}
```

 

The protocol number according to IANA protocol number list
Full list of protocol numbers:
https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
Supported by the OS protocols can be queried by reading:
/etc/protocols




##### Related Procedures With Parameters

* [socket](/core/sys/linux/#socket)
* [socketpair](/core/sys/linux/#socketpair)

### [Protocol\_Family ¶](#Protocol_Family) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1063)

```
Protocol_Family :: enum u16 {
	UNSPEC     = 0, 
	LOCAL      = 1, 
	UNIX       = 1, 
	FILE       = 1, 
	INET       = 2, 
	AX25       = 3, 
	IPX        = 4, 
	APPLETALK  = 5, 
	NETROM     = 6, 
	BRIDGE     = 7, 
	ATMPVC     = 8, 
	X25        = 9, 
	INET6      = 10, 
	ROSE       = 11, 
	DECnet     = 12, 
	NETBEUI    = 13, 
	SECURITY   = 14, 
	KEY        = 15, 
	NETLINK    = 16, 
	ROUTE      = 16, 
	PACKET     = 17, 
	ASH        = 18, 
	ECONET     = 19, 
	ATMSVC     = 20, 
	RDS        = 21, 
	SNA        = 22, 
	IRDA       = 23, 
	PPPOX      = 24, 
	WANPIPE    = 25, 
	LLC        = 26, 
	IB         = 27, 
	MPLS       = 28, 
	CAN        = 29, 
	TIPC       = 30, 
	BLUETOOTH  = 31, 
	IUCV       = 32, 
	RXRPC      = 33, 
	ISDN       = 34, 
	PHONET     = 35, 
	IEEE802154 = 36, 
	CAIF       = 37, 
	ALG        = 38, 
	NFC        = 39, 
	VSOCK      = 40, 
	KCM        = 41, 
	QIPCRTR    = 42, 
	SMC        = 43, 
	XDP        = 44, 
	MCTP       = 45, 
}
```

 

Protocol family




##### Related Procedures With Parameters

* [socketpair](/core/sys/linux/#socketpair)

### [RISCV\_HWProbe ¶](#RISCV_HWProbe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1480)

```
RISCV_HWProbe :: struct {
	// set to `.UNSUPPORTED` by the kernel if that is the case.
	key:   RISCV_HWProbe_Key,
	value: struct #raw_union {
		base_behavior:          bit_set[RISCV_HWProbe_Base_Behavior_Bits; u64],
		ima_ext_0:              bit_set[RISCV_HWProbe_IMA_Ext_0_Bits; u64],
		cpu_perf_0:             bit_set[RISCV_HWProbe_Misaligned_Scalar_Perf; u64],
		misaligned_scalar_perf: RISCV_HWProbe_Misaligned_Scalar_Perf,
		raw:                    u64,
	},
}
```

### [RISCV\_HWProbe\_Base\_Behavior ¶](#RISCV_HWProbe_Base_Behavior) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1477)

```
RISCV_HWProbe_Base_Behavior :: bit_set[RISCV_HWProbe_Base_Behavior_Bits; u64]
```

### [RISCV\_HWProbe\_Base\_Behavior\_Bits ¶](#RISCV_HWProbe_Base_Behavior_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1903)

```
RISCV_HWProbe_Base_Behavior_Bits :: enum int {
	IMA, 
}
```

### [RISCV\_HWProbe\_CPU\_Perf\_0 ¶](#RISCV_HWProbe_CPU_Perf_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1476)

```
RISCV_HWProbe_CPU_Perf_0 :: bit_set[RISCV_HWProbe_Misaligned_Scalar_Perf; u64]
```

### [RISCV\_HWProbe\_Flags ¶](#RISCV_HWProbe_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1475)

```
RISCV_HWProbe_Flags :: bit_set[RISCV_HWProbe_Flags_Bits; u32]
```

### [RISCV\_HWProbe\_Flags\_Bits ¶](#RISCV_HWProbe_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1899)

```
RISCV_HWProbe_Flags_Bits :: enum int {
	WHICH_CPUS, 
}
```

### [RISCV\_HWProbe\_IMA\_Ext\_0 ¶](#RISCV_HWProbe_IMA_Ext_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1478)

```
RISCV_HWProbe_IMA_Ext_0 :: bit_set[RISCV_HWProbe_IMA_Ext_0_Bits; u64]
```

### [RISCV\_HWProbe\_IMA\_Ext\_0\_Bits ¶](#RISCV_HWProbe_IMA_Ext_0_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1907)

```
RISCV_HWProbe_IMA_Ext_0_Bits :: enum int {
	FD, 
	C, 
	V, 
	EXT_ZBA, 
	EXT_ZBB, 
	EXT_ZBS, 
	EXT_ZICBOZ, 
	EXT_ZBC, 
	EXT_ZBKB, 
	EXT_ZBKC, 
	EXT_ZBKX, 
	EXT_ZKND, 
	EXT_ZKNE, 
	EXT_ZKNH, 
	EXT_ZKSED, 
	EXT_ZKSH, 
	EXT_ZKT, 
	EXT_ZVBB, 
	EXT_ZVBC, 
	EXT_ZVKB, 
	EXT_ZVKG, 
	EXT_ZVKNED, 
	EXT_ZVKNHA, 
	EXT_ZVKNHB, 
	EXT_ZVKSED, 
	EXT_ZVKSH, 
	EXT_ZVKT, 
	EXT_ZFH, 
	EXT_ZFHMIN, 
	EXT_ZIHINTNTL, 
	EXT_ZVFH, 
	EXT_ZVFHMIN, 
	EXT_ZFA, 
	EXT_ZTSO, 
	EXT_ZACAS, 
	EXT_ZICOND, 
	EXT_ZIHINTPAUSE, 
	EXT_ZVE32X, 
	EXT_ZVE32F, 
	EXT_ZVE64X, 
	EXT_ZVE64F, 
	EXT_ZVE64D, 
	EXT_ZIMOP, 
	EXT_ZCA, 
	EXT_ZCB, 
	EXT_ZCD, 
	EXT_ZCF, 
	EXT_ZCMOP, 
	EXT_ZAWRS, 
}
```

### [RISCV\_HWProbe\_Key ¶](#RISCV_HWProbe_Key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1884)

```
RISCV_HWProbe_Key :: enum i64 {
	UNSUPPORTED            = -1, 
	MVENDORID              = 0, 
	MARCHID                = 1, 
	MIMPID                 = 2, 
	BASE_BEHAVIOR          = 3, 
	IMA_EXT_0              = 4, 
	// Deprecated, try `.MISALIGNED_SCALAR_PERF` first, if that is `.UNSUPPORTED`, use this.
	CPUPERF_0              = 5, 
	ZICBOZ_BLOCK_SIZE      = 6, 
	HIGHEST_VIRT_ADDRESS   = 7, 
	TIME_CSR_FREQ          = 8, 
	MISALIGNED_SCALAR_PERF = 9, 
}
```

### [RISCV\_HWProbe\_Misaligned\_Scalar\_Perf ¶](#RISCV_HWProbe_Misaligned_Scalar_Perf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1959)

```
RISCV_HWProbe_Misaligned_Scalar_Perf :: enum int {
	UNKNOWN, 
	EMULATED, 
	SLOW, 
	FAST, 
	UNSUPPORTED, 
}
```

### [RLimit ¶](#RLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L904)

```
RLimit :: struct {
	cur: uint,
	max: uint,
}
```

 

Resource limit




##### Related Procedures With Parameters

* [getrlimit](/core/sys/linux/#getrlimit)
* [setrlimit](/core/sys/linux/#setrlimit)

### [RLimit\_Kind ¶](#RLimit_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1547)

```
RLimit_Kind :: enum i32 {
	CPU        = 0, 
	FSIZE      = 1, 
	DATA       = 2, 
	STACK      = 3, 
	CORE       = 4, 
	RSS        = 5, 
	NOFILE     = 7, 
	AS         = 9, 
	NPROC      = 6, 
	MEMLOCK    = 8, 
	LOCKS      = 10, 
	SIGPENDING = 11, 
	MSGQUEUE   = 12, 
	NICE       = 13, 
	RTPRIO     = 14, 
	RTTIME     = 15, 
	NLIMITS    = 16, 
}
```

 

The kind of resource limits




##### Related Procedures With Parameters

* [getrlimit](/core/sys/linux/#getrlimit)
* [setrlimit](/core/sys/linux/#setrlimit)

### [RUsage ¶](#RUsage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L912)

```
RUsage :: struct {
	utime:         Time_Val,
	stime:         Time_Val,
	maxrss_word:   int,
	ixrss_word:    int,
	idrss_word:    int,
	isrss_word:    int,
	minflt_word:   int,
	majflt_word:   int,
	nswap_word:    int,
	inblock_word:  int,
	oublock_word:  int,
	msgsnd_word:   int,
	msgrcv_word:   int,
	nsignals_word: int,
	nvcsw_word:    int,
	nivcsw_word:   int,
}
```

 

Structure representing how much of each resource got used.




##### Related Procedures With Parameters

* [getrusage](/core/sys/linux/#getrusage)
* [wait4](/core/sys/linux/#wait4)
* [waitid](/core/sys/linux/#waitid)

### [RUsage\_Who ¶](#RUsage_Who) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1570)

```
RUsage_Who :: enum i32 {
	CHILDREN = -1, 
	SELF     = 0, 
	THREAD   = 1, 
	LWP      = 1, 
}
```

 

Represents the user of resources




##### Related Procedures With Parameters

* [getrusage](/core/sys/linux/#getrusage)

### [RW\_Hint ¶](#RW_Hint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L473)

```
RW_Hint :: enum u64 {
	WRITE_LIFE_NOT_SET = 0, 
	WRITE_LIFE_NONE    = 1, 
	WRITE_LIFE_SHORT   = 2, 
	WRITE_LIFE_MEDIUM  = 3, 
	WRITE_LIFE_LONG    = 4, 
	WRITE_LIFE_EXTREME = 5, 
}
```

##### Related Procedures With Parameters

* [fcntl\_get\_file\_rw\_hint](/core/sys/linux/#fcntl_get_file_rw_hint)
* [fcntl\_get\_rw\_hint](/core/sys/linux/#fcntl_get_rw_hint)
* [fcntl\_set\_file\_rw\_hint](/core/sys/linux/#fcntl_set_file_rw_hint)
* [fcntl\_set\_rw\_hint](/core/sys/linux/#fcntl_set_rw_hint)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*

### [Reboot\_Magic ¶](#Reboot_Magic) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1727)

```
Reboot_Magic :: enum u64 {
	RB_MAGIC_1  = 4276215469, 
	RB_MAGIC_2  = 672274793, 
	RB_MAGIC_2A = 85072278,   // Since Linux 2.1.17
	RB_MAGIC_2B = 369367448,  // Since Linux 2.1.97
	RB_MAGIC_2C = 537993216,  // Since Linux 2.5.71
}
```

##### Related Procedures With Parameters

* [reboot](/core/sys/linux/#reboot)

### [Reboot\_Operation ¶](#Reboot_Operation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1735)

```
Reboot_Operation :: enum u64 {
	RB_DISABLE_CAD = 0, 
	RB_ENABLE_CAD  = 2309737967, 
	RB_HALT_SYSTEM = 3454992675, 
	RB_KEXEC       = 1163412803, 
	RB_POWER_OFF   = 1126301404, 
	RB_AUTOBOOT    = 19088743, 
	RB_AUTOBOOT_2  = 2712847316, 
	RB_SW_SUSPEND  = 3489725666, 
}
```

##### Related Procedures With Parameters

* [reboot](/core/sys/linux/#reboot)

### [Rename\_Flags ¶](#Rename_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L287)

```
Rename_Flags :: bit_set[Rename_Flags_Bits; u32]
```

 

Flags for rename(2).




##### Related Procedures With Parameters

* [renameat2](/core/sys/linux/#renameat2)

### [Rename\_Flags\_Bits ¶](#Rename_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L419)

```
Rename_Flags_Bits :: enum int {
	EXCHANGE  = 1, 
	NOREPLACE = 0, 
	WHITEOUT  = 2, 
}
```

 

Bits for Rename\_Flags

### [Sched\_Attr ¶](#Sched_Attr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1762)

```
Sched_Attr :: struct {
	size:           u32,
	sched_policy:   Sched_Policy,
	sched_flags:    bit_set[Sched_Flag_Bits; u32],
	sched_nice:     i32,
	sched_priority: u32,
	// For the DEADLINE policy 
	sched_runtime:  u64,
	sched_deadline: u64,
	sched_period:   u64,
	// Utilization hints 
	sched_util_min: u32,
	sched_util_max: u32,
}
```

##### Related Procedures With Parameters

* [sched\_getattr](/core/sys/linux/#sched_getattr)
* [sched\_setattr](/core/sys/linux/#sched_setattr)

### [Sched\_Attr\_Flag\_Bits ¶](#Sched_Attr_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2298)

```
Sched_Attr_Flag_Bits :: enum int {
}
```

### [Sched\_Attr\_Flags ¶](#Sched_Attr_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1780)

```
Sched_Attr_Flags :: bit_set[Sched_Attr_Flag_Bits; u32]
```

##### Related Procedures With Parameters

* [sched\_getattr](/core/sys/linux/#sched_getattr)
* [sched\_setattr](/core/sys/linux/#sched_setattr)

### [Sched\_Flag\_Bits ¶](#Sched_Flag_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2288)

```
Sched_Flag_Bits :: enum int {
	RESET_ON_FORK  = 0, 
	RECLAIM        = 1, 
	DL_OVERRUN     = 2, 
	KEEP_POLICY    = 3, 
	KEEP_PARAMS    = 4, 
	UTIL_CLAMP_MIN = 5, 
	UTIL_CLAMP_MAX = 6, 
}
```

### [Sched\_Flags ¶](#Sched_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1760)

```
Sched_Flags :: bit_set[Sched_Flag_Bits; u32]
```

### [Sched\_Param ¶](#Sched_Param) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1756)

```
Sched_Param :: struct {
	sched_priority: i32,
}
```

##### Related Procedures With Parameters

* [sched\_getparam](/core/sys/linux/#sched_getparam)
* [sched\_getscheduler](/core/sys/linux/#sched_getscheduler)
* [sched\_setparam](/core/sys/linux/#sched_setparam)
* [sched\_setscheduler](/core/sys/linux/#sched_setscheduler)

### [Sched\_Policy ¶](#Sched_Policy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2279)

```
Sched_Policy :: enum u32 {
	OTHER    = 0, 
	BATCH    = 3, 
	IDLE     = 5, 
	FIFO     = 1, 
	RR       = 2, 
	DEADLINE = 6, 
}
```

### [Seal ¶](#Seal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L328)

```
Seal :: bit_set[Seal_Bits; i32]
```

 

Seals for `fcntl_add_seals()`.




##### Related Procedures With Parameters

* [fcntl\_add\_seals](/core/sys/linux/#fcntl_add_seals)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*



##### Related Procedures With Returns

* [fcntl\_get\_seals](/core/sys/linux/#fcntl_get_seals)

### [Seal\_Bits ¶](#Seal_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L465)

```
Seal_Bits :: enum int {
	SEAL         = 0, 
	SHRINK       = 1, 
	GROW         = 2, 
	WRITE        = 3, 
	FUTURE_WRITE = 4, 
}
```

 

Bits for seal

### [Seek\_Whence ¶](#Seek_Whence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L400)

```
Seek_Whence :: enum i16 {
	SET  = 0, 
	CUR  = 1, 
	END  = 2, 
	DATA = 3, 
	HOLE = 4, 
}
```

##### Related Procedures With Parameters

* [lseek](/core/sys/linux/#lseek)

### [Sem\_Buf ¶](#Sem_Buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1010)

```
Sem_Buf :: struct {
	num: u16,
	op:  IPC_Cmd,
	flg: bit_set[IPC_Flags_Bits; i16],
}
```

 

SystemV semaphore operation.

### [Sem\_Info ¶](#Sem_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1074)

```
Sem_Info :: struct {
	semmap: i32,
	mni:    i32,
	mns:    i32,
	mnu:    i32,
	msl:    i32,
	opm:    i32,
	ume:    i32,
	usz:    i32,
	vmx:    i32,
	aem:    i32,
}
```

 

SystenV semaphore info.

### [Sem\_Un ¶](#Sem_Un) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1063)

```
Sem_Un :: struct #raw_union {
	val:   i32,
	buf:   rawptr,
	array: u16,
	__buf: Sem_Info,
	_:     uintptr,
}
```

 

Argument for semctl functions




##### Related Procedures With Parameters

* [semctl4](/core/sys/linux/#semctl4)
* [semctl](/core/sys/linux/#semctl) *(procedure groups)*

### [Semid\_DS ¶](#Semid_DS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1058)

```
Semid_DS :: _Arch_Semid_DS
```

 

Architecture-specific semaphore data.

### [Shm\_Info ¶](#Shm_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L998)

```
Shm_Info :: struct {
	used_ids:       i32,
	shm_tot:        uint,
	shm_rss:        uint,
	shm_swp:        uint,
	swap_attempts:  uint,
	swap_successes: uint,
}
```

 

SystemV shared memory info.




##### Related Procedures With Parameters

* [shmctl\_info](/core/sys/linux/#shmctl_info)
* [shmctl](/core/sys/linux/#shmctl) *(procedure groups)*

### [Shmid\_DS ¶](#Shmid_DS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L993)

```
Shmid_DS :: _Arch_Shmid_DS
```

 

SystemV shared memory data.




##### Related Procedures With Parameters

* [shmctl\_ds](/core/sys/linux/#shmctl_ds)
* [shmctl](/core/sys/linux/#shmctl) *(procedure groups)*

### [Shutdown\_How ¶](#Shutdown_How) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1482)

```
Shutdown_How :: enum i32 {
	RD   = 0, 
	WR   = 1, 
	RDWR = 2, 
}
```

 

Argument to shutdown(2)




##### Related Procedures With Parameters

* [shutdown](/core/sys/linux/#shutdown)

### [Sig\_Action ¶](#Sig_Action) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L750)

```
Sig_Action :: struct($T: typeid) {
	… // See source for fields
}
```

##### Related Procedures With Parameters

* [rt\_sigaction](/core/sys/linux/#rt_sigaction)

### [Sig\_Action\_Flag ¶](#Sig_Action_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1009)

```
Sig_Action_Flag :: enum u32 {
	NOCLDSTOP      = 0, 
	NOCLDWAIT      = 1, 
	SIGINFO        = 2, 
	UNSUPPORTED    = 10, 
	EXPOSE_TAGBITS = 11, 
	RESTORER       = 26, 
	ONSTACK        = 27, 
	RESTART        = 28, 
	NODEFER        = 30, 
	RESETHAND      = 31, 
}
```

### [Sig\_Action\_Flags ¶](#Sig_Action_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L749)

```
Sig_Action_Flags :: bit_set[Sig_Action_Flag; uint]
```

### [Sig\_Action\_Special ¶](#Sig_Action_Special) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L743)

```
Sig_Action_Special :: enum uint {
	SIG_DFL = 0, 
	SIG_IGN = 1, 
	SIG_ERR = 18446744073709551615, 
}
```

### [Sig\_Child\_Code ¶](#Sig_Child_Code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1025)

```
Sig_Child_Code :: enum int {
	NONE, 
	EXITED, 
	KILLED, 
	DUMPED, 
	TRAPPED, 
	STOPPED, 
	CONTINUED, 
}
```

 

Translation of code in Sig\_Info for when signo is SIGCHLD

### [Sig\_Event ¶](#Sig_Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L721)

```
Sig_Event :: struct {
	value:  Sig_Val,
	signo:  i32,
	notify: i32,
	using _: struct #raw_union {
		_:         [16]u32,
		thread_id: Pid,
		using _:   struct {
			notify_function:  proc "c" (val: Sig_Val),
			notify_attribute: rawptr,
		},
	},
}
```

##### Related Procedures With Parameters

* [timer\_create](/core/sys/linux/#timer_create)

### [Sig\_Handler\_Fn ¶](#Sig_Handler_Fn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L525)

```
Sig_Handler_Fn :: proc "c" (sig: Signal)
```

### [Sig\_Info ¶](#Sig_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L529)

```
Sig_Info :: struct #packed {
	signo:  Signal,
	errno:  Errno,
	code:   i32,
	_pad0:  i32,
	using _union: struct #raw_union {
		_pad1:     [112]u8,
		using _kill: struct {
			pid: Pid,
			// sender's pid 
			uid: Uid,
		},
		using _timer: struct {
			timerid: i32,
			// timer id 
			overrun: i32,
			// overrun count 
			value:   Sig_Val,
		},
		// POSIX.1b signals 
		using _rt: struct {
			_pid0: Pid,
			// sender's pid 
			_uid0: Uid,
		},
		// SIGCHLD 
		using _sigchld: struct {
			_pid1:  Pid,
			// which child 
			_uid1:  Uid,
			// sender's uid 
			status: i32,
			// exit code 
			utime:  uint,
			stime:  uint,
		},
		// SIGILL, SIGFPE, SIGSEGV, SIGBUS 
		using _sigfault: struct {
			addr: rawptr,
			// faulting insn/memory ref. 
			using _: struct #raw_union {
				trapno:     i32,
				// Trap number that caused signal 
				addr_lsb:   i16,
				// LSB of the reported address 
				using _addr_bnd: struct {
					_pad2: u64,
					lower: rawptr,
					// lower bound during fault 
					upper: rawptr,
				},
				using _addr_pkey: struct {
					_pad3: u64,
					pkey:  u32,
				},
				using _perf: struct {
					perf_data:  u64,
					perf_type:  u32,
					perf_flags: u32,
				},
			},
		},
		// SIGPOLL 
		using _sigpoll: struct {
			band: int,
			// POLL_IN, POLL_OUT, POLL_MSG 
			fd:   Fd,
		},
		// SIGSYS 
		using _sigsys: struct {
			call_addr: rawptr,
			// calling user insn 
			syscall:   i32,
			// triggering system call number 
			arch:      u32,
		},
	},
}
```

##### Related Procedures With Parameters

* [ptrace\_getsiginfo](/core/sys/linux/#ptrace_getsiginfo)
* [ptrace\_peeksiginfo](/core/sys/linux/#ptrace_peeksiginfo)
* [rt\_sigqueueinfo](/core/sys/linux/#rt_sigqueueinfo)
* [rt\_sigtimedwait](/core/sys/linux/#rt_sigtimedwait)
* [rt\_tgsigqueueinfo](/core/sys/linux/#rt_tgsigqueueinfo)
* [waitid](/core/sys/linux/#waitid)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [Sig\_Mask\_Kind ¶](#Sig_Mask_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L997)

```
Sig_Mask_Kind :: enum i32 {
	SIG_BLOCK   = 0, 
	SIG_UNBLOCK = 1, 
	SIG_SETMASK = 2, 
}
```

##### Related Procedures With Parameters

* [rt\_sigprocmask](/core/sys/linux/#rt_sigprocmask)

### [Sig\_Restore\_Fn ¶](#Sig_Restore_Fn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L526)

```
Sig_Restore_Fn :: proc "c" () -> !
```

### [Sig\_Set ¶](#Sig_Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L519)

```
Sig_Set :: [1]uint
```

##### Related Procedures With Parameters

* [epoll\_pwait](/core/sys/linux/#epoll_pwait)
* [epoll\_pwait2](/core/sys/linux/#epoll_pwait2)
* [io\_uring\_enter](/core/sys/linux/#io_uring_enter)
* [ppoll](/core/sys/linux/#ppoll)
* [ptrace\_getsigmask](/core/sys/linux/#ptrace_getsigmask)
* [ptrace\_setsigmask](/core/sys/linux/#ptrace_setsigmask)
* [rt\_sigpending](/core/sys/linux/#rt_sigpending)
* [rt\_sigprocmask](/core/sys/linux/#rt_sigprocmask)
* [rt\_sigsuspend](/core/sys/linux/#rt_sigsuspend)
* [rt\_sigtimedwait](/core/sys/linux/#rt_sigtimedwait)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [Sig\_Stack ¶](#Sig_Stack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L737)

```
Sig_Stack :: struct {
	sp:    rawptr,
	flags: bit_set[Sig_Stack_Flag; i32],
	size:  uintptr,
}
```

##### Related Procedures With Parameters

* [sigaltstack](/core/sys/linux/#sigaltstack)

### [Sig\_Stack\_Flag ¶](#Sig_Stack_Flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1003)

```
Sig_Stack_Flag :: enum i32 {
	DISABLE    = 0, 
	ONSTACK    = 1, 
	AUTODISARM = 31, 
}
```

### [Sig\_Stack\_Flags ¶](#Sig_Stack_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L735)

```
Sig_Stack_Flags :: bit_set[Sig_Stack_Flag; i32]
```

### [Sig\_Val ¶](#Sig_Val) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L716)

```
Sig_Val :: struct #raw_union {
	sival_int: i32,
	sival_ptr: rawptr,
}
```

### [Signal ¶](#Signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L953)

```
Signal :: enum i32 {
	// POSIX-defined signals
	SIGINT    = 2,  // Interactive attention signal.
	SIGILL    = 4,  // Illegal instruction.
	SIGABRT   = 6,  // Abnormal termination.
	SIGFPE    = 8,  // Erroneous arithmetic operation.
	SIGSEGV   = 11, // Invalid access to storage.
	SIGTERM   = 15, // Termination request.
	// Other POSIX signals
	SIGHUP    = 1,  // Hangup.
	SIGQUIT   = 3,  // Quit.
	SIGTRAP   = 5,  // Trace/breakpoint trap.
	SIGKILL   = 9,  // Killed.
	SIGPIPE   = 13, // Broken pipe.
	SIGALRM   = 14, // Alarm clock.
	// Adjustments needed for most linux systems
	SIGSTKFLT = 16, // Stack fault (obsolete).
	SIGPWR    = 30, // Power failure imminent.
	// Historical signals specified by POSIX.
	SIGBUS    = 7,  // Bus error.
	SIGSYS    = 31, // Bad system call.
	// New(er) POSIX signals (1003.1-2008, 1003.1-2013).
	SIGURG    = 23, // Urgent data is available at a socket.
	SIGSTOP   = 19, // Stop, unblockable.
	SIGTSTP   = 20, // Keyboard stop.
	SIGCONT   = 18, // Continue.
	SIGCHLD   = 17, // Child terminated or stopped.
	SIGTTIN   = 21, // Background read from control terminal.
	SIGTTOU   = 22, // Background write to control terminal.
	SIGPOLL   = 29, // Pollable event occurred (System V).
	SIGXFSZ   = 25, // File size limit exceeded.
	SIGXCPU   = 24, // CPU time limit exceeded.
	SIGVTALRM = 26, // Virtual timer expired.
	SIGPROF   = 27, // Profiling timer expired.
	SIGUSR1   = 10, // User-defined signal 1.
	SIGUSR2   = 12, // User-defined signal 2.
	// Nonstandard signals found in all modern POSIX systems (including both BSD and Linux).
	SIGWINCH  = 28, // Window size change (4.3 BSD, Sun).
	// Archaic names for compatibility.
	SIGIO     = 29, // I/O now possible (4.2 BSD).
	SIGIOT    = 6,  // IOT instruction, abort() on a PDP-11.
	SIGCLD    = 17, // Old System V name
}
```

##### Related Procedures With Parameters

* [fcntl\_setsig](/core/sys/linux/#fcntl_setsig)
* [kill](/core/sys/linux/#kill)
* [ptrace\_cont](/core/sys/linux/#ptrace_cont)
* [ptrace\_detach](/core/sys/linux/#ptrace_detach)
* [ptrace\_singlestep](/core/sys/linux/#ptrace_singlestep)
* [ptrace\_syscall](/core/sys/linux/#ptrace_syscall)
* [ptrace\_sysemu](/core/sys/linux/#ptrace_sysemu)
* [ptrace\_sysemu\_singlestep](/core/sys/linux/#ptrace_sysemu_singlestep)
* [rt\_sigaction](/core/sys/linux/#rt_sigaction)
* [rt\_sigqueueinfo](/core/sys/linux/#rt_sigqueueinfo)
* [rt\_tgsigqueueinfo](/core/sys/linux/#rt_tgsigqueueinfo)
* [tgkill](/core/sys/linux/#tgkill)
* [fcntl](/core/sys/linux/#fcntl) *(procedure groups)*
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*



##### Related Procedures With Returns

* [fcntl\_getsig](/core/sys/linux/#fcntl_getsig)
* [rt\_sigtimedwait](/core/sys/linux/#rt_sigtimedwait)

##### Related Constants

* [SIGRTMAX](/core/sys/linux/#SIGRTMAX)
* [SIGRTMIN](/core/sys/linux/#SIGRTMIN)

### [Sock\_Addr ¶](#Sock_Addr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L782)

```
Sock_Addr :: struct #packed {
	sa_family: Address_Family,
	sa_data:   [14]u8,
}
```

 

Struct representing a generic socket address.

### [Sock\_Addr\_Any ¶](#Sock_Addr_Any) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L819)

```
Sock_Addr_Any :: struct #raw_union {
	using _: struct {
		family: Address_Family,
		port:   u16be,
	},
	using generic: Sock_Addr,
	using ipv4: Sock_Addr_In,
	using ipv6: Sock_Addr_In6,
	using uds: Sock_Addr_Un,
}
```

 

Struct representing an arbitrary socket address.




##### Related Procedures With Parameters

* [getpeername](/core/sys/linux/#getpeername)
* [getsockname](/core/sys/linux/#getsockname)

### [Sock\_Addr\_In ¶](#Sock_Addr_In) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L790)

```
Sock_Addr_In :: struct #packed {
	sin_family: Address_Family,
	sin_port:   u16be,
	sin_addr:   [4]u8,
	sin_zero:   [8]u8,
}
```

 

Struct representing IPv4 socket address.

### [Sock\_Addr\_In6 ¶](#Sock_Addr_In6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L800)

```
Sock_Addr_In6 :: struct #packed {
	sin6_family:   Address_Family,
	sin6_port:     u16be,
	sin6_flowinfo: u32,
	sin6_addr:     [16]u8,
	sin6_scope_id: u32,
}
```

 

Struct representing IPv6 socket address.

### [Sock\_Addr\_Un ¶](#Sock_Addr_Un) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L811)

```
Sock_Addr_Un :: struct #packed {
	sun_family: Address_Family,
	sun_path:   [108]u8,
}
```

 

Struct representing Unix Domain Socket address

### [Socket\_API\_Level ¶](#Socket_API_Level) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1264)

```
Socket_API_Level :: enum int {
	// Comes from <bits/socket-constants.h>
	SOCKET    = 1, 
	// Copy-pasted from protocol numbers
	TCP       = 6, 
	UDP       = 17, 
	// Comes from <bits/socket.h>
	RAW       = 255, 
	DECNET    = 261, 
	X25       = 262, 
	PACKET    = 263, 
	ATM       = 264, 
	AAL       = 265, 
	IRDA      = 266, 
	NETBEUI   = 267, 
	LLC       = 268, 
	DCCP      = 269, 
	NETLINK   = 270, 
	TIPC      = 271, 
	RXRPC     = 272, 
	PPPOL2TP  = 273, 
	BLUETOOTH = 274, 
	PNPIPE    = 275, 
	RDS       = 276, 
	IUCV      = 277, 
	CAIF      = 278, 
	ALG       = 279, 
	NFC       = 280, 
	KCM       = 281, 
	TLS       = 282, 
	XDP       = 283, 
	MPTCP     = 284, 
	MCTP      = 285, 
	SMC       = 286, 
}
```

 

API Level for getsockopt(2)/setsockopt(2)

### [Socket\_API\_Level\_Raw ¶](#Socket_API_Level_Raw) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L229)

```
Socket_API_Level_Raw :: enum int {
	// Comes from <bits/socket-constants.h>
	SOCKET    = 1, 
	// Copy-pasted from protocol numbers
	TCP       = 6, 
	UDP       = 17, 
	// Comes from <bits/socket.h>
	RAW       = 255, 
	DECNET    = 261, 
	X25       = 262, 
	PACKET    = 263, 
	ATM       = 264, 
	AAL       = 265, 
	IRDA      = 266, 
	NETBEUI   = 267, 
	LLC       = 268, 
	DCCP      = 269, 
	NETLINK   = 270, 
	TIPC      = 271, 
	RXRPC     = 272, 
	PPPOL2TP  = 273, 
	BLUETOOTH = 274, 
	PNPIPE    = 275, 
	RDS       = 276, 
	IUCV      = 277, 
	CAIF      = 278, 
	ALG       = 279, 
	NFC       = 280, 
	KCM       = 281, 
	TLS       = 282, 
	XDP       = 283, 
	MPTCP     = 284, 
	MCTP      = 285, 
	SMC       = 286, 
}
```

##### Related Constants

* [SOL\_RAW](/core/sys/linux/#SOL_RAW)

### [Socket\_API\_Level\_Sock ¶](#Socket_API_Level_Sock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L226)

```
Socket_API_Level_Sock :: enum int {
	// Comes from <bits/socket-constants.h>
	SOCKET    = 1, 
	// Copy-pasted from protocol numbers
	TCP       = 6, 
	UDP       = 17, 
	// Comes from <bits/socket.h>
	RAW       = 255, 
	DECNET    = 261, 
	X25       = 262, 
	PACKET    = 263, 
	ATM       = 264, 
	AAL       = 265, 
	IRDA      = 266, 
	NETBEUI   = 267, 
	LLC       = 268, 
	DCCP      = 269, 
	NETLINK   = 270, 
	TIPC      = 271, 
	RXRPC     = 272, 
	PPPOL2TP  = 273, 
	BLUETOOTH = 274, 
	PNPIPE    = 275, 
	RDS       = 276, 
	IUCV      = 277, 
	CAIF      = 278, 
	ALG       = 279, 
	NFC       = 280, 
	KCM       = 281, 
	TLS       = 282, 
	XDP       = 283, 
	MPTCP     = 284, 
	MCTP      = 285, 
	SMC       = 286, 
}
```

##### Related Procedures With Parameters

* [getsockopt\_sock](/core/sys/linux/#getsockopt_sock)
* [setsockopt\_sock](/core/sys/linux/#setsockopt_sock)
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*

##### Related Constants

* [SOL\_SOCKET](/core/sys/linux/#SOL_SOCKET)

### [Socket\_API\_Level\_TCP ¶](#Socket_API_Level_TCP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L227)

```
Socket_API_Level_TCP :: enum int {
	// Comes from <bits/socket-constants.h>
	SOCKET    = 1, 
	// Copy-pasted from protocol numbers
	TCP       = 6, 
	UDP       = 17, 
	// Comes from <bits/socket.h>
	RAW       = 255, 
	DECNET    = 261, 
	X25       = 262, 
	PACKET    = 263, 
	ATM       = 264, 
	AAL       = 265, 
	IRDA      = 266, 
	NETBEUI   = 267, 
	LLC       = 268, 
	DCCP      = 269, 
	NETLINK   = 270, 
	TIPC      = 271, 
	RXRPC     = 272, 
	PPPOL2TP  = 273, 
	BLUETOOTH = 274, 
	PNPIPE    = 275, 
	RDS       = 276, 
	IUCV      = 277, 
	CAIF      = 278, 
	ALG       = 279, 
	NFC       = 280, 
	KCM       = 281, 
	TLS       = 282, 
	XDP       = 283, 
	MPTCP     = 284, 
	MCTP      = 285, 
	SMC       = 286, 
}
```

##### Related Procedures With Parameters

* [getsockopt\_tcp](/core/sys/linux/#getsockopt_tcp)
* [setsockopt\_tcp](/core/sys/linux/#setsockopt_tcp)
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*

##### Related Constants

* [SOL\_TCP](/core/sys/linux/#SOL_TCP)

### [Socket\_API\_Level\_UDP ¶](#Socket_API_Level_UDP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L228)

```
Socket_API_Level_UDP :: enum int {
	// Comes from <bits/socket-constants.h>
	SOCKET    = 1, 
	// Copy-pasted from protocol numbers
	TCP       = 6, 
	UDP       = 17, 
	// Comes from <bits/socket.h>
	RAW       = 255, 
	DECNET    = 261, 
	X25       = 262, 
	PACKET    = 263, 
	ATM       = 264, 
	AAL       = 265, 
	IRDA      = 266, 
	NETBEUI   = 267, 
	LLC       = 268, 
	DCCP      = 269, 
	NETLINK   = 270, 
	TIPC      = 271, 
	RXRPC     = 272, 
	PPPOL2TP  = 273, 
	BLUETOOTH = 274, 
	PNPIPE    = 275, 
	RDS       = 276, 
	IUCV      = 277, 
	CAIF      = 278, 
	ALG       = 279, 
	NFC       = 280, 
	KCM       = 281, 
	TLS       = 282, 
	XDP       = 283, 
	MPTCP     = 284, 
	MCTP      = 285, 
	SMC       = 286, 
}
```

##### Related Procedures With Parameters

* [getsockopt\_udp](/core/sys/linux/#getsockopt_udp)
* [setsockopt\_udp](/core/sys/linux/#setsockopt_udp)
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*

##### Related Constants

* [SOL\_UDP](/core/sys/linux/#SOL_UDP)

### [Socket\_FD\_Flags ¶](#Socket_FD_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L766)

```
Socket_FD_Flags :: bit_set[Socket_FD_Flags_Bits; i32]
```

 

Flags for the socket file descriptor.
Note, on linux these are technically passed by OR'ing together
with Socket\_Type, our wrapper does this under the hood.




##### Related Procedures With Parameters

* [accept](/core/sys/linux/#accept)
* [socket](/core/sys/linux/#socket)

### [Socket\_FD\_Flags\_Bits ¶](#Socket_FD_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1055)

```
Socket_FD_Flags_Bits :: enum int {
	NONBLOCK = 11, 
	CLOEXEC  = 19, 
}
```

 

Bits for Socket\_FD\_Flags

### [Socket\_Msg ¶](#Socket_Msg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L777)

```
Socket_Msg :: bit_set[Socket_Msg_Bits; i32]
```

 

Flags for the socket for send/recv calls.




##### Related Procedures With Parameters

* [recvfrom](/core/sys/linux/#recvfrom)
* [recvmmsg](/core/sys/linux/#recvmmsg)
* [recvmsg](/core/sys/linux/#recvmsg)
* [sendmmsg](/core/sys/linux/#sendmmsg)
* [sendmsg](/core/sys/linux/#sendmsg)
* [sendto](/core/sys/linux/#sendto)
* [recv](/core/sys/linux/#recv) *(procedure groups)*
* [send](/core/sys/linux/#send) *(procedure groups)*

### [Socket\_Msg\_Bits ¶](#Socket_Msg_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1454)

```
Socket_Msg_Bits :: enum int {
	OOB          = 0, 
	PEEK         = 1, 
	DONTROUTE    = 2, 
	TRYHARD      = 2, 
	CTRUNC       = 3, 
	PROXY        = 4, 
	TRUNC        = 5, 
	DONTWAIT     = 6, 
	EOR          = 7, 
	WAITALL      = 8, 
	FIN          = 9, 
	SYN          = 10, 
	CONFIRM      = 11, 
	RST          = 12, 
	ERRQUEUE     = 13, 
	NOSIGNAL     = 14, 
	MORE         = 15, 
	WAITFORONE   = 16, 
	BATCH        = 18, 
	ZEROCOPY     = 22, 
	FASTOPEN     = 29, 
	CMSG_CLOEXEC = 30, 
}
```

 

Bits for Socket\_Msg

### [Socket\_Option ¶](#Socket_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1304)

```
Socket_Option :: enum int {
	DEBUG                         = 1, 
	REUSEADDR                     = 2, 
	TYPE                          = 3, 
	ERROR                         = 4, 
	DONTROUTE                     = 5, 
	BROADCAST                     = 6, 
	SNDBUF                        = 7, 
	RCVBUF                        = 8, 
	SNDBUFFORCE                   = 32, 
	RCVBUFFORCE                   = 33, 
	KEEPALIVE                     = 9, 
	OOBINLINE                     = 10, 
	NO_CHECK                      = 11, 
	PRIORITY                      = 12, 
	LINGER                        = 13, 
	BSDCOMPAT                     = 14, 
	REUSEPORT                     = 15, 
	PASSCRED                      = 16, 
	PEERCRED                      = 17, 
	RCVLOWAT                      = 18, 
	SNDLOWAT                      = 19, 
	RCVTIMEO_OLD                  = 20, 
	SNDTIMEO_OLD                  = 21, 
	SECURITY_AUTHENTICATION       = 22, 
	SECURITY_ENCRYPTION_TRANSPORT = 23, 
	SECURITY_ENCRYPTION_NETWORK   = 24, 
	BINDTODEVICE                  = 25, 
	ATTACH_FILTER                 = 26, 
	DETACH_FILTER                 = 27, 
	GET_FILTER                    = 26, 
	PEERNAME                      = 28, 
	ACCEPTCONN                    = 30, 
	PEERSEC                       = 31, 
	PASSSEC                       = 34, 
	IP_ADD_MEMBERSHIP             = 35, 
	MARK                          = 36, 
	PROTOCOL                      = 38, 
	DOMAIN                        = 39, 
	RXQ_OVFL                      = 40, 
	WIFI_STATUS                   = 41, 
	PEEK_OFF                      = 42, 
	NOFCS                         = 43, 
	LOCK_FILTER                   = 44, 
	SELECT_ERR_QUEUE              = 45, 
	BUSY_POLL                     = 46, 
	MAX_PACING_RATE               = 47, 
	BPF_EXTENSIONS                = 48, 
	INCOMING_CPU                  = 49, 
	ATTACH_BPF                    = 50, 
	DETACH_BPF                    = 27, 
	ATTACH_REUSEPORT_CBPF         = 51, 
	ATTACH_REUSEPORT_EBPF         = 52, 
	CNX_ADVICE                    = 53, 
	TIMESTAMPING_OPT_STATS        = 54, 
	MEMINFO                       = 55, 
	INCOMING_NAPI_ID              = 56, 
	COOKIE                        = 57, 
	TIMESTAMPING_PKTINFO          = 58, 
	PEERGROUPS                    = 59, 
	ZEROCOPY                      = 60, 
	TXTIME                        = 61, 
	BINDTOIFINDEX                 = 62, 
	TIMESTAMP_OLD                 = 29, 
	TIMESTAMPNS_OLD               = 35, 
	TIMESTAMPING_OLD              = 37, 
	TIMESTAMP_NEW                 = 63, 
	TIMESTAMPNS_NEW               = 64, 
	TIMESTAMPING_NEW              = 65, 
	RCVTIMEO_NEW                  = 66, 
	SNDTIMEO_NEW                  = 67, 
	DETACH_REUSEPORT_BPF          = 68, 
	PREFER_BUSY_POLL              = 69, 
	BUSY_POLL_BUDGET              = 70, 
	NETNS_COOKIE                  = 71, 
	BUF_LOCK                      = 72, 
	RESERVE_MEM                   = 73, 
	TXREHASH                      = 74, 
	RCVMARK                       = 75, 
	TIMESTAMP                     = 29, 
	TIMESTAMPNS                   = 35, 
	TIMESTAMPING                  = 37, 
	RCVTIMEO                      = 20, 
	SNDTIMEO                      = 21, 
}
```

 

If Socket\_API\_Level == .SOCKET, these are the options
you can specify in getsockopt(2)/setsockopt(2)




##### Related Procedures With Parameters

* [getsockopt\_base](/core/sys/linux/#getsockopt_base)
* [getsockopt\_sock](/core/sys/linux/#getsockopt_sock)
* [setsockopt\_sock](/core/sys/linux/#setsockopt_sock)
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*

### [Socket\_TCP\_Option ¶](#Socket_TCP_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1410)

```
Socket_TCP_Option :: enum int {
	NODELAY              = 1, 
	MAXSEG               = 2, 
	CORK                 = 3, 
	KEEPIDLE             = 4, 
	KEEPINTVL            = 5, 
	KEEPCNT              = 6, 
	SYNCNT               = 7, 
	LINGER2              = 8, 
	DEFER_ACCEPT         = 9, 
	WINDOW_CLAMP         = 10, 
	INFO                 = 11, 
	QUICKACK             = 12, 
	CONGESTION           = 13, 
	MD5SIG               = 14, 
	COOKIE_TRANSACTIONS  = 15, 
	THIN_LINEAR_TIMEOUTS = 16, 
	THIN_DUPACK          = 17, 
	USER_TIMEOUT         = 18, 
	REPAIR               = 19, 
	REPAIR_QUEUE         = 20, 
	QUEUE_SEQ            = 21, 
	REPAIR_OPTIONS       = 22, 
	FASTOPEN             = 23, 
	TIMESTAMP            = 24, 
	NOTSENT_LOWAT        = 25, 
	CC_INFO              = 26, 
	SAVE_SYN             = 27, 
	SAVED_SYN            = 28, 
	REPAIR_WINDOW        = 29, 
	FASTOPEN_CONNECT     = 30, 
	ULP                  = 31, 
	MD5SIG_EXT           = 32, 
	FASTOPEN_KEY         = 33, 
	FASTOPEN_NO_COOKIE   = 34, 
	ZEROCOPY_RECEIVE     = 35, 
	INQ                  = 36, 
	CM_INQ               = 36, 
	TX_DELAY             = 37, 
}
```

##### Related Procedures With Parameters

* [getsockopt\_tcp](/core/sys/linux/#getsockopt_tcp)
* [setsockopt\_tcp](/core/sys/linux/#setsockopt_tcp)
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*

### [Socket\_Type ¶](#Socket_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1042)

```
Socket_Type :: enum int {
	STREAM    = 1, 
	DGRAM     = 2, 
	RAW       = 3, 
	RDM       = 4, 
	SEQPACKET = 5, 
	DCCP      = 6, 
	PACKET    = 10, 
}
```

 

Type of socket to create
For TCP you want to use SOCK\_STREAM
For UDP you want to use SOCK\_DGRAM
Also see `Protocol`




##### Related Procedures With Parameters

* [socket](/core/sys/linux/#socket)
* [socketpair](/core/sys/linux/#socketpair)

### [Socket\_UDP\_Option ¶](#Socket_UDP_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1393)

```
Socket_UDP_Option :: enum int {
	CORK         = 1, 
	ENCAP        = 100, 
	NO_CHECK6_TX = 101, 
	NO_CHECK6_RX = 102, 
	SEGMENT      = 103, 
	GRO          = 104, 
}
```

##### Related Procedures With Parameters

* [getsockopt\_udp](/core/sys/linux/#getsockopt_udp)
* [setsockopt\_udp](/core/sys/linux/#setsockopt_udp)
* [getsockopt](/core/sys/linux/#getsockopt) *(procedure groups)*
* [setsockopt](/core/sys/linux/#setsockopt) *(procedure groups)*

### [Splice\_Flags ¶](#Splice_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1435)

```
Splice_Flags :: bit_set[Splice_Flags_Bits; u32]
```

 

Flags for splice(2) and tee(2) syscalls.




##### Related Procedures With Parameters

* [splice](/core/sys/linux/#splice)
* [tee](/core/sys/linux/#tee)

### [Splice\_Flags\_Bits ¶](#Splice_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1814)

```
Splice_Flags_Bits :: enum int {
	MOVE     = 1, 
	NONBLOCK = 2, 
	MORE     = 4, 
	GIFT     = 8, 
}
```

 

Bits for splice flags.

### [Stat ¶](#Stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L171)

```
Stat :: struct {
	using _impl_stat: _Arch_Stat,
}
```

 

Represents the file state.
If you're on 32-bit platform, consider using Stat64 instead.




##### Related Procedures With Parameters

* [fstat](/core/sys/linux/#fstat)
* [fstatat](/core/sys/linux/#fstatat)
* [lstat](/core/sys/linux/#lstat)
* [stat](/core/sys/linux/#stat)

### [Stat\_FS ¶](#Stat_FS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L275)

```
Stat_FS :: struct {
	using _impl_stat_fs: _Arch_Stat_FS,
}
```

 

Struct for statfs(2).




##### Related Procedures With Parameters

* [fstatfs](/core/sys/linux/#fstatfs)
* [statfs](/core/sys/linux/#statfs)

### [Statx ¶](#Statx) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L199)

```
Statx :: struct {
	mask:             bit_set[Statx_Mask_Bits; u32],
	blksize:          u32,
	attributes:       bit_set[Statx_Attr_Bits; u64],
	nlink:            u32,
	uid:              Uid,
	gid:              Gid,
	// Note(flysand): mode is 16-bit on linux + there's
	// 16-bit padding following it. Since our mode is 32-bits,
	// we're using the padding. This should be fine because
	// the placement of that padding suggests it was going to
	// be used for the Mode bits anyway.
	mode:             bit_set[Mode_Bits; u32],
	ino:              Inode,
	size:             u64,
	blocks:           u64,
	attributes_mask:  bit_set[Statx_Attr_Bits; u64],
	atime:            Statx_Timestamp,
	btime:            Statx_Timestamp,
	ctime:            Statx_Timestamp,
	mtime:            Statx_Timestamp,
	rdev_major:       u32,
	rdev_minor:       u32,
	dev_major:        u32,
	dev_minor:        u32,
	mnt_id:           u64,
	dio_mem_align:    u32,
	dio_offset_align: u32,
	_:                [12]u64,
}
```

 

The extended Stat struct, the argument to statx(2) syscall.




##### Related Procedures With Parameters

* [statx](/core/sys/linux/#statx)

### [Statx\_Attr ¶](#Statx_Attr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L194)

```
Statx_Attr :: bit_set[Statx_Attr_Bits; u64]
```

 

File attributes, returned by statx. This bitset is also
used to specify which attributes are present, not just
their value.

### [Statx\_Attr\_Bits ¶](#Statx_Attr_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L281)

```
Statx_Attr_Bits :: enum int {
	COMPRESSED = 2,  // 0x00000004
	IMMUTABLE  = 4,  // 0x00000010
	APPEND     = 5,  // 0x00000020
	NODUMP     = 6,  // 0x00000040
	ENCRYPTED  = 11, // 0x00000800
	AUTOMOUNT  = 12, // 0x00001000
	MOUNT_ROOT = 13, // 0x00002000
	VERITY     = 20, // 0x00100000
	DAX        = 21, // 0x00200000
}
```

 

Bits found in Statx\_Attr bitset
You should not use these directly

### [Statx\_Mask ¶](#Statx_Mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L187)

```
Statx_Mask :: bit_set[Statx_Mask_Bits; u32]
```

 

Query params/results for `statx()`.




##### Related Procedures With Parameters

* [statx](/core/sys/linux/#statx)

##### Related Constants

* [STATX\_BASIC\_STATS](/core/sys/linux/#STATX_BASIC_STATS)

### [Statx\_Mask\_Bits ¶](#Statx_Mask_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L260)

```
Statx_Mask_Bits :: enum int {
	TYPE     = 0, 
	MODE     = 1, 
	NLINK    = 2, 
	UID      = 3, 
	GID      = 4, 
	ATIME    = 5, 
	MTIME    = 6, 
	CTIME    = 7, 
	INO      = 8, 
	SIZE     = 9, 
	BLOCKS   = 10, 
	BTIME    = 11, 
	MNT_ID   = 12, 
	DIOALIGN = 13, 
}
```

 

The bits used by the Statx\_Mask bitset

### [Statx\_Timestamp ¶](#Statx_Timestamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L178)

```
Statx_Timestamp :: struct {
	sec:  i64,
	nsec: u32,
	_:    i32,
}
```

 

Timestamp type used for Statx struct

### [Swap\_Flags ¶](#Swap_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1750)

```
Swap_Flags :: bit_set[Swap_Flags_Bits; u32]
```

##### Related Procedures With Parameters

* [swapon](/core/sys/linux/#swapon)

### [Swap\_Flags\_Bits ¶](#Swap_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2268)

```
Swap_Flags_Bits :: enum int {
	PREFER  = 15, 
	DISCARD = 16, 
}
```

### [Sys\_Info ¶](#Sys_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L885)

```
Sys_Info :: struct {
	uptime:    int,
	loads:     [3]int,
	totalram:  uint,
	freeram:   uint,
	sharedram: uint,
	bufferram: uint,
	totalswap: uint,
	freeswap:  uint,
	procs:     u16,
	totalhigh: uint,
	freehigh:  uint,
	mem_unit:  i32,
	_padding:  [0]u8,
}
```

 

Return buffer for the sysinfo syscall




##### Related Procedures With Parameters

* [sysinfo](/core/sys/linux/#sysinfo)

### [Syslog\_Action ¶](#Syslog_Action) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1797)

```
Syslog_Action :: enum i32 {
	CLOSE         = 0, 
	OPEN          = 1, 
	READ          = 2, 
	READ_ALL      = 3, 
	READ_CLEAR    = 4, 
	CLEAR         = 5, 
	CONSOLE_OFF   = 6, 
	CONSOLE_ON    = 7, 
	CONSOLE_LEVEL = 8, 
	SIZE_UNREAD   = 9, 
	SIZE_BUFFER   = 10, 
}
```

 

Syslog actions.




##### Related Procedures With Parameters

* [syslog](/core/sys/linux/#syslog)

### [Time\_Spec ¶](#Time_Spec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L62)

```
Time_Spec :: struct {
	time_sec:  uint,
	time_nsec: uint,
}
```

 

Represents time with nanosecond precision.




##### Related Procedures With Parameters

* [clock\_nanosleep](/core/sys/linux/#clock_nanosleep)
* [clock\_settime](/core/sys/linux/#clock_settime)
* [epoll\_pwait2](/core/sys/linux/#epoll_pwait2)
* [futex\_wait](/core/sys/linux/#futex_wait)
* [futex\_wait\_bitset](/core/sys/linux/#futex_wait_bitset)
* [nanosleep](/core/sys/linux/#nanosleep)
* [ppoll](/core/sys/linux/#ppoll)
* [rt\_sigtimedwait](/core/sys/linux/#rt_sigtimedwait)
* [sched\_rr\_get\_interval](/core/sys/linux/#sched_rr_get_interval)
* [utimensat](/core/sys/linux/#utimensat)
* [futex](/core/sys/linux/#futex) *(procedure groups)*



##### Related Procedures With Returns

* [clock\_getres](/core/sys/linux/#clock_getres)
* [clock\_gettime](/core/sys/linux/#clock_gettime)

### [Time\_Val ¶](#Time_Val) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L70)

```
Time_Val :: struct {
	seconds:      int,
	microseconds: int,
}
```

 

Represents time with millisecond precision.




##### Related Procedures With Parameters

* [gettimeofday](/core/sys/linux/#gettimeofday)
* [settimeofday](/core/sys/linux/#settimeofday)

### [Timer ¶](#Timer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L57)

```
Timer :: distinct i32
```

 

Represents timer IDs.




##### Related Procedures With Parameters

* [timer\_create](/core/sys/linux/#timer_create)
* [timer\_delete](/core/sys/linux/#timer_delete)
* [timer\_getoverrun](/core/sys/linux/#timer_getoverrun)
* [timer\_gettime](/core/sys/linux/#timer_gettime)
* [timer\_settime](/core/sys/linux/#timer_settime)

### [Timex ¶](#Timex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1704)

```
Timex :: struct {
	modes:     u32,
	offset:    int,
	freq:      int,
	maxerror:  int,
	esterror:  int,
	status:    i32,
	constant:  int,
	precision: int,
	tolerance: int,
	time:      Time_Val,
	tick:      int,
	ppsfreq:   int,
	jitter:    int,
	shift:     i32,
	stabil:    int,
	jitcnt:    int,
	calcnt:    int,
	errcnt:    int,
	stbcnt:    int,
	tai:       i32,
}
```

##### Related Procedures With Parameters

* [adjtimex](/core/sys/linux/#adjtimex)

### [Tms ¶](#Tms) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L862)

```
Tms :: struct {
	tms_utime:  int,
	tms_stime:  int,
	tms_cutime: int,
	tms_cstime: int,
}
```

 

Times




##### Related Procedures With Parameters

* [times](/core/sys/linux/#times)

### [UPD\_Encapsulation ¶](#UPD_Encapsulation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1402)

```
UPD_Encapsulation :: enum int {
	ENCAP_ESPINUDP_NON_IKE = 1, 
	ENCAP_ESPINUDP         = 2, 
	ENCAP_L2TPINUDP        = 3, 
	ENCAP_GTP0             = 4, 
	ENCAP_GTP1U            = 5, 
}
```

### [UTS\_Name ¶](#UTS_Name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L873)

```
UTS_Name :: struct {
	sysname:    [65]u8 `fmt:"s,0"`,
	nodename:   [65]u8 `fmt:"s,0"`,
	release:    [65]u8 `fmt:"s,0"`,
	version:    [65]u8 `fmt:"s,0"`,
	machine:    [65]u8 `fmt:"s,0"`,
	domainname: [65]u8 `fmt:"s,0"`,
}
```

 

"Unix time-sharing system name", allegedly.
Basically system info.




##### Related Procedures With Parameters

* [uname](/core/sys/linux/#uname)

### [UTim\_Buf ¶](#UTim_Buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L78)

```
UTim_Buf :: struct {
	actime:  uint,
	modtime: uint,
}
```

 

Access and modification times for files

### [Uid ¶](#Uid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L11)

```
Uid :: distinct u32
```

 

Type for 32-bit User IDs.




##### Related Procedures With Parameters

* [chown](/core/sys/linux/#chown)
* [fchown](/core/sys/linux/#fchown)
* [fchownat](/core/sys/linux/#fchownat)
* [getresuid](/core/sys/linux/#getresuid)
* [lchown](/core/sys/linux/#lchown)
* [setresgid](/core/sys/linux/#setresgid)
* [setresuid](/core/sys/linux/#setresuid)
* [setreuid](/core/sys/linux/#setreuid)
* [setuid](/core/sys/linux/#setuid)



##### Related Procedures With Returns

* [geteuid](/core/sys/linux/#geteuid)
* [getuid](/core/sys/linux/#getuid)

### [Umount2\_Flags ¶](#Umount2_Flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1748)

```
Umount2_Flags :: bit_set[Umount2_Flags_Bits; u32]
```

##### Related Procedures With Parameters

* [umount2](/core/sys/linux/#umount2)

### [Umount2\_Flags\_Bits ¶](#Umount2_Flags_Bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L2260)

```
Umount2_Flags_Bits :: enum int {
	MNT_FORCE       = 0, 
	MNT_DETACH      = 1, 
	MNT_EXPIRE      = 2, 
	UMOUNT_NOFOLLOW = 3, 
	UMOUNT_UNUSED   = 31, 
}
```

### [User\_FPX\_Regs ¶](#User_FPX_Regs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1333)

```
User_FPX_Regs :: _Arch_User_FPX_Regs
```

 

Architecture-specific extended floating-point registers.
Currently only used for x86 CPU's.




##### Related Procedures With Parameters

* [ptrace\_getfpxregs](/core/sys/linux/#ptrace_getfpxregs)
* [ptrace\_setfpxregs](/core/sys/linux/#ptrace_setfpxregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [User\_FP\_Regs ¶](#User_FP_Regs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1327)

```
User_FP_Regs :: _Arch_User_FP_Regs
```

 

Architecture-specific floating-point registers




##### Related Procedures With Parameters

* [ptrace\_getfpregs](/core/sys/linux/#ptrace_getfpregs)
* [ptrace\_setfpregs](/core/sys/linux/#ptrace_setfpregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [User\_Regs ¶](#User_Regs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L1322)

```
User_Regs :: _Arch_User_Regs
```

 

Architecture-specific registers struct.




##### Related Procedures With Parameters

* [ptrace\_getregs](/core/sys/linux/#ptrace_getregs)
* [ptrace\_setregs](/core/sys/linux/#ptrace_setregs)
* [ptrace](/core/sys/linux/#ptrace) *(procedure groups)*

### [Wait\_Option ¶](#Wait_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L924)

```
Wait_Option :: enum int {
	WNOHANG     = 0, 
	WUNTRACED   = 1, 
	WSTOPPED    = 1, 
	WEXITED     = 2, 
	WCONTINUED  = 3, 
	WNOWAIT     = 24, 
	// // For processes created using clone
	__WNOTHREAD = 29, 
	__WALL      = 30, 
	__WCLONE    = 31, 
}
```

 

Options for wait syscalls

### [Wait\_Options ¶](#Wait_Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L505)

```
Wait_Options :: bit_set[Wait_Option; i32]
```

 

Options for wait4(2) and waitpid(2).




##### Related Procedures With Parameters

* [wait4](/core/sys/linux/#wait4)
* [waitid](/core/sys/linux/#waitid)

### [Wd ¶](#Wd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L36)

```
Wd :: distinct i32
```

 

Represents a watch descriptor.




##### Related Procedures With Parameters

* [inotify\_rm\_watch](/core/sys/linux/#inotify_rm_watch)



##### Related Procedures With Returns

* [inotify\_add\_watch](/core/sys/linux/#inotify_add_watch)

## Constants

### [ADDR\_COMPAT\_LAYOUT ¶](#ADDR_COMPAT_LAYOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1584)

```
ADDR_COMPAT_LAYOUT :: 21
```

### [ADDR\_LIMIT\_32BIT ¶](#ADDR_LIMIT_32BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1586)

```
ADDR_LIMIT_32BIT :: 23
```

### [ADDR\_LIMIT\_3GB ¶](#ADDR_LIMIT_3GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1590)

```
ADDR_LIMIT_3GB :: 27
```

### [ADDR\_NO\_RANDOMIZE ¶](#ADDR_NO_RANDOMIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1581)

```
ADDR_NO_RANDOMIZE :: 18
```

### [AT\_FDCWD ¶](#AT_FDCWD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L22)

```
AT_FDCWD :: Fd(-100)
```

 

Special file descriptor to pass to `*at` functions to specify
that relative paths are relative to current directory.

### [FDPIC\_FUNCPTRS ¶](#FDPIC_FUNCPTRS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1582)

```
FDPIC_FUNCPTRS :: 19
```

### [FUTEX\_CMP\_REQUEUE ¶](#FUTEX_CMP_REQUEUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L274)

```
FUTEX_CMP_REQUEUE :: Futex_Cmp_Requeue_Type(.CMP_REQUEUE)
```

 

Requeue waiters from one futex to another if the value at mutex matches.

### [FUTEX\_CMP\_REQUEUE\_PI ¶](#FUTEX_CMP_REQUEUE_PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L296)

```
FUTEX_CMP_REQUEUE_PI :: Futex_Cmp_requeue_Pi_Type(.CMP_REQUEUE_PI)
```

### [FUTEX\_FD ¶](#FUTEX_FD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L264)

```
FUTEX_FD :: Futex_Fd_Type(.FD)
```

 

Not implemented. Basically, since.

### [FUTEX\_LOCK\_PI ¶](#FUTEX_LOCK_PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L292)

```
FUTEX_LOCK_PI :: Futex_Lock_Pi_Type(.LOCK_PI)
```

 

TODO(flysand): Priority inversion futexes

### [FUTEX\_LOCK\_PI2 ¶](#FUTEX_LOCK_PI2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L297)

```
FUTEX_LOCK_PI2 :: Futex_Lock_Pi2_Type(.LOCK_PI2)
```

### [FUTEX\_REQUEUE ¶](#FUTEX_REQUEUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L269)

```
FUTEX_REQUEUE :: Futex_Requeue_Type(.REQUEUE)
```

 

Requeue waiters from one futex to another.

### [FUTEX\_TRYLOCK\_PI ¶](#FUTEX_TRYLOCK_PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L294)

```
FUTEX_TRYLOCK_PI :: Futex_Trylock_Pi_Type(.TRYLOCK_PI)
```

### [FUTEX\_UNLOCK\_PI ¶](#FUTEX_UNLOCK_PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L293)

```
FUTEX_UNLOCK_PI :: Futex_Unlock_Pi_Type(.UNLOCK_PI)
```

### [FUTEX\_WAIT ¶](#FUTEX_WAIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L254)

```
FUTEX_WAIT :: Futex_Wait_Type(.WAIT)
```

 

Wait on futex wakeup signal.

### [FUTEX\_WAIT\_BITSET ¶](#FUTEX_WAIT_BITSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L284)

```
FUTEX_WAIT_BITSET :: Futex_Wait_Bitset_Type(.WAIT_BITSET)
```

 

Wait on a futex, but the value is a bitset.

### [FUTEX\_WAIT\_REQUEUE\_PI ¶](#FUTEX_WAIT_REQUEUE_PI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L295)

```
FUTEX_WAIT_REQUEUE_PI :: Futex_Wait_requeue_Pi_Type(.WAIT_REQUEUE_PI)
```

### [FUTEX\_WAKE ¶](#FUTEX_WAKE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L259)

```
FUTEX_WAKE :: Futex_Wake_Type(.WAKE)
```

 

Wake up other processes waiting on the futex.

### [FUTEX\_WAKE\_BITSET ¶](#FUTEX_WAKE_BITSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L289)

```
FUTEX_WAKE_BITSET :: Futex_Wake_Bitset_Type(.WAKE_BITSET)
```

 

Wait on a futex, but the value is a bitset.

### [FUTEX\_WAKE\_OP ¶](#FUTEX_WAKE_OP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L279)

```
FUTEX_WAKE_OP :: Futex_Wake_Op_Type(.WAKE_OP)
```

 

See man pages, I'm not describing it here.

### [F\_ADD\_SEALS ¶](#F_ADD_SEALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L219)

```
F_ADD_SEALS :: FCntl_Command_ADD_SEALS(.ADD_SEALS)
```

### [F\_DUPFD ¶](#F_DUPFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L196)

```
F_DUPFD :: FCntl_Command_DUPFD(.DUPFD)
```

### [F\_DUPFD\_CLOEXEC ¶](#F_DUPFD_CLOEXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L207)

```
F_DUPFD_CLOEXEC :: FCntl_Command_DUPFD_CLOEXEC(.DUPFD_CLOEXEC)
```

### [F\_GETFD ¶](#F_GETFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L197)

```
F_GETFD :: FCntl_Command_GETFD(.GETFD)
```

### [F\_GETFL ¶](#F_GETFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L199)

```
F_GETFL :: FCntl_Command_GETFL(.GETFL)
```

### [F\_GETLEASE ¶](#F_GETLEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L215)

```
F_GETLEASE :: FCntl_Command_GETLEASE(.GETLEASE)
```

### [F\_GETLK ¶](#F_GETLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L204)

```
F_GETLK :: FCntl_Command_GETLK(.GETLK)
```

 

F\_GETLK64 :: FCntl\_Command\_GETLK64(.GETLK64)
F\_SETLK64 :: FCntl\_Command\_SETLK64(.SETLK64)
F\_SETLKW64 :: FCntl\_Command\_SETLKW64(.SETLKW64)

### [F\_GETOWN ¶](#F_GETOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L209)

```
F_GETOWN :: FCntl_Command_GETOWN(.GETOWN)
```

### [F\_GETOWN\_EX ¶](#F_GETOWN_EX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L213)

```
F_GETOWN_EX :: FCntl_Command_GETOWN_EX(.GETOWN_EX)
```

### [F\_GETPIPE\_SZ ¶](#F_GETPIPE_SZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L218)

```
F_GETPIPE_SZ :: FCntl_Command_GETPIPE_SZ(.GETPIPE_SZ)
```

### [F\_GETSIG ¶](#F_GETSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L211)

```
F_GETSIG :: FCntl_Command_GETSIG(.GETSIG)
```

### [F\_GET\_FILE\_RW\_HINT ¶](#F_GET_FILE_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L223)

```
F_GET_FILE_RW_HINT :: FCntl_Command_GET_FILE_RW_HINT(.GET_FILE_RW_HINT)
```

### [F\_GET\_RW\_HINT ¶](#F_GET_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L221)

```
F_GET_RW_HINT :: FCntl_Command_GET_RW_HINT(.GET_RW_HINT)
```

### [F\_GET\_SEALS ¶](#F_GET_SEALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L220)

```
F_GET_SEALS :: FCntl_Command_GET_SEALS(.GET_SEALS)
```

### [F\_NOTIFY ¶](#F_NOTIFY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L216)

```
F_NOTIFY :: FCntl_Command_NOTIFY(.NOTIFY)
```

### [F\_OK ¶](#F_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L106)

```
F_OK: bit_set[Mode_Bits; u32] : Mode{}
```

 

For access.2 syscall family: instruct to check if the file exists.

### [F\_SETFD ¶](#F_SETFD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L198)

```
F_SETFD :: FCntl_Command_SETFD(.SETFD)
```

### [F\_SETFL ¶](#F_SETFL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L200)

```
F_SETFL :: FCntl_Command_SETFL(.SETFL)
```

### [F\_SETLEASE ¶](#F_SETLEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L214)

```
F_SETLEASE :: FCntl_Command_SETLEASE(.SETLEASE)
```

### [F\_SETLK ¶](#F_SETLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L205)

```
F_SETLK :: FCntl_Command_SETLK(.SETLK)
```

### [F\_SETLKW ¶](#F_SETLKW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L206)

```
F_SETLKW :: FCntl_Command_SETLKW(.SETLKW)
```

### [F\_SETOWN ¶](#F_SETOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L208)

```
F_SETOWN :: FCntl_Command_SETOWN(.SETOWN)
```

### [F\_SETOWN\_EX ¶](#F_SETOWN_EX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L212)

```
F_SETOWN_EX :: FCntl_Command_SETOWN_EX(.SETOWN_EX)
```

### [F\_SETPIPE\_SZ ¶](#F_SETPIPE_SZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L217)

```
F_SETPIPE_SZ :: FCntl_Command_SETPIPE_SZ(.SETPIPE_SZ)
```

### [F\_SETSIG ¶](#F_SETSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L210)

```
F_SETSIG :: FCntl_Command_SETSIG(.SETSIG)
```

### [F\_SET\_FILE\_RW\_HINT ¶](#F_SET_FILE_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L224)

```
F_SET_FILE_RW_HINT :: FCntl_Command_SET_FILE_RW_HINT(.SET_FILE_RW_HINT)
```

### [F\_SET\_RW\_HINT ¶](#F_SET_RW_HINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L222)

```
F_SET_RW_HINT :: FCntl_Command_SET_RW_HINT(.SET_RW_HINT)
```

### [IN\_ALL\_EVENTS ¶](#IN_ALL_EVENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L140)

```
IN_ALL_EVENTS: bit_set[Inotify_Event_Bits; u32] : Inotify_Event_Mask{.ACCESS, .MODIFY, .ATTRIB, .CLOSE_WRITE, .CLOSE_NOWRITE, .OPEN, .MOVED_FROM, .MOVED_TO, .CREATE, .DELETE, .DELETE_SELF, .MOVE_SELF}
```

### [IN\_CLOSE ¶](#IN_CLOSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L155)

```
IN_CLOSE: bit_set[Inotify_Event_Bits; u32] : Inotify_Event_Mask{.CLOSE_WRITE, .CLOSE_NOWRITE}
```

### [IN\_MOVE ¶](#IN_MOVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L160)

```
IN_MOVE: bit_set[Inotify_Event_Bits; u32] : Inotify_Event_Mask{.MOVED_FROM, .MOVED_TO}
```

### [IORING\_OFF\_CQ\_RING ¶](#IORING_OFF_CQ_RING) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L419)

```
IORING_OFF_CQ_RING :: 0x8000000
```

### [IORING\_OFF\_MMAP\_MASK ¶](#IORING_OFF_MMAP_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L423)

```
IORING_OFF_MMAP_MASK :: 0xf8000000
```

### [IORING\_OFF\_PBUF\_RING ¶](#IORING_OFF_PBUF_RING) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L421)

```
IORING_OFF_PBUF_RING :: 0x80000000
```

### [IORING\_OFF\_PBUF\_SHIFT ¶](#IORING_OFF_PBUF_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L422)

```
IORING_OFF_PBUF_SHIFT :: 16
```

### [IORING\_OFF\_SQES ¶](#IORING_OFF_SQES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L420)

```
IORING_OFF_SQES :: 0x10000000
```

### [IORING\_OFF\_SQ\_RING ¶](#IORING_OFF_SQ_RING) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L418)

```
IORING_OFF_SQ_RING :: 0
```

### [IORING\_TIMEOUT\_CLOCK\_MASK ¶](#IORING_TIMEOUT_CLOCK_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L415)

```
IORING_TIMEOUT_CLOCK_MASK: bit_set[IO_Uring_Timeout_Flags_Bits; u32] : IO_Uring_Timeout_Flags{.BOOTTIME, .REALTIME}
```

### [IORING\_TIMEOUT\_UPDATE\_MASK ¶](#IORING_TIMEOUT_UPDATE_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L416)

```
IORING_TIMEOUT_UPDATE_MASK: bit_set[IO_Uring_Timeout_Flags_Bits; u32] : IO_Uring_Timeout_Flags{.UPDATE, .LINK_TIMEOUT_UPDATE}
```

### [IPC\_PRIVATE ¶](#IPC_PRIVATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L168)

```
IPC_PRIVATE :: Key(0)
```

 

Tell `shmget` to create a new key

### [MAP\_HUGE\_16GB ¶](#MAP_HUGE_16GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L396)

```
MAP_HUGE_16GB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(34) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_16KB ¶](#MAP_HUGE_16KB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L384)

```
MAP_HUGE_16KB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(14) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_16MB ¶](#MAP_HUGE_16MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L390)

```
MAP_HUGE_16MB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(24) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_1GB ¶](#MAP_HUGE_1GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L394)

```
MAP_HUGE_1GB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(30) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_1MB ¶](#MAP_HUGE_1MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L387)

```
MAP_HUGE_1MB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(20) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_256MB ¶](#MAP_HUGE_256MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L392)

```
MAP_HUGE_256MB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(28) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_2GB ¶](#MAP_HUGE_2GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L395)

```
MAP_HUGE_2GB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(31) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_2MB ¶](#MAP_HUGE_2MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L388)

```
MAP_HUGE_2MB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(21) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_32MB ¶](#MAP_HUGE_32MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L391)

```
MAP_HUGE_32MB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(25) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_512KB ¶](#MAP_HUGE_512KB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L386)

```
MAP_HUGE_512KB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(19) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_512MB ¶](#MAP_HUGE_512MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L393)

```
MAP_HUGE_512MB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(29) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_64KB ¶](#MAP_HUGE_64KB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L385)

```
MAP_HUGE_64KB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(16) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_8MB ¶](#MAP_HUGE_8MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L389)

```
MAP_HUGE_8MB: bit_set[Map_Flags_Bits; i32] : transmute(Map_Flags)(u32(23) << MAP_HUGE_SHIFT)
```

### [MAP\_HUGE\_MASK ¶](#MAP_HUGE_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L382)

```
MAP_HUGE_MASK :: 63
```

### [MAP\_HUGE\_SHIFT ¶](#MAP_HUGE_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L381)

```
MAP_HUGE_SHIFT :: 26
```

### [MAP\_SHARED\_VALIDATE ¶](#MAP_SHARED_VALIDATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L379)

```
MAP_SHARED_VALIDATE: bit_set[Map_Flags_Bits; i32] : Map_Flags{.SHARED, .PRIVATE}
```

### [MFD\_HUGE\_16GB ¶](#MFD_HUGE_16GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L410)

```
MFD_HUGE_16GB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(34) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_16KB ¶](#MFD_HUGE_16KB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L398)

```
MFD_HUGE_16KB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(14) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_16MB ¶](#MFD_HUGE_16MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L404)

```
MFD_HUGE_16MB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(24) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_1GB ¶](#MFD_HUGE_1GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L408)

```
MFD_HUGE_1GB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(30) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_1MB ¶](#MFD_HUGE_1MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L401)

```
MFD_HUGE_1MB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(20) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_256MB ¶](#MFD_HUGE_256MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L406)

```
MFD_HUGE_256MB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(28) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_2GB ¶](#MFD_HUGE_2GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L409)

```
MFD_HUGE_2GB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(31) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_2MB ¶](#MFD_HUGE_2MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L402)

```
MFD_HUGE_2MB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(21) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_32MB ¶](#MFD_HUGE_32MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L405)

```
MFD_HUGE_32MB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(25) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_512KB ¶](#MFD_HUGE_512KB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L400)

```
MFD_HUGE_512KB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(19) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_512MB ¶](#MFD_HUGE_512MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L407)

```
MFD_HUGE_512MB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(29) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_64KB ¶](#MFD_HUGE_64KB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L399)

```
MFD_HUGE_64KB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(16) << MAP_HUGE_SHIFT)
```

### [MFD\_HUGE\_8MB ¶](#MFD_HUGE_8MB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L403)

```
MFD_HUGE_8MB: bit_set[Memfd_Create_Flag_Bits; u32] : transmute(Memfd_Create_Flags)(u32(23) << MAP_HUGE_SHIFT)
```

### [MMAP\_PAGE\_ZERO ¶](#MMAP_PAGE_ZERO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1583)

```
MMAP_PAGE_ZERO :: 20
```

### [PER\_BSD ¶](#PER_BSD) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1605)

```
PER_BSD :: 0x0006
```

### [PER\_HPUX ¶](#PER_HPUX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1617)

```
PER_HPUX :: 0x0010
```

### [PER\_IRIX32 ¶](#PER_IRIX32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1610)

```
PER_IRIX32 :: 0x0009 | STICKY_TIMEOUTS
```

### [PER\_IRIX64 ¶](#PER_IRIX64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1612)

```
PER_IRIX64 :: 0x000b | STICKY_TIMEOUTS
```

### [PER\_IRIXN32 ¶](#PER_IRIXN32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1611)

```
PER_IRIXN32 :: 0x000a | STICKY_TIMEOUTS
```

### [PER\_ISCR4 ¶](#PER_ISCR4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1604)

```
PER_ISCR4 :: 0x0005 | STICKY_TIMEOUTS
```

### [PER\_LINUX ¶](#PER_LINUX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1596)

```
PER_LINUX :: 0x0000
```

 

Personality type
These go into the bottom 8 bits of the personality value

### [PER\_LINUX32 ¶](#PER_LINUX32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1608)

```
PER_LINUX32 :: 0x0008
```

### [PER\_LINUX32\_3GB ¶](#PER_LINUX32_3GB) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1609)

```
PER_LINUX32_3GB :: 0x0008 | ADDR_LIMIT_3GB
```

### [PER\_LINUX\_32BIT ¶](#PER_LINUX_32BIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1597)

```
PER_LINUX_32BIT :: 0x0000 | ADDR_LIMIT_32BIT
```

### [PER\_LINUX\_FDPIC ¶](#PER_LINUX_FDPIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1598)

```
PER_LINUX_FDPIC :: 0x0000 | FDPIC_FUNCPTRS
```

### [PER\_MASK ¶](#PER_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1618)

```
PER_MASK :: 0x00ff
```

### [PER\_OSF4 ¶](#PER_OSF4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1616)

```
PER_OSF4 :: 0x000f
```

### [PER\_OSR5 ¶](#PER_OSR5) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1602)

```
PER_OSR5 :: 0x0003 | STICKY_TIMEOUTS | WHOLE_SECONDS
```

### [PER\_RISCOS ¶](#PER_RISCOS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1613)

```
PER_RISCOS :: 0x000c
```

### [PER\_SCOSVR3 ¶](#PER_SCOSVR3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1601)

```
PER_SCOSVR3 :: 0x0003 | STICKY_TIMEOUTS | WHOLE_SECONDS | SHORT_INODE
```

### [PER\_SOLARIS ¶](#PER_SOLARIS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1614)

```
PER_SOLARIS :: 0x000d | STICKY_TIMEOUTS
```

### [PER\_SUNOS ¶](#PER_SUNOS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1606)

```
PER_SUNOS :: 0x0006 | STICKY_TIMEOUTS
```

### [PER\_SVR3 ¶](#PER_SVR3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1600)

```
PER_SVR3 :: 0x0002 | STICKY_TIMEOUTS | SHORT_INODE
```

### [PER\_SVR4 ¶](#PER_SVR4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1599)

```
PER_SVR4 :: 0x0001 | STICKY_TIMEOUTS | MMAP_PAGE_ZERO
```

### [PER\_UW7 ¶](#PER_UW7) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1615)

```
PER_UW7 :: 0x000e | STICKY_TIMEOUTS | MMAP_PAGE_ZERO
```

### [PER\_WYSEV386 ¶](#PER_WYSEV386) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1603)

```
PER_WYSEV386 :: 0x0004 | STICKY_TIMEOUTS | SHORT_INODE
```

### [PER\_XENIX ¶](#PER_XENIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1607)

```
PER_XENIX :: 0x0007 | STICKY_TIMEOUTS | SHORT_INODE
```

### [PRIO\_MAX ¶](#PRIO_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L47)

```
PRIO_MAX :: 20
```

 

Maximum priority (aka nice value) for the process.

### [PRIO\_MIN ¶](#PRIO_MIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L52)

```
PRIO_MIN :: -20
```

 

Minimum priority (aka nice value) for the process.

### [PTRACE\_ARCH\_PRCTL ¶](#PTRACE_ARCH_PRCTL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L358)

```
PTRACE_ARCH_PRCTL :: PTrace_Arch_Prctl_Type(.ARCH_PRCTL)
```

### [PTRACE\_ATTACH ¶](#PTRACE_ATTACH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L351)

```
PTRACE_ATTACH :: PTrace_Attach_Type(.ATTACH)
```

### [PTRACE\_CONT ¶](#PTRACE_CONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L344)

```
PTRACE_CONT :: PTrace_Cont_Type(.CONT)
```

### [PTRACE\_DETACH ¶](#PTRACE_DETACH) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L352)

```
PTRACE_DETACH :: PTrace_Detach_Type(.DETACH)
```

### [PTRACE\_GETEVENTMSG ¶](#PTRACE_GETEVENTMSG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L363)

```
PTRACE_GETEVENTMSG :: PTrace_Geteventmsg_Type(.GETEVENTMSG)
```

### [PTRACE\_GETFPREGS ¶](#PTRACE_GETFPREGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L349)

```
PTRACE_GETFPREGS :: PTrace_Getfpregs_Type(.GETFPREGS)
```

### [PTRACE\_GETFPXREGS ¶](#PTRACE_GETFPXREGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L353)

```
PTRACE_GETFPXREGS :: PTrace_Getfpxregs_Type(.GETFPXREGS)
```

### [PTRACE\_GETREGS ¶](#PTRACE_GETREGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L347)

```
PTRACE_GETREGS :: PTrace_Getregs_Type(.GETREGS)
```

### [PTRACE\_GETREGSET ¶](#PTRACE_GETREGSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L366)

```
PTRACE_GETREGSET :: PTrace_Getregset_Type(.GETREGSET)
```

### [PTRACE\_GETSIGINFO ¶](#PTRACE_GETSIGINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L364)

```
PTRACE_GETSIGINFO :: PTrace_Getsiginfo_Type(.GETSIGINFO)
```

### [PTRACE\_GETSIGMASK ¶](#PTRACE_GETSIGMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L372)

```
PTRACE_GETSIGMASK :: PTrace_Getsigmask_Type(.GETSIGMASK)
```

### [PTRACE\_GET\_RSEQ\_CONFIGURATION ¶](#PTRACE_GET_RSEQ_CONFIGURATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L377)

```
PTRACE_GET_RSEQ_CONFIGURATION :: PTrace_Get_RSeq_Configuration_Type(.GET_RSEQ_CONFIGURATION)
```

### [PTRACE\_GET\_SYSCALL\_INFO ¶](#PTRACE_GET_SYSCALL_INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L376)

```
PTRACE_GET_SYSCALL_INFO :: PTrace_Get_Syscall_Info_Type(.GET_SYSCALL_INFO)
```

### [PTRACE\_GET\_THREAD\_AREA ¶](#PTRACE_GET_THREAD_AREA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L356)

```
PTRACE_GET_THREAD_AREA :: PTrace_Get_Thread_Area_Type(.GET_THREAD_AREA)
```

### [PTRACE\_INTERRUPT ¶](#PTRACE_INTERRUPT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L369)

```
PTRACE_INTERRUPT :: PTrace_Interrupt_Type(.INTERRUPT)
```

### [PTRACE\_KILL ¶](#PTRACE_KILL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L345)

```
PTRACE_KILL :: PTrace_Kill_Type(.KILL)
```

### [PTRACE\_LISTEN ¶](#PTRACE_LISTEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L370)

```
PTRACE_LISTEN :: PTrace_Listen_Type(.LISTEN)
```

### [PTRACE\_PEEKDATA ¶](#PTRACE_PEEKDATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L339)

```
PTRACE_PEEKDATA :: PTrace_Peek_Type(.PEEKDATA)
```

### [PTRACE\_PEEKSIGINFO ¶](#PTRACE_PEEKSIGINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L371)

```
PTRACE_PEEKSIGINFO :: PTrace_Peeksiginfo_Type(.PEEKSIGINFO)
```

### [PTRACE\_PEEKTEXT ¶](#PTRACE_PEEKTEXT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L338)

```
PTRACE_PEEKTEXT :: PTrace_Peek_Type(.PEEKTEXT)
```

### [PTRACE\_PEEKUSER ¶](#PTRACE_PEEKUSER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L340)

```
PTRACE_PEEKUSER :: PTrace_Peek_Type(.PEEKUSER)
```

### [PTRACE\_POKEDATA ¶](#PTRACE_POKEDATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L342)

```
PTRACE_POKEDATA :: PTrace_Poke_Type(.POKEDATA)
```

### [PTRACE\_POKETEXT ¶](#PTRACE_POKETEXT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L341)

```
PTRACE_POKETEXT :: PTrace_Poke_Type(.POKETEXT)
```

### [PTRACE\_POKEUSER ¶](#PTRACE_POKEUSER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L343)

```
PTRACE_POKEUSER :: PTrace_Poke_Type(.POKEUSER)
```

### [PTRACE\_SECCOMP\_GET\_FILTER ¶](#PTRACE_SECCOMP_GET_FILTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L374)

```
PTRACE_SECCOMP_GET_FILTER :: PTrace_Seccomp_Get_Filter_Type(.SECCOMP_GET_FILTER)
```

### [PTRACE\_SECCOMP\_GET\_METADATA ¶](#PTRACE_SECCOMP_GET_METADATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L375)

```
PTRACE_SECCOMP_GET_METADATA :: PTrace_Seccomp_Get_Metadata_Type(.SECCOMP_GET_METADATA)
```

### [PTRACE\_SEIZE ¶](#PTRACE_SEIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L368)

```
PTRACE_SEIZE :: PTrace_Seize_Type(.SEIZE)
```

### [PTRACE\_SETFPREGS ¶](#PTRACE_SETFPREGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L350)

```
PTRACE_SETFPREGS :: PTrace_Setfpregs_Type(.SETFPREGS)
```

### [PTRACE\_SETFPXREGS ¶](#PTRACE_SETFPXREGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L354)

```
PTRACE_SETFPXREGS :: PTrace_Setfpxregs_Type(.SETFPXREGS)
```

### [PTRACE\_SETOPTIONS ¶](#PTRACE_SETOPTIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L362)

```
PTRACE_SETOPTIONS :: PTrace_Setoptions_Type(.SETOPTIONS)
```

### [PTRACE\_SETREGS ¶](#PTRACE_SETREGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L348)

```
PTRACE_SETREGS :: PTrace_Setregs_Type(.SETREGS)
```

### [PTRACE\_SETREGSET ¶](#PTRACE_SETREGSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L367)

```
PTRACE_SETREGSET :: PTrace_Setregset_Type(.SETREGSET)
```

### [PTRACE\_SETSIGINFO ¶](#PTRACE_SETSIGINFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L365)

```
PTRACE_SETSIGINFO :: PTrace_Setsiginfo_Type(.SETSIGINFO)
```

### [PTRACE\_SETSIGMASK ¶](#PTRACE_SETSIGMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L373)

```
PTRACE_SETSIGMASK :: PTrace_Setsigmask_Type(.SETSIGMASK)
```

### [PTRACE\_SET\_THREAD\_AREA ¶](#PTRACE_SET_THREAD_AREA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L357)

```
PTRACE_SET_THREAD_AREA :: PTrace_Set_Thread_Area_Type(.SET_THREAD_AREA)
```

### [PTRACE\_SINGLEBLOCK ¶](#PTRACE_SINGLEBLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L361)

```
PTRACE_SINGLEBLOCK :: PTrace_Singleblock_Type(.SINGLEBLOCK)
```

### [PTRACE\_SINGLESTEP ¶](#PTRACE_SINGLESTEP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L346)

```
PTRACE_SINGLESTEP :: PTrace_Singlestep_Type(.SINGLESTEP)
```

### [PTRACE\_SYSCALL ¶](#PTRACE_SYSCALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L355)

```
PTRACE_SYSCALL :: PTrace_Syscall_Type(.SYSCALL)
```

### [PTRACE\_SYSEMU ¶](#PTRACE_SYSEMU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L359)

```
PTRACE_SYSEMU :: PTrace_Sysemu_Type(.SYSEMU)
```

### [PTRACE\_SYSEMU\_SINGLESTEP ¶](#PTRACE_SYSEMU_SINGLESTEP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L360)

```
PTRACE_SYSEMU_SINGLESTEP :: PTrace_Sysemu_Singlestep_Type(.SYSEMU_SINGLESTEP)
```

### [PTRACE\_TRACEME ¶](#PTRACE_TRACEME) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L337)

```
PTRACE_TRACEME :: PTrace_Traceme_Type(.TRACEME)
```

### [READ\_IMPLIES\_EXEC ¶](#READ_IMPLIES_EXEC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1585)

```
READ_IMPLIES_EXEC :: 22
```

### [R\_OK ¶](#R_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L121)

```
R_OK: bit_set[Mode_Bits; u32] : Mode{.IROTH}
```

 

For access.2 syscall family: instruct to check if the file is readable.

### [SHORT\_INODE ¶](#SHORT_INODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1587)

```
SHORT_INODE :: 24
```

### [SIGEV\_MAX\_SIZE ¶](#SIGEV_MAX_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L713)

```
SIGEV_MAX_SIZE :: 64
```

### [SIGEV\_PAD\_SIZE ¶](#SIGEV_PAD_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin#L714)

```
SIGEV_PAD_SIZE :: (SIGEV_MAX_SIZE - size_of(i32) * 2 + size_of(Sig_Val)) / size_of(i32)
```

### [SIGRTMAX ¶](#SIGRTMAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L55)

```
SIGRTMAX :: Signal(64)
```

### [SIGRTMIN ¶](#SIGRTMIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L54)

```
SIGRTMIN :: Signal(32)
```

### [SOL\_RAW ¶](#SOL_RAW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L234)

```
SOL_RAW :: Socket_API_Level_Raw(.RAW)
```

### [SOL\_SOCKET ¶](#SOL_SOCKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L231)

```
SOL_SOCKET :: Socket_API_Level_Sock(.SOCKET)
```

### [SOL\_TCP ¶](#SOL_TCP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L232)

```
SOL_TCP :: Socket_API_Level_TCP(.TCP)
```

### [SOL\_UDP ¶](#SOL_UDP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L233)

```
SOL_UDP :: Socket_API_Level_UDP(.UDP)
```

### [STATX\_BASIC\_STATS ¶](#STATX_BASIC_STATS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L126)

```
STATX_BASIC_STATS: bit_set[Statx_Mask_Bits; u32] : Statx_Mask{.TYPE, .MODE, .NLINK, .UID, .GID, .ATIME, .MTIME, .CTIME, .INO, .SIZE, .BLOCKS}
```

 

The stats you get by calling `stat`.

### [STDERR\_FILENO ¶](#STDERR_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L16)

```
STDERR_FILENO :: Fd(2)
```

 

Standard error file descriptor

### [STDIN\_FILENO ¶](#STDIN_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L6)

```
STDIN_FILENO :: Fd(0)
```

 

Standard input file descriptor

### [STDOUT\_FILENO ¶](#STDOUT_FILENO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L11)

```
STDOUT_FILENO :: Fd(1)
```

 

Standard output file descriptor

### [STICKY\_TIMEOUTS ¶](#STICKY_TIMEOUTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1589)

```
STICKY_TIMEOUTS :: 26
```

### [SWAP\_FLAG\_PRIO\_MASK ¶](#SWAP_FLAG_PRIO_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L426)

```
SWAP_FLAG_PRIO_MASK :: u32(0x7fff)
```

### [SWAP\_FLAG\_PRIO\_SHIFT ¶](#SWAP_FLAG_PRIO_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L425)

```
SWAP_FLAG_PRIO_SHIFT :: u32(0)
```

### [SYS\_\_sysctl ¶](#SYS__sysctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L165)

```
SYS__sysctl :: uintptr(156)
```

### [SYS\_accept ¶](#SYS_accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L52)

```
SYS_accept :: uintptr(43)
```

### [SYS\_accept4 ¶](#SYS_accept4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L297)

```
SYS_accept4 :: uintptr(288)
```

### [SYS\_access ¶](#SYS_access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L30)

```
SYS_access :: uintptr(21)
```

### [SYS\_acct ¶](#SYS_acct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L172)

```
SYS_acct :: uintptr(163)
```

### [SYS\_add\_key ¶](#SYS_add_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L257)

```
SYS_add_key :: uintptr(248)
```

### [SYS\_adjtimex ¶](#SYS_adjtimex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L168)

```
SYS_adjtimex :: uintptr(159)
```

### [SYS\_afs\_syscall ¶](#SYS_afs_syscall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L192)

```
SYS_afs_syscall :: uintptr(183)
```

### [SYS\_alarm ¶](#SYS_alarm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L46)

```
SYS_alarm :: uintptr(37)
```

### [SYS\_arch\_prctl ¶](#SYS_arch_prctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L167)

```
SYS_arch_prctl :: uintptr(158)
```

### [SYS\_bind ¶](#SYS_bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L58)

```
SYS_bind :: uintptr(49)
```

### [SYS\_bpf ¶](#SYS_bpf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L330)

```
SYS_bpf :: uintptr(321)
```

### [SYS\_brk ¶](#SYS_brk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L21)

```
SYS_brk :: uintptr(12)
```

### [SYS\_cachestat ¶](#SYS_cachestat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L371)

```
SYS_cachestat :: uintptr(451)
```

### [SYS\_capget ¶](#SYS_capget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L134)

```
SYS_capget :: uintptr(125)
```

### [SYS\_capset ¶](#SYS_capset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L135)

```
SYS_capset :: uintptr(126)
```

### [SYS\_chdir ¶](#SYS_chdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L89)

```
SYS_chdir :: uintptr(80)
```

### [SYS\_chmod ¶](#SYS_chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L99)

```
SYS_chmod :: uintptr(90)
```

### [SYS\_chown ¶](#SYS_chown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L101)

```
SYS_chown :: uintptr(92)
```

### [SYS\_chroot ¶](#SYS_chroot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L170)

```
SYS_chroot :: uintptr(161)
```

### [SYS\_clock\_adjtime ¶](#SYS_clock_adjtime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L314)

```
SYS_clock_adjtime :: uintptr(305)
```

### [SYS\_clock\_getres ¶](#SYS_clock_getres) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L238)

```
SYS_clock_getres :: uintptr(229)
```

### [SYS\_clock\_gettime ¶](#SYS_clock_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L237)

```
SYS_clock_gettime :: uintptr(228)
```

### [SYS\_clock\_nanosleep ¶](#SYS_clock_nanosleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L239)

```
SYS_clock_nanosleep :: uintptr(230)
```

### [SYS\_clock\_settime ¶](#SYS_clock_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L236)

```
SYS_clock_settime :: uintptr(227)
```

### [SYS\_clone ¶](#SYS_clone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L65)

```
SYS_clone :: uintptr(56)
```

### [SYS\_clone3 ¶](#SYS_clone3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L355)

```
SYS_clone3 :: uintptr(435)
```

### [SYS\_close ¶](#SYS_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L12)

```
SYS_close :: uintptr(3)
```

### [SYS\_close\_range ¶](#SYS_close_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L356)

```
SYS_close_range :: uintptr(436)
```

### [SYS\_connect ¶](#SYS_connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L51)

```
SYS_connect :: uintptr(42)
```

### [SYS\_copy\_file\_range ¶](#SYS_copy_file_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L335)

```
SYS_copy_file_range :: uintptr(326)
```

### [SYS\_creat ¶](#SYS_creat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L94)

```
SYS_creat :: uintptr(85)
```

### [SYS\_create\_module ¶](#SYS_create_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L183)

```
SYS_create_module :: uintptr(174)
```

### [SYS\_delete\_module ¶](#SYS_delete_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L185)

```
SYS_delete_module :: uintptr(176)
```

### [SYS\_dup ¶](#SYS_dup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L41)

```
SYS_dup :: uintptr(32)
```

### [SYS\_dup2 ¶](#SYS_dup2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L42)

```
SYS_dup2 :: uintptr(33)
```

### [SYS\_dup3 ¶](#SYS_dup3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L301)

```
SYS_dup3 :: uintptr(292)
```

### [SYS\_epoll\_create ¶](#SYS_epoll_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L222)

```
SYS_epoll_create :: uintptr(213)
```

### [SYS\_epoll\_create1 ¶](#SYS_epoll_create1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L300)

```
SYS_epoll_create1 :: uintptr(291)
```

### [SYS\_epoll\_ctl ¶](#SYS_epoll_ctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L242)

```
SYS_epoll_ctl :: uintptr(233)
```

### [SYS\_epoll\_ctl\_old ¶](#SYS_epoll_ctl_old) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L223)

```
SYS_epoll_ctl_old :: uintptr(214)
```

### [SYS\_epoll\_pwait ¶](#SYS_epoll_pwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L290)

```
SYS_epoll_pwait :: uintptr(281)
```

### [SYS\_epoll\_pwait2 ¶](#SYS_epoll_pwait2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L361)

```
SYS_epoll_pwait2 :: uintptr(441)
```

### [SYS\_epoll\_wait ¶](#SYS_epoll_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L241)

```
SYS_epoll_wait :: uintptr(232)
```

### [SYS\_epoll\_wait\_old ¶](#SYS_epoll_wait_old) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L224)

```
SYS_epoll_wait_old :: uintptr(215)
```

### [SYS\_eventfd ¶](#SYS_eventfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L293)

```
SYS_eventfd :: uintptr(284)
```

### [SYS\_eventfd2 ¶](#SYS_eventfd2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L299)

```
SYS_eventfd2 :: uintptr(290)
```

### [SYS\_execve ¶](#SYS_execve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L68)

```
SYS_execve :: uintptr(59)
```

### [SYS\_execveat ¶](#SYS_execveat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L331)

```
SYS_execveat :: uintptr(322)
```

### [SYS\_exit ¶](#SYS_exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L69)

```
SYS_exit :: uintptr(60)
```

### [SYS\_exit\_group ¶](#SYS_exit_group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L240)

```
SYS_exit_group :: uintptr(231)
```

### [SYS\_faccessat ¶](#SYS_faccessat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L278)

```
SYS_faccessat :: uintptr(269)
```

### [SYS\_faccessat2 ¶](#SYS_faccessat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L359)

```
SYS_faccessat2 :: uintptr(439)
```

### [SYS\_fadvise64 ¶](#SYS_fadvise64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L230)

```
SYS_fadvise64 :: uintptr(221)
```

### [SYS\_fallocate ¶](#SYS_fallocate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L294)

```
SYS_fallocate :: uintptr(285)
```

### [SYS\_fanotify\_init ¶](#SYS_fanotify_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L309)

```
SYS_fanotify_init :: uintptr(300)
```

### [SYS\_fanotify\_mark ¶](#SYS_fanotify_mark) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L310)

```
SYS_fanotify_mark :: uintptr(301)
```

### [SYS\_fchdir ¶](#SYS_fchdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L90)

```
SYS_fchdir :: uintptr(81)
```

### [SYS\_fchmod ¶](#SYS_fchmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L100)

```
SYS_fchmod :: uintptr(91)
```

### [SYS\_fchmodat ¶](#SYS_fchmodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L277)

```
SYS_fchmodat :: uintptr(268)
```

### [SYS\_fchmodat2 ¶](#SYS_fchmodat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L372)

```
SYS_fchmodat2 :: uintptr(452)
```

### [SYS\_fchown ¶](#SYS_fchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L102)

```
SYS_fchown :: uintptr(93)
```

### [SYS\_fchownat ¶](#SYS_fchownat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L269)

```
SYS_fchownat :: uintptr(260)
```

### [SYS\_fcntl ¶](#SYS_fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L81)

```
SYS_fcntl :: uintptr(72)
```

### [SYS\_fdatasync ¶](#SYS_fdatasync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L84)

```
SYS_fdatasync :: uintptr(75)
```

### [SYS\_fgetxattr ¶](#SYS_fgetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L202)

```
SYS_fgetxattr :: uintptr(193)
```

### [SYS\_finit\_module ¶](#SYS_finit_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L322)

```
SYS_finit_module :: uintptr(313)
```

### [SYS\_flistxattr ¶](#SYS_flistxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L205)

```
SYS_flistxattr :: uintptr(196)
```

### [SYS\_flock ¶](#SYS_flock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L82)

```
SYS_flock :: uintptr(73)
```

### [SYS\_fork ¶](#SYS_fork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L66)

```
SYS_fork :: uintptr(57)
```

### [SYS\_fremovexattr ¶](#SYS_fremovexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L208)

```
SYS_fremovexattr :: uintptr(199)
```

### [SYS\_fsconfig ¶](#SYS_fsconfig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L351)

```
SYS_fsconfig :: uintptr(431)
```

### [SYS\_fsetxattr ¶](#SYS_fsetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L199)

```
SYS_fsetxattr :: uintptr(190)
```

### [SYS\_fsmount ¶](#SYS_fsmount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L352)

```
SYS_fsmount :: uintptr(432)
```

### [SYS\_fsopen ¶](#SYS_fsopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L350)

```
SYS_fsopen :: uintptr(430)
```

### [SYS\_fspick ¶](#SYS_fspick) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L353)

```
SYS_fspick :: uintptr(433)
```

### [SYS\_fstat ¶](#SYS_fstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L14)

```
SYS_fstat :: uintptr(5)
```

### [SYS\_fstatfs ¶](#SYS_fstatfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L147)

```
SYS_fstatfs :: uintptr(138)
```

### [SYS\_fsync ¶](#SYS_fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L83)

```
SYS_fsync :: uintptr(74)
```

### [SYS\_ftruncate ¶](#SYS_ftruncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L86)

```
SYS_ftruncate :: uintptr(77)
```

### [SYS\_futex ¶](#SYS_futex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L211)

```
SYS_futex :: uintptr(202)
```

### [SYS\_futex\_waitv ¶](#SYS_futex_waitv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L369)

```
SYS_futex_waitv :: uintptr(449)
```

### [SYS\_futimesat ¶](#SYS_futimesat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L270)

```
SYS_futimesat :: uintptr(261)
```

### [SYS\_get\_kernel\_syms ¶](#SYS_get_kernel_syms) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L186)

```
SYS_get_kernel_syms :: uintptr(177)
```

### [SYS\_get\_mempolicy ¶](#SYS_get_mempolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L248)

```
SYS_get_mempolicy :: uintptr(239)
```

### [SYS\_get\_robust\_list ¶](#SYS_get_robust_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L283)

```
SYS_get_robust_list :: uintptr(274)
```

### [SYS\_get\_thread\_area ¶](#SYS_get_thread_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L220)

```
SYS_get_thread_area :: uintptr(211)
```

### [SYS\_getcpu ¶](#SYS_getcpu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L318)

```
SYS_getcpu :: uintptr(309)
```

### [SYS\_getcwd ¶](#SYS_getcwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L88)

```
SYS_getcwd :: uintptr(79)
```

### [SYS\_getdents ¶](#SYS_getdents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L87)

```
SYS_getdents :: uintptr(78)
```

### [SYS\_getdents64 ¶](#SYS_getdents64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L226)

```
SYS_getdents64 :: uintptr(217)
```

### [SYS\_getegid ¶](#SYS_getegid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L117)

```
SYS_getegid :: uintptr(108)
```

### [SYS\_geteuid ¶](#SYS_geteuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L116)

```
SYS_geteuid :: uintptr(107)
```

### [SYS\_getgid ¶](#SYS_getgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L113)

```
SYS_getgid :: uintptr(104)
```

### [SYS\_getgroups ¶](#SYS_getgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L124)

```
SYS_getgroups :: uintptr(115)
```

### [SYS\_getitimer ¶](#SYS_getitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L45)

```
SYS_getitimer :: uintptr(36)
```

### [SYS\_getpeername ¶](#SYS_getpeername) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L61)

```
SYS_getpeername :: uintptr(52)
```

### [SYS\_getpgid ¶](#SYS_getpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L130)

```
SYS_getpgid :: uintptr(121)
```

### [SYS\_getpgrp ¶](#SYS_getpgrp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L120)

```
SYS_getpgrp :: uintptr(111)
```

### [SYS\_getpid ¶](#SYS_getpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L48)

```
SYS_getpid :: uintptr(39)
```

### [SYS\_getpmsg ¶](#SYS_getpmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L190)

```
SYS_getpmsg :: uintptr(181)
```

### [SYS\_getppid ¶](#SYS_getppid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L119)

```
SYS_getppid :: uintptr(110)
```

### [SYS\_getpriority ¶](#SYS_getpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L149)

```
SYS_getpriority :: uintptr(140)
```

### [SYS\_getrandom ¶](#SYS_getrandom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L327)

```
SYS_getrandom :: uintptr(318)
```

### [SYS\_getresgid ¶](#SYS_getresgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L129)

```
SYS_getresgid :: uintptr(120)
```

### [SYS\_getresuid ¶](#SYS_getresuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L127)

```
SYS_getresuid :: uintptr(118)
```

### [SYS\_getrlimit ¶](#SYS_getrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L106)

```
SYS_getrlimit :: uintptr(97)
```

### [SYS\_getrusage ¶](#SYS_getrusage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L107)

```
SYS_getrusage :: uintptr(98)
```

### [SYS\_getsid ¶](#SYS_getsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L133)

```
SYS_getsid :: uintptr(124)
```

### [SYS\_getsockname ¶](#SYS_getsockname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L60)

```
SYS_getsockname :: uintptr(51)
```

### [SYS\_getsockopt ¶](#SYS_getsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L64)

```
SYS_getsockopt :: uintptr(55)
```

### [SYS\_gettid ¶](#SYS_gettid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L195)

```
SYS_gettid :: uintptr(186)
```

### [SYS\_gettimeofday ¶](#SYS_gettimeofday) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L105)

```
SYS_gettimeofday :: uintptr(96)
```

### [SYS\_getuid ¶](#SYS_getuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L111)

```
SYS_getuid :: uintptr(102)
```

### [SYS\_getxattr ¶](#SYS_getxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L200)

```
SYS_getxattr :: uintptr(191)
```

### [SYS\_init\_module ¶](#SYS_init_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L184)

```
SYS_init_module :: uintptr(175)
```

### [SYS\_inotify\_add\_watch ¶](#SYS_inotify_add_watch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L263)

```
SYS_inotify_add_watch :: uintptr(254)
```

### [SYS\_inotify\_init ¶](#SYS_inotify_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L262)

```
SYS_inotify_init :: uintptr(253)
```

### [SYS\_inotify\_init1 ¶](#SYS_inotify_init1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L303)

```
SYS_inotify_init1 :: uintptr(294)
```

### [SYS\_inotify\_rm\_watch ¶](#SYS_inotify_rm_watch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L264)

```
SYS_inotify_rm_watch :: uintptr(255)
```

### [SYS\_io\_cancel ¶](#SYS_io_cancel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L219)

```
SYS_io_cancel :: uintptr(210)
```

### [SYS\_io\_destroy ¶](#SYS_io_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L216)

```
SYS_io_destroy :: uintptr(207)
```

### [SYS\_io\_getevents ¶](#SYS_io_getevents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L217)

```
SYS_io_getevents :: uintptr(208)
```

### [SYS\_io\_pgetevents ¶](#SYS_io_pgetevents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L342)

```
SYS_io_pgetevents :: uintptr(333)
```

### [SYS\_io\_setup ¶](#SYS_io_setup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L215)

```
SYS_io_setup :: uintptr(206)
```

### [SYS\_io\_submit ¶](#SYS_io_submit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L218)

```
SYS_io_submit :: uintptr(209)
```

### [SYS\_io\_uring\_enter ¶](#SYS_io_uring_enter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L346)

```
SYS_io_uring_enter :: uintptr(426)
```

### [SYS\_io\_uring\_register ¶](#SYS_io_uring_register) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L347)

```
SYS_io_uring_register :: uintptr(427)
```

### [SYS\_io\_uring\_setup ¶](#SYS_io_uring_setup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L345)

```
SYS_io_uring_setup :: uintptr(425)
```

### [SYS\_ioctl ¶](#SYS_ioctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L25)

```
SYS_ioctl :: uintptr(16)
```

### [SYS\_ioperm ¶](#SYS_ioperm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L182)

```
SYS_ioperm :: uintptr(173)
```

### [SYS\_iopl ¶](#SYS_iopl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L181)

```
SYS_iopl :: uintptr(172)
```

### [SYS\_ioprio\_get ¶](#SYS_ioprio_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L261)

```
SYS_ioprio_get :: uintptr(252)
```

### [SYS\_ioprio\_set ¶](#SYS_ioprio_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L260)

```
SYS_ioprio_set :: uintptr(251)
```

### [SYS\_kcmp ¶](#SYS_kcmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L321)

```
SYS_kcmp :: uintptr(312)
```

### [SYS\_kexec\_file\_load ¶](#SYS_kexec_file_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L329)

```
SYS_kexec_file_load :: uintptr(320)
```

### [SYS\_kexec\_load ¶](#SYS_kexec_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L255)

```
SYS_kexec_load :: uintptr(246)
```

### [SYS\_keyctl ¶](#SYS_keyctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L259)

```
SYS_keyctl :: uintptr(250)
```

### [SYS\_kill ¶](#SYS_kill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L71)

```
SYS_kill :: uintptr(62)
```

### [SYS\_landlock\_add\_rule ¶](#SYS_landlock_add_rule) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L365)

```
SYS_landlock_add_rule :: uintptr(445)
```

### [SYS\_landlock\_create\_ruleset ¶](#SYS_landlock_create_ruleset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L364)

```
SYS_landlock_create_ruleset :: uintptr(444)
```

### [SYS\_landlock\_restrict\_self ¶](#SYS_landlock_restrict_self) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L366)

```
SYS_landlock_restrict_self :: uintptr(446)
```

### [SYS\_lchown ¶](#SYS_lchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L103)

```
SYS_lchown :: uintptr(94)
```

### [SYS\_lgetxattr ¶](#SYS_lgetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L201)

```
SYS_lgetxattr :: uintptr(192)
```

### [SYS\_link ¶](#SYS_link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L95)

```
SYS_link :: uintptr(86)
```

### [SYS\_linkat ¶](#SYS_linkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L274)

```
SYS_linkat :: uintptr(265)
```

### [SYS\_listen ¶](#SYS_listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L59)

```
SYS_listen :: uintptr(50)
```

### [SYS\_listxattr ¶](#SYS_listxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L203)

```
SYS_listxattr :: uintptr(194)
```

### [SYS\_llistxattr ¶](#SYS_llistxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L204)

```
SYS_llistxattr :: uintptr(195)
```

### [SYS\_lookup\_dcookie ¶](#SYS_lookup_dcookie) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L221)

```
SYS_lookup_dcookie :: uintptr(212)
```

### [SYS\_lremovexattr ¶](#SYS_lremovexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L207)

```
SYS_lremovexattr :: uintptr(198)
```

### [SYS\_lseek ¶](#SYS_lseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L17)

```
SYS_lseek :: uintptr(8)
```

### [SYS\_lsetxattr ¶](#SYS_lsetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L198)

```
SYS_lsetxattr :: uintptr(189)
```

### [SYS\_lstat ¶](#SYS_lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L15)

```
SYS_lstat :: uintptr(6)
```

### [SYS\_madvise ¶](#SYS_madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L37)

```
SYS_madvise :: uintptr(28)
```

### [SYS\_map\_shadow\_stack ¶](#SYS_map_shadow_stack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L373)

```
SYS_map_shadow_stack :: uintptr(453)
```

### [SYS\_mbind ¶](#SYS_mbind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L246)

```
SYS_mbind :: uintptr(237)
```

### [SYS\_membarrier ¶](#SYS_membarrier) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L333)

```
SYS_membarrier :: uintptr(324)
```

### [SYS\_memfd\_create ¶](#SYS_memfd_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L328)

```
SYS_memfd_create :: uintptr(319)
```

### [SYS\_memfd\_secret ¶](#SYS_memfd_secret) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L367)

```
SYS_memfd_secret :: uintptr(447)
```

### [SYS\_migrate\_pages ¶](#SYS_migrate_pages) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L265)

```
SYS_migrate_pages :: uintptr(256)
```

### [SYS\_mincore ¶](#SYS_mincore) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L36)

```
SYS_mincore :: uintptr(27)
```

### [SYS\_mkdir ¶](#SYS_mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L92)

```
SYS_mkdir :: uintptr(83)
```

### [SYS\_mkdirat ¶](#SYS_mkdirat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L267)

```
SYS_mkdirat :: uintptr(258)
```

### [SYS\_mknod ¶](#SYS_mknod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L142)

```
SYS_mknod :: uintptr(133)
```

### [SYS\_mknodat ¶](#SYS_mknodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L268)

```
SYS_mknodat :: uintptr(259)
```

### [SYS\_mlock ¶](#SYS_mlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L158)

```
SYS_mlock :: uintptr(149)
```

### [SYS\_mlock2 ¶](#SYS_mlock2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L334)

```
SYS_mlock2 :: uintptr(325)
```

### [SYS\_mlockall ¶](#SYS_mlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L160)

```
SYS_mlockall :: uintptr(151)
```

### [SYS\_mmap ¶](#SYS_mmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L18)

```
SYS_mmap :: uintptr(9)
```

### [SYS\_modify\_ldt ¶](#SYS_modify_ldt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L163)

```
SYS_modify_ldt :: uintptr(154)
```

### [SYS\_mount ¶](#SYS_mount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L174)

```
SYS_mount :: uintptr(165)
```

### [SYS\_mount\_setattr ¶](#SYS_mount_setattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L362)

```
SYS_mount_setattr :: uintptr(442)
```

### [SYS\_move\_mount ¶](#SYS_move_mount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L349)

```
SYS_move_mount :: uintptr(429)
```

### [SYS\_move\_pages ¶](#SYS_move_pages) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L288)

```
SYS_move_pages :: uintptr(279)
```

### [SYS\_mprotect ¶](#SYS_mprotect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L19)

```
SYS_mprotect :: uintptr(10)
```

### [SYS\_mq\_getsetattr ¶](#SYS_mq_getsetattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L254)

```
SYS_mq_getsetattr :: uintptr(245)
```

### [SYS\_mq\_notify ¶](#SYS_mq_notify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L253)

```
SYS_mq_notify :: uintptr(244)
```

### [SYS\_mq\_open ¶](#SYS_mq_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L249)

```
SYS_mq_open :: uintptr(240)
```

### [SYS\_mq\_timedreceive ¶](#SYS_mq_timedreceive) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L252)

```
SYS_mq_timedreceive :: uintptr(243)
```

### [SYS\_mq\_timedsend ¶](#SYS_mq_timedsend) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L251)

```
SYS_mq_timedsend :: uintptr(242)
```

### [SYS\_mq\_unlink ¶](#SYS_mq_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L250)

```
SYS_mq_unlink :: uintptr(241)
```

### [SYS\_mremap ¶](#SYS_mremap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L34)

```
SYS_mremap :: uintptr(25)
```

### [SYS\_msgctl ¶](#SYS_msgctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L80)

```
SYS_msgctl :: uintptr(71)
```

### [SYS\_msgget ¶](#SYS_msgget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L77)

```
SYS_msgget :: uintptr(68)
```

### [SYS\_msgrcv ¶](#SYS_msgrcv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L79)

```
SYS_msgrcv :: uintptr(70)
```

### [SYS\_msgsnd ¶](#SYS_msgsnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L78)

```
SYS_msgsnd :: uintptr(69)
```

### [SYS\_msync ¶](#SYS_msync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L35)

```
SYS_msync :: uintptr(26)
```

### [SYS\_munlock ¶](#SYS_munlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L159)

```
SYS_munlock :: uintptr(150)
```

### [SYS\_munlockall ¶](#SYS_munlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L161)

```
SYS_munlockall :: uintptr(152)
```

### [SYS\_munmap ¶](#SYS_munmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L20)

```
SYS_munmap :: uintptr(11)
```

### [SYS\_name\_to\_handle\_at ¶](#SYS_name_to_handle_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L312)

```
SYS_name_to_handle_at :: uintptr(303)
```

### [SYS\_nanosleep ¶](#SYS_nanosleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L44)

```
SYS_nanosleep :: uintptr(35)
```

### [SYS\_newfstatat ¶](#SYS_newfstatat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L271)

```
SYS_newfstatat :: uintptr(262)
```

### [SYS\_nfsservctl ¶](#SYS_nfsservctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L189)

```
SYS_nfsservctl :: uintptr(180)
```

### [SYS\_open ¶](#SYS_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L11)

```
SYS_open :: uintptr(2)
```

### [SYS\_open\_by\_handle\_at ¶](#SYS_open_by_handle_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L313)

```
SYS_open_by_handle_at :: uintptr(304)
```

### [SYS\_open\_tree ¶](#SYS_open_tree) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L348)

```
SYS_open_tree :: uintptr(428)
```

### [SYS\_openat ¶](#SYS_openat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L266)

```
SYS_openat :: uintptr(257)
```

### [SYS\_openat2 ¶](#SYS_openat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L357)

```
SYS_openat2 :: uintptr(437)
```

### [SYS\_pause ¶](#SYS_pause) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L43)

```
SYS_pause :: uintptr(34)
```

### [SYS\_perf\_event\_open ¶](#SYS_perf_event_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L307)

```
SYS_perf_event_open :: uintptr(298)
```

### [SYS\_personality ¶](#SYS_personality) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L144)

```
SYS_personality :: uintptr(135)
```

### [SYS\_pidfd\_getfd ¶](#SYS_pidfd_getfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L358)

```
SYS_pidfd_getfd :: uintptr(438)
```

### [SYS\_pidfd\_open ¶](#SYS_pidfd_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L354)

```
SYS_pidfd_open :: uintptr(434)
```

### [SYS\_pidfd\_send\_signal ¶](#SYS_pidfd_send_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L344)

```
SYS_pidfd_send_signal :: uintptr(424)
```

### [SYS\_pipe ¶](#SYS_pipe) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L31)

```
SYS_pipe :: uintptr(22)
```

### [SYS\_pipe2 ¶](#SYS_pipe2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L302)

```
SYS_pipe2 :: uintptr(293)
```

### [SYS\_pivot\_root ¶](#SYS_pivot_root) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L164)

```
SYS_pivot_root :: uintptr(155)
```

### [SYS\_pkey\_alloc ¶](#SYS_pkey_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L339)

```
SYS_pkey_alloc :: uintptr(330)
```

### [SYS\_pkey\_free ¶](#SYS_pkey_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L340)

```
SYS_pkey_free :: uintptr(331)
```

### [SYS\_pkey\_mprotect ¶](#SYS_pkey_mprotect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L338)

```
SYS_pkey_mprotect :: uintptr(329)
```

### [SYS\_poll ¶](#SYS_poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L16)

```
SYS_poll :: uintptr(7)
```

### [SYS\_ppoll ¶](#SYS_ppoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L280)

```
SYS_ppoll :: uintptr(271)
```

### [SYS\_prctl ¶](#SYS_prctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L166)

```
SYS_prctl :: uintptr(157)
```

### [SYS\_pread64 ¶](#SYS_pread64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L26)

```
SYS_pread64 :: uintptr(17)
```

### [SYS\_preadv ¶](#SYS_preadv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L304)

```
SYS_preadv :: uintptr(295)
```

### [SYS\_preadv2 ¶](#SYS_preadv2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L336)

```
SYS_preadv2 :: uintptr(327)
```

### [SYS\_prlimit64 ¶](#SYS_prlimit64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L311)

```
SYS_prlimit64 :: uintptr(302)
```

### [SYS\_process\_madvise ¶](#SYS_process_madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L360)

```
SYS_process_madvise :: uintptr(440)
```

### [SYS\_process\_mrelease ¶](#SYS_process_mrelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L368)

```
SYS_process_mrelease :: uintptr(448)
```

### [SYS\_process\_vm\_readv ¶](#SYS_process_vm_readv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L319)

```
SYS_process_vm_readv :: uintptr(310)
```

### [SYS\_process\_vm\_writev ¶](#SYS_process_vm_writev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L320)

```
SYS_process_vm_writev :: uintptr(311)
```

### [SYS\_pselect6 ¶](#SYS_pselect6) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L279)

```
SYS_pselect6 :: uintptr(270)
```

### [SYS\_ptrace ¶](#SYS_ptrace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L110)

```
SYS_ptrace :: uintptr(101)
```

### [SYS\_putpmsg ¶](#SYS_putpmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L191)

```
SYS_putpmsg :: uintptr(182)
```

### [SYS\_pwrite64 ¶](#SYS_pwrite64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L27)

```
SYS_pwrite64 :: uintptr(18)
```

### [SYS\_pwritev ¶](#SYS_pwritev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L305)

```
SYS_pwritev :: uintptr(296)
```

### [SYS\_pwritev2 ¶](#SYS_pwritev2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L337)

```
SYS_pwritev2 :: uintptr(328)
```

### [SYS\_query\_module ¶](#SYS_query_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L187)

```
SYS_query_module :: uintptr(178)
```

### [SYS\_quotactl ¶](#SYS_quotactl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L188)

```
SYS_quotactl :: uintptr(179)
```

### [SYS\_quotactl\_fd ¶](#SYS_quotactl_fd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L363)

```
SYS_quotactl_fd :: uintptr(443)
```

### [SYS\_read ¶](#SYS_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L9)

```
SYS_read :: uintptr(0)
```

### [SYS\_readahead ¶](#SYS_readahead) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L196)

```
SYS_readahead :: uintptr(187)
```

### [SYS\_readlink ¶](#SYS_readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L98)

```
SYS_readlink :: uintptr(89)
```

### [SYS\_readlinkat ¶](#SYS_readlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L276)

```
SYS_readlinkat :: uintptr(267)
```

### [SYS\_readv ¶](#SYS_readv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L28)

```
SYS_readv :: uintptr(19)
```

### [SYS\_reboot ¶](#SYS_reboot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L178)

```
SYS_reboot :: uintptr(169)
```

### [SYS\_recvfrom ¶](#SYS_recvfrom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L54)

```
SYS_recvfrom :: uintptr(45)
```

### [SYS\_recvmmsg ¶](#SYS_recvmmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L308)

```
SYS_recvmmsg :: uintptr(299)
```

### [SYS\_recvmsg ¶](#SYS_recvmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L56)

```
SYS_recvmsg :: uintptr(47)
```

### [SYS\_remap\_file\_pages ¶](#SYS_remap_file_pages) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L225)

```
SYS_remap_file_pages :: uintptr(216)
```

### [SYS\_removexattr ¶](#SYS_removexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L206)

```
SYS_removexattr :: uintptr(197)
```

### [SYS\_rename ¶](#SYS_rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L91)

```
SYS_rename :: uintptr(82)
```

### [SYS\_renameat ¶](#SYS_renameat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L273)

```
SYS_renameat :: uintptr(264)
```

### [SYS\_renameat2 ¶](#SYS_renameat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L325)

```
SYS_renameat2 :: uintptr(316)
```

### [SYS\_request\_key ¶](#SYS_request_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L258)

```
SYS_request_key :: uintptr(249)
```

### [SYS\_restart\_syscall ¶](#SYS_restart_syscall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L228)

```
SYS_restart_syscall :: uintptr(219)
```

### [SYS\_rmdir ¶](#SYS_rmdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L93)

```
SYS_rmdir :: uintptr(84)
```

### [SYS\_rseq ¶](#SYS_rseq) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L343)

```
SYS_rseq :: uintptr(334)
```

### [SYS\_rt\_sigaction ¶](#SYS_rt_sigaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L22)

```
SYS_rt_sigaction :: uintptr(13)
```

### [SYS\_rt\_sigpending ¶](#SYS_rt_sigpending) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L136)

```
SYS_rt_sigpending :: uintptr(127)
```

### [SYS\_rt\_sigprocmask ¶](#SYS_rt_sigprocmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L23)

```
SYS_rt_sigprocmask :: uintptr(14)
```

### [SYS\_rt\_sigqueueinfo ¶](#SYS_rt_sigqueueinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L138)

```
SYS_rt_sigqueueinfo :: uintptr(129)
```

### [SYS\_rt\_sigreturn ¶](#SYS_rt_sigreturn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L24)

```
SYS_rt_sigreturn :: uintptr(15)
```

### [SYS\_rt\_sigsuspend ¶](#SYS_rt_sigsuspend) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L139)

```
SYS_rt_sigsuspend :: uintptr(130)
```

### [SYS\_rt\_sigtimedwait ¶](#SYS_rt_sigtimedwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L137)

```
SYS_rt_sigtimedwait :: uintptr(128)
```

### [SYS\_rt\_tgsigqueueinfo ¶](#SYS_rt_tgsigqueueinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L306)

```
SYS_rt_tgsigqueueinfo :: uintptr(297)
```

### [SYS\_sched\_get\_priority\_max ¶](#SYS_sched_get_priority_max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L155)

```
SYS_sched_get_priority_max :: uintptr(146)
```

### [SYS\_sched\_get\_priority\_min ¶](#SYS_sched_get_priority_min) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L156)

```
SYS_sched_get_priority_min :: uintptr(147)
```

### [SYS\_sched\_getaffinity ¶](#SYS_sched_getaffinity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L213)

```
SYS_sched_getaffinity :: uintptr(204)
```

### [SYS\_sched\_getattr ¶](#SYS_sched_getattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L324)

```
SYS_sched_getattr :: uintptr(315)
```

### [SYS\_sched\_getparam ¶](#SYS_sched_getparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L152)

```
SYS_sched_getparam :: uintptr(143)
```

### [SYS\_sched\_getscheduler ¶](#SYS_sched_getscheduler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L154)

```
SYS_sched_getscheduler :: uintptr(145)
```

### [SYS\_sched\_rr\_get\_interval ¶](#SYS_sched_rr_get_interval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L157)

```
SYS_sched_rr_get_interval :: uintptr(148)
```

### [SYS\_sched\_setaffinity ¶](#SYS_sched_setaffinity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L212)

```
SYS_sched_setaffinity :: uintptr(203)
```

### [SYS\_sched\_setattr ¶](#SYS_sched_setattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L323)

```
SYS_sched_setattr :: uintptr(314)
```

### [SYS\_sched\_setparam ¶](#SYS_sched_setparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L151)

```
SYS_sched_setparam :: uintptr(142)
```

### [SYS\_sched\_setscheduler ¶](#SYS_sched_setscheduler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L153)

```
SYS_sched_setscheduler :: uintptr(144)
```

### [SYS\_sched\_yield ¶](#SYS_sched_yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L33)

```
SYS_sched_yield :: uintptr(24)
```

### [SYS\_seccomp ¶](#SYS_seccomp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L326)

```
SYS_seccomp :: uintptr(317)
```

### [SYS\_security ¶](#SYS_security) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L194)

```
SYS_security :: uintptr(185)
```

### [SYS\_select ¶](#SYS_select) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L32)

```
SYS_select :: uintptr(23)
```

### [SYS\_semctl ¶](#SYS_semctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L75)

```
SYS_semctl :: uintptr(66)
```

### [SYS\_semget ¶](#SYS_semget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L73)

```
SYS_semget :: uintptr(64)
```

### [SYS\_semop ¶](#SYS_semop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L74)

```
SYS_semop :: uintptr(65)
```

### [SYS\_semtimedop ¶](#SYS_semtimedop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L229)

```
SYS_semtimedop :: uintptr(220)
```

### [SYS\_sendfile ¶](#SYS_sendfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L49)

```
SYS_sendfile :: uintptr(40)
```

### [SYS\_sendmmsg ¶](#SYS_sendmmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L316)

```
SYS_sendmmsg :: uintptr(307)
```

### [SYS\_sendmsg ¶](#SYS_sendmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L55)

```
SYS_sendmsg :: uintptr(46)
```

### [SYS\_sendto ¶](#SYS_sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L53)

```
SYS_sendto :: uintptr(44)
```

### [SYS\_set\_mempolicy ¶](#SYS_set_mempolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L247)

```
SYS_set_mempolicy :: uintptr(238)
```

### [SYS\_set\_mempolicy\_home\_node ¶](#SYS_set_mempolicy_home_node) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L370)

```
SYS_set_mempolicy_home_node :: uintptr(450)
```

### [SYS\_set\_robust\_list ¶](#SYS_set_robust_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L282)

```
SYS_set_robust_list :: uintptr(273)
```

### [SYS\_set\_thread\_area ¶](#SYS_set_thread_area) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L214)

```
SYS_set_thread_area :: uintptr(205)
```

### [SYS\_set\_tid\_address ¶](#SYS_set_tid_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L227)

```
SYS_set_tid_address :: uintptr(218)
```

### [SYS\_setdomainname ¶](#SYS_setdomainname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L180)

```
SYS_setdomainname :: uintptr(171)
```

### [SYS\_setfsgid ¶](#SYS_setfsgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L132)

```
SYS_setfsgid :: uintptr(123)
```

### [SYS\_setfsuid ¶](#SYS_setfsuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L131)

```
SYS_setfsuid :: uintptr(122)
```

### [SYS\_setgid ¶](#SYS_setgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L115)

```
SYS_setgid :: uintptr(106)
```

### [SYS\_setgroups ¶](#SYS_setgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L125)

```
SYS_setgroups :: uintptr(116)
```

### [SYS\_sethostname ¶](#SYS_sethostname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L179)

```
SYS_sethostname :: uintptr(170)
```

### [SYS\_setitimer ¶](#SYS_setitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L47)

```
SYS_setitimer :: uintptr(38)
```

### [SYS\_setns ¶](#SYS_setns) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L317)

```
SYS_setns :: uintptr(308)
```

### [SYS\_setpgid ¶](#SYS_setpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L118)

```
SYS_setpgid :: uintptr(109)
```

### [SYS\_setpriority ¶](#SYS_setpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L150)

```
SYS_setpriority :: uintptr(141)
```

### [SYS\_setregid ¶](#SYS_setregid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L123)

```
SYS_setregid :: uintptr(114)
```

### [SYS\_setresgid ¶](#SYS_setresgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L128)

```
SYS_setresgid :: uintptr(119)
```

### [SYS\_setresuid ¶](#SYS_setresuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L126)

```
SYS_setresuid :: uintptr(117)
```

### [SYS\_setreuid ¶](#SYS_setreuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L122)

```
SYS_setreuid :: uintptr(113)
```

### [SYS\_setrlimit ¶](#SYS_setrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L169)

```
SYS_setrlimit :: uintptr(160)
```

### [SYS\_setsid ¶](#SYS_setsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L121)

```
SYS_setsid :: uintptr(112)
```

### [SYS\_setsockopt ¶](#SYS_setsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L63)

```
SYS_setsockopt :: uintptr(54)
```

### [SYS\_settimeofday ¶](#SYS_settimeofday) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L173)

```
SYS_settimeofday :: uintptr(164)
```

### [SYS\_setuid ¶](#SYS_setuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L114)

```
SYS_setuid :: uintptr(105)
```

### [SYS\_setxattr ¶](#SYS_setxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L197)

```
SYS_setxattr :: uintptr(188)
```

### [SYS\_shmat ¶](#SYS_shmat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L39)

```
SYS_shmat :: uintptr(30)
```

### [SYS\_shmctl ¶](#SYS_shmctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L40)

```
SYS_shmctl :: uintptr(31)
```

### [SYS\_shmdt ¶](#SYS_shmdt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L76)

```
SYS_shmdt :: uintptr(67)
```

### [SYS\_shmget ¶](#SYS_shmget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L38)

```
SYS_shmget :: uintptr(29)
```

### [SYS\_shutdown ¶](#SYS_shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L57)

```
SYS_shutdown :: uintptr(48)
```

### [SYS\_sigaltstack ¶](#SYS_sigaltstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L140)

```
SYS_sigaltstack :: uintptr(131)
```

### [SYS\_signalfd ¶](#SYS_signalfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L291)

```
SYS_signalfd :: uintptr(282)
```

### [SYS\_signalfd4 ¶](#SYS_signalfd4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L298)

```
SYS_signalfd4 :: uintptr(289)
```

### [SYS\_socket ¶](#SYS_socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L50)

```
SYS_socket :: uintptr(41)
```

### [SYS\_socketpair ¶](#SYS_socketpair) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L62)

```
SYS_socketpair :: uintptr(53)
```

### [SYS\_splice ¶](#SYS_splice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L284)

```
SYS_splice :: uintptr(275)
```

### [SYS\_stat ¶](#SYS_stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L13)

```
SYS_stat :: uintptr(4)
```

### [SYS\_statfs ¶](#SYS_statfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L146)

```
SYS_statfs :: uintptr(137)
```

### [SYS\_statx ¶](#SYS_statx) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L341)

```
SYS_statx :: uintptr(332)
```

### [SYS\_swapoff ¶](#SYS_swapoff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L177)

```
SYS_swapoff :: uintptr(168)
```

### [SYS\_swapon ¶](#SYS_swapon) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L176)

```
SYS_swapon :: uintptr(167)
```

### [SYS\_symlink ¶](#SYS_symlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L97)

```
SYS_symlink :: uintptr(88)
```

### [SYS\_symlinkat ¶](#SYS_symlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L275)

```
SYS_symlinkat :: uintptr(266)
```

### [SYS\_sync ¶](#SYS_sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L171)

```
SYS_sync :: uintptr(162)
```

### [SYS\_sync\_file\_range ¶](#SYS_sync_file_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L286)

```
SYS_sync_file_range :: uintptr(277)
```

### [SYS\_syncfs ¶](#SYS_syncfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L315)

```
SYS_syncfs :: uintptr(306)
```

### [SYS\_sysfs ¶](#SYS_sysfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L148)

```
SYS_sysfs :: uintptr(139)
```

### [SYS\_sysinfo ¶](#SYS_sysinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L108)

```
SYS_sysinfo :: uintptr(99)
```

### [SYS\_syslog ¶](#SYS_syslog) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L112)

```
SYS_syslog :: uintptr(103)
```

### [SYS\_tee ¶](#SYS_tee) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L285)

```
SYS_tee :: uintptr(276)
```

### [SYS\_tgkill ¶](#SYS_tgkill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L243)

```
SYS_tgkill :: uintptr(234)
```

### [SYS\_time ¶](#SYS_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L210)

```
SYS_time :: uintptr(201)
```

### [SYS\_timer\_create ¶](#SYS_timer_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L231)

```
SYS_timer_create :: uintptr(222)
```

### [SYS\_timer\_delete ¶](#SYS_timer_delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L235)

```
SYS_timer_delete :: uintptr(226)
```

### [SYS\_timer\_getoverrun ¶](#SYS_timer_getoverrun) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L234)

```
SYS_timer_getoverrun :: uintptr(225)
```

### [SYS\_timer\_gettime ¶](#SYS_timer_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L233)

```
SYS_timer_gettime :: uintptr(224)
```

### [SYS\_timer\_settime ¶](#SYS_timer_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L232)

```
SYS_timer_settime :: uintptr(223)
```

### [SYS\_timerfd\_create ¶](#SYS_timerfd_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L292)

```
SYS_timerfd_create :: uintptr(283)
```

### [SYS\_timerfd\_gettime ¶](#SYS_timerfd_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L296)

```
SYS_timerfd_gettime :: uintptr(287)
```

### [SYS\_timerfd\_settime ¶](#SYS_timerfd_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L295)

```
SYS_timerfd_settime :: uintptr(286)
```

### [SYS\_times ¶](#SYS_times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L109)

```
SYS_times :: uintptr(100)
```

### [SYS\_tkill ¶](#SYS_tkill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L209)

```
SYS_tkill :: uintptr(200)
```

### [SYS\_truncate ¶](#SYS_truncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L85)

```
SYS_truncate :: uintptr(76)
```

### [SYS\_tuxcall ¶](#SYS_tuxcall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L193)

```
SYS_tuxcall :: uintptr(184)
```

### [SYS\_umask ¶](#SYS_umask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L104)

```
SYS_umask :: uintptr(95)
```

### [SYS\_umount2 ¶](#SYS_umount2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L175)

```
SYS_umount2 :: uintptr(166)
```

### [SYS\_uname ¶](#SYS_uname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L72)

```
SYS_uname :: uintptr(63)
```

### [SYS\_unlink ¶](#SYS_unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L96)

```
SYS_unlink :: uintptr(87)
```

### [SYS\_unlinkat ¶](#SYS_unlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L272)

```
SYS_unlinkat :: uintptr(263)
```

### [SYS\_unshare ¶](#SYS_unshare) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L281)

```
SYS_unshare :: uintptr(272)
```

### [SYS\_uselib ¶](#SYS_uselib) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L143)

```
SYS_uselib :: uintptr(134)
```

### [SYS\_userfaultfd ¶](#SYS_userfaultfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L332)

```
SYS_userfaultfd :: uintptr(323)
```

### [SYS\_ustat ¶](#SYS_ustat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L145)

```
SYS_ustat :: uintptr(136)
```

### [SYS\_utime ¶](#SYS_utime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L141)

```
SYS_utime :: uintptr(132)
```

### [SYS\_utimensat ¶](#SYS_utimensat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L289)

```
SYS_utimensat :: uintptr(280)
```

### [SYS\_utimes ¶](#SYS_utimes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L244)

```
SYS_utimes :: uintptr(235)
```

### [SYS\_vfork ¶](#SYS_vfork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L67)

```
SYS_vfork :: uintptr(58)
```

### [SYS\_vhangup ¶](#SYS_vhangup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L162)

```
SYS_vhangup :: uintptr(153)
```

### [SYS\_vmsplice ¶](#SYS_vmsplice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L287)

```
SYS_vmsplice :: uintptr(278)
```

### [SYS\_vserver ¶](#SYS_vserver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L245)

```
SYS_vserver :: uintptr(236)
```

### [SYS\_wait4 ¶](#SYS_wait4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L70)

```
SYS_wait4 :: uintptr(61)
```

### [SYS\_waitid ¶](#SYS_waitid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L256)

```
SYS_waitid :: uintptr(247)
```

### [SYS\_write ¶](#SYS_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L10)

```
SYS_write :: uintptr(1)
```

### [SYS\_writev ¶](#SYS_writev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/syscall_amd64.odin#L29)

```
SYS_writev :: uintptr(20)
```

### [S\_IFBLK ¶](#S_IFBLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L62)

```
S_IFBLK: bit_set[Mode_Bits; u32] : Mode{.IFDIR, .IFCHR}
```

### [S\_IFCHR ¶](#S_IFCHR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L64)

```
S_IFCHR: bit_set[Mode_Bits; u32] : Mode{.IFCHR}
```

### [S\_IFDIR ¶](#S_IFDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L65)

```
S_IFDIR: bit_set[Mode_Bits; u32] : Mode{.IFDIR}
```

### [S\_IFIFO ¶](#S_IFIFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L63)

```
S_IFIFO: bit_set[Mode_Bits; u32] : Mode{.IFIFO}
```

### [S\_IFLNK ¶](#S_IFLNK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L61)

```
S_IFLNK: bit_set[Mode_Bits; u32] : Mode{.IFREG, .IFCHR}
```

### [S\_IFMT ¶](#S_IFMT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L59)

```
S_IFMT: bit_set[Mode_Bits; u32] : Mode{.IFREG, .IFDIR, .IFCHR, .IFIFO}
```

### [S\_IFREG ¶](#S_IFREG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L66)

```
S_IFREG: bit_set[Mode_Bits; u32] : Mode{.IFREG}
```

### [S\_IFSOCK ¶](#S_IFSOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L60)

```
S_IFSOCK: bit_set[Mode_Bits; u32] : Mode{.IFREG, .IFDIR}
```

### [TIOCGWINSZ ¶](#TIOCGWINSZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L413)

```
TIOCGWINSZ :: 0x5413
```

 

Get window size

### [UNAME26 ¶](#UNAME26) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1580)

```
UNAME26 :: 17
```

 

Bits for Personality\_Flags

### [UTIME\_NOW ¶](#UTIME_NOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L27)

```
UTIME_NOW :: uint((1 << 30) - 1)
```

 

Special value to put into timespec for utimensat() to set timestamp to the current time.

### [UTIME\_OMIT ¶](#UTIME_OMIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L32)

```
UTIME_OMIT :: uint((1 << 30) - 2)
```

 

Special value to put into the timespec for utimensat() to leave the corresponding field of the timestamp unchanged.

### [WAIT\_ANY ¶](#WAIT_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L37)

```
WAIT_ANY :: Pid(-1)
```

 

For wait4: Pass this pid to wait for any process.

### [WAIT\_MYPGRP ¶](#WAIT_MYPGRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L42)

```
WAIT_MYPGRP :: Pid(0)
```

 

For wait4: Pass this pid to wait for any process in current process group.

### [WHOLE\_SECONDS ¶](#WHOLE_SECONDS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin#L1588)

```
WHOLE_SECONDS :: 25
```

### [W\_OK ¶](#W_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L116)

```
W_OK: bit_set[Mode_Bits; u32] : Mode{.IWOTH}
```

 

For access.2 syscall family: instruct to check if the file is writeable.

### [X\_OK ¶](#X_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L111)

```
X_OK: bit_set[Mode_Bits; u32] : Mode{.IXOTH}
```

 

For access.2 syscall family: instruct to check if the file is executable.

## Variables

This section is empty.

## Procedures

### [S\_ISBLK ¶](#S_ISBLK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L101)

```
S_ISBLK :: proc "contextless" (m: bit_set[Mode_Bits; u32]) -> bool {…}
```

 

Check the Mode bits to see if the file is a block device.

### [S\_ISCHR ¶](#S_ISCHR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L76)

```
S_ISCHR :: proc "contextless" (m: bit_set[Mode_Bits; u32]) -> bool {…}
```

 

Check the Mode bits to see if the file is a character device.

### [S\_ISDIR ¶](#S_ISDIR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L81)

```
S_ISDIR :: proc "contextless" (m: bit_set[Mode_Bits; u32]) -> bool {…}
```

 

Check the Mode bits to see if the file is a directory.

### [S\_ISFIFO ¶](#S_ISFIFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L71)

```
S_ISFIFO :: proc "contextless" (m: bit_set[Mode_Bits; u32]) -> bool {…}
```

 

Checks the Mode bits to see if the file is a named pipe (FIFO).

### [S\_ISLNK ¶](#S_ISLNK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L96)

```
S_ISLNK :: proc "contextless" (m: bit_set[Mode_Bits; u32]) -> bool {…}
```

 

Check the Mode bits to see if the file is a symlink.

### [S\_ISREG ¶](#S_ISREG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L86)

```
S_ISREG :: proc "contextless" (m: bit_set[Mode_Bits; u32]) -> bool {…}
```

 

Check the Mode bits to see if the file is a register.

### [S\_ISSOCK ¶](#S_ISSOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin#L91)

```
S_ISSOCK :: proc "contextless" (m: bit_set[Mode_Bits; u32]) -> bool {…}
```

 

Check the Mode bits to see if the file is a socket.

### [WCOREDUMP ¶](#WCOREDUMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L43)

```
WCOREDUMP :: proc "contextless" (s: u32) -> bool {…}
```

 

/ Check if the process dumped core

### [WEXITSTATUS ¶](#WEXITSTATUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L6)

```
WEXITSTATUS :: proc "contextless" (s: u32) -> u32 {…}
```

 

/ Low 8 bits of the exit code
/ Only retrieve the exit code if WIFEXITED(s) = true

### [WIFCONTINUED ¶](#WIFCONTINUED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L38)

```
WIFCONTINUED :: proc "contextless" (s: u32) -> bool {…}
```

 

/ Check if the process is continued by the tracee

### [WIFEXITED ¶](#WIFEXITED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L23)

```
WIFEXITED :: proc "contextless" (s: u32) -> bool {…}
```

 

/ Check if the process terminated normally (via exit.2)

### [WIFSIGNALED ¶](#WIFSIGNALED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L28)

```
WIFSIGNALED :: proc "contextless" (s: u32) -> bool {…}
```

 

/ Check if the process signaled

### [WIFSTOPPED ¶](#WIFSTOPPED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L33)

```
WIFSTOPPED :: proc "contextless" (s: u32) -> bool {…}
```

 

/ Check if the process has stopped

### [WSTOPSIG ¶](#WSTOPSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L18)

```
WSTOPSIG :: proc "contextless" (s: u32) -> u32 {…}
```

 

/ The signal that stopped the child
/ Only retrieve if WIFSTOPPED(s) = true

### [WTERMSIG ¶](#WTERMSIG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L12)

```
WTERMSIG :: proc "contextless" (s: u32) -> u32 {…}
```

 

/ Termination signal
/ Only retrieve the code if WIFSIGNALED(s) = true

### [accept ¶](#accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L538)

```
accept :: proc "contextless" (sock: Fd, addr: ^$T, sockflags: bit_set[Socket_FD_Flags_Bits; i32] = {}) -> (Fd, Errno) {…}
```

 

Accept a pending connection or block until new connection appears.
Depends on Sock\_FD\_Flags of the `sock` parameter.
Available since Linux 2.0.

### [access ¶](#access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L303)

```
access :: proc "contextless" (name: cstring, mode: bit_set[Mode_Bits; u32] = F_OK) -> Errno {…}
```

 

Check user permissions for a file.
If Mode is F\_OK, checks whether the file exists.
Similarly, X\_OK, W\_OK, R\_OK check if the file is executable, writeable, readable respectively.
Available since Linux 1.0.
For ARM64 available since Linux 2.6.16.

### [acct ¶](#acct) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2245)

```
acct :: proc "contextless" (filename: cstring) -> Errno {…}
```

 

Switch process accounting on or off
Available since Linux 2.3.23

### [adjtimex ¶](#adjtimex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2209)

```
adjtimex :: proc "contextless" (buf: ^Timex) -> (Clock_State, Errno) {…}
```

 

Display or set the kernel time variables
Available since Linux 1.0.

### [alarm ¶](#alarm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L464)

```
alarm :: proc "contextless" (seconds: u32) -> u32 {…}
```

 

Set an alarm clock for delivery of a signal.
Available since Linux 1.0.

### [arch\_prctl ¶](#arch_prctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2199)

```
arch_prctl :: proc "contextless" (op: i32, addr: uint) -> Errno {…}
```

 

Set architecture-specific thread state
Available since Linux 2.6.19

### [bind ¶](#bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L629)

```
bind :: proc "contextless" (sock: Fd, addr: ^$T) -> Errno {…}
```

 

Bind a socket to the given local address.
Available since Linux 2.0.

### [brk ¶](#brk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L200)

```
brk :: proc "contextless" (addr: uintptr) -> Errno {…}
```

 

Extend the data segment size until the address `addr`. Note: you may be
familiar with sbrk(), which is not actually a syscall, so is not
implemented here.
Available since Linux 1.0.

### [chdir ¶](#chdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1192)

```
chdir :: proc "contextless" (path: cstring) -> Errno {…}
```

 

Change working directory to the directory specified by path.
Available since Linux 1.0.

### [chmod ¶](#chmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1330)

```
chmod :: proc "contextless" (name: cstring, mode: bit_set[Mode_Bits; u32]) -> Errno {…}
```

 

Change file permissions.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [chown ¶](#chown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1355)

```
chown :: proc "contextless" (name: cstring, uid: Uid, gid: Gid) -> Errno {…}
```

 

Change ownership of a file.
Available since Linux 2.2.
On 32-bit architectures available since Linux 2.4.
On ARM64 available since Linux 2.6.16.

### [chroot ¶](#chroot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2227)

```
chroot :: proc "contextless" (pathname: cstring) -> Errno {…}
```

 

Change root directory
Available since Linux 1.0.

### [clock\_getres ¶](#clock_getres) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2753)

```
clock_getres :: proc "contextless" (clock: Clock_Id) -> (res: Time_Spec, err: Errno) {…}
```

 

Finds the resolution of the specified clock.
Available since Linux 2.6.

### [clock\_gettime ¶](#clock_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2742)

```
clock_gettime :: proc "contextless" (clock: Clock_Id) -> (ts: Time_Spec, err: Errno) {…}
```

 

Retrieve the time of the specified clock.
Available since Linux 2.6.

### [clock\_nanosleep ¶](#clock_nanosleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2763)

```
clock_nanosleep :: proc "contextless" (clock: Clock_Id, flags: bit_set[ITimer_Flags_Bits; u32], request: ^Time_Spec, remain: ^Time_Spec) -> Errno {…}
```

 

Sleep for an interval specified with nanosecond precision.
Available since Linux 2.6.

### [clock\_settime ¶](#clock_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2733)

```
clock_settime :: proc "contextless" (clock: Clock_Id, ts: ^Time_Spec) -> Errno {…}
```

 

Set the time of the specified clock.
Available since Linux 2.6.

### [close ¶](#close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L56)

```
close :: proc "contextless" (fd: Fd) -> Errno {…}
```

 

Close the file.
Available since Linux 1.0.

### [close\_range ¶](#close_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3358)

```
close_range :: proc "contextless" (lo: Fd, hi: Fd, flags: bit_set[Close_Range_Flags_Bits; u32]) -> Errno {…}
```

 

Close the range of files as an atomic operation.
The range of file descriptors is inclusive, and may contain invalid file descriptors.
Available since Linux 5.9.

### [connect ¶](#connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L522)

```
connect :: proc "contextless" (sock: Fd, addr: ^$T) -> Errno {…}
```

 

Connect the socket to the address.
Available since Linux 2.0.

### [creat ¶](#creat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1256)

```
creat :: proc "contextless" (name: cstring, mode: bit_set[Mode_Bits; u32]) -> (Fd, Errno) {…}
```

 

Create a file.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [delete\_module ¶](#delete_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2351)

```
delete_module :: proc "contextless" (name: cstring, flags: u32) -> Errno {…}
```

 

Unload a kernel module
Available since Linux 2.2

### [dirent\_iterate\_buf ¶](#dirent_iterate_buf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L96)

```
dirent_iterate_buf :: proc "contextless" (buf: []u8, offs: ^int) -> (d: ^Dirent, cont: bool) {…}
```

 

Iterate the results of `getdents()`.

This procedure extracts a directory entry from `buf` at the offset `offs`.
`offs` will be modified to store an offset to the possible next directory entry
in `buf`. The procedure only iterates as much data as loaded in the buffer and
does not automatically make a request for the buffer to be refilled.

**Inputs:**  
buf: A byte buffer with data from `getdents()`
offs: An offset to the next possible directory entry in `buf`

**Returns:**  
A pointer to a directory entry in `buf`, or `nil`
A bool value denoting if a valid directory entry is returned

**Example:**

import "core:fmt"
import "core:sys/linux"

print\_names :: proc(dirfd: linux.Fd) {
// Get dirents into a buffer.
buf: [128]u8
// Loop until there are no more entries.
for {
written, err := linux.getdents(dirfd, buf[:])
if err != .NONE || written == 0 {
break
}
// Print the names of the files.
offset : int
for dir in linux.dirent\_iterate\_buf(buf[:written], &offset) {
name := linux.dirent\_name(dir)
fmt.println(name)
}
}
}

### [dirent\_name ¶](#dirent_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L119)

```
dirent_name :: proc "contextless" (dirent: ^Dirent) -> string {…}
```

 

Obtain the name of dirent as a string.

The lifetime of the returned string is bound to the lifetime of the provided dirent structure.

**Inputs:**  
dirent: A directory entry

**Returns:**  
A name of the entry

### [dup ¶](#dup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L409)

```
dup :: proc "contextless" (fd: Fd) -> (Fd, Errno) {…}
```

 

Allocate a new file descriptor that refers to the same file as the one provided.
Available since Linux 1.0.

### [dup2 ¶](#dup2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L419)

```
dup2 :: proc "contextless" (old: Fd, new: Fd) -> (Fd, Errno) {…}
```

 

Adjust an existing file descriptor to point to the same file as `old`.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.27.

### [dup3 ¶](#dup3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3114)

```
dup3 :: proc "contextless" (old: Fd, new: Fd, flags: bit_set[Open_Flags_Bits; u32]) -> (Fd, Errno) {…}
```

 

Adjust an existing file descriptor to point to the same file as `old`.
In addition to dup2 allows to pass O\_CLOEXEC flag.
Available since Linux 2.6.27.

### [epoll\_create ¶](#epoll_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2659)

```
epoll_create :: proc(size: i32 = 1) -> (Fd, Errno) {…}
```

 

Open an epoll file descriptor.

The `size` argument is ignored but must be greater than zero.

Available since Linux 2.6.

### [epoll\_create1 ¶](#epoll_create1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3104)

```
epoll_create1 :: proc(flags: bit_set[EPoll_Flags_Bits; i32]) -> (Fd, Errno) {…}
```

### [epoll\_ctl ¶](#epoll_ctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2803)

```
epoll_ctl :: proc(epfd: Fd, op: EPoll_Ctl_Opcode, fd: Fd, event: ^EPoll_Event) -> Errno {…}
```

 

Control interface for an epoll file descriptor.
Available since Linux 2.6.

### [epoll\_pwait ¶](#epoll_pwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3057)

```
epoll_pwait :: proc(epfd: Fd, events: [^]EPoll_Event, count: i32, timeout: i32, sigmask: ^[1]uint) -> (i32, Errno) {…}
```

 

Wait for an I/O event on an epoll file descriptor.
Available since Linux 2.6.

### [epoll\_pwait2 ¶](#epoll_pwait2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3391)

```
epoll_pwait2 :: proc(epfd: Fd, events: [^]EPoll_Event, count: i32, timeout: ^Time_Spec, sigmask: ^[1]uint) -> (i32, Errno) {…}
```

 

Wait for an I/O event on an epoll file descriptor.
Available since Linux 2.6.

### [epoll\_wait ¶](#epoll_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2784)

```
epoll_wait :: proc(epfd: Fd, events: [^]EPoll_Event, count: i32, timeout: i32) -> (i32, Errno) {…}
```

 

Wait for an I/O event on an epoll file descriptor.

`timeout` is specified in milliseconds.

Available since Linux 2.6.

### [eventfd ¶](#eventfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3073)

```
eventfd :: proc "contextless" (initval: u32, flags: bit_set[Eventfd_Flags_Bits; i32]) -> (Fd, Errno) {…}
```

### [execve ¶](#execve) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L804)

```
execve :: proc "contextless" (name: cstring, argv: [^]cstring, envp: [^]cstring) -> Errno {…}
```

 

Replace the current process with another program.
Available since Linux 1.0.
On ARM64 available since Linux 3.19.

### [execveat ¶](#execveat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3243)

```
execveat :: proc "contextless" (dirfd: Fd, name: cstring, argv: [^]cstring, envp: [^]cstring, flags: bit_set[Execveat_Flags_Bits; i32] = {}) -> Errno {…}
```

 

Execute program relative to a directory file descriptor.
Available since Linux 3.19.

### [exit ¶](#exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L818)

```
exit :: proc "contextless" (code: i32) -> ! {…}
```

 

Exit the thread with a given exit code.
Available since Linux 1.0.

### [exit\_group ¶](#exit_group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2772)

```
exit_group :: proc "contextless" (code: i32) -> ! {…}
```

 

Exit the thread group.
Available since Linux 2.6.

### [faccessat ¶](#faccessat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2998)

```
faccessat :: proc "contextless" (dirfd: Fd, name: cstring, mode: bit_set[Mode_Bits; u32] = F_OK) -> Errno {…}
```

 

Checks the user permissions for a file at specified dirfd.
Available since Linux 2.6.16.

### [faccessat2 ¶](#faccessat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3380)

```
faccessat2 :: proc "contextless" (dirfd: Fd, name: cstring, mode: bit_set[Mode_Bits; u32] = F_OK, flags: bit_set[FD_Flags_Bits; i32] = FD_Flags{}) -> Errno {…}
```

 

Checks the user permissions for a file at specified dirfd (with flags).
Available since Linux 5.8.

### [fchdir ¶](#fchdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1201)

```
fchdir :: proc "contextless" (fd: Fd) -> Errno {…}
```

 

Change working directory to the directory specified by dirfd.
Available since Linux 1.0.

### [fchmod ¶](#fchmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1344)

```
fchmod :: proc "contextless" (fd: Fd, mode: bit_set[Mode_Bits; u32]) -> Errno {…}
```

 

Change file permissions through a file descriptor.
Available since Linux 1.0.

### [fchmodat ¶](#fchmodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2989)

```
fchmodat :: proc "contextless" (dirfd: Fd, name: cstring, mode: bit_set[Mode_Bits; u32], flags: bit_set[FD_Flags_Bits; i32]) -> Errno {…}
```

 

Change the file mode at a specified file descriptor.
Available since Linux 2.6.16.

### [fchown ¶](#fchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1373)

```
fchown :: proc "contextless" (fd: Fd, uid: Uid, gid: Gid) -> Errno {…}
```

 

Change ownership of a file by file descriptor.
Available since Linux 1.0.
On 32-bit architecvtures available since Linux 2.4.

### [fchownat ¶](#fchownat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2918)

```
fchownat :: proc "contextless" (dirfd: Fd, name: cstring, uid: Uid, gid: Gid) -> Errno {…}
```

 

Change the ownership of the file specified relative to directory.
Available since Linux 2.6.16.

### [fcntl\_add\_seals ¶](#fcntl_add_seals) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1049)

```
fcntl_add_seals :: proc "contextless" (fd: Fd, cmd: FCntl_Command_ADD_SEALS, seal: bit_set[Seal_Bits; i32]) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_dupfd ¶](#fcntl_dupfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L944)

```
fcntl_dupfd :: proc "contextless" (fd: Fd, cmd: FCntl_Command_DUPFD, newfd: Fd) -> (Fd, Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_dupfd\_cloexec ¶](#fcntl_dupfd_cloexec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L949)

```
fcntl_dupfd_cloexec :: proc "contextless" (fd: Fd, cmd: FCntl_Command_DUPFD_CLOEXEC, newfd: Fd) -> (Fd, Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_get\_file\_rw\_hint ¶](#fcntl_get_file_rw_hint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1069)

```
fcntl_get_file_rw_hint :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GET_FILE_RW_HINT, hint: ^RW_Hint) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_get\_rw\_hint ¶](#fcntl_get_rw_hint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1059)

```
fcntl_get_rw_hint :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GET_RW_HINT, hint: ^RW_Hint) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_get\_seals ¶](#fcntl_get_seals) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1054)

```
fcntl_get_seals :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GET_SEALS) -> (bit_set[Seal_Bits; i32], Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_getfd ¶](#fcntl_getfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L954)

```
fcntl_getfd :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GETFD) -> (Fd, Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_getfl ¶](#fcntl_getfl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L964)

```
fcntl_getfl :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GETFL) -> (bit_set[Open_Flags_Bits; u32], Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_getlease ¶](#fcntl_getlease) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1029)

```
fcntl_getlease :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GETLEASE) -> (FD_Lease, Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_getlk ¶](#fcntl_getlk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L994)

```
fcntl_getlk :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GETLK, lock: ^FLock) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_getown\_ex ¶](#fcntl_getown_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1004)

```
fcntl_getown_ex :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GETOWN_EX, owner: ^F_Owner) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_getpipe\_sz ¶](#fcntl_getpipe_sz) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1044)

```
fcntl_getpipe_sz :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GETPIPE_SZ) -> (i32, Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_getsig ¶](#fcntl_getsig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1014)

```
fcntl_getsig :: proc "contextless" (fd: Fd, cmd: FCntl_Command_GETSIG) -> (Signal, Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_notify ¶](#fcntl_notify) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1034)

```
fcntl_notify :: proc "contextless" (fd: Fd, cmd: FCntl_Command_NOTIFY, notifications: bit_set[FD_Notifications_Bits; i32]) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_set\_file\_rw\_hint ¶](#fcntl_set_file_rw_hint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1074)

```
fcntl_set_file_rw_hint :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SET_FILE_RW_HINT, hint: ^RW_Hint) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_set\_rw\_hint ¶](#fcntl_set_rw_hint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1064)

```
fcntl_set_rw_hint :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SET_RW_HINT, hint: ^RW_Hint) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setfd ¶](#fcntl_setfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L959)

```
fcntl_setfd :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETFD, newfd: Fd) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setfl ¶](#fcntl_setfl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L969)

```
fcntl_setfl :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETFL, flags: bit_set[Open_Flags_Bits; u32]) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setlease ¶](#fcntl_setlease) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1024)

```
fcntl_setlease :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETLEASE, lease: FD_Lease) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setlk ¶](#fcntl_setlk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L974)

```
fcntl_setlk :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETLK, lock: ^FLock) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setlkw ¶](#fcntl_setlkw) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L984)

```
fcntl_setlkw :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETLKW, lock: ^FLock) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setown\_ex ¶](#fcntl_setown_ex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1009)

```
fcntl_setown_ex :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETOWN_EX, owner: ^F_Owner) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setpipe\_sz ¶](#fcntl_setpipe_sz) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1039)

```
fcntl_setpipe_sz :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETPIPE_SZ, sz: i32) -> (i32, Errno) {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fcntl\_setsig ¶](#fcntl_setsig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1019)

```
fcntl_setsig :: proc "contextless" (fd: Fd, cmd: FCntl_Command_SETSIG, sig: Signal) -> Errno {…}
```

##### Related Procedure Groups

* [fcntl](/core/sys/linux/#fcntl)

### [fdatasync ¶](#fdatasync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1129)

```
fdatasync :: proc "contextless" (fd: Fd) -> Errno {…}
```

 

Synchronize the state of the file with the storage device. Similar to `fsync`,
except does not flush the metadata.
Available since Linux 2.0.

### [fgetxattr ¶](#fgetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2448)

```
fgetxattr :: proc "contextless" (fd: Fd, name: cstring, value: rawptr, size: uint) -> Errno {…}
```

 

Retrieve an extended attribute
Available since Linux 2.6.25

### [flistxattr ¶](#flistxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2475)

```
flistxattr :: proc "contextless" (fd: Fd, list: cstring, size: uint) -> Errno {…}
```

 

List extended attribute names
Available since Linux 2.6.25

### [flock ¶](#flock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1110)

```
flock :: proc "contextless" (fd: Fd, operation: bit_set[FLock_Op_Bits; i32]) -> Errno {…}
```

 

Apply or remove advisory lock on an open file.
Available since Linux 2.0.

### [fork ¶](#fork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L777)

```
fork :: proc "contextless" () -> (Pid, Errno) {…}
```

 

Creates a copy of the running process.
Available since Linux 1.0.

### [fremovexattr ¶](#fremovexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2502)

```
fremovexattr :: proc "contextless" (fd: Fd, name: cstring) -> Errno {…}
```

 

Remove an extended attribute
Available since Linux 2.6.25

### [fsetxattr ¶](#fsetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2421)

```
fsetxattr :: proc "contextless" (fd: Fd, name: cstring, value: rawptr, size: uint, flags: i32) -> Errno {…}
```

 

Set an extended attribute value
Available since Linux 2.6.25

### [fstat ¶](#fstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L93)

```
fstat :: proc "contextless" (fd: Fd, stat: ^Stat) -> Errno {…}
```

 

Get file status from file descriptor.

Returns information about the file in struct pointed to by `stat` parameter.

Available since Linux 1.0.
For 32-bit systems a different syscall is used that became available since 2.4.

### [fstatat ¶](#fstatat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2927)

```
fstatat :: proc "contextless" (dirfd: Fd, name: cstring, stat: ^Stat, flags: bit_set[FD_Flags_Bits; i32]) -> Errno {…}
```

 

Get information about a file at a specific directory.
Available since Linux 2.6.16.

### [fstatfs ¶](#fstatfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2012)

```
fstatfs :: proc "contextless" (fd: Fd, statfs: ^Stat_FS) -> Errno {…}
```

 

Query information about filesystem by file descriptor.

Available since Linux 1.0.
For 32-bit systems a different syscall is used that became available since 2.6.

### [fsync ¶](#fsync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1119)

```
fsync :: proc "contextless" (fd: Fd) -> Errno {…}
```

 

Sync state of the file with the storage device.
Available since Linux 1.0.

### [ftruncate ¶](#ftruncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1156)

```
ftruncate :: proc "contextless" (fd: Fd, length: i64) -> Errno {…}
```

 

Truncate a file specified by file descriptor to specified length.
On 32-bit architectures available since 2.4.

### [futex\_cmp\_requeue ¶](#futex_cmp_requeue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2552)

```
futex_cmp_requeue :: proc "contextless" (
	futex:             ^u32, 
	op:                Futex_Cmp_Requeue_Type, 
	flags:             bit_set[Futex_Flags_Bits; u32], 
	requeue_threshold: u32, 
	requeue_max:       i32, 
	requeue_futex:     ^u32, 
	val:               i32, 
) -> (int, Errno) {…}
```

 

Requeues processes waiting on futex `futex` to wait on futex `requeue_futex`
`requeue_threshold` specifies the maximum amount of waiters to wake up, the rest of the waiters will be requeued
`requeue_max` specifies the maximum amount of waiters that are required at `requeue_futex`
The operation blocks until the `requeue_max` requirement is satisfied
If the value of the mutex is not equal to `val`, fails with EAGAIN before any further checks
Returns the total number of waiters that have been woken up plus the number of waiters requeued.




##### Related Procedure Groups

* [futex](/core/sys/linux/#futex)

### [futex\_op ¶](#futex_op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L137)

```
futex_op :: proc "contextless" (arg_op: Futex_Arg_Op, cmp_op: Futex_Cmp_Op, op_arg: u32, cmp_arg: u32) -> u32 {…}
```

 

/ Constructor for the `futex_op` argument of a FUTEX\_WAKE\_OP call

### [futex\_requeue ¶](#futex_requeue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2563)

```
futex_requeue :: proc "contextless" (
	futex:             ^u32, 
	op:                Futex_Requeue_Type, 
	flags:             bit_set[Futex_Flags_Bits; u32], 
	requeue_threshold: u32, 
	requeue_max:       i32, 
	requeue_futex:     ^u32, 
) -> (int, Errno) {…}
```

 

See `futex_cmp_requeue`, this function does the same thing but doesn't check the value of the futex.
Returns the total number of waiters that have been woken up.




##### Related Procedure Groups

* [futex](/core/sys/linux/#futex)

### [futex\_wait ¶](#futex_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2526)

```
futex_wait :: proc "contextless" (futex: ^u32, op: Futex_Wait_Type, flags: bit_set[Futex_Flags_Bits; u32], val: u32, timeout: ^Time_Spec = nil) -> Errno {…}
```

 

Wait on a futex until it's signaled.




##### Related Procedure Groups

* [futex](/core/sys/linux/#futex)

### [futex\_wait\_bitset ¶](#futex_wait_bitset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2584)

```
futex_wait_bitset :: proc "contextless" (
	futex:   ^u32, 
	op:      Futex_Wait_Bitset_Type, 
	flags:   bit_set[Futex_Flags_Bits; u32], 
	val:     u32, 
	timeout: ^Time_Spec, 
	mask:    u32, 
) -> (int, Errno) {…}
```

 

Same as wait, but mask specifies bits that must be equal for the mutex to wake up.




##### Related Procedure Groups

* [futex](/core/sys/linux/#futex)

### [futex\_wake ¶](#futex_wake) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2536)

```
futex_wake :: proc "contextless" (futex: ^u32, op: Futex_Wake_Type, flags: bit_set[Futex_Flags_Bits; u32], n_wakeup: i32) -> (int, Errno) {…}
```

 

Wake up other threads on a futex
n\_wakeup specifies the number of processes to wakeup. Specify max(i32) to wake up all processes waiting




##### Related Procedure Groups

* [futex](/core/sys/linux/#futex)

### [futex\_wake\_bitset ¶](#futex_wake_bitset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2594)

```
futex_wake_bitset :: proc "contextless" (futex: ^u32, op: Futex_Wake_Bitset_Type, flags: bit_set[Futex_Flags_Bits; u32], n_wakeup: u32, mask: u32) -> (int, Errno) {…}
```

 

Wake up on bitset.




##### Related Procedure Groups

* [futex](/core/sys/linux/#futex)

### [futex\_wake\_op ¶](#futex_wake_op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2574)

```
futex_wake_op :: proc "contextless" (
	futex:           ^u32, 
	op:              Futex_Wake_Op_Type, 
	flags:           bit_set[Futex_Flags_Bits; u32], 
	wakeup:          i32, 
	dst_wakeup, dst: ^u32, 
	futex_op:        u32, 
) -> (int, Errno) {…}
```

 

Okay, for this one, see the man pages, the description for it is pretty long and very specific. It's sole.
purpose is to allow implementing conditional values sync primitive, it seems like.




##### Related Procedure Groups

* [futex](/core/sys/linux/#futex)

### [getcpu ¶](#getcpu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3179)

```
getcpu :: proc "contextless" (cpu, node: ^u32) -> Errno {…}
```

 

Determine CPU and NUMA node on which the calling thread is running.
Available since Linux 2.6.19.

### [getcwd ¶](#getcwd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1183)

```
getcwd :: proc "contextless" (buf: []u8) -> (int, Errno) {…}
```

 

Get current working directory.
Available since Linux 1.0.

### [getdents ¶](#getdents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1174)

```
getdents :: proc "contextless" (dirfd: Fd, buf: []u8) -> (int, Errno) {…}
```

 

Retrieve the contents of the directory specified by dirfd.
Returns the number of bytes written.
Available since Linux 2.4.

### [getegid ¶](#getegid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1717)

```
getegid :: proc "contextless" () -> Gid {…}
```

 

Get effective group ID.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [geteuid ¶](#geteuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1704)

```
geteuid :: proc "contextless" () -> Uid {…}
```

 

Get effective user ID.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [getgid ¶](#getgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1658)

```
getgid :: proc "contextless" () -> Gid {…}
```

 

Get real group ID.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [getgroups ¶](#getgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1804)

```
getgroups :: proc "contextless" (gids: []Gid) -> (int, Errno) {…}
```

 

Get supplementary group IDs.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [getitimer ¶](#getitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L455)

```
getitimer :: proc "contextless" (which: ITimer_Which, cur: ^ITimer_Val) -> Errno {…}
```

 

Get the value of an internal timer.
Available since Linux 1.0.

### [getpeername ¶](#getpeername) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L663)

```
getpeername :: proc "contextless" (sock: Fd, addr: ^Sock_Addr_Any) -> Errno {…}
```

 

Get the name of the connected peer socket.
Available since Linux 2.0.

### [getpgid ¶](#getpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1897)

```
getpgid :: proc "contextless" (pid: Pid) -> (Pid, Errno) {…}
```

 

Get process group.
Available since Linux 1.0.

### [getpgrp ¶](#getpgrp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1746)

```
getpgrp :: proc "contextless" () -> (Pid, Errno) {…}
```

 

Get process group.
Available since Linux 1.0.

### [getpid ¶](#getpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L489)

```
getpid :: proc "contextless" () -> Pid {…}
```

 

Returns the thread group ID of the current process.
Note that it doesn't return the pid, despite it's name.
Available since Linux 1.0.

### [getppid ¶](#getppid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1738)

```
getppid :: proc "contextless" () -> Pid {…}
```

 

Get the parent process ID.
Available since Linux 1.0.

### [getpriority ¶](#getpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2028)

```
getpriority :: proc "contextless" (which: Priority_Which, who: i32) -> (i32, Errno) {…}
```

 

Get priority on user, process group or process.
Available since Linux 1.0.

### [getrandom ¶](#getrandom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3221)

```
getrandom :: proc "contextless" (buf: []u8, flags: bit_set[Get_Random_Flags_Bits; i32]) -> (int, Errno) {…}
```

### [getresgid ¶](#getresgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1883)

```
getresgid :: proc "contextless" (real: ^Gid, effective: ^Gid, saved: ^Gid) -> Errno {…}
```

 

Get real, effective and saved group id.
Available since Linux 2.2.
On 32-bit platforms available since Linux 2.4.

### [getresuid ¶](#getresuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1851)

```
getresuid :: proc "contextless" (real: ^Uid, effective: ^Uid, saved: ^Uid) -> Errno {…}
```

 

Get real, effective and saved user id.
Available since Linux 2.2.
On 32-bit platforms available since Linux 2.4.

### [getrlimit ¶](#getrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1424)

```
getrlimit :: proc "contextless" (kind: RLimit_Kind, resource: ^RLimit) -> Errno {…}
```

 

Get limits on resources.
Available since Linux 1.0.

### [getrusage ¶](#getrusage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1433)

```
getrusage :: proc "contextless" (who: RUsage_Who, rusage: ^RUsage) -> Errno {…}
```

 

Get resource usage.
Available since Linux 1.0.

### [getsid ¶](#getsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1906)

```
getsid :: proc "contextless" (pid: Pid) -> (Pid, Errno) {…}
```

 

Get session ID of the calling process.
Available since Linux 2.0.

### [getsockname ¶](#getsockname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L653)

```
getsockname :: proc "contextless" (sock: Fd, addr: ^Sock_Addr_Any) -> Errno {…}
```

 

Get socket name (aka it's bound address).
Available since Linux 2.0.

### [getsockopt\_base ¶](#getsockopt_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L727)

```
getsockopt_base :: proc "contextless" (sock: Fd, level: int, opt: Socket_Option, val: $T) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [getsockopt](/core/sys/linux/#getsockopt)

### [getsockopt\_sock ¶](#getsockopt_sock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L738)

```
getsockopt_sock :: proc "contextless" (sock: Fd, level: Socket_API_Level_Sock, opt: Socket_Option, val: ^$T) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [getsockopt](/core/sys/linux/#getsockopt)

### [getsockopt\_tcp ¶](#getsockopt_tcp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L746)

```
getsockopt_tcp :: proc "contextless" (sock: Fd, level: Socket_API_Level_TCP, opt: Socket_TCP_Option, val: ^$T) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [getsockopt](/core/sys/linux/#getsockopt)

### [getsockopt\_udp ¶](#getsockopt_udp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L754)

```
getsockopt_udp :: proc "contextless" (sock: Fd, level: Socket_API_Level_UDP, opt: Socket_UDP_Option, val: ^$T) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [getsockopt](/core/sys/linux/#getsockopt)

### [gettid ¶](#gettid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2386)

```
gettid :: proc "contextless" () -> Pid {…}
```

 

Returns the thread ID of the current process
This is what the kernel calls "pid".
Let me insert a tiny rant here, this terminology is confusing:
sometimes pid refers to a thread, and other times it refers
to a thread group (process group?)
Anyway, this syscall is available since Linux 1.0

### [gettimeofday ¶](#gettimeofday) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1415)

```
gettimeofday :: proc "contextless" (tv: ^Time_Val) -> Errno {…}
```

 

Get current time.
Available since Linux 1.0.

### [getuid ¶](#getuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1636)

```
getuid :: proc "contextless" () -> Uid {…}
```

 

Get real user ID.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [getxattr ¶](#getxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2430)

```
getxattr :: proc "contextless" (path: cstring, name: cstring, value: rawptr, size: uint) -> Errno {…}
```

 

Retrieve an extended attribute
Available since Linux 2.6.25

### [init\_module ¶](#init_module) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2342)

```
init_module :: proc "contextless" (module_image: rawptr, size: u32, param_values: cstring) -> Errno {…}
```

 

Load a kernel module
Available since Linux 2.2

### [inotify\_add\_watch ¶](#inotify_add_watch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2875)

```
inotify_add_watch :: proc "contextless" (fd: Fd, pathname: cstring, mask: bit_set[Inotify_Event_Bits; u32]) -> (Wd, Errno) {…}
```

### [inotify\_init ¶](#inotify_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2860)

```
inotify_init :: proc "contextless" () -> (Fd, Errno) {…}
```

### [inotify\_init1 ¶](#inotify_init1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2870)

```
inotify_init1 :: proc "contextless" (flags: bit_set[Inotify_Init_Bits; i32]) -> (Fd, Errno) {…}
```

### [inotify\_rm\_watch ¶](#inotify_rm_watch) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2880)

```
inotify_rm_watch :: proc "contextless" (fd: Fd, wd: Wd) -> Errno {…}
```

### [io\_uring\_enter ¶](#io_uring_enter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3302)

```
io_uring_enter :: proc "contextless" (fd: Fd, to_submit: u32, min_complete: u32, flags: bit_set[IO_Uring_Enter_Flags_Bits; u32], sig: ^[1]uint) -> (int, Errno) {…}
```

 

Initiate and/or complete I/O using the shared submission and completion queues.

Available since Linux 5.1

### [io\_uring\_enter2 ¶](#io_uring_enter2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3312)

```
io_uring_enter2 :: proc "contextless" (fd: Fd, to_submit: u32, min_complete: u32, flags: bit_set[IO_Uring_Enter_Flags_Bits; u32], arg: ^IO_Uring_Getevents_Arg) -> (int, Errno) {…}
```

 

Initiate and.or complete I/O using the shared submission and completion queues.

Available since Linux 5.11

### [io\_uring\_register ¶](#io_uring_register) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3323)

```
io_uring_register :: proc "contextless" (fd: Fd, opcode: IO_Uring_Register_Opcode, arg: rawptr, nr_args: u32) -> Errno {…}
```

 

Register files or user buffers for asynchronous I/O.

Available since Linux 5.1

### [io\_uring\_setup ¶](#io_uring_setup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3292)

```
io_uring_setup :: proc "contextless" (entries: u32, params: ^IO_Uring_Params) -> (Fd, Errno) {…}
```

 

Setup a context for performing asynchronous I/O.

Available since Linux 5.1

### [ioctl ¶](#ioctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L245)

```
ioctl :: proc "contextless" (fd: Fd, request: u32, arg: uintptr) -> uintptr {…}
```

 

Control devices. The ioctl syscall is a bit special because
its argument is usually a pointer to some driver-specific structure.
The request value is device-specific. Consult your LibC implementation's
ioctls.h file to learn more. The returned value of ioctl *may* be an error
code value instead of a memory address depending on the request type.
Available since Linux 1.0.

### [ioperm ¶](#ioperm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2332)

```
ioperm :: proc "contextless" (form: u32, num: u32, turn_on: i32) -> Errno {…}
```

 

Set port input/output permissions
Available since Linux 1.0

### [kill ¶](#kill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L841)

```
kill :: proc "contextless" (pid: Pid, signal: Signal) -> Errno {…}
```

 

Send signal to a process.
Available since Linux 1.0.

### [lchown ¶](#lchown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1389)

```
lchown :: proc "contextless" (name: cstring, uid: Uid, gid: Gid) -> Errno {…}
```

 

Change ownership of a file. Unlike chown, if a file is a symlink dooesn't dereference it.
Available since Linux 1.0.
On 32-bit architectures available since Linux 2.4.
On ARM64 available since Linux 2.6.16.

### [lgetxattr ¶](#lgetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2439)

```
lgetxattr :: proc "contextless" (path: cstring, name: cstring, value: rawptr, size: uint) -> Errno {…}
```

 

Retrieve an extended attribute
Available since Linux 2.6.25

### [link ¶](#link) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1270)

```
link :: proc "contextless" (target: cstring, linkpath: cstring) -> Errno {…}
```

 

Create a hard link on a file.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [linkat ¶](#linkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2962)

```
linkat :: proc "contextless" (target_dirfd: Fd, oldpath: cstring, link_dirfd: Fd, link: cstring, flags: bit_set[FD_Flags_Bits; i32]) -> Errno {…}
```

 

Creates a hard link on a file relative to specified dirfd.
Available since Linux 2.6.16.

### [listen ¶](#listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L644)

```
listen :: proc "contextless" (sock: Fd, queue_len: i32) -> Errno {…}
```

 

Marks the socket as a socket that listen to connections using accept(2).
Available since Linux 2.0.

### [listxattr ¶](#listxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2457)

```
listxattr :: proc "contextless" (path: cstring, list: cstring, size: uint) -> Errno {…}
```

 

List extended attribute names
Available since Linux 2.6.25

### [llistxattr ¶](#llistxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2466)

```
llistxattr :: proc "contextless" (path: cstring, list: cstring, size: uint) -> Errno {…}
```

 

List extended attribute names
Available since Linux 2.6.25

### [lremovexattr ¶](#lremovexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2493)

```
lremovexattr :: proc "contextless" (path: cstring, name: cstring) -> Errno {…}
```

 

Remove an extended attribute
Available since Linux 2.6

### [lseek ¶](#lseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L149)

```
lseek :: proc "contextless" (fd: Fd, off: i64, whence: Seek_Whence) -> (i64, Errno) {…}
```

 

Seek the file stream to specified offset.
Available since Linux 1.0.
On 32-bit platforms available since Linux 1.2.

### [lsetxattr ¶](#lsetxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2412)

```
lsetxattr :: proc "contextless" (path: cstring, name: cstring, value: rawptr, size: uint, flags: i32) -> Errno {…}
```

 

Set an extended attribute value
Available since Linux 2.6.25

### [lstat ¶](#lstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L113)

```
lstat :: proc "contextless" (filename: cstring, stat: ^Stat) -> Errno {…}
```

 

Get information about the file that's potentially a symbolic link
The information is returned in a struct pointed to by `stat` parameter.
The difference with stat, fstat is that if the file is a symbolic link,
stat and fstat will dereference the link. lstat doesn't dereference symlinks.

Available since Linux 1.0.
For 32-bit systems a different syscall is used that became available since 2.4.
Not available on arm64.

### [madvise ¶](#madvise) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L366)

```
madvise :: proc "contextless" (addr: rawptr, size: uint, advice: MAdvice) -> Errno {…}
```

 

Give advice about use of memory.
Available since Linux 2.4.

### [memfd\_create ¶](#memfd_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3230)

```
memfd_create :: proc "contextless" (name: cstring, flags: bit_set[Memfd_Create_Flag_Bits; u32]) -> (Fd, Errno) {…}
```

 

Create an anonymous file.
Available since Linux 3.17.

### [mincore ¶](#mincore) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L357)

```
mincore :: proc "contextless" (addr: rawptr, size: uint, vec: []b8) -> Errno {…}
```

 

Determine if pages are resident in memory.
Available since Linux 2.4.

### [mkdir ¶](#mkdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1226)

```
mkdir :: proc "contextless" (name: cstring, mode: bit_set[Mode_Bits; u32]) -> Errno {…}
```

 

Creates a directory.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [mkdirat ¶](#mkdirat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2900)

```
mkdirat :: proc "contextless" (dirfd: Fd, name: cstring, mode: bit_set[Mode_Bits; u32]) -> Errno {…}
```

 

Create a directory relative to specified dirfd.
Available since Linux 2.6.16.

### [mknod ¶](#mknod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1969)

```
mknod :: proc "contextless" (name: cstring, mode: bit_set[Mode_Bits; u32], dev: Dev) -> Errno {…}
```

 

Create a special or ordinary file.

`mode` parameter contains both the the file mode and the type of the node to create.
-> Add one of S\_IFSOCK, S\_IFBLK, S\_IFFIFO, S\_IFCHR to mode.

Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [mknodat ¶](#mknodat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2909)

```
mknodat :: proc "contextless" (dirfd: Fd, name: cstring, mode: bit_set[Mode_Bits; u32], dev: Dev) -> Errno {…}
```

 

Create a special or ordinary file wrt given directory specified by dirfd.
Available since Linux 2.6.16.

### [mlock ¶](#mlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2114)

```
mlock :: proc "contextless" (addr: rawptr, size: uint, flags: bit_set[MLock_Flags_Bits; u32] = {}) -> Errno {…}
```

 

Lock memory.
Available since Linux 2.0.
If flags specified, available since Linux 4.4.

### [mlockall ¶](#mlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2138)

```
mlockall :: proc "contextless" (flags: bit_set[MLock_Flags_Bits; u32] = {}) -> Errno {…}
```

 

Lock all memory.
Available since Linux 2.0.

### [mmap ¶](#mmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L166)

```
mmap :: proc "contextless" (
	addr:   uintptr, 
	size:   uint, 
	prot:   bit_set[Mem_Protection_Bits; i32], 
	flags:  bit_set[Map_Flags_Bits; i32], 
	fd:     Fd = Fd(-1), 
	offset: i64 = 0, 
) -> (rawptr, Errno) {…}
```

 

Map files into memory.
Available since Linux 1.0.
On 32-bit platforms since Linux 1.0.

### [modify\_ldt ¶](#modify_ldt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2166)

```
modify_ldt :: proc "contextless" (func: i32, ptr: rawptr, bytecount: uint) -> (int, Errno) {…}
```

 

Get or set local descriptor table
Available since Linux 2.1

### [mount ¶](#mount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2263)

```
mount :: proc "contextless" (source: cstring, target: cstring, filesystemtype: cstring, mountflags: bit_set[Mount_Flags_Bits; uint], data: rawptr) -> Errno {…}
```

 

Mount filesystem
Available since Linux 1.0

### [mprotect ¶](#mprotect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L180)

```
mprotect :: proc "contextless" (addr: rawptr, size: uint, prot: bit_set[Mem_Protection_Bits; i32]) -> Errno {…}
```

 

Protect memory region.
Available since Linux 1.0.

### [mremap ¶](#mremap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L334)

```
mremap :: proc "contextless" (old_addr: rawptr, old_size: uint, new_size: uint, flags: bit_set[MRemap_Flags_Bits; i32], new_addr: uintptr = 0) -> (rawptr, Errno) {…}
```

 

Remap a virtual memory address.
Available since Linux 2.0.

### [msgctl ¶](#msgctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L939)

```
msgctl :: proc "contextless" (key: Key, cmd: IPC_Cmd, buf: ^Msqid_DS) -> (int, Errno) {…}
```

 

SystemV message control operations.
Available since Linux 2.0.

### [msgget ¶](#msgget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L912)

```
msgget :: proc "contextless" (key: Key, flags: bit_set[IPC_Flags_Bits; i16]) -> (Key, Errno) {…}
```

 

Get SystemV message queue identifier.
Available since Linux 2.0.

### [msgrcv ¶](#msgrcv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L930)

```
msgrcv :: proc "contextless" (key: Key, buf: rawptr, size: int, type: uint, flags: bit_set[IPC_Flags_Bits; i16]) -> (int, Errno) {…}
```

 

Receive a message from a SystemV message queue.
Available since Linux 2.0.

### [msgsnd ¶](#msgsnd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L921)

```
msgsnd :: proc "contextless" (key: Key, buf: rawptr, size: int, flags: bit_set[IPC_Flags_Bits; i16]) -> Errno {…}
```

 

Send message to a SystemV message queue.
Available since Linux 2.0.

### [msync ¶](#msync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L348)

```
msync :: proc "contextless" (addr: rawptr, size: uint, flags: bit_set[MSync_Flags_Bits; i32]) -> Errno {…}
```

 

Sync file with memory map.
Available since Linux 2.0.

### [munlock ¶](#munlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2129)

```
munlock :: proc "contextless" (addr: rawptr, size: uint) -> Errno {…}
```

 

Unlock memory.
Available since Linux 2.0.

### [munlockall ¶](#munlockall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2147)

```
munlockall :: proc "contextless" () -> Errno {…}
```

 

Unlock all memory.
Available since Linux 2.0.

### [munmap ¶](#munmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L189)

```
munmap :: proc "contextless" (addr: rawptr, size: uint) -> Errno {…}
```

 

Unmap memory.
Available since Linux 1.0.

### [nanosleep ¶](#nanosleep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L446)

```
nanosleep :: proc "contextless" (req: ^Time_Spec, rem: ^Time_Spec) -> Errno {…}
```

 

High-resolution sleep.
Available since Linux 2.0.

### [open ¶](#open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L42)

```
open :: proc "contextless" (name: cstring, flags: bit_set[Open_Flags_Bits; u32], mode: bit_set[Mode_Bits; u32] = {}) -> (Fd, Errno) {…}
```

 

Open file, get the file descriptor
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [openat ¶](#openat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2891)

```
openat :: proc "contextless" (fd: Fd, name: cstring, flags: bit_set[Open_Flags_Bits; u32], mode: bit_set[Mode_Bits; u32] = {}) -> (Fd, Errno) {…}
```

 

Open file at the specified file descriptor.
Available since Linux 2.6.16.

### [pause ¶](#pause) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L434)

```
pause :: proc "contextless" () {…}
```

 

Wait until the next signal is delivered.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [perf\_cache\_config ¶](#perf_cache_config) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin#L144)

```
perf_cache_config :: proc "contextless" (id: Perf_Hardware_Cache_Id, op: Perf_Hardware_Cache_Op_Id, res: Perf_Hardware_Cache_Result_Id) -> u64 {…}
```

 

/ Helper function for constructing the config for caches

### [perf\_event\_open ¶](#perf_event_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3136)

```
perf_event_open :: proc "contextless" (attr: ^Perf_Event_Attr, pid: Pid, cpu: int, group_fd: Fd, flags: bit_set[Perf_Flags_Bits; uint] = {}) -> (Fd, Errno) {…}
```

 

Set up performance monitoring.
Available since Linux 2.6.31.

### [personality ¶](#personality) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1983)

```
personality :: proc "contextless" (personality: uint) -> (uint, Errno) {…}
```

 

Set the process execution domain.
Available since Linux 1.2.

### [pidfd\_getfd ¶](#pidfd_getfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3371)

```
pidfd_getfd :: proc "contextless" (pidfd: Pid_FD, fd: Fd, flags: i32 = 0) -> (Fd, Errno) {…}
```

 

Get a file descriptor from another process.
`fd` refers to a file descriptor number to get.
`flags` must be zero.
Available since Linux 5.3.

### [pidfd\_open ¶](#pidfd_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3346)

```
pidfd_open :: proc "contextless" (pid: Pid, flags: bit_set[Pid_FD_Flags_Bits; i32]) -> (Pid_FD, Errno) {…}
```

 

Creates a new PID file descriptor.
The process identified by `pid` must be a pid group leader.
The returned `pidfd` has `CLOEXEC` semantics.
Available since Linux 5.3.

### [pipe2 ¶](#pipe2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L317)

```
pipe2 :: proc "contextless" (pipes: ^[2]Fd, flags: bit_set[Open_Flags_Bits; u32]) -> Errno {…}
```

 

Create a pipe
Available since Linux 2.6.27

### [pivot\_root ¶](#pivot_root) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2176)

```
pivot_root :: proc "contextless" (new_root: cstring, old_root: cstring) -> Errno {…}
```

 

Change the root mount
Available since Linux 2.3.41

### [poll ¶](#poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L131)

```
poll :: proc "contextless" (fds: []Poll_Fd, timeout: i32) -> (i32, Errno) {…}
```

 

Wait on event on a file descriptor.
Available since Linux 2.2.

### [ppoll ¶](#ppoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3007)

```
ppoll :: proc "contextless" (fds: []Poll_Fd, timeout: ^Time_Spec, sigmask: ^[1]uint) -> (i32, Errno) {…}
```

 

Wait for events on a file descriptor.
Available since Linux 2.6.16.

### [prctl ¶](#prctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2188)

```
prctl :: proc "contextless" (op: i32, .. args: ..uint) -> Errno {…}
```

 

Operations on a process or thread
Available since Linux 2.1.57

### [pread ¶](#pread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L255)

```
pread :: proc "contextless" (fd: Fd, buf: []u8, offset: i64) -> (int, Errno) {…}
```

 

Read the file at a specified offset.
Note, it is not an error to return less bytes than requested.
Available since Linux 2.2.

### [ptrace\_attach ¶](#ptrace_attach) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1577)

```
ptrace_attach :: proc "contextless" (rq: PTrace_Attach_Type, pid: Pid) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_cont ¶](#ptrace_cont) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1542)

```
ptrace_cont :: proc "contextless" (rq: PTrace_Cont_Type, pid: Pid, sig: Signal) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_detach ¶](#ptrace_detach) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1589)

```
ptrace_detach :: proc "contextless" (rq: PTrace_Detach_Type, pid: Pid, sig: Signal) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_geteventmsg ¶](#ptrace_geteventmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1537)

```
ptrace_geteventmsg :: proc "contextless" (rq: PTrace_Geteventmsg_Type, pid: Pid, msg: ^uint) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_getfpregs ¶](#ptrace_getfpregs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1477)

```
ptrace_getfpregs :: proc "contextless" (rq: PTrace_Getfpregs_Type, pid: Pid, buf: ^_Arch_User_FP_Regs) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_getfpxregs ¶](#ptrace_getfpxregs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1482)

```
ptrace_getfpxregs :: proc "contextless" (rq: PTrace_Getfpxregs_Type, pid: Pid, buf: ^_Arch_User_FPX_Regs) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_getregs ¶](#ptrace_getregs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1472)

```
ptrace_getregs :: proc "contextless" (rq: PTrace_Getregs_Type, pid: Pid, buf: ^_Arch_User_Regs) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_getregset ¶](#ptrace_getregset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1502)

```
ptrace_getregset :: proc "contextless" (rq: PTrace_Getregset_Type, pid: Pid, note: PTrace_Note_Type, buf: ^IO_Vec) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_getsiginfo ¶](#ptrace_getsiginfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1512)

```
ptrace_getsiginfo :: proc "contextless" (rq: PTrace_Getsiginfo_Type, pid: Pid, si: ^Sig_Info) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_getsigmask ¶](#ptrace_getsigmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1522)

```
ptrace_getsigmask :: proc "contextless" (rq: PTrace_Getsigmask_Type, pid: Pid, sigmask: ^[1]uint) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_interrupt ¶](#ptrace_interrupt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1572)

```
ptrace_interrupt :: proc "contextless" (rq: PTrace_Interrupt_Type, pid: Pid) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_listen ¶](#ptrace_listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1567)

```
ptrace_listen :: proc "contextless" (rq: PTrace_Listen_Type, pid: Pid) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_peek ¶](#ptrace_peek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1461)

```
ptrace_peek :: proc "contextless" (rq: PTrace_Peek_Type, pid: Pid, addr: uintptr) -> (uint, Errno) {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_peeksiginfo ¶](#ptrace_peeksiginfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1517)

```
ptrace_peeksiginfo :: proc "contextless" (rq: PTrace_Peeksiginfo_Type, pid: Pid, si: ^Sig_Info) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_poke ¶](#ptrace_poke) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1467)

```
ptrace_poke :: proc "contextless" (rq: PTrace_Poke_Type, pid: Pid, addr: uintptr, data: uint) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_seize ¶](#ptrace_seize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1582)

```
ptrace_seize :: proc "contextless" (rq: PTrace_Seize_Type, pid: Pid, opt: bit_set[PTrace_Options_Bits; u32]) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_setfpregs ¶](#ptrace_setfpregs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1492)

```
ptrace_setfpregs :: proc "contextless" (rq: PTrace_Setfpregs_Type, pid: Pid, buf: ^_Arch_User_FP_Regs) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_setfpxregs ¶](#ptrace_setfpxregs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1497)

```
ptrace_setfpxregs :: proc "contextless" (rq: PTrace_Setfpxregs_Type, pid: Pid, buf: ^_Arch_User_FPX_Regs) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_setoptions ¶](#ptrace_setoptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1532)

```
ptrace_setoptions :: proc "contextless" (rq: PTrace_Setoptions_Type, pid: Pid, options: bit_set[PTrace_Options_Bits; u32]) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_setregs ¶](#ptrace_setregs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1487)

```
ptrace_setregs :: proc "contextless" (rq: PTrace_Setregs_Type, pid: Pid, buf: ^_Arch_User_Regs) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_setregset ¶](#ptrace_setregset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1507)

```
ptrace_setregset :: proc "contextless" (rq: PTrace_Setregset_Type, pid: Pid, note: PTrace_Note_Type, buf: ^IO_Vec) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_setsigmask ¶](#ptrace_setsigmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1527)

```
ptrace_setsigmask :: proc "contextless" (rq: PTrace_Setsigmask_Type, pid: Pid, sigmask: ^[1]uint) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_singlestep ¶](#ptrace_singlestep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1547)

```
ptrace_singlestep :: proc "contextless" (rq: PTrace_Singlestep_Type, pid: Pid, sig: Signal) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_syscall ¶](#ptrace_syscall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1552)

```
ptrace_syscall :: proc "contextless" (rq: PTrace_Syscall_Type, pid: Pid, sig: Signal) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_sysemu ¶](#ptrace_sysemu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1557)

```
ptrace_sysemu :: proc "contextless" (rq: PTrace_Sysemu_Type, pid: Pid, sig: Signal) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_sysemu\_singlestep ¶](#ptrace_sysemu_singlestep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1562)

```
ptrace_sysemu_singlestep :: proc "contextless" (rq: PTrace_Sysemu_Singlestep_Type, pid: Pid, sig: Signal) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [ptrace\_traceme ¶](#ptrace_traceme) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1456)

```
ptrace_traceme :: proc "contextless" (rq: PTrace_Traceme_Type) -> Errno {…}
```

##### Related Procedure Groups

* [ptrace](/core/sys/linux/#ptrace)

### [pwrite ¶](#pwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L269)

```
pwrite :: proc "contextless" (fd: Fd, buf: []u8, offset: i64) -> (int, Errno) {…}
```

 

Read the file at a specified offset.
Note, it is not an error to return less bytes than requested.
Available since Linux 2.2.

### [quotactl ¶](#quotactl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2360)

```
quotactl :: proc "contextless" (op: i32, special: cstring, id: i32, addr: rawptr) -> Errno {…}
```

 

Manipulate disk quotas
Available since Linux 2.0

### [read ¶](#read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L15)

```
read :: proc "contextless" (fd: Fd, buf: []u8) -> (int, Errno) {…}
```

 

Read data from file into the buffer
Returns the number of bytes successfully read, which may be less than the size
of the buffer even if the termination is successfull.
Available since Linux 1.0.
Before Linux 3.14, this operation is not atomic (i.e. not thread safe).

### [readahead ¶](#readahead) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2394)

```
readahead :: proc "contextless" (fd: Fd, offset: int, count: uint) -> Errno {…}
```

 

Initiate a file readahead into page cache
Available since Linux 2.1

### [readlink ¶](#readlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1315)

```
readlink :: proc "contextless" (name: cstring, buf: []u8) -> (int, Errno) {…}
```

 

Read the value of a symbolic link.
Available since Linux 1.0.
On arm64 available since Linux 2.6.16.

### [readlinkat ¶](#readlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2980)

```
readlinkat :: proc "contextless" (dirfd: Fd, name: cstring, buf: []u8) -> (int, Errno) {…}
```

 

Read the value of a symbolic link at given dirfd.
Available since Linux 2.6.16.

### [readv ¶](#readv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L282)

```
readv :: proc "contextless" (fd: Fd, iov: []IO_Vec) -> (int, Errno) {…}
```

 

Read the data from file into multiple buffers.
Available since Linux 2.0.

### [reboot ¶](#reboot) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2299)

```
reboot :: proc "contextless" (magic: Reboot_Magic, magic2: Reboot_Magic, op: Reboot_Operation, arg: rawptr) -> Errno {…}
```

 

Reboot or enable/disable Ctrl-Alt-Del
Available since Linux 1.0

### [recvfrom ¶](#recvfrom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L551)

```
recvfrom :: proc "contextless" (sock: Fd, buf: []u8, flags: bit_set[Socket_Msg_Bits; i32], addr: ^$T) -> (int, Errno) {…}
```

 

TODO(flysand): Rewrite recvfrom and sendto to use default parameters




##### Related Procedure Groups

* [recv](/core/sys/linux/#recv)

### [recvmmsg ¶](#recvmmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3145)

```
recvmmsg :: proc "contextless" (sock: Fd, msg_vec: []MMsg_Hdr, flags: bit_set[Socket_Msg_Bits; i32]) -> (int, Errno) {…}
```

 

Receive multiple messages from a socket.
Available since Linux 2.6.33.

### [recvmsg ¶](#recvmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L611)

```
recvmsg :: proc "contextless" (sock: Fd, msghdr: ^Msg_Hdr, flags: bit_set[Socket_Msg_Bits; i32]) -> (int, Errno) {…}
```

 

Receive a message on a socket.
Available since Linux 2.0.

### [removexattr ¶](#removexattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2484)

```
removexattr :: proc "contextless" (path: cstring, name: cstring) -> Errno {…}
```

 

Remove an extended attribute
Available since Linux 2.6.25

### [rename ¶](#rename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1211)

```
rename :: proc "contextless" (old: cstring, new: cstring) -> Errno {…}
```

 

Rename (move) the file.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [renameat ¶](#renameat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2953)

```
renameat :: proc "contextless" (oldfd: Fd, old: cstring, newfd: Fd, new: cstring) -> Errno {…}
```

 

Rename the file with names relative to the specified dirfd's.
Available since Linux 2.6.16.

### [renameat2 ¶](#renameat2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3214)

```
renameat2 :: proc "contextless" (oldfd: Fd, old: cstring, newfd: Fd, new: cstring, flags: bit_set[Rename_Flags_Bits; u32]) -> Errno {…}
```

 

Rename the file with names relative to the specified dirfd's with other options.
Available since Linux 3.15.

### [rmdir ¶](#rmdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1241)

```
rmdir :: proc "contextless" (name: cstring) -> Errno {…}
```

 

Remove a directory specified by name.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [rt\_sigaction ¶](#rt_sigaction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L216)

```
rt_sigaction :: proc "contextless" (sig: Signal, sigaction: ^Sig_Action($T), old_sigaction: ^Sig_Action($T)) -> Errno {…}
```

 

Alter an action taken by a process.

### [rt\_sigpending ¶](#rt_sigpending) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1919)

```
rt_sigpending :: proc "contextless" (sigs: ^[1]uint) -> Errno {…}
```

 

Examine pending signals.
Available since Linux 2.2.

### [rt\_sigprocmask ¶](#rt_sigprocmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L232)

```
rt_sigprocmask :: proc "contextless" (mask_kind: Sig_Mask_Kind, new_set: ^[1]uint, old_set: ^[1]uint) -> Errno {…}
```

 

Examime and alter blocked signals.
Available since Linux 2.2.

### [rt\_sigqueueinfo ¶](#rt_sigqueueinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1937)

```
rt_sigqueueinfo :: proc "contextless" (pid: Pid, sig: Signal, si: ^Sig_Info) -> Errno {…}
```

 

Send signal information to a process.
Available since Linux 2.2.

### [rt\_sigreturn ¶](#rt_sigreturn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L208)

```
rt_sigreturn :: proc "c" () -> ! {…}
```

 

Returns from signal handlers on some archs.

### [rt\_sigsuspend ¶](#rt_sigsuspend) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1946)

```
rt_sigsuspend :: proc "contextless" (sigset: ^[1]uint) -> Errno {…}
```

 

Replace the signal mask for a value with the new mask until a signal is received.
Available since Linux 2.2.

### [rt\_sigtimedwait ¶](#rt_sigtimedwait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1928)

```
rt_sigtimedwait :: proc "contextless" (sigs: ^[1]uint, info: ^Sig_Info, time_sus: ^Time_Spec) -> (Signal, Errno) {…}
```

 

Synchronously wait for queued signals.
Available since Linux 2.2.

### [rt\_tgsigqueueinfo ¶](#rt_tgsigqueueinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3127)

```
rt_tgsigqueueinfo :: proc "contextless" (tgid: Pid, pid: Pid, sig: Signal, si: ^Sig_Info) -> Errno {…}
```

 

/ Send signal information to a thread
/ Available since Linux 2.2

### [sched\_get\_priority\_max ¶](#sched_get_priority_max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2086)

```
sched_get_priority_max :: proc "contextless" (policy: i32) -> (i32, Errno) {…}
```

 

Get static priority range.
Available since Linux 2.0.

### [sched\_get\_priority\_min ¶](#sched_get_priority_min) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2095)

```
sched_get_priority_min :: proc "contextless" (policy: i32) -> (i32, Errno) {…}
```

 

Get static priority range.
Available since Linux 2.0.

### [sched\_getaffinity ¶](#sched_getaffinity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2631)

```
sched_getaffinity :: proc "contextless" (pid: Pid, cpusetsize: uint, mask: rawptr) -> (int, Errno) {…}
```

 

Get a thread's CPU affinity mask.
Available since Linux 2.6.

If you are running on a system with less than 128 cores you can use `linux.Cpu_Set` as the type for the mask argument.
Otherwise use an array of integers.

### [sched\_getattr ¶](#sched_getattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3205)

```
sched_getattr :: proc "contextless" (pid: Pid, attr: ^Sched_Attr, size: u32, flags: bit_set[Sched_Attr_Flag_Bits; u32]) -> Errno {…}
```

 

Get scheduling policy and attributes.
Available since Linux 3.14.

### [sched\_getparam ¶](#sched_getparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2059)

```
sched_getparam :: proc "contextless" (pid: Pid, param: ^Sched_Param) -> Errno {…}
```

 

Get scheduling parameters.
Available since Linux 2.0.

### [sched\_getscheduler ¶](#sched_getscheduler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2077)

```
sched_getscheduler :: proc "contextless" (pid: Pid, policy: i32, param: ^Sched_Param) -> (i32, Errno) {…}
```

 

Get scheduling policy/parameters.
Available since Linux 2.0.

### [sched\_rr\_get\_interval ¶](#sched_rr_get_interval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2104)

```
sched_rr_get_interval :: proc "contextless" (pid: Pid, tp: ^Time_Spec) -> Errno {…}
```

 

get the SCHED\_RR interval for the named process.
Available since Linux 2.0.

### [sched\_setaffinity ¶](#sched_setaffinity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2619)

```
sched_setaffinity :: proc "contextless" (pid: Pid, cpusetsize: uint, mask: rawptr) -> (int, Errno) {…}
```

 

Set a thread's CPU affinity mask.
Available since Linux 2.6.

If you are running on a system with less than 128 cores you can use `linux.Cpu_Set` as the type for the mask argument.
Otherwise use an array of integers.

### [sched\_setattr ¶](#sched_setattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3196)

```
sched_setattr :: proc "contextless" (pid: Pid, attr: ^Sched_Attr, flags: bit_set[Sched_Attr_Flag_Bits; u32]) -> Errno {…}
```

 

Set scheduling policy and attributes.
Available since Linux 3.14.

### [sched\_setparam ¶](#sched_setparam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2050)

```
sched_setparam :: proc "contextless" (pid: Pid, param: ^Sched_Param) -> Errno {…}
```

 

Set scheduling parameters.
Available since Linux 2.0.

### [sched\_setscheduler ¶](#sched_setscheduler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2068)

```
sched_setscheduler :: proc "contextless" (pid: Pid, policy: i32, param: ^Sched_Param) -> Errno {…}
```

 

Set scheduling policy/parameters.
Available since Linux 2.0.

### [sched\_yield ¶](#sched_yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L326)

```
sched_yield :: proc "contextless" () {…}
```

 

Yield the processor.
Available since Linux 2.0.

### [semctl3 ¶](#semctl3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L883)

```
semctl3 :: proc "contextless" (key: Key, semnum: i32, cmd: IPC_Cmd) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [semctl](/core/sys/linux/#semctl)

### [semctl4 ¶](#semctl4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L888)

```
semctl4 :: proc "contextless" (key: Key, semnum: i32, cmd: IPC_Cmd, semun: ^Sem_Un) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [semctl](/core/sys/linux/#semctl)

### [semget ¶](#semget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L859)

```
semget :: proc "contextless" (key: Key, n: i32, flags: bit_set[IPC_Flags_Bits; i16]) -> (Key, Errno) {…}
```

 

Get a SystemV semaphore set identifier.
Available since Linux 2.0.

### [semop ¶](#semop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L868)

```
semop :: proc "contextless" (key: Key, ops: []Sem_Buf) -> Errno {…}
```

 

SystemV semaphore operations.
Available since Linux 2.0.

### [sendfile ¶](#sendfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L498)

```
sendfile :: proc "contextless" (out_fd: Fd, in_fd: Fd, offset: ^i64, count: uint) -> (int, Errno) {…}
```

 

Transfer the data between file descriptors.
Available since Linux 2.2.
On 32-bit platforms available since Linux 2.6.

### [sendmmsg ¶](#sendmmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3168)

```
sendmmsg :: proc "contextless" (sock: Fd, msg_vec: []MMsg_Hdr, flags: bit_set[Socket_Msg_Bits; i32]) -> (int, Errno) {…}
```

 

Send multiple messages on a socket.
Available since Linux 3.0.

### [sendmsg ¶](#sendmsg) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L602)

```
sendmsg :: proc "contextless" (sock: Fd, msghdr: ^Msg_Hdr, flags: bit_set[Socket_Msg_Bits; i32]) -> (int, Errno) {…}
```

 

Send a message on a socket.
Available since Linux 2.0.

### [sendto ¶](#sendto) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L569)

```
sendto :: proc "contextless" (sock: Fd, buf: []u8, flags: bit_set[Socket_Msg_Bits; i32], addr: ^$T) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [send](/core/sys/linux/#send)

### [set\_tid\_address ¶](#set_tid_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2676)

```
set_tid_address :: proc "contextless" (tidptr: ^u32) {…}
```

 

Set the address of the futex that's gonna be waken when.
current thread terminates.
Available since Linux 2.6.

### [setdomainname ¶](#setdomainname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2319)

```
setdomainname :: proc "contextless" (name: string) -> Errno {…}
```

 

Set domain name.
Note: to get the domain name, use `uname` syscall.
Available since Linux 2.2.

### [setgid ¶](#setgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1689)

```
setgid :: proc "contextless" (gid: Gid) -> Errno {…}
```

 

Set effective group id.
If the process is privileged also sets real group id.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [setgroups ¶](#setgroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1819)

```
setgroups :: proc "contextless" (gids: []Gid) -> Errno {…}
```

 

Set supplementary group IDs.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [sethostname ¶](#sethostname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2309)

```
sethostname :: proc "contextless" (hostname: string) -> Errno {…}
```

 

Set hostname.
Note: to get the host name, use `uname` syscall.
Available since Linux 1.0.

### [setitimer ¶](#setitimer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L479)

```
setitimer :: proc "contextless" (which: ITimer_Which, new: ^ITimer_Val, old: ^ITimer_Val) -> Errno {…}
```

 

Set the value of an internal timer.
Available since Linux 1.0.

### [setpgid ¶](#setpgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1729)

```
setpgid :: proc "contextless" (pid: Pid, pgid: Pid) -> Errno {…}
```

 

Set process group.
Available since Linux 1.0.

### [setpriority ¶](#setpriority) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2041)

```
setpriority :: proc "contextless" (which: Priority_Which, who: i32, prio: i32) -> Errno {…}
```

 

Set priority on user, process group or process.
Available since Linux 1.0.

### [setregid ¶](#setregid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1789)

```
setregid :: proc "contextless" (real: Gid, effective: Gid) -> Errno {…}
```

 

Set real and/or effective group id.
If any of the arguments is -1, the corresponding id is not changed.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [setresgid ¶](#setresgid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1868)

```
setresgid :: proc "contextless" (real: Gid, effective: Gid, saved: Uid) -> Errno {…}
```

 

Set real, effective and/or saved group id.
If any of the arguments is -1, the corresponding id is not changed.
Available since Linux 2.2.
On 32-bit platforms available since Linux 2.4.

### [setresuid ¶](#setresuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1836)

```
setresuid :: proc "contextless" (real: Uid, effective: Uid, saved: Uid) -> Errno {…}
```

 

Set real, effective and/or saved user id.
If any of the arguments is -1, the corresponding id is not changed.
Available since Linux 2.2.
On 32-bit platforms available since Linux 2.4.

### [setreuid ¶](#setreuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1772)

```
setreuid :: proc "contextless" (real: Uid, effective: Uid) -> Errno {…}
```

 

Set real and/or effective user id.
If any of the arguments is -1, the corresponding id is not changed.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [setrlimit ¶](#setrlimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2218)

```
setrlimit :: proc "contextless" (kind: RLimit_Kind, resource: ^RLimit) -> Errno {…}
```

 

Set limits on resources.
Available since Linux 1.0.

### [setsid ¶](#setsid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1760)

```
setsid :: proc "contextless" () -> (Pid, Errno) {…}
```

 

Create a session and set the process group ID.
Available since Linux 2.0.

### [setsockopt\_base ¶](#setsockopt_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L681)

```
setsockopt_base :: proc "contextless" (sock: Fd, level: int, opt: int, val: $T) -> Errno {…}
```

 

TODO(flysand): the parameters are the same, maybe there's a way to make it into a single proc, sacrificing type
safety slightly
TODO(flysand): add ability to specify slices




##### Related Procedure Groups

* [setsockopt](/core/sys/linux/#setsockopt)

### [setsockopt\_sock ¶](#setsockopt_sock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L692)

```
setsockopt_sock :: proc "contextless" (sock: Fd, level: Socket_API_Level_Sock, opt: Socket_Option, val: $T) -> Errno {…}
```

##### Related Procedure Groups

* [setsockopt](/core/sys/linux/#setsockopt)

### [setsockopt\_tcp ¶](#setsockopt_tcp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L700)

```
setsockopt_tcp :: proc "contextless" (sock: Fd, level: Socket_API_Level_TCP, opt: Socket_TCP_Option, val: $T) -> Errno {…}
```

##### Related Procedure Groups

* [setsockopt](/core/sys/linux/#setsockopt)

### [setsockopt\_udp ¶](#setsockopt_udp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L708)

```
setsockopt_udp :: proc "contextless" (sock: Fd, level: Socket_API_Level_UDP, opt: Socket_UDP_Option, val: $T) -> Errno {…}
```

##### Related Procedure Groups

* [setsockopt](/core/sys/linux/#setsockopt)

### [settimeofday ¶](#settimeofday) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2254)

```
settimeofday :: proc "contextless" (tv: ^Time_Val) -> Errno {…}
```

 

Set Time
Available since Linux 1.0

### [setuid ¶](#setuid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1672)

```
setuid :: proc "contextless" (uid: Uid) -> Errno {…}
```

 

Set effective User ID.
Available since Linux 1.0.
On 32-bit platforms available since Linux 2.4.

### [setxattr ¶](#setxattr) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2403)

```
setxattr :: proc "contextless" (path: cstring, name: cstring, value: rawptr, size: uint, flags: i32) -> Errno {…}
```

 

Set an extended attribute value
Available since Linux 2.6.25

### [shmat ¶](#shmat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L384)

```
shmat :: proc "contextless" (key: Key, addr: rawptr, flags: bit_set[IPC_Flags_Bits; i16]) -> (rawptr, Errno) {…}
```

 

SystemV shared memory segment operations.
Available since Linux 2.0.

### [shmctl\_ds ¶](#shmctl_ds) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L389)

```
shmctl_ds :: proc "contextless" (key: Key, cmd: IPC_Cmd, buf: ^_Arch_Shmid_DS) -> Errno {…}
```

##### Related Procedure Groups

* [shmctl](/core/sys/linux/#shmctl)

### [shmctl\_info ¶](#shmctl_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L394)

```
shmctl_info :: proc "contextless" (key: Key, cmd: IPC_Cmd, buf: ^Shm_Info) -> (int, Errno) {…}
```

##### Related Procedure Groups

* [shmctl](/core/sys/linux/#shmctl)

### [shmdt ¶](#shmdt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L903)

```
shmdt :: proc "contextless" (shmaddr: rawptr) -> Errno {…}
```

 

SystemV shared memory operations.
Available since Linux 2.0.

### [shmget ¶](#shmget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L375)

```
shmget :: proc "contextless" (key: Key, size: uint, flags: bit_set[IPC_Flags_Bits; i16]) -> (Key, Errno) {…}
```

 

Allocate a SystemV shared memory segment.
Available since Linux 2.0.

### [shutdown ¶](#shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L620)

```
shutdown :: proc "contextless" (sock: Fd, how: Shutdown_How) -> Errno {…}
```

 

Shutdown a socket.
Available since Linux 2.0.

### [sigaltstack ¶](#sigaltstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1955)

```
sigaltstack :: proc "contextless" (stack: ^Sig_Stack, old_stack: ^Sig_Stack) -> Errno {…}
```

 

Set or get signal stack context.
Available since Linux 2.2.

### [socket ¶](#socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L512)

```
socket :: proc "contextless" (domain: Address_Family, socktype: Socket_Type, sockflags: bit_set[Socket_FD_Flags_Bits; i32], protocol: Protocol) -> (Fd, Errno) {…}
```

 

Create a socket file descriptor.
Available since Linux 2.0.

### [socketpair ¶](#socketpair) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L673)

```
socketpair :: proc "contextless" (domain: Protocol_Family, type: Socket_Type, proto: Protocol, pair: ^[2]Fd) -> Errno {…}
```

 

Create a pair of connected sockets.
Available since Linux 2.0.

### [splice ¶](#splice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3022)

```
splice :: proc "contextless" (
	fd_in:   Fd, 
	off_in:  ^i64, 
	fd_out:  Fd, 
	off_out: ^i64, 
	len:     uint, 
	flags:   bit_set[Splice_Flags_Bits; u32], 
) -> (int, Errno) {…}
```

 

Transfer the data between file descriptors.
Available since Linux 2.6.17.

### [stat ¶](#stat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L70)

```
stat :: proc "contextless" (filename: cstring, stat: ^Stat) -> Errno {…}
```

 

Get file status.

Returns information about the file in struct pointed to by `stat` parameter.

Available since Linux 1.0
For 32-bit systems a different syscall is used that became available since 2.4.
Not available on ARM64.

### [statfs ¶](#statfs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1996)

```
statfs :: proc "contextless" (path: cstring, statfs: ^Stat_FS) -> Errno {…}
```

 

Query information about filesystem.

Available since Linux 1.0.
For 32-bit systems a different syscall is used that became available since 2.6.

### [statx ¶](#statx) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3276)

```
statx :: proc "contextless" (dir: Fd, pathname: cstring, flags: bit_set[FD_Flags_Bits; i32], mask: bit_set[Statx_Mask_Bits; u32], statx: ^Statx) -> Errno {…}
```

 

Query extended information about the file

The file can be specified as:
absolute pathname: `dir` parameter is ignored
relatvie pathname: `dir` parameter specifies the base directory's fd
file descriptor: `AT_EMPTY_PATH` is passed in flags, pathname is empty, `dir` specifies the file descriptor

Available since Linux 4.11

### [swapoff ¶](#swapoff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2290)

```
swapoff :: proc "contextless" (path: cstring) -> Errno {…}
```

 

Stop swapping to file/device
Available since Linux 2.0

### [swapon ¶](#swapon) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2281)

```
swapon :: proc "contextless" (path: cstring, swapflags: bit_set[Swap_Flags_Bits; u32]) -> Errno {…}
```

 

Start swapping to file/device
Available since Linux 2.0

### [symlink ¶](#symlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1300)

```
symlink :: proc "contextless" (target: cstring, linkpath: cstring) -> Errno {…}
```

 

Create a symbolic link.
Available since Linux 1.0.
On arm64 available since Linux 2.6.16.

### [symlinkat ¶](#symlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2971)

```
symlinkat :: proc "contextless" (target: cstring, dirfd: Fd, linkpath: cstring) -> Errno {…}
```

 

Create a symbolic link at specified dirfd.
Available since Linux 2.6.16.

### [sync ¶](#sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2236)

```
sync :: proc "contextless" () -> Errno {…}
```

 

Commit filesystem caches to disk
Available since Linux 1.0.

### [sysinfo ¶](#sysinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1442)

```
sysinfo :: proc "contextless" (sysinfo: ^Sys_Info) -> Errno {…}
```

 

Get information about the system.
Available since Linux 1.0.

### [syslog ¶](#syslog) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1648)

```
syslog :: proc "contextless" (act: Syslog_Action, buf: []u8) -> (int, Errno) {…}
```

 

Read or clear kernel message ring buffer.
Available since Linux 1.0.

### [tee ¶](#tee) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3031)

```
tee :: proc "contextless" (fd_in: Fd, fd_out: Fd, len: uint, flags: bit_set[Splice_Flags_Bits; u32]) -> (int, Errno) {…}
```

 

Transfer the data between file descriptors.
Available since Linux 2.6.16.

### [tgkill ¶](#tgkill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2812)

```
tgkill :: proc "contextless" (tgid, tid: Pid, sig: Signal) -> Errno {…}
```

 

Send a signal to a specific thread in a thread group.
Available since Linux 2.6.

### [time ¶](#time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2511)

```
time :: proc "contextless" (tloc: ^uint) -> Errno {…}
```

 

Get current time in seconds.
Available since Linux 1.0.

### [timer\_create ¶](#timer_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2688)

```
timer_create :: proc "contextless" (clock_id: Clock_Id, sigevent: ^Sig_Event, timer: ^Timer) -> Errno {…}
```

 

Create POSIX per-process timer.
Available since Linux 2.6.

### [timer\_delete ¶](#timer_delete) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2724)

```
timer_delete :: proc "contextless" (timer: Timer) -> Errno {…}
```

 

Delete a POSIX per-process timer.
Available since Linux 2.6.

### [timer\_getoverrun ¶](#timer_getoverrun) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2715)

```
timer_getoverrun :: proc "contextless" (timer: Timer) -> (int, Errno) {…}
```

 

Get overrun count of the POSIX per-process timer.
Available since Linux 2.6.

### [timer\_gettime ¶](#timer_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2697)

```
timer_gettime :: proc "contextless" (timer: Timer, curr_value: ^ITimer_Spec) -> Errno {…}
```

 

Get the state of the POSIX per-process timer.
Available since Linux 2.6.

### [timer\_settime ¶](#timer_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2706)

```
timer_settime :: proc "contextless" (timer: Timer, flags: bit_set[ITimer_Flags_Bits; u32], #no_alias new_value, #no_alias old_value: ^ITimer_Spec) -> Errno {…}
```

 

Arm/disarm the state of the POSIX per-process timer.
Available since Linux 2.6.

### [timerfd\_create ¶](#timerfd_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3068)

```
timerfd_create :: proc "contextless" (clock_id: Clock_Id, flags: bit_set[Open_Flags_Bits; u32]) -> (Fd, Errno) {…}
```

 

Create Linux file descriptor based timer.
Available since Linux 2.6.25

### [timerfd\_gettime ¶](#timerfd_gettime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3093)

```
timerfd_gettime :: proc "contextless" (fd: Fd, curr_value: ^ITimer_Spec) -> Errno {…}
```

 

Get the state of the Linux file descriptor based timer.
Available since Linux 2.6.25

### [timerfd\_settime ¶](#timerfd_settime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3084)

```
timerfd_settime :: proc "contextless" (fd: Fd, flags: bit_set[ITimer_Flags_Bits; u32], new_value: ^ITimer_Spec, old_value: ^ITimer_Spec) -> Errno {…}
```

 

Arm/disarm the state of the Linux file descriptor based timer.
Available since Linux 2.6.25

### [times ¶](#times) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1451)

```
times :: proc "contextless" (tms: ^Tms) -> Errno {…}
```

 

Get current process times.
Available since Linux 1.0.

### [truncate ¶](#truncate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1139)

```
truncate :: proc "contextless" (name: cstring, length: i64) -> Errno {…}
```

 

Truncate a file to specified length.
Available since Linux 1.0.
On 32-bit architectures available since Linux 2.4.

### [umask ¶](#umask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1406)

```
umask :: proc "contextless" (mask: bit_set[Mode_Bits; u32]) -> bit_set[Mode_Bits; u32] {…}
```

 

Set file mode creation mask.
Available since Linux 1.0.

### [umount2 ¶](#umount2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2272)

```
umount2 :: proc "contextless" (target: cstring, flags: bit_set[Umount2_Flags_Bits; u32]) -> Errno {…}
```

 

Unmount filesystem
Available since Linux 2.1

### [uname ¶](#uname) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L850)

```
uname :: proc "contextless" (uts_name: ^UTS_Name) -> Errno {…}
```

 

Get system information.
Available since Linux 1.0.

### [unlink ¶](#unlink) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1285)

```
unlink :: proc "contextless" (name: cstring) -> Errno {…}
```

 

Delete a name, and possible a file it refers to.
Available since Linux 1.0.
On ARM64 available since Linux 2.6.16.

### [unlinkat ¶](#unlinkat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2944)

```
unlinkat :: proc "contextless" (dirfd: Fd, name: cstring, flags: bit_set[FD_Flags_Bits; i32]) -> Errno {…}
```

 

Remove a directory entry relative to a directory file descriptor.
Available since Linux 2.6.16.

### [utimensat ¶](#utimensat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L3048)

```
utimensat :: proc "contextless" (dirfd: Fd, name: cstring, utimes: [^]Time_Spec, flags: bit_set[FD_Flags_Bits; i32]) -> Errno {…}
```

 

Change file timestamps with nanosecond precision.
**utimes** must point to an array of two `Time_Spec`'s. The "utime" is the
last access time, the second is last modification time.
Available since Linux 2.6.22.

### [vfork ¶](#vfork) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L791)

```
vfork :: proc "contextless" () -> Pid {…}
```

 

Create a child process and block parent.
Available since Linux 2.2.

### [vhangup ¶](#vhangup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2156)

```
vhangup :: proc "contextless" () -> Errno {…}
```

 

Virtually hangup the current terminal
Available since Linux 1.0.

### [wait4 ¶](#wait4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L827)

```
wait4 :: proc "contextless" (pid: Pid, status: ^u32, options: bit_set[Wait_Option; i32], rusage: ^RUsage) -> (Pid, Errno) {…}
```

 

Wait for the process to change state.
Available since Linux 1.0.

### [waitid ¶](#waitid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2845)

```
waitid :: proc "contextless" (id_type: Id_Type, id: Id, sig_info: ^Sig_Info, options: bit_set[Wait_Option; i32], rusage: ^RUsage) -> Errno {…}
```

 

Wait on process, process group or pid file descriptor.
Available since Linux 2.6.10.

### [waitpid ¶](#waitpid) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L827)

```
waitpid :: wait4
```

 

Wait for the process to change state.
Available since Linux 1.0.

### [write ¶](#write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L32)

```
write :: proc "contextless" (fd: Fd, buf: []u8) -> (int, Errno) {…}
```

 

Write the data from a buffer into the file
Returns the number of bytes successfully written, which may be less than the size
of the buffer, even if the termination is successfull
When using direct I/O, error doesn't mean the write has failed. Partial data may
have been written.
If .Eintr is returned, the write operation has failed due to interrupt. You'll probably
need to restart this syscall

Available since Linux 1.0
Before Linux 3.14 this operation is not atomic (i.e. not thread safe)

### [writev ¶](#writev) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L291)

```
writev :: proc "contextless" (fd: Fd, iov: []IO_Vec) -> (int, Errno) {…}
```

 

Write the data from multiple buffers into a file.
Available since Linux 2.0.

## Procedure Groups

### [fcntl ¶](#fcntl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1079)

```
fcntl :: proc{
	fcntl_dupfd,
	fcntl_dupfd_cloexec,
	fcntl_getfd,
	fcntl_setfd,
	fcntl_getfl,
	fcntl_setfl,
	fcntl_setlk,
	fcntl_setlkw,
	fcntl_getlk,
	fcntl_getown_ex,
	fcntl_setown_ex,
	fcntl_getsig,
	fcntl_setsig,
	fcntl_setlease,
	fcntl_getlease,
	fcntl_notify,
	fcntl_setpipe_sz,
	fcntl_getpipe_sz,
	fcntl_add_seals,
	fcntl_get_seals,
	fcntl_get_rw_hint,
	fcntl_set_rw_hint,
	fcntl_get_file_rw_hint,
	fcntl_set_file_rw_hint,
}
```

### [futex ¶](#futex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L2602)

```
futex :: proc{
	futex_wait,
	futex_wake,
	futex_cmp_requeue,
	futex_requeue,
	futex_wake_op,
	futex_wait_bitset,
	futex_wake_bitset,
}
```

### [getsockopt ¶](#getsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L766)

```
getsockopt :: proc{
	getsockopt_sock,
	getsockopt_tcp,
	getsockopt_udp,
	getsockopt_base,
}
```

 

Get socket option for a given socket API level.
Available since Linux 2.0.

### [ptrace ¶](#ptrace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L1601)

```
ptrace :: proc{
	ptrace_traceme,
	ptrace_peek,
	ptrace_poke,
	ptrace_getregs,
	ptrace_getfpregs,
	ptrace_getfpxregs,
	ptrace_setregs,
	ptrace_setfpregs,
	ptrace_setfpxregs,
	ptrace_getregset,
	ptrace_setregset,
	ptrace_getsiginfo,
	ptrace_peeksiginfo,
	ptrace_getsigmask,
	ptrace_setsigmask,
	ptrace_setoptions,
	ptrace_geteventmsg,
	ptrace_cont,
	ptrace_singlestep,
	ptrace_syscall,
	ptrace_sysemu,
	ptrace_sysemu_singlestep,
	ptrace_listen,
	ptrace_interrupt,
	ptrace_attach,
	ptrace_seize,
	ptrace_detach,
}
```

 

Trace process.

### [recv ¶](#recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L590)

```
recv :: proc{
	recvfrom,
	recv_noaddr,
}
```

 

Receive a message from a socket.
Available since Linux 2.0.

### [semctl ¶](#semctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L897)

```
semctl :: proc{
	semctl3,
	semctl4,
}
```

 

SystemV semaphore control operations.
Available since Linux 2.0.

### [send ¶](#send) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L596)

```
send :: proc{
	sendto,
	send_noaddr,
}
```

 

Send a message through a socket.
Available since Linux 2.0.

### [setsockopt ¶](#setsockopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L720)

```
setsockopt :: proc{
	setsockopt_sock,
	setsockopt_tcp,
	setsockopt_udp,
	setsockopt_base,
}
```

 

Set socket option for a given socket API level.
Available since Linux 2.0.

### [shmctl ¶](#shmctl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin#L403)

```
shmctl :: proc{
	shmctl_ds,
	shmctl_info,
}
```

 

SystemV shared memory control.
Available since Linux 2.0.

### [syscall ¶](#syscall) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/helpers.odin#L103)

```
syscall :: proc{
	syscall0,
	syscall1,
	syscall2,
	syscall3,
	syscall4,
	syscall5,
	syscall6,
}
```

## Source Files

* [bits.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/bits.odin)
* [constants.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/constants.odin)
* [helpers.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/helpers.odin)
* [sys.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/sys.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/types.odin)
* [wrappers.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/linux/wrappers.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.769198500 +0000 UTC`

* [Types](#pkg-Types)
  + [Address\_Family](#Address_Family)
  + [Branch\_Sample\_Type](#Branch_Sample_Type)
  + [Branch\_Sample\_Type\_Bits](#Branch_Sample_Type_Bits)
  + [Clock\_Id](#Clock_Id)
  + [Clock\_State](#Clock_State)
  + [Close\_Range\_Flags](#Close_Range_Flags)
  + [Close\_Range\_Flags\_Bits](#Close_Range_Flags_Bits)
  + [Cpu\_Set](#Cpu_Set)
  + [Dev](#Dev)
  + [Dirent](#Dirent)
  + [Dirent\_Type](#Dirent_Type)
  + [EPoll\_Ctl\_Opcode](#EPoll_Ctl_Opcode)
  + [EPoll\_Data](#EPoll_Data)
  + [EPoll\_Event](#EPoll_Event)
  + [EPoll\_Event\_Kind](#EPoll_Event_Kind)
  + [EPoll\_Event\_Set](#EPoll_Event_Set)
  + [EPoll\_Flags](#EPoll_Flags)
  + [EPoll\_Flags\_Bits](#EPoll_Flags_Bits)
  + [Errno](#Errno)
  + [Eventfd\_Flags](#Eventfd_Flags)
  + [Eventfd\_Flags\_Bits](#Eventfd_Flags_Bits)
  + [Execveat\_Flags](#Execveat_Flags)
  + [Execveat\_Flags\_Bits](#Execveat_Flags_Bits)
  + [FCntl\_Command](#FCntl_Command)
  + [FCntl\_Command\_ADD\_SEALS](#FCntl_Command_ADD_SEALS)
  + [FCntl\_Command\_DUPFD](#FCntl_Command_DUPFD)
  + [FCntl\_Command\_DUPFD\_CLOEXEC](#FCntl_Command_DUPFD_CLOEXEC)
  + [FCntl\_Command\_GETFD](#FCntl_Command_GETFD)
  + [FCntl\_Command\_GETFL](#FCntl_Command_GETFL)
  + [FCntl\_Command\_GETLEASE](#FCntl_Command_GETLEASE)
  + [FCntl\_Command\_GETLK](#FCntl_Command_GETLK)
  + [FCntl\_Command\_GETOWN](#FCntl_Command_GETOWN)
  + [FCntl\_Command\_GETOWN\_EX](#FCntl_Command_GETOWN_EX)
  + [FCntl\_Command\_GETPIPE\_SZ](#FCntl_Command_GETPIPE_SZ)
  + [FCntl\_Command\_GETSIG](#FCntl_Command_GETSIG)
  + [FCntl\_Command\_GET\_FILE\_RW\_HINT](#FCntl_Command_GET_FILE_RW_HINT)
  + [FCntl\_Command\_GET\_RW\_HINT](#FCntl_Command_GET_RW_HINT)
  + [FCntl\_Command\_GET\_SEALS](#FCntl_Command_GET_SEALS)
  + [FCntl\_Command\_NOTIFY](#FCntl_Command_NOTIFY)
  + [FCntl\_Command\_SETFD](#FCntl_Command_SETFD)
  + [FCntl\_Command\_SETFL](#FCntl_Command_SETFL)
  + [FCntl\_Command\_SETLEASE](#FCntl_Command_SETLEASE)
  + [FCntl\_Command\_SETLK](#FCntl_Command_SETLK)
  + [FCntl\_Command\_SETLKW](#FCntl_Command_SETLKW)
  + [FCntl\_Command\_SETOWN](#FCntl_Command_SETOWN)
  + [FCntl\_Command\_SETOWN\_EX](#FCntl_Command_SETOWN_EX)
  + [FCntl\_Command\_SETPIPE\_SZ](#FCntl_Command_SETPIPE_SZ)
  + [FCntl\_Command\_SETSIG](#FCntl_Command_SETSIG)
  + [FCntl\_Command\_SET\_FILE\_RW\_HINT](#FCntl_Command_SET_FILE_RW_HINT)
  + [FCntl\_Command\_SET\_RW\_HINT](#FCntl_Command_SET_RW_HINT)
  + [FD\_Flags](#FD_Flags)
  + [FD\_Flags\_Bits](#FD_Flags_Bits)
  + [FD\_Lease](#FD_Lease)
  + [FD\_Notifications](#FD_Notifications)
  + [FD\_Notifications\_Bits](#FD_Notifications_Bits)
  + [FLock](#FLock)
  + [FLock\_Op](#FLock_Op)
  + [FLock\_Op\_Bits](#FLock_Op_Bits)
  + [FLock\_Type](#FLock_Type)
  + [FS\_Flags](#FS_Flags)
  + [FS\_Flags\_Bits](#FS_Flags_Bits)
  + [FS\_Magic](#FS_Magic)
  + [F\_Owner](#F_Owner)
  + [F\_Owner\_Type](#F_Owner_Type)
  + [Fd](#Fd)
  + [Fd\_Poll\_Events](#Fd_Poll_Events)
  + [Fd\_Poll\_Events\_Bits](#Fd_Poll_Events_Bits)
  + [Futex](#Futex)
  + [Futex\_Arg\_Op](#Futex_Arg_Op)
  + [Futex\_Cmp\_Op](#Futex_Cmp_Op)
  + [Futex\_Cmp\_Requeue\_Type](#Futex_Cmp_Requeue_Type)
  + [Futex\_Cmp\_requeue\_Pi\_Type](#Futex_Cmp_requeue_Pi_Type)
  + [Futex\_Fd\_Type](#Futex_Fd_Type)
  + [Futex\_Flags](#Futex_Flags)
  + [Futex\_Flags\_Bits](#Futex_Flags_Bits)
  + [Futex\_Lock\_Pi2\_Type](#Futex_Lock_Pi2_Type)
  + [Futex\_Lock\_Pi\_Type](#Futex_Lock_Pi_Type)
  + [Futex\_Op](#Futex_Op)
  + [Futex\_Requeue\_Type](#Futex_Requeue_Type)
  + [Futex\_Trylock\_Pi\_Type](#Futex_Trylock_Pi_Type)
  + [Futex\_Unlock\_Pi\_Type](#Futex_Unlock_Pi_Type)
  + [Futex\_Wait\_Bitset\_Type](#Futex_Wait_Bitset_Type)
  + [Futex\_Wait\_Type](#Futex_Wait_Type)
  + [Futex\_Wait\_requeue\_Pi\_Type](#Futex_Wait_requeue_Pi_Type)
  + [Futex\_Wake\_Bitset\_Type](#Futex_Wake_Bitset_Type)
  + [Futex\_Wake\_Op\_Type](#Futex_Wake_Op_Type)
  + [Futex\_Wake\_Type](#Futex_Wake_Type)
  + [Get\_Random\_Flags](#Get_Random_Flags)
  + [Get\_Random\_Flags\_Bits](#Get_Random_Flags_Bits)
  + [Gid](#Gid)
  + [Hardware\_Breakpoint\_Type](#Hardware_Breakpoint_Type)
  + [IO\_CQ\_Ring\_Offsets](#IO_CQ_Ring_Offsets)
  + [IO\_SQ\_Ring\_Offsets](#IO_SQ_Ring_Offsets)
  + [IO\_Uring\_Accept\_Flags](#IO_Uring_Accept_Flags)
  + [IO\_Uring\_Accept\_Flags\_Bits](#IO_Uring_Accept_Flags_Bits)
  + [IO\_Uring\_CQE](#IO_Uring_CQE)
  + [IO\_Uring\_CQE32](#IO_Uring_CQE32)
  + [IO\_Uring\_CQE\_Flags](#IO_Uring_CQE_Flags)
  + [IO\_Uring\_CQE\_Flags\_Bits](#IO_Uring_CQE_Flags_Bits)
  + [IO\_Uring\_Cmd\_Flags](#IO_Uring_Cmd_Flags)
  + [IO\_Uring\_Cmd\_Flags\_Bits](#IO_Uring_Cmd_Flags_Bits)
  + [IO\_Uring\_Enter\_Flags](#IO_Uring_Enter_Flags)
  + [IO\_Uring\_Enter\_Flags\_Bits](#IO_Uring_Enter_Flags_Bits)
  + [IO\_Uring\_Features](#IO_Uring_Features)
  + [IO\_Uring\_Features\_Bits](#IO_Uring_Features_Bits)
  + [IO\_Uring\_Fsync\_Flags](#IO_Uring_Fsync_Flags)
  + [IO\_Uring\_Fsync\_Flags\_Bits](#IO_Uring_Fsync_Flags_Bits)
  + [IO\_Uring\_Getevents\_Arg](#IO_Uring_Getevents_Arg)
  + [IO\_Uring\_OP](#IO_Uring_OP)
  + [IO\_Uring\_Params](#IO_Uring_Params)
  + [IO\_Uring\_Poll\_Add\_Flags](#IO_Uring_Poll_Add_Flags)
  + [IO\_Uring\_Poll\_Add\_Flags\_Bits](#IO_Uring_Poll_Add_Flags_Bits)
  + [IO\_Uring\_Register\_Opcode](#IO_Uring_Register_Opcode)
  + [IO\_Uring\_Rsrc\_Register](#IO_Uring_Rsrc_Register)
  + [IO\_Uring\_Rsrc\_Update2](#IO_Uring_Rsrc_Update2)
  + [IO\_Uring\_SQE](#IO_Uring_SQE)
  + [IO\_Uring\_SQE128](#IO_Uring_SQE128)
  + [IO\_Uring\_SQE\_Flags](#IO_Uring_SQE_Flags)
  + [IO\_Uring\_SQE\_Flags\_Bits](#IO_Uring_SQE_Flags_Bits)
  + [IO\_Uring\_Send\_Recv\_Flags](#IO_Uring_Send_Recv_Flags)
  + [IO\_Uring\_Send\_Recv\_Flags\_Bits](#IO_Uring_Send_Recv_Flags_Bits)
  + [IO\_Uring\_Setup\_Flags](#IO_Uring_Setup_Flags)
  + [IO\_Uring\_Setup\_Flags\_Bits](#IO_Uring_Setup_Flags_Bits)
  + [IO\_Uring\_Splice\_Flags](#IO_Uring_Splice_Flags)
  + [IO\_Uring\_Splice\_Flags\_Bits](#IO_Uring_Splice_Flags_Bits)
  + [IO\_Uring\_Submission\_Queue\_Flags](#IO_Uring_Submission_Queue_Flags)
  + [IO\_Uring\_Submission\_Queue\_Flags\_Bits](#IO_Uring_Submission_Queue_Flags_Bits)
  + [IO\_Uring\_Timeout\_Flags](#IO_Uring_Timeout_Flags)
  + [IO\_Uring\_Timeout\_Flags\_Bits](#IO_Uring_Timeout_Flags_Bits)
  + [IO\_Vec](#IO_Vec)
  + [IPC\_Cmd](#IPC_Cmd)
  + [IPC\_Flags](#IPC_Flags)
  + [IPC\_Flags\_Bits](#IPC_Flags_Bits)
  + [IPC\_Perm](#IPC_Perm)
  + [ITimer\_Flags](#ITimer_Flags)
  + [ITimer\_Flags\_Bits](#ITimer_Flags_Bits)
  + [ITimer\_Spec](#ITimer_Spec)
  + [ITimer\_Val](#ITimer_Val)
  + [ITimer\_Which](#ITimer_Which)
  + [Id](#Id)
  + [Id\_Type](#Id_Type)
  + [Inode](#Inode)
  + [Inotify\_Event](#Inotify_Event)
  + [Inotify\_Event\_Bits](#Inotify_Event_Bits)
  + [Inotify\_Event\_Mask](#Inotify_Event_Mask)
  + [Inotify\_Init\_Bits](#Inotify_Init_Bits)
  + [Inotify\_Init\_Flags](#Inotify_Init_Flags)
  + [Key](#Key)
  + [MAdvice](#MAdvice)
  + [MLock\_Flags](#MLock_Flags)
  + [MLock\_Flags\_Bits](#MLock_Flags_Bits)
  + [MMsg\_Hdr](#MMsg_Hdr)
  + [MRemap\_Flags](#MRemap_Flags)
  + [MRemap\_Flags\_Bits](#MRemap_Flags_Bits)
  + [MSync\_Flags](#MSync_Flags)
  + [MSync\_Flags\_Bits](#MSync_Flags_Bits)
  + [Map\_Flags](#Map_Flags)
  + [Map\_Flags\_Bits](#Map_Flags_Bits)
  + [Mem\_Protection](#Mem_Protection)
  + [Mem\_Protection\_Bits](#Mem_Protection_Bits)
  + [Memfd\_Create\_Flag\_Bits](#Memfd_Create_Flag_Bits)
  + [Memfd\_Create\_Flags](#Memfd_Create_Flags)
  + [Mode](#Mode)
  + [Mode\_Bits](#Mode_Bits)
  + [Mount\_Flags](#Mount_Flags)
  + [Mount\_Flags\_Bits](#Mount_Flags_Bits)
  + [Msg\_Buf](#Msg_Buf)
  + [Msg\_Hdr](#Msg_Hdr)
  + [Msqid\_DS](#Msqid_DS)
  + [Open\_Flags](#Open_Flags)
  + [Open\_Flags\_Bits](#Open_Flags_Bits)
  + [PKey\_Access\_Bits](#PKey_Access_Bits)
  + [PKey\_Access\_Rights](#PKey_Access_Rights)
  + [PTrace\_Arch\_Prctl\_Type](#PTrace_Arch_Prctl_Type)
  + [PTrace\_Attach\_Type](#PTrace_Attach_Type)
  + [PTrace\_Cont\_Type](#PTrace_Cont_Type)
  + [PTrace\_Detach\_Type](#PTrace_Detach_Type)
  + [PTrace\_Event\_Code](#PTrace_Event_Code)
  + [PTrace\_Get\_RSeq\_Configuration\_Type](#PTrace_Get_RSeq_Configuration_Type)
  + [PTrace\_Get\_Syscall\_Info\_Op](#PTrace_Get_Syscall_Info_Op)
  + [PTrace\_Get\_Syscall\_Info\_Type](#PTrace_Get_Syscall_Info_Type)
  + [PTrace\_Get\_Thread\_Area\_Type](#PTrace_Get_Thread_Area_Type)
  + [PTrace\_Geteventmsg\_Type](#PTrace_Geteventmsg_Type)
  + [PTrace\_Getfpregs\_Type](#PTrace_Getfpregs_Type)
  + [PTrace\_Getfpxregs\_Type](#PTrace_Getfpxregs_Type)
  + [PTrace\_Getregs\_Type](#PTrace_Getregs_Type)
  + [PTrace\_Getregset\_Type](#PTrace_Getregset_Type)
  + [PTrace\_Getsiginfo\_Type](#PTrace_Getsiginfo_Type)
  + [PTrace\_Getsigmask\_Type](#PTrace_Getsigmask_Type)
  + [PTrace\_Interrupt\_Type](#PTrace_Interrupt_Type)
  + [PTrace\_Kill\_Type](#PTrace_Kill_Type)
  + [PTrace\_Listen\_Type](#PTrace_Listen_Type)
  + [PTrace\_Note\_Type](#PTrace_Note_Type)
  + [PTrace\_Options](#PTrace_Options)
  + [PTrace\_Options\_Bits](#PTrace_Options_Bits)
  + [PTrace\_Peek\_Sig\_Info\_Args](#PTrace_Peek_Sig_Info_Args)
  + [PTrace\_Peek\_Sig\_Info\_Flags](#PTrace_Peek_Sig_Info_Flags)
  + [PTrace\_Peek\_Sig\_Info\_Flags\_Bits](#PTrace_Peek_Sig_Info_Flags_Bits)
  + [PTrace\_Peek\_Type](#PTrace_Peek_Type)
  + [PTrace\_Peeksiginfo\_Type](#PTrace_Peeksiginfo_Type)
  + [PTrace\_Poke\_Type](#PTrace_Poke_Type)
  + [PTrace\_RSeq\_Configuration](#PTrace_RSeq_Configuration)
  + [PTrace\_Request](#PTrace_Request)
  + [PTrace\_Seccomp\_Get\_Filter\_Type](#PTrace_Seccomp_Get_Filter_Type)
  + [PTrace\_Seccomp\_Get\_Metadata\_Type](#PTrace_Seccomp_Get_Metadata_Type)
  + [PTrace\_Seccomp\_Metadata](#PTrace_Seccomp_Metadata)
  + [PTrace\_Seize\_Type](#PTrace_Seize_Type)
  + [PTrace\_Set\_Thread\_Area\_Type](#PTrace_Set_Thread_Area_Type)
  + [PTrace\_Setfpregs\_Type](#PTrace_Setfpregs_Type)
  + [PTrace\_Setfpxregs\_Type](#PTrace_Setfpxregs_Type)
  + [PTrace\_Setoptions\_Type](#PTrace_Setoptions_Type)
  + [PTrace\_Setregs\_Type](#PTrace_Setregs_Type)
  + [PTrace\_Setregset\_Type](#PTrace_Setregset_Type)
  + [PTrace\_Setsiginfo\_Type](#PTrace_Setsiginfo_Type)
  + [PTrace\_Setsigmask\_Type](#PTrace_Setsigmask_Type)
  + [PTrace\_Singleblock\_Type](#PTrace_Singleblock_Type)
  + [PTrace\_Singlestep\_Type](#PTrace_Singlestep_Type)
  + [PTrace\_Syscall\_Info](#PTrace_Syscall_Info)
  + [PTrace\_Syscall\_Type](#PTrace_Syscall_Type)
  + [PTrace\_Sysemu\_Singlestep\_Type](#PTrace_Sysemu_Singlestep_Type)
  + [PTrace\_Sysemu\_Type](#PTrace_Sysemu_Type)
  + [PTrace\_Traceme\_Type](#PTrace_Traceme_Type)
  + [Perf\_Cap\_Flags](#Perf_Cap_Flags)
  + [Perf\_Cap\_Flags\_Bits](#Perf_Cap_Flags_Bits)
  + [Perf\_Event\_Attr](#Perf_Event_Attr)
  + [Perf\_Event\_Flags](#Perf_Event_Flags)
  + [Perf\_Event\_Flags\_Bits](#Perf_Event_Flags_Bits)
  + [Perf\_Event\_Mmap\_Page](#Perf_Event_Mmap_Page)
  + [Perf\_Event\_Sample\_Type](#Perf_Event_Sample_Type)
  + [Perf\_Event\_Sample\_Type\_Bits](#Perf_Event_Sample_Type_Bits)
  + [Perf\_Event\_Type](#Perf_Event_Type)
  + [Perf\_Flags](#Perf_Flags)
  + [Perf\_Flags\_Bits](#Perf_Flags_Bits)
  + [Perf\_Hardware\_Cache\_Id](#Perf_Hardware_Cache_Id)
  + [Perf\_Hardware\_Cache\_Op\_Id](#Perf_Hardware_Cache_Op_Id)
  + [Perf\_Hardware\_Cache\_Result\_Id](#Perf_Hardware_Cache_Result_Id)
  + [Perf\_Hardware\_Id](#Perf_Hardware_Id)
  + [Perf\_Read\_Format](#Perf_Read_Format)
  + [Perf\_Read\_Format\_Bits](#Perf_Read_Format_Bits)
  + [Perf\_Software\_Id](#Perf_Software_Id)
  + [Pid](#Pid)
  + [Pid\_FD](#Pid_FD)
  + [Pid\_FD\_Flags](#Pid_FD_Flags)
  + [Pid\_FD\_Flags\_Bits](#Pid_FD_Flags_Bits)
  + [Poll\_Fd](#Poll_Fd)
  + [Priority\_Which](#Priority_Which)
  + [Protocol](#Protocol)
  + [Protocol\_Family](#Protocol_Family)
  + [RISCV\_HWProbe](#RISCV_HWProbe)
  + [RISCV\_HWProbe\_Base\_Behavior](#RISCV_HWProbe_Base_Behavior)
  + [RISCV\_HWProbe\_Base\_Behavior\_Bits](#RISCV_HWProbe_Base_Behavior_Bits)
  + [RISCV\_HWProbe\_CPU\_Perf\_0](#RISCV_HWProbe_CPU_Perf_0)
  + [RISCV\_HWProbe\_Flags](#RISCV_HWProbe_Flags)
  + [RISCV\_HWProbe\_Flags\_Bits](#RISCV_HWProbe_Flags_Bits)
  + [RISCV\_HWProbe\_IMA\_Ext\_0](#RISCV_HWProbe_IMA_Ext_0)
  + [RISCV\_HWProbe\_IMA\_Ext\_0\_Bits](#RISCV_HWProbe_IMA_Ext_0_Bits)
  + [RISCV\_HWProbe\_Key](#RISCV_HWProbe_Key)
  + [RISCV\_HWProbe\_Misaligned\_Scalar\_Perf](#RISCV_HWProbe_Misaligned_Scalar_Perf)
  + [RLimit](#RLimit)
  + [RLimit\_Kind](#RLimit_Kind)
  + [RUsage](#RUsage)
  + [RUsage\_Who](#RUsage_Who)
  + [RW\_Hint](#RW_Hint)
  + [Reboot\_Magic](#Reboot_Magic)
  + [Reboot\_Operation](#Reboot_Operation)
  + [Rename\_Flags](#Rename_Flags)
  + [Rename\_Flags\_Bits](#Rename_Flags_Bits)
  + [Sched\_Attr](#Sched_Attr)
  + [Sched\_Attr\_Flag\_Bits](#Sched_Attr_Flag_Bits)
  + [Sched\_Attr\_Flags](#Sched_Attr_Flags)
  + [Sched\_Flag\_Bits](#Sched_Flag_Bits)
  + [Sched\_Flags](#Sched_Flags)
  + [Sched\_Param](#Sched_Param)
  + [Sched\_Policy](#Sched_Policy)
  + [Seal](#Seal)
  + [Seal\_Bits](#Seal_Bits)
  + [Seek\_Whence](#Seek_Whence)
  + [Sem\_Buf](#Sem_Buf)
  + [Sem\_Info](#Sem_Info)
  + [Sem\_Un](#Sem_Un)
  + [Semid\_DS](#Semid_DS)
  + [Shm\_Info](#Shm_Info)
  + [Shmid\_DS](#Shmid_DS)
  + [Shutdown\_How](#Shutdown_How)
  + [Sig\_Action](#Sig_Action)
  + [Sig\_Action\_Flag](#Sig_Action_Flag)
  + [Sig\_Action\_Flags](#Sig_Action_Flags)
  + [Sig\_Action\_Special](#Sig_Action_Special)
  + [Sig\_Child\_Code](#Sig_Child_Code)
  + [Sig\_Event](#Sig_Event)
  + [Sig\_Handler\_Fn](#Sig_Handler_Fn)
  + [Sig\_Info](#Sig_Info)
  + [Sig\_Mask\_Kind](#Sig_Mask_Kind)
  + [Sig\_Restore\_Fn](#Sig_Restore_Fn)
  + [Sig\_Set](#Sig_Set)
  + [Sig\_Stack](#Sig_Stack)
  + [Sig\_Stack\_Flag](#Sig_Stack_Flag)
  + [Sig\_Stack\_Flags](#Sig_Stack_Flags)
  + [Sig\_Val](#Sig_Val)
  + [Signal](#Signal)
  + [Sock\_Addr](#Sock_Addr)
  + [Sock\_Addr\_Any](#Sock_Addr_Any)
  + [Sock\_Addr\_In](#Sock_Addr_In)
  + [Sock\_Addr\_In6](#Sock_Addr_In6)
  + [Sock\_Addr\_Un](#Sock_Addr_Un)
  + [Socket\_API\_Level](#Socket_API_Level)
  + [Socket\_API\_Level\_Raw](#Socket_API_Level_Raw)
  + [Socket\_API\_Level\_Sock](#Socket_API_Level_Sock)
  + [Socket\_API\_Level\_TCP](#Socket_API_Level_TCP)
  + [Socket\_API\_Level\_UDP](#Socket_API_Level_UDP)
  + [Socket\_FD\_Flags](#Socket_FD_Flags)
  + [Socket\_FD\_Flags\_Bits](#Socket_FD_Flags_Bits)
  + [Socket\_Msg](#Socket_Msg)
  + [Socket\_Msg\_Bits](#Socket_Msg_Bits)
  + [Socket\_Option](#Socket_Option)
  + [Socket\_TCP\_Option](#Socket_TCP_Option)
  + [Socket\_Type](#Socket_Type)
  + [Socket\_UDP\_Option](#Socket_UDP_Option)
  + [Splice\_Flags](#Splice_Flags)
  + [Splice\_Flags\_Bits](#Splice_Flags_Bits)
  + [Stat](#Stat)
  + [Stat\_FS](#Stat_FS)
  + [Statx](#Statx)
  + [Statx\_Attr](#Statx_Attr)
  + [Statx\_Attr\_Bits](#Statx_Attr_Bits)
  + [Statx\_Mask](#Statx_Mask)
  + [Statx\_Mask\_Bits](#Statx_Mask_Bits)
  + [Statx\_Timestamp](#Statx_Timestamp)
  + [Swap\_Flags](#Swap_Flags)
  + [Swap\_Flags\_Bits](#Swap_Flags_Bits)
  + [Sys\_Info](#Sys_Info)
  + [Syslog\_Action](#Syslog_Action)
  + [Time\_Spec](#Time_Spec)
  + [Time\_Val](#Time_Val)
  + [Timer](#Timer)
  + [Timex](#Timex)
  + [Tms](#Tms)
  + [UPD\_Encapsulation](#UPD_Encapsulation)
  + [UTS\_Name](#UTS_Name)
  + [UTim\_Buf](#UTim_Buf)
  + [Uid](#Uid)
  + [Umount2\_Flags](#Umount2_Flags)
  + [Umount2\_Flags\_Bits](#Umount2_Flags_Bits)
  + [User\_FPX\_Regs](#User_FPX_Regs)
  + [User\_FP\_Regs](#User_FP_Regs)
  + [User\_Regs](#User_Regs)
  + [Wait\_Option](#Wait_Option)
  + [Wait\_Options](#Wait_Options)
  + [Wd](#Wd)
* [Constants](#pkg-Constants)
  + [ADDR\_COMPAT\_LAYOUT](#ADDR_COMPAT_LAYOUT)
  + [ADDR\_LIMIT\_32BIT](#ADDR_LIMIT_32BIT)
  + [ADDR\_LIMIT\_3GB](#ADDR_LIMIT_3GB)
  + [ADDR\_NO\_RANDOMIZE](#ADDR_NO_RANDOMIZE)
  + [AT\_FDCWD](#AT_FDCWD)
  + [FDPIC\_FUNCPTRS](#FDPIC_FUNCPTRS)
  + [FUTEX\_CMP\_REQUEUE](#FUTEX_CMP_REQUEUE)
  + [FUTEX\_CMP\_REQUEUE\_PI](#FUTEX_CMP_REQUEUE_PI)
  + [FUTEX\_FD](#FUTEX_FD)
  + [FUTEX\_LOCK\_PI](#FUTEX_LOCK_PI)
  + [FUTEX\_LOCK\_PI2](#FUTEX_LOCK_PI2)
  + [FUTEX\_REQUEUE](#FUTEX_REQUEUE)
  + [FUTEX\_TRYLOCK\_PI](#FUTEX_TRYLOCK_PI)
  + [FUTEX\_UNLOCK\_PI](#FUTEX_UNLOCK_PI)
  + [FUTEX\_WAIT](#FUTEX_WAIT)
  + [FUTEX\_WAIT\_BITSET](#FUTEX_WAIT_BITSET)
  + [FUTEX\_WAIT\_REQUEUE\_PI](#FUTEX_WAIT_REQUEUE_PI)
  + [FUTEX\_WAKE](#FUTEX_WAKE)
  + [FUTEX\_WAKE\_BITSET](#FUTEX_WAKE_BITSET)
  + [FUTEX\_WAKE\_OP](#FUTEX_WAKE_OP)
  + [F\_ADD\_SEALS](#F_ADD_SEALS)
  + [F\_DUPFD](#F_DUPFD)
  + [F\_DUPFD\_CLOEXEC](#F_DUPFD_CLOEXEC)
  + [F\_GETFD](#F_GETFD)
  + [F\_GETFL](#F_GETFL)
  + [F\_GETLEASE](#F_GETLEASE)
  + [F\_GETLK](#F_GETLK)
  + [F\_GETOWN](#F_GETOWN)
  + [F\_GETOWN\_EX](#F_GETOWN_EX)
  + [F\_GETPIPE\_SZ](#F_GETPIPE_SZ)
  + [F\_GETSIG](#F_GETSIG)
  + [F\_GET\_FILE\_RW\_HINT](#F_GET_FILE_RW_HINT)
  + [F\_GET\_RW\_HINT](#F_GET_RW_HINT)
  + [F\_GET\_SEALS](#F_GET_SEALS)
  + [F\_NOTIFY](#F_NOTIFY)
  + [F\_OK](#F_OK)
  + [F\_SETFD](#F_SETFD)
  + [F\_SETFL](#F_SETFL)
  + [F\_SETLEASE](#F_SETLEASE)
  + [F\_SETLK](#F_SETLK)
  + [F\_SETLKW](#F_SETLKW)
  + [F\_SETOWN](#F_SETOWN)
  + [F\_SETOWN\_EX](#F_SETOWN_EX)
  + [F\_SETPIPE\_SZ](#F_SETPIPE_SZ)
  + [F\_SETSIG](#F_SETSIG)
  + [F\_SET\_FILE\_RW\_HINT](#F_SET_FILE_RW_HINT)
  + [F\_SET\_RW\_HINT](#F_SET_RW_HINT)
  + [IN\_ALL\_EVENTS](#IN_ALL_EVENTS)
  + [IN\_CLOSE](#IN_CLOSE)
  + [IN\_MOVE](#IN_MOVE)
  + [IORING\_OFF\_CQ\_RING](#IORING_OFF_CQ_RING)
  + [IORING\_OFF\_MMAP\_MASK](#IORING_OFF_MMAP_MASK)
  + [IORING\_OFF\_PBUF\_RING](#IORING_OFF_PBUF_RING)
  + [IORING\_OFF\_PBUF\_SHIFT](#IORING_OFF_PBUF_SHIFT)
  + [IORING\_OFF\_SQES](#IORING_OFF_SQES)
  + [IORING\_OFF\_SQ\_RING](#IORING_OFF_SQ_RING)
  + [IORING\_TIMEOUT\_CLOCK\_MASK](#IORING_TIMEOUT_CLOCK_MASK)
  + [IORING\_TIMEOUT\_UPDATE\_MASK](#IORING_TIMEOUT_UPDATE_MASK)
  + [IPC\_PRIVATE](#IPC_PRIVATE)
  + [MAP\_HUGE\_16GB](#MAP_HUGE_16GB)
  + [MAP\_HUGE\_16KB](#MAP_HUGE_16KB)
  + [MAP\_HUGE\_16MB](#MAP_HUGE_16MB)
  + [MAP\_HUGE\_1GB](#MAP_HUGE_1GB)
  + [MAP\_HUGE\_1MB](#MAP_HUGE_1MB)
  + [MAP\_HUGE\_256MB](#MAP_HUGE_256MB)
  + [MAP\_HUGE\_2GB](#MAP_HUGE_2GB)
  + [MAP\_HUGE\_2MB](#MAP_HUGE_2MB)
  + [MAP\_HUGE\_32MB](#MAP_HUGE_32MB)
  + [MAP\_HUGE\_512KB](#MAP_HUGE_512KB)
  + [MAP\_HUGE\_512MB](#MAP_HUGE_512MB)
  + [MAP\_HUGE\_64KB](#MAP_HUGE_64KB)
  + [MAP\_HUGE\_8MB](#MAP_HUGE_8MB)
  + [MAP\_HUGE\_MASK](#MAP_HUGE_MASK)
  + [MAP\_HUGE\_SHIFT](#MAP_HUGE_SHIFT)
  + [MAP\_SHARED\_VALIDATE](#MAP_SHARED_VALIDATE)
  + [MFD\_HUGE\_16GB](#MFD_HUGE_16GB)
  + [MFD\_HUGE\_16KB](#MFD_HUGE_16KB)
  + [MFD\_HUGE\_16MB](#MFD_HUGE_16MB)
  + [MFD\_HUGE\_1GB](#MFD_HUGE_1GB)
  + [MFD\_HUGE\_1MB](#MFD_HUGE_1MB)
  + [MFD\_HUGE\_256MB](#MFD_HUGE_256MB)
  + [MFD\_HUGE\_2GB](#MFD_HUGE_2GB)
  + [MFD\_HUGE\_2MB](#MFD_HUGE_2MB)
  + [MFD\_HUGE\_32MB](#MFD_HUGE_32MB)
  + [MFD\_HUGE\_512KB](#MFD_HUGE_512KB)
  + [MFD\_HUGE\_512MB](#MFD_HUGE_512MB)
  + [MFD\_HUGE\_64KB](#MFD_HUGE_64KB)
  + [MFD\_HUGE\_8MB](#MFD_HUGE_8MB)
  + [MMAP\_PAGE\_ZERO](#MMAP_PAGE_ZERO)
  + [PER\_BSD](#PER_BSD)
  + [PER\_HPUX](#PER_HPUX)
  + [PER\_IRIX32](#PER_IRIX32)
  + [PER\_IRIX64](#PER_IRIX64)
  + [PER\_IRIXN32](#PER_IRIXN32)
  + [PER\_ISCR4](#PER_ISCR4)
  + [PER\_LINUX](#PER_LINUX)
  + [PER\_LINUX32](#PER_LINUX32)
  + [PER\_LINUX32\_3GB](#PER_LINUX32_3GB)
  + [PER\_LINUX\_32BIT](#PER_LINUX_32BIT)
  + [PER\_LINUX\_FDPIC](#PER_LINUX_FDPIC)
  + [PER\_MASK](#PER_MASK)
  + [PER\_OSF4](#PER_OSF4)
  + [PER\_OSR5](#PER_OSR5)
  + [PER\_RISCOS](#PER_RISCOS)
  + [PER\_SCOSVR3](#PER_SCOSVR3)
  + [PER\_SOLARIS](#PER_SOLARIS)
  + [PER\_SUNOS](#PER_SUNOS)
  + [PER\_SVR3](#PER_SVR3)
  + [PER\_SVR4](#PER_SVR4)
  + [PER\_UW7](#PER_UW7)
  + [PER\_WYSEV386](#PER_WYSEV386)
  + [PER\_XENIX](#PER_XENIX)
  + [PRIO\_MAX](#PRIO_MAX)
  + [PRIO\_MIN](#PRIO_MIN)
  + [PTRACE\_ARCH\_PRCTL](#PTRACE_ARCH_PRCTL)
  + [PTRACE\_ATTACH](#PTRACE_ATTACH)
  + [PTRACE\_CONT](#PTRACE_CONT)
  + [PTRACE\_DETACH](#PTRACE_DETACH)
  + [PTRACE\_GETEVENTMSG](#PTRACE_GETEVENTMSG)
  + [PTRACE\_GETFPREGS](#PTRACE_GETFPREGS)
  + [PTRACE\_GETFPXREGS](#PTRACE_GETFPXREGS)
  + [PTRACE\_GETREGS](#PTRACE_GETREGS)
  + [PTRACE\_GETREGSET](#PTRACE_GETREGSET)
  + [PTRACE\_GETSIGINFO](#PTRACE_GETSIGINFO)
  + [PTRACE\_GETSIGMASK](#PTRACE_GETSIGMASK)
  + [PTRACE\_GET\_RSEQ\_CONFIGURATION](#PTRACE_GET_RSEQ_CONFIGURATION)
  + [PTRACE\_GET\_SYSCALL\_INFO](#PTRACE_GET_SYSCALL_INFO)
  + [PTRACE\_GET\_THREAD\_AREA](#PTRACE_GET_THREAD_AREA)
  + [PTRACE\_INTERRUPT](#PTRACE_INTERRUPT)
  + [PTRACE\_KILL](#PTRACE_KILL)
  + [PTRACE\_LISTEN](#PTRACE_LISTEN)
  + [PTRACE\_PEEKDATA](#PTRACE_PEEKDATA)
  + [PTRACE\_PEEKSIGINFO](#PTRACE_PEEKSIGINFO)
  + [PTRACE\_PEEKTEXT](#PTRACE_PEEKTEXT)
  + [PTRACE\_PEEKUSER](#PTRACE_PEEKUSER)
  + [PTRACE\_POKEDATA](#PTRACE_POKEDATA)
  + [PTRACE\_POKETEXT](#PTRACE_POKETEXT)
  + [PTRACE\_POKEUSER](#PTRACE_POKEUSER)
  + [PTRACE\_SECCOMP\_GET\_FILTER](#PTRACE_SECCOMP_GET_FILTER)
  + [PTRACE\_SECCOMP\_GET\_METADATA](#PTRACE_SECCOMP_GET_METADATA)
  + [PTRACE\_SEIZE](#PTRACE_SEIZE)
  + [PTRACE\_SETFPREGS](#PTRACE_SETFPREGS)
  + [PTRACE\_SETFPXREGS](#PTRACE_SETFPXREGS)
  + [PTRACE\_SETOPTIONS](#PTRACE_SETOPTIONS)
  + [PTRACE\_SETREGS](#PTRACE_SETREGS)
  + [PTRACE\_SETREGSET](#PTRACE_SETREGSET)
  + [PTRACE\_SETSIGINFO](#PTRACE_SETSIGINFO)
  + [PTRACE\_SETSIGMASK](#PTRACE_SETSIGMASK)
  + [PTRACE\_SET\_THREAD\_AREA](#PTRACE_SET_THREAD_AREA)
  + [PTRACE\_SINGLEBLOCK](#PTRACE_SINGLEBLOCK)
  + [PTRACE\_SINGLESTEP](#PTRACE_SINGLESTEP)
  + [PTRACE\_SYSCALL](#PTRACE_SYSCALL)
  + [PTRACE\_SYSEMU](#PTRACE_SYSEMU)
  + [PTRACE\_SYSEMU\_SINGLESTEP](#PTRACE_SYSEMU_SINGLESTEP)
  + [PTRACE\_TRACEME](#PTRACE_TRACEME)
  + [READ\_IMPLIES\_EXEC](#READ_IMPLIES_EXEC)
  + [R\_OK](#R_OK)
  + [SHORT\_INODE](#SHORT_INODE)
  + [SIGEV\_MAX\_SIZE](#SIGEV_MAX_SIZE)
  + [SIGEV\_PAD\_SIZE](#SIGEV_PAD_SIZE)
  + [SIGRTMAX](#SIGRTMAX)
  + [SIGRTMIN](#SIGRTMIN)
  + [SOL\_RAW](#SOL_RAW)
  + [SOL\_SOCKET](#SOL_SOCKET)
  + [SOL\_TCP](#SOL_TCP)
  + [SOL\_UDP](#SOL_UDP)
  + [STATX\_BASIC\_STATS](#STATX_BASIC_STATS)
  + [STDERR\_FILENO](#STDERR_FILENO)
  + [STDIN\_FILENO](#STDIN_FILENO)
  + [STDOUT\_FILENO](#STDOUT_FILENO)
  + [STICKY\_TIMEOUTS](#STICKY_TIMEOUTS)
  + [SWAP\_FLAG\_PRIO\_MASK](#SWAP_FLAG_PRIO_MASK)
  + [SWAP\_FLAG\_PRIO\_SHIFT](#SWAP_FLAG_PRIO_SHIFT)
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
  + [SYS\_cachestat](#SYS_cachestat)
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
  + [SYS\_fchmodat2](#SYS_fchmodat2)
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
  + [SYS\_fstatfs](#SYS_fstatfs)
  + [SYS\_fsync](#SYS_fsync)
  + [SYS\_ftruncate](#SYS_ftruncate)
  + [SYS\_futex](#SYS_futex)
  + [SYS\_futex\_waitv](#SYS_futex_waitv)
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
  + [SYS\_map\_shadow\_stack](#SYS_map_shadow_stack)
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
  + [SYS\_newfstatat](#SYS_newfstatat)
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
  + [SYS\_process\_mrelease](#SYS_process_mrelease)
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
  + [SYS\_quotactl\_fd](#SYS_quotactl_fd)
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
  + [SYS\_set\_mempolicy\_home\_node](#SYS_set_mempolicy_home_node)
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
  + [S\_IFBLK](#S_IFBLK)
  + [S\_IFCHR](#S_IFCHR)
  + [S\_IFDIR](#S_IFDIR)
  + [S\_IFIFO](#S_IFIFO)
  + [S\_IFLNK](#S_IFLNK)
  + [S\_IFMT](#S_IFMT)
  + [S\_IFREG](#S_IFREG)
  + [S\_IFSOCK](#S_IFSOCK)
  + [TIOCGWINSZ](#TIOCGWINSZ)
  + [UNAME26](#UNAME26)
  + [UTIME\_NOW](#UTIME_NOW)
  + [UTIME\_OMIT](#UTIME_OMIT)
  + [WAIT\_ANY](#WAIT_ANY)
  + [WAIT\_MYPGRP](#WAIT_MYPGRP)
  + [WHOLE\_SECONDS](#WHOLE_SECONDS)
  + [W\_OK](#W_OK)
  + [X\_OK](#X_OK)
* [Procedures](#pkg-Procedures)
  + [S\_ISBLK](#S_ISBLK)
  + [S\_ISCHR](#S_ISCHR)
  + [S\_ISDIR](#S_ISDIR)
  + [S\_ISFIFO](#S_ISFIFO)
  + [S\_ISLNK](#S_ISLNK)
  + [S\_ISREG](#S_ISREG)
  + [S\_ISSOCK](#S_ISSOCK)
  + [WCOREDUMP](#WCOREDUMP)
  + [WEXITSTATUS](#WEXITSTATUS)
  + [WIFCONTINUED](#WIFCONTINUED)
  + [WIFEXITED](#WIFEXITED)
  + [WIFSIGNALED](#WIFSIGNALED)
  + [WIFSTOPPED](#WIFSTOPPED)
  + [WSTOPSIG](#WSTOPSIG)
  + [WTERMSIG](#WTERMSIG)
  + [accept](#accept)
  + [access](#access)
  + [acct](#acct)
  + [adjtimex](#adjtimex)
  + [alarm](#alarm)
  + [arch\_prctl](#arch_prctl)
  + [bind](#bind)
  + [brk](#brk)
  + [chdir](#chdir)
  + [chmod](#chmod)
  + [chown](#chown)
  + [chroot](#chroot)
  + [clock\_getres](#clock_getres)
  + [clock\_gettime](#clock_gettime)
  + [clock\_nanosleep](#clock_nanosleep)
  + [clock\_settime](#clock_settime)
  + [close](#close)
  + [close\_range](#close_range)
  + [connect](#connect)
  + [creat](#creat)
  + [delete\_module](#delete_module)
  + [dirent\_iterate\_buf](#dirent_iterate_buf)
  + [dirent\_name](#dirent_name)
  + [dup](#dup)
  + [dup2](#dup2)
  + [dup3](#dup3)
  + [epoll\_create](#epoll_create)
  + [epoll\_create1](#epoll_create1)
  + [epoll\_ctl](#epoll_ctl)
  + [epoll\_pwait](#epoll_pwait)
  + [epoll\_pwait2](#epoll_pwait2)
  + [epoll\_wait](#epoll_wait)
  + [eventfd](#eventfd)
  + [execve](#execve)
  + [execveat](#execveat)
  + [exit](#exit)
  + [exit\_group](#exit_group)
  + [faccessat](#faccessat)
  + [faccessat2](#faccessat2)
  + [fchdir](#fchdir)
  + [fchmod](#fchmod)
  + [fchmodat](#fchmodat)
  + [fchown](#fchown)
  + [fchownat](#fchownat)
  + [fcntl\_add\_seals](#fcntl_add_seals)
  + [fcntl\_dupfd](#fcntl_dupfd)
  + [fcntl\_dupfd\_cloexec](#fcntl_dupfd_cloexec)
  + [fcntl\_get\_file\_rw\_hint](#fcntl_get_file_rw_hint)
  + [fcntl\_get\_rw\_hint](#fcntl_get_rw_hint)
  + [fcntl\_get\_seals](#fcntl_get_seals)
  + [fcntl\_getfd](#fcntl_getfd)
  + [fcntl\_getfl](#fcntl_getfl)
  + [fcntl\_getlease](#fcntl_getlease)
  + [fcntl\_getlk](#fcntl_getlk)
  + [fcntl\_getown\_ex](#fcntl_getown_ex)
  + [fcntl\_getpipe\_sz](#fcntl_getpipe_sz)
  + [fcntl\_getsig](#fcntl_getsig)
  + [fcntl\_notify](#fcntl_notify)
  + [fcntl\_set\_file\_rw\_hint](#fcntl_set_file_rw_hint)
  + [fcntl\_set\_rw\_hint](#fcntl_set_rw_hint)
  + [fcntl\_setfd](#fcntl_setfd)
  + [fcntl\_setfl](#fcntl_setfl)
  + [fcntl\_setlease](#fcntl_setlease)
  + [fcntl\_setlk](#fcntl_setlk)
  + [fcntl\_setlkw](#fcntl_setlkw)
  + [fcntl\_setown\_ex](#fcntl_setown_ex)
  + [fcntl\_setpipe\_sz](#fcntl_setpipe_sz)
  + [fcntl\_setsig](#fcntl_setsig)
  + [fdatasync](#fdatasync)
  + [fgetxattr](#fgetxattr)
  + [flistxattr](#flistxattr)
  + [flock](#flock)
  + [fork](#fork)
  + [fremovexattr](#fremovexattr)
  + [fsetxattr](#fsetxattr)
  + [fstat](#fstat)
  + [fstatat](#fstatat)
  + [fstatfs](#fstatfs)
  + [fsync](#fsync)
  + [ftruncate](#ftruncate)
  + [futex\_cmp\_requeue](#futex_cmp_requeue)
  + [futex\_op](#futex_op)
  + [futex\_requeue](#futex_requeue)
  + [futex\_wait](#futex_wait)
  + [futex\_wait\_bitset](#futex_wait_bitset)
  + [futex\_wake](#futex_wake)
  + [futex\_wake\_bitset](#futex_wake_bitset)
  + [futex\_wake\_op](#futex_wake_op)
  + [getcpu](#getcpu)
  + [getcwd](#getcwd)
  + [getdents](#getdents)
  + [getegid](#getegid)
  + [geteuid](#geteuid)
  + [getgid](#getgid)
  + [getgroups](#getgroups)
  + [getitimer](#getitimer)
  + [getpeername](#getpeername)
  + [getpgid](#getpgid)
  + [getpgrp](#getpgrp)
  + [getpid](#getpid)
  + [getppid](#getppid)
  + [getpriority](#getpriority)
  + [getrandom](#getrandom)
  + [getresgid](#getresgid)
  + [getresuid](#getresuid)
  + [getrlimit](#getrlimit)
  + [getrusage](#getrusage)
  + [getsid](#getsid)
  + [getsockname](#getsockname)
  + [getsockopt\_base](#getsockopt_base)
  + [getsockopt\_sock](#getsockopt_sock)
  + [getsockopt\_tcp](#getsockopt_tcp)
  + [getsockopt\_udp](#getsockopt_udp)
  + [gettid](#gettid)
  + [gettimeofday](#gettimeofday)
  + [getuid](#getuid)
  + [getxattr](#getxattr)
  + [init\_module](#init_module)
  + [inotify\_add\_watch](#inotify_add_watch)
  + [inotify\_init](#inotify_init)
  + [inotify\_init1](#inotify_init1)
  + [inotify\_rm\_watch](#inotify_rm_watch)
  + [io\_uring\_enter](#io_uring_enter)
  + [io\_uring\_enter2](#io_uring_enter2)
  + [io\_uring\_register](#io_uring_register)
  + [io\_uring\_setup](#io_uring_setup)
  + [ioctl](#ioctl)
  + [ioperm](#ioperm)
  + [kill](#kill)
  + [lchown](#lchown)
  + [lgetxattr](#lgetxattr)
  + [link](#link)
  + [linkat](#linkat)
  + [listen](#listen)
  + [listxattr](#listxattr)
  + [llistxattr](#llistxattr)
  + [lremovexattr](#lremovexattr)
  + [lseek](#lseek)
  + [lsetxattr](#lsetxattr)
  + [lstat](#lstat)
  + [madvise](#madvise)
  + [memfd\_create](#memfd_create)
  + [mincore](#mincore)
  + [mkdir](#mkdir)
  + [mkdirat](#mkdirat)
  + [mknod](#mknod)
  + [mknodat](#mknodat)
  + [mlock](#mlock)
  + [mlockall](#mlockall)
  + [mmap](#mmap)
  + [modify\_ldt](#modify_ldt)
  + [mount](#mount)
  + [mprotect](#mprotect)
  + [mremap](#mremap)
  + [msgctl](#msgctl)
  + [msgget](#msgget)
  + [msgrcv](#msgrcv)
  + [msgsnd](#msgsnd)
  + [msync](#msync)
  + [munlock](#munlock)
  + [munlockall](#munlockall)
  + [munmap](#munmap)
  + [nanosleep](#nanosleep)
  + [open](#open)
  + [openat](#openat)
  + [pause](#pause)
  + [perf\_cache\_config](#perf_cache_config)
  + [perf\_event\_open](#perf_event_open)
  + [personality](#personality)
  + [pidfd\_getfd](#pidfd_getfd)
  + [pidfd\_open](#pidfd_open)
  + [pipe2](#pipe2)
  + [pivot\_root](#pivot_root)
  + [poll](#poll)
  + [ppoll](#ppoll)
  + [prctl](#prctl)
  + [pread](#pread)
  + [ptrace\_attach](#ptrace_attach)
  + [ptrace\_cont](#ptrace_cont)
  + [ptrace\_detach](#ptrace_detach)
  + [ptrace\_geteventmsg](#ptrace_geteventmsg)
  + [ptrace\_getfpregs](#ptrace_getfpregs)
  + [ptrace\_getfpxregs](#ptrace_getfpxregs)
  + [ptrace\_getregs](#ptrace_getregs)
  + [ptrace\_getregset](#ptrace_getregset)
  + [ptrace\_getsiginfo](#ptrace_getsiginfo)
  + [ptrace\_getsigmask](#ptrace_getsigmask)
  + [ptrace\_interrupt](#ptrace_interrupt)
  + [ptrace\_listen](#ptrace_listen)
  + [ptrace\_peek](#ptrace_peek)
  + [ptrace\_peeksiginfo](#ptrace_peeksiginfo)
  + [ptrace\_poke](#ptrace_poke)
  + [ptrace\_seize](#ptrace_seize)
  + [ptrace\_setfpregs](#ptrace_setfpregs)
  + [ptrace\_setfpxregs](#ptrace_setfpxregs)
  + [ptrace\_setoptions](#ptrace_setoptions)
  + [ptrace\_setregs](#ptrace_setregs)
  + [ptrace\_setregset](#ptrace_setregset)
  + [ptrace\_setsigmask](#ptrace_setsigmask)
  + [ptrace\_singlestep](#ptrace_singlestep)
  + [ptrace\_syscall](#ptrace_syscall)
  + [ptrace\_sysemu](#ptrace_sysemu)
  + [ptrace\_sysemu\_singlestep](#ptrace_sysemu_singlestep)
  + [ptrace\_traceme](#ptrace_traceme)
  + [pwrite](#pwrite)
  + [quotactl](#quotactl)
  + [read](#read)
  + [readahead](#readahead)
  + [readlink](#readlink)
  + [readlinkat](#readlinkat)
  + [readv](#readv)
  + [reboot](#reboot)
  + [recvfrom](#recvfrom)
  + [recvmmsg](#recvmmsg)
  + [recvmsg](#recvmsg)
  + [removexattr](#removexattr)
  + [rename](#rename)
  + [renameat](#renameat)
  + [renameat2](#renameat2)
  + [rmdir](#rmdir)
  + [rt\_sigaction](#rt_sigaction)
  + [rt\_sigpending](#rt_sigpending)
  + [rt\_sigprocmask](#rt_sigprocmask)
  + [rt\_sigqueueinfo](#rt_sigqueueinfo)
  + [rt\_sigreturn](#rt_sigreturn)
  + [rt\_sigsuspend](#rt_sigsuspend)
  + [rt\_sigtimedwait](#rt_sigtimedwait)
  + [rt\_tgsigqueueinfo](#rt_tgsigqueueinfo)
  + [sched\_get\_priority\_max](#sched_get_priority_max)
  + [sched\_get\_priority\_min](#sched_get_priority_min)
  + [sched\_getaffinity](#sched_getaffinity)
  + [sched\_getattr](#sched_getattr)
  + [sched\_getparam](#sched_getparam)
  + [sched\_getscheduler](#sched_getscheduler)
  + [sched\_rr\_get\_interval](#sched_rr_get_interval)
  + [sched\_setaffinity](#sched_setaffinity)
  + [sched\_setattr](#sched_setattr)
  + [sched\_setparam](#sched_setparam)
  + [sched\_setscheduler](#sched_setscheduler)
  + [sched\_yield](#sched_yield)
  + [semctl3](#semctl3)
  + [semctl4](#semctl4)
  + [semget](#semget)
  + [semop](#semop)
  + [sendfile](#sendfile)
  + [sendmmsg](#sendmmsg)
  + [sendmsg](#sendmsg)
  + [sendto](#sendto)
  + [set\_tid\_address](#set_tid_address)
  + [setdomainname](#setdomainname)
  + [setgid](#setgid)
  + [setgroups](#setgroups)
  + [sethostname](#sethostname)
  + [setitimer](#setitimer)
  + [setpgid](#setpgid)
  + [setpriority](#setpriority)
  + [setregid](#setregid)
  + [setresgid](#setresgid)
  + [setresuid](#setresuid)
  + [setreuid](#setreuid)
  + [setrlimit](#setrlimit)
  + [setsid](#setsid)
  + [setsockopt\_base](#setsockopt_base)
  + [setsockopt\_sock](#setsockopt_sock)
  + [setsockopt\_tcp](#setsockopt_tcp)
  + [setsockopt\_udp](#setsockopt_udp)
  + [settimeofday](#settimeofday)
  + [setuid](#setuid)
  + [setxattr](#setxattr)
  + [shmat](#shmat)
  + [shmctl\_ds](#shmctl_ds)
  + [shmctl\_info](#shmctl_info)
  + [shmdt](#shmdt)
  + [shmget](#shmget)
  + [shutdown](#shutdown)
  + [sigaltstack](#sigaltstack)
  + [socket](#socket)
  + [socketpair](#socketpair)
  + [splice](#splice)
  + [stat](#stat)
  + [statfs](#statfs)
  + [statx](#statx)
  + [swapoff](#swapoff)
  + [swapon](#swapon)
  + [symlink](#symlink)
  + [symlinkat](#symlinkat)
  + [sync](#sync)
  + [sysinfo](#sysinfo)
  + [syslog](#syslog)
  + [tee](#tee)
  + [tgkill](#tgkill)
  + [time](#time)
  + [timer\_create](#timer_create)
  + [timer\_delete](#timer_delete)
  + [timer\_getoverrun](#timer_getoverrun)
  + [timer\_gettime](#timer_gettime)
  + [timer\_settime](#timer_settime)
  + [timerfd\_create](#timerfd_create)
  + [timerfd\_gettime](#timerfd_gettime)
  + [timerfd\_settime](#timerfd_settime)
  + [times](#times)
  + [truncate](#truncate)
  + [umask](#umask)
  + [umount2](#umount2)
  + [uname](#uname)
  + [unlink](#unlink)
  + [unlinkat](#unlinkat)
  + [utimensat](#utimensat)
  + [vfork](#vfork)
  + [vhangup](#vhangup)
  + [wait4](#wait4)
  + [waitid](#waitid)
  + [waitpid](#waitpid)
  + [write](#write)
  + [writev](#writev)
* [Procedure Groups](#pkg-Procedure Groups)
  + [fcntl](#fcntl)
  + [futex](#futex)
  + [getsockopt](#getsockopt)
  + [ptrace](#ptrace)
  + [recv](#recv)
  + [semctl](#semctl)
  + [send](#send)
  + [setsockopt](#setsockopt)
  + [shmctl](#shmctl)
  + [syscall](#syscall)
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