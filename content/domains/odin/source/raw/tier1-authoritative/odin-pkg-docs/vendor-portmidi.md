package portmidi - pkg.odin-lang.org 






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



Current Package: *[portmidi](/vendor/portmidi)*

  

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
2. [portmidi](/vendor/portmidi)

# package vendor:portmidi [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [PortMidi](http://sourceforge.net/projects/portmedia) Portable Real-Time MIDI Library.

## Index

Types (9)

* [DeviceID](#DeviceID)
* [DeviceInfo](#DeviceInfo)
* [Error](#Error)
* [Event](#Event)
* [Message](#Message)
* [Queue](#Queue)
* [Stream](#Stream)
* [TimeProc](#TimeProc)
* [Timestamp](#Timestamp)

Constants (26)

* [DEFAULT\_SYSEX\_BUFFER\_SIZE](#DEFAULT_SYSEX_BUFFER_SIZE)
* [FILT\_ACTIVE](#FILT_ACTIVE)
* [FILT\_AFTERTOUCH](#FILT_AFTERTOUCH)
* [FILT\_CHANNEL\_AFTERTOUCH](#FILT_CHANNEL_AFTERTOUCH)
* [FILT\_CLOCK](#FILT_CLOCK)
* [FILT\_CONTROL](#FILT_CONTROL)
* [FILT\_FD](#FILT_FD)
* [FILT\_MTC](#FILT_MTC)
* [FILT\_NOTE](#FILT_NOTE)
* [FILT\_PITCHBEND](#FILT_PITCHBEND)
* [FILT\_PLAY](#FILT_PLAY)
* [FILT\_POLY\_AFTERTOUCH](#FILT_POLY_AFTERTOUCH)
* [FILT\_PROGRAM](#FILT_PROGRAM)
* [FILT\_REALTIME](#FILT_REALTIME)
* [FILT\_RESET](#FILT_RESET)
* [FILT\_SONG\_POSITION](#FILT_SONG_POSITION)
* [FILT\_SONG\_SELECT](#FILT_SONG_SELECT)
* [FILT\_SYSEX](#FILT_SYSEX)
* [FILT\_SYSTEMCOMMON](#FILT_SYSTEMCOMMON)
* [FILT\_TICK](#FILT_TICK)
* [FILT\_TUNE](#FILT_TUNE)
* [FILT\_UNDEFINED](#FILT_UNDEFINED)
* [HDRLENGTH](#HDRLENGTH)
* [HOST\_ERROR\_MSG\_LEN](#HOST_ERROR_MSG_LEN)
* [NoDevice](#NoDevice)
* [PORTMIDI\_SHARED](#PORTMIDI_SHARED)

Variables (0)

This section is empty.

Procedures (37)

* [Abort](#Abort)
* [Before](#Before)
* [Channel](#Channel)
* [Close](#Close)
* [CountDevices](#CountDevices)
* [Dequeue](#Dequeue)
* [Enqueue](#Enqueue)
* [GetDefaultInputDeviceID](#GetDefaultInputDeviceID)
* [GetDefaultOutputDeviceID](#GetDefaultOutputDeviceID)
* [GetDeviceInfo](#GetDeviceInfo)
* [GetErrorText](#GetErrorText)
* [GetHostErrorText](#GetHostErrorText)
* [HasHostError](#HasHostError)
* [Initialize](#Initialize)
* [MessageCompose](#MessageCompose)
* [MessageData1](#MessageData1)
* [MessageData2](#MessageData2)
* [MessageDecompose](#MessageDecompose)
* [MessageMake](#MessageMake)
* [MessageStatus](#MessageStatus)
* [OpenInput](#OpenInput)
* [OpenOutput](#OpenOutput)
* [Poll](#Poll)
* [QueueCreate](#QueueCreate)
* [QueueDestroy](#QueueDestroy)
* [QueueEmpty](#QueueEmpty)
* [QueueFull](#QueueFull)
* [QueuePeek](#QueuePeek)
* [Read](#Read)
* [SetChannelMask](#SetChannelMask)
* [SetFilter](#SetFilter)
* [SetOverflow](#SetOverflow)
* [Synchronize](#Synchronize)
* [Terminate](#Terminate)
* [Write](#Write)
* [WriteShort](#WriteShort)
* [WriteSysEx](#WriteSysEx)

Procedure Groups (0)

This section is empty.

`#config` values (1)

* [PORTMIDI\_SHARED](#PORTMIDI_SHARED)

## Types

### [DeviceID ¶](#DeviceID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L116)

```
DeviceID :: distinct i32
```

##### Related Procedures With Parameters

* [GetDeviceInfo](/vendor/portmidi/#GetDeviceInfo)
* [OpenInput](/vendor/portmidi/#OpenInput)
* [OpenOutput](/vendor/portmidi/#OpenOutput)



##### Related Procedures With Returns

* [GetDefaultInputDeviceID](/vendor/portmidi/#GetDefaultInputDeviceID)
* [GetDefaultOutputDeviceID](/vendor/portmidi/#GetDefaultOutputDeviceID)

##### Related Constants

* [NoDevice](/vendor/portmidi/#NoDevice)

### [DeviceInfo ¶](#DeviceInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L118)

```
DeviceInfo :: struct {
	structVersion: i32,
	// *< this internal structure version 
	interf:        cstring,
	// *< underlying MIDI API, e.g. MMSystem or DirectX 
	name:          cstring,
	// *< device name, e.g. USB MidiSport 1x1 
	input:         b32,
	// *< true if and only if (⟺) input is available 
	output:        b32,
	// *< true if and only if (⟺) output is available 
	opened:        b32,
}
```

##### Related Procedures With Returns

* [GetDeviceInfo](/vendor/portmidi/#GetDeviceInfo)

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L26)

```
Error :: enum i32 {
	NoError            = 0, 
	NoData             = 0,      // *< A "no error" return that also indicates no data avail.
	GotData            = 1,      // *< A "no error" return that also indicates data available
	HostError          = -10000, 
	InvalidDeviceId,             // out of range or 
	                   * output device when input is requested or 
	                   * input device when output is requested or
	                   * device is already opened
	InsufficientMemory, 
	BufferTooSmall, 
	BufferOverflow, 
	BadPtr,                      // Stream parameter is nil or
	         * stream is not opened or
	         * stream is output when input is required or
	         * stream is input when output is required
	BadData,                     // illegal midi data, e.g. missing EOX
	InternalError, 
	BufferMaxSize,               // buffer is already as large as it can be
}
```

##### Related Procedures With Parameters

* [GetErrorText](/vendor/portmidi/#GetErrorText)



##### Related Procedures With Returns

* [Abort](/vendor/portmidi/#Abort)
* [Close](/vendor/portmidi/#Close)
* [Dequeue](/vendor/portmidi/#Dequeue)
* [Enqueue](/vendor/portmidi/#Enqueue)
* [Initialize](/vendor/portmidi/#Initialize)
* [OpenInput](/vendor/portmidi/#OpenInput)
* [OpenOutput](/vendor/portmidi/#OpenOutput)
* [Poll](/vendor/portmidi/#Poll)
* [QueueDestroy](/vendor/portmidi/#QueueDestroy)
* [SetChannelMask](/vendor/portmidi/#SetChannelMask)
* [SetFilter](/vendor/portmidi/#SetFilter)
* [SetOverflow](/vendor/portmidi/#SetOverflow)
* [Synchronize](/vendor/portmidi/#Synchronize)
* [Terminate](/vendor/portmidi/#Terminate)
* [Write](/vendor/portmidi/#Write)
* [WriteShort](/vendor/portmidi/#WriteShort)
* [WriteSysEx](/vendor/portmidi/#WriteSysEx)

### [Event ¶](#Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L466)

```
Event :: struct {
	message:   Message,
	timestamp: Timestamp,
}
```

 

\*

```
All midi data comes in the form of Event structures. A sysex
message is encoded as a sequence of Event structures, with each
structure carrying 4 bytes of the message, i.e. only the first
Event carries the status byte.

Note that MIDI allows nested messages: the so-called "real-time" MIDI 
messages can be inserted into the MIDI byte stream at any location, 
including within a sysex message. MIDI real-time messages are one-byte
messages used mainly for timing (see the MIDI spec). PortMidi retains 
the order of non-real-time MIDI messages on both input and output, but 
it does not specify exactly how real-time messages are processed. This
is particulary problematic for MIDI input, because the input parser 
must either prepare to buffer an unlimited number of sysex message 
bytes or to buffer an unlimited number of real-time messages that 
arrive embedded in a long sysex message. To simplify things, the input
parser is allowed to pass real-time MIDI messages embedded within a 
sysex message, and it is up to the client to detect, process, and 
remove these messages as they arrive.

When receiving sysex messages, the sysex message is terminated
by either an EOX status byte (anywhere in the 4 byte messages) or
by a non-real-time status byte in the low order byte of the message.
If you get a non-real-time status byte but there was no EOX byte, it 
means the sysex message was somehow truncated. This is not
considered an error; e.g., a missing EOX can result from the user
disconnecting a MIDI cable during sysex transmission.

A real-time message can occur within a sysex message. A real-time 
message will always occupy a full Event with the status byte in 
the low-order byte of the Event message field. (This implies that
the byte-order of sysex bytes and real-time message bytes may not
be preserved -- for example, if a real-time message arrives after
3 bytes of a sysex message, the real-time message will be delivered
first. The first word of the sysex message will be delivered only
after the 4th byte arrives, filling the 4-byte Event message field.

The timestamp field is observed when the output port is opened with
a non-zero latency. A timestamp of zero means "use the current time",
which in turn means to deliver the message with a delay of
latency (the latency parameter used when opening the output port.)
Do not expect PortMidi to sort data according to timestamps -- 
messages should be sent in the correct order, and timestamps MUST 
be non-decreasing. See also "Example" for OpenOutput() above.

A sysex message will generally fill many Event structures. On 
output to a Stream with non-zero latency, the first timestamp
on sysex message data will determine the time to begin sending the 
message. PortMidi implementations may ignore timestamps for the 
remainder of the sysex message. 

On input, the timestamp ideally denotes the arrival time of the 
status byte of the message. The first timestamp on sysex message 
data will be valid. Subsequent timestamps may denote 
when message bytes were actually received, or they may be simply 
copies of the first timestamp.

Timestamps for nested messages: If a real-time message arrives in 
the middle of some other message, it is enqueued immediately with 
the timestamp corresponding to its arrival time. The interrupted 
non-real-time message or 4-byte packet of sysex data will be enqueued 
later. The timestamp of interrupted data will be equal to that of
the interrupting real-time message to insure that timestamps are
non-decreasing.
```




##### Related Procedures With Parameters

* [Read](/vendor/portmidi/#Read)
* [Write](/vendor/portmidi/#Write)

### [Message ¶](#Message) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L400)

```
Message :: distinct i32
```

##### Related Procedures With Parameters

* [MessageData1](/vendor/portmidi/#MessageData1)
* [MessageData2](/vendor/portmidi/#MessageData2)
* [MessageDecompose](/vendor/portmidi/#MessageDecompose)
* [MessageStatus](/vendor/portmidi/#MessageStatus)
* [WriteShort](/vendor/portmidi/#WriteShort)



##### Related Procedures With Returns

* [MessageMake](/vendor/portmidi/#MessageMake)

### [Queue ¶](#Queue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L17)

```
Queue :: distinct rawptr
```

##### Related Procedures With Parameters

* [Dequeue](/vendor/portmidi/#Dequeue)
* [Enqueue](/vendor/portmidi/#Enqueue)
* [QueueDestroy](/vendor/portmidi/#QueueDestroy)
* [QueueEmpty](/vendor/portmidi/#QueueEmpty)
* [QueueFull](/vendor/portmidi/#QueueFull)
* [QueuePeek](/vendor/portmidi/#QueuePeek)
* [SetOverflow](/vendor/portmidi/#SetOverflow)



##### Related Procedures With Returns

* [QueueCreate](/vendor/portmidi/#QueueCreate)

### [Stream ¶](#Stream) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L50)

```
Stream :: distinct rawptr
```

 

A single Stream is a descriptor for an open MIDI device.




##### Related Procedures With Parameters

* [Abort](/vendor/portmidi/#Abort)
* [Close](/vendor/portmidi/#Close)
* [HasHostError](/vendor/portmidi/#HasHostError)
* [OpenInput](/vendor/portmidi/#OpenInput)
* [OpenOutput](/vendor/portmidi/#OpenOutput)
* [Poll](/vendor/portmidi/#Poll)
* [Read](/vendor/portmidi/#Read)
* [SetChannelMask](/vendor/portmidi/#SetChannelMask)
* [SetFilter](/vendor/portmidi/#SetFilter)
* [Synchronize](/vendor/portmidi/#Synchronize)
* [Write](/vendor/portmidi/#Write)
* [WriteShort](/vendor/portmidi/#WriteShort)
* [WriteSysEx](/vendor/portmidi/#WriteSysEx)

### [TimeProc ¶](#TimeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L142)

```
TimeProc :: proc "c" (time_info: rawptr) -> Timestamp
```

##### Related Procedures With Parameters

* [OpenInput](/vendor/portmidi/#OpenInput)
* [OpenOutput](/vendor/portmidi/#OpenOutput)

### [Timestamp ¶](#Timestamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L141)

```
Timestamp :: distinct i32
```

 

\*

```
Timestamp is used to represent a millisecond clock with arbitrary
start time. The type is used for all MIDI timestampes and clocks.
```




##### Related Procedures With Parameters

* [Before](/vendor/portmidi/#Before)
* [WriteShort](/vendor/portmidi/#WriteShort)
* [WriteSysEx](/vendor/portmidi/#WriteSysEx)

## Constants

### [DEFAULT\_SYSEX\_BUFFER\_SIZE ¶](#DEFAULT_SYSEX_BUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L24)

```
DEFAULT_SYSEX_BUFFER_SIZE :: 1024
```

### [FILT\_ACTIVE ¶](#FILT_ACTIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L263)

```
FILT_ACTIVE :: 1 << 0x0E
```

 

Filter bit-mask definitions
filter active sensing messages (0xFE):

### [FILT\_AFTERTOUCH ¶](#FILT_AFTERTOUCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L287)

```
FILT_AFTERTOUCH :: FILT_CHANNEL_AFTERTOUCH | FILT_POLY_AFTERTOUCH
```

 

filter both channel and poly aftertouch

### [FILT\_CHANNEL\_AFTERTOUCH ¶](#FILT_CHANNEL_AFTERTOUCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L283)

```
FILT_CHANNEL_AFTERTOUCH :: 1 << 0x1D
```

 

filter channel aftertouch (most midi controllers use this) (0xD0-0xDF)

### [FILT\_CLOCK ¶](#FILT_CLOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L267)

```
FILT_CLOCK :: 1 << 0x08
```

 

filter MIDI clock message (0xF8)

### [FILT\_CONTROL ¶](#FILT_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L291)

```
FILT_CONTROL :: 1 << 0x1B
```

 

Control Changes (CC's) (0xB0-0xBF)

### [FILT\_FD ¶](#FILT_FD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L273)

```
FILT_FD :: 1 << 0x0D
```

 

filter undefined FD messages

### [FILT\_MTC ¶](#FILT_MTC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L295)

```
FILT_MTC :: 1 << 0x01
```

 

MIDI Time Code (0xF1)

### [FILT\_NOTE ¶](#FILT_NOTE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L281)

```
FILT_NOTE :: (1 << 0x19) | (1 << 0x18)
```

 

filter note-on and note-off (0x90-0x9F and 0x80-0x8F

### [FILT\_PITCHBEND ¶](#FILT_PITCHBEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L293)

```
FILT_PITCHBEND :: 1 << 0x1E
```

 

Pitch Bender (0xE0-0xEF

### [FILT\_PLAY ¶](#FILT_PLAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L269)

```
FILT_PLAY :: (1 << 0x0A) | (1 << 0x0C) | (1 << 0x0B)
```

 

filter play messages (start 0xFA, stop 0xFC, continue 0xFB)

### [FILT\_POLY\_AFTERTOUCH ¶](#FILT_POLY_AFTERTOUCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L285)

```
FILT_POLY_AFTERTOUCH :: 1 << 0x1A
```

 

per-note aftertouch (0xA0-0xAF)

### [FILT\_PROGRAM ¶](#FILT_PROGRAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L289)

```
FILT_PROGRAM :: 1 << 0x1C
```

 

Program changes (0xC0-0xCF)

### [FILT\_REALTIME ¶](#FILT_REALTIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L279)

```
FILT_REALTIME :: FILT_ACTIVE | FILT_SYSEX | FILT_CLOCK | FILT_PLAY | FILT_UNDEFINED | FILT_RESET | FILT_TICK
```

 

filter all real-time messages

### [FILT\_RESET ¶](#FILT_RESET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L277)

```
FILT_RESET :: 1 << 0x0F
```

 

filter reset messages (0xFF)

### [FILT\_SONG\_POSITION ¶](#FILT_SONG_POSITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L297)

```
FILT_SONG_POSITION :: 1 << 0x02
```

 

Song Position (0xF2)

### [FILT\_SONG\_SELECT ¶](#FILT_SONG_SELECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L299)

```
FILT_SONG_SELECT :: 1 << 0x03
```

 

Song Select (0xF3)

### [FILT\_SYSEX ¶](#FILT_SYSEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L265)

```
FILT_SYSEX :: 1 << 0x00
```

 

filter system exclusive messages (0xF0):

### [FILT\_SYSTEMCOMMON ¶](#FILT_SYSTEMCOMMON) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L303)

```
FILT_SYSTEMCOMMON :: FILT_MTC | FILT_SONG_POSITION | FILT_SONG_SELECT | FILT_TUNE
```

 

All System Common messages (mtc, song position, song select, tune request)

### [FILT\_TICK ¶](#FILT_TICK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L271)

```
FILT_TICK :: 1 << 0x09
```

 

filter tick messages (0xF9)

### [FILT\_TUNE ¶](#FILT_TUNE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L301)

```
FILT_TUNE :: 1 << 0x06
```

 

Tuning request (0xF6)

### [FILT\_UNDEFINED ¶](#FILT_UNDEFINED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L275)

```
FILT_UNDEFINED :: FILT_FD
```

 

filter undefined real-time messages

### [HDRLENGTH ¶](#HDRLENGTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L112)

```
HDRLENGTH :: 50
```

### [HOST\_ERROR\_MSG\_LEN ¶](#HOST_ERROR_MSG_LEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L113)

```
HOST_ERROR_MSG_LEN :: 256
```

 

any host error msg will occupy less
than this number of characters

### [NoDevice ¶](#NoDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L117)

```
NoDevice :: DeviceID(-1)
```

### [PORTMIDI\_SHARED ¶](#PORTMIDI_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L6)

```
PORTMIDI_SHARED :: #config(PORTMIDI_SHARED, false)
```

## Variables

This section is empty.

## Procedures

### [Abort ¶](#Abort) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L336)

```
Abort :: proc "c" (stream: Stream) -> Error ---
```

 

\*

```
	Abort() terminates outgoing messages immediately
	The caller should immediately close the output port;
	this call may result in transmission of a partial midi message.
	There is no abort for Midi input because the user can simply
	ignore messages in the buffer and close an input device at
	any time.
```

### [Before ¶](#Before) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L144)

```
Before :: proc "c" (t1, t2: Timestamp) -> b32 {…}
```

### [Channel ¶](#Channel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L305)

```
Channel :: proc "c" (channel: i32) -> i32 {…}
```

### [Close ¶](#Close) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L343)

```
Close :: proc "c" (stream: Stream) -> Error ---
```

 

\*

```
	Close() closes a midi stream, flushing any pending buffers.
	(PortMidi attempts to close open streams when the application 
	exits -- this is particularly difficult under Windows.)
```

### [CountDevices ¶](#CountDevices) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L130)

```
CountDevices :: proc "c" () -> i32 ---
```

 

Get devices count, ids range from 0 to CountDevices()-1.

### [Dequeue ¶](#Dequeue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L67)

```
Dequeue :: proc "c" (queue: Queue, msg: rawptr) -> Error ---
```

 

Dequeue() removes one item from the queue, copying it into msg.
Returns 1 if successful, and 0 if the queue is empty.
Returns .BufferOverflow if what would have been the next thing
in the queue was dropped due to overflow. (So when overflow occurs,
the receiver can receive a queue full of messages before getting the
overflow report. This protocol ensures that the reader will be
notified when data is lost due to overflow.

### [Enqueue ¶](#Enqueue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L74)

```
Enqueue :: proc "c" (queue: Queue, msg: rawptr) -> Error ---
```

 

Enqueue() inserts one item into the queue, copying it from msg.
Returns .NoError if successful and .BufferOverflow if the queue was
already full. If .BufferOverflow is returned, the overflow flag is set.

### [GetDefaultInputDeviceID ¶](#GetDefaultInputDeviceID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L132)

```
GetDefaultInputDeviceID :: proc "c" () -> DeviceID ---
```

### [GetDefaultOutputDeviceID ¶](#GetDefaultOutputDeviceID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L133)

```
GetDefaultOutputDeviceID :: proc "c" () -> DeviceID ---
```

### [GetDeviceInfo ¶](#GetDeviceInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L159)

```
GetDeviceInfo :: proc "c" (id: DeviceID) -> ^DeviceInfo ---
```

 

\*

```
	GetDeviceInfo() returns a pointer to a DeviceInfo structure
	referring to the device specified by id.
	If id is out of range the function returns nil.

	The returned structure is owned by the PortMidi implementation and must
	not be manipulated or freed. The pointer is guaranteed to be valid
	between calls to Initialize() and Terminate().
```

### [GetErrorText ¶](#GetErrorText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L88)

```
GetErrorText :: proc(errnum: Error) -> string {…}
```

 

\*

```
Translate portmidi error number into human readable message.
These strings are constants (set at compile time) so client has
no need to allocate storage
```

### [GetHostErrorText ¶](#GetHostErrorText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L101)

```
GetHostErrorText :: proc(buf: []u8) -> string {…}
```

 

\*

```
Translate portmidi host error into human readable message.
These strings are computed at run time, so client has to allocate storage.
After this routine executes, the host error is cleared.
```

### [HasHostError ¶](#HasHostError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L80)

```
HasHostError :: proc "c" (stream: Stream) -> b32 ---
```

 

\*

```
	Test whether stream has a pending host error. Normally, the client finds
	out about errors through returned error codes, but some errors can occur
	asynchronously where the client does not
	explicitly call a function, and therefore cannot receive an error code.
	The client can test for a pending error using HasHostError(). If true,
	the error can be accessed and cleared by calling GetErrorText(). 
	Errors are also cleared by calling other functions that can return
	errors, e.g. OpenInput(), OpenOutput(), Read(), Write(). The
	client does not need to call HasHostError(). Any pending error will be
	reported the next time the client performs an explicit function call on 
	the stream, e.g. an input or output operation. Until the error is cleared,
	no new error codes will be obtained, even for a different stream.
```

### [Initialize ¶](#Initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L58)

```
Initialize :: proc "c" () -> Error ---
```

 

\*

```
	Initialize() is the library initialisation function - call this before
	using the library.
```

### [MessageCompose ¶](#MessageCompose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L378)

```
MessageCompose :: MessageMake
```

 

\*

```
MessageMake() encodes a short Midi message into a 32-bit word. If data1
and/or data2 are not present, use zero.

MessageStatus(), MessageData1(), and
MessageData2() extract fields from a 32-bit midi message.
```

### [MessageData1 ¶](#MessageData1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L384)

```
MessageData1 :: proc "c" (msg: Message) -> i32 {…}
```

### [MessageData2 ¶](#MessageData2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L387)

```
MessageData2 :: proc "c" (msg: Message) -> i32 {…}
```

### [MessageDecompose ¶](#MessageDecompose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L392)

```
MessageDecompose :: proc "c" (msg: Message) -> (status: i32, data1, data2: i32) {…}
```

### [MessageMake ¶](#MessageMake) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L378)

```
MessageMake :: proc "c" (status: i32, data1, data2: i32) -> Message {…}
```

 

\*

```
MessageMake() encodes a short Midi message into a 32-bit word. If data1
and/or data2 are not present, use zero.

MessageStatus(), MessageData1(), and
MessageData2() extract fields from a 32-bit midi message.
```

### [MessageStatus ¶](#MessageStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L381)

```
MessageStatus :: proc "c" (msg: Message) -> i32 {…}
```

### [OpenInput ¶](#OpenInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L224)

```
OpenInput :: proc "c" (
	stream:          ^Stream, 
	inputDevice:     DeviceID, 
	inputDriverInfo: rawptr, 
	bufferSize:      i32, 
	time_proc:       TimeProc, 
	time_info:       rawptr, 
) -> Error ---
```

 

\*

```
	OpenInput() and OpenOutput() open devices.

	stream is the address of a Stream pointer which will receive
	a pointer to the newly opened stream.

	inputDevice is the id of the device used for input (see DeviceID above).

	inputDriverInfo is a pointer to an optional driver specific data structure
	containing additional information for device setup or handle processing.
	inputDriverInfo is never required for correct operation. If not used
	inputDriverInfo should be nil.

	outputDevice is the id of the device used for output (see DeviceID above.)

	outputDriverInfo is a pointer to an optional driver specific data structure
	containing additional information for device setup or handle processing.
	outputDriverInfo is never required for correct operation. If not used
	outputDriverInfo should be nil.

	For input, the buffersize specifies the number of input events to be 
	buffered waiting to be read using Read(). For output, buffersize 
	specifies the number of output events to be buffered waiting for output. 
	(In some cases -- see below -- PortMidi does not buffer output at all
	and merely passes data to a lower-level API, in which case buffersize
	is ignored.)

	latency is the delay in milliseconds applied to timestamps to determine 
	when the output should actually occur. (If latency is < 0, 0 is assumed.) 
	If latency is zero, timestamps are ignored and all output is delivered
	immediately. If latency is greater than zero, output is delayed until the
	message timestamp plus the latency. (NOTE: the time is measured relative 
	to the time source indicated by time_proc. Timestamps are absolute,
	not relative delays or offsets.) In some cases, PortMidi can obtain
	better timing than your application by passing timestamps along to the
	device driver or hardware. Latency may also help you to synchronize midi
	data to audio data by matching midi latency to the audio buffer latency.

	time_proc is a pointer to a procedure that returns time in milliseconds. It
	may be nil, in which case a default millisecond timebase (PortTime) is 
	used. If the application wants to use PortTime, it should start the timer
	(call Pt_Start) before calling OpenInput or OpenOutput. If the
	application tries to start the timer *after* OpenInput or OpenOutput,
	it may get a ptAlreadyStarted error from Pt_Start, and the application's
	preferred time resolution and callback function will be ignored.
	time_proc result values are appended to incoming MIDI data, and time_proc
	times are used to schedule outgoing MIDI data (when latency is non-zero).

	time_info is a pointer passed to time_proc.

	Example: If I provide a timestamp of 5000, latency is 1, and time_proc
	returns 4990, then the desired output time will be when time_proc returns
	timestamp+latency = 5001. This will be 5001-4990 = 11ms from now.

	return value:
	Upon success Open() returns NoError and places a pointer to a
	valid Stream in the stream argument.
	If a call to Open() fails a nonzero error code is returned (see
	PMError above) and the value of port is invalid.

	Any stream that is successfully opened should eventually be closed
	by calling Close().
```

### [OpenOutput ¶](#OpenOutput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L231)

```
OpenOutput :: proc "c" (
	stream:           ^Stream, 
	outputDevice:     DeviceID, 
	outputDriverInfo: rawptr, 
	bufferSize:       i32, 
	time_proc:        TimeProc, 
	time_info:        rawptr, 
	latency:          i32, 
) -> Error ---
```

### [Poll ¶](#Poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L503)

```
Poll :: proc "c" (stream: Stream) -> Error ---
```

 

\*

```
	Poll() tests whether input is available.
```

### [QueueCreate ¶](#QueueCreate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L55)

```
QueueCreate :: proc "c" (num_msgs: i32, bytes_per_msg: i32) -> Queue ---
```

### [QueueDestroy ¶](#QueueDestroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L56)

```
QueueDestroy :: proc "c" (queue: Queue) -> Error ---
```

### [QueueEmpty ¶](#QueueEmpty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L90)

```
QueueEmpty :: proc "c" (queue: Queue) -> b32 ---
```

### [QueueFull ¶](#QueueFull) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L89)

```
QueueFull :: proc "c" (queue: Queue) -> b32 ---
```

 

QueueFull() returns non-zero if the queue is full
QueueEmpty() returns non-zero if the queue is empty
Either condition may change immediately because a parallel
enqueue or dequeue operation could be in progress. Furthermore,
QueueEmpty() is optimistic: it may say false, when due to
out-of-order writes, the full message has not arrived. Therefore,
Dequeue() could still return 0 after QueueEmpty() returns
false. On the other hand, QueueFull() is pessimistic: if it
returns false, then Enqueue() is guaranteed to succeed.
Error conditions: QueueFull() returns .BadPtr if queue is nil.
QueueEmpty() returns false if queue is nil.

### [QueuePeek ¶](#QueuePeek) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L113)

```
QueuePeek :: proc "c" (queue: Queue) -> rawptr ---
```

 

QueuePeek() returns a pointer to the item at the head of the queue,
or NULL if the queue is empty. The item is not removed from the queue.
QueuePeek() will not indicate when an overflow occurs. If you want
to get and check .BufferOverflow messages, use the return value of
QueuePeek() *only* as an indication that you should call
Dequeue(). At the point where a direct call to Dequeue() would
return .BufferOverflow, QueuePeek() will return NULL but internally
clear the .BufferOverflow flag, enabling Enqueue() to resume
enqueuing messages. A subsequent call to QueuePeek()
will return a pointer to the first message *after* the overflow.
Using this as an indication to call Dequeue(), the first call
to Dequeue() will return .BufferOverflow. The second call will
return success, copying the same message pointed to by the previous
QueuePeek().
When to use QueuePeek(): (1) when you need to look at the message
data to decide who should be called to receive it. (2) when you need
to know a message is ready but cannot accept the message.
Note that QueuePeek() is not a fast check, so if possible, you
might as well just call Dequeue() and accept the data if it is there.

### [Read ¶](#Read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L498)

```
Read :: proc "c" (stream: Stream, buffer: [^]Event, length: i32) -> i32 ---
```

 

\*

```
	Read() retrieves midi data into a buffer, and returns the number
	of events read. Result is a non-negative number unless an error occurs, 
	in which case a Error value will be returned.

	Buffer Overflow

	The problem: if an input overflow occurs, data will be lost, ultimately 
	because there is no flow control all the way back to the data source. 
	When data is lost, the receiver should be notified and some sort of 
	graceful recovery should take place, e.g. you shouldn't resume receiving 
	in the middle of a long sysex message.

	With a lock-free fifo, which is pretty much what we're stuck with to 
	enable portability to the Mac, it's tricky for the producer and consumer 
	to synchronously reset the buffer and resume normal operation.

	Solution: the buffer managed by PortMidi will be flushed when an overflow
	occurs. The consumer (Read()) gets an error message (.BufferOverflow)
	and ordinary processing resumes as soon as a new message arrives. The
	remainder of a partial sysex message is not considered to be a "new
	message" and will be flushed as well.
```

### [SetChannelMask ¶](#SetChannelMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L326)

```
SetChannelMask :: proc "c" (stream: Stream, mask: i32) -> Error ---
```

 

\*

```
	SetChannelMask() filters incoming messages based on channel.
	The mask is a 16-bit bitfield corresponding to appropriate channels.
	The _Channel macro can assist in calling this function.
	i.e. to set receive only input on channel 1, call with
	SetChannelMask(Channel(1));
	Multiple channels should be OR'd together, like
	SetChannelMask(Channel(10) | Channel(11))

	Note that channels are numbered 0 to 15 (not 1 to 16). Most 
	synthesizer and interfaces number channels starting at 1, but
	PortMidi numbers channels starting at 0.

	All channels are allowed by default
```

### [SetFilter ¶](#SetFilter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L257)

```
SetFilter :: proc "c" (stream: Stream, filters: i32) -> Error ---
```

 

\*

```
	SetFilter() sets filters on an open input stream to drop selected
	input types. By default, only active sensing messages are filtered.
	To prohibit, say, active sensing and sysex messages, call
	SetFilter(stream, FILT_ACTIVE | FILT_SYSEX);

	Filtering is useful when midi routing or midi thru functionality is being
	provided by the user application.
	For example, you may want to exclude timing messages (clock, MTC, start/stop/continue),
	while allowing note-related messages to pass.
	Or you may be using a sequencer or drum-machine for MIDI clock information but want to
	exclude any notes it may play.
```

### [SetOverflow ¶](#SetOverflow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin#L124)

```
SetOverflow :: proc "c" (queue: Queue) -> Error ---
```

 

SetOverflow() allows the writer (enqueuer) to signal an overflow
condition to the reader (dequeuer). E.g. when transfering data from
the OS to an application, if the OS indicates a buffer overrun,
SetOverflow() can be used to insure that the reader receives a
.BufferOverflow result from Dequeue(). Returns .BadPtr if queue
is NULL, returns .BufferOverflow if buffer is already in an overflow
state, returns .NoError if successfully set overflow state.

### [Synchronize ¶](#Synchronize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L368)

```
Synchronize :: proc "c" (stream: Stream) -> Error ---
```

 

\*

```
	Synchronize() instructs PortMidi to (re)synchronize to the
	time_proc passed when the stream was opened. Typically, this
	is used when the stream must be opened before the time_proc
	reference is actually advancing. In this case, message timing
	may be erratic, but since timestamps of zero mean 
	"send immediately," initialization messages with zero timestamps
	can be written without a functioning time reference and without
	problems. Before the first MIDI message with a non-zero
	timestamp is written to the stream, the time reference must
	begin to advance (for example, if the time_proc computes time
	based on audio samples, time might begin to advance when an 
	audio stream becomes active). After time_proc return values
	become valid, and BEFORE writing the first non-zero timestamped 
	MIDI message, call Synchronize() so that PortMidi can observe
	the difference between the current time_proc value and its
	MIDI stream time. 
	
	In the more normal case where time_proc 
	values advance continuously, there is no need to call 
	Synchronize. PortMidi will always synchronize at the 
	first output message and periodically thereafter.
```

### [Terminate ¶](#Terminate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L64)

```
Terminate :: proc "c" () -> Error ---
```

 

\*

```
	Terminate() is the library termination function - call this after
	using the library.
```

### [Write ¶](#Write) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L518)

```
Write :: proc "c" (stream: Stream, buffer: [^]Event, length: i32) -> Error ---
```

 

Write() writes midi data from a buffer. This may contain:

```
- short messages
```

or

```
- sysex messages that are converted into a sequence of Event
  structures, e.g. sending data from a file or forwarding them
  from midi input.
```

Use WriteSysEx() to write a sysex message stored as a contiguous
array of bytes.

Sysex data may contain embedded real-time messages.

### [WriteShort ¶](#WriteShort) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L526)

```
WriteShort :: proc "c" (stream: Stream, whence: Timestamp, msg: Message) -> Error ---
```

 

\*

```
	WriteShort() writes a timestamped non-system-exclusive midi message.
	Messages are delivered in order as received, and timestamps must be 
	non-decreasing. (But timestamps are ignored if the stream was opened
	with latency = 0.)
```

### [WriteSysEx ¶](#WriteSysEx) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L531)

```
WriteSysEx :: proc "c" (stream: Stream, whence: Timestamp, msg: cstring) -> Error ---
```

 

\*

```
	WriteSysEx() writes a timestamped system-exclusive midi message.
```

## Procedure Groups

This section is empty.

## `#config` values

### [PORTMIDI\_SHARED ¶](#PORTMIDI_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin#L6)

```
PORTMIDI_SHARED :: #config(PORTMIDI_SHARED, false)
```

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/doc.odin)
* [portmidi.odin](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/portmidi.odin)
* [util.odin](https://github.com/odin-lang/Odin/tree/master/vendor/portmidi/util.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.537666900 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [DeviceID](#DeviceID)
    + [DeviceInfo](#DeviceInfo)
    + [Error](#Error)
    + [Event](#Event)
    + [Message](#Message)
    + [Queue](#Queue)
    + [Stream](#Stream)
    + [TimeProc](#TimeProc)
    + [Timestamp](#Timestamp)
  * [Constants](#pkg-Constants)
    + [DEFAULT\_SYSEX\_BUFFER\_SIZE](#DEFAULT_SYSEX_BUFFER_SIZE)
    + [FILT\_ACTIVE](#FILT_ACTIVE)
    + [FILT\_AFTERTOUCH](#FILT_AFTERTOUCH)
    + [FILT\_CHANNEL\_AFTERTOUCH](#FILT_CHANNEL_AFTERTOUCH)
    + [FILT\_CLOCK](#FILT_CLOCK)
    + [FILT\_CONTROL](#FILT_CONTROL)
    + [FILT\_FD](#FILT_FD)
    + [FILT\_MTC](#FILT_MTC)
    + [FILT\_NOTE](#FILT_NOTE)
    + [FILT\_PITCHBEND](#FILT_PITCHBEND)
    + [FILT\_PLAY](#FILT_PLAY)
    + [FILT\_POLY\_AFTERTOUCH](#FILT_POLY_AFTERTOUCH)
    + [FILT\_PROGRAM](#FILT_PROGRAM)
    + [FILT\_REALTIME](#FILT_REALTIME)
    + [FILT\_RESET](#FILT_RESET)
    + [FILT\_SONG\_POSITION](#FILT_SONG_POSITION)
    + [FILT\_SONG\_SELECT](#FILT_SONG_SELECT)
    + [FILT\_SYSEX](#FILT_SYSEX)
    + [FILT\_SYSTEMCOMMON](#FILT_SYSTEMCOMMON)
    + [FILT\_TICK](#FILT_TICK)
    + [FILT\_TUNE](#FILT_TUNE)
    + [FILT\_UNDEFINED](#FILT_UNDEFINED)
    + [HDRLENGTH](#HDRLENGTH)
    + [HOST\_ERROR\_MSG\_LEN](#HOST_ERROR_MSG_LEN)
    + [NoDevice](#NoDevice)
    + [PORTMIDI\_SHARED](#PORTMIDI_SHARED)
  * [Procedures](#pkg-Procedures)
    + [Abort](#Abort)
    + [Before](#Before)
    + [Channel](#Channel)
    + [Close](#Close)
    + [CountDevices](#CountDevices)
    + [Dequeue](#Dequeue)
    + [Enqueue](#Enqueue)
    + [GetDefaultInputDeviceID](#GetDefaultInputDeviceID)
    + [GetDefaultOutputDeviceID](#GetDefaultOutputDeviceID)
    + [GetDeviceInfo](#GetDeviceInfo)
    + [GetErrorText](#GetErrorText)
    + [GetHostErrorText](#GetHostErrorText)
    + [HasHostError](#HasHostError)
    + [Initialize](#Initialize)
    + [MessageCompose](#MessageCompose)
    + [MessageData1](#MessageData1)
    + [MessageData2](#MessageData2)
    + [MessageDecompose](#MessageDecompose)
    + [MessageMake](#MessageMake)
    + [MessageStatus](#MessageStatus)
    + [OpenInput](#OpenInput)
    + [OpenOutput](#OpenOutput)
    + [Poll](#Poll)
    + [QueueCreate](#QueueCreate)
    + [QueueDestroy](#QueueDestroy)
    + [QueueEmpty](#QueueEmpty)
    + [QueueFull](#QueueFull)
    + [QueuePeek](#QueuePeek)
    + [Read](#Read)
    + [SetChannelMask](#SetChannelMask)
    + [SetFilter](#SetFilter)
    + [SetOverflow](#SetOverflow)
    + [Synchronize](#Synchronize)
    + [Terminate](#Terminate)
    + [Write](#Write)
    + [WriteShort](#WriteShort)
    + [WriteSysEx](#WriteSysEx)
  * [`#config` values](#pkg-`#config` values)
    + [PORTMIDI\_SHARED](#PORTMIDI_SHARED)
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