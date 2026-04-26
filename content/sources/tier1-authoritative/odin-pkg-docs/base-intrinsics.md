package intrinsics - pkg.odin-lang.org 






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



Current Package: *[intrinsics](/base/intrinsics)*

  

#### [base Library](/base)

* [builtin](/base/builtin)
* [intrinsics](/base/intrinsics)
* [runtime](/base/runtime)
* [sanitizer](/base/sanitizer)

1. [base](/base)
2. intrinsics

# package base:intrinsics [*Source*](https://github.com/odin-lang/Odin/tree/master/base/intrinsics)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

package intrinsics provides documentation for Odin's compiler-level intrinsics.

## Index

Constants (0)

This section is empty.

Types (7)

* [Atomic\_Memory\_Order](#Atomic_Memory_Order)
* [objc\_Class](#objc_Class)
* [objc\_SEL](#objc_SEL)
* [objc\_class](#objc_class)
* [objc\_id](#objc_id)
* [objc\_object](#objc_object)
* [objc\_selector](#objc_selector)

Procedures (229)

* [alloca](#alloca)
* [atomic\_add](#atomic_add)
* [atomic\_add\_explicit](#atomic_add_explicit)
* [atomic\_and](#atomic_and)
* [atomic\_and\_explicit](#atomic_and_explicit)
* [atomic\_compare\_exchange\_strong](#atomic_compare_exchange_strong)
* [atomic\_compare\_exchange\_strong\_explicit](#atomic_compare_exchange_strong_explicit)
* [atomic\_compare\_exchange\_weak](#atomic_compare_exchange_weak)
* [atomic\_compare\_exchange\_weak\_explicit](#atomic_compare_exchange_weak_explicit)
* [atomic\_exchange](#atomic_exchange)
* [atomic\_exchange\_explicit](#atomic_exchange_explicit)
* [atomic\_load](#atomic_load)
* [atomic\_load\_explicit](#atomic_load_explicit)
* [atomic\_nand](#atomic_nand)
* [atomic\_nand\_explicit](#atomic_nand_explicit)
* [atomic\_or](#atomic_or)
* [atomic\_or\_explicit](#atomic_or_explicit)
* [atomic\_signal\_fence](#atomic_signal_fence)
* [atomic\_store](#atomic_store)
* [atomic\_store\_explicit](#atomic_store_explicit)
* [atomic\_sub](#atomic_sub)
* [atomic\_sub\_explicit](#atomic_sub_explicit)
* [atomic\_thread\_fence](#atomic_thread_fence)
* [atomic\_type\_is\_lock\_free](#atomic_type_is_lock_free)
* [atomic\_xor](#atomic_xor)
* [atomic\_xor\_explicit](#atomic_xor_explicit)
* [byte\_swap](#byte_swap)
* [concatenate](#concatenate)
* [constant\_ceil](#constant_ceil)
* [constant\_floor](#constant_floor)
* [constant\_log2](#constant_log2)
* [constant\_round](#constant_round)
* [constant\_trunc](#constant_trunc)
* [constant\_utf16\_cstring](#constant_utf16_cstring)
* [count\_leading\_zeros](#count_leading_zeros)
* [count\_ones](#count_ones)
* [count\_trailing\_zeros](#count_trailing_zeros)
* [count\_zeros](#count_zeros)
* [cpu\_relax](#cpu_relax)
* [debug\_trap](#debug_trap)
* [expect](#expect)
* [fixed\_point\_div](#fixed_point_div)
* [fixed\_point\_div\_sat](#fixed_point_div_sat)
* [fixed\_point\_mul](#fixed_point_mul)
* [fixed\_point\_mul\_sat](#fixed_point_mul_sat)
* [fused\_mul\_add](#fused_mul_add)
* [hadamard\_product](#hadamard_product)
* [has\_target\_feature](#has_target_feature)
* [matrix\_flatten](#matrix_flatten)
* [mem\_copy](#mem_copy)
* [mem\_copy\_non\_overlapping](#mem_copy_non_overlapping)
* [mem\_zero](#mem_zero)
* [mem\_zero\_volatile](#mem_zero_volatile)
* [non\_temporal\_load](#non_temporal_load)
* [non\_temporal\_store](#non_temporal_store)
* [objc\_block](#objc_block)
* [objc\_find\_class](#objc_find_class)
* [objc\_find\_selector](#objc_find_selector)
* [objc\_ivar\_get](#objc_ivar_get)
* [objc\_register\_class](#objc_register_class)
* [objc\_register\_selector](#objc_register_selector)
* [objc\_super](#objc_super)
* [outer\_product](#outer_product)
* [overflow\_add](#overflow_add)
* [overflow\_mul](#overflow_mul)
* [overflow\_sub](#overflow_sub)
* [prefetch\_read\_data](#prefetch_read_data)
* [prefetch\_read\_instruction](#prefetch_read_instruction)
* [prefetch\_write\_data](#prefetch_write_data)
* [prefetch\_write\_instruction](#prefetch_write_instruction)
* [procedure\_of](#procedure_of)
* [ptr\_offset](#ptr_offset)
* [ptr\_sub](#ptr_sub)
* [read\_cycle\_counter](#read_cycle_counter)
* [read\_cycle\_counter\_frequency](#read_cycle_counter_frequency)
* [reverse\_bits](#reverse_bits)
* [saturating\_add](#saturating_add)
* [saturating\_sub](#saturating_sub)
* [simd\_abs](#simd_abs)
* [simd\_add](#simd_add)
* [simd\_bit\_and](#simd_bit_and)
* [simd\_bit\_and\_not](#simd_bit_and_not)
* [simd\_bit\_or](#simd_bit_or)
* [simd\_bit\_xor](#simd_bit_xor)
* [simd\_ceil](#simd_ceil)
* [simd\_clamp](#simd_clamp)
* [simd\_div](#simd_div)
* [simd\_extract](#simd_extract)
* [simd\_extract\_lsbs](#simd_extract_lsbs)
* [simd\_extract\_msbs](#simd_extract_msbs)
* [simd\_floor](#simd_floor)
* [simd\_gather](#simd_gather)
* [simd\_lanes\_eq](#simd_lanes_eq)
* [simd\_lanes\_ge](#simd_lanes_ge)
* [simd\_lanes\_gt](#simd_lanes_gt)
* [simd\_lanes\_le](#simd_lanes_le)
* [simd\_lanes\_lt](#simd_lanes_lt)
* [simd\_lanes\_ne](#simd_lanes_ne)
* [simd\_lanes\_reverse](#simd_lanes_reverse)
* [simd\_lanes\_rotate\_left](#simd_lanes_rotate_left)
* [simd\_lanes\_rotate\_right](#simd_lanes_rotate_right)
* [simd\_masked\_compress\_store](#simd_masked_compress_store)
* [simd\_masked\_expand\_load](#simd_masked_expand_load)
* [simd\_masked\_load](#simd_masked_load)
* [simd\_masked\_store](#simd_masked_store)
* [simd\_max](#simd_max)
* [simd\_min](#simd_min)
* [simd\_mul](#simd_mul)
* [simd\_nearest](#simd_nearest)
* [simd\_neg](#simd_neg)
* [simd\_reduce\_add\_ordered](#simd_reduce_add_ordered)
* [simd\_reduce\_all](#simd_reduce_all)
* [simd\_reduce\_and](#simd_reduce_and)
* [simd\_reduce\_any](#simd_reduce_any)
* [simd\_reduce\_max](#simd_reduce_max)
* [simd\_reduce\_min](#simd_reduce_min)
* [simd\_reduce\_mul\_ordered](#simd_reduce_mul_ordered)
* [simd\_reduce\_or](#simd_reduce_or)
* [simd\_reduce\_xor](#simd_reduce_xor)
* [simd\_replace](#simd_replace)
* [simd\_runtime\_swizzle](#simd_runtime_swizzle)
* [simd\_saturating\_add](#simd_saturating_add)
* [simd\_saturating\_sub](#simd_saturating_sub)
* [simd\_scatter](#simd_scatter)
* [simd\_select](#simd_select)
* [simd\_shl](#simd_shl)
* [simd\_shl\_masked](#simd_shl_masked)
* [simd\_shr](#simd_shr)
* [simd\_shr\_masked](#simd_shr_masked)
* [simd\_shuffle](#simd_shuffle)
* [simd\_sub](#simd_sub)
* [simd\_to\_bits](#simd_to_bits)
* [simd\_trunc](#simd_trunc)
* [soa\_struct](#soa_struct)
* [sqrt](#sqrt)
* [syscall](#syscall)
* [syscall\_bsd](#syscall_bsd)
* [transpose](#transpose)
* [trap](#trap)
* [type\_base\_type](#type_base_type)
* [type\_bit\_set\_elem\_type](#type_bit_set_elem_type)
* [type\_bit\_set\_underlying\_type](#type_bit_set_underlying_type)
* [type\_convert\_variants\_to\_pointers](#type_convert_variants_to_pointers)
* [type\_core\_type](#type_core_type)
* [type\_elem\_type](#type_elem_type)
* [type\_equal\_proc](#type_equal_proc)
* [type\_field\_index\_of](#type_field_index_of)
* [type\_field\_type](#type_field_type)
* [type\_has\_field](#type_has_field)
* [type\_has\_nil](#type_has_nil)
* [type\_hasher\_proc](#type_hasher_proc)
* [type\_is\_any](#type_is_any)
* [type\_is\_array](#type_is_array)
* [type\_is\_bit\_set](#type_is_bit_set)
* [type\_is\_boolean](#type_is_boolean)
* [type\_is\_comparable](#type_is_comparable)
* [type\_is\_complex](#type_is_complex)
* [type\_is\_cstring](#type_is_cstring)
* [type\_is\_cstring16](#type_is_cstring16)
* [type\_is\_dereferenceable](#type_is_dereferenceable)
* [type\_is\_dynamic\_array](#type_is_dynamic_array)
* [type\_is\_endian\_big](#type_is_endian_big)
* [type\_is\_endian\_little](#type_is_endian_little)
* [type\_is\_endian\_platform](#type_is_endian_platform)
* [type\_is\_enum](#type_is_enum)
* [type\_is\_enumerated\_array](#type_is_enumerated_array)
* [type\_is\_float](#type_is_float)
* [type\_is\_indexable](#type_is_indexable)
* [type\_is\_integer](#type_is_integer)
* [type\_is\_map](#type_is_map)
* [type\_is\_matrix](#type_is_matrix)
* [type\_is\_matrix\_column\_major](#type_is_matrix_column_major)
* [type\_is\_matrix\_row\_major](#type_is_matrix_row_major)
* [type\_is\_multi\_pointer](#type_is_multi_pointer)
* [type\_is\_named](#type_is_named)
* [type\_is\_nearly\_simple\_compare](#type_is_nearly_simple_compare)
* [type\_is\_numeric](#type_is_numeric)
* [type\_is\_ordered](#type_is_ordered)
* [type\_is\_ordered\_numeric](#type_is_ordered_numeric)
* [type\_is\_pointer](#type_is_pointer)
* [type\_is\_proc](#type_is_proc)
* [type\_is\_quaternion](#type_is_quaternion)
* [type\_is\_raw\_union](#type_is_raw_union)
* [type\_is\_rune](#type_is_rune)
* [type\_is\_simd\_vector](#type_is_simd_vector)
* [type\_is\_simple\_compare](#type_is_simple_compare)
* [type\_is\_slice](#type_is_slice)
* [type\_is\_sliceable](#type_is_sliceable)
* [type\_is\_specialization\_of](#type_is_specialization_of)
* [type\_is\_specialized\_polymorphic\_record](#type_is_specialized_polymorphic_record)
* [type\_is\_string](#type_is_string)
* [type\_is\_string16](#type_is_string16)
* [type\_is\_struct](#type_is_struct)
* [type\_is\_subtype\_of](#type_is_subtype_of)
* [type\_is\_typeid](#type_is_typeid)
* [type\_is\_union](#type_is_union)
* [type\_is\_unsigned](#type_is_unsigned)
* [type\_is\_unspecialized\_polymorphic\_record](#type_is_unspecialized_polymorphic_record)
* [type\_is\_valid\_map\_key](#type_is_valid_map_key)
* [type\_is\_valid\_matrix\_elements](#type_is_valid_matrix_elements)
* [type\_is\_variant\_of](#type_is_variant_of)
* [type\_map\_cell\_info](#type_map_cell_info)
* [type\_map\_info](#type_map_info)
* [type\_merge](#type_merge)
* [type\_polymorphic\_record\_parameter\_count](#type_polymorphic_record_parameter_count)
* [type\_polymorphic\_record\_parameter\_value](#type_polymorphic_record_parameter_value)
* [type\_proc\_parameter\_count](#type_proc_parameter_count)
* [type\_proc\_parameter\_type](#type_proc_parameter_type)
* [type\_proc\_return\_count](#type_proc_return_count)
* [type\_proc\_return\_type](#type_proc_return_type)
* [type\_struct\_field\_count](#type_struct_field_count)
* [type\_struct\_has\_implicit\_padding](#type_struct_has_implicit_padding)
* [type\_union\_base\_tag\_value](#type_union_base_tag_value)
* [type\_union\_tag\_offset](#type_union_tag_offset)
* [type\_union\_tag\_type](#type_union_tag_type)
* [type\_union\_variant\_count](#type_union_variant_count)
* [type\_variant\_index\_of](#type_variant_index_of)
* [type\_variant\_type\_of](#type_variant_type_of)
* [unaligned\_load](#unaligned_load)
* [unaligned\_store](#unaligned_store)
* [valgrind\_client\_request](#valgrind_client_request)
* [volatile\_load](#volatile_load)
* [volatile\_store](#volatile_store)
* [wasm\_memory\_atomic\_notify32](#wasm_memory_atomic_notify32)
* [wasm\_memory\_atomic\_wait32](#wasm_memory_atomic_wait32)
* [wasm\_memory\_grow](#wasm_memory_grow)
* [wasm\_memory\_size](#wasm_memory_size)
* [x86\_cpuid](#x86_cpuid)
* [x86\_xgetbv](#x86_xgetbv)

Procedure Groups (0)

This section is empty.

## Constants

## Types

### [Atomic\_Memory\_Order ¶](#Atomic_Memory_Order)

```
Atomic_Memory_Order :: enum {
	Relaxed = 0, // Unordered
	Consume = 1, // Monotonic
	Acquire = 2,
	Release = 3,
	Acq_Rel = 4,
	Seq_Cst = 5,
}
```

 

Describes memory ordering for an atomic operation.

Modern CPU's contain multiple cores and caches specific to those cores. When a
core performs a write to memory, the value is written to cache first. The issue
is that a core doesn't typically see what's inside the caches of other cores.
In order to make operations consistent CPU's implement mechanisms that
synchronize memory operations across cores by asking other cores or by
pushing data about writes to other cores.

Due to how these algorithms are implemented, the stores and loads performed by
one core may seem to happen in a different order to another core. It also may
happen that a core reorders stores and loads (independent of how compiler put
them into the machine code). This can cause issues when trying to synchronize
multiple memory locations between two cores. Which is why CPU's allow for
stronger memory ordering guarantees if certain instructions or instruction
variants are used.

In Odin there are 5 different memory ordering guarantees that can be provided
to an atomic operation:

`Relaxed`: The memory access (load or store) is unordered with respect to
other memory accesses. This can be used to implement an atomic counter.
Multiple threads access a single variable, but it doesn't matter when
exactly it gets incremented, because it will become eventually consistent.
`Consume`: No loads or stores dependent on a memory location can be
reordered before a load with consume memory order. If other threads released
the same memory, it becomes visible.
`Acquire`: No loads or stores on a memory location can be reordered before a
load of that memory location with acquire memory ordering. If other threads
release the same memory, it becomes visible.
`Release`: No loads or stores on a memory location can be reordered after a
store of that memory location with release memory ordering. All threads that
acquire the same memory location will see all writes done by the current
thread.
`Acq_Rel`: Acquire-release memory ordering: combines acquire and release
memory orderings in the same operation.
`Seq_Cst`: Sequential consistency. The strongest memory ordering. A load will
always be an acquire operation, a store will always be a release operation,
and in addition to that all threads observe the same order of writes.

Non-explicit atomics will always be sequentially consistent.

```
Atomic_Memory_Order :: enum {
	Relaxed = 0, // Unordered
	Consume = 1, // Monotonic
	Acquire = 2,
	Release = 3,
	Acq_Rel = 4,
	Seq_Cst = 5,
}
```

**Note(i386, x64)**: x86 has a very strong memory model by default. It
guarantees that all writes are ordered, stores and loads aren't reordered. In
a sense, all operations are at least acquire and release operations. If `lock`
prefix is used, all operations are sequentially consistent. If you use explicit
atomics, make sure you have the correct atomic memory order, because bugs likely
will not show up in x86, but may show up on e.g. arm. More on x86 memory
ordering can be found
[here](https://www.cs.cmu.edu/~410-f10/doc/Intel_Reordering_318147.pdf)

### [objc\_Class ¶](#objc_Class)

```
objc_Class :: ^objc_class
```

 

Darwin targets only
Represents an Objective-C `Class` type.

### [objc\_SEL ¶](#objc_SEL)

```
objc_SEL :: ^objc_selector
```

 

Darwin targets only
Represents an Objective-C `SEL` type.

### [objc\_class ¶](#objc_class)

```
objc_class :: struct {}
```

 

Darwin targets only
Represents an Objective-C `class` type.

### [objc\_id ¶](#objc_id)

```
objc_id :: ^objc_object
```

 

Darwin targets only
Represents an Objective-C `id` type.

### [objc\_object ¶](#objc_object)

```
objc_object :: struct {}
```

 

Darwin targets only
Represents an Objective-C `object` type.

### [objc\_selector ¶](#objc_selector)

```
objc_selector :: struct {}
```

 

Darwin targets only
Represents an Objective-C `selector` type.

## Procedures

### [alloca ¶](#alloca)

```
alloca :: proc(size, align: int) -> [^]byte {…}
```

 

A procedure that allocates `size` bytes of space in the stack frame of the caller, aligned to `align` bytes. This temporary space is automatically freed when the procedure that called `alloca` returns to its caller.

### [atomic\_add ¶](#atomic_add)

```
atomic_add :: proc(dst: ^$T, val: T) -> T {…}
```

 

Atomically add a value to the value stored in memory.

This procedure loads a value from memory, adds the specified value to it, and
stores it back as an atomic operation. This operation is an atomic equivalent
of the following:

```
dst^ += val
```

The memory ordering of this operation is sequentially-consistent.

### [atomic\_add\_explicit ¶](#atomic_add_explicit)

```
atomic_add_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically add a value to the value stored in memory.

This procedure loads a value from memory, adds the specified value to it, and
stores it back as an atomic operation. This operation is an atomic equivalent
of the following:

```
dst^ += val
```

The memory ordering of this operation is as specified by the `order` parameter.

### [atomic\_and ¶](#atomic_and)

```
atomic_and :: proc(dst: ^$T, val: T) -> T {…}
```

 

Atomically replace the memory location with the result of AND operation with
the specified value.

This procedure loads a value from memory, calculates the result of AND operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ &= val
```

The memory ordering of this operation is sequentially-consistent.

### [atomic\_and\_explicit ¶](#atomic_and_explicit)

```
atomic_and_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically replace the memory location with the result of AND operation with
the specified value.

This procedure loads a value from memory, calculates the result of AND operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ &= val
```

The memory ordering of this operation is as specified by the `order` parameter.

### [atomic\_compare\_exchange\_strong ¶](#atomic_compare_exchange_strong)

```
atomic_compare_exchange_strong :: proc(dst: ^$T, old, new: T) -> (T, bool) #optional_ok {…}
```

 

Atomically compare and exchange the value with a memory location.

This procedure checks if the value pointed to by the `dst` parameter is equal
to `old`, and if they are, it stores the value `new` into the memory location,
all done in a single atomic operation. This procedure returns the old value
stored in a memory location and a boolean value signifying whether `old` was
equal to `new`.

This procedure is an atomic equivalent of the following operation:

```
old_dst := dst^
if old_dst == old {
	dst^ = new
	return old_dst, true
} else {
	return old_dst, false
}
```

The strong version of compare exchange always returns true, when the returned
old value stored in location pointed to by `dst` and the `old` parameter are
equal.

Atomic compare exchange has two memory orderings: One is for the
read-modify-write operation, if the comparison succeeds, and the other is for
the load operation, if the comparison fails. The memory ordering for both of
of these operations is sequentially-consistent.

### [atomic\_compare\_exchange\_strong\_explicit ¶](#atomic_compare_exchange_strong_explicit)

```
atomic_compare_exchange_strong_explicit :: proc(dst: ^$T, old, new: T, success, failure: Atomic_Memory_Order) -> (T, bool) #optional_ok {…}
```

 

Atomically compare and exchange the value with a memory location.

This procedure checks if the value pointed to by the `dst` parameter is equal
to `old`, and if they are, it stores the value `new` into the memory location,
all done in a single atomic operation. This procedure returns the old value
stored in a memory location and a boolean value signifying whether `old` was
equal to `new`.

This procedure is an atomic equivalent of the following operation:

```
old_dst := dst^
if old_dst == old {
	dst^ = new
	return old_dst, true
} else {
	return old_dst, false
}
```

The strong version of compare exchange always returns true, when the returned
old value stored in location pointed to by `dst` and the `old` parameter are
equal.

Atomic compare exchange has two memory orderings: One is for the
read-modify-write operation, if the comparison succeeds, and the other is for
the load operation, if the comparison fails. The memory ordering for these
operations is as specified by `success` and `failure` parameters respectively.

### [atomic\_compare\_exchange\_weak ¶](#atomic_compare_exchange_weak)

```
atomic_compare_exchange_weak :: proc(dst: ^$T, old, new: T) -> (T, bool) #optional_ok {…}
```

 

Atomically compare and exchange the value with a memory location.

This procedure checks if the value pointed to by the `dst` parameter is equal
to `old`, and if they are, it stores the value `new` into the memory location,
all done in a single atomic operation. This procedure returns the old value
stored in a memory location and a boolean value signifying whether `old` was
equal to `new`.

This procedure is an atomic equivalent of the following operation:

```
old_dst := dst^
if old_dst == old {
	// may return false here
	dst^ = new
	return old_dst, true
} else {
	return old_dst, false
}
```

The weak version of compare exchange may return false, even if `dst^ == old`.
On some platforms running weak compare exchange in a loop is faster than a
strong version.

Atomic compare exchange has two memory orderings: One is for the
read-modify-write operation, if the comparison succeeds, and the other is for
the load operation, if the comparison fails. The memory ordering for both
of these operations is sequentially-consistent.

### [atomic\_compare\_exchange\_weak\_explicit ¶](#atomic_compare_exchange_weak_explicit)

```
atomic_compare_exchange_weak_explicit :: proc(dst: ^$T, old, new: T, success, failure: Atomic_Memory_Order) -> (T, bool) #optional_ok {…}
```

 

Atomically compare and exchange the value with a memory location.

This procedure checks if the value pointed to by the `dst` parameter is equal
to `old`, and if they are, it stores the value `new` into the memory location,
all done in a single atomic operation. This procedure returns the old value
stored in a memory location and a boolean value signifying whether `old` was
equal to `new`.

This procedure is an atomic equivalent of the following operation:

```
old_dst := dst^
if old_dst == old {
	// may return false here
	dst^ = new
	return old_dst, true
} else {
	return old_dst, false
}
```

The weak version of compare exchange may return false, even if `dst^ == old`.
On some platforms running weak compare exchange in a loop is faster than a
strong version.

Atomic compare exchange has two memory orderings: One is for the
read-modify-write operation, if the comparison succeeds, and the other is for
the load operation, if the comparison fails. The memory ordering for these
operations is as specified by the `success` and `failure` parameters
respectively.

### [atomic\_exchange ¶](#atomic_exchange)

```
atomic_exchange :: proc(dst: ^$T, val: T) -> T {…}
```

 

Atomically exchange the value in a memory location, with the specified value.

This procedure loads a value from the specified memory location, and stores the
specified value into that memory location. Then the loaded value is returned,
all done in a single atomic operation. This operation is an atomic equivalent
of the following:

```
tmp := dst^
dst^ = val
return tmp
```

The memory ordering of this operation is sequentially-consistent.

### [atomic\_exchange\_explicit ¶](#atomic_exchange_explicit)

```
atomic_exchange_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically exchange the value in a memory location, with the specified value.

This procedure loads a value from the specified memory location, and stores the
specified value into that memory location. Then the loaded value is returned,
all done in a single atomic operation. This operation is an atomic equivalent
of the following:

```
tmp := dst^
dst^ = val
return tmp
```

The memory ordering of this operation is as specified by the `order` parameter.

### [atomic\_load ¶](#atomic_load)

```
atomic_load :: proc(dst: ^$T) -> T {…}
```

 

Atomically load a value from memory.

This procedure loads a value from a memory location in such a way that the
received value is not a partial read. The memory ordering of this operation is
sequentially-consistent.

### [atomic\_load\_explicit ¶](#atomic_load_explicit)

```
atomic_load_explicit :: proc(dst: ^$T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically load a value from memory with explicit memory ordering.

This procedure loads a value from a memory location in such a way that the
received value is not a partial read. The memory ordering of this operation
is as specified by the `order` parameter.

### [atomic\_nand ¶](#atomic_nand)

```
atomic_nand :: proc(dst: ^$T, val: T) -> T {…}
```

 

Atomically replace the memory location with the result of NAND operation with
the specified value.

This procedure loads a value from memory, calculates the result of NAND operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ = ~(dst^ & val)
```

The memory ordering of this operation is sequentially-consistent.

### [atomic\_nand\_explicit ¶](#atomic_nand_explicit)

```
atomic_nand_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically replace the memory location with the result of NAND operation with
the specified value.

This procedure loads a value from memory, calculates the result of NAND operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ = ~(dst^ & val)
```

The memory ordering of this operation is as specified by the `order` parameter.

### [atomic\_or ¶](#atomic_or)

```
atomic_or :: proc(dst: ^$T, val: T) -> T {…}
```

 

Atomically replace the memory location with the result of OR operation with
the specified value.

This procedure loads a value from memory, calculates the result of OR operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ |= val
```

The memory ordering of this operation is sequentially-consistent.

### [atomic\_or\_explicit ¶](#atomic_or_explicit)

```
atomic_or_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically replace the memory location with the result of OR operation with
the specified value.

This procedure loads a value from memory, calculates the result of OR operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ |= val
```

The memory ordering of this operation is as specified by the `order` parameter.

### [atomic\_signal\_fence ¶](#atomic_signal_fence)

```
atomic_signal_fence :: proc(order: Atomic_Memory_Order) {…}
```

 

Adds a "fence" to introduce a "happens-before" edges between operations.

Establish memory ordering between a current thread and a signal handler.

This procedure establishes memory ordering between a thread and a signal
handler, that run on the same thread, without an associated atomic operation.
This procedure is equivalent to `atomic_thread_fence`, except it doesn't
issue any CPU instructions for memory ordering.

### [atomic\_store ¶](#atomic_store)

```
atomic_store :: proc(dst: ^$T, val: T) {…}
```

 

Atomically store a value into memory.

This procedure stores a value to a memory location in such a way that no other
thread is able to see partial reads. This operation is sequentially-consistent.

### [atomic\_store\_explicit ¶](#atomic_store_explicit)

```
atomic_store_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) {…}
```

 

Atomically store a value into memory with explicit memory ordering.

This procedure stores a value to a memory location in such a way that no other
thread is able to see partial reads. The memory ordering of this operation is
as specified by the `order` parameter.

### [atomic\_sub ¶](#atomic_sub)

```
atomic_sub :: proc(dst: ^$T, val: T) -> T {…}
```

 

Atomically subtract a value from the value stored in memory.

This procedure loads a value from memory, subtracts the specified value from it,
and stores the result back as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ -= val
```

The memory ordering of this operation is sequentially-consistent.

### [atomic\_sub\_explicit ¶](#atomic_sub_explicit)

```
atomic_sub_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically subtract a value from the value stored in memory.

This procedure loads a value from memory, subtracts the specified value from it,
and stores the result back as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ -= val
```

The memory ordering of this operation is as specified by the `order` parameter.

### [atomic\_thread\_fence ¶](#atomic_thread_fence)

```
atomic_thread_fence :: proc(order: Atomic_Memory_Order) {…}
```

 

Adds a "fence" to introduce a "happens-before" edges between operations.

Establish memory ordering.

This procedure establishes memory ordering, without an associated atomic
operation.

### [atomic\_type\_is\_lock\_free ¶](#atomic_type_is_lock_free)

```
atomic_type_is_lock_free :: proc($T: typeid) -> bool {…}
```

### [atomic\_xor ¶](#atomic_xor)

```
atomic_xor :: proc(dst: ^$T, val: T) -> T {…}
```

 

Atomically replace the memory location with the result of XOR operation with
the specified value.

This procedure loads a value from memory, calculates the result of XOR operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ ~= val
```

The memory ordering of this operation is sequentially-consistent.

### [atomic\_xor\_explicit ¶](#atomic_xor_explicit)

```
atomic_xor_explicit :: proc(dst: ^$T, val: T, order: Atomic_Memory_Order) -> T {…}
```

 

Atomically replace the memory location with the result of XOR operation with
the specified value.

This procedure loads a value from memory, calculates the result of XOR operation
between the loaded value and the specified value, and stores it back into the
same memory location as an atomic operation. This operation is an atomic
equivalent of the following:

```
dst^ ~= val
```

The memory ordering of this operation is as specified by the `order` parameter.

### [byte\_swap ¶](#byte_swap)

```
byte_swap :: proc(x: $T) -> T where type_is_integer(T) || type_is_float(T) {…}
```

 

Reverses the bytes from ascending order to descending order e.g. `0xfe_ed_01_12` -> `0x12_01_ed_fe`

### [concatenate ¶](#concatenate)

```
concatenate ::  proc(x, y: $T, z: ..T) -> T where type_is_array(T) || type_is_slice(T) {…}
```

 

concatenates 2+ constant slices or arrays values together to form a new one.

**Example:**

```
x :: intrinsics.concatenate([]int{1, 2, 3}, []int{4, 5, 6}, {1, 1, -1})
#assert(type_of(x) == []int)

y :: intrinsics.concatenate([3]int{1, 2, 3}, [?]int{4, 5}, [?]int{6, 1, 1, -1})
#assert(type_of(y) == [9]int)
```

### [constant\_ceil ¶](#constant_ceil)

```
constant_ceil :: proc($v: $T) -> T where type_is_integer(T) || type_is_float(T) {…}
```

 

Returns the ceiling of the given constant integer or float.

### [constant\_floor ¶](#constant_floor)

```
constant_floor :: proc($v: $T) -> T where type_is_integer(T) || type_is_float(T) {…}
```

 

Returns the floored value of the given constant integer or float.

### [constant\_log2 ¶](#constant_log2)

```
constant_log2 :: proc($v: $T) -> T where type_is_integer(T) {…}
```

 

Returns the log2 value of the given constant integer.

### [constant\_round ¶](#constant_round)

```
constant_round :: proc($v: $T) -> T where type_is_integer(T) || type_is_float(T) {…}
```

 

Returns the rounded value of the given constant integer or float.

### [constant\_trunc ¶](#constant_trunc)

```
constant_trunc :: proc($v: $T) -> T where type_is_integer(T) || type_is_float(T) {…}
```

 

Returns the truncated value of the given constant integer or float.

### [constant\_utf16\_cstring ¶](#constant_utf16_cstring)

```
constant_utf16_cstring :: proc($literal: string) -> [^]u16 {…}
```

 

Returns a runtime value of a constant string UTF-8 value encoded as a UTF-16 NULL terminated string value, useful for interfacing with UTF-16 procedure such as the Windows API.

**Important Note:** This will be deprecated soon as UTF-16 string types and literals are supported natively.

### [count\_leading\_zeros ¶](#count_leading_zeros)

```
count_leading_zeros :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Counts the number of leading unset bits (`0`s) until a set bit (`1`) is seen or all bits have been counted.

### [count\_ones ¶](#count_ones)

```
count_ones :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Counts the number of set bits (`1`s).

### [count\_trailing\_zeros ¶](#count_trailing_zeros)

```
count_trailing_zeros :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Counts the number of trailing unset bits (`0`s) until a set bit (`1`) is seen or all bits have been counted.

### [count\_zeros ¶](#count_zeros)

```
count_zeros :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Counts the number of unset bits (`0`s).

### [cpu\_relax ¶](#cpu_relax)

```
cpu_relax :: proc() {…}
```

 

On i386/amd64, it should map to the `pause` instruction. On arm64, it should map to `isb` instruction (see https://bugs.java.com/bugdatabase/view\_bug.do?bug\_id=8258604 for more information).

### [debug\_trap ¶](#debug_trap)

```
debug_trap :: proc() {…}
```

 

A call intended to cause an execution trap with the intention of requesting a debugger's attention.

### [expect ¶](#expect)

```
expect :: proc(val, expected_val: T) -> T {…}
```

 

Provides information about expected (the most probable) value of `val`, which can be used by optimizing backends.

### [fixed\_point\_div ¶](#fixed_point_div)

```
fixed_point_div :: proc(lhs, rhs: $T, #const scale: uint) -> T where type_is_integer(T) {…}
```

 

A fixed point number represents a real data type for a number that has a fixed number of digits after a radix point. The number of digits after the radix point is referred to as `scale`.

### [fixed\_point\_div\_sat ¶](#fixed_point_div_sat)

```
fixed_point_div_sat :: proc(lhs, rhs: $T, #const scale: uint) -> T where type_is_integer(T) {…}
```

 

A fixed point number represents a real data type for a number that has a fixed number of digits after a radix point. The number of digits after the radix point is referred to as `scale`.

### [fixed\_point\_mul ¶](#fixed_point_mul)

```
fixed_point_mul :: proc(lhs, rhs: $T, #const scale: uint) -> T where type_is_integer(T) {…}
```

 

A fixed point number represents a real data type for a number that has a fixed number of digits after a radix point. The number of digits after the radix point is referred to as `scale`.

### [fixed\_point\_mul\_sat ¶](#fixed_point_mul_sat)

```
fixed_point_mul_sat :: proc(lhs, rhs: $T, #const scale: uint) -> T where type_is_integer(T) {…}
```

 

A fixed point number represents a real data type for a number that has a fixed number of digits after a radix point. The number of digits after the radix point is referred to as `scale`.

### [fused\_mul\_add ¶](#fused_mul_add)

```
fused_mul_add :: proc(a, b, c: $T) -> T where type_is_float(T) || (type_is_simd_vector(T) && type_is_float(type_elem_type(T))) {…}
```

### [hadamard\_product ¶](#hadamard_product)

```
hadamard_product :: proc(a, b: $T/matrix[$R, $C]$E) -> T {…}
```

### [has\_target\_feature ¶](#has_target_feature)

```
has_target_feature :: proc($test: $T) -> bool where type_is_string(T) || type_is_proc(T) {…}
```

 

Checks if the current target supports the given target features.

Takes a constant comma-separated string (eg: "sha512,sse4.1"), or a procedure type which has either `@(require_target_feature)` or `@(enable_target_feature)` as its input and returns a boolean indicating if all listed features are supported.

### [matrix\_flatten ¶](#matrix_flatten)

```
matrix_flatten :: proc(m: $T/matrix[$R, $C]$E) -> [R*C]E {…}
```

### [mem\_copy ¶](#mem_copy)

```
mem_copy :: proc(dst, src: rawptr, len: int) {…}
```

 

Copies a block of memory from the `src` location to the `dst` location but assumes that the memory ranges could be overlapping. It is equivalent to C's `memmove`, but unlike the C's libc procedure, it does not return value.

### [mem\_copy\_non\_overlapping ¶](#mem_copy_non_overlapping)

```
mem_copy_non_overlapping :: proc(dst, src: rawptr, len: int) {…}
```

 

Copies a block of memory from the `src` location to the `dst` location but it does not assume the memory ranges could be overlapping. It is equivalent to C's `memcpy`, but unlike the C's libc procedure, it does not return value.

### [mem\_zero ¶](#mem_zero)

```
mem_zero :: proc(ptr: rawptr, len: int) {…}
```

 

Zeroes a block of memory at the `ptr` location for `len` bytes.

### [mem\_zero\_volatile ¶](#mem_zero_volatile)

```
mem_zero_volatile :: proc(ptr: rawptr, len: int) {…}
```

 

Zeroes a block of memory at the `ptr` location for `len` bytes with volatile semantics.

### [non\_temporal\_load ¶](#non_temporal_load)

```
non_temporal_load :: proc(dst: ^$T) -> T {…}
```

 

Tells the code generator of a compiler that this operation is not expected to be reused in the cache. The code generator may select special instructions to save cache bandwidth (e.g. on x86, `movnt` instruct might be used).

### [non\_temporal\_store ¶](#non_temporal_store)

```
non_temporal_store :: proc(dst: ^$T, val: T) {…}
```

 

Tells the code generator of a compiler that this operation is not expected to be reused in the cache. The code generator may select special instructions to save cache bandwidth (e.g. on x86, `movnt` instruct might be used).

### [objc\_block ¶](#objc_block)

```
objc_block :: proc(invoke: $T, ..any) -> ^Objc_Block(T) where type_is_proc(T) {…}
```

 

Darwin targets only

### [objc\_find\_class ¶](#objc_find_class)

```
objc_find_class :: proc($name: string) -> objc_Class {…}
```

 

Darwin targets only
Will return a run-time cached class value for the given constant string value.

### [objc\_find\_selector ¶](#objc_find_selector)

```
objc_find_selector :: proc($name: string) -> objc_SEL {…}
```

 

Darwin targets only
Will return a run-time cached selector value for the given constant string value.

### [objc\_ivar\_get ¶](#objc_ivar_get)

```
objc_ivar_get :: proc(self: $T) ^$U {…}
```

 

Darwin targets only

### [objc\_register\_class ¶](#objc_register_class)

```
objc_register_class :: proc($name: string) -> objc_Class {…}
```

 

Darwin targets only
Will register a class value at run-time for the given constant string value.

### [objc\_register\_selector ¶](#objc_register_selector)

```
objc_register_selector :: proc($name: string) -> objc_SEL {…}
```

 

Darwin targets only
Will register a selector value at run-time for the given constant string value.

### [objc\_super ¶](#objc_super)

```
objc_super :: proc(obj: ^$T) -> ^$U where type_is_subtype_of(T, objc_object), type_is_subtype_of(U, objc_object) {…}
```

 

Darwin targets only

### [outer\_product ¶](#outer_product)

```
outer_product :: proc(a: $A/[$X]$E, b: $B/[$Y]E) -> matrix[X, Y]E {…}
```

### [overflow\_add ¶](#overflow_add)

```
overflow_add :: proc(lhs, rhs: $T) -> (T, bool) where type_is_integer(T) #optional_ok {…}
```

 

Performs an "add" operation with an overflow check. The second return value will be true if an overflow occurs.

### [overflow\_mul ¶](#overflow_mul)

```
overflow_mul :: proc(lhs, rhs: $T) -> (T, bool) where type_is_integer(T) #optional_ok {…}
```

 

Performs a "multiply" operation with an overflow check. The second return value will be true if an overflow occurs.

### [overflow\_sub ¶](#overflow_sub)

```
overflow_sub :: proc(lhs, rhs: $T) -> (T, bool) where type_is_integer(T) #optional_ok {…}
```

 

Performs a "subtract" operation with an overflow check. The second return value will be true if an overflow occurs.

### [prefetch\_read\_data ¶](#prefetch_read_data)

```
prefetch_read_data :: proc(address: rawptr, #const locality: i32 /* 0..=3 */) {…}
```

 

The `prefetch_*` intrinsic are a hint to the code generator to insert a prefetch instruction if supported; otherwise, it is a no-op. Prefetches have no affect on the behaviour of the program but can change its performance characteristics.

The `locality` parameter must be a constant integer, and its temporal locality value ranges from `0` (no locality) to `3` (extremely local, keep in cache).

### [prefetch\_read\_instruction ¶](#prefetch_read_instruction)

```
prefetch_read_instruction :: proc(address: rawptr, #const locality: i32 /* 0..=3 */) {…}
```

 

The `prefetch_*` intrinsic are a hint to the code generator to insert a prefetch instruction if supported; otherwise, it is a no-op. Prefetches have no affect on the behaviour of the program but can change its performance characteristics.

The `locality` parameter must be a constant integer, and its temporal locality value ranges from `0` (no locality) to `3` (extremely local, keep in cache).

### [prefetch\_write\_data ¶](#prefetch_write_data)

```
prefetch_write_data :: proc(address: rawptr, #const locality: i32 /* 0..=3 */) {…}
```

 

The `prefetch_*` intrinsic are a hint to the code generator to insert a prefetch instruction if supported; otherwise, it is a no-op. Prefetches have no affect on the behaviour of the program but can change its performance characteristics.

The `locality` parameter must be a constant integer, and its temporal locality value ranges from `0` (no locality) to `3` (extremely local, keep in cache).

### [prefetch\_write\_instruction ¶](#prefetch_write_instruction)

```
prefetch_write_instruction :: proc(address: rawptr, #const locality: i32 /* 0..=3 */) {…}
```

 

The `prefetch_*` intrinsic are a hint to the code generator to insert a prefetch instruction if supported; otherwise, it is a no-op. Prefetches have no affect on the behaviour of the program but can change its performance characteristics.

The `locality` parameter must be a constant integer, and its temporal locality value ranges from `0` (no locality) to `3` (extremely local, keep in cache).

### [procedure\_of ¶](#procedure_of)

```
procedure_of :: proc(x: $T) -> T where type_is_proc(T) {…}
```

 

Returns the value of the procedure where `x` must be a call expression.

### [ptr\_offset ¶](#ptr_offset)

```
ptr_offset :: proc(ptr: ^$T, offset: int) -> ^T {…}
```

 

Prefer using [^]T operations if possible. e.g. `ptr[offset:]`

### [ptr\_sub ¶](#ptr_sub)

```
ptr_sub :: proc(a, b: ^$T) -> int {…}
```

 

Equivalent to `int(uintptr(a) - uintptr(b)) / size_of(T)`

### [read\_cycle\_counter ¶](#read_cycle_counter)

```
read_cycle_counter :: proc() -> i64 {…}
```

 

This provides access to the cycle counter register (or similar low latency, high accuracy clocks) on the targets that support it. On i386/amd64, it should map to the `rdtsc` instruction. On arm64, it should map to the `cntvct_el0` instruction.

### [read\_cycle\_counter\_frequency ¶](#read_cycle_counter_frequency)

```
read_cycle_counter_frequency :: proc() -> i64 {…}
```

 

This provides access to the frequency that the cycle counter register (or similar low latency, high accuracy clocks) uses on the targets that support it.

### [reverse\_bits ¶](#reverse_bits)

```
reverse_bits :: proc(x: $T) -> T where type_is_integer(T) || type_is_simd_vector(T) {…}
```

 

Reverses the bits from ascending order to descending order e.g. `0b01110101` -> `0b10101110`

### [saturating\_add ¶](#saturating_add)

```
saturating_add :: proc(lhs, rhs: $T) -> T -> where type_is_integer(T) {…}
```

 

Performs a saturating "add" operation, where the return value is clamped between `min(T)` and `max(T)`.

### [saturating\_sub ¶](#saturating_sub)

```
saturating_sub :: proc(lhs, rhs: $T) -> T -> where type_is_integer(T) {…}
```

 

Performs a saturating "subtract" operation, where the return value is clamped between `min(T)` and `max(T)`.

### [simd\_abs ¶](#simd_abs)

```
simd_abs :: proc(a: #simd[N]T) -> #simd[N]T {…}
```

 

Absolute value of a SIMD vector.

This procedure returns a vector where each lane has the absolute value of the
corresponding lane in the vector `a`.

**Inputs:**  
`a`: An integer or a float vector to negate

**Returns:**  
The absolute value of a vector.

**Operation:**

```
for i in 0 ..< len(res) {
	switch {
		case a[i] < 0:  res[i] = -a[i]
		case a[i] > 0:  res[i] = a[i]
		case a[i] == 0: res[i] = 0
	}
}
return res
```


**Example:**

```
   +------+------+------+------+
a: |   0  |  -1  |   2  |  -3  |
   +------+------+------+------+
res:
   +------+------+------+------+
   |   0  |   1  |   2  |   3  |
   +------+------+------+------+
```

### [simd\_add ¶](#simd_add)

```
simd_add :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Add SIMD vectors.

This procedure returns a vector, where each lane holds the sum of the
corresponding `a` and `b` vectors' lanes.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector that is the sum of two input vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] + b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  1  |  2  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  |  2  |  4  |  2  |
   +-----+-----+-----+-----+
```

### [simd\_bit\_and ¶](#simd_bit_and)

```
simd_bit_and :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise AND of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
AND operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise AND operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] & b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0x11 | 0x30 | 0x05 | 0x00 |
   +------+------+------+------+
```

### [simd\_bit\_and\_not ¶](#simd_bit_and_not)

```
simd_bit_and_not :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise AND NOT of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
AND NOT operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise AND NOT operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] &~ b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0x00 | 0x03 | 0x50 | 0xaa |
   +------+------+------+------+
```

### [simd\_bit\_or ¶](#simd_bit_or)

```
simd_bit_or :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise OR of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
OR operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise OR operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] | b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0xff | 0xf3 | 0x5f | 0xaa |
   +------+------+------+------+
```

### [simd\_bit\_xor ¶](#simd_bit_xor)

```
simd_bit_xor :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Bitwise XOR of vectors.

This procedure returns a vector, such that each lane has the result of a bitwise
XOR operation between the corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a boolean vector.
`b`: An integer or a boolean vector.

**Returns:**  
A vector that is the result of the bitwise XOR operation between two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] ~ b[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: | 0x11 | 0x33 | 0x55 | 0xaa |
   +------+------+------+------+
   +------+------+------+------+
b: | 0xff | 0xf0 | 0x0f | 0x00 |
   +------+------+------+------+
res:
   +------+------+------+------+
   | 0xee | 0xc3 | 0x5a | 0xaa |
   +------+------+------+------+
```

### [simd\_ceil ¶](#simd_ceil)

```
simd_ceil :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

lane-wise ceil

Ceil each lane in a SIMD vector.

### [simd\_clamp ¶](#simd_clamp)

```
simd_clamp :: proc(v, min, max: #simd[N]T) -> #simd[N]T {…}
```

 

Clamp lanes of vector.

This procedure returns a vector, where each lane is the result of the
clamping of the lane from the vector `v` between the values in the corresponding
lanes of vectors `min` and `max`.

**Inputs:**  
`v`: An integer or a float vector with values to be clamped.
`min`: An integer or a float vector with minimum bounds.
`max`: An integer or a float vectoe with maximum bounds.

**Returns:**  
A vector containing clamped values in each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	val := v[i]
	switch {
		case val < min: val = min
		case val > max: val = max
	}
	res[i] = val
}
return res
```


**Example:**

```
     +-------+-------+-------+-------+
v:   |  -1   |  0.3  |  1.2  |   1   |
     +-------+-------+-------+-------+
     +-------+-------+-------+-------+
min: |   0   |   0   |   0   |   0   |
     +-------+-------+-------+-------+
     +-------+-------+-------+-------+
max: |   1   |   1   |   1   |   1   |
     +-------+-------+-------+-------+
res:
     +-------+-------+-------+-------+
     |   0   |  0.3  |   1   |   1   |
     +-------+-------+-------+-------+
```

### [simd\_div ¶](#simd_div)

```
simd_div :: proc(a, b: #simd[N]T) -> #simd[N]T where type_is_float(T) {…}
```

 

Divide SIMD vectors.

This procedure returns a vector, where each lane holds the quotient (result
of division) between the corresponding lanes of the vectors `a` and `b`. Each
lane of the vector `a` is divided by the corresponding lane of the vector `b`.

This operation performs a standard floating-point division for each lane.

**Inputs:**  
`a`: A float vector.
`b`: A float vector to divide by.

**Returns:**  
A vector that is the quotient of two vectors, `a` / `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] / b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  2  |  2  |  2  |  2  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  | -1  |  2  | -3  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+------+
   | +∞  | -2  |  1  | -2/3 |
   +-----+-----+-----+------+
```

### [simd\_extract ¶](#simd_extract)

```
simd_extract :: proc(a: #simd[N]T, idx: uint) -> T {…}
```

 

Extracts a single scalar element from a `#simd` vector at a specified index.

Extract scalar from a vector's lane.

This procedure returns the scalar from the lane at the specified index of the
vector.

**Inputs:**  
`a`: The vector to extract from.
`idx`: The lane index.

**Returns:**  
The value of the lane at the specified index.

**Operation:**

```
return a[idx]
```

### [simd\_extract\_lsbs ¶](#simd_extract_lsbs)

```
simd_extract_lsbs :: proc(a: #simd[N]T) -> bit_set[0..where type_is_integer(T) || type_is_boolean(T) {…}
```

 

Extracts the least significant bit of each element of the given vector into a `bit_set`.

Extract the set of least-significant bits of a SIMD vector.

This procedure checks the least-significant bit (LSB) for each lane of vector
and returns the numbers of lanes with the least-significant bit set. This procedure
can be used in conjuction with `lanes_eq` (and other similar procedures) to
count the number of matched lanes by computing the cardinality of the resulting
set.

**Inputs:**  
`a`: An input vector.

Result:
A bitset of integers, corresponding to the indexes of the lanes, whose LSBs
are set.

**Operation:**

```
res = bit_set {}
for i in 0 ..< len(a) {
	if a[i] & 1 != 0 {
		res |= i
	}
}
return res
```


**Example:**

```
// Since lanes 0, 2, 4, 6 contain odd integers, the least significant bits
// for these lanes are set.

import "core:fmt"
import "core:simd"

simd_extract_lsbs_example :: proc() {
	v := #simd [8]i32 { -1, -2, +3, +4, -5, +6, +7, -8 }
	fmt.println(simd.extract_lsbs(v))
}
```

**Output:**

```
bit_set[0..=7]{0, 2, 4, 6}
```

### [simd\_extract\_msbs ¶](#simd_extract_msbs)

```
simd_extract_msbs :: proc(a: #simd[N]T) -> bit_set[0..where type_is_integer(T) || type_is_boolean(T) {…}
```

 

Extracts the most significant bit of each element of the given vector into a `bit_set`.

Extract the set of most-significant bits of a SIMD vector.

This procedure checks the most-significant bit (MSB) for each lane of vector
and returns the numbers of lanes with the most-significant bit set. This procedure
can be used in conjuction with `lanes_eq` (and other similar procedures) to
count the number of matched lanes by computing the cardinality of the resulting
set.

**Inputs:**  
`a`: An input vector.

Result:
A bitset of integers, corresponding to the indexes of the lanes, whose MSBs
are set.

**Operation:**

```
bits_per_lane = 8*size_of(a[0])
res = bit_set {}
for i in 0 ..< len(a) {
	if a[i] & 1<<(bits_per_lane-1) != 0 {
		res |= i
	}
}
return res
```


**Example:**

```
// Since lanes 0, 1, 4, 7 contain negative numbers, the most significant
// bits for them will be set.

import "core:fmt"
import "core:simd"

simd_extract_msbs_example :: proc() {
	v := #simd [8]i32 { -1, -2, +3, +4, -5, +6, +7, -8 }
	fmt.println(simd.extract_msbs(v))
}
```

**Output:**

```
bit_set[0..=7]{0, 1, 4, 7}
```

### [simd\_floor ¶](#simd_floor)

```
simd_floor :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

lane-wise floor

Floor each lane in a SIMD vector.

### [simd\_gather ¶](#simd_gather)

```
simd_gather :: proc(ptr: #simd[N]rawptr, val: #simd[N]T, mask: #simd[N]U) -> #simd[N]T where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a gather load into a vector.

A *gather* operation is memory load operation, that loads values from an vector
of addresses into a single value vector. This can be used to achieve the
following results:

Accessing every N'th element of an array (strided access)
Access of elements according to some computed offsets (indexed access).
Access of elements in a different order (shuffling access).

When used alongside other SIMD procedures in order to compute the offsets
for the `ptr` and `mask` parameters.

**Inputs:**  
`ptr`: A vector of memory locations. Each pointer points to a single value,

```
of a SIMD vector's lane type that will be loaded into the vector. Pointer
in this vector can be `nil` or any other invalid value, if the corresponding
value in the `mask` parameter is zero.
```

`val`: A vector of values that will be used at corresponding positions

```
of the result vector, if the corresponding memory location has been
masked out.
```

`mask`: A vector of booleans or unsigned integers that determines which memory

```
locations to read from. If the value at an index has the value true
(lowest bit set), the value at that index will be loaded into the result
vector from the corresponding memory location in the `ptr` vector. Otherwise
the value will be loaded from the `val` vector.
```

**Returns:**  
A vector with all values from unmasked indices
loaded from the pointer vector `ptr`, and all values from masked indices loaded
from the value vector `val`.

**Operation:**

```
for i in 0 ..< len(res) {
	if mask[i]&1 == 1 {
		res[i] = ptr[i]^
	} else {
		res[i] = val[i]
	}
}
return res
```


**Example:**

```
// Example below loads 2 lanes of values from 2 lanes of float vectors, `v1` and
// `v2`. From each of these vectors we're loading the second value, into the first
// and the third position of the result vector.

// Therefore the `ptrs` argument is initialized such that the first and the third
// value are the addresses of the values that we want to load into the result
// vector, and we'll fill in `nil` for the rest of them. To prevent CPU from
// dereferencing those `nil` addresses we provide the mask that only allows us
// to load valid positions of the `ptrs` array, and the array of defaults which
// will have `127` in each position as the default value.

import "core:fmt"
import "core:simd"

simd_gather_example :: proc() {
	v1 := [4] f32 {1, 2, 3, 4};
	v2 := [4] f32 {9, 10,11,12};
	ptrs := #simd [4]rawptr { &v1[1], nil, &v2[1], nil }
	mask := #simd [4]bool { true, false, true, false }
	defaults := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	res := simd.gather(ptrs, defaults, mask)
	fmt.println(res)
}
```

**Output:**

```
<2, 127, 10, 127>
```

The first and the third positions came from the `ptrs` array, and the other
2 lanes of from the default vector. The graphic below shows how the values of
the result are decided based on the mask:

```
      +-------------------------------+ 
mask: |   1   |   0   |   1   |   0   | 
      +-------------------------------+ 
        |         |       |       `----------------------------.
        |         |       |                                    |
        |          `----  |  ------------------------.         |
        v                 v                          v         v
      +-------------------------------+       +-------------------+
ptrs: |  &m0  |  nil  |  &m2  |  nil  | vals: | d0 | d1 | d2 | d3 |
      +-------------------------------+       +-------------------+
          |               |                          |         |
          |          .--- | -------------------------'         |
          |         |     |          ,-------------------------'
          v         v     v         v
        +-------------------------------+
result: |   m0  |   d1  |   m2  |  d3   |
        +-------------------------------+
```

### [simd\_lanes\_eq ¶](#simd_lanes_eq)

```
simd_lanes_eq :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Return an unsigned integer of the same size as the input type, NOT A BOOLEAN. element-wise: `false => 0x00...00`, `true => 0xff...ff`

Check if lanes of vectors are equal.

This procedure checks each pair of lanes from vectors `a` and `b` for whether
they are equal, and if they are, the corresponding lane of the result vector
will have a value with all bits set (`0xff..ff`). Otherwise the lane of the
result vector will have the value `0`.

**Inputs:**  
`a`: An integer, a float or a boolean vector.
`b`: An integer, a float or a boolean vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] == b[i] {
		res[i] = max(T)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0xff  | 0x00  | 0xff  | 0x00  |
   +-------+-------+-------+-------+
```

### [simd\_lanes\_ge ¶](#simd_lanes_ge)

```
simd_lanes_ge :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Return an unsigned integer of the same size as the input type, NOT A BOOLEAN. element-wise: `false => 0x00...00`, `true => 0xff...ff`

Check if lanes of a vector are greater than or equal than another.
SIMD vector.

This procedure checks each pair of lanes from vectors `a` and `b` for whether the
lane of `a` is greater than or equal to the lane of `b`, and if so, the
corresponding lane of the result vector will have a value with all bits set
(`0xff..ff`). Otherwise the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] >= b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0xff  | 0x00  | 0xff  | 0xff  |
   +-------+-------+-------+-------+
```

### [simd\_lanes\_gt ¶](#simd_lanes_gt)

```
simd_lanes_gt :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Return an unsigned integer of the same size as the input type, NOT A BOOLEAN. element-wise: `false => 0x00...00`, `true => 0xff...ff`

Check if lanes of a vector are greater than another.
vector.

This procedure checks each pair of lanes from vectors `a` and `b` for whether the
lane of `a` is greater than to the lane of `b`, and if so, the corresponding
lane of the result vector will have a value with all bits set (`0xff..ff`).
Otherwise the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] > b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0x00  | 0x00  | 0x00  | 0xff  |
   +-------+-------+-------+-------+
```

### [simd\_lanes\_le ¶](#simd_lanes_le)

```
simd_lanes_le :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Return an unsigned integer of the same size as the input type, NOT A BOOLEAN. element-wise: `false => 0x00...00`, `true => 0xff...ff`

Check if lanes of a vector are less than or equal than another.
SIMD vector.

This procedure checks each pair of lanes from vectors `a` and `b` for whether the
lane of `a` is less than or equal to the lane of `b`, and if so, the
corresponding lane of the result vector will have a value with all bits set
(`0xff..ff`). Otherwise the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] <= b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0xff  | 0xff  | 0xff  | 0x00  |
   +-------+-------+-------+-------+
```

### [simd\_lanes\_lt ¶](#simd_lanes_lt)

```
simd_lanes_lt :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Return an unsigned integer of the same size as the input type, NOT A BOOLEAN. element-wise: `false => 0x00...00`, `true => 0xff...ff`

Check if lanes of a vector are less than another.

This procedure checks each pair of lanes from vectors `a` and `b` for whether
the lane of `a` is less than the lane of `b`, and if so, the corresponding lane
of the result vector will have a value with all bits set (`0xff..ff`). Otherwise
the lane of the result vector will have the value `0`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] < b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
r: | 0x00  | 0xff  | 0x00  | 0x00  |
   +-------+-------+-------+-------+
```

### [simd\_lanes\_ne ¶](#simd_lanes_ne)

```
simd_lanes_ne :: proc(a, b: #simd[N]T) -> #simd[N]Integer {…}
```

 

Return an unsigned integer of the same size as the input type, NOT A BOOLEAN. element-wise: `false => 0x00...00`, `true => 0xff...ff`

Check if lanes of vectors are not equal.

This procedure checks each pair of lanes from vectors `a` and `b` for whether
they are not equal, and if they are, the corresponding lane of the result
vector will have a value with all bits set (`0xff..ff`). Otherwise the lane of
the result vector will have the value `0`.

**Inputs:**  
`a`: An integer, a float or a boolean vector.
`b`: An integer, a float or a boolean vector.

**Returns:**  
A vector of unsigned integers of the same size as the input vector's lanes,
containing the comparison results for each lane.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] != b[i] {
		res[i] = unsigned(-1)
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
   +-------+-------+-------+-------+
a: |   0   |   1   |   2   |   3   |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   0   |   2   |   2   |   2   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+-------+
   | 0x00  | 0xff  | 0x00  | 0xff  |
   +-------+-------+-------+-------+
```

### [simd\_lanes\_reverse ¶](#simd_lanes_reverse)

```
simd_lanes_reverse :: proc(a: #simd[N]T) -> #simd[N]T {…}
```

 

equivalent a swizzle with descending indices, e.g. reserve(a, 3, 2, 1, 0)

Reverse the lanes of a SIMD vector.

This procedure reverses the lanes of a vector, putting last lane in the
first spot, etc. This procedure is equivalent to the following call (for
4-element vectors):

```
swizzle(a, 3, 2, 1, 0)
```

### [simd\_lanes\_rotate\_left ¶](#simd_lanes_rotate_left)

```
simd_lanes_rotate_left :: proc(a: #simd[N]T, $offset: int) -> #simd[N]T {…}
```

 

Rotate the lanes of a SIMD vector left.

This procedure rotates the lanes of a vector, putting the first lane of the
last spot, second lane in the first spot, third lane in the second spot, etc.
For 4-element vectors, this procedure is equvalent to the following:

```
swizzle(a, 1, 2, 3, 0)
```

### [simd\_lanes\_rotate\_right ¶](#simd_lanes_rotate_right)

```
simd_lanes_rotate_right :: proc(a: #simd[N]T, $offset: int) -> #simd[N]T {…}
```

 

Rotate the lanes of a SIMD vector right.

This procedure rotates the lanes of a SIMD vector, putting the first lane of the
second spot, second lane in the third spot, etc. For 4-element vectors, this
procedure is equvalent to the following:

```
swizzle(a, 3, 0, 1, 2)
```

### [simd\_masked\_compress\_store ¶](#simd_masked_compress_store)

```
simd_masked_compress_store :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Store masked values to consecutive memory locations.

This procedure stores values from masked lanes of a vector `val` consecutively
into memory. This operation is the opposite of `masked_expand_load`. The number
of items stored into memory is the number of set bits in the mask. If the value
in a lane of a mask is `true`, that lane is stored into memory. Otherwise
nothing is stored.

**Inputs:**  
`ptr`: The pointer to the memory of a store.
`val`: The vector to store into memory.
`mask`: The mask that selects which values to store into memory.

**Operation:**

```
mem_idx := 0
for i in 0 ..< len(mask) {
	if mask[i]&1 == 1 {
		ptr[mem_idx] = val[i]
		mem_idx += 1
	}
}
```


**Example:**

```
// The code below fills the vector `v` with two values from a 4-element SIMD
// vector, the first and the third value. The items in the mask are set to `true`
// in those lanes.

import "core:fmt"
import "core:simd"

simd_masked_compress_store_example :: proc() {
	v := [2] f64 { };
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f64 { 1, 2, 3, 4 }
	simd.masked_compress_store(&v, vals, mask)
	fmt.println(v)
}
```

**Output:**

```
[1, 3]
```

Graphical representation of the operation:

```
      +-------------------+
mask: | 1  | 0  | 1  | 0  |
      +-------------------+
        |         |
        v         v
      +-------------------+
vals: | v0 | v1 | v2 | v3 |
      +-------------------+
        |      ,--'
ptr     v     v
 +--->+-----------------
      | v0  | v2  | ...
      +-----------------
```

### [simd\_masked\_expand\_load ¶](#simd_masked_expand_load)

```
simd_masked_expand_load :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) -> #simd[N]T where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Load consecutive scalar values and expand into a vector.

This procedure loads a number of consecutive scalar values from an address,
specified by the `ptr` parameter, and stores them in a result vector, according
to the mask. The number of values read from memory is the number of set bits
in the mask. The lanes for which the mask has the value `true` get the next
consecutive value from memory, otherwise if the mask is `false` for the
lane, its value is filled from the corresponding lane of the `val` parameter.

This procedure acts like `masked_store`, except the values from memory are
read consecutively, and not according to the lanes. The memory values are read
and assigned to the result vector's masked lanes in order of increasing
addresses.

**Inputs:**  
`ptr`: The pointer to the memory to read from.
`vals`: The default values for masked-off entries.
`mask`: The mask that determines which lanes get consecutive memory values.

**Returns:**  
The result vector, holding masked memory values unmasked default values.

**Operation:**

```
mem_idx := 0
for i in 0 ..< len(mask) {
	if mask[i]&1 == 1 {
		res[i] = ptr[mem_idx]
		mem_idx += 1
	} else {
		res[i] = val[i]
	}
}
return res
```


**Example:**

```
// The example below loads two values from memory of the vector `v`. Two values in
// the mask are set to `true`, meaning only two memory items will be loaded into
// the result vector. The mask is set to `true` in the first and the third
// position, which specifies that the first memory item will be read into the
// first lane of the result vector, and the second memory item will be read into
// the third lane of the result vector. All the other lanes of the result vector
// will be initialized to the default value `127`.

import "core:fmt"
import "core:simd"

simd_masked_expand_load_example :: proc() {
	v := [2] f64 {1, 2};
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f64 { 0x7f, 0x7f, 0x7f, 0x7f }
	res := simd.masked_expand_load(&v, vals, mask)
	fmt.println(res)
}
```

**Output:**

```
<1, 127, 2, 127>
```

Graphical representation of the operation:

```
ptr --->+-----------+-----
        | m0  | m1  | ...
        +-----------+-----
          |      `--.
          v         v
        +-------------------+         +-------------------+
mask:   | 1  | 0  | 1  | 0  |   vals: | v0 | v1 | v2 | v3 |
        +-------------------+         +-------------------+
          |         |                         |         |
          |     .-- | -----------------------'          |
          |    |    |     ,----------------------------'
          v    v    v    v
        +-------------------+
result: | m0 | v1 | m1 | v3 |
        +-------------------+
```

### [simd\_masked\_load ¶](#simd_masked_load)

```
simd_masked_load :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) -> #simd[N]T where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a masked load into the vector.

This procedure performs a masked load from memory, into the vector. The `ptr`
argument specifies the base address from which the values of the vector
will be loaded. The mask selects the source for the result vector's lanes. If
the mask for the corresponding lane has the value `true` (lowest bit set), the
result lane is loaded from memory. Otherwise the result lane is loaded from the
corresponding lane of the `val` vector.

**Inputs:**  
`ptr`: The address of the vector values to load. Masked-off values are not

```
accessed.
```

`val`: The vector of values that will be loaded into the masked slots of the

```
result vector.
```

`mask`: The mask that selects where to load the values from.

**Returns:**  
The loaded vector. The lanes for which the mask was set are loaded from
memory, and the other lanes are loaded from the `val` vector.

**Operation:**

```
for i in 0 ..< len(res) {
	if mask[i]&1 == 1 {
		res[i] = ptr[i]
	} else {
		res[i] = vals[i]
	}
}
return res
```


**Example:**

```
// The following code loads two values from the `src` vector, the first and the
// third value (selected by the mask). The masked-off values are given the value
// of 127 (`0x7f`).

import "core:fmt"
import "core:simd"

simd_masked_load_example :: proc() {
	src := [4] f32 {1, 2, 3, 4};
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	res := simd.masked_load(&src, vals, mask)
	fmt.println(res)
}
```

**Output:**

```
<1, 127, 3, 127>
```

The graphic below demonstrates the flow of lanes.

```
      +-------------------------------+ 
mask: |   1   |   0   |   1   |   0   | 
      +-------------------------------+ 
        |         |       |       `----------------------------.
        |         |       |                                    |
        |          `----  |  ------------------------.         |
ptr     v                 v                          v         v
+---->+-------------------------------+       +-------------------+
      |   v1  |   v2  |   v3  |   v4  | vals: | d0 | d1 | d2 | d3 |
      +-------------------------------+       +-------------------+
          |               |                          |         |
          |          .--- | -------------------------'         |
          |         |     |          ,-------------------------'
          v         v     v         v
        +-------------------------------+
result: |  v1   |   d1  |  v3   |  d3   |
        +-------------------------------+
```

### [simd\_masked\_store ¶](#simd_masked_store)

```
simd_masked_store :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a masked store to memory.

This procedure performs a masked store from a vector `val`, into memory at
address `ptr`, with the `mask` deciding which lanes are going to be stored,
and which aren't. If the mask at a corresponding lane has the value `true`
(lowest bit set), the lane is stored into memory. Otherwise the lane is not
stored into memory.

**Inputs:**  
`ptr`: The base address of the store.
`val`: The vector to store.
`mask`: The mask, selecting which lanes of the vector to store into memory.

**Operation:**

```
for i in 0 ..< len(val) {
	if mask[i]&1 == 1 {
		ptr[i] = val
	}
}
```


**Example:**

```
// Example below stores the value 127 into the first and the third slot of the
// vector `v`.

import "core:fmt"
import "core:simd"

simd_masked_store_example :: proc() {
	v := [4] f32 {1, 2, 3, 4};
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	simd.masked_store(&v, vals, mask)
	fmt.println(v)
}
```

**Output:**

```
[127, 2, 127, 4]
```

The graphic below shows the flow of lanes:

```
      +-------------------+
mask: | 1  | 0  | 1  | 0  |
      +-------------------+
        |    |    |    |
        v    X    v    X
      +-------------------+
vals: | v0 | v1 | v2 | v3 |
      +-------------------+
         |         \
ptr      v          v
 +--->+-----------------------+
      | v0  | ... | v2  | ... |
      +-----------------------+
```

### [simd\_max ¶](#simd_max)

```
simd_max :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Maximum of each lane of vectors.

This procedure returns a vector, such that each lane has the maximum value
between the corresponding lanes in vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector containing with maximum values from corresponding lanes of `a` and `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] > b[i] {
		res[i] = a[i]
	} else {
		res[i] = b[i]
	}
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  2  |  1  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  |  2  |  2  |  3  |
   +-----+-----+-----+-----+
```

### [simd\_min ¶](#simd_min)

```
simd_min :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Minimum of each lane of vectors.

This procedure returns a vector, such that each lane has the minimum value
between the corresponding lanes in vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector containing with minimum values from corresponding lanes of `a` and `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if a[i] < b[i] {
		res[i] = a[i]
	} else {
		res[i] = b[i]
	}
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  2  |  1  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  |  1  |  1  | -1  |
   +-----+-----+-----+-----+
```

### [simd\_mul ¶](#simd_mul)

```
simd_mul :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Multiply (component-wise) SIMD vectors.

This procedure returns a vector, where each lane holds the product of the
corresponding lanes of the vectors `a` and `b`.

**Inputs:**  
`a`: An integer or a float vector.
`b`: An integer or a float vector.

**Returns:**  
A vector that is the product of two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] * b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  2  |  2  |  2  |  2  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  | -1  |  2  | -3  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  | -2  |  4  | -6  |
   +-----+-----+-----+-----+
```

### [simd\_nearest ¶](#simd_nearest)

```
simd_nearest :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

rounding to the nearest integral value; if two values are equally near, rounds to the even one

Compute the nearest integer of each lane in a SIMD vector.

### [simd\_neg ¶](#simd_neg)

```
simd_neg :: proc(a: #simd[N]T) -> #simd[N]T {…}
```

 

Negation of a SIMD vector.

This procedure returns a vector where each lane is the negation of the
corresponding lane in the vector `a`.

**Inputs:**  
`a`: An integer or a float vector to negate.

**Returns:**  
The negated version of the vector `a`.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = -a[i]
}
return res
```


**Example:**

```
   +------+------+------+------+
a: |   0  |   1  |   2  |   3  |
   +------+------+------+------+
res:
   +------+------+------+------+
   |   0  |  -1  |  -2  |  -3  |
   +------+------+------+------+
```

### [simd\_reduce\_add\_ordered ¶](#simd_reduce_add_ordered)

```
simd_reduce_add_ordered :: proc(a: #simd[N]T) -> T {…}
```

 

Performs a reduction of a `#simd` vector `a`, returning the result as a scalar. The return type matches the element-type `T` of the `#simd` vector input. See the following pseudocode:

```
simd_reduce_add_ordered :: proc(v: #simd[N]T) -> T {
	result := simd_extract(v, 0)
	for i in 1..<N {
		e := simd_extract(v, i)
		result = result + e
	}
	return result
}
```

Reduce a vector to a scalar by adding up all the lanes in an ordered fashion.

This procedure returns a scalar that is the ordered sum of all lanes. The
ordered sum may be important for accounting for precision errors in
floating-point computation, as floating-point addition is not associative,
that is `(a+b)+c` may not be equal to `a+(b+c)`.

**Inputs:**  
`a`: The vector to reduce.

Result:
Sum of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res += a[i]
}
```

### [simd\_reduce\_all ¶](#simd_reduce_all)

```
simd_reduce_all :: proc(a: #simd[N]T) -> T where type_is_boolean(T) {…}
```

 

Reduce SIMD vector to a scalar by performing bitwise AND of all of the lanes.

This procedure returns a scalar that is the result of the bitwise AND operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise AND of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res &= a[i]
}
```

### [simd\_reduce\_and ¶](#simd_reduce_and)

```
simd_reduce_and :: proc(a: #simd[N]T) -> T {…}
```

 

Performs a reduction of a `#simd` vector `a`, returning the result as a scalar. The return type matches the element-type `T` of the `#simd` vector input. See the following pseudocode:

```
simd_reduce_and :: proc(v: #simd[N]T) -> T {
	result := simd_extract(v, 0)
	for i in 1..<N {
		e := simd_extract(v, i)
		result = result & e
	}
	return result
}
```

Reduce a vector to a scalar by performing bitwise AND of all of the lanes.

This procedure returns a scalar that is the result of the bitwise AND operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise AND of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res &= a[i]
}
```

### [simd\_reduce\_any ¶](#simd_reduce_any)

```
simd_reduce_any :: proc(a: #simd[N]T) -> T where type_is_boolean(T) {…}
```

 

Reduce SIMD vector to a scalar by performing bitwise OR of all of the lanes.

This procedure returns a scalar that is the result of the bitwise OR operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise OR of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res |= a[i]
}
```

### [simd\_reduce\_max ¶](#simd_reduce_max)

```
simd_reduce_max :: proc(a: #simd[N]T) -> T {…}
```

 

Performs a reduction of a `#simd` vector `a`, returning the result as a scalar. The return type matches the element-type `T` of the `#simd` vector input. See the following pseudocode:

```
simd_reduce_max :: proc(v: #simd[N]T) -> T {
	result := simd_extract(v, 0)
	for i in 1..<N {
		e := simd_extract(v, i)
		result = max(result, e)
	}
	return result
}
```

Reduce a vector to a scalar by finding the maximum value between all of the lanes.

This procedure returns a scalar that is the maximum value of all the lanes
in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Maximum value of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res = max(res, a[i])
}
```

### [simd\_reduce\_min ¶](#simd_reduce_min)

```
simd_reduce_min :: proc(a: #simd[N]T) -> T {…}
```

 

Performs a reduction of a `#simd` vector `a`, returning the result as a scalar. The return type matches the element-type `T` of the `#simd` vector input. See the following pseudocode:

```
simd_reduce_min :: proc(v: #simd[N]T) -> T {
	result := simd_extract(v, 0)
	for i in 1..<N {
		e := simd_extract(v, i)
		result = min(result, e)
	}
	return result
}
```

Reduce a vector to a scalar by finding the minimum value between all of the lanes.

This procedure returns a scalar that is the minimum value of all the lanes
in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Minimum value of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res = min(res, a[i])
}
```

### [simd\_reduce\_mul\_ordered ¶](#simd_reduce_mul_ordered)

```
simd_reduce_mul_ordered :: proc(a: #simd[N]T) -> T {…}
```

 

Performs a reduction of a `#simd` vector `a`, returning the result as a scalar. The return type matches the element-type `T` of the `#simd` vector input. See the following pseudocode:

```
simd_reduce_mul_ordered :: proc(v: #simd[N]T) -> T {
	result := simd_extract(v, 0)
	for i in 1..<N {
		e := simd_extract(v, i)
		result = result * e
	}
	return result
}
```

Reduce a vector to a scalar by multiplying all the lanes in an ordered fashion.

This procedure returns a scalar that is the ordered product of all lanes.
The ordered product may be important for accounting for precision errors in
floating-point computation, as floating-point multiplication is not associative,
that is `(a*b)*c` may not be equal to `a*(b*c)`.

**Inputs:**  
`a`: The vector to reduce.

Result:
Product of all lanes, as a scalar.

**Operation:**

```
res := 1
for i in 0 ..< len(a) {
	res *= a[i]
}
```

### [simd\_reduce\_or ¶](#simd_reduce_or)

```
simd_reduce_or :: proc(a: #simd[N]T) -> T {…}
```

 

Performs a reduction of a `#simd` vector `a`, returning the result as a scalar. The return type matches the element-type `T` of the `#simd` vector input. See the following pseudocode:

```
simd_reduce_or :: proc(v: #simd[N]T) -> T {
	result := simd_extract(v, 0)
	for i in 1..<N {
		e := simd_extract(v, i)
		result = result | e
	}
	return result
}
```

Reduce a vector to a scalar by performing bitwise OR of all of the lanes.

This procedure returns a scalar that is the result of the bitwise OR operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise OR of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res |= a[i]
}
```

### [simd\_reduce\_xor ¶](#simd_reduce_xor)

```
simd_reduce_xor :: proc(a: #simd[N]T) -> T {…}
```

 

Performs a reduction of a `#simd` vector `a`, returning the result as a scalar. The return type matches the element-type `T` of the `#simd` vector input. See the following pseudocode:

```
simd_reduce_xor :: proc(v: #simd[N]T) -> T {
	result := simd_extract(v, 0)
	for i in 1..<N {
		e := simd_extract(v, i)
		result = result ~ e
	}
	return result
}
```

Reduce SIMD vector to a scalar by performing bitwise XOR of all of the lanes.

This procedure returns a scalar that is the result of the bitwise XOR operation
between all of the lanes in a vector.

**Inputs:**  
`a`: The vector to reduce.

Result:
Bitwise XOR of all lanes, as a scalar.

**Operation:**

```
res := 0
for i in 0 ..< len(a) {
	res ~= a[i]
}
```

### [simd\_replace ¶](#simd_replace)

```
simd_replace :: proc(a: #simd[N]T, idx: uint, elem: T) -> #simd[N]T {…}
```

 

Replaces a single scalar element from a `#simd` vector and returns a new vector.

Replace the value in a vector's lane.

This procedure places a scalar value at the lane corresponding to the given index of
the vector.

**Inputs:**  
`a`: The vector to replace a lane in.
`idx`: The lane index.
`elem`: The scalar to place.

**Returns:**  
Vector with the specified lane replaced.

**Operation:**

```
a[idx] = elem
```

### [simd\_runtime\_swizzle ¶](#simd_runtime_swizzle)

```
simd_runtime_swizzle :: proc(table: #simd[N]T, indices: #simd[N]T) -> #simd[N]T where type_is_integer(T) {…}
```

 

Runtime Equivalent to Shuffle.

Performs element-wise table lookups using runtime indices.
Each element in the indices vector selects an element from the table vector.
The indices are automatically masked to prevent out-of-bounds access.

This operation is hardware-accelerated on most platforms when using 8-bit
integer vectors. For other element types or unsupported vector sizes, it
falls back to software emulation.

**Inputs:**  
`table`: The lookup table vector (should be power-of-2 size for correct masking).
`indices`: The indices vector (automatically masked to valid range).

**Returns:**  
A vector where `result[i] = table[indices[i] & (table_size-1)]`.

**Operation:**

```
for i in 0 ..< len(indices) {
	masked_index := indices[i] & (len(table) - 1)
	result[i] = table[masked_index]
}
return result
```

Implementation:

```
| Platform    | Lane Size                                 | Implementation      |
|-------------|-------------------------------------------|---------------------|
| x86-64      | pshufb (16B), vpshufb (32B), AVX512 (64B) | Single vector       |
| ARM64       | tbl1 (16B), tbl2 (32B), tbl4 (64B)        | Automatic splitting |
| ARM32       | vtbl1 (8B), vtbl2 (16B), vtbl4 (32B)      | Automatic splitting |
| WebAssembly | i8x16.swizzle (16B), Emulation (>16B)     | Mixed               |
| Other       | Emulation                                 | Software            |
```

**Example:**

```
import "core:simd"
import "core:fmt"

runtime_swizzle_example :: proc() {
	table := simd.u8x16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}
	indices := simd.u8x16{15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
	result := simd.runtime_swizzle(table, indices)
	fmt.println(result) // Expected: {15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
}
```

### [simd\_saturating\_add ¶](#simd_saturating_add)

```
simd_saturating_add :: proc(a, b: #simd[N]T) -> #simd[N]T where type_is_integer(T) {…}
```

 

Saturated addition of SIMD vectors.

The *saturated sum* is a just like a normal sum, except the treatment of the
result upon overflow or underflow is different. In saturated operations, the
result is not wrapped to the bit-width of the lane, and instead is kept clamped
between the minimum and the maximum values of the lane type.

This procedure returns a vector where each lane is the saturated sum of the
corresponding lanes of vectors `a` and `b`.

**Inputs:**  
`a`: An integer vector.
`b`: An integer vector.

**Returns:**  
The saturated sum of the two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	switch {
	case b[i] >= max(type_of(a[i])) - a[i]: // (overflow of a[i])
		res[i] = max(type_of(a[i]))
	case b[i] <= min(type_of(a[i])) - a[i]: // (underflow of a[i])
		res[i] = min(type_of(a[i]))
	} else {
		res[i] = a[i] + b[i]
	}
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-----+-----+-----+-----+
a: |  0  | 255 |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  1  |  3  |  2  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  1  | 255 |  4  |  2  |
   +-----+-----+-----+-----+
```

### [simd\_saturating\_sub ¶](#simd_saturating_sub)

```
simd_saturating_sub :: proc(a, b: #simd[N]T) -> #simd[N]T where type_is_integer(T) {…}
```

 

Saturated subtraction of 2 lanes of vectors.

The *saturated difference* is a just like a normal difference, except the treatment of the
result upon overflow or underflow is different. In saturated operations, the
result is not wrapped to the bit-width of the lane, and instead is kept clamped
between the minimum and the maximum values of the lane type.

This procedure returns a vector where each lane is the saturated difference of
the corresponding lanes of vectors `a` and `b`.

**Inputs:**  
`a`: An integer vector to subtract from.
`b`: An integer vector.

**Returns:**  
The saturated difference of the two vectors.

**Operation:**

```
for i in 0 ..< len(res) {
	switch {
	case b[i] >= max(type_of(a[i])) + a[i]: // (overflow of a[i])
		res[i] = max(type_of(a[i]))
	case b[i] <= min(type_of(a[i])) + a[i]: // (underflow of a[i])
		res[i] = min(type_of(a[i]))
	} else {
		res[i] = a[i] - b[i]
	}
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-----+-----+-----+-----+
a: |  0  | 255 |  2  |  3  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  3  |  3  |  2  | -1  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  0  | 252 |  0  |  4  |
   +-----+-----+-----+-----+
```

### [simd\_scatter ¶](#simd_scatter)

```
simd_scatter :: proc(ptr: rawptr, val: #simd[N]T, mask: #simd[N]U) where type_is_integer(U) || type_is_boolean(U) {…}
```

 

Perform a scatter store from a vector.

A *scatter* operation is a memory store operation that stores values from a
vector into multiple memory locations. This operation is effectively the
opposite of the *gather* operation.

**Inputs:**  
`ptr`: A vector of memory locations. Each masked location will be written

```
to with a value from the `val` vector. Pointers in this vector can be `nil`
or any other invalid value if the corresponding value in the `mask`
parameter is zero.
```

`val`: A vector of values to write to the memory locations.
`mask`: A vector of booleans or unsigned integers that decides which lanes

```
get written to memory. If the value of the mask is `true` (the lowest bit
set), the corresponding lane is written into memory. Otherwise it's not
written into memory.
```

**Operation:**

```
for i in 0 ..< len(ptr) {
	if mask[i]&1 == 1 {
		ptr[i]^ = val[i]
	}
}
```


**Example:**

```
// Example below writes value `127` to the second element of two different
// vectors. The addresses of store destinations are written to the first and the
// third argument of the `ptr` vector, and the `mask` is set accordingly.

import "core:fmt"
import "core:simd"

simd_scatter_example :: proc() {
	v1 := [4] f32 {1, 2, 3, 4};
	v2 := [4] f32 {5, 6, 7, 8};
	ptrs := #simd [4]rawptr { &v1[1], nil, &v2[1], nil }
	mask := #simd [4]bool { true, false, true, false }
	vals := #simd [4]f32 { 0x7f, 0x7f, 0x7f, 0x7f }
	simd.scatter(ptrs, vals, mask)
	fmt.println(v1)
	fmt.println(v2)
}
```

**Output:**

```
[1, 127, 3, 4]
[5, 127, 7, 8]
```

The graphic below shows how the data gets written into memory.

```
      +-------------------+
mask: | 1  | 0  | 1  | 0  |
      +-------------------+
        |    |    |    |
        v    X    v    X
      +-------------------+
vals: | d0 | d1 | d2 | d3 |
      +-------------------+
         |         \
         v          v
      +-----------------------+
ptrs: | &m0 | nil | &m2 | nil |
      +-----------------------+
```

### [simd\_select ¶](#simd_select)

```
simd_select :: proc(cond: #simd[N]boolean_or_integer, true, false: #simd[N]T) -> #simd[N]T {…}
```

 

Select values from one of the two vectors.

This procedure returns a vector, which has, on each lane a value from one of the
corresponding lanes in one of the two input vectors based on the `cond`
parameter. On each lane, if the value of the `cond` parameter is `true` (or
non-zero), the result lane will have a value from the `true` input vector,
otherwise the result lane will have a value from the `false` input vector.

**Inputs:**  
`cond`: The condition vector.
`true`: The first input vector.
`false`: The second input vector.

Result:
The result of selecting values from the two input vectors.

**Operation:**

```
res = {}
for i in 0 ..< len(cond) {
	if cond[i] {
		res[i] = true[i]
	} else {
		res[i] = false[i]
	}
}
return res
```


**Example:**

```
// The following example selects values from the two input vectors, `a` and `b`
// into a single vector.

import "core:fmt"
import "core:simd"

simd_select_example :: proc() {
	a := #simd [4] f64 { 1,2,3,4 }
	b := #simd [4] f64 { 5,6,7,8 }
	cond := #simd[4] int { 1, 0, 1, 0 }
	fmt.println(simd.select(cond,a,b))
}
```

**Output:**

```
<1, 6, 3, 8>
```

Graphically, the operation looks as follows. The `t` and `f` represent the
`true` and `false` vectors respectively:

```
      0     1     2     3            0     1     2     3
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
t:    |  1  |  2  |  3  |  4  |  f:  |  5  |  6  |  7  |  8  |
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
         ^           ^                        ^           ^
         |           |                        |           |
         |           |                        |           |
         |      .--- | ----------------------'            |
         |     |     |     .-----------------------------'
      +-----+-----+-----+-----+
cond: |  1  |  0  |  1  |  0  |
      +-----+-----+-----+-----+
         ^     ^     ^     ^
         |     |     |     |
      +-----+-----+-----+-----+
res:  |  1  |  5  |  3  |  6  |
      +-----+-----+-----+-----+
```

### [simd\_shl ¶](#simd_shl)

```
simd_shl :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Keeps Odin's behaviour: `(x << y) if y <= mask else 0`

Shift left lanes of a vector.

This procedure returns a vector, such that each lane holds the result of a
shift-left (aka shift-up) operation of the corresponding lane from vector `a` by the shift
amount from the corresponding lane of the vector `b`.

If the shift amount is greater than the bit-width of a lane, the result is `0`
in the corresponding positions of the result.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted left by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if b[i] < 8*size_of(a[i]) {
		res[i] = a[i] << b[i]
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
// An example for a 4-lane 8-bit signed integer vector `a`.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x44 |  0xaa |   0   |  0xfe  |
   +-------+-------+-------+--------+
```

### [simd\_shl\_masked ¶](#simd_shl_masked)

```
simd_shl_masked :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Similar to C's behaviour: `x << (y & mask)`

Shift left lanes of a vector (masked).

This procedure returns a vector, such that each lane holds the result of a
shift-left (aka shift-up) operation, of lane from the vector `a` by the shift
amount from the corresponding lane of the vector `b`.

The shift amount is wrapped (masked) to the bit-width of the lane.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted left by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	mask := 8*size_of(a[i]) - 1
	res[i] = a[i] << (b[i] & mask)
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x44 |  0xaa |  0x06 |  0xfe  |
   +-------+-------+-------+--------+
```

### [simd\_shr ¶](#simd_shr)

```
simd_shr :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Keeps Odin's behaviour: `(x >> y) if y <= mask else 0

Shift right lanes of a vector.

This procedure returns a vector, such that each lane holds the result of a
shift-right (aka shift-down) operation, of lane from the vector `a` by the shift
amount from the corresponding lane of the vector `b`.

If the shift amount is greater than the bit-width of a lane, the result is `0`
in the corresponding positions of the result.

If the first vector is a vector of signed integers, the arithmetic shift
operation is performed. Otherwise, if the first vector is a vector of unsigned
integers, a logical shift is performed.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted right by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	if b[i] < 8*size_of(a[i]) {
		res[i] = a[i] >> b[i]
	} else {
		res[i] = 0
	}
}
return res
```


**Example:**

```
// An example for a 4-lane 8-bit signed integer vector `a`.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x04 |  0x2a |   0   |  0x7f  |
   +-------+-------+-------+--------+
```

### [simd\_shr\_masked ¶](#simd_shr_masked)

```
simd_shr_masked :: proc(a: #simd[N]T, b: #simd[N]Unsigned_Integer) -> #simd[N]T {…}
```

 

Similar to C's behaviour: `x >> (y & mask)

Shift right lanes of a vector (masked).

This procedure returns a vector, such that each lane holds the result of a
shift-right (aka shift-down) operation, of lane from the vector `a` by the shift
amount from the corresponding lane of the vector `b`.

The shift amount is wrapped (masked) to the bit-width of the lane.

If the first vector is a vector of signed integers, the arithmetic shift
operation is performed. Otherwise, if the first vector is a vector of unsigned
integers, a logical shift is performed.

**Inputs:**  
`a`: An integer vector of values to shift.
`b`: An unsigned integer vector of the shift amounts.

Result:
A vector, where each lane is the lane from `a` shifted right by the amount
specified in the corresponding lane of the vector `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	mask := 8*size_of(a[i]) - 1
	res[i] = a[i] >> (b[i] & mask)
}
return res
```


**Example:**

```
// An example for a 4-lane vector `a` of 8-bit signed integers.

   +-------+-------+-------+-------+
a: |  0x11 |  0x55 |  0x03 |  0xff |
   +-------+-------+-------+-------+
   +-------+-------+-------+-------+
b: |   2   |   1   |   33  |   1   |
   +-------+-------+-------+-------+
res:
   +-------+-------+-------+--------+
   |  0x04 |  0x2a |  0x01 |  0x7f  |
   +-------+-------+-------+--------+
```

### [simd\_shuffle ¶](#simd_shuffle)

```
simd_shuffle :: proc(a, b: #simd[N]T, $indices: ..int) -> #simd[len(indices)]T {…}
```

 

Reorder the lanes of two SIMD vectors.

This procedure returns a vector, containing the scalars from the lanes of two
vectors, according to the provided indices vector. Each index in the indices
vector specifies, the lane of the scalar from one of the two input vectors,
which will be written at the corresponding position of the result vector. If
the index is within bounds 0 ..< len(A), it corresponds to the indices of the
first input vector. Otherwise the index corresponds to the indices of the second
input vector.

**Inputs:**  
`a`: The first input vector.
`b`: The second input vector.
`indices`: The indices.

Result:
Input vectors, shuffled according to the indices.

**Operation:**

```
res = {}
for i in 0 ..< len(indices) {
	idx = indices[i];
	if idx < len(a) {
		res[i] = a[idx]
	} else {
		res[i] = b[idx]
	}
}
return res
```


**Example:**

```
// The example below shows how the indices are used to determine lanes of the
// input vector that are shuffled into the result vector.

import "core:fmt"
import "core:simd"

simd_shuffle_example :: proc() {
	a := #simd [4]f32 { 1, 2, 3, 4 }
	b := #simd [4]f32 { 5, 6, 7, 8 }
	res := simd.shuffle(a, b, 0, 4, 2, 5)
	fmt.println(res)
}
```

**Output:**

```
<1, 5, 3, 6>
```

The graphical representation of the operation is as follows. The `idx` vector in
the picture represents the `indices` parameter:

```
      0     1     2     3            4     5     6     7
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
a:    |  1  |  2  |  3  |  4  |  b:  |  5  |  6  |  7  |  8  |
      +-----+-----+-----+-----+      +-----+-----+-----+-----+
         ^           ^                  ^     ^
         |           |                  |     |
         |           |                  |     |
         |      .--- | ----------------'      |
         |     |     |     .-----------------'
      +-----+-----+-----+-----+
idx:  |  0  |  4  |  2  |  5  |
      +-----+-----+-----+-----+
         ^     ^     ^     ^
         |     |     |     |
      +-----+-----+-----+-----+
res:  |  1  |  5  |  3  |  6  |
      +-----+-----+-----+-----+
```

### [simd\_sub ¶](#simd_sub)

```
simd_sub :: proc(a, b: #simd[N]T) -> #simd[N]T {…}
```

 

Subtract SIMD vectors.

This procedure returns a vector, where each lane holds the difference between
the corresponding lanes of the vectors `a` and `b`. The lanes from the vector
`b` are subtracted from the corresponding lanes of the vector `a`.

**Inputs:**  
`a`: An integer or a float vector to subtract from.
`b`: An integer or a float vector.

**Returns:**  
A vector that is the difference of two vectors, `a` - `b`.

**Operation:**

```
for i in 0 ..< len(res) {
	res[i] = a[i] - b[i]
}
return res
```


**Example:**

```
   +-----+-----+-----+-----+
a: |  2  |  2  |  2  |  2  |
   +-----+-----+-----+-----+
   +-----+-----+-----+-----+
b: |  0  |  1  |  2  |  3  |
   +-----+-----+-----+-----+
res:
   +-----+-----+-----+-----+
   |  2  |  1  |  0  | -1  |
   +-----+-----+-----+-----+
```

### [simd\_to\_bits ¶](#simd_to_bits)

```
simd_to_bits :: proc(v: #simd[N]T) -> #simd[N]Integer where size_of(T) == size_of(Integer), type_is_unsigned(Integer) {…}
```

 

Transmute a SIMD vector into an unsigned integer vector.

### [simd\_trunc ¶](#simd_trunc)

```
simd_trunc :: proc(a: #simd[N]any_float) -> #simd[N]any_float {…}
```

 

lane-wise trunc

Truncate each lane in a SIMD vector.

### [soa\_struct ¶](#soa_struct)

```
soa_struct :: proc($N: int, $T: typeid) -> type/#soa[N]T {…}
```

 

A call-like way to construct an #soa struct. Possibly to be deprecated in the future.

### [sqrt ¶](#sqrt)

```
sqrt :: proc(x: $T) -> T where type_is_float(T) || (type_is_simd_vector(T) && type_is_float(type_elem_type(T))) {…}
```

 

Returns the square root of a value. If the input value is negative, this is platform defined behaviour.

### [syscall ¶](#syscall)

```
syscall :: proc(id: uintptr, args: ..uintptr) -> uintptr {…}
```

 

system call for Linux and Darwin Only

### [syscall\_bsd ¶](#syscall_bsd)

```
syscall_bsd :: proc(id: uintptr, args: ..uintptr) -> (uintptr, bool) {…}
```

 

system call FreeBSD, NetBSD, etc.

### [transpose ¶](#transpose)

```
transpose :: proc(m: $M/matrix[$R, $C]$E) -> matrix[C, R]E {…}
```

### [trap ¶](#trap)

```
trap :: proc() -> ! {…}
```

 

Lowered to a target dependent trap instruction.

### [type\_base\_type ¶](#type_base_type)

```
type_base_type :: proc($T: typeid) -> type {…}
```

 

Returns the type without any `distinct` indirection e.g. `Foo :: distinct int`, `type_base_type(Foo) == int`

### [type\_bit\_set\_elem\_type ¶](#type_bit_set_elem_type)

```
type_bit_set_elem_type :: proc($T: typeid) -> typeid where type_is_bit_set(T) {…}
```

 

Returns the element type of a `bit_set` `T`.

### [type\_bit\_set\_underlying\_type ¶](#type_bit_set_underlying_type)

```
type_bit_set_underlying_type :: proc($T: typeid) -> typeid where type_is_bit_set(T) {…}
```

 

Returns the underlying/backing type of a `bit_set` `T` rather than the element type.

**Example:**

```
assert(type_bit_set_underlying_type(bit_set[0..<8])     == u8)
assert(type_bit_set_underlying_type(bit_set[Enum; int]) == int)
```

### [type\_convert\_variants\_to\_pointers ¶](#type_convert_variants_to_pointers)

```
type_convert_variants_to_pointers :: proc($T: typeid) -> typeid where type_is_union(T) {…}
```

 

Returns a type which converts all of the variants of a `union` to be pointer types of those variants.

**Example:**

```
Foo :: union {A, B, C}
type_convert_variants_to_pointers(Foo) == union {^A, ^B, ^C}
```

### [type\_core\_type ¶](#type_core_type)

```
type_core_type :: proc($T: typeid) -> type {…}
```

 

Returns the type without any `distinct` indirection and the underlying integer type for an enum or bit\_set e.g. `Foo :: distinct int`, `type_core_type(Foo) == int`, or `Bar :: enum u8 {A}`, `type_core_type(Bar) == u8`, or `Baz :: bit_set[Bar; u32]`, `type_core_type(Baz) == u32`

### [type\_elem\_type ¶](#type_elem_type)

```
type_elem_type :: proc($T: typeid) -> type {…}
```

 

Returns the element type of an compound type.

Complex number: the underlying float type (e.g. `complex64 -> f32`)
Quaternion: the underlying float type (e.g. `quaternion256 -> f64`)
Pointer: the base type (e.g. `^T -> T`)
Array: the element type (e.g. `[N]T -> T`)
Enumerated Array: the element type (e.g. `[Enum]T -> T`)
Slice: the element type (e.g. `[]T -> T`)
Dynamic Array: the element type (e.g. `[dynamic]T -> T`)

### [type\_equal\_proc ¶](#type_equal_proc)

```
type_equal_proc :: proc($T: typeid) -> (equal:  proc "contextless" (rawptr, rawptr) -> bool)                 where type_is_comparable(T) {…}
```

 

Returns the underlying procedure that is used to compare pointers to two values of the same type together. This is used by the `map` type and general complicated comparisons.

### [type\_field\_index\_of ¶](#type_field_index_of)

```
type_field_index_of :: proc($T: typeid, $name: string) -> uintptr {…}
```

### [type\_field\_type ¶](#type_field_type)

```
type_field_type :: proc($T: typeid, $name: string) -> typeid {…}
```

 

Returns type of the field `name` on the type `T`. Note: the field must exist otherwise this will not compile.

### [type\_has\_field ¶](#type_has_field)

```
type_has_field :: proc($T: typeid, $name: string) -> bool {…}
```

 

Returns true if the field `name` exists on the type `T`.

### [type\_has\_nil ¶](#type_has_nil)

```
type_has_nil :: proc($T: typeid) -> bool {…}
```

 

Types that support `nil`:

`rawptr`
`any`
`cstring`
`cstring16`
`typeid`
`enum`
`bit_set`
Slices
`proc` values
Pointers
#soa Pointers
Multi-Pointers
Dynamic Arrays
`map`
`union` without the `#no_nil` directive
`#soa` slices
`#soa` dynamic arrays

### [type\_hasher\_proc ¶](#type_hasher_proc)

```
type_hasher_proc :: proc($T: typeid) -> (hasher: proc "contextless" (data: rawptr, seed: uintptr) -> uintptr) where type_is_comparable(T) {…}
```

 

Returns the underlying procedure that is used to hash a pointer to a value used by the `map` type.

### [type\_is\_any ¶](#type_is_any)

```
type_is_any :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from `any`

### [type\_is\_array ¶](#type_is_array)

```
type_is_array :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a fixed-length array, i.e. `[N]T`

### [type\_is\_bit\_set ¶](#type_is_bit_set)

```
type_is_bit_set :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `bit_set`

### [type\_is\_boolean ¶](#type_is_boolean)

```
type_is_boolean :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from any boolean type: `bool`, `b8`, `b16`, `b32`, `b64`

### [type\_is\_comparable ¶](#type_is_comparable)

```
type_is_comparable :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is comparable, which allows for the use of `==` and `!=` binary operators.

One of the following non-compound types (as well as any `distinct` forms): `rune`, `string`, `cstring`, `string16`, `cstring16`, `typeid`, pointer, `#soa` related pointer, multi-pointer, enum, procedure, matrix, `bit_set`, `#simd` vector.

One of the following compound types (as well as any `distinct` forms): any array or enumerated array where its element type is also comparable; any `struct` where all of its fields are comparable; any `struct #raw_union` were all of its fields are simply comparable (see `type_is_simple_compare`); any `union` where all of its variants are comparable.

### [type\_is\_complex ¶](#type_is_complex)

```
type_is_complex :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from any complex type: `complex32`, `complex64`, `complex128`

### [type\_is\_cstring ¶](#type_is_cstring)

```
type_is_cstring :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is derived from the `cstring` type

### [type\_is\_cstring16 ¶](#type_is_cstring16)

```
type_is_cstring16 :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is derived from the `cstring16` type

### [type\_is\_dereferenceable ¶](#type_is_dereferenceable)

```
type_is_dereferenceable :: proc($T: typeid) -> bool {…}
```

 

Must be a pointer type `^T` (not `rawptr`) or an `#soa` related pointer type.

### [type\_is\_dynamic\_array ¶](#type_is_dynamic_array)

```
type_is_dynamic_array :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a dynamic array, i.e. `[dynamic]T`

### [type\_is\_endian\_big ¶](#type_is_endian_big)

```
type_is_endian_big :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is big endian specific or it is a platform native layout which is also big endian. Example: `type_is_endian_big(u32be) == true`, `type_is_endian_big(u32le) == false`, `type_is_endian_big(u32) == (ODIN_ENDIAN == .Big)`

### [type\_is\_endian\_little ¶](#type_is_endian_little)

```
type_is_endian_little :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is little endian specific or it is a platform native layout which is also little endian. Example: `type_is_endian_little(u32le) == true`, `type_is_endian_little(u32be) == false`, `type_is_endian_little(u32) == (ODIN_ENDIAN == .Little)`

### [type\_is\_endian\_platform ¶](#type_is_endian_platform)

```
type_is_endian_platform :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type uses the platform native layout rather than a specific layout. Example: `type_is_endian_platform(u32) == true`, `type_is_endian_platform(u32le) == false`, `type_is_endian_platform(u32be) == false`

### [type\_is\_enum ¶](#type_is_enum)

```
type_is_enum :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `enum`

### [type\_is\_enumerated\_array ¶](#type_is_enumerated_array)

```
type_is_enumerated_array :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a enumerated array, i.e. `[Some_Enum]T`

### [type\_is\_float ¶](#type_is_float)

```
type_is_float :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from any float type

### [type\_is\_indexable ¶](#type_is_indexable)

```
type_is_indexable :: proc($T: typeid) -> bool {…}
```

 

Returns true if a value of this type can indexed:

`string` or `string16`
Any fixed-length array
Any slice
Any dynamic array
Any map
Any multi-pointer
Any enumerated array
Any matrix

### [type\_is\_integer ¶](#type_is_integer)

```
type_is_integer :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from any integer type

### [type\_is\_map ¶](#type_is_map)

```
type_is_map :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `map`, i.e. `map[K]V`

### [type\_is\_matrix ¶](#type_is_matrix)

```
type_is_matrix :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `matrix`

### [type\_is\_matrix\_column\_major ¶](#type_is_matrix_column_major)

```
type_is_matrix_column_major :: proc($T: typeid) -> bool where type_is_matrix(T) {…}
```

 

Returns true if the type passed is a matrix using `#column_major` ordering, this intrinsic only allows for matrices and will not compile otherwise. Note: The default matrix layout is `#column_major`.

### [type\_is\_matrix\_row\_major ¶](#type_is_matrix_row_major)

```
type_is_matrix_row_major :: proc($T: typeid) -> bool where type_is_matrix(T) {…}
```

 

Returns true if the type passed is a matrix using `#row_major` ordering, this intrinsic only allows for matrices and will not compile otherwise. Note: The default matrix layout is `#column_major`.

### [type\_is\_multi\_pointer ¶](#type_is_multi_pointer)

```
type_is_multi_pointer :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a multi pointer, i.e. `[^]T`

### [type\_is\_named ¶](#type_is_named)

```
type_is_named :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is a named

### [type\_is\_nearly\_simple\_compare ¶](#type_is_nearly_simple_compare)

```
type_is_nearly_simple_compare :: proc($T: typeid) -> bool {…}
```

 

easily compared using memcmp (`==` and `!=`) (including floats)

### [type\_is\_numeric ¶](#type_is_numeric)

```
type_is_numeric :: proc($T: typeid) -> bool {…}
```

 

Returns true if it is a "numeric" type in nature:

Any integer
Any float
Any complex number
Any quaternion
Any enum
Any fixed-length array of a numeric type

### [type\_is\_ordered ¶](#type_is_ordered)

```
type_is_ordered :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is an integer, float, rune, any string, pointer, or multi-pointer

### [type\_is\_ordered\_numeric ¶](#type_is_ordered_numeric)

```
type_is_ordered_numeric :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is an integer, float, or rune

### [type\_is\_pointer ¶](#type_is_pointer)

```
type_is_pointer :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a pointer, i.e. `^T` or `rawptr`

### [type\_is\_proc ¶](#type_is_proc)

```
type_is_proc :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `proc`

### [type\_is\_quaternion ¶](#type_is_quaternion)

```
type_is_quaternion :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from any quaternion type: `quaternion64`, `quaternion128`, `quaternion256`

### [type\_is\_raw\_union ¶](#type_is_raw_union)

```
type_is_raw_union :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `struct #raw_union`

### [type\_is\_rune ¶](#type_is_rune)

```
type_is_rune :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from the `rune` type

### [type\_is\_simd\_vector ¶](#type_is_simd_vector)

```
type_is_simd_vector :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a simd vector, i.e. `#simd[N]T`

### [type\_is\_simple\_compare ¶](#type_is_simple_compare)

```
type_is_simple_compare :: proc($T: typeid) -> bool {…}
```

 

easily compared using memcmp (`==` and `!=`) (not including floats)

### [type\_is\_slice ¶](#type_is_slice)

```
type_is_slice :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a slice, i.e. `[]T`

### [type\_is\_sliceable ¶](#type_is_sliceable)

```
type_is_sliceable :: proc($T: typeid) -> bool {…}
```

 

Returns true if a value of this type can indexed:

`string` or `string16`
Any fixed-length array
Any slice
Any dynamic array
Any multi-pointer

### [type\_is\_specialization\_of ¶](#type_is_specialization_of)

```
type_is_specialization_of :: proc($T, $S: typeid) -> bool {…}
```

 

Returns true if the type passed is a specialization of a parametric polymorphic type.

**Example:**

```
Foo :: struct($T: typeid) {x: T}
assert(type_is_specialization_of(Foo(int)) == true)
assert(type_is_specialization_of(Foo)      == false)
assert(type_is_specialization_of(i32)      == false)
```

### [type\_is\_specialized\_polymorphic\_record ¶](#type_is_specialized_polymorphic_record)

```
type_is_specialized_polymorphic_record :: proc($T: typeid) -> bool {…}
```

 

Returns true if the record type (`struct` or `union`) passed is a specialized polymorphic record. Returns false when the type is not polymorphic in the first place.

### [type\_is\_string ¶](#type_is_string)

```
type_is_string :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is derived from any string type: `string`, `cstring`, `string16`, `cstring16`

### [type\_is\_string16 ¶](#type_is_string16)

```
type_is_string16 :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is derived from the `string16` type AND not `cstring16`

### [type\_is\_struct ¶](#type_is_struct)

```
type_is_struct :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `struct`

### [type\_is\_subtype\_of ¶](#type_is_subtype_of)

```
type_is_subtype_of :: proc($T, $U: typeid) -> bool {…}
```

 

Returns true if `T` is a subtype (i.e. `using` was applied on a field) to type `U`.

### [type\_is\_typeid ¶](#type_is_typeid)

```
type_is_typeid :: proc($T: typeid) -> bool {…}
```

 

Return true if the type is derived from `typeid`

### [type\_is\_union ¶](#type_is_union)

```
type_is_union :: proc($T: typeid) -> bool {…}
```

 

Returns true if the base-type is a `union`, but not `struct #raw_union`

### [type\_is\_unsigned ¶](#type_is_unsigned)

```
type_is_unsigned :: proc($T: typeid) -> bool {…}
```

 

Returns true if the type is an unsigned integer or an enum backed by an unsigned integer, and false otherwise for any other type

### [type\_is\_unspecialized\_polymorphic\_record ¶](#type_is_unspecialized_polymorphic_record)

```
type_is_unspecialized_polymorphic_record :: proc($T: typeid) -> bool {…}
```

 

Returns true if the record type (`struct` or `union`) passed is a unspecialized polymorphic record. Returns false when the type is not polymorphic in the first place.

### [type\_is\_valid\_map\_key ¶](#type_is_valid_map_key)

```
type_is_valid_map_key :: proc($T: typeid) -> bool {…}
```

 

Any comparable type which is not-untyped nor generic.

### [type\_is\_valid\_matrix\_elements ¶](#type_is_valid_matrix_elements)

```
type_is_valid_matrix_elements :: proc($T: typeid) -> bool {…}
```

 

Any integer, float, or complex number type (not-untyped).

### [type\_is\_variant\_of ¶](#type_is_variant_of)

```
type_is_variant_of :: proc($U, $V: typeid) -> bool where type_is_union(U) {…}
```

 

Returns true if the `V` is a variant of the union type `U`.

**Example:**

```
Foo:: union {i32, f32}
assert(type_is_variant_of(Foo, i32)    == true)
assert(type_is_variant_of(Foo, f32)    == true)
assert(type_is_variant_of(Foo, string) == false)
```

### [type\_map\_cell\_info ¶](#type_map_cell_info)

```
type_map_cell_info :: proc($T: typeid) -> ^runtime.Map_Cell_Info {…}
```

### [type\_map\_info ¶](#type_map_info)

```
type_map_info :: proc($T: typeid/map[$K]$V) -> ^runtime.Map_Info {…}
```

### [type\_merge ¶](#type_merge)

```
type_merge :: proc($U, $V: typeid) -> typeid where type_is_union(U), type_is_union(V) {…}
```

 

Merges to union's variants into one bigger union.

Note: the merging is done is order and duplicate variant types are ignored.

**Example:**

```
A :: union{i32, f32, string}
B :: union{bool, complex64}
C :: union{string, bool, i32}

type_merge(A, B) == union{i32, f32, string, bool, complex64}
type_merge(A, C) == union{i32, f32, string, bool}
type_merge(B, C) == union{bool, complex64, string, i32}
type_merge(C, A) == union{string, bool, i32, f32}
```

### [type\_polymorphic\_record\_parameter\_count ¶](#type_polymorphic_record_parameter_count)

```
type_polymorphic_record_parameter_count :: proc($T: typeid) -> typeid {…}
```

 

Returns the number of parametric polymorphic parameters to a parametric polymorphic record type (`struct` or `union`). Fails if the type is not such a type.

### [type\_polymorphic\_record\_parameter\_value ¶](#type_polymorphic_record_parameter_value)

```
type_polymorphic_record_parameter_value :: proc($T: typeid, index: int) -> $V {…}
```

 

Returns the value of a specifialized parametric polymorphic record type (`struct` or `union`) at a specified `index`. Fails if the type is not such a type.

### [type\_proc\_parameter\_count ¶](#type_proc_parameter_count)

```
type_proc_parameter_count :: proc($T: typeid) -> int where type_is_proc(T) {…}
```

 

Returns the number of parameters a procedure type has.

**Example:**

```
assert(type_proc_parameter_count(proc(i32, f32) -> bool) == 2)
```

### [type\_proc\_parameter\_type ¶](#type_proc_parameter_type)

```
type_proc_parameter_type :: proc($T: typeid, index: int) -> typeid where type_is_proc(T) {…}
```

 

Returns the type of a parameter of a procedure type at the specified `index`.

**Example:**

```
assert(type_proc_parameter_type(proc(i32, f32) -> bool, 1) == f32)
```

### [type\_proc\_return\_count ¶](#type_proc_return_count)

```
type_proc_return_count :: proc($T: typeid) -> int where type_is_proc(T) {…}
```

 

Returns the number of return values a procedure type has.

**Example:**

```
assert(type_proc_return_count(proc(i32, f32) -> bool) == 1)
```

### [type\_proc\_return\_type ¶](#type_proc_return_type)

```
type_proc_return_type :: proc($T: typeid, index: int) -> typeid where type_is_proc(T) {…}
```

 

Returns the type of a return value of a procedure type at the specified `index`.

**Example:**

```
assert(type_proc_return_type(proc(i32, f32) -> bool, 0) == bool)
```

### [type\_struct\_field\_count ¶](#type_struct_field_count)

```
type_struct_field_count :: proc($T: typeid) -> int where type_is_struct(T) {…}
```

 

Returns the number of fields in a `struct` type.

### [type\_struct\_has\_implicit\_padding ¶](#type_struct_has_implicit_padding)

```
type_struct_has_implicit_padding :: proc($T: typeid) -> bool where type_is_struct(T) {…}
```

 

Returns whether the struct has any implicit padding to ensure correct alignment for the fields.

**Example:**

```
Foo :: struct {x: u8, y: u32}
assert(type_struct_has_implicit_padding(Foo) == true)
```

### [type\_union\_base\_tag\_value ¶](#type_union_base_tag_value)

```
type_union_base_tag_value :: proc($T: typeid) -> int where type_is_union(U) {…}
```

 

Returns the first valid tag value for the first variant. If `#no_nil` is used, the returned value will be `0`, otherwise `1` will be returned.

**Example:**

```
assert(type_union_base_tag_value(union {i32, f32})         == 1)
assert(type_union_base_tag_value(union #no_nil {i32, f32}) == 0)
assert(type_union_base_tag_value(Maybe(rawptr})            == 1)
```

### [type\_union\_tag\_offset ¶](#type_union_tag_offset)

```
type_union_tag_offset :: proc($T: typeid) -> uintptr where type_is_union(T) {…}
```

 

Returns the offset to the tag in bytes from the start of the union. If no tag is used (e.g. 'Maybe(Pointer\_Like\_Type)`), then size of the variant block space is returned.

Note: unions store the tag after the variant block space.

### [type\_union\_tag\_type ¶](#type_union_tag_type)

```
type_union_tag_type :: proc($T: typeid) -> typeid where type_is_union(T) {…}
```

 

Returns the type used to store the tag for a union. If no tag is used (e.g. `Maybe(Pointer_Like_Type)`), then `u8` is returned.

Possible tag types: `u8`, `u16`, `u32`, `u64`

### [type\_union\_variant\_count ¶](#type_union_variant_count)

```
type_union_variant_count :: proc($T: typeid) -> int where type_is_union(T) {…}
```

 

Returns the number of possible variants a union can be (excluding a possible `nil` state).

**Example:**

```
assert(type_union_variant_count(union {i32, f32})      == 2)
assert(type_union_variant_count(union {i32, f32, b32}) == 3)
assert(type_union_variant_count(union {})              == 0)
```

### [type\_variant\_index\_of ¶](#type_variant_index_of)

```
type_variant_index_of :: proc($U, $V: typeid) -> int where type_is_union(U) {…}
```

 

Returns the index of a variant `V` of a union `U`.

**Example:**

```
Foo :: union{i32, f32, string}
assert(type_variant_type_of(Foo, i32)    == 0)
assert(type_variant_type_of(Foo, f32)    == 1)
assert(type_variant_type_of(Foo, string) == 2)
```

### [type\_variant\_type\_of ¶](#type_variant_type_of)

```
type_variant_type_of :: proc($T: typeid, $index: int) -> typeid where type_is_union(T) {…}
```

 

Returns the type of a union `T`'s variant at a specified `index`.

**Example:**

```
Foo :: union{i32, f32, string}
assert(type_variant_type_of(Foo, 0) == i32)
assert(type_variant_type_of(Foo, 1) == f32)
assert(type_variant_type_of(Foo, 2) == string)
```

### [unaligned\_load ¶](#unaligned_load)

```
unaligned_load :: proc(src: ^$T) -> T {…}
```

 

Performs a load on an unaligned value `src`.

### [unaligned\_store ¶](#unaligned_store)

```
unaligned_store :: proc(dst: ^$T, val: T) -> T {…}
```

 

Performs a store on an unaligned value `dst`.

### [valgrind\_client\_request ¶](#valgrind_client_request)

```
valgrind_client_request :: proc(default: uintptr, request: uintptr, a0, a1, a2, a3, a4: uintptr) -> uintptr {…}
```

### [volatile\_load ¶](#volatile_load)

```
volatile_load :: proc(dst: ^$T) -> T {…}
```

 

Tells the optimizing backend of a compiler to not change the number of 'volatile' operations nor change their order of execution relative to other 'volatile' operations. Optimizers are allowed to change the order of volatile operations relative to non-volatile operations.

Note: This has nothing to do with Java's 'volatile' and has no cross-thread synchronization behaviour. Use atomics if this behaviour is wanted.

### [volatile\_store ¶](#volatile_store)

```
volatile_store :: proc(dst: ^$T, val: T) {…}
```

 

Tells the optimizing backend of a compiler to not change the number of 'volatile' operations nor change their order of execution relative to other 'volatile' operations. Optimizers are allowed to change the order of volatile operations relative to non-volatile operations.

Note: This has nothing to do with Java's 'volatile' and has no cross-thread synchronization behaviour. Use atomics if this behaviour is wanted.

### [wasm\_memory\_atomic\_notify32 ¶](#wasm_memory_atomic_notify32)

```
wasm_memory_atomic_notify32 :: proc(ptr: ^u32, waiters: u32) -> (waiters_woken_up: u32) {…}
```

 

Wakes threads waiting on the address indicated by `ptr`, up to the given maximum (`waiters`). If `waiters` is zero, no threads are woken up. Threads previously blocked with `wasm_memory_atomic_wait32` will be woken up.
Returns:
The number of threads woken up.

### [wasm\_memory\_atomic\_wait32 ¶](#wasm_memory_atomic_wait32)

```
wasm_memory_atomic_wait32 :: proc(ptr: ^u32, expected: u32, timeout_ns: i64) -> u32 {…}
```

 

Blocks the calling thread for a given duration if the value pointed to by `ptr` is equal to the value of `expected`.
`timeout_ns` is the maximum number of nanoseconds the calling thread will be blocked for. If `timeout_ns` is negative, the calling thread will be blocked forever.
Returns:
`0`: the thread blocked and then was woken up
`1`: the loaded value from `ptr` did not match `expected`, the thread did not block
`2`: the thread blocked, but the timeout expired

### [wasm\_memory\_grow ¶](#wasm_memory_grow)

```
wasm_memory_grow :: proc(index, delta: uintptr) -> int {…}
```

 

WASM targets only

### [wasm\_memory\_size ¶](#wasm_memory_size)

```
wasm_memory_size :: proc(index: uintptr) -> int {…}
```

 

WASM targets only

### [x86\_cpuid ¶](#x86_cpuid)

```
x86_cpuid :: proc(ax, cx: u32) -> (eax, ebx, ecx, edx: u32) {…}
```

 

x86 Targets Only (i386, amd64)
Implements the `cpuid` instruction.

### [x86\_xgetbv ¶](#x86_xgetbv)

```
x86_xgetbv :: proc(cx: u32) -> (eax, edx: u32) {…}
```

 

x86 Targets Only (i386, amd64)
Implements in `xgetbv` instruction.

## Procedure Groups

* [Overview](#pkg-overview)
* [Constants](#pkg-Constants)
* [Types](#pkg-Types)
  + [Atomic\_Memory\_Order](#Atomic_Memory_Order)
  + [objc\_Class](#objc_Class)
  + [objc\_SEL](#objc_SEL)
  + [objc\_class](#objc_class)
  + [objc\_id](#objc_id)
  + [objc\_object](#objc_object)
  + [objc\_selector](#objc_selector)
* [Procedures](#pkg-Procedures)
  + [alloca](#alloca)
  + [atomic\_add](#atomic_add)
  + [atomic\_add\_explicit](#atomic_add_explicit)
  + [atomic\_and](#atomic_and)
  + [atomic\_and\_explicit](#atomic_and_explicit)
  + [atomic\_compare\_exchange\_strong](#atomic_compare_exchange_strong)
  + [atomic\_compare\_exchange\_strong\_explicit](#atomic_compare_exchange_strong_explicit)
  + [atomic\_compare\_exchange\_weak](#atomic_compare_exchange_weak)
  + [atomic\_compare\_exchange\_weak\_explicit](#atomic_compare_exchange_weak_explicit)
  + [atomic\_exchange](#atomic_exchange)
  + [atomic\_exchange\_explicit](#atomic_exchange_explicit)
  + [atomic\_load](#atomic_load)
  + [atomic\_load\_explicit](#atomic_load_explicit)
  + [atomic\_nand](#atomic_nand)
  + [atomic\_nand\_explicit](#atomic_nand_explicit)
  + [atomic\_or](#atomic_or)
  + [atomic\_or\_explicit](#atomic_or_explicit)
  + [atomic\_signal\_fence](#atomic_signal_fence)
  + [atomic\_store](#atomic_store)
  + [atomic\_store\_explicit](#atomic_store_explicit)
  + [atomic\_sub](#atomic_sub)
  + [atomic\_sub\_explicit](#atomic_sub_explicit)
  + [atomic\_thread\_fence](#atomic_thread_fence)
  + [atomic\_type\_is\_lock\_free](#atomic_type_is_lock_free)
  + [atomic\_xor](#atomic_xor)
  + [atomic\_xor\_explicit](#atomic_xor_explicit)
  + [byte\_swap](#byte_swap)
  + [concatenate](#concatenate)
  + [constant\_ceil](#constant_ceil)
  + [constant\_floor](#constant_floor)
  + [constant\_log2](#constant_log2)
  + [constant\_round](#constant_round)
  + [constant\_trunc](#constant_trunc)
  + [constant\_utf16\_cstring](#constant_utf16_cstring)
  + [count\_leading\_zeros](#count_leading_zeros)
  + [count\_ones](#count_ones)
  + [count\_trailing\_zeros](#count_trailing_zeros)
  + [count\_zeros](#count_zeros)
  + [cpu\_relax](#cpu_relax)
  + [debug\_trap](#debug_trap)
  + [expect](#expect)
  + [fixed\_point\_div](#fixed_point_div)
  + [fixed\_point\_div\_sat](#fixed_point_div_sat)
  + [fixed\_point\_mul](#fixed_point_mul)
  + [fixed\_point\_mul\_sat](#fixed_point_mul_sat)
  + [fused\_mul\_add](#fused_mul_add)
  + [hadamard\_product](#hadamard_product)
  + [has\_target\_feature](#has_target_feature)
  + [matrix\_flatten](#matrix_flatten)
  + [mem\_copy](#mem_copy)
  + [mem\_copy\_non\_overlapping](#mem_copy_non_overlapping)
  + [mem\_zero](#mem_zero)
  + [mem\_zero\_volatile](#mem_zero_volatile)
  + [non\_temporal\_load](#non_temporal_load)
  + [non\_temporal\_store](#non_temporal_store)
  + [objc\_block](#objc_block)
  + [objc\_find\_class](#objc_find_class)
  + [objc\_find\_selector](#objc_find_selector)
  + [objc\_ivar\_get](#objc_ivar_get)
  + [objc\_register\_class](#objc_register_class)
  + [objc\_register\_selector](#objc_register_selector)
  + [objc\_super](#objc_super)
  + [outer\_product](#outer_product)
  + [overflow\_add](#overflow_add)
  + [overflow\_mul](#overflow_mul)
  + [overflow\_sub](#overflow_sub)
  + [prefetch\_read\_data](#prefetch_read_data)
  + [prefetch\_read\_instruction](#prefetch_read_instruction)
  + [prefetch\_write\_data](#prefetch_write_data)
  + [prefetch\_write\_instruction](#prefetch_write_instruction)
  + [procedure\_of](#procedure_of)
  + [ptr\_offset](#ptr_offset)
  + [ptr\_sub](#ptr_sub)
  + [read\_cycle\_counter](#read_cycle_counter)
  + [read\_cycle\_counter\_frequency](#read_cycle_counter_frequency)
  + [reverse\_bits](#reverse_bits)
  + [saturating\_add](#saturating_add)
  + [saturating\_sub](#saturating_sub)
  + [simd\_abs](#simd_abs)
  + [simd\_add](#simd_add)
  + [simd\_bit\_and](#simd_bit_and)
  + [simd\_bit\_and\_not](#simd_bit_and_not)
  + [simd\_bit\_or](#simd_bit_or)
  + [simd\_bit\_xor](#simd_bit_xor)
  + [simd\_ceil](#simd_ceil)
  + [simd\_clamp](#simd_clamp)
  + [simd\_div](#simd_div)
  + [simd\_extract](#simd_extract)
  + [simd\_extract\_lsbs](#simd_extract_lsbs)
  + [simd\_extract\_msbs](#simd_extract_msbs)
  + [simd\_floor](#simd_floor)
  + [simd\_gather](#simd_gather)
  + [simd\_lanes\_eq](#simd_lanes_eq)
  + [simd\_lanes\_ge](#simd_lanes_ge)
  + [simd\_lanes\_gt](#simd_lanes_gt)
  + [simd\_lanes\_le](#simd_lanes_le)
  + [simd\_lanes\_lt](#simd_lanes_lt)
  + [simd\_lanes\_ne](#simd_lanes_ne)
  + [simd\_lanes\_reverse](#simd_lanes_reverse)
  + [simd\_lanes\_rotate\_left](#simd_lanes_rotate_left)
  + [simd\_lanes\_rotate\_right](#simd_lanes_rotate_right)
  + [simd\_masked\_compress\_store](#simd_masked_compress_store)
  + [simd\_masked\_expand\_load](#simd_masked_expand_load)
  + [simd\_masked\_load](#simd_masked_load)
  + [simd\_masked\_store](#simd_masked_store)
  + [simd\_max](#simd_max)
  + [simd\_min](#simd_min)
  + [simd\_mul](#simd_mul)
  + [simd\_nearest](#simd_nearest)
  + [simd\_neg](#simd_neg)
  + [simd\_reduce\_add\_ordered](#simd_reduce_add_ordered)
  + [simd\_reduce\_all](#simd_reduce_all)
  + [simd\_reduce\_and](#simd_reduce_and)
  + [simd\_reduce\_any](#simd_reduce_any)
  + [simd\_reduce\_max](#simd_reduce_max)
  + [simd\_reduce\_min](#simd_reduce_min)
  + [simd\_reduce\_mul\_ordered](#simd_reduce_mul_ordered)
  + [simd\_reduce\_or](#simd_reduce_or)
  + [simd\_reduce\_xor](#simd_reduce_xor)
  + [simd\_replace](#simd_replace)
  + [simd\_runtime\_swizzle](#simd_runtime_swizzle)
  + [simd\_saturating\_add](#simd_saturating_add)
  + [simd\_saturating\_sub](#simd_saturating_sub)
  + [simd\_scatter](#simd_scatter)
  + [simd\_select](#simd_select)
  + [simd\_shl](#simd_shl)
  + [simd\_shl\_masked](#simd_shl_masked)
  + [simd\_shr](#simd_shr)
  + [simd\_shr\_masked](#simd_shr_masked)
  + [simd\_shuffle](#simd_shuffle)
  + [simd\_sub](#simd_sub)
  + [simd\_to\_bits](#simd_to_bits)
  + [simd\_trunc](#simd_trunc)
  + [soa\_struct](#soa_struct)
  + [sqrt](#sqrt)
  + [syscall](#syscall)
  + [syscall\_bsd](#syscall_bsd)
  + [transpose](#transpose)
  + [trap](#trap)
  + [type\_base\_type](#type_base_type)
  + [type\_bit\_set\_elem\_type](#type_bit_set_elem_type)
  + [type\_bit\_set\_underlying\_type](#type_bit_set_underlying_type)
  + [type\_convert\_variants\_to\_pointers](#type_convert_variants_to_pointers)
  + [type\_core\_type](#type_core_type)
  + [type\_elem\_type](#type_elem_type)
  + [type\_equal\_proc](#type_equal_proc)
  + [type\_field\_index\_of](#type_field_index_of)
  + [type\_field\_type](#type_field_type)
  + [type\_has\_field](#type_has_field)
  + [type\_has\_nil](#type_has_nil)
  + [type\_hasher\_proc](#type_hasher_proc)
  + [type\_is\_any](#type_is_any)
  + [type\_is\_array](#type_is_array)
  + [type\_is\_bit\_set](#type_is_bit_set)
  + [type\_is\_boolean](#type_is_boolean)
  + [type\_is\_comparable](#type_is_comparable)
  + [type\_is\_complex](#type_is_complex)
  + [type\_is\_cstring](#type_is_cstring)
  + [type\_is\_cstring16](#type_is_cstring16)
  + [type\_is\_dereferenceable](#type_is_dereferenceable)
  + [type\_is\_dynamic\_array](#type_is_dynamic_array)
  + [type\_is\_endian\_big](#type_is_endian_big)
  + [type\_is\_endian\_little](#type_is_endian_little)
  + [type\_is\_endian\_platform](#type_is_endian_platform)
  + [type\_is\_enum](#type_is_enum)
  + [type\_is\_enumerated\_array](#type_is_enumerated_array)
  + [type\_is\_float](#type_is_float)
  + [type\_is\_indexable](#type_is_indexable)
  + [type\_is\_integer](#type_is_integer)
  + [type\_is\_map](#type_is_map)
  + [type\_is\_matrix](#type_is_matrix)
  + [type\_is\_matrix\_column\_major](#type_is_matrix_column_major)
  + [type\_is\_matrix\_row\_major](#type_is_matrix_row_major)
  + [type\_is\_multi\_pointer](#type_is_multi_pointer)
  + [type\_is\_named](#type_is_named)
  + [type\_is\_nearly\_simple\_compare](#type_is_nearly_simple_compare)
  + [type\_is\_numeric](#type_is_numeric)
  + [type\_is\_ordered](#type_is_ordered)
  + [type\_is\_ordered\_numeric](#type_is_ordered_numeric)
  + [type\_is\_pointer](#type_is_pointer)
  + [type\_is\_proc](#type_is_proc)
  + [type\_is\_quaternion](#type_is_quaternion)
  + [type\_is\_raw\_union](#type_is_raw_union)
  + [type\_is\_rune](#type_is_rune)
  + [type\_is\_simd\_vector](#type_is_simd_vector)
  + [type\_is\_simple\_compare](#type_is_simple_compare)
  + [type\_is\_slice](#type_is_slice)
  + [type\_is\_sliceable](#type_is_sliceable)
  + [type\_is\_specialization\_of](#type_is_specialization_of)
  + [type\_is\_specialized\_polymorphic\_record](#type_is_specialized_polymorphic_record)
  + [type\_is\_string](#type_is_string)
  + [type\_is\_string16](#type_is_string16)
  + [type\_is\_struct](#type_is_struct)
  + [type\_is\_subtype\_of](#type_is_subtype_of)
  + [type\_is\_typeid](#type_is_typeid)
  + [type\_is\_union](#type_is_union)
  + [type\_is\_unsigned](#type_is_unsigned)
  + [type\_is\_unspecialized\_polymorphic\_record](#type_is_unspecialized_polymorphic_record)
  + [type\_is\_valid\_map\_key](#type_is_valid_map_key)
  + [type\_is\_valid\_matrix\_elements](#type_is_valid_matrix_elements)
  + [type\_is\_variant\_of](#type_is_variant_of)
  + [type\_map\_cell\_info](#type_map_cell_info)
  + [type\_map\_info](#type_map_info)
  + [type\_merge](#type_merge)
  + [type\_polymorphic\_record\_parameter\_count](#type_polymorphic_record_parameter_count)
  + [type\_polymorphic\_record\_parameter\_value](#type_polymorphic_record_parameter_value)
  + [type\_proc\_parameter\_count](#type_proc_parameter_count)
  + [type\_proc\_parameter\_type](#type_proc_parameter_type)
  + [type\_proc\_return\_count](#type_proc_return_count)
  + [type\_proc\_return\_type](#type_proc_return_type)
  + [type\_struct\_field\_count](#type_struct_field_count)
  + [type\_struct\_has\_implicit\_padding](#type_struct_has_implicit_padding)
  + [type\_union\_base\_tag\_value](#type_union_base_tag_value)
  + [type\_union\_tag\_offset](#type_union_tag_offset)
  + [type\_union\_tag\_type](#type_union_tag_type)
  + [type\_union\_variant\_count](#type_union_variant_count)
  + [type\_variant\_index\_of](#type_variant_index_of)
  + [type\_variant\_type\_of](#type_variant_type_of)
  + [unaligned\_load](#unaligned_load)
  + [unaligned\_store](#unaligned_store)
  + [valgrind\_client\_request](#valgrind_client_request)
  + [volatile\_load](#volatile_load)
  + [volatile\_store](#volatile_store)
  + [wasm\_memory\_atomic\_notify32](#wasm_memory_atomic_notify32)
  + [wasm\_memory\_atomic\_wait32](#wasm_memory_atomic_wait32)
  + [wasm\_memory\_grow](#wasm_memory_grow)
  + [wasm\_memory\_size](#wasm_memory_size)
  + [x86\_cpuid](#x86_cpuid)
  + [x86\_xgetbv](#x86_xgetbv)
* [Procedure Groups](#pkg-Procedure Groups)



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