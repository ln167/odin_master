package ENet - pkg.odin-lang.org 






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



Current Package: *[ENet](/vendor/ENet)*

  

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
2. [ENet](/vendor/ENet)

# package vendor:ENet [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [ENet](https://github.com/lsalzman/enet).

## Index

Types (45)

* [Acknowledgment](#Acknowledgment)
* [Address](#Address)
* [Buffer](#Buffer)
* [Callbacks](#Callbacks)
* [Channel](#Channel)
* [ChecksumCallback](#ChecksumCallback)
* [Compressor](#Compressor)
* [Event](#Event)
* [EventType](#EventType)
* [Host](#Host)
* [IncomingCommand](#IncomingCommand)
* [InterceptCallback](#InterceptCallback)
* [List](#List)
* [ListNode](#ListNode)
* [OutgoingCommand](#OutgoingCommand)
* [Packet](#Packet)
* [PacketFlag](#PacketFlag)
* [PacketFlags](#PacketFlags)
* [PacketFreeCallback](#PacketFreeCallback)
* [Peer](#Peer)
* [PeerFlag](#PeerFlag)
* [PeerState](#PeerState)
* [Protocol](#Protocol)
* [ProtocolAcknowledge](#ProtocolAcknowledge)
* [ProtocolBandwidthLimit](#ProtocolBandwidthLimit)
* [ProtocolCommand](#ProtocolCommand)
* [ProtocolCommandHeader](#ProtocolCommandHeader)
* [ProtocolConnect](#ProtocolConnect)
* [ProtocolDisconnect](#ProtocolDisconnect)
* [ProtocolFlag](#ProtocolFlag)
* [ProtocolHeader](#ProtocolHeader)
* [ProtocolPing](#ProtocolPing)
* [ProtocolSendFragment](#ProtocolSendFragment)
* [ProtocolSendReliable](#ProtocolSendReliable)
* [ProtocolSendUnreliable](#ProtocolSendUnreliable)
* [ProtocolSendUnsequenced](#ProtocolSendUnsequenced)
* [ProtocolThrottleConfigure](#ProtocolThrottleConfigure)
* [ProtocolVerifyConnect](#ProtocolVerifyConnect)
* [Socket](#Socket)
* [SocketOption](#SocketOption)
* [SocketSet](#SocketSet)
* [SocketShutdown](#SocketShutdown)
* [SocketType](#SocketType)
* [SocketWait](#SocketWait)
* [Version](#Version)

Constants (45)

* [BUFFER\_MAXIMUM](#BUFFER_MAXIMUM)
* [HOST\_ANY](#HOST_ANY)
* [HOST\_BANDWIDTH\_THROTTLE\_INTERVAL](#HOST_BANDWIDTH_THROTTLE_INTERVAL)
* [HOST\_BROADCAST](#HOST_BROADCAST)
* [HOST\_DEFAULT\_MAXIMUM\_PACKET\_SIZE](#HOST_DEFAULT_MAXIMUM_PACKET_SIZE)
* [HOST\_DEFAULT\_MAXIMUM\_WAITING\_DATA](#HOST_DEFAULT_MAXIMUM_WAITING_DATA)
* [HOST\_DEFAULT\_MTU](#HOST_DEFAULT_MTU)
* [HOST\_RECEIVE\_BUFFER\_SIZE](#HOST_RECEIVE_BUFFER_SIZE)
* [HOST\_SEND\_BUFFER\_SIZE](#HOST_SEND_BUFFER_SIZE)
* [PEER\_DEFAULT\_PACKET\_THROTTLE](#PEER_DEFAULT_PACKET_THROTTLE)
* [PEER\_DEFAULT\_ROUND\_TRIP\_TIME](#PEER_DEFAULT_ROUND_TRIP_TIME)
* [PEER\_FREE\_RELIABLE\_WINDOWS](#PEER_FREE_RELIABLE_WINDOWS)
* [PEER\_FREE\_UNSEQUENCED\_WINDOWS](#PEER_FREE_UNSEQUENCED_WINDOWS)
* [PEER\_PACKET\_LOSS\_INTERVAL](#PEER_PACKET_LOSS_INTERVAL)
* [PEER\_PACKET\_LOSS\_SCALE](#PEER_PACKET_LOSS_SCALE)
* [PEER\_PACKET\_THROTTLE\_ACCELERATION](#PEER_PACKET_THROTTLE_ACCELERATION)
* [PEER\_PACKET\_THROTTLE\_COUNTER](#PEER_PACKET_THROTTLE_COUNTER)
* [PEER\_PACKET\_THROTTLE\_DECELERATION](#PEER_PACKET_THROTTLE_DECELERATION)
* [PEER\_PACKET\_THROTTLE\_INTERVAL](#PEER_PACKET_THROTTLE_INTERVAL)
* [PEER\_PACKET\_THROTTLE\_SCALE](#PEER_PACKET_THROTTLE_SCALE)
* [PEER\_PING\_INTERVAL](#PEER_PING_INTERVAL)
* [PEER\_RELIABLE\_WINDOWS](#PEER_RELIABLE_WINDOWS)
* [PEER\_RELIABLE\_WINDOW\_SIZE](#PEER_RELIABLE_WINDOW_SIZE)
* [PEER\_TIMEOUT\_LIMIT](#PEER_TIMEOUT_LIMIT)
* [PEER\_TIMEOUT\_MAXIMUM](#PEER_TIMEOUT_MAXIMUM)
* [PEER\_TIMEOUT\_MINIMUM](#PEER_TIMEOUT_MINIMUM)
* [PEER\_UNSEQUENCED\_WINDOWS](#PEER_UNSEQUENCED_WINDOWS)
* [PEER\_UNSEQUENCED\_WINDOW\_SIZE](#PEER_UNSEQUENCED_WINDOW_SIZE)
* [PEER\_WINDOW\_SIZE\_SCALE](#PEER_WINDOW_SIZE_SCALE)
* [PORT\_ANY](#PORT_ANY)
* [PROTOCOL\_MAXIMUM\_CHANNEL\_COUNT](#PROTOCOL_MAXIMUM_CHANNEL_COUNT)
* [PROTOCOL\_MAXIMUM\_FRAGMENT\_COUNT](#PROTOCOL_MAXIMUM_FRAGMENT_COUNT)
* [PROTOCOL\_MAXIMUM\_MTU](#PROTOCOL_MAXIMUM_MTU)
* [PROTOCOL\_MAXIMUM\_PACKET\_COMMANDS](#PROTOCOL_MAXIMUM_PACKET_COMMANDS)
* [PROTOCOL\_MAXIMUM\_PEER\_ID](#PROTOCOL_MAXIMUM_PEER_ID)
* [PROTOCOL\_MAXIMUM\_WINDOW\_SIZE](#PROTOCOL_MAXIMUM_WINDOW_SIZE)
* [PROTOCOL\_MINIMUM\_CHANNEL\_COUNT](#PROTOCOL_MINIMUM_CHANNEL_COUNT)
* [PROTOCOL\_MINIMUM\_MTU](#PROTOCOL_MINIMUM_MTU)
* [PROTOCOL\_MINIMUM\_WINDOW\_SIZE](#PROTOCOL_MINIMUM_WINDOW_SIZE)
* [SOCKET\_NULL](#SOCKET_NULL)
* [TIME\_OVERFLOW](#TIME_OVERFLOW)
* [VERSION](#VERSION)
* [VERSION\_MAJOR](#VERSION_MAJOR)
* [VERSION\_MINOR](#VERSION_MINOR)
* [VERSION\_PATCH](#VERSION_PATCH)

Variables (0)

This section is empty.

Procedures (70)

* [HOST\_TO\_NET\_16](#HOST_TO_NET_16)
* [HOST\_TO\_NET\_32](#HOST_TO_NET_32)
* [NET\_TO\_HOST\_16](#NET_TO_HOST_16)
* [NET\_TO\_HOST\_32](#NET_TO_HOST_32)
* [SOCKETSET\_ADD](#SOCKETSET_ADD)
* [SOCKETSET\_EMPTY](#SOCKETSET_EMPTY)
* [SOCKETSET\_REMOVE](#SOCKETSET_REMOVE)
* [SOCKSET\_CHECK](#SOCKSET_CHECK)
* [TIME\_DIFFERENCE](#TIME_DIFFERENCE)
* [TIME\_GREATER](#TIME_GREATER)
* [TIME\_GREATER\_EQUAL](#TIME_GREATER_EQUAL)
* [TIME\_LESS](#TIME_LESS)
* [TIME\_LESS\_EQUAL](#TIME_LESS_EQUAL)
* [VERSION\_CREATE](#VERSION_CREATE)
* [VERSION\_GET\_MAJOR](#VERSION_GET_MAJOR)
* [VERSION\_GET\_MINOR](#VERSION_GET_MINOR)
* [VERSION\_GET\_PATCH](#VERSION_GET_PATCH)
* [address\_get\_host](#address_get_host)
* [address\_get\_host\_ip](#address_get_host_ip)
* [address\_set\_host](#address_set_host)
* [address\_set\_host\_ip](#address_set_host_ip)
* [crc32](#crc32)
* [deinitialize](#deinitialize)
* [host\_bandwidth\_limit](#host_bandwidth_limit)
* [host\_broadcast](#host_broadcast)
* [host\_channel\_limit](#host_channel_limit)
* [host\_check\_events](#host_check_events)
* [host\_compress](#host_compress)
* [host\_compress\_with\_range\_coder](#host_compress_with_range_coder)
* [host\_connect](#host_connect)
* [host\_create](#host_create)
* [host\_destroy](#host_destroy)
* [host\_flush](#host_flush)
* [host\_service](#host_service)
* [initialize](#initialize)
* [initialize\_with\_callbacks](#initialize_with_callbacks)
* [linked\_version](#linked_version)
* [packet\_create](#packet_create)
* [packet\_destroy](#packet_destroy)
* [packet\_resize](#packet_resize)
* [peer\_disconnect](#peer_disconnect)
* [peer\_disconnect\_later](#peer_disconnect_later)
* [peer\_disconnect\_now](#peer_disconnect_now)
* [peer\_ping](#peer_ping)
* [peer\_ping\_interval](#peer_ping_interval)
* [peer\_receive](#peer_receive)
* [peer\_reset](#peer_reset)
* [peer\_send](#peer_send)
* [peer\_throttle\_configure](#peer_throttle_configure)
* [peer\_timeout](#peer_timeout)
* [range\_coder\_compress](#range_coder_compress)
* [range\_coder\_create](#range_coder_create)
* [range\_coder\_decompress](#range_coder_decompress)
* [range\_coder\_destroy](#range_coder_destroy)
* [socket\_accept](#socket_accept)
* [socket\_bind](#socket_bind)
* [socket\_connect](#socket_connect)
* [socket\_create](#socket_create)
* [socket\_destroy](#socket_destroy)
* [socket\_get\_address](#socket_get_address)
* [socket\_get\_option](#socket_get_option)
* [socket\_listen](#socket_listen)
* [socket\_receive](#socket_receive)
* [socket\_send](#socket_send)
* [socket\_set\_option](#socket_set_option)
* [socket\_shutdown](#socket_shutdown)
* [socket\_wait](#socket_wait)
* [socketset\_select](#socketset_select)
* [time\_get](#time_get)
* [time\_set](#time_set)

Procedure Groups (0)

This section is empty.

## Types

### [Acknowledgment ¶](#Acknowledgment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L125)

```
Acknowledgment :: struct {
	acknowledgementList: ListNode,
	sentTime:            u32,
	command:             Protocol,
}
```

### [Address ¶](#Address) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L100)

```
Address :: struct {
	host: u32,
	port: u16,
}
```

##### Related Procedures With Parameters

* [address\_get\_host](/vendor/ENet/#address_get_host)
* [address\_get\_host\_ip](/vendor/ENet/#address_get_host_ip)
* [address\_set\_host](/vendor/ENet/#address_set_host)
* [address\_set\_host\_ip](/vendor/ENet/#address_set_host_ip)
* [host\_connect](/vendor/ENet/#host_connect)
* [host\_create](/vendor/ENet/#host_create)
* [socket\_accept](/vendor/ENet/#socket_accept)
* [socket\_bind](/vendor/ENet/#socket_bind)
* [socket\_connect](/vendor/ENet/#socket_connect)
* [socket\_get\_address](/vendor/ENet/#socket_get_address)
* [socket\_receive](/vendor/ENet/#socket_receive)
* [socket\_send](/vendor/ENet/#socket_send)

### [Buffer ¶](#Buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L62)

```
Buffer :: struct {
	data:       rawptr,
	dataLength: uint,
}
```

##### Related Procedures With Parameters

* [crc32](/vendor/ENet/#crc32)
* [range\_coder\_compress](/vendor/ENet/#range_coder_compress)
* [socket\_receive](/vendor/ENet/#socket_receive)
* [socket\_send](/vendor/ENet/#socket_send)

### [Callbacks ¶](#Callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/callbacks.odin#L3)

```
Callbacks :: struct {
	malloc:    proc "c" (size: uint) -> rawptr,
	free:      proc "c" (memory: rawptr),
	no_memory: proc "c" (),
}
```

##### Related Procedures With Parameters

* [initialize\_with\_callbacks](/vendor/ENet/#initialize_with_callbacks)

### [Channel ¶](#Channel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L199)

```
Channel :: struct {
	outgoingReliableSequenceNumber:   u16,
	outgoingUnreliableSequenceNumber: u16,
	usedReliableWindows:              u16,
	reliableWindows:                  [16]u16,
	incomingReliableSequenceNumber:   u16,
	incomingUnreliableSequenceNumber: u16,
	incomingReliableCommands:         List,
	incomingUnreliableCommands:       List,
}
```

### [ChecksumCallback ¶](#ChecksumCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L284)

```
ChecksumCallback :: proc "c" (buffers: [^]Buffer, bufferCount: uint) -> u32
```

### [Compressor ¶](#Compressor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L277)

```
Compressor :: struct {
	context_:   rawptr,
	compress:   proc "c" (context_: rawptr, inBuffers: [^]Buffer, inBufferCount: uint, inLimit: uint, outData: [^]u8, outLimit: uint) -> uint,
	decompress: proc "c" (context_: rawptr, inData: [^]u8, inLimit: uint, outData: [^]u8, outLimit: uint) -> uint,
	destroy:    proc "c" (context_: rawptr),
}
```

##### Related Procedures With Parameters

* [host\_compress](/vendor/ENet/#host_compress)

### [Event ¶](#Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L333)

```
Event :: struct {
	type:      EventType,
	peer:      ^Peer,
	channelID: u8,
	data:      u32,
	packet:    ^Packet,
}
```

##### Related Procedures With Parameters

* [host\_check\_events](/vendor/ENet/#host_check_events)
* [host\_service](/vendor/ENet/#host_service)

### [EventType ¶](#EventType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L326)

```
EventType :: enum i32 {
	NONE       = 0, 
	CONNECT    = 1, 
	DISCONNECT = 2, 
	RECEIVE    = 3, 
}
```

### [Host ¶](#Host) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L287)

```
Host :: struct {
	socket:                     Socket,
	address:                    Address,
	incomingBandwidth:          u32,
	outgoingBandwidth:          u32,
	bandwidthThrottleEpoch:     u32,
	mtu:                        u32,
	randomSeed:                 u32,
	recalculateBandwidthLimits: i32,
	peers:                      [^]Peer `fmt:"v,peerCount"`,
	peerCount:                  uint,
	channelLimit:               uint,
	serviceTime:                u32,
	dispatchQueue:              List,
	continueSending:            i32,
	packetSize:                 uint,
	headerFlags:                u16,
	commands:                   [32]Protocol,
	commandCount:               uint,
	buffers:                    [65]Buffer,
	bufferCount:                uint,
	checksum:                   ChecksumCallback,
	compressor:                 Compressor,
	packetData:                 [2][4096]u8,
	receivedAddress:            Address,
	receivedData:               [^]u8 `fmt:"v,receivedDataLength"`,
	receivedDataLength:         uint,
	totalSentData:              u32,
	totalSentPackets:           u32,
	totalReceivedData:          u32,
	totalReceivedPackets:       u32,
	intercept:                  InterceptCallback,
	connectedPeers:             uint,
	bandwidthLimitedPeers:      uint,
	duplicatePeers:             uint,
	maximumPacketSize:          uint,
	maximumWaitingData:         uint,
}
```

##### Related Procedures With Parameters

* [host\_bandwidth\_limit](/vendor/ENet/#host_bandwidth_limit)
* [host\_broadcast](/vendor/ENet/#host_broadcast)
* [host\_channel\_limit](/vendor/ENet/#host_channel_limit)
* [host\_check\_events](/vendor/ENet/#host_check_events)
* [host\_compress](/vendor/ENet/#host_compress)
* [host\_compress\_with\_range\_coder](/vendor/ENet/#host_compress_with_range_coder)
* [host\_connect](/vendor/ENet/#host_connect)
* [host\_destroy](/vendor/ENet/#host_destroy)
* [host\_flush](/vendor/ENet/#host_flush)
* [host\_service](/vendor/ENet/#host_service)



##### Related Procedures With Returns

* [host\_create](/vendor/ENet/#host_create)

### [IncomingCommand ¶](#IncomingCommand) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L145)

```
IncomingCommand :: struct {
	incomingCommandList:      ListNode,
	reliableSequenceNumber:   u16,
	unreliableSequenceNumber: u16,
	command:                  Protocol,
	fragmentCount:            u32,
	fragmentsRemaining:       u32,
	fragments:                [^]u32 `fmt:"v,fragmentCount"`,
	packet:                   ^Packet,
}
```

### [InterceptCallback ¶](#InterceptCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L285)

```
InterceptCallback :: proc "c" (host: ^Host, event: ^Event) -> i32
```

### [List ¶](#List) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/list.odin#L8)

```
List :: struct {
	sentinel: ListNode,
}
```

### [ListNode ¶](#ListNode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/list.odin#L3)

```
ListNode :: struct {
	next:     ^ListNode,
	previous: ^ListNode,
}
```

### [OutgoingCommand ¶](#OutgoingCommand) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L131)

```
OutgoingCommand :: struct {
	outgoingCommandList:      ListNode,
	reliableSequenceNumber:   u16,
	unreliableSequenceNumber: u16,
	sentTime:                 u32,
	roundTripTimeout:         u32,
	roundTripTimeoutLimit:    u32,
	fragmentOffset:           u32,
	fragmentLength:           u16,
	sendAttempts:             u16,
	command:                  Protocol,
	packet:                   ^Packet,
}
```

### [Packet ¶](#Packet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L116)

```
Packet :: struct {
	referenceCount: uint,
	flags:          u32,
	data:           [^]u8 `fmt:"v,dataLength"`,
	dataLength:     uint,
	freeCallback:   PacketFreeCallback,
	userData:       rawptr,
}
```

##### Related Procedures With Parameters

* [host\_broadcast](/vendor/ENet/#host_broadcast)
* [packet\_destroy](/vendor/ENet/#packet_destroy)
* [packet\_resize](/vendor/ENet/#packet_resize)
* [peer\_send](/vendor/ENet/#peer_send)



##### Related Procedures With Returns

* [packet\_create](/vendor/ENet/#packet_create)
* [peer\_receive](/vendor/ENet/#peer_receive)

### [PacketFlag ¶](#PacketFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L106)

```
PacketFlag :: enum i32 {
	RELIABLE            = 0, 
	UNSEQUENCED         = 1, 
	NO_ALLOCATE         = 2, 
	UNRELIABLE_FRAGMENT = 3, 
	FLAG_SENT           = 8, 
}
```

### [PacketFlags ¶](#PacketFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L105)

```
PacketFlags :: bit_set[PacketFlag; i32]
```

##### Related Procedures With Parameters

* [packet\_create](/vendor/ENet/#packet_create)

### [PacketFreeCallback ¶](#PacketFreeCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L114)

```
PacketFreeCallback :: proc "c" (packet: ^Packet)
```

### [Peer ¶](#Peer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L214)

```
Peer :: struct {
	dispatchList:                   ListNode,
	host:                           ^Host,
	outgoingPeerID:                 u16,
	incomingPeerID:                 u16,
	connectID:                      u32,
	outgoingSessionID:              u8,
	incomingSessionID:              u8,
	address:                        Address,
	data:                           rawptr,
	state:                          PeerState,
	channels:                       [^]Channel `fmt:"v,channelCount"`,
	channelCount:                   uint,
	incomingBandwidth:              u32,
	outgoingBandwidth:              u32,
	incomingBandwidthThrottleEpoch: u32,
	outgoingBandwidthThrottleEpoch: u32,
	incomingDataTotal:              u32,
	outgoingDataTotal:              u32,
	lastSendTime:                   u32,
	lastReceiveTime:                u32,
	nextTimeout:                    u32,
	earliestTimeout:                u32,
	packetLossEpoch:                u32,
	packetsSent:                    u32,
	packetsLost:                    u32,
	packetLoss:                     u32,
	packetLossVariance:             u32,
	packetThrottle:                 u32,
	packetThrottleLimit:            u32,
	packetThrottleCounter:          u32,
	packetThrottleEpoch:            u32,
	packetThrottleAcceleration:     u32,
	packetThrottleDeceleration:     u32,
	packetThrottleInterval:         u32,
	pingInterval:                   u32,
	timeoutLimit:                   u32,
	timeoutMinimum:                 u32,
	timeoutMaximum:                 u32,
	lastRoundTripTime:              u32,
	lowestRoundTripTime:            u32,
	lastRoundTripTimeVariance:      u32,
	highestRoundTripTimeVariance:   u32,
	roundTripTime:                  u32,
	roundTripTimeVariance:          u32,
	mtu:                            u32,
	windowSize:                     u32,
	reliableDataInTransit:          u32,
	outgoingReliableSequenceNumber: u16,
	acknowledgements:               List,
	sentReliableCommands:           List,
	sentUnreliableCommands:         List,
	outgoingCommands:               List,
	dispatchedCommands:             List,
	flags:                          u16,
	reserved:                       u16,
	incomingUnsequencedGroup:       u16,
	outgoingUnsequencedGroup:       u16,
	unsequencedWindow:              [32]u32,
	eventData:                      u32,
	totalWaitingData:               uint,
}
```

##### Related Procedures With Parameters

* [peer\_disconnect](/vendor/ENet/#peer_disconnect)
* [peer\_disconnect\_later](/vendor/ENet/#peer_disconnect_later)
* [peer\_disconnect\_now](/vendor/ENet/#peer_disconnect_now)
* [peer\_ping](/vendor/ENet/#peer_ping)
* [peer\_ping\_interval](/vendor/ENet/#peer_ping_interval)
* [peer\_receive](/vendor/ENet/#peer_receive)
* [peer\_reset](/vendor/ENet/#peer_reset)
* [peer\_send](/vendor/ENet/#peer_send)
* [peer\_throttle\_configure](/vendor/ENet/#peer_throttle_configure)
* [peer\_timeout](/vendor/ENet/#peer_timeout)



##### Related Procedures With Returns

* [host\_connect](/vendor/ENet/#host_connect)

### [PeerFlag ¶](#PeerFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L210)

```
PeerFlag :: enum i32 {
	NEEDS_DISPATCH, 
}
```

### [PeerState ¶](#PeerState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L156)

```
PeerState :: enum i32 {
	DISCONNECTED, 
	CONNECTING, 
	ACKNOWLEDGING_CONNECT, 
	CONNECTION_PENDING, 
	CONNECTION_SUCCEEDED, 
	CONNECTED, 
	DISCONNECT_LATER, 
	DISCONNECTING, 
	ACKNOWLEDGING_DISCONNECT, 
	ZOMBIE, 
}
```

### [Protocol ¶](#Protocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L151)

```
Protocol :: struct #raw_union {
	header:            ProtocolCommandHeader,
	acknowledge:       ProtocolAcknowledge,
	connect:           ProtocolConnect,
	verifyConnect:     ProtocolVerifyConnect,
	disconnect:        ProtocolDisconnect,
	ping:              ProtocolPing,
	sendReliable:      ProtocolSendReliable,
	sendUnreliable:    ProtocolSendUnreliable,
	sendUnsequenced:   ProtocolSendUnsequenced,
	sendFragment:      ProtocolSendFragment,
	bandwidthLimit:    ProtocolBandwidthLimit,
	throttleConfigure: ProtocolThrottleConfigure,
}
```

### [ProtocolAcknowledge ¶](#ProtocolAcknowledge) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L52)

```
ProtocolAcknowledge :: struct #packed {
	header:                     ProtocolCommandHeader,
	outgoingPeerID:             u16,
	incomingSessionID:          u8,
	outgoingSessionID:          u8,
	mtu:                        u32,
	windowSize:                 u32,
	channelCount:               u32,
	incomingBandwidth:          u32,
	outgoingBandwidth:          u32,
	packetThrottleInterval:     u32,
	packetThrottleAcceleration: u32,
	packetThrottleDeceleration: u32,
	connectID:                  u32,
	data:                       u32,
}
```

### [ProtocolBandwidthLimit ¶](#ProtocolBandwidthLimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L102)

```
ProtocolBandwidthLimit :: struct #packed {
	header:            ProtocolCommandHeader,
	incomingBandwidth: u32,
	outgoingBandwidth: u32,
}
```

### [ProtocolCommand ¶](#ProtocolCommand) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L13)

```
ProtocolCommand :: enum i32 {
	NONE                     = 0, 
	ACKNOWLEDGE              = 1, 
	CONNECT                  = 2, 
	VERIFY_CONNECT           = 3, 
	DISCONNECT               = 4, 
	PING                     = 5, 
	SEND_RELIABLE            = 6, 
	SEND_UNRELIABLE          = 7, 
	SEND_FRAGMENT            = 8, 
	SEND_UNSEQUENCED         = 9, 
	BANDWIDTH_LIMIT          = 10, 
	THROTTLE_CONFIGURE       = 11, 
	SEND_UNRELIABLE_FRAGMENT = 12, 
	COUNT                    = 13, 
	MASK                     = 15, 
}
```

### [ProtocolCommandHeader ¶](#ProtocolCommandHeader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L46)

```
ProtocolCommandHeader :: struct #packed {
	command:                u8,
	channelID:              u8,
	reliableSequenceNumber: u16,
}
```

### [ProtocolConnect ¶](#ProtocolConnect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L69)

```
ProtocolConnect :: struct #packed {
	header:                     ProtocolCommandHeader,
	outgoingPeerID:             u16,
	incomingSessionID:          u8,
	outgoingSessionID:          u8,
	mtu:                        u32,
	windowSize:                 u32,
	channelCount:               u32,
	incomingBandwidth:          u32,
	outgoingBandwidth:          u32,
	packetThrottleInterval:     u32,
	packetThrottleAcceleration: u32,
	packetThrottleDeceleration: u32,
	connectID:                  u32,
	data:                       u32,
}
```

### [ProtocolDisconnect ¶](#ProtocolDisconnect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L115)

```
ProtocolDisconnect :: struct #packed {
	header: ProtocolCommandHeader,
	data:   u32,
}
```

### [ProtocolFlag ¶](#ProtocolFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L31)

```
ProtocolFlag :: enum i32 {
	COMMAND_ACKNOWLEDGE  = 128, 
	COMMAND_UNSEQUENCED  = 64, 
	HEADER_COMPRESSED    = 16384, 
	HEADER_SENT_TIME     = 32768, 
	HEADER_MASK          = 49152, 
	HEADER_SESSION_MASK  = 12288, 
	HEADER_SESSION_SHIFT = 12, 
}
```

### [ProtocolHeader ¶](#ProtocolHeader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L41)

```
ProtocolHeader :: struct #packed {
	peerID:   u16,
	sentTime: u16,
}
```

### [ProtocolPing ¶](#ProtocolPing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L120)

```
ProtocolPing :: struct #packed {
	header: ProtocolCommandHeader,
}
```

### [ProtocolSendFragment ¶](#ProtocolSendFragment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L141)

```
ProtocolSendFragment :: struct #packed {
	header:              ProtocolCommandHeader,
	startSequenceNumber: u16,
	dataLength:          u16,
	fragmentCount:       u32,
	fragmentNumber:      u32,
	totalLength:         u32,
	fragmentOffset:      u32,
}
```

### [ProtocolSendReliable ¶](#ProtocolSendReliable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L124)

```
ProtocolSendReliable :: struct #packed {
	header:     ProtocolCommandHeader,
	dataLength: u16,
}
```

### [ProtocolSendUnreliable ¶](#ProtocolSendUnreliable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L129)

```
ProtocolSendUnreliable :: struct #packed {
	header:                   ProtocolCommandHeader,
	unreliableSequenceNumber: u16,
	dataLength:               u16,
}
```

### [ProtocolSendUnsequenced ¶](#ProtocolSendUnsequenced) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L135)

```
ProtocolSendUnsequenced :: struct #packed {
	header:           ProtocolCommandHeader,
	unsequencedGroup: u16,
	dataLength:       u16,
}
```

### [ProtocolThrottleConfigure ¶](#ProtocolThrottleConfigure) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L108)

```
ProtocolThrottleConfigure :: struct #packed {
	header:                     ProtocolCommandHeader,
	packetThrottleInterval:     u32,
	packetThrottleAcceleration: u32,
	packetThrottleDeceleration: u32,
}
```

### [ProtocolVerifyConnect ¶](#ProtocolVerifyConnect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L86)

```
ProtocolVerifyConnect :: struct #packed {
	header:                     ProtocolCommandHeader,
	outgoingPeerID:             u16,
	incomingSessionID:          u8,
	outgoingSessionID:          u8,
	mtu:                        u32,
	windowSize:                 u32,
	channelCount:               u32,
	incomingBandwidth:          u32,
	outgoingBandwidth:          u32,
	packetThrottleInterval:     u32,
	packetThrottleAcceleration: u32,
	packetThrottleDeceleration: u32,
	connectID:                  u32,
}
```

### [Socket ¶](#Socket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L58)

```
Socket :: distinct uintptr
```

##### Related Procedures With Parameters

* [SOCKETSET\_ADD](/vendor/ENet/#SOCKETSET_ADD)
* [SOCKETSET\_REMOVE](/vendor/ENet/#SOCKETSET_REMOVE)
* [SOCKSET\_CHECK](/vendor/ENet/#SOCKSET_CHECK)
* [socket\_accept](/vendor/ENet/#socket_accept)
* [socket\_bind](/vendor/ENet/#socket_bind)
* [socket\_connect](/vendor/ENet/#socket_connect)
* [socket\_destroy](/vendor/ENet/#socket_destroy)
* [socket\_get\_address](/vendor/ENet/#socket_get_address)
* [socket\_get\_option](/vendor/ENet/#socket_get_option)
* [socket\_listen](/vendor/ENet/#socket_listen)
* [socket\_receive](/vendor/ENet/#socket_receive)
* [socket\_send](/vendor/ENet/#socket_send)
* [socket\_set\_option](/vendor/ENet/#socket_set_option)
* [socket\_shutdown](/vendor/ENet/#socket_shutdown)
* [socket\_wait](/vendor/ENet/#socket_wait)
* [socketset\_select](/vendor/ENet/#socketset_select)



##### Related Procedures With Returns

* [socket\_create](/vendor/ENet/#socket_create)

##### Related Constants

* [SOCKET\_NULL](/vendor/ENet/#SOCKET_NULL)

### [SocketOption ¶](#SocketOption) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L78)

```
SocketOption :: enum i32 {
	NONBLOCK  = 1, 
	BROADCAST = 2, 
	RCVBUF    = 3, 
	SNDBUF    = 4, 
	REUSEADDR = 5, 
	RCVTIMEO  = 6, 
	SNDTIMEO  = 7, 
	ERROR     = 8, 
	NODELAY   = 9, 
}
```

##### Related Procedures With Parameters

* [socket\_get\_option](/vendor/ENet/#socket_get_option)
* [socket\_set\_option](/vendor/ENet/#socket_set_option)

### [SocketSet ¶](#SocketSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L67)

```
SocketSet :: struct {
	fd_count: u32,
	fd_array: [64]uintptr,
}
```

##### Related Procedures With Parameters

* [SOCKETSET\_ADD](/vendor/ENet/#SOCKETSET_ADD)
* [SOCKETSET\_EMPTY](/vendor/ENet/#SOCKETSET_EMPTY)
* [SOCKETSET\_REMOVE](/vendor/ENet/#SOCKETSET_REMOVE)
* [SOCKSET\_CHECK](/vendor/ENet/#SOCKSET_CHECK)
* [socketset\_select](/vendor/ENet/#socketset_select)

### [SocketShutdown ¶](#SocketShutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L90)

```
SocketShutdown :: enum i32 {
	READ       = 0, 
	WRITE      = 1, 
	READ_WRITE = 2, 
}
```

##### Related Procedures With Parameters

* [socket\_shutdown](/vendor/ENet/#socket_shutdown)

### [SocketType ¶](#SocketType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L66)

```
SocketType :: enum i32 {
	STREAM   = 1, 
	DATAGRAM = 2, 
}
```

##### Related Procedures With Parameters

* [socket\_create](/vendor/ENet/#socket_create)

### [SocketWait ¶](#SocketWait) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L71)

```
SocketWait :: enum i32 {
	NONE      = 0, 
	SEND      = 1, 
	RECEIVE   = 2, 
	INTERRUPT = 4, 
}
```

### [Version ¶](#Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L64)

```
Version :: u32
```

##### Related Procedures With Parameters

* [HOST\_TO\_NET\_32](/vendor/ENet/#HOST_TO_NET_32)
* [NET\_TO\_HOST\_32](/vendor/ENet/#NET_TO_HOST_32)
* [TIME\_DIFFERENCE](/vendor/ENet/#TIME_DIFFERENCE)
* [TIME\_GREATER](/vendor/ENet/#TIME_GREATER)
* [TIME\_GREATER\_EQUAL](/vendor/ENet/#TIME_GREATER_EQUAL)
* [TIME\_LESS](/vendor/ENet/#TIME_LESS)
* [TIME\_LESS\_EQUAL](/vendor/ENet/#TIME_LESS_EQUAL)
* [VERSION\_GET\_MAJOR](/vendor/ENet/#VERSION_GET_MAJOR)
* [VERSION\_GET\_MINOR](/vendor/ENet/#VERSION_GET_MINOR)
* [VERSION\_GET\_PATCH](/vendor/ENet/#VERSION_GET_PATCH)
* [host\_bandwidth\_limit](/vendor/ENet/#host_bandwidth_limit)
* [host\_connect](/vendor/ENet/#host_connect)
* [host\_create](/vendor/ENet/#host_create)
* [host\_service](/vendor/ENet/#host_service)
* [initialize\_with\_callbacks](/vendor/ENet/#initialize_with_callbacks)
* [peer\_disconnect](/vendor/ENet/#peer_disconnect)
* [peer\_disconnect\_later](/vendor/ENet/#peer_disconnect_later)
* [peer\_disconnect\_now](/vendor/ENet/#peer_disconnect_now)
* [peer\_ping\_interval](/vendor/ENet/#peer_ping_interval)
* [peer\_throttle\_configure](/vendor/ENet/#peer_throttle_configure)
* [peer\_timeout](/vendor/ENet/#peer_timeout)
* [socket\_wait](/vendor/ENet/#socket_wait)
* [socketset\_select](/vendor/ENet/#socketset_select)
* [time\_set](/vendor/ENet/#time_set)



##### Related Procedures With Returns

* [VERSION\_CREATE](/vendor/ENet/#VERSION_CREATE)
* [crc32](/vendor/ENet/#crc32)
* [linked\_version](/vendor/ENet/#linked_version)
* [time\_get](/vendor/ENet/#time_get)

## Constants

### [BUFFER\_MAXIMUM ¶](#BUFFER_MAXIMUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L169)

```
BUFFER_MAXIMUM :: 1 + 2 * PROTOCOL_MAXIMUM_PACKET_COMMANDS
```

### [HOST\_ANY ¶](#HOST_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L96)

```
HOST_ANY :: u32(0)
```

### [HOST\_BANDWIDTH\_THROTTLE\_INTERVAL ¶](#HOST_BANDWIDTH_THROTTLE_INTERVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L173)

```
HOST_BANDWIDTH_THROTTLE_INTERVAL :: 1000
```

### [HOST\_BROADCAST ¶](#HOST_BROADCAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L97)

```
HOST_BROADCAST :: u32(0xffffffff)
```

### [HOST\_DEFAULT\_MAXIMUM\_PACKET\_SIZE ¶](#HOST_DEFAULT_MAXIMUM_PACKET_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L175)

```
HOST_DEFAULT_MAXIMUM_PACKET_SIZE :: 32 * 1024 * 1024
```

### [HOST\_DEFAULT\_MAXIMUM\_WAITING\_DATA ¶](#HOST_DEFAULT_MAXIMUM_WAITING_DATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L176)

```
HOST_DEFAULT_MAXIMUM_WAITING_DATA :: 32 * 1024 * 1024
```

### [HOST\_DEFAULT\_MTU ¶](#HOST_DEFAULT_MTU) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L174)

```
HOST_DEFAULT_MTU :: 1400
```

### [HOST\_RECEIVE\_BUFFER\_SIZE ¶](#HOST_RECEIVE_BUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L171)

```
HOST_RECEIVE_BUFFER_SIZE :: 256 * 1024
```

### [HOST\_SEND\_BUFFER\_SIZE ¶](#HOST_SEND_BUFFER_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L172)

```
HOST_SEND_BUFFER_SIZE :: 256 * 1024
```

### [PEER\_DEFAULT\_PACKET\_THROTTLE ¶](#PEER_DEFAULT_PACKET_THROTTLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L179)

```
PEER_DEFAULT_PACKET_THROTTLE :: 32
```

### [PEER\_DEFAULT\_ROUND\_TRIP\_TIME ¶](#PEER_DEFAULT_ROUND_TRIP_TIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L178)

```
PEER_DEFAULT_ROUND_TRIP_TIME :: 500
```

### [PEER\_FREE\_RELIABLE\_WINDOWS ¶](#PEER_FREE_RELIABLE_WINDOWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L197)

```
PEER_FREE_RELIABLE_WINDOWS :: 8
```

### [PEER\_FREE\_UNSEQUENCED\_WINDOWS ¶](#PEER_FREE_UNSEQUENCED_WINDOWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L194)

```
PEER_FREE_UNSEQUENCED_WINDOWS :: 32
```

### [PEER\_PACKET\_LOSS\_INTERVAL ¶](#PEER_PACKET_LOSS_INTERVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L186)

```
PEER_PACKET_LOSS_INTERVAL :: 10000
```

### [PEER\_PACKET\_LOSS\_SCALE ¶](#PEER_PACKET_LOSS_SCALE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L185)

```
PEER_PACKET_LOSS_SCALE :: 1 << 16
```

### [PEER\_PACKET\_THROTTLE\_ACCELERATION ¶](#PEER_PACKET_THROTTLE_ACCELERATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L182)

```
PEER_PACKET_THROTTLE_ACCELERATION :: 2
```

### [PEER\_PACKET\_THROTTLE\_COUNTER ¶](#PEER_PACKET_THROTTLE_COUNTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L181)

```
PEER_PACKET_THROTTLE_COUNTER :: 7
```

### [PEER\_PACKET\_THROTTLE\_DECELERATION ¶](#PEER_PACKET_THROTTLE_DECELERATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L183)

```
PEER_PACKET_THROTTLE_DECELERATION :: 2
```

### [PEER\_PACKET\_THROTTLE\_INTERVAL ¶](#PEER_PACKET_THROTTLE_INTERVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L184)

```
PEER_PACKET_THROTTLE_INTERVAL :: 5000
```

### [PEER\_PACKET\_THROTTLE\_SCALE ¶](#PEER_PACKET_THROTTLE_SCALE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L180)

```
PEER_PACKET_THROTTLE_SCALE :: 32
```

### [PEER\_PING\_INTERVAL ¶](#PEER_PING_INTERVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L191)

```
PEER_PING_INTERVAL :: 500
```

### [PEER\_RELIABLE\_WINDOWS ¶](#PEER_RELIABLE_WINDOWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L195)

```
PEER_RELIABLE_WINDOWS :: 16
```

### [PEER\_RELIABLE\_WINDOW\_SIZE ¶](#PEER_RELIABLE_WINDOW_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L196)

```
PEER_RELIABLE_WINDOW_SIZE :: 0x1000
```

### [PEER\_TIMEOUT\_LIMIT ¶](#PEER_TIMEOUT_LIMIT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L188)

```
PEER_TIMEOUT_LIMIT :: 32
```

### [PEER\_TIMEOUT\_MAXIMUM ¶](#PEER_TIMEOUT_MAXIMUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L190)

```
PEER_TIMEOUT_MAXIMUM :: 30000
```

### [PEER\_TIMEOUT\_MINIMUM ¶](#PEER_TIMEOUT_MINIMUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L189)

```
PEER_TIMEOUT_MINIMUM :: 5000
```

### [PEER\_UNSEQUENCED\_WINDOWS ¶](#PEER_UNSEQUENCED_WINDOWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L192)

```
PEER_UNSEQUENCED_WINDOWS :: 64
```

### [PEER\_UNSEQUENCED\_WINDOW\_SIZE ¶](#PEER_UNSEQUENCED_WINDOW_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L193)

```
PEER_UNSEQUENCED_WINDOW_SIZE :: 1024
```

### [PEER\_WINDOW\_SIZE\_SCALE ¶](#PEER_WINDOW_SIZE_SCALE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L187)

```
PEER_WINDOW_SIZE_SCALE :: 64 * 1024
```

### [PORT\_ANY ¶](#PORT_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L98)

```
PORT_ANY :: u16(0)
```

### [PROTOCOL\_MAXIMUM\_CHANNEL\_COUNT ¶](#PROTOCOL_MAXIMUM_CHANNEL_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L9)

```
PROTOCOL_MAXIMUM_CHANNEL_COUNT :: 255
```

### [PROTOCOL\_MAXIMUM\_FRAGMENT\_COUNT ¶](#PROTOCOL_MAXIMUM_FRAGMENT_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L11)

```
PROTOCOL_MAXIMUM_FRAGMENT_COUNT :: 1024 * 1024
```

### [PROTOCOL\_MAXIMUM\_MTU ¶](#PROTOCOL_MAXIMUM_MTU) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L4)

```
PROTOCOL_MAXIMUM_MTU :: 4096
```

### [PROTOCOL\_MAXIMUM\_PACKET\_COMMANDS ¶](#PROTOCOL_MAXIMUM_PACKET_COMMANDS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L5)

```
PROTOCOL_MAXIMUM_PACKET_COMMANDS :: 32
```

### [PROTOCOL\_MAXIMUM\_PEER\_ID ¶](#PROTOCOL_MAXIMUM_PEER_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L10)

```
PROTOCOL_MAXIMUM_PEER_ID :: 0xFFF
```

### [PROTOCOL\_MAXIMUM\_WINDOW\_SIZE ¶](#PROTOCOL_MAXIMUM_WINDOW_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L7)

```
PROTOCOL_MAXIMUM_WINDOW_SIZE :: 65536
```

### [PROTOCOL\_MINIMUM\_CHANNEL\_COUNT ¶](#PROTOCOL_MINIMUM_CHANNEL_COUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L8)

```
PROTOCOL_MINIMUM_CHANNEL_COUNT :: 1
```

### [PROTOCOL\_MINIMUM\_MTU ¶](#PROTOCOL_MINIMUM_MTU) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L3)

```
PROTOCOL_MINIMUM_MTU :: 576
```

### [PROTOCOL\_MINIMUM\_WINDOW\_SIZE ¶](#PROTOCOL_MINIMUM_WINDOW_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin#L6)

```
PROTOCOL_MINIMUM_WINDOW_SIZE :: 4096
```

### [SOCKET\_NULL ¶](#SOCKET_NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L60)

```
SOCKET_NULL :: Socket(~uintptr(0))
```

### [TIME\_OVERFLOW ¶](#TIME_OVERFLOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/time.odin#L3)

```
TIME_OVERFLOW :: u32(86400000)
```

### [VERSION ¶](#VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L43)

```
VERSION: u32 : (u32(VERSION_MAJOR) << 16) | (u32(VERSION_MINOR) << 8) | u32(VERSION_PATCH)
```

 

Odin does not have "macros" or compile-time evaluation of functions, so the
following is just the same as.
VERSION :: VERSION\_CREATE(VERSION\_MAJOR, VERSION\_MINOR, VERSION\_PATCH);

### [VERSION\_MAJOR ¶](#VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L22)

```
VERSION_MAJOR :: u8(1)
```

### [VERSION\_MINOR ¶](#VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L23)

```
VERSION_MINOR :: u8(3)
```

### [VERSION\_PATCH ¶](#VERSION_PATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L24)

```
VERSION_PATCH :: u8(17)
```

## Variables

This section is empty.

## Procedures

### [HOST\_TO\_NET\_16 ¶](#HOST_TO_NET_16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L48)

```
HOST_TO_NET_16 :: proc "contextless" (value: u16) -> u16 {…}
```

 

Network byte order is always Big Endian. Instead of using the method ENet
uses (leveraging {n,h}to{n,h}{s,l}), we can just use Odin's endianess types
to get the correct byte swaps, if any.

### [HOST\_TO\_NET\_32 ¶](#HOST_TO_NET_32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L52)

```
HOST_TO_NET_32 :: proc "contextless" (value: u32) -> u32 {…}
```

### [NET\_TO\_HOST\_16 ¶](#NET_TO_HOST_16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L56)

```
NET_TO_HOST_16 :: proc "contextless" (value: u16) -> u16 {…}
```

### [NET\_TO\_HOST\_32 ¶](#NET_TO_HOST_32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L60)

```
NET_TO_HOST_32 :: proc "contextless" (value: u32) -> u32 {…}
```

### [SOCKETSET\_ADD ¶](#SOCKETSET_ADD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L73)

```
SOCKETSET_ADD :: proc "contextless" (sockset: ^SocketSet, socket: Socket) {…}
```

### [SOCKETSET\_EMPTY ¶](#SOCKETSET_EMPTY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L69)

```
SOCKETSET_EMPTY :: proc "contextless" (sockset: ^SocketSet) {…}
```

### [SOCKETSET\_REMOVE ¶](#SOCKETSET_REMOVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L77)

```
SOCKETSET_REMOVE :: proc "contextless" (sockset: ^SocketSet, socket: Socket) {…}
```

### [SOCKSET\_CHECK ¶](#SOCKSET_CHECK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin#L81)

```
SOCKSET_CHECK :: proc "contextless" (sockset: ^SocketSet, socket: Socket) -> bool {…}
```

### [TIME\_DIFFERENCE ¶](#TIME_DIFFERENCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/time.odin#L21)

```
TIME_DIFFERENCE :: proc "contextless" (a, b: u32) -> u32 {…}
```

### [TIME\_GREATER ¶](#TIME_GREATER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/time.odin#L9)

```
TIME_GREATER :: proc "contextless" (a, b: u32) -> bool {…}
```

### [TIME\_GREATER\_EQUAL ¶](#TIME_GREATER_EQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/time.odin#L17)

```
TIME_GREATER_EQUAL :: proc "contextless" (a, b: u32) -> bool {…}
```

### [TIME\_LESS ¶](#TIME_LESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/time.odin#L5)

```
TIME_LESS :: proc "contextless" (a, b: u32) -> bool {…}
```

### [TIME\_LESS\_EQUAL ¶](#TIME_LESS_EQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/time.odin#L13)

```
TIME_LESS_EQUAL :: proc "contextless" (a, b: u32) -> bool {…}
```

### [VERSION\_CREATE ¶](#VERSION_CREATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L26)

```
VERSION_CREATE :: proc "contextless" (major, minor, patch: u8) -> u32 {…}
```

### [VERSION\_GET\_MAJOR ¶](#VERSION_GET_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L30)

```
VERSION_GET_MAJOR :: proc "contextless" (version: u32) -> u8 {…}
```

### [VERSION\_GET\_MINOR ¶](#VERSION_GET_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L33)

```
VERSION_GET_MINOR :: proc "contextless" (version: u32) -> u8 {…}
```

### [VERSION\_GET\_PATCH ¶](#VERSION_GET_PATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L36)

```
VERSION_GET_PATCH :: proc "contextless" (version: u32) -> u8 {…}
```

### [address\_get\_host ¶](#address_get_host) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L368)

```
address_get_host :: proc "c" (address: ^Address, hostName: [^]u8, nameLength: uint) -> i32 ---
```

### [address\_get\_host\_ip ¶](#address_get_host_ip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L367)

```
address_get_host_ip :: proc "c" (address: ^Address, hostName: [^]u8, nameLength: uint) -> i32 ---
```

### [address\_set\_host ¶](#address_set_host) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L366)

```
address_set_host :: proc "c" (address: ^Address, hostName: cstring) -> i32 ---
```

### [address\_set\_host\_ip ¶](#address_set_host_ip) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L365)

```
address_set_host_ip :: proc "c" (address: ^Address, hostName: cstring) -> i32 ---
```

### [crc32 ¶](#crc32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L373)

```
crc32 :: proc "c" (buffers: [^]Buffer, bufferCount: uint) -> u32 ---
```

### [deinitialize ¶](#deinitialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L345)

```
deinitialize :: proc "c" () ---
```

### [host\_bandwidth\_limit ¶](#host_bandwidth_limit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L385)

```
host_bandwidth_limit :: proc "c" (host: ^Host, incomingBandwidth: u32, outgoingBandwidth: u32) ---
```

### [host\_broadcast ¶](#host_broadcast) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L381)

```
host_broadcast :: proc "c" (host: ^Host, channelID: u8, packet: ^Packet) ---
```

### [host\_channel\_limit ¶](#host_channel_limit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L384)

```
host_channel_limit :: proc "c" (host: ^Host, channelLimit: uint) ---
```

### [host\_check\_events ¶](#host_check_events) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L378)

```
host_check_events :: proc "c" (host: ^Host, event: ^Event) -> i32 ---
```

### [host\_compress ¶](#host_compress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L382)

```
host_compress :: proc "c" (host: ^Host, compressor: ^Compressor) ---
```

### [host\_compress\_with\_range\_coder ¶](#host_compress_with_range_coder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L383)

```
host_compress_with_range_coder :: proc "c" (host: ^Host) -> i32 ---
```

### [host\_connect ¶](#host_connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L377)

```
host_connect :: proc "c" (host: ^Host, address: ^Address, channelCount: uint, data: u32) -> ^Peer ---
```

### [host\_create ¶](#host_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L375)

```
host_create :: proc "c" (address: ^Address, peerCount: uint, channelLimit: uint, incomingBandwidth: u32, outgoingBandwidth: u32) -> ^Host ---
```

### [host\_destroy ¶](#host_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L376)

```
host_destroy :: proc "c" (host: ^Host) ---
```

### [host\_flush ¶](#host_flush) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L380)

```
host_flush :: proc "c" (host: ^Host) ---
```

### [host\_service ¶](#host_service) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L379)

```
host_service :: proc "c" (host: ^Host, event: ^Event, timeout: u32) -> i32 ---
```

### [initialize ¶](#initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L343)

```
initialize :: proc "c" () -> i32 ---
```

### [initialize\_with\_callbacks ¶](#initialize_with_callbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L344)

```
initialize_with_callbacks :: proc "c" (version: u32, inits: ^Callbacks) -> i32 ---
```

### [linked\_version ¶](#linked_version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L346)

```
linked_version :: proc "c" () -> u32 ---
```

### [packet\_create ¶](#packet_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L370)

```
packet_create :: proc "c" (data: rawptr, dataLength: uint, flags: bit_set[PacketFlag; i32]) -> ^Packet ---
```

### [packet\_destroy ¶](#packet_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L371)

```
packet_destroy :: proc "c" (packet: ^Packet) ---
```

### [packet\_resize ¶](#packet_resize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L372)

```
packet_resize :: proc "c" (packet: ^Packet, dataLength: uint) -> i32 ---
```

### [peer\_disconnect ¶](#peer_disconnect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L393)

```
peer_disconnect :: proc "c" (peer: ^Peer, data: u32) ---
```

### [peer\_disconnect\_later ¶](#peer_disconnect_later) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L395)

```
peer_disconnect_later :: proc "c" (peer: ^Peer, data: u32) ---
```

### [peer\_disconnect\_now ¶](#peer_disconnect_now) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L394)

```
peer_disconnect_now :: proc "c" (peer: ^Peer, data: u32) ---
```

### [peer\_ping ¶](#peer_ping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L389)

```
peer_ping :: proc "c" (peer: ^Peer) ---
```

### [peer\_ping\_interval ¶](#peer_ping_interval) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L390)

```
peer_ping_interval :: proc "c" (peer: ^Peer, pingInterval: u32) ---
```

### [peer\_receive ¶](#peer_receive) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L388)

```
peer_receive :: proc "c" (peer: ^Peer, channelID: ^u8) -> ^Packet ---
```

### [peer\_reset ¶](#peer_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L392)

```
peer_reset :: proc "c" (peer: ^Peer) ---
```

### [peer\_send ¶](#peer_send) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L387)

```
peer_send :: proc "c" (peer: ^Peer, channelID: u8, packet: ^Packet) -> i32 ---
```

### [peer\_throttle\_configure ¶](#peer_throttle_configure) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L396)

```
peer_throttle_configure :: proc "c" (peer: ^Peer, interval: u32, acceleration: u32, deceleration: u32) ---
```

### [peer\_timeout ¶](#peer_timeout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L391)

```
peer_timeout :: proc "c" (peer: ^Peer, timoutLimit: u32, timeoutMinimum: u32, timeoutMaximum: u32) ---
```

### [range\_coder\_compress ¶](#range_coder_compress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L400)

```
range_coder_compress :: proc "c" (
	ctx:           rawptr, 
	inBuffers:     [^]Buffer, 
	inBufferCount: uint, 
	inLimit:       uint, 
	outData:       [^]u8, 
	outLimit:      uint, 
) -> uint ---
```

### [range\_coder\_create ¶](#range_coder_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L398)

```
range_coder_create :: proc "c" () -> rawptr ---
```

### [range\_coder\_decompress ¶](#range_coder_decompress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L401)

```
range_coder_decompress :: proc "c" (ctx: rawptr, inData: [^]u8, inLimit: uint, outData: [^]u8, outLimit: uint) -> uint ---
```

### [range\_coder\_destroy ¶](#range_coder_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L399)

```
range_coder_destroy :: proc "c" (ctx: rawptr) ---
```

### [socket\_accept ¶](#socket_accept) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L354)

```
socket_accept :: proc "c" (socket: Socket, address: ^Address) -> Socket ---
```

### [socket\_bind ¶](#socket_bind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L351)

```
socket_bind :: proc "c" (socket: Socket, address: ^Address) -> i32 ---
```

### [socket\_connect ¶](#socket_connect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L355)

```
socket_connect :: proc "c" (socket: Socket, address: ^Address) -> i32 ---
```

### [socket\_create ¶](#socket_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L350)

```
socket_create :: proc "c" (SocketType) -> Socket ---
```

### [socket\_destroy ¶](#socket_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L362)

```
socket_destroy :: proc "c" (socket: Socket) ---
```

### [socket\_get\_address ¶](#socket_get_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L352)

```
socket_get_address :: proc "c" (socket: Socket, address: ^Address) -> i32 ---
```

### [socket\_get\_option ¶](#socket_get_option) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L360)

```
socket_get_option :: proc "c" (socket: Socket, option: SocketOption, value: ^i32) -> i32 ---
```

### [socket\_listen ¶](#socket_listen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L353)

```
socket_listen :: proc "c" (socket: Socket, backlog: i32) -> i32 ---
```

### [socket\_receive ¶](#socket_receive) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L357)

```
socket_receive :: proc "c" (socket: Socket, address: ^Address, buffers: [^]Buffer, bufferCount: uint) -> i32 ---
```

### [socket\_send ¶](#socket_send) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L356)

```
socket_send :: proc "c" (socket: Socket, address: ^Address, buffers: [^]Buffer, bufferCount: uint) -> i32 ---
```

### [socket\_set\_option ¶](#socket_set_option) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L359)

```
socket_set_option :: proc "c" (socket: Socket, option: SocketOption, value: i32) -> i32 ---
```

### [socket\_shutdown ¶](#socket_shutdown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L361)

```
socket_shutdown :: proc "c" (socket: Socket, how: SocketShutdown) -> i32 ---
```

### [socket\_wait ¶](#socket_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L358)

```
socket_wait :: proc "c" (socket: Socket, condition: ^u32, timeout: u32) -> i32 ---
```

### [socketset\_select ¶](#socketset_select) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L363)

```
socketset_select :: proc "c" (socket: Socket, readSet: ^SocketSet, writeSet: ^SocketSet, timeout: u32) -> i32 ---
```

### [time\_get ¶](#time_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L347)

```
time_get :: proc "c" () -> u32 ---
```

### [time\_set ¶](#time_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin#L348)

```
time_set :: proc "c" (newTimeBase: u32) ---
```

## Procedure Groups

This section is empty.

## Source Files

* [callbacks.odin](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/callbacks.odin)
* [enet.odin](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/enet.odin)
* [list.odin](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/list.odin)
* [protocol.odin](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/protocol.odin)
* [time.odin](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/time.odin)
* [win32.odin](https://github.com/odin-lang/Odin/tree/master/vendor/ENet/win32.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.937070000 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Acknowledgment](#Acknowledgment)
    + [Address](#Address)
    + [Buffer](#Buffer)
    + [Callbacks](#Callbacks)
    + [Channel](#Channel)
    + [ChecksumCallback](#ChecksumCallback)
    + [Compressor](#Compressor)
    + [Event](#Event)
    + [EventType](#EventType)
    + [Host](#Host)
    + [IncomingCommand](#IncomingCommand)
    + [InterceptCallback](#InterceptCallback)
    + [List](#List)
    + [ListNode](#ListNode)
    + [OutgoingCommand](#OutgoingCommand)
    + [Packet](#Packet)
    + [PacketFlag](#PacketFlag)
    + [PacketFlags](#PacketFlags)
    + [PacketFreeCallback](#PacketFreeCallback)
    + [Peer](#Peer)
    + [PeerFlag](#PeerFlag)
    + [PeerState](#PeerState)
    + [Protocol](#Protocol)
    + [ProtocolAcknowledge](#ProtocolAcknowledge)
    + [ProtocolBandwidthLimit](#ProtocolBandwidthLimit)
    + [ProtocolCommand](#ProtocolCommand)
    + [ProtocolCommandHeader](#ProtocolCommandHeader)
    + [ProtocolConnect](#ProtocolConnect)
    + [ProtocolDisconnect](#ProtocolDisconnect)
    + [ProtocolFlag](#ProtocolFlag)
    + [ProtocolHeader](#ProtocolHeader)
    + [ProtocolPing](#ProtocolPing)
    + [ProtocolSendFragment](#ProtocolSendFragment)
    + [ProtocolSendReliable](#ProtocolSendReliable)
    + [ProtocolSendUnreliable](#ProtocolSendUnreliable)
    + [ProtocolSendUnsequenced](#ProtocolSendUnsequenced)
    + [ProtocolThrottleConfigure](#ProtocolThrottleConfigure)
    + [ProtocolVerifyConnect](#ProtocolVerifyConnect)
    + [Socket](#Socket)
    + [SocketOption](#SocketOption)
    + [SocketSet](#SocketSet)
    + [SocketShutdown](#SocketShutdown)
    + [SocketType](#SocketType)
    + [SocketWait](#SocketWait)
    + [Version](#Version)
  * [Constants](#pkg-Constants)
    + [BUFFER\_MAXIMUM](#BUFFER_MAXIMUM)
    + [HOST\_ANY](#HOST_ANY)
    + [HOST\_BANDWIDTH\_THROTTLE\_INTERVAL](#HOST_BANDWIDTH_THROTTLE_INTERVAL)
    + [HOST\_BROADCAST](#HOST_BROADCAST)
    + [HOST\_DEFAULT\_MAXIMUM\_PACKET\_SIZE](#HOST_DEFAULT_MAXIMUM_PACKET_SIZE)
    + [HOST\_DEFAULT\_MAXIMUM\_WAITING\_DATA](#HOST_DEFAULT_MAXIMUM_WAITING_DATA)
    + [HOST\_DEFAULT\_MTU](#HOST_DEFAULT_MTU)
    + [HOST\_RECEIVE\_BUFFER\_SIZE](#HOST_RECEIVE_BUFFER_SIZE)
    + [HOST\_SEND\_BUFFER\_SIZE](#HOST_SEND_BUFFER_SIZE)
    + [PEER\_DEFAULT\_PACKET\_THROTTLE](#PEER_DEFAULT_PACKET_THROTTLE)
    + [PEER\_DEFAULT\_ROUND\_TRIP\_TIME](#PEER_DEFAULT_ROUND_TRIP_TIME)
    + [PEER\_FREE\_RELIABLE\_WINDOWS](#PEER_FREE_RELIABLE_WINDOWS)
    + [PEER\_FREE\_UNSEQUENCED\_WINDOWS](#PEER_FREE_UNSEQUENCED_WINDOWS)
    + [PEER\_PACKET\_LOSS\_INTERVAL](#PEER_PACKET_LOSS_INTERVAL)
    + [PEER\_PACKET\_LOSS\_SCALE](#PEER_PACKET_LOSS_SCALE)
    + [PEER\_PACKET\_THROTTLE\_ACCELERATION](#PEER_PACKET_THROTTLE_ACCELERATION)
    + [PEER\_PACKET\_THROTTLE\_COUNTER](#PEER_PACKET_THROTTLE_COUNTER)
    + [PEER\_PACKET\_THROTTLE\_DECELERATION](#PEER_PACKET_THROTTLE_DECELERATION)
    + [PEER\_PACKET\_THROTTLE\_INTERVAL](#PEER_PACKET_THROTTLE_INTERVAL)
    + [PEER\_PACKET\_THROTTLE\_SCALE](#PEER_PACKET_THROTTLE_SCALE)
    + [PEER\_PING\_INTERVAL](#PEER_PING_INTERVAL)
    + [PEER\_RELIABLE\_WINDOWS](#PEER_RELIABLE_WINDOWS)
    + [PEER\_RELIABLE\_WINDOW\_SIZE](#PEER_RELIABLE_WINDOW_SIZE)
    + [PEER\_TIMEOUT\_LIMIT](#PEER_TIMEOUT_LIMIT)
    + [PEER\_TIMEOUT\_MAXIMUM](#PEER_TIMEOUT_MAXIMUM)
    + [PEER\_TIMEOUT\_MINIMUM](#PEER_TIMEOUT_MINIMUM)
    + [PEER\_UNSEQUENCED\_WINDOWS](#PEER_UNSEQUENCED_WINDOWS)
    + [PEER\_UNSEQUENCED\_WINDOW\_SIZE](#PEER_UNSEQUENCED_WINDOW_SIZE)
    + [PEER\_WINDOW\_SIZE\_SCALE](#PEER_WINDOW_SIZE_SCALE)
    + [PORT\_ANY](#PORT_ANY)
    + [PROTOCOL\_MAXIMUM\_CHANNEL\_COUNT](#PROTOCOL_MAXIMUM_CHANNEL_COUNT)
    + [PROTOCOL\_MAXIMUM\_FRAGMENT\_COUNT](#PROTOCOL_MAXIMUM_FRAGMENT_COUNT)
    + [PROTOCOL\_MAXIMUM\_MTU](#PROTOCOL_MAXIMUM_MTU)
    + [PROTOCOL\_MAXIMUM\_PACKET\_COMMANDS](#PROTOCOL_MAXIMUM_PACKET_COMMANDS)
    + [PROTOCOL\_MAXIMUM\_PEER\_ID](#PROTOCOL_MAXIMUM_PEER_ID)
    + [PROTOCOL\_MAXIMUM\_WINDOW\_SIZE](#PROTOCOL_MAXIMUM_WINDOW_SIZE)
    + [PROTOCOL\_MINIMUM\_CHANNEL\_COUNT](#PROTOCOL_MINIMUM_CHANNEL_COUNT)
    + [PROTOCOL\_MINIMUM\_MTU](#PROTOCOL_MINIMUM_MTU)
    + [PROTOCOL\_MINIMUM\_WINDOW\_SIZE](#PROTOCOL_MINIMUM_WINDOW_SIZE)
    + [SOCKET\_NULL](#SOCKET_NULL)
    + [TIME\_OVERFLOW](#TIME_OVERFLOW)
    + [VERSION](#VERSION)
    + [VERSION\_MAJOR](#VERSION_MAJOR)
    + [VERSION\_MINOR](#VERSION_MINOR)
    + [VERSION\_PATCH](#VERSION_PATCH)
  * [Procedures](#pkg-Procedures)
    + [HOST\_TO\_NET\_16](#HOST_TO_NET_16)
    + [HOST\_TO\_NET\_32](#HOST_TO_NET_32)
    + [NET\_TO\_HOST\_16](#NET_TO_HOST_16)
    + [NET\_TO\_HOST\_32](#NET_TO_HOST_32)
    + [SOCKETSET\_ADD](#SOCKETSET_ADD)
    + [SOCKETSET\_EMPTY](#SOCKETSET_EMPTY)
    + [SOCKETSET\_REMOVE](#SOCKETSET_REMOVE)
    + [SOCKSET\_CHECK](#SOCKSET_CHECK)
    + [TIME\_DIFFERENCE](#TIME_DIFFERENCE)
    + [TIME\_GREATER](#TIME_GREATER)
    + [TIME\_GREATER\_EQUAL](#TIME_GREATER_EQUAL)
    + [TIME\_LESS](#TIME_LESS)
    + [TIME\_LESS\_EQUAL](#TIME_LESS_EQUAL)
    + [VERSION\_CREATE](#VERSION_CREATE)
    + [VERSION\_GET\_MAJOR](#VERSION_GET_MAJOR)
    + [VERSION\_GET\_MINOR](#VERSION_GET_MINOR)
    + [VERSION\_GET\_PATCH](#VERSION_GET_PATCH)
    + [address\_get\_host](#address_get_host)
    + [address\_get\_host\_ip](#address_get_host_ip)
    + [address\_set\_host](#address_set_host)
    + [address\_set\_host\_ip](#address_set_host_ip)
    + [crc32](#crc32)
    + [deinitialize](#deinitialize)
    + [host\_bandwidth\_limit](#host_bandwidth_limit)
    + [host\_broadcast](#host_broadcast)
    + [host\_channel\_limit](#host_channel_limit)
    + [host\_check\_events](#host_check_events)
    + [host\_compress](#host_compress)
    + [host\_compress\_with\_range\_coder](#host_compress_with_range_coder)
    + [host\_connect](#host_connect)
    + [host\_create](#host_create)
    + [host\_destroy](#host_destroy)
    + [host\_flush](#host_flush)
    + [host\_service](#host_service)
    + [initialize](#initialize)
    + [initialize\_with\_callbacks](#initialize_with_callbacks)
    + [linked\_version](#linked_version)
    + [packet\_create](#packet_create)
    + [packet\_destroy](#packet_destroy)
    + [packet\_resize](#packet_resize)
    + [peer\_disconnect](#peer_disconnect)
    + [peer\_disconnect\_later](#peer_disconnect_later)
    + [peer\_disconnect\_now](#peer_disconnect_now)
    + [peer\_ping](#peer_ping)
    + [peer\_ping\_interval](#peer_ping_interval)
    + [peer\_receive](#peer_receive)
    + [peer\_reset](#peer_reset)
    + [peer\_send](#peer_send)
    + [peer\_throttle\_configure](#peer_throttle_configure)
    + [peer\_timeout](#peer_timeout)
    + [range\_coder\_compress](#range_coder_compress)
    + [range\_coder\_create](#range_coder_create)
    + [range\_coder\_decompress](#range_coder_decompress)
    + [range\_coder\_destroy](#range_coder_destroy)
    + [socket\_accept](#socket_accept)
    + [socket\_bind](#socket_bind)
    + [socket\_connect](#socket_connect)
    + [socket\_create](#socket_create)
    + [socket\_destroy](#socket_destroy)
    + [socket\_get\_address](#socket_get_address)
    + [socket\_get\_option](#socket_get_option)
    + [socket\_listen](#socket_listen)
    + [socket\_receive](#socket_receive)
    + [socket\_send](#socket_send)
    + [socket\_set\_option](#socket_set_option)
    + [socket\_shutdown](#socket_shutdown)
    + [socket\_wait](#socket_wait)
    + [socketset\_select](#socketset_select)
    + [time\_get](#time_get)
    + [time\_set](#time_set)
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