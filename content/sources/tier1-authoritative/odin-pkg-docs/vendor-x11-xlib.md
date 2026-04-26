package x11/xlib - pkg.odin-lang.org 






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



Current Package: *[xlib](/vendor/x11/xlib)*

  

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
2. x11
3. [xlib](/vendor/x11/xlib)

# package vendor:x11/xlib [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib)

⌘K

Ctrl+K

or

/

Filter Results



## Overview

Bindings for [X11's Xlib (PDF)](https://www.x.org/docs/X11/xlib.pdf).

## Index

Types (379)

* [AccessControlMode](#AccessControlMode)
* [AllowEventsMode](#AllowEventsMode)
* [ArcMode](#ArcMode)
* [Atom](#Atom)
* [BackingStore](#BackingStore)
* [ByteOrder](#ByteOrder)
* [CapStyle](#CapStyle)
* [CirculationDirection](#CirculationDirection)
* [CirculationRequest](#CirculationRequest)
* [CloseMode](#CloseMode)
* [ColorFlags](#ColorFlags)
* [ColorFlagsBits](#ColorFlagsBits)
* [ColorFormat](#ColorFormat)
* [Colormap](#Colormap)
* [ColormapAlloc](#ColormapAlloc)
* [ColormapState](#ColormapState)
* [Connection](#Connection)
* [CoordMode](#CoordMode)
* [Cursor](#Cursor)
* [CursorDim](#CursorDim)
* [CursorImage](#CursorImage)
* [CursorPixel](#CursorPixel)
* [CursorShape](#CursorShape)
* [CursorUInt](#CursorUInt)
* [Depth](#Depth)
* [Display](#Display)
* [Drawable](#Drawable)
* [EventMask](#EventMask)
* [EventMaskBits](#EventMaskBits)
* [EventQueueMode](#EventQueueMode)
* [EventType](#EventType)
* [FillRule](#FillRule)
* [FillStyle](#FillStyle)
* [FocusRevert](#FocusRevert)
* [Font](#Font)
* [FontDirection](#FontDirection)
* [GC](#GC)
* [GCAttributeMask](#GCAttributeMask)
* [GCAttributeMaskBits](#GCAttributeMaskBits)
* [GCFunction](#GCFunction)
* [GContext](#GContext)
* [GrabMode](#GrabMode)
* [Gravity](#Gravity)
* [ImageFormat](#ImageFormat)
* [InputMask](#InputMask)
* [InputMaskBits](#InputMaskBits)
* [JoinStyle](#JoinStyle)
* [KeyCode](#KeyCode)
* [KeyMask](#KeyMask)
* [KeySym](#KeySym)
* [KeyboardAutoRepeatMode](#KeyboardAutoRepeatMode)
* [KeyboardControlMask](#KeyboardControlMask)
* [KeyboardControlMaskBits](#KeyboardControlMaskBits)
* [KeyboardLedMode](#KeyboardLedMode)
* [LineStyle](#LineStyle)
* [LookupStringStatus](#LookupStringStatus)
* [MappingRequest](#MappingRequest)
* [Mask](#Mask)
* [MouseButton](#MouseButton)
* [NotifyDetail](#NotifyDetail)
* [NotifyMode](#NotifyMode)
* [Pixmap](#Pixmap)
* [PropertyState](#PropertyState)
* [RRCrtc](#RRCrtc)
* [RRMode](#RRMode)
* [RROutput](#RROutput)
* [Region](#Region)
* [Rotation](#Rotation)
* [SaveSetChangeMode](#SaveSetChangeMode)
* [Screen](#Screen)
* [ScreenFormat](#ScreenFormat)
* [ScreenSaverBlanking](#ScreenSaverBlanking)
* [ScreenSaverForceMode](#ScreenSaverForceMode)
* [ScreenSavingExposures](#ScreenSavingExposures)
* [Shape](#Shape)
* [SizeHints](#SizeHints)
* [SizeHintsBits](#SizeHintsBits)
* [Status](#Status)
* [SubpixelOrder](#SubpixelOrder)
* [SubwindowMode](#SubwindowMode)
* [Time](#Time)
* [VisibilityState](#VisibilityState)
* [Visual](#Visual)
* [VisualID](#VisualID)
* [VisualInfoMask](#VisualInfoMask)
* [VisualInfoMaskBits](#VisualInfoMaskBits)
* [WMHintState](#WMHintState)
* [WMHints](#WMHints)
* [WMHintsBits](#WMHintsBits)
* [Window](#Window)
* [WindowAttributeMask](#WindowAttributeMask)
* [WindowAttributeMaskBits](#WindowAttributeMaskBits)
* [WindowChangesMask](#WindowChangesMask)
* [WindowChangesMaskBits](#WindowChangesMaskBits)
* [WindowClass](#WindowClass)
* [WindowMapState](#WindowMapState)
* [WindowStacking](#WindowStacking)
* [XAnyEvent](#XAnyEvent)
* [XArc](#XArc)
* [XButtonEvent](#XButtonEvent)
* [XButtonPressedEvent](#XButtonPressedEvent)
* [XButtonReleasedEvent](#XButtonReleasedEvent)
* [XChar2b](#XChar2b)
* [XCharStruct](#XCharStruct)
* [XCirculateEvent](#XCirculateEvent)
* [XCirculateRequestEvent](#XCirculateRequestEvent)
* [XClassHint](#XClassHint)
* [XClientMessageEvent](#XClientMessageEvent)
* [XColor](#XColor)
* [XColormapEvent](#XColormapEvent)
* [XComposeStatus](#XComposeStatus)
* [XConfigureEvent](#XConfigureEvent)
* [XConfigureRequestEvent](#XConfigureRequestEvent)
* [XConnectionWatchProc](#XConnectionWatchProc)
* [XContext](#XContext)
* [XCreateWindowEvent](#XCreateWindowEvent)
* [XCrossingEvent](#XCrossingEvent)
* [XDestroyWindowEvent](#XDestroyWindowEvent)
* [XDisplay](#XDisplay)
* [XEDataObject](#XEDataObject)
* [XEnterWindowEvent](#XEnterWindowEvent)
* [XErrorEvent](#XErrorEvent)
* [XEvent](#XEvent)
* [XExposeEvent](#XExposeEvent)
* [XExtCodes](#XExtCodes)
* [XExtData](#XExtData)
* [XFocusChangeEvent](#XFocusChangeEvent)
* [XFocusInEvent](#XFocusInEvent)
* [XFocusOutEvent](#XFocusOutEvent)
* [XFontProp](#XFontProp)
* [XFontSet](#XFontSet)
* [XFontSetExtents](#XFontSetExtents)
* [XFontStruct](#XFontStruct)
* [XGCValues](#XGCValues)
* [XGenericEvent](#XGenericEvent)
* [XGenericEventCookie](#XGenericEventCookie)
* [XGraphicsExposeEvent](#XGraphicsExposeEvent)
* [XGravityEvent](#XGravityEvent)
* [XHostAddress](#XHostAddress)
* [XIC](#XIC)
* [XICCEncodingStyle](#XICCEncodingStyle)
* [XICCallback](#XICCallback)
* [XICProc](#XICProc)
* [XID](#XID)
* [XIDProc](#XIDProc)
* [XIEventMask](#XIEventMask)
* [XIEventType](#XIEventType)
* [XIM](#XIM)
* [XIMCallback](#XIMCallback)
* [XIMCaretDirection](#XIMCaretDirection)
* [XIMCaretStyle](#XIMCaretStyle)
* [XIMFeedback](#XIMFeedback)
* [XIMHotKeyState](#XIMHotKeyState)
* [XIMHotKeyTrigger](#XIMHotKeyTrigger)
* [XIMHotKeyTriggers](#XIMHotKeyTriggers)
* [XIMPreeditCaretCallbackStruct](#XIMPreeditCaretCallbackStruct)
* [XIMPreeditDrawCallbackStruct](#XIMPreeditDrawCallbackStruct)
* [XIMPreeditState](#XIMPreeditState)
* [XIMPreeditStateNotifyCallbackStruct](#XIMPreeditStateNotifyCallbackStruct)
* [XIMProc](#XIMProc)
* [XIMResetState](#XIMResetState)
* [XIMStatusDataType](#XIMStatusDataType)
* [XIMStatusDrawCallbackStruct](#XIMStatusDrawCallbackStruct)
* [XIMStringConversionCallbackStruct](#XIMStringConversionCallbackStruct)
* [XIMStringConversionFeedback](#XIMStringConversionFeedback)
* [XIMStringConversionOperation](#XIMStringConversionOperation)
* [XIMStringConversionPosition](#XIMStringConversionPosition)
* [XIMStringConversionText](#XIMStringConversionText)
* [XIMStringConversionType](#XIMStringConversionType)
* [XIMStyle](#XIMStyle)
* [XIMStyles](#XIMStyles)
* [XIMText](#XIMText)
* [XIMValuesList](#XIMValuesList)
* [XIRawEvent](#XIRawEvent)
* [XIValuatorState](#XIValuatorState)
* [XIconSize](#XIconSize)
* [XImage](#XImage)
* [XKeyEvent](#XKeyEvent)
* [XKeyPressedEvent](#XKeyPressedEvent)
* [XKeyReleasedEvent](#XKeyReleasedEvent)
* [XKeyboardControl](#XKeyboardControl)
* [XKeyboardState](#XKeyboardState)
* [XKeymapEvent](#XKeymapEvent)
* [XLeaveWindowEvent](#XLeaveWindowEvent)
* [XMapEvent](#XMapEvent)
* [XMapRequestEvent](#XMapRequestEvent)
* [XMappingEvent](#XMappingEvent)
* [XModifierKeymap](#XModifierKeymap)
* [XMotionEvent](#XMotionEvent)
* [XNoExposeEvent](#XNoExposeEvent)
* [XOC](#XOC)
* [XOM](#XOM)
* [XOMCharSetList](#XOMCharSetList)
* [XOMFontInfo](#XOMFontInfo)
* [XOMOrientation](#XOMOrientation)
* [XOrientation](#XOrientation)
* [XPixmapFormatValues](#XPixmapFormatValues)
* [XPoint](#XPoint)
* [XPointerMovedEvent](#XPointerMovedEvent)
* [XPropertyEvent](#XPropertyEvent)
* [XRRCrtcInfo](#XRRCrtcInfo)
* [XRRModeBits](#XRRModeBits)
* [XRRModeFlags](#XRRModeFlags)
* [XRRModeInfo](#XRRModeInfo)
* [XRRMonitorInfo](#XRRMonitorInfo)
* [XRROutputInfo](#XRROutputInfo)
* [XRRScreenResources](#XRRScreenResources)
* [XRRScreenSize](#XRRScreenSize)
* [XRectangle](#XRectangle)
* [XReparentEvent](#XReparentEvent)
* [XResizeRequestEvent](#XResizeRequestEvent)
* [XSegment](#XSegment)
* [XSelectionClearEvent](#XSelectionClearEvent)
* [XSelectionEvent](#XSelectionEvent)
* [XSelectionRequestEvent](#XSelectionRequestEvent)
* [XServerInterpretedAddress](#XServerInterpretedAddress)
* [XSetWindowAttributes](#XSetWindowAttributes)
* [XSizeHints](#XSizeHints)
* [XStandardColormap](#XStandardColormap)
* [XTextItem](#XTextItem)
* [XTextItem16](#XTextItem16)
* [XTextProperty](#XTextProperty)
* [XTimeCoord](#XTimeCoord)
* [XUnmapEvent](#XUnmapEvent)
* [XVaNestedList](#XVaNestedList)
* [XVisibilityEvent](#XVisibilityEvent)
* [XVisualInfo](#XVisualInfo)
* [XWMHints](#XWMHints)
* [XWindowAttributes](#XWindowAttributes)
* [XWindowChanges](#XWindowChanges)
* [XcmsCCC](#XcmsCCC)
* [XcmsCCCRec](#XcmsCCCRec)
* [XcmsCIELab](#XcmsCIELab)
* [XcmsCIELuv](#XcmsCIELuv)
* [XcmsCIEXYZ](#XcmsCIEXYZ)
* [XcmsCIEuvY](#XcmsCIEuvY)
* [XcmsCIExyY](#XcmsCIExyY)
* [XcmsColor](#XcmsColor)
* [XcmsColorFormat](#XcmsColorFormat)
* [XcmsColorSpace](#XcmsColorSpace)
* [XcmsCompressionProc](#XcmsCompressionProc)
* [XcmsConversionProc](#XcmsConversionProc)
* [XcmsDDConversionProc](#XcmsDDConversionProc)
* [XcmsDIConversionProc](#XcmsDIConversionProc)
* [XcmsFloat](#XcmsFloat)
* [XcmsFuncListPtr](#XcmsFuncListPtr)
* [XcmsFunctionSet](#XcmsFunctionSet)
* [XcmsPad](#XcmsPad)
* [XcmsParseStringProc](#XcmsParseStringProc)
* [XcmsPerScrnInfo](#XcmsPerScrnInfo)
* [XcmsRGB](#XcmsRGB)
* [XcmsRGBi](#XcmsRGBi)
* [XcmsScreenFreeProc](#XcmsScreenFreeProc)
* [XcmsScreenInitProc](#XcmsScreenInitProc)
* [XcmsTekHVC](#XcmsTekHVC)
* [XcmsWhiteAdjustProc](#XcmsWhiteAdjustProc)
* [XkbAccessXNotifyEvent](#XkbAccessXNotifyEvent)
* [XkbAction](#XkbAction)
* [XkbActionMessageEvent](#XkbActionMessageEvent)
* [XkbAnyAction](#XkbAnyAction)
* [XkbAnyDoodadPtr](#XkbAnyDoodadPtr)
* [XkbAnyDoodadRec](#XkbAnyDoodadRec)
* [XkbAnyEvent](#XkbAnyEvent)
* [XkbBehavior](#XkbBehavior)
* [XkbBellNotifyEvent](#XkbBellNotifyEvent)
* [XkbBoundsPtr](#XkbBoundsPtr)
* [XkbBoundsRec](#XkbBoundsRec)
* [XkbClientMapPtr](#XkbClientMapPtr)
* [XkbClientMapRec](#XkbClientMapRec)
* [XkbColorPtr](#XkbColorPtr)
* [XkbColorRec](#XkbColorRec)
* [XkbCompatMapNotifyEvent](#XkbCompatMapNotifyEvent)
* [XkbCompatMapPtr](#XkbCompatMapPtr)
* [XkbCompatMapRec](#XkbCompatMapRec)
* [XkbControlsNotifyEvent](#XkbControlsNotifyEvent)
* [XkbControlsPtr](#XkbControlsPtr)
* [XkbControlsRec](#XkbControlsRec)
* [XkbCtrlsAction](#XkbCtrlsAction)
* [XkbDescPtr](#XkbDescPtr)
* [XkbDescRec](#XkbDescRec)
* [XkbDeviceBtnAction](#XkbDeviceBtnAction)
* [XkbDeviceValuatorAction](#XkbDeviceValuatorAction)
* [XkbDoodadPtr](#XkbDoodadPtr)
* [XkbDoodadRec](#XkbDoodadRec)
* [XkbEvent](#XkbEvent)
* [XkbEventMask](#XkbEventMask)
* [XkbEventType](#XkbEventType)
* [XkbExtensionDeviceNotifyEvent](#XkbExtensionDeviceNotifyEvent)
* [XkbGeometryPtr](#XkbGeometryPtr)
* [XkbGeometryRec](#XkbGeometryRec)
* [XkbGroupAction](#XkbGroupAction)
* [XkbISOAction](#XkbISOAction)
* [XkbIndicatorDoodadPtr](#XkbIndicatorDoodadPtr)
* [XkbIndicatorDoodadRec](#XkbIndicatorDoodadRec)
* [XkbIndicatorMapPtr](#XkbIndicatorMapPtr)
* [XkbIndicatorMapRec](#XkbIndicatorMapRec)
* [XkbIndicatorNotifyEvent](#XkbIndicatorNotifyEvent)
* [XkbIndicatorPtr](#XkbIndicatorPtr)
* [XkbIndicatorRec](#XkbIndicatorRec)
* [XkbInfoMask](#XkbInfoMask)
* [XkbInfoMaskBits](#XkbInfoMaskBits)
* [XkbKTMapEntryPtr](#XkbKTMapEntryPtr)
* [XkbKTMapEntryRec](#XkbKTMapEntryRec)
* [XkbKeyAliasPtr](#XkbKeyAliasPtr)
* [XkbKeyAliasRec](#XkbKeyAliasRec)
* [XkbKeyNamePtr](#XkbKeyNamePtr)
* [XkbKeyNameRec](#XkbKeyNameRec)
* [XkbKeyPtr](#XkbKeyPtr)
* [XkbKeyRec](#XkbKeyRec)
* [XkbKeyTypePtr](#XkbKeyTypePtr)
* [XkbKeyTypeRec](#XkbKeyTypeRec)
* [XkbLogoDoodadPtr](#XkbLogoDoodadPtr)
* [XkbLogoDoodadRec](#XkbLogoDoodadRec)
* [XkbMapNotifyEvent](#XkbMapNotifyEvent)
* [XkbMessageAction](#XkbMessageAction)
* [XkbModAction](#XkbModAction)
* [XkbModsPtr](#XkbModsPtr)
* [XkbModsRec](#XkbModsRec)
* [XkbNamesNotifyEvent](#XkbNamesNotifyEvent)
* [XkbNamesPtr](#XkbNamesPtr)
* [XkbNamesRec](#XkbNamesRec)
* [XkbNewKeyboardNotifyEvent](#XkbNewKeyboardNotifyEvent)
* [XkbOutlinePtr](#XkbOutlinePtr)
* [XkbOutlineRec](#XkbOutlineRec)
* [XkbOverlayKeyPtr](#XkbOverlayKeyPtr)
* [XkbOverlayKeyRec](#XkbOverlayKeyRec)
* [XkbOverlayPtr](#XkbOverlayPtr)
* [XkbOverlayRec](#XkbOverlayRec)
* [XkbOverlayRowPtr](#XkbOverlayRowPtr)
* [XkbOverlayRowRec](#XkbOverlayRowRec)
* [XkbPointPtr](#XkbPointPtr)
* [XkbPointRec](#XkbPointRec)
* [XkbPropertyPtr](#XkbPropertyPtr)
* [XkbPropertyRec](#XkbPropertyRec)
* [XkbPtrAction](#XkbPtrAction)
* [XkbPtrBtnAction](#XkbPtrBtnAction)
* [XkbPtrDfltAction](#XkbPtrDfltAction)
* [XkbRedirectKeyAction](#XkbRedirectKeyAction)
* [XkbRowPtr](#XkbRowPtr)
* [XkbRowRec](#XkbRowRec)
* [XkbSectionPtr](#XkbSectionPtr)
* [XkbSectionRec](#XkbSectionRec)
* [XkbServerMapPtr](#XkbServerMapPtr)
* [XkbServerMapRec](#XkbServerMapRec)
* [XkbShapeDoodadPtr](#XkbShapeDoodadPtr)
* [XkbShapeDoodadRec](#XkbShapeDoodadRec)
* [XkbShapePtr](#XkbShapePtr)
* [XkbShapeRec](#XkbShapeRec)
* [XkbStateNotifyEvent](#XkbStateNotifyEvent)
* [XkbStatePtr](#XkbStatePtr)
* [XkbStateRec](#XkbStateRec)
* [XkbSwitchScreenAction](#XkbSwitchScreenAction)
* [XkbSymInterpretPtr](#XkbSymInterpretPtr)
* [XkbSymInterpretRec](#XkbSymInterpretRec)
* [XkbSymMapPtr](#XkbSymMapPtr)
* [XkbSymMapRec](#XkbSymMapRec)
* [XkbTextDoodadPtr](#XkbTextDoodadPtr)
* [XkbTextDoodadRec](#XkbTextDoodadRec)
* [XmbTextItem](#XmbTextItem)
* [XrmBinding](#XrmBinding)
* [XrmBindingList](#XrmBindingList)
* [XrmClass](#XrmClass)
* [XrmClassList](#XrmClassList)
* [XrmDatabase](#XrmDatabase)
* [XrmHashBucket](#XrmHashBucket)
* [XrmHashTable](#XrmHashTable)
* [XrmName](#XrmName)
* [XrmNameList](#XrmNameList)
* [XrmOptionDescList](#XrmOptionDescList)
* [XrmOptionDescRec](#XrmOptionDescRec)
* [XrmOptionKind](#XrmOptionKind)
* [XrmQuark](#XrmQuark)
* [XrmQuarkList](#XrmQuarkList)
* [XrmRepresentation](#XrmRepresentation)
* [XrmSearchList](#XrmSearchList)
* [XrmString](#XrmString)
* [XrmValue](#XrmValue)
* [XrmValuePtr](#XrmValuePtr)
* [XwcTextItem](#XwcTextItem)

Constants (54)

* [AllHints](#AllHints)
* [AllTemporary](#AllTemporary)
* [AnyButton](#AnyButton)
* [AnyKey](#AnyKey)
* [AnyPropertyType](#AnyPropertyType)
* [CopyFromParent](#CopyFromParent)
* [CurrentTime](#CurrentTime)
* [IS\_SUPPORTED](#IS_SUPPORTED)
* [InputFocus](#InputFocus)
* [NoSymbol](#NoSymbol)
* [None](#None)
* [ParentRelative](#ParentRelative)
* [PointerRoot](#PointerRoot)
* [PointerWindow](#PointerWindow)
* [PropModeAppend](#PropModeAppend)
* [PropModePrepend](#PropModePrepend)
* [PropModeReplace](#PropModeReplace)
* [VisualAllMask](#VisualAllMask)
* [VisualNoMask](#VisualNoMask)
* [XA\_ATOM](#XA_ATOM)
* [XA\_WM\_CLASS](#XA_WM_CLASS)
* [XA\_WM\_CLIENT\_MACHINE](#XA_WM_CLIENT_MACHINE)
* [XA\_WM\_COMMAND](#XA_WM_COMMAND)
* [XA\_WM\_HINTS](#XA_WM_HINTS)
* [XA\_WM\_ICON\_NAME](#XA_WM_ICON_NAME)
* [XA\_WM\_ICON\_SIZE](#XA_WM_ICON_SIZE)
* [XA\_WM\_NAME](#XA_WM_NAME)
* [XA\_WM\_NORMAL\_HINTS](#XA_WM_NORMAL_HINTS)
* [XA\_WM\_SIZE\_HINTS](#XA_WM_SIZE_HINTS)
* [XA\_WM\_TRANSIENT\_FOR](#XA_WM_TRANSIENT_FOR)
* [XA\_WM\_ZOOM\_HINTS](#XA_WM_ZOOM_HINTS)
* [XIAllDevices](#XIAllDevices)
* [XIAllMasterDevices](#XIAllMasterDevices)
* [XIMPreeditNothing](#XIMPreeditNothing)
* [XIMStatusNothing](#XIMStatusNothing)
* [XNClientWindow](#XNClientWindow)
* [XNFocusWindow](#XNFocusWindow)
* [XNInputStyle](#XNInputStyle)
* [XNPreeditAttributes](#XNPreeditAttributes)
* [XNSpotLocation](#XNSpotLocation)
* [XkbActionMessageLength](#XkbActionMessageLength)
* [XkbAllClientInfoMask](#XkbAllClientInfoMask)
* [XkbAllEventsMask](#XkbAllEventsMask)
* [XkbAllServerInfoMask](#XkbAllServerInfoMask)
* [XkbAnyActionDataSize](#XkbAnyActionDataSize)
* [XkbKeyNameLength](#XkbKeyNameLength)
* [XkbMaxKeyCount](#XkbMaxKeyCount)
* [XkbMaxLegalKeyCode](#XkbMaxLegalKeyCode)
* [XkbMinLegalKeyCode](#XkbMinLegalKeyCode)
* [XkbNumIndicators](#XkbNumIndicators)
* [XkbNumKbdGroups](#XkbNumKbdGroups)
* [XkbNumVirtualMods](#XkbNumVirtualMods)
* [XkbPerKeyBitArraySize](#XkbPerKeyBitArraySize)
* [XkbUseCoreKbd](#XkbUseCoreKbd)

Variables (0)

This section is empty.

Procedures (470)

* [ActivateScreenSaver](#ActivateScreenSaver)
* [AddConnectionWatch](#AddConnectionWatch)
* [AddHost](#AddHost)
* [AddHosts](#AddHosts)
* [AddPixel](#AddPixel)
* [AddToSaveSet](#AddToSaveSet)
* [AllocClassHint](#AllocClassHint)
* [AllocColor](#AllocColor)
* [AllocColorCells](#AllocColorCells)
* [AllocColorPlanes](#AllocColorPlanes)
* [AllocIconSize](#AllocIconSize)
* [AllocNamedColor](#AllocNamedColor)
* [AllocSizeHints](#AllocSizeHints)
* [AllocWMHints](#AllocWMHints)
* [AllowEvents](#AllowEvents)
* [AutoRepeatOff](#AutoRepeatOff)
* [AutoRepeatOn](#AutoRepeatOn)
* [Bell](#Bell)
* [BitmapBitOrder](#BitmapBitOrder)
* [BitmapPad](#BitmapPad)
* [BitmapUnit](#BitmapUnit)
* [BlackPixel](#BlackPixel)
* [BlackPixelsOfScreen](#BlackPixelsOfScreen)
* [CellsOfScreen](#CellsOfScreen)
* [ChangeActivePointerGrab](#ChangeActivePointerGrab)
* [ChangeGC](#ChangeGC)
* [ChangeKeyboardControl](#ChangeKeyboardControl)
* [ChangeKeyboardMapping](#ChangeKeyboardMapping)
* [ChangePointerControl](#ChangePointerControl)
* [ChangeProperty](#ChangeProperty)
* [ChangeSaveSet](#ChangeSaveSet)
* [ChangeWindowAttributes](#ChangeWindowAttributes)
* [CheckIfEvent](#CheckIfEvent)
* [CheckMaskEvent](#CheckMaskEvent)
* [CheckTypedEvent](#CheckTypedEvent)
* [CheckTypedWindowEvent](#CheckTypedWindowEvent)
* [CheckWindowEvent](#CheckWindowEvent)
* [CirculateSubwindows](#CirculateSubwindows)
* [CirculateSubwindowsDown](#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](#CirculateSubwindowsUp)
* [ClearArea](#ClearArea)
* [ClearWindow](#ClearWindow)
* [ClipBox](#ClipBox)
* [CloseDisplay](#CloseDisplay)
* [ConfigureWindow](#ConfigureWindow)
* [ConnectionNumber](#ConnectionNumber)
* [ConvertCase](#ConvertCase)
* [ConvertSelection](#ConvertSelection)
* [CopyArea](#CopyArea)
* [CopyColormapAndFree](#CopyColormapAndFree)
* [CopyGC](#CopyGC)
* [CopyPlane](#CopyPlane)
* [CreateColormap](#CreateColormap)
* [CreateFontCursor](#CreateFontCursor)
* [CreateGC](#CreateGC)
* [CreateGlyphCursor](#CreateGlyphCursor)
* [CreateIC](#CreateIC)
* [CreateImage](#CreateImage)
* [CreatePixmap](#CreatePixmap)
* [CreatePixmapCursor](#CreatePixmapCursor)
* [CreateRegion](#CreateRegion)
* [CreateSimpleWindow](#CreateSimpleWindow)
* [CreateWindow](#CreateWindow)
* [DefaultColormap](#DefaultColormap)
* [DefaultColormapOfScreen](#DefaultColormapOfScreen)
* [DefaultDepth](#DefaultDepth)
* [DefaultDepthOfScreen](#DefaultDepthOfScreen)
* [DefaultGC](#DefaultGC)
* [DefaultGCOfScreen](#DefaultGCOfScreen)
* [DefaultRootWindow](#DefaultRootWindow)
* [DefaultScreen](#DefaultScreen)
* [DefaultScreenOfDisplay](#DefaultScreenOfDisplay)
* [DefaultVisual](#DefaultVisual)
* [DefaultVisualOfScreen](#DefaultVisualOfScreen)
* [DefineCursor](#DefineCursor)
* [DeleteModifiermapEntry](#DeleteModifiermapEntry)
* [DeleteProperty](#DeleteProperty)
* [DestroyImage](#DestroyImage)
* [DestroyRegion](#DestroyRegion)
* [DestroySubwindows](#DestroySubwindows)
* [DestroyWindow](#DestroyWindow)
* [DisableAccessControl](#DisableAccessControl)
* [DisplayCells](#DisplayCells)
* [DisplayHeight](#DisplayHeight)
* [DisplayHeightMM](#DisplayHeightMM)
* [DisplayKeycodes](#DisplayKeycodes)
* [DisplayMotionBufferSize](#DisplayMotionBufferSize)
* [DisplayName](#DisplayName)
* [DisplayOfScreen](#DisplayOfScreen)
* [DisplayPlanes](#DisplayPlanes)
* [DisplayString](#DisplayString)
* [DisplayWidth](#DisplayWidth)
* [DisplayWidthMM](#DisplayWidthMM)
* [DoesBackingStore](#DoesBackingStore)
* [DoesSaveUnders](#DoesSaveUnders)
* [DrawArc](#DrawArc)
* [DrawArcs](#DrawArcs)
* [DrawImageString](#DrawImageString)
* [DrawImageString16](#DrawImageString16)
* [DrawLine](#DrawLine)
* [DrawLines](#DrawLines)
* [DrawPoint](#DrawPoint)
* [DrawPoints](#DrawPoints)
* [DrawRectangle](#DrawRectangle)
* [DrawRectangles](#DrawRectangles)
* [DrawSegments](#DrawSegments)
* [DrawString](#DrawString)
* [DrawString16](#DrawString16)
* [DrawText](#DrawText)
* [DrawText16](#DrawText16)
* [EmptyRegion](#EmptyRegion)
* [EnableAccessControl](#EnableAccessControl)
* [EqualRegion](#EqualRegion)
* [EventMaskOfScreen](#EventMaskOfScreen)
* [EventsQueued](#EventsQueued)
* [ExtendedMaxRequestSize](#ExtendedMaxRequestSize)
* [FetchBuffer](#FetchBuffer)
* [FetchBytes](#FetchBytes)
* [FetchName](#FetchName)
* [FillArc](#FillArc)
* [FillArcs](#FillArcs)
* [FillPolygon](#FillPolygon)
* [FillRectangle](#FillRectangle)
* [FillRectangles](#FillRectangles)
* [FilterEvent](#FilterEvent)
* [Flush](#Flush)
* [FlushGC](#FlushGC)
* [ForceScreenSaver](#ForceScreenSaver)
* [Free](#Free)
* [FreeColormap](#FreeColormap)
* [FreeColors](#FreeColors)
* [FreeCursor](#FreeCursor)
* [FreeEventData](#FreeEventData)
* [FreeFont](#FreeFont)
* [FreeFontInfo](#FreeFontInfo)
* [FreeFontNames](#FreeFontNames)
* [FreeFontPath](#FreeFontPath)
* [FreeGC](#FreeGC)
* [FreeModifiermap](#FreeModifiermap)
* [FreePixmap](#FreePixmap)
* [GCContextFromGC](#GCContextFromGC)
* [GetAtomName](#GetAtomName)
* [GetAtomNames](#GetAtomNames)
* [GetClassHint](#GetClassHint)
* [GetCommand](#GetCommand)
* [GetErrorDatabaseText](#GetErrorDatabaseText)
* [GetErrorText](#GetErrorText)
* [GetEventData](#GetEventData)
* [GetFontPath](#GetFontPath)
* [GetFontProperty](#GetFontProperty)
* [GetGCValues](#GetGCValues)
* [GetGeometry](#GetGeometry)
* [GetIconName](#GetIconName)
* [GetIconSizes](#GetIconSizes)
* [GetImage](#GetImage)
* [GetInputFocus](#GetInputFocus)
* [GetKeyboardControl](#GetKeyboardControl)
* [GetKeyboardMapping](#GetKeyboardMapping)
* [GetModifierMapping](#GetModifierMapping)
* [GetMotionEvents](#GetMotionEvents)
* [GetPixel](#GetPixel)
* [GetPointerControl](#GetPointerControl)
* [GetPointerMapping](#GetPointerMapping)
* [GetRGBColormaps](#GetRGBColormaps)
* [GetScreenSaver](#GetScreenSaver)
* [GetSelectionOwner](#GetSelectionOwner)
* [GetSubImage](#GetSubImage)
* [GetTextProperty](#GetTextProperty)
* [GetTransientForHint](#GetTransientForHint)
* [GetVisualInfo](#GetVisualInfo)
* [GetWMClientMachine](#GetWMClientMachine)
* [GetWMColormapWindows](#GetWMColormapWindows)
* [GetWMHints](#GetWMHints)
* [GetWMIconName](#GetWMIconName)
* [GetWMName](#GetWMName)
* [GetWMNormalHints](#GetWMNormalHints)
* [GetWMProtocols](#GetWMProtocols)
* [GetWMSizeHints](#GetWMSizeHints)
* [GetWindowAttributes](#GetWindowAttributes)
* [GetWindowProperty](#GetWindowProperty)
* [GrabButton](#GrabButton)
* [GrabKey](#GrabKey)
* [GrabKeyboard](#GrabKeyboard)
* [GrabPointer](#GrabPointer)
* [GrabServer](#GrabServer)
* [HeightMMOfScreen](#HeightMMOfScreen)
* [HeightOfScreen](#HeightOfScreen)
* [HideCursor](#HideCursor)
* [IconifyWindow](#IconifyWindow)
* [IfEvent](#IfEvent)
* [ImageByteOrder](#ImageByteOrder)
* [InitImage](#InitImage)
* [InitThreads](#InitThreads)
* [InsertModifiermapEntry](#InsertModifiermapEntry)
* [InstallColormap](#InstallColormap)
* [InternAtom](#InternAtom)
* [InternAtoms](#InternAtoms)
* [InternalConnectionNumbers](#InternalConnectionNumbers)
* [IntersectRegion](#IntersectRegion)
* [KeycodeToKeysym](#KeycodeToKeysym)
* [KeysymToKeycode](#KeysymToKeycode)
* [KeysymToString](#KeysymToString)
* [KillClient](#KillClient)
* [LastKnownRequestProcessed](#LastKnownRequestProcessed)
* [ListDepths](#ListDepths)
* [ListFonts](#ListFonts)
* [ListFontsWithInfo](#ListFontsWithInfo)
* [ListHosts](#ListHosts)
* [ListInstalledColormaps](#ListInstalledColormaps)
* [ListPixmapFormats](#ListPixmapFormats)
* [ListProperties](#ListProperties)
* [LoadFont](#LoadFont)
* [LoadQueryFont](#LoadQueryFont)
* [LockDisplay](#LockDisplay)
* [LookupColor](#LookupColor)
* [LookupKeysym](#LookupKeysym)
* [LookupString](#LookupString)
* [LowerWindow](#LowerWindow)
* [MapRaised](#MapRaised)
* [MapSubwindows](#MapSubwindows)
* [MapWindow](#MapWindow)
* [MaskEvent](#MaskEvent)
* [MatchVisualInfo](#MatchVisualInfo)
* [MaxCmapsOfScreen](#MaxCmapsOfScreen)
* [MaxRequestSize](#MaxRequestSize)
* [MinCmapsOfScreen](#MinCmapsOfScreen)
* [MoveResizeWindow](#MoveResizeWindow)
* [MoveWindow](#MoveWindow)
* [NewModifiermap](#NewModifiermap)
* [NextEvent](#NextEvent)
* [NextRequest](#NextRequest)
* [NoOp](#NoOp)
* [OffsetRegion](#OffsetRegion)
* [OpenDisplay](#OpenDisplay)
* [OpenIM](#OpenIM)
* [ParseGeometry](#ParseGeometry)
* [PeekEvent](#PeekEvent)
* [PeekIfEvent](#PeekIfEvent)
* [Pending](#Pending)
* [Permalloc](#Permalloc)
* [PlanesOfScreen](#PlanesOfScreen)
* [PointInRegion](#PointInRegion)
* [PolygonRegion](#PolygonRegion)
* [ProcessInternalConnections](#ProcessInternalConnections)
* [ProtocolRevision](#ProtocolRevision)
* [ProtocolVersion](#ProtocolVersion)
* [PutBackEvent](#PutBackEvent)
* [PutImage](#PutImage)
* [PutPixel](#PutPixel)
* [QLength](#QLength)
* [QueryBestCursor](#QueryBestCursor)
* [QueryBestSize](#QueryBestSize)
* [QueryBestStripple](#QueryBestStripple)
* [QueryBestTile](#QueryBestTile)
* [QueryColor](#QueryColor)
* [QueryColors](#QueryColors)
* [QueryExtension](#QueryExtension)
* [QueryFont](#QueryFont)
* [QueryKeymap](#QueryKeymap)
* [QueryPointer](#QueryPointer)
* [QueryTextExtents](#QueryTextExtents)
* [QueryTextExtents16](#QueryTextExtents16)
* [QueryTree](#QueryTree)
* [RaiseWindow](#RaiseWindow)
* [RebindKeysym](#RebindKeysym)
* [RecolorCursor](#RecolorCursor)
* [ReconfigureWMWindow](#ReconfigureWMWindow)
* [RectInRegion](#RectInRegion)
* [RefreshKeyboardMapping](#RefreshKeyboardMapping)
* [RemoveConnectionWatch](#RemoveConnectionWatch)
* [RemoveFromSaveSet](#RemoveFromSaveSet)
* [RemoveHost](#RemoveHost)
* [RemoveHosts](#RemoveHosts)
* [ReparentWindow](#ReparentWindow)
* [ResetScreenSaver](#ResetScreenSaver)
* [ResizeWindow](#ResizeWindow)
* [ResourceManagerString](#ResourceManagerString)
* [RestackWindows](#RestackWindows)
* [RootWindow](#RootWindow)
* [RootWindowOfScreen](#RootWindowOfScreen)
* [RotateWindowProperties](#RotateWindowProperties)
* [ScreenCount](#ScreenCount)
* [ScreenNumberOfScreen](#ScreenNumberOfScreen)
* [ScreenOfDisplay](#ScreenOfDisplay)
* [SelectInput](#SelectInput)
* [SendEvent](#SendEvent)
* [ServerVendor](#ServerVendor)
* [SetAccessControl](#SetAccessControl)
* [SetAfterFunction](#SetAfterFunction)
* [SetArcMode](#SetArcMode)
* [SetBackground](#SetBackground)
* [SetClassHint](#SetClassHint)
* [SetClipMask](#SetClipMask)
* [SetClipOrigin](#SetClipOrigin)
* [SetClipRectangles](#SetClipRectangles)
* [SetCloseDownMode](#SetCloseDownMode)
* [SetCommand](#SetCommand)
* [SetDashes](#SetDashes)
* [SetErrorHandler](#SetErrorHandler)
* [SetFillRule](#SetFillRule)
* [SetFillStyle](#SetFillStyle)
* [SetFont](#SetFont)
* [SetFontPath](#SetFontPath)
* [SetForeground](#SetForeground)
* [SetFunction](#SetFunction)
* [SetGraphicsExposures](#SetGraphicsExposures)
* [SetICFocus](#SetICFocus)
* [SetICValues](#SetICValues)
* [SetIOErrorHandler](#SetIOErrorHandler)
* [SetIconName](#SetIconName)
* [SetIconSizes](#SetIconSizes)
* [SetInputFocus](#SetInputFocus)
* [SetLineAttributes](#SetLineAttributes)
* [SetLocaleModifiers](#SetLocaleModifiers)
* [SetModifierMapping](#SetModifierMapping)
* [SetPlaneMask](#SetPlaneMask)
* [SetPointerMapping](#SetPointerMapping)
* [SetRGBColormaps](#SetRGBColormaps)
* [SetRegion](#SetRegion)
* [SetScreenSaver](#SetScreenSaver)
* [SetSelectionOwner](#SetSelectionOwner)
* [SetState](#SetState)
* [SetStripple](#SetStripple)
* [SetSubwindowMode](#SetSubwindowMode)
* [SetTSOrigin](#SetTSOrigin)
* [SetTextProperty](#SetTextProperty)
* [SetTile](#SetTile)
* [SetTransientForHint](#SetTransientForHint)
* [SetWMClientMachine](#SetWMClientMachine)
* [SetWMColormapWindows](#SetWMColormapWindows)
* [SetWMHints](#SetWMHints)
* [SetWMIconName](#SetWMIconName)
* [SetWMName](#SetWMName)
* [SetWMNormalHints](#SetWMNormalHints)
* [SetWMProperties](#SetWMProperties)
* [SetWMProtocols](#SetWMProtocols)
* [SetWMSizeHints](#SetWMSizeHints)
* [SetWindowBackground](#SetWindowBackground)
* [SetWindowBackgroundPixmap](#SetWindowBackgroundPixmap)
* [SetWindowBorder](#SetWindowBorder)
* [SetWindowBorderWidth](#SetWindowBorderWidth)
* [SetWindowColormap](#SetWindowColormap)
* [ShowCursor](#ShowCursor)
* [ShrinkRegion](#ShrinkRegion)
* [StoreBuffer](#StoreBuffer)
* [StoreBytes](#StoreBytes)
* [StoreColor](#StoreColor)
* [StoreColors](#StoreColors)
* [StoreName](#StoreName)
* [StoreNamedColor](#StoreNamedColor)
* [StringToKeysym](#StringToKeysym)
* [SubImage](#SubImage)
* [SubtractRegion](#SubtractRegion)
* [Sync](#Sync)
* [Synchronize](#Synchronize)
* [TextExtents](#TextExtents)
* [TextExtents16](#TextExtents16)
* [TextWidth](#TextWidth)
* [TextWidth16](#TextWidth16)
* [TranslateCoordinates](#TranslateCoordinates)
* [UndefineCursor](#UndefineCursor)
* [UngrabButton](#UngrabButton)
* [UngrabKey](#UngrabKey)
* [UngrabKeyboard](#UngrabKeyboard)
* [UngrabPointer](#UngrabPointer)
* [UngrabServer](#UngrabServer)
* [UninstallColormap](#UninstallColormap)
* [UnionRectWithRegion](#UnionRectWithRegion)
* [UnionRegion](#UnionRegion)
* [UnloadFont](#UnloadFont)
* [UnlockDisplay](#UnlockDisplay)
* [UnmapSubwindows](#UnmapSubwindows)
* [UnmapWindow](#UnmapWindow)
* [UnsetICFocus](#UnsetICFocus)
* [VaCreateNestedList](#VaCreateNestedList)
* [VendorRelease](#VendorRelease)
* [VisualIDFromVisual](#VisualIDFromVisual)
* [WMGeometry](#WMGeometry)
* [WarpPointer](#WarpPointer)
* [WhitePixel](#WhitePixel)
* [WhitePixelsOfScreen](#WhitePixelsOfScreen)
* [WidthMMOfScreen](#WidthMMOfScreen)
* [WidthOfScreen](#WidthOfScreen)
* [WindowEvent](#WindowEvent)
* [WithdrawWindow](#WithdrawWindow)
* [XIMaskIsSet](#XIMaskIsSet)
* [XIQueryVersion](#XIQueryVersion)
* [XISelectEvents](#XISelectEvents)
* [XISetMask](#XISetMask)
* [XRRFreeCrtcInfo](#XRRFreeCrtcInfo)
* [XRRFreeOutputInfo](#XRRFreeOutputInfo)
* [XRRFreeScreenResources](#XRRFreeScreenResources)
* [XRRGetCrtcInfo](#XRRGetCrtcInfo)
* [XRRGetMonitors](#XRRGetMonitors)
* [XRRGetOutputInfo](#XRRGetOutputInfo)
* [XRRGetScreenResources](#XRRGetScreenResources)
* [XRRSizes](#XRRSizes)
* [XcmsAllocColor](#XcmsAllocColor)
* [XcmsAllocNamedColor](#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](#XcmsCCCOfColormap)
* [XcmsCIELabClipL](#XcmsCIELabClipL)
* [XcmsCIELabClipLab](#XcmsCIELabClipLab)
* [XcmsCIELabClipab](#XcmsCIELabClipab)
* [XcmsCIELabQueryMaxC](#XcmsCIELabQueryMaxC)
* [XcmsCIELabQueryMaxL](#XcmsCIELabQueryMaxL)
* [XcmsCIELabQueryMaxLC](#XcmsCIELabQueryMaxLC)
* [XcmsCIELabQueryMinL](#XcmsCIELabQueryMinL)
* [XcmsCIELabWhiteShiftColors](#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvClipL](#XcmsCIELuvClipL)
* [XcmsCIELuvClipLuv](#XcmsCIELuvClipLuv)
* [XcmsCIELuvClipuv](#XcmsCIELuvClipuv)
* [XcmsCIELuvQueryMaxC](#XcmsCIELuvQueryMaxC)
* [XcmsCIELuvQueryMaxL](#XcmsCIELuvQueryMaxL)
* [XcmsCIELuvQueryMaxLC](#XcmsCIELuvQueryMaxLC)
* [XcmsCIELuvQueryMinL](#XcmsCIELuvQueryMinL)
* [XcmsCIELuvWhiteShiftColors](#XcmsCIELuvWhiteShiftColors)
* [XcmsClientWhitePointOfCCC](#XcmsClientWhitePointOfCCC)
* [XcmsConvertColors](#XcmsConvertColors)
* [XcmsCreateCCC](#XcmsCreateCCC)
* [XcmsDefaultCCC](#XcmsDefaultCCC)
* [XcmsDisplayOfCCC](#XcmsDisplayOfCCC)
* [XcmsFreeCCC](#XcmsFreeCCC)
* [XcmsLookupColor](#XcmsLookupColor)
* [XcmsQueryBlack](#XcmsQueryBlack)
* [XcmsQueryBlue](#XcmsQueryBlue)
* [XcmsQueryColor](#XcmsQueryColor)
* [XcmsQueryColors](#XcmsQueryColors)
* [XcmsQueryGreen](#XcmsQueryGreen)
* [XcmsQueryRed](#XcmsQueryRed)
* [XcmsQueryWhite](#XcmsQueryWhite)
* [XcmsScreenNumberOfCCC](#XcmsScreenNumberOfCCC)
* [XcmsScreenWhitePointOfCCC](#XcmsScreenWhitePointOfCCC)
* [XcmsSetCCCOfColormap](#XcmsSetCCCOfColormap)
* [XcmsSetCompressionProc](#XcmsSetCompressionProc)
* [XcmsSetWhiteAdjustProc](#XcmsSetWhiteAdjustProc)
* [XcmsSetWhitePoint](#XcmsSetWhitePoint)
* [XcmsStoreColor](#XcmsStoreColor)
* [XcmsStoreColors](#XcmsStoreColors)
* [XcmsTekHVCClipC](#XcmsTekHVCClipC)
* [XcmsTekHVCClipV](#XcmsTekHVCClipV)
* [XcmsTekHVCClipVC](#XcmsTekHVCClipVC)
* [XcmsTekHVCQueryMaxC](#XcmsTekHVCQueryMaxC)
* [XcmsTekHVCQueryMaxV](#XcmsTekHVCQueryMaxV)
* [XcmsTekHVCQueryMaxVC](#XcmsTekHVCQueryMaxVC)
* [XcmsTekHVCQueryMaxVSamples](#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCQueryMinV](#XcmsTekHVCQueryMinV)
* [XcmsTekHVCWhiteShiftColors](#XcmsTekHVCWhiteShiftColors)
* [XcmsVisualOfCCC](#XcmsVisualOfCCC)
* [XkbGetKeySyms](#XkbGetKeySyms)
* [XkbGetMap](#XkbGetMap)
* [XkbGetState](#XkbGetState)
* [XkbGetUpdatedMap](#XkbGetUpdatedMap)
* [XkbQueryExtension](#XkbQueryExtension)
* [XkbSelectEvents](#XkbSelectEvents)
* [XkbSetDetectableAutoRepeat](#XkbSetDetectableAutoRepeat)
* [XkbUseExtension](#XkbUseExtension)
* [XorRegion](#XorRegion)
* [XrmGetResource](#XrmGetResource)
* [XrmGetStringDatabase](#XrmGetStringDatabase)
* [XrmInitialize](#XrmInitialize)
* [Xutf8LookupString](#Xutf8LookupString)
* [cursorGetDefaultSize](#cursorGetDefaultSize)
* [cursorGetTheme](#cursorGetTheme)
* [cursorImageCreate](#cursorImageCreate)
* [cursorImageDestroy](#cursorImageDestroy)
* [cursorImageLoadCursor](#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](#cursorLibraryLoadCursor)
* [cursorLibraryLoadImage](#cursorLibraryLoadImage)
* [mbSetWMProperties](#mbSetWMProperties)
* [utf8SetWMProperties](#utf8SetWMProperties)

Procedure Groups (0)

This section is empty.

## Types

### [AccessControlMode ¶](#AccessControlMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L636)

```
AccessControlMode :: enum i32 {
	DisableAccess = 0, 
	EnableAccess  = 1, 
}
```

##### Related Procedures With Parameters

* [SetAccessControl](/vendor/x11/xlib/#SetAccessControl)

### [AllowEventsMode ¶](#AllowEventsMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L646)

```
AllowEventsMode :: enum i32 {
	AsyncPointer   = 0, 
	SyncPointer    = 1, 
	ReplayPointer  = 2, 
	AsyncKeyboard  = 3, 
	SyncKeyboard   = 4, 
	ReplayKeyboard = 5, 
	AsyncBoth      = 6, 
	SyncBoth       = 7, 
}
```

##### Related Procedures With Parameters

* [AllowEvents](/vendor/x11/xlib/#AllowEvents)

### [ArcMode ¶](#ArcMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L581)

```
ArcMode :: enum i32 {
	ArcChord    = 0, 
	ArcPieSlice = 1, 
}
```

##### Related Procedures With Parameters

* [SetArcMode](/vendor/x11/xlib/#SetArcMode)

### [Atom ¶](#Atom) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L15)

```
Atom :: distinct uint
```

##### Related Procedures With Parameters

* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [GetAtomName](/vendor/x11/xlib/#GetAtomName)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)



##### Related Procedures With Returns

* [InternAtom](/vendor/x11/xlib/#InternAtom)
* [ListProperties](/vendor/x11/xlib/#ListProperties)

##### Related Constants

* [XA\_ATOM](/vendor/x11/xlib/#XA_ATOM)
* [XA\_WM\_CLASS](/vendor/x11/xlib/#XA_WM_CLASS)
* [XA\_WM\_CLIENT\_MACHINE](/vendor/x11/xlib/#XA_WM_CLIENT_MACHINE)
* [XA\_WM\_COMMAND](/vendor/x11/xlib/#XA_WM_COMMAND)
* [XA\_WM\_HINTS](/vendor/x11/xlib/#XA_WM_HINTS)
* [XA\_WM\_ICON\_NAME](/vendor/x11/xlib/#XA_WM_ICON_NAME)
* [XA\_WM\_ICON\_SIZE](/vendor/x11/xlib/#XA_WM_ICON_SIZE)
* [XA\_WM\_NAME](/vendor/x11/xlib/#XA_WM_NAME)
* [XA\_WM\_NORMAL\_HINTS](/vendor/x11/xlib/#XA_WM_NORMAL_HINTS)
* [XA\_WM\_SIZE\_HINTS](/vendor/x11/xlib/#XA_WM_SIZE_HINTS)
* [XA\_WM\_TRANSIENT\_FOR](/vendor/x11/xlib/#XA_WM_TRANSIENT_FOR)
* [XA\_WM\_ZOOM\_HINTS](/vendor/x11/xlib/#XA_WM_ZOOM_HINTS)

### [BackingStore ¶](#BackingStore) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L178)

```
BackingStore :: enum i32 {
	NotUseful  = 0, 
	WhenMapped = 1, 
	Always     = 2, 
}
```

##### Related Procedures With Returns

* [DoesBackingStore](/vendor/x11/xlib/#DoesBackingStore)

### [ByteOrder ¶](#ByteOrder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L158)

```
ByteOrder :: enum i32 {
	LSBFirst = 0, 
	MSBFirst = 1, 
}
```

##### Related Procedures With Returns

* [BitmapBitOrder](/vendor/x11/xlib/#BitmapBitOrder)
* [ImageByteOrder](/vendor/x11/xlib/#ImageByteOrder)

### [CapStyle ¶](#CapStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L556)

```
CapStyle :: enum i32 {
	CapNotLast    = 0, 
	CapButt       = 1, 
	CapRound      = 2, 
	CapProjecting = 3, 
}
```

##### Related Procedures With Parameters

* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)

### [CirculationDirection ¶](#CirculationDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L372)

```
CirculationDirection :: enum i32 {
	RaiseLowest  = 0, 
	LowerHighest = 1, 
}
```

##### Related Procedures With Parameters

* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)

### [CirculationRequest ¶](#CirculationRequest) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L377)

```
CirculationRequest :: enum i32 {
	PlaceOnTop    = 0, 
	PlaceOnBottom = 1, 
}
```

### [CloseMode ¶](#CloseMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L316)

```
CloseMode :: enum i32 {
	DestroyAll      = 0, 
	RetainPermanent = 1, 
	RetainTemporary = 2, 
}
```

##### Related Procedures With Parameters

* [SetCloseDownMode](/vendor/x11/xlib/#SetCloseDownMode)

### [ColorFlags ¶](#ColorFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L497)

```
ColorFlags :: bit_set[ColorFlagsBits; i32]
```

##### Related Procedures With Parameters

* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)

### [ColorFlagsBits ¶](#ColorFlagsBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L498)

```
ColorFlagsBits :: enum int {
	DoRed   = 0, 
	DoGreen = 1, 
	DoBlue  = 2, 
}
```

### [ColorFormat ¶](#ColorFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L480)

```
ColorFormat :: enum u32 {
	XcmsUndefinedFormat = 0, 
	XcmsCIEXYZFormat    = 1, 
	XcmsCIEuvYFormat    = 2, 
	XcmsCIExyYFormat    = 3, 
	XcmsCIELabFormat    = 4, 
	XcmsCIELuvFormat    = 5, 
	XcmsTekHVCFormat    = 6, 
	XcmsRGBFormat       = 2147483648, 
	XcmsRGBiFormat      = 2147483649, 
}
```

### [Colormap ¶](#Colormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L24)

```
Colormap :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [ColormapAlloc ¶](#ColormapAlloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L492)

```
ColormapAlloc :: enum i32 {
	AllocNone = 0, 
	AllocAll  = 1, 
}
```

##### Related Procedures With Parameters

* [CreateColormap](/vendor/x11/xlib/#CreateColormap)

### [ColormapState ¶](#ColormapState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L306)

```
ColormapState :: enum i32 {
	ColormapUninstalled = 0, 
	ColormapInstalled   = 1, 
}
```

### [Connection ¶](#Connection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2101)

```
Connection :: enum u16 {
	RR_Connected         = 0, 
	RR_Disconnected      = 1, 
	RR_UnknownConnection = 2, 
}
```

### [CoordMode ¶](#CoordMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L591)

```
CoordMode :: enum i32 {
	CoordModeOrigin   = 0, 
	CoordModePrevious = 1, 
}
```

##### Related Procedures With Parameters

* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)

### [Cursor ¶](#Cursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L23)

```
Cursor :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [CursorDim ¶](#CursorDim) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2261)

```
CursorDim :: u32
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [Permalloc](/vendor/x11/xlib/#Permalloc)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryKeymap](/vendor/x11/xlib/#QueryKeymap)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [XcmsCIELabClipL](/vendor/x11/xlib/#XcmsCIELabClipL)
* [XcmsCIELabClipLab](/vendor/x11/xlib/#XcmsCIELabClipLab)
* [XcmsCIELabClipab](/vendor/x11/xlib/#XcmsCIELabClipab)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvClipL](/vendor/x11/xlib/#XcmsCIELuvClipL)
* [XcmsCIELuvClipLuv](/vendor/x11/xlib/#XcmsCIELuvClipLuv)
* [XcmsCIELuvClipuv](/vendor/x11/xlib/#XcmsCIELuvClipuv)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsTekHVCClipC](/vendor/x11/xlib/#XcmsTekHVCClipC)
* [XcmsTekHVCClipV](/vendor/x11/xlib/#XcmsTekHVCClipV)
* [XcmsTekHVCClipVC](/vendor/x11/xlib/#XcmsTekHVCClipVC)
* [XcmsTekHVCQueryMaxVSamples](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)
* [XkbGetKeySyms](/vendor/x11/xlib/#XkbGetKeySyms)
* [XkbGetState](/vendor/x11/xlib/#XkbGetState)
* [XkbSelectEvents](/vendor/x11/xlib/#XkbSelectEvents)

### [CursorImage ¶](#CursorImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2263)

```
CursorImage :: struct {
	version: u32,
	size:    u32,
	width:   u32,
	height:  u32,
	xhot:    u32,
	yhot:    u32,
	delay:   u32,
	pixels:  ^u32,
}
```

##### Related Procedures With Parameters

* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)



##### Related Procedures With Returns

* [cursorImageCreate](/vendor/x11/xlib/#cursorImageCreate)

### [CursorPixel ¶](#CursorPixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2262)

```
CursorPixel :: u32
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [Permalloc](/vendor/x11/xlib/#Permalloc)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryKeymap](/vendor/x11/xlib/#QueryKeymap)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [XcmsCIELabClipL](/vendor/x11/xlib/#XcmsCIELabClipL)
* [XcmsCIELabClipLab](/vendor/x11/xlib/#XcmsCIELabClipLab)
* [XcmsCIELabClipab](/vendor/x11/xlib/#XcmsCIELabClipab)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvClipL](/vendor/x11/xlib/#XcmsCIELuvClipL)
* [XcmsCIELuvClipLuv](/vendor/x11/xlib/#XcmsCIELuvClipLuv)
* [XcmsCIELuvClipuv](/vendor/x11/xlib/#XcmsCIELuvClipuv)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsTekHVCClipC](/vendor/x11/xlib/#XcmsTekHVCClipC)
* [XcmsTekHVCClipV](/vendor/x11/xlib/#XcmsTekHVCClipV)
* [XcmsTekHVCClipVC](/vendor/x11/xlib/#XcmsTekHVCClipVC)
* [XcmsTekHVCQueryMaxVSamples](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)
* [XkbGetKeySyms](/vendor/x11/xlib/#XkbGetKeySyms)
* [XkbGetState](/vendor/x11/xlib/#XkbGetState)
* [XkbSelectEvents](/vendor/x11/xlib/#XkbSelectEvents)

### [CursorShape ¶](#CursorShape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L399)

```
CursorShape :: enum u32 {
	XC_X_cursor            = 0, 
	XC_arrow               = 2, 
	XC_based_arrow_down    = 4, 
	XC_based_arrow_up      = 6, 
	XC_boat                = 8, 
	XC_bogosity            = 10, 
	XC_bottom_left_corner  = 12, 
	XC_bottom_right_corner = 14, 
	XC_bottom_side         = 16, 
	XC_bottom_tee          = 18, 
	XC_box_spiral          = 20, 
	XC_center_ptr          = 22, 
	XC_circle              = 24, 
	XC_clock               = 26, 
	XC_coffee_mug          = 28, 
	XC_cross               = 30, 
	XC_cross_reverse       = 32, 
	XC_crosshair           = 34, 
	XC_diamond_cross       = 36, 
	XC_dot                 = 38, 
	XC_dotbox              = 40, 
	XC_double_arrow        = 42, 
	XC_draft_large         = 44, 
	XC_draft_small         = 46, 
	XC_draped_box          = 48, 
	XC_exchange            = 50, 
	XC_fleur               = 52, 
	XC_gobbler             = 54, 
	XC_gumby               = 56, 
	XC_hand1               = 58, 
	XC_hand2               = 60, 
	XC_heart               = 62, 
	XC_icon                = 64, 
	XC_iron_cross          = 66, 
	XC_left_ptr            = 68, 
	XC_left_side           = 70, 
	XC_left_tee            = 72, 
	XC_leftbutton          = 74, 
	XC_ll_angle            = 76, 
	XC_lr_angle            = 78, 
	XC_man                 = 80, 
	XC_middlebutton        = 82, 
	XC_mouse               = 84, 
	XC_pencil              = 86, 
	XC_pirate              = 88, 
	XC_plus                = 90, 
	XC_question_arrow      = 92, 
	XC_right_ptr           = 94, 
	XC_right_side          = 96, 
	XC_right_tee           = 98, 
	XC_rightbutton         = 100, 
	XC_rtl_logo            = 102, 
	XC_sailboat            = 104, 
	XC_sb_down_arrow       = 106, 
	XC_sb_h_double_arrow   = 108, 
	XC_sb_left_arrow       = 110, 
	XC_sb_right_arrow      = 112, 
	XC_sb_up_arrow         = 114, 
	XC_sb_v_double_arrow   = 116, 
	XC_shuttle             = 118, 
	XC_sizing              = 120, 
	XC_spider              = 122, 
	XC_spraycan            = 124, 
	XC_star                = 126, 
	XC_target              = 128, 
	XC_tcross              = 130, 
	XC_top_left_arrow      = 132, 
	XC_top_left_corner     = 134, 
	XC_top_right_corner    = 136, 
	XC_top_side            = 138, 
	XC_top_tee             = 140, 
	XC_trek                = 142, 
	XC_ul_angle            = 144, 
	XC_umbrella            = 146, 
	XC_ur_angle            = 148, 
	XC_watch               = 150, 
	XC_xterm               = 152, 
	XC_num_glyphs          = 154, 
}
```

##### Related Procedures With Parameters

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)

### [CursorUInt ¶](#CursorUInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2260)

```
CursorUInt :: u32
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [Permalloc](/vendor/x11/xlib/#Permalloc)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryKeymap](/vendor/x11/xlib/#QueryKeymap)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [XcmsCIELabClipL](/vendor/x11/xlib/#XcmsCIELabClipL)
* [XcmsCIELabClipLab](/vendor/x11/xlib/#XcmsCIELabClipLab)
* [XcmsCIELabClipab](/vendor/x11/xlib/#XcmsCIELabClipab)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvClipL](/vendor/x11/xlib/#XcmsCIELuvClipL)
* [XcmsCIELuvClipLuv](/vendor/x11/xlib/#XcmsCIELuvClipLuv)
* [XcmsCIELuvClipuv](/vendor/x11/xlib/#XcmsCIELuvClipuv)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsTekHVCClipC](/vendor/x11/xlib/#XcmsTekHVCClipC)
* [XcmsTekHVCClipV](/vendor/x11/xlib/#XcmsTekHVCClipV)
* [XcmsTekHVCClipVC](/vendor/x11/xlib/#XcmsTekHVCClipVC)
* [XcmsTekHVCQueryMaxVSamples](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)
* [XkbGetKeySyms](/vendor/x11/xlib/#XkbGetKeySyms)
* [XkbGetState](/vendor/x11/xlib/#XkbGetState)
* [XkbSelectEvents](/vendor/x11/xlib/#XkbSelectEvents)

### [Depth ¶](#Depth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L94)

```
Depth :: struct {
	depth:    i32,
	nvisuals: i32,
	visuals:  ^Visual,
}
```

### [Display ¶](#Display) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L305)

```
Display :: struct {}
```

##### Related Procedures With Parameters

* [ActivateScreenSaver](/vendor/x11/xlib/#ActivateScreenSaver)
* [AddConnectionWatch](/vendor/x11/xlib/#AddConnectionWatch)
* [AddHost](/vendor/x11/xlib/#AddHost)
* [AddHosts](/vendor/x11/xlib/#AddHosts)
* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [AllowEvents](/vendor/x11/xlib/#AllowEvents)
* [AutoRepeatOff](/vendor/x11/xlib/#AutoRepeatOff)
* [AutoRepeatOn](/vendor/x11/xlib/#AutoRepeatOn)
* [Bell](/vendor/x11/xlib/#Bell)
* [BitmapBitOrder](/vendor/x11/xlib/#BitmapBitOrder)
* [BitmapPad](/vendor/x11/xlib/#BitmapPad)
* [BitmapUnit](/vendor/x11/xlib/#BitmapUnit)
* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeGC](/vendor/x11/xlib/#ChangeGC)
* [ChangeKeyboardControl](/vendor/x11/xlib/#ChangeKeyboardControl)
* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [ChangePointerControl](/vendor/x11/xlib/#ChangePointerControl)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckIfEvent](/vendor/x11/xlib/#CheckIfEvent)
* [CheckMaskEvent](/vendor/x11/xlib/#CheckMaskEvent)
* [CheckTypedEvent](/vendor/x11/xlib/#CheckTypedEvent)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [CloseDisplay](/vendor/x11/xlib/#CloseDisplay)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConnectionNumber](/vendor/x11/xlib/#ConnectionNumber)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyGC](/vendor/x11/xlib/#CopyGC)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultDepth](/vendor/x11/xlib/#DefaultDepth)
* [DefaultGC](/vendor/x11/xlib/#DefaultGC)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [DefaultScreen](/vendor/x11/xlib/#DefaultScreen)
* [DefaultScreenOfDisplay](/vendor/x11/xlib/#DefaultScreenOfDisplay)
* [DefaultVisual](/vendor/x11/xlib/#DefaultVisual)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DisableAccessControl](/vendor/x11/xlib/#DisableAccessControl)
* [DisplayCells](/vendor/x11/xlib/#DisplayCells)
* [DisplayHeight](/vendor/x11/xlib/#DisplayHeight)
* [DisplayHeightMM](/vendor/x11/xlib/#DisplayHeightMM)
* [DisplayKeycodes](/vendor/x11/xlib/#DisplayKeycodes)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [DisplayPlanes](/vendor/x11/xlib/#DisplayPlanes)
* [DisplayString](/vendor/x11/xlib/#DisplayString)
* [DisplayWidth](/vendor/x11/xlib/#DisplayWidth)
* [DisplayWidthMM](/vendor/x11/xlib/#DisplayWidthMM)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [EnableAccessControl](/vendor/x11/xlib/#EnableAccessControl)
* [EventsQueued](/vendor/x11/xlib/#EventsQueued)
* [ExtendedMaxRequestSize](/vendor/x11/xlib/#ExtendedMaxRequestSize)
* [FetchBuffer](/vendor/x11/xlib/#FetchBuffer)
* [FetchBytes](/vendor/x11/xlib/#FetchBytes)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [Flush](/vendor/x11/xlib/#Flush)
* [FlushGC](/vendor/x11/xlib/#FlushGC)
* [ForceScreenSaver](/vendor/x11/xlib/#ForceScreenSaver)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreeEventData](/vendor/x11/xlib/#FreeEventData)
* [FreeFont](/vendor/x11/xlib/#FreeFont)
* [FreeFontNames](/vendor/x11/xlib/#FreeFontNames)
* [FreeGC](/vendor/x11/xlib/#FreeGC)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetAtomName](/vendor/x11/xlib/#GetAtomName)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetErrorText](/vendor/x11/xlib/#GetErrorText)
* [GetEventData](/vendor/x11/xlib/#GetEventData)
* [GetFontPath](/vendor/x11/xlib/#GetFontPath)
* [GetGCValues](/vendor/x11/xlib/#GetGCValues)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetKeyboardControl](/vendor/x11/xlib/#GetKeyboardControl)
* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [GetModifierMapping](/vendor/x11/xlib/#GetModifierMapping)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetPointerControl](/vendor/x11/xlib/#GetPointerControl)
* [GetPointerMapping](/vendor/x11/xlib/#GetPointerMapping)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [GrabServer](/vendor/x11/xlib/#GrabServer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [IfEvent](/vendor/x11/xlib/#IfEvent)
* [ImageByteOrder](/vendor/x11/xlib/#ImageByteOrder)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [InternAtom](/vendor/x11/xlib/#InternAtom)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [KeysymToKeycode](/vendor/x11/xlib/#KeysymToKeycode)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [ListDepths](/vendor/x11/xlib/#ListDepths)
* [ListFonts](/vendor/x11/xlib/#ListFonts)
* [ListFontsWithInfo](/vendor/x11/xlib/#ListFontsWithInfo)
* [ListHosts](/vendor/x11/xlib/#ListHosts)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListPixmapFormats](/vendor/x11/xlib/#ListPixmapFormats)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [LoadQueryFont](/vendor/x11/xlib/#LoadQueryFont)
* [LockDisplay](/vendor/x11/xlib/#LockDisplay)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MaskEvent](/vendor/x11/xlib/#MaskEvent)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)
* [MaxRequestSize](/vendor/x11/xlib/#MaxRequestSize)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [NextEvent](/vendor/x11/xlib/#NextEvent)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [NoOp](/vendor/x11/xlib/#NoOp)
* [OpenIM](/vendor/x11/xlib/#OpenIM)
* [PeekEvent](/vendor/x11/xlib/#PeekEvent)
* [PeekIfEvent](/vendor/x11/xlib/#PeekIfEvent)
* [Pending](/vendor/x11/xlib/#Pending)
* [ProcessInternalConnections](/vendor/x11/xlib/#ProcessInternalConnections)
* [ProtocolRevision](/vendor/x11/xlib/#ProtocolRevision)
* [ProtocolVersion](/vendor/x11/xlib/#ProtocolVersion)
* [PutBackEvent](/vendor/x11/xlib/#PutBackEvent)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QLength](/vendor/x11/xlib/#QLength)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryExtension](/vendor/x11/xlib/#QueryExtension)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryKeymap](/vendor/x11/xlib/#QueryKeymap)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveConnectionWatch](/vendor/x11/xlib/#RemoveConnectionWatch)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [RemoveHost](/vendor/x11/xlib/#RemoveHost)
* [RemoveHosts](/vendor/x11/xlib/#RemoveHosts)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResetScreenSaver](/vendor/x11/xlib/#ResetScreenSaver)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [ResourceManagerString](/vendor/x11/xlib/#ResourceManagerString)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [ScreenCount](/vendor/x11/xlib/#ScreenCount)
* [ScreenOfDisplay](/vendor/x11/xlib/#ScreenOfDisplay)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [ServerVendor](/vendor/x11/xlib/#ServerVendor)
* [SetAccessControl](/vendor/x11/xlib/#SetAccessControl)
* [SetAfterFunction](/vendor/x11/xlib/#SetAfterFunction)
* [SetArcMode](/vendor/x11/xlib/#SetArcMode)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetClipOrigin](/vendor/x11/xlib/#SetClipOrigin)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [SetCloseDownMode](/vendor/x11/xlib/#SetCloseDownMode)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetDashes](/vendor/x11/xlib/#SetDashes)
* [SetFillRule](/vendor/x11/xlib/#SetFillRule)
* [SetFillStyle](/vendor/x11/xlib/#SetFillStyle)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetFontPath](/vendor/x11/xlib/#SetFontPath)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetFunction](/vendor/x11/xlib/#SetFunction)
* [SetGraphicsExposures](/vendor/x11/xlib/#SetGraphicsExposures)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)
* [SetModifierMapping](/vendor/x11/xlib/#SetModifierMapping)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetPointerMapping](/vendor/x11/xlib/#SetPointerMapping)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetRegion](/vendor/x11/xlib/#SetRegion)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetSubwindowMode](/vendor/x11/xlib/#SetSubwindowMode)
* [SetTSOrigin](/vendor/x11/xlib/#SetTSOrigin)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreBuffer](/vendor/x11/xlib/#StoreBuffer)
* [StoreBytes](/vendor/x11/xlib/#StoreBytes)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [Sync](/vendor/x11/xlib/#Sync)
* [Synchronize](/vendor/x11/xlib/#Synchronize)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UngrabKeyboard](/vendor/x11/xlib/#UngrabKeyboard)
* [UngrabPointer](/vendor/x11/xlib/#UngrabPointer)
* [UngrabServer](/vendor/x11/xlib/#UngrabServer)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnlockDisplay](/vendor/x11/xlib/#UnlockDisplay)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [VendorRelease](/vendor/x11/xlib/#VendorRelease)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XIQueryVersion](/vendor/x11/xlib/#XIQueryVersion)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XRRSizes](/vendor/x11/xlib/#XRRSizes)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsDefaultCCC](/vendor/x11/xlib/#XcmsDefaultCCC)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [XkbGetKeySyms](/vendor/x11/xlib/#XkbGetKeySyms)
* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)
* [XkbGetState](/vendor/x11/xlib/#XkbGetState)
* [XkbGetUpdatedMap](/vendor/x11/xlib/#XkbGetUpdatedMap)
* [XkbQueryExtension](/vendor/x11/xlib/#XkbQueryExtension)
* [XkbSelectEvents](/vendor/x11/xlib/#XkbSelectEvents)
* [XkbSetDetectableAutoRepeat](/vendor/x11/xlib/#XkbSetDetectableAutoRepeat)
* [XkbUseExtension](/vendor/x11/xlib/#XkbUseExtension)
* [cursorGetDefaultSize](/vendor/x11/xlib/#cursorGetDefaultSize)
* [cursorGetTheme](/vendor/x11/xlib/#cursorGetTheme)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [DisplayOfScreen](/vendor/x11/xlib/#DisplayOfScreen)
* [OpenDisplay](/vendor/x11/xlib/#OpenDisplay)
* [XcmsDisplayOfCCC](/vendor/x11/xlib/#XcmsDisplayOfCCC)

### [Drawable ¶](#Drawable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L20)

```
Drawable :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [EventMask ¶](#EventMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L192)

```
EventMask :: bit_set[EventMaskBits; int]
```

##### Related Procedures With Parameters

* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [CheckMaskEvent](/vendor/x11/xlib/#CheckMaskEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [MaskEvent](/vendor/x11/xlib/#MaskEvent)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)



##### Related Procedures With Returns

* [EventMaskOfScreen](/vendor/x11/xlib/#EventMaskOfScreen)

### [EventMaskBits ¶](#EventMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L193)

```
EventMaskBits :: enum i32 {
	KeyPress             = 0, 
	KeyRelease           = 1, 
	ButtonPress          = 2, 
	ButtonRelease        = 3, 
	EnterWindow          = 4, 
	LeaveWindow          = 5, 
	PointerMotion        = 6, 
	PointerMotionHint    = 7, 
	Button1Motion        = 8, 
	Button2Motion        = 9, 
	Button3Motion        = 10, 
	Button4Motion        = 11, 
	Button5Motion        = 12, 
	ButtonMotion         = 13, 
	KeymapState          = 14, 
	Exposure             = 15, 
	VisibilityChange     = 16, 
	StructureNotify      = 17, 
	ResizeRedirect       = 18, 
	SubstructureNotify   = 19, 
	SubstructureRedirect = 20, 
	FocusChange          = 21, 
	PropertyChange       = 22, 
	ColormapChange       = 23, 
	OwnerGrabButton      = 24, 
}
```

### [EventQueueMode ¶](#EventQueueMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L322)

```
EventQueueMode :: enum i32 {
	QueuedAlready      = 0, 
	QueuedAfterReading = 1, 
	QueuedAfterFlush   = 2, 
}
```

##### Related Procedures With Parameters

* [EventsQueued](/vendor/x11/xlib/#EventsQueued)

### [EventType ¶](#EventType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L221)

```
EventType :: enum i32 {
	KeyPress         = 2, 
	KeyRelease       = 3, 
	ButtonPress      = 4, 
	ButtonRelease    = 5, 
	MotionNotify     = 6, 
	EnterNotify      = 7, 
	LeaveNotify      = 8, 
	FocusIn          = 9, 
	FocusOut         = 10, 
	KeymapNotify     = 11, 
	Expose           = 12, 
	GraphicsExpose   = 13, 
	NoExpose         = 14, 
	VisibilityNotify = 15, 
	CreateNotify     = 16, 
	DestroyNotify    = 17, 
	UnmapNotify      = 18, 
	MapNotify        = 19, 
	MapRequest       = 20, 
	ReparentNotify   = 21, 
	ConfigureNotify  = 22, 
	ConfigureRequest = 23, 
	GravityNotify    = 24, 
	ResizeRequest    = 25, 
	CirculateNotify  = 26, 
	CirculateRequest = 27, 
	PropertyNotify   = 28, 
	SelectionClear   = 29, 
	SelectionRequest = 30, 
	SelectionNotify  = 31, 
	ColormapNotify   = 32, 
	ClientMessage    = 33, 
	MappingNotify    = 34, 
	GenericEvent     = 35, 
}
```

##### Related Procedures With Parameters

* [CheckTypedEvent](/vendor/x11/xlib/#CheckTypedEvent)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)

### [FillRule ¶](#FillRule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L576)

```
FillRule :: enum i32 {
	EvenOddRule = 0, 
	WindingRule = 1, 
}
```

##### Related Procedures With Parameters

* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)
* [SetFillRule](/vendor/x11/xlib/#SetFillRule)

### [FillStyle ¶](#FillStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L569)

```
FillStyle :: enum i32 {
	FillSolid          = 0, 
	FillTiled          = 1, 
	FillStippled       = 2, 
	FillOpaqueStippled = 3, 
}
```

##### Related Procedures With Parameters

* [SetFillStyle](/vendor/x11/xlib/#SetFillStyle)

### [FocusRevert ¶](#FocusRevert) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L657)

```
FocusRevert :: enum i32 {
	RevertToNone        = 0, 
	RevertToPointerRoot = 1, 
	RevertToParent      = 2, 
}
```

##### Related Procedures With Parameters

* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)

### [Font ¶](#Font) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L21)

```
Font :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [FontDirection ¶](#FontDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L602)

```
FontDirection :: enum i32 {
	FontLeftToRight = 0, 
	FontRightToLeft = 1, 
}
```

##### Related Procedures With Parameters

* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)

### [GC ¶](#GC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L81)

```
GC :: distinct rawptr
```

##### Related Procedures With Parameters

* [ChangeGC](/vendor/x11/xlib/#ChangeGC)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyGC](/vendor/x11/xlib/#CopyGC)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FlushGC](/vendor/x11/xlib/#FlushGC)
* [FreeGC](/vendor/x11/xlib/#FreeGC)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetGCValues](/vendor/x11/xlib/#GetGCValues)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [SetArcMode](/vendor/x11/xlib/#SetArcMode)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetClipOrigin](/vendor/x11/xlib/#SetClipOrigin)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [SetDashes](/vendor/x11/xlib/#SetDashes)
* [SetFillRule](/vendor/x11/xlib/#SetFillRule)
* [SetFillStyle](/vendor/x11/xlib/#SetFillStyle)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetFunction](/vendor/x11/xlib/#SetFunction)
* [SetGraphicsExposures](/vendor/x11/xlib/#SetGraphicsExposures)
* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetRegion](/vendor/x11/xlib/#SetRegion)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetSubwindowMode](/vendor/x11/xlib/#SetSubwindowMode)
* [SetTSOrigin](/vendor/x11/xlib/#SetTSOrigin)
* [SetTile](/vendor/x11/xlib/#SetTile)



##### Related Procedures With Returns

* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [DefaultGC](/vendor/x11/xlib/#DefaultGC)
* [DefaultGCOfScreen](/vendor/x11/xlib/#DefaultGCOfScreen)

### [GCAttributeMask ¶](#GCAttributeMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L504)

```
GCAttributeMask :: bit_set[GCAttributeMaskBits; uint]
```

##### Related Procedures With Parameters

* [ChangeGC](/vendor/x11/xlib/#ChangeGC)
* [CopyGC](/vendor/x11/xlib/#CopyGC)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [GetGCValues](/vendor/x11/xlib/#GetGCValues)

### [GCAttributeMaskBits ¶](#GCAttributeMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L505)

```
GCAttributeMaskBits :: enum int {
	GCFunction          = 0, 
	GCPlaneMask         = 1, 
	GCForeground        = 2, 
	GCBackground        = 3, 
	GCLineWidth         = 4, 
	GCLineStyle         = 5, 
	GCCapStyle          = 6, 
	GCJoinStyle         = 7, 
	GCFillStyle         = 8, 
	GCFillRule          = 9, 
	GCTile              = 10, 
	GCStipple           = 11, 
	GCTileStipXOrigin   = 12, 
	GCTileStipYOrigin   = 13, 
	GCFont              = 14, 
	GCSubwindowMode     = 15, 
	GCGraphicsExposures = 16, 
	GCClipXOrigin       = 17, 
	GCClipYOrigin       = 18, 
	GCClipMask          = 19, 
	GCDashOffset        = 20, 
	GCDashList          = 21, 
	GCArcMode           = 22, 
}
```

### [GCFunction ¶](#GCFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L531)

```
GCFunction :: enum i32 {
	GXclear        = 0,  // 0
	GXand          = 1,  // src & dst
	GXandReverse   = 2,  // src & ~dst
	GXcopy         = 3,  // src
	GXandInverted  = 4,  // ~src & dst
	GXnoop         = 5,  // dst
	GXxor          = 6,  // src ~ dst
	GXor           = 7,  // src | dst
	GXnor          = 8,  // ~src & ~dst
	GXequiv        = 9,  // ~src ~ dst
	GXinvert       = 10, // ~dst
	GXorReverse    = 11, // src | ~dst
	GXcopyInverted = 12, // ~src
	GXorInverted   = 13, // ~src | dst
	GXnand         = 14, // ~src | ~dst
	GXset          = 15, // 1
}
```

##### Related Procedures With Parameters

* [SetFunction](/vendor/x11/xlib/#SetFunction)
* [SetState](/vendor/x11/xlib/#SetState)

### [GContext ¶](#GContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L25)

```
GContext :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [GrabMode ¶](#GrabMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L641)

```
GrabMode :: enum i32 {
	GrabModeSync  = 0, 
	GrabModeAsync = 1, 
}
```

##### Related Procedures With Parameters

* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)

### [Gravity ¶](#Gravity) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L163)

```
Gravity :: enum i32 {
	ForgetGravity    = 0, 
	UnmapGravity     = 0, 
	NorthWestGravity = 1, 
	NorthGravity     = 2, 
	NorthEastGravity = 3, 
	WestGravity      = 4, 
	CenterGravity    = 5, 
	EastGravity      = 6, 
	SouthWestGravity = 7, 
	SouthGravity     = 8, 
	SouthEastGravity = 9, 
	StaticGravity    = 10, 
}
```

##### Related Procedures With Parameters

* [WMGeometry](/vendor/x11/xlib/#WMGeometry)

### [ImageFormat ¶](#ImageFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L607)

```
ImageFormat :: enum i32 {
	XYBitmap = 0, 
	XYPixmap = 1, 
	ZPixmap  = 2, 
}
```

##### Related Procedures With Parameters

* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)

### [InputMask ¶](#InputMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L258)

```
InputMask :: bit_set[InputMaskBits; i32]
```

##### Related Procedures With Parameters

* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)

### [InputMaskBits ¶](#InputMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L259)

```
InputMaskBits :: enum int {
	ShiftMask   = 0, 
	LockMask    = 1, 
	ControlMask = 2, 
	Mod1Mask    = 3, 
	Mod2Mask    = 4, 
	Mod3Mask    = 5, 
	Mod4Mask    = 6, 
	Mod5Mask    = 7, 
	Button1Mask = 8, 
	Button2Mask = 9, 
	Button3Mask = 10, 
	Button4Mask = 11, 
	Button5Mask = 12, 
	AnyModifier = 15, 
}
```

### [JoinStyle ¶](#JoinStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L563)

```
JoinStyle :: enum i32 {
	JoinMiter = 0, 
	JoinRound = 1, 
	JoinBevel = 2, 
}
```

##### Related Procedures With Parameters

* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)

### [KeyCode ¶](#KeyCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L31)

```
KeyCode :: u8
```

##### Related Procedures With Parameters

* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [DeleteModifiermapEntry](/vendor/x11/xlib/#DeleteModifiermapEntry)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetErrorText](/vendor/x11/xlib/#GetErrorText)
* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [GetPointerMapping](/vendor/x11/xlib/#GetPointerMapping)
* [InsertModifiermapEntry](/vendor/x11/xlib/#InsertModifiermapEntry)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [SetPointerMapping](/vendor/x11/xlib/#SetPointerMapping)
* [StoreBuffer](/vendor/x11/xlib/#StoreBuffer)
* [StoreBytes](/vendor/x11/xlib/#StoreBytes)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextWidth](/vendor/x11/xlib/#TextWidth)
* [XIMaskIsSet](/vendor/x11/xlib/#XIMaskIsSet)
* [XISetMask](/vendor/x11/xlib/#XISetMask)



##### Related Procedures With Returns

* [FetchBuffer](/vendor/x11/xlib/#FetchBuffer)
* [FetchBytes](/vendor/x11/xlib/#FetchBytes)
* [KeysymToKeycode](/vendor/x11/xlib/#KeysymToKeycode)

### [KeyMask ¶](#KeyMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L388)

```
KeyMask :: enum u32 {
	ShiftMask   = 0, 
	LockMask    = 1, 
	ControlMask = 2, 
	Mod1Mask    = 3, 
	Mod2Mask    = 4, 
	Mod3Mask    = 5, 
	Mod4Mask    = 6, 
	Mod5Mask    = 7, 
}
```

##### Related Procedures With Parameters

* [QueryPointer](/vendor/x11/xlib/#QueryPointer)

### [KeySym ¶](#KeySym) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_keysym.odin#L4)

```
KeySym :: enum uint {
	XK_BackSpace                   = 65288,    // Back space, back char
	XK_Tab                         = 65289, 
	XK_Linefeed                    = 65290,    // Linefeed, LF
	XK_Clear                       = 65291, 
	XK_Return                      = 65293,    // Return, enter
	XK_Pause                       = 65299,    // Pause, hold
	XK_Scroll_Lock                 = 65300, 
	XK_Sys_Req                     = 65301, 
	XK_Escape                      = 65307, 
	XK_Delete                      = 65535,    // Delete, rubout
	XK_Multi_key                   = 65312,    // Multi-key character compose
	XK_Codeinput                   = 65335, 
	XK_SingleCandidate             = 65340, 
	XK_MultipleCandidate           = 65341, 
	XK_PreviousCandidate           = 65342, 
	XK_Kanji                       = 65313,    // Kanji, Kanji convert
	XK_Muhenkan                    = 65314,    // Cancel Conversion
	XK_Henkan_Mode                 = 65315,    // Start/Stop Conversion
	XK_Henkan                      = 65315,    // Alias for Henkan_Mode
	XK_Romaji                      = 65316,    // to Romaji
	XK_Hiragana                    = 65317,    // to Hiragana
	XK_Katakana                    = 65318,    // to Katakana
	XK_Hiragana_Katakana           = 65319,    // Hiragana/Katakana toggle
	XK_Zenkaku                     = 65320,    // to Zenkaku
	XK_Hankaku                     = 65321,    // to Hankaku
	XK_Zenkaku_Hankaku             = 65322,    // Zenkaku/Hankaku toggle
	XK_Touroku                     = 65323,    // Add to Dictionary
	XK_Massyo                      = 65324,    // Delete from Dictionary
	XK_Kana_Lock                   = 65325,    // Kana Lock
	XK_Kana_Shift                  = 65326,    // Kana Shift
	XK_Eisu_Shift                  = 65327,    // Alphanumeric Shift
	XK_Eisu_toggle                 = 65328,    // Alphanumeric toggle
	XK_Kanji_Bangou                = 65335,    // Codeinput
	XK_Zen_Koho                    = 65341,    // Multiple/All Candidate(s)
	XK_Mae_Koho                    = 65342,    // Previous Candidate
	XK_Home                        = 65360, 
	XK_Left                        = 65361,    // Move left, left arrow
	XK_Up                          = 65362,    // Move up, up arrow
	XK_Right                       = 65363,    // Move right, right arrow
	XK_Down                        = 65364,    // Move down, down arrow
	XK_Prior                       = 65365,    // Prior, previous
	XK_Page_Up                     = 65365, 
	XK_Next                        = 65366,    // Next
	XK_Page_Down                   = 65366, 
	XK_End                         = 65367,    // EOL
	XK_Begin                       = 65368,    // BOL
	XK_Select                      = 65376,    // Select, mark
	XK_Print                       = 65377, 
	XK_Execute                     = 65378,    // Execute, run, do
	XK_Insert                      = 65379,    // Insert, insert here
	XK_Undo                        = 65381, 
	XK_Redo                        = 65382,    // Redo, again
	XK_Menu                        = 65383, 
	XK_Find                        = 65384,    // Find, search
	XK_Cancel                      = 65385,    // Cancel, stop, abort, exit
	XK_Help                        = 65386,    // Help
	XK_Break                       = 65387, 
	XK_Mode_switch                 = 65406,    // Character set switch
	XK_script_switch               = 65406,    // Alias for mode_switch
	XK_Num_Lock                    = 65407, 
	XK_KP_Space                    = 65408,    // Space
	XK_KP_Tab                      = 65417, 
	XK_KP_Enter                    = 65421,    // Enter
	XK_KP_F1                       = 65425,    // PF1, KP_A, ...
	XK_KP_F2                       = 65426, 
	XK_KP_F3                       = 65427, 
	XK_KP_F4                       = 65428, 
	XK_KP_Home                     = 65429, 
	XK_KP_Left                     = 65430, 
	XK_KP_Up                       = 65431, 
	XK_KP_Right                    = 65432, 
	XK_KP_Down                     = 65433, 
	XK_KP_Prior                    = 65434, 
	XK_KP_Page_Up                  = 65434, 
	XK_KP_Next                     = 65435, 
	XK_KP_Page_Down                = 65435, 
	XK_KP_End                      = 65436, 
	XK_KP_Begin                    = 65437, 
	XK_KP_Insert                   = 65438, 
	XK_KP_Delete                   = 65439, 
	XK_KP_Equal                    = 65469,    // Equals
	XK_KP_Multiply                 = 65450, 
	XK_KP_Add                      = 65451, 
	XK_KP_Separator                = 65452,    // Separator, often comma
	XK_KP_Subtract                 = 65453, 
	XK_KP_Decimal                  = 65454, 
	XK_KP_Divide                   = 65455, 
	XK_KP_0                        = 65456, 
	XK_KP_1                        = 65457, 
	XK_KP_2                        = 65458, 
	XK_KP_3                        = 65459, 
	XK_KP_4                        = 65460, 
	XK_KP_5                        = 65461, 
	XK_KP_6                        = 65462, 
	XK_KP_7                        = 65463, 
	XK_KP_8                        = 65464, 
	XK_KP_9                        = 65465, 
	XK_F1                          = 65470, 
	XK_F2                          = 65471, 
	XK_F3                          = 65472, 
	XK_F4                          = 65473, 
	XK_F5                          = 65474, 
	XK_F6                          = 65475, 
	XK_F7                          = 65476, 
	XK_F8                          = 65477, 
	XK_F9                          = 65478, 
	XK_F10                         = 65479, 
	XK_F11                         = 65480, 
	XK_L1                          = 65480, 
	XK_F12                         = 65481, 
	XK_L2                          = 65481, 
	XK_F13                         = 65482, 
	XK_L3                          = 65482, 
	XK_F14                         = 65483, 
	XK_L4                          = 65483, 
	XK_F15                         = 65484, 
	XK_L5                          = 65484, 
	XK_F16                         = 65485, 
	XK_L6                          = 65485, 
	XK_F17                         = 65486, 
	XK_L7                          = 65486, 
	XK_F18                         = 65487, 
	XK_L8                          = 65487, 
	XK_F19                         = 65488, 
	XK_L9                          = 65488, 
	XK_F20                         = 65489, 
	XK_L10                         = 65489, 
	XK_F21                         = 65490, 
	XK_R1                          = 65490, 
	XK_F22                         = 65491, 
	XK_R2                          = 65491, 
	XK_F23                         = 65492, 
	XK_R3                          = 65492, 
	XK_F24                         = 65493, 
	XK_R4                          = 65493, 
	XK_F25                         = 65494, 
	XK_R5                          = 65494, 
	XK_F26                         = 65495, 
	XK_R6                          = 65495, 
	XK_F27                         = 65496, 
	XK_R7                          = 65496, 
	XK_F28                         = 65497, 
	XK_R8                          = 65497, 
	XK_F29                         = 65498, 
	XK_R9                          = 65498, 
	XK_F30                         = 65499, 
	XK_R10                         = 65499, 
	XK_F31                         = 65500, 
	XK_R11                         = 65500, 
	XK_F32                         = 65501, 
	XK_R12                         = 65501, 
	XK_F33                         = 65502, 
	XK_R13                         = 65502, 
	XK_F34                         = 65503, 
	XK_R14                         = 65503, 
	XK_F35                         = 65504, 
	XK_R15                         = 65504, 
	XK_Shift_L                     = 65505,    // Left shift
	XK_Shift_R                     = 65506,    // Right shift
	XK_Control_L                   = 65507,    // Left control
	XK_Control_R                   = 65508,    // Right control
	XK_Caps_Lock                   = 65509,    // Caps lock
	XK_Shift_Lock                  = 65510,    // Shift lock
	XK_Meta_L                      = 65511,    // Left meta
	XK_Meta_R                      = 65512,    // Right meta
	XK_Alt_L                       = 65513,    // Left alt
	XK_Alt_R                       = 65514,    // Right alt
	XK_Super_L                     = 65515,    // Left super
	XK_Super_R                     = 65516,    // Right super
	XK_Hyper_L                     = 65517,    // Left hyper
	XK_Hyper_R                     = 65518,    // Right hyper
	XK_ISO_Lock                    = 65025, 
	XK_ISO_Level2_Latch            = 65026, 
	XK_ISO_Level3_Shift            = 65027, 
	XK_ISO_Level3_Latch            = 65028, 
	XK_ISO_Level3_Lock             = 65029, 
	XK_ISO_Group_Shift             = 65406,    // Alias for mode_switch
	XK_ISO_Group_Latch             = 65030, 
	XK_ISO_Group_Lock              = 65031, 
	XK_ISO_Next_Group              = 65032, 
	XK_ISO_Next_Group_Lock         = 65033, 
	XK_ISO_Prev_Group              = 65034, 
	XK_ISO_Prev_Group_Lock         = 65035, 
	XK_ISO_First_Group             = 65036, 
	XK_ISO_First_Group_Lock        = 65037, 
	XK_ISO_Last_Group              = 65038, 
	XK_ISO_Last_Group_Lock         = 65039, 
	XK_ISO_Left_Tab                = 65056, 
	XK_ISO_Move_Line_Up            = 65057, 
	XK_ISO_Move_Line_Down          = 65058, 
	XK_ISO_Partial_Line_Up         = 65059, 
	XK_ISO_Partial_Line_Down       = 65060, 
	XK_ISO_Partial_Space_Left      = 65061, 
	XK_ISO_Partial_Space_Right     = 65062, 
	XK_ISO_Set_Margin_Left         = 65063, 
	XK_ISO_Set_Margin_Right        = 65064, 
	XK_ISO_Release_Margin_Left     = 65065, 
	XK_ISO_Release_Margin_Right    = 65066, 
	XK_ISO_Release_Both_Margins    = 65067, 
	XK_ISO_Fast_Cursor_Left        = 65068, 
	XK_ISO_Fast_Cursor_Right       = 65069, 
	XK_ISO_Fast_Cursor_Up          = 65070, 
	XK_ISO_Fast_Cursor_Down        = 65071, 
	XK_ISO_Continuous_Underline    = 65072, 
	XK_ISO_Discontinuous_Underline = 65073, 
	XK_ISO_Emphasize               = 65074, 
	XK_ISO_Center_Object           = 65075, 
	XK_ISO_Enter                   = 65076, 
	XK_dead_grave                  = 65104, 
	XK_dead_acute                  = 65105, 
	XK_dead_circumflex             = 65106, 
	XK_dead_tilde                  = 65107, 
	XK_dead_macron                 = 65108, 
	XK_dead_breve                  = 65109, 
	XK_dead_abovedot               = 65110, 
	XK_dead_diaeresis              = 65111, 
	XK_dead_abovering              = 65112, 
	XK_dead_doubleacute            = 65113, 
	XK_dead_caron                  = 65114, 
	XK_dead_cedilla                = 65115, 
	XK_dead_ogonek                 = 65116, 
	XK_dead_iota                   = 65117, 
	XK_dead_voiced_sound           = 65118, 
	XK_dead_semivoiced_sound       = 65119, 
	XK_dead_belowdot               = 65120, 
	XK_dead_hook                   = 65121, 
	XK_dead_horn                   = 65122, 
	XK_First_Virtual_Screen        = 65232, 
	XK_Prev_Virtual_Screen         = 65233, 
	XK_Next_Virtual_Screen         = 65234, 
	XK_Last_Virtual_Screen         = 65236, 
	XK_Terminate_Server            = 65237, 
	XK_AccessX_Enable              = 65136, 
	XK_AccessX_Feedback_Enable     = 65137, 
	XK_RepeatKeys_Enable           = 65138, 
	XK_SlowKeys_Enable             = 65139, 
	XK_BounceKeys_Enable           = 65140, 
	XK_StickyKeys_Enable           = 65141, 
	XK_MouseKeys_Enable            = 65142, 
	XK_MouseKeys_Accel_Enable      = 65143, 
	XK_Overlay1_Enable             = 65144, 
	XK_Overlay2_Enable             = 65145, 
	XK_AudibleBell_Enable          = 65146, 
	XK_Pointer_Left                = 65248, 
	XK_Pointer_Right               = 65249, 
	XK_Pointer_Up                  = 65250, 
	XK_Pointer_Down                = 65251, 
	XK_Pointer_UpLeft              = 65252, 
	XK_Pointer_UpRight             = 65253, 
	XK_Pointer_DownLeft            = 65254, 
	XK_Pointer_DownRight           = 65255, 
	XK_Pointer_Button_Dflt         = 65256, 
	XK_Pointer_Button1             = 65257, 
	XK_Pointer_Button2             = 65258, 
	XK_Pointer_Button3             = 65259, 
	XK_Pointer_Button4             = 65260, 
	XK_Pointer_Button5             = 65261, 
	XK_Pointer_DblClick_Dflt       = 65262, 
	XK_Pointer_DblClick1           = 65263, 
	XK_Pointer_DblClick2           = 65264, 
	XK_Pointer_DblClick3           = 65265, 
	XK_Pointer_DblClick4           = 65266, 
	XK_Pointer_DblClick5           = 65267, 
	XK_Pointer_Drag_Dflt           = 65268, 
	XK_Pointer_Drag1               = 65269, 
	XK_Pointer_Drag2               = 65270, 
	XK_Pointer_Drag3               = 65271, 
	XK_Pointer_Drag4               = 65272, 
	XK_Pointer_Drag5               = 65277, 
	XK_Pointer_EnableKeys          = 65273, 
	XK_Pointer_Accelerate          = 65274, 
	XK_Pointer_DfltBtnNext         = 65275, 
	XK_Pointer_DfltBtnPrev         = 65276, 
	XK_3270_Duplicate              = 64769, 
	XK_3270_FieldMark              = 64770, 
	XK_3270_Right2                 = 64771, 
	XK_3270_Left2                  = 64772, 
	XK_3270_BackTab                = 64773, 
	XK_3270_EraseEOF               = 64774, 
	XK_3270_EraseInput             = 64775, 
	XK_3270_Reset                  = 64776, 
	XK_3270_Quit                   = 64777, 
	XK_3270_PA1                    = 64778, 
	XK_3270_PA2                    = 64779, 
	XK_3270_PA3                    = 64780, 
	XK_3270_Test                   = 64781, 
	XK_3270_Attn                   = 64782, 
	XK_3270_CursorBlink            = 64783, 
	XK_3270_AltCursor              = 64784, 
	XK_3270_KeyClick               = 64785, 
	XK_3270_Jump                   = 64786, 
	XK_3270_Ident                  = 64787, 
	XK_3270_Rule                   = 64788, 
	XK_3270_Copy                   = 64789, 
	XK_3270_Play                   = 64790, 
	XK_3270_Setup                  = 64791, 
	XK_3270_Record                 = 64792, 
	XK_3270_ChangeScreen           = 64793, 
	XK_3270_DeleteWord             = 64794, 
	XK_3270_ExSelect               = 64795, 
	XK_3270_CursorSelect           = 64796, 
	XK_3270_PrintScreen            = 64797, 
	XK_3270_Enter                  = 64798, 
	XK_space                       = 32,       // U+0020 SPACE
	XK_exclam                      = 33,       // U+0021 EXCLAMATION MARK
	XK_quotedbl                    = 34,       // U+0022 QUOTATION MARK
	XK_numbersign                  = 35,       // U+0023 NUMBER SIGN
	XK_dollar                      = 36,       // U+0024 DOLLAR SIGN
	XK_percent                     = 37,       // U+0025 PERCENT SIGN
	XK_ampersand                   = 38,       // U+0026 AMPERSAND
	XK_apostrophe                  = 39,       // U+0027 APOSTROPHE
	XK_quoteright                  = 39,       // deprecated
	XK_parenleft                   = 40,       // U+0028 LEFT PARENTHESIS
	XK_parenright                  = 41,       // U+0029 RIGHT PARENTHESIS
	XK_asterisk                    = 42,       // U+002A ASTERISK
	XK_plus                        = 43,       // U+002B PLUS SIGN
	XK_comma                       = 44,       // U+002C COMMA
	XK_minus                       = 45,       // U+002D HYPHEN-MINUS
	XK_period                      = 46,       // U+002E FULL STOP
	XK_slash                       = 47,       // U+002F SOLIDUS
	XK_0                           = 48,       // U+0030 DIGIT ZERO
	XK_1                           = 49,       // U+0031 DIGIT ONE
	XK_2                           = 50,       // U+0032 DIGIT TWO
	XK_3                           = 51,       // U+0033 DIGIT THREE
	XK_4                           = 52,       // U+0034 DIGIT FOUR
	XK_5                           = 53,       // U+0035 DIGIT FIVE
	XK_6                           = 54,       // U+0036 DIGIT SIX
	XK_7                           = 55,       // U+0037 DIGIT SEVEN
	XK_8                           = 56,       // U+0038 DIGIT EIGHT
	XK_9                           = 57,       // U+0039 DIGIT NINE
	XK_colon                       = 58,       // U+003A COLON
	XK_semicolon                   = 59,       // U+003B SEMICOLON
	XK_less                        = 60,       // U+003C LESS-THAN SIGN
	XK_equal                       = 61,       // U+003D EQUALS SIGN
	XK_greater                     = 62,       // U+003E GREATER-THAN SIGN
	XK_question                    = 63,       // U+003F QUESTION MARK
	XK_at                          = 64,       // U+0040 COMMERCIAL AT
	XK_A                           = 65,       // U+0041 LATIN CAPITAL LETTER A
	XK_B                           = 66,       // U+0042 LATIN CAPITAL LETTER B
	XK_C                           = 67,       // U+0043 LATIN CAPITAL LETTER C
	XK_D                           = 68,       // U+0044 LATIN CAPITAL LETTER D
	XK_E                           = 69,       // U+0045 LATIN CAPITAL LETTER E
	XK_F                           = 70,       // U+0046 LATIN CAPITAL LETTER F
	XK_G                           = 71,       // U+0047 LATIN CAPITAL LETTER G
	XK_H                           = 72,       // U+0048 LATIN CAPITAL LETTER H
	XK_I                           = 73,       // U+0049 LATIN CAPITAL LETTER I
	XK_J                           = 74,       // U+004A LATIN CAPITAL LETTER J
	XK_K                           = 75,       // U+004B LATIN CAPITAL LETTER K
	XK_L                           = 76,       // U+004C LATIN CAPITAL LETTER L
	XK_M                           = 77,       // U+004D LATIN CAPITAL LETTER M
	XK_N                           = 78,       // U+004E LATIN CAPITAL LETTER N
	XK_O                           = 79,       // U+004F LATIN CAPITAL LETTER O
	XK_P                           = 80,       // U+0050 LATIN CAPITAL LETTER P
	XK_Q                           = 81,       // U+0051 LATIN CAPITAL LETTER Q
	XK_R                           = 82,       // U+0052 LATIN CAPITAL LETTER R
	XK_S                           = 83,       // U+0053 LATIN CAPITAL LETTER S
	XK_T                           = 84,       // U+0054 LATIN CAPITAL LETTER T
	XK_U                           = 85,       // U+0055 LATIN CAPITAL LETTER U
	XK_V                           = 86,       // U+0056 LATIN CAPITAL LETTER V
	XK_W                           = 87,       // U+0057 LATIN CAPITAL LETTER W
	XK_X                           = 88,       // U+0058 LATIN CAPITAL LETTER X
	XK_Y                           = 89,       // U+0059 LATIN CAPITAL LETTER Y
	XK_Z                           = 90,       // U+005A LATIN CAPITAL LETTER Z
	XK_bracketleft                 = 91,       // U+005B LEFT SQUARE BRACKET
	XK_backslash                   = 92,       // U+005C REVERSE SOLIDUS
	XK_bracketright                = 93,       // U+005D RIGHT SQUARE BRACKET
	XK_asciicircum                 = 94,       // U+005E CIRCUMFLEX ACCENT
	XK_underscore                  = 95,       // U+005F LOW LINE
	XK_grave                       = 96,       // U+0060 GRAVE ACCENT
	XK_quoteleft                   = 96,       // deprecated
	XK_a                           = 97,       // U+0061 LATIN SMALL LETTER A
	XK_b                           = 98,       // U+0062 LATIN SMALL LETTER B
	XK_c                           = 99,       // U+0063 LATIN SMALL LETTER C
	XK_d                           = 100,      // U+0064 LATIN SMALL LETTER D
	XK_e                           = 101,      // U+0065 LATIN SMALL LETTER E
	XK_f                           = 102,      // U+0066 LATIN SMALL LETTER F
	XK_g                           = 103,      // U+0067 LATIN SMALL LETTER G
	XK_h                           = 104,      // U+0068 LATIN SMALL LETTER H
	XK_i                           = 105,      // U+0069 LATIN SMALL LETTER I
	XK_j                           = 106,      // U+006A LATIN SMALL LETTER J
	XK_k                           = 107,      // U+006B LATIN SMALL LETTER K
	XK_l                           = 108,      // U+006C LATIN SMALL LETTER L
	XK_m                           = 109,      // U+006D LATIN SMALL LETTER M
	XK_n                           = 110,      // U+006E LATIN SMALL LETTER N
	XK_o                           = 111,      // U+006F LATIN SMALL LETTER O
	XK_p                           = 112,      // U+0070 LATIN SMALL LETTER P
	XK_q                           = 113,      // U+0071 LATIN SMALL LETTER Q
	XK_r                           = 114,      // U+0072 LATIN SMALL LETTER R
	XK_s                           = 115,      // U+0073 LATIN SMALL LETTER S
	XK_t                           = 116,      // U+0074 LATIN SMALL LETTER T
	XK_u                           = 117,      // U+0075 LATIN SMALL LETTER U
	XK_v                           = 118,      // U+0076 LATIN SMALL LETTER V
	XK_w                           = 119,      // U+0077 LATIN SMALL LETTER W
	XK_x                           = 120,      // U+0078 LATIN SMALL LETTER X
	XK_y                           = 121,      // U+0079 LATIN SMALL LETTER Y
	XK_z                           = 122,      // U+007A LATIN SMALL LETTER Z
	XK_braceleft                   = 123,      // U+007B LEFT CURLY BRACKET
	XK_bar                         = 124,      // U+007C VERTICAL LINE
	XK_braceright                  = 125,      // U+007D RIGHT CURLY BRACKET
	XK_asciitilde                  = 126,      // U+007E TILDE
	XK_nobreakspace                = 160,      // U+00A0 NO-BREAK SPACE
	XK_exclamdown                  = 161,      // U+00A1 INVERTED EXCLAMATION MARK
	XK_cent                        = 162,      // U+00A2 CENT SIGN
	XK_sterling                    = 163,      // U+00A3 POUND SIGN
	XK_currency                    = 164,      // U+00A4 CURRENCY SIGN
	XK_yen                         = 165,      // U+00A5 YEN SIGN
	XK_brokenbar                   = 166,      // U+00A6 BROKEN BAR
	XK_section                     = 167,      // U+00A7 SECTION SIGN
	XK_diaeresis                   = 168,      // U+00A8 DIAERESIS
	XK_copyright                   = 169,      // U+00A9 COPYRIGHT SIGN
	XK_ordfeminine                 = 170,      // U+00AA FEMININE ORDINAL INDICATOR
	XK_guillemotleft               = 171,      // U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
	XK_notsign                     = 172,      // U+00AC NOT SIGN
	XK_hyphen                      = 173,      // U+00AD SOFT HYPHEN
	XK_registered                  = 174,      // U+00AE REGISTERED SIGN
	XK_macron                      = 175,      // U+00AF MACRON
	XK_degree                      = 176,      // U+00B0 DEGREE SIGN
	XK_plusminus                   = 177,      // U+00B1 PLUS-MINUS SIGN
	XK_twosuperior                 = 178,      // U+00B2 SUPERSCRIPT TWO
	XK_threesuperior               = 179,      // U+00B3 SUPERSCRIPT THREE
	XK_acute                       = 180,      // U+00B4 ACUTE ACCENT
	XK_mu                          = 181,      // U+00B5 MICRO SIGN
	XK_paragraph                   = 182,      // U+00B6 PILCROW SIGN
	XK_periodcentered              = 183,      // U+00B7 MIDDLE DOT
	XK_cedilla                     = 184,      // U+00B8 CEDILLA
	XK_onesuperior                 = 185,      // U+00B9 SUPERSCRIPT ONE
	XK_masculine                   = 186,      // U+00BA MASCULINE ORDINAL INDICATOR
	XK_guillemotright              = 187,      // U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
	XK_onequarter                  = 188,      // U+00BC VULGAR FRACTION ONE QUARTER
	XK_onehalf                     = 189,      // U+00BD VULGAR FRACTION ONE HALF
	XK_threequarters               = 190,      // U+00BE VULGAR FRACTION THREE QUARTERS
	XK_questiondown                = 191,      // U+00BF INVERTED QUESTION MARK
	XK_Agrave                      = 192,      // U+00C0 LATIN CAPITAL LETTER A WITH GRAVE
	XK_Aacute                      = 193,      // U+00C1 LATIN CAPITAL LETTER A WITH ACUTE
	XK_Acircumflex                 = 194,      // U+00C2 LATIN CAPITAL LETTER A WITH CIRCUMFLEX
	XK_Atilde                      = 195,      // U+00C3 LATIN CAPITAL LETTER A WITH TILDE
	XK_Adiaeresis                  = 196,      // U+00C4 LATIN CAPITAL LETTER A WITH DIAERESIS
	XK_Aring                       = 197,      // U+00C5 LATIN CAPITAL LETTER A WITH RING ABOVE
	XK_AE                          = 198,      // U+00C6 LATIN CAPITAL LETTER AE
	XK_Ccedilla                    = 199,      // U+00C7 LATIN CAPITAL LETTER C WITH CEDILLA
	XK_Egrave                      = 200,      // U+00C8 LATIN CAPITAL LETTER E WITH GRAVE
	XK_Eacute                      = 201,      // U+00C9 LATIN CAPITAL LETTER E WITH ACUTE
	XK_Ecircumflex                 = 202,      // U+00CA LATIN CAPITAL LETTER E WITH CIRCUMFLEX
	XK_Ediaeresis                  = 203,      // U+00CB LATIN CAPITAL LETTER E WITH DIAERESIS
	XK_Igrave                      = 204,      // U+00CC LATIN CAPITAL LETTER I WITH GRAVE
	XK_Iacute                      = 205,      // U+00CD LATIN CAPITAL LETTER I WITH ACUTE
	XK_Icircumflex                 = 206,      // U+00CE LATIN CAPITAL LETTER I WITH CIRCUMFLEX
	XK_Idiaeresis                  = 207,      // U+00CF LATIN CAPITAL LETTER I WITH DIAERESIS
	XK_ETH                         = 208,      // U+00D0 LATIN CAPITAL LETTER ETH
	XK_Eth                         = 208,      // deprecated
	XK_Ntilde                      = 209,      // U+00D1 LATIN CAPITAL LETTER N WITH TILDE
	XK_Ograve                      = 210,      // U+00D2 LATIN CAPITAL LETTER O WITH GRAVE
	XK_Oacute                      = 211,      // U+00D3 LATIN CAPITAL LETTER O WITH ACUTE
	XK_Ocircumflex                 = 212,      // U+00D4 LATIN CAPITAL LETTER O WITH CIRCUMFLEX
	XK_Otilde                      = 213,      // U+00D5 LATIN CAPITAL LETTER O WITH TILDE
	XK_Odiaeresis                  = 214,      // U+00D6 LATIN CAPITAL LETTER O WITH DIAERESIS
	XK_multiply                    = 215,      // U+00D7 MULTIPLICATION SIGN
	XK_Oslash                      = 216,      // U+00D8 LATIN CAPITAL LETTER O WITH STROKE
	XK_Ooblique                    = 216,      // U+00D8 LATIN CAPITAL LETTER O WITH STROKE
	XK_Ugrave                      = 217,      // U+00D9 LATIN CAPITAL LETTER U WITH GRAVE
	XK_Uacute                      = 218,      // U+00DA LATIN CAPITAL LETTER U WITH ACUTE
	XK_Ucircumflex                 = 219,      // U+00DB LATIN CAPITAL LETTER U WITH CIRCUMFLEX
	XK_Udiaeresis                  = 220,      // U+00DC LATIN CAPITAL LETTER U WITH DIAERESIS
	XK_Yacute                      = 221,      // U+00DD LATIN CAPITAL LETTER Y WITH ACUTE
	XK_THORN                       = 222,      // U+00DE LATIN CAPITAL LETTER THORN
	XK_Thorn                       = 222,      // deprecated
	XK_ssharp                      = 223,      // U+00DF LATIN SMALL LETTER SHARP S
	XK_agrave                      = 224,      // U+00E0 LATIN SMALL LETTER A WITH GRAVE
	XK_aacute                      = 225,      // U+00E1 LATIN SMALL LETTER A WITH ACUTE
	XK_acircumflex                 = 226,      // U+00E2 LATIN SMALL LETTER A WITH CIRCUMFLEX
	XK_atilde                      = 227,      // U+00E3 LATIN SMALL LETTER A WITH TILDE
	XK_adiaeresis                  = 228,      // U+00E4 LATIN SMALL LETTER A WITH DIAERESIS
	XK_aring                       = 229,      // U+00E5 LATIN SMALL LETTER A WITH RING ABOVE
	XK_ae                          = 230,      // U+00E6 LATIN SMALL LETTER AE
	XK_ccedilla                    = 231,      // U+00E7 LATIN SMALL LETTER C WITH CEDILLA
	XK_egrave                      = 232,      // U+00E8 LATIN SMALL LETTER E WITH GRAVE
	XK_eacute                      = 233,      // U+00E9 LATIN SMALL LETTER E WITH ACUTE
	XK_ecircumflex                 = 234,      // U+00EA LATIN SMALL LETTER E WITH CIRCUMFLEX
	XK_ediaeresis                  = 235,      // U+00EB LATIN SMALL LETTER E WITH DIAERESIS
	XK_igrave                      = 236,      // U+00EC LATIN SMALL LETTER I WITH GRAVE
	XK_iacute                      = 237,      // U+00ED LATIN SMALL LETTER I WITH ACUTE
	XK_icircumflex                 = 238,      // U+00EE LATIN SMALL LETTER I WITH CIRCUMFLEX
	XK_idiaeresis                  = 239,      // U+00EF LATIN SMALL LETTER I WITH DIAERESIS
	XK_eth                         = 240,      // U+00F0 LATIN SMALL LETTER ETH
	XK_ntilde                      = 241,      // U+00F1 LATIN SMALL LETTER N WITH TILDE
	XK_ograve                      = 242,      // U+00F2 LATIN SMALL LETTER O WITH GRAVE
	XK_oacute                      = 243,      // U+00F3 LATIN SMALL LETTER O WITH ACUTE
	XK_ocircumflex                 = 244,      // U+00F4 LATIN SMALL LETTER O WITH CIRCUMFLEX
	XK_otilde                      = 245,      // U+00F5 LATIN SMALL LETTER O WITH TILDE
	XK_odiaeresis                  = 246,      // U+00F6 LATIN SMALL LETTER O WITH DIAERESIS
	XK_division                    = 247,      // U+00F7 DIVISION SIGN
	XK_oslash                      = 248,      // U+00F8 LATIN SMALL LETTER O WITH STROKE
	XK_ooblique                    = 248,      // U+00F8 LATIN SMALL LETTER O WITH STROKE
	XK_ugrave                      = 249,      // U+00F9 LATIN SMALL LETTER U WITH GRAVE
	XK_uacute                      = 250,      // U+00FA LATIN SMALL LETTER U WITH ACUTE
	XK_ucircumflex                 = 251,      // U+00FB LATIN SMALL LETTER U WITH CIRCUMFLEX
	XK_udiaeresis                  = 252,      // U+00FC LATIN SMALL LETTER U WITH DIAERESIS
	XK_yacute                      = 253,      // U+00FD LATIN SMALL LETTER Y WITH ACUTE
	XK_thorn                       = 254,      // U+00FE LATIN SMALL LETTER THORN
	XK_ydiaeresis                  = 255,      // U+00FF LATIN SMALL LETTER Y WITH DIAERESIS
	XK_Aogonek                     = 417,      // U+0104 LATIN CAPITAL LETTER A WITH OGONEK
	XK_breve                       = 418,      // U+02D8 BREVE
	XK_Lstroke                     = 419,      // U+0141 LATIN CAPITAL LETTER L WITH STROKE
	XK_Lcaron                      = 421,      // U+013D LATIN CAPITAL LETTER L WITH CARON
	XK_Sacute                      = 422,      // U+015A LATIN CAPITAL LETTER S WITH ACUTE
	XK_Scaron                      = 425,      // U+0160 LATIN CAPITAL LETTER S WITH CARON
	XK_Scedilla                    = 426,      // U+015E LATIN CAPITAL LETTER S WITH CEDILLA
	XK_Tcaron                      = 427,      // U+0164 LATIN CAPITAL LETTER T WITH CARON
	XK_Zacute                      = 428,      // U+0179 LATIN CAPITAL LETTER Z WITH ACUTE
	XK_Zcaron                      = 430,      // U+017D LATIN CAPITAL LETTER Z WITH CARON
	XK_Zabovedot                   = 431,      // U+017B LATIN CAPITAL LETTER Z WITH DOT ABOVE
	XK_aogonek                     = 433,      // U+0105 LATIN SMALL LETTER A WITH OGONEK
	XK_ogonek                      = 434,      // U+02DB OGONEK
	XK_lstroke                     = 435,      // U+0142 LATIN SMALL LETTER L WITH STROKE
	XK_lcaron                      = 437,      // U+013E LATIN SMALL LETTER L WITH CARON
	XK_sacute                      = 438,      // U+015B LATIN SMALL LETTER S WITH ACUTE
	XK_caron                       = 439,      // U+02C7 CARON
	XK_scaron                      = 441,      // U+0161 LATIN SMALL LETTER S WITH CARON
	XK_scedilla                    = 442,      // U+015F LATIN SMALL LETTER S WITH CEDILLA
	XK_tcaron                      = 443,      // U+0165 LATIN SMALL LETTER T WITH CARON
	XK_zacute                      = 444,      // U+017A LATIN SMALL LETTER Z WITH ACUTE
	XK_doubleacute                 = 445,      // U+02DD DOUBLE ACUTE ACCENT
	XK_zcaron                      = 446,      // U+017E LATIN SMALL LETTER Z WITH CARON
	XK_zabovedot                   = 447,      // U+017C LATIN SMALL LETTER Z WITH DOT ABOVE
	XK_Racute                      = 448,      // U+0154 LATIN CAPITAL LETTER R WITH ACUTE
	XK_Abreve                      = 451,      // U+0102 LATIN CAPITAL LETTER A WITH BREVE
	XK_Lacute                      = 453,      // U+0139 LATIN CAPITAL LETTER L WITH ACUTE
	XK_Cacute                      = 454,      // U+0106 LATIN CAPITAL LETTER C WITH ACUTE
	XK_Ccaron                      = 456,      // U+010C LATIN CAPITAL LETTER C WITH CARON
	XK_Eogonek                     = 458,      // U+0118 LATIN CAPITAL LETTER E WITH OGONEK
	XK_Ecaron                      = 460,      // U+011A LATIN CAPITAL LETTER E WITH CARON
	XK_Dcaron                      = 463,      // U+010E LATIN CAPITAL LETTER D WITH CARON
	XK_Dstroke                     = 464,      // U+0110 LATIN CAPITAL LETTER D WITH STROKE
	XK_Nacute                      = 465,      // U+0143 LATIN CAPITAL LETTER N WITH ACUTE
	XK_Ncaron                      = 466,      // U+0147 LATIN CAPITAL LETTER N WITH CARON
	XK_Odoubleacute                = 469,      // U+0150 LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
	XK_Rcaron                      = 472,      // U+0158 LATIN CAPITAL LETTER R WITH CARON
	XK_Uring                       = 473,      // U+016E LATIN CAPITAL LETTER U WITH RING ABOVE
	XK_Udoubleacute                = 475,      // U+0170 LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
	XK_Tcedilla                    = 478,      // U+0162 LATIN CAPITAL LETTER T WITH CEDILLA
	XK_racute                      = 480,      // U+0155 LATIN SMALL LETTER R WITH ACUTE
	XK_abreve                      = 483,      // U+0103 LATIN SMALL LETTER A WITH BREVE
	XK_lacute                      = 485,      // U+013A LATIN SMALL LETTER L WITH ACUTE
	XK_cacute                      = 486,      // U+0107 LATIN SMALL LETTER C WITH ACUTE
	XK_ccaron                      = 488,      // U+010D LATIN SMALL LETTER C WITH CARON
	XK_eogonek                     = 490,      // U+0119 LATIN SMALL LETTER E WITH OGONEK
	XK_ecaron                      = 492,      // U+011B LATIN SMALL LETTER E WITH CARON
	XK_dcaron                      = 495,      // U+010F LATIN SMALL LETTER D WITH CARON
	XK_dstroke                     = 496,      // U+0111 LATIN SMALL LETTER D WITH STROKE
	XK_nacute                      = 497,      // U+0144 LATIN SMALL LETTER N WITH ACUTE
	XK_ncaron                      = 498,      // U+0148 LATIN SMALL LETTER N WITH CARON
	XK_odoubleacute                = 501,      // U+0151 LATIN SMALL LETTER O WITH DOUBLE ACUTE
	XK_udoubleacute                = 507,      // U+0171 LATIN SMALL LETTER U WITH DOUBLE ACUTE
	XK_rcaron                      = 504,      // U+0159 LATIN SMALL LETTER R WITH CARON
	XK_uring                       = 505,      // U+016F LATIN SMALL LETTER U WITH RING ABOVE
	XK_tcedilla                    = 510,      // U+0163 LATIN SMALL LETTER T WITH CEDILLA
	XK_abovedot                    = 511,      // U+02D9 DOT ABOVE
	XK_Hstroke                     = 673,      // U+0126 LATIN CAPITAL LETTER H WITH STROKE
	XK_Hcircumflex                 = 678,      // U+0124 LATIN CAPITAL LETTER H WITH CIRCUMFLEX
	XK_Iabovedot                   = 681,      // U+0130 LATIN CAPITAL LETTER I WITH DOT ABOVE
	XK_Gbreve                      = 683,      // U+011E LATIN CAPITAL LETTER G WITH BREVE
	XK_Jcircumflex                 = 684,      // U+0134 LATIN CAPITAL LETTER J WITH CIRCUMFLEX
	XK_hstroke                     = 689,      // U+0127 LATIN SMALL LETTER H WITH STROKE
	XK_hcircumflex                 = 694,      // U+0125 LATIN SMALL LETTER H WITH CIRCUMFLEX
	XK_idotless                    = 697,      // U+0131 LATIN SMALL LETTER DOTLESS I
	XK_gbreve                      = 699,      // U+011F LATIN SMALL LETTER G WITH BREVE
	XK_jcircumflex                 = 700,      // U+0135 LATIN SMALL LETTER J WITH CIRCUMFLEX
	XK_Cabovedot                   = 709,      // U+010A LATIN CAPITAL LETTER C WITH DOT ABOVE
	XK_Ccircumflex                 = 710,      // U+0108 LATIN CAPITAL LETTER C WITH CIRCUMFLEX
	XK_Gabovedot                   = 725,      // U+0120 LATIN CAPITAL LETTER G WITH DOT ABOVE
	XK_Gcircumflex                 = 728,      // U+011C LATIN CAPITAL LETTER G WITH CIRCUMFLEX
	XK_Ubreve                      = 733,      // U+016C LATIN CAPITAL LETTER U WITH BREVE
	XK_Scircumflex                 = 734,      // U+015C LATIN CAPITAL LETTER S WITH CIRCUMFLEX
	XK_cabovedot                   = 741,      // U+010B LATIN SMALL LETTER C WITH DOT ABOVE
	XK_ccircumflex                 = 742,      // U+0109 LATIN SMALL LETTER C WITH CIRCUMFLEX
	XK_gabovedot                   = 757,      // U+0121 LATIN SMALL LETTER G WITH DOT ABOVE
	XK_gcircumflex                 = 760,      // U+011D LATIN SMALL LETTER G WITH CIRCUMFLEX
	XK_ubreve                      = 765,      // U+016D LATIN SMALL LETTER U WITH BREVE
	XK_scircumflex                 = 766,      // U+015D LATIN SMALL LETTER S WITH CIRCUMFLEX
	XK_kra                         = 930,      // U+0138 LATIN SMALL LETTER KRA
	XK_kappa                       = 930,      // deprecated
	XK_Rcedilla                    = 931,      // U+0156 LATIN CAPITAL LETTER R WITH CEDILLA
	XK_Itilde                      = 933,      // U+0128 LATIN CAPITAL LETTER I WITH TILDE
	XK_Lcedilla                    = 934,      // U+013B LATIN CAPITAL LETTER L WITH CEDILLA
	XK_Emacron                     = 938,      // U+0112 LATIN CAPITAL LETTER E WITH MACRON
	XK_Gcedilla                    = 939,      // U+0122 LATIN CAPITAL LETTER G WITH CEDILLA
	XK_Tslash                      = 940,      // U+0166 LATIN CAPITAL LETTER T WITH STROKE
	XK_rcedilla                    = 947,      // U+0157 LATIN SMALL LETTER R WITH CEDILLA
	XK_itilde                      = 949,      // U+0129 LATIN SMALL LETTER I WITH TILDE
	XK_lcedilla                    = 950,      // U+013C LATIN SMALL LETTER L WITH CEDILLA
	XK_emacron                     = 954,      // U+0113 LATIN SMALL LETTER E WITH MACRON
	XK_gcedilla                    = 955,      // U+0123 LATIN SMALL LETTER G WITH CEDILLA
	XK_tslash                      = 956,      // U+0167 LATIN SMALL LETTER T WITH STROKE
	XK_ENG                         = 957,      // U+014A LATIN CAPITAL LETTER ENG
	XK_eng                         = 959,      // U+014B LATIN SMALL LETTER ENG
	XK_Amacron                     = 960,      // U+0100 LATIN CAPITAL LETTER A WITH MACRON
	XK_Iogonek                     = 967,      // U+012E LATIN CAPITAL LETTER I WITH OGONEK
	XK_Eabovedot                   = 972,      // U+0116 LATIN CAPITAL LETTER E WITH DOT ABOVE
	XK_Imacron                     = 975,      // U+012A LATIN CAPITAL LETTER I WITH MACRON
	XK_Ncedilla                    = 977,      // U+0145 LATIN CAPITAL LETTER N WITH CEDILLA
	XK_Omacron                     = 978,      // U+014C LATIN CAPITAL LETTER O WITH MACRON
	XK_Kcedilla                    = 979,      // U+0136 LATIN CAPITAL LETTER K WITH CEDILLA
	XK_Uogonek                     = 985,      // U+0172 LATIN CAPITAL LETTER U WITH OGONEK
	XK_Utilde                      = 989,      // U+0168 LATIN CAPITAL LETTER U WITH TILDE
	XK_Umacron                     = 990,      // U+016A LATIN CAPITAL LETTER U WITH MACRON
	XK_amacron                     = 992,      // U+0101 LATIN SMALL LETTER A WITH MACRON
	XK_iogonek                     = 999,      // U+012F LATIN SMALL LETTER I WITH OGONEK
	XK_eabovedot                   = 1004,     // U+0117 LATIN SMALL LETTER E WITH DOT ABOVE
	XK_imacron                     = 1007,     // U+012B LATIN SMALL LETTER I WITH MACRON
	XK_ncedilla                    = 1009,     // U+0146 LATIN SMALL LETTER N WITH CEDILLA
	XK_omacron                     = 1010,     // U+014D LATIN SMALL LETTER O WITH MACRON
	XK_kcedilla                    = 1011,     // U+0137 LATIN SMALL LETTER K WITH CEDILLA
	XK_uogonek                     = 1017,     // U+0173 LATIN SMALL LETTER U WITH OGONEK
	XK_utilde                      = 1021,     // U+0169 LATIN SMALL LETTER U WITH TILDE
	XK_umacron                     = 1022,     // U+016B LATIN SMALL LETTER U WITH MACRON
	XK_Babovedot                   = 16784898, // U+1E02 LATIN CAPITAL LETTER B WITH DOT ABOVE
	XK_babovedot                   = 16784899, // U+1E03 LATIN SMALL LETTER B WITH DOT ABOVE
	XK_Dabovedot                   = 16784906, // U+1E0A LATIN CAPITAL LETTER D WITH DOT ABOVE
	XK_Wgrave                      = 16785024, // U+1E80 LATIN CAPITAL LETTER W WITH GRAVE
	XK_Wacute                      = 16785026, // U+1E82 LATIN CAPITAL LETTER W WITH ACUTE
	XK_dabovedot                   = 16784907, // U+1E0B LATIN SMALL LETTER D WITH DOT ABOVE
	XK_Ygrave                      = 16785138, // U+1EF2 LATIN CAPITAL LETTER Y WITH GRAVE
	XK_Fabovedot                   = 16784926, // U+1E1E LATIN CAPITAL LETTER F WITH DOT ABOVE
	XK_fabovedot                   = 16784927, // U+1E1F LATIN SMALL LETTER F WITH DOT ABOVE
	XK_Mabovedot                   = 16784960, // U+1E40 LATIN CAPITAL LETTER M WITH DOT ABOVE
	XK_mabovedot                   = 16784961, // U+1E41 LATIN SMALL LETTER M WITH DOT ABOVE
	XK_Pabovedot                   = 16784982, // U+1E56 LATIN CAPITAL LETTER P WITH DOT ABOVE
	XK_wgrave                      = 16785025, // U+1E81 LATIN SMALL LETTER W WITH GRAVE
	XK_pabovedot                   = 16784983, // U+1E57 LATIN SMALL LETTER P WITH DOT ABOVE
	XK_wacute                      = 16785027, // U+1E83 LATIN SMALL LETTER W WITH ACUTE
	XK_Sabovedot                   = 16784992, // U+1E60 LATIN CAPITAL LETTER S WITH DOT ABOVE
	XK_ygrave                      = 16785139, // U+1EF3 LATIN SMALL LETTER Y WITH GRAVE
	XK_Wdiaeresis                  = 16785028, // U+1E84 LATIN CAPITAL LETTER W WITH DIAERESIS
	XK_wdiaeresis                  = 16785029, // U+1E85 LATIN SMALL LETTER W WITH DIAERESIS
	XK_sabovedot                   = 16784993, // U+1E61 LATIN SMALL LETTER S WITH DOT ABOVE
	XK_Wcircumflex                 = 16777588, // U+0174 LATIN CAPITAL LETTER W WITH CIRCUMFLEX
	XK_Tabovedot                   = 16785002, // U+1E6A LATIN CAPITAL LETTER T WITH DOT ABOVE
	XK_Ycircumflex                 = 16777590, // U+0176 LATIN CAPITAL LETTER Y WITH CIRCUMFLEX
	XK_wcircumflex                 = 16777589, // U+0175 LATIN SMALL LETTER W WITH CIRCUMFLEX
	XK_tabovedot                   = 16785003, // U+1E6B LATIN SMALL LETTER T WITH DOT ABOVE
	XK_ycircumflex                 = 16777591, // U+0177 LATIN SMALL LETTER Y WITH CIRCUMFLEX
	XK_OE                          = 5052,     // U+0152 LATIN CAPITAL LIGATURE OE
	XK_oe                          = 5053,     // U+0153 LATIN SMALL LIGATURE OE
	XK_Ydiaeresis                  = 5054,     // U+0178 LATIN CAPITAL LETTER Y WITH DIAERESIS
	XK_overline                    = 1150,     // U+203E OVERLINE
	XK_kana_fullstop               = 1185,     // U+3002 IDEOGRAPHIC FULL STOP
	XK_kana_openingbracket         = 1186,     // U+300C LEFT CORNER BRACKET
	XK_kana_closingbracket         = 1187,     // U+300D RIGHT CORNER BRACKET
	XK_kana_comma                  = 1188,     // U+3001 IDEOGRAPHIC COMMA
	XK_kana_conjunctive            = 1189,     // U+30FB KATAKANA MIDDLE DOT
	XK_kana_middledot              = 1189,     // deprecated
	XK_kana_WO                     = 1190,     // U+30F2 KATAKANA LETTER WO
	XK_kana_a                      = 1191,     // U+30A1 KATAKANA LETTER SMALL A
	XK_kana_i                      = 1192,     // U+30A3 KATAKANA LETTER SMALL I
	XK_kana_u                      = 1193,     // U+30A5 KATAKANA LETTER SMALL U
	XK_kana_e                      = 1194,     // U+30A7 KATAKANA LETTER SMALL E
	XK_kana_o                      = 1195,     // U+30A9 KATAKANA LETTER SMALL O
	XK_kana_ya                     = 1196,     // U+30E3 KATAKANA LETTER SMALL YA
	XK_kana_yu                     = 1197,     // U+30E5 KATAKANA LETTER SMALL YU
	XK_kana_yo                     = 1198,     // U+30E7 KATAKANA LETTER SMALL YO
	XK_kana_tsu                    = 1199,     // U+30C3 KATAKANA LETTER SMALL TU
	XK_kana_tu                     = 1199,     // deprecated
	XK_prolongedsound              = 1200,     // U+30FC KATAKANA-HIRAGANA PROLONGED SOUND MARK
	XK_kana_A                      = 1201,     // U+30A2 KATAKANA LETTER A
	XK_kana_I                      = 1202,     // U+30A4 KATAKANA LETTER I
	XK_kana_U                      = 1203,     // U+30A6 KATAKANA LETTER U
	XK_kana_E                      = 1204,     // U+30A8 KATAKANA LETTER E
	XK_kana_O                      = 1205,     // U+30AA KATAKANA LETTER O
	XK_kana_KA                     = 1206,     // U+30AB KATAKANA LETTER KA
	XK_kana_KI                     = 1207,     // U+30AD KATAKANA LETTER KI
	XK_kana_KU                     = 1208,     // U+30AF KATAKANA LETTER KU
	XK_kana_KE                     = 1209,     // U+30B1 KATAKANA LETTER KE
	XK_kana_KO                     = 1210,     // U+30B3 KATAKANA LETTER KO
	XK_kana_SA                     = 1211,     // U+30B5 KATAKANA LETTER SA
	XK_kana_SHI                    = 1212,     // U+30B7 KATAKANA LETTER SI
	XK_kana_SU                     = 1213,     // U+30B9 KATAKANA LETTER SU
	XK_kana_SE                     = 1214,     // U+30BB KATAKANA LETTER SE
	XK_kana_SO                     = 1215,     // U+30BD KATAKANA LETTER SO
	XK_kana_TA                     = 1216,     // U+30BF KATAKANA LETTER TA
	XK_kana_CHI                    = 1217,     // U+30C1 KATAKANA LETTER TI
	XK_kana_TI                     = 1217,     // deprecated
	XK_kana_TSU                    = 1218,     // U+30C4 KATAKANA LETTER TU
	XK_kana_TU                     = 1218,     // deprecated
	XK_kana_TE                     = 1219,     // U+30C6 KATAKANA LETTER TE
	XK_kana_TO                     = 1220,     // U+30C8 KATAKANA LETTER TO
	XK_kana_NA                     = 1221,     // U+30CA KATAKANA LETTER NA
	XK_kana_NI                     = 1222,     // U+30CB KATAKANA LETTER NI
	XK_kana_NU                     = 1223,     // U+30CC KATAKANA LETTER NU
	XK_kana_NE                     = 1224,     // U+30CD KATAKANA LETTER NE
	XK_kana_NO                     = 1225,     // U+30CE KATAKANA LETTER NO
	XK_kana_HA                     = 1226,     // U+30CF KATAKANA LETTER HA
	XK_kana_HI                     = 1227,     // U+30D2 KATAKANA LETTER HI
	XK_kana_FU                     = 1228,     // U+30D5 KATAKANA LETTER HU
	XK_kana_HU                     = 1228,     // deprecated
	XK_kana_HE                     = 1229,     // U+30D8 KATAKANA LETTER HE
	XK_kana_HO                     = 1230,     // U+30DB KATAKANA LETTER HO
	XK_kana_MA                     = 1231,     // U+30DE KATAKANA LETTER MA
	XK_kana_MI                     = 1232,     // U+30DF KATAKANA LETTER MI
	XK_kana_MU                     = 1233,     // U+30E0 KATAKANA LETTER MU
	XK_kana_ME                     = 1234,     // U+30E1 KATAKANA LETTER ME
	XK_kana_MO                     = 1235,     // U+30E2 KATAKANA LETTER MO
	XK_kana_YA                     = 1236,     // U+30E4 KATAKANA LETTER YA
	XK_kana_YU                     = 1237,     // U+30E6 KATAKANA LETTER YU
	XK_kana_YO                     = 1238,     // U+30E8 KATAKANA LETTER YO
	XK_kana_RA                     = 1239,     // U+30E9 KATAKANA LETTER RA
	XK_kana_RI                     = 1240,     // U+30EA KATAKANA LETTER RI
	XK_kana_RU                     = 1241,     // U+30EB KATAKANA LETTER RU
	XK_kana_RE                     = 1242,     // U+30EC KATAKANA LETTER RE
	XK_kana_RO                     = 1243,     // U+30ED KATAKANA LETTER RO
	XK_kana_WA                     = 1244,     // U+30EF KATAKANA LETTER WA
	XK_kana_N                      = 1245,     // U+30F3 KATAKANA LETTER N
	XK_voicedsound                 = 1246,     // U+309B KATAKANA-HIRAGANA VOICED SOUND MARK
	XK_semivoicedsound             = 1247,     // U+309C KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK
	XK_kana_switch                 = 65406,    // Alias for mode_switch
	XK_Farsi_0                     = 16778992, // U+06F0 EXTENDED ARABIC-INDIC DIGIT ZERO
	XK_Farsi_1                     = 16778993, // U+06F1 EXTENDED ARABIC-INDIC DIGIT ONE
	XK_Farsi_2                     = 16778994, // U+06F2 EXTENDED ARABIC-INDIC DIGIT TWO
	XK_Farsi_3                     = 16778995, // U+06F3 EXTENDED ARABIC-INDIC DIGIT THREE
	XK_Farsi_4                     = 16778996, // U+06F4 EXTENDED ARABIC-INDIC DIGIT FOUR
	XK_Farsi_5                     = 16778997, // U+06F5 EXTENDED ARABIC-INDIC DIGIT FIVE
	XK_Farsi_6                     = 16778998, // U+06F6 EXTENDED ARABIC-INDIC DIGIT SIX
	XK_Farsi_7                     = 16778999, // U+06F7 EXTENDED ARABIC-INDIC DIGIT SEVEN
	XK_Farsi_8                     = 16779000, // U+06F8 EXTENDED ARABIC-INDIC DIGIT EIGHT
	XK_Farsi_9                     = 16779001, // U+06F9 EXTENDED ARABIC-INDIC DIGIT NINE
	XK_Arabic_percent              = 16778858, // U+066A ARABIC PERCENT SIGN
	XK_Arabic_superscript_alef     = 16778864, // U+0670 ARABIC LETTER SUPERSCRIPT ALEF
	XK_Arabic_tteh                 = 16778873, // U+0679 ARABIC LETTER TTEH
	XK_Arabic_peh                  = 16778878, // U+067E ARABIC LETTER PEH
	XK_Arabic_tcheh                = 16778886, // U+0686 ARABIC LETTER TCHEH
	XK_Arabic_ddal                 = 16778888, // U+0688 ARABIC LETTER DDAL
	XK_Arabic_rreh                 = 16778897, // U+0691 ARABIC LETTER RREH
	XK_Arabic_comma                = 1452,     // U+060C ARABIC COMMA
	XK_Arabic_fullstop             = 16778964, // U+06D4 ARABIC FULL STOP
	XK_Arabic_0                    = 16778848, // U+0660 ARABIC-INDIC DIGIT ZERO
	XK_Arabic_1                    = 16778849, // U+0661 ARABIC-INDIC DIGIT ONE
	XK_Arabic_2                    = 16778850, // U+0662 ARABIC-INDIC DIGIT TWO
	XK_Arabic_3                    = 16778851, // U+0663 ARABIC-INDIC DIGIT THREE
	XK_Arabic_4                    = 16778852, // U+0664 ARABIC-INDIC DIGIT FOUR
	XK_Arabic_5                    = 16778853, // U+0665 ARABIC-INDIC DIGIT FIVE
	XK_Arabic_6                    = 16778854, // U+0666 ARABIC-INDIC DIGIT SIX
	XK_Arabic_7                    = 16778855, // U+0667 ARABIC-INDIC DIGIT SEVEN
	XK_Arabic_8                    = 16778856, // U+0668 ARABIC-INDIC DIGIT EIGHT
	XK_Arabic_9                    = 16778857, // U+0669 ARABIC-INDIC DIGIT NINE
	XK_Arabic_semicolon            = 1467,     // U+061B ARABIC SEMICOLON
	XK_Arabic_question_mark        = 1471,     // U+061F ARABIC QUESTION MARK
	XK_Arabic_hamza                = 1473,     // U+0621 ARABIC LETTER HAMZA
	XK_Arabic_maddaonalef          = 1474,     // U+0622 ARABIC LETTER ALEF WITH MADDA ABOVE
	XK_Arabic_hamzaonalef          = 1475,     // U+0623 ARABIC LETTER ALEF WITH HAMZA ABOVE
	XK_Arabic_hamzaonwaw           = 1476,     // U+0624 ARABIC LETTER WAW WITH HAMZA ABOVE
	XK_Arabic_hamzaunderalef       = 1477,     // U+0625 ARABIC LETTER ALEF WITH HAMZA BELOW
	XK_Arabic_hamzaonyeh           = 1478,     // U+0626 ARABIC LETTER YEH WITH HAMZA ABOVE
	XK_Arabic_alef                 = 1479,     // U+0627 ARABIC LETTER ALEF
	XK_Arabic_beh                  = 1480,     // U+0628 ARABIC LETTER BEH
	XK_Arabic_tehmarbuta           = 1481,     // U+0629 ARABIC LETTER TEH MARBUTA
	XK_Arabic_teh                  = 1482,     // U+062A ARABIC LETTER TEH
	XK_Arabic_theh                 = 1483,     // U+062B ARABIC LETTER THEH
	XK_Arabic_jeem                 = 1484,     // U+062C ARABIC LETTER JEEM
	XK_Arabic_hah                  = 1485,     // U+062D ARABIC LETTER HAH
	XK_Arabic_khah                 = 1486,     // U+062E ARABIC LETTER KHAH
	XK_Arabic_dal                  = 1487,     // U+062F ARABIC LETTER DAL
	XK_Arabic_thal                 = 1488,     // U+0630 ARABIC LETTER THAL
	XK_Arabic_ra                   = 1489,     // U+0631 ARABIC LETTER REH
	XK_Arabic_zain                 = 1490,     // U+0632 ARABIC LETTER ZAIN
	XK_Arabic_seen                 = 1491,     // U+0633 ARABIC LETTER SEEN
	XK_Arabic_sheen                = 1492,     // U+0634 ARABIC LETTER SHEEN
	XK_Arabic_sad                  = 1493,     // U+0635 ARABIC LETTER SAD
	XK_Arabic_dad                  = 1494,     // U+0636 ARABIC LETTER DAD
	XK_Arabic_tah                  = 1495,     // U+0637 ARABIC LETTER TAH
	XK_Arabic_zah                  = 1496,     // U+0638 ARABIC LETTER ZAH
	XK_Arabic_ain                  = 1497,     // U+0639 ARABIC LETTER AIN
	XK_Arabic_ghain                = 1498,     // U+063A ARABIC LETTER GHAIN
	XK_Arabic_tatweel              = 1504,     // U+0640 ARABIC TATWEEL
	XK_Arabic_feh                  = 1505,     // U+0641 ARABIC LETTER FEH
	XK_Arabic_qaf                  = 1506,     // U+0642 ARABIC LETTER QAF
	XK_Arabic_kaf                  = 1507,     // U+0643 ARABIC LETTER KAF
	XK_Arabic_lam                  = 1508,     // U+0644 ARABIC LETTER LAM
	XK_Arabic_meem                 = 1509,     // U+0645 ARABIC LETTER MEEM
	XK_Arabic_noon                 = 1510,     // U+0646 ARABIC LETTER NOON
	XK_Arabic_ha                   = 1511,     // U+0647 ARABIC LETTER HEH
	XK_Arabic_heh                  = 1511,     // deprecated
	XK_Arabic_waw                  = 1512,     // U+0648 ARABIC LETTER WAW
	XK_Arabic_alefmaksura          = 1513,     // U+0649 ARABIC LETTER ALEF MAKSURA
	XK_Arabic_yeh                  = 1514,     // U+064A ARABIC LETTER YEH
	XK_Arabic_fathatan             = 1515,     // U+064B ARABIC FATHATAN
	XK_Arabic_dammatan             = 1516,     // U+064C ARABIC DAMMATAN
	XK_Arabic_kasratan             = 1517,     // U+064D ARABIC KASRATAN
	XK_Arabic_fatha                = 1518,     // U+064E ARABIC FATHA
	XK_Arabic_damma                = 1519,     // U+064F ARABIC DAMMA
	XK_Arabic_kasra                = 1520,     // U+0650 ARABIC KASRA
	XK_Arabic_shadda               = 1521,     // U+0651 ARABIC SHADDA
	XK_Arabic_sukun                = 1522,     // U+0652 ARABIC SUKUN
	XK_Arabic_madda_above          = 16778835, // U+0653 ARABIC MADDAH ABOVE
	XK_Arabic_hamza_above          = 16778836, // U+0654 ARABIC HAMZA ABOVE
	XK_Arabic_hamza_below          = 16778837, // U+0655 ARABIC HAMZA BELOW
	XK_Arabic_jeh                  = 16778904, // U+0698 ARABIC LETTER JEH
	XK_Arabic_veh                  = 16778916, // U+06A4 ARABIC LETTER VEH
	XK_Arabic_keheh                = 16778921, // U+06A9 ARABIC LETTER KEHEH
	XK_Arabic_gaf                  = 16778927, // U+06AF ARABIC LETTER GAF
	XK_Arabic_noon_ghunna          = 16778938, // U+06BA ARABIC LETTER NOON GHUNNA
	XK_Arabic_heh_doachashmee      = 16778942, // U+06BE ARABIC LETTER HEH DOACHASHMEE
	XK_Farsi_yeh                   = 16778956, // U+06CC ARABIC LETTER FARSI YEH
	XK_Arabic_farsi_yeh            = 16778956, // U+06CC ARABIC LETTER FARSI YEH
	XK_Arabic_yeh_baree            = 16778962, // U+06D2 ARABIC LETTER YEH BARREE
	XK_Arabic_heh_goal             = 16778945, // U+06C1 ARABIC LETTER HEH GOAL
	XK_Arabic_switch               = 65406,    // Alias for mode_switch
	XK_Cyrillic_GHE_bar            = 16778386, // U+0492 CYRILLIC CAPITAL LETTER GHE WITH STROKE
	XK_Cyrillic_ghe_bar            = 16778387, // U+0493 CYRILLIC SMALL LETTER GHE WITH STROKE
	XK_Cyrillic_ZHE_descender      = 16778390, // U+0496 CYRILLIC CAPITAL LETTER ZHE WITH DESCENDER
	XK_Cyrillic_zhe_descender      = 16778391, // U+0497 CYRILLIC SMALL LETTER ZHE WITH DESCENDER
	XK_Cyrillic_KA_descender       = 16778394, // U+049A CYRILLIC CAPITAL LETTER KA WITH DESCENDER
	XK_Cyrillic_ka_descender       = 16778395, // U+049B CYRILLIC SMALL LETTER KA WITH DESCENDER
	XK_Cyrillic_KA_vertstroke      = 16778396, // U+049C CYRILLIC CAPITAL LETTER KA WITH VERTICAL STROKE
	XK_Cyrillic_ka_vertstroke      = 16778397, // U+049D CYRILLIC SMALL LETTER KA WITH VERTICAL STROKE
	XK_Cyrillic_EN_descender       = 16778402, // U+04A2 CYRILLIC CAPITAL LETTER EN WITH DESCENDER
	XK_Cyrillic_en_descender       = 16778403, // U+04A3 CYRILLIC SMALL LETTER EN WITH DESCENDER
	XK_Cyrillic_U_straight         = 16778414, // U+04AE CYRILLIC CAPITAL LETTER STRAIGHT U
	XK_Cyrillic_u_straight         = 16778415, // U+04AF CYRILLIC SMALL LETTER STRAIGHT U
	XK_Cyrillic_U_straight_bar     = 16778416, // U+04B0 CYRILLIC CAPITAL LETTER STRAIGHT U WITH STROKE
	XK_Cyrillic_u_straight_bar     = 16778417, // U+04B1 CYRILLIC SMALL LETTER STRAIGHT U WITH STROKE
	XK_Cyrillic_HA_descender       = 16778418, // U+04B2 CYRILLIC CAPITAL LETTER HA WITH DESCENDER
	XK_Cyrillic_ha_descender       = 16778419, // U+04B3 CYRILLIC SMALL LETTER HA WITH DESCENDER
	XK_Cyrillic_CHE_descender      = 16778422, // U+04B6 CYRILLIC CAPITAL LETTER CHE WITH DESCENDER
	XK_Cyrillic_che_descender      = 16778423, // U+04B7 CYRILLIC SMALL LETTER CHE WITH DESCENDER
	XK_Cyrillic_CHE_vertstroke     = 16778424, // U+04B8 CYRILLIC CAPITAL LETTER CHE WITH VERTICAL STROKE
	XK_Cyrillic_che_vertstroke     = 16778425, // U+04B9 CYRILLIC SMALL LETTER CHE WITH VERTICAL STROKE
	XK_Cyrillic_SHHA               = 16778426, // U+04BA CYRILLIC CAPITAL LETTER SHHA
	XK_Cyrillic_shha               = 16778427, // U+04BB CYRILLIC SMALL LETTER SHHA
	XK_Cyrillic_SCHWA              = 16778456, // U+04D8 CYRILLIC CAPITAL LETTER SCHWA
	XK_Cyrillic_schwa              = 16778457, // U+04D9 CYRILLIC SMALL LETTER SCHWA
	XK_Cyrillic_I_macron           = 16778466, // U+04E2 CYRILLIC CAPITAL LETTER I WITH MACRON
	XK_Cyrillic_i_macron           = 16778467, // U+04E3 CYRILLIC SMALL LETTER I WITH MACRON
	XK_Cyrillic_O_bar              = 16778472, // U+04E8 CYRILLIC CAPITAL LETTER BARRED O
	XK_Cyrillic_o_bar              = 16778473, // U+04E9 CYRILLIC SMALL LETTER BARRED O
	XK_Cyrillic_U_macron           = 16778478, // U+04EE CYRILLIC CAPITAL LETTER U WITH MACRON
	XK_Cyrillic_u_macron           = 16778479, // U+04EF CYRILLIC SMALL LETTER U WITH MACRON
	XK_Serbian_dje                 = 1697,     // U+0452 CYRILLIC SMALL LETTER DJE
	XK_Macedonia_gje               = 1698,     // U+0453 CYRILLIC SMALL LETTER GJE
	XK_Cyrillic_io                 = 1699,     // U+0451 CYRILLIC SMALL LETTER IO
	XK_Ukrainian_ie                = 1700,     // U+0454 CYRILLIC SMALL LETTER UKRAINIAN IE
	XK_Ukranian_je                 = 1700,     // deprecated
	XK_Macedonia_dse               = 1701,     // U+0455 CYRILLIC SMALL LETTER DZE
	XK_Ukrainian_i                 = 1702,     // U+0456 CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
	XK_Ukranian_i                  = 1702,     // deprecated
	XK_Ukrainian_yi                = 1703,     // U+0457 CYRILLIC SMALL LETTER YI
	XK_Ukranian_yi                 = 1703,     // deprecated
	XK_Cyrillic_je                 = 1704,     // U+0458 CYRILLIC SMALL LETTER JE
	XK_Serbian_je                  = 1704,     // deprecated
	XK_Cyrillic_lje                = 1705,     // U+0459 CYRILLIC SMALL LETTER LJE
	XK_Serbian_lje                 = 1705,     // deprecated
	XK_Cyrillic_nje                = 1706,     // U+045A CYRILLIC SMALL LETTER NJE
	XK_Serbian_nje                 = 1706,     // deprecated
	XK_Serbian_tshe                = 1707,     // U+045B CYRILLIC SMALL LETTER TSHE
	XK_Macedonia_kje               = 1708,     // U+045C CYRILLIC SMALL LETTER KJE
	XK_Ukrainian_ghe_with_upturn   = 1709,     // U+0491 CYRILLIC SMALL LETTER GHE WITH UPTURN
	XK_Byelorussian_shortu         = 1710,     // U+045E CYRILLIC SMALL LETTER SHORT U
	XK_Cyrillic_dzhe               = 1711,     // U+045F CYRILLIC SMALL LETTER DZHE
	XK_Serbian_dze                 = 1711,     // deprecated
	XK_numerosign                  = 1712,     // U+2116 NUMERO SIGN
	XK_Serbian_DJE                 = 1713,     // U+0402 CYRILLIC CAPITAL LETTER DJE
	XK_Macedonia_GJE               = 1714,     // U+0403 CYRILLIC CAPITAL LETTER GJE
	XK_Cyrillic_IO                 = 1715,     // U+0401 CYRILLIC CAPITAL LETTER IO
	XK_Ukrainian_IE                = 1716,     // U+0404 CYRILLIC CAPITAL LETTER UKRAINIAN IE
	XK_Ukranian_JE                 = 1716,     // deprecated
	XK_Macedonia_DSE               = 1717,     // U+0405 CYRILLIC CAPITAL LETTER DZE
	XK_Ukrainian_I                 = 1718,     // U+0406 CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
	XK_Ukranian_I                  = 1718,     // deprecated
	XK_Ukrainian_YI                = 1719,     // U+0407 CYRILLIC CAPITAL LETTER YI
	XK_Ukranian_YI                 = 1719,     // deprecated
	XK_Cyrillic_JE                 = 1720,     // U+0408 CYRILLIC CAPITAL LETTER JE
	XK_Serbian_JE                  = 1720,     // deprecated
	XK_Cyrillic_LJE                = 1721,     // U+0409 CYRILLIC CAPITAL LETTER LJE
	XK_Serbian_LJE                 = 1721,     // deprecated
	XK_Cyrillic_NJE                = 1722,     // U+040A CYRILLIC CAPITAL LETTER NJE
	XK_Serbian_NJE                 = 1722,     // deprecated
	XK_Serbian_TSHE                = 1723,     // U+040B CYRILLIC CAPITAL LETTER TSHE
	XK_Macedonia_KJE               = 1724,     // U+040C CYRILLIC CAPITAL LETTER KJE
	XK_Ukrainian_GHE_WITH_UPTURN   = 1725,     // U+0490 CYRILLIC CAPITAL LETTER GHE WITH UPTURN
	XK_Byelorussian_SHORTU         = 1726,     // U+040E CYRILLIC CAPITAL LETTER SHORT U
	XK_Cyrillic_DZHE               = 1727,     // U+040F CYRILLIC CAPITAL LETTER DZHE
	XK_Serbian_DZE                 = 1727,     // deprecated
	XK_Cyrillic_yu                 = 1728,     // U+044E CYRILLIC SMALL LETTER YU
	XK_Cyrillic_a                  = 1729,     // U+0430 CYRILLIC SMALL LETTER A
	XK_Cyrillic_be                 = 1730,     // U+0431 CYRILLIC SMALL LETTER BE
	XK_Cyrillic_tse                = 1731,     // U+0446 CYRILLIC SMALL LETTER TSE
	XK_Cyrillic_de                 = 1732,     // U+0434 CYRILLIC SMALL LETTER DE
	XK_Cyrillic_ie                 = 1733,     // U+0435 CYRILLIC SMALL LETTER IE
	XK_Cyrillic_ef                 = 1734,     // U+0444 CYRILLIC SMALL LETTER EF
	XK_Cyrillic_ghe                = 1735,     // U+0433 CYRILLIC SMALL LETTER GHE
	XK_Cyrillic_ha                 = 1736,     // U+0445 CYRILLIC SMALL LETTER HA
	XK_Cyrillic_i                  = 1737,     // U+0438 CYRILLIC SMALL LETTER I
	XK_Cyrillic_shorti             = 1738,     // U+0439 CYRILLIC SMALL LETTER SHORT I
	XK_Cyrillic_ka                 = 1739,     // U+043A CYRILLIC SMALL LETTER KA
	XK_Cyrillic_el                 = 1740,     // U+043B CYRILLIC SMALL LETTER EL
	XK_Cyrillic_em                 = 1741,     // U+043C CYRILLIC SMALL LETTER EM
	XK_Cyrillic_en                 = 1742,     // U+043D CYRILLIC SMALL LETTER EN
	XK_Cyrillic_o                  = 1743,     // U+043E CYRILLIC SMALL LETTER O
	XK_Cyrillic_pe                 = 1744,     // U+043F CYRILLIC SMALL LETTER PE
	XK_Cyrillic_ya                 = 1745,     // U+044F CYRILLIC SMALL LETTER YA
	XK_Cyrillic_er                 = 1746,     // U+0440 CYRILLIC SMALL LETTER ER
	XK_Cyrillic_es                 = 1747,     // U+0441 CYRILLIC SMALL LETTER ES
	XK_Cyrillic_te                 = 1748,     // U+0442 CYRILLIC SMALL LETTER TE
	XK_Cyrillic_u                  = 1749,     // U+0443 CYRILLIC SMALL LETTER U
	XK_Cyrillic_zhe                = 1750,     // U+0436 CYRILLIC SMALL LETTER ZHE
	XK_Cyrillic_ve                 = 1751,     // U+0432 CYRILLIC SMALL LETTER VE
	XK_Cyrillic_softsign           = 1752,     // U+044C CYRILLIC SMALL LETTER SOFT SIGN
	XK_Cyrillic_yeru               = 1753,     // U+044B CYRILLIC SMALL LETTER YERU
	XK_Cyrillic_ze                 = 1754,     // U+0437 CYRILLIC SMALL LETTER ZE
	XK_Cyrillic_sha                = 1755,     // U+0448 CYRILLIC SMALL LETTER SHA
	XK_Cyrillic_e                  = 1756,     // U+044D CYRILLIC SMALL LETTER E
	XK_Cyrillic_shcha              = 1757,     // U+0449 CYRILLIC SMALL LETTER SHCHA
	XK_Cyrillic_che                = 1758,     // U+0447 CYRILLIC SMALL LETTER CHE
	XK_Cyrillic_hardsign           = 1759,     // U+044A CYRILLIC SMALL LETTER HARD SIGN
	XK_Cyrillic_YU                 = 1760,     // U+042E CYRILLIC CAPITAL LETTER YU
	XK_Cyrillic_A                  = 1761,     // U+0410 CYRILLIC CAPITAL LETTER A
	XK_Cyrillic_BE                 = 1762,     // U+0411 CYRILLIC CAPITAL LETTER BE
	XK_Cyrillic_TSE                = 1763,     // U+0426 CYRILLIC CAPITAL LETTER TSE
	XK_Cyrillic_DE                 = 1764,     // U+0414 CYRILLIC CAPITAL LETTER DE
	XK_Cyrillic_IE                 = 1765,     // U+0415 CYRILLIC CAPITAL LETTER IE
	XK_Cyrillic_EF                 = 1766,     // U+0424 CYRILLIC CAPITAL LETTER EF
	XK_Cyrillic_GHE                = 1767,     // U+0413 CYRILLIC CAPITAL LETTER GHE
	XK_Cyrillic_HA                 = 1768,     // U+0425 CYRILLIC CAPITAL LETTER HA
	XK_Cyrillic_I                  = 1769,     // U+0418 CYRILLIC CAPITAL LETTER I
	XK_Cyrillic_SHORTI             = 1770,     // U+0419 CYRILLIC CAPITAL LETTER SHORT I
	XK_Cyrillic_KA                 = 1771,     // U+041A CYRILLIC CAPITAL LETTER KA
	XK_Cyrillic_EL                 = 1772,     // U+041B CYRILLIC CAPITAL LETTER EL
	XK_Cyrillic_EM                 = 1773,     // U+041C CYRILLIC CAPITAL LETTER EM
	XK_Cyrillic_EN                 = 1774,     // U+041D CYRILLIC CAPITAL LETTER EN
	XK_Cyrillic_O                  = 1775,     // U+041E CYRILLIC CAPITAL LETTER O
	XK_Cyrillic_PE                 = 1776,     // U+041F CYRILLIC CAPITAL LETTER PE
	XK_Cyrillic_YA                 = 1777,     // U+042F CYRILLIC CAPITAL LETTER YA
	XK_Cyrillic_ER                 = 1778,     // U+0420 CYRILLIC CAPITAL LETTER ER
	XK_Cyrillic_ES                 = 1779,     // U+0421 CYRILLIC CAPITAL LETTER ES
	XK_Cyrillic_TE                 = 1780,     // U+0422 CYRILLIC CAPITAL LETTER TE
	XK_Cyrillic_U                  = 1781,     // U+0423 CYRILLIC CAPITAL LETTER U
	XK_Cyrillic_ZHE                = 1782,     // U+0416 CYRILLIC CAPITAL LETTER ZHE
	XK_Cyrillic_VE                 = 1783,     // U+0412 CYRILLIC CAPITAL LETTER VE
	XK_Cyrillic_SOFTSIGN           = 1784,     // U+042C CYRILLIC CAPITAL LETTER SOFT SIGN
	XK_Cyrillic_YERU               = 1785,     // U+042B CYRILLIC CAPITAL LETTER YERU
	XK_Cyrillic_ZE                 = 1786,     // U+0417 CYRILLIC CAPITAL LETTER ZE
	XK_Cyrillic_SHA                = 1787,     // U+0428 CYRILLIC CAPITAL LETTER SHA
	XK_Cyrillic_E                  = 1788,     // U+042D CYRILLIC CAPITAL LETTER E
	XK_Cyrillic_SHCHA              = 1789,     // U+0429 CYRILLIC CAPITAL LETTER SHCHA
	XK_Cyrillic_CHE                = 1790,     // U+0427 CYRILLIC CAPITAL LETTER CHE
	XK_Cyrillic_HARDSIGN           = 1791,     // U+042A CYRILLIC CAPITAL LETTER HARD SIGN
	XK_Greek_ALPHAaccent           = 1953,     // U+0386 GREEK CAPITAL LETTER ALPHA WITH TONOS
	XK_Greek_EPSILONaccent         = 1954,     // U+0388 GREEK CAPITAL LETTER EPSILON WITH TONOS
	XK_Greek_ETAaccent             = 1955,     // U+0389 GREEK CAPITAL LETTER ETA WITH TONOS
	XK_Greek_IOTAaccent            = 1956,     // U+038A GREEK CAPITAL LETTER IOTA WITH TONOS
	XK_Greek_IOTAdieresis          = 1957,     // U+03AA GREEK CAPITAL LETTER IOTA WITH DIALYTIKA
	XK_Greek_IOTAdiaeresis         = 1957,     // old typo
	XK_Greek_OMICRONaccent         = 1959,     // U+038C GREEK CAPITAL LETTER OMICRON WITH TONOS
	XK_Greek_UPSILONaccent         = 1960,     // U+038E GREEK CAPITAL LETTER UPSILON WITH TONOS
	XK_Greek_UPSILONdieresis       = 1961,     // U+03AB GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA
	XK_Greek_OMEGAaccent           = 1963,     // U+038F GREEK CAPITAL LETTER OMEGA WITH TONOS
	XK_Greek_accentdieresis        = 1966,     // U+0385 GREEK DIALYTIKA TONOS
	XK_Greek_horizbar              = 1967,     // U+2015 HORIZONTAL BAR
	XK_Greek_alphaaccent           = 1969,     // U+03AC GREEK SMALL LETTER ALPHA WITH TONOS
	XK_Greek_epsilonaccent         = 1970,     // U+03AD GREEK SMALL LETTER EPSILON WITH TONOS
	XK_Greek_etaaccent             = 1971,     // U+03AE GREEK SMALL LETTER ETA WITH TONOS
	XK_Greek_iotaaccent            = 1972,     // U+03AF GREEK SMALL LETTER IOTA WITH TONOS
	XK_Greek_iotadieresis          = 1973,     // U+03CA GREEK SMALL LETTER IOTA WITH DIALYTIKA
	XK_Greek_iotaaccentdieresis    = 1974,     // U+0390 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS
	XK_Greek_omicronaccent         = 1975,     // U+03CC GREEK SMALL LETTER OMICRON WITH TONOS
	XK_Greek_upsilonaccent         = 1976,     // U+03CD GREEK SMALL LETTER UPSILON WITH TONOS
	XK_Greek_upsilondieresis       = 1977,     // U+03CB GREEK SMALL LETTER UPSILON WITH DIALYTIKA
	XK_Greek_upsilonaccentdieresis = 1978,     // U+03B0 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS
	XK_Greek_omegaaccent           = 1979,     // U+03CE GREEK SMALL LETTER OMEGA WITH TONOS
	XK_Greek_ALPHA                 = 1985,     // U+0391 GREEK CAPITAL LETTER ALPHA
	XK_Greek_BETA                  = 1986,     // U+0392 GREEK CAPITAL LETTER BETA
	XK_Greek_GAMMA                 = 1987,     // U+0393 GREEK CAPITAL LETTER GAMMA
	XK_Greek_DELTA                 = 1988,     // U+0394 GREEK CAPITAL LETTER DELTA
	XK_Greek_EPSILON               = 1989,     // U+0395 GREEK CAPITAL LETTER EPSILON
	XK_Greek_ZETA                  = 1990,     // U+0396 GREEK CAPITAL LETTER ZETA
	XK_Greek_ETA                   = 1991,     // U+0397 GREEK CAPITAL LETTER ETA
	XK_Greek_THETA                 = 1992,     // U+0398 GREEK CAPITAL LETTER THETA
	XK_Greek_IOTA                  = 1993,     // U+0399 GREEK CAPITAL LETTER IOTA
	XK_Greek_KAPPA                 = 1994,     // U+039A GREEK CAPITAL LETTER KAPPA
	XK_Greek_LAMDA                 = 1995,     // U+039B GREEK CAPITAL LETTER LAMDA
	XK_Greek_LAMBDA                = 1995,     // U+039B GREEK CAPITAL LETTER LAMDA
	XK_Greek_MU                    = 1996,     // U+039C GREEK CAPITAL LETTER MU
	XK_Greek_NU                    = 1997,     // U+039D GREEK CAPITAL LETTER NU
	XK_Greek_XI                    = 1998,     // U+039E GREEK CAPITAL LETTER XI
	XK_Greek_OMICRON               = 1999,     // U+039F GREEK CAPITAL LETTER OMICRON
	XK_Greek_PI                    = 2000,     // U+03A0 GREEK CAPITAL LETTER PI
	XK_Greek_RHO                   = 2001,     // U+03A1 GREEK CAPITAL LETTER RHO
	XK_Greek_SIGMA                 = 2002,     // U+03A3 GREEK CAPITAL LETTER SIGMA
	XK_Greek_TAU                   = 2004,     // U+03A4 GREEK CAPITAL LETTER TAU
	XK_Greek_UPSILON               = 2005,     // U+03A5 GREEK CAPITAL LETTER UPSILON
	XK_Greek_PHI                   = 2006,     // U+03A6 GREEK CAPITAL LETTER PHI
	XK_Greek_CHI                   = 2007,     // U+03A7 GREEK CAPITAL LETTER CHI
	XK_Greek_PSI                   = 2008,     // U+03A8 GREEK CAPITAL LETTER PSI
	XK_Greek_OMEGA                 = 2009,     // U+03A9 GREEK CAPITAL LETTER OMEGA
	XK_Greek_alpha                 = 2017,     // U+03B1 GREEK SMALL LETTER ALPHA
	XK_Greek_beta                  = 2018,     // U+03B2 GREEK SMALL LETTER BETA
	XK_Greek_gamma                 = 2019,     // U+03B3 GREEK SMALL LETTER GAMMA
	XK_Greek_delta                 = 2020,     // U+03B4 GREEK SMALL LETTER DELTA
	XK_Greek_epsilon               = 2021,     // U+03B5 GREEK SMALL LETTER EPSILON
	XK_Greek_zeta                  = 2022,     // U+03B6 GREEK SMALL LETTER ZETA
	XK_Greek_eta                   = 2023,     // U+03B7 GREEK SMALL LETTER ETA
	XK_Greek_theta                 = 2024,     // U+03B8 GREEK SMALL LETTER THETA
	XK_Greek_iota                  = 2025,     // U+03B9 GREEK SMALL LETTER IOTA
	XK_Greek_kappa                 = 2026,     // U+03BA GREEK SMALL LETTER KAPPA
	XK_Greek_lamda                 = 2027,     // U+03BB GREEK SMALL LETTER LAMDA
	XK_Greek_lambda                = 2027,     // U+03BB GREEK SMALL LETTER LAMDA
	XK_Greek_mu                    = 2028,     // U+03BC GREEK SMALL LETTER MU
	XK_Greek_nu                    = 2029,     // U+03BD GREEK SMALL LETTER NU
	XK_Greek_xi                    = 2030,     // U+03BE GREEK SMALL LETTER XI
	XK_Greek_omicron               = 2031,     // U+03BF GREEK SMALL LETTER OMICRON
	XK_Greek_pi                    = 2032,     // U+03C0 GREEK SMALL LETTER PI
	XK_Greek_rho                   = 2033,     // U+03C1 GREEK SMALL LETTER RHO
	XK_Greek_sigma                 = 2034,     // U+03C3 GREEK SMALL LETTER SIGMA
	XK_Greek_finalsmallsigma       = 2035,     // U+03C2 GREEK SMALL LETTER FINAL SIGMA
	XK_Greek_tau                   = 2036,     // U+03C4 GREEK SMALL LETTER TAU
	XK_Greek_upsilon               = 2037,     // U+03C5 GREEK SMALL LETTER UPSILON
	XK_Greek_phi                   = 2038,     // U+03C6 GREEK SMALL LETTER PHI
	XK_Greek_chi                   = 2039,     // U+03C7 GREEK SMALL LETTER CHI
	XK_Greek_psi                   = 2040,     // U+03C8 GREEK SMALL LETTER PSI
	XK_Greek_omega                 = 2041,     // U+03C9 GREEK SMALL LETTER OMEGA
	XK_Greek_switch                = 65406,    // Alias for mode_switch
	XK_leftradical                 = 2209,     // U+23B7 RADICAL SYMBOL BOTTOM
	XK_topleftradical              = 2210,     // (U+250C BOX DRAWINGS LIGHT DOWN AND RIGHT)
	XK_horizconnector              = 2211,     // (U+2500 BOX DRAWINGS LIGHT HORIZONTAL)
	XK_topintegral                 = 2212,     // U+2320 TOP HALF INTEGRAL
	XK_botintegral                 = 2213,     // U+2321 BOTTOM HALF INTEGRAL
	XK_vertconnector               = 2214,     // (U+2502 BOX DRAWINGS LIGHT VERTICAL)
	XK_topleftsqbracket            = 2215,     // U+23A1 LEFT SQUARE BRACKET UPPER CORNER
	XK_botleftsqbracket            = 2216,     // U+23A3 LEFT SQUARE BRACKET LOWER CORNER
	XK_toprightsqbracket           = 2217,     // U+23A4 RIGHT SQUARE BRACKET UPPER CORNER
	XK_botrightsqbracket           = 2218,     // U+23A6 RIGHT SQUARE BRACKET LOWER CORNER
	XK_topleftparens               = 2219,     // U+239B LEFT PARENTHESIS UPPER HOOK
	XK_botleftparens               = 2220,     // U+239D LEFT PARENTHESIS LOWER HOOK
	XK_toprightparens              = 2221,     // U+239E RIGHT PARENTHESIS UPPER HOOK
	XK_botrightparens              = 2222,     // U+23A0 RIGHT PARENTHESIS LOWER HOOK
	XK_leftmiddlecurlybrace        = 2223,     // U+23A8 LEFT CURLY BRACKET MIDDLE PIECE
	XK_rightmiddlecurlybrace       = 2224,     // U+23AC RIGHT CURLY BRACKET MIDDLE PIECE
	XK_topleftsummation            = 2225, 
	XK_botleftsummation            = 2226, 
	XK_topvertsummationconnector   = 2227, 
	XK_botvertsummationconnector   = 2228, 
	XK_toprightsummation           = 2229, 
	XK_botrightsummation           = 2230, 
	XK_rightmiddlesummation        = 2231, 
	XK_lessthanequal               = 2236,     // U+2264 LESS-THAN OR EQUAL TO
	XK_notequal                    = 2237,     // U+2260 NOT EQUAL TO
	XK_greaterthanequal            = 2238,     // U+2265 GREATER-THAN OR EQUAL TO
	XK_integral                    = 2239,     // U+222B INTEGRAL
	XK_therefore                   = 2240,     // U+2234 THEREFORE
	XK_variation                   = 2241,     // U+221D PROPORTIONAL TO
	XK_infinity                    = 2242,     // U+221E INFINITY
	XK_nabla                       = 2245,     // U+2207 NABLA
	XK_approximate                 = 2248,     // U+223C TILDE OPERATOR
	XK_similarequal                = 2249,     // U+2243 ASYMPTOTICALLY EQUAL TO
	XK_ifonlyif                    = 2253,     // U+21D4 LEFT RIGHT DOUBLE ARROW
	XK_implies                     = 2254,     // U+21D2 RIGHTWARDS DOUBLE ARROW
	XK_identical                   = 2255,     // U+2261 IDENTICAL TO
	XK_radical                     = 2262,     // U+221A SQUARE ROOT
	XK_includedin                  = 2266,     // U+2282 SUBSET OF
	XK_includes                    = 2267,     // U+2283 SUPERSET OF
	XK_intersection                = 2268,     // U+2229 INTERSECTION
	XK_union                       = 2269,     // U+222A UNION
	XK_logicaland                  = 2270,     // U+2227 LOGICAL AND
	XK_logicalor                   = 2271,     // U+2228 LOGICAL OR
	XK_partialderivative           = 2287,     // U+2202 PARTIAL DIFFERENTIAL
	XK_function                    = 2294,     // U+0192 LATIN SMALL LETTER F WITH HOOK
	XK_leftarrow                   = 2299,     // U+2190 LEFTWARDS ARROW
	XK_uparrow                     = 2300,     // U+2191 UPWARDS ARROW
	XK_rightarrow                  = 2301,     // U+2192 RIGHTWARDS ARROW
	XK_downarrow                   = 2302,     // U+2193 DOWNWARDS ARROW
	XK_blank                       = 2527, 
	XK_soliddiamond                = 2528,     // U+25C6 BLACK DIAMOND
	XK_checkerboard                = 2529,     // U+2592 MEDIUM SHADE
	XK_ht                          = 2530,     // U+2409 SYMBOL FOR HORIZONTAL TABULATION
	XK_ff                          = 2531,     // U+240C SYMBOL FOR FORM FEED
	XK_cr                          = 2532,     // U+240D SYMBOL FOR CARRIAGE RETURN
	XK_lf                          = 2533,     // U+240A SYMBOL FOR LINE FEED
	XK_nl                          = 2536,     // U+2424 SYMBOL FOR NEWLINE
	XK_vt                          = 2537,     // U+240B SYMBOL FOR VERTICAL TABULATION
	XK_lowrightcorner              = 2538,     // U+2518 BOX DRAWINGS LIGHT UP AND LEFT
	XK_uprightcorner               = 2539,     // U+2510 BOX DRAWINGS LIGHT DOWN AND LEFT
	XK_upleftcorner                = 2540,     // U+250C BOX DRAWINGS LIGHT DOWN AND RIGHT
	XK_lowleftcorner               = 2541,     // U+2514 BOX DRAWINGS LIGHT UP AND RIGHT
	XK_crossinglines               = 2542,     // U+253C BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
	XK_horizlinescan1              = 2543,     // U+23BA HORIZONTAL SCAN LINE-1
	XK_horizlinescan3              = 2544,     // U+23BB HORIZONTAL SCAN LINE-3
	XK_horizlinescan5              = 2545,     // U+2500 BOX DRAWINGS LIGHT HORIZONTAL
	XK_horizlinescan7              = 2546,     // U+23BC HORIZONTAL SCAN LINE-7
	XK_horizlinescan9              = 2547,     // U+23BD HORIZONTAL SCAN LINE-9
	XK_leftt                       = 2548,     // U+251C BOX DRAWINGS LIGHT VERTICAL AND RIGHT
	XK_rightt                      = 2549,     // U+2524 BOX DRAWINGS LIGHT VERTICAL AND LEFT
	XK_bott                        = 2550,     // U+2534 BOX DRAWINGS LIGHT UP AND HORIZONTAL
	XK_topt                        = 2551,     // U+252C BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
	XK_vertbar                     = 2552,     // U+2502 BOX DRAWINGS LIGHT VERTICAL
	XK_emspace                     = 2721,     // U+2003 EM SPACE
	XK_enspace                     = 2722,     // U+2002 EN SPACE
	XK_em3space                    = 2723,     // U+2004 THREE-PER-EM SPACE
	XK_em4space                    = 2724,     // U+2005 FOUR-PER-EM SPACE
	XK_digitspace                  = 2725,     // U+2007 FIGURE SPACE
	XK_punctspace                  = 2726,     // U+2008 PUNCTUATION SPACE
	XK_thinspace                   = 2727,     // U+2009 THIN SPACE
	XK_hairspace                   = 2728,     // U+200A HAIR SPACE
	XK_emdash                      = 2729,     // U+2014 EM DASH
	XK_endash                      = 2730,     // U+2013 EN DASH
	XK_signifblank                 = 2732,     // (U+2423 OPEN BOX)
	XK_ellipsis                    = 2734,     // U+2026 HORIZONTAL ELLIPSIS
	XK_doubbaselinedot             = 2735,     // U+2025 TWO DOT LEADER
	XK_onethird                    = 2736,     // U+2153 VULGAR FRACTION ONE THIRD
	XK_twothirds                   = 2737,     // U+2154 VULGAR FRACTION TWO THIRDS
	XK_onefifth                    = 2738,     // U+2155 VULGAR FRACTION ONE FIFTH
	XK_twofifths                   = 2739,     // U+2156 VULGAR FRACTION TWO FIFTHS
	XK_threefifths                 = 2740,     // U+2157 VULGAR FRACTION THREE FIFTHS
	XK_fourfifths                  = 2741,     // U+2158 VULGAR FRACTION FOUR FIFTHS
	XK_onesixth                    = 2742,     // U+2159 VULGAR FRACTION ONE SIXTH
	XK_fivesixths                  = 2743,     // U+215A VULGAR FRACTION FIVE SIXTHS
	XK_careof                      = 2744,     // U+2105 CARE OF
	XK_figdash                     = 2747,     // U+2012 FIGURE DASH
	XK_leftanglebracket            = 2748,     // (U+27E8 MATHEMATICAL LEFT ANGLE BRACKET)
	XK_decimalpoint                = 2749,     // (U+002E FULL STOP)
	XK_rightanglebracket           = 2750,     // (U+27E9 MATHEMATICAL RIGHT ANGLE BRACKET)
	XK_marker                      = 2751, 
	XK_oneeighth                   = 2755,     // U+215B VULGAR FRACTION ONE EIGHTH
	XK_threeeighths                = 2756,     // U+215C VULGAR FRACTION THREE EIGHTHS
	XK_fiveeighths                 = 2757,     // U+215D VULGAR FRACTION FIVE EIGHTHS
	XK_seveneighths                = 2758,     // U+215E VULGAR FRACTION SEVEN EIGHTHS
	XK_trademark                   = 2761,     // U+2122 TRADE MARK SIGN
	XK_signaturemark               = 2762,     // (U+2613 SALTIRE)
	XK_trademarkincircle           = 2763, 
	XK_leftopentriangle            = 2764,     // (U+25C1 WHITE LEFT-POINTING TRIANGLE)
	XK_rightopentriangle           = 2765,     // (U+25B7 WHITE RIGHT-POINTING TRIANGLE)
	XK_emopencircle                = 2766,     // (U+25CB WHITE CIRCLE)
	XK_emopenrectangle             = 2767,     // (U+25AF WHITE VERTICAL RECTANGLE)
	XK_leftsinglequotemark         = 2768,     // U+2018 LEFT SINGLE QUOTATION MARK
	XK_rightsinglequotemark        = 2769,     // U+2019 RIGHT SINGLE QUOTATION MARK
	XK_leftdoublequotemark         = 2770,     // U+201C LEFT DOUBLE QUOTATION MARK
	XK_rightdoublequotemark        = 2771,     // U+201D RIGHT DOUBLE QUOTATION MARK
	XK_prescription                = 2772,     // U+211E PRESCRIPTION TAKE
	XK_minutes                     = 2774,     // U+2032 PRIME
	XK_seconds                     = 2775,     // U+2033 DOUBLE PRIME
	XK_latincross                  = 2777,     // U+271D LATIN CROSS
	XK_hexagram                    = 2778, 
	XK_filledrectbullet            = 2779,     // (U+25AC BLACK RECTANGLE)
	XK_filledlefttribullet         = 2780,     // (U+25C0 BLACK LEFT-POINTING TRIANGLE)
	XK_filledrighttribullet        = 2781,     // (U+25B6 BLACK RIGHT-POINTING TRIANGLE)
	XK_emfilledcircle              = 2782,     // (U+25CF BLACK CIRCLE)
	XK_emfilledrect                = 2783,     // (U+25AE BLACK VERTICAL RECTANGLE)
	XK_enopencircbullet            = 2784,     // (U+25E6 WHITE BULLET)
	XK_enopensquarebullet          = 2785,     // (U+25AB WHITE SMALL SQUARE)
	XK_openrectbullet              = 2786,     // (U+25AD WHITE RECTANGLE)
	XK_opentribulletup             = 2787,     // (U+25B3 WHITE UP-POINTING TRIANGLE)
	XK_opentribulletdown           = 2788,     // (U+25BD WHITE DOWN-POINTING TRIANGLE)
	XK_openstar                    = 2789,     // (U+2606 WHITE STAR)
	XK_enfilledcircbullet          = 2790,     // (U+2022 BULLET)
	XK_enfilledsqbullet            = 2791,     // (U+25AA BLACK SMALL SQUARE)
	XK_filledtribulletup           = 2792,     // (U+25B2 BLACK UP-POINTING TRIANGLE)
	XK_filledtribulletdown         = 2793,     // (U+25BC BLACK DOWN-POINTING TRIANGLE)
	XK_leftpointer                 = 2794,     // (U+261C WHITE LEFT POINTING INDEX)
	XK_rightpointer                = 2795,     // (U+261E WHITE RIGHT POINTING INDEX)
	XK_club                        = 2796,     // U+2663 BLACK CLUB SUIT
	XK_diamond                     = 2797,     // U+2666 BLACK DIAMOND SUIT
	XK_heart                       = 2798,     // U+2665 BLACK HEART SUIT
	XK_maltesecross                = 2800,     // U+2720 MALTESE CROSS
	XK_dagger                      = 2801,     // U+2020 DAGGER
	XK_doubledagger                = 2802,     // U+2021 DOUBLE DAGGER
	XK_checkmark                   = 2803,     // U+2713 CHECK MARK
	XK_ballotcross                 = 2804,     // U+2717 BALLOT X
	XK_musicalsharp                = 2805,     // U+266F MUSIC SHARP SIGN
	XK_musicalflat                 = 2806,     // U+266D MUSIC FLAT SIGN
	XK_malesymbol                  = 2807,     // U+2642 MALE SIGN
	XK_femalesymbol                = 2808,     // U+2640 FEMALE SIGN
	XK_telephone                   = 2809,     // U+260E BLACK TELEPHONE
	XK_telephonerecorder           = 2810,     // U+2315 TELEPHONE RECORDER
	XK_phonographcopyright         = 2811,     // U+2117 SOUND RECORDING COPYRIGHT
	XK_caret                       = 2812,     // U+2038 CARET
	XK_singlelowquotemark          = 2813,     // U+201A SINGLE LOW-9 QUOTATION MARK
	XK_doublelowquotemark          = 2814,     // U+201E DOUBLE LOW-9 QUOTATION MARK
	XK_cursor                      = 2815, 
	XK_leftcaret                   = 2979,     // (U+003C LESS-THAN SIGN)
	XK_rightcaret                  = 2982,     // (U+003E GREATER-THAN SIGN)
	XK_downcaret                   = 2984,     // (U+2228 LOGICAL OR)
	XK_upcaret                     = 2985,     // (U+2227 LOGICAL AND)
	XK_overbar                     = 3008,     // (U+00AF MACRON)
	XK_downtack                    = 3010,     // U+22A5 UP TACK
	XK_upshoe                      = 3011,     // (U+2229 INTERSECTION)
	XK_downstile                   = 3012,     // U+230A LEFT FLOOR
	XK_underbar                    = 3014,     // (U+005F LOW LINE)
	XK_jot                         = 3018,     // U+2218 RING OPERATOR
	XK_quad                        = 3020,     // U+2395 APL FUNCTIONAL SYMBOL QUAD
	XK_uptack                      = 3022,     // U+22A4 DOWN TACK
	XK_circle                      = 3023,     // U+25CB WHITE CIRCLE
	XK_upstile                     = 3027,     // U+2308 LEFT CEILING
	XK_downshoe                    = 3030,     // (U+222A UNION)
	XK_rightshoe                   = 3032,     // (U+2283 SUPERSET OF)
	XK_leftshoe                    = 3034,     // (U+2282 SUBSET OF)
	XK_lefttack                    = 3036,     // U+22A2 RIGHT TACK
	XK_righttack                   = 3068,     // U+22A3 LEFT TACK
	XK_hebrew_doublelowline        = 3295,     // U+2017 DOUBLE LOW LINE
	XK_hebrew_aleph                = 3296,     // U+05D0 HEBREW LETTER ALEF
	XK_hebrew_bet                  = 3297,     // U+05D1 HEBREW LETTER BET
	XK_hebrew_beth                 = 3297,     // deprecated
	XK_hebrew_gimel                = 3298,     // U+05D2 HEBREW LETTER GIMEL
	XK_hebrew_gimmel               = 3298,     // deprecated
	XK_hebrew_dalet                = 3299,     // U+05D3 HEBREW LETTER DALET
	XK_hebrew_daleth               = 3299,     // deprecated
	XK_hebrew_he                   = 3300,     // U+05D4 HEBREW LETTER HE
	XK_hebrew_waw                  = 3301,     // U+05D5 HEBREW LETTER VAV
	XK_hebrew_zain                 = 3302,     // U+05D6 HEBREW LETTER ZAYIN
	XK_hebrew_zayin                = 3302,     // deprecated
	XK_hebrew_chet                 = 3303,     // U+05D7 HEBREW LETTER HET
	XK_hebrew_het                  = 3303,     // deprecated
	XK_hebrew_tet                  = 3304,     // U+05D8 HEBREW LETTER TET
	XK_hebrew_teth                 = 3304,     // deprecated
	XK_hebrew_yod                  = 3305,     // U+05D9 HEBREW LETTER YOD
	XK_hebrew_finalkaph            = 3306,     // U+05DA HEBREW LETTER FINAL KAF
	XK_hebrew_kaph                 = 3307,     // U+05DB HEBREW LETTER KAF
	XK_hebrew_lamed                = 3308,     // U+05DC HEBREW LETTER LAMED
	XK_hebrew_finalmem             = 3309,     // U+05DD HEBREW LETTER FINAL MEM
	XK_hebrew_mem                  = 3310,     // U+05DE HEBREW LETTER MEM
	XK_hebrew_finalnun             = 3311,     // U+05DF HEBREW LETTER FINAL NUN
	XK_hebrew_nun                  = 3312,     // U+05E0 HEBREW LETTER NUN
	XK_hebrew_samech               = 3313,     // U+05E1 HEBREW LETTER SAMEKH
	XK_hebrew_samekh               = 3313,     // deprecated
	XK_hebrew_ayin                 = 3314,     // U+05E2 HEBREW LETTER AYIN
	XK_hebrew_finalpe              = 3315,     // U+05E3 HEBREW LETTER FINAL PE
	XK_hebrew_pe                   = 3316,     // U+05E4 HEBREW LETTER PE
	XK_hebrew_finalzade            = 3317,     // U+05E5 HEBREW LETTER FINAL TSADI
	XK_hebrew_finalzadi            = 3317,     // deprecated
	XK_hebrew_zade                 = 3318,     // U+05E6 HEBREW LETTER TSADI
	XK_hebrew_zadi                 = 3318,     // deprecated
	XK_hebrew_qoph                 = 3319,     // U+05E7 HEBREW LETTER QOF
	XK_hebrew_kuf                  = 3319,     // deprecated
	XK_hebrew_resh                 = 3320,     // U+05E8 HEBREW LETTER RESH
	XK_hebrew_shin                 = 3321,     // U+05E9 HEBREW LETTER SHIN
	XK_hebrew_taw                  = 3322,     // U+05EA HEBREW LETTER TAV
	XK_hebrew_taf                  = 3322,     // deprecated
	XK_Hebrew_switch               = 65406,    // Alias for mode_switch
	XK_Thai_kokai                  = 3489,     // U+0E01 THAI CHARACTER KO KAI
	XK_Thai_khokhai                = 3490,     // U+0E02 THAI CHARACTER KHO KHAI
	XK_Thai_khokhuat               = 3491,     // U+0E03 THAI CHARACTER KHO KHUAT
	XK_Thai_khokhwai               = 3492,     // U+0E04 THAI CHARACTER KHO KHWAI
	XK_Thai_khokhon                = 3493,     // U+0E05 THAI CHARACTER KHO KHON
	XK_Thai_khorakhang             = 3494,     // U+0E06 THAI CHARACTER KHO RAKHANG
	XK_Thai_ngongu                 = 3495,     // U+0E07 THAI CHARACTER NGO NGU
	XK_Thai_chochan                = 3496,     // U+0E08 THAI CHARACTER CHO CHAN
	XK_Thai_choching               = 3497,     // U+0E09 THAI CHARACTER CHO CHING
	XK_Thai_chochang               = 3498,     // U+0E0A THAI CHARACTER CHO CHANG
	XK_Thai_soso                   = 3499,     // U+0E0B THAI CHARACTER SO SO
	XK_Thai_chochoe                = 3500,     // U+0E0C THAI CHARACTER CHO CHOE
	XK_Thai_yoying                 = 3501,     // U+0E0D THAI CHARACTER YO YING
	XK_Thai_dochada                = 3502,     // U+0E0E THAI CHARACTER DO CHADA
	XK_Thai_topatak                = 3503,     // U+0E0F THAI CHARACTER TO PATAK
	XK_Thai_thothan                = 3504,     // U+0E10 THAI CHARACTER THO THAN
	XK_Thai_thonangmontho          = 3505,     // U+0E11 THAI CHARACTER THO NANGMONTHO
	XK_Thai_thophuthao             = 3506,     // U+0E12 THAI CHARACTER THO PHUTHAO
	XK_Thai_nonen                  = 3507,     // U+0E13 THAI CHARACTER NO NEN
	XK_Thai_dodek                  = 3508,     // U+0E14 THAI CHARACTER DO DEK
	XK_Thai_totao                  = 3509,     // U+0E15 THAI CHARACTER TO TAO
	XK_Thai_thothung               = 3510,     // U+0E16 THAI CHARACTER THO THUNG
	XK_Thai_thothahan              = 3511,     // U+0E17 THAI CHARACTER THO THAHAN
	XK_Thai_thothong               = 3512,     // U+0E18 THAI CHARACTER THO THONG
	XK_Thai_nonu                   = 3513,     // U+0E19 THAI CHARACTER NO NU
	XK_Thai_bobaimai               = 3514,     // U+0E1A THAI CHARACTER BO BAIMAI
	XK_Thai_popla                  = 3515,     // U+0E1B THAI CHARACTER PO PLA
	XK_Thai_phophung               = 3516,     // U+0E1C THAI CHARACTER PHO PHUNG
	XK_Thai_fofa                   = 3517,     // U+0E1D THAI CHARACTER FO FA
	XK_Thai_phophan                = 3518,     // U+0E1E THAI CHARACTER PHO PHAN
	XK_Thai_fofan                  = 3519,     // U+0E1F THAI CHARACTER FO FAN
	XK_Thai_phosamphao             = 3520,     // U+0E20 THAI CHARACTER PHO SAMPHAO
	XK_Thai_moma                   = 3521,     // U+0E21 THAI CHARACTER MO MA
	XK_Thai_yoyak                  = 3522,     // U+0E22 THAI CHARACTER YO YAK
	XK_Thai_rorua                  = 3523,     // U+0E23 THAI CHARACTER RO RUA
	XK_Thai_ru                     = 3524,     // U+0E24 THAI CHARACTER RU
	XK_Thai_loling                 = 3525,     // U+0E25 THAI CHARACTER LO LING
	XK_Thai_lu                     = 3526,     // U+0E26 THAI CHARACTER LU
	XK_Thai_wowaen                 = 3527,     // U+0E27 THAI CHARACTER WO WAEN
	XK_Thai_sosala                 = 3528,     // U+0E28 THAI CHARACTER SO SALA
	XK_Thai_sorusi                 = 3529,     // U+0E29 THAI CHARACTER SO RUSI
	XK_Thai_sosua                  = 3530,     // U+0E2A THAI CHARACTER SO SUA
	XK_Thai_hohip                  = 3531,     // U+0E2B THAI CHARACTER HO HIP
	XK_Thai_lochula                = 3532,     // U+0E2C THAI CHARACTER LO CHULA
	XK_Thai_oang                   = 3533,     // U+0E2D THAI CHARACTER O ANG
	XK_Thai_honokhuk               = 3534,     // U+0E2E THAI CHARACTER HO NOKHUK
	XK_Thai_paiyannoi              = 3535,     // U+0E2F THAI CHARACTER PAIYANNOI
	XK_Thai_saraa                  = 3536,     // U+0E30 THAI CHARACTER SARA A
	XK_Thai_maihanakat             = 3537,     // U+0E31 THAI CHARACTER MAI HAN-AKAT
	XK_Thai_saraaa                 = 3538,     // U+0E32 THAI CHARACTER SARA AA
	XK_Thai_saraam                 = 3539,     // U+0E33 THAI CHARACTER SARA AM
	XK_Thai_sarai                  = 3540,     // U+0E34 THAI CHARACTER SARA I
	XK_Thai_saraii                 = 3541,     // U+0E35 THAI CHARACTER SARA II
	XK_Thai_saraue                 = 3542,     // U+0E36 THAI CHARACTER SARA UE
	XK_Thai_sarauee                = 3543,     // U+0E37 THAI CHARACTER SARA UEE
	XK_Thai_sarau                  = 3544,     // U+0E38 THAI CHARACTER SARA U
	XK_Thai_sarauu                 = 3545,     // U+0E39 THAI CHARACTER SARA UU
	XK_Thai_phinthu                = 3546,     // U+0E3A THAI CHARACTER PHINTHU
	XK_Thai_maihanakat_maitho      = 3550, 
	XK_Thai_baht                   = 3551,     // U+0E3F THAI CURRENCY SYMBOL BAHT
	XK_Thai_sarae                  = 3552,     // U+0E40 THAI CHARACTER SARA E
	XK_Thai_saraae                 = 3553,     // U+0E41 THAI CHARACTER SARA AE
	XK_Thai_sarao                  = 3554,     // U+0E42 THAI CHARACTER SARA O
	XK_Thai_saraaimaimuan          = 3555,     // U+0E43 THAI CHARACTER SARA AI MAIMUAN
	XK_Thai_saraaimaimalai         = 3556,     // U+0E44 THAI CHARACTER SARA AI MAIMALAI
	XK_Thai_lakkhangyao            = 3557,     // U+0E45 THAI CHARACTER LAKKHANGYAO
	XK_Thai_maiyamok               = 3558,     // U+0E46 THAI CHARACTER MAIYAMOK
	XK_Thai_maitaikhu              = 3559,     // U+0E47 THAI CHARACTER MAITAIKHU
	XK_Thai_maiek                  = 3560,     // U+0E48 THAI CHARACTER MAI EK
	XK_Thai_maitho                 = 3561,     // U+0E49 THAI CHARACTER MAI THO
	XK_Thai_maitri                 = 3562,     // U+0E4A THAI CHARACTER MAI TRI
	XK_Thai_maichattawa            = 3563,     // U+0E4B THAI CHARACTER MAI CHATTAWA
	XK_Thai_thanthakhat            = 3564,     // U+0E4C THAI CHARACTER THANTHAKHAT
	XK_Thai_nikhahit               = 3565,     // U+0E4D THAI CHARACTER NIKHAHIT
	XK_Thai_leksun                 = 3568,     // U+0E50 THAI DIGIT ZERO
	XK_Thai_leknung                = 3569,     // U+0E51 THAI DIGIT ONE
	XK_Thai_leksong                = 3570,     // U+0E52 THAI DIGIT TWO
	XK_Thai_leksam                 = 3571,     // U+0E53 THAI DIGIT THREE
	XK_Thai_leksi                  = 3572,     // U+0E54 THAI DIGIT FOUR
	XK_Thai_lekha                  = 3573,     // U+0E55 THAI DIGIT FIVE
	XK_Thai_lekhok                 = 3574,     // U+0E56 THAI DIGIT SIX
	XK_Thai_lekchet                = 3575,     // U+0E57 THAI DIGIT SEVEN
	XK_Thai_lekpaet                = 3576,     // U+0E58 THAI DIGIT EIGHT
	XK_Thai_lekkao                 = 3577,     // U+0E59 THAI DIGIT NINE
	XK_Hangul                      = 65329,    // Hangul start/stop(toggle)
	XK_Hangul_Start                = 65330,    // Hangul start
	XK_Hangul_End                  = 65331,    // Hangul end, English start
	XK_Hangul_Hanja                = 65332,    // Start Hangul->Hanja Conversion
	XK_Hangul_Jamo                 = 65333,    // Hangul Jamo mode
	XK_Hangul_Romaja               = 65334,    // Hangul Romaja mode
	XK_Hangul_Codeinput            = 65335,    // Hangul code input mode
	XK_Hangul_Jeonja               = 65336,    // Jeonja mode
	XK_Hangul_Banja                = 65337,    // Banja mode
	XK_Hangul_PreHanja             = 65338,    // Pre Hanja conversion
	XK_Hangul_PostHanja            = 65339,    // Post Hanja conversion
	XK_Hangul_SingleCandidate      = 65340,    // Single candidate
	XK_Hangul_MultipleCandidate    = 65341,    // Multiple candidate
	XK_Hangul_PreviousCandidate    = 65342,    // Previous candidate
	XK_Hangul_Special              = 65343,    // Special symbols
	XK_Hangul_switch               = 65406,    // Alias for mode_switch
	XK_Hangul_Kiyeog               = 3745, 
	XK_Hangul_SsangKiyeog          = 3746, 
	XK_Hangul_KiyeogSios           = 3747, 
	XK_Hangul_Nieun                = 3748, 
	XK_Hangul_NieunJieuj           = 3749, 
	XK_Hangul_NieunHieuh           = 3750, 
	XK_Hangul_Dikeud               = 3751, 
	XK_Hangul_SsangDikeud          = 3752, 
	XK_Hangul_Rieul                = 3753, 
	XK_Hangul_RieulKiyeog          = 3754, 
	XK_Hangul_RieulMieum           = 3755, 
	XK_Hangul_RieulPieub           = 3756, 
	XK_Hangul_RieulSios            = 3757, 
	XK_Hangul_RieulTieut           = 3758, 
	XK_Hangul_RieulPhieuf          = 3759, 
	XK_Hangul_RieulHieuh           = 3760, 
	XK_Hangul_Mieum                = 3761, 
	XK_Hangul_Pieub                = 3762, 
	XK_Hangul_SsangPieub           = 3763, 
	XK_Hangul_PieubSios            = 3764, 
	XK_Hangul_Sios                 = 3765, 
	XK_Hangul_SsangSios            = 3766, 
	XK_Hangul_Ieung                = 3767, 
	XK_Hangul_Jieuj                = 3768, 
	XK_Hangul_SsangJieuj           = 3769, 
	XK_Hangul_Cieuc                = 3770, 
	XK_Hangul_Khieuq               = 3771, 
	XK_Hangul_Tieut                = 3772, 
	XK_Hangul_Phieuf               = 3773, 
	XK_Hangul_Hieuh                = 3774, 
	XK_Hangul_A                    = 3775, 
	XK_Hangul_AE                   = 3776, 
	XK_Hangul_YA                   = 3777, 
	XK_Hangul_YAE                  = 3778, 
	XK_Hangul_EO                   = 3779, 
	XK_Hangul_E                    = 3780, 
	XK_Hangul_YEO                  = 3781, 
	XK_Hangul_YE                   = 3782, 
	XK_Hangul_O                    = 3783, 
	XK_Hangul_WA                   = 3784, 
	XK_Hangul_WAE                  = 3785, 
	XK_Hangul_OE                   = 3786, 
	XK_Hangul_YO                   = 3787, 
	XK_Hangul_U                    = 3788, 
	XK_Hangul_WEO                  = 3789, 
	XK_Hangul_WE                   = 3790, 
	XK_Hangul_WI                   = 3791, 
	XK_Hangul_YU                   = 3792, 
	XK_Hangul_EU                   = 3793, 
	XK_Hangul_YI                   = 3794, 
	XK_Hangul_I                    = 3795, 
	XK_Hangul_J_Kiyeog             = 3796, 
	XK_Hangul_J_SsangKiyeog        = 3797, 
	XK_Hangul_J_KiyeogSios         = 3798, 
	XK_Hangul_J_Nieun              = 3799, 
	XK_Hangul_J_NieunJieuj         = 3800, 
	XK_Hangul_J_NieunHieuh         = 3801, 
	XK_Hangul_J_Dikeud             = 3802, 
	XK_Hangul_J_Rieul              = 3803, 
	XK_Hangul_J_RieulKiyeog        = 3804, 
	XK_Hangul_J_RieulMieum         = 3805, 
	XK_Hangul_J_RieulPieub         = 3806, 
	XK_Hangul_J_RieulSios          = 3807, 
	XK_Hangul_J_RieulTieut         = 3808, 
	XK_Hangul_J_RieulPhieuf        = 3809, 
	XK_Hangul_J_RieulHieuh         = 3810, 
	XK_Hangul_J_Mieum              = 3811, 
	XK_Hangul_J_Pieub              = 3812, 
	XK_Hangul_J_PieubSios          = 3813, 
	XK_Hangul_J_Sios               = 3814, 
	XK_Hangul_J_SsangSios          = 3815, 
	XK_Hangul_J_Ieung              = 3816, 
	XK_Hangul_J_Jieuj              = 3817, 
	XK_Hangul_J_Cieuc              = 3818, 
	XK_Hangul_J_Khieuq             = 3819, 
	XK_Hangul_J_Tieut              = 3820, 
	XK_Hangul_J_Phieuf             = 3821, 
	XK_Hangul_J_Hieuh              = 3822, 
	XK_Hangul_RieulYeorinHieuh     = 3823, 
	XK_Hangul_SunkyeongeumMieum    = 3824, 
	XK_Hangul_SunkyeongeumPieub    = 3825, 
	XK_Hangul_PanSios              = 3826, 
	XK_Hangul_KkogjiDalrinIeung    = 3827, 
	XK_Hangul_SunkyeongeumPhieuf   = 3828, 
	XK_Hangul_YeorinHieuh          = 3829, 
	XK_Hangul_AraeA                = 3830, 
	XK_Hangul_AraeAE               = 3831, 
	XK_Hangul_J_PanSios            = 3832, 
	XK_Hangul_J_KkogjiDalrinIeung  = 3833, 
	XK_Hangul_J_YeorinHieuh        = 3834, 
	XK_Korean_Won                  = 3839,     // (U+20A9 WON SIGN)
	XK_Armenian_ligature_ew        = 16778631, // U+0587 ARMENIAN SMALL LIGATURE ECH YIWN
	XK_Armenian_full_stop          = 16778633, // U+0589 ARMENIAN FULL STOP
	XK_Armenian_verjaket           = 16778633, // U+0589 ARMENIAN FULL STOP
	XK_Armenian_separation_mark    = 16778589, // U+055D ARMENIAN COMMA
	XK_Armenian_but                = 16778589, // U+055D ARMENIAN COMMA
	XK_Armenian_hyphen             = 16778634, // U+058A ARMENIAN HYPHEN
	XK_Armenian_yentamna           = 16778634, // U+058A ARMENIAN HYPHEN
	XK_Armenian_exclam             = 16778588, // U+055C ARMENIAN EXCLAMATION MARK
	XK_Armenian_amanak             = 16778588, // U+055C ARMENIAN EXCLAMATION MARK
	XK_Armenian_accent             = 16778587, // U+055B ARMENIAN EMPHASIS MARK
	XK_Armenian_shesht             = 16778587, // U+055B ARMENIAN EMPHASIS MARK
	XK_Armenian_question           = 16778590, // U+055E ARMENIAN QUESTION MARK
	XK_Armenian_paruyk             = 16778590, // U+055E ARMENIAN QUESTION MARK
	XK_Armenian_AYB                = 16778545, // U+0531 ARMENIAN CAPITAL LETTER AYB
	XK_Armenian_ayb                = 16778593, // U+0561 ARMENIAN SMALL LETTER AYB
	XK_Armenian_BEN                = 16778546, // U+0532 ARMENIAN CAPITAL LETTER BEN
	XK_Armenian_ben                = 16778594, // U+0562 ARMENIAN SMALL LETTER BEN
	XK_Armenian_GIM                = 16778547, // U+0533 ARMENIAN CAPITAL LETTER GIM
	XK_Armenian_gim                = 16778595, // U+0563 ARMENIAN SMALL LETTER GIM
	XK_Armenian_DA                 = 16778548, // U+0534 ARMENIAN CAPITAL LETTER DA
	XK_Armenian_da                 = 16778596, // U+0564 ARMENIAN SMALL LETTER DA
	XK_Armenian_YECH               = 16778549, // U+0535 ARMENIAN CAPITAL LETTER ECH
	XK_Armenian_yech               = 16778597, // U+0565 ARMENIAN SMALL LETTER ECH
	XK_Armenian_ZA                 = 16778550, // U+0536 ARMENIAN CAPITAL LETTER ZA
	XK_Armenian_za                 = 16778598, // U+0566 ARMENIAN SMALL LETTER ZA
	XK_Armenian_E                  = 16778551, // U+0537 ARMENIAN CAPITAL LETTER EH
	XK_Armenian_e                  = 16778599, // U+0567 ARMENIAN SMALL LETTER EH
	XK_Armenian_AT                 = 16778552, // U+0538 ARMENIAN CAPITAL LETTER ET
	XK_Armenian_at                 = 16778600, // U+0568 ARMENIAN SMALL LETTER ET
	XK_Armenian_TO                 = 16778553, // U+0539 ARMENIAN CAPITAL LETTER TO
	XK_Armenian_to                 = 16778601, // U+0569 ARMENIAN SMALL LETTER TO
	XK_Armenian_ZHE                = 16778554, // U+053A ARMENIAN CAPITAL LETTER ZHE
	XK_Armenian_zhe                = 16778602, // U+056A ARMENIAN SMALL LETTER ZHE
	XK_Armenian_INI                = 16778555, // U+053B ARMENIAN CAPITAL LETTER INI
	XK_Armenian_ini                = 16778603, // U+056B ARMENIAN SMALL LETTER INI
	XK_Armenian_LYUN               = 16778556, // U+053C ARMENIAN CAPITAL LETTER LIWN
	XK_Armenian_lyun               = 16778604, // U+056C ARMENIAN SMALL LETTER LIWN
	XK_Armenian_KHE                = 16778557, // U+053D ARMENIAN CAPITAL LETTER XEH
	XK_Armenian_khe                = 16778605, // U+056D ARMENIAN SMALL LETTER XEH
	XK_Armenian_TSA                = 16778558, // U+053E ARMENIAN CAPITAL LETTER CA
	XK_Armenian_tsa                = 16778606, // U+056E ARMENIAN SMALL LETTER CA
	XK_Armenian_KEN                = 16778559, // U+053F ARMENIAN CAPITAL LETTER KEN
	XK_Armenian_ken                = 16778607, // U+056F ARMENIAN SMALL LETTER KEN
	XK_Armenian_HO                 = 16778560, // U+0540 ARMENIAN CAPITAL LETTER HO
	XK_Armenian_ho                 = 16778608, // U+0570 ARMENIAN SMALL LETTER HO
	XK_Armenian_DZA                = 16778561, // U+0541 ARMENIAN CAPITAL LETTER JA
	XK_Armenian_dza                = 16778609, // U+0571 ARMENIAN SMALL LETTER JA
	XK_Armenian_GHAT               = 16778562, // U+0542 ARMENIAN CAPITAL LETTER GHAD
	XK_Armenian_ghat               = 16778610, // U+0572 ARMENIAN SMALL LETTER GHAD
	XK_Armenian_TCHE               = 16778563, // U+0543 ARMENIAN CAPITAL LETTER CHEH
	XK_Armenian_tche               = 16778611, // U+0573 ARMENIAN SMALL LETTER CHEH
	XK_Armenian_MEN                = 16778564, // U+0544 ARMENIAN CAPITAL LETTER MEN
	XK_Armenian_men                = 16778612, // U+0574 ARMENIAN SMALL LETTER MEN
	XK_Armenian_HI                 = 16778565, // U+0545 ARMENIAN CAPITAL LETTER YI
	XK_Armenian_hi                 = 16778613, // U+0575 ARMENIAN SMALL LETTER YI
	XK_Armenian_NU                 = 16778566, // U+0546 ARMENIAN CAPITAL LETTER NOW
	XK_Armenian_nu                 = 16778614, // U+0576 ARMENIAN SMALL LETTER NOW
	XK_Armenian_SHA                = 16778567, // U+0547 ARMENIAN CAPITAL LETTER SHA
	XK_Armenian_sha                = 16778615, // U+0577 ARMENIAN SMALL LETTER SHA
	XK_Armenian_VO                 = 16778568, // U+0548 ARMENIAN CAPITAL LETTER VO
	XK_Armenian_vo                 = 16778616, // U+0578 ARMENIAN SMALL LETTER VO
	XK_Armenian_CHA                = 16778569, // U+0549 ARMENIAN CAPITAL LETTER CHA
	XK_Armenian_cha                = 16778617, // U+0579 ARMENIAN SMALL LETTER CHA
	XK_Armenian_PE                 = 16778570, // U+054A ARMENIAN CAPITAL LETTER PEH
	XK_Armenian_pe                 = 16778618, // U+057A ARMENIAN SMALL LETTER PEH
	XK_Armenian_JE                 = 16778571, // U+054B ARMENIAN CAPITAL LETTER JHEH
	XK_Armenian_je                 = 16778619, // U+057B ARMENIAN SMALL LETTER JHEH
	XK_Armenian_RA                 = 16778572, // U+054C ARMENIAN CAPITAL LETTER RA
	XK_Armenian_ra                 = 16778620, // U+057C ARMENIAN SMALL LETTER RA
	XK_Armenian_SE                 = 16778573, // U+054D ARMENIAN CAPITAL LETTER SEH
	XK_Armenian_se                 = 16778621, // U+057D ARMENIAN SMALL LETTER SEH
	XK_Armenian_VEV                = 16778574, // U+054E ARMENIAN CAPITAL LETTER VEW
	XK_Armenian_vev                = 16778622, // U+057E ARMENIAN SMALL LETTER VEW
	XK_Armenian_TYUN               = 16778575, // U+054F ARMENIAN CAPITAL LETTER TIWN
	XK_Armenian_tyun               = 16778623, // U+057F ARMENIAN SMALL LETTER TIWN
	XK_Armenian_RE                 = 16778576, // U+0550 ARMENIAN CAPITAL LETTER REH
	XK_Armenian_re                 = 16778624, // U+0580 ARMENIAN SMALL LETTER REH
	XK_Armenian_TSO                = 16778577, // U+0551 ARMENIAN CAPITAL LETTER CO
	XK_Armenian_tso                = 16778625, // U+0581 ARMENIAN SMALL LETTER CO
	XK_Armenian_VYUN               = 16778578, // U+0552 ARMENIAN CAPITAL LETTER YIWN
	XK_Armenian_vyun               = 16778626, // U+0582 ARMENIAN SMALL LETTER YIWN
	XK_Armenian_PYUR               = 16778579, // U+0553 ARMENIAN CAPITAL LETTER PIWR
	XK_Armenian_pyur               = 16778627, // U+0583 ARMENIAN SMALL LETTER PIWR
	XK_Armenian_KE                 = 16778580, // U+0554 ARMENIAN CAPITAL LETTER KEH
	XK_Armenian_ke                 = 16778628, // U+0584 ARMENIAN SMALL LETTER KEH
	XK_Armenian_O                  = 16778581, // U+0555 ARMENIAN CAPITAL LETTER OH
	XK_Armenian_o                  = 16778629, // U+0585 ARMENIAN SMALL LETTER OH
	XK_Armenian_FE                 = 16778582, // U+0556 ARMENIAN CAPITAL LETTER FEH
	XK_Armenian_fe                 = 16778630, // U+0586 ARMENIAN SMALL LETTER FEH
	XK_Armenian_apostrophe         = 16778586, // U+055A ARMENIAN APOSTROPHE
	XK_Georgian_an                 = 16781520, // U+10D0 GEORGIAN LETTER AN
	XK_Georgian_ban                = 16781521, // U+10D1 GEORGIAN LETTER BAN
	XK_Georgian_gan                = 16781522, // U+10D2 GEORGIAN LETTER GAN
	XK_Georgian_don                = 16781523, // U+10D3 GEORGIAN LETTER DON
	XK_Georgian_en                 = 16781524, // U+10D4 GEORGIAN LETTER EN
	XK_Georgian_vin                = 16781525, // U+10D5 GEORGIAN LETTER VIN
	XK_Georgian_zen                = 16781526, // U+10D6 GEORGIAN LETTER ZEN
	XK_Georgian_tan                = 16781527, // U+10D7 GEORGIAN LETTER TAN
	XK_Georgian_in                 = 16781528, // U+10D8 GEORGIAN LETTER IN
	XK_Georgian_kan                = 16781529, // U+10D9 GEORGIAN LETTER KAN
	XK_Georgian_las                = 16781530, // U+10DA GEORGIAN LETTER LAS
	XK_Georgian_man                = 16781531, // U+10DB GEORGIAN LETTER MAN
	XK_Georgian_nar                = 16781532, // U+10DC GEORGIAN LETTER NAR
	XK_Georgian_on                 = 16781533, // U+10DD GEORGIAN LETTER ON
	XK_Georgian_par                = 16781534, // U+10DE GEORGIAN LETTER PAR
	XK_Georgian_zhar               = 16781535, // U+10DF GEORGIAN LETTER ZHAR
	XK_Georgian_rae                = 16781536, // U+10E0 GEORGIAN LETTER RAE
	XK_Georgian_san                = 16781537, // U+10E1 GEORGIAN LETTER SAN
	XK_Georgian_tar                = 16781538, // U+10E2 GEORGIAN LETTER TAR
	XK_Georgian_un                 = 16781539, // U+10E3 GEORGIAN LETTER UN
	XK_Georgian_phar               = 16781540, // U+10E4 GEORGIAN LETTER PHAR
	XK_Georgian_khar               = 16781541, // U+10E5 GEORGIAN LETTER KHAR
	XK_Georgian_ghan               = 16781542, // U+10E6 GEORGIAN LETTER GHAN
	XK_Georgian_qar                = 16781543, // U+10E7 GEORGIAN LETTER QAR
	XK_Georgian_shin               = 16781544, // U+10E8 GEORGIAN LETTER SHIN
	XK_Georgian_chin               = 16781545, // U+10E9 GEORGIAN LETTER CHIN
	XK_Georgian_can                = 16781546, // U+10EA GEORGIAN LETTER CAN
	XK_Georgian_jil                = 16781547, // U+10EB GEORGIAN LETTER JIL
	XK_Georgian_cil                = 16781548, // U+10EC GEORGIAN LETTER CIL
	XK_Georgian_char               = 16781549, // U+10ED GEORGIAN LETTER CHAR
	XK_Georgian_xan                = 16781550, // U+10EE GEORGIAN LETTER XAN
	XK_Georgian_jhan               = 16781551, // U+10EF GEORGIAN LETTER JHAN
	XK_Georgian_hae                = 16781552, // U+10F0 GEORGIAN LETTER HAE
	XK_Georgian_he                 = 16781553, // U+10F1 GEORGIAN LETTER HE
	XK_Georgian_hie                = 16781554, // U+10F2 GEORGIAN LETTER HIE
	XK_Georgian_we                 = 16781555, // U+10F3 GEORGIAN LETTER WE
	XK_Georgian_har                = 16781556, // U+10F4 GEORGIAN LETTER HAR
	XK_Georgian_hoe                = 16781557, // U+10F5 GEORGIAN LETTER HOE
	XK_Georgian_fi                 = 16781558, // U+10F6 GEORGIAN LETTER FI
	XK_Xabovedot                   = 16785034, // U+1E8A LATIN CAPITAL LETTER X WITH DOT ABOVE
	XK_Ibreve                      = 16777516, // U+012C LATIN CAPITAL LETTER I WITH BREVE
	XK_Zstroke                     = 16777653, // U+01B5 LATIN CAPITAL LETTER Z WITH STROKE
	XK_Gcaron                      = 16777702, // U+01E6 LATIN CAPITAL LETTER G WITH CARON
	XK_Ocaron                      = 16777681, // U+01D2 LATIN CAPITAL LETTER O WITH CARON
	XK_Obarred                     = 16777631, // U+019F LATIN CAPITAL LETTER O WITH MIDDLE TILDE
	XK_xabovedot                   = 16785035, // U+1E8B LATIN SMALL LETTER X WITH DOT ABOVE
	XK_ibreve                      = 16777517, // U+012D LATIN SMALL LETTER I WITH BREVE
	XK_zstroke                     = 16777654, // U+01B6 LATIN SMALL LETTER Z WITH STROKE
	XK_gcaron                      = 16777703, // U+01E7 LATIN SMALL LETTER G WITH CARON
	XK_ocaron                      = 16777682, // U+01D2 LATIN SMALL LETTER O WITH CARON
	XK_obarred                     = 16777845, // U+0275 LATIN SMALL LETTER BARRED O
	XK_SCHWA                       = 16777615, // U+018F LATIN CAPITAL LETTER SCHWA
	XK_schwa                       = 16777817, // U+0259 LATIN SMALL LETTER SCHWA
	XK_Lbelowdot                   = 16784950, // U+1E36 LATIN CAPITAL LETTER L WITH DOT BELOW
	XK_lbelowdot                   = 16784951, // U+1E37 LATIN SMALL LETTER L WITH DOT BELOW
	XK_Abelowdot                   = 16785056, // U+1EA0 LATIN CAPITAL LETTER A WITH DOT BELOW
	XK_abelowdot                   = 16785057, // U+1EA1 LATIN SMALL LETTER A WITH DOT BELOW
	XK_Ahook                       = 16785058, // U+1EA2 LATIN CAPITAL LETTER A WITH HOOK ABOVE
	XK_ahook                       = 16785059, // U+1EA3 LATIN SMALL LETTER A WITH HOOK ABOVE
	XK_Acircumflexacute            = 16785060, // U+1EA4 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND ACUTE
	XK_acircumflexacute            = 16785061, // U+1EA5 LATIN SMALL LETTER A WITH CIRCUMFLEX AND ACUTE
	XK_Acircumflexgrave            = 16785062, // U+1EA6 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND GRAVE
	XK_acircumflexgrave            = 16785063, // U+1EA7 LATIN SMALL LETTER A WITH CIRCUMFLEX AND GRAVE
	XK_Acircumflexhook             = 16785064, // U+1EA8 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE
	XK_acircumflexhook             = 16785065, // U+1EA9 LATIN SMALL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE
	XK_Acircumflextilde            = 16785066, // U+1EAA LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND TILDE
	XK_acircumflextilde            = 16785067, // U+1EAB LATIN SMALL LETTER A WITH CIRCUMFLEX AND TILDE
	XK_Acircumflexbelowdot         = 16785068, // U+1EAC LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND DOT BELOW
	XK_acircumflexbelowdot         = 16785069, // U+1EAD LATIN SMALL LETTER A WITH CIRCUMFLEX AND DOT BELOW
	XK_Abreveacute                 = 16785070, // U+1EAE LATIN CAPITAL LETTER A WITH BREVE AND ACUTE
	XK_abreveacute                 = 16785071, // U+1EAF LATIN SMALL LETTER A WITH BREVE AND ACUTE
	XK_Abrevegrave                 = 16785072, // U+1EB0 LATIN CAPITAL LETTER A WITH BREVE AND GRAVE
	XK_abrevegrave                 = 16785073, // U+1EB1 LATIN SMALL LETTER A WITH BREVE AND GRAVE
	XK_Abrevehook                  = 16785074, // U+1EB2 LATIN CAPITAL LETTER A WITH BREVE AND HOOK ABOVE
	XK_abrevehook                  = 16785075, // U+1EB3 LATIN SMALL LETTER A WITH BREVE AND HOOK ABOVE
	XK_Abrevetilde                 = 16785076, // U+1EB4 LATIN CAPITAL LETTER A WITH BREVE AND TILDE
	XK_abrevetilde                 = 16785077, // U+1EB5 LATIN SMALL LETTER A WITH BREVE AND TILDE
	XK_Abrevebelowdot              = 16785078, // U+1EB6 LATIN CAPITAL LETTER A WITH BREVE AND DOT BELOW
	XK_abrevebelowdot              = 16785079, // U+1EB7 LATIN SMALL LETTER A WITH BREVE AND DOT BELOW
	XK_Ebelowdot                   = 16785080, // U+1EB8 LATIN CAPITAL LETTER E WITH DOT BELOW
	XK_ebelowdot                   = 16785081, // U+1EB9 LATIN SMALL LETTER E WITH DOT BELOW
	XK_Ehook                       = 16785082, // U+1EBA LATIN CAPITAL LETTER E WITH HOOK ABOVE
	XK_ehook                       = 16785083, // U+1EBB LATIN SMALL LETTER E WITH HOOK ABOVE
	XK_Etilde                      = 16785084, // U+1EBC LATIN CAPITAL LETTER E WITH TILDE
	XK_etilde                      = 16785085, // U+1EBD LATIN SMALL LETTER E WITH TILDE
	XK_Ecircumflexacute            = 16785086, // U+1EBE LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND ACUTE
	XK_ecircumflexacute            = 16785087, // U+1EBF LATIN SMALL LETTER E WITH CIRCUMFLEX AND ACUTE
	XK_Ecircumflexgrave            = 16785088, // U+1EC0 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND GRAVE
	XK_ecircumflexgrave            = 16785089, // U+1EC1 LATIN SMALL LETTER E WITH CIRCUMFLEX AND GRAVE
	XK_Ecircumflexhook             = 16785090, // U+1EC2 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE
	XK_ecircumflexhook             = 16785091, // U+1EC3 LATIN SMALL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE
	XK_Ecircumflextilde            = 16785092, // U+1EC4 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND TILDE
	XK_ecircumflextilde            = 16785093, // U+1EC5 LATIN SMALL LETTER E WITH CIRCUMFLEX AND TILDE
	XK_Ecircumflexbelowdot         = 16785094, // U+1EC6 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND DOT BELOW
	XK_ecircumflexbelowdot         = 16785095, // U+1EC7 LATIN SMALL LETTER E WITH CIRCUMFLEX AND DOT BELOW
	XK_Ihook                       = 16785096, // U+1EC8 LATIN CAPITAL LETTER I WITH HOOK ABOVE
	XK_ihook                       = 16785097, // U+1EC9 LATIN SMALL LETTER I WITH HOOK ABOVE
	XK_Ibelowdot                   = 16785098, // U+1ECA LATIN CAPITAL LETTER I WITH DOT BELOW
	XK_ibelowdot                   = 16785099, // U+1ECB LATIN SMALL LETTER I WITH DOT BELOW
	XK_Obelowdot                   = 16785100, // U+1ECC LATIN CAPITAL LETTER O WITH DOT BELOW
	XK_obelowdot                   = 16785101, // U+1ECD LATIN SMALL LETTER O WITH DOT BELOW
	XK_Ohook                       = 16785102, // U+1ECE LATIN CAPITAL LETTER O WITH HOOK ABOVE
	XK_ohook                       = 16785103, // U+1ECF LATIN SMALL LETTER O WITH HOOK ABOVE
	XK_Ocircumflexacute            = 16785104, // U+1ED0 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND ACUTE
	XK_ocircumflexacute            = 16785105, // U+1ED1 LATIN SMALL LETTER O WITH CIRCUMFLEX AND ACUTE
	XK_Ocircumflexgrave            = 16785106, // U+1ED2 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND GRAVE
	XK_ocircumflexgrave            = 16785107, // U+1ED3 LATIN SMALL LETTER O WITH CIRCUMFLEX AND GRAVE
	XK_Ocircumflexhook             = 16785108, // U+1ED4 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE
	XK_ocircumflexhook             = 16785109, // U+1ED5 LATIN SMALL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE
	XK_Ocircumflextilde            = 16785110, // U+1ED6 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND TILDE
	XK_ocircumflextilde            = 16785111, // U+1ED7 LATIN SMALL LETTER O WITH CIRCUMFLEX AND TILDE
	XK_Ocircumflexbelowdot         = 16785112, // U+1ED8 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND DOT BELOW
	XK_ocircumflexbelowdot         = 16785113, // U+1ED9 LATIN SMALL LETTER O WITH CIRCUMFLEX AND DOT BELOW
	XK_Ohornacute                  = 16785114, // U+1EDA LATIN CAPITAL LETTER O WITH HORN AND ACUTE
	XK_ohornacute                  = 16785115, // U+1EDB LATIN SMALL LETTER O WITH HORN AND ACUTE
	XK_Ohorngrave                  = 16785116, // U+1EDC LATIN CAPITAL LETTER O WITH HORN AND GRAVE
	XK_ohorngrave                  = 16785117, // U+1EDD LATIN SMALL LETTER O WITH HORN AND GRAVE
	XK_Ohornhook                   = 16785118, // U+1EDE LATIN CAPITAL LETTER O WITH HORN AND HOOK ABOVE
	XK_ohornhook                   = 16785119, // U+1EDF LATIN SMALL LETTER O WITH HORN AND HOOK ABOVE
	XK_Ohorntilde                  = 16785120, // U+1EE0 LATIN CAPITAL LETTER O WITH HORN AND TILDE
	XK_ohorntilde                  = 16785121, // U+1EE1 LATIN SMALL LETTER O WITH HORN AND TILDE
	XK_Ohornbelowdot               = 16785122, // U+1EE2 LATIN CAPITAL LETTER O WITH HORN AND DOT BELOW
	XK_ohornbelowdot               = 16785123, // U+1EE3 LATIN SMALL LETTER O WITH HORN AND DOT BELOW
	XK_Ubelowdot                   = 16785124, // U+1EE4 LATIN CAPITAL LETTER U WITH DOT BELOW
	XK_ubelowdot                   = 16785125, // U+1EE5 LATIN SMALL LETTER U WITH DOT BELOW
	XK_Uhook                       = 16785126, // U+1EE6 LATIN CAPITAL LETTER U WITH HOOK ABOVE
	XK_uhook                       = 16785127, // U+1EE7 LATIN SMALL LETTER U WITH HOOK ABOVE
	XK_Uhornacute                  = 16785128, // U+1EE8 LATIN CAPITAL LETTER U WITH HORN AND ACUTE
	XK_uhornacute                  = 16785129, // U+1EE9 LATIN SMALL LETTER U WITH HORN AND ACUTE
	XK_Uhorngrave                  = 16785130, // U+1EEA LATIN CAPITAL LETTER U WITH HORN AND GRAVE
	XK_uhorngrave                  = 16785131, // U+1EEB LATIN SMALL LETTER U WITH HORN AND GRAVE
	XK_Uhornhook                   = 16785132, // U+1EEC LATIN CAPITAL LETTER U WITH HORN AND HOOK ABOVE
	XK_uhornhook                   = 16785133, // U+1EED LATIN SMALL LETTER U WITH HORN AND HOOK ABOVE
	XK_Uhorntilde                  = 16785134, // U+1EEE LATIN CAPITAL LETTER U WITH HORN AND TILDE
	XK_uhorntilde                  = 16785135, // U+1EEF LATIN SMALL LETTER U WITH HORN AND TILDE
	XK_Uhornbelowdot               = 16785136, // U+1EF0 LATIN CAPITAL LETTER U WITH HORN AND DOT BELOW
	XK_uhornbelowdot               = 16785137, // U+1EF1 LATIN SMALL LETTER U WITH HORN AND DOT BELOW
	XK_Ybelowdot                   = 16785140, // U+1EF4 LATIN CAPITAL LETTER Y WITH DOT BELOW
	XK_ybelowdot                   = 16785141, // U+1EF5 LATIN SMALL LETTER Y WITH DOT BELOW
	XK_Yhook                       = 16785142, // U+1EF6 LATIN CAPITAL LETTER Y WITH HOOK ABOVE
	XK_yhook                       = 16785143, // U+1EF7 LATIN SMALL LETTER Y WITH HOOK ABOVE
	XK_Ytilde                      = 16785144, // U+1EF8 LATIN CAPITAL LETTER Y WITH TILDE
	XK_ytilde                      = 16785145, // U+1EF9 LATIN SMALL LETTER Y WITH TILDE
	XK_Ohorn                       = 16777632, // U+01A0 LATIN CAPITAL LETTER O WITH HORN
	XK_ohorn                       = 16777633, // U+01A1 LATIN SMALL LETTER O WITH HORN
	XK_Uhorn                       = 16777647, // U+01AF LATIN CAPITAL LETTER U WITH HORN
	XK_uhorn                       = 16777648, // U+01B0 LATIN SMALL LETTER U WITH HORN
	XK_EcuSign                     = 16785568, // U+20A0 EURO-CURRENCY SIGN
	XK_ColonSign                   = 16785569, // U+20A1 COLON SIGN
	XK_CruzeiroSign                = 16785570, // U+20A2 CRUZEIRO SIGN
	XK_FFrancSign                  = 16785571, // U+20A3 FRENCH FRANC SIGN
	XK_LiraSign                    = 16785572, // U+20A4 LIRA SIGN
	XK_MillSign                    = 16785573, // U+20A5 MILL SIGN
	XK_NairaSign                   = 16785574, // U+20A6 NAIRA SIGN
	XK_PesetaSign                  = 16785575, // U+20A7 PESETA SIGN
	XK_RupeeSign                   = 16785576, // U+20A8 RUPEE SIGN
	XK_WonSign                     = 16785577, // U+20A9 WON SIGN
	XK_NewSheqelSign               = 16785578, // U+20AA NEW SHEQEL SIGN
	XK_DongSign                    = 16785579, // U+20AB DONG SIGN
	XK_EuroSign                    = 8364,     // U+20AC EURO SIGN
}
```

##### Related Procedures With Parameters

* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [ConvertCase](/vendor/x11/xlib/#ConvertCase)
* [KeysymToKeycode](/vendor/x11/xlib/#KeysymToKeycode)
* [KeysymToString](/vendor/x11/xlib/#KeysymToString)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)



##### Related Procedures With Returns

* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [StringToKeysym](/vendor/x11/xlib/#StringToKeysym)

### [KeyboardAutoRepeatMode ¶](#KeyboardAutoRepeatMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L675)

```
KeyboardAutoRepeatMode :: enum i32 {
	AutoRepeatModeOff     = 0, 
	AutoRepeatModeOn      = 1, 
	AutoRepeatModeDefault = 2, 
}
```

### [KeyboardControlMask ¶](#KeyboardControlMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L663)

```
KeyboardControlMask :: bit_set[KeyboardControlMaskBits; int]
```

##### Related Procedures With Parameters

* [ChangeKeyboardControl](/vendor/x11/xlib/#ChangeKeyboardControl)

### [KeyboardControlMaskBits ¶](#KeyboardControlMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L664)

```
KeyboardControlMaskBits :: enum int {
	KBKeyClickPercent = 0, 
	KBBellPercent     = 1, 
	KBBellPitch       = 2, 
	KBBellDuration    = 3, 
	KBLed             = 4, 
	KBLedMode         = 5, 
	KBKey             = 6, 
	KBAutoRepeatMode  = 7, 
}
```

### [KeyboardLedMode ¶](#KeyboardLedMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L681)

```
KeyboardLedMode :: enum i32 {
	LedModeOff = 0, 
	LedModeOn  = 1, 
}
```

### [LineStyle ¶](#LineStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L550)

```
LineStyle :: enum i32 {
	LineSolid      = 0, 
	LineOnOffDash  = 1, 
	LineDoubleDash = 2, 
}
```

##### Related Procedures With Parameters

* [SetLineAttributes](/vendor/x11/xlib/#SetLineAttributes)

### [LookupStringStatus ¶](#LookupStringStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L150)

```
LookupStringStatus :: enum i32 {
	BufferOverflow = -1, 
	LookupNone     = 1, 
	LookupChars    = 2, 
	LookupKeySym   = 3, 
	LookupBoth     = 4, 
}
```

##### Related Procedures With Parameters

* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)

### [MappingRequest ¶](#MappingRequest) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L294)

```
MappingRequest :: enum i32 {
	MappingModifier = 0, 
	MappingKeyboard = 1, 
	MappingPointer  = 2, 
}
```

### [Mask ¶](#Mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L14)

```
Mask :: distinct uint
```

### [MouseButton ¶](#MouseButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L184)

```
MouseButton :: enum i32 {
	Button1 = 1, 
	Button2 = 2, 
	Button3 = 3, 
	Button4 = 4, 
	Button5 = 5, 
}
```

### [NotifyDetail ¶](#NotifyDetail) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L283)

```
NotifyDetail :: enum i32 {
	NotifyAncestor         = 0, 
	NotifyVirtual          = 1, 
	NotifyInferior         = 2, 
	NotifyNonlinear        = 3, 
	NotifyNonlinearVirtual = 4, 
	NotifyPointer          = 5, 
	NotifyPointerRoot      = 6, 
	NotifyDetailNone       = 7, 
}
```

### [NotifyMode ¶](#NotifyMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L276)

```
NotifyMode :: enum i32 {
	NotifyNormal       = 0, 
	NotifyGrab         = 1, 
	NotifyUngrab       = 2, 
	NotifyWhileGrabbed = 3, 
}
```

### [Pixmap ¶](#Pixmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L22)

```
Pixmap :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [PropertyState ¶](#PropertyState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L311)

```
PropertyState :: enum i32 {
	PropertyNewValue = 0, 
	PropertyDelete   = 1, 
}
```

### [RRCrtc ¶](#RRCrtc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L27)

```
RRCrtc :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [RRMode ¶](#RRMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L29)

```
RRMode :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [RROutput ¶](#RROutput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L28)

```
RROutput :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [Region ¶](#Region) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1994)

```
Region :: distinct rawptr
```

##### Related Procedures With Parameters

* [ClipBox](/vendor/x11/xlib/#ClipBox)
* [DestroyRegion](/vendor/x11/xlib/#DestroyRegion)
* [EmptyRegion](/vendor/x11/xlib/#EmptyRegion)
* [EqualRegion](/vendor/x11/xlib/#EqualRegion)
* [IntersectRegion](/vendor/x11/xlib/#IntersectRegion)
* [OffsetRegion](/vendor/x11/xlib/#OffsetRegion)
* [PointInRegion](/vendor/x11/xlib/#PointInRegion)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [SetRegion](/vendor/x11/xlib/#SetRegion)
* [ShrinkRegion](/vendor/x11/xlib/#ShrinkRegion)
* [SubtractRegion](/vendor/x11/xlib/#SubtractRegion)
* [UnionRectWithRegion](/vendor/x11/xlib/#UnionRectWithRegion)
* [UnionRegion](/vendor/x11/xlib/#UnionRegion)
* [XorRegion](/vendor/x11/xlib/#XorRegion)



##### Related Procedures With Returns

* [CreateRegion](/vendor/x11/xlib/#CreateRegion)
* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)

### [Rotation ¶](#Rotation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2094)

```
Rotation :: enum u16 {
	Rotate_0   = 1, 
	Rotate_90  = 2, 
	Rotate_180 = 4, 
	Rotate_270 = 8, 
}
```

### [SaveSetChangeMode ¶](#SaveSetChangeMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L613)

```
SaveSetChangeMode :: enum i32 {
	SetModeInsert = 0, 
	SetModeDelete = 1, 
}
```

##### Related Procedures With Parameters

* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)

### [Screen ¶](#Screen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L102)

```
Screen :: struct {
	ext_data:        ^XExtData,
	display:         ^XDisplay,
	root:            XID,
	width:           i32,
	height:          i32,
	mwidth:          i32,
	mheight:         i32,
	ndepths:         i32,
	depths:          ^Depth,
	root_depth:      i32,
	root_visual:     ^Visual,
	default_gc:      GC,
	cmap:            XID,
	white_pixel:     uint,
	black_pixel:     uint,
	max_maps:        i32,
	min_maps:        i32,
	backing_store:   i32,
	save_unders:     i32,
	root_input_mask: int,
}
```

##### Related Procedures With Parameters

* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [CellsOfScreen](/vendor/x11/xlib/#CellsOfScreen)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultDepthOfScreen](/vendor/x11/xlib/#DefaultDepthOfScreen)
* [DefaultGCOfScreen](/vendor/x11/xlib/#DefaultGCOfScreen)
* [DefaultVisualOfScreen](/vendor/x11/xlib/#DefaultVisualOfScreen)
* [DisplayOfScreen](/vendor/x11/xlib/#DisplayOfScreen)
* [DoesBackingStore](/vendor/x11/xlib/#DoesBackingStore)
* [DoesSaveUnders](/vendor/x11/xlib/#DoesSaveUnders)
* [EventMaskOfScreen](/vendor/x11/xlib/#EventMaskOfScreen)
* [HeightMMOfScreen](/vendor/x11/xlib/#HeightMMOfScreen)
* [HeightOfScreen](/vendor/x11/xlib/#HeightOfScreen)
* [MaxCmapsOfScreen](/vendor/x11/xlib/#MaxCmapsOfScreen)
* [MinCmapsOfScreen](/vendor/x11/xlib/#MinCmapsOfScreen)
* [PlanesOfScreen](/vendor/x11/xlib/#PlanesOfScreen)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [ScreenNumberOfScreen](/vendor/x11/xlib/#ScreenNumberOfScreen)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)
* [WidthMMOfScreen](/vendor/x11/xlib/#WidthMMOfScreen)
* [WidthOfScreen](/vendor/x11/xlib/#WidthOfScreen)



##### Related Procedures With Returns

* [DefaultScreenOfDisplay](/vendor/x11/xlib/#DefaultScreenOfDisplay)
* [ScreenOfDisplay](/vendor/x11/xlib/#ScreenOfDisplay)

### [ScreenFormat ¶](#ScreenFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L125)

```
ScreenFormat :: struct {
	ext_data:       ^XExtData,
	depth:          i32,
	bits_per_pixel: i32,
	scanline_pad:   i32,
}
```

### [ScreenSaverBlanking ¶](#ScreenSaverBlanking) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L619)

```
ScreenSaverBlanking :: enum i32 {
	DontPreferBlanking = 0, 
	PreferBlanking     = 1, 
	DefaultBlanking    = 2, 
}
```

##### Related Procedures With Parameters

* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)

### [ScreenSaverForceMode ¶](#ScreenSaverForceMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L631)

```
ScreenSaverForceMode :: enum i32 {
	ScreenSaverReset  = 0, 
	ScreenSaverActive = 1, 
}
```

##### Related Procedures With Parameters

* [ForceScreenSaver](/vendor/x11/xlib/#ForceScreenSaver)

### [ScreenSavingExposures ¶](#ScreenSavingExposures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L625)

```
ScreenSavingExposures :: enum i32 {
	DontAllowExposures = 0, 
	AllowExposures     = 1, 
	DefaultExposures   = 2, 
}
```

##### Related Procedures With Parameters

* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)

### [Shape ¶](#Shape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L596)

```
Shape :: enum i32 {
	Complex   = 0, 
	Nonconvex = 1, 
	Convex    = 2, 
}
```

##### Related Procedures With Parameters

* [FillPolygon](/vendor/x11/xlib/#FillPolygon)

### [SizeHints ¶](#SizeHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L714)

```
SizeHints :: bit_set[SizeHintsBits; uint]
```

##### Related Procedures With Parameters

* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)

### [SizeHintsBits ¶](#SizeHintsBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L715)

```
SizeHintsBits :: enum int {
	USPosition  = 0, 
	USSize      = 1, 
	PPosition   = 2, 
	PSize       = 3, 
	PMinSize    = 4, 
	PMaxSize    = 5, 
	PResizeInc  = 6, 
	PAspect     = 7, 
	PBaseSize   = 8, 
	PWinGravity = 9, 
}
```

### [Status ¶](#Status) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L127)

```
Status :: enum i32 {
	Success             = 0, 
	BadRequest          = 1, 
	BadValue            = 2, 
	BadWindow           = 3, 
	BadPixmap           = 4, 
	BadAtom             = 5, 
	BadCursor           = 6, 
	BadFont             = 7, 
	BadMatch            = 8, 
	BadDrawable         = 9, 
	BadAccess           = 10, 
	BadAlloc            = 11, 
	BadColor            = 12, 
	BadGC               = 13, 
	BadIDChoice         = 14, 
	BadName             = 15, 
	BadLength           = 16, 
	BadImplementation   = 17, 
	FirstExtensionError = 128, 
	LastExtensionError  = 255, 
}
```

 

NOTE(flysand): Some implementations return Status as enum, other return it
as an integer. I will make it a status.




##### Related Procedures With Returns

* [AddConnectionWatch](/vendor/x11/xlib/#AddConnectionWatch)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGCValues](/vendor/x11/xlib/#GetGCValues)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InitImage](/vendor/x11/xlib/#InitImage)
* [InitThreads](/vendor/x11/xlib/#InitThreads)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveConnectionWatch](/vendor/x11/xlib/#RemoveConnectionWatch)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XIQueryVersion](/vendor/x11/xlib/#XIQueryVersion)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabClipL](/vendor/x11/xlib/#XcmsCIELabClipL)
* [XcmsCIELabClipLab](/vendor/x11/xlib/#XcmsCIELabClipLab)
* [XcmsCIELabClipab](/vendor/x11/xlib/#XcmsCIELabClipab)
* [XcmsCIELabQueryMaxC](/vendor/x11/xlib/#XcmsCIELabQueryMaxC)
* [XcmsCIELabQueryMaxL](/vendor/x11/xlib/#XcmsCIELabQueryMaxL)
* [XcmsCIELabQueryMaxLC](/vendor/x11/xlib/#XcmsCIELabQueryMaxLC)
* [XcmsCIELabQueryMinL](/vendor/x11/xlib/#XcmsCIELabQueryMinL)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvClipL](/vendor/x11/xlib/#XcmsCIELuvClipL)
* [XcmsCIELuvClipLuv](/vendor/x11/xlib/#XcmsCIELuvClipLuv)
* [XcmsCIELuvClipuv](/vendor/x11/xlib/#XcmsCIELuvClipuv)
* [XcmsCIELuvQueryMaxC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxC)
* [XcmsCIELuvQueryMaxL](/vendor/x11/xlib/#XcmsCIELuvQueryMaxL)
* [XcmsCIELuvQueryMaxLC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxLC)
* [XcmsCIELuvQueryMinL](/vendor/x11/xlib/#XcmsCIELuvQueryMinL)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsSetWhitePoint](/vendor/x11/xlib/#XcmsSetWhitePoint)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [XcmsTekHVCClipC](/vendor/x11/xlib/#XcmsTekHVCClipC)
* [XcmsTekHVCClipV](/vendor/x11/xlib/#XcmsTekHVCClipV)
* [XcmsTekHVCClipVC](/vendor/x11/xlib/#XcmsTekHVCClipVC)
* [XcmsTekHVCQueryMaxC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxC)
* [XcmsTekHVCQueryMaxV](/vendor/x11/xlib/#XcmsTekHVCQueryMaxV)
* [XcmsTekHVCQueryMaxVC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVC)
* [XcmsTekHVCQueryMaxVSamples](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCQueryMinV](/vendor/x11/xlib/#XcmsTekHVCQueryMinV)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)
* [XkbGetKeySyms](/vendor/x11/xlib/#XkbGetKeySyms)
* [XkbGetState](/vendor/x11/xlib/#XkbGetState)

### [SubpixelOrder ¶](#SubpixelOrder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2107)

```
SubpixelOrder :: enum u16 {
	Unknown       = 0, 
	HorizontalRGB = 1, 
	HorizontalBGR = 2, 
	VerticalRGB   = 3, 
	VerticalBGR   = 4, 
	None          = 5, 
}
```

### [SubwindowMode ¶](#SubwindowMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L586)

```
SubwindowMode :: enum i32 {
	ClipByChildren   = 0, 
	IncludeInferiors = 1, 
}
```

##### Related Procedures With Parameters

* [SetSubwindowMode](/vendor/x11/xlib/#SetSubwindowMode)

### [Time ¶](#Time) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L17)

```
Time :: distinct uint
```

##### Related Procedures With Parameters

* [AllowEvents](/vendor/x11/xlib/#AllowEvents)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [UngrabKeyboard](/vendor/x11/xlib/#UngrabKeyboard)
* [UngrabPointer](/vendor/x11/xlib/#UngrabPointer)

### [VisibilityState ¶](#VisibilityState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L300)

```
VisibilityState :: enum i32 {
	VisibilityUnobscured        = 0, 
	VisibilityPartiallyObscured = 1, 
	VisibilityFullyObscured     = 2, 
}
```

### [Visual ¶](#Visual) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L83)

```
Visual :: struct {
	ext_data:     ^XExtData,
	visualid:     VisualID,
	class:        i32,
	red_mask:     uint,
	green_mask:   uint,
	blue_mask:    uint,
	bits_per_rgb: i32,
	map_entries:  i32,
}
```

##### Related Procedures With Parameters

* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [VisualIDFromVisual](/vendor/x11/xlib/#VisualIDFromVisual)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)



##### Related Procedures With Returns

* [DefaultVisual](/vendor/x11/xlib/#DefaultVisual)
* [DefaultVisualOfScreen](/vendor/x11/xlib/#DefaultVisualOfScreen)
* [XcmsVisualOfCCC](/vendor/x11/xlib/#XcmsVisualOfCCC)

### [VisualID ¶](#VisualID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L16)

```
VisualID :: distinct uint
```

##### Related Procedures With Returns

* [VisualIDFromVisual](/vendor/x11/xlib/#VisualIDFromVisual)

### [VisualInfoMask ¶](#VisualInfoMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L728)

```
VisualInfoMask :: bit_set[VisualInfoMaskBits; int]
```

##### Related Procedures With Parameters

* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)

##### Related Constants

* [VisualAllMask](/vendor/x11/xlib/#VisualAllMask)
* [VisualNoMask](/vendor/x11/xlib/#VisualNoMask)

### [VisualInfoMaskBits ¶](#VisualInfoMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L729)

```
VisualInfoMaskBits :: enum int {
	VisualIDMask           = 0, 
	VisualScreenMask       = 1, 
	VisualDepthMask        = 2, 
	VisualClassMask        = 3, 
	VisualRedMaskMask      = 4, 
	VisualGreenMaskMask    = 5, 
	VisualBlueMaskMask     = 6, 
	VisualColormapSizeMask = 7, 
	VisualBitsPerRGBMask   = 8, 
}
```

### [WMHintState ¶](#WMHintState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L698)

```
WMHintState :: enum i32 {
	WithdrawnState = 0, 
	NormalState    = 1, 
	IconicState    = 3, 
}
```

### [WMHints ¶](#WMHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L686)

```
WMHints :: bit_set[WMHintsBits; uint]
```

##### Related Constants

* [AllHints](/vendor/x11/xlib/#AllHints)

### [WMHintsBits ¶](#WMHintsBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L687)

```
WMHintsBits :: enum int {
	InputHint        = 0, 
	StateHint        = 1, 
	IconPixmapHint   = 2, 
	IconWindowHint   = 3, 
	IconPositionHint = 4, 
	IconMaskHint     = 5, 
	WindowGroupHint  = 6, 
	XUrgencyHint     = 8, 
}
```

### [Window ¶](#Window) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L19)

```
Window :: XID
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [WindowAttributeMask ¶](#WindowAttributeMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L328)

```
WindowAttributeMask :: bit_set[WindowAttributeMaskBits; int]
```

##### Related Procedures With Parameters

* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)

### [WindowAttributeMaskBits ¶](#WindowAttributeMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L329)

```
WindowAttributeMaskBits :: enum int {
	CWBackPixmap       = 0, 
	CWBackPixel        = 1, 
	CWBorderPixmap     = 2, 
	CWBorderPixel      = 3, 
	CWBitGravity       = 4, 
	CWWinGravity       = 5, 
	CWBackingStore     = 6, 
	CWBackingPlanes    = 7, 
	CWBackingPixel     = 8, 
	CWOverrideRedirect = 9, 
	CWSaveUnder        = 10, 
	CWEventMask        = 11, 
	CWDontPropagate    = 12, 
	CWColormap         = 13, 
	CWCursor           = 14, 
}
```

### [WindowChangesMask ¶](#WindowChangesMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L353)

```
WindowChangesMask :: bit_set[WindowChangesMaskBits; i32]
```

##### Related Procedures With Parameters

* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)

### [WindowChangesMaskBits ¶](#WindowChangesMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L354)

```
WindowChangesMaskBits :: enum int {
	CWX           = 0, 
	CWY           = 1, 
	CWWidth       = 2, 
	CWHeight      = 3, 
	CWBorderWidth = 4, 
	CWSibling     = 5, 
	CWStackMode   = 6, 
}
```

### [WindowClass ¶](#WindowClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L347)

```
WindowClass :: enum i32 {
	CopyFromParent = 0, 
	InputOutput    = 1, 
	InputOnly      = 2, 
}
```

##### Related Procedures With Parameters

* [CreateWindow](/vendor/x11/xlib/#CreateWindow)

### [WindowMapState ¶](#WindowMapState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L382)

```
WindowMapState :: enum i32 {
	IsUnmapped   = 0, 
	IsUnviewable = 1, 
	IsViewable   = 2, 
}
```

### [WindowStacking ¶](#WindowStacking) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L364)

```
WindowStacking :: enum i32 {
	Above    = 0, 
	Below    = 1, 
	TopIf    = 2, 
	BottomIf = 3, 
	Opposite = 4, 
}
```

### [XAnyEvent ¶](#XAnyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L694)

```
XAnyEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
}
```

### [XArc ¶](#XArc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L264)

```
XArc :: struct {
	x:      i16,
	y:      i16,
	width:  u16,
	height: u16,
	angle1: i16,
	angle2: i16,
}
```

##### Related Procedures With Parameters

* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [FillArcs](/vendor/x11/xlib/#FillArcs)

### [XButtonEvent ¶](#XButtonEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L328)

```
XButtonEvent :: struct {
	type:        EventType,
	serial:      uint,
	send_event:  b32,
	display:     ^Display,
	window:      XID,
	root:        XID,
	subwindow:   XID,
	time:        Time,
	x:           i32,
	y:           i32,
	x_root:      i32,
	y_root:      i32,
	state:       bit_set[InputMaskBits; i32],
	button:      MouseButton,
	same_screen: b32,
}
```

### [XButtonPressedEvent ¶](#XButtonPressedEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L346)

```
XButtonPressedEvent :: XButtonEvent
```

### [XButtonReleasedEvent ¶](#XButtonReleasedEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L347)

```
XButtonReleasedEvent :: XButtonEvent
```

### [XChar2b ¶](#XChar2b) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L800)

```
XChar2b :: struct {
	byte1: u8,
	byte2: u8,
}
```

##### Related Procedures With Parameters

* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)
* [TextWidth16](/vendor/x11/xlib/#TextWidth16)

### [XCharStruct ¶](#XCharStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L760)

```
XCharStruct :: struct {
	lbearing:   i16,
	rbearing:   i16,
	width:      i16,
	ascent:     i16,
	descent:    i16,
	attributes: u16,
}
```

##### Related Procedures With Parameters

* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)

### [XCirculateEvent ¶](#XCirculateEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L581)

```
XCirculateEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	event:      XID,
	window:     XID,
	place:      CirculationRequest,
}
```

### [XCirculateRequestEvent ¶](#XCirculateRequestEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L591)

```
XCirculateRequestEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	parent:     XID,
	window:     XID,
	place:      CirculationRequest,
}
```

### [XClassHint ¶](#XClassHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1984)

```
XClassHint :: struct {
	res_name:  cstring,
	res_class: cstring,
}
```

##### Related Procedures With Parameters

* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [AllocClassHint](/vendor/x11/xlib/#AllocClassHint)

### [XClientMessageEvent ¶](#XClientMessageEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L658)

```
XClientMessageEvent :: struct {
	type:         EventType,
	serial:       uint,
	send_event:   b32,
	display:      ^Display,
	window:       XID,
	message_type: Atom,
	format:       i32,
	data:         struct #raw_union {
		b: [20]i8,
		s: [10]i16,
		l: [5]int,
	},
}
```

### [XColor ¶](#XColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L236)

```
XColor :: struct {
	pixel: uint,
	red:   u16,
	green: u16,
	blue:  u16,
	flags: u8,
	pad:   u8,
}
```

##### Related Procedures With Parameters

* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)

### [XColormapEvent ¶](#XColormapEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L647)

```
XColormapEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	colormap:   XID,
	new:        b32,
	state:      ColormapState,
}
```

### [XComposeStatus ¶](#XComposeStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1989)

```
XComposeStatus :: struct {
	compose_ptr:   rawptr,
	chars_matched: i32,
}
```

##### Related Procedures With Parameters

* [LookupString](/vendor/x11/xlib/#LookupString)

### [XConfigureEvent ¶](#XConfigureEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L527)

```
XConfigureEvent :: struct {
	type:              EventType,
	serial:            uint,
	send_event:        b32,
	display:           ^Display,
	event:             XID,
	window:            XID,
	x:                 i32,
	y:                 i32,
	width:             i32,
	height:            i32,
	border_width:      i32,
	above:             XID,
	override_redirect: b32,
}
```

### [XConfigureRequestEvent ¶](#XConfigureRequestEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L564)

```
XConfigureRequestEvent :: struct {
	type:         EventType,
	serial:       uint,
	send_event:   b32,
	display:      ^Display,
	parent:       XID,
	window:       XID,
	x:            i32,
	y:            i32,
	width:        i32,
	height:       i32,
	border_width: i32,
	above:        XID,
	detail:       WindowStacking,
	value_mask:   uint,
}
```

### [XConnectionWatchProc ¶](#XConnectionWatchProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1003)

```
XConnectionWatchProc :: proc "c" (display: ^Display, client_data: rawptr, fd: i32, opening: b32, watch_data: rawptr)
```

##### Related Procedures With Parameters

* [AddConnectionWatch](/vendor/x11/xlib/#AddConnectionWatch)
* [RemoveConnectionWatch](/vendor/x11/xlib/#RemoveConnectionWatch)

### [XContext ¶](#XContext) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2022)

```
XContext :: i32
```

##### Related Procedures With Parameters

* [AddHosts](/vendor/x11/xlib/#AddHosts)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [Bell](/vendor/x11/xlib/#Bell)
* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [ChangePointerControl](/vendor/x11/xlib/#ChangePointerControl)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultDepth](/vendor/x11/xlib/#DefaultDepth)
* [DefaultGC](/vendor/x11/xlib/#DefaultGC)
* [DefaultVisual](/vendor/x11/xlib/#DefaultVisual)
* [DeleteModifiermapEntry](/vendor/x11/xlib/#DeleteModifiermapEntry)
* [DisplayCells](/vendor/x11/xlib/#DisplayCells)
* [DisplayHeight](/vendor/x11/xlib/#DisplayHeight)
* [DisplayHeightMM](/vendor/x11/xlib/#DisplayHeightMM)
* [DisplayKeycodes](/vendor/x11/xlib/#DisplayKeycodes)
* [DisplayPlanes](/vendor/x11/xlib/#DisplayPlanes)
* [DisplayWidth](/vendor/x11/xlib/#DisplayWidth)
* [DisplayWidthMM](/vendor/x11/xlib/#DisplayWidthMM)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchBuffer](/vendor/x11/xlib/#FetchBuffer)
* [FetchBytes](/vendor/x11/xlib/#FetchBytes)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeFontInfo](/vendor/x11/xlib/#FreeFontInfo)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetErrorText](/vendor/x11/xlib/#GetErrorText)
* [GetFontPath](/vendor/x11/xlib/#GetFontPath)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [GetPointerControl](/vendor/x11/xlib/#GetPointerControl)
* [GetPointerMapping](/vendor/x11/xlib/#GetPointerMapping)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InsertModifiermapEntry](/vendor/x11/xlib/#InsertModifiermapEntry)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [ListDepths](/vendor/x11/xlib/#ListDepths)
* [ListFonts](/vendor/x11/xlib/#ListFonts)
* [ListFontsWithInfo](/vendor/x11/xlib/#ListFontsWithInfo)
* [ListHosts](/vendor/x11/xlib/#ListHosts)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListPixmapFormats](/vendor/x11/xlib/#ListPixmapFormats)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [NewModifiermap](/vendor/x11/xlib/#NewModifiermap)
* [OffsetRegion](/vendor/x11/xlib/#OffsetRegion)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [PointInRegion](/vendor/x11/xlib/#PointInRegion)
* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)
* [ProcessInternalConnections](/vendor/x11/xlib/#ProcessInternalConnections)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryExtension](/vendor/x11/xlib/#QueryExtension)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [RemoveHosts](/vendor/x11/xlib/#RemoveHosts)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [ScreenOfDisplay](/vendor/x11/xlib/#ScreenOfDisplay)
* [SetClipOrigin](/vendor/x11/xlib/#SetClipOrigin)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetDashes](/vendor/x11/xlib/#SetDashes)
* [SetFontPath](/vendor/x11/xlib/#SetFontPath)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetPointerMapping](/vendor/x11/xlib/#SetPointerMapping)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)
* [SetTSOrigin](/vendor/x11/xlib/#SetTSOrigin)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [ShrinkRegion](/vendor/x11/xlib/#ShrinkRegion)
* [StoreBuffer](/vendor/x11/xlib/#StoreBuffer)
* [StoreBytes](/vendor/x11/xlib/#StoreBytes)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)
* [TextWidth](/vendor/x11/xlib/#TextWidth)
* [TextWidth16](/vendor/x11/xlib/#TextWidth16)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [VaCreateNestedList](/vendor/x11/xlib/#VaCreateNestedList)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XIMaskIsSet](/vendor/x11/xlib/#XIMaskIsSet)
* [XIQueryVersion](/vendor/x11/xlib/#XIQueryVersion)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRSizes](/vendor/x11/xlib/#XRRSizes)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsDefaultCCC](/vendor/x11/xlib/#XcmsDefaultCCC)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)
* [XkbQueryExtension](/vendor/x11/xlib/#XkbQueryExtension)
* [XkbUseExtension](/vendor/x11/xlib/#XkbUseExtension)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)
* [cursorImageCreate](/vendor/x11/xlib/#cursorImageCreate)
* [cursorLibraryLoadImage](/vendor/x11/xlib/#cursorLibraryLoadImage)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [BitmapPad](/vendor/x11/xlib/#BitmapPad)
* [BitmapUnit](/vendor/x11/xlib/#BitmapUnit)
* [CellsOfScreen](/vendor/x11/xlib/#CellsOfScreen)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConnectionNumber](/vendor/x11/xlib/#ConnectionNumber)
* [DefaultDepthOfScreen](/vendor/x11/xlib/#DefaultDepthOfScreen)
* [DefaultScreen](/vendor/x11/xlib/#DefaultScreen)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [EventsQueued](/vendor/x11/xlib/#EventsQueued)
* [Flush](/vendor/x11/xlib/#Flush)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HeightMMOfScreen](/vendor/x11/xlib/#HeightMMOfScreen)
* [HeightOfScreen](/vendor/x11/xlib/#HeightOfScreen)
* [MaxCmapsOfScreen](/vendor/x11/xlib/#MaxCmapsOfScreen)
* [MinCmapsOfScreen](/vendor/x11/xlib/#MinCmapsOfScreen)
* [Pending](/vendor/x11/xlib/#Pending)
* [PlanesOfScreen](/vendor/x11/xlib/#PlanesOfScreen)
* [ProtocolRevision](/vendor/x11/xlib/#ProtocolRevision)
* [ProtocolVersion](/vendor/x11/xlib/#ProtocolVersion)
* [QLength](/vendor/x11/xlib/#QLength)
* [ScreenCount](/vendor/x11/xlib/#ScreenCount)
* [ScreenNumberOfScreen](/vendor/x11/xlib/#ScreenNumberOfScreen)
* [SetModifierMapping](/vendor/x11/xlib/#SetModifierMapping)
* [Sync](/vendor/x11/xlib/#Sync)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabPointer](/vendor/x11/xlib/#UngrabPointer)
* [VendorRelease](/vendor/x11/xlib/#VendorRelease)
* [WidthMMOfScreen](/vendor/x11/xlib/#WidthMMOfScreen)
* [WidthOfScreen](/vendor/x11/xlib/#WidthOfScreen)
* [XcmsScreenNumberOfCCC](/vendor/x11/xlib/#XcmsScreenNumberOfCCC)
* [cursorGetDefaultSize](/vendor/x11/xlib/#cursorGetDefaultSize)

### [XCreateWindowEvent ¶](#XCreateWindowEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L461)

```
XCreateWindowEvent :: struct {
	type:              EventType,
	serial:            uint,
	send_event:        b32,
	display:           ^Display,
	parent:            XID,
	window:            XID,
	x:                 i32,
	y:                 i32,
	width:             i32,
	height:            i32,
	border_width:      i32,
	override_redirect: b32,
}
```

### [XCrossingEvent ¶](#XCrossingEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L369)

```
XCrossingEvent :: struct {
	type:        EventType,
	serial:      uint,
	send_event:  b32,
	display:     ^Display,
	window:      XID,
	root:        XID,
	subwindow:   XID,
	time:        Time,
	x:           i32,
	y:           i32,
	x_root:      i32,
	y_root:      i32,
	mode:        NotifyMode,
	detail:      NotifyDetail,
	same_screen: b32,
	focus:       i32,
	state:       bit_set[InputMaskBits; i32],
}
```

### [XDestroyWindowEvent ¶](#XDestroyWindowEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L476)

```
XDestroyWindowEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	event:      XID,
	window:     XID,
}
```

### [XDisplay ¶](#XDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L100)

```
XDisplay :: struct {}
```

### [XEDataObject ¶](#XEDataObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L812)

```
XEDataObject :: struct #raw_union {
	display:       ^Display,
	gc:            GC,
	visual:        ^Visual,
	screen:        ^Screen,
	pixmap_format: ^ScreenFormat,
	font:          ^XFontStruct,
}
```

### [XEnterWindowEvent ¶](#XEnterWindowEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L389)

```
XEnterWindowEvent :: XCrossingEvent
```

### [XErrorEvent ¶](#XErrorEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L684)

```
XErrorEvent :: struct {
	type:         EventType,
	display:      ^Display,
	resourceid:   XID,
	serial:       uint,
	error_code:   u8,
	request_code: u8,
	minor_code:   u8,
}
```

### [XEvent ¶](#XEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L722)

```
XEvent :: struct #raw_union {
	type:              EventType,
	xany:              XAnyEvent,
	xkey:              XKeyEvent,
	xbutton:           XButtonEvent,
	xmotion:           XMotionEvent,
	xcrossing:         XCrossingEvent,
	xfocus:            XFocusChangeEvent,
	xexpose:           XExposeEvent,
	xgraphicsexpose:   XGraphicsExposeEvent,
	xnoexpose:         XNoExposeEvent,
	xvisibility:       XVisibilityEvent,
	xcreatewindow:     XCreateWindowEvent,
	xdestroywindow:    XDestroyWindowEvent,
	xunmap:            XUnmapEvent,
	xmap:              XMapEvent,
	xmaprequest:       XMapRequestEvent,
	xreparent:         XReparentEvent,
	xconfigure:        XConfigureEvent,
	xgravity:          XGravityEvent,
	xresizerequest:    XResizeRequestEvent,
	xconfigurerequest: XConfigureRequestEvent,
	xcirculate:        XCirculateEvent,
	xcirculaterequest: XCirculateRequestEvent,
	xproperty:         XPropertyEvent,
	xselectionclear:   XSelectionClearEvent,
	xselectionrequest: XSelectionRequestEvent,
	xselection:        XSelectionEvent,
	xcolormap:         XColormapEvent,
	xclient:           XClientMessageEvent,
	xmapping:          XMappingEvent,
	xerror:            XErrorEvent,
	xkeymap:           XKeymapEvent,
	xgeneric:          XGenericEvent,
	xcookie:           XGenericEventCookie,
	_:                 [24]int,
}
```

##### Related Procedures With Parameters

* [CheckIfEvent](/vendor/x11/xlib/#CheckIfEvent)
* [CheckMaskEvent](/vendor/x11/xlib/#CheckMaskEvent)
* [CheckTypedEvent](/vendor/x11/xlib/#CheckTypedEvent)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [IfEvent](/vendor/x11/xlib/#IfEvent)
* [MaskEvent](/vendor/x11/xlib/#MaskEvent)
* [NextEvent](/vendor/x11/xlib/#NextEvent)
* [PeekEvent](/vendor/x11/xlib/#PeekEvent)
* [PeekIfEvent](/vendor/x11/xlib/#PeekIfEvent)
* [PutBackEvent](/vendor/x11/xlib/#PutBackEvent)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)

### [XExposeEvent ¶](#XExposeEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L414)

```
XExposeEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	x:          i32,
	y:          i32,
	width:      i32,
	height:     i32,
	count:      i32,
}
```

### [XExtCodes ¶](#XExtCodes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L42)

```
XExtCodes :: struct {
	extension:    i32,
	major_opcode: i32,
	first_event:  i32,
	first_error:  i32,
}
```

### [XExtData ¶](#XExtData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L35)

```
XExtData :: struct {
	number:       i32,
	next:         ^XExtData,
	free_private: proc "c" (extension: ^XExtData) -> Status,
	private_data: rawptr,
}
```

### [XFocusChangeEvent ¶](#XFocusChangeEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L392)

```
XFocusChangeEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	mode:       NotifyMode,
	detail:     NotifyDetail,
}
```

### [XFocusInEvent ¶](#XFocusInEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L402)

```
XFocusInEvent :: XFocusChangeEvent
```

### [XFocusOutEvent ¶](#XFocusOutEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L403)

```
XFocusOutEvent :: XFocusChangeEvent
```

### [XFontProp ¶](#XFontProp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L769)

```
XFontProp :: struct {
	name:   Atom,
	card32: uint,
}
```

### [XFontSet ¶](#XFontSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L828)

```
XFontSet :: XOC
```

### [XFontSetExtents ¶](#XFontSetExtents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L821)

```
XFontSetExtents :: struct {
	max_ink_extent:     XRectangle,
	max_logical_extent: XRectangle,
}
```

### [XFontStruct ¶](#XFontStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L774)

```
XFontStruct :: struct {
	ext_data:          ^XExtData,
	fid:               XID,
	direction:         u32,
	min_char_or_byte2: u32,
	max_char_or_byte2: u32,
	min_byte1:         u32,
	max_byte1:         u32,
	all_chars_exist:   i32,
	default_char:      u32,
	n_properties:      i32,
	properties:        ^XFontProp,
	min_bounds:        XCharStruct,
	max_bounds:        XCharStruct,
	per_char:          ^XCharStruct,
	ascent:            i32,
	descent:           i32,
}
```

##### Related Procedures With Parameters

* [FreeFont](/vendor/x11/xlib/#FreeFont)
* [FreeFontInfo](/vendor/x11/xlib/#FreeFontInfo)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)
* [TextWidth](/vendor/x11/xlib/#TextWidth)
* [TextWidth16](/vendor/x11/xlib/#TextWidth16)



##### Related Procedures With Returns

* [LoadQueryFont](/vendor/x11/xlib/#LoadQueryFont)
* [QueryFont](/vendor/x11/xlib/#QueryFont)

### [XGCValues ¶](#XGCValues) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L55)

```
XGCValues :: struct {
	function:           GCFunction,
	plane_mask:         uint,
	foreground:         uint,
	background:         uint,
	line_width:         i32,
	line_style:         LineStyle,
	cap_style:          CapStyle,
	join_style:         JoinStyle,
	fill_style:         FillStyle,
	fill_rule:          FillRule,
	arc_mode:           ArcMode,
	tile:               XID,
	stipple:            XID,
	ts_x_origin:        i32,
	ts_y_origin:        i32,
	font:               XID,
	subwindow_mode:     SubwindowMode,
	graphics_exposures: b32,
	clip_x_origin:      i32,
	clip_y_origin:      i32,
	clip_mask:          XID,
	dash_offset:        i32,
	dashes:             i8,
}
```

##### Related Procedures With Parameters

* [ChangeGC](/vendor/x11/xlib/#ChangeGC)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [GetGCValues](/vendor/x11/xlib/#GetGCValues)

### [XGenericEvent ¶](#XGenericEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L702)

```
XGenericEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	extension:  i32,
	evtype:     i32,
}
```

### [XGenericEventCookie ¶](#XGenericEventCookie) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L711)

```
XGenericEventCookie :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	extension:  i32,
	evtype:     i32,
	cookie:     u32,
	data:       rawptr,
}
```

##### Related Procedures With Parameters

* [FreeEventData](/vendor/x11/xlib/#FreeEventData)
* [GetEventData](/vendor/x11/xlib/#GetEventData)

### [XGraphicsExposeEvent ¶](#XGraphicsExposeEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L427)

```
XGraphicsExposeEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	drawable:   XID,
	x:          i32,
	y:          i32,
	width:      i32,
	height:     i32,
	count:      i32,
	major_code: i32,
	minor_code: i32,
}
```

### [XGravityEvent ¶](#XGravityEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L543)

```
XGravityEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	event:      XID,
	window:     XID,
	x:          i32,
	y:          i32,
}
```

### [XHostAddress ¶](#XHostAddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L176)

```
XHostAddress :: struct {
	family:  i32,
	length:  i32,
	address: rawptr,
}
```

##### Related Procedures With Parameters

* [AddHost](/vendor/x11/xlib/#AddHost)
* [AddHosts](/vendor/x11/xlib/#AddHosts)
* [RemoveHost](/vendor/x11/xlib/#RemoveHost)
* [RemoveHosts](/vendor/x11/xlib/#RemoveHosts)



##### Related Procedures With Returns

* [ListHosts](/vendor/x11/xlib/#ListHosts)

### [XIC ¶](#XIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L869)

```
XIC :: distinct rawptr
```

##### Related Procedures With Parameters

* [SetICFocus](/vendor/x11/xlib/#SetICFocus)
* [SetICValues](/vendor/x11/xlib/#SetICValues)
* [UnsetICFocus](/vendor/x11/xlib/#UnsetICFocus)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)



##### Related Procedures With Returns

* [CreateIC](/vendor/x11/xlib/#CreateIC)

### [XICCEncodingStyle ¶](#XICCEncodingStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1967)

```
XICCEncodingStyle :: enum i32 {
	XStringStyle, 
	XCompoundTextStyle, 
	XTextStyle, 
	XStdICCTextStyle, 
	XUTF8StringStyle, 
}
```

### [XICCallback ¶](#XICCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L889)

```
XICCallback :: struct {
	client_data: rawptr,
	callback:    XICProc,
}
```

### [XICProc ¶](#XICProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L872)

```
XICProc :: proc "c" (xim: XIM, client_data: rawptr, call_data: rawptr)
```

### [XID ¶](#XID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L13)

```
XID :: distinct uint
```

##### Related Procedures With Parameters

* [AddToSaveSet](/vendor/x11/xlib/#AddToSaveSet)
* [AllocColor](/vendor/x11/xlib/#AllocColor)
* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [ChangeActivePointerGrab](/vendor/x11/xlib/#ChangeActivePointerGrab)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ChangeSaveSet](/vendor/x11/xlib/#ChangeSaveSet)
* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CheckTypedWindowEvent](/vendor/x11/xlib/#CheckTypedWindowEvent)
* [CheckWindowEvent](/vendor/x11/xlib/#CheckWindowEvent)
* [CirculateSubwindows](/vendor/x11/xlib/#CirculateSubwindows)
* [CirculateSubwindowsDown](/vendor/x11/xlib/#CirculateSubwindowsDown)
* [CirculateSubwindowsUp](/vendor/x11/xlib/#CirculateSubwindowsUp)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [ClearWindow](/vendor/x11/xlib/#ClearWindow)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConvertSelection](/vendor/x11/xlib/#ConvertSelection)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyColormapAndFree](/vendor/x11/xlib/#CopyColormapAndFree)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateColormap](/vendor/x11/xlib/#CreateColormap)
* [CreateGC](/vendor/x11/xlib/#CreateGC)
* [CreateGlyphCursor](/vendor/x11/xlib/#CreateGlyphCursor)
* [CreatePixmap](/vendor/x11/xlib/#CreatePixmap)
* [CreatePixmapCursor](/vendor/x11/xlib/#CreatePixmapCursor)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [DestroySubwindows](/vendor/x11/xlib/#DestroySubwindows)
* [DestroyWindow](/vendor/x11/xlib/#DestroyWindow)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FilterEvent](/vendor/x11/xlib/#FilterEvent)
* [FreeColormap](/vendor/x11/xlib/#FreeColormap)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeCursor](/vendor/x11/xlib/#FreeCursor)
* [FreePixmap](/vendor/x11/xlib/#FreePixmap)
* [GetClassHint](/vendor/x11/xlib/#GetClassHint)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetInputFocus](/vendor/x11/xlib/#GetInputFocus)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetTransientForHint](/vendor/x11/xlib/#GetTransientForHint)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabButton](/vendor/x11/xlib/#GrabButton)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HideCursor](/vendor/x11/xlib/#HideCursor)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InstallColormap](/vendor/x11/xlib/#InstallColormap)
* [KillClient](/vendor/x11/xlib/#KillClient)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [LowerWindow](/vendor/x11/xlib/#LowerWindow)
* [MapRaised](/vendor/x11/xlib/#MapRaised)
* [MapSubwindows](/vendor/x11/xlib/#MapSubwindows)
* [MapWindow](/vendor/x11/xlib/#MapWindow)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [QueryBestCursor](/vendor/x11/xlib/#QueryBestCursor)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryBestStripple](/vendor/x11/xlib/#QueryBestStripple)
* [QueryBestTile](/vendor/x11/xlib/#QueryBestTile)
* [QueryColor](/vendor/x11/xlib/#QueryColor)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryFont](/vendor/x11/xlib/#QueryFont)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [QueryTree](/vendor/x11/xlib/#QueryTree)
* [RaiseWindow](/vendor/x11/xlib/#RaiseWindow)
* [RecolorCursor](/vendor/x11/xlib/#RecolorCursor)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RemoveFromSaveSet](/vendor/x11/xlib/#RemoveFromSaveSet)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [ResizeWindow](/vendor/x11/xlib/#ResizeWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [SelectInput](/vendor/x11/xlib/#SelectInput)
* [SendEvent](/vendor/x11/xlib/#SendEvent)
* [SetClassHint](/vendor/x11/xlib/#SetClassHint)
* [SetClipMask](/vendor/x11/xlib/#SetClipMask)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFont](/vendor/x11/xlib/#SetFont)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetInputFocus](/vendor/x11/xlib/#SetInputFocus)
* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)
* [SetSelectionOwner](/vendor/x11/xlib/#SetSelectionOwner)
* [SetStripple](/vendor/x11/xlib/#SetStripple)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetTile](/vendor/x11/xlib/#SetTile)
* [SetTransientForHint](/vendor/x11/xlib/#SetTransientForHint)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBackgroundPixmap](/vendor/x11/xlib/#SetWindowBackgroundPixmap)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [SetWindowBorderWidth](/vendor/x11/xlib/#SetWindowBorderWidth)
* [SetWindowColormap](/vendor/x11/xlib/#SetWindowColormap)
* [ShowCursor](/vendor/x11/xlib/#ShowCursor)
* [StoreColor](/vendor/x11/xlib/#StoreColor)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabButton](/vendor/x11/xlib/#UngrabButton)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [UninstallColormap](/vendor/x11/xlib/#UninstallColormap)
* [UnloadFont](/vendor/x11/xlib/#UnloadFont)
* [UnmapSubwindows](/vendor/x11/xlib/#UnmapSubwindows)
* [UnmapWindow](/vendor/x11/xlib/#UnmapWindow)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WindowEvent](/vendor/x11/xlib/#WindowEvent)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)
* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [CreateFontCursor](/vendor/x11/xlib/#CreateFontCursor)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultColormapOfScreen](/vendor/x11/xlib/#DefaultColormapOfScreen)
* [DefaultRootWindow](/vendor/x11/xlib/#DefaultRootWindow)
* [GCContextFromGC](/vendor/x11/xlib/#GCContextFromGC)
* [GetSelectionOwner](/vendor/x11/xlib/#GetSelectionOwner)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RootWindowOfScreen](/vendor/x11/xlib/#RootWindowOfScreen)
* [cursorImageLoadCursor](/vendor/x11/xlib/#cursorImageLoadCursor)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)

### [XIDProc ¶](#XIDProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L873)

```
XIDProc :: proc "c" (xim: XIM, client_data: rawptr, call_data: rawptr)
```

### [XIEventMask ¶](#XIEventMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2232)

```
XIEventMask :: struct {
	deviceid: i32,
	mask_len: i32,
	mask:     [^]u8,
}
```

##### Related Procedures With Parameters

* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)

### [XIEventType ¶](#XIEventType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2196)

```
XIEventType :: enum i32 {
	DeviceChanged      = 1, 
	KeyPress, 
	KeyRelease, 
	ButtonPress, 
	ButtonRelease, 
	Motion, 
	Enter, 
	Leave, 
	FocusIn, 
	FocusOut, 
	HierarchyChanged, 
	Property, 
	RawKeyPress, 
	RawKeyRelease, 
	RawButtonPress, 
	RawButtonRelease, 
	RawMotion, 
	TouchBegin, 
	TouchUpdate, 
	TouchEnd, 
	TouchOwnership, 
	RawTouchBegin, 
	RawTouchUpdate, 
	RawTouchEnd, 
	BarrierHit, 
	BarrierLeave, 
	GesturePinchBegin, 
	GesturePinchUpdate, 
	GesturePinchEnd, 
	GestureSwipeBegin, 
	GestureSwipeUpdate, 
	GestureSwipeEnd, 
	LastEvent          = 32, 
}
```

##### Related Procedures With Parameters

* [XISetMask](/vendor/x11/xlib/#XISetMask)

### [XIM ¶](#XIM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L868)

```
XIM :: distinct rawptr
```

##### Related Procedures With Parameters

* [CreateIC](/vendor/x11/xlib/#CreateIC)



##### Related Procedures With Returns

* [OpenIM](/vendor/x11/xlib/#OpenIM)

### [XIMCallback ¶](#XIMCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L884)

```
XIMCallback :: struct {
	client_data: rawptr,
	callback:    XIMProc,
}
```

### [XIMCaretDirection ¶](#XIMCaretDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L930)

```
XIMCaretDirection :: enum i32 {
	XIMForwardChar      = 0, 
	XIMBackwardChar     = 1, 
	XIMForwardWord      = 2, 
	XIMBackwardWord     = 3, 
	XIMCaretUp          = 4, 
	XIMCaretDown        = 5, 
	XIMNextLine         = 6, 
	XIMPreviousLine     = 7, 
	XIMLineStart        = 8, 
	XIMLineEnd          = 9, 
	XIMAbsolutePosition = 10, 
	XIMDontChang        = 11, 
}
```

### [XIMCaretStyle ¶](#XIMCaretStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L960)

```
XIMCaretStyle :: enum i32 {
	XIMIsInvisible, 
	XIMIsPrimary, 
	XIMIsSecondary, 
}
```

### [XIMFeedback ¶](#XIMFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L894)

```
XIMFeedback :: uint
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)

### [XIMHotKeyState ¶](#XIMHotKeyState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L996)

```
XIMHotKeyState :: uint
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)

### [XIMHotKeyTrigger ¶](#XIMHotKeyTrigger) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L985)

```
XIMHotKeyTrigger :: struct {
	keysym:        KeySym,
	modifier:      i32,
	modifier_mask: i32,
}
```

### [XIMHotKeyTriggers ¶](#XIMHotKeyTriggers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L991)

```
XIMHotKeyTriggers :: struct {
	num_hot_key: i32,
	key:         [^]XIMHotKeyTrigger,
}
```

### [XIMPreeditCaretCallbackStruct ¶](#XIMPreeditCaretCallbackStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L966)

```
XIMPreeditCaretCallbackStruct :: struct {
	position:  i32,
	direction: XIMCaretDirection,
	style:     XIMCaretStyle,
}
```

### [XIMPreeditDrawCallbackStruct ¶](#XIMPreeditDrawCallbackStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L953)

```
XIMPreeditDrawCallbackStruct :: struct {
	caret:      i32,
	chg_first:  i32,
	chg_length: i32,
	text:       ^XIMText,
}
```

### [XIMPreeditState ¶](#XIMPreeditState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L906)

```
XIMPreeditState :: uint
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)

### [XIMPreeditStateNotifyCallbackStruct ¶](#XIMPreeditStateNotifyCallbackStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L908)

```
XIMPreeditStateNotifyCallbackStruct :: struct {
	state: uint,
}
```

### [XIMProc ¶](#XIMProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L871)

```
XIMProc :: proc "c" (xim: XIM, client_data: rawptr, call_data: rawptr)
```

### [XIMResetState ¶](#XIMResetState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L912)

```
XIMResetState :: uint
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)

### [XIMStatusDataType ¶](#XIMStatusDataType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L972)

```
XIMStatusDataType :: enum int {
	XIMTextType, 
	XIMBitmapType, 
}
```

### [XIMStatusDrawCallbackStruct ¶](#XIMStatusDrawCallbackStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L977)

```
XIMStatusDrawCallbackStruct :: struct {
	type: XIMStatusDataType,
	data: struct #raw_union {
		text:   ^XIMText,
		bitmap: XID,
	},
}
```

### [XIMStringConversionCallbackStruct ¶](#XIMStringConversionCallbackStruct) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L945)

```
XIMStringConversionCallbackStruct :: struct {
	position:  u16,
	direction: XIMCaretDirection,
	operation: u16,
	factor:    u16,
	text:      ^XIMStringConversionText,
}
```

### [XIMStringConversionFeedback ¶](#XIMStringConversionFeedback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L914)

```
XIMStringConversionFeedback :: uint
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)

### [XIMStringConversionOperation ¶](#XIMStringConversionOperation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L928)

```
XIMStringConversionOperation :: u16
```

### [XIMStringConversionPosition ¶](#XIMStringConversionPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L926)

```
XIMStringConversionPosition :: u16
```

### [XIMStringConversionText ¶](#XIMStringConversionText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L916)

```
XIMStringConversionText :: struct {
	length:            u16,
	feedback:          ^uint,
	encoding_is_wchar: b32,
	string:            struct #raw_union {
		mbs: [^]u8,
		wcs: [^]rune,
	},
}
```

### [XIMStringConversionType ¶](#XIMStringConversionType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L927)

```
XIMStringConversionType :: u16
```

### [XIMStyle ¶](#XIMStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L875)

```
XIMStyle :: uint
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)

### [XIMStyles ¶](#XIMStyles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L877)

```
XIMStyles :: struct {
	count_styles:     u16,
	supported_styles: [^]uint,
}
```

### [XIMText ¶](#XIMText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L896)

```
XIMText :: struct {
	length:            u16,
	feedback:          ^uint,
	encoding_is_wchar: b32,
	string:            struct #raw_union {
		multi_byte: [^]u8,
		wide_char:  [^]rune,
	},
}
```

### [XIMValuesList ¶](#XIMValuesList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L998)

```
XIMValuesList :: struct {
	count_values:     u16,
	supported_values: [^]cstring,
}
```

### [XIRawEvent ¶](#XIRawEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2244)

```
XIRawEvent :: struct {
	type:       EventType,
	serial:     u64,
	send_event: b32,
	display:    ^Display,
	extension:  i32,
	evtype:     XIEventType,
	time:       Time,
	deviceid:   i32,
	sourceid:   i32,
	detail:     i32,
	flags:      i32,
	valuators:  XIValuatorState,
	raw_values: [^]f64,
}
```

### [XIValuatorState ¶](#XIValuatorState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2238)

```
XIValuatorState :: struct {
	mask_len: i32,
	mask:     [^]u8,
	values:   [^]f64,
}
```

### [XIconSize ¶](#XIconSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1975)

```
XIconSize :: struct {
	min_width:  i32,
	min_height: i32,
	max_width:  i32,
	max_height: i32,
	width_inc:  i32,
	height_inc: i32,
}
```

##### Related Procedures With Parameters

* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)



##### Related Procedures With Returns

* [AllocIconSize](/vendor/x11/xlib/#AllocIconSize)

### [XImage ¶](#XImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L189)

```
XImage :: struct {
	width:            i32,
	height:           i32,
	xoffset:          i32,
	format:           ImageFormat,
	data:             rawptr,
	byte_order:       i32,
	bitmap_unit:      i32,
	bitmap_bit_order: ByteOrder,
	bitmap_pad:       i32,
	depth:            i32,
	bytes_per_line:   i32,
	bits_per_pixel:   i32,
	red_mask:         uint,
	green_mask:       uint,
	blue_mask:        uint,
	obdata:           rawptr,
	f:                struct {
		create_image:  proc "c" (display: ^Display, visual: ^Visual, depth: u32, format: i32, offset: i32, data: rawptr, width: u32, height: u32, pad: i32, stride: i32) -> ^XImage,
		destroy_image: proc "c" (image: ^XImage) -> i32,
		get_pixel:     proc "c" (image: ^XImage) -> uint,
		put_pixel:     proc "c" (image: ^XImage, x: i32, y: i32, pixel: uint) -> i32,
		sub_image:     proc "c" (image: ^XImage, x: i32, y: i32, w: u32, h: u32) -> ^XImage,
		add_pixel:     proc "c" (image: ^XImage, val: int) -> i32,
	},
}
```

##### Related Procedures With Parameters

* [AddPixel](/vendor/x11/xlib/#AddPixel)
* [DestroyImage](/vendor/x11/xlib/#DestroyImage)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [InitImage](/vendor/x11/xlib/#InitImage)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SubImage](/vendor/x11/xlib/#SubImage)



##### Related Procedures With Returns

* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [GetImage](/vendor/x11/xlib/#GetImage)

### [XKeyEvent ¶](#XKeyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L307)

```
XKeyEvent :: struct {
	type:        EventType,
	serial:      uint,
	send_event:  b32,
	display:     ^Display,
	window:      XID,
	root:        XID,
	subwindow:   XID,
	time:        Time,
	x:           i32,
	y:           i32,
	x_root:      i32,
	y_root:      i32,
	state:       bit_set[InputMaskBits; i32],
	keycode:     u32,
	same_screen: b32,
}
```

##### Related Procedures With Parameters

* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)

### [XKeyPressedEvent ¶](#XKeyPressedEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L325)

```
XKeyPressedEvent :: XKeyEvent
```

##### Related Procedures With Parameters

* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)

### [XKeyReleasedEvent ¶](#XKeyReleasedEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L326)

```
XKeyReleasedEvent :: XKeyEvent
```

##### Related Procedures With Parameters

* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)

### [XKeyboardControl ¶](#XKeyboardControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L273)

```
XKeyboardControl :: struct {
	key_click_percent: i32,
	bell_percent:      i32,
	bell_pitch:        i32,
	bell_duration:     i32,
	led:               i32,
	led_mode:          KeyboardLedMode,
	key:               i32,
	auto_repeat_mode:  KeyboardAutoRepeatMode,
}
```

##### Related Procedures With Parameters

* [ChangeKeyboardControl](/vendor/x11/xlib/#ChangeKeyboardControl)

### [XKeyboardState ¶](#XKeyboardState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L284)

```
XKeyboardState :: struct {
	key_click_percent:  i32,
	bell_percent:       i32,
	bell_pitch:         u32,
	bell_duration:      u32,
	led_mask:           uint,
	global_auto_repeat: i32,
	auto_repeats:       [32]u8,
}
```

##### Related Procedures With Parameters

* [GetKeyboardControl](/vendor/x11/xlib/#GetKeyboardControl)

### [XKeymapEvent ¶](#XKeymapEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L405)

```
XKeymapEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	key_vector: [32]u8,
}
```

### [XLeaveWindowEvent ¶](#XLeaveWindowEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L390)

```
XLeaveWindowEvent :: XCrossingEvent
```

### [XMapEvent ¶](#XMapEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L495)

```
XMapEvent :: struct {
	type:              EventType,
	serial:            uint,
	send_event:        b32,
	display:           ^Display,
	event:             XID,
	window:            XID,
	override_redirect: b32,
}
```

### [XMapRequestEvent ¶](#XMapRequestEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L505)

```
XMapRequestEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	parent:     XID,
	window:     XID,
}
```

### [XMappingEvent ¶](#XMappingEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L673)

```
XMappingEvent :: struct {
	type:          EventType,
	serial:        uint,
	send_event:    b32,
	display:       ^Display,
	window:        XID,
	request:       MappingRequest,
	first_keycode: i32,
	count:         i32,
}
```

##### Related Procedures With Parameters

* [RefreshKeyboardMapping](/vendor/x11/xlib/#RefreshKeyboardMapping)

### [XModifierKeymap ¶](#XModifierKeymap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L300)

```
XModifierKeymap :: struct {
	max_keypermod: i32,
	modifiermap:   ^u8,
}
```

##### Related Procedures With Parameters

* [DeleteModifiermapEntry](/vendor/x11/xlib/#DeleteModifiermapEntry)
* [FreeModifiermap](/vendor/x11/xlib/#FreeModifiermap)
* [InsertModifiermapEntry](/vendor/x11/xlib/#InsertModifiermapEntry)
* [SetModifierMapping](/vendor/x11/xlib/#SetModifierMapping)



##### Related Procedures With Returns

* [GetModifierMapping](/vendor/x11/xlib/#GetModifierMapping)
* [NewModifiermap](/vendor/x11/xlib/#NewModifiermap)

### [XMotionEvent ¶](#XMotionEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L349)

```
XMotionEvent :: struct {
	type:        EventType,
	serial:      uint,
	send_event:  b32,
	display:     ^Display,
	window:      XID,
	root:        XID,
	subwindow:   XID,
	time:        Time,
	x:           i32,
	y:           i32,
	x_root:      i32,
	y_root:      i32,
	state:       bit_set[InputMaskBits; i32],
	is_hint:     b8,
	same_screen: b32,
}
```

### [XNoExposeEvent ¶](#XNoExposeEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L442)

```
XNoExposeEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	drawable:   XID,
	major_code: i32,
	minor_code: i32,
}
```

### [XOC ¶](#XOC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L827)

```
XOC :: distinct rawptr
```

### [XOM ¶](#XOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L826)

```
XOM :: distinct rawptr
```

### [XOMCharSetList ¶](#XOMCharSetList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L844)

```
XOMCharSetList :: struct {
	charset_count: i32,
	charset_list:  [^]cstring,
}
```

### [XOMFontInfo ¶](#XOMFontInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L862)

```
XOMFontInfo :: struct {
	num_font:         i32,
	font_struct_list: [^]^XFontStruct,
	font_name_list:   [^]cstring,
}
```

### [XOMOrientation ¶](#XOMOrientation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L857)

```
XOMOrientation :: struct {
	num_orientation: i32,
	orientation:     [^]XOrientation,
}
```

### [XOrientation ¶](#XOrientation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L849)

```
XOrientation :: enum i32 {
	XOMOrientation_LTR_TTB = 0, 
	XOMOrientation_RTL_TTB = 1, 
	XOMOrientation_TTB_LTR = 2, 
	XOMOrientation_TTB_RTL = 3, 
	XOMOrientation_Context = 4, 
}
```

### [XPixmapFormatValues ¶](#XPixmapFormatValues) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L49)

```
XPixmapFormatValues :: struct {
	depth:          i32,
	bits_per_pixel: i32,
	scanline_pad:   i32,
}
```

##### Related Procedures With Returns

* [ListPixmapFormats](/vendor/x11/xlib/#ListPixmapFormats)

### [XPoint ¶](#XPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L252)

```
XPoint :: struct {
	x: i16,
	y: i16,
}
```

##### Related Procedures With Parameters

* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)

### [XPointerMovedEvent ¶](#XPointerMovedEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L367)

```
XPointerMovedEvent :: XMotionEvent
```

### [XPropertyEvent ¶](#XPropertyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L601)

```
XPropertyEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	atom:       Atom,
	time:       Time,
	state:      PropertyState,
}
```

### [XRRCrtcInfo ¶](#XRRCrtcInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2167)

```
XRRCrtcInfo :: struct {
	timestamp: Time,
	x:         i32,
	y:         i32,
	width:     u32,
	height:    u32,
	mode:      XID,
	rotation:  Rotation,
	noutput:   i32,
	outputs:   [^]XID,
	rotations: Rotation,
	npossible: i32,
	possible:  [^]XID,
}
```

##### Related Procedures With Parameters

* [XRRFreeCrtcInfo](/vendor/x11/xlib/#XRRFreeCrtcInfo)



##### Related Procedures With Returns

* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)

### [XRRModeBits ¶](#XRRModeBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2077)

```
XRRModeBits :: enum u8 {
	RR_HSyncPositive  = 0, 
	RR_HSyncNegative  = 1, 
	RR_VSyncPositive  = 2, 
	RR_VSyncNegative  = 3, 
	RR_Interlace      = 4, 
	RR_DoubleScan     = 5, 
	RR_CSync          = 6, 
	RR_CSyncPositive  = 7, 
	RR_CSyncNegative  = 8, 
	RR_HSkewPresent   = 9, 
	RR_BCast          = 10, 
	RR_PixelMultiplex = 11, 
	RR_DoubleClock    = 12, 
	RR_ClockDivideBy2 = 13, 
}
```

### [XRRModeFlags ¶](#XRRModeFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2076)

```
XRRModeFlags :: bit_set[XRRModeBits; u64]
```

### [XRRModeInfo ¶](#XRRModeInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2116)

```
XRRModeInfo :: struct {
	id:         XID,
	width:      u32,
	height:     u32,
	dotClock:   u64,
	hSyncStart: u32,
	hSyncEnd:   u32,
	hTotal:     u32,
	hSkew:      u32,
	vSyncStart: u32,
	vSyncEnd:   u32,
	vTotal:     u32,
	name:       cstring,
	nameLength: u32,
	modeFlags:  bit_set[XRRModeBits; u64],
}
```

### [XRRMonitorInfo ¶](#XRRMonitorInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2180)

```
XRRMonitorInfo :: struct {
	name:      Atom,
	primary:   b32,
	automatic: b32,
	noutput:   i32,
	x:         i32,
	y:         i32,
	width:     i32,
	height:    i32,
	mwidth:    i32,
	mheight:   i32,
	outputs:   [^]XID,
}
```

##### Related Procedures With Returns

* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)

### [XRROutputInfo ¶](#XRROutputInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2149)

```
XRROutputInfo :: struct {
	timestamp:      Time,
	crtc:           XID,
	name:           cstring,
	nameLen:        i32,
	mm_width:       u64,
	mm_height:      u64,
	connection:     Connection,
	subpixel_order: SubpixelOrder,
	ncrtc:          i32,
	crtcs:          [^]XID,
	nclone:         i32,
	clones:         [^]XID,
	nmode:          i32,
	npreferred:     i32,
	modes:          [^]XID,
}
```

##### Related Procedures With Parameters

* [XRRFreeOutputInfo](/vendor/x11/xlib/#XRRFreeOutputInfo)



##### Related Procedures With Returns

* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)

### [XRRScreenResources ¶](#XRRScreenResources) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2138)

```
XRRScreenResources :: struct {
	timestamp:       Time,
	configTimestamp: Time,
	ncrtc:           i32,
	crtcs:           [^]XID,
	noutput:         i32,
	outputs:         [^]XID,
	nmode:           i32,
	modes:           [^]XRRModeInfo,
}
```

##### Related Procedures With Parameters

* [XRRFreeScreenResources](/vendor/x11/xlib/#XRRFreeScreenResources)
* [XRRGetCrtcInfo](/vendor/x11/xlib/#XRRGetCrtcInfo)
* [XRRGetOutputInfo](/vendor/x11/xlib/#XRRGetOutputInfo)



##### Related Procedures With Returns

* [XRRGetScreenResources](/vendor/x11/xlib/#XRRGetScreenResources)

### [XRRScreenSize ¶](#XRRScreenSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2133)

```
XRRScreenSize :: struct {
	width:   i32,
	height:  i32,
	mwidth:  i32,
	mheight: i32,
}
```

##### Related Procedures With Returns

* [XRRSizes](/vendor/x11/xlib/#XRRSizes)

### [XRectangle ¶](#XRectangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L257)

```
XRectangle :: struct {
	x:      i16,
	y:      i16,
	width:  u16,
	height: u16,
}
```

##### Related Procedures With Parameters

* [ClipBox](/vendor/x11/xlib/#ClipBox)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [UnionRectWithRegion](/vendor/x11/xlib/#UnionRectWithRegion)

### [XReparentEvent ¶](#XReparentEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L514)

```
XReparentEvent :: struct {
	type:              EventType,
	serial:            uint,
	send_event:        b32,
	display:           ^Display,
	event:             XID,
	window:            XID,
	parent:            XID,
	x:                 i32,
	y:                 i32,
	override_redirect: b32,
}
```

### [XResizeRequestEvent ¶](#XResizeRequestEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L554)

```
XResizeRequestEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	width:      i32,
	height:     i32,
}
```

### [XSegment ¶](#XSegment) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L245)

```
XSegment :: struct {
	x1: i16,
	y1: i16,
	x2: i16,
	y2: i16,
}
```

##### Related Procedures With Parameters

* [DrawSegments](/vendor/x11/xlib/#DrawSegments)

### [XSelectionClearEvent ¶](#XSelectionClearEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L612)

```
XSelectionClearEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	selection:  Atom,
	time:       Time,
}
```

### [XSelectionEvent ¶](#XSelectionEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L635)

```
XSelectionEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	requestor:  XID,
	selection:  Atom,
	target:     Atom,
	property:   Atom,
	time:       Time,
}
```

### [XSelectionRequestEvent ¶](#XSelectionRequestEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L622)

```
XSelectionRequestEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	owner:      XID,
	requestor:  XID,
	selection:  Atom,
	target:     Atom,
	property:   Atom,
	time:       Time,
}
```

### [XServerInterpretedAddress ¶](#XServerInterpretedAddress) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L182)

```
XServerInterpretedAddress :: struct {
	typelength:  i32,
	valuelength: i32,
	type:        [^]u8,
	value:       [^]u8,
}
```

### [XSetWindowAttributes ¶](#XSetWindowAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L132)

```
XSetWindowAttributes :: struct {
	background_pixmap:     XID,
	background_pixel:      uint,
	border_pixmap:         XID,
	border_pixel:          uint,
	bit_gravity:           Gravity,
	win_gravity:           Gravity,
	backing_store:         BackingStore,
	backing_planes:        uint,
	backing_pixel:         uint,
	save_under:            b32,
	event_mask:            bit_set[EventMaskBits; int],
	do_not_propagate_mask: bit_set[EventMaskBits; int],
	override_redirect:     b32,
	colormap:              XID,
	cursor:                XID,
}
```

##### Related Procedures With Parameters

* [ChangeWindowAttributes](/vendor/x11/xlib/#ChangeWindowAttributes)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)

### [XSizeHints ¶](#XSizeHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1929)

```
XSizeHints :: struct {
	flags:       bit_set[SizeHintsBits; uint],
	x:           i32,
	y:           i32,
	width:       i32,
	height:      i32,
	min_width:   i32,
	min_height:  i32,
	max_width:   i32,
	max_height:  i32,
	width_inc:   i32,
	height_inc:  i32,
	min_aspect:  struct {
		x: i32,
		y: i32,
	},
	max_aspect:  struct {
		x: i32,
		y: i32,
	},
	base_width:  i32,
	base_height: i32,
	win_gravity: i32,
}
```

##### Related Procedures With Parameters

* [GetWMNormalHints](/vendor/x11/xlib/#GetWMNormalHints)
* [GetWMSizeHints](/vendor/x11/xlib/#GetWMSizeHints)
* [SetWMNormalHints](/vendor/x11/xlib/#SetWMNormalHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMSizeHints](/vendor/x11/xlib/#SetWMSizeHints)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [AllocSizeHints](/vendor/x11/xlib/#AllocSizeHints)

### [XStandardColormap ¶](#XStandardColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2009)

```
XStandardColormap :: struct {
	colormap:   XID,
	red_max:    uint,
	red_mult:   uint,
	green_max:  uint,
	green_mult: uint,
	blue_max:   uint,
	blue_mult:  uint,
	base_pixel: uint,
	visualid:   VisualID,
	killid:     XID,
}
```

##### Related Procedures With Parameters

* [SetRGBColormaps](/vendor/x11/xlib/#SetRGBColormaps)

### [XTextItem ¶](#XTextItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L793)

```
XTextItem :: struct {
	chars:  [^]u8,
	nchars: i32,
	delta:  i32,
	font:   XID,
}
```

##### Related Procedures With Parameters

* [DrawText](/vendor/x11/xlib/#DrawText)

### [XTextItem16 ¶](#XTextItem16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L805)

```
XTextItem16 :: struct {
	chars:  ^XChar2b,
	nchars: i32,
	delta:  i32,
	font:   XID,
}
```

##### Related Procedures With Parameters

* [DrawText16](/vendor/x11/xlib/#DrawText16)

### [XTextProperty ¶](#XTextProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1960)

```
XTextProperty :: struct {
	value:    [^]u8,
	encoding: Atom,
	format:   int,
	nitems:   uint,
}
```

##### Related Procedures With Parameters

* [GetTextProperty](/vendor/x11/xlib/#GetTextProperty)
* [GetWMClientMachine](/vendor/x11/xlib/#GetWMClientMachine)
* [GetWMIconName](/vendor/x11/xlib/#GetWMIconName)
* [GetWMName](/vendor/x11/xlib/#GetWMName)
* [SetTextProperty](/vendor/x11/xlib/#SetTextProperty)
* [SetWMClientMachine](/vendor/x11/xlib/#SetWMClientMachine)
* [SetWMIconName](/vendor/x11/xlib/#SetWMIconName)
* [SetWMName](/vendor/x11/xlib/#SetWMName)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)

### [XTimeCoord ¶](#XTimeCoord) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L294)

```
XTimeCoord :: struct {
	time: Time,
	x:    i16,
	y:    i16,
}
```

##### Related Procedures With Returns

* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)

### [XUnmapEvent ¶](#XUnmapEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L485)

```
XUnmapEvent :: struct {
	type:           EventType,
	serial:         uint,
	send_event:     b32,
	display:        ^Display,
	event:          XID,
	window:         XID,
	from_configure: b32,
}
```

### [XVaNestedList ¶](#XVaNestedList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L882)

```
XVaNestedList :: distinct rawptr
```

##### Related Procedures With Returns

* [VaCreateNestedList](/vendor/x11/xlib/#VaCreateNestedList)

### [XVisibilityEvent ¶](#XVisibilityEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L452)

```
XVisibilityEvent :: struct {
	type:       EventType,
	serial:     uint,
	send_event: b32,
	display:    ^Display,
	window:     XID,
	state:      VisibilityState,
}
```

### [XVisualInfo ¶](#XVisualInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1996)

```
XVisualInfo :: struct {
	visual:        ^Visual,
	visualid:      VisualID,
	screen:        i32,
	depth:         i32,
	class:         i32,
	red_mask:      uint,
	green_mask:    uint,
	blue_mask:     uint,
	colormap_size: i32,
	bits_per_rgb:  i32,
}
```

##### Related Procedures With Parameters

* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)

### [XWMHints ¶](#XWMHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1948)

```
XWMHints :: struct {
	flags:         bit_set[WMHintsBits; uint],
	input:         b32,
	initial_state: WMHintState,
	icon_pixmap:   XID,
	icon_window:   XID,
	icon_x:        i32,
	icon_y:        i32,
	icon_mask:     XID,
	window_group:  XID,
}
```

##### Related Procedures With Parameters

* [SetWMHints](/vendor/x11/xlib/#SetWMHints)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [AllocWMHints](/vendor/x11/xlib/#AllocWMHints)
* [GetWMHints](/vendor/x11/xlib/#GetWMHints)

### [XWindowAttributes ¶](#XWindowAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L150)

```
XWindowAttributes :: struct {
	x:                     i32,
	y:                     i32,
	width:                 i32,
	height:                i32,
	border_width:          i32,
	depth:                 i32,
	visual:                ^Visual,
	root:                  XID,
	class:                 WindowClass,
	bit_gravity:           Gravity,
	win_gravity:           Gravity,
	backing_store:         BackingStore,
	backing_planes:        uint,
	backing_pixel:         uint,
	save_under:            b32,
	colormap:              XID,
	map_installed:         b32,
	map_state:             WindowMapState,
	all_event_masks:       bit_set[EventMaskBits; int],
	your_event_mask:       bit_set[EventMaskBits; int],
	do_not_propagate_mask: bit_set[EventMaskBits; int],
	override_redirect:     b32,
	screen:                ^Screen,
}
```

##### Related Procedures With Parameters

* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)

### [XWindowChanges ¶](#XWindowChanges) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L226)

```
XWindowChanges :: struct {
	x:            i32,
	y:            i32,
	width:        i32,
	height:       i32,
	border_width: i32,
	sibling:      XID,
	stack_mode:   WindowStacking,
}
```

##### Related Procedures With Parameters

* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)

### [XcmsCCC ¶](#XcmsCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1856)

```
XcmsCCC :: distinct rawptr
```

##### Related Procedures With Parameters

* [XcmsCIELabClipL](/vendor/x11/xlib/#XcmsCIELabClipL)
* [XcmsCIELabClipLab](/vendor/x11/xlib/#XcmsCIELabClipLab)
* [XcmsCIELabClipab](/vendor/x11/xlib/#XcmsCIELabClipab)
* [XcmsCIELabQueryMaxC](/vendor/x11/xlib/#XcmsCIELabQueryMaxC)
* [XcmsCIELabQueryMaxL](/vendor/x11/xlib/#XcmsCIELabQueryMaxL)
* [XcmsCIELabQueryMaxLC](/vendor/x11/xlib/#XcmsCIELabQueryMaxLC)
* [XcmsCIELabQueryMinL](/vendor/x11/xlib/#XcmsCIELabQueryMinL)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvClipL](/vendor/x11/xlib/#XcmsCIELuvClipL)
* [XcmsCIELuvClipLuv](/vendor/x11/xlib/#XcmsCIELuvClipLuv)
* [XcmsCIELuvClipuv](/vendor/x11/xlib/#XcmsCIELuvClipuv)
* [XcmsCIELuvQueryMaxC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxC)
* [XcmsCIELuvQueryMaxL](/vendor/x11/xlib/#XcmsCIELuvQueryMaxL)
* [XcmsCIELuvQueryMaxLC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxLC)
* [XcmsCIELuvQueryMinL](/vendor/x11/xlib/#XcmsCIELuvQueryMinL)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsClientWhitePointOfCCC](/vendor/x11/xlib/#XcmsClientWhitePointOfCCC)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsDisplayOfCCC](/vendor/x11/xlib/#XcmsDisplayOfCCC)
* [XcmsFreeCCC](/vendor/x11/xlib/#XcmsFreeCCC)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsScreenNumberOfCCC](/vendor/x11/xlib/#XcmsScreenNumberOfCCC)
* [XcmsScreenWhitePointOfCCC](/vendor/x11/xlib/#XcmsScreenWhitePointOfCCC)
* [XcmsSetCCCOfColormap](/vendor/x11/xlib/#XcmsSetCCCOfColormap)
* [XcmsSetCompressionProc](/vendor/x11/xlib/#XcmsSetCompressionProc)
* [XcmsSetWhiteAdjustProc](/vendor/x11/xlib/#XcmsSetWhiteAdjustProc)
* [XcmsSetWhitePoint](/vendor/x11/xlib/#XcmsSetWhitePoint)
* [XcmsTekHVCClipC](/vendor/x11/xlib/#XcmsTekHVCClipC)
* [XcmsTekHVCClipV](/vendor/x11/xlib/#XcmsTekHVCClipV)
* [XcmsTekHVCClipVC](/vendor/x11/xlib/#XcmsTekHVCClipVC)
* [XcmsTekHVCQueryMaxC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxC)
* [XcmsTekHVCQueryMaxV](/vendor/x11/xlib/#XcmsTekHVCQueryMaxV)
* [XcmsTekHVCQueryMaxVC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVC)
* [XcmsTekHVCQueryMaxVSamples](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCQueryMinV](/vendor/x11/xlib/#XcmsTekHVCQueryMinV)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)
* [XcmsVisualOfCCC](/vendor/x11/xlib/#XcmsVisualOfCCC)



##### Related Procedures With Returns

* [XcmsCCCOfColormap](/vendor/x11/xlib/#XcmsCCCOfColormap)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsDefaultCCC](/vendor/x11/xlib/#XcmsDefaultCCC)

### [XcmsCCCRec ¶](#XcmsCCCRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1874)

```
XcmsCCCRec :: struct {
	dpy:                  ^Display,
	screenNumber:         i32,
	visual:               ^Visual,
	clientWhitePt:        XcmsColor,
	gamutCompProc:        XcmsCompressionProc,
	gamutCompClientData:  rawptr,
	whitePtAdjProc:       XcmsWhiteAdjustProc,
	whitePtAdjClientData: rawptr,
	pPerScrnInfo:         ^XcmsPerScrnInfo,
}
```

### [XcmsCIELab ¶](#XcmsCIELab) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1807)

```
XcmsCIELab :: struct {
	L_star: f64,
	a_star: f64,
	b_star: f64,
}
```

### [XcmsCIELuv ¶](#XcmsCIELuv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1813)

```
XcmsCIELuv :: struct {
	L_star: f64,
	u_star: f64,
	v_star: f64,
}
```

### [XcmsCIEXYZ ¶](#XcmsCIEXYZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1789)

```
XcmsCIEXYZ :: struct {
	X: f64,
	Y: f64,
	Z: f64,
}
```

### [XcmsCIEuvY ¶](#XcmsCIEuvY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1795)

```
XcmsCIEuvY :: struct {
	u_prime: f64,
	v_prime: f64,
	Y:       f64,
}
```

### [XcmsCIExyY ¶](#XcmsCIExyY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1801)

```
XcmsCIExyY :: struct {
	x: f64,
	y: f64,
	Y: f64,
}
```

### [XcmsColor ¶](#XcmsColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1832)

```
XcmsColor :: struct {
	spec:   struct #raw_union {
		RGB:    XcmsRGB,
		RGBi:   XcmsRGBi,
		CIEXYZ: XcmsCIEXYZ,
		CIEuvY: XcmsCIEuvY,
		CIExyY: XcmsCIExyY,
		CIELab: XcmsCIELab,
		CIELuv: XcmsCIELuv,
		TekHVC: XcmsTekHVC,
		_:      XcmsPad,
	},
	pixel:  uint,
	format: uint,
}
```

##### Related Procedures With Parameters

* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabClipL](/vendor/x11/xlib/#XcmsCIELabClipL)
* [XcmsCIELabClipLab](/vendor/x11/xlib/#XcmsCIELabClipLab)
* [XcmsCIELabClipab](/vendor/x11/xlib/#XcmsCIELabClipab)
* [XcmsCIELabQueryMaxC](/vendor/x11/xlib/#XcmsCIELabQueryMaxC)
* [XcmsCIELabQueryMaxL](/vendor/x11/xlib/#XcmsCIELabQueryMaxL)
* [XcmsCIELabQueryMaxLC](/vendor/x11/xlib/#XcmsCIELabQueryMaxLC)
* [XcmsCIELabQueryMinL](/vendor/x11/xlib/#XcmsCIELabQueryMinL)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvClipL](/vendor/x11/xlib/#XcmsCIELuvClipL)
* [XcmsCIELuvClipLuv](/vendor/x11/xlib/#XcmsCIELuvClipLuv)
* [XcmsCIELuvClipuv](/vendor/x11/xlib/#XcmsCIELuvClipuv)
* [XcmsCIELuvQueryMaxC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxC)
* [XcmsCIELuvQueryMaxL](/vendor/x11/xlib/#XcmsCIELuvQueryMaxL)
* [XcmsCIELuvQueryMaxLC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxLC)
* [XcmsCIELuvQueryMinL](/vendor/x11/xlib/#XcmsCIELuvQueryMinL)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsSetWhitePoint](/vendor/x11/xlib/#XcmsSetWhitePoint)
* [XcmsStoreColor](/vendor/x11/xlib/#XcmsStoreColor)
* [XcmsStoreColors](/vendor/x11/xlib/#XcmsStoreColors)
* [XcmsTekHVCClipC](/vendor/x11/xlib/#XcmsTekHVCClipC)
* [XcmsTekHVCClipV](/vendor/x11/xlib/#XcmsTekHVCClipV)
* [XcmsTekHVCClipVC](/vendor/x11/xlib/#XcmsTekHVCClipVC)
* [XcmsTekHVCQueryMaxC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxC)
* [XcmsTekHVCQueryMaxV](/vendor/x11/xlib/#XcmsTekHVCQueryMaxV)
* [XcmsTekHVCQueryMaxVC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVC)
* [XcmsTekHVCQueryMaxVSamples](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCQueryMinV](/vendor/x11/xlib/#XcmsTekHVCQueryMinV)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [XcmsClientWhitePointOfCCC](/vendor/x11/xlib/#XcmsClientWhitePointOfCCC)
* [XcmsScreenWhitePointOfCCC](/vendor/x11/xlib/#XcmsScreenWhitePointOfCCC)

### [XcmsColorFormat ¶](#XcmsColorFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1773)

```
XcmsColorFormat :: uint
```

##### Related Procedures With Parameters

* [AllocColorCells](/vendor/x11/xlib/#AllocColorCells)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [GetFontProperty](/vendor/x11/xlib/#GetFontProperty)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [SetBackground](/vendor/x11/xlib/#SetBackground)
* [SetForeground](/vendor/x11/xlib/#SetForeground)
* [SetPlaneMask](/vendor/x11/xlib/#SetPlaneMask)
* [SetState](/vendor/x11/xlib/#SetState)
* [SetWindowBackground](/vendor/x11/xlib/#SetWindowBackground)
* [SetWindowBorder](/vendor/x11/xlib/#SetWindowBorder)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [XcmsAllocColor](/vendor/x11/xlib/#XcmsAllocColor)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsCIELabWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELabWhiteShiftColors)
* [XcmsCIELuvWhiteShiftColors](/vendor/x11/xlib/#XcmsCIELuvWhiteShiftColors)
* [XcmsConvertColors](/vendor/x11/xlib/#XcmsConvertColors)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XcmsQueryBlack](/vendor/x11/xlib/#XcmsQueryBlack)
* [XcmsQueryBlue](/vendor/x11/xlib/#XcmsQueryBlue)
* [XcmsQueryColor](/vendor/x11/xlib/#XcmsQueryColor)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XcmsQueryGreen](/vendor/x11/xlib/#XcmsQueryGreen)
* [XcmsQueryRed](/vendor/x11/xlib/#XcmsQueryRed)
* [XcmsQueryWhite](/vendor/x11/xlib/#XcmsQueryWhite)
* [XcmsTekHVCWhiteShiftColors](/vendor/x11/xlib/#XcmsTekHVCWhiteShiftColors)



##### Related Procedures With Returns

* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [BlackPixelsOfScreen](/vendor/x11/xlib/#BlackPixelsOfScreen)
* [DisplayMotionBufferSize](/vendor/x11/xlib/#DisplayMotionBufferSize)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [LastKnownRequestProcessed](/vendor/x11/xlib/#LastKnownRequestProcessed)
* [NextRequest](/vendor/x11/xlib/#NextRequest)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WhitePixelsOfScreen](/vendor/x11/xlib/#WhitePixelsOfScreen)

### [XcmsColorSpace ¶](#XcmsColorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1911)

```
XcmsColorSpace :: struct {
	prefix:       cstring,
	id:           uint,
	parseString:  XcmsParseStringProc,
	to_CIEXYZ:    [^]XcmsDIConversionProc,
	from_CIEXYZ:  [^]XcmsDIConversionProc,
	inverse_flag: i32,
}
```

### [XcmsCompressionProc ¶](#XcmsCompressionProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1858)

```
XcmsCompressionProc :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status
```

##### Related Procedures With Parameters

* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsSetCompressionProc](/vendor/x11/xlib/#XcmsSetCompressionProc)

### [XcmsConversionProc ¶](#XcmsConversionProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1906)

```
XcmsConversionProc :: XcmsDIConversionProc
```

### [XcmsDDConversionProc ¶](#XcmsDDConversionProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1893)

```
XcmsDDConversionProc :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, compressed: [^]b32) -> i32
```

### [XcmsDIConversionProc ¶](#XcmsDIConversionProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1899)

```
XcmsDIConversionProc :: proc "c" (ctx: XcmsCCC, white_point: ^XcmsColor, colors: ^XcmsColor, ncolors: u32) -> i32
```

### [XcmsFloat ¶](#XcmsFloat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1775)

```
XcmsFloat :: f64
```

##### Related Procedures With Parameters

* [XcmsCIELabQueryMaxC](/vendor/x11/xlib/#XcmsCIELabQueryMaxC)
* [XcmsCIELabQueryMaxL](/vendor/x11/xlib/#XcmsCIELabQueryMaxL)
* [XcmsCIELabQueryMaxLC](/vendor/x11/xlib/#XcmsCIELabQueryMaxLC)
* [XcmsCIELabQueryMinL](/vendor/x11/xlib/#XcmsCIELabQueryMinL)
* [XcmsCIELuvQueryMaxC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxC)
* [XcmsCIELuvQueryMaxL](/vendor/x11/xlib/#XcmsCIELuvQueryMaxL)
* [XcmsCIELuvQueryMaxLC](/vendor/x11/xlib/#XcmsCIELuvQueryMaxLC)
* [XcmsCIELuvQueryMinL](/vendor/x11/xlib/#XcmsCIELuvQueryMinL)
* [XcmsTekHVCQueryMaxC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxC)
* [XcmsTekHVCQueryMaxV](/vendor/x11/xlib/#XcmsTekHVCQueryMaxV)
* [XcmsTekHVCQueryMaxVC](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVC)
* [XcmsTekHVCQueryMaxVSamples](/vendor/x11/xlib/#XcmsTekHVCQueryMaxVSamples)
* [XcmsTekHVCQueryMinV](/vendor/x11/xlib/#XcmsTekHVCQueryMinV)

### [XcmsFuncListPtr ¶](#XcmsFuncListPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1907)

```
XcmsFuncListPtr :: [^]XcmsDIConversionProc
```

### [XcmsFunctionSet ¶](#XcmsFunctionSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1920)

```
XcmsFunctionSet :: struct {
	DDColorSpaces:  [^]^XcmsColorSpace,
	screenInitProc: XcmsScreenInitProc,
	screenFreeProc: XcmsScreenFreeProc,
}
```

### [XcmsPad ¶](#XcmsPad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1825)

```
XcmsPad :: struct {
	_: f64,
	_: f64,
	_: f64,
	_: f64,
}
```

### [XcmsParseStringProc ¶](#XcmsParseStringProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1909)

```
XcmsParseStringProc :: proc "c" (color_string: cstring, color: ^XcmsColor) -> i32
```

### [XcmsPerScrnInfo ¶](#XcmsPerScrnInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1848)

```
XcmsPerScrnInfo :: struct {
	screenWhitePt: XcmsColor,
	functionSet:   rawptr,
	screenData:    rawptr,
	state:         u8,
	_:             [3]u8,
}
```

### [XcmsRGB ¶](#XcmsRGB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1777)

```
XcmsRGB :: struct {
	red:   u16,
	green: u16,
	blue:  u16,
}
```

### [XcmsRGBi ¶](#XcmsRGBi) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1783)

```
XcmsRGBi :: struct {
	red:   f64,
	green: f64,
	blue:  f64,
}
```

### [XcmsScreenFreeProc ¶](#XcmsScreenFreeProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1891)

```
XcmsScreenFreeProc :: proc "c" (screen: rawptr)
```

### [XcmsScreenInitProc ¶](#XcmsScreenInitProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1886)

```
XcmsScreenInitProc :: proc "c" (display: ^Display, screen_number: i32, screen_info: ^XcmsPerScrnInfo) -> i32
```

### [XcmsTekHVC ¶](#XcmsTekHVC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1819)

```
XcmsTekHVC :: struct {
	H: f64,
	V: f64,
	C: f64,
}
```

### [XcmsWhiteAdjustProc ¶](#XcmsWhiteAdjustProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1865)

```
XcmsWhiteAdjustProc :: proc "c" (ctx: XcmsCCC, initial_white_point: ^XcmsColor, target_white_point: ^XcmsColor, target_format: uint, colors: [^]XcmsColor, ncolors: u32, compression: [^]b32) -> Status
```

##### Related Procedures With Parameters

* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsSetWhiteAdjustProc](/vendor/x11/xlib/#XcmsSetWhiteAdjustProc)

### [XkbAccessXNotifyEvent ¶](#XkbAccessXNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1198)

```
XkbAccessXNotifyEvent :: struct {
	type:           i32,
	serial:         u64,
	send_event:     b32,
	display:        ^Display,
	time:           Time,
	xkb_type:       XkbEventType,
	device:         i32,
	detail:         i32,
	keycode:        i32,
	sk_delay:       i32,
	debounce_delay: i32,
}
```

### [XkbAction ¶](#XkbAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1611)

```
XkbAction :: struct #raw_union {
	any:      XkbAnyAction,
	mod:      XkbModAction,
	group:    XkbGroupAction,
	iso:      XkbISOAction,
	ptr:      XkbPtrAction,
	btn:      XkbPtrBtnAction,
	dflt:     XkbPtrDfltAction,
	screen:   XkbSwitchScreenAction,
	ctrls:    XkbCtrlsAction,
	msg:      XkbMessageAction,
	redirect: XkbRedirectKeyAction,
	devbtn:   XkbDeviceBtnAction,
	devval:   XkbDeviceValuatorAction,
	type:     u8,
}
```

### [XkbActionMessageEvent ¶](#XkbActionMessageEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1182)

```
XkbActionMessageEvent :: struct {
	type:              i32,
	serial:            u64,
	send_event:        b32,
	display:           ^Display,
	time:              Time,
	xkb_type:          XkbEventType,
	device:            i32,
	keycode:           u8,
	press:             b32,
	key_event_follows: b32,
	group:             i32,
	mods:              u32,
	message:           [7]i8,
}
```

### [XkbAnyAction ¶](#XkbAnyAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1506)

```
XkbAnyAction :: struct {
	type: u8,
	data: [7]u8,
}
```

### [XkbAnyDoodadPtr ¶](#XkbAnyDoodadPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1320)

```
XkbAnyDoodadPtr :: ^XkbAnyDoodadRec
```

### [XkbAnyDoodadRec ¶](#XkbAnyDoodadRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1312)

```
XkbAnyDoodadRec :: struct {
	name:     Atom,
	type:     u8,
	priority: u8,
	top:      i16,
	left:     i16,
	angle:    i16,
}
```

### [XkbAnyEvent ¶](#XkbAnyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1012)

```
XkbAnyEvent :: struct {
	type:       i32,
	serial:     u64,
	send_event: b32,
	display:    ^Display,
	time:       Time,
	xkb_type:   XkbEventType,
	device:     u32,
}
```

### [XkbBehavior ¶](#XkbBehavior) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1501)

```
XkbBehavior :: struct {
	type: u8,
	data: u8,
}
```

### [XkbBellNotifyEvent ¶](#XkbBellNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1164)

```
XkbBellNotifyEvent :: struct {
	type:       i32,
	serial:     u64,
	send_event: b32,
	display:    ^Display,
	time:       Time,
	xkb_type:   XkbEventType,
	device:     i32,
	percent:    i32,
	pitch:      i32,
	duration:   i32,
	bell_class: i32,
	bell_id:    i32,
	name:       Atom,
	window:     XID,
	event_only: b32,
}
```

### [XkbBoundsPtr ¶](#XkbBoundsPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1260)

```
XkbBoundsPtr :: ^XkbBoundsRec
```

### [XkbBoundsRec ¶](#XkbBoundsRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1256)

```
XkbBoundsRec :: struct {
	x1: i16,
	x2: i16,
	y1: i16,
	y2: i16,
}
```

### [XkbClientMapPtr ¶](#XkbClientMapPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1687)

```
XkbClientMapPtr :: ^XkbClientMapRec
```

### [XkbClientMapRec ¶](#XkbClientMapRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1675)

```
XkbClientMapRec :: struct {
	size_types:  u8,
	num_types:   u8,
	types:       [^]XkbKeyTypeRec,
	size_syms:   u16,
	num_syms:    u16,
	syms:        [^]XID,
	// Keysym
	key_sym_map: [^]XkbSymMapRec,
	modmap:      [^]u8,
}
```

### [XkbColorPtr ¶](#XkbColorPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1291)

```
XkbColorPtr :: ^XkbColorRec
```

### [XkbColorRec ¶](#XkbColorRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1287)

```
XkbColorRec :: struct {
	pixel: u32,
	spec:  ^u8,
}
```

### [XkbCompatMapNotifyEvent ¶](#XkbCompatMapNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1150)

```
XkbCompatMapNotifyEvent :: struct {
	type:           i32,
	serial:         u64,
	send_event:     b32,
	display:        ^Display,
	time:           Time,
	xkb_type:       XkbEventType,
	device:         i32,
	changed_groups: u32,
	first_si:       i32,
	num_si:         i32,
	num_total_si:   i32,
}
```

### [XkbCompatMapPtr ¶](#XkbCompatMapPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1705)

```
XkbCompatMapPtr :: ^XkbCompatMapRec
```

### [XkbCompatMapRec ¶](#XkbCompatMapRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1699)

```
XkbCompatMapRec :: struct {
	sym_interpret: [^]XkbSymInterpretRec,
	groups:        [4]XkbModsRec,
	num_si:        u16,
	size_si:       u16,
}
```

### [XkbControlsNotifyEvent ¶](#XkbControlsNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1098)

```
XkbControlsNotifyEvent :: struct {
	type:                  i32,
	serial:                u64,
	send_event:            b32,
	display:               ^Display,
	time:                  Time,
	xkb_type:              XkbEventType,
	device:                i32,
	changed_ctrls:         u32,
	enabled_ctrls:         u32,
	enabled_ctrls_changes: u32,
	num_groups:            i32,
	keycode:               u8,
	event_type:            i8,
	req_major:             i8,
	req_minor:             i8,
}
```

### [XkbControlsPtr ¶](#XkbControlsPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1652)

```
XkbControlsPtr :: ^XkbControlsRec
```

### [XkbControlsRec ¶](#XkbControlsRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1628)

```
XkbControlsRec :: struct {
	mk_dflt_btn:      u8,
	num_groups:       u8,
	groups_wrap:      u8,
	internal:         XkbModsRec,
	ignore_lock:      XkbModsRec,
	enabled_ctrls:    u32,
	repeat_delay:     u16,
	repeat_interval:  u16,
	slow_keys_delay:  u16,
	debounce_delay:   u16,
	mk_delay:         u16,
	mk_interval:      u16,
	mk_time_to_max:   u16,
	mk_max_speed:     u16,
	mk_curve:         i16,
	ax_options:       u16,
	ax_timeout:       u16,
	axt_opts_mask:    u16,
	axt_opts_values:  u16,
	axt_ctrls_mask:   u32,
	axt_ctrls_values: u32,
	per_key_repeat:   [32]u8,
}
```

### [XkbCtrlsAction ¶](#XkbCtrlsAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1566)

```
XkbCtrlsAction :: struct {
	type:   u8,
	flags:  u8,
	ctrls3: u8,
	ctrls2: u8,
	ctrls1: u8,
	ctrls0: u8,
}
```

### [XkbDescPtr ¶](#XkbDescPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1768)

```
XkbDescPtr :: ^XkbDescRec
```

##### Related Procedures With Parameters

* [XkbGetKeySyms](/vendor/x11/xlib/#XkbGetKeySyms)
* [XkbGetUpdatedMap](/vendor/x11/xlib/#XkbGetUpdatedMap)



##### Related Procedures With Returns

* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)

### [XkbDescRec ¶](#XkbDescRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1753)

```
XkbDescRec :: struct {
	display:      ^Display,
	flags:        u16,
	device_spec:  u16,
	min_key_code: u8,
	max_key_code: u8,
	ctrls:        ^XkbControlsRec,
	server:       ^XkbServerMapRec,
	_map:         ^XkbClientMapRec,
	indicators:   ^XkbIndicatorRec,
	names:        ^XkbNamesRec,
	compat:       ^XkbCompatMapRec,
	geom:         ^XkbGeometryRec,
}
```

##### Related Procedures With Parameters

* [XkbGetKeySyms](/vendor/x11/xlib/#XkbGetKeySyms)
* [XkbGetUpdatedMap](/vendor/x11/xlib/#XkbGetUpdatedMap)



##### Related Procedures With Returns

* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)

### [XkbDeviceBtnAction ¶](#XkbDeviceBtnAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1592)

```
XkbDeviceBtnAction :: struct {
	type:   u8,
	flags:  u8,
	count:  u8,
	button: u8,
	device: u8,
}
```

### [XkbDeviceValuatorAction ¶](#XkbDeviceValuatorAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1600)

```
XkbDeviceValuatorAction :: struct {
	type:     u8,
	device:   u8,
	v1_what:  u8,
	v1_ndx:   u8,
	v1_value: u8,
	v2_what:  u8,
	v2_ndx:   u8,
	v2_value: u8,
}
```

### [XkbDoodadPtr ¶](#XkbDoodadPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1380)

```
XkbDoodadPtr :: ^XkbDoodadRec
```

### [XkbDoodadRec ¶](#XkbDoodadRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1373)

```
XkbDoodadRec :: struct #raw_union {
	any:       XkbAnyDoodadRec,
	shape:     XkbShapeDoodadRec,
	text:      XkbTextDoodadRec,
	indicator: XkbIndicatorDoodadRec,
	logo:      XkbLogoDoodadRec,
}
```

### [XkbEvent ¶](#XkbEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1231)

```
XkbEvent :: struct #raw_union {
	type:       XkbEventType,
	any:        XkbAnyEvent,
	new_kbd:    XkbNewKeyboardNotifyEvent,
	_map:       XkbMapNotifyEvent,
	state:      XkbStateNotifyEvent,
	ctrls:      XkbControlsNotifyEvent,
	indicators: XkbIndicatorNotifyEvent,
	names:      XkbNamesNotifyEvent,
	compat:     XkbCompatMapNotifyEvent,
	bell:       XkbBellNotifyEvent,
	message:    XkbActionMessageEvent,
	accessx:    XkbAccessXNotifyEvent,
	device:     XkbExtensionDeviceNotifyEvent,
	core:       XEvent,
}
```

### [XkbEventMask ¶](#XkbEventMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L53)

```
XkbEventMask :: bit_set[XkbEventType; int]
```

##### Related Procedures With Parameters

* [XkbSelectEvents](/vendor/x11/xlib/#XkbSelectEvents)

##### Related Constants

* [XkbAllEventsMask](/vendor/x11/xlib/#XkbAllEventsMask)

### [XkbEventType ¶](#XkbEventType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L54)

```
XkbEventType :: enum i32 {
	NewKeyboardNotify     = 0, 
	MapNotify             = 1, 
	StateNotify           = 2, 
	ControlsNotify        = 3, 
	IndicatorStateNotify  = 4, 
	IndicatorMapNotify    = 5, 
	NamesNotify           = 6, 
	CompatMapNotify       = 7, 
	BellNotify            = 8, 
	ActionMessage         = 9, 
	AccessXNotify         = 10, 
	ExtensionDeviceNotify = 11, 
}
```

### [XkbExtensionDeviceNotifyEvent ¶](#XkbExtensionDeviceNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1212)

```
XkbExtensionDeviceNotifyEvent :: struct {
	type:         i32,
	serial:       u64,
	send_event:   b32,
	display:      ^Display,
	time:         Time,
	xkb_type:     XkbEventType,
	device:       i32,
	reason:       u32,
	supported:    u32,
	unsupported:  u32,
	first_btn:    i32,
	num_btns:     i32,
	leds_defined: u32,
	led_state:    u32,
	led_class:    i32,
	led_id:       i32,
}
```

### [XkbGeometryPtr ¶](#XkbGeometryPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1453)

```
XkbGeometryPtr :: ^XkbGeometryRec
```

### [XkbGeometryRec ¶](#XkbGeometryRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1427)

```
XkbGeometryRec :: struct {
	name:            Atom,
	width_mm:        u16,
	height_mm:       u16,
	label_font:      cstring,
	label_color:     ^XkbColorRec,
	base_color:      ^XkbColorRec,
	sz_properties:   u16,
	sz_colors:       u16,
	sz_shapes:       u16,
	sz_sections:     u16,
	sz_doodads:      u16,
	sz_key_aliases:  u16,
	num_properties:  u16,
	num_colors:      u16,
	num_shapes:      u16,
	num_sections:    u16,
	num_doodads:     u16,
	num_key_aliases: u16,
	properties:      [^]XkbPropertyRec,
	colors:          [^]XkbColorRec,
	shapes:          [^]XkbShapeRec,
	sections:        [^]XkbSectionRec,
	doodads:         [^]XkbDoodadRec,
	key_aliases:     [^]XkbKeyAliasRec,
}
```

### [XkbGroupAction ¶](#XkbGroupAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1520)

```
XkbGroupAction :: struct {
	type:      u8,
	flags:     u8,
	group_XXX: i8,
}
```

### [XkbISOAction ¶](#XkbISOAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1526)

```
XkbISOAction :: struct {
	type:      u8,
	flags:     u8,
	mask:      u8,
	real_mods: u8,
	group_XXX: i8,
	affect:    u8,
	vmods1:    u8,
	vmods2:    u8,
}
```

### [XkbIndicatorDoodadPtr ¶](#XkbIndicatorDoodadPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1358)

```
XkbIndicatorDoodadPtr :: ^XkbIndicatorDoodadRec
```

### [XkbIndicatorDoodadRec ¶](#XkbIndicatorDoodadRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1347)

```
XkbIndicatorDoodadRec :: struct {
	name:          Atom,
	type:          u8,
	priority:      u8,
	top:           i16,
	left:          i16,
	angle:         i16,
	color_ndx:     u16,
	on_color_ndx:  u16,
	off_color_ndx: u16,
}
```

### [XkbIndicatorMapPtr ¶](#XkbIndicatorMapPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1715)

```
XkbIndicatorMapPtr :: ^XkbIndicatorMapRec
```

### [XkbIndicatorMapRec ¶](#XkbIndicatorMapRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1707)

```
XkbIndicatorMapRec :: struct {
	flags:        u8,
	which_groups: u8,
	groups:       u8,
	which_mods:   u8,
	mods:         XkbModsRec,
	ctrls:        u32,
}
```

### [XkbIndicatorNotifyEvent ¶](#XkbIndicatorNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1116)

```
XkbIndicatorNotifyEvent :: struct {
	type:       i32,
	serial:     u64,
	send_event: b32,
	display:    ^Display,
	time:       Time,
	xkb_type:   XkbEventType,
	device:     i32,
	changed:    u32,
	state:      u32,
}
```

### [XkbIndicatorPtr ¶](#XkbIndicatorPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1721)

```
XkbIndicatorPtr :: ^XkbIndicatorRec
```

### [XkbIndicatorRec ¶](#XkbIndicatorRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1717)

```
XkbIndicatorRec :: struct {
	phys_indicators: u64,
	maps:            [32]XkbIndicatorMapRec,
}
```

### [XkbInfoMask ¶](#XkbInfoMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L27)

```
XkbInfoMask :: bit_set[XkbInfoMaskBits; int]
```

##### Related Procedures With Parameters

* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)
* [XkbGetUpdatedMap](/vendor/x11/xlib/#XkbGetUpdatedMap)

##### Related Constants

* [XkbAllClientInfoMask](/vendor/x11/xlib/#XkbAllClientInfoMask)
* [XkbAllServerInfoMask](/vendor/x11/xlib/#XkbAllServerInfoMask)

### [XkbInfoMaskBits ¶](#XkbInfoMaskBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L28)

```
XkbInfoMaskBits :: enum u32 {
	KeyTypes           = 0, 
	KeySyms            = 1, 
	ModifierMap        = 2, 
	ExplicitComponents = 3, 
	KeyActions         = 4, 
	KeyBehaviors       = 5, 
	VirtualMods        = 6, 
	VirtualModMap      = 7, 
}
```

### [XkbKTMapEntryPtr ¶](#XkbKTMapEntryPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1488)

```
XkbKTMapEntryPtr :: ^XkbKTMapEntryRec
```

### [XkbKTMapEntryRec ¶](#XkbKTMapEntryRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1483)

```
XkbKTMapEntryRec :: struct {
	active: b32,
	level:  u8,
	mods:   XkbModsRec,
}
```

### [XkbKeyAliasPtr ¶](#XkbKeyAliasPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1732)

```
XkbKeyAliasPtr :: ^XkbKeyAliasRec
```

### [XkbKeyAliasRec ¶](#XkbKeyAliasRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1728)

```
XkbKeyAliasRec :: struct {
	real:  [4]i8,
	// Non nul-terminated string
	alias: [4]i8,
}
```

### [XkbKeyNamePtr ¶](#XkbKeyNamePtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1726)

```
XkbKeyNamePtr :: ^XkbKeyNameRec
```

### [XkbKeyNameRec ¶](#XkbKeyNameRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1723)

```
XkbKeyNameRec :: struct {
	name: [4]i8,
}
```

### [XkbKeyPtr ¶](#XkbKeyPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1299)

```
XkbKeyPtr :: ^XkbKeyRec
```

### [XkbKeyRec ¶](#XkbKeyRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1293)

```
XkbKeyRec :: struct {
	name:      XkbKeyNameRec,
	gap:       i16,
	shape_ndx: u8,
	color_ndx: u8,
}
```

### [XkbKeyTypePtr ¶](#XkbKeyTypePtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1499)

```
XkbKeyTypePtr :: ^XkbKeyTypeRec
```

### [XkbKeyTypeRec ¶](#XkbKeyTypeRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1490)

```
XkbKeyTypeRec :: struct {
	mod:         XkbModsRec,
	num_levels:  u8,
	map_count:   u8,
	_map:        [^]XkbKTMapEntryRec,
	preserve:    [^]XkbModsRec,
	name:        Atom,
	level_names: [^]Atom,
}
```

### [XkbLogoDoodadPtr ¶](#XkbLogoDoodadPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1371)

```
XkbLogoDoodadPtr :: ^XkbLogoDoodadRec
```

### [XkbLogoDoodadRec ¶](#XkbLogoDoodadRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1360)

```
XkbLogoDoodadRec :: struct {
	name:      Atom,
	type:      u8,
	priority:  u8,
	top:       i16,
	left:      i16,
	angle:     i16,
	color_ndx: u16,
	shape_ndx: u16,
	logo_name: cstring,
}
```

### [XkbMapNotifyEvent ¶](#XkbMapNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1040)

```
XkbMapNotifyEvent :: struct {
	type:               i32,
	serial:             u64,
	send_event:         b32,
	display:            ^Display,
	time:               Time,
	xkb_type:           XkbEventType,
	device:             i32,
	changed:            u32,
	flags:              u32,
	first_type:         i32,
	num_types:          i32,
	min_key_code:       u8,
	max_key_code:       u8,
	first_key_sym:      u8,
	first_key_act:      u8,
	first_key_behavior: u8,
	first_key_explicit: u8,
	first_modmap_key:   u8,
	first_vmodmap_key:  u8,
	num_key_syms:       i32,
	num_key_acts:       i32,
	num_key_behaviors:  i32,
	num_key_explicit:   i32,
	num_modmap_keys:    i32,
	num_vmodmap_keys:   i32,
	vmods:              u32,
}
```

### [XkbMessageAction ¶](#XkbMessageAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1575)

```
XkbMessageAction :: struct {
	type:    u8,
	flags:   u8,
	message: [6]u8,
}
```

### [XkbModAction ¶](#XkbModAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1511)

```
XkbModAction :: struct {
	type:      u8,
	flags:     u8,
	mask:      u8,
	real_mods: u8,
	vmods1:    u8,
	vmods2:    u8,
}
```

### [XkbModsPtr ¶](#XkbModsPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1481)

```
XkbModsPtr :: ^XkbModsRec
```

### [XkbModsRec ¶](#XkbModsRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1476)

```
XkbModsRec :: struct {
	mask:      u8,
	// effective mods 
	real_mods: u8,
	vmods:     u16,
}
```

### [XkbNamesNotifyEvent ¶](#XkbNamesNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1128)

```
XkbNamesNotifyEvent :: struct {
	type:               i32,
	serial:             u64,
	send_event:         b32,
	display:            ^Display,
	time:               Time,
	xkb_type:           XkbEventType,
	device:             i32,
	changed:            u32,
	first_type:         i32,
	num_types:          i32,
	first_lvl:          i32,
	num_lvls:           i32,
	num_aliases:        i32,
	num_radio_groups:   i32,
	changed_vmods:      u32,
	changed_groups:     u32,
	changed_indicators: u32,
	first_key:          i32,
	num_keys:           i32,
}
```

### [XkbNamesPtr ¶](#XkbNamesPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1751)

```
XkbNamesPtr :: ^XkbNamesRec
```

### [XkbNamesRec ¶](#XkbNamesRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1734)

```
XkbNamesRec :: struct {
	keycodes:        Atom,
	geometry:        Atom,
	symbols:         Atom,
	types:           Atom,
	compat:          Atom,
	vmods:           [16]Atom,
	indicators:      [32]Atom,
	groups:          [4]Atom,
	keys:            [^]XkbKeyNameRec,
	key_aliases:     [^]XkbKeyAliasRec,
	radio_groups:    [^]Atom,
	phys_symbol:     Atom,
	num_keys:        u8,
	num_key_aliases: u8,
	num_rg:          u16,
}
```

### [XkbNewKeyboardNotifyEvent ¶](#XkbNewKeyboardNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1022)

```
XkbNewKeyboardNotifyEvent :: struct {
	type:             i32,
	serial:           u64,
	send_event:       b32,
	display:          ^Display,
	time:             Time,
	xkb_type:         XkbEventType,
	device:           i32,
	old_device:       i32,
	min_key_code:     i32,
	max_key_code:     i32,
	old_min_key_code: i32,
	old_max_key_code: i32,
	changed:          u32,
	req_major:        i8,
	req_minor:        i8,
}
```

### [XkbOutlinePtr ¶](#XkbOutlinePtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1268)

```
XkbOutlinePtr :: ^XkbOutlineRec
```

### [XkbOutlineRec ¶](#XkbOutlineRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1262)

```
XkbOutlineRec :: struct {
	num_points:    u16,
	sz_points:     u16,
	corner_radius: u16,
	points:        [^]XkbPointRec,
}
```

### [XkbOverlayKeyPtr ¶](#XkbOverlayKeyPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1386)

```
XkbOverlayKeyPtr :: ^XkbOverlayKeyRec
```

### [XkbOverlayKeyRec ¶](#XkbOverlayKeyRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1382)

```
XkbOverlayKeyRec :: struct {
	over:  XkbKeyNameRec,
	under: XkbKeyNameRec,
}
```

### [XkbOverlayPtr ¶](#XkbOverlayPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1404)

```
XkbOverlayPtr :: ^XkbOverlayRec
```

### [XkbOverlayRec ¶](#XkbOverlayRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1396)

```
XkbOverlayRec :: struct {
	name:          Atom,
	section_under: ^XkbSectionRec,
	num_rows:      u16,
	sz_rows:       u16,
	rows:          [^]XkbOverlayRowRec,
	bounds:        [^]XkbBoundsRec,
}
```

### [XkbOverlayRowPtr ¶](#XkbOverlayRowPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1394)

```
XkbOverlayRowPtr :: ^XkbOverlayRowRec
```

### [XkbOverlayRowRec ¶](#XkbOverlayRowRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1388)

```
XkbOverlayRowRec :: struct {
	row_under: u16,
	num_keys:  u16,
	sz_keys:   u16,
	keys:      [^]XkbOverlayKeyRec,
}
```

### [XkbPointPtr ¶](#XkbPointPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1254)

```
XkbPointPtr :: ^XkbPointRec
```

### [XkbPointRec ¶](#XkbPointRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1250)

```
XkbPointRec :: struct {
	x: i16,
	y: i16,
}
```

### [XkbPropertyPtr ¶](#XkbPropertyPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1285)

```
XkbPropertyPtr :: ^XkbPropertyRec
```

### [XkbPropertyRec ¶](#XkbPropertyRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1281)

```
XkbPropertyRec :: struct {
	name:  cstring,
	value: cstring,
}
```

### [XkbPtrAction ¶](#XkbPtrAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1537)

```
XkbPtrAction :: struct {
	type:     u8,
	flags:    u8,
	high_XXX: u8,
	low_XXX:  u8,
	high_YYY: u8,
	low_YYY:  u8,
}
```

### [XkbPtrBtnAction ¶](#XkbPtrBtnAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1546)

```
XkbPtrBtnAction :: struct {
	type:   u8,
	flags:  u8,
	count:  u8,
	button: u8,
}
```

### [XkbPtrDfltAction ¶](#XkbPtrDfltAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1553)

```
XkbPtrDfltAction :: struct {
	type:      u8,
	flags:     u8,
	affect:    u8,
	value_XXX: u8,
}
```

### [XkbRedirectKeyAction ¶](#XkbRedirectKeyAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1581)

```
XkbRedirectKeyAction :: struct {
	type:        u8,
	new_key:     u8,
	mods_mask:   u8,
	mods:        u8,
	vmods_mask0: u8,
	vmods_mask1: u8,
	vmods0:      u8,
	vmods1:      u8,
}
```

### [XkbRowPtr ¶](#XkbRowPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1310)

```
XkbRowPtr :: ^XkbRowRec
```

### [XkbRowRec ¶](#XkbRowRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1301)

```
XkbRowRec :: struct {
	top:      i16,
	left:     i16,
	num_keys: u16,
	sz_keys:  u16,
	vertical: i32,
	keys:     [^]XkbKeyRec,
	bounds:   XkbBoundsRec,
}
```

### [XkbSectionPtr ¶](#XkbSectionPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1425)

```
XkbSectionPtr :: ^XkbSectionRec
```

### [XkbSectionRec ¶](#XkbSectionRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1406)

```
XkbSectionRec :: struct {
	name:         Atom,
	priority:     u8,
	top:          i16,
	left:         i16,
	width:        u16,
	height:       u16,
	angle:        i16,
	num_rows:     u16,
	num_doodads:  u16,
	num_overlays: u16,
	sz_rows:      u16,
	sz_doodads:   u16,
	sz_overlays:  u16,
	rows:         [^]XkbRowRec,
	doodads:      [^]XkbDoodadRec,
	bounds:       XkbBoundsRec,
	overlays:     [^]XkbOverlayRec,
}
```

### [XkbServerMapPtr ¶](#XkbServerMapPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1665)

```
XkbServerMapPtr :: ^XkbServerMapRec
```

### [XkbServerMapRec ¶](#XkbServerMapRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1654)

```
XkbServerMapRec :: struct {
	num_acts:  u16,
	size_acts: u16,
	acts:      [^]XkbAction,
	behaviors: [^]XkbBehavior,
	key_acts:  [^]u16,
	explicit:  [^]u8,
	vmods:     [16]u8,
	vmodmap:   [^]u16,
}
```

### [XkbShapeDoodadPtr ¶](#XkbShapeDoodadPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1332)

```
XkbShapeDoodadPtr :: ^XkbShapeDoodadRec
```

### [XkbShapeDoodadRec ¶](#XkbShapeDoodadRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1322)

```
XkbShapeDoodadRec :: struct {
	name:      Atom,
	type:      u8,
	priority:  u8,
	top:       i16,
	left:      i16,
	angle:     i16,
	color_ndx: u16,
	shape_ndx: u16,
}
```

### [XkbShapePtr ¶](#XkbShapePtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1279)

```
XkbShapePtr :: ^XkbShapeRec
```

### [XkbShapeRec ¶](#XkbShapeRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1270)

```
XkbShapeRec :: struct {
	name:         Atom,
	num_outlines: u16,
	sz_outlines:  u16,
	outlines:     [^]XkbOutlineRec,
	approx:       ^XkbOutlineRec,
	primary:      ^XkbOutlineRec,
	bounds:       XkbBoundsRec,
}
```

### [XkbStateNotifyEvent ¶](#XkbStateNotifyEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1069)

```
XkbStateNotifyEvent :: struct {
	type:               i32,
	serial:             u64,
	send_event:         b32,
	display:            ^Display,
	time:               Time,
	xkb_type:           XkbEventType,
	device:             i32,
	changed:            u32,
	group:              i32,
	base_group:         i32,
	latched_group:      i32,
	locked_group:       i32,
	mods:               u32,
	base_mods:          u32,
	latched_mods:       u32,
	locked_mods:        u32,
	compat_state:       i32,
	grab_mods:          u8,
	compat_grab_mods:   u8,
	lookup_mods:        u8,
	compat_lookup_mods: u8,
	ptr_buttons:        i32,
	keycode:            u8,
	event_type:         i8,
	// should be EventType but needs to be i8 instead of i32
	req_major:          i8,
	req_minor:          i8,
}
```

### [XkbStatePtr ¶](#XkbStatePtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1474)

```
XkbStatePtr :: ^XkbStateRec
```

##### Related Procedures With Parameters

* [XkbGetState](/vendor/x11/xlib/#XkbGetState)

### [XkbStateRec ¶](#XkbStateRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1458)

```
XkbStateRec :: struct {
	group:              u8,
	locked_group:       u8,
	base_group:         u16,
	latched_group:      u16,
	mods:               u8,
	base_mods:          u8,
	latched_mods:       u8,
	locked_mods:        u8,
	compat_state:       u8,
	grab_mods:          u8,
	compat_grab_mods:   u8,
	lookup_mods:        u8,
	compat_lookup_mods: u8,
	ptr_buttons:        u16,
}
```

##### Related Procedures With Parameters

* [XkbGetState](/vendor/x11/xlib/#XkbGetState)

### [XkbSwitchScreenAction ¶](#XkbSwitchScreenAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1560)

```
XkbSwitchScreenAction :: struct {
	type:      u8,
	flags:     u8,
	screenXXX: i8,
}
```

### [XkbSymInterpretPtr ¶](#XkbSymInterpretPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1697)

```
XkbSymInterpretPtr :: ^XkbSymInterpretRec
```

### [XkbSymInterpretRec ¶](#XkbSymInterpretRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1689)

```
XkbSymInterpretRec :: struct {
	sym:         XID,
	// KeySym
	flags:       u8,
	match:       u8,
	mods:        u8,
	virtual_mod: u8,
	act:         XkbAnyAction,
}
```

### [XkbSymMapPtr ¶](#XkbSymMapPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1673)

```
XkbSymMapPtr :: ^XkbSymMapRec
```

### [XkbSymMapRec ¶](#XkbSymMapRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1667)

```
XkbSymMapRec :: struct {
	kt_index:   [4]u8,
	group_info: u8,
	width:      u8,
	offset:     u16,
}
```

### [XkbTextDoodadPtr ¶](#XkbTextDoodadPtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1345)

```
XkbTextDoodadPtr :: ^XkbTextDoodadRec
```

### [XkbTextDoodadRec ¶](#XkbTextDoodadRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L1334)

```
XkbTextDoodadRec :: struct {
	name:      Atom,
	type:      u8,
	priority:  u8,
	top:       i16,
	left:      i16,
	angle:     i16,
	color_ndx: u16,
	text:      cstring,
	font:      cstring,
}
```

### [XmbTextItem ¶](#XmbTextItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L830)

```
XmbTextItem :: struct {
	chars:    [^]u8,
	nchars:   i32,
	delta:    i32,
	font_set: XOC,
}
```

### [XrmBinding ¶](#XrmBinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2030)

```
XrmBinding :: enum i32 {
	XrmBindTightly, 
	XrmBindLoosely, 
}
```

### [XrmBindingList ¶](#XrmBindingList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2035)

```
XrmBindingList :: [^]XrmBinding
```

### [XrmClass ¶](#XrmClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2039)

```
XrmClass :: i32
```

##### Related Procedures With Parameters

* [AddHosts](/vendor/x11/xlib/#AddHosts)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [Bell](/vendor/x11/xlib/#Bell)
* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [ChangePointerControl](/vendor/x11/xlib/#ChangePointerControl)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultDepth](/vendor/x11/xlib/#DefaultDepth)
* [DefaultGC](/vendor/x11/xlib/#DefaultGC)
* [DefaultVisual](/vendor/x11/xlib/#DefaultVisual)
* [DeleteModifiermapEntry](/vendor/x11/xlib/#DeleteModifiermapEntry)
* [DisplayCells](/vendor/x11/xlib/#DisplayCells)
* [DisplayHeight](/vendor/x11/xlib/#DisplayHeight)
* [DisplayHeightMM](/vendor/x11/xlib/#DisplayHeightMM)
* [DisplayKeycodes](/vendor/x11/xlib/#DisplayKeycodes)
* [DisplayPlanes](/vendor/x11/xlib/#DisplayPlanes)
* [DisplayWidth](/vendor/x11/xlib/#DisplayWidth)
* [DisplayWidthMM](/vendor/x11/xlib/#DisplayWidthMM)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchBuffer](/vendor/x11/xlib/#FetchBuffer)
* [FetchBytes](/vendor/x11/xlib/#FetchBytes)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeFontInfo](/vendor/x11/xlib/#FreeFontInfo)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetErrorText](/vendor/x11/xlib/#GetErrorText)
* [GetFontPath](/vendor/x11/xlib/#GetFontPath)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [GetPointerControl](/vendor/x11/xlib/#GetPointerControl)
* [GetPointerMapping](/vendor/x11/xlib/#GetPointerMapping)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InsertModifiermapEntry](/vendor/x11/xlib/#InsertModifiermapEntry)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [ListDepths](/vendor/x11/xlib/#ListDepths)
* [ListFonts](/vendor/x11/xlib/#ListFonts)
* [ListFontsWithInfo](/vendor/x11/xlib/#ListFontsWithInfo)
* [ListHosts](/vendor/x11/xlib/#ListHosts)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListPixmapFormats](/vendor/x11/xlib/#ListPixmapFormats)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [NewModifiermap](/vendor/x11/xlib/#NewModifiermap)
* [OffsetRegion](/vendor/x11/xlib/#OffsetRegion)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [PointInRegion](/vendor/x11/xlib/#PointInRegion)
* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)
* [ProcessInternalConnections](/vendor/x11/xlib/#ProcessInternalConnections)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryExtension](/vendor/x11/xlib/#QueryExtension)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [RemoveHosts](/vendor/x11/xlib/#RemoveHosts)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [ScreenOfDisplay](/vendor/x11/xlib/#ScreenOfDisplay)
* [SetClipOrigin](/vendor/x11/xlib/#SetClipOrigin)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetDashes](/vendor/x11/xlib/#SetDashes)
* [SetFontPath](/vendor/x11/xlib/#SetFontPath)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetPointerMapping](/vendor/x11/xlib/#SetPointerMapping)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)
* [SetTSOrigin](/vendor/x11/xlib/#SetTSOrigin)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [ShrinkRegion](/vendor/x11/xlib/#ShrinkRegion)
* [StoreBuffer](/vendor/x11/xlib/#StoreBuffer)
* [StoreBytes](/vendor/x11/xlib/#StoreBytes)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)
* [TextWidth](/vendor/x11/xlib/#TextWidth)
* [TextWidth16](/vendor/x11/xlib/#TextWidth16)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [VaCreateNestedList](/vendor/x11/xlib/#VaCreateNestedList)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XIMaskIsSet](/vendor/x11/xlib/#XIMaskIsSet)
* [XIQueryVersion](/vendor/x11/xlib/#XIQueryVersion)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRSizes](/vendor/x11/xlib/#XRRSizes)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsDefaultCCC](/vendor/x11/xlib/#XcmsDefaultCCC)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)
* [XkbQueryExtension](/vendor/x11/xlib/#XkbQueryExtension)
* [XkbUseExtension](/vendor/x11/xlib/#XkbUseExtension)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)
* [cursorImageCreate](/vendor/x11/xlib/#cursorImageCreate)
* [cursorLibraryLoadImage](/vendor/x11/xlib/#cursorLibraryLoadImage)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [BitmapPad](/vendor/x11/xlib/#BitmapPad)
* [BitmapUnit](/vendor/x11/xlib/#BitmapUnit)
* [CellsOfScreen](/vendor/x11/xlib/#CellsOfScreen)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConnectionNumber](/vendor/x11/xlib/#ConnectionNumber)
* [DefaultDepthOfScreen](/vendor/x11/xlib/#DefaultDepthOfScreen)
* [DefaultScreen](/vendor/x11/xlib/#DefaultScreen)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [EventsQueued](/vendor/x11/xlib/#EventsQueued)
* [Flush](/vendor/x11/xlib/#Flush)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HeightMMOfScreen](/vendor/x11/xlib/#HeightMMOfScreen)
* [HeightOfScreen](/vendor/x11/xlib/#HeightOfScreen)
* [MaxCmapsOfScreen](/vendor/x11/xlib/#MaxCmapsOfScreen)
* [MinCmapsOfScreen](/vendor/x11/xlib/#MinCmapsOfScreen)
* [Pending](/vendor/x11/xlib/#Pending)
* [PlanesOfScreen](/vendor/x11/xlib/#PlanesOfScreen)
* [ProtocolRevision](/vendor/x11/xlib/#ProtocolRevision)
* [ProtocolVersion](/vendor/x11/xlib/#ProtocolVersion)
* [QLength](/vendor/x11/xlib/#QLength)
* [ScreenCount](/vendor/x11/xlib/#ScreenCount)
* [ScreenNumberOfScreen](/vendor/x11/xlib/#ScreenNumberOfScreen)
* [SetModifierMapping](/vendor/x11/xlib/#SetModifierMapping)
* [Sync](/vendor/x11/xlib/#Sync)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabPointer](/vendor/x11/xlib/#UngrabPointer)
* [VendorRelease](/vendor/x11/xlib/#VendorRelease)
* [WidthMMOfScreen](/vendor/x11/xlib/#WidthMMOfScreen)
* [WidthOfScreen](/vendor/x11/xlib/#WidthOfScreen)
* [XcmsScreenNumberOfCCC](/vendor/x11/xlib/#XcmsScreenNumberOfCCC)
* [cursorGetDefaultSize](/vendor/x11/xlib/#cursorGetDefaultSize)

### [XrmClassList ¶](#XrmClassList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2040)

```
XrmClassList :: [^]i32
```

##### Related Procedures With Parameters

* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)



##### Related Procedures With Returns

* [ListDepths](/vendor/x11/xlib/#ListDepths)

### [XrmDatabase ¶](#XrmDatabase) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2052)

```
XrmDatabase :: distinct rawptr
```

##### Related Procedures With Parameters

* [XrmGetResource](/vendor/x11/xlib/#XrmGetResource)



##### Related Procedures With Returns

* [XrmGetStringDatabase](/vendor/x11/xlib/#XrmGetStringDatabase)

### [XrmHashBucket ¶](#XrmHashBucket) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2049)

```
XrmHashBucket :: distinct rawptr
```

##### Related Procedures With Parameters

* [OpenIM](/vendor/x11/xlib/#OpenIM)

### [XrmHashTable ¶](#XrmHashTable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2050)

```
XrmHashTable :: [^]XrmHashBucket
```

### [XrmName ¶](#XrmName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2037)

```
XrmName :: i32
```

##### Related Procedures With Parameters

* [AddHosts](/vendor/x11/xlib/#AddHosts)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [Bell](/vendor/x11/xlib/#Bell)
* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [ChangePointerControl](/vendor/x11/xlib/#ChangePointerControl)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultDepth](/vendor/x11/xlib/#DefaultDepth)
* [DefaultGC](/vendor/x11/xlib/#DefaultGC)
* [DefaultVisual](/vendor/x11/xlib/#DefaultVisual)
* [DeleteModifiermapEntry](/vendor/x11/xlib/#DeleteModifiermapEntry)
* [DisplayCells](/vendor/x11/xlib/#DisplayCells)
* [DisplayHeight](/vendor/x11/xlib/#DisplayHeight)
* [DisplayHeightMM](/vendor/x11/xlib/#DisplayHeightMM)
* [DisplayKeycodes](/vendor/x11/xlib/#DisplayKeycodes)
* [DisplayPlanes](/vendor/x11/xlib/#DisplayPlanes)
* [DisplayWidth](/vendor/x11/xlib/#DisplayWidth)
* [DisplayWidthMM](/vendor/x11/xlib/#DisplayWidthMM)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchBuffer](/vendor/x11/xlib/#FetchBuffer)
* [FetchBytes](/vendor/x11/xlib/#FetchBytes)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeFontInfo](/vendor/x11/xlib/#FreeFontInfo)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetErrorText](/vendor/x11/xlib/#GetErrorText)
* [GetFontPath](/vendor/x11/xlib/#GetFontPath)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [GetPointerControl](/vendor/x11/xlib/#GetPointerControl)
* [GetPointerMapping](/vendor/x11/xlib/#GetPointerMapping)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InsertModifiermapEntry](/vendor/x11/xlib/#InsertModifiermapEntry)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [ListDepths](/vendor/x11/xlib/#ListDepths)
* [ListFonts](/vendor/x11/xlib/#ListFonts)
* [ListFontsWithInfo](/vendor/x11/xlib/#ListFontsWithInfo)
* [ListHosts](/vendor/x11/xlib/#ListHosts)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListPixmapFormats](/vendor/x11/xlib/#ListPixmapFormats)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [NewModifiermap](/vendor/x11/xlib/#NewModifiermap)
* [OffsetRegion](/vendor/x11/xlib/#OffsetRegion)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [PointInRegion](/vendor/x11/xlib/#PointInRegion)
* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)
* [ProcessInternalConnections](/vendor/x11/xlib/#ProcessInternalConnections)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryExtension](/vendor/x11/xlib/#QueryExtension)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [RemoveHosts](/vendor/x11/xlib/#RemoveHosts)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [ScreenOfDisplay](/vendor/x11/xlib/#ScreenOfDisplay)
* [SetClipOrigin](/vendor/x11/xlib/#SetClipOrigin)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetDashes](/vendor/x11/xlib/#SetDashes)
* [SetFontPath](/vendor/x11/xlib/#SetFontPath)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetPointerMapping](/vendor/x11/xlib/#SetPointerMapping)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)
* [SetTSOrigin](/vendor/x11/xlib/#SetTSOrigin)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [ShrinkRegion](/vendor/x11/xlib/#ShrinkRegion)
* [StoreBuffer](/vendor/x11/xlib/#StoreBuffer)
* [StoreBytes](/vendor/x11/xlib/#StoreBytes)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)
* [TextWidth](/vendor/x11/xlib/#TextWidth)
* [TextWidth16](/vendor/x11/xlib/#TextWidth16)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [VaCreateNestedList](/vendor/x11/xlib/#VaCreateNestedList)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XIMaskIsSet](/vendor/x11/xlib/#XIMaskIsSet)
* [XIQueryVersion](/vendor/x11/xlib/#XIQueryVersion)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRSizes](/vendor/x11/xlib/#XRRSizes)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsDefaultCCC](/vendor/x11/xlib/#XcmsDefaultCCC)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)
* [XkbQueryExtension](/vendor/x11/xlib/#XkbQueryExtension)
* [XkbUseExtension](/vendor/x11/xlib/#XkbUseExtension)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)
* [cursorImageCreate](/vendor/x11/xlib/#cursorImageCreate)
* [cursorLibraryLoadImage](/vendor/x11/xlib/#cursorLibraryLoadImage)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [BitmapPad](/vendor/x11/xlib/#BitmapPad)
* [BitmapUnit](/vendor/x11/xlib/#BitmapUnit)
* [CellsOfScreen](/vendor/x11/xlib/#CellsOfScreen)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConnectionNumber](/vendor/x11/xlib/#ConnectionNumber)
* [DefaultDepthOfScreen](/vendor/x11/xlib/#DefaultDepthOfScreen)
* [DefaultScreen](/vendor/x11/xlib/#DefaultScreen)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [EventsQueued](/vendor/x11/xlib/#EventsQueued)
* [Flush](/vendor/x11/xlib/#Flush)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HeightMMOfScreen](/vendor/x11/xlib/#HeightMMOfScreen)
* [HeightOfScreen](/vendor/x11/xlib/#HeightOfScreen)
* [MaxCmapsOfScreen](/vendor/x11/xlib/#MaxCmapsOfScreen)
* [MinCmapsOfScreen](/vendor/x11/xlib/#MinCmapsOfScreen)
* [Pending](/vendor/x11/xlib/#Pending)
* [PlanesOfScreen](/vendor/x11/xlib/#PlanesOfScreen)
* [ProtocolRevision](/vendor/x11/xlib/#ProtocolRevision)
* [ProtocolVersion](/vendor/x11/xlib/#ProtocolVersion)
* [QLength](/vendor/x11/xlib/#QLength)
* [ScreenCount](/vendor/x11/xlib/#ScreenCount)
* [ScreenNumberOfScreen](/vendor/x11/xlib/#ScreenNumberOfScreen)
* [SetModifierMapping](/vendor/x11/xlib/#SetModifierMapping)
* [Sync](/vendor/x11/xlib/#Sync)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabPointer](/vendor/x11/xlib/#UngrabPointer)
* [VendorRelease](/vendor/x11/xlib/#VendorRelease)
* [WidthMMOfScreen](/vendor/x11/xlib/#WidthMMOfScreen)
* [WidthOfScreen](/vendor/x11/xlib/#WidthOfScreen)
* [XcmsScreenNumberOfCCC](/vendor/x11/xlib/#XcmsScreenNumberOfCCC)
* [cursorGetDefaultSize](/vendor/x11/xlib/#cursorGetDefaultSize)

### [XrmNameList ¶](#XrmNameList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2038)

```
XrmNameList :: [^]i32
```

##### Related Procedures With Parameters

* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)



##### Related Procedures With Returns

* [ListDepths](/vendor/x11/xlib/#ListDepths)

### [XrmOptionDescList ¶](#XrmOptionDescList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2072)

```
XrmOptionDescList :: [^]XrmOptionDescRec
```

### [XrmOptionDescRec ¶](#XrmOptionDescRec) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2065)

```
XrmOptionDescRec :: struct {
	option:    cstring,
	specifier: cstring,
	argKind:   XrmOptionKind,
	value:     rawptr,
}
```

### [XrmOptionKind ¶](#XrmOptionKind) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2054)

```
XrmOptionKind :: enum int {
	XrmoptionNoArg, 
	XrmoptionIsArg, 
	XrmoptionStickyArg, 
	XrmoptionSepArg, 
	XrmoptionResArg, 
	XrmoptionSkipArg, 
	XrmoptionSkipLine, 
	XrmoptionSkipNArgs, 
}
```

### [XrmQuark ¶](#XrmQuark) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2026)

```
XrmQuark :: i32
```

##### Related Procedures With Parameters

* [AddHosts](/vendor/x11/xlib/#AddHosts)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [Bell](/vendor/x11/xlib/#Bell)
* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [ChangePointerControl](/vendor/x11/xlib/#ChangePointerControl)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultDepth](/vendor/x11/xlib/#DefaultDepth)
* [DefaultGC](/vendor/x11/xlib/#DefaultGC)
* [DefaultVisual](/vendor/x11/xlib/#DefaultVisual)
* [DeleteModifiermapEntry](/vendor/x11/xlib/#DeleteModifiermapEntry)
* [DisplayCells](/vendor/x11/xlib/#DisplayCells)
* [DisplayHeight](/vendor/x11/xlib/#DisplayHeight)
* [DisplayHeightMM](/vendor/x11/xlib/#DisplayHeightMM)
* [DisplayKeycodes](/vendor/x11/xlib/#DisplayKeycodes)
* [DisplayPlanes](/vendor/x11/xlib/#DisplayPlanes)
* [DisplayWidth](/vendor/x11/xlib/#DisplayWidth)
* [DisplayWidthMM](/vendor/x11/xlib/#DisplayWidthMM)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchBuffer](/vendor/x11/xlib/#FetchBuffer)
* [FetchBytes](/vendor/x11/xlib/#FetchBytes)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeFontInfo](/vendor/x11/xlib/#FreeFontInfo)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetErrorText](/vendor/x11/xlib/#GetErrorText)
* [GetFontPath](/vendor/x11/xlib/#GetFontPath)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [GetPointerControl](/vendor/x11/xlib/#GetPointerControl)
* [GetPointerMapping](/vendor/x11/xlib/#GetPointerMapping)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InsertModifiermapEntry](/vendor/x11/xlib/#InsertModifiermapEntry)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [ListDepths](/vendor/x11/xlib/#ListDepths)
* [ListFonts](/vendor/x11/xlib/#ListFonts)
* [ListFontsWithInfo](/vendor/x11/xlib/#ListFontsWithInfo)
* [ListHosts](/vendor/x11/xlib/#ListHosts)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListPixmapFormats](/vendor/x11/xlib/#ListPixmapFormats)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [NewModifiermap](/vendor/x11/xlib/#NewModifiermap)
* [OffsetRegion](/vendor/x11/xlib/#OffsetRegion)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [PointInRegion](/vendor/x11/xlib/#PointInRegion)
* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)
* [ProcessInternalConnections](/vendor/x11/xlib/#ProcessInternalConnections)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryExtension](/vendor/x11/xlib/#QueryExtension)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [RemoveHosts](/vendor/x11/xlib/#RemoveHosts)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [ScreenOfDisplay](/vendor/x11/xlib/#ScreenOfDisplay)
* [SetClipOrigin](/vendor/x11/xlib/#SetClipOrigin)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetDashes](/vendor/x11/xlib/#SetDashes)
* [SetFontPath](/vendor/x11/xlib/#SetFontPath)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetPointerMapping](/vendor/x11/xlib/#SetPointerMapping)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)
* [SetTSOrigin](/vendor/x11/xlib/#SetTSOrigin)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [ShrinkRegion](/vendor/x11/xlib/#ShrinkRegion)
* [StoreBuffer](/vendor/x11/xlib/#StoreBuffer)
* [StoreBytes](/vendor/x11/xlib/#StoreBytes)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)
* [TextWidth](/vendor/x11/xlib/#TextWidth)
* [TextWidth16](/vendor/x11/xlib/#TextWidth16)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [VaCreateNestedList](/vendor/x11/xlib/#VaCreateNestedList)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XIMaskIsSet](/vendor/x11/xlib/#XIMaskIsSet)
* [XIQueryVersion](/vendor/x11/xlib/#XIQueryVersion)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRSizes](/vendor/x11/xlib/#XRRSizes)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsDefaultCCC](/vendor/x11/xlib/#XcmsDefaultCCC)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)
* [XkbQueryExtension](/vendor/x11/xlib/#XkbQueryExtension)
* [XkbUseExtension](/vendor/x11/xlib/#XkbUseExtension)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)
* [cursorImageCreate](/vendor/x11/xlib/#cursorImageCreate)
* [cursorLibraryLoadImage](/vendor/x11/xlib/#cursorLibraryLoadImage)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [BitmapPad](/vendor/x11/xlib/#BitmapPad)
* [BitmapUnit](/vendor/x11/xlib/#BitmapUnit)
* [CellsOfScreen](/vendor/x11/xlib/#CellsOfScreen)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConnectionNumber](/vendor/x11/xlib/#ConnectionNumber)
* [DefaultDepthOfScreen](/vendor/x11/xlib/#DefaultDepthOfScreen)
* [DefaultScreen](/vendor/x11/xlib/#DefaultScreen)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [EventsQueued](/vendor/x11/xlib/#EventsQueued)
* [Flush](/vendor/x11/xlib/#Flush)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HeightMMOfScreen](/vendor/x11/xlib/#HeightMMOfScreen)
* [HeightOfScreen](/vendor/x11/xlib/#HeightOfScreen)
* [MaxCmapsOfScreen](/vendor/x11/xlib/#MaxCmapsOfScreen)
* [MinCmapsOfScreen](/vendor/x11/xlib/#MinCmapsOfScreen)
* [Pending](/vendor/x11/xlib/#Pending)
* [PlanesOfScreen](/vendor/x11/xlib/#PlanesOfScreen)
* [ProtocolRevision](/vendor/x11/xlib/#ProtocolRevision)
* [ProtocolVersion](/vendor/x11/xlib/#ProtocolVersion)
* [QLength](/vendor/x11/xlib/#QLength)
* [ScreenCount](/vendor/x11/xlib/#ScreenCount)
* [ScreenNumberOfScreen](/vendor/x11/xlib/#ScreenNumberOfScreen)
* [SetModifierMapping](/vendor/x11/xlib/#SetModifierMapping)
* [Sync](/vendor/x11/xlib/#Sync)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabPointer](/vendor/x11/xlib/#UngrabPointer)
* [VendorRelease](/vendor/x11/xlib/#VendorRelease)
* [WidthMMOfScreen](/vendor/x11/xlib/#WidthMMOfScreen)
* [WidthOfScreen](/vendor/x11/xlib/#WidthOfScreen)
* [XcmsScreenNumberOfCCC](/vendor/x11/xlib/#XcmsScreenNumberOfCCC)
* [cursorGetDefaultSize](/vendor/x11/xlib/#cursorGetDefaultSize)

### [XrmQuarkList ¶](#XrmQuarkList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2027)

```
XrmQuarkList :: [^]i32
```

##### Related Procedures With Parameters

* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)



##### Related Procedures With Returns

* [ListDepths](/vendor/x11/xlib/#ListDepths)

### [XrmRepresentation ¶](#XrmRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2041)

```
XrmRepresentation :: i32
```

##### Related Procedures With Parameters

* [AddHosts](/vendor/x11/xlib/#AddHosts)
* [AllocColorPlanes](/vendor/x11/xlib/#AllocColorPlanes)
* [Bell](/vendor/x11/xlib/#Bell)
* [BlackPixel](/vendor/x11/xlib/#BlackPixel)
* [ChangeKeyboardMapping](/vendor/x11/xlib/#ChangeKeyboardMapping)
* [ChangePointerControl](/vendor/x11/xlib/#ChangePointerControl)
* [ChangeProperty](/vendor/x11/xlib/#ChangeProperty)
* [ClearArea](/vendor/x11/xlib/#ClearArea)
* [CopyArea](/vendor/x11/xlib/#CopyArea)
* [CopyPlane](/vendor/x11/xlib/#CopyPlane)
* [CreateImage](/vendor/x11/xlib/#CreateImage)
* [CreateSimpleWindow](/vendor/x11/xlib/#CreateSimpleWindow)
* [CreateWindow](/vendor/x11/xlib/#CreateWindow)
* [DefaultColormap](/vendor/x11/xlib/#DefaultColormap)
* [DefaultDepth](/vendor/x11/xlib/#DefaultDepth)
* [DefaultGC](/vendor/x11/xlib/#DefaultGC)
* [DefaultVisual](/vendor/x11/xlib/#DefaultVisual)
* [DeleteModifiermapEntry](/vendor/x11/xlib/#DeleteModifiermapEntry)
* [DisplayCells](/vendor/x11/xlib/#DisplayCells)
* [DisplayHeight](/vendor/x11/xlib/#DisplayHeight)
* [DisplayHeightMM](/vendor/x11/xlib/#DisplayHeightMM)
* [DisplayKeycodes](/vendor/x11/xlib/#DisplayKeycodes)
* [DisplayPlanes](/vendor/x11/xlib/#DisplayPlanes)
* [DisplayWidth](/vendor/x11/xlib/#DisplayWidth)
* [DisplayWidthMM](/vendor/x11/xlib/#DisplayWidthMM)
* [DrawArc](/vendor/x11/xlib/#DrawArc)
* [DrawArcs](/vendor/x11/xlib/#DrawArcs)
* [DrawImageString](/vendor/x11/xlib/#DrawImageString)
* [DrawImageString16](/vendor/x11/xlib/#DrawImageString16)
* [DrawLine](/vendor/x11/xlib/#DrawLine)
* [DrawLines](/vendor/x11/xlib/#DrawLines)
* [DrawPoint](/vendor/x11/xlib/#DrawPoint)
* [DrawPoints](/vendor/x11/xlib/#DrawPoints)
* [DrawRectangle](/vendor/x11/xlib/#DrawRectangle)
* [DrawRectangles](/vendor/x11/xlib/#DrawRectangles)
* [DrawSegments](/vendor/x11/xlib/#DrawSegments)
* [DrawString](/vendor/x11/xlib/#DrawString)
* [DrawString16](/vendor/x11/xlib/#DrawString16)
* [DrawText](/vendor/x11/xlib/#DrawText)
* [DrawText16](/vendor/x11/xlib/#DrawText16)
* [FetchBuffer](/vendor/x11/xlib/#FetchBuffer)
* [FetchBytes](/vendor/x11/xlib/#FetchBytes)
* [FillArc](/vendor/x11/xlib/#FillArc)
* [FillArcs](/vendor/x11/xlib/#FillArcs)
* [FillPolygon](/vendor/x11/xlib/#FillPolygon)
* [FillRectangle](/vendor/x11/xlib/#FillRectangle)
* [FillRectangles](/vendor/x11/xlib/#FillRectangles)
* [FreeColors](/vendor/x11/xlib/#FreeColors)
* [FreeFontInfo](/vendor/x11/xlib/#FreeFontInfo)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetCommand](/vendor/x11/xlib/#GetCommand)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetErrorText](/vendor/x11/xlib/#GetErrorText)
* [GetFontPath](/vendor/x11/xlib/#GetFontPath)
* [GetGeometry](/vendor/x11/xlib/#GetGeometry)
* [GetIconSizes](/vendor/x11/xlib/#GetIconSizes)
* [GetImage](/vendor/x11/xlib/#GetImage)
* [GetKeyboardMapping](/vendor/x11/xlib/#GetKeyboardMapping)
* [GetMotionEvents](/vendor/x11/xlib/#GetMotionEvents)
* [GetPixel](/vendor/x11/xlib/#GetPixel)
* [GetPointerControl](/vendor/x11/xlib/#GetPointerControl)
* [GetPointerMapping](/vendor/x11/xlib/#GetPointerMapping)
* [GetRGBColormaps](/vendor/x11/xlib/#GetRGBColormaps)
* [GetScreenSaver](/vendor/x11/xlib/#GetScreenSaver)
* [GetSubImage](/vendor/x11/xlib/#GetSubImage)
* [GetVisualInfo](/vendor/x11/xlib/#GetVisualInfo)
* [GetWMColormapWindows](/vendor/x11/xlib/#GetWMColormapWindows)
* [GetWMProtocols](/vendor/x11/xlib/#GetWMProtocols)
* [GetWindowProperty](/vendor/x11/xlib/#GetWindowProperty)
* [GrabKey](/vendor/x11/xlib/#GrabKey)
* [IconifyWindow](/vendor/x11/xlib/#IconifyWindow)
* [InsertModifiermapEntry](/vendor/x11/xlib/#InsertModifiermapEntry)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [InternalConnectionNumbers](/vendor/x11/xlib/#InternalConnectionNumbers)
* [KeycodeToKeysym](/vendor/x11/xlib/#KeycodeToKeysym)
* [ListDepths](/vendor/x11/xlib/#ListDepths)
* [ListFonts](/vendor/x11/xlib/#ListFonts)
* [ListFontsWithInfo](/vendor/x11/xlib/#ListFontsWithInfo)
* [ListHosts](/vendor/x11/xlib/#ListHosts)
* [ListInstalledColormaps](/vendor/x11/xlib/#ListInstalledColormaps)
* [ListPixmapFormats](/vendor/x11/xlib/#ListPixmapFormats)
* [ListProperties](/vendor/x11/xlib/#ListProperties)
* [LookupKeysym](/vendor/x11/xlib/#LookupKeysym)
* [LookupString](/vendor/x11/xlib/#LookupString)
* [MatchVisualInfo](/vendor/x11/xlib/#MatchVisualInfo)
* [MoveResizeWindow](/vendor/x11/xlib/#MoveResizeWindow)
* [MoveWindow](/vendor/x11/xlib/#MoveWindow)
* [NewModifiermap](/vendor/x11/xlib/#NewModifiermap)
* [OffsetRegion](/vendor/x11/xlib/#OffsetRegion)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [PointInRegion](/vendor/x11/xlib/#PointInRegion)
* [PolygonRegion](/vendor/x11/xlib/#PolygonRegion)
* [ProcessInternalConnections](/vendor/x11/xlib/#ProcessInternalConnections)
* [PutImage](/vendor/x11/xlib/#PutImage)
* [PutPixel](/vendor/x11/xlib/#PutPixel)
* [QueryBestSize](/vendor/x11/xlib/#QueryBestSize)
* [QueryColors](/vendor/x11/xlib/#QueryColors)
* [QueryExtension](/vendor/x11/xlib/#QueryExtension)
* [QueryPointer](/vendor/x11/xlib/#QueryPointer)
* [QueryTextExtents](/vendor/x11/xlib/#QueryTextExtents)
* [QueryTextExtents16](/vendor/x11/xlib/#QueryTextExtents16)
* [RebindKeysym](/vendor/x11/xlib/#RebindKeysym)
* [ReconfigureWMWindow](/vendor/x11/xlib/#ReconfigureWMWindow)
* [RectInRegion](/vendor/x11/xlib/#RectInRegion)
* [RemoveHosts](/vendor/x11/xlib/#RemoveHosts)
* [ReparentWindow](/vendor/x11/xlib/#ReparentWindow)
* [RestackWindows](/vendor/x11/xlib/#RestackWindows)
* [RootWindow](/vendor/x11/xlib/#RootWindow)
* [RotateWindowProperties](/vendor/x11/xlib/#RotateWindowProperties)
* [ScreenOfDisplay](/vendor/x11/xlib/#ScreenOfDisplay)
* [SetClipOrigin](/vendor/x11/xlib/#SetClipOrigin)
* [SetClipRectangles](/vendor/x11/xlib/#SetClipRectangles)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetDashes](/vendor/x11/xlib/#SetDashes)
* [SetFontPath](/vendor/x11/xlib/#SetFontPath)
* [SetIconSizes](/vendor/x11/xlib/#SetIconSizes)
* [SetPointerMapping](/vendor/x11/xlib/#SetPointerMapping)
* [SetScreenSaver](/vendor/x11/xlib/#SetScreenSaver)
* [SetTSOrigin](/vendor/x11/xlib/#SetTSOrigin)
* [SetWMColormapWindows](/vendor/x11/xlib/#SetWMColormapWindows)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [SetWMProtocols](/vendor/x11/xlib/#SetWMProtocols)
* [ShrinkRegion](/vendor/x11/xlib/#ShrinkRegion)
* [StoreBuffer](/vendor/x11/xlib/#StoreBuffer)
* [StoreBytes](/vendor/x11/xlib/#StoreBytes)
* [StoreColors](/vendor/x11/xlib/#StoreColors)
* [SubImage](/vendor/x11/xlib/#SubImage)
* [TextExtents](/vendor/x11/xlib/#TextExtents)
* [TextExtents16](/vendor/x11/xlib/#TextExtents16)
* [TextWidth](/vendor/x11/xlib/#TextWidth)
* [TextWidth16](/vendor/x11/xlib/#TextWidth16)
* [TranslateCoordinates](/vendor/x11/xlib/#TranslateCoordinates)
* [UngrabKey](/vendor/x11/xlib/#UngrabKey)
* [VaCreateNestedList](/vendor/x11/xlib/#VaCreateNestedList)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [WarpPointer](/vendor/x11/xlib/#WarpPointer)
* [WhitePixel](/vendor/x11/xlib/#WhitePixel)
* [WithdrawWindow](/vendor/x11/xlib/#WithdrawWindow)
* [XIMaskIsSet](/vendor/x11/xlib/#XIMaskIsSet)
* [XIQueryVersion](/vendor/x11/xlib/#XIQueryVersion)
* [XISelectEvents](/vendor/x11/xlib/#XISelectEvents)
* [XRRGetMonitors](/vendor/x11/xlib/#XRRGetMonitors)
* [XRRSizes](/vendor/x11/xlib/#XRRSizes)
* [XcmsCreateCCC](/vendor/x11/xlib/#XcmsCreateCCC)
* [XcmsDefaultCCC](/vendor/x11/xlib/#XcmsDefaultCCC)
* [XcmsQueryColors](/vendor/x11/xlib/#XcmsQueryColors)
* [XkbGetMap](/vendor/x11/xlib/#XkbGetMap)
* [XkbQueryExtension](/vendor/x11/xlib/#XkbQueryExtension)
* [XkbUseExtension](/vendor/x11/xlib/#XkbUseExtension)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)
* [cursorImageCreate](/vendor/x11/xlib/#cursorImageCreate)
* [cursorLibraryLoadImage](/vendor/x11/xlib/#cursorLibraryLoadImage)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [BitmapPad](/vendor/x11/xlib/#BitmapPad)
* [BitmapUnit](/vendor/x11/xlib/#BitmapUnit)
* [CellsOfScreen](/vendor/x11/xlib/#CellsOfScreen)
* [ConfigureWindow](/vendor/x11/xlib/#ConfigureWindow)
* [ConnectionNumber](/vendor/x11/xlib/#ConnectionNumber)
* [DefaultDepthOfScreen](/vendor/x11/xlib/#DefaultDepthOfScreen)
* [DefaultScreen](/vendor/x11/xlib/#DefaultScreen)
* [DefineCursor](/vendor/x11/xlib/#DefineCursor)
* [DeleteProperty](/vendor/x11/xlib/#DeleteProperty)
* [EventsQueued](/vendor/x11/xlib/#EventsQueued)
* [Flush](/vendor/x11/xlib/#Flush)
* [GetWindowAttributes](/vendor/x11/xlib/#GetWindowAttributes)
* [GrabKeyboard](/vendor/x11/xlib/#GrabKeyboard)
* [GrabPointer](/vendor/x11/xlib/#GrabPointer)
* [HeightMMOfScreen](/vendor/x11/xlib/#HeightMMOfScreen)
* [HeightOfScreen](/vendor/x11/xlib/#HeightOfScreen)
* [MaxCmapsOfScreen](/vendor/x11/xlib/#MaxCmapsOfScreen)
* [MinCmapsOfScreen](/vendor/x11/xlib/#MinCmapsOfScreen)
* [Pending](/vendor/x11/xlib/#Pending)
* [PlanesOfScreen](/vendor/x11/xlib/#PlanesOfScreen)
* [ProtocolRevision](/vendor/x11/xlib/#ProtocolRevision)
* [ProtocolVersion](/vendor/x11/xlib/#ProtocolVersion)
* [QLength](/vendor/x11/xlib/#QLength)
* [ScreenCount](/vendor/x11/xlib/#ScreenCount)
* [ScreenNumberOfScreen](/vendor/x11/xlib/#ScreenNumberOfScreen)
* [SetModifierMapping](/vendor/x11/xlib/#SetModifierMapping)
* [Sync](/vendor/x11/xlib/#Sync)
* [UndefineCursor](/vendor/x11/xlib/#UndefineCursor)
* [UngrabPointer](/vendor/x11/xlib/#UngrabPointer)
* [VendorRelease](/vendor/x11/xlib/#VendorRelease)
* [WidthMMOfScreen](/vendor/x11/xlib/#WidthMMOfScreen)
* [WidthOfScreen](/vendor/x11/xlib/#WidthOfScreen)
* [XcmsScreenNumberOfCCC](/vendor/x11/xlib/#XcmsScreenNumberOfCCC)
* [cursorGetDefaultSize](/vendor/x11/xlib/#cursorGetDefaultSize)

### [XrmSearchList ¶](#XrmSearchList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2051)

```
XrmSearchList :: [^][^]XrmHashBucket
```

### [XrmString ¶](#XrmString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2028)

```
XrmString :: cstring
```

##### Related Procedures With Parameters

* [AllocNamedColor](/vendor/x11/xlib/#AllocNamedColor)
* [DisplayName](/vendor/x11/xlib/#DisplayName)
* [FetchName](/vendor/x11/xlib/#FetchName)
* [FreeFontInfo](/vendor/x11/xlib/#FreeFontInfo)
* [FreeFontNames](/vendor/x11/xlib/#FreeFontNames)
* [FreeFontPath](/vendor/x11/xlib/#FreeFontPath)
* [GetAtomNames](/vendor/x11/xlib/#GetAtomNames)
* [GetErrorDatabaseText](/vendor/x11/xlib/#GetErrorDatabaseText)
* [GetIconName](/vendor/x11/xlib/#GetIconName)
* [InternAtom](/vendor/x11/xlib/#InternAtom)
* [InternAtoms](/vendor/x11/xlib/#InternAtoms)
* [ListFonts](/vendor/x11/xlib/#ListFonts)
* [ListFontsWithInfo](/vendor/x11/xlib/#ListFontsWithInfo)
* [LoadFont](/vendor/x11/xlib/#LoadFont)
* [LoadQueryFont](/vendor/x11/xlib/#LoadQueryFont)
* [LookupColor](/vendor/x11/xlib/#LookupColor)
* [OpenDisplay](/vendor/x11/xlib/#OpenDisplay)
* [OpenIM](/vendor/x11/xlib/#OpenIM)
* [ParseGeometry](/vendor/x11/xlib/#ParseGeometry)
* [QueryExtension](/vendor/x11/xlib/#QueryExtension)
* [SetCommand](/vendor/x11/xlib/#SetCommand)
* [SetFontPath](/vendor/x11/xlib/#SetFontPath)
* [SetIconName](/vendor/x11/xlib/#SetIconName)
* [SetLocaleModifiers](/vendor/x11/xlib/#SetLocaleModifiers)
* [SetWMProperties](/vendor/x11/xlib/#SetWMProperties)
* [StoreName](/vendor/x11/xlib/#StoreName)
* [StoreNamedColor](/vendor/x11/xlib/#StoreNamedColor)
* [StringToKeysym](/vendor/x11/xlib/#StringToKeysym)
* [WMGeometry](/vendor/x11/xlib/#WMGeometry)
* [XcmsAllocNamedColor](/vendor/x11/xlib/#XcmsAllocNamedColor)
* [XcmsLookupColor](/vendor/x11/xlib/#XcmsLookupColor)
* [XrmGetResource](/vendor/x11/xlib/#XrmGetResource)
* [XrmGetStringDatabase](/vendor/x11/xlib/#XrmGetStringDatabase)
* [Xutf8LookupString](/vendor/x11/xlib/#Xutf8LookupString)
* [cursorLibraryLoadCursor](/vendor/x11/xlib/#cursorLibraryLoadCursor)
* [cursorLibraryLoadImage](/vendor/x11/xlib/#cursorLibraryLoadImage)
* [mbSetWMProperties](/vendor/x11/xlib/#mbSetWMProperties)
* [utf8SetWMProperties](/vendor/x11/xlib/#utf8SetWMProperties)



##### Related Procedures With Returns

* [DisplayString](/vendor/x11/xlib/#DisplayString)
* [GetAtomName](/vendor/x11/xlib/#GetAtomName)
* [GetFontPath](/vendor/x11/xlib/#GetFontPath)
* [KeysymToString](/vendor/x11/xlib/#KeysymToString)
* [ResourceManagerString](/vendor/x11/xlib/#ResourceManagerString)
* [ServerVendor](/vendor/x11/xlib/#ServerVendor)
* [SetICValues](/vendor/x11/xlib/#SetICValues)
* [cursorGetTheme](/vendor/x11/xlib/#cursorGetTheme)

### [XrmValue ¶](#XrmValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2043)

```
XrmValue :: struct {
	size: u32,
	addr: rawptr,
}
```

##### Related Procedures With Parameters

* [XrmGetResource](/vendor/x11/xlib/#XrmGetResource)

### [XrmValuePtr ¶](#XrmValuePtr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L2047)

```
XrmValuePtr :: [^]XrmValue
```

### [XwcTextItem ¶](#XwcTextItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin#L837)

```
XwcTextItem :: struct {
	chars:    [^]rune,
	nchars:   i32,
	delta:    i32,
	font_set: XOC,
}
```

## Constants

### [AllHints ¶](#AllHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L704)

```
AllHints: bit_set[WMHintsBits; uint] : WMHints{.InputHint, .StateHint, .IconPixmapHint, .IconWindowHint, .IconPositionHint, .IconMaskHint, .WindowGroupHint}
```

### [AllTemporary ¶](#AllTemporary) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L104)

```
AllTemporary :: 0
```

### [AnyButton ¶](#AnyButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L103)

```
AnyButton :: 0
```

### [AnyKey ¶](#AnyKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L102)

```
AnyKey :: 0
```

### [AnyPropertyType ¶](#AnyPropertyType) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L101)

```
AnyPropertyType :: 0
```

### [CopyFromParent ¶](#CopyFromParent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L97)

```
CopyFromParent :: 0
```

### [CurrentTime ¶](#CurrentTime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L105)

```
CurrentTime :: 0
```

### [IS\_SUPPORTED ¶](#IS_SUPPORTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib.odin#L5)

```
IS_SUPPORTED :: ODIN_OS == .Linux || ODIN_OS == .FreeBSD || ODIN_OS == .OpenBSD
```

 

Value, specifying whether `vendor:x11/xlib` is available on the current platform.

### [InputFocus ¶](#InputFocus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L99)

```
InputFocus :: 1
```

### [NoSymbol ¶](#NoSymbol) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L106)

```
NoSymbol :: 0
```

### [None ¶](#None) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L95)

```
None :: 0
```

### [ParentRelative ¶](#ParentRelative) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L96)

```
ParentRelative :: 1
```

### [PointerRoot ¶](#PointerRoot) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L100)

```
PointerRoot :: 1
```

### [PointerWindow ¶](#PointerWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L98)

```
PointerWindow :: 0
```

### [PropModeAppend ¶](#PropModeAppend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L110)

```
PropModeAppend :: 2
```

### [PropModePrepend ¶](#PropModePrepend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L109)

```
PropModePrepend :: 1
```

### [PropModeReplace ¶](#PropModeReplace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L108)

```
PropModeReplace :: 0
```

### [VisualAllMask ¶](#VisualAllMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L742)

```
VisualAllMask: bit_set[VisualInfoMaskBits; int] : VisualInfoMask{.VisualIDMask, .VisualScreenMask, .VisualDepthMask, .VisualClassMask, .VisualRedMaskMask, .VisualGreenMaskMask, .VisualBlueMaskMask, .VisualColormapSizeMask, .VisualBitsPerRGBMask}
```

### [VisualNoMask ¶](#VisualNoMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L741)

```
VisualNoMask: bit_set[VisualInfoMaskBits; int] : VisualInfoMask{}
```

### [XA\_ATOM ¶](#XA_ATOM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L112)

```
XA_ATOM :: Atom(4)
```

### [XA\_WM\_CLASS ¶](#XA_WM_CLASS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L113)

```
XA_WM_CLASS :: Atom(67)
```

### [XA\_WM\_CLIENT\_MACHINE ¶](#XA_WM_CLIENT_MACHINE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L114)

```
XA_WM_CLIENT_MACHINE :: Atom(36)
```

### [XA\_WM\_COMMAND ¶](#XA_WM_COMMAND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L115)

```
XA_WM_COMMAND :: Atom(34)
```

### [XA\_WM\_HINTS ¶](#XA_WM_HINTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L116)

```
XA_WM_HINTS :: Atom(35)
```

### [XA\_WM\_ICON\_NAME ¶](#XA_WM_ICON_NAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L117)

```
XA_WM_ICON_NAME :: Atom(37)
```

### [XA\_WM\_ICON\_SIZE ¶](#XA_WM_ICON_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L118)

```
XA_WM_ICON_SIZE :: Atom(38)
```

### [XA\_WM\_NAME ¶](#XA_WM_NAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L119)

```
XA_WM_NAME :: Atom(39)
```

### [XA\_WM\_NORMAL\_HINTS ¶](#XA_WM_NORMAL_HINTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L120)

```
XA_WM_NORMAL_HINTS :: Atom(40)
```

### [XA\_WM\_SIZE\_HINTS ¶](#XA_WM_SIZE_HINTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L121)

```
XA_WM_SIZE_HINTS :: Atom(41)
```

### [XA\_WM\_TRANSIENT\_FOR ¶](#XA_WM_TRANSIENT_FOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L122)

```
XA_WM_TRANSIENT_FOR :: Atom(68)
```

### [XA\_WM\_ZOOM\_HINTS ¶](#XA_WM_ZOOM_HINTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L123)

```
XA_WM_ZOOM_HINTS :: Atom(42)
```

### [XIAllDevices ¶](#XIAllDevices) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L86)

```
XIAllDevices :: 0
```

### [XIAllMasterDevices ¶](#XIAllMasterDevices) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L87)

```
XIAllMasterDevices :: 1
```

### [XIMPreeditNothing ¶](#XIMPreeditNothing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L10)

```
XIMPreeditNothing :: 0x0008
```

### [XIMStatusNothing ¶](#XIMStatusNothing) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L11)

```
XIMStatusNothing :: 0x0400
```

### [XNClientWindow ¶](#XNClientWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L4)

```
XNClientWindow: cstring : "clientWindow"
```

### [XNFocusWindow ¶](#XNFocusWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L6)

```
XNFocusWindow: cstring : "focusWindow"
```

### [XNInputStyle ¶](#XNInputStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L5)

```
XNInputStyle: cstring : "inputStyle"
```

### [XNPreeditAttributes ¶](#XNPreeditAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L8)

```
XNPreeditAttributes: cstring : "preeditAttributes"
```

### [XNSpotLocation ¶](#XNSpotLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L7)

```
XNSpotLocation: cstring : "spotLocation"
```

### [XkbActionMessageLength ¶](#XkbActionMessageLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L25)

```
XkbActionMessageLength :: 6
```

### [XkbAllClientInfoMask ¶](#XkbAllClientInfoMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L39)

```
XkbAllClientInfoMask: bit_set[XkbInfoMaskBits; int] : XkbInfoMask{.KeyTypes, .KeySyms, .ModifierMap}
```

### [XkbAllEventsMask ¶](#XkbAllEventsMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L69)

```
XkbAllEventsMask: bit_set[XkbEventType; int] : XkbEventMask{.NewKeyboardNotify, .MapNotify, .StateNotify, .ControlsNotify, .IndicatorStateNotify, .IndicatorMapNotify, .NamesNotify, .CompatMapNotify, .BellNotify, .ActionMessage, .AccessXNotify, .ExtensionDeviceNotify}
```

### [XkbAllServerInfoMask ¶](#XkbAllServerInfoMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L45)

```
XkbAllServerInfoMask: bit_set[XkbInfoMaskBits; int] : XkbInfoMask{.ExplicitComponents, .KeyActions, .KeyBehaviors, .VirtualMods, .VirtualModMap}
```

### [XkbAnyActionDataSize ¶](#XkbAnyActionDataSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L23)

```
XkbAnyActionDataSize :: 7
```

### [XkbKeyNameLength ¶](#XkbKeyNameLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L19)

```
XkbKeyNameLength :: 4
```

### [XkbMaxKeyCount ¶](#XkbMaxKeyCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L17)

```
XkbMaxKeyCount :: XkbMaxLegalKeyCode - XkbMinLegalKeyCode + 1
```

### [XkbMaxLegalKeyCode ¶](#XkbMaxLegalKeyCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L16)

```
XkbMaxLegalKeyCode :: 255
```

### [XkbMinLegalKeyCode ¶](#XkbMinLegalKeyCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L15)

```
XkbMinLegalKeyCode :: 8
```

### [XkbNumIndicators ¶](#XkbNumIndicators) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L21)

```
XkbNumIndicators :: 32
```

### [XkbNumKbdGroups ¶](#XkbNumKbdGroups) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L22)

```
XkbNumKbdGroups :: 4
```

### [XkbNumVirtualMods ¶](#XkbNumVirtualMods) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L20)

```
XkbNumVirtualMods :: 16
```

### [XkbPerKeyBitArraySize ¶](#XkbPerKeyBitArraySize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L18)

```
XkbPerKeyBitArraySize :: (XkbMaxLegalKeyCode + 1) / 8
```

### [XkbUseCoreKbd ¶](#XkbUseCoreKbd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin#L24)

```
XkbUseCoreKbd :: 0x0100
```

## Variables

This section is empty.

## Procedures

### [ActivateScreenSaver ¶](#ActivateScreenSaver) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1007)

```
ActivateScreenSaver :: proc "c" (display: ^Display) ---
```

### [AddConnectionWatch ¶](#AddConnectionWatch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L134)

```
AddConnectionWatch :: proc "c" (display: ^Display, procedure: XConnectionWatchProc, data: rawptr) -> Status ---
```

 

Internal connections

### [AddHost ¶](#AddHost) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1017)

```
AddHost :: proc "c" (display: ^Display, addr: ^XHostAddress) ---
```

 

Controlling host address

### [AddHosts ¶](#AddHosts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1018)

```
AddHosts :: proc "c" (display: ^Display, hosts: [^]XHostAddress, nhosts: i32) ---
```

### [AddPixel ¶](#AddPixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1653)

```
AddPixel :: proc "c" (image: ^XImage, value: int) ---
```

### [AddToSaveSet ¶](#AddToSaveSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L977)

```
AddToSaveSet :: proc "c" (display: ^Display, window: XID) ---
```

### [AllocClassHint ¶](#AllocClassHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1396)

```
AllocClassHint :: proc "c" () -> ^XClassHint ---
```

 

Setting and reading the WM\_CLASS property

### [AllocColor ¶](#AllocColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L479)

```
AllocColor :: proc "c" (display: ^Display, colormap: XID, screen: ^XColor) -> Status ---
```

 

Allocating and freeing color cells

### [AllocColorCells ¶](#AllocColorCells) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L491)

```
AllocColorCells :: proc "c" (
	display:  ^Display, 
	colormap: XID, 
	contig:   b32, 
	pmasks:   [^]uint, 
	np:       u32, 
	pixels:   [^]uint, 
	npixels:  u32, 
) -> Status ---
```

### [AllocColorPlanes ¶](#AllocColorPlanes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L500)

```
AllocColorPlanes :: proc "c" (
	display:  ^Display, 
	colormap: XID, 
	contig:   b32, 
	pixels:   [^]uint, 
	ncolors:  i32, 
	nreds:    i32, 
	ngreens:  i32, 
	nblues:   i32, 
	rmask:    [^]uint, 
	gmask:    [^]uint, 
	bmask:    [^]uint, 
) -> Status ---
```

### [AllocIconSize ¶](#AllocIconSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1445)

```
AllocIconSize :: proc "c" () -> ^XIconSize ---
```

 

Setting and reading the WM\_ICON\_SIZE\_PROPERTY

### [AllocNamedColor ¶](#AllocNamedColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L484)

```
AllocNamedColor :: proc "c" (display: ^Display, colormap: XID, name: cstring, screen: ^XColor, exact: ^XColor) -> Status ---
```

### [AllocSizeHints ¶](#AllocSizeHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1370)

```
AllocSizeHints :: proc "c" () -> ^XSizeHints ---
```

 

Setting and reading MW\_NORMAL\_HINTS property

### [AllocWMHints ¶](#AllocWMHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1359)

```
AllocWMHints :: proc "c" () -> ^XWMHints ---
```

 

Setting and reading WM\_HINTS property

### [AllowEvents ¶](#AllowEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1211)

```
AllowEvents :: proc "c" (display: ^Display, evend_mode: AllowEventsMode, time: Time) ---
```

 

Resuming event processing

### [AutoRepeatOff ¶](#AutoRepeatOff) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1247)

```
AutoRepeatOff :: proc "c" (display: ^Display) ---
```

### [AutoRepeatOn ¶](#AutoRepeatOn) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1246)

```
AutoRepeatOn :: proc "c" (display: ^Display) ---
```

### [Bell ¶](#Bell) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1248)

```
Bell :: proc "c" (display: ^Display, percent: i32) ---
```

### [BitmapBitOrder ¶](#BitmapBitOrder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L102)

```
BitmapBitOrder :: proc "c" (display: ^Display) -> ByteOrder ---
```

### [BitmapPad ¶](#BitmapPad) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L103)

```
BitmapPad :: proc "c" (display: ^Display) -> i32 ---
```

### [BitmapUnit ¶](#BitmapUnit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L101)

```
BitmapUnit :: proc "c" (display: ^Display) -> i32 ---
```

### [BlackPixel ¶](#BlackPixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L80)

```
BlackPixel :: proc "c" (display: ^Display, screen_no: i32) -> uint ---
```

 

Display macros (display properties)

### [BlackPixelsOfScreen ¶](#BlackPixelsOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L109)

```
BlackPixelsOfScreen :: proc "c" (screen: ^Screen) -> uint ---
```

 

Screen macros

### [CellsOfScreen ¶](#CellsOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L111)

```
CellsOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [ChangeActivePointerGrab ¶](#ChangeActivePointerGrab) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1159)

```
ChangeActivePointerGrab :: proc "c" (display: ^Display, event_mask: bit_set[EventMaskBits; int], cursor: XID, time: Time) ---
```

### [ChangeGC ¶](#ChangeGC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L545)

```
ChangeGC :: proc "c" (display: ^Display, gc: GC, mask: bit_set[GCAttributeMaskBits; uint], values: ^XGCValues) ---
```

### [ChangeKeyboardControl ¶](#ChangeKeyboardControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1237)

```
ChangeKeyboardControl :: proc "c" (display: ^Display, mask: bit_set[KeyboardControlMaskBits; int], values: ^XKeyboardControl) ---
```

 

Manipulating the keyboard and pointer settings

### [ChangeKeyboardMapping ¶](#ChangeKeyboardMapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1278)

```
ChangeKeyboardMapping :: proc "c" (display: ^Display, first: u8, keysyms_per: i32, keysyms: [^]KeySym, num_codes: i32) ---
```

### [ChangePointerControl ¶](#ChangePointerControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1252)

```
ChangePointerControl :: proc "c" (
	display:           ^Display, 
	do_accel:          b32, 
	do_threshold:      b32, 
	accel_numerator:   i32, 
	accel_denominator: i32, 
	threshold:         i32, 
) ---
```

### [ChangeProperty ¶](#ChangeProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L352)

```
ChangeProperty :: proc "c" (
	display:  ^Display, 
	window:   XID, 
	property: Atom, 
	type:     Atom, 
	format:   i32, 
	mode:     i32, 
	data:     rawptr, 
	count:    i32, 
) -> i32 ---
```

### [ChangeSaveSet ¶](#ChangeSaveSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L972)

```
ChangeSaveSet :: proc "c" (display: ^Display, window: XID, mode: SaveSetChangeMode) ---
```

### [ChangeWindowAttributes ¶](#ChangeWindowAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L234)

```
ChangeWindowAttributes :: proc "c" (display: ^Display, window: XID, attr_mask: bit_set[WindowAttributeMaskBits; int], attr: ^XSetWindowAttributes) ---
```

 

Window: changing attributes

### [CheckIfEvent ¶](#CheckIfEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1044)

```
CheckIfEvent :: proc "c" (display: ^Display, event: ^XEvent, predicate: proc "c" (display: ^Display, event: ^XEvent, ctx: rawptr) -> b32, arg: rawptr) -> b32 ---
```

### [CheckMaskEvent ¶](#CheckMaskEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1074)

```
CheckMaskEvent :: proc "c" (display: ^Display, mask: bit_set[EventMaskBits; int], event: ^XEvent) -> b32 ---
```

### [CheckTypedEvent ¶](#CheckTypedEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1079)

```
CheckTypedEvent :: proc "c" (display: ^Display, type: EventType, event: ^XEvent) -> b32 ---
```

### [CheckTypedWindowEvent ¶](#CheckTypedWindowEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1084)

```
CheckTypedWindowEvent :: proc "c" (display: ^Display, window: XID, type: EventType, event: ^XEvent) -> b32 ---
```

### [CheckWindowEvent ¶](#CheckWindowEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1063)

```
CheckWindowEvent :: proc "c" (display: ^Display, window: XID, mask: bit_set[EventMaskBits; int], event: ^XEvent) -> b32 ---
```

### [CirculateSubwindows ¶](#CirculateSubwindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L229)

```
CirculateSubwindows :: proc "c" (display: ^Display, window: XID, direction: CirculationDirection) ---
```

### [CirculateSubwindowsDown ¶](#CirculateSubwindowsDown) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L231)

```
CirculateSubwindowsDown :: proc "c" (display: ^Display, window: XID) ---
```

### [CirculateSubwindowsUp ¶](#CirculateSubwindowsUp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L230)

```
CirculateSubwindowsUp :: proc "c" (display: ^Display, window: XID) ---
```

### [ClearArea ¶](#ClearArea) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L658)

```
ClearArea :: proc "c" (
	display: ^Display, 
	window:  XID, 
	x:       i32, 
	y:       i32, 
	width:   u32, 
	height:  u32, 
	exp:     b32, 
) ---
```

 

Graphics functions

### [ClearWindow ¶](#ClearWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L667)

```
ClearWindow :: proc "c" (display: ^Display, window: XID) ---
```

### [ClipBox ¶](#ClipBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1593)

```
ClipBox :: proc "c" (region: Region, rect: ^XRectangle) ---
```

 

Computing with regions

### [CloseDisplay ¶](#CloseDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L64)

```
CloseDisplay :: proc "c" (display: ^Display) ---
```

### [ConfigureWindow ¶](#ConfigureWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L190)

```
ConfigureWindow :: proc "c" (display: ^Display, window: XID, mask: bit_set[WindowChangesMaskBits; i32], changes: ^XWindowChanges) -> i32 ---
```

 

Windows: configuring

### [ConnectionNumber ¶](#ConnectionNumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L69)

```
ConnectionNumber :: proc "c" (display: ^Display) -> i32 ---
```

 

Display macros (connection)

### [ConvertCase ¶](#ConvertCase) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1531)

```
ConvertCase :: proc "c" (keysym: KeySym, lower: ^KeySym, upper: ^KeySym) ---
```

### [ConvertSelection ¶](#ConvertSelection) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L385)

```
ConvertSelection :: proc "c" (
	display:   ^Display, 
	selection: Atom, 
	target:    Atom, 
	property:  Atom, 
	requestor: XID, 
	time:      Time, 
) ---
```

### [CopyArea ¶](#CopyArea) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L671)

```
CopyArea :: proc "c" (
	display: ^Display, 
	src:     XID, 
	dst:     XID, 
	gc:      GC, 
	src_x:   i32, 
	src_y:   i32, 
	width:   u32, 
	height:  u32, 
	dst_x:   i32, 
	dst_y:   i32, 
) ---
```

### [CopyColormapAndFree ¶](#CopyColormapAndFree) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L462)

```
CopyColormapAndFree :: proc "c" (display: ^Display, colormap: XID) -> XID ---
```

### [CopyGC ¶](#CopyGC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L539)

```
CopyGC :: proc "c" (display: ^Display, src: GC, dst: GC, mask: bit_set[GCAttributeMaskBits; uint]) ---
```

### [CopyPlane ¶](#CopyPlane) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L683)

```
CopyPlane :: proc "c" (
	display: ^Display, 
	src:     XID, 
	dst:     XID, 
	gc:      GC, 
	src_x:   i32, 
	src_y:   i32, 
	width:   u32, 
	height:  u32, 
	dst_x:   i32, 
	dst_y:   i32, 
	plane:   uint, 
) ---
```

### [CreateColormap ¶](#CreateColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L456)

```
CreateColormap :: proc "c" (display: ^Display, window: XID, visual: ^Visual, alloc: ColormapAlloc) -> XID ---
```

 

Creation/destruction of colormaps

### [CreateFontCursor ¶](#CreateFontCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L418)

```
CreateFontCursor :: proc "c" (display: ^Display, shape: CursorShape) -> XID ---
```

 

Creating recoloring and freeing cursors

### [CreateGC ¶](#CreateGC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L533)

```
CreateGC :: proc "c" (display: ^Display, drawable: XID, mask: bit_set[GCAttributeMaskBits; uint], attr: ^XGCValues) -> GC ---
```

 

Graphics context functions

### [CreateGlyphCursor ¶](#CreateGlyphCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L422)

```
CreateGlyphCursor :: proc "c" (
	display:   ^Display, 
	src_font:  XID, 
	mask_font: XID, 
	src_char:  u32, 
	mask_char: u32, 
	fg:        ^XColor, 
	bg:        ^XColor, 
) -> XID ---
```

### [CreateIC ¶](#CreateIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1702)

```
CreateIC :: proc "c" (im: XIM, .. args: ..any) -> XIC ---
```

### [CreateImage ¶](#CreateImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1623)

```
CreateImage :: proc "c" (
	display: ^Display, 
	visual:  ^Visual, 
	depth:   u32, 
	format:  ImageFormat, 
	offset:  i32, 
	data:    rawptr, 
	width:   u32, 
	height:  u32, 
	pad:     i32, 
	stride:  i32, 
) -> ^XImage ---
```

 

Manipulating images

### [CreatePixmap ¶](#CreatePixmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L406)

```
CreatePixmap :: proc "c" (display: ^Display, drawable: XID, width: u32, height: u32, depth: u32) -> XID ---
```

 

Creating and freeing pixmaps

### [CreatePixmapCursor ¶](#CreatePixmapCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L431)

```
CreatePixmapCursor :: proc "c" (
	display: ^Display, 
	source:  XID, 
	mask:    XID, 
	fg:      XColor, 
	bg:      ^XColor, 
	x:       u32, 
	y:       u32, 
) -> XID ---
```

### [CreateRegion ¶](#CreateRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1577)

```
CreateRegion :: proc "c" () -> Region ---
```

 

Creating, copying and destroying regions

### [CreateSimpleWindow ¶](#CreateSimpleWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L170)

```
CreateSimpleWindow :: proc "c" (
	display:  ^Display, 
	parent:   XID, 
	x:        i32, 
	y:        i32, 
	width:    u32, 
	height:   u32, 
	bordersz: u32, 
	border:   uint, 
	bg:       uint, 
) -> XID ---
```

### [CreateWindow ¶](#CreateWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L156)

```
CreateWindow :: proc "c" (
	display:   ^Display, 
	parent:    XID, 
	x:         i32, 
	y:         i32, 
	width:     u32, 
	height:    u32, 
	bordersz:  u32, 
	depth:     i32, 
	class:     WindowClass, 
	visual:    ^Visual, 
	attr_mask: bit_set[WindowAttributeMaskBits; int], 
	attr:      ^XSetWindowAttributes, 
) -> XID ---
```

 

Windows: creation/destruction

### [DefaultColormap ¶](#DefaultColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L88)

```
DefaultColormap :: proc "c" (display: ^Display, screen_no: i32) -> XID ---
```

 

Display macros (defaults)

### [DefaultColormapOfScreen ¶](#DefaultColormapOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L112)

```
DefaultColormapOfScreen :: proc "c" (screen: ^Screen) -> XID ---
```

### [DefaultDepth ¶](#DefaultDepth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L89)

```
DefaultDepth :: proc "c" (display: ^Display, screen_no: i32) -> i32 ---
```

### [DefaultDepthOfScreen ¶](#DefaultDepthOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L113)

```
DefaultDepthOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [DefaultGC ¶](#DefaultGC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L90)

```
DefaultGC :: proc "c" (display: ^Display, screen_no: i32) -> GC ---
```

### [DefaultGCOfScreen ¶](#DefaultGCOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L114)

```
DefaultGCOfScreen :: proc "c" (screen: ^Screen) -> GC ---
```

### [DefaultRootWindow ¶](#DefaultRootWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L91)

```
DefaultRootWindow :: proc "c" (display: ^Display) -> XID ---
```

### [DefaultScreen ¶](#DefaultScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L92)

```
DefaultScreen :: proc "c" (display: ^Display) -> i32 ---
```

### [DefaultScreenOfDisplay ¶](#DefaultScreenOfDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L94)

```
DefaultScreenOfDisplay :: proc "c" (display: ^Display) -> ^Screen ---
```

### [DefaultVisual ¶](#DefaultVisual) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L93)

```
DefaultVisual :: proc "c" (display: ^Display, screen_no: i32) -> ^Visual ---
```

### [DefaultVisualOfScreen ¶](#DefaultVisualOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L115)

```
DefaultVisualOfScreen :: proc "c" (screen: ^Screen) -> ^Visual ---
```

### [DefineCursor ¶](#DefineCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L255)

```
DefineCursor :: proc "c" (display: ^Display, window: XID, cursor: XID) -> i32 ---
```

### [DeleteModifiermapEntry ¶](#DeleteModifiermapEntry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1291)

```
DeleteModifiermapEntry :: proc "c" (modmap: ^XModifierKeymap, keycode_entry: u8, modifier: i32) -> ^XModifierKeymap ---
```

### [DeleteProperty ¶](#DeleteProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L369)

```
DeleteProperty :: proc "c" (display: ^Display, window: XID, prop: Atom) -> i32 ---
```

### [DestroyImage ¶](#DestroyImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1682)

```
DestroyImage :: proc "c" (image: ^XImage) ---
```

### [DestroyRegion ¶](#DestroyRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1588)

```
DestroyRegion :: proc "c" (r: Region) ---
```

### [DestroySubwindows ¶](#DestroySubwindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L182)

```
DestroySubwindows :: proc "c" (display: ^Display, window: XID) ---
```

### [DestroyWindow ¶](#DestroyWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L181)

```
DestroyWindow :: proc "c" (display: ^Display, window: XID) ---
```

### [DisableAccessControl ¶](#DisableAccessControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1025)

```
DisableAccessControl :: proc "c" (display: ^Display) ---
```

### [DisplayCells ¶](#DisplayCells) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L83)

```
DisplayCells :: proc "c" (display: ^Display, screen_no: i32) -> i32 ---
```

### [DisplayHeight ¶](#DisplayHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L104)

```
DisplayHeight :: proc "c" (display: ^Display, screen_no: i32) -> i32 ---
```

### [DisplayHeightMM ¶](#DisplayHeightMM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L105)

```
DisplayHeightMM :: proc "c" (display: ^Display, screen_no: i32) -> i32 ---
```

### [DisplayKeycodes ¶](#DisplayKeycodes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1267)

```
DisplayKeycodes :: proc "c" (display: ^Display, min_keycodes: ^i32, max_keycodes: ^i32) ---
```

 

Manipulating the keyboard encoding

### [DisplayMotionBufferSize ¶](#DisplayMotionBufferSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1104)

```
DisplayMotionBufferSize :: proc "c" (display: ^Display) -> uint ---
```

 

Getting the history of pointer motion

### [DisplayName ¶](#DisplayName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1139)

```
DisplayName :: proc "c" (string: cstring) -> cstring ---
```

### [DisplayOfScreen ¶](#DisplayOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L118)

```
DisplayOfScreen :: proc "c" (screen: ^Screen) -> ^Display ---
```

### [DisplayPlanes ¶](#DisplayPlanes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L84)

```
DisplayPlanes :: proc "c" (display: ^Display, screen_no: i32) -> i32 ---
```

### [DisplayString ¶](#DisplayString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L86)

```
DisplayString :: proc "c" (display: ^Display) -> cstring ---
```

### [DisplayWidth ¶](#DisplayWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L106)

```
DisplayWidth :: proc "c" (display: ^Display, screen_no: i32) -> i32 ---
```

### [DisplayWidthMM ¶](#DisplayWidthMM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L107)

```
DisplayWidthMM :: proc "c" (display: ^Display, screen_no: i32) -> i32 ---
```

### [DoesBackingStore ¶](#DoesBackingStore) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L116)

```
DoesBackingStore :: proc "c" (screen: ^Screen) -> BackingStore ---
```

### [DoesSaveUnders ¶](#DoesSaveUnders) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L117)

```
DoesSaveUnders :: proc "c" (screen: ^Screen) -> b32 ---
```

### [DrawArc ¶](#DrawArc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L751)

```
DrawArc :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	width:    u32, 
	height:   u32, 
	angle1:   i32, 
	angle2:   i32, 
) ---
```

### [DrawArcs ¶](#DrawArcs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L762)

```
DrawArcs :: proc "c" (display: ^Display, drawable: XID, gc: GC, arcs: [^]XArc, narcs: i32) ---
```

### [DrawImageString ¶](#DrawImageString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L909)

```
DrawImageString :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	string:   [^]u8, 
	length:   i32, 
) ---
```

### [DrawImageString16 ¶](#DrawImageString16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L918)

```
DrawImageString16 :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	string:   [^]XChar2b, 
	length:   i32, 
) ---
```

### [DrawLine ¶](#DrawLine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L712)

```
DrawLine :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x1:       i32, 
	y1:       i32, 
	x2:       i32, 
	y2:       i32, 
) ---
```

### [DrawLines ¶](#DrawLines) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L721)

```
DrawLines :: proc "c" (display: ^Display, drawable: XID, gc: GC, points: [^]XPoint, npoints: i32) ---
```

### [DrawPoint ¶](#DrawPoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L697)

```
DrawPoint :: proc "c" (display: ^Display, drawable: XID, gc: GC, x: i32, y: i32) ---
```

 

Drawing lines, points, rectangles and arc

### [DrawPoints ¶](#DrawPoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L704)

```
DrawPoints :: proc "c" (
	display:  Display, 
	drawable: XID, 
	gc:       GC, 
	point:    [^]XPoint, 
	npoints:  i32, 
	mode:     CoordMode, 
) ---
```

### [DrawRectangle ¶](#DrawRectangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L735)

```
DrawRectangle :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	width:    u32, 
	height:   u32, 
) ---
```

### [DrawRectangles ¶](#DrawRectangles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L744)

```
DrawRectangles :: proc "c" (display: ^Display, drawable: XID, gc: GC, rects: [^]XRectangle, nrects: i32) ---
```

### [DrawSegments ¶](#DrawSegments) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L728)

```
DrawSegments :: proc "c" (display: ^Display, drawable: XID, gc: GC, segs: [^]XSegment, nsegs: i32) ---
```

### [DrawString ¶](#DrawString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L891)

```
DrawString :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	string:   [^]u8, 
	length:   i32, 
) ---
```

 

Drawing text characters

### [DrawString16 ¶](#DrawString16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L900)

```
DrawString16 :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	string:   [^]XChar2b, 
	length:   i32, 
) ---
```

### [DrawText ¶](#DrawText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L872)

```
DrawText :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	items:    XTextItem, 
	nitems:   i32, 
) ---
```

 

Drawing complex text

### [DrawText16 ¶](#DrawText16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L881)

```
DrawText16 :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	items:    XTextItem16, 
	nitems:   i32, 
) ---
```

### [EmptyRegion ¶](#EmptyRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1599)

```
EmptyRegion :: proc "c" (reg: Region) -> b32 ---
```

### [EnableAccessControl ¶](#EnableAccessControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1024)

```
EnableAccessControl :: proc "c" (display: ^Display) ---
```

### [EqualRegion ¶](#EqualRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1600)

```
EqualRegion :: proc "c" (a, b: Region) -> b32 ---
```

### [EventMaskOfScreen ¶](#EventMaskOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L120)

```
EventMaskOfScreen :: proc "c" (screen: ^Screen) -> bit_set[EventMaskBits; int] ---
```

### [EventsQueued ¶](#EventsQueued) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1030)

```
EventsQueued :: proc "c" (display: ^Display, mode: EventQueueMode) -> i32 ---
```

### [ExtendedMaxRequestSize ¶](#ExtendedMaxRequestSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L70)

```
ExtendedMaxRequestSize :: proc "c" (display: ^Display) -> int ---
```

### [FetchBuffer ¶](#FetchBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1607)

```
FetchBuffer :: proc "c" (display: ^Display, nbytes: ^i32, buffer: i32) -> [^]u8 ---
```

### [FetchBytes ¶](#FetchBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1606)

```
FetchBytes :: proc "c" (display: ^Display, nbytes: ^i32) -> [^]u8 ---
```

### [FetchName ¶](#FetchName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1333)

```
FetchName :: proc "c" (display: ^Display, window: XID, name: ^cstring) -> Status ---
```

### [FillArc ¶](#FillArc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L795)

```
FillArc :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	width:    u32, 
	height:   u32, 
	angle1:   i32, 
	angle2:   i32, 
) ---
```

### [FillArcs ¶](#FillArcs) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L806)

```
FillArcs :: proc "c" (display: ^Display, drawable: XID, gc: GC, arcs: [^]XArc, narcs: i32) ---
```

### [FillPolygon ¶](#FillPolygon) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L786)

```
FillPolygon :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	points:   [^]XPoint, 
	npoints:  i32, 
	shape:    Shape, 
	mode:     CoordMode, 
) ---
```

### [FillRectangle ¶](#FillRectangle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L770)

```
FillRectangle :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	width:    u32, 
	height:   u32, 
) ---
```

 

Filling areas

### [FillRectangles ¶](#FillRectangles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L779)

```
FillRectangles :: proc "c" (display: ^Display, drawable: XID, gc: GC, rects: [^]XRectangle, nrects: i32) ---
```

### [FilterEvent ¶](#FilterEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1034)

```
FilterEvent :: proc "c" (event: ^XEvent, window: XID) -> b32 ---
```

### [Flush ¶](#Flush) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1028)

```
Flush :: proc "c" (display: ^Display) -> i32 ---
```

### [FlushGC ¶](#FlushGC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L559)

```
FlushGC :: proc "c" (display: ^Display, gc: GC) ---
```

### [ForceScreenSaver ¶](#ForceScreenSaver) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1006)

```
ForceScreenSaver :: proc "c" (display: ^Display, mode: ScreenSaverForceMode) ---
```

### [Free ¶](#Free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L61)

```
Free :: proc "c" (ptr: rawptr) ---
```

 

Free data allocated by Xlib

### [FreeColormap ¶](#FreeColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L466)

```
FreeColormap :: proc "c" (display: ^Display, colormap: XID) ---
```

### [FreeColors ¶](#FreeColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L513)

```
FreeColors :: proc "c" (display: ^Display, colormap: XID, pixels: [^]uint, npixels: i32, planes: uint) ---
```

### [FreeCursor ¶](#FreeCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L454)

```
FreeCursor :: proc "c" (display: ^Display, cursor: XID) ---
```

### [FreeEventData ¶](#FreeEventData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1036)

```
FreeEventData :: proc "c" (display: ^Display, cookie: ^XGenericEventCookie) ---
```

### [FreeFont ¶](#FreeFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L817)

```
FreeFont :: proc "c" (display: ^Display, font_struct: ^XFontStruct) ---
```

### [FreeFontInfo ¶](#FreeFontInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L829)

```
FreeFontInfo :: proc "c" (names: [^]cstring, info: [^]XFontStruct, count: i32) ---
```

### [FreeFontNames ¶](#FreeFontNames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L821)

```
FreeFontNames :: proc "c" (display: ^Display, list: [^]cstring) ---
```

### [FreeFontPath ¶](#FreeFontPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L992)

```
FreeFontPath :: proc "c" (list: [^]cstring) ---
```

### [FreeGC ¶](#FreeGC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L557)

```
FreeGC :: proc "c" (display: ^Display, gc: GC) ---
```

### [FreeModifiermap ¶](#FreeModifiermap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1296)

```
FreeModifiermap :: proc "c" (modmap: ^XModifierKeymap) ---
```

### [FreePixmap ¶](#FreePixmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L413)

```
FreePixmap :: proc "c" (display: ^Display, pixmap: XID) ---
```

### [GCContextFromGC ¶](#GCContextFromGC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L558)

```
GCContextFromGC :: proc "c" (gc: GC) -> XID ---
```

### [GetAtomName ¶](#GetAtomName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L322)

```
GetAtomName :: proc "c" (display: ^Display, atom: Atom) -> cstring ---
```

### [GetAtomNames ¶](#GetAtomNames) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L326)

```
GetAtomNames :: proc "c" (display: ^Display, atoms: [^]Atom, count: i32, names: [^]cstring) -> Status ---
```

### [GetClassHint ¶](#GetClassHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1402)

```
GetClassHint :: proc "c" (display: ^Display, window: XID, hint: ^XClassHint) -> Status ---
```

### [GetCommand ¶](#GetCommand) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1487)

```
GetCommand :: proc "c" (display: ^Display, window: XID, argv: ^[^]cstring, argc: ^i32) -> Status ---
```

### [GetErrorDatabaseText ¶](#GetErrorDatabaseText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1131)

```
GetErrorDatabaseText :: proc "c" (
	display:        ^Display, 
	name:           cstring, 
	message:        cstring, 
	default_string: cstring, 
	buffer:         [^]u8, 
	size:           i32, 
) ---
```

### [GetErrorText ¶](#GetErrorText) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1125)

```
GetErrorText :: proc "c" (display: ^Display, code: i32, buffer: [^]u8, size: i32) ---
```

### [GetEventData ¶](#GetEventData) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1035)

```
GetEventData :: proc "c" (display: ^Display, cookie: ^XGenericEventCookie) -> b32 ---
```

### [GetFontPath ¶](#GetFontPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L991)

```
GetFontPath :: proc "c" (display: ^Display, npaths: ^i32) -> [^]cstring ---
```

### [GetFontProperty ¶](#GetFontProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L818)

```
GetFontProperty :: proc "c" (font_struct: ^XFontStruct, atom: Atom, ret: ^uint) -> b32 ---
```

### [GetGCValues ¶](#GetGCValues) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L551)

```
GetGCValues :: proc "c" (display: ^Display, gc: GC, mask: bit_set[GCAttributeMaskBits; uint], values: ^XGCValues) -> Status ---
```

### [GetGeometry ¶](#GetGeometry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L278)

```
GetGeometry :: proc "c" (
	display:   ^Display, 
	drawable:  XID, 
	root:      ^XID, 
	x:         ^i32, 
	y:         ^i32, 
	width:     ^u32, 
	height:    ^u32, 
	border_sz: ^u32, 
	depth:     ^u32, 
) -> Status ---
```

### [GetIconName ¶](#GetIconName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1353)

```
GetIconName :: proc "c" (display: ^Display, window: XID, prop: ^cstring) -> Status ---
```

### [GetIconSizes ¶](#GetIconSizes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1452)

```
GetIconSizes :: proc "c" (display: ^Display, window: XID, size_list: ^[^]XIconSize, count: ^i32) -> Status ---
```

### [GetImage ¶](#GetImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L941)

```
GetImage :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	x:        i32, 
	y:        i32, 
	width:    u32, 
	height:   u32, 
	mask:     uint, 
	format:   ImageFormat, 
) -> ^XImage ---
```

### [GetInputFocus ¶](#GetInputFocus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1231)

```
GetInputFocus :: proc "c" (display: ^Display, focus: ^XID, revert_to: ^FocusRevert) ---
```

### [GetKeyboardControl ¶](#GetKeyboardControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1242)

```
GetKeyboardControl :: proc "c" (display: ^Display, values: ^XKeyboardState) ---
```

### [GetKeyboardMapping ¶](#GetKeyboardMapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1272)

```
GetKeyboardMapping :: proc "c" (display: ^Display, first: u8, count: i32, keysyms_per: ^i32) -> ^KeySym ---
```

### [GetModifierMapping ¶](#GetModifierMapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1298)

```
GetModifierMapping :: proc "c" (display: ^Display) -> ^XModifierKeymap ---
```

### [GetMotionEvents ¶](#GetMotionEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1105)

```
GetMotionEvents :: proc "c" (display: ^Display, window: XID, start: Time, stop: Time, nevents: ^i32) -> [^]XTimeCoord ---
```

### [GetPixel ¶](#GetPixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1635)

```
GetPixel :: proc "c" (image: ^XImage, x: i32, y: i32) -> uint ---
```

### [GetPointerControl ¶](#GetPointerControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1260)

```
GetPointerControl :: proc "c" (display: ^Display, accel_numerator: ^i32, accel_denominator: ^i32, threshold: ^i32) ---
```

### [GetPointerMapping ¶](#GetPointerMapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1251)

```
GetPointerMapping :: proc "c" (display: ^Display, map_should_not_be_a_keyword: [^]u8, nmap: i32) -> i32 ---
```

### [GetRGBColormaps ¶](#GetRGBColormaps) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1509)

```
GetRGBColormaps :: proc "c" (display: ^Display, window: XID, colormap: ^[^]XStandardColormap, count: ^i32, prop: Atom) -> Status ---
```

### [GetScreenSaver ¶](#GetScreenSaver) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1009)

```
GetScreenSaver :: proc "c" (display: ^Display, timeout: ^i32, interval: ^i32, blanking: ^ScreenSaverBlanking, exposures: ^ScreenSavingExposures) ---
```

### [GetSelectionOwner ¶](#GetSelectionOwner) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L381)

```
GetSelectionOwner :: proc "c" (display: ^Display, selection: Atom) -> XID ---
```

### [GetSubImage ¶](#GetSubImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L951)

```
GetSubImage :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	src_x:    i32, 
	src_y:    i32, 
	width:    u32, 
	height:   u32, 
	mask:     uint, 
	format:   ImageFormat, 
	dst:      ^XImage, 
	dst_x:    i32, 
	dst_y:    i32, 
) -> ^XImage ---
```

### [GetTextProperty ¶](#GetTextProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L393)

```
GetTextProperty :: proc "c" (display: ^Display, window: XID, text_prop_return: ^XTextProperty, property: Atom) -> Status ---
```

### [GetTransientForHint ¶](#GetTransientForHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1413)

```
GetTransientForHint :: proc "c" (display: ^Display, window: XID, prop_window: ^XID) -> Status ---
```

### [GetVisualInfo ¶](#GetVisualInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1609)

```
GetVisualInfo :: proc "c" (display: ^Display, mask: bit_set[VisualInfoMaskBits; int], info: ^XVisualInfo, nret: ^i32) -> [^]XVisualInfo ---
```

 

Determining the appropriate visual types

### [GetWMClientMachine ¶](#GetWMClientMachine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1498)

```
GetWMClientMachine :: proc "c" (display: ^Display, window: XID, prop: ^XTextProperty) -> Status ---
```

### [GetWMColormapWindows ¶](#GetWMColormapWindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1438)

```
GetWMColormapWindows :: proc "c" (display: ^Display, window: XID, colormap_windows: ^[^]XID, count: ^i32) -> Status ---
```

### [GetWMHints ¶](#GetWMHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1365)

```
GetWMHints :: proc "c" (display: ^Display, window: XID) -> ^XWMHints ---
```

### [GetWMIconName ¶](#GetWMIconName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1343)

```
GetWMIconName :: proc "c" (display: ^Display, window: XID, prop: ^XTextProperty) -> Status ---
```

### [GetWMName ¶](#GetWMName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1323)

```
GetWMName :: proc "c" (display: ^Display, window: XID, prop: ^XTextProperty) -> Status ---
```

### [GetWMNormalHints ¶](#GetWMNormalHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1376)

```
GetWMNormalHints :: proc "c" (display: ^Display, window: XID, hints: ^XSizeHints, flags: ^bit_set[SizeHintsBits; uint]) -> Status ---
```

### [GetWMProtocols ¶](#GetWMProtocols) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1425)

```
GetWMProtocols :: proc "c" (display: ^Display, window: XID, protocols: ^[^]Atom, count: ^i32) -> Status ---
```

### [GetWMSizeHints ¶](#GetWMSizeHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1388)

```
GetWMSizeHints :: proc "c" (display: ^Display, window: XID, hints: ^XSizeHints, masks: ^bit_set[SizeHintsBits; uint], prop: Atom) -> Status ---
```

### [GetWindowAttributes ¶](#GetWindowAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L273)

```
GetWindowAttributes :: proc "c" (display: ^Display, window: XID, attr: ^XWindowAttributes) -> i32 ---
```

### [GetWindowProperty ¶](#GetWindowProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L333)

```
GetWindowProperty :: proc "c" (
	display:     ^Display, 
	window:      XID, 
	property:    Atom, 
	long_offs:   int, 
	long_len:    int, 
	delete:      b32, 
	req_type:    Atom, 
	act_type:    [^]Atom, 
	act_format:  [^]i32, 
	nitems:      [^]uint, 
	bytes_after: [^]uint, 
	props:       ^rawptr, 
) -> i32 ---
```

 

Windows: Obtaining and changing properties

### [GrabButton ¶](#GrabButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1165)

```
GrabButton :: proc "c" (
	display:       ^Display, 
	button:        u32, 
	modifiers:     bit_set[InputMaskBits; i32], 
	grab_window:   XID, 
	owner_events:  b32, 
	event_mask:    bit_set[EventMaskBits; int], 
	pointer_mode:  GrabMode, 
	keyboard_mode: GrabMode, 
	confine_to:    XID, 
	cursor:        XID, 
) ---
```

### [GrabKey ¶](#GrabKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1195)

```
GrabKey :: proc "c" (
	display:       ^Display, 
	keycode:       i32, 
	modifiers:     bit_set[InputMaskBits; i32], 
	grab_window:   XID, 
	owner_events:  b32, 
	pointer_mode:  GrabMode, 
	keyboard_mode: GrabMode, 
) ---
```

### [GrabKeyboard ¶](#GrabKeyboard) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1183)

```
GrabKeyboard :: proc "c" (
	display:       ^Display, 
	grab_window:   XID, 
	owner_events:  b32, 
	pointer_mode:  GrabMode, 
	keyboard_mode: GrabMode, 
	time:          Time, 
) -> i32 ---
```

### [GrabPointer ¶](#GrabPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1144)

```
GrabPointer :: proc "c" (
	display:       ^Display, 
	grab_window:   XID, 
	owner_events:  b32, 
	mask:          bit_set[EventMaskBits; int], 
	pointer_mode:  GrabMode, 
	keyboard_mode: GrabMode, 
	confine_to:    XID, 
	cursor:        XID, 
	time:          Time, 
) -> i32 ---
```

 

Pointer grabbing

### [GrabServer ¶](#GrabServer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L994)

```
GrabServer :: proc "c" (display: ^Display) ---
```

 

Grabbing the server

### [HeightMMOfScreen ¶](#HeightMMOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L124)

```
HeightMMOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [HeightOfScreen ¶](#HeightOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L122)

```
HeightOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [HideCursor ¶](#HideCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L24)

```
HideCursor :: proc "c" (display: ^Display, window: XID) ---
```

### [IconifyWindow ¶](#IconifyWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1300)

```
IconifyWindow :: proc "c" (dipslay: ^Display, window: XID, screen_no: i32) -> Status ---
```

 

Manipulating top-level windows

### [IfEvent ¶](#IfEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1038)

```
IfEvent :: proc "c" (display: ^Display, event: ^XEvent, predicate: proc "c" (display: ^Display, event: ^XEvent, ctx: rawptr) -> b32, ctx: rawptr) ---
```

 

Selecting events using a predicate procedure

### [ImageByteOrder ¶](#ImageByteOrder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L100)

```
ImageByteOrder :: proc "c" (display: ^Display) -> ByteOrder ---
```

### [InitImage ¶](#InitImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L928)

```
InitImage :: proc "c" (image: ^XImage) -> Status ---
```

 

Transferring images between client and server

### [InitThreads ¶](#InitThreads) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L130)

```
InitThreads :: proc "c" () -> Status ---
```

 

Threading functions

### [InsertModifiermapEntry ¶](#InsertModifiermapEntry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1286)

```
InsertModifiermapEntry :: proc "c" (modmap: ^XModifierKeymap, keycode_entry: u8, modifier: i32) -> ^XModifierKeymap ---
```

### [InstallColormap ¶](#InstallColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L986)

```
InstallColormap :: proc "c" (display: ^Display, colormap: XID) ---
```

 

Managing installed colormaps

### [InternAtom ¶](#InternAtom) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L311)

```
InternAtom :: proc "c" (display: ^Display, name: cstring, existing: b32) -> Atom ---
```

 

Atoms

### [InternAtoms ¶](#InternAtoms) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L316)

```
InternAtoms :: proc "c" (display: ^Display, names: [^]cstring, count: i32, atoms: [^]Atom) -> Status ---
```

### [InternalConnectionNumbers ¶](#InternalConnectionNumbers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L148)

```
InternalConnectionNumbers :: proc "c" (display: ^Display, fds: ^[^]i32, count: ^i32) -> Status ---
```

### [IntersectRegion ¶](#IntersectRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1594)

```
IntersectRegion :: proc "c" (sra, srb, ret: Region) ---
```

### [KeycodeToKeysym ¶](#KeycodeToKeysym) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1521)

```
KeycodeToKeysym :: proc "c" (display: ^Display, keycode: u8, index: i32) -> KeySym ---
```

### [KeysymToKeycode ¶](#KeysymToKeycode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1526)

```
KeysymToKeycode :: proc "c" (display: ^Display, keysym: KeySym) -> u8 ---
```

### [KeysymToString ¶](#KeysymToString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1537)

```
KeysymToString :: proc "c" (keysym: KeySym) -> cstring ---
```

### [KillClient ¶](#KillClient) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L997)

```
KillClient :: proc "c" (display: ^Display, resource: XID) ---
```

 

Killing clients

### [LastKnownRequestProcessed ¶](#LastKnownRequestProcessed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L72)

```
LastKnownRequestProcessed :: proc "c" (display: ^Display) -> uint ---
```

### [ListDepths ¶](#ListDepths) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L82)

```
ListDepths :: proc "c" (display: ^Display, screen_no: i32, count: ^i32) -> [^]i32 ---
```

### [ListFonts ¶](#ListFonts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L820)

```
ListFonts :: proc "c" (display: ^Display, pat: cstring, max: i32, count: ^i32) -> [^]cstring ---
```

### [ListFontsWithInfo ¶](#ListFontsWithInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L822)

```
ListFontsWithInfo :: proc "c" (display: ^Display, pat: cstring, max: i32, count: ^i32, info: ^[^]XFontStruct) -> [^]cstring ---
```

### [ListHosts ¶](#ListHosts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1019)

```
ListHosts :: proc "c" (display: ^Display, nhosts: ^i32, state: [^]b32) -> [^]XHostAddress ---
```

### [ListInstalledColormaps ¶](#ListInstalledColormaps) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L988)

```
ListInstalledColormaps :: proc "c" (display: ^Display, window: XID, n: ^i32) -> [^]XID ---
```

### [ListPixmapFormats ¶](#ListPixmapFormats) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L99)

```
ListPixmapFormats :: proc "c" (display: ^Display, count: ^i32) -> [^]XPixmapFormatValues ---
```

 

Display image format macros

### [ListProperties ¶](#ListProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L347)

```
ListProperties :: proc "c" (display: ^Display, window: XID, num: ^i32) -> [^]Atom ---
```

### [LoadFont ¶](#LoadFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L814)

```
LoadFont :: proc "c" (display: ^Display, name: cstring) -> XID ---
```

 

Font metrics

### [LoadQueryFont ¶](#LoadQueryFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L816)

```
LoadQueryFont :: proc "c" (display: ^Display, name: cstring) -> ^XFontStruct ---
```

### [LockDisplay ¶](#LockDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L131)

```
LockDisplay :: proc "c" (display: ^Display) ---
```

### [LookupColor ¶](#LookupColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L471)

```
LookupColor :: proc "c" (display: ^Display, colomap: XID, name: cstring, exact: ^XColor, screen: ^XColor) -> Status ---
```

 

Mapping color names to values

### [LookupKeysym ¶](#LookupKeysym) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1517)

```
LookupKeysym :: proc "c" (event: ^XKeyEvent, index: i32) -> KeySym ---
```

 

Keyboard utility functions

### [LookupString ¶](#LookupString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1538)

```
LookupString :: proc "c" (event: ^XKeyEvent, buffer: [^]u8, count: i32, keysym: ^KeySym, status: ^XComposeStatus) -> i32 ---
```

### [LowerWindow ¶](#LowerWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L228)

```
LowerWindow :: proc "c" (display: ^Display, window: XID) ---
```

### [MapRaised ¶](#MapRaised) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L185)

```
MapRaised :: proc "c" (display: ^Display, window: XID) ---
```

### [MapSubwindows ¶](#MapSubwindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L186)

```
MapSubwindows :: proc "c" (display: ^Display, window: XID) ---
```

### [MapWindow ¶](#MapWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L184)

```
MapWindow :: proc "c" (display: ^Display, window: XID) ---
```

 

Windows: mapping/unmapping

### [MaskEvent ¶](#MaskEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1069)

```
MaskEvent :: proc "c" (display: ^Display, mask: bit_set[EventMaskBits; int], event: ^XEvent) ---
```

### [MatchVisualInfo ¶](#MatchVisualInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1615)

```
MatchVisualInfo :: proc "c" (display: ^Display, screen_no: i32, depth: i32, class: i32, ret: ^XVisualInfo) -> Status ---
```

### [MaxCmapsOfScreen ¶](#MaxCmapsOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L125)

```
MaxCmapsOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [MaxRequestSize ¶](#MaxRequestSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L71)

```
MaxRequestSize :: proc "c" (display: ^Display) -> int ---
```

### [MinCmapsOfScreen ¶](#MinCmapsOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L126)

```
MinCmapsOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [MoveResizeWindow ¶](#MoveResizeWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L208)

```
MoveResizeWindow :: proc "c" (
	display: ^Display, 
	window:  XID, 
	x:       i32, 
	y:       i32, 
	width:   u32, 
	height:  u32, 
) ---
```

### [MoveWindow ¶](#MoveWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L196)

```
MoveWindow :: proc "c" (display: ^Display, window: XID, x: i32, y: i32) ---
```

### [NewModifiermap ¶](#NewModifiermap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1285)

```
NewModifiermap :: proc "c" (max_keys_per_mode: i32) -> ^XModifierKeymap ---
```

### [NextEvent ¶](#NextEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1032)

```
NextEvent :: proc "c" (display: ^Display, event: ^XEvent) ---
```

### [NextRequest ¶](#NextRequest) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L73)

```
NextRequest :: proc "c" (display: ^Display) -> uint ---
```

### [NoOp ¶](#NoOp) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L67)

```
NoOp :: proc "c" (display: ^Display) ---
```

 

Generate a no-op request

### [OffsetRegion ¶](#OffsetRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1590)

```
OffsetRegion :: proc "c" (region: Region, dx, dy: i32) ---
```

 

Moving or shrinking regions

### [OpenDisplay ¶](#OpenDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L63)

```
OpenDisplay :: proc "c" (name: cstring) -> ^Display ---
```

 

Opening/closing a display

### [OpenIM ¶](#OpenIM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1695)

```
OpenIM :: proc "c" (display: ^Display, rdb: XrmHashBucket, res_name: cstring, res_class: cstring) -> XIM ---
```

### [ParseGeometry ¶](#ParseGeometry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1556)

```
ParseGeometry :: proc "c" (parsestring: cstring, x_ret: ^i32, y_ret: ^i32, width: ^u32, height: ^u32) -> i32 ---
```

 

Parsing the window geometry

### [PeekEvent ¶](#PeekEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1033)

```
PeekEvent :: proc "c" (display: ^Display, event: ^XEvent) ---
```

### [PeekIfEvent ¶](#PeekIfEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1050)

```
PeekIfEvent :: proc "c" (display: ^Display, event: ^XEvent, predicate: proc "c" (display: ^Display, event: ^XEvent, ctx: rawptr) -> b32, ctx: rawptr) ---
```

### [Pending ¶](#Pending) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1031)

```
Pending :: proc "c" (display: ^Display) -> i32 ---
```

### [Permalloc ¶](#Permalloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1554)

```
Permalloc :: proc "c" (size: u32) -> rawptr ---
```

 

Allocating permanent storage

### [PlanesOfScreen ¶](#PlanesOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L127)

```
PlanesOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [PointInRegion ¶](#PointInRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1601)

```
PointInRegion :: proc "c" (reg: Region, x, y: i32) -> b32 ---
```

### [PolygonRegion ¶](#PolygonRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1578)

```
PolygonRegion :: proc "c" (points: [^]XPoint, n: i32, fill: FillRule) -> Region ---
```

### [ProcessInternalConnections ¶](#ProcessInternalConnections) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L144)

```
ProcessInternalConnections :: proc "c" (display: ^Display, fd: i32) ---
```

### [ProtocolRevision ¶](#ProtocolRevision) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L75)

```
ProtocolRevision :: proc "c" (display: ^Display) -> i32 ---
```

### [ProtocolVersion ¶](#ProtocolVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L74)

```
ProtocolVersion :: proc "c" (display: ^Display) -> i32 ---
```

### [PutBackEvent ¶](#PutBackEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1091)

```
PutBackEvent :: proc "c" (display: ^Display, event: ^XEvent) ---
```

 

Putting events back

### [PutImage ¶](#PutImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L929)

```
PutImage :: proc "c" (
	display:  ^Display, 
	drawable: XID, 
	gc:       GC, 
	image:    ^XImage, 
	src_x:    i32, 
	src_y:    i32, 
	dst_x:    i32, 
	dst_y:    i32, 
	width:    u32, 
	height:   u32, 
) ---
```

### [PutPixel ¶](#PutPixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1640)

```
PutPixel :: proc "c" (image: ^XImage, x: i32, y: i32, pixel: uint) ---
```

### [QLength ¶](#QLength) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L76)

```
QLength :: proc "c" (display: ^Display) -> i32 ---
```

### [QueryBestCursor ¶](#QueryBestCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L440)

```
QueryBestCursor :: proc "c" (
	display:    ^Display, 
	drawable:   XID, 
	width:      u32, 
	height:     u32, 
	out_width:  ^u32, 
	out_height: ^u32, 
) -> Status ---
```

### [QueryBestSize ¶](#QueryBestSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L614)

```
QueryBestSize :: proc "c" (
	display:    ^Display, 
	class:      i32, 
	which:      XID, 
	width:      u32, 
	height:     u32, 
	out_width:  ^u32, 
	out_height: ^u32, 
) -> Status ---
```

### [QueryBestStripple ¶](#QueryBestStripple) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L631)

```
QueryBestStripple :: proc "c" (
	display:    ^Display, 
	which:      XID, 
	width:      u32, 
	height:     u32, 
	out_width:  u32, 
	out_height: u32, 
) -> Status ---
```

### [QueryBestTile ¶](#QueryBestTile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L623)

```
QueryBestTile :: proc "c" (
	display:    ^Display, 
	which:      XID, 
	width:      u32, 
	height:     u32, 
	out_width:  ^u32, 
	out_height: ^u32, 
) -> Status ---
```

### [QueryColor ¶](#QueryColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1664)

```
QueryColor :: proc "c" (display: ^Display, colormap: XID, color: ^XColor) ---
```

### [QueryColors ¶](#QueryColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1669)

```
QueryColors :: proc "c" (display: ^Display, colormap: XID, colors: [^]XColor, ncolors: i32) ---
```

### [QueryExtension ¶](#QueryExtension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1675)

```
QueryExtension :: proc "c" (display: ^Display, name: cstring, major_opcode_return: ^i32, first_event_return: ^i32, first_error_return: ^i32) -> b32 ---
```

### [QueryFont ¶](#QueryFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L815)

```
QueryFont :: proc "c" (display: ^Display, id: XID) -> ^XFontStruct ---
```

### [QueryKeymap ¶](#QueryKeymap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1249)

```
QueryKeymap :: proc "c" (display: ^Display, keys: [^]u32) ---
```

### [QueryPointer ¶](#QueryPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L299)

```
QueryPointer :: proc "c" (
	display: ^Display, 
	window:  XID, 
	root:    ^XID, 
	child:   ^XID, 
	root_x:  ^i32, 
	root_y:  ^i32, 
	x:       ^i32, 
	y:       ^i32, 
	mask:    ^KeyMask, 
) -> b32 ---
```

### [QueryTextExtents ¶](#QueryTextExtents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L851)

```
QueryTextExtents :: proc "c" (
	display:   ^Display, 
	font_id:   XID, 
	string:    [^]u8, 
	nchars:    i32, 
	direction: ^FontDirection, 
	ascent:    ^i32, 
	descent:   ^i32, 
	ret:       ^XCharStruct, 
) ---
```

### [QueryTextExtents16 ¶](#QueryTextExtents16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L861)

```
QueryTextExtents16 :: proc "c" (
	display:   ^Display, 
	font_id:   XID, 
	string:    [^]XChar2b, 
	nchars:    i32, 
	direction: ^FontDirection, 
	ascent:    ^i32, 
	descent:   ^i32, 
	ret:       ^XCharStruct, 
) ---
```

### [QueryTree ¶](#QueryTree) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L265)

```
QueryTree :: proc "c" (
	display:   ^Display, 
	window:    XID, 
	root:      ^XID, 
	parent:    ^XID, 
	children:  ^[^]XID, 
	nchildren: ^u32, 
) -> Status ---
```

 

Windows: querying information

### [RaiseWindow ¶](#RaiseWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L227)

```
RaiseWindow :: proc "c" (display: ^Display, window: XID) ---
```

 

Window: changing stacking order

### [RebindKeysym ¶](#RebindKeysym) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1545)

```
RebindKeysym :: proc "c" (
	display:   ^Display, 
	keysym:    KeySym, 
	list:      [^]KeySym, 
	mod_count: i32, 
	string:    [^]u8, 
	num_bytes: i32, 
) ---
```

### [RecolorCursor ¶](#RecolorCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L448)

```
RecolorCursor :: proc "c" (display: ^Display, cursor: XID, fg: ^XColor, bg: ^XColor) ---
```

### [ReconfigureWMWindow ¶](#ReconfigureWMWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1310)

```
ReconfigureWMWindow :: proc "c" (dipslay: ^Display, window: XID, screen_no: i32, mask: bit_set[WindowChangesMaskBits; i32], changes: ^XWindowChanges) -> Status ---
```

### [RectInRegion ¶](#RectInRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1602)

```
RectInRegion :: proc "c" (reg: Region, x, y: i32, w, h: u32) -> b32 ---
```

### [RefreshKeyboardMapping ¶](#RefreshKeyboardMapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1530)

```
RefreshKeyboardMapping :: proc "c" (event_map: ^XMappingEvent) ---
```

### [RemoveConnectionWatch ¶](#RemoveConnectionWatch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L139)

```
RemoveConnectionWatch :: proc "c" (display: ^Display, procedure: XConnectionWatchProc, data: rawptr) -> Status ---
```

### [RemoveFromSaveSet ¶](#RemoveFromSaveSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L981)

```
RemoveFromSaveSet :: proc "c" (display: ^Display, window: XID) ---
```

### [RemoveHost ¶](#RemoveHost) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1020)

```
RemoveHost :: proc "c" (display: ^Display, host: XHostAddress) ---
```

### [RemoveHosts ¶](#RemoveHosts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1021)

```
RemoveHosts :: proc "c" (display: ^Display, hosts: [^]XHostAddress, nhosts: i32) ---
```

### [ReparentWindow ¶](#ReparentWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L965)

```
ReparentWindow :: proc "c" (display: ^Display, window: XID, parent: XID, x: i32, y: i32) ---
```

 

Window and session manager functions

### [ResetScreenSaver ¶](#ResetScreenSaver) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1008)

```
ResetScreenSaver :: proc "c" (display: ^Display) ---
```

### [ResizeWindow ¶](#ResizeWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L202)

```
ResizeWindow :: proc "c" (display: ^Display, window: XID, width: u32, height: u32) ---
```

### [ResourceManagerString ¶](#ResourceManagerString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1683)

```
ResourceManagerString :: proc "c" (display: ^Display) -> cstring ---
```

### [RestackWindows ¶](#RestackWindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L232)

```
RestackWindows :: proc "c" (display: ^Display, windows: [^]XID, nwindows: i32) ---
```

### [RootWindow ¶](#RootWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L96)

```
RootWindow :: proc "c" (display: ^Display, screen_no: i32) -> XID ---
```

 

Display macros (other)

### [RootWindowOfScreen ¶](#RootWindowOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L128)

```
RootWindowOfScreen :: proc "c" (screen: ^Screen) -> XID ---
```

### [RotateWindowProperties ¶](#RotateWindowProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L362)

```
RotateWindowProperties :: proc "c" (display: ^Display, window: XID, props: [^]Atom, nprops: i32, npos: i32) -> i32 ---
```

### [ScreenCount ¶](#ScreenCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L97)

```
ScreenCount :: proc "c" (display: ^Display) -> i32 ---
```

### [ScreenNumberOfScreen ¶](#ScreenNumberOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L119)

```
ScreenNumberOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [ScreenOfDisplay ¶](#ScreenOfDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L85)

```
ScreenOfDisplay :: proc "c" (display: ^Display, screen_no: i32) -> ^Screen ---
```

### [SelectInput ¶](#SelectInput) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1027)

```
SelectInput :: proc "c" (display: ^Display, window: XID, mask: bit_set[EventMaskBits; int]) ---
```

 

Events

### [SendEvent ¶](#SendEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1096)

```
SendEvent :: proc "c" (display: ^Display, window: XID, propagate: b32, mask: bit_set[EventMaskBits; int], event: ^XEvent) -> Status ---
```

 

Sending events to other applications

### [ServerVendor ¶](#ServerVendor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L77)

```
ServerVendor :: proc "c" (display: ^Display) -> cstring ---
```

### [SetAccessControl ¶](#SetAccessControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1023)

```
SetAccessControl :: proc "c" (display: ^Display, mode: AccessControlMode) ---
```

 

Access control list

### [SetAfterFunction ¶](#SetAfterFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1113)

```
SetAfterFunction :: proc "c" (display: ^Display, procedure: proc "c" (display: ^Display) -> i32) -> proc "c" (^Display) -> i32 ---
```

 

Enabling or disabling synchronization

### [SetArcMode ¶](#SetArcMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L654)

```
SetArcMode :: proc "c" (display: ^Display, gc: GC, mode: ArcMode) ---
```

### [SetBackground ¶](#SetBackground) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L574)

```
SetBackground :: proc "c" (display: ^Display, gc: GC, bg: uint) ---
```

### [SetClassHint ¶](#SetClassHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1397)

```
SetClassHint :: proc "c" (display: ^Display, window: XID, hint: ^XClassHint) ---
```

### [SetClipMask ¶](#SetClipMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L644)

```
SetClipMask :: proc "c" (display: ^Display, gc: GC, pixmap: XID) ---
```

### [SetClipOrigin ¶](#SetClipOrigin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L643)

```
SetClipOrigin :: proc "c" (display: ^Display, gc: GC, x: i32, y: i32) ---
```

### [SetClipRectangles ¶](#SetClipRectangles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L645)

```
SetClipRectangles :: proc "c" (
	display:  ^Display, 
	gc:       GC, 
	x:        i32, 
	y:        i32, 
	rects:    [^]XRectangle, 
	n:        i32, 
	ordering: i32, 
) ---
```

### [SetCloseDownMode ¶](#SetCloseDownMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L65)

```
SetCloseDownMode :: proc "c" (display: ^Display, mode: CloseMode) ---
```

### [SetCommand ¶](#SetCommand) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1481)

```
SetCommand :: proc "c" (display: ^Display, window: XID, argv: [^]cstring, argc: i32) ---
```

 

Client to session manager communication

### [SetDashes ¶](#SetDashes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L597)

```
SetDashes :: proc "c" (display: ^Display, gc: GC, dash_offs: i32, dash_list: [^]i8, n: i32) ---
```

### [SetErrorHandler ¶](#SetErrorHandler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1122)

```
SetErrorHandler :: proc "c" (handler: proc "c" (display: ^Display, event: ^XErrorEvent) -> i32) -> proc "c" (^Display, ^XErrorEvent) -> i32 ---
```

 

Error handling

### [SetFillRule ¶](#SetFillRule) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L609)

```
SetFillRule :: proc "c" (display: ^Display, gc: GC, rule: FillRule) ---
```

### [SetFillStyle ¶](#SetFillStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L604)

```
SetFillStyle :: proc "c" (display: ^Display, gc: GC, style: FillStyle) ---
```

### [SetFont ¶](#SetFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L642)

```
SetFont :: proc "c" (display: ^Display, gc: GC, font: XID) ---
```

### [SetFontPath ¶](#SetFontPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L990)

```
SetFontPath :: proc "c" (display: ^Display, dirs: [^]cstring, ndirs: i32) ---
```

 

Setting and retrieving font search paths

### [SetForeground ¶](#SetForeground) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L569)

```
SetForeground :: proc "c" (display: ^Display, gc: GC, fg: uint) ---
```

### [SetFunction ¶](#SetFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L579)

```
SetFunction :: proc "c" (display: ^Display, gc: GC, fn: GCFunction) ---
```

### [SetGraphicsExposures ¶](#SetGraphicsExposures) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L656)

```
SetGraphicsExposures :: proc "c" (display: ^Display, gc: GC, exp: b32) ---
```

### [SetICFocus ¶](#SetICFocus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1706)

```
SetICFocus :: proc "c" (ic: XIC) ---
```

### [SetICValues ¶](#SetICValues) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1712)

```
SetICValues :: proc "c" (ic: XIC, .. args: ..any) -> cstring ---
```

### [SetIOErrorHandler ¶](#SetIOErrorHandler) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1140)

```
SetIOErrorHandler :: proc "c" (handler: proc "c" (display: ^Display) -> i32) -> proc "c" (^Display) -> i32 ---
```

### [SetIconName ¶](#SetIconName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1348)

```
SetIconName :: proc "c" (display: ^Display, window: XID, name: cstring) ---
```

### [SetIconSizes ¶](#SetIconSizes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1446)

```
SetIconSizes :: proc "c" (display: ^Display, window: XID, size_list: [^]XIconSize, count: i32) ---
```

### [SetInputFocus ¶](#SetInputFocus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1225)

```
SetInputFocus :: proc "c" (display: ^Display, focus: XID, revert_to: FocusRevert, time: Time) ---
```

 

Controlling input focus

### [SetLineAttributes ¶](#SetLineAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L589)

```
SetLineAttributes :: proc "c" (
	display:    ^Display, 
	gc:         GC, 
	width:      u32, 
	line_style: LineStyle, 
	cap_style:  CapStyle, 
	join_style: JoinStyle, 
) ---
```

### [SetLocaleModifiers ¶](#SetLocaleModifiers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1701)

```
SetLocaleModifiers :: proc "c" (modifiers: cstring) -> cstring ---
```

### [SetModifierMapping ¶](#SetModifierMapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1297)

```
SetModifierMapping :: proc "c" (display: ^Display, modmap: ^XModifierKeymap) -> i32 ---
```

### [SetPlaneMask ¶](#SetPlaneMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L584)

```
SetPlaneMask :: proc "c" (display: ^Display, gc: GC, pmask: uint) ---
```

### [SetPointerMapping ¶](#SetPointerMapping) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1250)

```
SetPointerMapping :: proc "c" (display: ^Display, map_should_not_be_a_keyword: [^]u8, nmap: i32) -> i32 ---
```

### [SetRGBColormaps ¶](#SetRGBColormaps) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1503)

```
SetRGBColormaps :: proc "c" (display: ^Display, window: XID, colormap: ^XStandardColormap, prop: Atom) ---
```

### [SetRegion ¶](#SetRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1583)

```
SetRegion :: proc "c" (display: ^Display, gc: GC, region: Region) ---
```

### [SetScreenSaver ¶](#SetScreenSaver) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L999)

```
SetScreenSaver :: proc "c" (display: ^Display, timeout: i32, interval: i32, blanking: ScreenSaverBlanking, exposures: ScreenSavingExposures) ---
```

 

Controlling the screen saver

### [SetSelectionOwner ¶](#SetSelectionOwner) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L375)

```
SetSelectionOwner :: proc "c" (display: ^Display, selection: Atom, owner: XID, time: Time) ---
```

 

Selections

### [SetState ¶](#SetState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L561)

```
SetState :: proc "c" (
	display: ^Display, 
	gc:      GC, 
	fg:      uint, 
	bg:      uint, 
	fn:      GCFunction, 
	pmask:   uint, 
) ---
```

 

Convenience routines for GC

### [SetStripple ¶](#SetStripple) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L640)

```
SetStripple :: proc "c" (display: ^Display, gc: GC, stripple: XID) ---
```

### [SetSubwindowMode ¶](#SetSubwindowMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L655)

```
SetSubwindowMode :: proc "c" (display: ^Display, gc: GC, mode: SubwindowMode) ---
```

### [SetTSOrigin ¶](#SetTSOrigin) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L641)

```
SetTSOrigin :: proc "c" (display: ^Display, gc: GC, x: i32, y: i32) ---
```

### [SetTextProperty ¶](#SetTextProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L399)

```
SetTextProperty :: proc "c" (display: ^Display, window: XID, text_prop: ^XTextProperty, property: Atom) ---
```

### [SetTile ¶](#SetTile) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L639)

```
SetTile :: proc "c" (display: ^Display, gc: GC, tile: XID) ---
```

### [SetTransientForHint ¶](#SetTransientForHint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1408)

```
SetTransientForHint :: proc "c" (display: ^Display, window: XID, prop_window: XID) ---
```

 

Setting and reading WM\_TRANSIENT\_FOR property

### [SetWMClientMachine ¶](#SetWMClientMachine) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1493)

```
SetWMClientMachine :: proc "c" (display: ^Display, window: XID, prop: ^XTextProperty) ---
```

### [SetWMColormapWindows ¶](#SetWMColormapWindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1432)

```
SetWMColormapWindows :: proc "c" (display: ^Display, window: XID, colormap_windows: [^]XID, count: i32) -> Status ---
```

 

Setting and reading the WM\_COLORMAP\_WINDOWS property

### [SetWMHints ¶](#SetWMHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1360)

```
SetWMHints :: proc "c" (display: ^Display, window: XID, hints: ^XWMHints) ---
```

### [SetWMIconName ¶](#SetWMIconName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1338)

```
SetWMIconName :: proc "c" (display: ^Display, window: XID, prop: ^XTextProperty) ---
```

### [SetWMName ¶](#SetWMName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1318)

```
SetWMName :: proc "c" (display: ^Display, window: XID, prop: ^XTextProperty) ---
```

 

Getting and setting the WM\_NAME property

### [SetWMNormalHints ¶](#SetWMNormalHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1371)

```
SetWMNormalHints :: proc "c" (display: ^Display, window: XID, hints: ^XSizeHints) ---
```

### [SetWMProperties ¶](#SetWMProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1470)

```
SetWMProperties :: proc "c" (
	display:      ^Display, 
	window:       XID, 
	window_name:  ^XTextProperty, 
	argv:         [^]cstring, 
	argc:         i32, 
	normal_hints: ^XSizeHints, 
	wm_hints:     ^XWMHints, 
	class_hints:  ^XWMHints, 
) ---
```

### [SetWMProtocols ¶](#SetWMProtocols) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1419)

```
SetWMProtocols :: proc "c" (display: ^Display, window: XID, protocols: [^]Atom, count: i32) -> Status ---
```

 

Setting and reading the WM\_PROTOCOLS property

### [SetWMSizeHints ¶](#SetWMSizeHints) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1382)

```
SetWMSizeHints :: proc "c" (display: ^Display, window: XID, hints: ^XSizeHints, prop: Atom) ---
```

### [SetWindowBackground ¶](#SetWindowBackground) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L240)

```
SetWindowBackground :: proc "c" (display: ^Display, window: XID, pixel: uint) ---
```

### [SetWindowBackgroundPixmap ¶](#SetWindowBackgroundPixmap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L245)

```
SetWindowBackgroundPixmap :: proc "c" (display: ^Display, window: XID, pixmap: XID) ---
```

### [SetWindowBorder ¶](#SetWindowBorder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L221)

```
SetWindowBorder :: proc "c" (display: ^Display, window: XID, pixel: uint) ---
```

### [SetWindowBorderWidth ¶](#SetWindowBorderWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L216)

```
SetWindowBorderWidth :: proc "c" (display: ^Display, window: XID, width: u32) ---
```

### [SetWindowColormap ¶](#SetWindowColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L250)

```
SetWindowColormap :: proc "c" (display: ^Display, window: XID, colormap: XID) ---
```

### [ShowCursor ¶](#ShowCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L25)

```
ShowCursor :: proc "c" (display: ^Display, window: XID) ---
```

### [ShrinkRegion ¶](#ShrinkRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1591)

```
ShrinkRegion :: proc "c" (region: Region, dx, dy: i32) ---
```

### [StoreBuffer ¶](#StoreBuffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1605)

```
StoreBuffer :: proc "c" (display: ^Display, bytes: [^]u8, nbytes: i32, buffer: i32) ---
```

### [StoreBytes ¶](#StoreBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1604)

```
StoreBytes :: proc "c" (display: ^Display, bytes: [^]u8, nbytes: i32) ---
```

 

Using cut buffers

### [StoreColor ¶](#StoreColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L521)

```
StoreColor :: proc "c" (display: ^Display, colormap: XID, color: ^XColor) ---
```

 

Modifying and querying colormap cells

### [StoreColors ¶](#StoreColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L526)

```
StoreColors :: proc "c" (display: ^Display, colormap: XID, color: [^]XColor, ncolors: i32) ---
```

### [StoreName ¶](#StoreName) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1328)

```
StoreName :: proc "c" (display: ^Display, window: XID, name: cstring) ---
```

### [StoreNamedColor ¶](#StoreNamedColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1657)

```
StoreNamedColor :: proc "c" (display: ^Display, colormap: XID, name: cstring, pixel: uint, flags: bit_set[ColorFlagsBits; i32]) ---
```

### [StringToKeysym ¶](#StringToKeysym) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1536)

```
StringToKeysym :: proc "c" (str: cstring) -> KeySym ---
```

### [SubImage ¶](#SubImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1646)

```
SubImage :: proc "c" (image: ^XImage, x: i32, y: i32, w: u32, h: u32) -> ^XImage ---
```

### [SubtractRegion ¶](#SubtractRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1597)

```
SubtractRegion :: proc "c" (sra, srb, ret: Region) ---
```

### [Sync ¶](#Sync) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1029)

```
Sync :: proc "c" (display: ^Display, discard: bool) -> i32 ---
```

### [Synchronize ¶](#Synchronize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1117)

```
Synchronize :: proc "c" (display: ^Display, onoff: b32) -> proc "c" (^Display) -> i32 ---
```

### [TextExtents ¶](#TextExtents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L833)

```
TextExtents :: proc "c" (
	font_struct: ^XFontStruct, 
	string:      [^]u8, 
	nchars:      i32, 
	direction:   ^FontDirection, 
	ascent:      ^i32, 
	descent:     ^i32, 
	ret:         ^XCharStruct, 
) ---
```

### [TextExtents16 ¶](#TextExtents16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L842)

```
TextExtents16 :: proc "c" (
	font_struct: ^XFontStruct, 
	string:      [^]XChar2b, 
	nchars:      i32, 
	direction:   ^FontDirection, 
	ascent:      ^i32, 
	descent:     ^i32, 
	ret:         ^XCharStruct, 
) ---
```

### [TextWidth ¶](#TextWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L831)

```
TextWidth :: proc "c" (font_struct: ^XFontStruct, string: [^]u8, count: i32) -> i32 ---
```

 

Computing character string sizes

### [TextWidth16 ¶](#TextWidth16) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L832)

```
TextWidth16 :: proc "c" (font_struct: ^XFontStruct, string: [^]XChar2b, count: i32) -> i32 ---
```

### [TranslateCoordinates ¶](#TranslateCoordinates) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L290)

```
TranslateCoordinates :: proc "c" (
	display:    ^Display, 
	src_window: XID, 
	dst_window: XID, 
	src_x:      i32, 
	src_y:      i32, 
	dst_x:      ^i32, 
	dst_y:      ^i32, 
) -> b32 ---
```

 

Windows: translating screen coordinates

### [UndefineCursor ¶](#UndefineCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L260)

```
UndefineCursor :: proc "c" (display: ^Display, window: XID) -> i32 ---
```

### [UngrabButton ¶](#UngrabButton) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1177)

```
UngrabButton :: proc "c" (display: ^Display, button: u32, modifiers: bit_set[InputMaskBits; i32], grab_window: XID) ---
```

### [UngrabKey ¶](#UngrabKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1204)

```
UngrabKey :: proc "c" (display: ^Display, keycode: i32, modifiers: bit_set[InputMaskBits; i32], grab_window: XID) ---
```

### [UngrabKeyboard ¶](#UngrabKeyboard) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1191)

```
UngrabKeyboard :: proc "c" (display: ^Display, time: Time) ---
```

### [UngrabPointer ¶](#UngrabPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1155)

```
UngrabPointer :: proc "c" (display: ^Display, time: Time) -> i32 ---
```

### [UngrabServer ¶](#UngrabServer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L995)

```
UngrabServer :: proc "c" (display: ^Display) ---
```

### [UninstallColormap ¶](#UninstallColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L987)

```
UninstallColormap :: proc "c" (display: ^Display, colormap: XID) ---
```

### [UnionRectWithRegion ¶](#UnionRectWithRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1596)

```
UnionRectWithRegion :: proc "c" (rect: ^XRectangle, src, dst: Region) ---
```

### [UnionRegion ¶](#UnionRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1595)

```
UnionRegion :: proc "c" (sra, srb, ret: Region) ---
```

### [UnloadFont ¶](#UnloadFont) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L819)

```
UnloadFont :: proc "c" (display: ^Display, font: XID) ---
```

### [UnlockDisplay ¶](#UnlockDisplay) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L132)

```
UnlockDisplay :: proc "c" (display: ^Display) ---
```

### [UnmapSubwindows ¶](#UnmapSubwindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L188)

```
UnmapSubwindows :: proc "c" (display: ^Display, window: XID) ---
```

### [UnmapWindow ¶](#UnmapWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L187)

```
UnmapWindow :: proc "c" (display: ^Display, window: XID) ---
```

### [UnsetICFocus ¶](#UnsetICFocus) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1709)

```
UnsetICFocus :: proc "c" (ic: XIC) ---
```

### [VaCreateNestedList ¶](#VaCreateNestedList) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1716)

```
VaCreateNestedList :: proc "c" (unused: i32, .. args: ..any) -> XVaNestedList ---
```

### [VendorRelease ¶](#VendorRelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L78)

```
VendorRelease :: proc "c" (display: ^Display) -> i32 ---
```

### [VisualIDFromVisual ¶](#VisualIDFromVisual) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L154)

```
VisualIDFromVisual :: proc "c" (visual: ^Visual) -> VisualID ---
```

 

Windows functions

### [WMGeometry ¶](#WMGeometry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1563)

```
WMGeometry :: proc "c" (
	display:   ^Display, 
	screen_no: i32, 
	user_geom: cstring, 
	def_geom:  cstring, 
	bwidth:    u32, 
	hints:     ^XSizeHints, 
	x_ret:     ^i32, 
	y_ret:     ^i32, 
	w_ret:     ^u32, 
	h_ret:     ^u32, 
	grav:      ^Gravity, 
) -> i32 ---
```

### [WarpPointer ¶](#WarpPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1213)

```
WarpPointer :: proc "c" (
	display:    ^Display, 
	src_window: XID, 
	dst_window: XID, 
	src_x:      i32, 
	src_y:      i32, 
	src_width:  u32, 
	src_height: u32, 
	dst_x:      i32, 
	dst_y:      i32, 
) ---
```

 

Moving the pointer

### [WhitePixel ¶](#WhitePixel) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L81)

```
WhitePixel :: proc "c" (display: ^Display, screen_no: i32) -> uint ---
```

### [WhitePixelsOfScreen ¶](#WhitePixelsOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L110)

```
WhitePixelsOfScreen :: proc "c" (screen: ^Screen) -> uint ---
```

### [WidthMMOfScreen ¶](#WidthMMOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L123)

```
WidthMMOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [WidthOfScreen ¶](#WidthOfScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L121)

```
WidthOfScreen :: proc "c" (screen: ^Screen) -> i32 ---
```

### [WindowEvent ¶](#WindowEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1057)

```
WindowEvent :: proc "c" (display: ^Display, window: XID, mask: bit_set[EventMaskBits; int], event: ^XEvent) ---
```

 

Selecting events using a window or event mask

### [WithdrawWindow ¶](#WithdrawWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1305)

```
WithdrawWindow :: proc "c" (dipslay: ^Display, window: XID, screen_no: i32) -> Status ---
```

### [XIMaskIsSet ¶](#XIMaskIsSet) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L51)

```
XIMaskIsSet :: proc(ptr: [^]u8, event: i32) -> bool {…}
```

### [XIQueryVersion ¶](#XIQueryVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L44)

```
XIQueryVersion :: proc "c" (display: ^Display, major: ^i32, minor: ^i32) -> Status ---
```

### [XISelectEvents ¶](#XISelectEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L43)

```
XISelectEvents :: proc "c" (display: ^Display, window: XID, masks: [^]XIEventMask, num_masks: i32) -> i32 ---
```

### [XISetMask ¶](#XISetMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L47)

```
XISetMask :: proc(ptr: [^]u8, event: XIEventType) {…}
```

### [XRRFreeCrtcInfo ¶](#XRRFreeCrtcInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L37)

```
XRRFreeCrtcInfo :: proc "c" (crtc_info: ^XRRCrtcInfo) ---
```

### [XRRFreeOutputInfo ¶](#XRRFreeOutputInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L35)

```
XRRFreeOutputInfo :: proc "c" (output_info: ^XRROutputInfo) ---
```

### [XRRFreeScreenResources ¶](#XRRFreeScreenResources) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L33)

```
XRRFreeScreenResources :: proc "c" (resources: ^XRRScreenResources) ---
```

### [XRRGetCrtcInfo ¶](#XRRGetCrtcInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L36)

```
XRRGetCrtcInfo :: proc "c" (display: ^Display, resources: ^XRRScreenResources, crtc: XID) -> ^XRRCrtcInfo ---
```

### [XRRGetMonitors ¶](#XRRGetMonitors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L38)

```
XRRGetMonitors :: proc "c" (dpy: ^Display, window: XID, get_active: b32, nmonitors: ^i32) -> [^]XRRMonitorInfo ---
```

### [XRRGetOutputInfo ¶](#XRRGetOutputInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L34)

```
XRRGetOutputInfo :: proc "c" (display: ^Display, resources: ^XRRScreenResources, output: XID) -> ^XRROutputInfo ---
```

### [XRRGetScreenResources ¶](#XRRGetScreenResources) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L32)

```
XRRGetScreenResources :: proc "c" (display: ^Display, window: XID) -> ^XRRScreenResources ---
```

### [XRRSizes ¶](#XRRSizes) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L31)

```
XRRSizes :: proc "c" (display: ^Display, screen: i32, nsizes: ^i32) -> [^]XRRScreenSize ---
```

### [XcmsAllocColor ¶](#XcmsAllocColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2012)

```
XcmsAllocColor :: proc "c" (display: ^Display, colormap: XID, color: ^XcmsColor, format: uint) -> Status ---
```

### [XcmsAllocNamedColor ¶](#XcmsAllocNamedColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2004)

```
XcmsAllocNamedColor :: proc "c" (
	display:  ^Display, 
	colormap: XID, 
	name:     cstring, 
	screen:   ^XcmsColor, 
	exact:    ^XcmsColor, 
	format:   uint, 
) -> Status ---
```

### [XcmsCCCOfColormap ¶](#XcmsCCCOfColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1758)

```
XcmsCCCOfColormap :: proc "c" (display: ^Display, colormap: XID) -> XcmsCCC ---
```

 

Getting and setting the color conversion context (CCC) of a colormap

### [XcmsCIELabClipL ¶](#XcmsCIELabClipL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1809)

```
XcmsCIELabClipL :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

 

Pre-defined gamut compression callbacks

### [XcmsCIELabClipLab ¶](#XcmsCIELabClipLab) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1823)

```
XcmsCIELabClipLab :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsCIELabClipab ¶](#XcmsCIELabClipab) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1816)

```
XcmsCIELabClipab :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsCIELabQueryMaxC ¶](#XcmsCIELabQueryMaxC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1927)

```
XcmsCIELabQueryMaxC :: proc "c" (ccc: XcmsCCC, hue: f64, lstar: f64, color: ^XcmsColor) -> Status ---
```

 

CIELab queries

### [XcmsCIELabQueryMaxL ¶](#XcmsCIELabQueryMaxL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1933)

```
XcmsCIELabQueryMaxL :: proc "c" (ccc: XcmsCCC, hue: f64, chroma: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsCIELabQueryMaxLC ¶](#XcmsCIELabQueryMaxLC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1939)

```
XcmsCIELabQueryMaxLC :: proc "c" (ccc: XcmsCCC, hue: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsCIELabQueryMinL ¶](#XcmsCIELabQueryMinL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1944)

```
XcmsCIELabQueryMinL :: proc "c" (ccc: XcmsCCC, hue: f64, chroma: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsCIELabWhiteShiftColors ¶](#XcmsCIELabWhiteShiftColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1873)

```
XcmsCIELabWhiteShiftColors :: proc "c" (
	ctx:                 XcmsCCC, 
	initial_white_point: ^XcmsColor, 
	target_white_point:  ^XcmsColor, 
	target_format:       uint, 
	colors:              [^]XcmsColor, 
	ncolors:             u32, 
	compression:         [^]b32, 
) -> Status ---
```

 

Pre-defined white-point adjustment procedures

### [XcmsCIELuvClipL ¶](#XcmsCIELuvClipL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1830)

```
XcmsCIELuvClipL :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsCIELuvClipLuv ¶](#XcmsCIELuvClipLuv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1844)

```
XcmsCIELuvClipLuv :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsCIELuvClipuv ¶](#XcmsCIELuvClipuv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1837)

```
XcmsCIELuvClipuv :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsCIELuvQueryMaxC ¶](#XcmsCIELuvQueryMaxC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1951)

```
XcmsCIELuvQueryMaxC :: proc "c" (ccc: XcmsCCC, hue: f64, lstar: f64, color: ^XcmsColor) -> Status ---
```

 

CIEluv queries

### [XcmsCIELuvQueryMaxL ¶](#XcmsCIELuvQueryMaxL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1957)

```
XcmsCIELuvQueryMaxL :: proc "c" (ccc: XcmsCCC, hue: f64, chroma: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsCIELuvQueryMaxLC ¶](#XcmsCIELuvQueryMaxLC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1963)

```
XcmsCIELuvQueryMaxLC :: proc "c" (ccc: XcmsCCC, hue: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsCIELuvQueryMinL ¶](#XcmsCIELuvQueryMinL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1968)

```
XcmsCIELuvQueryMinL :: proc "c" (ccc: XcmsCCC, hue: f64, chroma: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsCIELuvWhiteShiftColors ¶](#XcmsCIELuvWhiteShiftColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1882)

```
XcmsCIELuvWhiteShiftColors :: proc "c" (
	ctx:                 XcmsCCC, 
	initial_white_point: ^XcmsColor, 
	target_white_point:  ^XcmsColor, 
	target_format:       uint, 
	colors:              [^]XcmsColor, 
	ncolors:             u32, 
	compression:         [^]b32, 
) -> Status ---
```

### [XcmsClientWhitePointOfCCC ¶](#XcmsClientWhitePointOfCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1772)

```
XcmsClientWhitePointOfCCC :: proc "c" (ccc: XcmsCCC) -> XcmsColor ---
```

### [XcmsConvertColors ¶](#XcmsConvertColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1801)

```
XcmsConvertColors :: proc "c" (ccc: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, format: uint, cflags: [^]b32) -> Status ---
```

 

Converting between colorspaces

### [XcmsCreateCCC ¶](#XcmsCreateCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1789)

```
XcmsCreateCCC :: proc "c" (
	display:     ^Display, 
	screen_no:   i32, 
	visual:      ^Visual, 
	white_point: ^XcmsColor, 
	cproc:       XcmsCompressionProc, 
	cdata:       rawptr, 
	aproc:       XcmsWhiteAdjustProc, 
	adata:       rawptr, 
) -> XcmsCCC ---
```

 

Creating and freeing the color conversion context

### [XcmsDefaultCCC ¶](#XcmsDefaultCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1766)

```
XcmsDefaultCCC :: proc "c" (display: ^Display, screen_no: i32) -> XcmsCCC ---
```

### [XcmsDisplayOfCCC ¶](#XcmsDisplayOfCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1768)

```
XcmsDisplayOfCCC :: proc "c" (ccc: XcmsCCC) -> ^Display ---
```

 

Color conversion context macros

### [XcmsFreeCCC ¶](#XcmsFreeCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1799)

```
XcmsFreeCCC :: proc "c" (ccc: XcmsCCC) ---
```

### [XcmsLookupColor ¶](#XcmsLookupColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1724)

```
XcmsLookupColor :: proc "c" (
	display:  ^Display, 
	colormap: XID, 
	name:     cstring, 
	exact:    XcmsColor, 
	screen:   XcmsColor, 
	format:   uint, 
) -> Status ---
```

### [XcmsQueryBlack ¶](#XcmsQueryBlack) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1901)

```
XcmsQueryBlack :: proc "c" (ccc: XcmsCCC, format: uint, color: ^XcmsColor) -> Status ---
```

 

Color querying

### [XcmsQueryBlue ¶](#XcmsQueryBlue) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1906)

```
XcmsQueryBlue :: proc "c" (ccc: XcmsCCC, format: uint, color: ^XcmsColor) -> Status ---
```

### [XcmsQueryColor ¶](#XcmsQueryColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1744)

```
XcmsQueryColor :: proc "c" (display: ^Display, colormap: XID, color: ^XcmsColor, format: uint) -> Status ---
```

### [XcmsQueryColors ¶](#XcmsQueryColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1750)

```
XcmsQueryColors :: proc "c" (display: ^Display, colormap: XID, color: [^]XcmsColor, ncolors: i32, format: uint) -> Status ---
```

### [XcmsQueryGreen ¶](#XcmsQueryGreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1911)

```
XcmsQueryGreen :: proc "c" (ccc: XcmsCCC, format: uint, color: ^XcmsColor) -> Status ---
```

### [XcmsQueryRed ¶](#XcmsQueryRed) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1916)

```
XcmsQueryRed :: proc "c" (ccc: XcmsCCC, format: uint, color: ^XcmsColor) -> Status ---
```

### [XcmsQueryWhite ¶](#XcmsQueryWhite) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1921)

```
XcmsQueryWhite :: proc "c" (ccc: XcmsCCC, format: uint, color: ^XcmsColor) -> Status ---
```

### [XcmsScreenNumberOfCCC ¶](#XcmsScreenNumberOfCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1770)

```
XcmsScreenNumberOfCCC :: proc "c" (ccc: XcmsCCC) -> i32 ---
```

### [XcmsScreenWhitePointOfCCC ¶](#XcmsScreenWhitePointOfCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1771)

```
XcmsScreenWhitePointOfCCC :: proc "c" (ccc: XcmsCCC) -> XcmsColor ---
```

### [XcmsSetCCCOfColormap ¶](#XcmsSetCCCOfColormap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1762)

```
XcmsSetCCCOfColormap :: proc "c" (display: ^Display, colormap: XID, ccc: XcmsCCC) -> XcmsCCC ---
```

### [XcmsSetCompressionProc ¶](#XcmsSetCompressionProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1778)

```
XcmsSetCompressionProc :: proc "c" (ccc: XcmsCCC, cproc: XcmsCompressionProc, data: rawptr) -> XcmsCompressionProc ---
```

### [XcmsSetWhiteAdjustProc ¶](#XcmsSetWhiteAdjustProc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1783)

```
XcmsSetWhiteAdjustProc :: proc "c" (ccc: XcmsCCC, aproc: XcmsWhiteAdjustProc, data: rawptr) -> XcmsWhiteAdjustProc ---
```

### [XcmsSetWhitePoint ¶](#XcmsSetWhitePoint) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1774)

```
XcmsSetWhitePoint :: proc "c" (ccc: XcmsCCC, color: ^XcmsColor) -> Status ---
```

 

Modifying the attributes of color conversion context

### [XcmsStoreColor ¶](#XcmsStoreColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1732)

```
XcmsStoreColor :: proc "c" (display: ^Display, colormap: XID, color: ^XcmsColor) -> Status ---
```

### [XcmsStoreColors ¶](#XcmsStoreColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1737)

```
XcmsStoreColors :: proc "c" (display: ^Display, colormap: XID, colors: [^]XcmsColor, ncolors: XcmsColor, cflags: [^]b32) -> Status ---
```

### [XcmsTekHVCClipC ¶](#XcmsTekHVCClipC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1858)

```
XcmsTekHVCClipC :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsTekHVCClipV ¶](#XcmsTekHVCClipV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1851)

```
XcmsTekHVCClipV :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsTekHVCClipVC ¶](#XcmsTekHVCClipVC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1865)

```
XcmsTekHVCClipVC :: proc "c" (ctx: XcmsCCC, colors: [^]XcmsColor, ncolors: u32, index: u32, flags: [^]b32) -> Status ---
```

### [XcmsTekHVCQueryMaxC ¶](#XcmsTekHVCQueryMaxC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1975)

```
XcmsTekHVCQueryMaxC :: proc "c" (ccc: XcmsCCC, hue: f64, value: f64, color: ^XcmsColor) -> Status ---
```

 

TexHVX queries

### [XcmsTekHVCQueryMaxV ¶](#XcmsTekHVCQueryMaxV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1981)

```
XcmsTekHVCQueryMaxV :: proc "c" (ccc: XcmsCCC, hue: f64, chroma: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsTekHVCQueryMaxVC ¶](#XcmsTekHVCQueryMaxVC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1987)

```
XcmsTekHVCQueryMaxVC :: proc "c" (ccc: XcmsCCC, hue: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsTekHVCQueryMaxVSamples ¶](#XcmsTekHVCQueryMaxVSamples) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1992)

```
XcmsTekHVCQueryMaxVSamples :: proc "c" (ccc: XcmsCCC, hue: f64, colors: [^]XcmsColor, nsamples: u32) -> Status ---
```

### [XcmsTekHVCQueryMinV ¶](#XcmsTekHVCQueryMinV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1998)

```
XcmsTekHVCQueryMinV :: proc "c" (ccc: XcmsCCC, hue: f64, chroma: f64, color: ^XcmsColor) -> Status ---
```

### [XcmsTekHVCWhiteShiftColors ¶](#XcmsTekHVCWhiteShiftColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1891)

```
XcmsTekHVCWhiteShiftColors :: proc "c" (
	ctx:                 XcmsCCC, 
	initial_white_point: ^XcmsColor, 
	target_white_point:  ^XcmsColor, 
	target_format:       uint, 
	colors:              [^]XcmsColor, 
	ncolors:             u32, 
	compression:         [^]b32, 
) -> Status ---
```

### [XcmsVisualOfCCC ¶](#XcmsVisualOfCCC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1769)

```
XcmsVisualOfCCC :: proc "c" (ccc: XcmsCCC) -> ^Visual ---
```

### [XkbGetKeySyms ¶](#XkbGetKeySyms) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2063)

```
XkbGetKeySyms :: proc "c" (display: ^Display, first: u32, num: u32, xkb: ^XkbDescRec) -> Status ---
```

### [XkbGetMap ¶](#XkbGetMap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2037)

```
XkbGetMap :: proc "c" (display: ^Display, which: bit_set[XkbInfoMaskBits; int], device_spec: i32) -> ^XkbDescRec ---
```

### [XkbGetState ¶](#XkbGetState) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2058)

```
XkbGetState :: proc "c" (display: ^Display, device_spec: u32, return_state: ^XkbStateRec) -> Status ---
```

### [XkbGetUpdatedMap ¶](#XkbGetUpdatedMap) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2042)

```
XkbGetUpdatedMap :: proc "c" (display: ^Display, which: bit_set[XkbInfoMaskBits; int], desc: ^XkbDescRec) -> b32 ---
```

### [XkbQueryExtension ¶](#XkbQueryExtension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2024)

```
XkbQueryExtension :: proc "c" (
	display:           ^Display, 
	opcode_return:     ^i32, 
	event_base_return: ^i32, 
	error_base_return: ^i32, 
	major_return:      ^i32, 
	minor_return:      ^i32, 
) -> b32 ---
```

### [XkbSelectEvents ¶](#XkbSelectEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2047)

```
XkbSelectEvents :: proc "c" (display: ^Display, deviceID: u32, bits_to_change: bit_set[XkbEventType; int], values: bit_set[XkbEventType; int]) -> b32 ---
```

### [XkbSetDetectableAutoRepeat ¶](#XkbSetDetectableAutoRepeat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2053)

```
XkbSetDetectableAutoRepeat :: proc "c" (display: ^Display, detectable: b32, supported: ^b32) -> b32 ---
```

### [XkbUseExtension ¶](#XkbUseExtension) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2032)

```
XkbUseExtension :: proc "c" (display: ^Display, major_return: ^i32, minor_return: ^i32) -> b32 ---
```

### [XorRegion ¶](#XorRegion) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1598)

```
XorRegion :: proc "c" (sra, srb, ret: Region) ---
```

### [XrmGetResource ¶](#XrmGetResource) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2020)

```
XrmGetResource :: proc "c" (db: XrmDatabase, name: cstring, class: cstring, type_return: ^cstring, val_return: ^XrmValue) -> b32 ---
```

### [XrmGetStringDatabase ¶](#XrmGetStringDatabase) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2019)

```
XrmGetStringDatabase :: proc "c" (data: cstring) -> XrmDatabase ---
```

### [XrmInitialize ¶](#XrmInitialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2018)

```
XrmInitialize :: proc "c" () -> ! ---
```

### [Xutf8LookupString ¶](#Xutf8LookupString) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L2069)

```
Xutf8LookupString :: proc "c" (
	ic:            XIC, 
	event:         ^XKeyEvent, 
	buffer_return: cstring, 
	bytes_buffer:  i32, 
	keysym_return: ^KeySym, 
	status_return: ^LookupStringStatus, 
) -> i32 ---
```

### [cursorGetDefaultSize ¶](#cursorGetDefaultSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L13)

```
cursorGetDefaultSize :: proc "c" (display: ^Display) -> i32 ---
```

### [cursorGetTheme ¶](#cursorGetTheme) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L12)

```
cursorGetTheme :: proc "c" (display: ^Display) -> cstring ---
```

### [cursorImageCreate ¶](#cursorImageCreate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L16)

```
cursorImageCreate :: proc "c" (width: i32, height: i32) -> ^CursorImage ---
```

### [cursorImageDestroy ¶](#cursorImageDestroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L18)

```
cursorImageDestroy :: proc "c" (img: rawptr) ---
```

### [cursorImageLoadCursor ¶](#cursorImageLoadCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L17)

```
cursorImageLoadCursor :: proc "c" (display: ^Display, img: ^CursorImage) -> XID ---
```

### [cursorLibraryLoadCursor ¶](#cursorLibraryLoadCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L14)

```
cursorLibraryLoadCursor :: proc "c" (display: ^Display, name: cstring) -> XID ---
```

### [cursorLibraryLoadImage ¶](#cursorLibraryLoadImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L15)

```
cursorLibraryLoadImage :: proc "c" (name: cstring, theme: cstring, size: i32) -> rawptr ---
```

### [mbSetWMProperties ¶](#mbSetWMProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1459)

```
mbSetWMProperties :: proc "c" (
	display:      ^Display, 
	window:       XID, 
	window_name:  cstring, 
	icon_name:    cstring, 
	argv:         [^]cstring, 
	argc:         i32, 
	normal_hints: ^XSizeHints, 
	wm_hints:     ^XWMHints, 
	class_hints:  ^XClassHint, 
) ---
```

 

Using window manager convenience functions

### [utf8SetWMProperties ¶](#utf8SetWMProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin#L1684)

```
utf8SetWMProperties :: proc "c" (
	display:      ^Display, 
	window:       XID, 
	window_name:  cstring, 
	icon_name:    cstring, 
	argv:         ^cstring, 
	argc:         i32, 
	normal_hints: ^XSizeHints, 
	wm_hints:     ^XWMHints, 
	class_hints:  ^XClassHint, 
) ---
```

## Procedure Groups

This section is empty.

## Source Files

* [xlib.odin](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib.odin)
* [xlib\_const.odin](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_const.odin)
* [xlib\_keysym.odin](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_keysym.odin)
* [xlib\_procs.odin](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_procs.odin)
* [xlib\_types.odin](https://github.com/odin-lang/Odin/tree/master/vendor/x11/xlib/xlib_types.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:55.654898800 +0000 UTC`

* [Overview](#pkg-overview)* [Types](#pkg-Types)
    + [AccessControlMode](#AccessControlMode)
    + [AllowEventsMode](#AllowEventsMode)
    + [ArcMode](#ArcMode)
    + [Atom](#Atom)
    + [BackingStore](#BackingStore)
    + [ByteOrder](#ByteOrder)
    + [CapStyle](#CapStyle)
    + [CirculationDirection](#CirculationDirection)
    + [CirculationRequest](#CirculationRequest)
    + [CloseMode](#CloseMode)
    + [ColorFlags](#ColorFlags)
    + [ColorFlagsBits](#ColorFlagsBits)
    + [ColorFormat](#ColorFormat)
    + [Colormap](#Colormap)
    + [ColormapAlloc](#ColormapAlloc)
    + [ColormapState](#ColormapState)
    + [Connection](#Connection)
    + [CoordMode](#CoordMode)
    + [Cursor](#Cursor)
    + [CursorDim](#CursorDim)
    + [CursorImage](#CursorImage)
    + [CursorPixel](#CursorPixel)
    + [CursorShape](#CursorShape)
    + [CursorUInt](#CursorUInt)
    + [Depth](#Depth)
    + [Display](#Display)
    + [Drawable](#Drawable)
    + [EventMask](#EventMask)
    + [EventMaskBits](#EventMaskBits)
    + [EventQueueMode](#EventQueueMode)
    + [EventType](#EventType)
    + [FillRule](#FillRule)
    + [FillStyle](#FillStyle)
    + [FocusRevert](#FocusRevert)
    + [Font](#Font)
    + [FontDirection](#FontDirection)
    + [GC](#GC)
    + [GCAttributeMask](#GCAttributeMask)
    + [GCAttributeMaskBits](#GCAttributeMaskBits)
    + [GCFunction](#GCFunction)
    + [GContext](#GContext)
    + [GrabMode](#GrabMode)
    + [Gravity](#Gravity)
    + [ImageFormat](#ImageFormat)
    + [InputMask](#InputMask)
    + [InputMaskBits](#InputMaskBits)
    + [JoinStyle](#JoinStyle)
    + [KeyCode](#KeyCode)
    + [KeyMask](#KeyMask)
    + [KeySym](#KeySym)
    + [KeyboardAutoRepeatMode](#KeyboardAutoRepeatMode)
    + [KeyboardControlMask](#KeyboardControlMask)
    + [KeyboardControlMaskBits](#KeyboardControlMaskBits)
    + [KeyboardLedMode](#KeyboardLedMode)
    + [LineStyle](#LineStyle)
    + [LookupStringStatus](#LookupStringStatus)
    + [MappingRequest](#MappingRequest)
    + [Mask](#Mask)
    + [MouseButton](#MouseButton)
    + [NotifyDetail](#NotifyDetail)
    + [NotifyMode](#NotifyMode)
    + [Pixmap](#Pixmap)
    + [PropertyState](#PropertyState)
    + [RRCrtc](#RRCrtc)
    + [RRMode](#RRMode)
    + [RROutput](#RROutput)
    + [Region](#Region)
    + [Rotation](#Rotation)
    + [SaveSetChangeMode](#SaveSetChangeMode)
    + [Screen](#Screen)
    + [ScreenFormat](#ScreenFormat)
    + [ScreenSaverBlanking](#ScreenSaverBlanking)
    + [ScreenSaverForceMode](#ScreenSaverForceMode)
    + [ScreenSavingExposures](#ScreenSavingExposures)
    + [Shape](#Shape)
    + [SizeHints](#SizeHints)
    + [SizeHintsBits](#SizeHintsBits)
    + [Status](#Status)
    + [SubpixelOrder](#SubpixelOrder)
    + [SubwindowMode](#SubwindowMode)
    + [Time](#Time)
    + [VisibilityState](#VisibilityState)
    + [Visual](#Visual)
    + [VisualID](#VisualID)
    + [VisualInfoMask](#VisualInfoMask)
    + [VisualInfoMaskBits](#VisualInfoMaskBits)
    + [WMHintState](#WMHintState)
    + [WMHints](#WMHints)
    + [WMHintsBits](#WMHintsBits)
    + [Window](#Window)
    + [WindowAttributeMask](#WindowAttributeMask)
    + [WindowAttributeMaskBits](#WindowAttributeMaskBits)
    + [WindowChangesMask](#WindowChangesMask)
    + [WindowChangesMaskBits](#WindowChangesMaskBits)
    + [WindowClass](#WindowClass)
    + [WindowMapState](#WindowMapState)
    + [WindowStacking](#WindowStacking)
    + [XAnyEvent](#XAnyEvent)
    + [XArc](#XArc)
    + [XButtonEvent](#XButtonEvent)
    + [XButtonPressedEvent](#XButtonPressedEvent)
    + [XButtonReleasedEvent](#XButtonReleasedEvent)
    + [XChar2b](#XChar2b)
    + [XCharStruct](#XCharStruct)
    + [XCirculateEvent](#XCirculateEvent)
    + [XCirculateRequestEvent](#XCirculateRequestEvent)
    + [XClassHint](#XClassHint)
    + [XClientMessageEvent](#XClientMessageEvent)
    + [XColor](#XColor)
    + [XColormapEvent](#XColormapEvent)
    + [XComposeStatus](#XComposeStatus)
    + [XConfigureEvent](#XConfigureEvent)
    + [XConfigureRequestEvent](#XConfigureRequestEvent)
    + [XConnectionWatchProc](#XConnectionWatchProc)
    + [XContext](#XContext)
    + [XCreateWindowEvent](#XCreateWindowEvent)
    + [XCrossingEvent](#XCrossingEvent)
    + [XDestroyWindowEvent](#XDestroyWindowEvent)
    + [XDisplay](#XDisplay)
    + [XEDataObject](#XEDataObject)
    + [XEnterWindowEvent](#XEnterWindowEvent)
    + [XErrorEvent](#XErrorEvent)
    + [XEvent](#XEvent)
    + [XExposeEvent](#XExposeEvent)
    + [XExtCodes](#XExtCodes)
    + [XExtData](#XExtData)
    + [XFocusChangeEvent](#XFocusChangeEvent)
    + [XFocusInEvent](#XFocusInEvent)
    + [XFocusOutEvent](#XFocusOutEvent)
    + [XFontProp](#XFontProp)
    + [XFontSet](#XFontSet)
    + [XFontSetExtents](#XFontSetExtents)
    + [XFontStruct](#XFontStruct)
    + [XGCValues](#XGCValues)
    + [XGenericEvent](#XGenericEvent)
    + [XGenericEventCookie](#XGenericEventCookie)
    + [XGraphicsExposeEvent](#XGraphicsExposeEvent)
    + [XGravityEvent](#XGravityEvent)
    + [XHostAddress](#XHostAddress)
    + [XIC](#XIC)
    + [XICCEncodingStyle](#XICCEncodingStyle)
    + [XICCallback](#XICCallback)
    + [XICProc](#XICProc)
    + [XID](#XID)
    + [XIDProc](#XIDProc)
    + [XIEventMask](#XIEventMask)
    + [XIEventType](#XIEventType)
    + [XIM](#XIM)
    + [XIMCallback](#XIMCallback)
    + [XIMCaretDirection](#XIMCaretDirection)
    + [XIMCaretStyle](#XIMCaretStyle)
    + [XIMFeedback](#XIMFeedback)
    + [XIMHotKeyState](#XIMHotKeyState)
    + [XIMHotKeyTrigger](#XIMHotKeyTrigger)
    + [XIMHotKeyTriggers](#XIMHotKeyTriggers)
    + [XIMPreeditCaretCallbackStruct](#XIMPreeditCaretCallbackStruct)
    + [XIMPreeditDrawCallbackStruct](#XIMPreeditDrawCallbackStruct)
    + [XIMPreeditState](#XIMPreeditState)
    + [XIMPreeditStateNotifyCallbackStruct](#XIMPreeditStateNotifyCallbackStruct)
    + [XIMProc](#XIMProc)
    + [XIMResetState](#XIMResetState)
    + [XIMStatusDataType](#XIMStatusDataType)
    + [XIMStatusDrawCallbackStruct](#XIMStatusDrawCallbackStruct)
    + [XIMStringConversionCallbackStruct](#XIMStringConversionCallbackStruct)
    + [XIMStringConversionFeedback](#XIMStringConversionFeedback)
    + [XIMStringConversionOperation](#XIMStringConversionOperation)
    + [XIMStringConversionPosition](#XIMStringConversionPosition)
    + [XIMStringConversionText](#XIMStringConversionText)
    + [XIMStringConversionType](#XIMStringConversionType)
    + [XIMStyle](#XIMStyle)
    + [XIMStyles](#XIMStyles)
    + [XIMText](#XIMText)
    + [XIMValuesList](#XIMValuesList)
    + [XIRawEvent](#XIRawEvent)
    + [XIValuatorState](#XIValuatorState)
    + [XIconSize](#XIconSize)
    + [XImage](#XImage)
    + [XKeyEvent](#XKeyEvent)
    + [XKeyPressedEvent](#XKeyPressedEvent)
    + [XKeyReleasedEvent](#XKeyReleasedEvent)
    + [XKeyboardControl](#XKeyboardControl)
    + [XKeyboardState](#XKeyboardState)
    + [XKeymapEvent](#XKeymapEvent)
    + [XLeaveWindowEvent](#XLeaveWindowEvent)
    + [XMapEvent](#XMapEvent)
    + [XMapRequestEvent](#XMapRequestEvent)
    + [XMappingEvent](#XMappingEvent)
    + [XModifierKeymap](#XModifierKeymap)
    + [XMotionEvent](#XMotionEvent)
    + [XNoExposeEvent](#XNoExposeEvent)
    + [XOC](#XOC)
    + [XOM](#XOM)
    + [XOMCharSetList](#XOMCharSetList)
    + [XOMFontInfo](#XOMFontInfo)
    + [XOMOrientation](#XOMOrientation)
    + [XOrientation](#XOrientation)
    + [XPixmapFormatValues](#XPixmapFormatValues)
    + [XPoint](#XPoint)
    + [XPointerMovedEvent](#XPointerMovedEvent)
    + [XPropertyEvent](#XPropertyEvent)
    + [XRRCrtcInfo](#XRRCrtcInfo)
    + [XRRModeBits](#XRRModeBits)
    + [XRRModeFlags](#XRRModeFlags)
    + [XRRModeInfo](#XRRModeInfo)
    + [XRRMonitorInfo](#XRRMonitorInfo)
    + [XRROutputInfo](#XRROutputInfo)
    + [XRRScreenResources](#XRRScreenResources)
    + [XRRScreenSize](#XRRScreenSize)
    + [XRectangle](#XRectangle)
    + [XReparentEvent](#XReparentEvent)
    + [XResizeRequestEvent](#XResizeRequestEvent)
    + [XSegment](#XSegment)
    + [XSelectionClearEvent](#XSelectionClearEvent)
    + [XSelectionEvent](#XSelectionEvent)
    + [XSelectionRequestEvent](#XSelectionRequestEvent)
    + [XServerInterpretedAddress](#XServerInterpretedAddress)
    + [XSetWindowAttributes](#XSetWindowAttributes)
    + [XSizeHints](#XSizeHints)
    + [XStandardColormap](#XStandardColormap)
    + [XTextItem](#XTextItem)
    + [XTextItem16](#XTextItem16)
    + [XTextProperty](#XTextProperty)
    + [XTimeCoord](#XTimeCoord)
    + [XUnmapEvent](#XUnmapEvent)
    + [XVaNestedList](#XVaNestedList)
    + [XVisibilityEvent](#XVisibilityEvent)
    + [XVisualInfo](#XVisualInfo)
    + [XWMHints](#XWMHints)
    + [XWindowAttributes](#XWindowAttributes)
    + [XWindowChanges](#XWindowChanges)
    + [XcmsCCC](#XcmsCCC)
    + [XcmsCCCRec](#XcmsCCCRec)
    + [XcmsCIELab](#XcmsCIELab)
    + [XcmsCIELuv](#XcmsCIELuv)
    + [XcmsCIEXYZ](#XcmsCIEXYZ)
    + [XcmsCIEuvY](#XcmsCIEuvY)
    + [XcmsCIExyY](#XcmsCIExyY)
    + [XcmsColor](#XcmsColor)
    + [XcmsColorFormat](#XcmsColorFormat)
    + [XcmsColorSpace](#XcmsColorSpace)
    + [XcmsCompressionProc](#XcmsCompressionProc)
    + [XcmsConversionProc](#XcmsConversionProc)
    + [XcmsDDConversionProc](#XcmsDDConversionProc)
    + [XcmsDIConversionProc](#XcmsDIConversionProc)
    + [XcmsFloat](#XcmsFloat)
    + [XcmsFuncListPtr](#XcmsFuncListPtr)
    + [XcmsFunctionSet](#XcmsFunctionSet)
    + [XcmsPad](#XcmsPad)
    + [XcmsParseStringProc](#XcmsParseStringProc)
    + [XcmsPerScrnInfo](#XcmsPerScrnInfo)
    + [XcmsRGB](#XcmsRGB)
    + [XcmsRGBi](#XcmsRGBi)
    + [XcmsScreenFreeProc](#XcmsScreenFreeProc)
    + [XcmsScreenInitProc](#XcmsScreenInitProc)
    + [XcmsTekHVC](#XcmsTekHVC)
    + [XcmsWhiteAdjustProc](#XcmsWhiteAdjustProc)
    + [XkbAccessXNotifyEvent](#XkbAccessXNotifyEvent)
    + [XkbAction](#XkbAction)
    + [XkbActionMessageEvent](#XkbActionMessageEvent)
    + [XkbAnyAction](#XkbAnyAction)
    + [XkbAnyDoodadPtr](#XkbAnyDoodadPtr)
    + [XkbAnyDoodadRec](#XkbAnyDoodadRec)
    + [XkbAnyEvent](#XkbAnyEvent)
    + [XkbBehavior](#XkbBehavior)
    + [XkbBellNotifyEvent](#XkbBellNotifyEvent)
    + [XkbBoundsPtr](#XkbBoundsPtr)
    + [XkbBoundsRec](#XkbBoundsRec)
    + [XkbClientMapPtr](#XkbClientMapPtr)
    + [XkbClientMapRec](#XkbClientMapRec)
    + [XkbColorPtr](#XkbColorPtr)
    + [XkbColorRec](#XkbColorRec)
    + [XkbCompatMapNotifyEvent](#XkbCompatMapNotifyEvent)
    + [XkbCompatMapPtr](#XkbCompatMapPtr)
    + [XkbCompatMapRec](#XkbCompatMapRec)
    + [XkbControlsNotifyEvent](#XkbControlsNotifyEvent)
    + [XkbControlsPtr](#XkbControlsPtr)
    + [XkbControlsRec](#XkbControlsRec)
    + [XkbCtrlsAction](#XkbCtrlsAction)
    + [XkbDescPtr](#XkbDescPtr)
    + [XkbDescRec](#XkbDescRec)
    + [XkbDeviceBtnAction](#XkbDeviceBtnAction)
    + [XkbDeviceValuatorAction](#XkbDeviceValuatorAction)
    + [XkbDoodadPtr](#XkbDoodadPtr)
    + [XkbDoodadRec](#XkbDoodadRec)
    + [XkbEvent](#XkbEvent)
    + [XkbEventMask](#XkbEventMask)
    + [XkbEventType](#XkbEventType)
    + [XkbExtensionDeviceNotifyEvent](#XkbExtensionDeviceNotifyEvent)
    + [XkbGeometryPtr](#XkbGeometryPtr)
    + [XkbGeometryRec](#XkbGeometryRec)
    + [XkbGroupAction](#XkbGroupAction)
    + [XkbISOAction](#XkbISOAction)
    + [XkbIndicatorDoodadPtr](#XkbIndicatorDoodadPtr)
    + [XkbIndicatorDoodadRec](#XkbIndicatorDoodadRec)
    + [XkbIndicatorMapPtr](#XkbIndicatorMapPtr)
    + [XkbIndicatorMapRec](#XkbIndicatorMapRec)
    + [XkbIndicatorNotifyEvent](#XkbIndicatorNotifyEvent)
    + [XkbIndicatorPtr](#XkbIndicatorPtr)
    + [XkbIndicatorRec](#XkbIndicatorRec)
    + [XkbInfoMask](#XkbInfoMask)
    + [XkbInfoMaskBits](#XkbInfoMaskBits)
    + [XkbKTMapEntryPtr](#XkbKTMapEntryPtr)
    + [XkbKTMapEntryRec](#XkbKTMapEntryRec)
    + [XkbKeyAliasPtr](#XkbKeyAliasPtr)
    + [XkbKeyAliasRec](#XkbKeyAliasRec)
    + [XkbKeyNamePtr](#XkbKeyNamePtr)
    + [XkbKeyNameRec](#XkbKeyNameRec)
    + [XkbKeyPtr](#XkbKeyPtr)
    + [XkbKeyRec](#XkbKeyRec)
    + [XkbKeyTypePtr](#XkbKeyTypePtr)
    + [XkbKeyTypeRec](#XkbKeyTypeRec)
    + [XkbLogoDoodadPtr](#XkbLogoDoodadPtr)
    + [XkbLogoDoodadRec](#XkbLogoDoodadRec)
    + [XkbMapNotifyEvent](#XkbMapNotifyEvent)
    + [XkbMessageAction](#XkbMessageAction)
    + [XkbModAction](#XkbModAction)
    + [XkbModsPtr](#XkbModsPtr)
    + [XkbModsRec](#XkbModsRec)
    + [XkbNamesNotifyEvent](#XkbNamesNotifyEvent)
    + [XkbNamesPtr](#XkbNamesPtr)
    + [XkbNamesRec](#XkbNamesRec)
    + [XkbNewKeyboardNotifyEvent](#XkbNewKeyboardNotifyEvent)
    + [XkbOutlinePtr](#XkbOutlinePtr)
    + [XkbOutlineRec](#XkbOutlineRec)
    + [XkbOverlayKeyPtr](#XkbOverlayKeyPtr)
    + [XkbOverlayKeyRec](#XkbOverlayKeyRec)
    + [XkbOverlayPtr](#XkbOverlayPtr)
    + [XkbOverlayRec](#XkbOverlayRec)
    + [XkbOverlayRowPtr](#XkbOverlayRowPtr)
    + [XkbOverlayRowRec](#XkbOverlayRowRec)
    + [XkbPointPtr](#XkbPointPtr)
    + [XkbPointRec](#XkbPointRec)
    + [XkbPropertyPtr](#XkbPropertyPtr)
    + [XkbPropertyRec](#XkbPropertyRec)
    + [XkbPtrAction](#XkbPtrAction)
    + [XkbPtrBtnAction](#XkbPtrBtnAction)
    + [XkbPtrDfltAction](#XkbPtrDfltAction)
    + [XkbRedirectKeyAction](#XkbRedirectKeyAction)
    + [XkbRowPtr](#XkbRowPtr)
    + [XkbRowRec](#XkbRowRec)
    + [XkbSectionPtr](#XkbSectionPtr)
    + [XkbSectionRec](#XkbSectionRec)
    + [XkbServerMapPtr](#XkbServerMapPtr)
    + [XkbServerMapRec](#XkbServerMapRec)
    + [XkbShapeDoodadPtr](#XkbShapeDoodadPtr)
    + [XkbShapeDoodadRec](#XkbShapeDoodadRec)
    + [XkbShapePtr](#XkbShapePtr)
    + [XkbShapeRec](#XkbShapeRec)
    + [XkbStateNotifyEvent](#XkbStateNotifyEvent)
    + [XkbStatePtr](#XkbStatePtr)
    + [XkbStateRec](#XkbStateRec)
    + [XkbSwitchScreenAction](#XkbSwitchScreenAction)
    + [XkbSymInterpretPtr](#XkbSymInterpretPtr)
    + [XkbSymInterpretRec](#XkbSymInterpretRec)
    + [XkbSymMapPtr](#XkbSymMapPtr)
    + [XkbSymMapRec](#XkbSymMapRec)
    + [XkbTextDoodadPtr](#XkbTextDoodadPtr)
    + [XkbTextDoodadRec](#XkbTextDoodadRec)
    + [XmbTextItem](#XmbTextItem)
    + [XrmBinding](#XrmBinding)
    + [XrmBindingList](#XrmBindingList)
    + [XrmClass](#XrmClass)
    + [XrmClassList](#XrmClassList)
    + [XrmDatabase](#XrmDatabase)
    + [XrmHashBucket](#XrmHashBucket)
    + [XrmHashTable](#XrmHashTable)
    + [XrmName](#XrmName)
    + [XrmNameList](#XrmNameList)
    + [XrmOptionDescList](#XrmOptionDescList)
    + [XrmOptionDescRec](#XrmOptionDescRec)
    + [XrmOptionKind](#XrmOptionKind)
    + [XrmQuark](#XrmQuark)
    + [XrmQuarkList](#XrmQuarkList)
    + [XrmRepresentation](#XrmRepresentation)
    + [XrmSearchList](#XrmSearchList)
    + [XrmString](#XrmString)
    + [XrmValue](#XrmValue)
    + [XrmValuePtr](#XrmValuePtr)
    + [XwcTextItem](#XwcTextItem)
  * [Constants](#pkg-Constants)
    + [AllHints](#AllHints)
    + [AllTemporary](#AllTemporary)
    + [AnyButton](#AnyButton)
    + [AnyKey](#AnyKey)
    + [AnyPropertyType](#AnyPropertyType)
    + [CopyFromParent](#CopyFromParent)
    + [CurrentTime](#CurrentTime)
    + [IS\_SUPPORTED](#IS_SUPPORTED)
    + [InputFocus](#InputFocus)
    + [NoSymbol](#NoSymbol)
    + [None](#None)
    + [ParentRelative](#ParentRelative)
    + [PointerRoot](#PointerRoot)
    + [PointerWindow](#PointerWindow)
    + [PropModeAppend](#PropModeAppend)
    + [PropModePrepend](#PropModePrepend)
    + [PropModeReplace](#PropModeReplace)
    + [VisualAllMask](#VisualAllMask)
    + [VisualNoMask](#VisualNoMask)
    + [XA\_ATOM](#XA_ATOM)
    + [XA\_WM\_CLASS](#XA_WM_CLASS)
    + [XA\_WM\_CLIENT\_MACHINE](#XA_WM_CLIENT_MACHINE)
    + [XA\_WM\_COMMAND](#XA_WM_COMMAND)
    + [XA\_WM\_HINTS](#XA_WM_HINTS)
    + [XA\_WM\_ICON\_NAME](#XA_WM_ICON_NAME)
    + [XA\_WM\_ICON\_SIZE](#XA_WM_ICON_SIZE)
    + [XA\_WM\_NAME](#XA_WM_NAME)
    + [XA\_WM\_NORMAL\_HINTS](#XA_WM_NORMAL_HINTS)
    + [XA\_WM\_SIZE\_HINTS](#XA_WM_SIZE_HINTS)
    + [XA\_WM\_TRANSIENT\_FOR](#XA_WM_TRANSIENT_FOR)
    + [XA\_WM\_ZOOM\_HINTS](#XA_WM_ZOOM_HINTS)
    + [XIAllDevices](#XIAllDevices)
    + [XIAllMasterDevices](#XIAllMasterDevices)
    + [XIMPreeditNothing](#XIMPreeditNothing)
    + [XIMStatusNothing](#XIMStatusNothing)
    + [XNClientWindow](#XNClientWindow)
    + [XNFocusWindow](#XNFocusWindow)
    + [XNInputStyle](#XNInputStyle)
    + [XNPreeditAttributes](#XNPreeditAttributes)
    + [XNSpotLocation](#XNSpotLocation)
    + [XkbActionMessageLength](#XkbActionMessageLength)
    + [XkbAllClientInfoMask](#XkbAllClientInfoMask)
    + [XkbAllEventsMask](#XkbAllEventsMask)
    + [XkbAllServerInfoMask](#XkbAllServerInfoMask)
    + [XkbAnyActionDataSize](#XkbAnyActionDataSize)
    + [XkbKeyNameLength](#XkbKeyNameLength)
    + [XkbMaxKeyCount](#XkbMaxKeyCount)
    + [XkbMaxLegalKeyCode](#XkbMaxLegalKeyCode)
    + [XkbMinLegalKeyCode](#XkbMinLegalKeyCode)
    + [XkbNumIndicators](#XkbNumIndicators)
    + [XkbNumKbdGroups](#XkbNumKbdGroups)
    + [XkbNumVirtualMods](#XkbNumVirtualMods)
    + [XkbPerKeyBitArraySize](#XkbPerKeyBitArraySize)
    + [XkbUseCoreKbd](#XkbUseCoreKbd)
  * [Procedures](#pkg-Procedures)
    + [ActivateScreenSaver](#ActivateScreenSaver)
    + [AddConnectionWatch](#AddConnectionWatch)
    + [AddHost](#AddHost)
    + [AddHosts](#AddHosts)
    + [AddPixel](#AddPixel)
    + [AddToSaveSet](#AddToSaveSet)
    + [AllocClassHint](#AllocClassHint)
    + [AllocColor](#AllocColor)
    + [AllocColorCells](#AllocColorCells)
    + [AllocColorPlanes](#AllocColorPlanes)
    + [AllocIconSize](#AllocIconSize)
    + [AllocNamedColor](#AllocNamedColor)
    + [AllocSizeHints](#AllocSizeHints)
    + [AllocWMHints](#AllocWMHints)
    + [AllowEvents](#AllowEvents)
    + [AutoRepeatOff](#AutoRepeatOff)
    + [AutoRepeatOn](#AutoRepeatOn)
    + [Bell](#Bell)
    + [BitmapBitOrder](#BitmapBitOrder)
    + [BitmapPad](#BitmapPad)
    + [BitmapUnit](#BitmapUnit)
    + [BlackPixel](#BlackPixel)
    + [BlackPixelsOfScreen](#BlackPixelsOfScreen)
    + [CellsOfScreen](#CellsOfScreen)
    + [ChangeActivePointerGrab](#ChangeActivePointerGrab)
    + [ChangeGC](#ChangeGC)
    + [ChangeKeyboardControl](#ChangeKeyboardControl)
    + [ChangeKeyboardMapping](#ChangeKeyboardMapping)
    + [ChangePointerControl](#ChangePointerControl)
    + [ChangeProperty](#ChangeProperty)
    + [ChangeSaveSet](#ChangeSaveSet)
    + [ChangeWindowAttributes](#ChangeWindowAttributes)
    + [CheckIfEvent](#CheckIfEvent)
    + [CheckMaskEvent](#CheckMaskEvent)
    + [CheckTypedEvent](#CheckTypedEvent)
    + [CheckTypedWindowEvent](#CheckTypedWindowEvent)
    + [CheckWindowEvent](#CheckWindowEvent)
    + [CirculateSubwindows](#CirculateSubwindows)
    + [CirculateSubwindowsDown](#CirculateSubwindowsDown)
    + [CirculateSubwindowsUp](#CirculateSubwindowsUp)
    + [ClearArea](#ClearArea)
    + [ClearWindow](#ClearWindow)
    + [ClipBox](#ClipBox)
    + [CloseDisplay](#CloseDisplay)
    + [ConfigureWindow](#ConfigureWindow)
    + [ConnectionNumber](#ConnectionNumber)
    + [ConvertCase](#ConvertCase)
    + [ConvertSelection](#ConvertSelection)
    + [CopyArea](#CopyArea)
    + [CopyColormapAndFree](#CopyColormapAndFree)
    + [CopyGC](#CopyGC)
    + [CopyPlane](#CopyPlane)
    + [CreateColormap](#CreateColormap)
    + [CreateFontCursor](#CreateFontCursor)
    + [CreateGC](#CreateGC)
    + [CreateGlyphCursor](#CreateGlyphCursor)
    + [CreateIC](#CreateIC)
    + [CreateImage](#CreateImage)
    + [CreatePixmap](#CreatePixmap)
    + [CreatePixmapCursor](#CreatePixmapCursor)
    + [CreateRegion](#CreateRegion)
    + [CreateSimpleWindow](#CreateSimpleWindow)
    + [CreateWindow](#CreateWindow)
    + [DefaultColormap](#DefaultColormap)
    + [DefaultColormapOfScreen](#DefaultColormapOfScreen)
    + [DefaultDepth](#DefaultDepth)
    + [DefaultDepthOfScreen](#DefaultDepthOfScreen)
    + [DefaultGC](#DefaultGC)
    + [DefaultGCOfScreen](#DefaultGCOfScreen)
    + [DefaultRootWindow](#DefaultRootWindow)
    + [DefaultScreen](#DefaultScreen)
    + [DefaultScreenOfDisplay](#DefaultScreenOfDisplay)
    + [DefaultVisual](#DefaultVisual)
    + [DefaultVisualOfScreen](#DefaultVisualOfScreen)
    + [DefineCursor](#DefineCursor)
    + [DeleteModifiermapEntry](#DeleteModifiermapEntry)
    + [DeleteProperty](#DeleteProperty)
    + [DestroyImage](#DestroyImage)
    + [DestroyRegion](#DestroyRegion)
    + [DestroySubwindows](#DestroySubwindows)
    + [DestroyWindow](#DestroyWindow)
    + [DisableAccessControl](#DisableAccessControl)
    + [DisplayCells](#DisplayCells)
    + [DisplayHeight](#DisplayHeight)
    + [DisplayHeightMM](#DisplayHeightMM)
    + [DisplayKeycodes](#DisplayKeycodes)
    + [DisplayMotionBufferSize](#DisplayMotionBufferSize)
    + [DisplayName](#DisplayName)
    + [DisplayOfScreen](#DisplayOfScreen)
    + [DisplayPlanes](#DisplayPlanes)
    + [DisplayString](#DisplayString)
    + [DisplayWidth](#DisplayWidth)
    + [DisplayWidthMM](#DisplayWidthMM)
    + [DoesBackingStore](#DoesBackingStore)
    + [DoesSaveUnders](#DoesSaveUnders)
    + [DrawArc](#DrawArc)
    + [DrawArcs](#DrawArcs)
    + [DrawImageString](#DrawImageString)
    + [DrawImageString16](#DrawImageString16)
    + [DrawLine](#DrawLine)
    + [DrawLines](#DrawLines)
    + [DrawPoint](#DrawPoint)
    + [DrawPoints](#DrawPoints)
    + [DrawRectangle](#DrawRectangle)
    + [DrawRectangles](#DrawRectangles)
    + [DrawSegments](#DrawSegments)
    + [DrawString](#DrawString)
    + [DrawString16](#DrawString16)
    + [DrawText](#DrawText)
    + [DrawText16](#DrawText16)
    + [EmptyRegion](#EmptyRegion)
    + [EnableAccessControl](#EnableAccessControl)
    + [EqualRegion](#EqualRegion)
    + [EventMaskOfScreen](#EventMaskOfScreen)
    + [EventsQueued](#EventsQueued)
    + [ExtendedMaxRequestSize](#ExtendedMaxRequestSize)
    + [FetchBuffer](#FetchBuffer)
    + [FetchBytes](#FetchBytes)
    + [FetchName](#FetchName)
    + [FillArc](#FillArc)
    + [FillArcs](#FillArcs)
    + [FillPolygon](#FillPolygon)
    + [FillRectangle](#FillRectangle)
    + [FillRectangles](#FillRectangles)
    + [FilterEvent](#FilterEvent)
    + [Flush](#Flush)
    + [FlushGC](#FlushGC)
    + [ForceScreenSaver](#ForceScreenSaver)
    + [Free](#Free)
    + [FreeColormap](#FreeColormap)
    + [FreeColors](#FreeColors)
    + [FreeCursor](#FreeCursor)
    + [FreeEventData](#FreeEventData)
    + [FreeFont](#FreeFont)
    + [FreeFontInfo](#FreeFontInfo)
    + [FreeFontNames](#FreeFontNames)
    + [FreeFontPath](#FreeFontPath)
    + [FreeGC](#FreeGC)
    + [FreeModifiermap](#FreeModifiermap)
    + [FreePixmap](#FreePixmap)
    + [GCContextFromGC](#GCContextFromGC)
    + [GetAtomName](#GetAtomName)
    + [GetAtomNames](#GetAtomNames)
    + [GetClassHint](#GetClassHint)
    + [GetCommand](#GetCommand)
    + [GetErrorDatabaseText](#GetErrorDatabaseText)
    + [GetErrorText](#GetErrorText)
    + [GetEventData](#GetEventData)
    + [GetFontPath](#GetFontPath)
    + [GetFontProperty](#GetFontProperty)
    + [GetGCValues](#GetGCValues)
    + [GetGeometry](#GetGeometry)
    + [GetIconName](#GetIconName)
    + [GetIconSizes](#GetIconSizes)
    + [GetImage](#GetImage)
    + [GetInputFocus](#GetInputFocus)
    + [GetKeyboardControl](#GetKeyboardControl)
    + [GetKeyboardMapping](#GetKeyboardMapping)
    + [GetModifierMapping](#GetModifierMapping)
    + [GetMotionEvents](#GetMotionEvents)
    + [GetPixel](#GetPixel)
    + [GetPointerControl](#GetPointerControl)
    + [GetPointerMapping](#GetPointerMapping)
    + [GetRGBColormaps](#GetRGBColormaps)
    + [GetScreenSaver](#GetScreenSaver)
    + [GetSelectionOwner](#GetSelectionOwner)
    + [GetSubImage](#GetSubImage)
    + [GetTextProperty](#GetTextProperty)
    + [GetTransientForHint](#GetTransientForHint)
    + [GetVisualInfo](#GetVisualInfo)
    + [GetWMClientMachine](#GetWMClientMachine)
    + [GetWMColormapWindows](#GetWMColormapWindows)
    + [GetWMHints](#GetWMHints)
    + [GetWMIconName](#GetWMIconName)
    + [GetWMName](#GetWMName)
    + [GetWMNormalHints](#GetWMNormalHints)
    + [GetWMProtocols](#GetWMProtocols)
    + [GetWMSizeHints](#GetWMSizeHints)
    + [GetWindowAttributes](#GetWindowAttributes)
    + [GetWindowProperty](#GetWindowProperty)
    + [GrabButton](#GrabButton)
    + [GrabKey](#GrabKey)
    + [GrabKeyboard](#GrabKeyboard)
    + [GrabPointer](#GrabPointer)
    + [GrabServer](#GrabServer)
    + [HeightMMOfScreen](#HeightMMOfScreen)
    + [HeightOfScreen](#HeightOfScreen)
    + [HideCursor](#HideCursor)
    + [IconifyWindow](#IconifyWindow)
    + [IfEvent](#IfEvent)
    + [ImageByteOrder](#ImageByteOrder)
    + [InitImage](#InitImage)
    + [InitThreads](#InitThreads)
    + [InsertModifiermapEntry](#InsertModifiermapEntry)
    + [InstallColormap](#InstallColormap)
    + [InternAtom](#InternAtom)
    + [InternAtoms](#InternAtoms)
    + [InternalConnectionNumbers](#InternalConnectionNumbers)
    + [IntersectRegion](#IntersectRegion)
    + [KeycodeToKeysym](#KeycodeToKeysym)
    + [KeysymToKeycode](#KeysymToKeycode)
    + [KeysymToString](#KeysymToString)
    + [KillClient](#KillClient)
    + [LastKnownRequestProcessed](#LastKnownRequestProcessed)
    + [ListDepths](#ListDepths)
    + [ListFonts](#ListFonts)
    + [ListFontsWithInfo](#ListFontsWithInfo)
    + [ListHosts](#ListHosts)
    + [ListInstalledColormaps](#ListInstalledColormaps)
    + [ListPixmapFormats](#ListPixmapFormats)
    + [ListProperties](#ListProperties)
    + [LoadFont](#LoadFont)
    + [LoadQueryFont](#LoadQueryFont)
    + [LockDisplay](#LockDisplay)
    + [LookupColor](#LookupColor)
    + [LookupKeysym](#LookupKeysym)
    + [LookupString](#LookupString)
    + [LowerWindow](#LowerWindow)
    + [MapRaised](#MapRaised)
    + [MapSubwindows](#MapSubwindows)
    + [MapWindow](#MapWindow)
    + [MaskEvent](#MaskEvent)
    + [MatchVisualInfo](#MatchVisualInfo)
    + [MaxCmapsOfScreen](#MaxCmapsOfScreen)
    + [MaxRequestSize](#MaxRequestSize)
    + [MinCmapsOfScreen](#MinCmapsOfScreen)
    + [MoveResizeWindow](#MoveResizeWindow)
    + [MoveWindow](#MoveWindow)
    + [NewModifiermap](#NewModifiermap)
    + [NextEvent](#NextEvent)
    + [NextRequest](#NextRequest)
    + [NoOp](#NoOp)
    + [OffsetRegion](#OffsetRegion)
    + [OpenDisplay](#OpenDisplay)
    + [OpenIM](#OpenIM)
    + [ParseGeometry](#ParseGeometry)
    + [PeekEvent](#PeekEvent)
    + [PeekIfEvent](#PeekIfEvent)
    + [Pending](#Pending)
    + [Permalloc](#Permalloc)
    + [PlanesOfScreen](#PlanesOfScreen)
    + [PointInRegion](#PointInRegion)
    + [PolygonRegion](#PolygonRegion)
    + [ProcessInternalConnections](#ProcessInternalConnections)
    + [ProtocolRevision](#ProtocolRevision)
    + [ProtocolVersion](#ProtocolVersion)
    + [PutBackEvent](#PutBackEvent)
    + [PutImage](#PutImage)
    + [PutPixel](#PutPixel)
    + [QLength](#QLength)
    + [QueryBestCursor](#QueryBestCursor)
    + [QueryBestSize](#QueryBestSize)
    + [QueryBestStripple](#QueryBestStripple)
    + [QueryBestTile](#QueryBestTile)
    + [QueryColor](#QueryColor)
    + [QueryColors](#QueryColors)
    + [QueryExtension](#QueryExtension)
    + [QueryFont](#QueryFont)
    + [QueryKeymap](#QueryKeymap)
    + [QueryPointer](#QueryPointer)
    + [QueryTextExtents](#QueryTextExtents)
    + [QueryTextExtents16](#QueryTextExtents16)
    + [QueryTree](#QueryTree)
    + [RaiseWindow](#RaiseWindow)
    + [RebindKeysym](#RebindKeysym)
    + [RecolorCursor](#RecolorCursor)
    + [ReconfigureWMWindow](#ReconfigureWMWindow)
    + [RectInRegion](#RectInRegion)
    + [RefreshKeyboardMapping](#RefreshKeyboardMapping)
    + [RemoveConnectionWatch](#RemoveConnectionWatch)
    + [RemoveFromSaveSet](#RemoveFromSaveSet)
    + [RemoveHost](#RemoveHost)
    + [RemoveHosts](#RemoveHosts)
    + [ReparentWindow](#ReparentWindow)
    + [ResetScreenSaver](#ResetScreenSaver)
    + [ResizeWindow](#ResizeWindow)
    + [ResourceManagerString](#ResourceManagerString)
    + [RestackWindows](#RestackWindows)
    + [RootWindow](#RootWindow)
    + [RootWindowOfScreen](#RootWindowOfScreen)
    + [RotateWindowProperties](#RotateWindowProperties)
    + [ScreenCount](#ScreenCount)
    + [ScreenNumberOfScreen](#ScreenNumberOfScreen)
    + [ScreenOfDisplay](#ScreenOfDisplay)
    + [SelectInput](#SelectInput)
    + [SendEvent](#SendEvent)
    + [ServerVendor](#ServerVendor)
    + [SetAccessControl](#SetAccessControl)
    + [SetAfterFunction](#SetAfterFunction)
    + [SetArcMode](#SetArcMode)
    + [SetBackground](#SetBackground)
    + [SetClassHint](#SetClassHint)
    + [SetClipMask](#SetClipMask)
    + [SetClipOrigin](#SetClipOrigin)
    + [SetClipRectangles](#SetClipRectangles)
    + [SetCloseDownMode](#SetCloseDownMode)
    + [SetCommand](#SetCommand)
    + [SetDashes](#SetDashes)
    + [SetErrorHandler](#SetErrorHandler)
    + [SetFillRule](#SetFillRule)
    + [SetFillStyle](#SetFillStyle)
    + [SetFont](#SetFont)
    + [SetFontPath](#SetFontPath)
    + [SetForeground](#SetForeground)
    + [SetFunction](#SetFunction)
    + [SetGraphicsExposures](#SetGraphicsExposures)
    + [SetICFocus](#SetICFocus)
    + [SetICValues](#SetICValues)
    + [SetIOErrorHandler](#SetIOErrorHandler)
    + [SetIconName](#SetIconName)
    + [SetIconSizes](#SetIconSizes)
    + [SetInputFocus](#SetInputFocus)
    + [SetLineAttributes](#SetLineAttributes)
    + [SetLocaleModifiers](#SetLocaleModifiers)
    + [SetModifierMapping](#SetModifierMapping)
    + [SetPlaneMask](#SetPlaneMask)
    + [SetPointerMapping](#SetPointerMapping)
    + [SetRGBColormaps](#SetRGBColormaps)
    + [SetRegion](#SetRegion)
    + [SetScreenSaver](#SetScreenSaver)
    + [SetSelectionOwner](#SetSelectionOwner)
    + [SetState](#SetState)
    + [SetStripple](#SetStripple)
    + [SetSubwindowMode](#SetSubwindowMode)
    + [SetTSOrigin](#SetTSOrigin)
    + [SetTextProperty](#SetTextProperty)
    + [SetTile](#SetTile)
    + [SetTransientForHint](#SetTransientForHint)
    + [SetWMClientMachine](#SetWMClientMachine)
    + [SetWMColormapWindows](#SetWMColormapWindows)
    + [SetWMHints](#SetWMHints)
    + [SetWMIconName](#SetWMIconName)
    + [SetWMName](#SetWMName)
    + [SetWMNormalHints](#SetWMNormalHints)
    + [SetWMProperties](#SetWMProperties)
    + [SetWMProtocols](#SetWMProtocols)
    + [SetWMSizeHints](#SetWMSizeHints)
    + [SetWindowBackground](#SetWindowBackground)
    + [SetWindowBackgroundPixmap](#SetWindowBackgroundPixmap)
    + [SetWindowBorder](#SetWindowBorder)
    + [SetWindowBorderWidth](#SetWindowBorderWidth)
    + [SetWindowColormap](#SetWindowColormap)
    + [ShowCursor](#ShowCursor)
    + [ShrinkRegion](#ShrinkRegion)
    + [StoreBuffer](#StoreBuffer)
    + [StoreBytes](#StoreBytes)
    + [StoreColor](#StoreColor)
    + [StoreColors](#StoreColors)
    + [StoreName](#StoreName)
    + [StoreNamedColor](#StoreNamedColor)
    + [StringToKeysym](#StringToKeysym)
    + [SubImage](#SubImage)
    + [SubtractRegion](#SubtractRegion)
    + [Sync](#Sync)
    + [Synchronize](#Synchronize)
    + [TextExtents](#TextExtents)
    + [TextExtents16](#TextExtents16)
    + [TextWidth](#TextWidth)
    + [TextWidth16](#TextWidth16)
    + [TranslateCoordinates](#TranslateCoordinates)
    + [UndefineCursor](#UndefineCursor)
    + [UngrabButton](#UngrabButton)
    + [UngrabKey](#UngrabKey)
    + [UngrabKeyboard](#UngrabKeyboard)
    + [UngrabPointer](#UngrabPointer)
    + [UngrabServer](#UngrabServer)
    + [UninstallColormap](#UninstallColormap)
    + [UnionRectWithRegion](#UnionRectWithRegion)
    + [UnionRegion](#UnionRegion)
    + [UnloadFont](#UnloadFont)
    + [UnlockDisplay](#UnlockDisplay)
    + [UnmapSubwindows](#UnmapSubwindows)
    + [UnmapWindow](#UnmapWindow)
    + [UnsetICFocus](#UnsetICFocus)
    + [VaCreateNestedList](#VaCreateNestedList)
    + [VendorRelease](#VendorRelease)
    + [VisualIDFromVisual](#VisualIDFromVisual)
    + [WMGeometry](#WMGeometry)
    + [WarpPointer](#WarpPointer)
    + [WhitePixel](#WhitePixel)
    + [WhitePixelsOfScreen](#WhitePixelsOfScreen)
    + [WidthMMOfScreen](#WidthMMOfScreen)
    + [WidthOfScreen](#WidthOfScreen)
    + [WindowEvent](#WindowEvent)
    + [WithdrawWindow](#WithdrawWindow)
    + [XIMaskIsSet](#XIMaskIsSet)
    + [XIQueryVersion](#XIQueryVersion)
    + [XISelectEvents](#XISelectEvents)
    + [XISetMask](#XISetMask)
    + [XRRFreeCrtcInfo](#XRRFreeCrtcInfo)
    + [XRRFreeOutputInfo](#XRRFreeOutputInfo)
    + [XRRFreeScreenResources](#XRRFreeScreenResources)
    + [XRRGetCrtcInfo](#XRRGetCrtcInfo)
    + [XRRGetMonitors](#XRRGetMonitors)
    + [XRRGetOutputInfo](#XRRGetOutputInfo)
    + [XRRGetScreenResources](#XRRGetScreenResources)
    + [XRRSizes](#XRRSizes)
    + [XcmsAllocColor](#XcmsAllocColor)
    + [XcmsAllocNamedColor](#XcmsAllocNamedColor)
    + [XcmsCCCOfColormap](#XcmsCCCOfColormap)
    + [XcmsCIELabClipL](#XcmsCIELabClipL)
    + [XcmsCIELabClipLab](#XcmsCIELabClipLab)
    + [XcmsCIELabClipab](#XcmsCIELabClipab)
    + [XcmsCIELabQueryMaxC](#XcmsCIELabQueryMaxC)
    + [XcmsCIELabQueryMaxL](#XcmsCIELabQueryMaxL)
    + [XcmsCIELabQueryMaxLC](#XcmsCIELabQueryMaxLC)
    + [XcmsCIELabQueryMinL](#XcmsCIELabQueryMinL)
    + [XcmsCIELabWhiteShiftColors](#XcmsCIELabWhiteShiftColors)
    + [XcmsCIELuvClipL](#XcmsCIELuvClipL)
    + [XcmsCIELuvClipLuv](#XcmsCIELuvClipLuv)
    + [XcmsCIELuvClipuv](#XcmsCIELuvClipuv)
    + [XcmsCIELuvQueryMaxC](#XcmsCIELuvQueryMaxC)
    + [XcmsCIELuvQueryMaxL](#XcmsCIELuvQueryMaxL)
    + [XcmsCIELuvQueryMaxLC](#XcmsCIELuvQueryMaxLC)
    + [XcmsCIELuvQueryMinL](#XcmsCIELuvQueryMinL)
    + [XcmsCIELuvWhiteShiftColors](#XcmsCIELuvWhiteShiftColors)
    + [XcmsClientWhitePointOfCCC](#XcmsClientWhitePointOfCCC)
    + [XcmsConvertColors](#XcmsConvertColors)
    + [XcmsCreateCCC](#XcmsCreateCCC)
    + [XcmsDefaultCCC](#XcmsDefaultCCC)
    + [XcmsDisplayOfCCC](#XcmsDisplayOfCCC)
    + [XcmsFreeCCC](#XcmsFreeCCC)
    + [XcmsLookupColor](#XcmsLookupColor)
    + [XcmsQueryBlack](#XcmsQueryBlack)
    + [XcmsQueryBlue](#XcmsQueryBlue)
    + [XcmsQueryColor](#XcmsQueryColor)
    + [XcmsQueryColors](#XcmsQueryColors)
    + [XcmsQueryGreen](#XcmsQueryGreen)
    + [XcmsQueryRed](#XcmsQueryRed)
    + [XcmsQueryWhite](#XcmsQueryWhite)
    + [XcmsScreenNumberOfCCC](#XcmsScreenNumberOfCCC)
    + [XcmsScreenWhitePointOfCCC](#XcmsScreenWhitePointOfCCC)
    + [XcmsSetCCCOfColormap](#XcmsSetCCCOfColormap)
    + [XcmsSetCompressionProc](#XcmsSetCompressionProc)
    + [XcmsSetWhiteAdjustProc](#XcmsSetWhiteAdjustProc)
    + [XcmsSetWhitePoint](#XcmsSetWhitePoint)
    + [XcmsStoreColor](#XcmsStoreColor)
    + [XcmsStoreColors](#XcmsStoreColors)
    + [XcmsTekHVCClipC](#XcmsTekHVCClipC)
    + [XcmsTekHVCClipV](#XcmsTekHVCClipV)
    + [XcmsTekHVCClipVC](#XcmsTekHVCClipVC)
    + [XcmsTekHVCQueryMaxC](#XcmsTekHVCQueryMaxC)
    + [XcmsTekHVCQueryMaxV](#XcmsTekHVCQueryMaxV)
    + [XcmsTekHVCQueryMaxVC](#XcmsTekHVCQueryMaxVC)
    + [XcmsTekHVCQueryMaxVSamples](#XcmsTekHVCQueryMaxVSamples)
    + [XcmsTekHVCQueryMinV](#XcmsTekHVCQueryMinV)
    + [XcmsTekHVCWhiteShiftColors](#XcmsTekHVCWhiteShiftColors)
    + [XcmsVisualOfCCC](#XcmsVisualOfCCC)
    + [XkbGetKeySyms](#XkbGetKeySyms)
    + [XkbGetMap](#XkbGetMap)
    + [XkbGetState](#XkbGetState)
    + [XkbGetUpdatedMap](#XkbGetUpdatedMap)
    + [XkbQueryExtension](#XkbQueryExtension)
    + [XkbSelectEvents](#XkbSelectEvents)
    + [XkbSetDetectableAutoRepeat](#XkbSetDetectableAutoRepeat)
    + [XkbUseExtension](#XkbUseExtension)
    + [XorRegion](#XorRegion)
    + [XrmGetResource](#XrmGetResource)
    + [XrmGetStringDatabase](#XrmGetStringDatabase)
    + [XrmInitialize](#XrmInitialize)
    + [Xutf8LookupString](#Xutf8LookupString)
    + [cursorGetDefaultSize](#cursorGetDefaultSize)
    + [cursorGetTheme](#cursorGetTheme)
    + [cursorImageCreate](#cursorImageCreate)
    + [cursorImageDestroy](#cursorImageDestroy)
    + [cursorImageLoadCursor](#cursorImageLoadCursor)
    + [cursorLibraryLoadCursor](#cursorLibraryLoadCursor)
    + [cursorLibraryLoadImage](#cursorLibraryLoadImage)
    + [mbSetWMProperties](#mbSetWMProperties)
    + [utf8SetWMProperties](#utf8SetWMProperties)
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