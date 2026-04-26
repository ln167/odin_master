package sanitizer - pkg.odin-lang.org 






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



Current Package: *[sanitizer](/base/sanitizer)*

  

#### [base Library](/base)

* [builtin](/base/builtin)
* [intrinsics](/base/intrinsics)
* [runtime](/base/runtime)
* [sanitizer](/base/sanitizer)

1. [base](/base)
2. [sanitizer](/base/sanitizer)

# package base:sanitizer [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

The `sanitizer` package implements various procedures for interacting with sanitizers
from user code.

An odin project can be linked with various sanitizers to help identify various different
bugs. These sanitizers are:

#### Address

Enabled with `-sanitize:address` when building an odin project.

The address sanitizer (asan) is a runtime memory error detector used to help find common memory
related bugs. Typically asan interacts with libc but Odin code can be marked up to interact
with the asan runtime to extend the memory error detection outside of libc using this package.
For more information about asan see: https://clang.llvm.org/docs/AddressSanitizer.html

Procedures can be made exempt from asan when marked up with @(no\_sanitize\_address)

#### Memory

Enabled with `-sanitize:memory` when building an odin project.

The memory sanitizer is another runtime memory error detector with the sole purpose to catch the
use of uninitialized memory. This is not a very common bug in Odin as by default everything is
set to zero when initialised (ZII).
For more information about the memory sanitizer see: https://clang.llvm.org/docs/MemorySanitizer.html

#### Thread

Enabled with `-sanitize:thread` when building an odin project.

The thread sanitizer is a runtime data race detector. It can be used to detect if multiple threads
are concurrently writing and accessing a memory location without proper syncronisation.
For more information about the thread sanitizer see: https://clang.llvm.org/docs/ThreadSanitizer.html

## Index

Types (4)

