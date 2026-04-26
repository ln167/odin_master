package sdl2/net - pkg.odin-lang.org 






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



Current Package: *[sdl2\_net](/vendor/sdl2/net)*

  

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
2. [sdl2](/vendor/sdl2)
3. [net](/vendor/sdl2/net)

# package vendor:sdl2/net [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [SDL2 Net](https://wiki.libsdl.org/SDL2_net/FrontPage).

## Index

Types (7)

* [GenericSocket](#GenericSocket)
* [IPaddress](#IPaddress)
* [SocketSet](#SocketSet)
* [TCPsocket](#TCPsocket)
* [UDPpacket](#UDPpacket)
* [UDPsocket](#UDPsocket)
* [bool](#bool)

Constants (9)

* [INADDR\_ANY](#INADDR_ANY)
* [INADDR\_BROADCAST](#INADDR_BROADCAST)
* [INADDR\_LOOPBACK](#INADDR_LOOPBACK)
* [INADDR\_NONE](#INADDR_NONE)
* [MAJOR\_VERSION](#MAJOR_VERSION)
* [MAX\_UDPADDRESSES](#MAX_UDPADDRESSES)
* [MAX\_UDPCHANNELS](#MAX_UDPCHANNELS)
* [MINOR\_VERSION](#MINOR_VERSION)
* [PATCHLEVEL](#PATCHLEVEL)

Variables (0)

This section is empty.

Procedures (46)

* [AddSocket](#AddSocket)
* [AllocPacket](#AllocPacket)
* [AllocPacketSlice](#AllocPacketSlice)
* [AllocPacketV](#AllocPacketV)
* [AllocSocketSet](#AllocSocketSet)
* [CheckSockets](#CheckSockets)
* [DelSocket](#DelSocket)
* [FreePacket](#FreePacket)
* [FreePacketSlice](#FreePacketSlice)
* [FreePacketV](#FreePacketV)
* [FreeSocketSet](#FreeSocketSet)
* [GetError](#GetError)
* [GetLocalAddresses](#GetLocalAddresses)
* [Init](#Init)
* [Linked\_Version](#Linked_Version)
* [Quit](#Quit)
* [Read16](#Read16)
* [Read32](#Read32)
* [ResizePacket](#ResizePacket)
* [ResolveHost](#ResolveHost)
* [ResolveIP](#ResolveIP)
* [SetError](#SetError)
* [SocketReady](#SocketReady)
* [TCP\_Accept](#TCP_Accept)
* [TCP\_AddSocket](#TCP_AddSocket)
* [TCP\_Close](#TCP_Close)
* [TCP\_DelSocket](#TCP_DelSocket)
* [TCP\_GetPeerAddress](#TCP_GetPeerAddress)
* [TCP\_Open](#TCP_Open)
* [TCP\_Recv](#TCP_Recv)
* [TCP\_Send](#TCP_Send)
* [UDP\_AddSocket](#UDP_AddSocket)
* [UDP\_Bind](#UDP_Bind)
* [UDP\_Close](#UDP_Close)
* [UDP\_DelSocket](#UDP_DelSocket)
* [UDP\_GetPeerAddress](#UDP_GetPeerAddress)
* [UDP\_Open](#UDP_Open)
* [UDP\_Recv](#UDP_Recv)
* [UDP\_RecvV](#UDP_RecvV)
* [UDP\_Send](#UDP_Send)
* [UDP\_SendSlice](#UDP_SendSlice)
* [UDP\_SendV](#UDP_SendV)
* [UDP\_SetPacketLoss](#UDP_SetPacketLoss)
* [UDP\_Unbind](#UDP_Unbind)
* [Write16](#Write16)
* [Write32](#Write32)

Procedure Groups (0)

This section is empty.

## Types

### [GenericSocket ¶](#GenericSocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L124)

```
GenericSocket :: ^struct {
	ready: i32,
}
```

 

Any network socket can be safely cast to this socket type




##### Related Procedures With Parameters

* [AddSocket](/vendor/sdl2/net/#AddSocket)
* [DelSocket](/vendor/sdl2/net/#DelSocket)

### [IPaddress ¶](#IPaddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L19)

```
IPaddress :: struct {
	host: u32,
	port: u16,
}
```

##### Related Procedures With Parameters

* [GetLocalAddresses](/vendor/sdl2/net/#GetLocalAddresses)
* [ResolveHost](/vendor/sdl2/net/#ResolveHost)
* [ResolveIP](/vendor/sdl2/net/#ResolveIP)
* [TCP\_Open](/vendor/sdl2/net/#TCP_Open)
* [UDP\_Bind](/vendor/sdl2/net/#UDP_Bind)



##### Related Procedures With Returns

* [TCP\_GetPeerAddress](/vendor/sdl2/net/#TCP_GetPeerAddress)
* [UDP\_GetPeerAddress](/vendor/sdl2/net/#UDP_GetPeerAddress)

### [SocketSet ¶](#SocketSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L121)

```
SocketSet :: distinct rawptr
```

##### Related Procedures With Parameters

* [AddSocket](/vendor/sdl2/net/#AddSocket)
* [CheckSockets](/vendor/sdl2/net/#CheckSockets)
* [DelSocket](/vendor/sdl2/net/#DelSocket)
* [FreeSocketSet](/vendor/sdl2/net/#FreeSocketSet)
* [TCP\_AddSocket](/vendor/sdl2/net/#TCP_AddSocket)
* [TCP\_DelSocket](/vendor/sdl2/net/#TCP_DelSocket)
* [UDP\_AddSocket](/vendor/sdl2/net/#UDP_AddSocket)
* [UDP\_DelSocket](/vendor/sdl2/net/#UDP_DelSocket)



##### Related Procedures With Returns

* [AllocSocketSet](/vendor/sdl2/net/#AllocSocketSet)

### [TCPsocket ¶](#TCPsocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L47)

```
TCPsocket :: distinct rawptr
```

##### Related Procedures With Parameters

* [TCP\_Accept](/vendor/sdl2/net/#TCP_Accept)
* [TCP\_AddSocket](/vendor/sdl2/net/#TCP_AddSocket)
* [TCP\_Close](/vendor/sdl2/net/#TCP_Close)
* [TCP\_DelSocket](/vendor/sdl2/net/#TCP_DelSocket)
* [TCP\_GetPeerAddress](/vendor/sdl2/net/#TCP_GetPeerAddress)
* [TCP\_Recv](/vendor/sdl2/net/#TCP_Recv)
* [TCP\_Send](/vendor/sdl2/net/#TCP_Send)



##### Related Procedures With Returns

* [TCP\_Open](/vendor/sdl2/net/#TCP_Open)

### [UDPpacket ¶](#UDPpacket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L66)

```
UDPpacket :: struct {
	channel: i32,
	// The src/dst channel of the packet 
	data:    [^]u8,
	// The packet data 
	len:     i32,
	// The length of the packet data 
	maxlen:  i32,
	// The size of the data buffer 
	status:  i32,
	// packet status after sending 
	address: IPaddress,
}
```

##### Related Procedures With Parameters

* [FreePacket](/vendor/sdl2/net/#FreePacket)
* [ResizePacket](/vendor/sdl2/net/#ResizePacket)
* [UDP\_Recv](/vendor/sdl2/net/#UDP_Recv)
* [UDP\_Send](/vendor/sdl2/net/#UDP_Send)



##### Related Procedures With Returns

* [AllocPacket](/vendor/sdl2/net/#AllocPacket)

### [UDPsocket ¶](#UDPsocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L65)

```
UDPsocket :: distinct rawptr
```

##### Related Procedures With Parameters

* [UDP\_AddSocket](/vendor/sdl2/net/#UDP_AddSocket)
* [UDP\_Bind](/vendor/sdl2/net/#UDP_Bind)
* [UDP\_Close](/vendor/sdl2/net/#UDP_Close)
* [UDP\_DelSocket](/vendor/sdl2/net/#UDP_DelSocket)
* [UDP\_GetPeerAddress](/vendor/sdl2/net/#UDP_GetPeerAddress)
* [UDP\_Recv](/vendor/sdl2/net/#UDP_Recv)
* [UDP\_RecvV](/vendor/sdl2/net/#UDP_RecvV)
* [UDP\_Send](/vendor/sdl2/net/#UDP_Send)
* [UDP\_SendSlice](/vendor/sdl2/net/#UDP_SendSlice)
* [UDP\_SendV](/vendor/sdl2/net/#UDP_SendV)
* [UDP\_SetPacketLoss](/vendor/sdl2/net/#UDP_SetPacketLoss)
* [UDP\_Unbind](/vendor/sdl2/net/#UDP_Unbind)



##### Related Procedures With Returns

* [UDP\_Open](/vendor/sdl2/net/#UDP_Open)

### [bool ¶](#bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L13)

```
bool :: sdl2.bool
```

##### Related Procedures With Returns

* [SocketReady](/vendor/sdl2/net/#SocketReady)

## Constants

### [INADDR\_ANY ¶](#INADDR_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L24)

```
INADDR_ANY :: 0x00000000
```

### [INADDR\_BROADCAST ¶](#INADDR_BROADCAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L27)

```
INADDR_BROADCAST :: 0xFFFFFFFF
```

### [INADDR\_LOOPBACK ¶](#INADDR_LOOPBACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L26)

```
INADDR_LOOPBACK :: 0x7f000001
```

### [INADDR\_NONE ¶](#INADDR_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L25)

```
INADDR_NONE :: 0xFFFFFFFF
```

### [MAJOR\_VERSION ¶](#MAJOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L15)

```
MAJOR_VERSION :: 2
```

### [MAX\_UDPADDRESSES ¶](#MAX_UDPADDRESSES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L63)

```
MAX_UDPADDRESSES :: 4
```

 

The maximum addresses bound to a single UDP socket channel

### [MAX\_UDPCHANNELS ¶](#MAX_UDPCHANNELS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L61)

```
MAX_UDPCHANNELS :: 32
```

 

The maximum channels on a a UDP socket

### [MINOR\_VERSION ¶](#MINOR_VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L16)

```
MINOR_VERSION :: 0
```

### [PATCHLEVEL ¶](#PATCHLEVEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L17)

```
PATCHLEVEL :: 1
```

## Variables

This section is empty.

## Procedures

### [AddSocket ¶](#AddSocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L148)

```
AddSocket :: proc "c" (set: SocketSet, sock: ^struct {ready: i32,}) -> i32 ---
```

### [AllocPacket ¶](#AllocPacket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L82)

```
AllocPacket :: proc "c" (size: i32) -> ^UDPpacket ---
```

### [AllocPacketSlice ¶](#AllocPacketSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L102)

```
AllocPacketSlice :: proc "c" (howmany: i32, size: i32) -> []^UDPpacket {…}
```

### [AllocPacketV ¶](#AllocPacketV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L86)

```
AllocPacketV :: proc "c" (howmany: i32, size: i32) -> [^]^UDPpacket ---
```

### [AllocSocketSet ¶](#AllocSocketSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L147)

```
AllocSocketSet :: proc "c" (maxsockets: i32) -> SocketSet ---
```

### [CheckSockets ¶](#CheckSockets) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L150)

```
CheckSockets :: proc "c" (set: SocketSet, timeout: u32) -> i32 ---
```

### [DelSocket ¶](#DelSocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L149)

```
DelSocket :: proc "c" (set: SocketSet, sock: ^struct {ready: i32,}) -> i32 ---
```

### [FreePacket ¶](#FreePacket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L84)

```
FreePacket :: proc "c" (packet: ^UDPpacket) ---
```

### [FreePacketSlice ¶](#FreePacketSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L108)

```
FreePacketSlice :: proc "c" (packets: []^UDPpacket) {…}
```

### [FreePacketV ¶](#FreePacketV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L87)

```
FreePacketV :: proc "c" (packetV: [^]^UDPpacket) ---
```

### [FreeSocketSet ¶](#FreeSocketSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L151)

```
FreeSocketSet :: proc "c" (set: SocketSet) ---
```

### [GetError ¶](#GetError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L162)

```
GetError :: proc "c" () -> cstring ---
```

### [GetLocalAddresses ¶](#GetLocalAddresses) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L39)

```
GetLocalAddresses :: proc "c" (addresses: ^IPaddress, maxcount: i32) -> i32 ---
```

### [Init ¶](#Init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L34)

```
Init :: proc "c" () -> i32 ---
```

### [Linked\_Version ¶](#Linked_Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L32)

```
Linked_Version :: proc "c" () -> ^sdl2.version ---
```

### [Quit ¶](#Quit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L35)

```
Quit :: proc "c" () ---
```

### [Read16 ¶](#Read16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L185)

```
Read16 :: proc "c" (areap: rawptr) -> u16 {…}
```

 

Read a 16/32-bit value from network packet buffer

### [Read32 ¶](#Read32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L190)

```
Read32 :: proc "c" (areap: rawptr) -> u32 {…}
```

### [ResizePacket ¶](#ResizePacket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L83)

```
ResizePacket :: proc "c" (packet: ^UDPpacket, newsize: i32) -> i32 ---
```

### [ResolveHost ¶](#ResolveHost) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L37)

```
ResolveHost :: proc "c" (address: ^IPaddress, host: cstring, port: u16) -> i32 ---
```

### [ResolveIP ¶](#ResolveIP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L38)

```
ResolveIP :: proc "c" (ip: ^IPaddress) -> cstring ---
```

### [SetError ¶](#SetError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L161)

```
SetError :: proc "c" (fmt: cstring, .. args: ..any) ---
```

### [SocketReady ¶](#SocketReady) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L139)

```
SocketReady :: proc "c" (sock: rawptr) -> sdl2.bool {…}
```

### [TCP\_Accept ¶](#TCP_Accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L52)

```
TCP_Accept :: proc "c" (server: TCPsocket) -> TCPsocket ---
```

### [TCP\_AddSocket ¶](#TCP_AddSocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L126)

```
TCP_AddSocket :: proc "c" (set: SocketSet, sock: TCPsocket) -> i32 {…}
```

### [TCP\_Close ¶](#TCP_Close) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L56)

```
TCP_Close :: proc "c" (sock: TCPsocket) ---
```

### [TCP\_DelSocket ¶](#TCP_DelSocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L132)

```
TCP_DelSocket :: proc "c" (set: SocketSet, sock: TCPsocket) -> i32 {…}
```

### [TCP\_GetPeerAddress ¶](#TCP_GetPeerAddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L53)

```
TCP_GetPeerAddress :: proc "c" (sock: TCPsocket) -> ^IPaddress ---
```

### [TCP\_Open ¶](#TCP_Open) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L51)

```
TCP_Open :: proc "c" (ip: ^IPaddress) -> TCPsocket ---
```

### [TCP\_Recv ¶](#TCP_Recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L55)

```
TCP_Recv :: proc "c" (sock: TCPsocket, data: rawptr, maxlen: i32) -> i32 ---
```

### [TCP\_Send ¶](#TCP_Send) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L54)

```
TCP_Send :: proc "c" (sock: TCPsocket, data: rawptr, len: i32) -> i32 ---
```

### [UDP\_AddSocket ¶](#UDP_AddSocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L129)

```
UDP_AddSocket :: proc "c" (set: SocketSet, sock: UDPsocket) -> i32 {…}
```

### [UDP\_Bind ¶](#UDP_Bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L92)

```
UDP_Bind :: proc "c" (sock: UDPsocket, channel: i32, address: ^IPaddress) -> i32 ---
```

### [UDP\_Close ¶](#UDP_Close) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L99)

```
UDP_Close :: proc "c" (sock: UDPsocket) ---
```

### [UDP\_DelSocket ¶](#UDP_DelSocket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L135)

```
UDP_DelSocket :: proc "c" (set: SocketSet, sock: UDPsocket) -> i32 {…}
```

### [UDP\_GetPeerAddress ¶](#UDP_GetPeerAddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L94)

```
UDP_GetPeerAddress :: proc "c" (sock: UDPsocket, channel: i32) -> IPaddress ---
```

### [UDP\_Open ¶](#UDP_Open) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L90)

```
UDP_Open :: proc "c" (port: u16) -> UDPsocket ---
```

### [UDP\_Recv ¶](#UDP_Recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L98)

```
UDP_Recv :: proc "c" (sock: UDPsocket, packet: ^UDPpacket) -> i32 ---
```

### [UDP\_RecvV ¶](#UDP_RecvV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L97)

```
UDP_RecvV :: proc "c" (sock: UDPsocket, packets: [^]^UDPpacket) -> i32 ---
```

### [UDP\_Send ¶](#UDP_Send) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L96)

```
UDP_Send :: proc "c" (sock: UDPsocket, channel: i32, packet: ^UDPpacket) -> i32 ---
```

### [UDP\_SendSlice ¶](#UDP_SendSlice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L112)

```
UDP_SendSlice :: proc "c" (sock: UDPsocket, packets: []^UDPpacket) -> i32 {…}
```

### [UDP\_SendV ¶](#UDP_SendV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L95)

```
UDP_SendV :: proc "c" (sock: UDPsocket, packets: [^]^UDPpacket, npackets: i32) -> i32 ---
```

### [UDP\_SetPacketLoss ¶](#UDP_SetPacketLoss) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L91)

```
UDP_SetPacketLoss :: proc "c" (sock: UDPsocket, percent: i32) ---
```

### [UDP\_Unbind ¶](#UDP_Unbind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L93)

```
UDP_Unbind :: proc "c" (sock: UDPsocket, channel: i32) ---
```

### [Write16 ¶](#Write16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L171)

```
Write16 :: proc "c" (value: u16, areap: rawptr) {…}
```

 

Write a 16/32-bit value to network packet buffer

### [Write32 ¶](#Write32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin#L176)

```
Write32 :: proc "c" (value: u32, areap: rawptr) {…}
```

## Procedure Groups

This section is empty.

## Source Files

* [sdl\_net.odin](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2/net/sdl_net.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.853930800 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [GenericSocket](#GenericSocket)
    + [IPaddress](#IPaddress)
    + [SocketSet](#SocketSet)
    + [TCPsocket](#TCPsocket)
    + [UDPpacket](#UDPpacket)
    + [UDPsocket](#UDPsocket)
    + [bool](#bool)
  * [Constants](#pkg-Constants)
    + [INADDR\_ANY](#INADDR_ANY)
    + [INADDR\_BROADCAST](#INADDR_BROADCAST)
    + [INADDR\_LOOPBACK](#INADDR_LOOPBACK)
    + [INADDR\_NONE](#INADDR_NONE)
    + [MAJOR\_VERSION](#MAJOR_VERSION)
    + [MAX\_UDPADDRESSES](#MAX_UDPADDRESSES)
    + [MAX\_UDPCHANNELS](#MAX_UDPCHANNELS)
    + [MINOR\_VERSION](#MINOR_VERSION)
    + [PATCHLEVEL](#PATCHLEVEL)
  * [Procedures](#pkg-Procedures)
    + [AddSocket](#AddSocket)
    + [AllocPacket](#AllocPacket)
    + [AllocPacketSlice](#AllocPacketSlice)
    + [AllocPacketV](#AllocPacketV)
    + [AllocSocketSet](#AllocSocketSet)
    + [CheckSockets](#CheckSockets)
    + [DelSocket](#DelSocket)
    + [FreePacket](#FreePacket)
    + [FreePacketSlice](#FreePacketSlice)
    + [FreePacketV](#FreePacketV)
    + [FreeSocketSet](#FreeSocketSet)
    + [GetError](#GetError)
    + [GetLocalAddresses](#GetLocalAddresses)
    + [Init](#Init)
    + [Linked\_Version](#Linked_Version)
    + [Quit](#Quit)
    + [Read16](#Read16)
    + [Read32](#Read32)
    + [ResizePacket](#ResizePacket)
    + [ResolveHost](#ResolveHost)
    + [ResolveIP](#ResolveIP)
    + [SetError](#SetError)
    + [SocketReady](#SocketReady)
    + [TCP\_Accept](#TCP_Accept)
    + [TCP\_AddSocket](#TCP_AddSocket)
    + [TCP\_Close](#TCP_Close)
    + [TCP\_DelSocket](#TCP_DelSocket)
    + [TCP\_GetPeerAddress](#TCP_GetPeerAddress)
    + [TCP\_Open](#TCP_Open)
    + [TCP\_Recv](#TCP_Recv)
    + [TCP\_Send](#TCP_Send)
    + [UDP\_AddSocket](#UDP_AddSocket)
    + [UDP\_Bind](#UDP_Bind)
    + [UDP\_Close](#UDP_Close)
    + [UDP\_DelSocket](#UDP_DelSocket)
    + [UDP\_GetPeerAddress](#UDP_GetPeerAddress)
    + [UDP\_Open](#UDP_Open)
    + [UDP\_Recv](#UDP_Recv)
    + [UDP\_RecvV](#UDP_RecvV)
    + [UDP\_Send](#UDP_Send)
    + [UDP\_SendSlice](#UDP_SendSlice)
    + [UDP\_SendV](#UDP_SendV)
    + [UDP\_SetPacketLoss](#UDP_SetPacketLoss)
    + [UDP\_Unbind](#UDP_Unbind)
    + [Write16](#Write16)
    + [Write32](#Write32)
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