package libc-shim - pkg.odin-lang.org 






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



Current Package: *[odin\_libc](/vendor/libc-shim)*

  

#### [vendor Library](/vendor)

* [box2d](/vendor/box2d)
* [cgltf](/vendor/cgltf)
* [commonmark](/vendor/commonmark)
* compress
  + [lz4](/vendor/compress/lz4)
* [curl](/vendor/curl)
* darwin
  + [CoreVideo](/vendor/darwin/CoreVideo)
  + [Metal](/vendor/darwin/Metal)
  + [MetalKit](/vendor/darwin/MetalKit)
  + [QuartzCore](/vendor/darwin/QuartzCore)
* directx
  + [d3d11](/vendor/directx/d3d11)
  + [d3d12](/vendor/directx/d3d12)
  + [d3d\_common](/vendor/directx/d3d_common)
  + [dxc](/vendor/directx/dxc)
  + [dxgi](/vendor/directx/dxgi)
* [ENet](/vendor/ENet)
* [fontstash](/vendor/fontstash)
* [ggpo](/vendor/ggpo)
* [glfw](/vendor/glfw)
  + [bindings](/vendor/glfw/bindings)
* [kb\_text\_shape](/vendor/kb_text_shape)
* [libc-shim](/vendor/libc-shim)
* lua
  + [5.4](/vendor/lua/5.4)
* [microui](/vendor/microui)
* [miniaudio](/vendor/miniaudio)
* [nanovg](/vendor/nanovg)
  + [gl](/vendor/nanovg/gl)
* [OpenEXRCore](/vendor/OpenEXRCore)
* [OpenGL](/vendor/OpenGL)
* [portmidi](/vendor/portmidi)
* [raylib](/vendor/raylib)
* [sdl2](/vendor/sdl2)
  + [image](/vendor/sdl2/image)
  + [mixer](/vendor/sdl2/mixer)
  + [net](/vendor/sdl2/net)
  + [ttf](/vendor/sdl2/ttf)
* [sdl3](/vendor/sdl3)
  + [image](/vendor/sdl3/image)
  + [ttf](/vendor/sdl3/ttf)
* stb
  + [easy\_font](/vendor/stb/easy_font)
  + [image](/vendor/stb/image)
  + [rect\_pack](/vendor/stb/rect_pack)
  + [sprintf](/vendor/stb/sprintf)
  + [truetype](/vendor/stb/truetype)
  + [vorbis](/vendor/stb/vorbis)
* [vulkan](/vendor/vulkan)
* wasm
  + [WebGL](/vendor/wasm/WebGL)
* [wgpu](/vendor/wgpu)
  + [glfwglue](/vendor/wgpu/glfwglue)
  + [sdl2glue](/vendor/wgpu/sdl2glue)
  + [sdl3glue](/vendor/wgpu/sdl3glue)
* windows
  + [GameInput](/vendor/windows/GameInput)
  + [XAudio2](/vendor/windows/XAudio2)
* x11
  + [xlib](/vendor/x11/xlib)
* [zlib](/vendor/zlib)

1. [vendor](/vendor)
2. [libc-shim](/vendor/libc-shim)

# package vendor:libc-shim [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

A (very small) subset of a libc implementation over Odin libraries for use with `vendor:*` packages.

## Index

Types (5)

