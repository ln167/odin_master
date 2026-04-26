package sys/wasm/js - pkg.odin-lang.org 






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



Current Package: *[wasm\_js\_interface](/core/sys/wasm/js)*

  

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
3. wasm
4. [js](/core/sys/wasm/js)

# package core:sys/wasm/js [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js)

#### **Warning:**This was generated for `-target:js_wasm32` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (12)

* [Delta\_Mode](#Delta_Mode)
* [Event](#Event)
* [Event\_Kind](#Event_Kind)
* [Event\_Option](#Event_Option)
* [Event\_Options](#Event_Options)
* [Event\_Phase](#Event_Phase)
* [Event\_Target\_Kind](#Event_Target_Kind)
* [Gamepad\_Button](#Gamepad_Button)
* [Gamepad\_State](#Gamepad_State)
* [Key\_Location](#Key_Location)
* [Pointer\_Type](#Pointer_Type)
* [Rect](#Rect)

Constants (7)

* [GAMEPAD\_MAX\_AXES](#GAMEPAD_MAX_AXES)
* [GAMEPAD\_MAX\_BUTTONS](#GAMEPAD_MAX_BUTTONS)
* [GAMEPAD\_MAX\_ID\_SIZE](#GAMEPAD_MAX_ID_SIZE)
* [GAMEPAD\_MAX\_MAPPING\_SIZE](#GAMEPAD_MAX_MAPPING_SIZE)
* [KEYBOARD\_MAX\_CODE\_SIZE](#KEYBOARD_MAX_CODE_SIZE)
* [KEYBOARD\_MAX\_KEY\_SIZE](#KEYBOARD_MAX_KEY_SIZE)
* [PAGE\_SIZE](#PAGE_SIZE)

Variables (1)

* [event\_kind\_string](#event_kind_string)

Procedures (40)

* [abort](#abort)
* [add\_custom\_event\_listener](#add_custom_event_listener)
* [add\_document\_event\_listener](#add_document_event_listener)
* [add\_event\_listener](#add_event_listener)
* [add\_window\_event\_listener](#add_window_event_listener)
* [alert](#alert)
* [device\_pixel\_ratio](#device_pixel_ratio)
* [dispatch\_custom\_event](#dispatch_custom_event)
* [do\_event\_callback](#do_event_callback)
* [evaluate](#evaluate)
* [event\_prevent\_default](#event_prevent_default)
* [event\_stop\_immediate\_propagation](#event_stop_immediate_propagation)
* [event\_stop\_propagation](#event_stop_propagation)
* [get\_bounding\_client\_rect](#get_bounding_client_rect)
* [get\_element\_key\_f64](#get_element_key_f64)
* [get\_element\_key\_string](#get_element_key_string)
* [get\_element\_key\_string\_length](#get_element_key_string_length)
* [get\_element\_min\_max](#get_element_min_max)
* [get\_element\_value\_f64](#get_element_value_f64)
* [get\_element\_value\_string](#get_element_value_string)
* [get\_element\_value\_string\_length](#get_element_value_string_length)
* [get\_gamepad\_state](#get_gamepad_state)
* [open](#open)
* [page\_alloc](#page_alloc)
* [page\_allocator](#page_allocator)
* [remove\_custom\_event\_listener](#remove_custom_event_listener)
* [remove\_document\_event\_listener](#remove_document_event_listener)
* [remove\_event\_listener](#remove_event_listener)
* [remove\_event\_listener\_from\_event](#remove_event_listener_from_event)
* [remove\_window\_event\_listener](#remove_window_event_listener)
* [set\_document\_title](#set_document_title)
* [set\_element\_key\_f64](#set_element_key_f64)
* [set\_element\_key\_string](#set_element_key_string)
* [set\_element\_style](#set_element_style)
* [set\_element\_value\_f64](#set_element_value_f64)
* [set\_element\_value\_string](#set_element_value_string)
* [trap](#trap)
* [window\_get\_rect](#window_get_rect)
* [window\_get\_scroll](#window_get_scroll)
* [window\_set\_scroll](#window_set_scroll)

Procedure Groups (0)

This section is empty.

## Types

### [Delta\_Mode ¶](#Delta_Mode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L176)

```
Delta_Mode :: enum u32 {
	Pixel = 0, 
	Line  = 1, 
	Page  = 2, 
}
```

### [Event ¶](#Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L248)

```
Event :: struct {
	kind:                Event_Kind,
	target_kind:         Event_Target_Kind,
	current_target_kind: Event_Target_Kind,
	id:                  string,
	timestamp:           f64,
	phase:               Event_Phase,
	options:             Event_Options,
	is_composing:        bool,
	is_trusted:          bool,
	using data:          struct #raw_union #align (8) {
		scroll:            struct {
			delta: [2]f64,
		},
		visibility_change: struct {
			is_visible: bool,
		},
		wheel:             struct {
			delta:      [3]f64,
			delta_mode: Delta_Mode,
		},
		key:               struct {
			key:       string,
			code:      string,
			location:  Key_Location,
			ctrl:      bool,
			shift:     bool,
			alt:       bool,
			meta:      bool,
			repeat:    bool,
			char:      rune,
			_key_len:  int `fmt:"-"`,
			_code_len: int `fmt:"-"`,
			_key_buf:  [32]u8 `fmt:"-"`,
			_code_buf: [32]u8 `fmt:"-"`,
		},
		mouse:             struct {
			screen:   [2]i64,
			client:   [2]i64,
			offset:   [2]i64,
			page:     [2]i64,
			movement: [2]i64,
			ctrl:     bool,
			shift:    bool,
			alt:      bool,
			meta:     bool,
			button:   i16,
			buttons:  bit_set[int; u16],
			pointer:  struct {
				altitude_angle:       f64,
				azimuth_angle:        f64,
				persistent_device_id: int,
				pointer_id:           int,
				width:                int,
				height:               int,
				pressure:             f64,
				tangential_pressure:  f64,
				tilt:                 [2]f64,
				twist:                f64,
				pointer_type:         Pointer_Type,
				is_primary:           bool,
			},
		},
		gamepad:           Gamepad_State,
	},
	user_data:           rawptr,
	callback:            proc(e: Event),
}
```

##### Related Procedures With Parameters

* [remove\_event\_listener\_from\_event](/core/sys/wasm/js/#remove_event_listener_from_event)

### [Event\_Kind ¶](#Event_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L6)

```
Event_Kind :: enum u32 {
	Invalid, 
	Load, 
	Unload, 
	Error, 
	Resize, 
	Visibility_Change, 
	Fullscreen_Change, 
	Fullscreen_Error, 
	Click, 
	Double_Click, 
	Mouse_Move, 
	Mouse_Over, 
	Mouse_Out, 
	Mouse_Up, 
	Mouse_Down, 
	Key_Up, 
	Key_Down, 
	Key_Press, 
	Scroll, 
	Wheel, 
	Focus, 
	Focus_In, 
	Focus_Out, 
	Submit, 
	Blur, 
	Change, 
	Hash_Change, 
	Select, 
	Animation_Start, 
	Animation_End, 
	Animation_Iteration, 
	Animation_Cancel, 
	Copy, 
	Cut, 
	Paste, 
	Pointer_Cancel, 
	Pointer_Down, 
	Pointer_Enter, 
	Pointer_Leave, 
	Pointer_Move, 
	Pointer_Over, 
	Pointer_Up, 
	Got_Pointer_Capture, 
	Lost_Pointer_Capture, 
	Pointer_Lock_Change, 
	Pointer_Lock_Error, 
	Selection_Change, 
	Selection_Start, 
	Touch_Cancel, 
	Touch_End, 
	Touch_Move, 
	Touch_Start, 
	Transition_Start, 
	Transition_End, 
	Transition_Run, 
	Transition_Cancel, 
	Context_Menu, 
	Gamepad_Connected, 
	Gamepad_Disconnected, 
	Custom, 
}
```

##### Related Procedures With Parameters

* [add\_document\_event\_listener](/core/sys/wasm/js/#add_document_event_listener)
* [add\_event\_listener](/core/sys/wasm/js/#add_event_listener)
* [add\_window\_event\_listener](/core/sys/wasm/js/#add_window_event_listener)
* [remove\_document\_event\_listener](/core/sys/wasm/js/#remove_document_event_listener)
* [remove\_event\_listener](/core/sys/wasm/js/#remove_event_listener)
* [remove\_window\_event\_listener](/core/sys/wasm/js/#remove_window_event_listener)

### [Event\_Option ¶](#Event_Option) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L211)

```
Event_Option :: enum u8 {
	Bubbles    = 0, 
	Cancelable = 1, 
	Composed   = 2, 
}
```

### [Event\_Options ¶](#Event_Options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L216)

```
Event_Options :: distinct bit_set[Event_Option; u8]
```

##### Related Procedures With Parameters

* [dispatch\_custom\_event](/core/sys/wasm/js/#dispatch_custom_event)

### [Event\_Phase ¶](#Event_Phase) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L204)

```
Event_Phase :: enum u8 {
	None            = 0, 
	Capturing_Phase = 1, 
	At_Target       = 2, 
	Bubbling_Phase  = 3, 
}
```

### [Event\_Target\_Kind ¶](#Event_Target_Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L198)

```
Event_Target_Kind :: enum u32 {
	Element  = 0, 
	Document = 1, 
	Window   = 2, 
}
```

### [Gamepad\_Button ¶](#Gamepad_Button) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L218)

```
Gamepad_Button :: struct {
	value:   f64,
	pressed: bool,
	touched: bool,
}
```

### [Gamepad\_State ¶](#Gamepad_State) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L224)

```
Gamepad_State :: struct {
	id:           string,
	mapping:      string,
	index:        int,
	connected:    bool,
	timestamp:    f64,
	button_count: int,
	axis_count:   int,
	buttons:      [64]Gamepad_Button `fmt:"v,button_count"`,
	axes:         [16]f64 `fmt:"v,axes_count"`,
	_id_len:      int `fmt:"-"`,
	_mapping_len: int `fmt:"-"`,
	_id_buf:      [96]u8 `fmt:"-"`,
	_mapping_buf: [64]u8 `fmt:"-"`,
}
```

##### Related Procedures With Parameters

* [get\_gamepad\_state](/core/sys/wasm/js/#get_gamepad_state)

### [Key\_Location ¶](#Key_Location) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L182)

```
Key_Location :: enum u8 {
	Standard = 0, 
	Left     = 1, 
	Right    = 2, 
	Numpad   = 3, 
}
```

### [Pointer\_Type ¶](#Pointer_Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L242)

```
Pointer_Type :: enum u8 {
	Mouse, 
	Pen, 
	Touch, 
}
```

### [Rect ¶](#Rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L64)

```
Rect :: struct {
	x:      f64,
	y:      f64,
	width:  f64,
	height: f64,
}
```

##### Related Procedures With Returns

* [get\_bounding\_client\_rect](/core/sys/wasm/js/#get_bounding_client_rect)
* [window\_get\_rect](/core/sys/wasm/js/#window_get_rect)

## Constants

### [GAMEPAD\_MAX\_AXES ¶](#GAMEPAD_MAX_AXES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L196)

```
GAMEPAD_MAX_AXES :: 16
```

### [GAMEPAD\_MAX\_BUTTONS ¶](#GAMEPAD_MAX_BUTTONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L195)

```
GAMEPAD_MAX_BUTTONS :: 64
```

### [GAMEPAD\_MAX\_ID\_SIZE ¶](#GAMEPAD_MAX_ID_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L192)

```
GAMEPAD_MAX_ID_SIZE :: 96
```

### [GAMEPAD\_MAX\_MAPPING\_SIZE ¶](#GAMEPAD_MAX_MAPPING_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L193)

```
GAMEPAD_MAX_MAPPING_SIZE :: 64
```

### [KEYBOARD\_MAX\_CODE\_SIZE ¶](#KEYBOARD_MAX_CODE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L190)

```
KEYBOARD_MAX_CODE_SIZE :: 32
```

### [KEYBOARD\_MAX\_KEY\_SIZE ¶](#KEYBOARD_MAX_KEY_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L189)

```
KEYBOARD_MAX_KEY_SIZE :: 32
```

### [PAGE\_SIZE ¶](#PAGE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/memory_js.odin#L7)

```
PAGE_SIZE :: 64 * 1024
```

## Variables

### [event\_kind\_string ¶](#event_kind_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L91)

```
event_kind_string: [Event_Kind]string = …
```

## Procedures

### [abort ¶](#abort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/general.odin#L9)

```
abort :: proc "contextless" () ---
```

### [add\_custom\_event\_listener ¶](#add_custom_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L409)

```
add_custom_event_listener :: proc(id: string, name: string, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [add\_document\_event\_listener ¶](#add_document_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L376)

```
add_document_event_listener :: proc(kind: Event_Kind, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [add\_event\_listener ¶](#add_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L339)

```
add_event_listener :: proc(id: string, kind: Event_Kind, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [add\_window\_event\_listener ¶](#add_window_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L358)

```
add_window_event_listener :: proc(kind: Event_Kind, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [alert ¶](#alert) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/general.odin#L10)

```
alert :: proc "contextless" (msg: string) ---
```

### [device\_pixel\_ratio ¶](#device_pixel_ratio) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L20)

```
device_pixel_ratio :: proc "contextless" () -> f64 ---
```

### [dispatch\_custom\_event ¶](#dispatch_custom_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L336)

```
dispatch_custom_event :: proc "contextless" (id: string, name: string, options: Event_Options = Event_Options{}) -> bool ---
```

### [do\_event\_callback ¶](#do_event_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L448)

```
do_event_callback :: proc(user_data: rawptr, callback: proc(e: Event)) {…}
```

### [evaluate ¶](#evaluate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/general.odin#L11)

```
evaluate :: proc "contextless" (str: string) ---
```

### [event\_prevent\_default ¶](#event_prevent_default) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L335)

```
event_prevent_default :: proc "contextless" () ---
```

### [event\_stop\_immediate\_propagation ¶](#event_stop_immediate_propagation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L334)

```
event_stop_immediate_propagation :: proc "contextless" () ---
```

### [event\_stop\_propagation ¶](#event_stop_propagation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L333)

```
event_stop_propagation :: proc "contextless" () ---
```

### [get\_bounding\_client\_rect ¶](#get_bounding_client_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L68)

```
get_bounding_client_rect :: proc "contextless" (id: string) -> (rect: Rect) {…}
```

### [get\_element\_key\_f64 ¶](#get_element_key_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L11)

```
get_element_key_f64 :: proc "contextless" (id: string, key: string) -> f64 ---
```

### [get\_element\_key\_string ¶](#get_element_key_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L39)

```
get_element_key_string :: proc "contextless" (id: string, key: string, buf: []u8) -> string {…}
```

### [get\_element\_key\_string\_length ¶](#get_element_key_string_length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L18)

```
get_element_key_string_length :: proc "contextless" (id: string, key: string) -> int ---
```

### [get\_element\_min\_max ¶](#get_element_min_max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L52)

```
get_element_min_max :: proc "contextless" (id: string) -> (min, max: f64) {…}
```

### [get\_element\_value\_f64 ¶](#get_element_value_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L8)

```
get_element_value_f64 :: proc "contextless" (id: string) -> f64 ---
```

### [get\_element\_value\_string ¶](#get_element_value_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L29)

```
get_element_value_string :: proc "contextless" (id: string, buf: []u8) -> string {…}
```

### [get\_element\_value\_string\_length ¶](#get_element_value_string_length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L15)

```
get_element_value_string_length :: proc "contextless" (id: string) -> int ---
```

### [get\_gamepad\_state ¶](#get_gamepad_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L426)

```
get_gamepad_state :: proc "contextless" (index: int, s: ^Gamepad_State) -> bool {…}
```

### [open ¶](#open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/general.odin#L12)

```
open :: proc "contextless" (url: string, name: string = "", specs: string = "") ---
```

### [page\_alloc ¶](#page_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/memory_js.odin#L8)

```
page_alloc :: proc(page_count: int) -> (data: []u8, err: runtime.Allocator_Error) {…}
```

### [page\_allocator ¶](#page_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/memory_js.odin#L18)

```
page_allocator :: proc() -> runtime.Allocator {…}
```

### [remove\_custom\_event\_listener ¶](#remove_custom_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L417)

```
remove_custom_event_listener :: proc(id: string, name: string, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [remove\_document\_event\_listener ¶](#remove_document_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L385)

```
remove_document_event_listener :: proc(kind: Event_Kind, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [remove\_event\_listener ¶](#remove_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L349)

```
remove_event_listener :: proc(id: string, kind: Event_Kind, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [remove\_event\_listener\_from\_event ¶](#remove_event_listener_from_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L394)

```
remove_event_listener_from_event :: proc(e: Event) -> bool {…}
```

### [remove\_window\_event\_listener ¶](#remove_window_event_listener) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin#L367)

```
remove_window_event_listener :: proc(kind: Event_Kind, user_data: rawptr, callback: proc(e: Event), use_capture: bool = false) -> bool {…}
```

### [set\_document\_title ¶](#set_document_title) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L26)

```
set_document_title :: proc "contextless" (title: string) ---
```

### [set\_element\_key\_f64 ¶](#set_element_key_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L12)

```
set_element_key_f64 :: proc "contextless" (id: string, key: string, value: f64) ---
```

### [set\_element\_key\_string ¶](#set_element_key_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L17)

```
set_element_key_string :: proc "contextless" (id: string, key: string, value: string) ---
```

### [set\_element\_style ¶](#set_element_style) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L24)

```
set_element_style :: proc "contextless" (id: string, key: string, value: string) ---
```

### [set\_element\_value\_f64 ¶](#set_element_value_f64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L9)

```
set_element_value_f64 :: proc "contextless" (id: string, value: f64) ---
```

### [set\_element\_value\_string ¶](#set_element_value_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L14)

```
set_element_value_string :: proc "contextless" (id: string, value: string) ---
```

### [trap ¶](#trap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/general.odin#L8)

```
trap :: proc "contextless" () ---
```

### [window\_get\_rect ¶](#window_get_rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L78)

```
window_get_rect :: proc "contextless" () -> (rect: Rect) {…}
```

### [window\_get\_scroll ¶](#window_get_scroll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L88)

```
window_get_scroll :: proc "contextless" () -> (x, y: f64) {…}
```

### [window\_set\_scroll ¶](#window_set_scroll) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin#L22)

```
window_set_scroll :: proc "contextless" (x, y: f64) ---
```

## Procedure Groups

This section is empty.

## Source Files

* [dom.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/dom.odin)
* [events.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/events.odin)
* [general.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/wasm/js/general.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.992468300 +0000 UTC`

* [Types](#pkg-Types)
  + [Delta\_Mode](#Delta_Mode)
  + [Event](#Event)
  + [Event\_Kind](#Event_Kind)
  + [Event\_Option](#Event_Option)
  + [Event\_Options](#Event_Options)
  + [Event\_Phase](#Event_Phase)
  + [Event\_Target\_Kind](#Event_Target_Kind)
  + [Gamepad\_Button](#Gamepad_Button)
  + [Gamepad\_State](#Gamepad_State)
  + [Key\_Location](#Key_Location)
  + [Pointer\_Type](#Pointer_Type)
  + [Rect](#Rect)
* [Constants](#pkg-Constants)
  + [GAMEPAD\_MAX\_AXES](#GAMEPAD_MAX_AXES)
  + [GAMEPAD\_MAX\_BUTTONS](#GAMEPAD_MAX_BUTTONS)
  + [GAMEPAD\_MAX\_ID\_SIZE](#GAMEPAD_MAX_ID_SIZE)
  + [GAMEPAD\_MAX\_MAPPING\_SIZE](#GAMEPAD_MAX_MAPPING_SIZE)
  + [KEYBOARD\_MAX\_CODE\_SIZE](#KEYBOARD_MAX_CODE_SIZE)
  + [KEYBOARD\_MAX\_KEY\_SIZE](#KEYBOARD_MAX_KEY_SIZE)
  + [PAGE\_SIZE](#PAGE_SIZE)
* [Variables](#pkg-Variables)
  + [event\_kind\_string](#event_kind_string)
* [Procedures](#pkg-Procedures)
  + [abort](#abort)
  + [add\_custom\_event\_listener](#add_custom_event_listener)
  + [add\_document\_event\_listener](#add_document_event_listener)
  + [add\_event\_listener](#add_event_listener)
  + [add\_window\_event\_listener](#add_window_event_listener)
  + [alert](#alert)
  + [device\_pixel\_ratio](#device_pixel_ratio)
  + [dispatch\_custom\_event](#dispatch_custom_event)
  + [do\_event\_callback](#do_event_callback)
  + [evaluate](#evaluate)
  + [event\_prevent\_default](#event_prevent_default)
  + [event\_stop\_immediate\_propagation](#event_stop_immediate_propagation)
  + [event\_stop\_propagation](#event_stop_propagation)
  + [get\_bounding\_client\_rect](#get_bounding_client_rect)
  + [get\_element\_key\_f64](#get_element_key_f64)
  + [get\_element\_key\_string](#get_element_key_string)
  + [get\_element\_key\_string\_length](#get_element_key_string_length)
  + [get\_element\_min\_max](#get_element_min_max)
  + [get\_element\_value\_f64](#get_element_value_f64)
  + [get\_element\_value\_string](#get_element_value_string)
  + [get\_element\_value\_string\_length](#get_element_value_string_length)
  + [get\_gamepad\_state](#get_gamepad_state)
  + [open](#open)
  + [page\_alloc](#page_alloc)
  + [page\_allocator](#page_allocator)
  + [remove\_custom\_event\_listener](#remove_custom_event_listener)
  + [remove\_document\_event\_listener](#remove_document_event_listener)
  + [remove\_event\_listener](#remove_event_listener)
  + [remove\_event\_listener\_from\_event](#remove_event_listener_from_event)
  + [remove\_window\_event\_listener](#remove_window_event_listener)
  + [set\_document\_title](#set_document_title)
  + [set\_element\_key\_f64](#set_element_key_f64)
  + [set\_element\_key\_string](#set_element_key_string)
  + [set\_element\_style](#set_element_style)
  + [set\_element\_value\_f64](#set_element_value_f64)
  + [set\_element\_value\_string](#set_element_value_string)
  + [trap](#trap)
  + [window\_get\_rect](#window_get_rect)
  + [window\_get\_scroll](#window_get_scroll)
  + [window\_set\_scroll](#window_set_scroll)
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