* [Address\_Access\_Type](#Address_Access_Type)
* [Address\_Death\_Callback](#Address_Death_Callback)
* [Address\_Located\_Address](#Address_Located_Address)
* [Address\_Shadow\_Mapping](#Address_Shadow_Mapping)

Constants (0)

This section is empty.

Variables (0)

This section is empty.

Procedures (36)

* [address\_describe\_address](#address_describe_address)
* [address\_get\_alloc\_stack\_trace](#address_get_alloc_stack_trace)
* [address\_get\_current\_fake\_stack](#address_get_current_fake_stack)
* [address\_get\_free\_stack\_trace](#address_get_free_stack_trace)
* [address\_get\_report\_access\_size](#address_get_report_access_size)
* [address\_get\_report\_access\_type](#address_get_report_access_type)
* [address\_get\_report\_address](#address_get_report_address)
* [address\_get\_report\_bp](#address_get_report_bp)
* [address\_get\_report\_description](#address_get_report_description)
* [address\_get\_report\_pc](#address_get_report_pc)
* [address\_get\_report\_sp](#address_get_report_sp)
* [address\_get\_shadow\_mapping](#address_get_shadow_mapping)
* [address\_handle\_no\_return](#address_handle_no_return)
* [address\_is\_in\_fake\_stack](#address_is_in_fake_stack)
* [address\_is\_poisoned](#address_is_poisoned)
* [address\_locate\_address](#address_locate_address)
* [address\_poison\_ptr](#address_poison_ptr)
* [address\_poison\_rawptr](#address_poison_rawptr)
* [address\_poison\_rawptr\_uint](#address_poison_rawptr_uint)
* [address\_poison\_slice](#address_poison_slice)
* [address\_print\_accumulated\_stats](#address_print_accumulated_stats)
* [address\_region\_is\_poisoned\_ptr](#address_region_is_poisoned_ptr)
* [address\_region\_is\_poisoned\_rawptr](#address_region_is_poisoned_rawptr)
* [address\_region\_is\_poisoned\_rawptr\_uint](#address_region_is_poisoned_rawptr_uint)
* [address\_region\_is\_poisoned\_slice](#address_region_is_poisoned_slice)
* [address\_report\_present](#address_report_present)
* [address\_set\_death\_callback](#address_set_death_callback)
* [address\_unpoison\_ptr](#address_unpoison_ptr)
* [address\_unpoison\_rawptr](#address_unpoison_rawptr)
* [address\_unpoison\_rawptr\_uint](#address_unpoison_rawptr_uint)
* [address\_unpoison\_slice](#address_unpoison_slice)
* [address\_update\_allocation\_context](#address_update_allocation_context)
* [memory\_unpoison\_ptr](#memory_unpoison_ptr)
* [memory\_unpoison\_rawptr](#memory_unpoison_rawptr)
* [memory\_unpoison\_rawptr\_uint](#memory_unpoison_rawptr_uint)
* [memory\_unpoison\_slice](#memory_unpoison_slice)

Procedure Groups (4)

* [address\_poison](#address_poison)
* [address\_region\_is\_poisoned](#address_region_is_poisoned)
* [address\_unpoison](#address_unpoison)
* [memory\_unpoison](#memory_unpoison)

## Types

### [Address\_Access\_Type ¶](#Address_Access_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L37)

```
Address_Access_Type :: enum int {
	none, 
	read, 
	write, 
}
```

##### Related Procedures With Returns

* [address\_get\_report\_access\_type](/base/sanitizer/#address_get_report_access_type)

### [Address\_Death\_Callback ¶](#Address_Death_Callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L4)

```
Address_Death_Callback :: proc "c" (pc: rawptr, bp: rawptr, sp: rawptr, addr: rawptr, is_write: i32, access_size: uint)
```

##### Related Procedures With Parameters

* [address\_set\_death\_callback](/base/sanitizer/#address_set_death_callback)

### [Address\_Located\_Address ¶](#Address_Located_Address) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L43)

```
Address_Located_Address :: struct {
	category: string,
	name:     string,
	region:   []u8,
}
```

##### Related Procedures With Returns

* [address\_locate\_address](/base/sanitizer/#address_locate_address)

### [Address\_Shadow\_Mapping ¶](#Address_Shadow_Mapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L49)

```
Address_Shadow_Mapping :: struct {
	scale:  uint,
	offset: uint,
}
```

##### Related Procedures With Returns

* [address\_get\_shadow\_mapping](/base/sanitizer/#address_get_shadow_mapping)

## Constants

This section is empty.

## Variables

This section is empty.

## Procedures

### [address\_describe\_address ¶](#address_describe_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L316)

```
address_describe_address :: proc "contextless" (address: rawptr) {…}
```

 

Describes the sanitizer state for an address.

This procedure prints the description out to `stdout`.

When asan is not enabled this procedure does nothing.

### [address\_get\_alloc\_stack\_trace ¶](#address_get_alloc_stack_trace) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L482)

```
address_get_alloc_stack_trace :: proc "contextless" (addr: rawptr, data: []rawptr) -> ([]rawptr, int) {…}
```

 

Returns the allocation stack trace and thread id for a heap address.

The stack trace is filled into the `data` slice.

When asan is not enabled this procedure returns a zero initialised value.

### [address\_get\_current\_fake\_stack ¶](#address_get_current_fake_stack) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L546)

```
address_get_current_fake_stack :: proc "contextless" () -> rawptr {…}
```

 

Returns the address of the current fake stack used by asan.

This pointer can be then used for `address_is_in_fake_stack`.

When asan is not enabled this procedure returns `nil`.

### [address\_get\_free\_stack\_trace ¶](#address_get_free_stack_trace) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L500)

```
address_get_free_stack_trace :: proc "contextless" (addr: rawptr, data: []rawptr) -> ([]rawptr, int) {…}
```

 

Returns the free stack trace and thread id for a heap address.

The stack trace is filled into the `data` slice.

When asan is not enabled this procedure returns zero initialised values.

### [address\_get\_report\_access\_size ¶](#address_get_report_access_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L428)

```
address_get_report_access_size :: proc "contextless" () -> uint {…}
```

 

Returns the access size of an asan error.

If no asan error has occurd `0` is returned.

When asan is not enabled this procedure returns `0`.

### [address\_get\_report\_access\_type ¶](#address_get_report_access_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L409)

```
address_get_report_access_type :: proc "contextless" () -> Address_Access_Type {…}
```

 

Returns the address access type of an asan error.

If no asan error has occurd `.none` is returned.

When asan is not enabled this procedure returns `.none`.

### [address\_get\_report\_address ¶](#address_get_report_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L393)

```
address_get_report_address :: proc "contextless" () -> rawptr {…}
```

 

Returns the report buffer address of an asan error.

If no asan error has occurd `nil` is returned.

When asan is not enabled this procedure returns `nil`.

### [address\_get\_report\_bp ¶](#address_get_report_bp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L361)

```
address_get_report_bp :: proc "contextless" () -> rawptr {…}
```

 

Returns the base pointer register value of an asan error.

If no asan error has occurd `nil` is returned.

When asan is not enabled this procedure returns `nil`.

### [address\_get\_report\_description ¶](#address_get_report_description) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L444)

```
address_get_report_description :: proc "contextless" () -> string {…}
```

 

Returns the bug description of an asan error.

If no asan error has occurd an empty string is returned.

When asan is not enabled this procedure returns an empty string.

### [address\_get\_report\_pc ¶](#address_get_report_pc) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L345)

```
address_get_report_pc :: proc "contextless" () -> rawptr {…}
```

 

Returns the program counter register value of an asan error.

If no asan error has occurd `nil` is returned.

When asan is not enabled this procedure returns `nil`.

### [address\_get\_report\_sp ¶](#address_get_report_sp) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L377)

```
address_get_report_sp :: proc "contextless" () -> rawptr {…}
```

 

Returns the stack pointer register value of an asan error.

If no asan error has occurd `nil` is returned.

When asan is not enabled this procedure returns `nil`.

### [address\_get\_shadow\_mapping ¶](#address_get_shadow_mapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L516)

```
address_get_shadow_mapping :: proc "contextless" () -> Address_Shadow_Mapping {…}
```

 

Returns the current asan shadow memory mapping.

When asan is not enabled this procedure returns a zero initialised value.

### [address\_handle\_no\_return ¶](#address_handle_no_return) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L580)

```
address_handle_no_return :: proc "contextless" () {…}
```

 

Performs shadow memory cleanup for the current thread before a procedure with no return is called
i.e. a procedure such as `panic` and `os.exit`.

When asan is not enabled this procedure does nothing.

### [address\_is\_in\_fake\_stack ¶](#address_is_in_fake_stack) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L560)

```
address_is_in_fake_stack :: proc "contextless" (fake_stack: rawptr, addr: rawptr) -> ([]u8, bool) {…}
```

 

Returns if an address belongs to a given fake stack and if so the region of the fake frame.

When asan is not enabled this procedure returns zero initialised values.

### [address\_is\_poisoned ¶](#address_is_poisoned) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L300)

```
address_is_poisoned :: proc "contextless" (address: rawptr) -> bool {…}
```

 

Checks if the address is poisoned.

If it is poisoned this procedure returns `true`, otherwise it returns
`false`.

When asan is not enabled this procedure returns `false`.

### [address\_locate\_address ¶](#address_locate_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L463)

```
address_locate_address :: proc "contextless" (addr: rawptr, data: []u8) -> Address_Located_Address {…}
```

 

Returns asan information about the address provided, writing the category into `data`.

The information provided include:
The category of the address, i.e. stack, global, heap, etc.
The name of the variable this address belongs to
The memory region of the address

When asan is not enabled this procedure returns zero initialised values.

### [address\_poison\_ptr ¶](#address_poison_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L96)

```
address_poison_ptr :: proc "contextless" (ptr: ^$T) {…}
```

 

Marks a pointer as unaddressable

Code instrumented with `-sanitize:address` is forbidden from accessing any address
within the region the pointer points to. This procedure is not thread-safe because no
two threads can poison or unpoison memory in the same memory region region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_poison](/base/sanitizer/#address_poison)

### [address\_poison\_rawptr ¶](#address_poison_rawptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L129)

```
address_poison_rawptr :: proc "contextless" (ptr: rawptr, len: int) {…}
```

 

Marks the region covering `[ptr, ptr+len)` as unaddressable

Code instrumented with `-sanitize:address` is forbidden from accessing any address
within the region. This procedure is not thread-safe because no two threads can
poison or unpoison memory in the same memory region region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_poison](/base/sanitizer/#address_poison)

### [address\_poison\_rawptr\_uint ¶](#address_poison_rawptr_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L146)

```
address_poison_rawptr_uint :: proc "contextless" (ptr: rawptr, len: uint) {…}
```

 

Marks the region covering `[ptr, ptr+len)` as unaddressable

Code instrumented with `-sanitize:address` is forbidden from accessing any address
within the region. This procedure is not thread-safe because no two threads can
poison or unpoison memory in the same memory region region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_poison](/base/sanitizer/#address_poison)

### [address\_poison\_slice ¶](#address_poison_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L64)

```
address_poison_slice :: proc "contextless" (region: $T/[]$E) {…}
```

 

Marks a slice as unaddressable

Code instrumented with `-sanitize:address` is forbidden from accessing any address
within the slice. This procedure is not thread-safe because no two threads can
poison or unpoison memory in the same memory region region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_poison](/base/sanitizer/#address_poison)

### [address\_print\_accumulated\_stats ¶](#address_print_accumulated_stats) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L532)

```
address_print_accumulated_stats :: proc "contextless" () {…}
```

 

Prints asan statistics to `stderr`

When asan is not enabled this procedure does nothing.

### [address\_region\_is\_poisoned\_ptr ¶](#address_region_is_poisoned_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L240)

```
address_region_is_poisoned_ptr :: proc "contextless" (ptr: ^$T) -> rawptr {…}
```

 

Checks if the memory region pointed to by the pointer is poisoned.

If it is poisoned this procedure returns the address which would result
in an asan error.

When asan is not enabled this procedure returns `nil`.




##### Related Procedure Groups

* [address\_region\_is\_poisoned](/base/sanitizer/#address_region_is_poisoned)

### [address\_region\_is\_poisoned\_rawptr ¶](#address_region_is_poisoned_rawptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L257)

```
address_region_is_poisoned_rawptr :: proc "contextless" (region: rawptr, len: int) -> rawptr {…}
```

 

Checks if the memory region covered by `[ptr, ptr+len)` is poisoned.

If it is poisoned this procedure returns the address which would result
in an asan error.

When asan is not enabled this procedure returns `nil`.




##### Related Procedure Groups

* [address\_region\_is\_poisoned](/base/sanitizer/#address_region_is_poisoned)

### [address\_region\_is\_poisoned\_rawptr\_uint ¶](#address_region_is_poisoned_rawptr_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L275)

```
address_region_is_poisoned_rawptr_uint :: proc "contextless" (region: rawptr, len: uint) -> rawptr {…}
```

 

Checks if the memory region covered by `[ptr, ptr+len)` is poisoned.

If it is poisoned this procedure returns the address which would result
in an asan error.

When asan is not enabled this procedure returns `nil`.




##### Related Procedure Groups

* [address\_region\_is\_poisoned](/base/sanitizer/#address_region_is_poisoned)

### [address\_region\_is\_poisoned\_slice ¶](#address_region_is_poisoned_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L223)

```
address_region_is_poisoned_slice :: proc "contextless" (region: $T/[]$E) -> rawptr {…}
```

 

Checks if the memory region covered by the slice is poisoned.

If it is poisoned this procedure returns the address which would result
in an asan error.

When asan is not enabled this procedure returns `nil`.




##### Related Procedure Groups

* [address\_region\_is\_poisoned](/base/sanitizer/#address_region_is_poisoned)

### [address\_report\_present ¶](#address_report_present) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L329)

```
address_report_present :: proc "contextless" () -> bool {…}
```

 

Returns `true` if an asan error has occured, otherwise it returns
`false`.

When asan is not enabled this procedure returns `false`.

### [address\_set\_death\_callback ¶](#address_set_death_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L208)

```
address_set_death_callback :: proc "contextless" (callback: Address_Death_Callback) {…}
```

 

Registers a callback to be run when asan detects a memory error right before terminating
the process.

This can be used for logging and/or debugging purposes.

When asan is not enabled this procedure does nothing.

### [address\_unpoison\_ptr ¶](#address_unpoison_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L113)

```
address_unpoison_ptr :: proc "contextless" (ptr: ^$T) {…}
```

 

Marks a pointer as addressable

Code instrumented with `-sanitize:address` is allowed to access any address
within the region the pointer points to again. This procedure is not thread-safe
because no two threads can poison or unpoison memory in the same memory region
region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_unpoison](/base/sanitizer/#address_unpoison)

### [address\_unpoison\_rawptr ¶](#address_unpoison_rawptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L162)

```
address_unpoison_rawptr :: proc "contextless" (ptr: rawptr, len: int) {…}
```

 

Marks the region covering `[ptr, ptr+len)` as addressable

Code instrumented with `-sanitize:address` is allowed to access any address
within the region again. This procedure is not thread-safe because no two
threads can poison or unpoison memory in the same memory region region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_unpoison](/base/sanitizer/#address_unpoison)

### [address\_unpoison\_rawptr\_uint ¶](#address_unpoison_rawptr_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L179)

```
address_unpoison_rawptr_uint :: proc "contextless" (ptr: rawptr, len: uint) {…}
```

 

Marks the region covering `[ptr, ptr+len)` as addressable

Code instrumented with `-sanitize:address` is allowed to access any address
within the region again. This procedure is not thread-safe because no two
threads can poison or unpoison memory in the same memory region region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_unpoison](/base/sanitizer/#address_unpoison)

### [address\_unpoison\_slice ¶](#address_unpoison_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L80)

```
address_unpoison_slice :: proc "contextless" (region: $T/[]$E) {…}
```

 

Marks a slice as addressable

Code instrumented with `-sanitize:address` is allowed to access any address
within the slice again. This procedure is not thread-safe because no two threads
can poison or unpoison memory in the same memory region region simultaneously.

When asan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [address\_unpoison](/base/sanitizer/#address_unpoison)

### [address\_update\_allocation\_context ¶](#address_update_allocation_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L594)

```
address_update_allocation_context :: proc "contextless" (addr: rawptr) -> bool {…}
```

 

Updates the allocation stack trace for the given address.

Returns `true` if successful, otherwise it returns `false`.

When asan is not enabled this procedure returns `false`.

### [memory\_unpoison\_ptr ¶](#memory_unpoison_ptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/memory.odin#L35)

```
memory_unpoison_ptr :: proc "contextless" (ptr: ^$T) {…}
```

 

Marks a pointer as fully initialized.

Code instrumented with `-sanitize:memory` will be permitted to access memory
within the region the pointer points to as if it had already been initialized.

When msan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [memory\_unpoison](/base/sanitizer/#memory_unpoison)

### [memory\_unpoison\_rawptr ¶](#memory_unpoison_rawptr) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/memory.odin#L49)

```
memory_unpoison_rawptr :: proc "contextless" (ptr: rawptr, len: int) {…}
```

 

Marks the region covering `[ptr, ptr+len)` as fully initialized.

Code instrumented with `-sanitize:memory` will be permitted to access memory
within this range as if it had already been initialized.

When msan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [memory\_unpoison](/base/sanitizer/#memory_unpoison)

### [memory\_unpoison\_rawptr\_uint ¶](#memory_unpoison_rawptr_uint) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/memory.odin#L63)

```
memory_unpoison_rawptr_uint :: proc "contextless" (ptr: rawptr, len: uint) {…}
```

 

Marks the region covering `[ptr, ptr+len)` as fully initialized.

Code instrumented with `-sanitize:memory` will be permitted to access memory
within this range as if it had already been initialized.

When msan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [memory\_unpoison](/base/sanitizer/#memory_unpoison)

### [memory\_unpoison\_slice ¶](#memory_unpoison_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/memory.odin#L21)

```
memory_unpoison_slice :: proc "contextless" (region: $T/[]$E) {…}
```

 

Marks a slice as fully initialized.

Code instrumented with `-sanitize:memory` will be permitted to access any
address within the slice as if it had already been initialized.

When msan is not enabled this procedure does nothing.




##### Related Procedure Groups

* [memory\_unpoison](/base/sanitizer/#memory_unpoison)

## Procedure Groups

### [address\_poison ¶](#address_poison) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L185)

```
address_poison :: proc{
	address_poison_slice,
	address_poison_ptr,
	address_poison_rawptr,
	address_poison_rawptr_uint,
}
```

### [address\_region\_is\_poisoned ¶](#address_region_is_poisoned) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L284)

```
address_region_is_poisoned :: proc{
	address_region_is_poisoned_slice,
	address_region_is_poisoned_ptr,
	address_region_is_poisoned_rawptr,
	address_region_is_poisoned_rawptr_uint,
}
```

### [address\_unpoison ¶](#address_unpoison) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin#L192)

```
address_unpoison :: proc{
	address_unpoison_slice,
	address_unpoison_ptr,
	address_unpoison_rawptr,
	address_unpoison_rawptr_uint,
}
```

### [memory\_unpoison ¶](#memory_unpoison) [*Source*](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/memory.odin#L69)

```
memory_unpoison :: proc{
	memory_unpoison_slice,
	memory_unpoison_ptr,
	memory_unpoison_rawptr,
	memory_unpoison_rawptr_uint,
}
```

## Source Files

* [address.odin](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/address.odin)
* [doc.odin](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/doc.odin)
* [memory.odin](https://github.com/odin-lang/Odin/tree/master/base/sanitizer/memory.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:45.116593500 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Address\_Access\_Type](#Address_Access_Type)
    + [Address\_Death\_Callback](#Address_Death_Callback)
    + [Address\_Located\_Address](#Address_Located_Address)
    + [Address\_Shadow\_Mapping](#Address_Shadow_Mapping)
  * [Procedures](#pkg-Procedures)
    + [address\_describe\_address](#address_describe_address)
    + [address\_get\_alloc\_stack\_trace](#address_get_alloc_stack_trace)
    + [address\_get\_current\_fake\_stack](#address_get_current_fake_stack)
    + [address\_get\_free\_stack\_trace](#address_get_free_stack_trace)
    + [address\_get\_report\_access\_size](#address_get_report_access_size)
    + [address\_get\_report\_access\_type](#address_get_report_access_type)
    + [address\_get\_report\_address](#address_get_report_address)
    + [address\_get\_report\_bp](#address_get_report_bp)
    + [address\_get\_report\_description](#address_get_report_description)
    + [address\_get\_report\_pc](#address_get_report_pc)
    + [address\_get\_report\_sp](#address_get_report_sp)
    + [address\_get\_shadow\_mapping](#address_get_shadow_mapping)
    + [address\_handle\_no\_return](#address_handle_no_return)
    + [address\_is\_in\_fake\_stack](#address_is_in_fake_stack)
    + [address\_is\_poisoned](#address_is_poisoned)
    + [address\_locate\_address](#address_locate_address)
    + [address\_poison\_ptr](#address_poison_ptr)
    + [address\_poison\_rawptr](#address_poison_rawptr)
    + [address\_poison\_rawptr\_uint](#address_poison_rawptr_uint)
    + [address\_poison\_slice](#address_poison_slice)
    + [address\_print\_accumulated\_stats](#address_print_accumulated_stats)
    + [address\_region\_is\_poisoned\_ptr](#address_region_is_poisoned_ptr)
    + [address\_region\_is\_poisoned\_rawptr](#address_region_is_poisoned_rawptr)
    + [address\_region\_is\_poisoned\_rawptr\_uint](#address_region_is_poisoned_rawptr_uint)
    + [address\_region\_is\_poisoned\_slice](#address_region_is_poisoned_slice)
    + [address\_report\_present](#address_report_present)
    + [address\_set\_death\_callback](#address_set_death_callback)
    + [address\_unpoison\_ptr](#address_unpoison_ptr)
    + [address\_unpoison\_rawptr](#address_unpoison_rawptr)
    + [address\_unpoison\_rawptr\_uint](#address_unpoison_rawptr_uint)
    + [address\_unpoison\_slice](#address_unpoison_slice)
    + [address\_update\_allocation\_context](#address_update_allocation_context)
    + [memory\_unpoison\_ptr](#memory_unpoison_ptr)
    + [memory\_unpoison\_rawptr](#memory_unpoison_rawptr)
    + [memory\_unpoison\_rawptr\_uint](#memory_unpoison_rawptr_uint)
    + [memory\_unpoison\_slice](#memory_unpoison_slice)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [address\_poison](#address_poison)
    + [address\_region\_is\_poisoned](#address_region_is_poisoned)
    + [address\_unpoison](#address_unpoison)
    + [memory\_unpoison](#memory_unpoison)
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