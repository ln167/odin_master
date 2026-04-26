package glfw - pkg.odin-lang.org 






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



Current Package: *[glfw](/vendor/glfw)*

  

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

# package vendor:glfw [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [GLFW](https://www.glfw.org/)

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

Constants (333)

* [ACCUM\_ALPHA\_BITS](#ACCUM_ALPHA_BITS)
* [ACCUM\_BLUE\_BITS](#ACCUM_BLUE_BITS)
* [ACCUM\_GREEN\_BITS](#ACCUM_GREEN_BITS)
* [ACCUM\_RED\_BITS](#ACCUM_RED_BITS)
* [ALPHA\_BITS](#ALPHA_BITS)
* [ANGLE\_PLATFORM\_TYPE](#ANGLE_PLATFORM_TYPE)
* [ANGLE\_PLATFORM\_TYPE\_D3D11](#ANGLE_PLATFORM_TYPE_D3D11)
* [ANGLE\_PLATFORM\_TYPE\_D3D9](#ANGLE_PLATFORM_TYPE_D3D9)
* [ANGLE\_PLATFORM\_TYPE\_METAL](#ANGLE_PLATFORM_TYPE_METAL)
* [ANGLE\_PLATFORM\_TYPE\_NONE](#ANGLE_PLATFORM_TYPE_NONE)
* [ANGLE\_PLATFORM\_TYPE\_OPENGL](#ANGLE_PLATFORM_TYPE_OPENGL)
* [ANGLE\_PLATFORM\_TYPE\_OPENGLES](#ANGLE_PLATFORM_TYPE_OPENGLES)
* [ANGLE\_PLATFORM\_TYPE\_VULKAN](#ANGLE_PLATFORM_TYPE_VULKAN)
* [ANY\_PLATFORM](#ANY_PLATFORM)
* [ANY\_POSITION](#ANY_POSITION)
* [ANY\_RELEASE\_BEHAVIOR](#ANY_RELEASE_BEHAVIOR)
* [API\_UNAVAILABLE](#API_UNAVAILABLE)
* [ARROW\_CURSOR](#ARROW_CURSOR)
* [AUTO\_ICONIFY](#AUTO_ICONIFY)
* [AUX\_BUFFERS](#AUX_BUFFERS)
* [BLUE\_BITS](#BLUE_BITS)
* [CENTER\_CURSOR](#CENTER_CURSOR)
* [CLIENT\_API](#CLIENT_API)
* [COCOA\_CHDIR\_RESOURCES](#COCOA_CHDIR_RESOURCES)
* [COCOA\_FRAME\_NAME](#COCOA_FRAME_NAME)
* [COCOA\_GRAPHICS\_SWITCHING](#COCOA_GRAPHICS_SWITCHING)
* [COCOA\_MENUBAR](#COCOA_MENUBAR)
* [COCOA\_RETINA\_FRAMEBUFFER](#COCOA_RETINA_FRAMEBUFFER)
* [CONNECTED](#CONNECTED)
* [CONTEXT\_CREATION\_API](#CONTEXT_CREATION_API)
* [CONTEXT\_DEBUG](#CONTEXT_DEBUG)
* [CONTEXT\_NO\_ERROR](#CONTEXT_NO_ERROR)
* [CONTEXT\_RELEASE\_BEHAVIOR](#CONTEXT_RELEASE_BEHAVIOR)
* [CONTEXT\_REVISION](#CONTEXT_REVISION)
* [CONTEXT\_ROBUSTNESS](#CONTEXT_ROBUSTNESS)
* [CONTEXT\_VERSION\_MAJOR](#CONTEXT_VERSION_MAJOR)
* [CONTEXT\_VERSION\_MINOR](#CONTEXT_VERSION_MINOR)
* [CROSSHAIR\_CURSOR](#CROSSHAIR_CURSOR)
* [CURSOR](#CURSOR)
* [CURSOR\_CAPTURED](#CURSOR_CAPTURED)
* [CURSOR\_DISABLED](#CURSOR_DISABLED)
* [CURSOR\_HIDDEN](#CURSOR_HIDDEN)
* [CURSOR\_NORMAL](#CURSOR_NORMAL)
* [CURSOR\_UNAVAILABLE](#CURSOR_UNAVAILABLE)
* [DECORATED](#DECORATED)
* [DEPTH\_BITS](#DEPTH_BITS)
* [DISCONNECTED](#DISCONNECTED)
* [DONT\_CARE](#DONT_CARE)
* [DOUBLEBUFFER](#DOUBLEBUFFER)
* [EGL\_CONTEXT\_API](#EGL_CONTEXT_API)
* [FALSE](#FALSE)
* [FEATURE\_UNAVAILABLE](#FEATURE_UNAVAILABLE)
* [FEATURE\_UNIMPLEMENTED](#FEATURE_UNIMPLEMENTED)
* [FLOATING](#FLOATING)
* [FOCUSED](#FOCUSED)
* [FOCUS\_ON\_SHOW](#FOCUS_ON_SHOW)
* [FORMAT\_UNAVAILABLE](#FORMAT_UNAVAILABLE)
* [GAMEPAD\_AXIS\_LAST](#GAMEPAD_AXIS_LAST)
* [GAMEPAD\_AXIS\_LEFT\_TRIGGER](#GAMEPAD_AXIS_LEFT_TRIGGER)
* [GAMEPAD\_AXIS\_LEFT\_X](#GAMEPAD_AXIS_LEFT_X)
* [GAMEPAD\_AXIS\_LEFT\_Y](#GAMEPAD_AXIS_LEFT_Y)
* [GAMEPAD\_AXIS\_RIGHT\_TRIGGER](#GAMEPAD_AXIS_RIGHT_TRIGGER)
* [GAMEPAD\_AXIS\_RIGHT\_X](#GAMEPAD_AXIS_RIGHT_X)
* [GAMEPAD\_AXIS\_RIGHT\_Y](#GAMEPAD_AXIS_RIGHT_Y)
* [GAMEPAD\_BUTTON\_A](#GAMEPAD_BUTTON_A)
* [GAMEPAD\_BUTTON\_B](#GAMEPAD_BUTTON_B)
* [GAMEPAD\_BUTTON\_BACK](#GAMEPAD_BUTTON_BACK)
* [GAMEPAD\_BUTTON\_CIRCLE](#GAMEPAD_BUTTON_CIRCLE)
* [GAMEPAD\_BUTTON\_CROSS](#GAMEPAD_BUTTON_CROSS)
* [GAMEPAD\_BUTTON\_DPAD\_DOWN](#GAMEPAD_BUTTON_DPAD_DOWN)
* [GAMEPAD\_BUTTON\_DPAD\_LEFT](#GAMEPAD_BUTTON_DPAD_LEFT)
* [GAMEPAD\_BUTTON\_DPAD\_RIGHT](#GAMEPAD_BUTTON_DPAD_RIGHT)
* [GAMEPAD\_BUTTON\_DPAD\_UP](#GAMEPAD_BUTTON_DPAD_UP)
* [GAMEPAD\_BUTTON\_GUIDE](#GAMEPAD_BUTTON_GUIDE)
* [GAMEPAD\_BUTTON\_LAST](#GAMEPAD_BUTTON_LAST)
* [GAMEPAD\_BUTTON\_LEFT\_BUMPER](#GAMEPAD_BUTTON_LEFT_BUMPER)
* [GAMEPAD\_BUTTON\_LEFT\_THUMB](#GAMEPAD_BUTTON_LEFT_THUMB)
* [GAMEPAD\_BUTTON\_RIGHT\_BUMPER](#GAMEPAD_BUTTON_RIGHT_BUMPER)
* [GAMEPAD\_BUTTON\_RIGHT\_THUMB](#GAMEPAD_BUTTON_RIGHT_THUMB)
* [GAMEPAD\_BUTTON\_SQUARE](#GAMEPAD_BUTTON_SQUARE)
* [GAMEPAD\_BUTTON\_START](#GAMEPAD_BUTTON_START)
* [GAMEPAD\_BUTTON\_TRIANGLE](#GAMEPAD_BUTTON_TRIANGLE)
* [GAMEPAD\_BUTTON\_X](#GAMEPAD_BUTTON_X)
* [GAMEPAD\_BUTTON\_Y](#GAMEPAD_BUTTON_Y)
* [GLFW\_SHARED](#GLFW_SHARED)
* [GREEN\_BITS](#GREEN_BITS)
* [HAND\_CURSOR](#HAND_CURSOR)
* [HAT\_CENTERED](#HAT_CENTERED)
* [HAT\_DOWN](#HAT_DOWN)
* [HAT\_LEFT](#HAT_LEFT)
* [HAT\_LEFT\_DOWN](#HAT_LEFT_DOWN)
* [HAT\_LEFT\_UP](#HAT_LEFT_UP)
* [HAT\_RIGHT](#HAT_RIGHT)
* [HAT\_RIGHT\_DOWN](#HAT_RIGHT_DOWN)
* [HAT\_RIGHT\_UP](#HAT_RIGHT_UP)
* [HAT\_UP](#HAT_UP)
* [HOVERED](#HOVERED)
* [HRESIZE\_CURSOR](#HRESIZE_CURSOR)
* [IBEAM\_CURSOR](#IBEAM_CURSOR)
* [ICONIFIED](#ICONIFIED)
* [INVALID\_ENUM](#INVALID_ENUM)
* [INVALID\_VALUE](#INVALID_VALUE)
* [JOYSTICK\_1](#JOYSTICK_1)
* [JOYSTICK\_10](#JOYSTICK_10)
* [JOYSTICK\_11](#JOYSTICK_11)
* [JOYSTICK\_12](#JOYSTICK_12)
* [JOYSTICK\_13](#JOYSTICK_13)
* [JOYSTICK\_14](#JOYSTICK_14)
* [JOYSTICK\_15](#JOYSTICK_15)
* [JOYSTICK\_16](#JOYSTICK_16)
* [JOYSTICK\_2](#JOYSTICK_2)
* [JOYSTICK\_3](#JOYSTICK_3)
* [JOYSTICK\_4](#JOYSTICK_4)
* [JOYSTICK\_5](#JOYSTICK_5)
* [JOYSTICK\_6](#JOYSTICK_6)
* [JOYSTICK\_7](#JOYSTICK_7)
* [JOYSTICK\_8](#JOYSTICK_8)
* [JOYSTICK\_9](#JOYSTICK_9)
* [JOYSTICK\_HAT\_BUTTONS](#JOYSTICK_HAT_BUTTONS)
* [JOYSTICK\_LAST](#JOYSTICK_LAST)
* [KEY\_0](#KEY_0)
* [KEY\_1](#KEY_1)
* [KEY\_2](#KEY_2)
* [KEY\_3](#KEY_3)
* [KEY\_4](#KEY_4)
* [KEY\_5](#KEY_5)
* [KEY\_6](#KEY_6)
* [KEY\_7](#KEY_7)
* [KEY\_8](#KEY_8)
* [KEY\_9](#KEY_9)
* [KEY\_A](#KEY_A)
* [KEY\_APOSTROPHE](#KEY_APOSTROPHE)
* [KEY\_B](#KEY_B)
* [KEY\_BACKSLASH](#KEY_BACKSLASH)
* [KEY\_BACKSPACE](#KEY_BACKSPACE)
* [KEY\_C](#KEY_C)
* [KEY\_CAPS\_LOCK](#KEY_CAPS_LOCK)
* [KEY\_COMMA](#KEY_COMMA)
* [KEY\_D](#KEY_D)
* [KEY\_DELETE](#KEY_DELETE)
* [KEY\_DOWN](#KEY_DOWN)
* [KEY\_E](#KEY_E)
* [KEY\_END](#KEY_END)
* [KEY\_ENTER](#KEY_ENTER)
* [KEY\_EQUAL](#KEY_EQUAL)
* [KEY\_ESCAPE](#KEY_ESCAPE)
* [KEY\_F](#KEY_F)
* [KEY\_F1](#KEY_F1)
* [KEY\_F10](#KEY_F10)
* [KEY\_F11](#KEY_F11)
* [KEY\_F12](#KEY_F12)
* [KEY\_F13](#KEY_F13)
* [KEY\_F14](#KEY_F14)
* [KEY\_F15](#KEY_F15)
* [KEY\_F16](#KEY_F16)
* [KEY\_F17](#KEY_F17)
* [KEY\_F18](#KEY_F18)
* [KEY\_F19](#KEY_F19)
* [KEY\_F2](#KEY_F2)
* [KEY\_F20](#KEY_F20)
* [KEY\_F21](#KEY_F21)
* [KEY\_F22](#KEY_F22)
* [KEY\_F23](#KEY_F23)
* [KEY\_F24](#KEY_F24)
* [KEY\_F25](#KEY_F25)
* [KEY\_F3](#KEY_F3)
* [KEY\_F4](#KEY_F4)
* [KEY\_F5](#KEY_F5)
* [KEY\_F6](#KEY_F6)
* [KEY\_F7](#KEY_F7)
* [KEY\_F8](#KEY_F8)
* [KEY\_F9](#KEY_F9)
* [KEY\_G](#KEY_G)
* [KEY\_GRAVE\_ACCENT](#KEY_GRAVE_ACCENT)
* [KEY\_H](#KEY_H)
* [KEY\_HOME](#KEY_HOME)
* [KEY\_I](#KEY_I)
* [KEY\_INSERT](#KEY_INSERT)
* [KEY\_J](#KEY_J)
* [KEY\_K](#KEY_K)
* [KEY\_KP\_0](#KEY_KP_0)
* [KEY\_KP\_1](#KEY_KP_1)
* [KEY\_KP\_2](#KEY_KP_2)
* [KEY\_KP\_3](#KEY_KP_3)
* [KEY\_KP\_4](#KEY_KP_4)
* [KEY\_KP\_5](#KEY_KP_5)
* [KEY\_KP\_6](#KEY_KP_6)
* [KEY\_KP\_7](#KEY_KP_7)
* [KEY\_KP\_8](#KEY_KP_8)
* [KEY\_KP\_9](#KEY_KP_9)
* [KEY\_KP\_ADD](#KEY_KP_ADD)
* [KEY\_KP\_DECIMAL](#KEY_KP_DECIMAL)
* [KEY\_KP\_DIVIDE](#KEY_KP_DIVIDE)
* [KEY\_KP\_ENTER](#KEY_KP_ENTER)
* [KEY\_KP\_EQUAL](#KEY_KP_EQUAL)
* [KEY\_KP\_MULTIPLY](#KEY_KP_MULTIPLY)
* [KEY\_KP\_SUBTRACT](#KEY_KP_SUBTRACT)
* [KEY\_L](#KEY_L)
* [KEY\_LAST](#KEY_LAST)
* [KEY\_LEFT](#KEY_LEFT)
* [KEY\_LEFT\_ALT](#KEY_LEFT_ALT)
* [KEY\_LEFT\_BRACKET](#KEY_LEFT_BRACKET)
* [KEY\_LEFT\_CONTROL](#KEY_LEFT_CONTROL)
* [KEY\_LEFT\_SHIFT](#KEY_LEFT_SHIFT)
* [KEY\_LEFT\_SUPER](#KEY_LEFT_SUPER)
* [KEY\_M](#KEY_M)
* [KEY\_MENU](#KEY_MENU)
* [KEY\_MINUS](#KEY_MINUS)
* [KEY\_N](#KEY_N)
* [KEY\_NUM\_LOCK](#KEY_NUM_LOCK)
* [KEY\_O](#KEY_O)
* [KEY\_P](#KEY_P)
* [KEY\_PAGE\_DOWN](#KEY_PAGE_DOWN)
* [KEY\_PAGE\_UP](#KEY_PAGE_UP)
* [KEY\_PAUSE](#KEY_PAUSE)
* [KEY\_PERIOD](#KEY_PERIOD)
* [KEY\_PRINT\_SCREEN](#KEY_PRINT_SCREEN)
* [KEY\_Q](#KEY_Q)
* [KEY\_R](#KEY_R)
* [KEY\_RIGHT](#KEY_RIGHT)
* [KEY\_RIGHT\_ALT](#KEY_RIGHT_ALT)
* [KEY\_RIGHT\_BRACKET](#KEY_RIGHT_BRACKET)
* [KEY\_RIGHT\_CONTROL](#KEY_RIGHT_CONTROL)
* [KEY\_RIGHT\_SHIFT](#KEY_RIGHT_SHIFT)
* [KEY\_RIGHT\_SUPER](#KEY_RIGHT_SUPER)
* [KEY\_S](#KEY_S)
* [KEY\_SCROLL\_LOCK](#KEY_SCROLL_LOCK)
* [KEY\_SEMICOLON](#KEY_SEMICOLON)
* [KEY\_SLASH](#KEY_SLASH)
* [KEY\_SPACE](#KEY_SPACE)
* [KEY\_T](#KEY_T)
* [KEY\_TAB](#KEY_TAB)
* [KEY\_U](#KEY_U)
* [KEY\_UNKNOWN](#KEY_UNKNOWN)
* [KEY\_UP](#KEY_UP)
* [KEY\_V](#KEY_V)
* [KEY\_W](#KEY_W)
* [KEY\_WORLD\_1](#KEY_WORLD_1)
* [KEY\_WORLD\_2](#KEY_WORLD_2)
* [KEY\_X](#KEY_X)
* [KEY\_Y](#KEY_Y)
* [KEY\_Z](#KEY_Z)
* [LOCK\_KEY\_MODS](#LOCK_KEY_MODS)
* [LOSE\_CONTEXT\_ON\_RESET](#LOSE_CONTEXT_ON_RESET)
* [MAXIMIZED](#MAXIMIZED)
* [MOD\_ALT](#MOD_ALT)
* [MOD\_CAPS\_LOCK](#MOD_CAPS_LOCK)
* [MOD\_CONTROL](#MOD_CONTROL)
* [MOD\_NUM\_LOCK](#MOD_NUM_LOCK)
* [MOD\_SHIFT](#MOD_SHIFT)
* [MOD\_SUPER](#MOD_SUPER)
* [MOUSE\_BUTTON\_1](#MOUSE_BUTTON_1)
* [MOUSE\_BUTTON\_2](#MOUSE_BUTTON_2)
* [MOUSE\_BUTTON\_3](#MOUSE_BUTTON_3)
* [MOUSE\_BUTTON\_4](#MOUSE_BUTTON_4)
* [MOUSE\_BUTTON\_5](#MOUSE_BUTTON_5)
* [MOUSE\_BUTTON\_6](#MOUSE_BUTTON_6)
* [MOUSE\_BUTTON\_7](#MOUSE_BUTTON_7)
* [MOUSE\_BUTTON\_8](#MOUSE_BUTTON_8)
* [MOUSE\_BUTTON\_LAST](#MOUSE_BUTTON_LAST)
* [MOUSE\_BUTTON\_LEFT](#MOUSE_BUTTON_LEFT)
* [MOUSE\_BUTTON\_MIDDLE](#MOUSE_BUTTON_MIDDLE)
* [MOUSE\_BUTTON\_RIGHT](#MOUSE_BUTTON_RIGHT)
* [MOUSE\_PASSTHROUGH](#MOUSE_PASSTHROUGH)
* [NATIVE\_CONTEXT\_API](#NATIVE_CONTEXT_API)
* [NOT\_ALLOWED\_CURSOR](#NOT_ALLOWED_CURSOR)
* [NOT\_INITIALIZED](#NOT_INITIALIZED)
* [NO\_API](#NO_API)
* [NO\_CURRENT\_CONTEXT](#NO_CURRENT_CONTEXT)
* [NO\_ERROR](#NO_ERROR)
* [NO\_RESET\_NOTIFICATION](#NO_RESET_NOTIFICATION)
* [NO\_ROBUSTNESS](#NO_ROBUSTNESS)
* [NO\_WINDOW\_CONTEXT](#NO_WINDOW_CONTEXT)
* [OPENGL\_ANY\_PROFILE](#OPENGL_ANY_PROFILE)
* [OPENGL\_API](#OPENGL_API)
* [OPENGL\_COMPAT\_PROFILE](#OPENGL_COMPAT_PROFILE)
* [OPENGL\_CORE\_PROFILE](#OPENGL_CORE_PROFILE)
* [OPENGL\_DEBUG\_CONTEXT](#OPENGL_DEBUG_CONTEXT)
* [OPENGL\_ES\_API](#OPENGL_ES_API)
* [OPENGL\_FORWARD\_COMPAT](#OPENGL_FORWARD_COMPAT)
* [OPENGL\_PROFILE](#OPENGL_PROFILE)
* [OSMESA\_CONTEXT\_API](#OSMESA_CONTEXT_API)
* [OUT\_OF\_MEMORY](#OUT_OF_MEMORY)
* [PLATFORM](#PLATFORM)
* [PLATFORM\_COCOA](#PLATFORM_COCOA)
* [PLATFORM\_ERROR](#PLATFORM_ERROR)
* [PLATFORM\_NULL](#PLATFORM_NULL)
* [PLATFORM\_UNAVAILABLE](#PLATFORM_UNAVAILABLE)
* [PLATFORM\_WAYLAND](#PLATFORM_WAYLAND)
* [PLATFORM\_WIN32](#PLATFORM_WIN32)
* [PLATFORM\_X11](#PLATFORM_X11)
* [POINTING\_HAND\_CURSOR](#POINTING_HAND_CURSOR)
* [POSITION\_X](#POSITION_X)
* [POSITION\_Y](#POSITION_Y)
* [PRESS](#PRESS)
* [RAW\_MOUSE\_MOTION](#RAW_MOUSE_MOTION)
* [RED\_BITS](#RED_BITS)
* [REFRESH\_RATE](#REFRESH_RATE)
* [RELEASE](#RELEASE)
* [RELEASE\_BEHAVIOR\_FLUSH](#RELEASE_BEHAVIOR_FLUSH)
* [RELEASE\_BEHAVIOR\_NONE](#RELEASE_BEHAVIOR_NONE)
* [REPEAT](#REPEAT)
* [RESIZABLE](#RESIZABLE)
* [RESIZE\_ALL\_CURSOR](#RESIZE_ALL_CURSOR)
* [RESIZE\_EW\_CURSOR](#RESIZE_EW_CURSOR)
* [RESIZE\_NESW\_CURSOR](#RESIZE_NESW_CURSOR)
* [RESIZE\_NS\_CURSOR](#RESIZE_NS_CURSOR)
* [RESIZE\_NWSE\_CURSOR](#RESIZE_NWSE_CURSOR)
* [SAMPLES](#SAMPLES)
* [SCALE\_FRAMEBUFFER](#SCALE_FRAMEBUFFER)
* [SCALE\_TO\_MONITOR](#SCALE_TO_MONITOR)
* [SRGB\_CAPABLE](#SRGB_CAPABLE)
* [STENCIL\_BITS](#STENCIL_BITS)
* [STEREO](#STEREO)
* [STICKY\_KEYS](#STICKY_KEYS)
* [STICKY\_MOUSE\_BUTTONS](#STICKY_MOUSE_BUTTONS)
* [TRANSPARENT\_FRAMEBUFFER](#TRANSPARENT_FRAMEBUFFER)
* [TRUE](#TRUE)
* [VERSION\_MAJOR](#VERSION_MAJOR)
* [VERSION\_MINOR](#VERSION_MINOR)
* [VERSION\_REVISION](#VERSION_REVISION)
* [VERSION\_UNAVAILABLE](#VERSION_UNAVAILABLE)
* [VISIBLE](#VISIBLE)
* [VRESIZE\_CURSOR](#VRESIZE_CURSOR)
* [WAYLAND\_APP\_ID](#WAYLAND_APP_ID)
* [WAYLAND\_DISABLE\_LIBDECOR](#WAYLAND_DISABLE_LIBDECOR)
* [WAYLAND\_LIBDECOR](#WAYLAND_LIBDECOR)
* [WAYLAND\_PREFER\_LIBDECOR](#WAYLAND_PREFER_LIBDECOR)
* [WIN32\_KEYBOARD\_MENU](#WIN32_KEYBOARD_MENU)
* [WIN32\_SHOWDEFAULT](#WIN32_SHOWDEFAULT)
* [X11\_CLASS\_NAME](#X11_CLASS_NAME)
* [X11\_INSTANCE\_NAME](#X11_INSTANCE_NAME)
* [X11\_XCB\_VULKAN\_SURFACE](#X11_XCB_VULKAN_SURFACE)

Variables (0)

This section is empty.

Procedures (33)

* [GetClipboardString](#GetClipboardString)
* [GetCursorPos](#GetCursorPos)
* [GetError](#GetError)
* [GetFramebufferSize](#GetFramebufferSize)
* [GetGamepadName](#GetGamepadName)
* [GetJoystickAxes](#GetJoystickAxes)
* [GetJoystickButtons](#GetJoystickButtons)
* [GetJoystickGUID](#GetJoystickGUID)
* [GetJoystickHats](#GetJoystickHats)
* [GetJoystickName](#GetJoystickName)
* [GetKeyName](#GetKeyName)
* [GetMonitorContentScale](#GetMonitorContentScale)
* [GetMonitorName](#GetMonitorName)
* [GetMonitorPhysicalSize](#GetMonitorPhysicalSize)
* [GetMonitorPos](#GetMonitorPos)
* [GetMonitorWorkarea](#GetMonitorWorkarea)
* [GetMonitors](#GetMonitors)
* [GetRequiredInstanceExtensions](#GetRequiredInstanceExtensions)
* [GetVersion](#GetVersion)
* [GetVersionString](#GetVersionString)
* [GetVideoModes](#GetVideoModes)
* [GetWGLContext](#GetWGLContext)
* [GetWin32Adapter](#GetWin32Adapter)
* [GetWin32Monitor](#GetWin32Monitor)
* [GetWin32Window](#GetWin32Window)
* [GetWindowContentScale](#GetWindowContentScale)
* [GetWindowFrameSize](#GetWindowFrameSize)
* [GetWindowPos](#GetWindowPos)
* [GetWindowSize](#GetWindowSize)
* [SetWindowIcon](#SetWindowIcon)
* [WindowHint\_bool](#WindowHint_bool)
* [WindowHint\_int](#WindowHint_int)
* [gl\_set\_proc\_address](#gl_set_proc_address)

Procedure Groups (1)

* [WindowHint](#WindowHint)

`#config` values (1)

* [GLFW\_SHARED](#GLFW_SHARED)

## Types

### [AllocateProc ¶](#AllocateProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L41)

```
AllocateProc :: glfw_bindings.AllocateProc
```

### [Allocator ¶](#Allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L15)

```
Allocator :: glfw_bindings.Allocator
```

### [CharModsProc ¶](#CharModsProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L35)

```
CharModsProc :: glfw_bindings.CharModsProc
```

### [CharProc ¶](#CharProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L34)

```
CharProc :: glfw_bindings.CharProc
```

### [CursorEnterProc ¶](#CursorEnterProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L36)

```
CursorEnterProc :: glfw_bindings.CursorEnterProc
```

### [CursorHandle ¶](#CursorHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L8)

```
CursorHandle :: glfw_bindings.CursorHandle
```

### [CursorPosProc ¶](#CursorPosProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L32)

```
CursorPosProc :: glfw_bindings.CursorPosProc
```

### [DeallocateProc ¶](#DeallocateProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L43)

```
DeallocateProc :: glfw_bindings.DeallocateProc
```

### [DropProc ¶](#DropProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L27)

```
DropProc :: glfw_bindings.DropProc
```

### [ErrorProc ¶](#ErrorProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L39)

```
ErrorProc :: glfw_bindings.ErrorProc
```

### [FramebufferSizeProc ¶](#FramebufferSizeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L26)

```
FramebufferSizeProc :: glfw_bindings.FramebufferSizeProc
```

### [GamepadState ¶](#GamepadState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L13)

```
GamepadState :: glfw_bindings.GamepadState
```

### [GammaRamp ¶](#GammaRamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L11)

```
GammaRamp :: glfw_bindings.GammaRamp
```

### [Image ¶](#Image) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L12)

```
Image :: glfw_bindings.Image
```

### [JoystickProc ¶](#JoystickProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L37)

```
JoystickProc :: glfw_bindings.JoystickProc
```

### [KeyProc ¶](#KeyProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L30)

```
KeyProc :: glfw_bindings.KeyProc
```

### [MonitorHandle ¶](#MonitorHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L7)

```
MonitorHandle :: glfw_bindings.MonitorHandle
```

##### Related Procedures With Parameters

* [GetMonitorContentScale](/vendor/glfw/#GetMonitorContentScale)
* [GetMonitorName](/vendor/glfw/#GetMonitorName)
* [GetMonitorPhysicalSize](/vendor/glfw/#GetMonitorPhysicalSize)
* [GetMonitorPos](/vendor/glfw/#GetMonitorPos)
* [GetMonitorWorkarea](/vendor/glfw/#GetMonitorWorkarea)
* [GetVideoModes](/vendor/glfw/#GetVideoModes)
* [GetWin32Adapter](/vendor/glfw/#GetWin32Adapter)
* [GetWin32Monitor](/vendor/glfw/#GetWin32Monitor)

### [MonitorProc ¶](#MonitorProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L28)

```
MonitorProc :: glfw_bindings.MonitorProc
```

### [MouseButtonProc ¶](#MouseButtonProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L31)

```
MouseButtonProc :: glfw_bindings.MouseButtonProc
```

### [ReallocateProc ¶](#ReallocateProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L42)

```
ReallocateProc :: glfw_bindings.ReallocateProc
```

### [ScrollProc ¶](#ScrollProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L33)

```
ScrollProc :: glfw_bindings.ScrollProc
```

### [VidMode ¶](#VidMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L10)

```
VidMode :: glfw_bindings.VidMode
```

### [WindowCloseProc ¶](#WindowCloseProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L21)

```
WindowCloseProc :: glfw_bindings.WindowCloseProc
```

### [WindowContentScaleProc ¶](#WindowContentScaleProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L25)

```
WindowContentScaleProc :: glfw_bindings.WindowContentScaleProc
```

### [WindowFocusProc ¶](#WindowFocusProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L20)

```
WindowFocusProc :: glfw_bindings.WindowFocusProc
```

### [WindowHandle ¶](#WindowHandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L6)

```
WindowHandle :: glfw_bindings.WindowHandle
```

##### Related Procedures With Parameters

* [GetClipboardString](/vendor/glfw/#GetClipboardString)
* [GetCursorPos](/vendor/glfw/#GetCursorPos)
* [GetFramebufferSize](/vendor/glfw/#GetFramebufferSize)
* [GetWGLContext](/vendor/glfw/#GetWGLContext)
* [GetWin32Window](/vendor/glfw/#GetWin32Window)
* [GetWindowContentScale](/vendor/glfw/#GetWindowContentScale)
* [GetWindowFrameSize](/vendor/glfw/#GetWindowFrameSize)
* [GetWindowPos](/vendor/glfw/#GetWindowPos)
* [GetWindowSize](/vendor/glfw/#GetWindowSize)
* [SetWindowIcon](/vendor/glfw/#SetWindowIcon)

### [WindowIconifyProc ¶](#WindowIconifyProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L18)

```
WindowIconifyProc :: glfw_bindings.WindowIconifyProc
```

 

**Procedure type declarations**

### [WindowMaximizeProc ¶](#WindowMaximizeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L24)

```
WindowMaximizeProc :: glfw_bindings.WindowMaximizeProc
```

### [WindowPosProc ¶](#WindowPosProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L23)

```
WindowPosProc :: glfw_bindings.WindowPosProc
```

### [WindowRefreshProc ¶](#WindowRefreshProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L19)

```
WindowRefreshProc :: glfw_bindings.WindowRefreshProc
```

### [WindowSizeProc ¶](#WindowSizeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin#L22)

```
WindowSizeProc :: glfw_bindings.WindowSizeProc
```

## Constants

### [ACCUM\_ALPHA\_BITS ¶](#ACCUM_ALPHA_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L297)

```
ACCUM_ALPHA_BITS :: 0x0002100A
```

### [ACCUM\_BLUE\_BITS ¶](#ACCUM_BLUE_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L296)

```
ACCUM_BLUE_BITS :: 0x00021009
```

### [ACCUM\_GREEN\_BITS ¶](#ACCUM_GREEN_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L295)

```
ACCUM_GREEN_BITS :: 0x00021008
```

### [ACCUM\_RED\_BITS ¶](#ACCUM_RED_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L294)

```
ACCUM_RED_BITS :: 0x00021007
```

### [ALPHA\_BITS ¶](#ALPHA_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L291)

```
ALPHA_BITS :: 0x00021004
```

### [ANGLE\_PLATFORM\_TYPE ¶](#ANGLE_PLATFORM_TYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L406)

```
ANGLE_PLATFORM_TYPE :: 0x00050002
```

### [ANGLE\_PLATFORM\_TYPE\_D3D11 ¶](#ANGLE_PLATFORM_TYPE_D3D11) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L375)

```
ANGLE_PLATFORM_TYPE_D3D11 :: 0x00037005
```

### [ANGLE\_PLATFORM\_TYPE\_D3D9 ¶](#ANGLE_PLATFORM_TYPE_D3D9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L374)

```
ANGLE_PLATFORM_TYPE_D3D9 :: 0x00037004
```

### [ANGLE\_PLATFORM\_TYPE\_METAL ¶](#ANGLE_PLATFORM_TYPE_METAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L377)

```
ANGLE_PLATFORM_TYPE_METAL :: 0x00037008
```

### [ANGLE\_PLATFORM\_TYPE\_NONE ¶](#ANGLE_PLATFORM_TYPE_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L371)

```
ANGLE_PLATFORM_TYPE_NONE :: 0x00037001
```

### [ANGLE\_PLATFORM\_TYPE\_OPENGL ¶](#ANGLE_PLATFORM_TYPE_OPENGL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L372)

```
ANGLE_PLATFORM_TYPE_OPENGL :: 0x00037002
```

### [ANGLE\_PLATFORM\_TYPE\_OPENGLES ¶](#ANGLE_PLATFORM_TYPE_OPENGLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L373)

```
ANGLE_PLATFORM_TYPE_OPENGLES :: 0x00037003
```

### [ANGLE\_PLATFORM\_TYPE\_VULKAN ¶](#ANGLE_PLATFORM_TYPE_VULKAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L376)

```
ANGLE_PLATFORM_TYPE_VULKAN :: 0x00037007
```

### [ANY\_PLATFORM ¶](#ANY_PLATFORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L415)

```
ANY_PLATFORM :: 0x00060000
```

### [ANY\_POSITION ¶](#ANY_POSITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L382)

```
ANY_POSITION :: 0x80000000
```

### [ANY\_RELEASE\_BEHAVIOR ¶](#ANY_RELEASE_BEHAVIOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L362)

```
ANY_RELEASE_BEHAVIOR :: 0
```

 

Behavior?

### [API\_UNAVAILABLE ¶](#API_UNAVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L260)

```
API_UNAVAILABLE :: 0x00010006
```

### [ARROW\_CURSOR ¶](#ARROW_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L385)

```
ARROW_CURSOR :: 0x00036001
```

 

Types of cursors

### [AUTO\_ICONIFY ¶](#AUTO_ICONIFY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L276)

```
AUTO_ICONIFY :: 0x00020006
```

### [AUX\_BUFFERS ¶](#AUX_BUFFERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L298)

```
AUX_BUFFERS :: 0x0002100B
```

### [BLUE\_BITS ¶](#BLUE_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L290)

```
BLUE_BITS :: 0x00021003
```

### [CENTER\_CURSOR ¶](#CENTER_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L279)

```
CENTER_CURSOR :: 0x00020009
```

### [CLIENT\_API ¶](#CLIENT_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L306)

```
CLIENT_API :: 0x00022001
```

 

Context window attributes

### [COCOA\_CHDIR\_RESOURCES ¶](#COCOA_CHDIR_RESOURCES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L410)

```
COCOA_CHDIR_RESOURCES :: 0x00051001
```

 

Platform specific init hints.

### [COCOA\_FRAME\_NAME ¶](#COCOA_FRAME_NAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L323)

```
COCOA_FRAME_NAME :: 0x00023002
```

### [COCOA\_GRAPHICS\_SWITCHING ¶](#COCOA_GRAPHICS_SWITCHING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L324)

```
COCOA_GRAPHICS_SWITCHING :: 0x00023003
```

### [COCOA\_MENUBAR ¶](#COCOA_MENUBAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L411)

```
COCOA_MENUBAR :: 0x00051002
```

### [COCOA\_RETINA\_FRAMEBUFFER ¶](#COCOA_RETINA_FRAMEBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L322)

```
COCOA_RETINA_FRAMEBUFFER :: 0x00023001
```

 

Cross platform attributes

### [CONNECTED ¶](#CONNECTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L402)

```
CONNECTED :: 0x00040001
```

 

Joystick?

### [CONTEXT\_CREATION\_API ¶](#CONTEXT_CREATION_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L317)

```
CONTEXT_CREATION_API :: 0x0002200B
```

### [CONTEXT\_DEBUG ¶](#CONTEXT_DEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L312)

```
CONTEXT_DEBUG :: 0x00022007
```

### [CONTEXT\_NO\_ERROR ¶](#CONTEXT_NO_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L316)

```
CONTEXT_NO_ERROR :: 0x0002200A
```

### [CONTEXT\_RELEASE\_BEHAVIOR ¶](#CONTEXT_RELEASE_BEHAVIOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L315)

```
CONTEXT_RELEASE_BEHAVIOR :: 0x00022009
```

### [CONTEXT\_REVISION ¶](#CONTEXT_REVISION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L309)

```
CONTEXT_REVISION :: 0x00022004
```

### [CONTEXT\_ROBUSTNESS ¶](#CONTEXT_ROBUSTNESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L310)

```
CONTEXT_ROBUSTNESS :: 0x00022005
```

### [CONTEXT\_VERSION\_MAJOR ¶](#CONTEXT_VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L307)

```
CONTEXT_VERSION_MAJOR :: 0x00022002
```

### [CONTEXT\_VERSION\_MINOR ¶](#CONTEXT_VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L308)

```
CONTEXT_VERSION_MINOR :: 0x00022003
```

### [CROSSHAIR\_CURSOR ¶](#CROSSHAIR_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L387)

```
CROSSHAIR_CURSOR :: 0x00036003
```

### [CURSOR ¶](#CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L347)

```
CURSOR :: 0x00033001
```

 

Cursor draw state and whether keys are sticky

### [CURSOR\_CAPTURED ¶](#CURSOR_CAPTURED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L356)

```
CURSOR_CAPTURED :: 0x00034004
```

### [CURSOR\_DISABLED ¶](#CURSOR_DISABLED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L355)

```
CURSOR_DISABLED :: 0x00034003
```

### [CURSOR\_HIDDEN ¶](#CURSOR_HIDDEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L354)

```
CURSOR_HIDDEN :: 0x00034002
```

### [CURSOR\_NORMAL ¶](#CURSOR_NORMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L353)

```
CURSOR_NORMAL :: 0x00034001
```

 

Cursor draw state

### [CURSOR\_UNAVAILABLE ¶](#CURSOR_UNAVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L265)

```
CURSOR_UNAVAILABLE :: 0x0001000B
```

### [DECORATED ¶](#DECORATED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L275)

```
DECORATED :: 0x00020005
```

### [DEPTH\_BITS ¶](#DEPTH_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L292)

```
DEPTH_BITS :: 0x00021005
```

### [DISCONNECTED ¶](#DISCONNECTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L403)

```
DISCONNECTED :: 0x00040002
```

### [DONT\_CARE ¶](#DONT_CARE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L423)

```
DONT_CARE :: -1
```

### [DOUBLEBUFFER ¶](#DOUBLEBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L303)

```
DOUBLEBUFFER :: 0x00021010
```

### [EGL\_CONTEXT\_API ¶](#EGL_CONTEXT_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L368)

```
EGL_CONTEXT_API :: 0x00036002
```

### [FALSE ¶](#FALSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L14)

```
FALSE :: false
```

### [FEATURE\_UNAVAILABLE ¶](#FEATURE_UNAVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L266)

```
FEATURE_UNAVAILABLE :: 0x0001000C
```

### [FEATURE\_UNIMPLEMENTED ¶](#FEATURE_UNIMPLEMENTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L267)

```
FEATURE_UNIMPLEMENTED :: 0x0001000D
```

### [FLOATING ¶](#FLOATING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L277)

```
FLOATING :: 0x00020007
```

### [FOCUSED ¶](#FOCUSED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L271)

```
FOCUSED :: 0x00020001
```

 

Window attributes

### [FOCUS\_ON\_SHOW ¶](#FOCUS_ON_SHOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L282)

```
FOCUS_ON_SHOW :: 0x0002000C
```

### [FORMAT\_UNAVAILABLE ¶](#FORMAT_UNAVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L263)

```
FORMAT_UNAVAILABLE :: 0x00010009
```

### [GAMEPAD\_AXIS\_LAST ¶](#GAMEPAD_AXIS_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L251)

```
GAMEPAD_AXIS_LAST :: GAMEPAD_AXIS_RIGHT_TRIGGER
```

### [GAMEPAD\_AXIS\_LEFT\_TRIGGER ¶](#GAMEPAD_AXIS_LEFT_TRIGGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L249)

```
GAMEPAD_AXIS_LEFT_TRIGGER :: 4
```

### [GAMEPAD\_AXIS\_LEFT\_X ¶](#GAMEPAD_AXIS_LEFT_X) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L245)

```
GAMEPAD_AXIS_LEFT_X :: 0
```

 

Gamepad axes

### [GAMEPAD\_AXIS\_LEFT\_Y ¶](#GAMEPAD_AXIS_LEFT_Y) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L246)

```
GAMEPAD_AXIS_LEFT_Y :: 1
```

### [GAMEPAD\_AXIS\_RIGHT\_TRIGGER ¶](#GAMEPAD_AXIS_RIGHT_TRIGGER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L250)

```
GAMEPAD_AXIS_RIGHT_TRIGGER :: 5
```

### [GAMEPAD\_AXIS\_RIGHT\_X ¶](#GAMEPAD_AXIS_RIGHT_X) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L247)

```
GAMEPAD_AXIS_RIGHT_X :: 2
```

### [GAMEPAD\_AXIS\_RIGHT\_Y ¶](#GAMEPAD_AXIS_RIGHT_Y) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L248)

```
GAMEPAD_AXIS_RIGHT_Y :: 3
```

### [GAMEPAD\_BUTTON\_A ¶](#GAMEPAD_BUTTON_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L222)

```
GAMEPAD_BUTTON_A :: 0
```

 

Gamepad buttons

### [GAMEPAD\_BUTTON\_B ¶](#GAMEPAD_BUTTON_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L223)

```
GAMEPAD_BUTTON_B :: 1
```

### [GAMEPAD\_BUTTON\_BACK ¶](#GAMEPAD_BUTTON_BACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L228)

```
GAMEPAD_BUTTON_BACK :: 6
```

### [GAMEPAD\_BUTTON\_CIRCLE ¶](#GAMEPAD_BUTTON_CIRCLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L240)

```
GAMEPAD_BUTTON_CIRCLE :: GAMEPAD_BUTTON_B
```

### [GAMEPAD\_BUTTON\_CROSS ¶](#GAMEPAD_BUTTON_CROSS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L239)

```
GAMEPAD_BUTTON_CROSS :: GAMEPAD_BUTTON_A
```

### [GAMEPAD\_BUTTON\_DPAD\_DOWN ¶](#GAMEPAD_BUTTON_DPAD_DOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L235)

```
GAMEPAD_BUTTON_DPAD_DOWN :: 13
```

### [GAMEPAD\_BUTTON\_DPAD\_LEFT ¶](#GAMEPAD_BUTTON_DPAD_LEFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L236)

```
GAMEPAD_BUTTON_DPAD_LEFT :: 14
```

### [GAMEPAD\_BUTTON\_DPAD\_RIGHT ¶](#GAMEPAD_BUTTON_DPAD_RIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L234)

```
GAMEPAD_BUTTON_DPAD_RIGHT :: 12
```

### [GAMEPAD\_BUTTON\_DPAD\_UP ¶](#GAMEPAD_BUTTON_DPAD_UP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L233)

```
GAMEPAD_BUTTON_DPAD_UP :: 11
```

### [GAMEPAD\_BUTTON\_GUIDE ¶](#GAMEPAD_BUTTON_GUIDE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L230)

```
GAMEPAD_BUTTON_GUIDE :: 8
```

### [GAMEPAD\_BUTTON\_LAST ¶](#GAMEPAD_BUTTON_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L237)

```
GAMEPAD_BUTTON_LAST :: GAMEPAD_BUTTON_DPAD_LEFT
```

### [GAMEPAD\_BUTTON\_LEFT\_BUMPER ¶](#GAMEPAD_BUTTON_LEFT_BUMPER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L226)

```
GAMEPAD_BUTTON_LEFT_BUMPER :: 4
```

### [GAMEPAD\_BUTTON\_LEFT\_THUMB ¶](#GAMEPAD_BUTTON_LEFT_THUMB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L231)

```
GAMEPAD_BUTTON_LEFT_THUMB :: 9
```

### [GAMEPAD\_BUTTON\_RIGHT\_BUMPER ¶](#GAMEPAD_BUTTON_RIGHT_BUMPER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L227)

```
GAMEPAD_BUTTON_RIGHT_BUMPER :: 5
```

### [GAMEPAD\_BUTTON\_RIGHT\_THUMB ¶](#GAMEPAD_BUTTON_RIGHT_THUMB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L232)

```
GAMEPAD_BUTTON_RIGHT_THUMB :: 10
```

### [GAMEPAD\_BUTTON\_SQUARE ¶](#GAMEPAD_BUTTON_SQUARE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L241)

```
GAMEPAD_BUTTON_SQUARE :: GAMEPAD_BUTTON_X
```

### [GAMEPAD\_BUTTON\_START ¶](#GAMEPAD_BUTTON_START) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L229)

```
GAMEPAD_BUTTON_START :: 7
```

### [GAMEPAD\_BUTTON\_TRIANGLE ¶](#GAMEPAD_BUTTON_TRIANGLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L242)

```
GAMEPAD_BUTTON_TRIANGLE :: GAMEPAD_BUTTON_Y
```

### [GAMEPAD\_BUTTON\_X ¶](#GAMEPAD_BUTTON_X) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L224)

```
GAMEPAD_BUTTON_X :: 2
```

### [GAMEPAD\_BUTTON\_Y ¶](#GAMEPAD_BUTTON_Y) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L225)

```
GAMEPAD_BUTTON_Y :: 3
```

### [GLFW\_SHARED ¶](#GLFW_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L4)

```
GLFW_SHARED :: #config(GLFW_SHARED, false)
```

 

Config

### [GREEN\_BITS ¶](#GREEN_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L289)

```
GREEN_BITS :: 0x00021002
```

### [HAND\_CURSOR ¶](#HAND_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L399)

```
HAND_CURSOR :: POINTING_HAND_CURSOR
```

### [HAT\_CENTERED ¶](#HAT_CENTERED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L22)

```
HAT_CENTERED :: 0
```

 

Joystick hat states.

### [HAT\_DOWN ¶](#HAT_DOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L25)

```
HAT_DOWN :: 4
```

### [HAT\_LEFT ¶](#HAT_LEFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L26)

```
HAT_LEFT :: 8
```

### [HAT\_LEFT\_DOWN ¶](#HAT_LEFT_DOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L30)

```
HAT_LEFT_DOWN :: HAT_LEFT | HAT_DOWN
```

### [HAT\_LEFT\_UP ¶](#HAT_LEFT_UP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L29)

```
HAT_LEFT_UP :: HAT_LEFT | HAT_UP
```

### [HAT\_RIGHT ¶](#HAT_RIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L24)

```
HAT_RIGHT :: 2
```

### [HAT\_RIGHT\_DOWN ¶](#HAT_RIGHT_DOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L28)

```
HAT_RIGHT_DOWN :: HAT_RIGHT | HAT_DOWN
```

### [HAT\_RIGHT\_UP ¶](#HAT_RIGHT_UP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L27)

```
HAT_RIGHT_UP :: HAT_RIGHT | HAT_UP
```

### [HAT\_UP ¶](#HAT_UP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L23)

```
HAT_UP :: 1
```

### [HOVERED ¶](#HOVERED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L281)

```
HOVERED :: 0x0002000B
```

### [HRESIZE\_CURSOR ¶](#HRESIZE_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L397)

```
HRESIZE_CURSOR :: RESIZE_EW_CURSOR
```

 

Backwards compatibility cursors.

### [IBEAM\_CURSOR ¶](#IBEAM_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L386)

```
IBEAM_CURSOR :: 0x00036002
```

### [ICONIFIED ¶](#ICONIFIED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L272)

```
ICONIFIED :: 0x00020002
```

### [INVALID\_ENUM ¶](#INVALID_ENUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L257)

```
INVALID_ENUM :: 0x00010003
```

### [INVALID\_VALUE ¶](#INVALID_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L258)

```
INVALID_VALUE :: 0x00010004
```

### [JOYSTICK\_1 ¶](#JOYSTICK_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L202)

```
JOYSTICK_1 :: 0
```

 

Joystick buttons

### [JOYSTICK\_10 ¶](#JOYSTICK_10) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L211)

```
JOYSTICK_10 :: 9
```

### [JOYSTICK\_11 ¶](#JOYSTICK_11) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L212)

```
JOYSTICK_11 :: 10
```

### [JOYSTICK\_12 ¶](#JOYSTICK_12) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L213)

```
JOYSTICK_12 :: 11
```

### [JOYSTICK\_13 ¶](#JOYSTICK_13) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L214)

```
JOYSTICK_13 :: 12
```

### [JOYSTICK\_14 ¶](#JOYSTICK_14) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L215)

```
JOYSTICK_14 :: 13
```

### [JOYSTICK\_15 ¶](#JOYSTICK_15) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L216)

```
JOYSTICK_15 :: 14
```

### [JOYSTICK\_16 ¶](#JOYSTICK_16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L217)

```
JOYSTICK_16 :: 15
```

### [JOYSTICK\_2 ¶](#JOYSTICK_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L203)

```
JOYSTICK_2 :: 1
```

### [JOYSTICK\_3 ¶](#JOYSTICK_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L204)

```
JOYSTICK_3 :: 2
```

### [JOYSTICK\_4 ¶](#JOYSTICK_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L205)

```
JOYSTICK_4 :: 3
```

### [JOYSTICK\_5 ¶](#JOYSTICK_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L206)

```
JOYSTICK_5 :: 4
```

### [JOYSTICK\_6 ¶](#JOYSTICK_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L207)

```
JOYSTICK_6 :: 5
```

### [JOYSTICK\_7 ¶](#JOYSTICK_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L208)

```
JOYSTICK_7 :: 6
```

### [JOYSTICK\_8 ¶](#JOYSTICK_8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L209)

```
JOYSTICK_8 :: 7
```

### [JOYSTICK\_9 ¶](#JOYSTICK_9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L210)

```
JOYSTICK_9 :: 8
```

### [JOYSTICK\_HAT\_BUTTONS ¶](#JOYSTICK_HAT_BUTTONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L405)

```
JOYSTICK_HAT_BUTTONS :: 0x00050001
```

### [JOYSTICK\_LAST ¶](#JOYSTICK_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L219)

```
JOYSTICK_LAST :: JOYSTICK_16
```

### [KEY\_0 ¶](#KEY_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L54)

```
KEY_0 :: 48
```

 

Alphanumeric characters

### [KEY\_1 ¶](#KEY_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L55)

```
KEY_1 :: 49
```

### [KEY\_2 ¶](#KEY_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L56)

```
KEY_2 :: 50
```

### [KEY\_3 ¶](#KEY_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L57)

```
KEY_3 :: 51
```

### [KEY\_4 ¶](#KEY_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L58)

```
KEY_4 :: 52
```

### [KEY\_5 ¶](#KEY_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L59)

```
KEY_5 :: 53
```

### [KEY\_6 ¶](#KEY_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L60)

```
KEY_6 :: 54
```

### [KEY\_7 ¶](#KEY_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L61)

```
KEY_7 :: 55
```

### [KEY\_8 ¶](#KEY_8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L62)

```
KEY_8 :: 56
```

### [KEY\_9 ¶](#KEY_9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L63)

```
KEY_9 :: 57
```

### [KEY\_A ¶](#KEY_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L65)

```
KEY_A :: 65
```

### [KEY\_APOSTROPHE ¶](#KEY_APOSTROPHE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L39)

```
KEY_APOSTROPHE :: 39
```

 

'

### [KEY\_B ¶](#KEY_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L66)

```
KEY_B :: 66
```

### [KEY\_BACKSLASH ¶](#KEY_BACKSLASH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L47)

```
KEY_BACKSLASH :: 92
```

 

\

### [KEY\_BACKSPACE ¶](#KEY_BACKSPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L99)

```
KEY_BACKSPACE :: 259
```

### [KEY\_C ¶](#KEY_C) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L67)

```
KEY_C :: 67
```

### [KEY\_CAPS\_LOCK ¶](#KEY_CAPS_LOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L110)

```
KEY_CAPS_LOCK :: 280
```

### [KEY\_COMMA ¶](#KEY_COMMA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L40)

```
KEY_COMMA :: 44
```

 

,

### [KEY\_D ¶](#KEY_D) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L68)

```
KEY_D :: 68
```

### [KEY\_DELETE ¶](#KEY_DELETE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L101)

```
KEY_DELETE :: 261
```

### [KEY\_DOWN ¶](#KEY_DOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L104)

```
KEY_DOWN :: 264
```

### [KEY\_E ¶](#KEY_E) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L69)

```
KEY_E :: 69
```

### [KEY\_END ¶](#KEY_END) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L109)

```
KEY_END :: 269
```

### [KEY\_ENTER ¶](#KEY_ENTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L97)

```
KEY_ENTER :: 257
```

### [KEY\_EQUAL ¶](#KEY_EQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L45)

```
KEY_EQUAL :: 61
```

 

::

### [KEY\_ESCAPE ¶](#KEY_ESCAPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L96)

```
KEY_ESCAPE :: 256
```

 

Named non-printable keys

### [KEY\_F ¶](#KEY_F) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L70)

```
KEY_F :: 70
```

### [KEY\_F1 ¶](#KEY_F1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L117)

```
KEY_F1 :: 290
```

 

Function keys

### [KEY\_F10 ¶](#KEY_F10) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L126)

```
KEY_F10 :: 299
```

### [KEY\_F11 ¶](#KEY_F11) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L127)

```
KEY_F11 :: 300
```

### [KEY\_F12 ¶](#KEY_F12) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L128)

```
KEY_F12 :: 301
```

### [KEY\_F13 ¶](#KEY_F13) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L129)

```
KEY_F13 :: 302
```

### [KEY\_F14 ¶](#KEY_F14) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L130)

```
KEY_F14 :: 303
```

### [KEY\_F15 ¶](#KEY_F15) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L131)

```
KEY_F15 :: 304
```

### [KEY\_F16 ¶](#KEY_F16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L132)

```
KEY_F16 :: 305
```

### [KEY\_F17 ¶](#KEY_F17) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L133)

```
KEY_F17 :: 306
```

### [KEY\_F18 ¶](#KEY_F18) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L134)

```
KEY_F18 :: 307
```

### [KEY\_F19 ¶](#KEY_F19) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L135)

```
KEY_F19 :: 308
```

### [KEY\_F2 ¶](#KEY_F2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L118)

```
KEY_F2 :: 291
```

### [KEY\_F20 ¶](#KEY_F20) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L136)

```
KEY_F20 :: 309
```

### [KEY\_F21 ¶](#KEY_F21) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L137)

```
KEY_F21 :: 310
```

### [KEY\_F22 ¶](#KEY_F22) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L138)

```
KEY_F22 :: 311
```

### [KEY\_F23 ¶](#KEY_F23) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L139)

```
KEY_F23 :: 312
```

### [KEY\_F24 ¶](#KEY_F24) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L140)

```
KEY_F24 :: 313
```

### [KEY\_F25 ¶](#KEY_F25) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L141)

```
KEY_F25 :: 314
```

### [KEY\_F3 ¶](#KEY_F3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L119)

```
KEY_F3 :: 292
```

### [KEY\_F4 ¶](#KEY_F4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L120)

```
KEY_F4 :: 293
```

### [KEY\_F5 ¶](#KEY_F5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L121)

```
KEY_F5 :: 294
```

### [KEY\_F6 ¶](#KEY_F6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L122)

```
KEY_F6 :: 295
```

### [KEY\_F7 ¶](#KEY_F7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L123)

```
KEY_F7 :: 296
```

### [KEY\_F8 ¶](#KEY_F8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L124)

```
KEY_F8 :: 297
```

### [KEY\_F9 ¶](#KEY_F9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L125)

```
KEY_F9 :: 298
```

### [KEY\_G ¶](#KEY_G) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L71)

```
KEY_G :: 71
```

### [KEY\_GRAVE\_ACCENT ¶](#KEY_GRAVE_ACCENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L49)

```
KEY_GRAVE_ACCENT :: 96
```

 

`

### [KEY\_H ¶](#KEY_H) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L72)

```
KEY_H :: 72
```

### [KEY\_HOME ¶](#KEY_HOME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L108)

```
KEY_HOME :: 268
```

### [KEY\_I ¶](#KEY_I) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L73)

```
KEY_I :: 73
```

### [KEY\_INSERT ¶](#KEY_INSERT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L100)

```
KEY_INSERT :: 260
```

### [KEY\_J ¶](#KEY_J) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L74)

```
KEY_J :: 74
```

### [KEY\_K ¶](#KEY_K) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L75)

```
KEY_K :: 75
```

### [KEY\_KP\_0 ¶](#KEY_KP_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L144)

```
KEY_KP_0 :: 320
```

 

Keypad numbers

### [KEY\_KP\_1 ¶](#KEY_KP_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L145)

```
KEY_KP_1 :: 321
```

### [KEY\_KP\_2 ¶](#KEY_KP_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L146)

```
KEY_KP_2 :: 322
```

### [KEY\_KP\_3 ¶](#KEY_KP_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L147)

```
KEY_KP_3 :: 323
```

### [KEY\_KP\_4 ¶](#KEY_KP_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L148)

```
KEY_KP_4 :: 324
```

### [KEY\_KP\_5 ¶](#KEY_KP_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L149)

```
KEY_KP_5 :: 325
```

### [KEY\_KP\_6 ¶](#KEY_KP_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L150)

```
KEY_KP_6 :: 326
```

### [KEY\_KP\_7 ¶](#KEY_KP_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L151)

```
KEY_KP_7 :: 327
```

### [KEY\_KP\_8 ¶](#KEY_KP_8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L152)

```
KEY_KP_8 :: 328
```

### [KEY\_KP\_9 ¶](#KEY_KP_9) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L153)

```
KEY_KP_9 :: 329
```

### [KEY\_KP\_ADD ¶](#KEY_KP_ADD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L160)

```
KEY_KP_ADD :: 334
```

### [KEY\_KP\_DECIMAL ¶](#KEY_KP_DECIMAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L156)

```
KEY_KP_DECIMAL :: 330
```

 

Keypad named function keys

### [KEY\_KP\_DIVIDE ¶](#KEY_KP_DIVIDE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L157)

```
KEY_KP_DIVIDE :: 331
```

### [KEY\_KP\_ENTER ¶](#KEY_KP_ENTER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L161)

```
KEY_KP_ENTER :: 335
```

### [KEY\_KP\_EQUAL ¶](#KEY_KP_EQUAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L162)

```
KEY_KP_EQUAL :: 336
```

### [KEY\_KP\_MULTIPLY ¶](#KEY_KP_MULTIPLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L158)

```
KEY_KP_MULTIPLY :: 332
```

### [KEY\_KP\_SUBTRACT ¶](#KEY_KP_SUBTRACT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L159)

```
KEY_KP_SUBTRACT :: 333
```

### [KEY\_L ¶](#KEY_L) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L76)

```
KEY_L :: 76
```

### [KEY\_LAST ¶](#KEY_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L175)

```
KEY_LAST :: KEY_MENU
```

### [KEY\_LEFT ¶](#KEY_LEFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L103)

```
KEY_LEFT :: 263
```

### [KEY\_LEFT\_ALT ¶](#KEY_LEFT_ALT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L167)

```
KEY_LEFT_ALT :: 342
```

### [KEY\_LEFT\_BRACKET ¶](#KEY_LEFT_BRACKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L46)

```
KEY_LEFT_BRACKET :: 91
```

 

[

### [KEY\_LEFT\_CONTROL ¶](#KEY_LEFT_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L166)

```
KEY_LEFT_CONTROL :: 341
```

### [KEY\_LEFT\_SHIFT ¶](#KEY_LEFT_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L165)

```
KEY_LEFT_SHIFT :: 340
```

 

Modifier keys

### [KEY\_LEFT\_SUPER ¶](#KEY_LEFT_SUPER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L168)

```
KEY_LEFT_SUPER :: 343
```

### [KEY\_M ¶](#KEY_M) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L77)

```
KEY_M :: 77
```

### [KEY\_MENU ¶](#KEY_MENU) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L173)

```
KEY_MENU :: 348
```

### [KEY\_MINUS ¶](#KEY_MINUS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L41)

```
KEY_MINUS :: 45
```

 

-

### [KEY\_N ¶](#KEY_N) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L78)

```
KEY_N :: 78
```

### [KEY\_NUM\_LOCK ¶](#KEY_NUM_LOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L112)

```
KEY_NUM_LOCK :: 282
```

### [KEY\_O ¶](#KEY_O) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L79)

```
KEY_O :: 79
```

### [KEY\_P ¶](#KEY_P) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L80)

```
KEY_P :: 80
```

### [KEY\_PAGE\_DOWN ¶](#KEY_PAGE_DOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L107)

```
KEY_PAGE_DOWN :: 267
```

### [KEY\_PAGE\_UP ¶](#KEY_PAGE_UP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L106)

```
KEY_PAGE_UP :: 266
```

### [KEY\_PAUSE ¶](#KEY_PAUSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L114)

```
KEY_PAUSE :: 284
```

### [KEY\_PERIOD ¶](#KEY_PERIOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L42)

```
KEY_PERIOD :: 46
```

 

.

### [KEY\_PRINT\_SCREEN ¶](#KEY_PRINT_SCREEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L113)

```
KEY_PRINT_SCREEN :: 283
```

### [KEY\_Q ¶](#KEY_Q) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L81)

```
KEY_Q :: 81
```

### [KEY\_R ¶](#KEY_R) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L82)

```
KEY_R :: 82
```

### [KEY\_RIGHT ¶](#KEY_RIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L102)

```
KEY_RIGHT :: 262
```

### [KEY\_RIGHT\_ALT ¶](#KEY_RIGHT_ALT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L171)

```
KEY_RIGHT_ALT :: 346
```

### [KEY\_RIGHT\_BRACKET ¶](#KEY_RIGHT_BRACKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L48)

```
KEY_RIGHT_BRACKET :: 93
```

 

]

### [KEY\_RIGHT\_CONTROL ¶](#KEY_RIGHT_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L170)

```
KEY_RIGHT_CONTROL :: 345
```

### [KEY\_RIGHT\_SHIFT ¶](#KEY_RIGHT_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L169)

```
KEY_RIGHT_SHIFT :: 344
```

### [KEY\_RIGHT\_SUPER ¶](#KEY_RIGHT_SUPER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L172)

```
KEY_RIGHT_SUPER :: 347
```

### [KEY\_S ¶](#KEY_S) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L83)

```
KEY_S :: 83
```

### [KEY\_SCROLL\_LOCK ¶](#KEY_SCROLL_LOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L111)

```
KEY_SCROLL_LOCK :: 281
```

### [KEY\_SEMICOLON ¶](#KEY_SEMICOLON) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L44)

```
KEY_SEMICOLON :: 59
```

 

;

### [KEY\_SLASH ¶](#KEY_SLASH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L43)

```
KEY_SLASH :: 47
```

 

/

### [KEY\_SPACE ¶](#KEY_SPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L38)

```
KEY_SPACE :: 32
```

 

Named printable keys

### [KEY\_T ¶](#KEY_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L84)

```
KEY_T :: 84
```

### [KEY\_TAB ¶](#KEY_TAB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L98)

```
KEY_TAB :: 258
```

### [KEY\_U ¶](#KEY_U) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L85)

```
KEY_U :: 85
```

### [KEY\_UNKNOWN ¶](#KEY_UNKNOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L33)

```
KEY_UNKNOWN :: -1
```

 

The unknown key

### [KEY\_UP ¶](#KEY_UP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L105)

```
KEY_UP :: 265
```

### [KEY\_V ¶](#KEY_V) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L86)

```
KEY_V :: 86
```

### [KEY\_W ¶](#KEY_W) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L87)

```
KEY_W :: 87
```

### [KEY\_WORLD\_1 ¶](#KEY_WORLD_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L50)

```
KEY_WORLD_1 :: 161
```

 

non-US #1

### [KEY\_WORLD\_2 ¶](#KEY_WORLD_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L51)

```
KEY_WORLD_2 :: 162
```

 

non-US #2

### [KEY\_X ¶](#KEY_X) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L88)

```
KEY_X :: 88
```

### [KEY\_Y ¶](#KEY_Y) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L89)

```
KEY_Y :: 89
```

### [KEY\_Z ¶](#KEY_Z) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L90)

```
KEY_Z :: 90
```

### [LOCK\_KEY\_MODS ¶](#LOCK_KEY_MODS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L350)

```
LOCK_KEY_MODS :: 0x00033004
```

### [LOSE\_CONTEXT\_ON\_RESET ¶](#LOSE_CONTEXT_ON_RESET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L339)

```
LOSE_CONTEXT_ON_RESET :: 0x00031002
```

### [MAXIMIZED ¶](#MAXIMIZED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L278)

```
MAXIMIZED :: 0x00020008
```

### [MOD\_ALT ¶](#MOD_ALT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L180)

```
MOD_ALT :: 0x0004
```

### [MOD\_CAPS\_LOCK ¶](#MOD_CAPS_LOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L182)

```
MOD_CAPS_LOCK :: 0x0010
```

### [MOD\_CONTROL ¶](#MOD_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L179)

```
MOD_CONTROL :: 0x0002
```

### [MOD\_NUM\_LOCK ¶](#MOD_NUM_LOCK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L183)

```
MOD_NUM_LOCK :: 0x0020
```

### [MOD\_SHIFT ¶](#MOD_SHIFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L178)

```
MOD_SHIFT :: 0x0001
```

 

Bitmask for modifier keys

### [MOD\_SUPER ¶](#MOD_SUPER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L181)

```
MOD_SUPER :: 0x0008
```

### [MOUSE\_BUTTON\_1 ¶](#MOUSE_BUTTON_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L186)

```
MOUSE_BUTTON_1 :: 0
```

 

Mouse buttons

### [MOUSE\_BUTTON\_2 ¶](#MOUSE_BUTTON_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L187)

```
MOUSE_BUTTON_2 :: 1
```

### [MOUSE\_BUTTON\_3 ¶](#MOUSE_BUTTON_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L188)

```
MOUSE_BUTTON_3 :: 2
```

### [MOUSE\_BUTTON\_4 ¶](#MOUSE_BUTTON_4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L189)

```
MOUSE_BUTTON_4 :: 3
```

### [MOUSE\_BUTTON\_5 ¶](#MOUSE_BUTTON_5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L190)

```
MOUSE_BUTTON_5 :: 4
```

### [MOUSE\_BUTTON\_6 ¶](#MOUSE_BUTTON_6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L191)

```
MOUSE_BUTTON_6 :: 5
```

### [MOUSE\_BUTTON\_7 ¶](#MOUSE_BUTTON_7) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L192)

```
MOUSE_BUTTON_7 :: 6
```

### [MOUSE\_BUTTON\_8 ¶](#MOUSE_BUTTON_8) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L193)

```
MOUSE_BUTTON_8 :: 7
```

### [MOUSE\_BUTTON\_LAST ¶](#MOUSE_BUTTON_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L196)

```
MOUSE_BUTTON_LAST :: MOUSE_BUTTON_8
```

 

Mousebutton aliases

### [MOUSE\_BUTTON\_LEFT ¶](#MOUSE_BUTTON_LEFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L197)

```
MOUSE_BUTTON_LEFT :: MOUSE_BUTTON_1
```

### [MOUSE\_BUTTON\_MIDDLE ¶](#MOUSE_BUTTON_MIDDLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L199)

```
MOUSE_BUTTON_MIDDLE :: MOUSE_BUTTON_3
```

### [MOUSE\_BUTTON\_RIGHT ¶](#MOUSE_BUTTON_RIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L198)

```
MOUSE_BUTTON_RIGHT :: MOUSE_BUTTON_2
```

### [MOUSE\_PASSTHROUGH ¶](#MOUSE_PASSTHROUGH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L283)

```
MOUSE_PASSTHROUGH :: 0x0002000D
```

### [NATIVE\_CONTEXT\_API ¶](#NATIVE_CONTEXT_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L367)

```
NATIVE_CONTEXT_API :: 0x00036001
```

 

Context API ?

### [NOT\_ALLOWED\_CURSOR ¶](#NOT_ALLOWED_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L394)

```
NOT_ALLOWED_CURSOR :: 0x0003600A
```

### [NOT\_INITIALIZED ¶](#NOT_INITIALIZED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L255)

```
NOT_INITIALIZED :: 0x00010001
```

### [NO\_API ¶](#NO_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L332)

```
NO_API :: 0
```

 

APIs

### [NO\_CURRENT\_CONTEXT ¶](#NO_CURRENT_CONTEXT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L256)

```
NO_CURRENT_CONTEXT :: 0x00010002
```

### [NO\_ERROR ¶](#NO_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L254)

```
NO_ERROR :: 0x00000000
```

 

Error constants

### [NO\_RESET\_NOTIFICATION ¶](#NO_RESET_NOTIFICATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L338)

```
NO_RESET_NOTIFICATION :: 0x00031001
```

### [NO\_ROBUSTNESS ¶](#NO_ROBUSTNESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L337)

```
NO_ROBUSTNESS :: 0
```

 

Robustness?

### [NO\_WINDOW\_CONTEXT ¶](#NO_WINDOW_CONTEXT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L264)

```
NO_WINDOW_CONTEXT :: 0x0001000A
```

### [OPENGL\_ANY\_PROFILE ¶](#OPENGL_ANY_PROFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L342)

```
OPENGL_ANY_PROFILE :: 0
```

 

OpenGL Profiles

### [OPENGL\_API ¶](#OPENGL_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L333)

```
OPENGL_API :: 0x00030001
```

### [OPENGL\_COMPAT\_PROFILE ¶](#OPENGL_COMPAT_PROFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L344)

```
OPENGL_COMPAT_PROFILE :: 0x00032002
```

### [OPENGL\_CORE\_PROFILE ¶](#OPENGL_CORE_PROFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L343)

```
OPENGL_CORE_PROFILE :: 0x00032001
```

### [OPENGL\_DEBUG\_CONTEXT ¶](#OPENGL_DEBUG_CONTEXT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L313)

```
OPENGL_DEBUG_CONTEXT :: CONTEXT_DEBUG
```

 

Backwards compatibility

### [OPENGL\_ES\_API ¶](#OPENGL_ES_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L334)

```
OPENGL_ES_API :: 0x00030002
```

### [OPENGL\_FORWARD\_COMPAT ¶](#OPENGL_FORWARD_COMPAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L311)

```
OPENGL_FORWARD_COMPAT :: 0x00022006
```

### [OPENGL\_PROFILE ¶](#OPENGL_PROFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L314)

```
OPENGL_PROFILE :: 0x00022008
```

### [OSMESA\_CONTEXT\_API ¶](#OSMESA_CONTEXT_API) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L369)

```
OSMESA_CONTEXT_API :: 0x00036003
```

### [OUT\_OF\_MEMORY ¶](#OUT_OF_MEMORY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L259)

```
OUT_OF_MEMORY :: 0x00010005
```

### [PLATFORM ¶](#PLATFORM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L407)

```
PLATFORM :: 0x00050003
```

### [PLATFORM\_COCOA ¶](#PLATFORM_COCOA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L417)

```
PLATFORM_COCOA :: 0x00060002
```

### [PLATFORM\_ERROR ¶](#PLATFORM_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L262)

```
PLATFORM_ERROR :: 0x00010008
```

### [PLATFORM\_NULL ¶](#PLATFORM_NULL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L420)

```
PLATFORM_NULL :: 0x00060005
```

### [PLATFORM\_UNAVAILABLE ¶](#PLATFORM_UNAVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L268)

```
PLATFORM_UNAVAILABLE :: 0x0001000E
```

### [PLATFORM\_WAYLAND ¶](#PLATFORM_WAYLAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L418)

```
PLATFORM_WAYLAND :: 0x00060003
```

### [PLATFORM\_WIN32 ¶](#PLATFORM_WIN32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L416)

```
PLATFORM_WIN32 :: 0x00060001
```

### [PLATFORM\_X11 ¶](#PLATFORM_X11) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L419)

```
PLATFORM_X11 :: 0x00060004
```

### [POINTING\_HAND\_CURSOR ¶](#POINTING_HAND_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L388)

```
POINTING_HAND_CURSOR :: 0x00036004
```

### [POSITION\_X ¶](#POSITION_X) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L284)

```
POSITION_X :: 0x0002000E
```

### [POSITION\_Y ¶](#POSITION_Y) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L285)

```
POSITION_Y :: 0x0002000F
```

### [PRESS ¶](#PRESS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L18)

```
PRESS :: 1
```

### [RAW\_MOUSE\_MOTION ¶](#RAW_MOUSE_MOTION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L359)

```
RAW_MOUSE_MOTION :: 0x00033005
```

 

Mouse motion

### [RED\_BITS ¶](#RED_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L288)

```
RED_BITS :: 0x00021001
```

 

Pixel window attributes

### [REFRESH\_RATE ¶](#REFRESH_RATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L302)

```
REFRESH_RATE :: 0x0002100F
```

### [RELEASE ¶](#RELEASE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L17)

```
RELEASE :: 0
```

 

Button/Key states

### [RELEASE\_BEHAVIOR\_FLUSH ¶](#RELEASE_BEHAVIOR_FLUSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L363)

```
RELEASE_BEHAVIOR_FLUSH :: 0x00035001
```

### [RELEASE\_BEHAVIOR\_NONE ¶](#RELEASE_BEHAVIOR_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L364)

```
RELEASE_BEHAVIOR_NONE :: 0x00035002
```

### [REPEAT ¶](#REPEAT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L19)

```
REPEAT :: 2
```

### [RESIZABLE ¶](#RESIZABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L273)

```
RESIZABLE :: 0x00020003
```

### [RESIZE\_ALL\_CURSOR ¶](#RESIZE_ALL_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L393)

```
RESIZE_ALL_CURSOR :: 0x00036009
```

### [RESIZE\_EW\_CURSOR ¶](#RESIZE_EW_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L389)

```
RESIZE_EW_CURSOR :: 0x00036005
```

### [RESIZE\_NESW\_CURSOR ¶](#RESIZE_NESW_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L392)

```
RESIZE_NESW_CURSOR :: 0x00036008
```

### [RESIZE\_NS\_CURSOR ¶](#RESIZE_NS_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L390)

```
RESIZE_NS_CURSOR :: 0x00036006
```

### [RESIZE\_NWSE\_CURSOR ¶](#RESIZE_NWSE_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L391)

```
RESIZE_NWSE_CURSOR :: 0x00036007
```

### [SAMPLES ¶](#SAMPLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L300)

```
SAMPLES :: 0x0002100D
```

### [SCALE\_FRAMEBUFFER ¶](#SCALE_FRAMEBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L319)

```
SCALE_FRAMEBUFFER :: 0x0002200D
```

### [SCALE\_TO\_MONITOR ¶](#SCALE_TO_MONITOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L318)

```
SCALE_TO_MONITOR :: 0x0002200C
```

### [SRGB\_CAPABLE ¶](#SRGB_CAPABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L301)

```
SRGB_CAPABLE :: 0x0002100E
```

### [STENCIL\_BITS ¶](#STENCIL_BITS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L293)

```
STENCIL_BITS :: 0x00021006
```

### [STEREO ¶](#STEREO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L299)

```
STEREO :: 0x0002100C
```

### [STICKY\_KEYS ¶](#STICKY_KEYS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L348)

```
STICKY_KEYS :: 0x00033002
```

### [STICKY\_MOUSE\_BUTTONS ¶](#STICKY_MOUSE_BUTTONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L349)

```
STICKY_MOUSE_BUTTONS :: 0x00033003
```

### [TRANSPARENT\_FRAMEBUFFER ¶](#TRANSPARENT_FRAMEBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L280)

```
TRANSPARENT_FRAMEBUFFER :: 0x0002000A
```

### [TRUE ¶](#TRUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L13)

```
TRUE :: true
```

 

Booleans

### [VERSION\_MAJOR ¶](#VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L8)

```
VERSION_MAJOR :: 3
```

 

**Constants** 
Versions

### [VERSION\_MINOR ¶](#VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L9)

```
VERSION_MINOR :: 4
```

### [VERSION\_REVISION ¶](#VERSION_REVISION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L10)

```
VERSION_REVISION :: 0
```

### [VERSION\_UNAVAILABLE ¶](#VERSION_UNAVAILABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L261)

```
VERSION_UNAVAILABLE :: 0x00010007
```

### [VISIBLE ¶](#VISIBLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L274)

```
VISIBLE :: 0x00020004
```

### [VRESIZE\_CURSOR ¶](#VRESIZE_CURSOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L398)

```
VRESIZE_CURSOR :: RESIZE_NS_CURSOR
```

### [WAYLAND\_APP\_ID ¶](#WAYLAND_APP_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L329)

```
WAYLAND_APP_ID :: 0x00026001
```

### [WAYLAND\_DISABLE\_LIBDECOR ¶](#WAYLAND_DISABLE_LIBDECOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L380)

```
WAYLAND_DISABLE_LIBDECOR :: 0x00038002
```

### [WAYLAND\_LIBDECOR ¶](#WAYLAND_LIBDECOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L413)

```
WAYLAND_LIBDECOR :: 0x00053001
```

### [WAYLAND\_PREFER\_LIBDECOR ¶](#WAYLAND_PREFER_LIBDECOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L379)

```
WAYLAND_PREFER_LIBDECOR :: 0x00038001
```

### [WIN32\_KEYBOARD\_MENU ¶](#WIN32_KEYBOARD_MENU) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L327)

```
WIN32_KEYBOARD_MENU :: 0x00025001
```

### [WIN32\_SHOWDEFAULT ¶](#WIN32_SHOWDEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L328)

```
WIN32_SHOWDEFAULT :: 0x00025002
```

### [X11\_CLASS\_NAME ¶](#X11_CLASS_NAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L325)

```
X11_CLASS_NAME :: 0x00024001
```

### [X11\_INSTANCE\_NAME ¶](#X11_INSTANCE_NAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L326)

```
X11_INSTANCE_NAME :: 0x00024002
```

### [X11\_XCB\_VULKAN\_SURFACE ¶](#X11_XCB_VULKAN_SURFACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L412)

```
X11_XCB_VULKAN_SURFACE :: 0x00052001
```

## Variables

This section is empty.

## Procedures

### [GetClipboardString ¶](#GetClipboardString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L118)

```
GetClipboardString :: proc "c" (window: glfw_bindings.WindowHandle) -> string {…}
```

### [GetCursorPos ¶](#GetCursorPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L166)

```
GetCursorPos :: proc "c" (window: glfw_bindings.WindowHandle) -> (xpos, ypos: f64) {…}
```

### [GetError ¶](#GetError) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L19)

```
GetError :: proc "c" () -> (description: string, code: i32) {…}
```

### [GetFramebufferSize ¶](#GetFramebufferSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L96)

```
GetFramebufferSize :: proc "c" (window: glfw_bindings.WindowHandle) -> (width, height: i32) {…}
```

### [GetGamepadName ¶](#GetGamepadName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L199)

```
GetGamepadName :: proc "c" (jid: i32) -> string {…}
```

### [GetJoystickAxes ¶](#GetJoystickAxes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L177)

```
GetJoystickAxes :: proc "c" (joy: i32) -> []f32 {…}
```

### [GetJoystickButtons ¶](#GetJoystickButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L182)

```
GetJoystickButtons :: proc "c" (joy: i32) -> []u8 {…}
```

### [GetJoystickGUID ¶](#GetJoystickGUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L192)

```
GetJoystickGUID :: proc "c" (jid: i32) -> string {…}
```

### [GetJoystickHats ¶](#GetJoystickHats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L187)

```
GetJoystickHats :: proc "c" (jid: i32) -> []u8 {…}
```

### [GetJoystickName ¶](#GetJoystickName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L134)

```
GetJoystickName :: proc "c" (joy: i32) -> string {…}
```

### [GetKeyName ¶](#GetKeyName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L128)

```
GetKeyName :: proc "c" (key, scancode: i32) -> string {…}
```

### [GetMonitorContentScale ¶](#GetMonitorContentScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L44)

```
GetMonitorContentScale :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> (xscale, yscale: f32) {…}
```

### [GetMonitorName ¶](#GetMonitorName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L115)

```
GetMonitorName :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> string {…}
```

### [GetMonitorPhysicalSize ¶](#GetMonitorPhysicalSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L40)

```
GetMonitorPhysicalSize :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> (widthMM, heightMM: i32) {…}
```

### [GetMonitorPos ¶](#GetMonitorPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L32)

```
GetMonitorPos :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> (xpos, ypos: i32) {…}
```

### [GetMonitorWorkarea ¶](#GetMonitorWorkarea) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L36)

```
GetMonitorWorkarea :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> (xpos, ypos, width, height: i32) {…}
```

### [GetMonitors ¶](#GetMonitors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L27)

```
GetMonitors :: proc "c" () -> []glfw_bindings.MonitorHandle {…}
```

### [GetRequiredInstanceExtensions ¶](#GetRequiredInstanceExtensions) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L217)

```
GetRequiredInstanceExtensions :: proc "c" () -> []cstring {…}
```

### [GetVersion ¶](#GetVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L15)

```
GetVersion :: proc "c" () -> (major, minor, rev: i32) {…}
```

### [GetVersionString ¶](#GetVersionString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L112)

```
GetVersionString :: proc "c" () -> string {…}
```

### [GetVideoModes ¶](#GetVideoModes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L121)

```
GetVideoModes :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> []glfw_bindings.VidMode {…}
```

### [GetWGLContext ¶](#GetWGLContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/native_windows.odin#L12)

```
GetWGLContext :: proc "c" (window: glfw_bindings.WindowHandle) -> rawptr ---
```

### [GetWin32Adapter ¶](#GetWin32Adapter) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/native_windows.odin#L9)

```
GetWin32Adapter :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> cstring ---
```

### [GetWin32Monitor ¶](#GetWin32Monitor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/native_windows.odin#L10)

```
GetWin32Monitor :: proc "c" (monitor: glfw_bindings.MonitorHandle) -> cstring ---
```

### [GetWin32Window ¶](#GetWin32Window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/native_windows.odin#L11)

```
GetWin32Window :: proc "c" (window: glfw_bindings.WindowHandle) -> sys_windows.HWND ---
```

### [GetWindowContentScale ¶](#GetWindowContentScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L105)

```
GetWindowContentScale :: proc "c" (window: glfw_bindings.WindowHandle) -> (xscale, yscale: f32) {…}
```

### [GetWindowFrameSize ¶](#GetWindowFrameSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L100)

```
GetWindowFrameSize :: proc "c" (window: glfw_bindings.WindowHandle) -> (left, top, right, bottom: i32) {…}
```

### [GetWindowPos ¶](#GetWindowPos) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L88)

```
GetWindowPos :: proc "c" (window: glfw_bindings.WindowHandle) -> (xpos, ypos: i32) {…}
```

### [GetWindowSize ¶](#GetWindowSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L92)

```
GetWindowSize :: proc "c" (window: glfw_bindings.WindowHandle) -> (width, height: i32) {…}
```

### [SetWindowIcon ¶](#SetWindowIcon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L81)

```
SetWindowIcon :: proc "c" (window: glfw_bindings.WindowHandle, images: []glfw_bindings.Image) {…}
```

### [WindowHint\_bool ¶](#WindowHint_bool) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L64)

```
WindowHint_bool :: proc "contextless" (hint: i32, value: b32) {…}
```

##### Related Procedure Groups

* [WindowHint](/vendor/glfw/#WindowHint)

### [WindowHint\_int ¶](#WindowHint_int) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L60)

```
WindowHint_int :: proc "contextless" (hint: i32, value: i32) {…}
```

##### Related Procedure Groups

* [WindowHint](/vendor/glfw/#WindowHint)

### [gl\_set\_proc\_address ¶](#gl_set_proc_address) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L253)

```
gl_set_proc_address :: proc(p: rawptr, name: cstring) {…}
```

 

Used by vendor:OpenGL

## Procedure Groups

### [WindowHint ¶](#WindowHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin#L68)

```
WindowHint :: proc{
	WindowHint_int,
	WindowHint_bool,
}
```

## `#config` values

### [GLFW\_SHARED ¶](#GLFW_SHARED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin#L4)

```
GLFW_SHARED :: #config(GLFW_SHARED, false)
```

 

Config

## Source Files

* [constants.odin](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/constants.odin)
* [types.odin](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/types.odin)
* [wrapper.odin](https://github.com/odin-lang/Odin/tree/master/vendor/glfw/wrapper.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.962426600 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
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
    + [ACCUM\_ALPHA\_BITS](#ACCUM_ALPHA_BITS)
    + [ACCUM\_BLUE\_BITS](#ACCUM_BLUE_BITS)
    + [ACCUM\_GREEN\_BITS](#ACCUM_GREEN_BITS)
    + [ACCUM\_RED\_BITS](#ACCUM_RED_BITS)
    + [ALPHA\_BITS](#ALPHA_BITS)
    + [ANGLE\_PLATFORM\_TYPE](#ANGLE_PLATFORM_TYPE)
    + [ANGLE\_PLATFORM\_TYPE\_D3D11](#ANGLE_PLATFORM_TYPE_D3D11)
    + [ANGLE\_PLATFORM\_TYPE\_D3D9](#ANGLE_PLATFORM_TYPE_D3D9)
    + [ANGLE\_PLATFORM\_TYPE\_METAL](#ANGLE_PLATFORM_TYPE_METAL)
    + [ANGLE\_PLATFORM\_TYPE\_NONE](#ANGLE_PLATFORM_TYPE_NONE)
    + [ANGLE\_PLATFORM\_TYPE\_OPENGL](#ANGLE_PLATFORM_TYPE_OPENGL)
    + [ANGLE\_PLATFORM\_TYPE\_OPENGLES](#ANGLE_PLATFORM_TYPE_OPENGLES)
    + [ANGLE\_PLATFORM\_TYPE\_VULKAN](#ANGLE_PLATFORM_TYPE_VULKAN)
    + [ANY\_PLATFORM](#ANY_PLATFORM)
    + [ANY\_POSITION](#ANY_POSITION)
    + [ANY\_RELEASE\_BEHAVIOR](#ANY_RELEASE_BEHAVIOR)
    + [API\_UNAVAILABLE](#API_UNAVAILABLE)
    + [ARROW\_CURSOR](#ARROW_CURSOR)
    + [AUTO\_ICONIFY](#AUTO_ICONIFY)
    + [AUX\_BUFFERS](#AUX_BUFFERS)
    + [BLUE\_BITS](#BLUE_BITS)
    + [CENTER\_CURSOR](#CENTER_CURSOR)
    + [CLIENT\_API](#CLIENT_API)
    + [COCOA\_CHDIR\_RESOURCES](#COCOA_CHDIR_RESOURCES)
    + [COCOA\_FRAME\_NAME](#COCOA_FRAME_NAME)
    + [COCOA\_GRAPHICS\_SWITCHING](#COCOA_GRAPHICS_SWITCHING)
    + [COCOA\_MENUBAR](#COCOA_MENUBAR)
    + [COCOA\_RETINA\_FRAMEBUFFER](#COCOA_RETINA_FRAMEBUFFER)
    + [CONNECTED](#CONNECTED)
    + [CONTEXT\_CREATION\_API](#CONTEXT_CREATION_API)
    + [CONTEXT\_DEBUG](#CONTEXT_DEBUG)
    + [CONTEXT\_NO\_ERROR](#CONTEXT_NO_ERROR)
    + [CONTEXT\_RELEASE\_BEHAVIOR](#CONTEXT_RELEASE_BEHAVIOR)
    + [CONTEXT\_REVISION](#CONTEXT_REVISION)
    + [CONTEXT\_ROBUSTNESS](#CONTEXT_ROBUSTNESS)
    + [CONTEXT\_VERSION\_MAJOR](#CONTEXT_VERSION_MAJOR)
    + [CONTEXT\_VERSION\_MINOR](#CONTEXT_VERSION_MINOR)
    + [CROSSHAIR\_CURSOR](#CROSSHAIR_CURSOR)
    + [CURSOR](#CURSOR)
    + [CURSOR\_CAPTURED](#CURSOR_CAPTURED)
    + [CURSOR\_DISABLED](#CURSOR_DISABLED)
    + [CURSOR\_HIDDEN](#CURSOR_HIDDEN)
    + [CURSOR\_NORMAL](#CURSOR_NORMAL)
    + [CURSOR\_UNAVAILABLE](#CURSOR_UNAVAILABLE)
    + [DECORATED](#DECORATED)
    + [DEPTH\_BITS](#DEPTH_BITS)
    + [DISCONNECTED](#DISCONNECTED)
    + [DONT\_CARE](#DONT_CARE)
    + [DOUBLEBUFFER](#DOUBLEBUFFER)
    + [EGL\_CONTEXT\_API](#EGL_CONTEXT_API)
    + [FALSE](#FALSE)
    + [FEATURE\_UNAVAILABLE](#FEATURE_UNAVAILABLE)
    + [FEATURE\_UNIMPLEMENTED](#FEATURE_UNIMPLEMENTED)
    + [FLOATING](#FLOATING)
    + [FOCUSED](#FOCUSED)
    + [FOCUS\_ON\_SHOW](#FOCUS_ON_SHOW)
    + [FORMAT\_UNAVAILABLE](#FORMAT_UNAVAILABLE)
    + [GAMEPAD\_AXIS\_LAST](#GAMEPAD_AXIS_LAST)
    + [GAMEPAD\_AXIS\_LEFT\_TRIGGER](#GAMEPAD_AXIS_LEFT_TRIGGER)
    + [GAMEPAD\_AXIS\_LEFT\_X](#GAMEPAD_AXIS_LEFT_X)
    + [GAMEPAD\_AXIS\_LEFT\_Y](#GAMEPAD_AXIS_LEFT_Y)
    + [GAMEPAD\_AXIS\_RIGHT\_TRIGGER](#GAMEPAD_AXIS_RIGHT_TRIGGER)
    + [GAMEPAD\_AXIS\_RIGHT\_X](#GAMEPAD_AXIS_RIGHT_X)
    + [GAMEPAD\_AXIS\_RIGHT\_Y](#GAMEPAD_AXIS_RIGHT_Y)
    + [GAMEPAD\_BUTTON\_A](#GAMEPAD_BUTTON_A)
    + [GAMEPAD\_BUTTON\_B](#GAMEPAD_BUTTON_B)
    + [GAMEPAD\_BUTTON\_BACK](#GAMEPAD_BUTTON_BACK)
    + [GAMEPAD\_BUTTON\_CIRCLE](#GAMEPAD_BUTTON_CIRCLE)
    + [GAMEPAD\_BUTTON\_CROSS](#GAMEPAD_BUTTON_CROSS)
    + [GAMEPAD\_BUTTON\_DPAD\_DOWN](#GAMEPAD_BUTTON_DPAD_DOWN)
    + [GAMEPAD\_BUTTON\_DPAD\_LEFT](#GAMEPAD_BUTTON_DPAD_LEFT)
    + [GAMEPAD\_BUTTON\_DPAD\_RIGHT](#GAMEPAD_BUTTON_DPAD_RIGHT)
    + [GAMEPAD\_BUTTON\_DPAD\_UP](#GAMEPAD_BUTTON_DPAD_UP)
    + [GAMEPAD\_BUTTON\_GUIDE](#GAMEPAD_BUTTON_GUIDE)
    + [GAMEPAD\_BUTTON\_LAST](#GAMEPAD_BUTTON_LAST)
    + [GAMEPAD\_BUTTON\_LEFT\_BUMPER](#GAMEPAD_BUTTON_LEFT_BUMPER)
    + [GAMEPAD\_BUTTON\_LEFT\_THUMB](#GAMEPAD_BUTTON_LEFT_THUMB)
    + [GAMEPAD\_BUTTON\_RIGHT\_BUMPER](#GAMEPAD_BUTTON_RIGHT_BUMPER)
    + [GAMEPAD\_BUTTON\_RIGHT\_THUMB](#GAMEPAD_BUTTON_RIGHT_THUMB)
    + [GAMEPAD\_BUTTON\_SQUARE](#GAMEPAD_BUTTON_SQUARE)
    + [GAMEPAD\_BUTTON\_START](#GAMEPAD_BUTTON_START)
    + [GAMEPAD\_BUTTON\_TRIANGLE](#GAMEPAD_BUTTON_TRIANGLE)
    + [GAMEPAD\_BUTTON\_X](#GAMEPAD_BUTTON_X)
    + [GAMEPAD\_BUTTON\_Y](#GAMEPAD_BUTTON_Y)
    + [GLFW\_SHARED](#GLFW_SHARED)
    + [GREEN\_BITS](#GREEN_BITS)
    + [HAND\_CURSOR](#HAND_CURSOR)
    + [HAT\_CENTERED](#HAT_CENTERED)
    + [HAT\_DOWN](#HAT_DOWN)
    + [HAT\_LEFT](#HAT_LEFT)
    + [HAT\_LEFT\_DOWN](#HAT_LEFT_DOWN)
    + [HAT\_LEFT\_UP](#HAT_LEFT_UP)
    + [HAT\_RIGHT](#HAT_RIGHT)
    + [HAT\_RIGHT\_DOWN](#HAT_RIGHT_DOWN)
    + [HAT\_RIGHT\_UP](#HAT_RIGHT_UP)
    + [HAT\_UP](#HAT_UP)
    + [HOVERED](#HOVERED)
    + [HRESIZE\_CURSOR](#HRESIZE_CURSOR)
    + [IBEAM\_CURSOR](#IBEAM_CURSOR)
    + [ICONIFIED](#ICONIFIED)
    + [INVALID\_ENUM](#INVALID_ENUM)
    + [INVALID\_VALUE](#INVALID_VALUE)
    + [JOYSTICK\_1](#JOYSTICK_1)
    + [JOYSTICK\_10](#JOYSTICK_10)
    + [JOYSTICK\_11](#JOYSTICK_11)
    + [JOYSTICK\_12](#JOYSTICK_12)
    + [JOYSTICK\_13](#JOYSTICK_13)
    + [JOYSTICK\_14](#JOYSTICK_14)
    + [JOYSTICK\_15](#JOYSTICK_15)
    + [JOYSTICK\_16](#JOYSTICK_16)
    + [JOYSTICK\_2](#JOYSTICK_2)
    + [JOYSTICK\_3](#JOYSTICK_3)
    + [JOYSTICK\_4](#JOYSTICK_4)
    + [JOYSTICK\_5](#JOYSTICK_5)
    + [JOYSTICK\_6](#JOYSTICK_6)
    + [JOYSTICK\_7](#JOYSTICK_7)
    + [JOYSTICK\_8](#JOYSTICK_8)
    + [JOYSTICK\_9](#JOYSTICK_9)
    + [JOYSTICK\_HAT\_BUTTONS](#JOYSTICK_HAT_BUTTONS)
    + [JOYSTICK\_LAST](#JOYSTICK_LAST)
    + [KEY\_0](#KEY_0)
    + [KEY\_1](#KEY_1)
    + [KEY\_2](#KEY_2)
    + [KEY\_3](#KEY_3)
    + [KEY\_4](#KEY_4)
    + [KEY\_5](#KEY_5)
    + [KEY\_6](#KEY_6)
    + [KEY\_7](#KEY_7)
    + [KEY\_8](#KEY_8)
    + [KEY\_9](#KEY_9)
    + [KEY\_A](#KEY_A)
    + [KEY\_APOSTROPHE](#KEY_APOSTROPHE)
    + [KEY\_B](#KEY_B)
    + [KEY\_BACKSLASH](#KEY_BACKSLASH)
    + [KEY\_BACKSPACE](#KEY_BACKSPACE)
    + [KEY\_C](#KEY_C)
    + [KEY\_CAPS\_LOCK](#KEY_CAPS_LOCK)
    + [KEY\_COMMA](#KEY_COMMA)
    + [KEY\_D](#KEY_D)
    + [KEY\_DELETE](#KEY_DELETE)
    + [KEY\_DOWN](#KEY_DOWN)
    + [KEY\_E](#KEY_E)
    + [KEY\_END](#KEY_END)
    + [KEY\_ENTER](#KEY_ENTER)
    + [KEY\_EQUAL](#KEY_EQUAL)
    + [KEY\_ESCAPE](#KEY_ESCAPE)
    + [KEY\_F](#KEY_F)
    + [KEY\_F1](#KEY_F1)
    + [KEY\_F10](#KEY_F10)
    + [KEY\_F11](#KEY_F11)
    + [KEY\_F12](#KEY_F12)
    + [KEY\_F13](#KEY_F13)
    + [KEY\_F14](#KEY_F14)
    + [KEY\_F15](#KEY_F15)
    + [KEY\_F16](#KEY_F16)
    + [KEY\_F17](#KEY_F17)
    + [KEY\_F18](#KEY_F18)
    + [KEY\_F19](#KEY_F19)
    + [KEY\_F2](#KEY_F2)
    + [KEY\_F20](#KEY_F20)
    + [KEY\_F21](#KEY_F21)
    + [KEY\_F22](#KEY_F22)
    + [KEY\_F23](#KEY_F23)
    + [KEY\_F24](#KEY_F24)
    + [KEY\_F25](#KEY_F25)
    + [KEY\_F3](#KEY_F3)
    + [KEY\_F4](#KEY_F4)
    + [KEY\_F5](#KEY_F5)
    + [KEY\_F6](#KEY_F6)
    + [KEY\_F7](#KEY_F7)
    + [KEY\_F8](#KEY_F8)
    + [KEY\_F9](#KEY_F9)
    + [KEY\_G](#KEY_G)
    + [KEY\_GRAVE\_ACCENT](#KEY_GRAVE_ACCENT)
    + [KEY\_H](#KEY_H)
    + [KEY\_HOME](#KEY_HOME)
    + [KEY\_I](#KEY_I)
    + [KEY\_INSERT](#KEY_INSERT)
    + [KEY\_J](#KEY_J)
    + [KEY\_K](#KEY_K)
    + [KEY\_KP\_0](#KEY_KP_0)
    + [KEY\_KP\_1](#KEY_KP_1)
    + [KEY\_KP\_2](#KEY_KP_2)
    + [KEY\_KP\_3](#KEY_KP_3)
    + [KEY\_KP\_4](#KEY_KP_4)
    + [KEY\_KP\_5](#KEY_KP_5)
    + [KEY\_KP\_6](#KEY_KP_6)
    + [KEY\_KP\_7](#KEY_KP_7)
    + [KEY\_KP\_8](#KEY_KP_8)
    + [KEY\_KP\_9](#KEY_KP_9)
    + [KEY\_KP\_ADD](#KEY_KP_ADD)
    + [KEY\_KP\_DECIMAL](#KEY_KP_DECIMAL)
    + [KEY\_KP\_DIVIDE](#KEY_KP_DIVIDE)
    + [KEY\_KP\_ENTER](#KEY_KP_ENTER)
    + [KEY\_KP\_EQUAL](#KEY_KP_EQUAL)
    + [KEY\_KP\_MULTIPLY](#KEY_KP_MULTIPLY)
    + [KEY\_KP\_SUBTRACT](#KEY_KP_SUBTRACT)
    + [KEY\_L](#KEY_L)
    + [KEY\_LAST](#KEY_LAST)
    + [KEY\_LEFT](#KEY_LEFT)
    + [KEY\_LEFT\_ALT](#KEY_LEFT_ALT)
    + [KEY\_LEFT\_BRACKET](#KEY_LEFT_BRACKET)
    + [KEY\_LEFT\_CONTROL](#KEY_LEFT_CONTROL)
    + [KEY\_LEFT\_SHIFT](#KEY_LEFT_SHIFT)
    + [KEY\_LEFT\_SUPER](#KEY_LEFT_SUPER)
    + [KEY\_M](#KEY_M)
    + [KEY\_MENU](#KEY_MENU)
    + [KEY\_MINUS](#KEY_MINUS)
    + [KEY\_N](#KEY_N)
    + [KEY\_NUM\_LOCK](#KEY_NUM_LOCK)
    + [KEY\_O](#KEY_O)
    + [KEY\_P](#KEY_P)
    + [KEY\_PAGE\_DOWN](#KEY_PAGE_DOWN)
    + [KEY\_PAGE\_UP](#KEY_PAGE_UP)
    + [KEY\_PAUSE](#KEY_PAUSE)
    + [KEY\_PERIOD](#KEY_PERIOD)
    + [KEY\_PRINT\_SCREEN](#KEY_PRINT_SCREEN)
    + [KEY\_Q](#KEY_Q)
    + [KEY\_R](#KEY_R)
    + [KEY\_RIGHT](#KEY_RIGHT)
    + [KEY\_RIGHT\_ALT](#KEY_RIGHT_ALT)
    + [KEY\_RIGHT\_BRACKET](#KEY_RIGHT_BRACKET)
    + [KEY\_RIGHT\_CONTROL](#KEY_RIGHT_CONTROL)
    + [KEY\_RIGHT\_SHIFT](#KEY_RIGHT_SHIFT)
    + [KEY\_RIGHT\_SUPER](#KEY_RIGHT_SUPER)
    + [KEY\_S](#KEY_S)
    + [KEY\_SCROLL\_LOCK](#KEY_SCROLL_LOCK)
    + [KEY\_SEMICOLON](#KEY_SEMICOLON)
    + [KEY\_SLASH](#KEY_SLASH)
    + [KEY\_SPACE](#KEY_SPACE)
    + [KEY\_T](#KEY_T)
    + [KEY\_TAB](#KEY_TAB)
    + [KEY\_U](#KEY_U)
    + [KEY\_UNKNOWN](#KEY_UNKNOWN)
    + [KEY\_UP](#KEY_UP)
    + [KEY\_V](#KEY_V)
    + [KEY\_W](#KEY_W)
    + [KEY\_WORLD\_1](#KEY_WORLD_1)
    + [KEY\_WORLD\_2](#KEY_WORLD_2)
    + [KEY\_X](#KEY_X)
    + [KEY\_Y](#KEY_Y)
    + [KEY\_Z](#KEY_Z)
    + [LOCK\_KEY\_MODS](#LOCK_KEY_MODS)
    + [LOSE\_CONTEXT\_ON\_RESET](#LOSE_CONTEXT_ON_RESET)
    + [MAXIMIZED](#MAXIMIZED)
    + [MOD\_ALT](#MOD_ALT)
    + [MOD\_CAPS\_LOCK](#MOD_CAPS_LOCK)
    + [MOD\_CONTROL](#MOD_CONTROL)
    + [MOD\_NUM\_LOCK](#MOD_NUM_LOCK)
    + [MOD\_SHIFT](#MOD_SHIFT)
    + [MOD\_SUPER](#MOD_SUPER)
    + [MOUSE\_BUTTON\_1](#MOUSE_BUTTON_1)
    + [MOUSE\_BUTTON\_2](#MOUSE_BUTTON_2)
    + [MOUSE\_BUTTON\_3](#MOUSE_BUTTON_3)
    + [MOUSE\_BUTTON\_4](#MOUSE_BUTTON_4)
    + [MOUSE\_BUTTON\_5](#MOUSE_BUTTON_5)
    + [MOUSE\_BUTTON\_6](#MOUSE_BUTTON_6)
    + [MOUSE\_BUTTON\_7](#MOUSE_BUTTON_7)
    + [MOUSE\_BUTTON\_8](#MOUSE_BUTTON_8)
    + [MOUSE\_BUTTON\_LAST](#MOUSE_BUTTON_LAST)
    + [MOUSE\_BUTTON\_LEFT](#MOUSE_BUTTON_LEFT)
    + [MOUSE\_BUTTON\_MIDDLE](#MOUSE_BUTTON_MIDDLE)
    + [MOUSE\_BUTTON\_RIGHT](#MOUSE_BUTTON_RIGHT)
    + [MOUSE\_PASSTHROUGH](#MOUSE_PASSTHROUGH)
    + [NATIVE\_CONTEXT\_API](#NATIVE_CONTEXT_API)
    + [NOT\_ALLOWED\_CURSOR](#NOT_ALLOWED_CURSOR)
    + [NOT\_INITIALIZED](#NOT_INITIALIZED)
    + [NO\_API](#NO_API)
    + [NO\_CURRENT\_CONTEXT](#NO_CURRENT_CONTEXT)
    + [NO\_ERROR](#NO_ERROR)
    + [NO\_RESET\_NOTIFICATION](#NO_RESET_NOTIFICATION)
    + [NO\_ROBUSTNESS](#NO_ROBUSTNESS)
    + [NO\_WINDOW\_CONTEXT](#NO_WINDOW_CONTEXT)
    + [OPENGL\_ANY\_PROFILE](#OPENGL_ANY_PROFILE)
    + [OPENGL\_API](#OPENGL_API)
    + [OPENGL\_COMPAT\_PROFILE](#OPENGL_COMPAT_PROFILE)
    + [OPENGL\_CORE\_PROFILE](#OPENGL_CORE_PROFILE)
    + [OPENGL\_DEBUG\_CONTEXT](#OPENGL_DEBUG_CONTEXT)
    + [OPENGL\_ES\_API](#OPENGL_ES_API)
    + [OPENGL\_FORWARD\_COMPAT](#OPENGL_FORWARD_COMPAT)
    + [OPENGL\_PROFILE](#OPENGL_PROFILE)
    + [OSMESA\_CONTEXT\_API](#OSMESA_CONTEXT_API)
    + [OUT\_OF\_MEMORY](#OUT_OF_MEMORY)
    + [PLATFORM](#PLATFORM)
    + [PLATFORM\_COCOA](#PLATFORM_COCOA)
    + [PLATFORM\_ERROR](#PLATFORM_ERROR)
    + [PLATFORM\_NULL](#PLATFORM_NULL)
    + [PLATFORM\_UNAVAILABLE](#PLATFORM_UNAVAILABLE)
    + [PLATFORM\_WAYLAND](#PLATFORM_WAYLAND)
    + [PLATFORM\_WIN32](#PLATFORM_WIN32)
    + [PLATFORM\_X11](#PLATFORM_X11)
    + [POINTING\_HAND\_CURSOR](#POINTING_HAND_CURSOR)
    + [POSITION\_X](#POSITION_X)
    + [POSITION\_Y](#POSITION_Y)
    + [PRESS](#PRESS)
    + [RAW\_MOUSE\_MOTION](#RAW_MOUSE_MOTION)
    + [RED\_BITS](#RED_BITS)
    + [REFRESH\_RATE](#REFRESH_RATE)
    + [RELEASE](#RELEASE)
    + [RELEASE\_BEHAVIOR\_FLUSH](#RELEASE_BEHAVIOR_FLUSH)
    + [RELEASE\_BEHAVIOR\_NONE](#RELEASE_BEHAVIOR_NONE)
    + [REPEAT](#REPEAT)
    + [RESIZABLE](#RESIZABLE)
    + [RESIZE\_ALL\_CURSOR](#RESIZE_ALL_CURSOR)
    + [RESIZE\_EW\_CURSOR](#RESIZE_EW_CURSOR)
    + [RESIZE\_NESW\_CURSOR](#RESIZE_NESW_CURSOR)
    + [RESIZE\_NS\_CURSOR](#RESIZE_NS_CURSOR)
    + [RESIZE\_NWSE\_CURSOR](#RESIZE_NWSE_CURSOR)
    + [SAMPLES](#SAMPLES)
    + [SCALE\_FRAMEBUFFER](#SCALE_FRAMEBUFFER)
    + [SCALE\_TO\_MONITOR](#SCALE_TO_MONITOR)
    + [SRGB\_CAPABLE](#SRGB_CAPABLE)
    + [STENCIL\_BITS](#STENCIL_BITS)
    + [STEREO](#STEREO)
    + [STICKY\_KEYS](#STICKY_KEYS)
    + [STICKY\_MOUSE\_BUTTONS](#STICKY_MOUSE_BUTTONS)
    + [TRANSPARENT\_FRAMEBUFFER](#TRANSPARENT_FRAMEBUFFER)
    + [TRUE](#TRUE)
    + [VERSION\_MAJOR](#VERSION_MAJOR)
    + [VERSION\_MINOR](#VERSION_MINOR)
    + [VERSION\_REVISION](#VERSION_REVISION)
    + [VERSION\_UNAVAILABLE](#VERSION_UNAVAILABLE)
    + [VISIBLE](#VISIBLE)
    + [VRESIZE\_CURSOR](#VRESIZE_CURSOR)
    + [WAYLAND\_APP\_ID](#WAYLAND_APP_ID)
    + [WAYLAND\_DISABLE\_LIBDECOR](#WAYLAND_DISABLE_LIBDECOR)
    + [WAYLAND\_LIBDECOR](#WAYLAND_LIBDECOR)
    + [WAYLAND\_PREFER\_LIBDECOR](#WAYLAND_PREFER_LIBDECOR)
    + [WIN32\_KEYBOARD\_MENU](#WIN32_KEYBOARD_MENU)
    + [WIN32\_SHOWDEFAULT](#WIN32_SHOWDEFAULT)
    + [X11\_CLASS\_NAME](#X11_CLASS_NAME)
    + [X11\_INSTANCE\_NAME](#X11_INSTANCE_NAME)
    + [X11\_XCB\_VULKAN\_SURFACE](#X11_XCB_VULKAN_SURFACE)
  * [Procedures](#pkg-Procedures)
    + [GetClipboardString](#GetClipboardString)
    + [GetCursorPos](#GetCursorPos)
    + [GetError](#GetError)
    + [GetFramebufferSize](#GetFramebufferSize)
    + [GetGamepadName](#GetGamepadName)
    + [GetJoystickAxes](#GetJoystickAxes)
    + [GetJoystickButtons](#GetJoystickButtons)
    + [GetJoystickGUID](#GetJoystickGUID)
    + [GetJoystickHats](#GetJoystickHats)
    + [GetJoystickName](#GetJoystickName)
    + [GetKeyName](#GetKeyName)
    + [GetMonitorContentScale](#GetMonitorContentScale)
    + [GetMonitorName](#GetMonitorName)
    + [GetMonitorPhysicalSize](#GetMonitorPhysicalSize)
    + [GetMonitorPos](#GetMonitorPos)
    + [GetMonitorWorkarea](#GetMonitorWorkarea)
    + [GetMonitors](#GetMonitors)
    + [GetRequiredInstanceExtensions](#GetRequiredInstanceExtensions)
    + [GetVersion](#GetVersion)
    + [GetVersionString](#GetVersionString)
    + [GetVideoModes](#GetVideoModes)
    + [GetWGLContext](#GetWGLContext)
    + [GetWin32Adapter](#GetWin32Adapter)
    + [GetWin32Monitor](#GetWin32Monitor)
    + [GetWin32Window](#GetWin32Window)
    + [GetWindowContentScale](#GetWindowContentScale)
    + [GetWindowFrameSize](#GetWindowFrameSize)
    + [GetWindowPos](#GetWindowPos)
    + [GetWindowSize](#GetWindowSize)
    + [SetWindowIcon](#SetWindowIcon)
    + [WindowHint\_bool](#WindowHint_bool)
    + [WindowHint\_int](#WindowHint_int)
    + [gl\_set\_proc\_address](#gl_set_proc_address)
  * [Procedure Groups](#pkg-Procedure Groups)
    + [WindowHint](#WindowHint)
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