* [Clock](#Clock)
* [FILE](#FILE)
* [Time\_Spec](#Time_Spec)
* [clock\_t](#clock_t)
* [ldiv\_t](#ldiv_t)

Constants (2)

* [ATEXIT\_MAX](#ATEXIT_MAX)
* [EOF](#EOF)

Variables (0)

This section is empty.

Procedures (85)

* [abort](#abort)
* [abs](#abs)
* [acos](#acos)
* [acosf](#acosf)
* [aligned\_alloc](#aligned_alloc)
* [asin](#asin)
* [atan](#atan)
* [atan2](#atan2)
* [atan2f](#atan2f)
* [atexit](#atexit)
* [atof](#atof)
* [atoi](#atoi)
* [atol](#atol)
* [atoll](#atoll)
* [ceil](#ceil)
* [ceilf](#ceilf)
* [clock](#clock)
* [clock\_gettine](#clock_gettine)
* [cos](#cos)
* [cosf](#cosf)
* [exit](#exit)
* [exp](#exp)
* [fabs](#fabs)
* [fabsf](#fabsf)
* [fclose](#fclose)
* [floor](#floor)
* [floorf](#floorf)
* [fmod](#fmod)
* [fmodf](#fmodf)
* [fopen](#fopen)
* [fread](#fread)
* [free](#free)
* [fseek](#fseek)
* [ftell](#ftell)
* [fwrite](#fwrite)
* [getchar](#getchar)
* [init\_context](#init_context)
* [isblank](#isblank)
* [isdigit](#isdigit)
* [isfinited](#isfinited)
* [isfinitef](#isfinitef)
* [isinfd](#isinfd)
* [isinff](#isinff)
* [isnand](#isnand)
* [isnanf](#isnanf)
* [isspace](#isspace)
* [ldexp](#ldexp)
* [ldiv](#ldiv)
* [log](#log)
* [log10](#log10)
* [log2](#log2)
* [logf](#logf)
* [malloc](#malloc)
* [memchr](#memchr)
* [memcmp](#memcmp)
* [modf](#modf)
* [pow](#pow)
* [powf](#powf)
* [putchar](#putchar)
* [qsort](#qsort)
* [realloc](#realloc)
* [remainderf](#remainderf)
* [sched\_yield](#sched_yield)
* [set\_context](#set_context)
* [sin](#sin)
* [sinf](#sinf)
* [sqrt](#sqrt)
* [sqrtf](#sqrtf)
* [strchr](#strchr)
* [strcmp](#strcmp)
* [strcpy](#strcpy)
* [strcspn](#strcspn)
* [strlen](#strlen)
* [strncmp](#strncmp)
* [strncpy](#strncpy)
* [strrchr](#strrchr)
* [strstr](#strstr)
* [strtod](#strtod)
* [strtol](#strtol)
* [tan](#tan)
* [toupper](#toupper)
* [trunc](#trunc)
* [vfprintf](#vfprintf)
* [vsnprintf](#vsnprintf)
* [vsprintf](#vsprintf)

Procedure Groups (0)

This section is empty.

## Types

### [Clock ¶](#Clock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/sched.odin#L6)

```
Clock :: enum i32 {
	Monotonic = 1, 
}
```

##### Related Procedures With Parameters

* [clock\_gettine](/vendor/libc-shim/#clock_gettine)

### [FILE ¶](#FILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L11)

```
FILE :: rawptr
```

##### Related Procedures With Parameters

* [fclose](/vendor/libc-shim/#fclose)
* [fread](/vendor/libc-shim/#fread)
* [free](/vendor/libc-shim/#free)
* [fseek](/vendor/libc-shim/#fseek)
* [ftell](/vendor/libc-shim/#ftell)
* [fwrite](/vendor/libc-shim/#fwrite)
* [qsort](/vendor/libc-shim/#qsort)
* [realloc](/vendor/libc-shim/#realloc)
* [vfprintf](/vendor/libc-shim/#vfprintf)



##### Related Procedures With Returns

* [aligned\_alloc](/vendor/libc-shim/#aligned_alloc)
* [fopen](/vendor/libc-shim/#fopen)
* [malloc](/vendor/libc-shim/#malloc)

### [Time\_Spec ¶](#Time_Spec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/sched.odin#L10)

```
Time_Spec :: struct {
	tv_sec:  i64,
	tv_nsec: i64,
}
```

##### Related Procedures With Parameters

* [clock\_gettine](/vendor/libc-shim/#clock_gettine)

### [clock\_t ¶](#clock_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/time.odin#L5)

```
clock_t :: i64
```

##### Related Procedures With Returns

* [atoll](/vendor/libc-shim/#atoll)
* [clock](/vendor/libc-shim/#clock)

### [ldiv\_t ¶](#ldiv_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L179)

```
ldiv_t :: struct {
	quot: i32,
	rem:  i32,
}
```

##### Related Procedures With Returns

* [ldiv](/vendor/libc-shim/#ldiv)

## Constants

### [ATEXIT\_MAX ¶](#ATEXIT_MAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L146)

```
ATEXIT_MAX :: 32
```

### [EOF ¶](#EOF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L13)

```
EOF :: -1
```

## Variables

This section is empty.

## Procedures

### [abort ¶](#abort) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L142)

```
abort :: proc "c" () -> ! {…}
```

### [abs ¶](#abs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L113)

```
abs :: proc "c" (x: i32) -> i32 {…}
```

### [acos ¶](#acos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L98)

```
acos :: proc "c" (x: f64) -> f64 {…}
```

### [acosf ¶](#acosf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L93)

```
acosf :: proc "c" (x: f32) -> f32 {…}
```

### [aligned\_alloc ¶](#aligned_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L22)

```
aligned_alloc :: proc "c" (alignment: uint, size: uint) -> rawptr {…}
```

### [asin ¶](#asin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L182)

```
asin :: proc "c" (x: f64) -> f64 {…}
```

### [atan ¶](#atan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L187)

```
atan :: proc "c" (x: f64) -> f64 {…}
```

### [atan2 ¶](#atan2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L197)

```
atan2 :: proc "c" (y, x: f64) -> f64 {…}
```

### [atan2f ¶](#atan2f) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L18)

```
atan2f :: proc "c" (v: f32, v2: f32) -> f32 {…}
```

### [atexit ¶](#atexit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L154)

```
atexit :: proc "c" (function: proc "c" () -> !) -> i32 {…}
```

### [atof ¶](#atof) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L101)

```
atof :: proc "c" (str: cstring) -> f64 {…}
```

### [atoi ¶](#atoi) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L81)

```
atoi :: proc "c" (str: cstring) -> i32 {…}
```

### [atol ¶](#atol) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L86)

```
atol :: proc "c" (str: cstring) -> i32 {…}
```

### [atoll ¶](#atoll) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L91)

```
atoll :: proc "c" (str: cstring) -> i64 {…}
```

### [ceil ¶](#ceil) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L63)

```
ceil :: proc "c" (x: f64) -> f64 {…}
```

### [ceilf ¶](#ceilf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L58)

```
ceilf :: proc "c" (x: f32) -> f32 {…}
```

### [clock ¶](#clock) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/time.odin#L8)

```
clock :: proc "c" () -> i64 {…}
```

### [clock\_gettine ¶](#clock_gettine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/sched.odin#L16)

```
clock_gettine :: proc "c" (clockid: Clock, tp: ^Time_Spec) -> i32 {…}
```

### [cos ¶](#cos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L88)

```
cos :: proc "c" (x: f64) -> f64 {…}
```

### [cosf ¶](#cosf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L13)

```
cosf :: proc "c" (v: f32) -> f32 {…}
```

### [exit ¶](#exit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L166)

```
exit :: proc "c" (exit_code: i32) -> ! {…}
```

### [exp ¶](#exp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L123)

```
exp :: proc "c" (x: f64) -> f64 {…}
```

### [fabs ¶](#fabs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L108)

```
fabs :: proc "c" (x: f64) -> f64 {…}
```

### [fabsf ¶](#fabsf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L103)

```
fabsf :: proc "c" (x: f32) -> f32 {…}
```

### [fclose ¶](#fclose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L34)

```
fclose :: proc "c" (file: rawptr) -> i32 {…}
```

### [floor ¶](#floor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L53)

```
floor :: proc "c" (x: f64) -> f64 {…}
```

### [floorf ¶](#floorf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L48)

```
floorf :: proc "c" (x: f32) -> f32 {…}
```

### [fmod ¶](#fmod) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L83)

```
fmod :: proc "c" (x, y: f64) -> f64 {…}
```

### [fmodf ¶](#fmodf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L78)

```
fmodf :: proc "c" (x, y: f32) -> f32 {…}
```

### [fopen ¶](#fopen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L16)

```
fopen :: proc "c" (path: cstring, mode: cstring) -> rawptr {…}
```

### [fread ¶](#fread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L40)

```
fread :: proc "c" (buffer: [^]u8, size: uint, count: uint, file: rawptr) -> uint {…}
```

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L30)

```
free :: proc "c" (ptr: rawptr) {…}
```

### [fseek ¶](#fseek) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L22)

```
fseek :: proc "c" (file: rawptr, offset: i32, whence: i32) -> i32 {…}
```

### [ftell ¶](#ftell) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L28)

```
ftell :: proc "c" (file: rawptr) -> i32 {…}
```

### [fwrite ¶](#fwrite) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L46)

```
fwrite :: proc "c" (buffer: [^]u8, size: uint, count: uint, file: rawptr) -> uint {…}
```

### [getchar ¶](#getchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L58)

```
getchar :: proc "c" () -> i32 {…}
```

### [init\_context ¶](#init_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/libc.odin#L13)

```
init_context :: proc "contextless" () {…}
```

### [isblank ¶](#isblank) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/ctype.odin#L12)

```
isblank :: proc "c" (c: i32) -> b32 {…}
```

### [isdigit ¶](#isdigit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/ctype.odin#L4)

```
isdigit :: proc "c" (c: i32) -> b32 {…}
```

### [isfinited ¶](#isfinited) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L163)

```
isfinited :: proc "c" (x: f64) -> bool {…}
```

### [isfinitef ¶](#isfinitef) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L154)

```
isfinitef :: proc "c" (x: f32) -> bool {…}
```

### [isinfd ¶](#isinfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L38)

```
isinfd :: proc "c" (v: f64) -> bool {…}
```

### [isinff ¶](#isinff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L33)

```
isinff :: proc "c" (v: f32) -> bool {…}
```

### [isnand ¶](#isnand) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L28)

```
isnand :: proc "c" (v: f64) -> bool {…}
```

### [isnanf ¶](#isnanf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L23)

```
isnanf :: proc "c" (v: f32) -> bool {…}
```

### [isspace ¶](#isspace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/ctype.odin#L20)

```
isspace :: proc "c" (c: i32) -> b32 {…}
```

### [ldexp ¶](#ldexp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L118)

```
ldexp :: proc "c" (x: f64, y: i32) -> f64 {…}
```

### [ldiv ¶](#ldiv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L185)

```
ldiv :: proc "c" (number: i32, denom: i32) -> ldiv_t {…}
```

### [log ¶](#log) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L133)

```
log :: proc "c" (x: f64) -> f64 {…}
```

### [log10 ¶](#log10) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L177)

```
log10 :: proc "c" (x: f64) -> f64 {…}
```

### [log2 ¶](#log2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L172)

```
log2 :: proc "c" (x: f64) -> f64 {…}
```

### [logf ¶](#logf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L128)

```
logf :: proc "c" (x: f32) -> f32 {…}
```

### [malloc ¶](#malloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L14)

```
malloc :: proc "c" (size: uint) -> rawptr {…}
```

### [memchr ¶](#memchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L114)

```
memchr :: proc "c" (str: [^]u8, c: i32, n: uint) -> [^]u8 {…}
```

### [memcmp ¶](#memcmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L15)

```
memcmp :: proc "c" (lhs: [^]u8, rhs: [^]u8, count: uint) -> i32 {…}
```

### [modf ¶](#modf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L202)

```
modf :: proc "c" (num: f64, iptr: ^f64) -> f64 {…}
```

### [pow ¶](#pow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L73)

```
pow :: proc "c" (x, y: f64) -> f64 {…}
```

### [powf ¶](#powf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L68)

```
powf :: proc "c" (x, y: f32) -> f32 {…}
```

### [putchar ¶](#putchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L52)

```
putchar :: proc "c" (char: i32) -> i32 {…}
```

### [qsort ¶](#qsort) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L47)

```
qsort :: proc "c" (base: rawptr, num: uint, size: uint, cmp: proc "c" (a, b: rawptr) -> i32) {…}
```

### [realloc ¶](#realloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L36)

```
realloc :: proc "c" (ptr: rawptr, new_size: uint) -> rawptr {…}
```

### [remainderf ¶](#remainderf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L209)

```
remainderf :: proc "c" (x, y: f32) -> f32 {…}
```

### [sched\_yield ¶](#sched_yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/sched.odin#L29)

```
sched_yield :: proc "c" () -> i32 {…}
```

### [set\_context ¶](#set_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/libc.odin#L24)

```
set_context :: proc(ctx: runtime.Context = context) {…}
```

 

NOTE: the allocator must respect an `old_size` of `-1` on resizes!

### [sin ¶](#sin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L138)

```
sin :: proc "c" (x: f64) -> f64 {…}
```

### [sinf ¶](#sinf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L143)

```
sinf :: proc "c" (v: f32) -> f32 {…}
```

### [sqrt ¶](#sqrt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L43)

```
sqrt :: proc "c" (x: f64) -> f64 {…}
```

### [sqrtf ¶](#sqrtf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L8)

```
sqrtf :: proc "c" (v: f32) -> f32 {…}
```

### [strchr ¶](#strchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L27)

```
strchr :: proc "c" (str: cstring, ch: i32) -> cstring {…}
```

### [strcmp ¶](#strcmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L95)

```
strcmp :: proc "c" (lhs: cstring, rhs: cstring) -> i32 {…}
```

### [strcpy ¶](#strcpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L69)

```
strcpy :: proc "c" (dst: [^]u8, src: cstring) -> cstring {…}
```

### [strcspn ¶](#strcspn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L75)

```
strcspn :: proc "c" (dst: cstring, src: cstring) -> uint {…}
```

### [strlen ¶](#strlen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L22)

```
strlen :: proc "c" (str: cstring) -> u32 {…}
```

### [strncmp ¶](#strncmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L86)

```
strncmp :: proc "c" (lhs: cstring, rhs: cstring, count: uint) -> i32 {…}
```

### [strncpy ¶](#strncpy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L59)

```
strncpy :: proc "c" (dst: [^]u8, src: cstring, count: uint) -> cstring {…}
```

### [strrchr ¶](#strrchr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L43)

```
strrchr :: proc "c" (str: cstring, ch: i32) -> cstring {…}
```

### [strstr ¶](#strstr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin#L100)

```
strstr :: proc "c" (str: cstring, substr: cstring) -> cstring {…}
```

### [strtod ¶](#strtod) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L126)

```
strtod :: proc "c" (str: cstring, str_end: ^cstring) -> f64 {…}
```

### [strtol ¶](#strtol) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin#L111)

```
strtol :: proc "c" (str: cstring, str_end: ^cstring, base: i32) -> i32 {…}
```

### [tan ¶](#tan) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L192)

```
tan :: proc "c" (x: f64) -> f64 {…}
```

### [toupper ¶](#toupper) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/ctype.odin#L28)

```
toupper :: proc "c" (c: i32) -> i32 {…}
```

### [trunc ¶](#trunc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin#L149)

```
trunc :: proc "c" (x: f64) -> f64 {…}
```

### [vfprintf ¶](#vfprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L76)

```
vfprintf :: proc "c" (file: rawptr, fmt: cstring, args: ^c.va_list) -> i32 {…}
```

### [vsnprintf ¶](#vsnprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L64)

```
vsnprintf :: proc "c" (buf: [^]u8, count: uint, fmt: cstring, args: ^c.va_list) -> i32 {…}
```

### [vsprintf ¶](#vsprintf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin#L71)

```
vsprintf :: proc "c" (buf: [^]u8, fmt: cstring, args: ^c.va_list) -> i32 {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [assert.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/assert.odin)
* [ctype.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/ctype.odin)
* [libc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/libc.odin)
* [math.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/math.odin)
* [sched.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/sched.odin)
* [stdio.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdio.odin)
* [stdlib.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/stdlib.odin)
* [string.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/string.odin)
* [time.odin](https://github.com/odin-lang/Odin/tree/master/vendor/libc-shim/time.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.995590900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Clock](#Clock)
    + [FILE](#FILE)
    + [Time\_Spec](#Time_Spec)
    + [clock\_t](#clock_t)
    + [ldiv\_t](#ldiv_t)
  * [Constants](#pkg-Constants)
    + [ATEXIT\_MAX](#ATEXIT_MAX)
    + [EOF](#EOF)
  * [Procedures](#pkg-Procedures)
    + [abort](#abort)
    + [abs](#abs)
    + [acos](#acos)
    + [acosf](#acosf)
    + [aligned\_alloc](#aligned_alloc)
    + [asin](#asin)
    + [atan](#atan)
    + [atan2](#atan2)
    + [atan2f](#atan2f)
    + [atexit](#atexit)
    + [atof](#atof)
    + [atoi](#atoi)
    + [atol](#atol)
    + [atoll](#atoll)
    + [ceil](#ceil)
    + [ceilf](#ceilf)
    + [clock](#clock)
    + [clock\_gettine](#clock_gettine)
    + [cos](#cos)
    + [cosf](#cosf)
    + [exit](#exit)
    + [exp](#exp)
    + [fabs](#fabs)
    + [fabsf](#fabsf)
    + [fclose](#fclose)
    + [floor](#floor)
    + [floorf](#floorf)
    + [fmod](#fmod)
    + [fmodf](#fmodf)
    + [fopen](#fopen)
    + [fread](#fread)
    + [free](#free)
    + [fseek](#fseek)
    + [ftell](#ftell)
    + [fwrite](#fwrite)
    + [getchar](#getchar)
    + [init\_context](#init_context)
    + [isblank](#isblank)
    + [isdigit](#isdigit)
    + [isfinited](#isfinited)
    + [isfinitef](#isfinitef)
    + [isinfd](#isinfd)
    + [isinff](#isinff)
    + [isnand](#isnand)
    + [isnanf](#isnanf)
    + [isspace](#isspace)
    + [ldexp](#ldexp)
    + [ldiv](#ldiv)
    + [log](#log)
    + [log10](#log10)
    + [log2](#log2)
    + [logf](#logf)
    + [malloc](#malloc)
    + [memchr](#memchr)
    + [memcmp](#memcmp)
    + [modf](#modf)
    + [pow](#pow)
    + [powf](#powf)
    + [putchar](#putchar)
    + [qsort](#qsort)
    + [realloc](#realloc)
    + [remainderf](#remainderf)
    + [sched\_yield](#sched_yield)
    + [set\_context](#set_context)
    + [sin](#sin)
    + [sinf](#sinf)
    + [sqrt](#sqrt)
    + [sqrtf](#sqrtf)
    + [strchr](#strchr)
    + [strcmp](#strcmp)
    + [strcpy](#strcpy)
    + [strcspn](#strcspn)
    + [strlen](#strlen)
    + [strncmp](#strncmp)
    + [strncpy](#strncpy)
    + [strrchr](#strrchr)
    + [strstr](#strstr)
    + [strtod](#strtod)
    + [strtol](#strtol)
    + [tan](#tan)
    + [toupper](#toupper)
    + [trunc](#trunc)
    + [vfprintf](#vfprintf)
    + [vsnprintf](#vsnprintf)
    + [vsprintf](#vsprintf)
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