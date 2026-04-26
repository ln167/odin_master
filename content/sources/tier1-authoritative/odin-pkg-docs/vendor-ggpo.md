package ggpo - pkg.odin-lang.org 






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



Current Package: *[vendor\_ggpo](/vendor/ggpo)*

  

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
2. [ggpo](/vendor/ggpo)

# package vendor:ggpo [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [GGPO](https://www.ggpo.net/) rollback networking.

Created in 2009, the GGPO networking SDK pioneered the use of rollback networking in peer-to-peer games.
It's designed specifically to hide network latency in fast paced, twitch style games which require very
precise inputs and frame perfect execution.

Traditional techniques account for network transmission time by adding delay to a players input, resulting
in a sluggish, laggy game-feel. Rollback networking uses input prediction and speculative execution to
send player inputs to the game immediately, providing the illusion of a zero-latency network. Using rollback,
the same timings, reactions visual and audio queues, and muscle memory your players build up playing offline
translate directly online. The GGPO networking SDK is designed to make incorporating rollback networking
into new and existing games as easy as possible.

## Index

Types (10)

* [ErrorCode](#ErrorCode)
* [Event](#Event)
* [EventCode](#EventCode)
* [LocalEndpoint](#LocalEndpoint)
* [NetworkStats](#NetworkStats)
* [Player](#Player)
* [PlayerHandle](#PlayerHandle)
* [PlayerType](#PlayerType)
* [Session](#Session)
* [SessionCallbacks](#SessionCallbacks)

Constants (5)

* [INVALID\_HANDLE](#INVALID_HANDLE)
* [MAX\_PLAYERS](#MAX_PLAYERS)
* [MAX\_PREDICTION\_FRAMES](#MAX_PREDICTION_FRAMES)
* [MAX\_SPECTATORS](#MAX_SPECTATORS)
* [SPECTATOR\_INPUT\_INTERVAL](#SPECTATOR_INPUT_INTERVAL)

Variables (0)

This section is empty.

Procedures (16)

* [add\_local\_input](#add_local_input)
* [add\_player](#add_player)
* [advance\_frame](#advance_frame)
* [close\_session](#close_session)
* [disconnect\_player](#disconnect_player)
* [get\_network\_stats](#get_network_stats)
* [idle](#idle)
* [log](#log)
* [logv](#logv)
* [set\_disconnect\_notify\_start](#set_disconnect_notify_start)
* [set\_disconnect\_timeout](#set_disconnect_timeout)
* [set\_frame\_delay](#set_frame_delay)
* [start\_session](#start_session)
* [start\_spectating](#start_spectating)
* [start\_synctest](#start_synctest)
* [synchronize\_input](#synchronize_input)

Procedure Groups (0)

This section is empty.

## Types

### [ErrorCode ¶](#ErrorCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L74)

```
ErrorCode :: enum i32 {
	OK                    = 0, 
	SUCCESS               = 0, 
	GENERAL_FAILURE       = -1, 
	INVALID_SESSION       = 1, 
	INVALID_PLAYER_HANDLE = 2, 
	PLAYER_OUT_OF_RANGE   = 3, 
	PREDICTION_THRESHOLD  = 4, 
	UNSUPPORTED           = 5, 
	NOT_SYNCHRONIZED      = 6, 
	IN_ROLLBACK           = 7, 
	INPUT_DROPPED         = 8, 
	PLAYER_DISCONNECTED   = 9, 
	TOO_MANY_SPECTATORS   = 10, 
	INVALID_REQUEST       = 11, 
}
```

##### Related Procedures With Returns

* [add\_local\_input](/vendor/ggpo/#add_local_input)
* [add\_player](/vendor/ggpo/#add_player)
* [advance\_frame](/vendor/ggpo/#advance_frame)
* [close\_session](/vendor/ggpo/#close_session)
* [disconnect\_player](/vendor/ggpo/#disconnect_player)
* [get\_network\_stats](/vendor/ggpo/#get_network_stats)
* [idle](/vendor/ggpo/#idle)
* [set\_disconnect\_notify\_start](/vendor/ggpo/#set_disconnect_notify_start)
* [set\_disconnect\_timeout](/vendor/ggpo/#set_disconnect_timeout)
* [set\_frame\_delay](/vendor/ggpo/#set_frame_delay)
* [start\_session](/vendor/ggpo/#start_session)
* [start\_spectating](/vendor/ggpo/#start_spectating)
* [start\_synctest](/vendor/ggpo/#start_synctest)
* [synchronize\_input](/vendor/ggpo/#synchronize_input)

### [Event ¶](#Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L130)

```
Event :: struct {
	code: EventCode,
	using u: struct #raw_union {
		connected:              struct {
			player: PlayerHandle,
		} `raw_union_tag:"code=.CONNECTED_TO_PEER"`,
		synchronizing:          struct {
			player: PlayerHandle,
			count:  i32,
			total:  i32,
		} `raw_union_tag:"code=.SYNCHRONIZING_WITH_PEER"`,
		synchronized:           struct {
			player: PlayerHandle,
		} `raw_union_tag:"code=.SYNCHRONIZED_WITH_PEER"`,
		disconnected:           struct {
			player: PlayerHandle,
		} `raw_union_tag:"code=.DISCONNECTED_FROM_PEER"`,
		timesync:               struct {
			frames_ahead: i32,
		} `raw_union_tag:"code=.TIMESYNC"`,
		connection_interrupted: struct {
			player:             PlayerHandle,
			disconnect_timeout: i32,
		} `raw_union_tag:"code=.connection_interrupted"`,
		connection_resumed:     struct {
			player: PlayerHandle,
		} `raw_union_tag:"code=.connection_resumed"`,
	},
}
```

 

The Event structure contains an asynchronous event notification sent
by the on\_event callback. See EventCode, above, for a detailed
explanation of each event.

### [EventCode ¶](#EventCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L116)

```
EventCode :: enum i32 {
	CONNECTED_TO_PEER       = 1000, 
	SYNCHRONIZING_WITH_PEER = 1001, 
	SYNCHRONIZED_WITH_PEER  = 1002, 
	RUNNING                 = 1003, 
	DISCONNECTED_FROM_PEER  = 1004, 
	TIMESYNC                = 1005, 
	CONNECTION_INTERRUPTED  = 1006, 
	CONNECTION_RESUMED      = 1007, 
}
```

 

The EventCode enumeration describes what type of event just happened.

CONNECTED\_TO\_PEER - Handshake with the game running on the
other side of the network has been completed.

SYNCHRONIZING\_WITH\_PEER - Beginning the synchronization
process with the client on the other end of the networking. The count
and total fields in the u.synchronizing struct of the Event
object indicate progress.

SYNCHRONIZED\_WITH\_PEER - The synchronziation with this
peer has finished.

RUNNING - All the clients have synchronized. You may begin
sending inputs with synchronize\_inputs.

DISCONNECTED\_FROM\_PEER - The network connection on
the other end of the network has closed.

TIMESYNC - The time synchronziation code has determined
that this client is too far ahead of the other one and should slow
down to ensure fairness. The u.timesync.frames\_ahead parameter in
the Event object indicates how many frames the client is.

### [LocalEndpoint ¶](#LocalEndpoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L70)

```
LocalEndpoint :: struct {
	player_num: i32,
}
```

### [NetworkStats ¶](#NetworkStats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L237)

```
NetworkStats :: struct {
	network:  struct {
		send_queue_len: i32,
		recv_queue_len: i32,
		ping:           i32,
		kbps_sent:      i32,
	},
	timesync: struct {
		local_frames_behind:  i32,
		remote_frames_behind: i32,
	},
}
```

 

The NetworkStats function contains some statistics about the current
session.

network.send\_queue\_len - The length of the queue containing UDP packets
which have not yet been acknowledged by the end client. The length of
the send queue is a rough indication of the quality of the connection.
The longer the send queue, the higher the round-trip time between the
clients. The send queue will also be longer than usual during high
packet loss situations.

network.recv\_queue\_len - The number of inputs currently buffered by the
GGPO.net network layer which have yet to be validated. The length of
the prediction queue is roughly equal to the current frame number
minus the frame number of the last packet in the remote queue.

network.ping - The roundtrip packet transmission time as calcuated
by GGPO.net. This will be roughly equal to the actual round trip
packet transmission time + 2 the interval at which you call idle
or advance\_frame.

network.kbps\_sent - The estimated bandwidth used between the two
clients, in kilobits per second.

timesync.local\_frames\_behind - The number of frames GGPO.net calculates
that the local client is behind the remote client at this instant in
time. For example, if at this instant the current game client is running
frame 1002 and the remote game client is running frame 1009, this value
will mostly likely roughly equal 7.

timesync.remote\_frames\_behind - The same as local\_frames\_behind, but
calculated from the perspective of the remote player.




##### Related Procedures With Parameters

* [get\_network\_stats](/vendor/ggpo/#get_network_stats)

### [Player ¶](#Player) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L57)

```
Player :: struct {
	size:       i32,
	type:       PlayerType,
	player_num: i32,
	using u:    struct #raw_union {
		local:  struct {} `raw_union_tag:"type=.LOCAL"`,
		remote: struct {
			ip_address: [32]u8,
			port:       u16,
		} `raw_union_tag:"type=.REMOTE"`,
	},
}
```

 

The Player structure used to describe players in add\_player

size: Should be set to the size\_of(Player)

type: One of the PlayerType values describing how inputs should be handled
Local players must have their inputs updated every frame via
add\_local\_inputs. Remote players values will come over the
network.

player\_num: The player number. Should be between 1 and the number of players
In the game (e.g. in a 2 player game, either 1 or 2).

If type == PLAYERTYPE\_REMOTE:

remote.ip\_address: The ip address of the ggpo session which will host this
player.

remote.port: The port where udp packets should be sent to reach this player.
All the local inputs for this session will be sent to this player at
ip\_address:port.




##### Related Procedures With Parameters

* [add\_player](/vendor/ggpo/#add_player)

### [PlayerHandle ¶](#PlayerHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L29)

```
PlayerHandle :: distinct i32
```

##### Related Procedures With Parameters

* [add\_local\_input](/vendor/ggpo/#add_local_input)
* [add\_player](/vendor/ggpo/#add_player)
* [disconnect\_player](/vendor/ggpo/#disconnect_player)
* [get\_network\_stats](/vendor/ggpo/#get_network_stats)
* [set\_frame\_delay](/vendor/ggpo/#set_frame_delay)

##### Related Constants

* [INVALID\_HANDLE](/vendor/ggpo/#INVALID_HANDLE)

### [PlayerType ¶](#PlayerType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L30)

```
PlayerType :: enum i32 {
	LOCAL, 
	REMOTE, 
	SPECTATOR, 
}
```

### [Session ¶](#Session) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L21)

```
Session :: distinct rawptr
```

##### Related Procedures With Parameters

* [add\_local\_input](/vendor/ggpo/#add_local_input)
* [add\_player](/vendor/ggpo/#add_player)
* [advance\_frame](/vendor/ggpo/#advance_frame)
* [close\_session](/vendor/ggpo/#close_session)
* [disconnect\_player](/vendor/ggpo/#disconnect_player)
* [get\_network\_stats](/vendor/ggpo/#get_network_stats)
* [idle](/vendor/ggpo/#idle)
* [log](/vendor/ggpo/#log)
* [logv](/vendor/ggpo/#logv)
* [set\_disconnect\_notify\_start](/vendor/ggpo/#set_disconnect_notify_start)
* [set\_disconnect\_timeout](/vendor/ggpo/#set_disconnect_timeout)
* [set\_frame\_delay](/vendor/ggpo/#set_frame_delay)
* [synchronize\_input](/vendor/ggpo/#synchronize_input)

### [SessionCallbacks ¶](#SessionCallbacks) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L165)

```
SessionCallbacks :: struct {
	// begin_game callback - This callback has been deprecated.  You must
	// implement it, but should ignore the 'game' parameter.
	begin_game:      proc "c" (game: cstring) -> bool,
	// save_game_state - The client should allocate a buffer, copy the
	// entire contents of the current game state into it, and copy the
	// length into the len parameter.  Optionally, the client can compute
	// a checksum of the data and store it in the checksum argument.
	save_game_state: proc "c" (buffer: ^[^]u8, len: ^i32, checksum: ^i32, frame: i32) -> bool,
	// load_game_state - GGPO.net will call this function at the beginning
	// of a rollback.  The buffer and len parameters contain a previously
	// saved state returned from the save_game_state function.  The client
	// should make the current game state match the state contained in the
	// buffer.
	load_game_state: proc "c" (buffer: [^]u8, len: i32) -> bool,
	// log_game_state - Used in diagnostic testing.  The client should use
	// the log function to write the contents of the specified save
	// state in a human readible form.
	log_game_state:  proc "c" (filename: cstring, buffer: [^]u8, len: i32) -> bool,
	// free_buffer - Frees a game state allocated in save_game_state.  You
	// should deallocate the memory contained in the buffer.
	free_buffer:     proc "c" (buffer: rawptr),
	// advance_frame - Called during a rollback.  You should advance your game
	// state by exactly one frame.  Before each frame, call synchronize_input
	// to retrieve the inputs you should use for that frame.  After each frame,
	// you should call advance_frame to notify GGPO.net that you're
	// finished.
	// 
	// The flags parameter is reserved.  It can safely be ignored at this time.
	advance_frame:   proc "c" (flags: i32) -> bool,
	// on_event - Notification that something has happened.  See the EventCode
	// structure above for more information.
	on_event:        proc "c" (info: ^Event) -> bool,
}
```

 

The SessionCallbacks structure contains the callback functions that
your application must implement. GGPO.net will periodically call these
functions during the game. All callback functions must be implemented.




##### Related Procedures With Parameters

* [start\_session](/vendor/ggpo/#start_session)
* [start\_spectating](/vendor/ggpo/#start_spectating)
* [start\_synctest](/vendor/ggpo/#start_synctest)

## Constants

### [INVALID\_HANDLE ¶](#INVALID_HANDLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L91)

```
INVALID_HANDLE :: PlayerHandle(-1)
```

### [MAX\_PLAYERS ¶](#MAX_PLAYERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L23)

```
MAX_PLAYERS :: 4
```

### [MAX\_PREDICTION\_FRAMES ¶](#MAX_PREDICTION_FRAMES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L24)

```
MAX_PREDICTION_FRAMES :: 8
```

### [MAX\_SPECTATORS ¶](#MAX_SPECTATORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L25)

```
MAX_SPECTATORS :: 32
```

### [SPECTATOR\_INPUT\_INTERVAL ¶](#SPECTATOR_INPUT_INTERVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L27)

```
SPECTATOR_INPUT_INTERVAL :: 4
```

## Variables

This section is empty.

## Procedures

### [add\_local\_input ¶](#add_local_input) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L396)

```
add_local_input :: proc "c" (session: ^Session, player: PlayerHandle, values: rawptr, size: i32) -> ErrorCode ---
```

 

add\_local\_input --

Used to notify GGPO.net of inputs that should be trasmitted to remote
players. add\_local\_input must be called once every frame for
all player of type PLAYERTYPE\_LOCAL.

player - The player handle returned for this player when you called
add\_local\_player.

values - The controller inputs for this player.

size - The size of the controller inputs. This must be exactly equal to the
size passed into start\_session.

### [add\_player ¶](#add_player) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L291)

```
add_player :: proc "c" (session: ^Session, player: ^Player, handle: ^PlayerHandle) -> ErrorCode ---
```

 

add\_player --

Must be called for each player in the session (e.g. in a 3 player session, must
be called 3 times).

player - A Player struct used to describe the player.

handle - An out parameter to a handle used to identify this player in the future.
(e.g. in the on\_event callbacks).

### [advance\_frame ¶](#advance_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L434)

```
advance_frame :: proc "c" (session: ^Session) -> ErrorCode ---
```

 

advance\_frame --

You should call advance\_frame to notify GGPO.net that you have
advanced your gamestate by a single frame. You should call this everytime
you advance the gamestate by a frame, even during rollbacks. GGPO.net
may call your save\_state callback before this function returns.

### [close\_session ¶](#close_session) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L362)

```
close_session :: proc "c" (session: ^Session) -> ErrorCode ---
```

 

close\_session --
Used to close a session. You must call close\_session to
free the resources allocated in start\_session.

### [disconnect\_player ¶](#disconnect_player) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L425)

```
disconnect_player :: proc "c" (session: ^Session, player: PlayerHandle) -> ErrorCode ---
```

 

disconnect\_player --

Disconnects a remote player from a game. Will return ERRORCODE\_PLAYER\_DISCONNECTED
if you try to disconnect a player who has already been disconnected.

### [get\_network\_stats ¶](#get_network_stats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L444)

```
get_network_stats :: proc "c" (session: ^Session, player: PlayerHandle, stats: ^NetworkStats) -> ErrorCode ---
```

 

get\_network\_stats --

Used to fetch some statistics about the quality of the network connection.

player - The player handle returned from the add\_player function you used
to add the remote player.

stats - Out parameter to the network statistics.

### [idle ¶](#idle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L380)

```
idle :: proc "c" (session: ^Session, timeout: i32) -> ErrorCode ---
```

 

idle --
Should be called periodically by your application to give GGPO.net
a chance to do some work. Most packet transmissions and rollbacks occur
in idle.

timeout - The amount of time GGPO.net is allowed to spend in this function,
in milliseconds.

### [log ¶](#log) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L477)

```
log :: proc "c" (session: ^Session, fmt: cstring, .. args: ..any) ---
```

 

log --

Used to write to the ggpo.net log. In the current versions of the
SDK, a log file is only generated if the "quark.log" environment
variable is set to 1. This will change in future versions of the
SDK.

### [logv ¶](#logv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L483)

```
logv :: proc "c" (session: ^Session, fmt: cstring, args: c.va_list) ---
```

 

logv --

A varargs compatible version of log. See log for
more details.

### [set\_disconnect\_notify\_start ¶](#set_disconnect_notify_start) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L468)

```
set_disconnect_notify_start :: proc "c" (session: ^Session, timeout: i32) -> ErrorCode ---
```

 

set\_disconnect\_notify\_start --

The time to wait before the first EVENTCODE\_NETWORK\_INTERRUPTED timeout
will be sent.

timeout - The amount of time which needs to elapse without receiving a packet
before the EVENTCODE\_NETWORK\_INTERRUPTED event is sent.

### [set\_disconnect\_timeout ¶](#set_disconnect_timeout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L458)

```
set_disconnect_timeout :: proc "c" (session: ^Session, timeout: i32) -> ErrorCode ---
```

 

set\_disconnect\_timeout --

Sets the disconnect timeout. The session will automatically disconnect
from a remote peer if it has not received a packet in the timeout window.
You will be notified of the disconnect via a EVENTCODE\_DISCONNECTED\_FROM\_PEER
event.

Setting a timeout value of 0 will disable automatic disconnects.

timeout - The time in milliseconds to wait before disconnecting a peer.

### [set\_frame\_delay ¶](#set_frame_delay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L369)

```
set_frame_delay :: proc "c" (session: ^Session, player: PlayerHandle, frame_delay: i32) -> ErrorCode ---
```

 

set\_frame\_delay --

Change the amount of frames ggpo will delay local input. Must be called
before the first call to synchronize\_input.

### [start\_session ¶](#start_session) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L274)

```
start_session :: proc "c" (
	session:     ^^Session, 
	cb:          ^SessionCallbacks, 
	game:        cstring, 
	num_players: i32, 
	input_size:  i32, 
	localport:   u16, 
) -> ErrorCode ---
```

 

start\_session --

Used to being a new GGPO.net session. The ggpo object returned by start\_session
uniquely identifies the state for this session and should be passed to all other
functions.

session - An out parameter to the new ggpo session object.

cb - A SessionCallbacks structure which contains the callbacks you implement
to help GGPO.net synchronize the two games. You must implement all functions in
cb, even if they do nothing but 'return true';

game - The name of the game. This is used internally for GGPO for logging purposes only.

num\_players - The number of players which will be in this game. The number of players
per session is fixed. If you need to change the number of players or any player
disconnects, you must start a new session.

input\_size - The size of the game inputs which will be passsed to add\_local\_input.

local\_port - The port GGPO should bind to for UDP traffic.

### [start\_spectating ¶](#start_spectating) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L350)

```
start_spectating :: proc "c" (
	session:     ^^Session, 
	cb:          ^SessionCallbacks, 
	game:        cstring, 
	num_players: i32, 
	input_size:  i32, 
	local_port:  u16, 
	host_ip:     cstring, 
	host_port:   u16, 
) -> ErrorCode ---
```

 

start\_spectating --

Start a spectator session.

cb - A SessionCallbacks structure which contains the callbacks you implement
to help GGPO.net synchronize the two games. You must implement all functions in
cb, even if they do nothing but 'return true';

game - The name of the game. This is used internally for GGPO for logging purposes only.

num\_players - The number of players which will be in this game. The number of players
per session is fixed. If you need to change the number of players or any player
disconnects, you must start a new session.

input\_size - The size of the game inputs which will be passsed to add\_local\_input.

local\_port - The port GGPO should bind to for UDP traffic.

host\_ip - The IP address of the host who will serve you the inputs for the game. Any
player partcipating in the session can serve as a host.

host\_port - The port of the session on the host

### [start\_synctest ¶](#start_synctest) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L320)

```
start_synctest :: proc "c" (
	session:     ^^Session, 
	cb:          ^SessionCallbacks, 
	game:        cstring, 
	num_players: i32, 
	input_size:  i32, 
	frames:      i32, 
) -> ErrorCode ---
```

 

\* start\_synctest --
\*
\* Used to being a new GGPO.net sync test session. During a sync test, every
\* frame of execution is run twice: once in prediction mode and once again to
\* verify the result of the prediction. If the checksums of your save states
\* do not match, the test is aborted.
\*
\* cb - A SessionCallbacks structure which contains the callbacks you implement
\* to help GGPO.net synchronize the two games. You must implement all functions in
\* cb, even if they do nothing but 'return true';
\*
\* game - The name of the game. This is used internally for GGPO for logging purposes only.
\*
\* num\_players - The number of players which will be in this game. The number of players
\* per session is fixed. If you need to change the number of players or any player
\* disconnects, you must start a new session.
\*
\* input\_size - The size of the game inputs which will be passsed to add\_local\_input.
\*
\* frames - The number of frames to run before verifying the prediction. The
\* recommended value is 1.
\*

### [synchronize\_input ¶](#synchronize_input) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin#L416)

```
synchronize_input :: proc "c" (session: ^Session, values: rawptr, size: i32, disconnect_flags: ^i32) -> ErrorCode ---
```

 

synchronize\_input --

You should call synchronize\_input before every frame of execution,
including those frames which happen during rollback.

values - When the function returns, the values parameter will contain
inputs for this frame for all players. The values array must be at
least (size \* players) large.

size - The size of the values array.

disconnect\_flags - Indicated whether the input in slot (1 << flag) is
valid. If a player has disconnected, the input in the values array for
that player will be zeroed and the i-th flag will be set. For example,
if only player 3 has disconnected, disconnect flags will be 8 (i.e. 1 << 3).

## Procedure Groups

This section is empty.

## Source Files

* [ggpo.odin](https://github.com/odin-lang/Odin/tree/master/vendor/ggpo/ggpo.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.951501800 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [ErrorCode](#ErrorCode)
    + [Event](#Event)
    + [EventCode](#EventCode)
    + [LocalEndpoint](#LocalEndpoint)
    + [NetworkStats](#NetworkStats)
    + [Player](#Player)
    + [PlayerHandle](#PlayerHandle)
    + [PlayerType](#PlayerType)
    + [Session](#Session)
    + [SessionCallbacks](#SessionCallbacks)
  * [Constants](#pkg-Constants)
    + [INVALID\_HANDLE](#INVALID_HANDLE)
    + [MAX\_PLAYERS](#MAX_PLAYERS)
    + [MAX\_PREDICTION\_FRAMES](#MAX_PREDICTION_FRAMES)
    + [MAX\_SPECTATORS](#MAX_SPECTATORS)
    + [SPECTATOR\_INPUT\_INTERVAL](#SPECTATOR_INPUT_INTERVAL)
  * [Procedures](#pkg-Procedures)
    + [add\_local\_input](#add_local_input)
    + [add\_player](#add_player)
    + [advance\_frame](#advance_frame)
    + [close\_session](#close_session)
    + [disconnect\_player](#disconnect_player)
    + [get\_network\_stats](#get_network_stats)
    + [idle](#idle)
    + [log](#log)
    + [logv](#logv)
    + [set\_disconnect\_notify\_start](#set_disconnect_notify_start)
    + [set\_disconnect\_timeout](#set_disconnect_timeout)
    + [set\_frame\_delay](#set_frame_delay)
    + [start\_session](#start_session)
    + [start\_spectating](#start_spectating)
    + [start\_synctest](#start_synctest)
    + [synchronize\_input](#synchronize_input)
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