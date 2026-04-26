package lua/5.4 - pkg.odin-lang.org 






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



Current Package: *[lua\_5\_4](/vendor/lua/5.4)*

  

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
2. lua
3. [5.4](/vendor/lua/5.4)

# package vendor:lua/5.4 [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [Lua 5.4](https://www.lua.org/manual/5.4/).

## Index

Types (22)

* [Alloc](#Alloc)
* [ArithOp](#ArithOp)
* [CFunction](#CFunction)
* [CompareOp](#CompareOp)
* [Debug](#Debug)
* [GCWhat](#GCWhat)
* [Hook](#Hook)
* [HookEvent](#HookEvent)
* [HookMask](#HookMask)
* [Integer](#Integer)
* [KContext](#KContext)
* [KFunction](#KFunction)
* [L\_Buffer](#L_Buffer)
* [L\_Reg](#L_Reg)
* [Number](#Number)
* [Reader](#Reader)
* [State](#State)
* [Status](#Status)
* [Type](#Type)
* [Unsigned](#Unsigned)
* [WarnFunction](#WarnFunction)
* [Writer](#Writer)

Constants (93)

* [AUTHORS](#AUTHORS)
* [COLIBNAME](#COLIBNAME)
* [COPYRIGHT](#COPYRIGHT)
* [DBLIBNAME](#DBLIBNAME)
* [ERRERR](#ERRERR)
* [ERRFILE](#ERRFILE)
* [ERRMEM](#ERRMEM)
* [ERRRUN](#ERRRUN)
* [ERRSYNTAX](#ERRSYNTAX)
* [EXTRASPACE](#EXTRASPACE)
* [GCCOLLECT](#GCCOLLECT)
* [GCCOUNT](#GCCOUNT)
* [GCCOUNTB](#GCCOUNTB)
* [GCGEN](#GCGEN)
* [GCINC](#GCINC)
* [GCISRUNNING](#GCISRUNNING)
* [GCRESTART](#GCRESTART)
* [GCSETPAUSE](#GCSETPAUSE)
* [GCSETSTEPMUL](#GCSETSTEPMUL)
* [GCSTEP](#GCSTEP)
* [GCSTOP](#GCSTOP)
* [GNAME](#GNAME)
* [HOOKCALL](#HOOKCALL)
* [HOOKCOUNT](#HOOKCOUNT)
* [HOOKLINE](#HOOKLINE)
* [HOOKRET](#HOOKRET)
* [HOOKTAILCALL](#HOOKTAILCALL)
* [IDSIZE](#IDSIZE)
* [IOLIBNAME](#IOLIBNAME)
* [LOADED\_TABLE](#LOADED_TABLE)
* [LOADLIBNAME](#LOADLIBNAME)
* [LUA\_SHARED](#LUA_SHARED)
* [L\_BUFFERSIZE](#L_BUFFERSIZE)
* [L\_NUMSIZES](#L_NUMSIZES)
* [MASKCALL](#MASKCALL)
* [MASKCOUNT](#MASKCOUNT)
* [MASKLINE](#MASKLINE)
* [MASKRET](#MASKRET)
* [MATHLIBNAME](#MATHLIBNAME)
* [MAXALIGNVAL](#MAXALIGNVAL)
* [MAXSTACK](#MAXSTACK)
* [MINSTACK](#MINSTACK)
* [MULTRET](#MULTRET)
* [NOREF](#NOREF)
* [NUMTYPES](#NUMTYPES)
* [OK](#OK)
* [OPADD](#OPADD)
* [OPBAND](#OPBAND)
* [OPBNOT](#OPBNOT)
* [OPBOR](#OPBOR)
* [OPBXOR](#OPBXOR)
* [OPDIV](#OPDIV)
* [OPEQ](#OPEQ)
* [OPIDIV](#OPIDIV)
* [OPLE](#OPLE)
* [OPLT](#OPLT)
* [OPMOD](#OPMOD)
* [OPMUL](#OPMUL)
* [OPPOW](#OPPOW)
* [OPSHL](#OPSHL)
* [OPSHR](#OPSHR)
* [OPSUB](#OPSUB)
* [OPUNM](#OPUNM)
* [OSLIBNAME](#OSLIBNAME)
* [PRELOAD\_TABLE](#PRELOAD_TABLE)
* [REFNIL](#REFNIL)
* [REGISTRYINDEX](#REGISTRYINDEX)
* [RELEASE](#RELEASE)
* [RIDX\_GLOBALS](#RIDX_GLOBALS)
* [RIDX\_LAST](#RIDX_LAST)
* [RIDX\_MAINTHREAD](#RIDX_MAINTHREAD)
* [SIGNATURE](#SIGNATURE)
* [STRLIBNAME](#STRLIBNAME)
* [TABLIBNAME](#TABLIBNAME)
* [TBOOLEAN](#TBOOLEAN)
* [TFUNCTION](#TFUNCTION)
* [TLIGHTUSERDATA](#TLIGHTUSERDATA)
* [TNIL](#TNIL)
* [TNONE](#TNONE)
* [TNUMBER](#TNUMBER)
* [TSTRING](#TSTRING)
* [TTABLE](#TTABLE)
* [TTHREAD](#TTHREAD)
* [TUSERDATA](#TUSERDATA)
* [UTF8LIBNAME](#UTF8LIBNAME)
* [VERSION](#VERSION)
* [VERSION\_MAJOR](#VERSION_MAJOR)
* [VERSION\_MINOR](#VERSION_MINOR)
* [VERSION\_NUM](#VERSION_NUM)
* [VERSION\_RELEASE](#VERSION_RELEASE)
* [VERSION\_RELEASE\_NUM](#VERSION_RELEASE_NUM)
* [VERSUFFIX](#VERSUFFIX)
* [YIELD](#YIELD)

Variables (1)

* [ident](#ident)

Procedures (190)

* [L\_addchar](#L_addchar)
* [L\_addgsub](#L_addgsub)
* [L\_addlstring](#L_addlstring)
* [L\_addsize](#L_addsize)
* [L\_addstring](#L_addstring)
* [L\_addvalue](#L_addvalue)
* [L\_argcheck](#L_argcheck)
* [L\_argerror](#L_argerror)
* [L\_argexpected](#L_argexpected)
* [L\_buffaddr](#L_buffaddr)
* [L\_buffinit](#L_buffinit)
* [L\_buffinitsize](#L_buffinitsize)
* [L\_bufflen](#L_bufflen)
* [L\_buffsub](#L_buffsub)
* [L\_callmeta](#L_callmeta)
* [L\_checkany](#L_checkany)
* [L\_checkinteger](#L_checkinteger)
* [L\_checknumber](#L_checknumber)
* [L\_checkoption](#L_checkoption)
* [L\_checkstack](#L_checkstack)
* [L\_checkstring](#L_checkstring)
* [L\_checktype](#L_checktype)
* [L\_checkudata](#L_checkudata)
* [L\_checkversion](#L_checkversion)
* [L\_dofile](#L_dofile)
* [L\_dostring](#L_dostring)
* [L\_error](#L_error)
* [L\_execresult](#L_execresult)
* [L\_fileresult](#L_fileresult)
* [L\_getmetafield](#L_getmetafield)
* [L\_getmetatable](#L_getmetatable)
* [L\_getsubtable](#L_getsubtable)
* [L\_gsub](#L_gsub)
* [L\_len](#L_len)
* [L\_loadbuffer](#L_loadbuffer)
* [L\_loadfile](#L_loadfile)
* [L\_loadstring](#L_loadstring)
* [L\_newlib](#L_newlib)
* [L\_newlibtable](#L_newlibtable)
* [L\_newmetatable](#L_newmetatable)
* [L\_newstate](#L_newstate)
* [L\_openlibs](#L_openlibs)
* [L\_opt](#L_opt)
* [L\_optinteger](#L_optinteger)
* [L\_optnumber](#L_optnumber)
* [L\_optstring](#L_optstring)
* [L\_prepbuffer](#L_prepbuffer)
* [L\_prepbuffsize](#L_prepbuffsize)
* [L\_pushresult](#L_pushresult)
* [L\_pushresultsize](#L_pushresultsize)
* [L\_ref](#L_ref)
* [L\_requiref](#L_requiref)
* [L\_setfuncs](#L_setfuncs)
* [L\_setmetatable](#L_setmetatable)
* [L\_testudata](#L_testudata)
* [L\_tostring](#L_tostring)
* [L\_traceback](#L_traceback)
* [L\_typeerror](#L_typeerror)
* [L\_typename](#L_typename)
* [L\_unref](#L_unref)
* [L\_where](#L_where)
* [absindex](#absindex)
* [arith](#arith)
* [atpanic](#atpanic)
* [call](#call)
* [checkstack](#checkstack)
* [close](#close)
* [compare](#compare)
* [concat](#concat)
* [copy](#copy)
* [createtable](#createtable)
* [dump](#dump)
* [error](#error)
* [gc](#gc)
* [getallocf](#getallocf)
* [getextraspace](#getextraspace)
* [getfield](#getfield)
* [getglobal](#getglobal)
* [gethook](#gethook)
* [gethookcount](#gethookcount)
* [gethookmask](#gethookmask)
* [geti](#geti)
* [getinfo](#getinfo)
* [getiuservalue](#getiuservalue)
* [getlocal](#getlocal)
* [getmetatable](#getmetatable)
* [getstack](#getstack)
* [gettable](#gettable)
* [gettop](#gettop)
* [getupvalue](#getupvalue)
* [getuservalue](#getuservalue)
* [insert](#insert)
* [isboolean](#isboolean)
* [iscfunction](#iscfunction)
* [isfunction](#isfunction)
* [isinteger](#isinteger)
* [islightuserdata](#islightuserdata)
* [isnil](#isnil)
* [isnone](#isnone)
* [isnoneornil](#isnoneornil)
* [isnumber](#isnumber)
* [isstring](#isstring)
* [istable](#istable)
* [isthread](#isthread)
* [isuserdata](#isuserdata)
* [isyieldable](#isyieldable)
* [len](#len)
* [load](#load)
* [newstate](#newstate)
* [newtable](#newtable)
* [newthread](#newthread)
* [newuserdata](#newuserdata)
* [newuserdatauv](#newuserdatauv)
* [next](#next)
* [open\_base](#open_base)
* [open\_coroutine](#open_coroutine)
* [open\_debug](#open_debug)
* [open\_io](#open_io)
* [open\_math](#open_math)
* [open\_os](#open_os)
* [open\_package](#open_package)
* [open\_string](#open_string)
* [open\_table](#open_table)
* [open\_utf8](#open_utf8)
* [pcall](#pcall)
* [pop](#pop)
* [pushboolean](#pushboolean)
* [pushcclosure](#pushcclosure)
* [pushcfunction](#pushcfunction)
* [pushfail](#pushfail)
* [pushfstring](#pushfstring)
* [pushglobaltable](#pushglobaltable)
* [pushinteger](#pushinteger)
* [pushlightuserdata](#pushlightuserdata)
* [pushliteral](#pushliteral)
* [pushlstring](#pushlstring)
* [pushnil](#pushnil)
* [pushnumber](#pushnumber)
* [pushstring](#pushstring)
* [pushthread](#pushthread)
* [pushvalue](#pushvalue)
* [pushvfstring](#pushvfstring)
* [rawequal](#rawequal)
* [rawget](#rawget)
* [rawgeti](#rawgeti)
* [rawgetp](#rawgetp)
* [rawlen](#rawlen)
* [rawset](#rawset)
* [rawseti](#rawseti)
* [rawsetp](#rawsetp)
* [register](#register)
* [remove](#remove)
* [replace](#replace)
* [resetthread](#resetthread)
* [resume](#resume)
* [rotate](#rotate)
* [setallocf](#setallocf)
* [setcstacklimit](#setcstacklimit)
* [setfield](#setfield)
* [setglobal](#setglobal)
* [sethook](#sethook)
* [seti](#seti)
* [setiuservalue](#setiuservalue)
* [setlocal](#setlocal)
* [setmetatable](#setmetatable)
* [settable](#settable)
* [settop](#settop)
* [setupvalue](#setupvalue)
* [setuservalue](#setuservalue)
* [setwarnf](#setwarnf)
* [status](#status)
* [stringtonumber](#stringtonumber)
* [toboolean](#toboolean)
* [tocfunction](#tocfunction)
* [toclose](#toclose)
* [tointeger](#tointeger)
* [tolstring](#tolstring)
* [tonumber](#tonumber)
* [topointer](#topointer)
* [tostring](#tostring)
* [tothread](#tothread)
* [touserdata](#touserdata)
* [type](#type)
* [typename](#typename)
* [upvalueid](#upvalueid)
* [upvaluejoin](#upvaluejoin)
* [version](#version)
* [warning](#warning)
* [xmove](#xmove)
* [yield](#yield)

Procedure Groups (0)

This section is empty.

`#config` values (1)

* [LUA\_SHARED](#LUA_SHARED)

## Types

### [Alloc ¶](#Alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L230)

```
Alloc :: proc "c" (ud: rawptr, ptr: rawptr, osize, nsize: uint) -> rawptr
```

 

\*\* Type for memory-allocation functions




##### Related Procedures With Parameters

* [newstate](/vendor/lua/5.4/#newstate)
* [setallocf](/vendor/lua/5.4/#setallocf)



##### Related Procedures With Returns

* [getallocf](/vendor/lua/5.4/#getallocf)

### [ArithOp ¶](#ArithOp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L142)

```
ArithOp :: enum i32 {
	ADD  = 0,  // ORDER TM, ORDER OP
	SUB  = 1, 
	MUL  = 2, 
	MOD  = 3, 
	POW  = 4, 
	DIV  = 5, 
	IDIV = 6, 
	BAND = 7, 
	BOR  = 8, 
	BXOR = 9, 
	SHL  = 10, 
	SHR  = 11, 
	UNM  = 12, 
	BNOT = 13, 
}
```

##### Related Procedures With Parameters

* [arith](/vendor/lua/5.4/#arith)

##### Related Constants

* [OPADD](/vendor/lua/5.4/#OPADD)
* [OPBAND](/vendor/lua/5.4/#OPBAND)
* [OPBNOT](/vendor/lua/5.4/#OPBNOT)
* [OPBOR](/vendor/lua/5.4/#OPBOR)
* [OPBXOR](/vendor/lua/5.4/#OPBXOR)
* [OPDIV](/vendor/lua/5.4/#OPDIV)
* [OPIDIV](/vendor/lua/5.4/#OPIDIV)
* [OPMOD](/vendor/lua/5.4/#OPMOD)
* [OPMUL](/vendor/lua/5.4/#OPMUL)
* [OPPOW](/vendor/lua/5.4/#OPPOW)
* [OPSHL](/vendor/lua/5.4/#OPSHL)
* [OPSHR](/vendor/lua/5.4/#OPSHR)
* [OPSUB](/vendor/lua/5.4/#OPSUB)
* [OPUNM](/vendor/lua/5.4/#OPUNM)

### [CFunction ¶](#CFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L212)

```
CFunction :: proc "c" (L: ^State) -> i32
```

 

\*\* Type for C functions registered with Lua




##### Related Procedures With Parameters

* [L\_requiref](/vendor/lua/5.4/#L_requiref)
* [atpanic](/vendor/lua/5.4/#atpanic)
* [pushcclosure](/vendor/lua/5.4/#pushcclosure)
* [pushcfunction](/vendor/lua/5.4/#pushcfunction)
* [register](/vendor/lua/5.4/#register)



##### Related Procedures With Returns

* [tocfunction](/vendor/lua/5.4/#tocfunction)

### [CompareOp ¶](#CompareOp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L159)

```
CompareOp :: enum i32 {
	EQ = 0, 
	LT = 1, 
	LE = 2, 
}
```

##### Related Procedures With Parameters

* [compare](/vendor/lua/5.4/#compare)

##### Related Constants

* [OPEQ](/vendor/lua/5.4/#OPEQ)
* [OPLE](/vendor/lua/5.4/#OPLE)
* [OPLT](/vendor/lua/5.4/#OPLT)

### [Debug ¶](#Debug) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L293)

```
Debug :: struct {
	event:           HookEvent,
	name:            cstring,
	// (n) 
	namewhat:        cstring,
	// (n) 'global', 'local', 'field', 'method' 
	what:            cstring,
	// (S) 'Lua', 'C', 'main', 'tail' 
	source:          cstring,
	// (S) 
	srclen:          uint,
	// (S) 
	currentline:     i32,
	// (l) 
	linedefined:     i32,
	// (S) 
	lastlinedefined: i32,
	// (S) 
	nups:            u8,
	// (u) number of upvalues 
	nparams:         u8,
	// (u) number of parameters 
	isvararg:        bool,
	// (u) 
	istailcall:      bool,
	// (t) 
	ftransfer:       u16,
	// (r) index of first value transferred 
	ntransfer:       u16,
	// (r) number of transferred values 
	short_src:       [60]u8 `fmt:"s"`,
	// private part 
	i_ci:            rawptr,
}
```

 

activation record




##### Related Procedures With Parameters

* [getinfo](/vendor/lua/5.4/#getinfo)
* [getlocal](/vendor/lua/5.4/#getlocal)
* [getstack](/vendor/lua/5.4/#getstack)
* [setlocal](/vendor/lua/5.4/#setlocal)

### [GCWhat ¶](#GCWhat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L238)

```
GCWhat :: enum i32 {
	STOP       = 0, 
	RESTART    = 1, 
	COLLECT    = 2, 
	COUNT      = 3, 
	COUNTB     = 4, 
	STEP       = 5, 
	SETPAUSE   = 6, 
	SETSTEPMUL = 7, 
	ISRUNNING  = 9, 
	GEN        = 10, 
	INC        = 11, 
}
```

##### Related Procedures With Parameters

* [gc](/vendor/lua/5.4/#gc)

##### Related Constants

* [GCCOLLECT](/vendor/lua/5.4/#GCCOLLECT)
* [GCCOUNT](/vendor/lua/5.4/#GCCOUNT)
* [GCCOUNTB](/vendor/lua/5.4/#GCCOUNTB)
* [GCGEN](/vendor/lua/5.4/#GCGEN)
* [GCINC](/vendor/lua/5.4/#GCINC)
* [GCISRUNNING](/vendor/lua/5.4/#GCISRUNNING)
* [GCRESTART](/vendor/lua/5.4/#GCRESTART)
* [GCSETPAUSE](/vendor/lua/5.4/#GCSETPAUSE)
* [GCSETSTEPMUL](/vendor/lua/5.4/#GCSETSTEPMUL)
* [GCSTEP](/vendor/lua/5.4/#GCSTEP)
* [GCSTOP](/vendor/lua/5.4/#GCSTOP)

### [Hook ¶](#Hook) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L316)

```
Hook :: proc "c" (L: ^State, ar: ^Debug)
```

 

Functions to be called by the debugger in specific events




##### Related Procedures With Parameters

* [sethook](/vendor/lua/5.4/#sethook)



##### Related Procedures With Returns

* [gethook](/vendor/lua/5.4/#gethook)

### [HookEvent ¶](#HookEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L269)

```
HookEvent :: enum i32 {
	CALL     = 0, 
	RET      = 1, 
	LINE     = 2, 
	COUNT    = 3, 
	TAILCALL = 4, 
}
```

##### Related Constants

* [HOOKCALL](/vendor/lua/5.4/#HOOKCALL)
* [HOOKCOUNT](/vendor/lua/5.4/#HOOKCOUNT)
* [HOOKLINE](/vendor/lua/5.4/#HOOKLINE)
* [HOOKRET](/vendor/lua/5.4/#HOOKRET)
* [HOOKTAILCALL](/vendor/lua/5.4/#HOOKTAILCALL)

### [HookMask ¶](#HookMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L286)

```
HookMask :: distinct bit_set[HookEvent; i32]
```

 

\*\* Event masks




##### Related Procedures With Parameters

* [sethook](/vendor/lua/5.4/#sethook)



##### Related Procedures With Returns

* [gethookmask](/vendor/lua/5.4/#gethookmask)

##### Related Constants

* [MASKCALL](/vendor/lua/5.4/#MASKCALL)
* [MASKCOUNT](/vendor/lua/5.4/#MASKCOUNT)
* [MASKLINE](/vendor/lua/5.4/#MASKLINE)
* [MASKRET](/vendor/lua/5.4/#MASKRET)

### [Integer ¶](#Integer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L200)

```
Integer :: distinct i64
```

 

type for integer functions




##### Related Procedures With Parameters

* [L\_optinteger](/vendor/lua/5.4/#L_optinteger)
* [geti](/vendor/lua/5.4/#geti)
* [pushinteger](/vendor/lua/5.4/#pushinteger)
* [rawgeti](/vendor/lua/5.4/#rawgeti)
* [rawseti](/vendor/lua/5.4/#rawseti)
* [seti](/vendor/lua/5.4/#seti)



##### Related Procedures With Returns

* [L\_checkinteger](/vendor/lua/5.4/#L_checkinteger)
* [L\_len](/vendor/lua/5.4/#L_len)
* [tointeger](/vendor/lua/5.4/#tointeger)

### [KContext ¶](#KContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L206)

```
KContext :: distinct int
```

 

type for continuation-function contexts




##### Related Procedures With Parameters

* [call](/vendor/lua/5.4/#call)
* [pcall](/vendor/lua/5.4/#pcall)
* [yield](/vendor/lua/5.4/#yield)

### [KFunction ¶](#KFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L217)

```
KFunction :: proc "c" (L: ^State, status: i32, ctx: KContext) -> i32
```

 

\*\* Type for continuation functions




##### Related Procedures With Parameters

* [call](/vendor/lua/5.4/#call)
* [pcall](/vendor/lua/5.4/#pcall)
* [yield](/vendor/lua/5.4/#yield)

### [L\_Buffer ¶](#L_Buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L664)

```
L_Buffer :: struct {
	b:    [^]u8,
	// buffer address 
	size: uint,
	// buffer size 
	n:    uint,
	// number of characters in buffer 
	L:    ^State,
	init: struct #raw_union {
		n: Number,
		u: f64,
		s: rawptr,
		i: Integer,
		l: i32,
		b: [1024]u8,
	},
}
```

##### Related Procedures With Parameters

* [L\_addchar](/vendor/lua/5.4/#L_addchar)
* [L\_addgsub](/vendor/lua/5.4/#L_addgsub)
* [L\_addlstring](/vendor/lua/5.4/#L_addlstring)
* [L\_addsize](/vendor/lua/5.4/#L_addsize)
* [L\_addstring](/vendor/lua/5.4/#L_addstring)
* [L\_addvalue](/vendor/lua/5.4/#L_addvalue)
* [L\_buffaddr](/vendor/lua/5.4/#L_buffaddr)
* [L\_buffinit](/vendor/lua/5.4/#L_buffinit)
* [L\_buffinitsize](/vendor/lua/5.4/#L_buffinitsize)
* [L\_bufflen](/vendor/lua/5.4/#L_bufflen)
* [L\_buffsub](/vendor/lua/5.4/#L_buffsub)
* [L\_prepbuffer](/vendor/lua/5.4/#L_prepbuffer)
* [L\_prepbuffsize](/vendor/lua/5.4/#L_prepbuffsize)
* [L\_pushresult](/vendor/lua/5.4/#L_pushresult)
* [L\_pushresultsize](/vendor/lua/5.4/#L_pushresultsize)

### [L\_Reg ¶](#L_Reg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L577)

```
L_Reg :: struct {
	name: cstring,
	func: CFunction,
}
```

##### Related Procedures With Parameters

* [L\_setfuncs](/vendor/lua/5.4/#L_setfuncs)

### [Number ¶](#Number) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L196)

```
Number :: distinct f64
```

 

type of numbers in Lua




##### Related Procedures With Parameters

* [L\_checkversion](/vendor/lua/5.4/#L_checkversion)
* [L\_optnumber](/vendor/lua/5.4/#L_optnumber)
* [pushnumber](/vendor/lua/5.4/#pushnumber)



##### Related Procedures With Returns

* [L\_checknumber](/vendor/lua/5.4/#L_checknumber)
* [tonumber](/vendor/lua/5.4/#tonumber)
* [version](/vendor/lua/5.4/#version)

### [Reader ¶](#Reader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L223)

```
Reader :: proc "c" (L: ^State, ud: rawptr, sz: ^uint) -> cstring
```

 

\*\* Type for functions that read/write blocks when loading/dumping Lua chunks




##### Related Procedures With Parameters

* [load](/vendor/lua/5.4/#load)

### [State ¶](#State) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L319)

```
State :: struct {}
```

 

opaque data type




##### Related Procedures With Parameters

* [L\_argcheck](/vendor/lua/5.4/#L_argcheck)
* [L\_argerror](/vendor/lua/5.4/#L_argerror)
* [L\_argexpected](/vendor/lua/5.4/#L_argexpected)
* [L\_buffinit](/vendor/lua/5.4/#L_buffinit)
* [L\_buffinitsize](/vendor/lua/5.4/#L_buffinitsize)
* [L\_callmeta](/vendor/lua/5.4/#L_callmeta)
* [L\_checkany](/vendor/lua/5.4/#L_checkany)
* [L\_checkinteger](/vendor/lua/5.4/#L_checkinteger)
* [L\_checknumber](/vendor/lua/5.4/#L_checknumber)
* [L\_checkoption](/vendor/lua/5.4/#L_checkoption)
* [L\_checkstack](/vendor/lua/5.4/#L_checkstack)
* [L\_checkstring](/vendor/lua/5.4/#L_checkstring)
* [L\_checktype](/vendor/lua/5.4/#L_checktype)
* [L\_checkudata](/vendor/lua/5.4/#L_checkudata)
* [L\_checkversion](/vendor/lua/5.4/#L_checkversion)
* [L\_dofile](/vendor/lua/5.4/#L_dofile)
* [L\_dostring](/vendor/lua/5.4/#L_dostring)
* [L\_error](/vendor/lua/5.4/#L_error)
* [L\_execresult](/vendor/lua/5.4/#L_execresult)
* [L\_fileresult](/vendor/lua/5.4/#L_fileresult)
* [L\_getmetafield](/vendor/lua/5.4/#L_getmetafield)
* [L\_getmetatable](/vendor/lua/5.4/#L_getmetatable)
* [L\_getsubtable](/vendor/lua/5.4/#L_getsubtable)
* [L\_gsub](/vendor/lua/5.4/#L_gsub)
* [L\_len](/vendor/lua/5.4/#L_len)
* [L\_loadbuffer](/vendor/lua/5.4/#L_loadbuffer)
* [L\_loadfile](/vendor/lua/5.4/#L_loadfile)
* [L\_loadstring](/vendor/lua/5.4/#L_loadstring)
* [L\_newlib](/vendor/lua/5.4/#L_newlib)
* [L\_newlibtable](/vendor/lua/5.4/#L_newlibtable)
* [L\_newmetatable](/vendor/lua/5.4/#L_newmetatable)
* [L\_openlibs](/vendor/lua/5.4/#L_openlibs)
* [L\_opt](/vendor/lua/5.4/#L_opt)
* [L\_optinteger](/vendor/lua/5.4/#L_optinteger)
* [L\_optnumber](/vendor/lua/5.4/#L_optnumber)
* [L\_optstring](/vendor/lua/5.4/#L_optstring)
* [L\_ref](/vendor/lua/5.4/#L_ref)
* [L\_requiref](/vendor/lua/5.4/#L_requiref)
* [L\_setfuncs](/vendor/lua/5.4/#L_setfuncs)
* [L\_setmetatable](/vendor/lua/5.4/#L_setmetatable)
* [L\_testudata](/vendor/lua/5.4/#L_testudata)
* [L\_tostring](/vendor/lua/5.4/#L_tostring)
* [L\_traceback](/vendor/lua/5.4/#L_traceback)
* [L\_typeerror](/vendor/lua/5.4/#L_typeerror)
* [L\_typename](/vendor/lua/5.4/#L_typename)
* [L\_unref](/vendor/lua/5.4/#L_unref)
* [L\_where](/vendor/lua/5.4/#L_where)
* [absindex](/vendor/lua/5.4/#absindex)
* [arith](/vendor/lua/5.4/#arith)
* [atpanic](/vendor/lua/5.4/#atpanic)
* [call](/vendor/lua/5.4/#call)
* [checkstack](/vendor/lua/5.4/#checkstack)
* [close](/vendor/lua/5.4/#close)
* [compare](/vendor/lua/5.4/#compare)
* [concat](/vendor/lua/5.4/#concat)
* [copy](/vendor/lua/5.4/#copy)
* [createtable](/vendor/lua/5.4/#createtable)
* [dump](/vendor/lua/5.4/#dump)
* [error](/vendor/lua/5.4/#error)
* [gc](/vendor/lua/5.4/#gc)
* [getallocf](/vendor/lua/5.4/#getallocf)
* [getextraspace](/vendor/lua/5.4/#getextraspace)
* [getfield](/vendor/lua/5.4/#getfield)
* [getglobal](/vendor/lua/5.4/#getglobal)
* [gethook](/vendor/lua/5.4/#gethook)
* [gethookcount](/vendor/lua/5.4/#gethookcount)
* [gethookmask](/vendor/lua/5.4/#gethookmask)
* [geti](/vendor/lua/5.4/#geti)
* [getinfo](/vendor/lua/5.4/#getinfo)
* [getiuservalue](/vendor/lua/5.4/#getiuservalue)
* [getlocal](/vendor/lua/5.4/#getlocal)
* [getmetatable](/vendor/lua/5.4/#getmetatable)
* [getstack](/vendor/lua/5.4/#getstack)
* [gettable](/vendor/lua/5.4/#gettable)
* [gettop](/vendor/lua/5.4/#gettop)
* [getupvalue](/vendor/lua/5.4/#getupvalue)
* [getuservalue](/vendor/lua/5.4/#getuservalue)
* [insert](/vendor/lua/5.4/#insert)
* [isboolean](/vendor/lua/5.4/#isboolean)
* [iscfunction](/vendor/lua/5.4/#iscfunction)
* [isfunction](/vendor/lua/5.4/#isfunction)
* [isinteger](/vendor/lua/5.4/#isinteger)
* [islightuserdata](/vendor/lua/5.4/#islightuserdata)
* [isnil](/vendor/lua/5.4/#isnil)
* [isnone](/vendor/lua/5.4/#isnone)
* [isnoneornil](/vendor/lua/5.4/#isnoneornil)
* [isnumber](/vendor/lua/5.4/#isnumber)
* [isstring](/vendor/lua/5.4/#isstring)
* [istable](/vendor/lua/5.4/#istable)
* [isthread](/vendor/lua/5.4/#isthread)
* [isuserdata](/vendor/lua/5.4/#isuserdata)
* [isyieldable](/vendor/lua/5.4/#isyieldable)
* [len](/vendor/lua/5.4/#len)
* [load](/vendor/lua/5.4/#load)
* [newtable](/vendor/lua/5.4/#newtable)
* [newthread](/vendor/lua/5.4/#newthread)
* [newuserdata](/vendor/lua/5.4/#newuserdata)
* [newuserdatauv](/vendor/lua/5.4/#newuserdatauv)
* [next](/vendor/lua/5.4/#next)
* [open\_base](/vendor/lua/5.4/#open_base)
* [open\_coroutine](/vendor/lua/5.4/#open_coroutine)
* [open\_debug](/vendor/lua/5.4/#open_debug)
* [open\_io](/vendor/lua/5.4/#open_io)
* [open\_math](/vendor/lua/5.4/#open_math)
* [open\_os](/vendor/lua/5.4/#open_os)
* [open\_package](/vendor/lua/5.4/#open_package)
* [open\_string](/vendor/lua/5.4/#open_string)
* [open\_table](/vendor/lua/5.4/#open_table)
* [open\_utf8](/vendor/lua/5.4/#open_utf8)
* [pcall](/vendor/lua/5.4/#pcall)
* [pop](/vendor/lua/5.4/#pop)
* [pushboolean](/vendor/lua/5.4/#pushboolean)
* [pushcclosure](/vendor/lua/5.4/#pushcclosure)
* [pushcfunction](/vendor/lua/5.4/#pushcfunction)
* [pushfstring](/vendor/lua/5.4/#pushfstring)
* [pushglobaltable](/vendor/lua/5.4/#pushglobaltable)
* [pushinteger](/vendor/lua/5.4/#pushinteger)
* [pushlightuserdata](/vendor/lua/5.4/#pushlightuserdata)
* [pushlstring](/vendor/lua/5.4/#pushlstring)
* [pushnil](/vendor/lua/5.4/#pushnil)
* [pushnumber](/vendor/lua/5.4/#pushnumber)
* [pushstring](/vendor/lua/5.4/#pushstring)
* [pushthread](/vendor/lua/5.4/#pushthread)
* [pushvalue](/vendor/lua/5.4/#pushvalue)
* [pushvfstring](/vendor/lua/5.4/#pushvfstring)
* [rawequal](/vendor/lua/5.4/#rawequal)
* [rawget](/vendor/lua/5.4/#rawget)
* [rawgeti](/vendor/lua/5.4/#rawgeti)
* [rawgetp](/vendor/lua/5.4/#rawgetp)
* [rawlen](/vendor/lua/5.4/#rawlen)
* [rawset](/vendor/lua/5.4/#rawset)
* [rawseti](/vendor/lua/5.4/#rawseti)
* [rawsetp](/vendor/lua/5.4/#rawsetp)
* [register](/vendor/lua/5.4/#register)
* [remove](/vendor/lua/5.4/#remove)
* [replace](/vendor/lua/5.4/#replace)
* [resetthread](/vendor/lua/5.4/#resetthread)
* [resume](/vendor/lua/5.4/#resume)
* [rotate](/vendor/lua/5.4/#rotate)
* [setallocf](/vendor/lua/5.4/#setallocf)
* [setcstacklimit](/vendor/lua/5.4/#setcstacklimit)
* [setfield](/vendor/lua/5.4/#setfield)
* [setglobal](/vendor/lua/5.4/#setglobal)
* [sethook](/vendor/lua/5.4/#sethook)
* [seti](/vendor/lua/5.4/#seti)
* [setiuservalue](/vendor/lua/5.4/#setiuservalue)
* [setlocal](/vendor/lua/5.4/#setlocal)
* [setmetatable](/vendor/lua/5.4/#setmetatable)
* [settable](/vendor/lua/5.4/#settable)
* [settop](/vendor/lua/5.4/#settop)
* [setupvalue](/vendor/lua/5.4/#setupvalue)
* [setuservalue](/vendor/lua/5.4/#setuservalue)
* [setwarnf](/vendor/lua/5.4/#setwarnf)
* [status](/vendor/lua/5.4/#status)
* [stringtonumber](/vendor/lua/5.4/#stringtonumber)
* [toboolean](/vendor/lua/5.4/#toboolean)
* [tocfunction](/vendor/lua/5.4/#tocfunction)
* [toclose](/vendor/lua/5.4/#toclose)
* [tointeger](/vendor/lua/5.4/#tointeger)
* [tolstring](/vendor/lua/5.4/#tolstring)
* [tonumber](/vendor/lua/5.4/#tonumber)
* [topointer](/vendor/lua/5.4/#topointer)
* [tostring](/vendor/lua/5.4/#tostring)
* [tothread](/vendor/lua/5.4/#tothread)
* [touserdata](/vendor/lua/5.4/#touserdata)
* [type](/vendor/lua/5.4/#type)
* [typename](/vendor/lua/5.4/#typename)
* [upvalueid](/vendor/lua/5.4/#upvalueid)
* [upvaluejoin](/vendor/lua/5.4/#upvaluejoin)
* [version](/vendor/lua/5.4/#version)
* [warning](/vendor/lua/5.4/#warning)
* [xmove](/vendor/lua/5.4/#xmove)
* [yield](/vendor/lua/5.4/#yield)



##### Related Procedures With Returns

* [L\_newstate](/vendor/lua/5.4/#L_newstate)
* [newstate](/vendor/lua/5.4/#newstate)

### [Status ¶](#Status) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L90)

```
Status :: enum i32 {
	OK        = 0, 
	YIELD     = 1, 
	ERRRUN    = 2, 
	ERRSYNTAX = 3, 
	ERRMEM    = 4, 
	ERRERR    = 5, 
	ERRFILE   = 6, 
}
```

##### Related Procedures With Returns

* [L\_error](/vendor/lua/5.4/#L_error)
* [L\_loadbuffer](/vendor/lua/5.4/#L_loadbuffer)
* [L\_loadfile](/vendor/lua/5.4/#L_loadfile)
* [L\_loadstring](/vendor/lua/5.4/#L_loadstring)
* [dump](/vendor/lua/5.4/#dump)
* [error](/vendor/lua/5.4/#error)
* [load](/vendor/lua/5.4/#load)
* [pushthread](/vendor/lua/5.4/#pushthread)
* [resetthread](/vendor/lua/5.4/#resetthread)
* [resume](/vendor/lua/5.4/#resume)
* [status](/vendor/lua/5.4/#status)
* [yield](/vendor/lua/5.4/#yield)

##### Related Constants

* [ERRERR](/vendor/lua/5.4/#ERRERR)
* [ERRFILE](/vendor/lua/5.4/#ERRFILE)
* [ERRMEM](/vendor/lua/5.4/#ERRMEM)
* [ERRRUN](/vendor/lua/5.4/#ERRRUN)
* [ERRSYNTAX](/vendor/lua/5.4/#ERRSYNTAX)
* [OK](/vendor/lua/5.4/#OK)
* [YIELD](/vendor/lua/5.4/#YIELD)

### [Type ¶](#Type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L114)

```
Type :: enum i32 {
	NONE          = -1, 
	NIL           = 0, 
	BOOLEAN       = 1, 
	LIGHTUSERDATA = 2, 
	NUMBER        = 3, 
	STRING        = 4, 
	TABLE         = 5, 
	FUNCTION      = 6, 
	USERDATA      = 7, 
	THREAD        = 8, 
}
```

##### Related Procedures With Parameters

* [typename](/vendor/lua/5.4/#typename)



##### Related Procedures With Returns

* [type](/vendor/lua/5.4/#type)

##### Related Constants

* [TBOOLEAN](/vendor/lua/5.4/#TBOOLEAN)
* [TFUNCTION](/vendor/lua/5.4/#TFUNCTION)
* [TLIGHTUSERDATA](/vendor/lua/5.4/#TLIGHTUSERDATA)
* [TNIL](/vendor/lua/5.4/#TNIL)
* [TNONE](/vendor/lua/5.4/#TNONE)
* [TNUMBER](/vendor/lua/5.4/#TNUMBER)
* [TSTRING](/vendor/lua/5.4/#TSTRING)
* [TTABLE](/vendor/lua/5.4/#TTABLE)
* [TTHREAD](/vendor/lua/5.4/#TTHREAD)
* [TUSERDATA](/vendor/lua/5.4/#TUSERDATA)

### [Unsigned ¶](#Unsigned) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L203)

```
Unsigned :: distinct u64
```

 

unsigned integer type




##### Related Procedures With Returns

* [rawlen](/vendor/lua/5.4/#rawlen)

### [WarnFunction ¶](#WarnFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L236)

```
WarnFunction :: proc "c" (ud: rawptr, msg: rawptr, tocont: i32)
```

 

\*\* Type for warning functions




##### Related Procedures With Parameters

* [setwarnf](/vendor/lua/5.4/#setwarnf)

### [Writer ¶](#Writer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L224)

```
Writer :: proc "c" (L: ^State, p: rawptr, sz: ^uint, ud: rawptr) -> i32
```

##### Related Procedures With Parameters

* [dump](/vendor/lua/5.4/#dump)

## Constants

### [AUTHORS ¶](#AUTHORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L42)

```
AUTHORS :: "R. Ierusalimschy, L. H. de Figueiredo, W. Celes"
```

### [COLIBNAME ¶](#COLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L537)

```
COLIBNAME :: "coroutine"
```

### [COPYRIGHT ¶](#COPYRIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L41)

```
COPYRIGHT :: RELEASE + "  Copyright (C) 1994-2020 Lua.org, PUC-Rio"
```

### [DBLIBNAME ¶](#DBLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L544)

```
DBLIBNAME :: "debug"
```

### [ERRERR ¶](#ERRERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L106)

```
ERRERR :: Status.ERRERR
```

### [ERRFILE ¶](#ERRFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L107)

```
ERRFILE :: Status.ERRFILE
```

### [ERRMEM ¶](#ERRMEM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L105)

```
ERRMEM :: Status.ERRMEM
```

### [ERRRUN ¶](#ERRRUN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L103)

```
ERRRUN :: Status.ERRRUN
```

### [ERRSYNTAX ¶](#ERRSYNTAX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L104)

```
ERRSYNTAX :: Status.ERRSYNTAX
```

### [EXTRASPACE ¶](#EXTRASPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L69)

```
EXTRASPACE :: size_of(rawptr)
```

 

@@ LUA\_EXTRASPACE defines the size of a raw memory area associated with
\*\* a Lua state with very fast access.
\*\* CHANGE it if you need a different size.

### [GCCOLLECT ¶](#GCCOLLECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L253)

```
GCCOLLECT :: GCWhat.COLLECT
```

### [GCCOUNT ¶](#GCCOUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L254)

```
GCCOUNT :: GCWhat.COUNT
```

### [GCCOUNTB ¶](#GCCOUNTB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L255)

```
GCCOUNTB :: GCWhat.COUNTB
```

### [GCGEN ¶](#GCGEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L260)

```
GCGEN :: GCWhat.GEN
```

### [GCINC ¶](#GCINC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L261)

```
GCINC :: GCWhat.INC
```

### [GCISRUNNING ¶](#GCISRUNNING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L259)

```
GCISRUNNING :: GCWhat.ISRUNNING
```

### [GCRESTART ¶](#GCRESTART) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L252)

```
GCRESTART :: GCWhat.RESTART
```

### [GCSETPAUSE ¶](#GCSETPAUSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L257)

```
GCSETPAUSE :: GCWhat.SETPAUSE
```

### [GCSETSTEPMUL ¶](#GCSETSTEPMUL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L258)

```
GCSETSTEPMUL :: GCWhat.SETSTEPMUL
```

### [GCSTEP ¶](#GCSTEP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L256)

```
GCSTEP :: GCWhat.STEP
```

### [GCSTOP ¶](#GCSTOP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L251)

```
GCSTOP :: GCWhat.STOP
```

### [GNAME ¶](#GNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L568)

```
GNAME :: "_G"
```

### [HOOKCALL ¶](#HOOKCALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L276)

```
HOOKCALL :: HookEvent.CALL
```

### [HOOKCOUNT ¶](#HOOKCOUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L279)

```
HOOKCOUNT :: HookEvent.COUNT
```

### [HOOKLINE ¶](#HOOKLINE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L278)

```
HOOKLINE :: HookEvent.LINE
```

### [HOOKRET ¶](#HOOKRET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L277)

```
HOOKRET :: HookEvent.RET
```

### [HOOKTAILCALL ¶](#HOOKTAILCALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L280)

```
HOOKTAILCALL :: HookEvent.TAILCALL
```

### [IDSIZE ¶](#IDSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L78)

```
IDSIZE :: 60
```

 

@@ LUA\_IDSIZE gives the maximum size for the description of the source
@@ of a function in debug information.
\*\* CHANGE it if you want a different size.

### [IOLIBNAME ¶](#IOLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L539)

```
IOLIBNAME :: "io"
```

### [LOADED\_TABLE ¶](#LOADED_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L571)

```
LOADED_TABLE :: "_LOADED"
```

 

key, in the registry, for table of loaded modules

### [LOADLIBNAME ¶](#LOADLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L545)

```
LOADLIBNAME :: "package"
```

### [LUA\_SHARED ¶](#LUA_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L11)

```
LUA_SHARED :: #config(LUA_SHARED, false)
```

### [L\_BUFFERSIZE ¶](#L_BUFFERSIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L84)

```
L_BUFFERSIZE: i32 : c.int(16 * size_of(rawptr) * size_of(Number))
```

 

@@ LUAL\_BUFFERSIZE is the buffer size used by the lauxlib buffer system.

### [L\_NUMSIZES ¶](#L_NUMSIZES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L582)

```
L_NUMSIZES :: size_of(Integer) * 16 + size_of(Number)
```

### [MASKCALL ¶](#MASKCALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L287)

```
MASKCALL :: HookMask{.CALL}
```

### [MASKCOUNT ¶](#MASKCOUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L290)

```
MASKCOUNT :: HookMask{.COUNT}
```

### [MASKLINE ¶](#MASKLINE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L289)

```
MASKLINE :: HookMask{.LINE}
```

### [MASKRET ¶](#MASKRET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L288)

```
MASKRET :: HookMask{.RET}
```

### [MATHLIBNAME ¶](#MATHLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L543)

```
MATHLIBNAME :: "math"
```

### [MAXALIGNVAL ¶](#MAXALIGNVAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L87)

```
MAXALIGNVAL :: max(align_of(Number), align_of(f64), align_of(rawptr), align_of(Integer), align_of(c.long))
```

### [MAXSTACK ¶](#MAXSTACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L61)

```
MAXSTACK :: 1000000
```

 

@@ LUAI\_MAXSTACK limits the size of the Lua stack.
\*\* CHANGE it if you need a different limit. This limit is arbitrary;
\*\* its only purpose is to stop Lua from consuming unlimited stack
\*\* space (and to reserve some numbers for pseudo-indices).
\*\* (It must fit into max(size\_t)/32.)

### [MINSTACK ¶](#MINSTACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L186)

```
MINSTACK :: 20
```

 

minimum Lua stack available to a C function

### [MULTRET ¶](#MULTRET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L49)

```
MULTRET :: -1
```

 

option for multiple returns in 'lua\_pcall' and 'lua\_call'

### [NOREF ¶](#NOREF) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L586)

```
NOREF :: -2
```

 

predefined references

### [NUMTYPES ¶](#NUMTYPES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L138)

```
NUMTYPES :: 9
```

### [OK ¶](#OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L101)

```
OK :: Status.OK
```

 

thread status

### [OPADD ¶](#OPADD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L165)

```
OPADD :: ArithOp.ADD
```

### [OPBAND ¶](#OPBAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L172)

```
OPBAND :: ArithOp.BAND
```

### [OPBNOT ¶](#OPBNOT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L178)

```
OPBNOT :: ArithOp.BNOT
```

### [OPBOR ¶](#OPBOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L173)

```
OPBOR :: ArithOp.BOR
```

### [OPBXOR ¶](#OPBXOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L174)

```
OPBXOR :: ArithOp.BXOR
```

### [OPDIV ¶](#OPDIV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L170)

```
OPDIV :: ArithOp.DIV
```

### [OPEQ ¶](#OPEQ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L180)

```
OPEQ :: CompareOp.EQ
```

### [OPIDIV ¶](#OPIDIV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L171)

```
OPIDIV :: ArithOp.IDIV
```

### [OPLE ¶](#OPLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L182)

```
OPLE :: CompareOp.LE
```

### [OPLT ¶](#OPLT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L181)

```
OPLT :: CompareOp.LT
```

### [OPMOD ¶](#OPMOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L168)

```
OPMOD :: ArithOp.MOD
```

### [OPMUL ¶](#OPMUL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L167)

```
OPMUL :: ArithOp.MUL
```

### [OPPOW ¶](#OPPOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L169)

```
OPPOW :: ArithOp.POW
```

### [OPSHL ¶](#OPSHL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L175)

```
OPSHL :: ArithOp.SHL
```

### [OPSHR ¶](#OPSHR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L176)

```
OPSHR :: ArithOp.SHR
```

### [OPSUB ¶](#OPSUB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L166)

```
OPSUB :: ArithOp.SUB
```

### [OPUNM ¶](#OPUNM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L177)

```
OPUNM :: ArithOp.UNM
```

### [OSLIBNAME ¶](#OSLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L540)

```
OSLIBNAME :: "os"
```

### [PRELOAD\_TABLE ¶](#PRELOAD_TABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L575)

```
PRELOAD_TABLE :: "_PRELOAD"
```

 

key, in the registry, for table of preloaded loaders

### [REFNIL ¶](#REFNIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L587)

```
REFNIL :: -1
```

### [REGISTRYINDEX ¶](#REGISTRYINDEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L51)

```
REGISTRYINDEX :: -MAXSTACK - 1000
```

### [RELEASE ¶](#RELEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L40)

```
RELEASE :: VERSION + "." + VERSION_RELEASE
```

### [RIDX\_GLOBALS ¶](#RIDX_GLOBALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L191)

```
RIDX_GLOBALS :: 2
```

### [RIDX\_LAST ¶](#RIDX_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L192)

```
RIDX_LAST :: RIDX_GLOBALS
```

### [RIDX\_MAINTHREAD ¶](#RIDX_MAINTHREAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L190)

```
RIDX_MAINTHREAD :: 1
```

 

predefined values in the registry

### [SIGNATURE ¶](#SIGNATURE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L46)

```
SIGNATURE :: "\x1bLua"
```

 

mark for precompiled code ('<esc>Lua')

### [STRLIBNAME ¶](#STRLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L541)

```
STRLIBNAME :: "string"
```

### [TABLIBNAME ¶](#TABLIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L538)

```
TABLIBNAME :: "table"
```

### [TBOOLEAN ¶](#TBOOLEAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L130)

```
TBOOLEAN :: Type.BOOLEAN
```

### [TFUNCTION ¶](#TFUNCTION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L135)

```
TFUNCTION :: Type.FUNCTION
```

### [TLIGHTUSERDATA ¶](#TLIGHTUSERDATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L131)

```
TLIGHTUSERDATA :: Type.LIGHTUSERDATA
```

### [TNIL ¶](#TNIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L129)

```
TNIL :: Type.NIL
```

### [TNONE ¶](#TNONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L128)

```
TNONE :: Type.NONE
```

### [TNUMBER ¶](#TNUMBER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L132)

```
TNUMBER :: Type.NUMBER
```

### [TSTRING ¶](#TSTRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L133)

```
TSTRING :: Type.STRING
```

### [TTABLE ¶](#TTABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L134)

```
TTABLE :: Type.TABLE
```

### [TTHREAD ¶](#TTHREAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L137)

```
TTHREAD :: Type.THREAD
```

### [TUSERDATA ¶](#TUSERDATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L136)

```
TUSERDATA :: Type.USERDATA
```

### [UTF8LIBNAME ¶](#UTF8LIBNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L542)

```
UTF8LIBNAME :: "utf8"
```

### [VERSION ¶](#VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L39)

```
VERSION :: "Lua " + VERSION_MAJOR + "." + VERSION_MINOR
```

### [VERSION\_MAJOR ¶](#VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L32)

```
VERSION_MAJOR :: "5"
```

### [VERSION\_MINOR ¶](#VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L33)

```
VERSION_MINOR :: "4"
```

### [VERSION\_NUM ¶](#VERSION_NUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L36)

```
VERSION_NUM :: 504
```

### [VERSION\_RELEASE ¶](#VERSION_RELEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L34)

```
VERSION_RELEASE :: "2"
```

### [VERSION\_RELEASE\_NUM ¶](#VERSION_RELEASE_NUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L37)

```
VERSION_RELEASE_NUM :: VERSION_NUM * 100 + 0
```

### [VERSUFFIX ¶](#VERSUFFIX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L535)

```
VERSUFFIX :: "_" + VERSION_MAJOR + "_" + VERSION_MINOR
```

 

version suffix for environment variable names

### [YIELD ¶](#YIELD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L102)

```
YIELD :: Status.YIELD
```

## Variables

### [ident ¶](#ident) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L329)

```
ident: [^]u8
```

 

TODO(bill): is this correct?

## Procedures

### [L\_addchar ¶](#L_addchar) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L681)

```
L_addchar :: proc "c" (B: ^L_Buffer, c: u8) {…}
```

### [L\_addgsub ¶](#L_addgsub) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L645)

```
L_addgsub :: proc "c" (b: ^L_Buffer, s, p, r: cstring) ---
```

### [L\_addlstring ¶](#L_addlstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L709)

```
L_addlstring :: proc "c" (B: ^L_Buffer, s: cstring, l: uint) ---
```

### [L\_addsize ¶](#L_addsize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L689)

```
L_addsize :: proc "c" (B: ^L_Buffer, s: uint) -> uint {…}
```

### [L\_addstring ¶](#L_addstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L710)

```
L_addstring :: proc "c" (B: ^L_Buffer, s: cstring) ---
```

### [L\_addvalue ¶](#L_addvalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L711)

```
L_addvalue :: proc "c" (B: ^L_Buffer) ---
```

### [L\_argcheck ¶](#L_argcheck) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L787)

```
L_argcheck :: proc "c" (L: ^State, cond: bool, arg: i32, extramsg: cstring) {…}
```

### [L\_argerror ¶](#L_argerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L601)

```
L_argerror :: proc "c" (L: ^State, arg: i32, extramsg: cstring) -> i32 ---
```

### [L\_argexpected ¶](#L_argexpected) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L793)

```
L_argexpected :: proc "c" (L: ^State, cond: bool, arg: i32, tname: cstring) {…}
```

### [L\_buffaddr ¶](#L_buffaddr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L677)

```
L_buffaddr :: proc "c" (bf: ^L_Buffer) -> [^]u8 {…}
```

### [L\_buffinit ¶](#L_buffinit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L707)

```
L_buffinit :: proc "c" (L: ^State, B: ^L_Buffer) ---
```

### [L\_buffinitsize ¶](#L_buffinitsize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L714)

```
L_buffinitsize :: proc "c" (L: ^State, B: ^L_Buffer, sz: uint) -> [^]u8 ---
```

### [L\_bufflen ¶](#L_bufflen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L674)

```
L_bufflen :: proc "c" (bf: ^L_Buffer) -> uint {…}
```

### [L\_buffsub ¶](#L_buffsub) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L694)

```
L_buffsub :: proc "c" (B: ^L_Buffer, s: uint) -> uint {…}
```

### [L\_callmeta ¶](#L_callmeta) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L598)

```
L_callmeta :: proc "c" (L: ^State, obj: i32, e: cstring) -> i32 ---
```

### [L\_checkany ¶](#L_checkany) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L615)

```
L_checkany :: proc "c" (L: ^State, arg: i32) ---
```

### [L\_checkinteger ¶](#L_checkinteger) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L610)

```
L_checkinteger :: proc "c" (L: ^State, arg: i32) -> Integer ---
```

### [L\_checknumber ¶](#L_checknumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L607)

```
L_checknumber :: proc "c" (L: ^State, arg: i32) -> Number ---
```

### [L\_checkoption ¶](#L_checkoption) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L625)

```
L_checkoption :: proc "c" (L: ^State, arg: i32, def: cstring, lst: [^]cstring) -> i32 ---
```

### [L\_checkstack ¶](#L_checkstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L613)

```
L_checkstack :: proc "c" (L: ^State, sz: i32, msg: cstring) ---
```

### [L\_checkstring ¶](#L_checkstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L604)

```
L_checkstring :: proc "c" (L: ^State, arg: i32, l: ^uint = nil) -> cstring ---
```

### [L\_checktype ¶](#L_checktype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L614)

```
L_checktype :: proc "c" (L: ^State, arg: i32, t: i32) ---
```

### [L\_checkudata ¶](#L_checkudata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L620)

```
L_checkudata :: proc "c" (L: ^State, ud: i32, tname: cstring) -> rawptr ---
```

### [L\_checkversion ¶](#L_checkversion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L594)

```
L_checkversion :: proc "c" (L: ^State, ver: Number = VERSION_NUM, sz: uint = L_NUMSIZES) ---
```

### [L\_dofile ¶](#L_dofile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L802)

```
L_dofile :: proc "c" (L: ^State, s: cstring) -> i32 {…}
```

### [L\_dostring ¶](#L_dostring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L806)

```
L_dostring :: proc "c" (L: ^State, s: cstring) -> i32 {…}
```

### [L\_error ¶](#L_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L623)

```
L_error :: proc "c" (L: ^State, fmt: cstring, .. args: ..any) -> Status ---
```

### [L\_execresult ¶](#L_execresult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L628)

```
L_execresult :: proc "c" (L: ^State, stat: i32) -> i32 ---
```

### [L\_fileresult ¶](#L_fileresult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L627)

```
L_fileresult :: proc "c" (L: ^State, stat: i32, fname: cstring) -> i32 ---
```

### [L\_getmetafield ¶](#L_getmetafield) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L597)

```
L_getmetafield :: proc "c" (L: ^State, obj: i32, e: cstring) -> i32 ---
```

### [L\_getmetatable ¶](#L_getmetatable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L810)

```
L_getmetatable :: proc "c" (L: ^State, n: cstring) -> i32 {…}
```

### [L\_getsubtable ¶](#L_getsubtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L650)

```
L_getsubtable :: proc "c" (L: ^State, idx: i32, fname: cstring) -> i32 ---
```

### [L\_gsub ¶](#L_gsub) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L646)

```
L_gsub :: proc "c" (L: ^State, s, p, r: cstring) -> cstring ---
```

### [L\_len ¶](#L_len) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L643)

```
L_len :: proc "c" (L: ^State, idx: i32) -> Integer ---
```

### [L\_loadbuffer ¶](#L_loadbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L638)

```
L_loadbuffer :: proc "c" (L: ^State, buff: [^]u8, sz: uint, name: cstring, mode: cstring = nil) -> Status ---
```

### [L\_loadfile ¶](#L_loadfile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L635)

```
L_loadfile :: proc "c" (L: ^State, filename: cstring, mode: cstring = nil) -> Status ---
```

### [L\_loadstring ¶](#L_loadstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L639)

```
L_loadstring :: proc "c" (L: ^State, s: cstring) -> Status ---
```

### [L\_newlib ¶](#L_newlib) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L781)

```
L_newlib :: proc(L: ^State, l: []L_Reg) {…}
```

### [L\_newlibtable ¶](#L_newlibtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L777)

```
L_newlibtable :: proc "c" (L: ^State, l: []L_Reg) {…}
```

### [L\_newmetatable ¶](#L_newmetatable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L617)

```
L_newmetatable :: proc "c" (L: ^State, tname: cstring) -> i32 ---
```

### [L\_newstate ¶](#L_newstate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L641)

```
L_newstate :: proc "c" () -> ^State ---
```

### [L\_openlibs ¶](#L_openlibs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L563)

```
L_openlibs :: proc "c" (L: ^State) ---
```

### [L\_opt ¶](#L_opt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L813)

```
L_opt :: proc "c" (L: ^State, f: $F, n: i32, d: $T) -> $$deferred_return {…}
```

### [L\_optinteger ¶](#L_optinteger) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L611)

```
L_optinteger :: proc "c" (L: ^State, arg: i32, def: Integer) -> Integer ---
```

### [L\_optnumber ¶](#L_optnumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L608)

```
L_optnumber :: proc "c" (L: ^State, arg: i32, def: Number) -> Number ---
```

### [L\_optstring ¶](#L_optstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L606)

```
L_optstring :: proc "c" (L: ^State, arg: i32, def: cstring, l: ^uint = nil) -> cstring ---
```

### [L\_prepbuffer ¶](#L_prepbuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L699)

```
L_prepbuffer :: proc "c" (B: ^L_Buffer) -> [^]u8 {…}
```

### [L\_prepbuffsize ¶](#L_prepbuffsize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L708)

```
L_prepbuffsize :: proc "c" (B: ^L_Buffer, sz: uint) -> [^]u8 ---
```

### [L\_pushresult ¶](#L_pushresult) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L712)

```
L_pushresult :: proc "c" (B: ^L_Buffer) ---
```

### [L\_pushresultsize ¶](#L_pushresultsize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L713)

```
L_pushresultsize :: proc "c" (B: ^L_Buffer, sz: uint) ---
```

### [L\_ref ¶](#L_ref) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L631)

```
L_ref :: proc "c" (L: ^State, t: i32) -> i32 ---
```

### [L\_requiref ¶](#L_requiref) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L654)

```
L_requiref :: proc "c" (L: ^State, modname: cstring, openf: CFunction, glb: i32) ---
```

### [L\_setfuncs ¶](#L_setfuncs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L648)

```
L_setfuncs :: proc "c" (L: ^State, l: [^]L_Reg, nup: i32) ---
```

### [L\_setmetatable ¶](#L_setmetatable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L618)

```
L_setmetatable :: proc "c" (L: ^State, tname: cstring) ---
```

### [L\_testudata ¶](#L_testudata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L619)

```
L_testudata :: proc "c" (L: ^State, ud: i32, tname: cstring) -> rawptr ---
```

### [L\_tostring ¶](#L_tostring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L600)

```
L_tostring :: proc "c" (L: ^State, idx: i32, len: ^uint = nil) -> cstring ---
```

### [L\_traceback ¶](#L_traceback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L652)

```
L_traceback :: proc "c" (L: ^State, L1: ^State, msg: cstring, level: i32) ---
```

### [L\_typeerror ¶](#L_typeerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L602)

```
L_typeerror :: proc "c" (L: ^State, arg: i32, tname: cstring) -> i32 ---
```

### [L\_typename ¶](#L_typename) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L799)

```
L_typename :: proc "c" (L: ^State, i: i32) -> cstring {…}
```

### [L\_unref ¶](#L_unref) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L632)

```
L_unref :: proc "c" (L: ^State, t: i32, ref: i32) ---
```

### [L\_where ¶](#L_where) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L622)

```
L_where :: proc "c" (L: ^State, lvl: i32) ---
```

### [absindex ¶](#absindex) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L350)

```
absindex :: proc "c" (L: ^State, idx: i32) -> i32 ---
```

### [arith ¶](#arith) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L389)

```
arith :: proc "c" (L: ^State, op: ArithOp) ---
```

### [atpanic ¶](#atpanic) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L341)

```
atpanic :: proc "c" (L: ^State, panicf: CFunction) -> CFunction ---
```

### [call ¶](#call) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L447)

```
call :: proc "c" (L: ^State, nargs, nresults: i32, ctx: KContext = 0, k: KFunction = nil) ---
```

### [checkstack ¶](#checkstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L356)

```
checkstack :: proc "c" (L: ^State, n: i32) -> i32 ---
```

### [close ¶](#close) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L337)

```
close :: proc "c" (L: ^State) ---
```

### [compare ¶](#compare) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L391)

```
compare :: proc "c" (L: ^State, idx1, idx2: i32, op: CompareOp) -> b32 ---
```

### [concat ¶](#concat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L496)

```
concat :: proc "c" (L: ^State, n: i32) ---
```

### [copy ¶](#copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L355)

```
copy :: proc "c" (L: ^State, fromidx, toidx: i32) ---
```

### [createtable ¶](#createtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L421)

```
createtable :: proc "c" (L: ^State, narr, nrec: i32) ---
```

### [dump ¶](#dump) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L457)

```
dump :: proc "c" (L: ^State, writer: Writer, data: rawptr, strip: b32) -> Status ---
```

### [error ¶](#error) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L492)

```
error :: proc "c" (L: ^State) -> Status ---
```

### [gc ¶](#gc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L485)

```
gc :: proc "c" (L: ^State, what: GCWhat, .. args: ..any) -> i32 ---
```

### [getallocf ¶](#getallocf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L501)

```
getallocf :: proc "c" (L: State, ud: ^rawptr) -> Alloc ---
```

### [getextraspace ¶](#getextraspace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L729)

```
getextraspace :: proc "c" (L: ^State) -> rawptr {…}
```

### [getfield ¶](#getfield) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L415)

```
getfield :: proc "c" (L: ^State, idx: i32, k: cstring) -> i32 ---
```

### [getglobal ¶](#getglobal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L413)

```
getglobal :: proc "c" (L: ^State, name: cstring) -> i32 ---
```

### [gethook ¶](#gethook) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L523)

```
gethook :: proc "c" (L: ^State) -> Hook ---
```

### [gethookcount ¶](#gethookcount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L525)

```
gethookcount :: proc "c" (L: ^State) -> i32 ---
```

### [gethookmask ¶](#gethookmask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L524)

```
gethookmask :: proc "c" (L: ^State) -> HookMask ---
```

### [geti ¶](#geti) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L416)

```
geti :: proc "c" (L: ^State, idx: i32, n: Integer) -> i32 ---
```

### [getinfo ¶](#getinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L513)

```
getinfo :: proc "c" (L: ^State, what: cstring, ar: ^Debug) -> i32 ---
```

### [getiuservalue ¶](#getiuservalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L424)

```
getiuservalue :: proc "c" (L: ^State, idx: i32, n: i32) -> i32 ---
```

### [getlocal ¶](#getlocal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L514)

```
getlocal :: proc "c" (L: ^State, ar: ^Debug, n: i32) -> cstring ---
```

### [getmetatable ¶](#getmetatable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L423)

```
getmetatable :: proc "c" (L: ^State, objindex: i32) -> i32 ---
```

### [getstack ¶](#getstack) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L512)

```
getstack :: proc "c" (L: ^State, level: i32, ar: ^Debug) -> i32 ---
```

### [gettable ¶](#gettable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L414)

```
gettable :: proc "c" (L: ^State, idx: i32) -> i32 ---
```

### [gettop ¶](#gettop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L351)

```
gettop :: proc "c" (L: ^State) -> i32 ---
```

### [getupvalue ¶](#getupvalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L516)

```
getupvalue :: proc "c" (L: ^State, funcindex: i32, n: i32) -> cstring ---
```

### [getuservalue ¶](#getuservalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L835)

```
getuservalue :: proc "c" (L: ^State, idx: i32) -> i32 {…}
```

### [insert ¶](#insert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L765)

```
insert :: proc "c" (L: ^State, idx: i32) {…}
```

### [isboolean ¶](#isboolean) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L752)

```
isboolean :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [iscfunction ¶](#iscfunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L367)

```
iscfunction :: proc "c" (L: ^State, idx: i32) -> b32 ---
```

### [isfunction ¶](#isfunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L748)

```
isfunction :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [isinteger ¶](#isinteger) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L368)

```
isinteger :: proc "c" (L: ^State, idx: i32) -> b32 ---
```

### [islightuserdata ¶](#islightuserdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L750)

```
islightuserdata :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [isnil ¶](#isnil) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L751)

```
isnil :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [isnone ¶](#isnone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L754)

```
isnone :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [isnoneornil ¶](#isnoneornil) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L755)

```
isnoneornil :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [isnumber ¶](#isnumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L365)

```
isnumber :: proc "c" (L: ^State, idx: i32) -> b32 ---
```

### [isstring ¶](#isstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L366)

```
isstring :: proc "c" (L: ^State, idx: i32) -> b32 ---
```

### [istable ¶](#istable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L749)

```
istable :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [isthread ¶](#isthread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L753)

```
isthread :: proc "c" (L: ^State, n: i32) -> bool {…}
```

### [isuserdata ¶](#isuserdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L369)

```
isuserdata :: proc "c" (L: ^State, idx: i32) -> b32 ---
```

### [isyieldable ¶](#isyieldable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L468)

```
isyieldable :: proc "c" (L: ^State) -> b32 ---
```

### [len ¶](#len) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L497)

```
len :: proc "c" (L: ^State, idx: i32) ---
```

### [load ¶](#load) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L454)

```
load :: proc "c" (L: ^State, reader: Reader, dt: rawptr, chunkname, mode: cstring) -> Status ---
```

### [newstate ¶](#newstate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L336)

```
newstate :: proc "c" (f: Alloc, ud: rawptr) -> ^State ---
```

### [newtable ¶](#newtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L735)

```
newtable :: proc "c" (L: ^State) {…}
```

### [newthread ¶](#newthread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L338)

```
newthread :: proc "c" (L: ^State) -> ^State ---
```

### [newuserdata ¶](#newuserdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L832)

```
newuserdata :: proc "c" (L: ^State, s: uint) -> rawptr {…}
```

### [newuserdatauv ¶](#newuserdatauv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L422)

```
newuserdatauv :: proc "c" (L: ^State, sz: uint, nuvalue: i32) -> rawptr ---
```

### [next ¶](#next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L494)

```
next :: proc "c" (L: ^State, idx: i32) -> i32 ---
```

### [open\_base ¶](#open_base) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L550)

```
open_base :: proc "c" (L: ^State) -> i32 ---
```

### [open\_coroutine ¶](#open_coroutine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L551)

```
open_coroutine :: proc "c" (L: ^State) -> i32 ---
```

### [open\_debug ¶](#open_debug) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L558)

```
open_debug :: proc "c" (L: ^State) -> i32 ---
```

### [open\_io ¶](#open_io) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L553)

```
open_io :: proc "c" (L: ^State) -> i32 ---
```

### [open\_math ¶](#open_math) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L557)

```
open_math :: proc "c" (L: ^State) -> i32 ---
```

### [open\_os ¶](#open_os) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L554)

```
open_os :: proc "c" (L: ^State) -> i32 ---
```

### [open\_package ¶](#open_package) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L559)

```
open_package :: proc "c" (L: ^State) -> i32 ---
```

### [open\_string ¶](#open_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L555)

```
open_string :: proc "c" (L: ^State) -> i32 ---
```

### [open\_table ¶](#open_table) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L552)

```
open_table :: proc "c" (L: ^State) -> i32 ---
```

### [open\_utf8 ¶](#open_utf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L556)

```
open_utf8 :: proc "c" (L: ^State) -> i32 ---
```

### [pcall ¶](#pcall) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L451)

```
pcall :: proc "c" (
	L:               ^State, 
	nargs, nresults: i32, 
	errfunc:         i32, 
	ctx:             KContext = 0, 
	k:               KFunction = nil, 
) -> i32 ---
```

### [pop ¶](#pop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L732)

```
pop :: proc "c" (L: ^State, n: i32) {…}
```

### [pushboolean ¶](#pushboolean) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L405)

```
pushboolean :: proc "c" (L: ^State, b: b32) ---
```

### [pushcclosure ¶](#pushcclosure) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L404)

```
pushcclosure :: proc "c" (L: ^State, fn: CFunction, n: i32) ---
```

### [pushcfunction ¶](#pushcfunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L743)

```
pushcfunction :: proc "c" (L: ^State, f: CFunction) {…}
```

### [pushfail ¶](#pushfail) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L397)

```
pushfail :: pushnil
```

### [pushfstring ¶](#pushfstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L403)

```
pushfstring :: proc "c" (L: ^State, fmt: cstring, .. args: ..any) -> cstring ---
```

### [pushglobaltable ¶](#pushglobaltable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L759)

```
pushglobaltable :: proc "c" (L: ^State) {…}
```

### [pushinteger ¶](#pushinteger) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L399)

```
pushinteger :: proc "c" (L: ^State, n: Integer) ---
```

### [pushlightuserdata ¶](#pushlightuserdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L406)

```
pushlightuserdata :: proc "c" (L: ^State, p: rawptr) ---
```

### [pushliteral ¶](#pushliteral) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L401)

```
pushliteral :: pushstring
```

### [pushlstring ¶](#pushlstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L400)

```
pushlstring :: proc "c" (L: ^State, s: cstring, len: uint) -> cstring ---
```

### [pushnil ¶](#pushnil) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L397)

```
pushnil :: proc "c" (L: ^State) ---
```

### [pushnumber ¶](#pushnumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L398)

```
pushnumber :: proc "c" (L: ^State, n: Number) ---
```

### [pushstring ¶](#pushstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L401)

```
pushstring :: proc "c" (L: ^State, s: cstring) -> cstring ---
```

### [pushthread ¶](#pushthread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L407)

```
pushthread :: proc "c" (L: ^State) -> Status ---
```

### [pushvalue ¶](#pushvalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L353)

```
pushvalue :: proc "c" (L: ^State, idx: i32) ---
```

### [pushvfstring ¶](#pushvfstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L402)

```
pushvfstring :: proc "c" (L: ^State, fmt: cstring, argp: c.va_list) -> cstring ---
```

### [rawequal ¶](#rawequal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L390)

```
rawequal :: proc "c" (L: ^State, idx1, idx2: i32) -> b32 ---
```

### [rawget ¶](#rawget) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L417)

```
rawget :: proc "c" (L: ^State, idx: i32) -> i32 ---
```

### [rawgeti ¶](#rawgeti) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L418)

```
rawgeti :: proc "c" (L: ^State, idx: i32, n: Integer) -> i32 ---
```

### [rawgetp ¶](#rawgetp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L419)

```
rawgetp :: proc "c" (L: ^State, idx: i32, p: rawptr) -> i32 ---
```

### [rawlen ¶](#rawlen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L379)

```
rawlen :: proc "c" (L: ^State, idx: i32) -> Unsigned ---
```

### [rawset ¶](#rawset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L435)

```
rawset :: proc "c" (L: ^State, idx: i32) ---
```

### [rawseti ¶](#rawseti) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L436)

```
rawseti :: proc "c" (L: ^State, idx: i32, n: Integer) ---
```

### [rawsetp ¶](#rawsetp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L437)

```
rawsetp :: proc "c" (L: ^State, idx: i32, p: rawptr) ---
```

### [register ¶](#register) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L738)

```
register :: proc "c" (L: ^State, n: cstring, f: CFunction) {…}
```

### [remove ¶](#remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L768)

```
remove :: proc "c" (L: ^State, idx: i32) {…}
```

### [replace ¶](#replace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L772)

```
replace :: proc "c" (L: ^State, idx: i32) {…}
```

### [resetthread ¶](#resetthread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L339)

```
resetthread :: proc "c" (L: ^State) -> Status ---
```

### [resume ¶](#resume) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L466)

```
resume :: proc "c" (L: ^State, from: ^State, narg: i32, nres: ^i32) -> Status ---
```

### [rotate ¶](#rotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L354)

```
rotate :: proc "c" (L: ^State, idx: i32, n: i32) ---
```

### [setallocf ¶](#setallocf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L502)

```
setallocf :: proc "c" (L: ^State, f: Alloc, ud: rawptr) ---
```

### [setcstacklimit ¶](#setcstacklimit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L527)

```
setcstacklimit :: proc "c" (L: ^State, limit: u32) -> i32 ---
```

### [setfield ¶](#setfield) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L433)

```
setfield :: proc "c" (L: ^State, idx: i32, k: cstring) ---
```

### [setglobal ¶](#setglobal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L431)

```
setglobal :: proc "c" (L: ^State, name: cstring) ---
```

### [sethook ¶](#sethook) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L522)

```
sethook :: proc "c" (L: ^State, func: Hook, mask: HookMask, count: i32) ---
```

### [seti ¶](#seti) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L434)

```
seti :: proc "c" (L: ^State, idx: i32, n: Integer) ---
```

### [setiuservalue ¶](#setiuservalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L439)

```
setiuservalue :: proc "c" (L: ^State, idx: i32, n: i32) -> i32 ---
```

### [setlocal ¶](#setlocal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L515)

```
setlocal :: proc "c" (L: ^State, ar: ^Debug, n: i32) -> cstring ---
```

### [setmetatable ¶](#setmetatable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L438)

```
setmetatable :: proc "c" (L: ^State, objindex: i32) -> i32 ---
```

### [settable ¶](#settable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L432)

```
settable :: proc "c" (L: ^State, idx: i32) ---
```

### [settop ¶](#settop) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L352)

```
settop :: proc "c" (L: ^State, idx: i32) ---
```

### [setupvalue ¶](#setupvalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L517)

```
setupvalue :: proc "c" (L: ^State, funcindex: i32, n: i32) -> cstring ---
```

### [setuservalue ¶](#setuservalue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L838)

```
setuservalue :: proc "c" (L: ^State, idx: i32) -> i32 {…}
```

### [setwarnf ¶](#setwarnf) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L475)

```
setwarnf :: proc "c" (L: ^State, f: WarnFunction, ud: rawptr) ---
```

### [status ¶](#status) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L467)

```
status :: proc "c" (L: ^State) -> Status ---
```

### [stringtonumber ¶](#stringtonumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L499)

```
stringtonumber :: proc "c" (L: ^State, s: cstring) -> uint ---
```

### [toboolean ¶](#toboolean) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L377)

```
toboolean :: proc "c" (L: ^State, idx: i32) -> b32 ---
```

### [tocfunction ¶](#tocfunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L380)

```
tocfunction :: proc "c" (L: ^State, idx: i32) -> CFunction ---
```

### [toclose ¶](#toclose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L504)

```
toclose :: proc "c" (L: ^State, idx: i32) ---
```

### [tointeger ¶](#tointeger) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L376)

```
tointeger :: proc "c" (L: ^State, idx: i32, isnum: ^b32 = nil) -> Integer ---
```

### [tolstring ¶](#tolstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L378)

```
tolstring :: proc "c" (L: ^State, idx: i32, len: ^uint) -> cstring ---
```

### [tonumber ¶](#tonumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L374)

```
tonumber :: proc "c" (L: ^State, idx: i32, isnum: ^b32 = nil) -> Number ---
```

### [topointer ¶](#topointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L383)

```
topointer :: proc "c" (L: ^State, idx: i32) -> rawptr ---
```

### [tostring ¶](#tostring) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L762)

```
tostring :: proc "c" (L: ^State, i: i32) -> cstring {…}
```

### [tothread ¶](#tothread) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L382)

```
tothread :: proc "c" (L: ^State, idx: i32) -> ^State ---
```

### [touserdata ¶](#touserdata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L381)

```
touserdata :: proc "c" (L: ^State, idx: i32) -> rawptr ---
```

### [type ¶](#type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L370)

```
type :: proc "c" (L: ^State, idx: i32) -> Type ---
```

### [typename ¶](#typename) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L371)

```
typename :: proc "c" (L: ^State, tp: Type) -> cstring ---
```

### [upvalueid ¶](#upvalueid) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L519)

```
upvalueid :: proc "c" (L: ^State, fidx, n: i32) -> rawptr ---
```

### [upvaluejoin ¶](#upvaluejoin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L520)

```
upvaluejoin :: proc "c" (L: ^State, fidx1, n1, fidx2, n2: i32) ---
```

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L343)

```
version :: proc "c" (L: ^State) -> Number ---
```

### [warning ¶](#warning) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L476)

```
warning :: proc "c" (L: ^State, msg: string, tocont: b32) ---
```

### [xmove ¶](#xmove) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L358)

```
xmove :: proc "c" (from, to: ^State, n: i32) ---
```

### [yield ¶](#yield) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L465)

```
yield :: proc "c" (L: ^State, nresults: i32, ctx: KContext = 0, k: KFunction = nil) -> Status ---
```

## Procedure Groups

This section is empty.

## `#config` values

### [LUA\_SHARED ¶](#LUA_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin#L11)

```
LUA_SHARED :: #config(LUA_SHARED, false)
```

## Source Files

* [lua.odin](https://github.com/odin-lang/Odin/tree/master/vendor/lua/5.4/lua.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:53.013110300 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [Alloc](#Alloc)
    + [ArithOp](#ArithOp)
    + [CFunction](#CFunction)
    + [CompareOp](#CompareOp)
    + [Debug](#Debug)
    + [GCWhat](#GCWhat)
    + [Hook](#Hook)
    + [HookEvent](#HookEvent)
    + [HookMask](#HookMask)
    + [Integer](#Integer)
    + [KContext](#KContext)
    + [KFunction](#KFunction)
    + [L\_Buffer](#L_Buffer)
    + [L\_Reg](#L_Reg)
    + [Number](#Number)
    + [Reader](#Reader)
    + [State](#State)
    + [Status](#Status)
    + [Type](#Type)
    + [Unsigned](#Unsigned)
    + [WarnFunction](#WarnFunction)
    + [Writer](#Writer)
  * [Constants](#pkg-Constants)
    + [AUTHORS](#AUTHORS)
    + [COLIBNAME](#COLIBNAME)
    + [COPYRIGHT](#COPYRIGHT)
    + [DBLIBNAME](#DBLIBNAME)
    + [ERRERR](#ERRERR)
    + [ERRFILE](#ERRFILE)
    + [ERRMEM](#ERRMEM)
    + [ERRRUN](#ERRRUN)
    + [ERRSYNTAX](#ERRSYNTAX)
    + [EXTRASPACE](#EXTRASPACE)
    + [GCCOLLECT](#GCCOLLECT)
    + [GCCOUNT](#GCCOUNT)
    + [GCCOUNTB](#GCCOUNTB)
    + [GCGEN](#GCGEN)
    + [GCINC](#GCINC)
    + [GCISRUNNING](#GCISRUNNING)
    + [GCRESTART](#GCRESTART)
    + [GCSETPAUSE](#GCSETPAUSE)
    + [GCSETSTEPMUL](#GCSETSTEPMUL)
    + [GCSTEP](#GCSTEP)
    + [GCSTOP](#GCSTOP)
    + [GNAME](#GNAME)
    + [HOOKCALL](#HOOKCALL)
    + [HOOKCOUNT](#HOOKCOUNT)
    + [HOOKLINE](#HOOKLINE)
    + [HOOKRET](#HOOKRET)
    + [HOOKTAILCALL](#HOOKTAILCALL)
    + [IDSIZE](#IDSIZE)
    + [IOLIBNAME](#IOLIBNAME)
    + [LOADED\_TABLE](#LOADED_TABLE)
    + [LOADLIBNAME](#LOADLIBNAME)
    + [LUA\_SHARED](#LUA_SHARED)
    + [L\_BUFFERSIZE](#L_BUFFERSIZE)
    + [L\_NUMSIZES](#L_NUMSIZES)
    + [MASKCALL](#MASKCALL)
    + [MASKCOUNT](#MASKCOUNT)
    + [MASKLINE](#MASKLINE)
    + [MASKRET](#MASKRET)
    + [MATHLIBNAME](#MATHLIBNAME)
    + [MAXALIGNVAL](#MAXALIGNVAL)
    + [MAXSTACK](#MAXSTACK)
    + [MINSTACK](#MINSTACK)
    + [MULTRET](#MULTRET)
    + [NOREF](#NOREF)
    + [NUMTYPES](#NUMTYPES)
    + [OK](#OK)
    + [OPADD](#OPADD)
    + [OPBAND](#OPBAND)
    + [OPBNOT](#OPBNOT)
    + [OPBOR](#OPBOR)
    + [OPBXOR](#OPBXOR)
    + [OPDIV](#OPDIV)
    + [OPEQ](#OPEQ)
    + [OPIDIV](#OPIDIV)
    + [OPLE](#OPLE)
    + [OPLT](#OPLT)
    + [OPMOD](#OPMOD)
    + [OPMUL](#OPMUL)
    + [OPPOW](#OPPOW)
    + [OPSHL](#OPSHL)
    + [OPSHR](#OPSHR)
    + [OPSUB](#OPSUB)
    + [OPUNM](#OPUNM)
    + [OSLIBNAME](#OSLIBNAME)
    + [PRELOAD\_TABLE](#PRELOAD_TABLE)
    + [REFNIL](#REFNIL)
    + [REGISTRYINDEX](#REGISTRYINDEX)
    + [RELEASE](#RELEASE)
    + [RIDX\_GLOBALS](#RIDX_GLOBALS)
    + [RIDX\_LAST](#RIDX_LAST)
    + [RIDX\_MAINTHREAD](#RIDX_MAINTHREAD)
    + [SIGNATURE](#SIGNATURE)
    + [STRLIBNAME](#STRLIBNAME)
    + [TABLIBNAME](#TABLIBNAME)
    + [TBOOLEAN](#TBOOLEAN)
    + [TFUNCTION](#TFUNCTION)
    + [TLIGHTUSERDATA](#TLIGHTUSERDATA)
    + [TNIL](#TNIL)
    + [TNONE](#TNONE)
    + [TNUMBER](#TNUMBER)
    + [TSTRING](#TSTRING)
    + [TTABLE](#TTABLE)
    + [TTHREAD](#TTHREAD)
    + [TUSERDATA](#TUSERDATA)
    + [UTF8LIBNAME](#UTF8LIBNAME)
    + [VERSION](#VERSION)
    + [VERSION\_MAJOR](#VERSION_MAJOR)
    + [VERSION\_MINOR](#VERSION_MINOR)
    + [VERSION\_NUM](#VERSION_NUM)
    + [VERSION\_RELEASE](#VERSION_RELEASE)
    + [VERSION\_RELEASE\_NUM](#VERSION_RELEASE_NUM)
    + [VERSUFFIX](#VERSUFFIX)
    + [YIELD](#YIELD)
  * [Variables](#pkg-Variables)
    + [ident](#ident)
  * [Procedures](#pkg-Procedures)
    + [L\_addchar](#L_addchar)
    + [L\_addgsub](#L_addgsub)
    + [L\_addlstring](#L_addlstring)
    + [L\_addsize](#L_addsize)
    + [L\_addstring](#L_addstring)
    + [L\_addvalue](#L_addvalue)
    + [L\_argcheck](#L_argcheck)
    + [L\_argerror](#L_argerror)
    + [L\_argexpected](#L_argexpected)
    + [L\_buffaddr](#L_buffaddr)
    + [L\_buffinit](#L_buffinit)
    + [L\_buffinitsize](#L_buffinitsize)
    + [L\_bufflen](#L_bufflen)
    + [L\_buffsub](#L_buffsub)
    + [L\_callmeta](#L_callmeta)
    + [L\_checkany](#L_checkany)
    + [L\_checkinteger](#L_checkinteger)
    + [L\_checknumber](#L_checknumber)
    + [L\_checkoption](#L_checkoption)
    + [L\_checkstack](#L_checkstack)
    + [L\_checkstring](#L_checkstring)
    + [L\_checktype](#L_checktype)
    + [L\_checkudata](#L_checkudata)
    + [L\_checkversion](#L_checkversion)
    + [L\_dofile](#L_dofile)
    + [L\_dostring](#L_dostring)
    + [L\_error](#L_error)
    + [L\_execresult](#L_execresult)
    + [L\_fileresult](#L_fileresult)
    + [L\_getmetafield](#L_getmetafield)
    + [L\_getmetatable](#L_getmetatable)
    + [L\_getsubtable](#L_getsubtable)
    + [L\_gsub](#L_gsub)
    + [L\_len](#L_len)
    + [L\_loadbuffer](#L_loadbuffer)
    + [L\_loadfile](#L_loadfile)
    + [L\_loadstring](#L_loadstring)
    + [L\_newlib](#L_newlib)
    + [L\_newlibtable](#L_newlibtable)
    + [L\_newmetatable](#L_newmetatable)
    + [L\_newstate](#L_newstate)
    + [L\_openlibs](#L_openlibs)
    + [L\_opt](#L_opt)
    + [L\_optinteger](#L_optinteger)
    + [L\_optnumber](#L_optnumber)
    + [L\_optstring](#L_optstring)
    + [L\_prepbuffer](#L_prepbuffer)
    + [L\_prepbuffsize](#L_prepbuffsize)
    + [L\_pushresult](#L_pushresult)
    + [L\_pushresultsize](#L_pushresultsize)
    + [L\_ref](#L_ref)
    + [L\_requiref](#L_requiref)
    + [L\_setfuncs](#L_setfuncs)
    + [L\_setmetatable](#L_setmetatable)
    + [L\_testudata](#L_testudata)
    + [L\_tostring](#L_tostring)
    + [L\_traceback](#L_traceback)
    + [L\_typeerror](#L_typeerror)
    + [L\_typename](#L_typename)
    + [L\_unref](#L_unref)
    + [L\_where](#L_where)
    + [absindex](#absindex)
    + [arith](#arith)
    + [atpanic](#atpanic)
    + [call](#call)
    + [checkstack](#checkstack)
    + [close](#close)
    + [compare](#compare)
    + [concat](#concat)
    + [copy](#copy)
    + [createtable](#createtable)
    + [dump](#dump)
    + [error](#error)
    + [gc](#gc)
    + [getallocf](#getallocf)
    + [getextraspace](#getextraspace)
    + [getfield](#getfield)
    + [getglobal](#getglobal)
    + [gethook](#gethook)
    + [gethookcount](#gethookcount)
    + [gethookmask](#gethookmask)
    + [geti](#geti)
    + [getinfo](#getinfo)
    + [getiuservalue](#getiuservalue)
    + [getlocal](#getlocal)
    + [getmetatable](#getmetatable)
    + [getstack](#getstack)
    + [gettable](#gettable)
    + [gettop](#gettop)
    + [getupvalue](#getupvalue)
    + [getuservalue](#getuservalue)
    + [insert](#insert)
    + [isboolean](#isboolean)
    + [iscfunction](#iscfunction)
    + [isfunction](#isfunction)
    + [isinteger](#isinteger)
    + [islightuserdata](#islightuserdata)
    + [isnil](#isnil)
    + [isnone](#isnone)
    + [isnoneornil](#isnoneornil)
    + [isnumber](#isnumber)
    + [isstring](#isstring)
    + [istable](#istable)
    + [isthread](#isthread)
    + [isuserdata](#isuserdata)
    + [isyieldable](#isyieldable)
    + [len](#len)
    + [load](#load)
    + [newstate](#newstate)
    + [newtable](#newtable)
    + [newthread](#newthread)
    + [newuserdata](#newuserdata)
    + [newuserdatauv](#newuserdatauv)
    + [next](#next)
    + [open\_base](#open_base)
    + [open\_coroutine](#open_coroutine)
    + [open\_debug](#open_debug)
    + [open\_io](#open_io)
    + [open\_math](#open_math)
    + [open\_os](#open_os)
    + [open\_package](#open_package)
    + [open\_string](#open_string)
    + [open\_table](#open_table)
    + [open\_utf8](#open_utf8)
    + [pcall](#pcall)
    + [pop](#pop)
    + [pushboolean](#pushboolean)
    + [pushcclosure](#pushcclosure)
    + [pushcfunction](#pushcfunction)
    + [pushfail](#pushfail)
    + [pushfstring](#pushfstring)
    + [pushglobaltable](#pushglobaltable)
    + [pushinteger](#pushinteger)
    + [pushlightuserdata](#pushlightuserdata)
    + [pushliteral](#pushliteral)
    + [pushlstring](#pushlstring)
    + [pushnil](#pushnil)
    + [pushnumber](#pushnumber)
    + [pushstring](#pushstring)
    + [pushthread](#pushthread)
    + [pushvalue](#pushvalue)
    + [pushvfstring](#pushvfstring)
    + [rawequal](#rawequal)
    + [rawget](#rawget)
    + [rawgeti](#rawgeti)
    + [rawgetp](#rawgetp)
    + [rawlen](#rawlen)
    + [rawset](#rawset)
    + [rawseti](#rawseti)
    + [rawsetp](#rawsetp)
    + [register](#register)
    + [remove](#remove)
    + [replace](#replace)
    + [resetthread](#resetthread)
    + [resume](#resume)
    + [rotate](#rotate)
    + [setallocf](#setallocf)
    + [setcstacklimit](#setcstacklimit)
    + [setfield](#setfield)
    + [setglobal](#setglobal)
    + [sethook](#sethook)
    + [seti](#seti)
    + [setiuservalue](#setiuservalue)
    + [setlocal](#setlocal)
    + [setmetatable](#setmetatable)
    + [settable](#settable)
    + [settop](#settop)
    + [setupvalue](#setupvalue)
    + [setuservalue](#setuservalue)
    + [setwarnf](#setwarnf)
    + [status](#status)
    + [stringtonumber](#stringtonumber)
    + [toboolean](#toboolean)
    + [tocfunction](#tocfunction)
    + [toclose](#toclose)
    + [tointeger](#tointeger)
    + [tolstring](#tolstring)
    + [tonumber](#tonumber)
    + [topointer](#topointer)
    + [tostring](#tostring)
    + [tothread](#tothread)
    + [touserdata](#touserdata)
    + [type](#type)
    + [typename](#typename)
    + [upvalueid](#upvalueid)
    + [upvaluejoin](#upvaluejoin)
    + [version](#version)
    + [warning](#warning)
    + [xmove](#xmove)
    + [yield](#yield)
  * [`#config` values](#pkg-`#config` values)
    + [LUA\_SHARED](#LUA_SHARED)
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