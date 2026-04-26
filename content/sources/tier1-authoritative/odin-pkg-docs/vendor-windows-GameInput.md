package windows/GameInput - pkg.odin-lang.org 






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



Current Package: *[windows\_game\_input](/vendor/windows/GameInput)*

  

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
2. windows
3. [GameInput](/vendor/windows/GameInput)

# package vendor:windows/GameInput [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [Windows Game Input GDK](https://learn.microsoft.com/en-us/gaming/gdk/_content/gc/input/overviews/input-overview).

Windows SDK 10.0.26100.0 is at least required to link with.

Bindings for Windows Game Input GDK:
https://learn.microsoft.com/en-us/gaming/gdk/\_content/gc/input/overviews/input-overview

Windows SDK 10.0.26100.0 is at least required to link with.

## Index

Types (107)

* [APP\_LOCAL\_DEVICE\_ID](#APP_LOCAL_DEVICE_ID)
* [ArcadeStickButtons](#ArcadeStickButtons)
* [ArcadeStickButtonsFlag](#ArcadeStickButtonsFlag)
* [ArcadeStickInfo](#ArcadeStickInfo)
* [ArcadeStickState](#ArcadeStickState)
* [BatteryState](#BatteryState)
* [BatteryStatus](#BatteryStatus)
* [CallbackToken](#CallbackToken)
* [ControllerAxisInfo](#ControllerAxisInfo)
* [ControllerButtonInfo](#ControllerButtonInfo)
* [ControllerSwitchInfo](#ControllerSwitchInfo)
* [DeviceCallback](#DeviceCallback)
* [DeviceCapabilities](#DeviceCapabilities)
* [DeviceCapabilitiesFlag](#DeviceCapabilitiesFlag)
* [DeviceFamily](#DeviceFamily)
* [DeviceInfo](#DeviceInfo)
* [DeviceStatus](#DeviceStatus)
* [DeviceStatusFlag](#DeviceStatusFlag)
* [EnumerationKind](#EnumerationKind)
* [FeedbackAxes](#FeedbackAxes)
* [FeedbackAxesFlag](#FeedbackAxesFlag)
* [FeedbackEffectState](#FeedbackEffectState)
* [FlightStickButtons](#FlightStickButtons)
* [FlightStickButtonsFlag](#FlightStickButtonsFlag)
* [FlightStickInfo](#FlightStickInfo)
* [FlightStickState](#FlightStickState)
* [FocusPolicy](#FocusPolicy)
* [FocusPolicyFlag](#FocusPolicyFlag)
* [ForceFeedbackConditionParams](#ForceFeedbackConditionParams)
* [ForceFeedbackConstantParams](#ForceFeedbackConstantParams)
* [ForceFeedbackEffectKind](#ForceFeedbackEffectKind)
* [ForceFeedbackEnvelope](#ForceFeedbackEnvelope)
* [ForceFeedbackMagnitude](#ForceFeedbackMagnitude)
* [ForceFeedbackMotorInfo](#ForceFeedbackMotorInfo)
* [ForceFeedbackParams](#ForceFeedbackParams)
* [ForceFeedbackPeriodicParams](#ForceFeedbackPeriodicParams)
* [ForceFeedbackRampParams](#ForceFeedbackRampParams)
* [GamepadButtons](#GamepadButtons)
* [GamepadButtonsFlag](#GamepadButtonsFlag)
* [GamepadInfo](#GamepadInfo)
* [GamepadState](#GamepadState)
* [HANDLE](#HANDLE)
* [HRESULT](#HRESULT)
* [HapticFeedbackMotorInfo](#HapticFeedbackMotorInfo)
* [HapticFeedbackParams](#HapticFeedbackParams)
* [HapticWaveformInfo](#HapticWaveformInfo)
* [IGameInput](#IGameInput)
* [IGameInputDevice](#IGameInputDevice)
* [IGameInputDevice\_Vtable](#IGameInputDevice_Vtable)
* [IGameInputDispatcher](#IGameInputDispatcher)
* [IGameInputDispatcher\_Vtable](#IGameInputDispatcher_Vtable)
* [IGameInputForceFeedbackEffect](#IGameInputForceFeedbackEffect)
* [IGameInputForceFeedbackEffect\_Vtable](#IGameInputForceFeedbackEffect_Vtable)
* [IGameInputRawDeviceReport](#IGameInputRawDeviceReport)
* [IGameInputRawDeviceReport\_Vtable](#IGameInputRawDeviceReport_Vtable)
* [IGameInputReading](#IGameInputReading)
* [IGameInputReading\_VTable](#IGameInputReading_VTable)
* [IGameInput\_VTable](#IGameInput_VTable)
* [IID](#IID)
* [IUnknown](#IUnknown)
* [IUnknown\_VTable](#IUnknown_VTable)
* [KeyState](#KeyState)
* [KeyboardInfo](#KeyboardInfo)
* [KeyboardKind](#KeyboardKind)
* [KeyboardLayoutCallback](#KeyboardLayoutCallback)
* [Kind](#Kind)
* [KindFlag](#KindFlag)
* [Label](#Label)
* [Location](#Location)
* [MotionAccuracy](#MotionAccuracy)
* [MotionInfo](#MotionInfo)
* [MotionState](#MotionState)
* [MouseButtons](#MouseButtons)
* [MouseButtonsFlag](#MouseButtonsFlag)
* [MouseInfo](#MouseInfo)
* [MouseState](#MouseState)
* [RacingWheelButtons](#RacingWheelButtons)
* [RacingWheelButtonsFlag](#RacingWheelButtonsFlag)
* [RacingWheelInfo](#RacingWheelInfo)
* [RacingWheelState](#RacingWheelState)
* [RawDeviceItemCollectionInfo](#RawDeviceItemCollectionInfo)
* [RawDeviceItemCollectionKind](#RawDeviceItemCollectionKind)
* [RawDevicePhysicalUnitKind](#RawDevicePhysicalUnitKind)
* [RawDeviceReportInfo](#RawDeviceReportInfo)
* [RawDeviceReportItemFlag](#RawDeviceReportItemFlag)
* [RawDeviceReportItemFlags](#RawDeviceReportItemFlags)
* [RawDeviceReportItemInfo](#RawDeviceReportItemInfo)
* [RawDeviceReportKind](#RawDeviceReportKind)
* [ReadingCallback](#ReadingCallback)
* [RumbleMotors](#RumbleMotors)
* [RumbleMotorsFlag](#RumbleMotorsFlag)
* [RumbleParams](#RumbleParams)
* [String](#String)
* [SwitchKind](#SwitchKind)
* [SwitchPosition](#SwitchPosition)
* [SystemButtonCallback](#SystemButtonCallback)
* [SystemButtons](#SystemButtons)
* [SystemButtonsFlag](#SystemButtonsFlag)
* [TouchSensorInfo](#TouchSensorInfo)
* [TouchShape](#TouchShape)
* [TouchState](#TouchState)
* [UiNavigationButtons](#UiNavigationButtons)
* [UiNavigationButtonsFlag](#UiNavigationButtonsFlag)
* [UiNavigationInfo](#UiNavigationInfo)
* [UiNavigationState](#UiNavigationState)
* [Usage](#Usage)
* [Version](#Version)

Constants (29)

* [ArcadeStickNone](#ArcadeStickNone)
* [CURRENT\_CALLBACK\_TOKEN\_VALUE](#CURRENT_CALLBACK_TOKEN_VALUE)
* [DEVICE\_DISCONNECTED](#DEVICE_DISCONNECTED)
* [DEVICE\_NOT\_FOUND](#DEVICE_NOT_FOUND)
* [DefaultFocusPolicy](#DefaultFocusPolicy)
* [DeviceCapabilityNone](#DeviceCapabilityNone)
* [DeviceNoStatus](#DeviceNoStatus)
* [FeedbackAxisNone](#FeedbackAxisNone)
* [FlightStickNone](#FlightStickNone)
* [GamepadNone](#GamepadNone)
* [IGameInputDevice\_UUID\_STRING](#IGameInputDevice_UUID_STRING)
* [IGameInputDispatcher\_UUID\_STRING](#IGameInputDispatcher_UUID_STRING)
* [IGameInputForceFeedbackEffect\_UUID\_STRING](#IGameInputForceFeedbackEffect_UUID_STRING)
* [IGameInputRawDeviceReport\_UUID\_STRING](#IGameInputRawDeviceReport_UUID_STRING)
* [IGameInputReading\_UUID\_STRING](#IGameInputReading_UUID_STRING)
* [IGameInput\_UUID\_STRING](#IGameInput_UUID_STRING)
* [INSUFFICIENT\_FORCE\_FEEDBACK\_RESOURCES](#INSUFFICIENT_FORCE_FEEDBACK_RESOURCES)
* [INVALID\_CALLBACK\_TOKEN\_VALUE](#INVALID_CALLBACK_TOKEN_VALUE)
* [KindController](#KindController)
* [KindUnknown](#KindUnknown)
* [MouseNone](#MouseNone)
* [READING\_NOT\_FOUND](#READING_NOT_FOUND)
* [REFERENCE\_READING\_TOO\_OLD](#REFERENCE_READING_TOO_OLD)
* [RacingWheelNone](#RacingWheelNone)
* [RawDeviceDefaultItem](#RawDeviceDefaultItem)
* [RumbleNone](#RumbleNone)
* [SystemButtonNone](#SystemButtonNone)
* [TIMESTAMP\_OUT\_OF\_RANGE](#TIMESTAMP_OUT_OF_RANGE)
* [UiNavigationNone](#UiNavigationNone)

Variables (6)

* [IGameInputDevice\_UUID](#IGameInputDevice_UUID)
* [IGameInputDispatcher\_UUID](#IGameInputDispatcher_UUID)
* [IGameInputForceFeedbackEffect\_UUID](#IGameInputForceFeedbackEffect_UUID)
* [IGameInputRawDeviceReport\_UUID](#IGameInputRawDeviceReport_UUID)
* [IGameInputReading\_UUID](#IGameInputReading_UUID)
* [IGameInput\_UUID](#IGameInput_UUID)

Procedures (1)

* [Create](#Create)

Procedure Groups (0)

This section is empty.

## Types

### [APP\_LOCAL\_DEVICE\_ID ¶](#APP_LOCAL_DEVICE_ID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L20)

```
APP_LOCAL_DEVICE_ID :: distinct [32]u8
```

### [ArcadeStickButtons ¶](#ArcadeStickButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L117)

```
ArcadeStickButtons :: distinct bit_set[ArcadeStickButtonsFlag; u32]
```

##### Related Constants

* [ArcadeStickNone](/vendor/windows/GameInput/#ArcadeStickNone)

### [ArcadeStickButtonsFlag ¶](#ArcadeStickButtonsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L118)

```
ArcadeStickButtonsFlag :: enum u32 {
	Menu     = 0, 
	View     = 1, 
	Up       = 2, 
	Down     = 3, 
	Left     = 4, 
	Right    = 5, 
	Action1  = 6, 
	Action2  = 7, 
	Action3  = 8, 
	Action4  = 9, 
	Action5  = 10, 
	Action6  = 11, 
	Special1 = 12, 
	Special2 = 13, 
}
```

### [ArcadeStickInfo ¶](#ArcadeStickInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L732)

```
ArcadeStickInfo :: struct {
	menuButtonLabel:     Label,
	viewButtonLabel:     Label,
	stickUpLabel:        Label,
	stickDownLabel:      Label,
	stickLeftLabel:      Label,
	stickRightLabel:     Label,
	actionButton1Label:  Label,
	actionButton2Label:  Label,
	actionButton3Label:  Label,
	actionButton4Label:  Label,
	actionButton5Label:  Label,
	actionButton6Label:  Label,
	specialButton1Label: Label,
	specialButton2Label: Label,
}
```

### [ArcadeStickState ¶](#ArcadeStickState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L549)

```
ArcadeStickState :: struct {
	buttons: ArcadeStickButtons,
}
```

### [BatteryState ¶](#BatteryState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L586)

```
BatteryState :: struct {
	chargeRate:         f32,
	maxChargeRate:      f32,
	remainingCapacity:  f32,
	fullChargeCapacity: f32,
	status:             BatteryStatus,
}
```

### [BatteryStatus ¶](#BatteryStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L224)

```
BatteryStatus :: enum i32 {
	Unknown     = -1, 
	NotPresent  = 0, 
	Discharging = 1, 
	Idle        = 2, 
	Charging    = 3, 
}
```

### [CallbackToken ¶](#CallbackToken) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L491)

```
CallbackToken :: distinct u64
```

##### Related Constants

* [CURRENT\_CALLBACK\_TOKEN\_VALUE](/vendor/windows/GameInput/#CURRENT_CALLBACK_TOKEN_VALUE)
* [INVALID\_CALLBACK\_TOKEN\_VALUE](/vendor/windows/GameInput/#INVALID_CALLBACK_TOKEN_VALUE)

### [ControllerAxisInfo ¶](#ControllerAxisInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L652)

```
ControllerAxisInfo :: struct {
	mappedInputKinds:  Kind,
	label:             Label,
	isContinuous:      bool,
	isNonlinear:       bool,
	isQuantized:       bool,
	hasRestValue:      bool,
	restValue:         f32,
	resolution:        u64,
	legacyDInputIndex: u16,
	legacyHidIndex:    u16,
	rawReportIndex:    u32,
	inputReport:       ^RawDeviceReportInfo,
	inputReportItem:   ^RawDeviceReportItemInfo,
}
```

### [ControllerButtonInfo ¶](#ControllerButtonInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L668)

```
ControllerButtonInfo :: struct {
	mappedInputKinds:  Kind,
	label:             Label,
	legacyDInputIndex: u16,
	legacyHidIndex:    u16,
	rawReportIndex:    u32,
	inputReport:       ^RawDeviceReportInfo,
	inputReportItem:   ^RawDeviceReportItemInfo,
}
```

### [ControllerSwitchInfo ¶](#ControllerSwitchInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L678)

```
ControllerSwitchInfo :: struct {
	mappedInputKinds:  Kind,
	label:             Label,
	positionLabels:    [9]Label,
	kind:              SwitchKind,
	legacyDInputIndex: u16,
	legacyHidIndex:    u16,
	rawReportIndex:    u32,
	inputReport:       ^RawDeviceReportInfo,
	inputReportItem:   ^RawDeviceReportItemInfo,
}
```

### [DeviceCallback ¶](#DeviceCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L497)

```
DeviceCallback :: proc "stdcall" (callbackToken: CallbackToken, ctx: rawptr, device: ^IGameInputDevice, timestamp: u64, currentStatus: DeviceStatus, previousStatus: DeviceStatus)
```

### [DeviceCapabilities ¶](#DeviceCapabilities) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L241)

```
DeviceCapabilities :: distinct bit_set[DeviceCapabilitiesFlag; u32]
```

##### Related Constants

* [DeviceCapabilityNone](/vendor/windows/GameInput/#DeviceCapabilityNone)

### [DeviceCapabilitiesFlag ¶](#DeviceCapabilitiesFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L242)

```
DeviceCapabilitiesFlag :: enum u32 {
	Audio           = 0, 
	PluginModule    = 1, 
	PowerOff        = 2, 
	Synchronization = 3, 
	Wireless        = 4, 
}
```

### [DeviceFamily ¶](#DeviceFamily) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L232)

```
DeviceFamily :: enum i32 {
	Virtual   = -1, 
	Aggregate = 0, 
	XboxOne   = 1, 
	Xbox360   = 2, 
	Hid       = 3, 
	I8042     = 4, 
}
```

### [DeviceInfo ¶](#DeviceInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L850)

```
DeviceInfo :: struct {
	infoSize:                 u32,
	vendorId:                 u16,
	productId:                u16,
	revisionNumber:           u16,
	interfaceNumber:          u8,
	collectionNumber:         u8,
	usage:                    Usage,
	hardwareVersion:          Version,
	firmwareVersion:          Version,
	deviceId:                 APP_LOCAL_DEVICE_ID,
	deviceRootId:             APP_LOCAL_DEVICE_ID,
	deviceFamily:             DeviceFamily,
	capabilities:             DeviceCapabilities,
	supportedInput:           Kind,
	supportedRumbleMotors:    RumbleMotors,
	inputReportCount:         u32,
	outputReportCount:        u32,
	featureReportCount:       u32,
	controllerAxisCount:      u32,
	controllerButtonCount:    u32,
	controllerSwitchCount:    u32,
	touchPointCount:          u32,
	touchSensorCount:         u32,
	forceFeedbackMotorCount:  u32,
	hapticFeedbackMotorCount: u32,
	deviceStringCount:        u32,
	deviceDescriptorSize:     u32,
	inputReportInfo:          [^]RawDeviceReportInfo `fmt:"v,inputReportCount"`,
	outputReportInfo:         [^]RawDeviceReportInfo `fmt:"v,outputReportCount"`,
	featureReportInfo:        [^]RawDeviceReportInfo `fmt:"v,featureReportCount"`,
	controllerAxisInfo:       [^]ControllerAxisInfo `fmt:"v,controllerAxisCount"`,
	controllerButtonInfo:     [^]ControllerButtonInfo `fmt:"v,controllerButtonCount"`,
	controllerSwitchInfo:     [^]ControllerSwitchInfo `fmt:"v,controllerSwitchCount"`,
	keyboardInfo:             ^KeyboardInfo,
	mouseInfo:                ^MouseInfo,
	touchSensorInfo:          [^]TouchSensorInfo `fmt:"v,touchSensorCount"`,
	motionInfo:               ^MotionInfo,
	arcadeStickInfo:          ^ArcadeStickInfo,
	flightStickInfo:          ^FlightStickInfo,
	gamepadInfo:              ^GamepadInfo,
	racingWheelInfo:          ^RacingWheelInfo,
	uiNavigationInfo:         ^UiNavigationInfo,
	forceFeedbackMotorInfo:   [^]ForceFeedbackMotorInfo `fmt:"v,forceFeedbackMotorCount"`,
	hapticFeedbackMotorInfo:  [^]HapticFeedbackMotorInfo `fmt:"v,hapticFeedbackMotorCount"`,
	displayName:              ^String,
	deviceStrings:            [^]String `fmt:"v,deviceStringCount"`,
	deviceDescriptorData:     rawptr,
}
```

### [DeviceStatus ¶](#DeviceStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L209)

```
DeviceStatus :: distinct bit_set[DeviceStatusFlag; u32]
```

##### Related Constants

* [DeviceNoStatus](/vendor/windows/GameInput/#DeviceNoStatus)

### [DeviceStatusFlag ¶](#DeviceStatusFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L210)

```
DeviceStatusFlag :: enum u32 {
	Connected     = 0, 
	InputEnabled  = 1, 
	OutputEnabled = 2, 
	RawIoEnabled  = 3, 
	AudioCapture  = 4, 
	AudioRender   = 5, 
	Synchronized  = 6, 
	Wireless      = 7, 
	UserIdle      = 20, 
}
```

### [EnumerationKind ¶](#EnumerationKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L41)

```
EnumerationKind :: enum i32 {
	NoEnumeration       = 0, 
	AsyncEnumeration    = 1, 
	BlockingEnumeration = 2, 
}
```

### [FeedbackAxes ¶](#FeedbackAxes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L450)

```
FeedbackAxes :: distinct bit_set[FeedbackAxesFlag; u32]
```

##### Related Constants

* [FeedbackAxisNone](/vendor/windows/GameInput/#FeedbackAxisNone)

### [FeedbackAxesFlag ¶](#FeedbackAxesFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L451)

```
FeedbackAxesFlag :: enum u32 {
	LinearX  = 0, 
	LinearY  = 1, 
	LinearZ  = 2, 
	AngularX = 3, 
	AngularY = 4, 
	AngularZ = 5, 
	Normal   = 6, 
}
```

### [FeedbackEffectState ¶](#FeedbackEffectState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L462)

```
FeedbackEffectState :: enum i32 {
	Stopped = 0, 
	Running = 1, 
	Paused  = 2, 
}
```

### [FlightStickButtons ¶](#FlightStickButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L136)

```
FlightStickButtons :: distinct bit_set[FlightStickButtonsFlag; u32]
```

##### Related Constants

* [FlightStickNone](/vendor/windows/GameInput/#FlightStickNone)

### [FlightStickButtonsFlag ¶](#FlightStickButtonsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L137)

```
FlightStickButtonsFlag :: enum u32 {
	Menu          = 0, 
	View          = 1, 
	FirePrimary   = 2, 
	FireSecondary = 3, 
}
```

### [FlightStickInfo ¶](#FlightStickInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L749)

```
FlightStickInfo :: struct {
	menuButtonLabel:          Label,
	viewButtonLabel:          Label,
	firePrimaryButtonLabel:   Label,
	fireSecondaryButtonLabel: Label,
	hatSwitchKind:            SwitchKind,
}
```

### [FlightStickState ¶](#FlightStickState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L553)

```
FlightStickState :: struct {
	buttons:   FlightStickButtons,
	hatSwitch: SwitchPosition,
	roll:      f32,
	pitch:     f32,
	yaw:       f32,
	throttle:  f32,
}
```

### [FocusPolicy ¶](#FocusPolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L47)

```
FocusPolicy :: distinct bit_set[FocusPolicyFlag; u32]
```

##### Related Constants

* [DefaultFocusPolicy](/vendor/windows/GameInput/#DefaultFocusPolicy)

### [FocusPolicyFlag ¶](#FocusPolicyFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L48)

```
FocusPolicyFlag :: enum u32 {
	DisableBackgroundInput         = 0, 
	ExclusiveForegroundInput       = 1, 
	DisableBackgroundGuideButton   = 2, 
	ExclusiveForegroundGuideButton = 3, 
	DisableBackgroundShareButton   = 4, 
	ExclusiveForegroundShareButton = 5, 
}
```

### [ForceFeedbackConditionParams ¶](#ForceFeedbackConditionParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L921)

```
ForceFeedbackConditionParams :: struct {
	magnitude:            ForceFeedbackMagnitude,
	positiveCoefficient:  f32,
	negativeCoefficient:  f32,
	maxPositiveMagnitude: f32,
	maxNegativeMagnitude: f32,
	deadZone:             f32,
	bias:                 f32,
}
```

### [ForceFeedbackConstantParams ¶](#ForceFeedbackConstantParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L931)

```
ForceFeedbackConstantParams :: struct {
	envelope:  ForceFeedbackEnvelope,
	magnitude: ForceFeedbackMagnitude,
}
```

### [ForceFeedbackEffectKind ¶](#ForceFeedbackEffectKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L468)

```
ForceFeedbackEffectKind :: enum i32 {
	Constant         = 0, 
	Ramp             = 1, 
	SineWave         = 2, 
	SquareWave       = 3, 
	TriangleWave     = 4, 
	SawtoothUpWave   = 5, 
	SawtoothDownWave = 6, 
	Spring           = 7, 
	Friction         = 8, 
	Damper           = 9, 
	Inertia          = 10, 
}
```

### [ForceFeedbackEnvelope ¶](#ForceFeedbackEnvelope) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L900)

```
ForceFeedbackEnvelope :: struct {
	attackDuration:  u64,
	sustainDuration: u64,
	releaseDuration: u64,
	attackGain:      f32,
	sustainGain:     f32,
	releaseGain:     f32,
	playCount:       u32,
	repeatDelay:     u64,
}
```

### [ForceFeedbackMagnitude ¶](#ForceFeedbackMagnitude) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L911)

```
ForceFeedbackMagnitude :: struct {
	linearX:  f32,
	linearY:  f32,
	linearZ:  f32,
	angularX: f32,
	angularY: f32,
	angularZ: f32,
	normal:   f32,
}
```

### [ForceFeedbackMotorInfo ¶](#ForceFeedbackMotorInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L815)

```
ForceFeedbackMotorInfo :: struct {
	supportedAxes:                     FeedbackAxes,
	location:                          Location,
	locationId:                        u32,
	maxSimultaneousEffects:            u32,
	isConstantEffectSupported:         bool,
	isRampEffectSupported:             bool,
	isSineWaveEffectSupported:         bool,
	isSquareWaveEffectSupported:       bool,
	isTriangleWaveEffectSupported:     bool,
	isSawtoothUpWaveEffectSupported:   bool,
	isSawtoothDownWaveEffectSupported: bool,
	isSpringEffectSupported:           bool,
	isFrictionEffectSupported:         bool,
	isDamperEffectSupported:           bool,
	isInertiaEffectSupported:          bool,
}
```

### [ForceFeedbackParams ¶](#ForceFeedbackParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L950)

```
ForceFeedbackParams :: struct {
	kind: ForceFeedbackEffectKind,
	using data: struct #raw_union {
		constant:         ForceFeedbackConstantParams,
		ramp:             ForceFeedbackRampParams,
		sineWave:         ForceFeedbackPeriodicParams,
		squareWave:       ForceFeedbackPeriodicParams,
		triangleWave:     ForceFeedbackPeriodicParams,
		sawtoothUpWave:   ForceFeedbackPeriodicParams,
		sawtoothDownWave: ForceFeedbackPeriodicParams,
		spring:           ForceFeedbackConditionParams,
		friction:         ForceFeedbackConditionParams,
		damper:           ForceFeedbackConditionParams,
		inertia:          ForceFeedbackConditionParams,
	},
}
```

### [ForceFeedbackPeriodicParams ¶](#ForceFeedbackPeriodicParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L936)

```
ForceFeedbackPeriodicParams :: struct {
	envelope:  ForceFeedbackEnvelope,
	magnitude: ForceFeedbackMagnitude,
	frequency: f32,
	phase:     f32,
	bias:      f32,
}
```

### [ForceFeedbackRampParams ¶](#ForceFeedbackRampParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L944)

```
ForceFeedbackRampParams :: struct {
	envelope:       ForceFeedbackEnvelope,
	startMagnitude: ForceFeedbackMagnitude,
	endMagnitude:   ForceFeedbackMagnitude,
}
```

### [GamepadButtons ¶](#GamepadButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L145)

```
GamepadButtons :: distinct bit_set[GamepadButtonsFlag; u32]
```

##### Related Constants

* [GamepadNone](/vendor/windows/GameInput/#GamepadNone)

### [GamepadButtonsFlag ¶](#GamepadButtonsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L146)

```
GamepadButtonsFlag :: enum u32 {
	Menu            = 0, 
	View            = 1, 
	A               = 2, 
	B               = 3, 
	X               = 4, 
	Y               = 5, 
	DPadUp          = 6, 
	DPadDown        = 7, 
	DPadLeft        = 8, 
	DPadRight       = 9, 
	LeftShoulder    = 10, 
	RightShoulder   = 11, 
	LeftThumbstick  = 12, 
	RightThumbstick = 13, 
}
```

### [GamepadInfo ¶](#GamepadInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L757)

```
GamepadInfo :: struct {
	menuButtonLabel:            Label,
	viewButtonLabel:            Label,
	aButtonLabel:               Label,
	bButtonLabel:               Label,
	xButtonLabel:               Label,
	yButtonLabel:               Label,
	dpadUpLabel:                Label,
	dpadDownLabel:              Label,
	dpadLeftLabel:              Label,
	dpadRightLabel:             Label,
	leftShoulderButtonLabel:    Label,
	rightShoulderButtonLabel:   Label,
	leftThumbstickButtonLabel:  Label,
	rightThumbstickButtonLabel: Label,
}
```

### [GamepadState ¶](#GamepadState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L562)

```
GamepadState :: struct {
	buttons:          GamepadButtons,
	leftTrigger:      f32,
	rightTrigger:     f32,
	leftThumbstickX:  f32,
	leftThumbstickY:  f32,
	rightThumbstickX: f32,
	rightThumbstickY: f32,
}
```

### [HANDLE ¶](#HANDLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L15)

```
HANDLE :: sys_windows.HANDLE
```

### [HRESULT ¶](#HRESULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L14)

```
HRESULT :: sys_windows.HRESULT
```

##### Related Procedures With Returns

* [Create](/vendor/windows/GameInput/#Create)

##### Related Constants

* [DEVICE\_DISCONNECTED](/vendor/windows/GameInput/#DEVICE_DISCONNECTED)
* [DEVICE\_NOT\_FOUND](/vendor/windows/GameInput/#DEVICE_NOT_FOUND)
* [INSUFFICIENT\_FORCE\_FEEDBACK\_RESOURCES](/vendor/windows/GameInput/#INSUFFICIENT_FORCE_FEEDBACK_RESOURCES)
* [READING\_NOT\_FOUND](/vendor/windows/GameInput/#READING_NOT_FOUND)
* [REFERENCE\_READING\_TOO\_OLD](/vendor/windows/GameInput/#REFERENCE_READING_TOO_OLD)
* [TIMESTAMP\_OUT\_OF\_RANGE](/vendor/windows/GameInput/#TIMESTAMP_OUT_OF_RANGE)

### [HapticFeedbackMotorInfo ¶](#HapticFeedbackMotorInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L842)

```
HapticFeedbackMotorInfo :: struct {
	mappedRumbleMotor: RumbleMotors,
	location:          Location,
	locationId:        u32,
	waveformCount:     u32,
	waveformInfo:      [^]HapticWaveformInfo `fmt:"v,waveformCount"`,
}
```

### [HapticFeedbackParams ¶](#HapticFeedbackParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L967)

```
HapticFeedbackParams :: struct {
	waveformIndex: u32,
	duration:      u64,
	intensity:     f32,
	playCount:     u32,
	repeatDelay:   u64,
}
```

### [HapticWaveformInfo ¶](#HapticWaveformInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L833)

```
HapticWaveformInfo :: struct {
	usage:                  Usage,
	isDurationSupported:    bool,
	isIntensitySupported:   bool,
	isRepeatSupported:      bool,
	isRepeatDelaySupported: bool,
	defaultDuration:        u64,
}
```

### [IGameInput ¶](#IGameInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L984)

```
IGameInput :: struct #raw_union {
	iunknown:          sys_windows.IUnknown,
	using igameinput_vtable: ^IGameInput_VTable,
}
```

### [IGameInputDevice ¶](#IGameInputDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1045)

```
IGameInputDevice :: struct #raw_union {
	iunknown:                sys_windows.IUnknown,
	using igameinputdevice_vtable: ^IGameInputDevice_Vtable,
}
```

### [IGameInputDevice\_Vtable ¶](#IGameInputDevice_Vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1049)

```
IGameInputDevice_Vtable :: struct {
	using iunknown_vtable:           sys_windows.IUnknown_VTable,
	GetDeviceInfo:                   proc "stdcall" (this: ^IGameInputDevice) -> ^DeviceInfo,
	GetDeviceStatus:                 proc "stdcall" (this: ^IGameInputDevice) -> DeviceStatus,
	GetBatteryState:                 proc "stdcall" (this: ^IGameInputDevice, state: ^BatteryState),
	CreateForceFeedbackEffect:       proc "stdcall" (this: ^IGameInputDevice, motorIndex: u32, params: ^ForceFeedbackParams, effect: ^^IGameInputForceFeedbackEffect) -> sys_windows.HRESULT,
	IsForceFeedbackMotorPoweredOn:   proc "stdcall" (this: ^IGameInputDevice, motorIndex: u32) -> bool,
	SetForceFeedbackMotorGain:       proc "stdcall" (this: ^IGameInputDevice, motorIndex: u32, masterGain: f32),
	SetHapticMotorState:             proc "stdcall" (this: ^IGameInputDevice, motorIndex: u32, params: ^HapticFeedbackParams) -> sys_windows.HRESULT,
	SetRumbleState:                  proc "stdcall" (this: ^IGameInputDevice, params: ^RumbleParams),
	SetInputSynchronizationState:    proc "stdcall" (this: ^IGameInputDevice, enabled: bool),
	SendInputSynchronizationHint:    proc "stdcall" (this: ^IGameInputDevice),
	PowerOff:                        proc "stdcall" (this: ^IGameInputDevice),
	CreateRawDeviceReport:           proc "stdcall" (this: ^IGameInputDevice, reportId: u32, reportKind: RawDeviceReportKind, report: ^^IGameInputRawDeviceReport) -> sys_windows.HRESULT,
	GetRawDeviceFeature:             proc "stdcall" (this: ^IGameInputDevice, reportId: u32, report: ^^IGameInputRawDeviceReport) -> sys_windows.HRESULT,
	SetRawDeviceFeature:             proc "stdcall" (this: ^IGameInputDevice, report: ^IGameInputRawDeviceReport) -> sys_windows.HRESULT,
	SendRawDeviceOutput:             proc "stdcall" (this: ^IGameInputDevice, report: ^IGameInputRawDeviceReport) -> sys_windows.HRESULT,
	SendRawDeviceOutputWithResponse: proc "stdcall" (this: ^IGameInputDevice, requestReport: ^IGameInputRawDeviceReport, responseReport: ^^IGameInputRawDeviceReport) -> sys_windows.HRESULT,
	ExecuteRawDeviceIoControl:       proc "stdcall" (this: ^IGameInputDevice, controlCode: u32, inputBufferSize: uint, inputBuffer: rawptr, outputBufferSize: uint, outputBuffer: rawptr, outputSize: ^uint) -> sys_windows.HRESULT,
	AcquireExclusiveRawDeviceAccess: proc "stdcall" (this: ^IGameInputDevice, timeoutInMicroseconds: u64) -> bool,
	ReleaseExclusiveRawDeviceAccess: proc "stdcall" (this: ^IGameInputDevice),
}
```

### [IGameInputDispatcher ¶](#IGameInputDispatcher) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1074)

```
IGameInputDispatcher :: struct #raw_union {
	iunknown:                    sys_windows.IUnknown,
	using igameinputdispatcher_vtable: ^IGameInputDispatcher_Vtable,
}
```

### [IGameInputDispatcher\_Vtable ¶](#IGameInputDispatcher_Vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1078)

```
IGameInputDispatcher_Vtable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	Dispatch:        proc "stdcall" (this: ^IGameInputDispatcher, quotaInMicroseconds: u64) -> bool,
	OpenWaitHandle:  proc "stdcall" (this: ^IGameInputDispatcher, waitHandle: ^sys_windows.HANDLE) -> sys_windows.HRESULT,
}
```

### [IGameInputForceFeedbackEffect ¶](#IGameInputForceFeedbackEffect) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1086)

```
IGameInputForceFeedbackEffect :: struct #raw_union {
	iunknown:                             sys_windows.IUnknown,
	using igameinputforcefeedbackeffect_vtable: ^IGameInputForceFeedbackEffect_Vtable,
}
```

### [IGameInputForceFeedbackEffect\_Vtable ¶](#IGameInputForceFeedbackEffect_Vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1090)

```
IGameInputForceFeedbackEffect_Vtable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetDevice:       proc "stdcall" (this: ^IGameInputForceFeedbackEffect, device: ^^IGameInputDevice),
	GetMotorIndex:   proc "stdcall" (this: ^IGameInputForceFeedbackEffect) -> u32,
	GetGain:         proc "stdcall" (this: ^IGameInputForceFeedbackEffect) -> f32,
	SetGain:         proc "stdcall" (this: ^IGameInputForceFeedbackEffect, gain: f32),
	GetParams:       proc "stdcall" (this: ^IGameInputForceFeedbackEffect, params: ^ForceFeedbackParams),
	SetParams:       proc "stdcall" (this: ^IGameInputForceFeedbackEffect, params: ^ForceFeedbackParams) -> bool,
	GetState:        proc "stdcall" (this: ^IGameInputForceFeedbackEffect) -> FeedbackEffectState,
	SetState:        proc "stdcall" (this: ^IGameInputForceFeedbackEffect, state: FeedbackEffectState),
}
```

### [IGameInputRawDeviceReport ¶](#IGameInputRawDeviceReport) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1104)

```
IGameInputRawDeviceReport :: struct #raw_union {
	iunknown:                         sys_windows.IUnknown,
	using igameinputrawdevicereport_vtable: ^IGameInputRawDeviceReport_Vtable,
}
```

### [IGameInputRawDeviceReport\_Vtable ¶](#IGameInputRawDeviceReport_Vtable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1108)

```
IGameInputRawDeviceReport_Vtable :: struct {
	using iunknown_vtable: sys_windows.IUnknown_VTable,
	GetDevice:       proc "stdcall" (this: ^IGameInputRawDeviceReport, device: ^^IGameInputDevice),
	GetReportInfo:   proc "stdcall" (this: ^IGameInputRawDeviceReport) -> ^RawDeviceReportInfo,
	GetRawDataSize:  proc "stdcall" (this: ^IGameInputRawDeviceReport) -> uint,
	GetRawData:      proc "stdcall" (this: ^IGameInputRawDeviceReport, bufferSize: uint, buffer: rawptr) -> uint,
	SetRawData:      proc "stdcall" (this: ^IGameInputRawDeviceReport, bufferSize: uint, buffer: rawptr) -> bool,
	GetItemValue:    proc "stdcall" (this: ^IGameInputRawDeviceReport, itemIndex: u32, value: ^u64) -> bool,
	SetItemValue:    proc "stdcall" (this: ^IGameInputRawDeviceReport, itemIndex: u32, value: u64) -> bool,
	ResetItemValue:  proc "stdcall" (this: ^IGameInputRawDeviceReport, itemIndex: u32) -> bool,
	ResetAllItems:   proc "stdcall" (this: ^IGameInputRawDeviceReport) -> bool,
}
```

### [IGameInputReading ¶](#IGameInputReading) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1013)

```
IGameInputReading :: struct #raw_union {
	iunknown:                 sys_windows.IUnknown,
	using igameinputreading_vtable: ^IGameInputReading_VTable,
}
```

### [IGameInputReading\_VTable ¶](#IGameInputReading_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1017)

```
IGameInputReading_VTable :: struct {
	using iunknown_vtable:    sys_windows.IUnknown_VTable,
	GetInputKind:             proc "stdcall" (this: ^IGameInputReading) -> Kind,
	GetSequenceNumber:        proc "stdcall" (this: ^IGameInputReading, inputKind: Kind) -> u64,
	GetTimestamp:             proc "stdcall" (this: ^IGameInputReading) -> u64,
	GetDevice:                proc "stdcall" (this: ^IGameInputReading, device: ^^IGameInputDevice),
	GetRawReport:             proc "stdcall" (this: ^IGameInputReading, report: ^^IGameInputRawDeviceReport) -> bool,
	GetControllerAxisCount:   proc "stdcall" (this: ^IGameInputReading) -> u32,
	GetControllerAxisState:   proc "stdcall" (this: ^IGameInputReading, stateArrayCount: u32, stateArray: [^]f32) -> u32,
	GetControllerButtonCount: proc "stdcall" (this: ^IGameInputReading) -> u32,
	GetControllerButtonState: proc "stdcall" (this: ^IGameInputReading, stateArrayCount: u32, stateArray: [^]bool) -> u32,
	GetControllerSwitchCount: proc "stdcall" (this: ^IGameInputReading) -> u32,
	GetControllerSwitchState: proc "stdcall" (this: ^IGameInputReading, stateArrayCount: u32, stateArray: [^]SwitchPosition) -> u32,
	GetKeyCount:              proc "stdcall" (this: ^IGameInputReading) -> u32,
	GetKeyState:              proc "stdcall" (this: ^IGameInputReading, stateArrayCount: u32, stateArray: [^]KeyState) -> u32,
	GetMouseState:            proc "stdcall" (this: ^IGameInputReading, state: ^MouseState) -> bool,
	GetTouchCount:            proc "stdcall" (this: ^IGameInputReading) -> u32,
	GetTouchState:            proc "stdcall" (this: ^IGameInputReading, stateArrayCount: u32, stateArray: [^]TouchState) -> u32,
	GetMotionState:           proc "stdcall" (this: ^IGameInputReading, state: ^MotionState) -> bool,
	GetArcadeStickState:      proc "stdcall" (this: ^IGameInputReading, state: ^ArcadeStickState) -> bool,
	GetFlightStickState:      proc "stdcall" (this: ^IGameInputReading, state: ^FlightStickState) -> bool,
	GetGamepadState:          proc "stdcall" (this: ^IGameInputReading, state: ^GamepadState) -> bool,
	GetRacingWheelState:      proc "stdcall" (this: ^IGameInputReading, state: ^RacingWheelState) -> bool,
	GetUiNavigationState:     proc "stdcall" (this: ^IGameInputReading, state: ^UiNavigationState) -> bool,
}
```

### [IGameInput\_VTable ¶](#IGameInput_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L988)

```
IGameInput_VTable :: struct {
	using iunknown_vtable:          sys_windows.IUnknown_VTable,
	GetCurrentTimestamp:            proc "stdcall" (this: ^IGameInput) -> u64,
	GetCurrentReading:              proc "stdcall" (this: ^IGameInput, inputKind: Kind, device: ^IGameInputDevice, reading: ^^IGameInputReading) -> sys_windows.HRESULT,
	GetNextReading:                 proc "stdcall" (this: ^IGameInput, referenceReading: ^IGameInputReading, inputKind: Kind, device: ^IGameInputDevice, reading: ^^IGameInputReading) -> sys_windows.HRESULT,
	GetPreviousReading:             proc "stdcall" (this: ^IGameInput, referenceReading: ^IGameInputReading, inputKind: Kind, device: ^IGameInputDevice, reading: ^^IGameInputReading) -> sys_windows.HRESULT,
	GetTemporalReading:             proc "stdcall" (this: ^IGameInput, timestamp: u64, device: ^IGameInputDevice, reading: ^^IGameInputReading) -> sys_windows.HRESULT,
	RegisterReadingCallback:        proc "stdcall" (this: ^IGameInput, device: ^IGameInputDevice, inputKind: Kind, analogThreshold: f32, ctx: rawptr, callbackFunc: ReadingCallback, callbackToken: ^CallbackToken) -> sys_windows.HRESULT,
	RegisterDeviceCallback:         proc "stdcall" (this: ^IGameInput, device: ^IGameInputDevice, inputKind: Kind, statusFilter: DeviceStatus, enumerationKind: EnumerationKind, ctx: rawptr, callbackFunc: DeviceCallback, callbackToken: ^CallbackToken) -> sys_windows.HRESULT,
	RegisterSystemButtonCallback:   proc "stdcall" (this: ^IGameInput, device: ^IGameInputDevice, buttonFilter: SystemButtons, ctx: rawptr, callbackFunc: SystemButtonCallback, callbackToken: ^CallbackToken) -> sys_windows.HRESULT,
	RegisterKeyboardLayoutCallback: proc "stdcall" (this: ^IGameInput, device: ^IGameInputDevice, ctx: rawptr, callbackFunc: KeyboardLayoutCallback, callbackToken: ^CallbackToken) -> sys_windows.HRESULT,
	StopCallback:                   proc "stdcall" (this: ^IGameInput, callbackToken: CallbackToken),
	UnregisterCallback:             proc "stdcall" (this: ^IGameInput, callbackToken: CallbackToken, timeoutInMicroseconds: u64) -> bool,
	CreateDispatcher:               proc "stdcall" (this: ^IGameInput, dispatcher: ^^IGameInputDispatcher) -> sys_windows.HRESULT,
	CreateAggregateDevice:          proc "stdcall" (this: ^IGameInput, kind: Kind, device: ^^IGameInputDevice) -> sys_windows.HRESULT,
	FindDeviceFromId:               proc "stdcall" (this: ^IGameInput, value: ^APP_LOCAL_DEVICE_ID, device: ^^IGameInputDevice) -> sys_windows.HRESULT,
	FindDeviceFromObject:           proc "stdcall" (this: ^IGameInput, value: ^sys_windows.IUnknown, device: ^^IGameInputDevice) -> sys_windows.HRESULT,
	FindDeviceFromPlatformHandle:   proc "stdcall" (this: ^IGameInput, value: sys_windows.HANDLE, device: ^^IGameInputDevice) -> sys_windows.HRESULT,
	FindDeviceFromPlatformString:   proc "stdcall" (this: ^IGameInput, value: cstring16, device: ^^IGameInputDevice) -> sys_windows.HRESULT,
	EnableOemDeviceSupport:         proc "stdcall" (this: ^IGameInput, vendorId: u16, productId: u16, interfaceNumber: u8, collectionNumber: u8) -> sys_windows.HRESULT,
	SetFocusPolicy:                 proc "stdcall" (this: ^IGameInput, policy: FocusPolicy),
}
```

### [IID ¶](#IID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L18)

```
IID :: sys_windows.GUID
```

### [IUnknown ¶](#IUnknown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L16)

```
IUnknown :: sys_windows.IUnknown
```

### [IUnknown\_VTable ¶](#IUnknown_VTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L17)

```
IUnknown_VTable :: sys_windows.IUnknown_VTable
```

### [KeyState ¶](#KeyState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L501)

```
KeyState :: struct {
	scanCode:   u32,
	codePoint:  u32,
	virtualKey: u8,
	isDeadKey:  bool,
}
```

### [KeyboardInfo ¶](#KeyboardInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L690)

```
KeyboardInfo :: struct {
	kind:                KeyboardKind,
	layout:              u32,
	keyCount:            u32,
	functionKeyCount:    u32,
	maxSimultaneousKeys: u32,
	platformType:        u32,
	platformSubtype:     u32,
	nativeLanguage:      ^String,
}
```

### [KeyboardKind ¶](#KeyboardKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L77)

```
KeyboardKind :: enum i32 {
	UnknownKeyboard = -1, 
	AnsiKeyboard    = 0, 
	IsoKeyboard     = 1, 
	KsKeyboard      = 2, 
	AbntKeyboard    = 3, 
	JisKeyboard     = 4, 
}
```

### [KeyboardLayoutCallback ¶](#KeyboardLayoutCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L499)

```
KeyboardLayoutCallback :: proc "stdcall" (callbackToken: CallbackToken, ctx: rawptr, device: ^IGameInputDevice, timestamp: u64, currentLayout: u32, previousLayout: u32)
```

### [Kind ¶](#Kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L22)

```
Kind :: distinct bit_set[KindFlag; u32]
```

##### Related Constants

* [KindController](/vendor/windows/GameInput/#KindController)
* [KindUnknown](/vendor/windows/GameInput/#KindUnknown)

### [KindFlag ¶](#KindFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L23)

```
KindFlag :: enum u32 {
	RawDeviceReport  = 0, 
	ControllerAxis   = 1, 
	ControllerButton = 2, 
	ControllerSwitch = 3, 
	Keyboard         = 4, 
	Mouse            = 5, 
	Touch            = 8, 
	Motion           = 12, 
	ArcadeStick      = 16, 
	FlightStick      = 17, 
	Gamepad          = 18, 
	RacingWheel      = 19, 
	UiNavigation     = 20, 
}
```

### [Label ¶](#Label) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L311)

```
Label :: enum i32 {
	Unknown                  = -1, 
	None                     = 0, 
	XboxGuide                = 1, 
	XboxBack                 = 2, 
	XboxStart                = 3, 
	XboxMenu                 = 4, 
	XboxView                 = 5, 
	XboxA                    = 7, 
	XboxB                    = 8, 
	XboxX                    = 9, 
	XboxY                    = 10, 
	XboxDPadUp               = 11, 
	XboxDPadDown             = 12, 
	XboxDPadLeft             = 13, 
	XboxDPadRight            = 14, 
	XboxLeftShoulder         = 15, 
	XboxLeftTrigger          = 16, 
	XboxLeftStickButton      = 17, 
	XboxRightShoulder        = 18, 
	XboxRightTrigger         = 19, 
	XboxRightStickButton     = 20, 
	XboxPaddle1              = 21, 
	XboxPaddle2              = 22, 
	XboxPaddle3              = 23, 
	XboxPaddle4              = 24, 
	LetterA                  = 25, 
	LetterB                  = 26, 
	LetterC                  = 27, 
	LetterD                  = 28, 
	LetterE                  = 29, 
	LetterF                  = 30, 
	LetterG                  = 31, 
	LetterH                  = 32, 
	LetterI                  = 33, 
	LetterJ                  = 34, 
	LetterK                  = 35, 
	LetterL                  = 36, 
	LetterM                  = 37, 
	LetterN                  = 38, 
	LetterO                  = 39, 
	LetterP                  = 40, 
	LetterQ                  = 41, 
	LetterR                  = 42, 
	LetterS                  = 43, 
	LetterT                  = 44, 
	LetterU                  = 45, 
	LetterV                  = 46, 
	LetterW                  = 47, 
	LetterX                  = 48, 
	LetterY                  = 49, 
	LetterZ                  = 50, 
	Number0                  = 51, 
	Number1                  = 52, 
	Number2                  = 53, 
	Number3                  = 54, 
	Number4                  = 55, 
	Number5                  = 56, 
	Number6                  = 57, 
	Number7                  = 58, 
	Number8                  = 59, 
	Number9                  = 60, 
	ArrowUp                  = 61, 
	ArrowUpRight             = 62, 
	ArrowRight               = 63, 
	ArrowDownRight           = 64, 
	ArrowDown                = 65, 
	ArrowDownLLeft           = 66, 
	ArrowLeft                = 67, 
	ArrowUpLeft              = 68, 
	ArrowUpDown              = 69, 
	ArrowLeftRight           = 70, 
	ArrowUpDownLeftRight     = 71, 
	ArrowClockwise           = 72, 
	ArrowCounterClockwise    = 73, 
	ArrowReturn              = 74, 
	IconBranding             = 75, 
	IconHome                 = 76, 
	IconMenu                 = 77, 
	IconCross                = 78, 
	IconCircle               = 79, 
	IconSquare               = 80, 
	IconTriangle             = 81, 
	IconStar                 = 82, 
	IconDPadUp               = 83, 
	IconDPadDown             = 84, 
	IconDPadLeft             = 85, 
	IconDPadRight            = 86, 
	IconDialClockwise        = 87, 
	IconDialCounterClockwise = 88, 
	IconSliderLeftRight      = 89, 
	IconSliderUpDown         = 90, 
	IconWheelUpDown          = 91, 
	IconPlus                 = 92, 
	IconMinus                = 93, 
	IconSuspension           = 94, 
	Home                     = 95, 
	Guide                    = 96, 
	Mode                     = 97, 
	Select                   = 98, 
	Menu                     = 99, 
	View                     = 100, 
	Back                     = 101, 
	Start                    = 102, 
	Options                  = 103, 
	Share                    = 104, 
	Up                       = 105, 
	Down                     = 106, 
	Left                     = 107, 
	Right                    = 108, 
	LB                       = 109, 
	LT                       = 110, 
	LSB                      = 111, 
	L1                       = 112, 
	L2                       = 113, 
	L3                       = 114, 
	RB                       = 115, 
	RT                       = 116, 
	RSB                      = 117, 
	R1                       = 118, 
	R2                       = 119, 
	R3                       = 120, 
	P1                       = 121, 
	P2                       = 122, 
	P3                       = 123, 
	P4                       = 124, 
}
```

### [Location ¶](#Location) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L439)

```
Location :: enum i32 {
	Unknown  = -1, 
	Chassis  = 0, 
	Display  = 1, 
	Axis     = 2, 
	Button   = 3, 
	Switch   = 4, 
	Key      = 5, 
	TouchPad = 6, 
}
```

### [MotionAccuracy ¶](#MotionAccuracy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L109)

```
MotionAccuracy :: enum i32 {
	AccuracyUnknown = -1, 
	Unavailable     = 0, 
	Unreliable      = 1, 
	Approximate     = 2, 
	Accurate        = 3, 
}
```

### [MotionInfo ¶](#MotionInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L726)

```
MotionInfo :: struct {
	maxAcceleration:          f32,
	maxAngularVelocity:       f32,
	maxMagneticFieldStrength: f32,
}
```

### [MotionState ¶](#MotionState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L529)

```
MotionState :: struct {
	accelerationX:         f32,
	accelerationY:         f32,
	accelerationZ:         f32,
	angularVelocityX:      f32,
	angularVelocityY:      f32,
	angularVelocityZ:      f32,
	magneticFieldX:        f32,
	magneticFieldY:        f32,
	magneticFieldZ:        f32,
	orientationW:          f32,
	orientationX:          f32,
	orientationY:          f32,
	orientationZ:          f32,
	accelerometerAccuracy: MotionAccuracy,
	gyroscopeAccuracy:     MotionAccuracy,
	magnetometerAccuracy:  MotionAccuracy,
	orientationAccuracy:   MotionAccuracy,
}
```

### [MouseButtons ¶](#MouseButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L86)

```
MouseButtons :: distinct bit_set[MouseButtonsFlag; u32]
```

##### Related Constants

* [MouseNone](/vendor/windows/GameInput/#MouseNone)

### [MouseButtonsFlag ¶](#MouseButtonsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L87)

```
MouseButtonsFlag :: enum u32 {
	LeftButton     = 0, 
	RightButton    = 1, 
	MiddleButton   = 2, 
	Button4        = 3, 
	Button5        = 4, 
	WheelTiltLeft  = 5, 
	WheelTiltRight = 6, 
}
```

### [MouseInfo ¶](#MouseInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L701)

```
MouseInfo :: struct {
	supportedButtons: MouseButtons,
	sampleRate:       u32,
	sensorDpi:        u32,
	hasWheelX:        bool,
	hasWheelY:        bool,
}
```

### [MouseState ¶](#MouseState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L508)

```
MouseState :: struct {
	buttons:   MouseButtons,
	positionX: i64,
	positionY: i64,
	wheelX:    i64,
	wheelY:    i64,
}
```

### [RacingWheelButtons ¶](#RacingWheelButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L164)

```
RacingWheelButtons :: distinct bit_set[RacingWheelButtonsFlag; u32]
```

##### Related Constants

* [RacingWheelNone](/vendor/windows/GameInput/#RacingWheelNone)

### [RacingWheelButtonsFlag ¶](#RacingWheelButtonsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L165)

```
RacingWheelButtonsFlag :: enum u32 {
	Menu         = 0, 
	View         = 1, 
	PreviousGear = 2, 
	NextGear     = 3, 
	DpadUp       = 4, 
	DpadDown     = 5, 
	DpadLeft     = 6, 
	DpadRight    = 7, 
}
```

### [RacingWheelInfo ¶](#RacingWheelInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L774)

```
RacingWheelInfo :: struct {
	menuButtonLabel:         Label,
	viewButtonLabel:         Label,
	previousGearButtonLabel: Label,
	nextGearButtonLabel:     Label,
	dpadUpLabel:             Label,
	dpadDownLabel:           Label,
	dpadLeftLabel:           Label,
	dpadRightLabel:          Label,
	hasClutch:               bool,
	hasHandbrake:            bool,
	hasPatternShifter:       bool,
	minPatternShifterGear:   i32,
	maxPatternShifterGear:   i32,
	maxWheelAngle:           f32,
}
```

### [RacingWheelState ¶](#RacingWheelState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L572)

```
RacingWheelState :: struct {
	buttons:            RacingWheelButtons,
	patternShifterGear: i32,
	wheel:              f32,
	throttle:           f32,
	brake:              f32,
	clutch:             f32,
	handbrake:          f32,
}
```

### [RawDeviceItemCollectionInfo ¶](#RawDeviceItemCollectionInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L612)

```
RawDeviceItemCollectionInfo :: struct {
	kind:            RawDeviceItemCollectionKind,
	childCount:      u32,
	siblingCount:    u32,
	usageCount:      u32,
	usages:          [^]Usage `fmt:"v,usageCount"`,
	parent:          ^RawDeviceItemCollectionInfo,
	firstSibling:    ^RawDeviceItemCollectionInfo,
	previousSibling: ^RawDeviceItemCollectionInfo,
	nextSibling:     ^RawDeviceItemCollectionInfo,
	lastSibling:     ^RawDeviceItemCollectionInfo,
	firstChild:      ^RawDeviceItemCollectionInfo,
	lastChild:       ^RawDeviceItemCollectionInfo,
}
```

### [RawDeviceItemCollectionKind ¶](#RawDeviceItemCollectionKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L271)

```
RawDeviceItemCollectionKind :: enum i32 {
	UnknownItemCollection       = -1, 
	PhysicalItemCollection      = 0, 
	ApplicationItemCollection   = 1, 
	LogicalItemCollection       = 2, 
	ReportItemCollection        = 3, 
	NamedArrayItemCollection    = 4, 
	UsageSwitchItemCollection   = 5, 
	UsageModifierItemCollection = 6, 
}
```

### [RawDevicePhysicalUnitKind ¶](#RawDevicePhysicalUnitKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L282)

```
RawDevicePhysicalUnitKind :: enum i32 {
	Unknown             = -1, 
	None                = 0, 
	Time                = 1, 
	Frequency           = 2, 
	Length              = 3, 
	Velocity            = 4, 
	Acceleration        = 5, 
	Mass                = 6, 
	Momentum            = 7, 
	Force               = 8, 
	Pressure            = 9, 
	Angle               = 10, 
	AngularVelocity     = 11, 
	AngularAcceleration = 12, 
	AngularMass         = 13, 
	AngularMomentum     = 14, 
	AngularTorque       = 15, 
	ElectricCurrent     = 16, 
	ElectricCharge      = 17, 
	ElectricPotential   = 18, 
	Energy              = 19, 
	Power               = 20, 
	Temperature         = 21, 
	LuminousIntensity   = 22, 
	LuminousFlux        = 23, 
	Illuminance         = 24, 
}
```

### [RawDeviceReportInfo ¶](#RawDeviceReportInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L644)

```
RawDeviceReportInfo :: struct {
	kind:      RawDeviceReportKind,
	id:        u32,
	size:      u32,
	itemCount: u32,
	items:     [^]RawDeviceReportItemInfo `fmt:"v,itemCount"`,
}
```

### [RawDeviceReportItemFlag ¶](#RawDeviceReportItemFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L258)

```
RawDeviceReportItemFlag :: enum u32 {
	ConstantItem   = 0, 
	ArrayItem      = 1, 
	RelativeItem   = 2, 
	WraparoundItem = 3, 
	NonlinearItem  = 4, 
	StableItem     = 5, 
	NullableItem   = 6, 
	VolatileItem   = 7, 
	BufferedItem   = 8, 
}
```

### [RawDeviceReportItemFlags ¶](#RawDeviceReportItemFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L257)

```
RawDeviceReportItemFlags :: distinct bit_set[RawDeviceReportItemFlag; u32]
```

##### Related Constants

* [RawDeviceDefaultItem](/vendor/windows/GameInput/#RawDeviceDefaultItem)

### [RawDeviceReportItemInfo ¶](#RawDeviceReportItemInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L627)

```
RawDeviceReportItemInfo :: struct {
	bitOffset:                u32,
	bitSize:                  u32,
	logicalMin:               i64,
	logicalMax:               i64,
	physicalMin:              f64,
	physicalMax:              f64,
	physicalUnits:            RawDevicePhysicalUnitKind,
	rawPhysicalUnits:         u32,
	rawPhysicalUnitsExponent: i32,
	flags:                    RawDeviceReportItemFlags,
	usageCount:               u32,
	usages:                   [^]Usage `fmt:"v,usageCount"`,
	collection:               ^RawDeviceItemCollectionInfo,
	itemString:               ^String,
}
```

### [RawDeviceReportKind ¶](#RawDeviceReportKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L251)

```
RawDeviceReportKind :: enum i32 {
	InputReport   = 0, 
	OutputReport  = 1, 
	FeatureReport = 2, 
}
```

### [ReadingCallback ¶](#ReadingCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L496)

```
ReadingCallback :: proc "stdcall" (callbackToken: CallbackToken, ctx: rawptr, reading: ^IGameInputReading, hasOverrunOccured: bool)
```

### [RumbleMotors ¶](#RumbleMotors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L482)

```
RumbleMotors :: distinct bit_set[RumbleMotorsFlag; u32]
```

##### Related Constants

* [RumbleNone](/vendor/windows/GameInput/#RumbleNone)

### [RumbleMotorsFlag ¶](#RumbleMotorsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L483)

```
RumbleMotorsFlag :: enum u32 {
	LowFrequency  = 0, 
	HighFrequency = 1, 
	LeftTrigger   = 2, 
	RightTrigger  = 3, 
}
```

### [RumbleParams ¶](#RumbleParams) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L975)

```
RumbleParams :: struct {
	lowFrequency:  f32,
	highFrequency: f32,
	leftTrigger:   f32,
	rightTrigger:  f32,
}
```

### [String ¶](#String) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L594)

```
String :: struct {
	sizeInBytes:    u32,
	codePointCount: u32,
	data:           [^]u8,
}
```

### [SwitchKind ¶](#SwitchKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L58)

```
SwitchKind :: enum i32 {
	UnknownSwitchKind = -1, 
	TwoWaySwitch      = 0, 
	FourWaySwitch     = 1, 
	EightWaySwitch    = 2, 
}
```

### [SwitchPosition ¶](#SwitchPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L65)

```
SwitchPosition :: enum i32 {
	Center    = 0, 
	Up        = 1, 
	UpRight   = 2, 
	Right     = 3, 
	DownRight = 4, 
	Down      = 5, 
	DownLeft  = 6, 
	Left      = 7, 
	UpLeft    = 8, 
}
```

### [SystemButtonCallback ¶](#SystemButtonCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L498)

```
SystemButtonCallback :: proc "stdcall" (callbackToken: CallbackToken, ctx: rawptr, device: ^IGameInputDevice, timestamp: u64, currentButtons: SystemButtons, previousButtons: SystemButtons)
```

### [SystemButtons ¶](#SystemButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L202)

```
SystemButtons :: distinct bit_set[SystemButtonsFlag; u32]
```

##### Related Constants

* [SystemButtonNone](/vendor/windows/GameInput/#SystemButtonNone)

### [SystemButtonsFlag ¶](#SystemButtonsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L203)

```
SystemButtonsFlag :: enum u32 {
	Guide = 0, 
	Share = 1, 
}
```

### [TouchSensorInfo ¶](#TouchSensorInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L709)

```
TouchSensorInfo :: struct {
	mappedInputKinds: Kind,
	label:            Label,
	location:         Location,
	locationId:       u32,
	resolutionX:      u64,
	resolutionY:      u64,
	shape:            TouchShape,
	aspectRatio:      f32,
	orientation:      f32,
	physicalWidth:    f32,
	physicalHeight:   f32,
	maxPressure:      f32,
	maxProximity:     f32,
	maxTouchPoints:   u32,
}
```

### [TouchShape ¶](#TouchShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L98)

```
TouchShape :: enum i32 {
	Unknown       = -1, 
	Point         = 0, 
	Linear1D      = 1, 
	Radial1D      = 2, 
	Irregular1D   = 3, 
	Rectangular2D = 4, 
	Elliptical2D  = 5, 
	Irregular2D   = 6, 
}
```

### [TouchState ¶](#TouchState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L516)

```
TouchState :: struct {
	touchId:           u64,
	sensorIndex:       u32,
	positionX:         f32,
	positionY:         f32,
	pressure:          f32,
	proximity:         f32,
	contactRectTop:    f32,
	contactRectLeft:   f32,
	contactRectRight:  f32,
	contactRectBottom: f32,
}
```

### [UiNavigationButtons ¶](#UiNavigationButtons) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L177)

```
UiNavigationButtons :: distinct bit_set[UiNavigationButtonsFlag; u32]
```

##### Related Constants

* [UiNavigationNone](/vendor/windows/GameInput/#UiNavigationNone)

### [UiNavigationButtonsFlag ¶](#UiNavigationButtonsFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L178)

```
UiNavigationButtonsFlag :: enum u32 {
	Menu        = 0, 
	View        = 1, 
	Accept      = 2, 
	Cancel      = 3, 
	Up          = 4, 
	Down        = 5, 
	Left        = 6, 
	Right       = 7, 
	Context1    = 8, 
	Context2    = 9, 
	Context3    = 10, 
	Context4    = 11, 
	PageUp      = 12, 
	PageDown    = 13, 
	PageLeft    = 14, 
	PageRight   = 15, 
	ScrollUp    = 16, 
	ScrollDown  = 17, 
	ScrollLeft  = 18, 
	ScrollRight = 19, 
}
```

### [UiNavigationInfo ¶](#UiNavigationInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L791)

```
UiNavigationInfo :: struct {
	menuButtonLabel:        Label,
	viewButtonLabel:        Label,
	acceptButtonLabel:      Label,
	cancelButtonLabel:      Label,
	upButtonLabel:          Label,
	downButtonLabel:        Label,
	leftButtonLabel:        Label,
	rightButtonLabel:       Label,
	contextButton1Label:    Label,
	contextButton2Label:    Label,
	contextButton3Label:    Label,
	contextButton4Label:    Label,
	pageUpButtonLabel:      Label,
	pageDownButtonLabel:    Label,
	pageLeftButtonLabel:    Label,
	pageRightButtonLabel:   Label,
	scrollUpButtonLabel:    Label,
	scrollDownButtonLabel:  Label,
	scrollLeftButtonLabel:  Label,
	scrollRightButtonLabel: Label,
	guideButtonLabel:       Label,
}
```

### [UiNavigationState ¶](#UiNavigationState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L582)

```
UiNavigationState :: struct {
	buttons: UiNavigationButtons,
}
```

### [Usage ¶](#Usage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L600)

```
Usage :: struct {
	page: u16,
	id:   u16,
}
```

### [Version ¶](#Version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L605)

```
Version :: struct {
	major:    u16,
	minor:    u16,
	build:    u16,
	revision: u16,
}
```

## Constants

### [ArcadeStickNone ¶](#ArcadeStickNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L134)

```
ArcadeStickNone :: ArcadeStickButtons{}
```

### [CURRENT\_CALLBACK\_TOKEN\_VALUE ¶](#CURRENT_CALLBACK_TOKEN_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L493)

```
CURRENT_CALLBACK_TOKEN_VALUE :: CallbackToken(0xFFFFFFFFFFFFFFFF)
```

### [DEVICE\_DISCONNECTED ¶](#DEVICE_DISCONNECTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1126)

```
DEVICE_DISCONNECTED :: HRESULT(-0x7C75FFFF)
```

### [DEVICE\_NOT\_FOUND ¶](#DEVICE_NOT_FOUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1127)

```
DEVICE_NOT_FOUND :: HRESULT(-0x7C75FFFE)
```

### [DefaultFocusPolicy ¶](#DefaultFocusPolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L56)

```
DefaultFocusPolicy :: FocusPolicy{}
```

### [DeviceCapabilityNone ¶](#DeviceCapabilityNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L249)

```
DeviceCapabilityNone :: DeviceCapabilities{}
```

### [DeviceNoStatus ¶](#DeviceNoStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L221)

```
DeviceNoStatus :: DeviceStatus{}
```

### [FeedbackAxisNone ¶](#FeedbackAxisNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L460)

```
FeedbackAxisNone :: FeedbackAxes{}
```

### [FlightStickNone ¶](#FlightStickNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L143)

```
FlightStickNone :: FlightStickButtons{}
```

### [GamepadNone ¶](#GamepadNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L162)

```
GamepadNone :: GamepadButtons{}
```

### [IGameInputDevice\_UUID\_STRING ¶](#IGameInputDevice_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1043)

```
IGameInputDevice_UUID_STRING :: "31DD86FB-4C1B-408A-868F-439B3CD47125"
```

### [IGameInputDispatcher\_UUID\_STRING ¶](#IGameInputDispatcher_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1072)

```
IGameInputDispatcher_UUID_STRING :: "415EED2E-98CB-42C2-8F28-B94601074E31"
```

### [IGameInputForceFeedbackEffect\_UUID\_STRING ¶](#IGameInputForceFeedbackEffect_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1084)

```
IGameInputForceFeedbackEffect_UUID_STRING :: "51BDA05E-F742-45D9-B085-9444AE48381D"
```

### [IGameInputRawDeviceReport\_UUID\_STRING ¶](#IGameInputRawDeviceReport_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1102)

```
IGameInputRawDeviceReport_UUID_STRING :: "61F08CF1-1FFC-40CA-A2B8-E1AB8BC5B6DC"
```

### [IGameInputReading\_UUID\_STRING ¶](#IGameInputReading_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1011)

```
IGameInputReading_UUID_STRING :: "2156947A-E1FA-4DE0-A30B-D812931DBD8D"
```

### [IGameInput\_UUID\_STRING ¶](#IGameInput_UUID_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L982)

```
IGameInput_UUID_STRING :: "11BE2A7E-4254-445A-9C09-FFC40F006918"
```

### [INSUFFICIENT\_FORCE\_FEEDBACK\_RESOURCES ¶](#INSUFFICIENT_FORCE_FEEDBACK_RESOURCES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1131)

```
INSUFFICIENT_FORCE_FEEDBACK_RESOURCES :: HRESULT(-0x7C75FFFA)
```

### [INVALID\_CALLBACK\_TOKEN\_VALUE ¶](#INVALID_CALLBACK_TOKEN_VALUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L494)

```
INVALID_CALLBACK_TOKEN_VALUE :: CallbackToken(0x0000000000000000)
```

### [KindController ¶](#KindController) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L39)

```
KindController :: Kind{.ControllerAxis, .ControllerButton, .ControllerSwitch}
```

### [KindUnknown ¶](#KindUnknown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L38)

```
KindUnknown :: Kind{}
```

### [MouseNone ¶](#MouseNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L96)

```
MouseNone :: MouseButtons{}
```

### [READING\_NOT\_FOUND ¶](#READING_NOT_FOUND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1128)

```
READING_NOT_FOUND :: HRESULT(-0x7C75FFFD)
```

### [REFERENCE\_READING\_TOO\_OLD ¶](#REFERENCE_READING_TOO_OLD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1129)

```
REFERENCE_READING_TOO_OLD :: HRESULT(-0x7C75FFFC)
```

### [RacingWheelNone ¶](#RacingWheelNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L175)

```
RacingWheelNone :: RacingWheelButtons{}
```

### [RawDeviceDefaultItem ¶](#RawDeviceDefaultItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L269)

```
RawDeviceDefaultItem :: RawDeviceReportItemFlags{}
```

### [RumbleNone ¶](#RumbleNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L489)

```
RumbleNone :: RumbleMotors{}
```

### [SystemButtonNone ¶](#SystemButtonNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L207)

```
SystemButtonNone :: SystemButtons{}
```

### [TIMESTAMP\_OUT\_OF\_RANGE ¶](#TIMESTAMP_OUT_OF_RANGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1130)

```
TIMESTAMP_OUT_OF_RANGE :: HRESULT(-0x7C75FFFB)
```

### [UiNavigationNone ¶](#UiNavigationNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L200)

```
UiNavigationNone :: UiNavigationButtons{}
```

## Variables

### [IGameInputDevice\_UUID ¶](#IGameInputDevice_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1044)

```
IGameInputDevice_UUID: ^sys_windows.GUID = …
```

### [IGameInputDispatcher\_UUID ¶](#IGameInputDispatcher_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1073)

```
IGameInputDispatcher_UUID: ^sys_windows.GUID = …
```

### [IGameInputForceFeedbackEffect\_UUID ¶](#IGameInputForceFeedbackEffect_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1085)

```
IGameInputForceFeedbackEffect_UUID: ^sys_windows.GUID = …
```

### [IGameInputRawDeviceReport\_UUID ¶](#IGameInputRawDeviceReport_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1103)

```
IGameInputRawDeviceReport_UUID: ^sys_windows.GUID = …
```

### [IGameInputReading\_UUID ¶](#IGameInputReading_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1012)

```
IGameInputReading_UUID: ^sys_windows.GUID = …
```

### [IGameInput\_UUID ¶](#IGameInput_UUID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L983)

```
IGameInput_UUID: ^sys_windows.GUID = …
```

## Procedures

### [Create ¶](#Create) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin#L1123)

```
Create :: proc "stdcall" (gameInput: ^^IGameInput) -> sys_windows.HRESULT ---
```

## Procedure Groups

This section is empty.

## Source Files

* [doc.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/doc.odin)
* [windows\_game\_input.odin](https://github.com/odin-lang/Odin/tree/master/vendor/windows/GameInput/windows_game_input.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:55.419311400 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [APP\_LOCAL\_DEVICE\_ID](#APP_LOCAL_DEVICE_ID)
    + [ArcadeStickButtons](#ArcadeStickButtons)
    + [ArcadeStickButtonsFlag](#ArcadeStickButtonsFlag)
    + [ArcadeStickInfo](#ArcadeStickInfo)
    + [ArcadeStickState](#ArcadeStickState)
    + [BatteryState](#BatteryState)
    + [BatteryStatus](#BatteryStatus)
    + [CallbackToken](#CallbackToken)
    + [ControllerAxisInfo](#ControllerAxisInfo)
    + [ControllerButtonInfo](#ControllerButtonInfo)
    + [ControllerSwitchInfo](#ControllerSwitchInfo)
    + [DeviceCallback](#DeviceCallback)
    + [DeviceCapabilities](#DeviceCapabilities)
    + [DeviceCapabilitiesFlag](#DeviceCapabilitiesFlag)
    + [DeviceFamily](#DeviceFamily)
    + [DeviceInfo](#DeviceInfo)
    + [DeviceStatus](#DeviceStatus)
    + [DeviceStatusFlag](#DeviceStatusFlag)
    + [EnumerationKind](#EnumerationKind)
    + [FeedbackAxes](#FeedbackAxes)
    + [FeedbackAxesFlag](#FeedbackAxesFlag)
    + [FeedbackEffectState](#FeedbackEffectState)
    + [FlightStickButtons](#FlightStickButtons)
    + [FlightStickButtonsFlag](#FlightStickButtonsFlag)
    + [FlightStickInfo](#FlightStickInfo)
    + [FlightStickState](#FlightStickState)
    + [FocusPolicy](#FocusPolicy)
    + [FocusPolicyFlag](#FocusPolicyFlag)
    + [ForceFeedbackConditionParams](#ForceFeedbackConditionParams)
    + [ForceFeedbackConstantParams](#ForceFeedbackConstantParams)
    + [ForceFeedbackEffectKind](#ForceFeedbackEffectKind)
    + [ForceFeedbackEnvelope](#ForceFeedbackEnvelope)
    + [ForceFeedbackMagnitude](#ForceFeedbackMagnitude)
    + [ForceFeedbackMotorInfo](#ForceFeedbackMotorInfo)
    + [ForceFeedbackParams](#ForceFeedbackParams)
    + [ForceFeedbackPeriodicParams](#ForceFeedbackPeriodicParams)
    + [ForceFeedbackRampParams](#ForceFeedbackRampParams)
    + [GamepadButtons](#GamepadButtons)
    + [GamepadButtonsFlag](#GamepadButtonsFlag)
    + [GamepadInfo](#GamepadInfo)
    + [GamepadState](#GamepadState)
    + [HANDLE](#HANDLE)
    + [HRESULT](#HRESULT)
    + [HapticFeedbackMotorInfo](#HapticFeedbackMotorInfo)
    + [HapticFeedbackParams](#HapticFeedbackParams)
    + [HapticWaveformInfo](#HapticWaveformInfo)
    + [IGameInput](#IGameInput)
    + [IGameInputDevice](#IGameInputDevice)
    + [IGameInputDevice\_Vtable](#IGameInputDevice_Vtable)
    + [IGameInputDispatcher](#IGameInputDispatcher)
    + [IGameInputDispatcher\_Vtable](#IGameInputDispatcher_Vtable)
    + [IGameInputForceFeedbackEffect](#IGameInputForceFeedbackEffect)
    + [IGameInputForceFeedbackEffect\_Vtable](#IGameInputForceFeedbackEffect_Vtable)
    + [IGameInputRawDeviceReport](#IGameInputRawDeviceReport)
    + [IGameInputRawDeviceReport\_Vtable](#IGameInputRawDeviceReport_Vtable)
    + [IGameInputReading](#IGameInputReading)
    + [IGameInputReading\_VTable](#IGameInputReading_VTable)
    + [IGameInput\_VTable](#IGameInput_VTable)
    + [IID](#IID)
    + [IUnknown](#IUnknown)
    + [IUnknown\_VTable](#IUnknown_VTable)
    + [KeyState](#KeyState)
    + [KeyboardInfo](#KeyboardInfo)
    + [KeyboardKind](#KeyboardKind)
    + [KeyboardLayoutCallback](#KeyboardLayoutCallback)
    + [Kind](#Kind)
    + [KindFlag](#KindFlag)
    + [Label](#Label)
    + [Location](#Location)
    + [MotionAccuracy](#MotionAccuracy)
    + [MotionInfo](#MotionInfo)
    + [MotionState](#MotionState)
    + [MouseButtons](#MouseButtons)
    + [MouseButtonsFlag](#MouseButtonsFlag)
    + [MouseInfo](#MouseInfo)
    + [MouseState](#MouseState)
    + [RacingWheelButtons](#RacingWheelButtons)
    + [RacingWheelButtonsFlag](#RacingWheelButtonsFlag)
    + [RacingWheelInfo](#RacingWheelInfo)
    + [RacingWheelState](#RacingWheelState)
    + [RawDeviceItemCollectionInfo](#RawDeviceItemCollectionInfo)
    + [RawDeviceItemCollectionKind](#RawDeviceItemCollectionKind)
    + [RawDevicePhysicalUnitKind](#RawDevicePhysicalUnitKind)
    + [RawDeviceReportInfo](#RawDeviceReportInfo)
    + [RawDeviceReportItemFlag](#RawDeviceReportItemFlag)
    + [RawDeviceReportItemFlags](#RawDeviceReportItemFlags)
    + [RawDeviceReportItemInfo](#RawDeviceReportItemInfo)
    + [RawDeviceReportKind](#RawDeviceReportKind)
    + [ReadingCallback](#ReadingCallback)
    + [RumbleMotors](#RumbleMotors)
    + [RumbleMotorsFlag](#RumbleMotorsFlag)
    + [RumbleParams](#RumbleParams)
    + [String](#String)
    + [SwitchKind](#SwitchKind)
    + [SwitchPosition](#SwitchPosition)
    + [SystemButtonCallback](#SystemButtonCallback)
    + [SystemButtons](#SystemButtons)
    + [SystemButtonsFlag](#SystemButtonsFlag)
    + [TouchSensorInfo](#TouchSensorInfo)
    + [TouchShape](#TouchShape)
    + [TouchState](#TouchState)
    + [UiNavigationButtons](#UiNavigationButtons)
    + [UiNavigationButtonsFlag](#UiNavigationButtonsFlag)
    + [UiNavigationInfo](#UiNavigationInfo)
    + [UiNavigationState](#UiNavigationState)
    + [Usage](#Usage)
    + [Version](#Version)
  * [Constants](#pkg-Constants)
    + [ArcadeStickNone](#ArcadeStickNone)
    + [CURRENT\_CALLBACK\_TOKEN\_VALUE](#CURRENT_CALLBACK_TOKEN_VALUE)
    + [DEVICE\_DISCONNECTED](#DEVICE_DISCONNECTED)
    + [DEVICE\_NOT\_FOUND](#DEVICE_NOT_FOUND)
    + [DefaultFocusPolicy](#DefaultFocusPolicy)
    + [DeviceCapabilityNone](#DeviceCapabilityNone)
    + [DeviceNoStatus](#DeviceNoStatus)
    + [FeedbackAxisNone](#FeedbackAxisNone)
    + [FlightStickNone](#FlightStickNone)
    + [GamepadNone](#GamepadNone)
    + [IGameInputDevice\_UUID\_STRING](#IGameInputDevice_UUID_STRING)
    + [IGameInputDispatcher\_UUID\_STRING](#IGameInputDispatcher_UUID_STRING)
    + [IGameInputForceFeedbackEffect\_UUID\_STRING](#IGameInputForceFeedbackEffect_UUID_STRING)
    + [IGameInputRawDeviceReport\_UUID\_STRING](#IGameInputRawDeviceReport_UUID_STRING)
    + [IGameInputReading\_UUID\_STRING](#IGameInputReading_UUID_STRING)
    + [IGameInput\_UUID\_STRING](#IGameInput_UUID_STRING)
    + [INSUFFICIENT\_FORCE\_FEEDBACK\_RESOURCES](#INSUFFICIENT_FORCE_FEEDBACK_RESOURCES)
    + [INVALID\_CALLBACK\_TOKEN\_VALUE](#INVALID_CALLBACK_TOKEN_VALUE)
    + [KindController](#KindController)
    + [KindUnknown](#KindUnknown)
    + [MouseNone](#MouseNone)
    + [READING\_NOT\_FOUND](#READING_NOT_FOUND)
    + [REFERENCE\_READING\_TOO\_OLD](#REFERENCE_READING_TOO_OLD)
    + [RacingWheelNone](#RacingWheelNone)
    + [RawDeviceDefaultItem](#RawDeviceDefaultItem)
    + [RumbleNone](#RumbleNone)
    + [SystemButtonNone](#SystemButtonNone)
    + [TIMESTAMP\_OUT\_OF\_RANGE](#TIMESTAMP_OUT_OF_RANGE)
    + [UiNavigationNone](#UiNavigationNone)
  * [Variables](#pkg-Variables)
    + [IGameInputDevice\_UUID](#IGameInputDevice_UUID)
    + [IGameInputDispatcher\_UUID](#IGameInputDispatcher_UUID)
    + [IGameInputForceFeedbackEffect\_UUID](#IGameInputForceFeedbackEffect_UUID)
    + [IGameInputRawDeviceReport\_UUID](#IGameInputRawDeviceReport_UUID)
    + [IGameInputReading\_UUID](#IGameInputReading_UUID)
    + [IGameInput\_UUID](#IGameInput_UUID)
  * [Procedures](#pkg-Procedures)
    + [Create](#Create)
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