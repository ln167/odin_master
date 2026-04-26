package glfw/bindings - pkg.odin-lang.org 






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



Current Package: *[glfw\_bindings](/vendor/glfw/bindings)*

  

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
2. [glfw](/vendor/glfw)
3. [bindings](/vendor/glfw/bindings)

# package vendor:glfw/bindings [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings)

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (31)

* [AllocateProc](#AllocateProc)
* [Allocator](#Allocator)
* [CharModsProc](#CharModsProc)
* [CharProc](#CharProc)
* [CursorEnterProc](#CursorEnterProc)
* [CursorHandle](#CursorHandle)
* [CursorPosProc](#CursorPosProc)
* [DeallocateProc](#DeallocateProc)
* [DropProc](#DropProc)
* [ErrorProc](#ErrorProc)
* [FramebufferSizeProc](#FramebufferSizeProc)
* [GamepadState](#GamepadState)
* [GammaRamp](#GammaRamp)
* [Image](#Image)
* [JoystickProc](#JoystickProc)
* [KeyProc](#KeyProc)
* [MonitorHandle](#MonitorHandle)
* [MonitorProc](#MonitorProc)
* [MouseButtonProc](#MouseButtonProc)
* [ReallocateProc](#ReallocateProc)
* [ScrollProc](#ScrollProc)
* [VidMode](#VidMode)
* [WindowCloseProc](#WindowCloseProc)
* [WindowContentScaleProc](#WindowContentScaleProc)
* [WindowFocusProc](#WindowFocusProc)
* [WindowHandle](#WindowHandle)
* [WindowIconifyProc](#WindowIconifyProc)
* [WindowMaximizeProc](#WindowMaximizeProc)
* [WindowPosProc](#WindowPosProc)
* [WindowRefreshProc](#WindowRefreshProc)
* [WindowSizeProc](#WindowSizeProc)

Constants (1)

* [GLFW\_SHARED](#GLFW_SHARED)

Variables (0)

This section is empty.

Procedures (124)

* [CreateCursor](#CreateCursor)
* [CreateStandardCursor](#CreateStandardCursor)
* [CreateWindow](#CreateWindow)
* [CreateWindowSurface](#CreateWindowSurface)
* [DefaultWindowHints](#DefaultWindowHints)
* [DestroyCursor](#DestroyCursor)
* [DestroyWindow](#DestroyWindow)
* [ExtensionSupported](#ExtensionSupported)
* [FocusWindow](#FocusWindow)
* [GetClipboardString](#GetClipboardString)
* [GetCurrentContext](#GetCurrentContext)
* [GetCursorPos](#GetCursorPos)
* [GetError](#GetError)
* [GetFramebufferSize](#GetFramebufferSize)
* [GetGamepadName](#GetGamepadName)
* [GetGamepadState](#GetGamepadState)
* [GetGammaRamp](#GetGammaRamp)
* [GetInputMode](#GetInputMode)
* [GetInstanceProcAddress](#GetInstanceProcAddress)
* [GetJoystickAxes](#GetJoystickAxes)
* [GetJoystickButtons](#GetJoystickButtons)
* [GetJoystickGUID](#GetJoystickGUID)
* [GetJoystickHats](#GetJoystickHats)
* [GetJoystickName](#GetJoystickName)
* [GetJoystickUserPointer](#GetJoystickUserPointer)
* [GetKey](#GetKey)
* [GetKeyName](#GetKeyName)
* [GetKeyScancode](#GetKeyScancode)
* [GetMonitorContentScale](#GetMonitorContentScale)
* [GetMonitorName](#GetMonitorName)
* [GetMonitorPhysicalSize](#GetMonitorPhysicalSize)
* [GetMonitorPos](#GetMonitorPos)
* [GetMonitorUserPointer](#GetMonitorUserPointer)
* [GetMonitorWorkarea](#GetMonitorWorkarea)
* [GetMonitors](#GetMonitors)
* [GetMouseButton](#GetMouseButton)
* [GetPhysicalDevicePresentationSupport](#GetPhysicalDevicePresentationSupport)
* [GetPlatform](#GetPlatform)
* [GetPrimaryMonitor](#GetPrimaryMonitor)
* [GetProcAddress](#GetProcAddress)
* [GetRequiredInstanceExtensions](#GetRequiredInstanceExtensions)
* [GetTime](#GetTime)
* [GetTimerFrequency](#GetTimerFrequency)
* [GetTimerValue](#GetTimerValue)
* [GetVersion](#GetVersion)
* [GetVersionString](#GetVersionString)
* [GetVideoMode](#GetVideoMode)
* [GetVideoModes](#GetVideoModes)
* [GetWindowAttrib](#GetWindowAttrib)
* [GetWindowContentScale](#GetWindowContentScale)
* [GetWindowFrameSize](#GetWindowFrameSize)
* [GetWindowMonitor](#GetWindowMonitor)
* [GetWindowOpacity](#GetWindowOpacity)
* [GetWindowPos](#GetWindowPos)
* [GetWindowSize](#GetWindowSize)
* [GetWindowTitle](#GetWindowTitle)
* [GetWindowUserPointer](#GetWindowUserPointer)
* [HideWindow](#HideWindow)
* [IconifyWindow](#IconifyWindow)
* [Init](#Init)
* [InitAllocator](#InitAllocator)
* [InitHint](#InitHint)
* [InitVulkanLoader](#InitVulkanLoader)
* [JoystickIsGamepad](#JoystickIsGamepad)
* [JoystickPresent](#JoystickPresent)
* [MakeContextCurrent](#MakeContextCurrent)
* [MaximizeWindow](#MaximizeWindow)
* [PlatformSupported](#PlatformSupported)
* [PollEvents](#PollEvents)
* [PostEmptyEvent](#PostEmptyEvent)
* [RawMouseMotionSupported](#RawMouseMotionSupported)
* [RequestWindowAttention](#RequestWindowAttention)
* [RestoreWindow](#RestoreWindow)
* [SetCharCallback](#SetCharCallback)
* [SetCharModsCallback](#SetCharModsCallback)
* [SetClipboardString](#SetClipboardString)
* [SetCursor](#SetCursor)
* [SetCursorEnterCallback](#SetCursorEnterCallback)
* [SetCursorPos](#SetCursorPos)
* [SetCursorPosCallback](#SetCursorPosCallback)
* [SetDropCallback](#SetDropCallback)
* [SetErrorCallback](#SetErrorCallback)
* [SetFramebufferSizeCallback](#SetFramebufferSizeCallback)
* [SetGamma](#SetGamma)
* [SetGammaRamp](#SetGammaRamp)
* [SetInputMode](#SetInputMode)
* [SetJoystickCallback](#SetJoystickCallback)
* [SetJoystickUserPointer](#SetJoystickUserPointer)
* [SetKeyCallback](#SetKeyCallback)
* [SetMonitorCallback](#SetMonitorCallback)
* [SetMonitorUserPointer](#SetMonitorUserPointer)
* [SetMouseButtonCallback](#SetMouseButtonCallback)
* [SetScrollCallback](#SetScrollCallback)
* [SetTime](#SetTime)
* [SetWindowAspectRatio](#SetWindowAspectRatio)
* [SetWindowAttrib](#SetWindowAttrib)
* [SetWindowCloseCallback](#SetWindowCloseCallback)
* [SetWindowContentScaleCallback](#SetWindowContentScaleCallback)
* [SetWindowFocusCallback](#SetWindowFocusCallback)
* [SetWindowIcon](#SetWindowIcon)
* [SetWindowIconifyCallback](#SetWindowIconifyCallback)
* [SetWindowMaximizeCallback](#SetWindowMaximizeCallback)
* [SetWindowMonitor](#SetWindowMonitor)
* [SetWindowOpacity](#SetWindowOpacity)
* [SetWindowPos](#SetWindowPos)
* [SetWindowPosCallback](#SetWindowPosCallback)
* [SetWindowRefreshCallback](#SetWindowRefreshCallback)
* [SetWindowShouldClose](#SetWindowShouldClose)
* [SetWindowSize](#SetWindowSize)
* [SetWindowSizeCallback](#SetWindowSizeCallback)
* [SetWindowSizeLimits](#SetWindowSizeLimits)
* [SetWindowTitle](#SetWindowTitle)
* [SetWindowUserPointer](#SetWindowUserPointer)
* [ShowWindow](#ShowWindow)
* [SwapBuffers](#SwapBuffers)
* [SwapInterval](#SwapInterval)
* [Terminate](#Terminate)
* [UpdateGamepadMappings](#UpdateGamepadMappings)
* [VulkanSupported](#VulkanSupported)
* [WaitEvents](#WaitEvents)
* [WaitEventsTimeout](#WaitEventsTimeout)
* [WindowHint](#WindowHint)
* [WindowHintString](#WindowHintString)
* [WindowShouldClose](#WindowShouldClose)

Procedure Groups (0)

This section is empty.

`#config` values (1)

* [GLFW\_SHARED](#GLFW_SHARED)

## Types

### [AllocateProc ¶](#AllocateProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L64)

```
AllocateProc :: proc "c" (size: uint, user: rawptr) -> rawptr
```

### [Allocator ¶](#Allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L33)

```
Allocator :: struct {
	allocate:   AllocateProc,
	reallocate: ReallocateProc,
	deallocate: DeallocateProc,
	user:       rawptr,
}
```

##### Related Procedures With Parameters

* [InitAllocator](/vendor/glfw/bindings/#InitAllocator)

### [CharModsProc ¶](#CharModsProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L58)

```
CharModsProc :: proc "c" (window: WindowHandle, codepoint: rune, mods: i32)
```

##### Related Procedures With Parameters

* [SetCharModsCallback](/vendor/glfw/bindings/#SetCharModsCallback)

### [CharProc ¶](#CharProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L57)

```
CharProc :: proc "c" (window: WindowHandle, codepoint: rune)
```

##### Related Procedures With Parameters

* [SetCharCallback](/vendor/glfw/bindings/#SetCharCallback)

### [CursorEnterProc ¶](#CursorEnterProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L59)

```
CursorEnterProc :: proc "c" (window: WindowHandle, entered: i32)
```

##### Related Procedures With Parameters

* [SetCursorEnterCallback](/vendor/glfw/bindings/#SetCursorEnterCallback)

### [CursorHandle ¶](#CursorHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L7)

```
CursorHandle :: distinct rawptr
```

##### Related Procedures With Parameters

* [DestroyCursor](/vendor/glfw/bindings/#DestroyCursor)
* [SetCursor](/vendor/glfw/bindings/#SetCursor)



##### Related Procedures With Returns

* [CreateCursor](/vendor/glfw/bindings/#CreateCursor)
* [CreateStandardCursor](/vendor/glfw/bindings/#CreateStandardCursor)

### [CursorPosProc ¶](#CursorPosProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L55)

```
CursorPosProc :: proc "c" (window: WindowHandle, xpos, ypos: f64)
```

##### Related Procedures With Parameters

* [SetCursorPosCallback](/vendor/glfw/bindings/#SetCursorPosCallback)

### [DeallocateProc ¶](#DeallocateProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L66)

```
DeallocateProc :: proc "c" (block: rawptr, user: rawptr)
```

### [DropProc ¶](#DropProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L50)

```
DropProc :: proc "c" (window: WindowHandle, count: i32, paths: [^]cstring)
```

##### Related Procedures With Parameters

* [SetDropCallback](/vendor/glfw/bindings/#SetDropCallback)

### [ErrorProc ¶](#ErrorProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L62)

```
ErrorProc :: proc "c" (error: i32, description: cstring)
```

##### Related Procedures With Parameters

* [SetErrorCallback](/vendor/glfw/bindings/#SetErrorCallback)

### [FramebufferSizeProc ¶](#FramebufferSizeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L49)

```
FramebufferSizeProc :: proc "c" (window: WindowHandle, width, height: i32)
```

##### Related Procedures With Parameters

* [SetFramebufferSizeCallback](/vendor/glfw/bindings/#SetFramebufferSizeCallback)

### [GamepadState ¶](#GamepadState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L28)

```
GamepadState :: struct {
	buttons: [15]u8,
	axes:    [6]f32,
}
```

##### Related Procedures With Parameters

* [GetGamepadState](/vendor/glfw/bindings/#GetGamepadState)

### [GammaRamp ¶](#GammaRamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L18)

```
GammaRamp :: struct {
	red:   [^]u16,
	green: [^]u16,
	blue:  [^]u16,
	size:  u32,
}
```

##### Related Procedures With Parameters

* [SetGammaRamp](/vendor/glfw/bindings/#SetGammaRamp)



##### Related Procedures With Returns

* [GetGammaRamp](/vendor/glfw/bindings/#GetGammaRamp)

### [Image ¶](#Image) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L23)

```
Image :: struct {
	width:  i32,
	height: i32,
	pixels: [^]u8,
}
```

##### Related Procedures With Parameters

* [CreateCursor](/vendor/glfw/bindings/#CreateCursor)
* [SetWindowIcon](/vendor/glfw/bindings/#SetWindowIcon)

### [JoystickProc ¶](#JoystickProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L60)

```
JoystickProc :: proc "c" (joy, event: i32)
```

##### Related Procedures With Parameters

* [SetJoystickCallback](/vendor/glfw/bindings/#SetJoystickCallback)

### [KeyProc ¶](#KeyProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L53)

```
KeyProc :: proc "c" (window: WindowHandle, key, scancode, action, mods: i32)
```

##### Related Procedures With Parameters

* [SetKeyCallback](/vendor/glfw/bindings/#SetKeyCallback)

### [MonitorHandle ¶](#MonitorHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L6)

```
MonitorHandle :: distinct rawptr
```

##### Related Procedures With Parameters

* [CreateWindow](/vendor/glfw/bindings/#CreateWindow)
* [GetGammaRamp](/vendor/glfw/bindings/#GetGammaRamp)
* [GetMonitorContentScale](/vendor/glfw/bindings/#GetMonitorContentScale)
* [GetMonitorName](/vendor/glfw/bindings/#GetMonitorName)
* [GetMonitorPhysicalSize](/vendor/glfw/bindings/#GetMonitorPhysicalSize)
* [GetMonitorPos](/vendor/glfw/bindings/#GetMonitorPos)
* [GetMonitorUserPointer](/vendor/glfw/bindings/#GetMonitorUserPointer)
* [GetMonitorWorkarea](/vendor/glfw/bindings/#GetMonitorWorkarea)
* [GetVideoMode](/vendor/glfw/bindings/#GetVideoMode)
* [GetVideoModes](/vendor/glfw/bindings/#GetVideoModes)
* [SetGamma](/vendor/glfw/bindings/#SetGamma)
* [SetGammaRamp](/vendor/glfw/bindings/#SetGammaRamp)
* [SetMonitorUserPointer](/vendor/glfw/bindings/#SetMonitorUserPointer)
* [SetWindowMonitor](/vendor/glfw/bindings/#SetWindowMonitor)



##### Related Procedures With Returns

* [GetMonitors](/vendor/glfw/bindings/#GetMonitors)
* [GetPrimaryMonitor](/vendor/glfw/bindings/#GetPrimaryMonitor)
* [GetWindowMonitor](/vendor/glfw/bindings/#GetWindowMonitor)

### [MonitorProc ¶](#MonitorProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L51)

```
MonitorProc :: proc "c" (monitor: MonitorHandle, event: i32)
```

##### Related Procedures With Parameters

* [SetMonitorCallback](/vendor/glfw/bindings/#SetMonitorCallback)

### [MouseButtonProc ¶](#MouseButtonProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L54)

```
MouseButtonProc :: proc "c" (window: WindowHandle, button, action, mods: i32)
```

##### Related Procedures With Parameters

* [SetMouseButtonCallback](/vendor/glfw/bindings/#SetMouseButtonCallback)

### [ReallocateProc ¶](#ReallocateProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L65)

```
ReallocateProc :: proc "c" (block: rawptr, size: uint, user: rawptr) -> rawptr
```

### [ScrollProc ¶](#ScrollProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L56)

```
ScrollProc :: proc "c" (window: WindowHandle, xoffset, yoffset: f64)
```

##### Related Procedures With Parameters

* [SetScrollCallback](/vendor/glfw/bindings/#SetScrollCallback)

### [VidMode ¶](#VidMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L9)

```
VidMode :: struct {
	width:        i32,
	height:       i32,
	red_bits:     i32,
	green_bits:   i32,
	blue_bits:    i32,
	refresh_rate: i32,
}
```

##### Related Procedures With Returns

* [GetVideoMode](/vendor/glfw/bindings/#GetVideoMode)
* [GetVideoModes](/vendor/glfw/bindings/#GetVideoModes)

### [WindowCloseProc ¶](#WindowCloseProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L44)

```
WindowCloseProc :: proc "c" (window: WindowHandle)
```

##### Related Procedures With Parameters

* [SetWindowCloseCallback](/vendor/glfw/bindings/#SetWindowCloseCallback)

### [WindowContentScaleProc ¶](#WindowContentScaleProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L48)

```
WindowContentScaleProc :: proc "c" (window: WindowHandle, xscale, yscale: f32)
```

##### Related Procedures With Parameters

* [SetWindowContentScaleCallback](/vendor/glfw/bindings/#SetWindowContentScaleCallback)

### [WindowFocusProc ¶](#WindowFocusProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L43)

```
WindowFocusProc :: proc "c" (window: WindowHandle, focused: i32)
```

##### Related Procedures With Parameters

* [SetWindowFocusCallback](/vendor/glfw/bindings/#SetWindowFocusCallback)

### [WindowHandle ¶](#WindowHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L5)

```
WindowHandle :: distinct rawptr
```

##### Related Procedures With Parameters

* [CreateWindow](/vendor/glfw/bindings/#CreateWindow)
* [CreateWindowSurface](/vendor/glfw/bindings/#CreateWindowSurface)
* [DestroyWindow](/vendor/glfw/bindings/#DestroyWindow)
* [FocusWindow](/vendor/glfw/bindings/#FocusWindow)
* [GetClipboardString](/vendor/glfw/bindings/#GetClipboardString)
* [GetCursorPos](/vendor/glfw/bindings/#GetCursorPos)
* [GetFramebufferSize](/vendor/glfw/bindings/#GetFramebufferSize)
* [GetInputMode](/vendor/glfw/bindings/#GetInputMode)
* [GetKey](/vendor/glfw/bindings/#GetKey)
* [GetMouseButton](/vendor/glfw/bindings/#GetMouseButton)
* [GetWindowAttrib](/vendor/glfw/bindings/#GetWindowAttrib)
* [GetWindowContentScale](/vendor/glfw/bindings/#GetWindowContentScale)
* [GetWindowFrameSize](/vendor/glfw/bindings/#GetWindowFrameSize)
* [GetWindowMonitor](/vendor/glfw/bindings/#GetWindowMonitor)
* [GetWindowOpacity](/vendor/glfw/bindings/#GetWindowOpacity)
* [GetWindowPos](/vendor/glfw/bindings/#GetWindowPos)
* [GetWindowSize](/vendor/glfw/bindings/#GetWindowSize)
* [GetWindowTitle](/vendor/glfw/bindings/#GetWindowTitle)
* [GetWindowUserPointer](/vendor/glfw/bindings/#GetWindowUserPointer)
* [HideWindow](/vendor/glfw/bindings/#HideWindow)
* [IconifyWindow](/vendor/glfw/bindings/#IconifyWindow)
* [MakeContextCurrent](/vendor/glfw/bindings/#MakeContextCurrent)
* [MaximizeWindow](/vendor/glfw/bindings/#MaximizeWindow)
* [RequestWindowAttention](/vendor/glfw/bindings/#RequestWindowAttention)
* [RestoreWindow](/vendor/glfw/bindings/#RestoreWindow)
* [SetCharCallback](/vendor/glfw/bindings/#SetCharCallback)
* [SetCharModsCallback](/vendor/glfw/bindings/#SetCharModsCallback)
* [SetClipboardString](/vendor/glfw/bindings/#SetClipboardString)
* [SetCursor](/vendor/glfw/bindings/#SetCursor)
* [SetCursorEnterCallback](/vendor/glfw/bindings/#SetCursorEnterCallback)
* [SetCursorPos](/vendor/glfw/bindings/#SetCursorPos)
* [SetCursorPosCallback](/vendor/glfw/bindings/#SetCursorPosCallback)
* [SetDropCallback](/vendor/glfw/bindings/#SetDropCallback)
* [SetFramebufferSizeCallback](/vendor/glfw/bindings/#SetFramebufferSizeCallback)
* [SetInputMode](/vendor/glfw/bindings/#SetInputMode)
* [SetKeyCallback](/vendor/glfw/bindings/#SetKeyCallback)
* [SetMouseButtonCallback](/vendor/glfw/bindings/#SetMouseButtonCallback)
* [SetScrollCallback](/vendor/glfw/bindings/#SetScrollCallback)
* [SetWindowAspectRatio](/vendor/glfw/bindings/#SetWindowAspectRatio)
* [SetWindowAttrib](/vendor/glfw/bindings/#SetWindowAttrib)
* [SetWindowCloseCallback](/vendor/glfw/bindings/#SetWindowCloseCallback)
* [SetWindowContentScaleCallback](/vendor/glfw/bindings/#SetWindowContentScaleCallback)
* [SetWindowFocusCallback](/vendor/glfw/bindings/#SetWindowFocusCallback)
* [SetWindowIcon](/vendor/glfw/bindings/#SetWindowIcon)
* [SetWindowIconifyCallback](/vendor/glfw/bindings/#SetWindowIconifyCallback)
* [SetWindowMaximizeCallback](/vendor/glfw/bindings/#SetWindowMaximizeCallback)
* [SetWindowMonitor](/vendor/glfw/bindings/#SetWindowMonitor)
* [SetWindowOpacity](/vendor/glfw/bindings/#SetWindowOpacity)
* [SetWindowPos](/vendor/glfw/bindings/#SetWindowPos)
* [SetWindowPosCallback](/vendor/glfw/bindings/#SetWindowPosCallback)
* [SetWindowRefreshCallback](/vendor/glfw/bindings/#SetWindowRefreshCallback)
* [SetWindowShouldClose](/vendor/glfw/bindings/#SetWindowShouldClose)
* [SetWindowSize](/vendor/glfw/bindings/#SetWindowSize)
* [SetWindowSizeCallback](/vendor/glfw/bindings/#SetWindowSizeCallback)
* [SetWindowSizeLimits](/vendor/glfw/bindings/#SetWindowSizeLimits)
* [SetWindowTitle](/vendor/glfw/bindings/#SetWindowTitle)
* [SetWindowUserPointer](/vendor/glfw/bindings/#SetWindowUserPointer)
* [ShowWindow](/vendor/glfw/bindings/#ShowWindow)
* [SwapBuffers](/vendor/glfw/bindings/#SwapBuffers)
* [WindowShouldClose](/vendor/glfw/bindings/#WindowShouldClose)



##### Related Procedures With Returns

* [GetCurrentContext](/vendor/glfw/bindings/#GetCurrentContext)

### [WindowIconifyProc ¶](#WindowIconifyProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L41)

```
WindowIconifyProc :: proc "c" (window: WindowHandle, iconified: i32)
```

 

**Procedure type declarations**




##### Related Procedures With Parameters

* [SetWindowIconifyCallback](/vendor/glfw/bindings/#SetWindowIconifyCallback)

### [WindowMaximizeProc ¶](#WindowMaximizeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L47)

```
WindowMaximizeProc :: proc "c" (window: WindowHandle, iconified: i32)
```

##### Related Procedures With Parameters

* [SetWindowMaximizeCallback](/vendor/glfw/bindings/#SetWindowMaximizeCallback)

### [WindowPosProc ¶](#WindowPosProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L46)

```
WindowPosProc :: proc "c" (window: WindowHandle, xpos, ypos: i32)
```

##### Related Procedures With Parameters

* [SetWindowPosCallback](/vendor/glfw/bindings/#SetWindowPosCallback)

### [WindowRefreshProc ¶](#WindowRefreshProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L42)

```
WindowRefreshProc :: proc "c" (window: WindowHandle)
```

##### Related Procedures With Parameters

* [SetWindowRefreshCallback](/vendor/glfw/bindings/#SetWindowRefreshCallback)

### [WindowSizeProc ¶](#WindowSizeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin#L45)

```
WindowSizeProc :: proc "c" (window: WindowHandle, width, height: i32)
```

##### Related Procedures With Parameters

* [SetWindowSizeCallback](/vendor/glfw/bindings/#SetWindowSizeCallback)

## Constants

### [GLFW\_SHARED ¶](#GLFW_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L6)

```
GLFW_SHARED :: #config(GLFW_SHARED, ODIN_OS != .Windows && ODIN_OS != .Darwin)
```

## Variables

This section is empty.

## Procedures

### [CreateCursor ¶](#CreateCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L154)

```
CreateCursor :: proc "c" (image: ^Image, xhot, yhot: i32) -> CursorHandle ---
```

### [CreateStandardCursor ¶](#CreateStandardCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L157)

```
CreateStandardCursor :: proc "c" (shape: i32) -> CursorHandle ---
```

### [CreateWindow ¶](#CreateWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L86)

```
CreateWindow :: proc "c" (width, height: i32, title: cstring, monitor: MonitorHandle, share: WindowHandle) -> WindowHandle ---
```

### [CreateWindowSurface ¶](#CreateWindowSurface) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L186)

```
CreateWindowSurface :: proc "c" (instance: vulkan.Instance, window: WindowHandle, allocator: ^vulkan.AllocationCallbacks, surface: ^vulkan.SurfaceKHR) -> vulkan.Result ---
```

### [DefaultWindowHints ¶](#DefaultWindowHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L90)

```
DefaultWindowHints :: proc "c" () ---
```

### [DestroyCursor ¶](#DestroyCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L155)

```
DestroyCursor :: proc "c" (cursor: CursorHandle) ---
```

### [DestroyWindow ¶](#DestroyWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L87)

```
DestroyWindow :: proc "c" (window: WindowHandle) ---
```

### [ExtensionSupported ¶](#ExtensionSupported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L180)

```
ExtensionSupported :: proc "c" (extension: cstring) -> b32 ---
```

### [FocusWindow ¶](#FocusWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L129)

```
FocusWindow :: proc "c" (window: WindowHandle) ---
```

### [GetClipboardString ¶](#GetClipboardString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L114)

```
GetClipboardString :: proc "c" (window: WindowHandle) -> cstring ---
```

### [GetCurrentContext ¶](#GetCurrentContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L178)

```
GetCurrentContext :: proc "c" () -> WindowHandle ---
```

### [GetCursorPos ¶](#GetCursorPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L151)

```
GetCursorPos :: proc "c" (window: WindowHandle, xpos, ypos: ^f64) ---
```

### [GetError ¶](#GetError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L69)

```
GetError :: proc "c" (description: ^cstring) -> i32 ---
```

### [GetFramebufferSize ¶](#GetFramebufferSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L105)

```
GetFramebufferSize :: proc "c" (window: WindowHandle, width, height: ^i32) ---
```

### [GetGamepadName ¶](#GetGamepadName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L167)

```
GetGamepadName :: proc "c" (jid: i32) -> cstring ---
```

### [GetGamepadState ¶](#GetGamepadState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L168)

```
GetGamepadState :: proc "c" (jid: i32, state: ^GamepadState) -> b32 ---
```

### [GetGammaRamp ¶](#GetGammaRamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L83)

```
GetGammaRamp :: proc "c" (monitor: MonitorHandle) -> ^GammaRamp ---
```

### [GetInputMode ¶](#GetInputMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L147)

```
GetInputMode :: proc "c" (window: WindowHandle, mode: i32) -> i32 ---
```

### [GetInstanceProcAddress ¶](#GetInstanceProcAddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L184)

```
GetInstanceProcAddress :: proc "c" (instance: vulkan.Instance, procname: cstring) -> rawptr ---
```

### [GetJoystickAxes ¶](#GetJoystickAxes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L159)

```
GetJoystickAxes :: proc "c" (joy: i32, count: ^i32) -> [^]f32 ---
```

### [GetJoystickButtons ¶](#GetJoystickButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L160)

```
GetJoystickButtons :: proc "c" (joy: i32, count: ^i32) -> [^]u8 ---
```

### [GetJoystickGUID ¶](#GetJoystickGUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L162)

```
GetJoystickGUID :: proc "c" (jid: i32) -> cstring ---
```

### [GetJoystickHats ¶](#GetJoystickHats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L161)

```
GetJoystickHats :: proc "c" (jid: i32, count: ^i32) -> [^]u8 ---
```

### [GetJoystickName ¶](#GetJoystickName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L121)

```
GetJoystickName :: proc "c" (joy: i32) -> cstring ---
```

### [GetJoystickUserPointer ¶](#GetJoystickUserPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L164)

```
GetJoystickUserPointer :: proc "c" (jid: i32) -> rawptr ---
```

### [GetKey ¶](#GetKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L116)

```
GetKey :: proc "c" (window: WindowHandle, key: i32) -> i32 ---
```

### [GetKeyName ¶](#GetKeyName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L117)

```
GetKeyName :: proc "c" (key, scancode: i32) -> cstring ---
```

### [GetKeyScancode ¶](#GetKeyScancode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L122)

```
GetKeyScancode :: proc "c" (key: i32) -> i32 ---
```

### [GetMonitorContentScale ¶](#GetMonitorContentScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L76)

```
GetMonitorContentScale :: proc "c" (monitor: MonitorHandle, xscale, yscale: ^f32) ---
```

### [GetMonitorName ¶](#GetMonitorName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L113)

```
GetMonitorName :: proc "c" (monitor: MonitorHandle) -> cstring ---
```

### [GetMonitorPhysicalSize ¶](#GetMonitorPhysicalSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L75)

```
GetMonitorPhysicalSize :: proc "c" (monitor: MonitorHandle, widthMM, heightMM: ^i32) ---
```

### [GetMonitorPos ¶](#GetMonitorPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L73)

```
GetMonitorPos :: proc "c" (monitor: MonitorHandle, xpos, ypos: ^i32) ---
```

### [GetMonitorUserPointer ¶](#GetMonitorUserPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L79)

```
GetMonitorUserPointer :: proc "c" (monitor: MonitorHandle) -> rawptr ---
```

### [GetMonitorWorkarea ¶](#GetMonitorWorkarea) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L74)

```
GetMonitorWorkarea :: proc "c" (monitor: MonitorHandle, xpos, ypos, width, height: ^i32) ---
```

### [GetMonitors ¶](#GetMonitors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L72)

```
GetMonitors :: proc "c" (count: ^i32) -> [^]MonitorHandle ---
```

### [GetMouseButton ¶](#GetMouseButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L150)

```
GetMouseButton :: proc "c" (window: WindowHandle, button: i32) -> i32 ---
```

### [GetPhysicalDevicePresentationSupport ¶](#GetPhysicalDevicePresentationSupport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L185)

```
GetPhysicalDevicePresentationSupport :: proc "c" (instance: vulkan.Instance, device: vulkan.PhysicalDevice, queuefamily: u32) -> b32 ---
```

### [GetPlatform ¶](#GetPlatform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L216)

```
GetPlatform :: proc "c" () -> i32 ---
```

### [GetPrimaryMonitor ¶](#GetPrimaryMonitor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L71)

```
GetPrimaryMonitor :: proc "c" () -> MonitorHandle ---
```

### [GetProcAddress ¶](#GetProcAddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L179)

```
GetProcAddress :: proc "c" (name: cstring) -> rawptr ---
```

### [GetRequiredInstanceExtensions ¶](#GetRequiredInstanceExtensions) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L183)

```
GetRequiredInstanceExtensions :: proc "c" (count: ^u32) -> [^]cstring ---
```

### [GetTime ¶](#GetTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L173)

```
GetTime :: proc "c" () -> f64 ---
```

### [GetTimerFrequency ¶](#GetTimerFrequency) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L175)

```
GetTimerFrequency :: proc "c" () -> u64 ---
```

### [GetTimerValue ¶](#GetTimerValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L174)

```
GetTimerValue :: proc "c" () -> u64 ---
```

### [GetVersion ¶](#GetVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L68)

```
GetVersion :: proc "c" (major, minor, rev: ^i32) ---
```

### [GetVersionString ¶](#GetVersionString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L112)

```
GetVersionString :: proc "c" () -> cstring ---
```

### [GetVideoMode ¶](#GetVideoMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L81)

```
GetVideoMode :: proc "c" (monitor: MonitorHandle) -> ^VidMode ---
```

### [GetVideoModes ¶](#GetVideoModes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L115)

```
GetVideoModes :: proc "c" (monitor: MonitorHandle, count: ^i32) -> [^]VidMode ---
```

### [GetWindowAttrib ¶](#GetWindowAttrib) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L135)

```
GetWindowAttrib :: proc "c" (window: WindowHandle, attrib: i32) -> i32 ---
```

### [GetWindowContentScale ¶](#GetWindowContentScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L108)

```
GetWindowContentScale :: proc "c" (window: WindowHandle, xscale, yscale: ^f32) ---
```

### [GetWindowFrameSize ¶](#GetWindowFrameSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L106)

```
GetWindowFrameSize :: proc "c" (window: WindowHandle, left, top, right, bottom: ^i32) ---
```

### [GetWindowMonitor ¶](#GetWindowMonitor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L133)

```
GetWindowMonitor :: proc "c" (window: WindowHandle) -> MonitorHandle ---
```

### [GetWindowOpacity ¶](#GetWindowOpacity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L109)

```
GetWindowOpacity :: proc "c" (window: WindowHandle) -> f32 ---
```

### [GetWindowPos ¶](#GetWindowPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L103)

```
GetWindowPos :: proc "c" (window: WindowHandle, xpos, ypos: ^i32) ---
```

### [GetWindowSize ¶](#GetWindowSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L104)

```
GetWindowSize :: proc "c" (window: WindowHandle, width, height: ^i32) ---
```

### [GetWindowTitle ¶](#GetWindowTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L119)

```
GetWindowTitle :: proc "c" (window: WindowHandle) -> cstring ---
```

### [GetWindowUserPointer ¶](#GetWindowUserPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L137)

```
GetWindowUserPointer :: proc "c" (window: WindowHandle) -> rawptr ---
```

### [HideWindow ¶](#HideWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L128)

```
HideWindow :: proc "c" (window: WindowHandle) ---
```

### [IconifyWindow ¶](#IconifyWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L124)

```
IconifyWindow :: proc "c" (window: WindowHandle) ---
```

### [Init ¶](#Init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L59)

```
Init :: proc "c" () -> b32 ---
```

### [InitAllocator ¶](#InitAllocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L64)

```
InitAllocator :: proc "c" (#by_ptr allocator: Allocator) ---
```

### [InitHint ¶](#InitHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L62)

```
InitHint :: proc "c" (hint: i32, value: i32) ---
```

### [InitVulkanLoader ¶](#InitVulkanLoader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L66)

```
InitVulkanLoader :: proc "c" (loader: vulkan.ProcGetInstanceProcAddr) ---
```

### [JoystickIsGamepad ¶](#JoystickIsGamepad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L165)

```
JoystickIsGamepad :: proc "c" (jid: i32) -> b32 ---
```

### [JoystickPresent ¶](#JoystickPresent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L120)

```
JoystickPresent :: proc "c" (joy: i32) -> b32 ---
```

### [MakeContextCurrent ¶](#MakeContextCurrent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L177)

```
MakeContextCurrent :: proc "c" (window: WindowHandle) ---
```

### [MaximizeWindow ¶](#MaximizeWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L126)

```
MaximizeWindow :: proc "c" (window: WindowHandle) ---
```

### [PlatformSupported ¶](#PlatformSupported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L218)

```
PlatformSupported :: proc "c" (platform: i32) -> b32 ---
```

### [PollEvents ¶](#PollEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L141)

```
PollEvents :: proc "c" () ---
```

### [PostEmptyEvent ¶](#PostEmptyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L144)

```
PostEmptyEvent :: proc "c" () ---
```

### [RawMouseMotionSupported ¶](#RawMouseMotionSupported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L146)

```
RawMouseMotionSupported :: proc "c" () -> b32 ---
```

### [RequestWindowAttention ¶](#RequestWindowAttention) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L131)

```
RequestWindowAttention :: proc "c" (window: WindowHandle) ---
```

### [RestoreWindow ¶](#RestoreWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L125)

```
RestoreWindow :: proc "c" (window: WindowHandle) ---
```

### [SetCharCallback ¶](#SetCharCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L203)

```
SetCharCallback :: proc "c" (window: WindowHandle, cbfun: CharProc) -> CharProc ---
```

### [SetCharModsCallback ¶](#SetCharModsCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L204)

```
SetCharModsCallback :: proc "c" (window: WindowHandle, cbfun: CharModsProc) -> CharModsProc ---
```

### [SetClipboardString ¶](#SetClipboardString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L170)

```
SetClipboardString :: proc "c" (window: WindowHandle, str: cstring) ---
```

### [SetCursor ¶](#SetCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L156)

```
SetCursor :: proc "c" (window: WindowHandle, cursor: CursorHandle) ---
```

### [SetCursorEnterCallback ¶](#SetCursorEnterCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L205)

```
SetCursorEnterCallback :: proc "c" (window: WindowHandle, cbfun: CursorEnterProc) -> CursorEnterProc ---
```

### [SetCursorPos ¶](#SetCursorPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L152)

```
SetCursorPos :: proc "c" (window: WindowHandle, xpos, ypos: f64) ---
```

### [SetCursorPosCallback ¶](#SetCursorPosCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L201)

```
SetCursorPosCallback :: proc "c" (window: WindowHandle, cbfun: CursorPosProc) -> CursorPosProc ---
```

### [SetDropCallback ¶](#SetDropCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L195)

```
SetDropCallback :: proc "c" (window: WindowHandle, cbfun: DropProc) -> DropProc ---
```

### [SetErrorCallback ¶](#SetErrorCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L210)

```
SetErrorCallback :: proc "c" (cbfun: ErrorProc) -> ErrorProc ---
```

### [SetFramebufferSizeCallback ¶](#SetFramebufferSizeCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L194)

```
SetFramebufferSizeCallback :: proc "c" (window: WindowHandle, cbfun: FramebufferSizeProc) -> FramebufferSizeProc ---
```

### [SetGamma ¶](#SetGamma) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L82)

```
SetGamma :: proc "c" (monitor: MonitorHandle, gamma: f32) ---
```

### [SetGammaRamp ¶](#SetGammaRamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L84)

```
SetGammaRamp :: proc "c" (monitor: MonitorHandle, ramp: ^GammaRamp) ---
```

### [SetInputMode ¶](#SetInputMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L148)

```
SetInputMode :: proc "c" (window: WindowHandle, mode, value: i32) ---
```

### [SetJoystickCallback ¶](#SetJoystickCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L208)

```
SetJoystickCallback :: proc "c" (cbfun: JoystickProc) -> JoystickProc ---
```

### [SetJoystickUserPointer ¶](#SetJoystickUserPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L163)

```
SetJoystickUserPointer :: proc "c" (jid: i32, pointer: rawptr) ---
```

### [SetKeyCallback ¶](#SetKeyCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L199)

```
SetKeyCallback :: proc "c" (window: WindowHandle, cbfun: KeyProc) -> KeyProc ---
```

### [SetMonitorCallback ¶](#SetMonitorCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L207)

```
SetMonitorCallback :: proc "c" (cbfun: MonitorProc) -> MonitorProc ---
```

### [SetMonitorUserPointer ¶](#SetMonitorUserPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L78)

```
SetMonitorUserPointer :: proc "c" (monitor: MonitorHandle, pointer: rawptr) ---
```

### [SetMouseButtonCallback ¶](#SetMouseButtonCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L200)

```
SetMouseButtonCallback :: proc "c" (window: WindowHandle, cbfun: MouseButtonProc) -> MouseButtonProc ---
```

### [SetScrollCallback ¶](#SetScrollCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L202)

```
SetScrollCallback :: proc "c" (window: WindowHandle, cbfun: ScrollProc) -> ScrollProc ---
```

### [SetTime ¶](#SetTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L172)

```
SetTime :: proc "c" (time: f64) ---
```

### [SetWindowAspectRatio ¶](#SetWindowAspectRatio) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L101)

```
SetWindowAspectRatio :: proc "c" (window: WindowHandle, numer, denom: i32) ---
```

### [SetWindowAttrib ¶](#SetWindowAttrib) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L139)

```
SetWindowAttrib :: proc "c" (window: WindowHandle, attrib, value: i32) ---
```

### [SetWindowCloseCallback ¶](#SetWindowCloseCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L191)

```
SetWindowCloseCallback :: proc "c" (window: WindowHandle, cbfun: WindowCloseProc) -> WindowCloseProc ---
```

### [SetWindowContentScaleCallback ¶](#SetWindowContentScaleCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L197)

```
SetWindowContentScaleCallback :: proc "c" (window: WindowHandle, cbfun: WindowContentScaleProc) -> WindowContentScaleProc ---
```

### [SetWindowFocusCallback ¶](#SetWindowFocusCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L190)

```
SetWindowFocusCallback :: proc "c" (window: WindowHandle, cbfun: WindowFocusProc) -> WindowFocusProc ---
```

### [SetWindowIcon ¶](#SetWindowIcon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L98)

```
SetWindowIcon :: proc "c" (window: WindowHandle, count: i32, images: [^]Image) ---
```

### [SetWindowIconifyCallback ¶](#SetWindowIconifyCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L188)

```
SetWindowIconifyCallback :: proc "c" (window: WindowHandle, cbfun: WindowIconifyProc) -> WindowIconifyProc ---
```

### [SetWindowMaximizeCallback ¶](#SetWindowMaximizeCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L196)

```
SetWindowMaximizeCallback :: proc "c" (window: WindowHandle, cbfun: WindowMaximizeProc) -> WindowMaximizeProc ---
```

### [SetWindowMonitor ¶](#SetWindowMonitor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L134)

```
SetWindowMonitor :: proc "c" (
	window:                    WindowHandle, 
	monitor:                   MonitorHandle, 
	xpos, ypos, width, height, 
	refresh_rate:              i32, 
) ---
```

### [SetWindowOpacity ¶](#SetWindowOpacity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L110)

```
SetWindowOpacity :: proc "c" (window: WindowHandle, opacity: f32) ---
```

### [SetWindowPos ¶](#SetWindowPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L99)

```
SetWindowPos :: proc "c" (window: WindowHandle, xpos, ypos: i32) ---
```

### [SetWindowPosCallback ¶](#SetWindowPosCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L193)

```
SetWindowPosCallback :: proc "c" (window: WindowHandle, cbfun: WindowPosProc) -> WindowPosProc ---
```

### [SetWindowRefreshCallback ¶](#SetWindowRefreshCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L189)

```
SetWindowRefreshCallback :: proc "c" (window: WindowHandle, cbfun: WindowRefreshProc) -> WindowRefreshProc ---
```

### [SetWindowShouldClose ¶](#SetWindowShouldClose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L118)

```
SetWindowShouldClose :: proc "c" (window: WindowHandle, value: b32) ---
```

### [SetWindowSize ¶](#SetWindowSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L102)

```
SetWindowSize :: proc "c" (window: WindowHandle, width, height: i32) ---
```

### [SetWindowSizeCallback ¶](#SetWindowSizeCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L192)

```
SetWindowSizeCallback :: proc "c" (window: WindowHandle, cbfun: WindowSizeProc) -> WindowSizeProc ---
```

### [SetWindowSizeLimits ¶](#SetWindowSizeLimits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L100)

```
SetWindowSizeLimits :: proc "c" (window: WindowHandle, minwidth, minheight, maxwidth, maxheight: i32) ---
```

### [SetWindowTitle ¶](#SetWindowTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L97)

```
SetWindowTitle :: proc "c" (window: WindowHandle, title: cstring) ---
```

### [SetWindowUserPointer ¶](#SetWindowUserPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L136)

```
SetWindowUserPointer :: proc "c" (window: WindowHandle, pointer: rawptr) ---
```

### [ShowWindow ¶](#ShowWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L127)

```
ShowWindow :: proc "c" (window: WindowHandle) ---
```

### [SwapBuffers ¶](#SwapBuffers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L95)

```
SwapBuffers :: proc "c" (window: WindowHandle) ---
```

### [SwapInterval ¶](#SwapInterval) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L94)

```
SwapInterval :: proc "c" (interval: i32) ---
```

### [Terminate ¶](#Terminate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L60)

```
Terminate :: proc "c" () ---
```

### [UpdateGamepadMappings ¶](#UpdateGamepadMappings) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L166)

```
UpdateGamepadMappings :: proc "c" (str: cstring) -> b32 ---
```

### [VulkanSupported ¶](#VulkanSupported) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L182)

```
VulkanSupported :: proc "c" () -> b32 ---
```

### [WaitEvents ¶](#WaitEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L142)

```
WaitEvents :: proc "c" () ---
```

### [WaitEventsTimeout ¶](#WaitEventsTimeout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L143)

```
WaitEventsTimeout :: proc "c" (timeout: f64) ---
```

### [WindowHint ¶](#WindowHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L89)

```
WindowHint :: proc "c" (hint: i32, value: i32) ---
```

### [WindowHintString ¶](#WindowHintString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L91)

```
WindowHintString :: proc "c" (hint: i32, value: cstring) ---
```

### [WindowShouldClose ¶](#WindowShouldClose) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L92)

```
WindowShouldClose :: proc "c" (window: WindowHandle) -> b32 ---
```

## Procedure Groups

This section is empty.

## `#config` values

### [GLFW\_SHARED ¶](#GLFW_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin#L6)

```
GLFW_SHARED :: #config(GLFW_SHARED, ODIN_OS != .Windows && ODIN_OS != .Darwin)
```

## Source Files

* [bindings.odin](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/bindings.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/bindings/types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.974111000 +0000 UTC`

* [Types](#pkg-Types)
  + [AllocateProc](#AllocateProc)
  + [Allocator](#Allocator)
  + [CharModsProc](#CharModsProc)
  + [CharProc](#CharProc)
  + [CursorEnterProc](#CursorEnterProc)
  + [CursorHandle](#CursorHandle)
  + [CursorPosProc](#CursorPosProc)
  + [DeallocateProc](#DeallocateProc)
  + [DropProc](#DropProc)
  + [ErrorProc](#ErrorProc)
  + [FramebufferSizeProc](#FramebufferSizeProc)
  + [GamepadState](#GamepadState)
  + [GammaRamp](#GammaRamp)
  + [Image](#Image)
  + [JoystickProc](#JoystickProc)
  + [KeyProc](#KeyProc)
  + [MonitorHandle](#MonitorHandle)
  + [MonitorProc](#MonitorProc)
  + [MouseButtonProc](#MouseButtonProc)
  + [ReallocateProc](#ReallocateProc)
  + [ScrollProc](#ScrollProc)
  + [VidMode](#VidMode)
  + [WindowCloseProc](#WindowCloseProc)
  + [WindowContentScaleProc](#WindowContentScaleProc)
  + [WindowFocusProc](#WindowFocusProc)
  + [WindowHandle](#WindowHandle)
  + [WindowIconifyProc](#WindowIconifyProc)
  + [WindowMaximizeProc](#WindowMaximizeProc)
  + [WindowPosProc](#WindowPosProc)
  + [WindowRefreshProc](#WindowRefreshProc)
  + [WindowSizeProc](#WindowSizeProc)
* [Constants](#pkg-Constants)
  + [GLFW\_SHARED](#GLFW_SHARED)
* [Procedures](#pkg-Procedures)
  + [CreateCursor](#CreateCursor)
  + [CreateStandardCursor](#CreateStandardCursor)
  + [CreateWindow](#CreateWindow)
  + [CreateWindowSurface](#CreateWindowSurface)
  + [DefaultWindowHints](#DefaultWindowHints)
  + [DestroyCursor](#DestroyCursor)
  + [DestroyWindow](#DestroyWindow)
  + [ExtensionSupported](#ExtensionSupported)
  + [FocusWindow](#FocusWindow)
  + [GetClipboardString](#GetClipboardString)
  + [GetCurrentContext](#GetCurrentContext)
  + [GetCursorPos](#GetCursorPos)
  + [GetError](#GetError)
  + [GetFramebufferSize](#GetFramebufferSize)
  + [GetGamepadName](#GetGamepadName)
  + [GetGamepadState](#GetGamepadState)
  + [GetGammaRamp](#GetGammaRamp)
  + [GetInputMode](#GetInputMode)
  + [GetInstanceProcAddress](#GetInstanceProcAddress)
  + [GetJoystickAxes](#GetJoystickAxes)
  + [GetJoystickButtons](#GetJoystickButtons)
  + [GetJoystickGUID](#GetJoystickGUID)
  + [GetJoystickHats](#GetJoystickHats)
  + [GetJoystickName](#GetJoystickName)
  + [GetJoystickUserPointer](#GetJoystickUserPointer)
  + [GetKey](#GetKey)
  + [GetKeyName](#GetKeyName)
  + [GetKeyScancode](#GetKeyScancode)
  + [GetMonitorContentScale](#GetMonitorContentScale)
  + [GetMonitorName](#GetMonitorName)
  + [GetMonitorPhysicalSize](#GetMonitorPhysicalSize)
  + [GetMonitorPos](#GetMonitorPos)
  + [GetMonitorUserPointer](#GetMonitorUserPointer)
  + [GetMonitorWorkarea](#GetMonitorWorkarea)
  + [GetMonitors](#GetMonitors)
  + [GetMouseButton](#GetMouseButton)
  + [GetPhysicalDevicePresentationSupport](#GetPhysicalDevicePresentationSupport)
  + [GetPlatform](#GetPlatform)
  + [GetPrimaryMonitor](#GetPrimaryMonitor)
  + [GetProcAddress](#GetProcAddress)
  + [GetRequiredInstanceExtensions](#GetRequiredInstanceExtensions)
  + [GetTime](#GetTime)
  + [GetTimerFrequency](#GetTimerFrequency)
  + [GetTimerValue](#GetTimerValue)
  + [GetVersion](#GetVersion)
  + [GetVersionString](#GetVersionString)
  + [GetVideoMode](#GetVideoMode)
  + [GetVideoModes](#GetVideoModes)
  + [GetWindowAttrib](#GetWindowAttrib)
  + [GetWindowContentScale](#GetWindowContentScale)
  + [GetWindowFrameSize](#GetWindowFrameSize)
  + [GetWindowMonitor](#GetWindowMonitor)
  + [GetWindowOpacity](#GetWindowOpacity)
  + [GetWindowPos](#GetWindowPos)
  + [GetWindowSize](#GetWindowSize)
  + [GetWindowTitle](#GetWindowTitle)
  + [GetWindowUserPointer](#GetWindowUserPointer)
  + [HideWindow](#HideWindow)
  + [IconifyWindow](#IconifyWindow)
  + [Init](#Init)
  + [InitAllocator](#InitAllocator)
  + [InitHint](#InitHint)
  + [InitVulkanLoader](#InitVulkanLoader)
  + [JoystickIsGamepad](#JoystickIsGamepad)
  + [JoystickPresent](#JoystickPresent)
  + [MakeContextCurrent](#MakeContextCurrent)
  + [MaximizeWindow](#MaximizeWindow)
  + [PlatformSupported](#PlatformSupported)
  + [PollEvents](#PollEvents)
  + [PostEmptyEvent](#PostEmptyEvent)
  + [RawMouseMotionSupported](#RawMouseMotionSupported)
  + [RequestWindowAttention](#RequestWindowAttention)
  + [RestoreWindow](#RestoreWindow)
  + [SetCharCallback](#SetCharCallback)
  + [SetCharModsCallback](#SetCharModsCallback)
  + [SetClipboardString](#SetClipboardString)
  + [SetCursor](#SetCursor)
  + [SetCursorEnterCallback](#SetCursorEnterCallback)
  + [SetCursorPos](#SetCursorPos)
  + [SetCursorPosCallback](#SetCursorPosCallback)
  + [SetDropCallback](#SetDropCallback)
  + [SetErrorCallback](#SetErrorCallback)
  + [SetFramebufferSizeCallback](#SetFramebufferSizeCallback)
  + [SetGamma](#SetGamma)
  + [SetGammaRamp](#SetGammaRamp)
  + [SetInputMode](#SetInputMode)
  + [SetJoystickCallback](#SetJoystickCallback)
  + [SetJoystickUserPointer](#SetJoystickUserPointer)
  + [SetKeyCallback](#SetKeyCallback)
  + [SetMonitorCallback](#SetMonitorCallback)
  + [SetMonitorUserPointer](#SetMonitorUserPointer)
  + [SetMouseButtonCallback](#SetMouseButtonCallback)
  + [SetScrollCallback](#SetScrollCallback)
  + [SetTime](#SetTime)
  + [SetWindowAspectRatio](#SetWindowAspectRatio)
  + [SetWindowAttrib](#SetWindowAttrib)
  + [SetWindowCloseCallback](#SetWindowCloseCallback)
  + [SetWindowContentScaleCallback](#SetWindowContentScaleCallback)
  + [SetWindowFocusCallback](#SetWindowFocusCallback)
  + [SetWindowIcon](#SetWindowIcon)
  + [SetWindowIconifyCallback](#SetWindowIconifyCallback)
  + [SetWindowMaximizeCallback](#SetWindowMaximizeCallback)
  + [SetWindowMonitor](#SetWindowMonitor)
  + [SetWindowOpacity](#SetWindowOpacity)
  + [SetWindowPos](#SetWindowPos)
  + [SetWindowPosCallback](#SetWindowPosCallback)
  + [SetWindowRefreshCallback](#SetWindowRefreshCallback)
  + [SetWindowShouldClose](#SetWindowShouldClose)
  + [SetWindowSize](#SetWindowSize)
  + [SetWindowSizeCallback](#SetWindowSizeCallback)
  + [SetWindowSizeLimits](#SetWindowSizeLimits)
  + [SetWindowTitle](#SetWindowTitle)
  + [SetWindowUserPointer](#SetWindowUserPointer)
  + [ShowWindow](#ShowWindow)
  + [SwapBuffers](#SwapBuffers)
  + [SwapInterval](#SwapInterval)
  + [Terminate](#Terminate)
  + [UpdateGamepadMappings](#UpdateGamepadMappings)
  + [VulkanSupported](#VulkanSupported)
  + [WaitEvents](#WaitEvents)
  + [WaitEventsTimeout](#WaitEventsTimeout)
  + [WindowHint](#WindowHint)
  + [WindowHintString](#WindowHintString)
  + [WindowShouldClose](#WindowShouldClose)
* [`#config` values](#pkg-`#config` values)
  + [GLFW\_SHARED](#GLFW_SHARED)
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