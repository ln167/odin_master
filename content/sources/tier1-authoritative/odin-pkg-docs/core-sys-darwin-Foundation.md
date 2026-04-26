package sys/darwin/Foundation - pkg.odin-lang.org 






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



Current Package: *[objc\_Foundation](/core/sys/darwin/Foundation)*

  

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
3. [darwin](/core/sys/darwin)
4. [Foundation](/core/sys/darwin/Foundation)

# package core:sys/darwin/Foundation [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation)

#### **Warning:**This was generated for `-target:darwin_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (138)

* [ActivationPolicy](#ActivationPolicy)
* [ActivityOptions](#ActivityOptions)
* [ActivityOptionsBits](#ActivityOptionsBits)
* [Application](#Application)
* [ApplicationDelegate](#ApplicationDelegate)
* [ApplicationDelegateTemplate](#ApplicationDelegateTemplate)
* [ApplicationPresentationOptionFlag](#ApplicationPresentationOptionFlag)
* [ApplicationPresentationOptions](#ApplicationPresentationOptions)
* [ApplicationPrintReply](#ApplicationPrintReply)
* [ApplicationTerminateReply](#ApplicationTerminateReply)
* [Array](#Array)
* [AutoreleasePool](#AutoreleasePool)
* [BOOL](#BOOL)
* [BackingStoreType](#BackingStoreType)
* [BitmapFormatFlag](#BitmapFormatFlag)
* [BitmapFormatFlags](#BitmapFormatFlags)
* [BitmapImageRep](#BitmapImageRep)
* [BitmapInteger](#BitmapInteger)
* [Block](#Block)
* [Bundle](#Bundle)
* [Class](#Class)
* [Class\_VTable\_Info](#Class_VTable_Info)
* [Coder](#Coder)
* [Color](#Color)
* [ColorSpace](#ColorSpace)
* [ComparisonResult](#ComparisonResult)
* [Condition](#Condition)
* [Copying](#Copying)
* [Cursor](#Cursor)
* [Data](#Data)
* [Date](#Date)
* [Depth](#Depth)
* [Dictionary](#Dictionary)
* [Enumerator](#Enumerator)
* [Error](#Error)
* [ErrorDomain](#ErrorDomain)
* [ErrorUserInfoKey](#ErrorUserInfoKey)
* [Event](#Event)
* [EventMask](#EventMask)
* [EventModifierFlag](#EventModifierFlag)
* [EventModifierFlags](#EventModifierFlags)
* [EventPhase](#EventPhase)
* [EventPhaseFlag](#EventPhaseFlag)
* [EventType](#EventType)
* [FastEnumeration](#FastEnumeration)
* [FastEnumerationState](#FastEnumerationState)
* [Float](#Float)
* [IMP](#IMP)
* [Image](#Image)
* [ImageRep](#ImageRep)
* [Integer](#Integer)
* [Ivar](#Ivar)
* [KeyEquivalentModifierFlag](#KeyEquivalentModifierFlag)
* [KeyEquivalentModifierMask](#KeyEquivalentModifierMask)
* [Layer](#Layer)
* [Locking](#Locking)
* [Menu](#Menu)
* [MenuDelegate](#MenuDelegate)
* [MenuItem](#MenuItem)
* [MenuItemCallback](#MenuItemCallback)
* [MenuPresentationStyle](#MenuPresentationStyle)
* [MenuProperties](#MenuProperties)
* [MenuPropertyItem](#MenuPropertyItem)
* [MenuSelectionMode](#MenuSelectionMode)
* [Method](#Method)
* [ModalResponse](#ModalResponse)
* [MutableArray](#MutableArray)
* [Notification](#Notification)
* [NotificationCenter](#NotificationCenter)
* [NotificationName](#NotificationName)
* [Number](#Number)
* [Object](#Object)
* [ObjectProtocol](#ObjectProtocol)
* [Object\_VTable\_Info](#Object_VTable_Info)
* [OpenPanel](#OpenPanel)
* [OperatingSystemVersion](#OperatingSystemVersion)
* [Panel](#Panel)
* [Pasteboard](#Pasteboard)
* [Point](#Point)
* [PointingDeviceType](#PointingDeviceType)
* [ProcessInfo](#ProcessInfo)
* [ProcessInfoThermalState](#ProcessInfoThermalState)
* [Protocol](#Protocol)
* [Range](#Range)
* [Rect](#Rect)
* [Responder](#Responder)
* [RunLoop](#RunLoop)
* [RunLoopMode](#RunLoopMode)
* [RunningApplication](#RunningApplication)
* [SEL](#SEL)
* [SavePanel](#SavePanel)
* [Screen](#Screen)
* [Set](#Set)
* [Size](#Size)
* [String](#String)
* [StringCompareOption](#StringCompareOption)
* [StringCompareOptions](#StringCompareOptions)
* [StringEncoding](#StringEncoding)
* [Subclasser\_Proc](#Subclasser_Proc)
* [TimeInterval](#TimeInterval)
* [Timer](#Timer)
* [Toolbar](#Toolbar)
* [UInteger](#UInteger)
* [URL](#URL)
* [URLRequest](#URLRequest)
* [URLResponse](#URLResponse)
* [UndoManager](#UndoManager)
* [UserActivity](#UserActivity)
* [UserDefaults](#UserDefaults)
* [UserInterfaceLayoutDirection](#UserInterfaceLayoutDirection)
* [Value](#Value)
* [View](#View)
* [Window](#Window)
* [WindowCollectionBehavior](#WindowCollectionBehavior)
* [WindowCollectionBehaviorFlag](#WindowCollectionBehaviorFlag)
* [WindowDelegate](#WindowDelegate)
* [WindowDelegateTemplate](#WindowDelegateTemplate)
* [WindowLevel](#WindowLevel)
* [WindowStyleFlag](#WindowStyleFlag)
* [WindowStyleMask](#WindowStyleMask)
* [WindowTabbingMode](#WindowTabbingMode)
* [Window\_Title\_Visibility](#Window_Title_Visibility)
* [Zone](#Zone)
* [id](#id)
* [kVK](#kVK)
* [objc\_AssociationPolicy](#objc_AssociationPolicy)
* [objc\_cache](#objc_cache)
* [objc\_class\_internals](#objc_class_internals)
* [objc\_ivar](#objc_ivar)
* [objc\_ivar\_list](#objc_ivar_list)
* [objc\_method](#objc_method)
* [objc\_method\_list](#objc_method_list)
* [objc\_object\_internals](#objc_object_internals)
* [objc\_property](#objc_property)
* [objc\_property\_attribute\_t](#objc_property_attribute_t)
* [objc\_property\_t](#objc_property_t)
* [objc\_protocol\_list](#objc_protocol_list)
* [unichar](#unichar)

Constants (66)

* [ApplicationPresentationOptionsAutoHideDock](#ApplicationPresentationOptionsAutoHideDock)
* [ApplicationPresentationOptionsAutoHideMenuBar](#ApplicationPresentationOptionsAutoHideMenuBar)
* [ApplicationPresentationOptionsAutoHideToolbar](#ApplicationPresentationOptionsAutoHideToolbar)
* [ApplicationPresentationOptionsDefault](#ApplicationPresentationOptionsDefault)
* [ApplicationPresentationOptionsDisableAppleMenu](#ApplicationPresentationOptionsDisableAppleMenu)
* [ApplicationPresentationOptionsDisableCursorLocationAssistance](#ApplicationPresentationOptionsDisableCursorLocationAssistance)
* [ApplicationPresentationOptionsDisableForceQuit](#ApplicationPresentationOptionsDisableForceQuit)
* [ApplicationPresentationOptionsDisableHideApplication](#ApplicationPresentationOptionsDisableHideApplication)
* [ApplicationPresentationOptionsDisableMenuBarTransparency](#ApplicationPresentationOptionsDisableMenuBarTransparency)
* [ApplicationPresentationOptionsDisableProcessSwitching](#ApplicationPresentationOptionsDisableProcessSwitching)
* [ApplicationPresentationOptionsDisableSessionTermination](#ApplicationPresentationOptionsDisableSessionTermination)
* [ApplicationPresentationOptionsFullScreen](#ApplicationPresentationOptionsFullScreen)
* [ApplicationPresentationOptionsHideDock](#ApplicationPresentationOptionsHideDock)
* [ApplicationPresentationOptionsHideMenuBar](#ApplicationPresentationOptionsHideMenuBar)
* [EventMaskAny](#EventMaskAny)
* [EventModifierFlagCapsLock](#EventModifierFlagCapsLock)
* [EventModifierFlagCommand](#EventModifierFlagCommand)
* [EventModifierFlagControl](#EventModifierFlagControl)
* [EventModifierFlagDeviceIndependentFlagsMask](#EventModifierFlagDeviceIndependentFlagsMask)
* [EventModifierFlagFunction](#EventModifierFlagFunction)
* [EventModifierFlagHelp](#EventModifierFlagHelp)
* [EventModifierFlagNumericPad](#EventModifierFlagNumericPad)
* [EventModifierFlagOption](#EventModifierFlagOption)
* [EventModifierFlagShift](#EventModifierFlagShift)
* [EventPhaseBegan](#EventPhaseBegan)
* [EventPhaseCancelled](#EventPhaseCancelled)
* [EventPhaseChanged](#EventPhaseChanged)
* [EventPhaseEnded](#EventPhaseEnded)
* [EventPhaseMayBegin](#EventPhaseMayBegin)
* [EventPhaseNone](#EventPhaseNone)
* [EventPhaseStationary](#EventPhaseStationary)
* [IntegerMax](#IntegerMax)
* [Integermin](#Integermin)
* [NO](#NO)
* [NotFound](#NotFound)
* [UIntegerMax](#UIntegerMax)
* [WindowCollectionBehaviorAuxiliary](#WindowCollectionBehaviorAuxiliary)
* [WindowCollectionBehaviorCanJoinAllApplications](#WindowCollectionBehaviorCanJoinAllApplications)
* [WindowCollectionBehaviorCanJoinAllSpaces](#WindowCollectionBehaviorCanJoinAllSpaces)
* [WindowCollectionBehaviorDefault](#WindowCollectionBehaviorDefault)
* [WindowCollectionBehaviorFullScreenAllowsTiling](#WindowCollectionBehaviorFullScreenAllowsTiling)
* [WindowCollectionBehaviorFullScreenAuxiliary](#WindowCollectionBehaviorFullScreenAuxiliary)
* [WindowCollectionBehaviorFullScreenDisallowsTiling](#WindowCollectionBehaviorFullScreenDisallowsTiling)
* [WindowCollectionBehaviorFullScreenNone](#WindowCollectionBehaviorFullScreenNone)
* [WindowCollectionBehaviorFullScreenPrimary](#WindowCollectionBehaviorFullScreenPrimary)
* [WindowCollectionBehaviorIgnoresCycle](#WindowCollectionBehaviorIgnoresCycle)
* [WindowCollectionBehaviorManaged](#WindowCollectionBehaviorManaged)
* [WindowCollectionBehaviorMoveToActiveSpace](#WindowCollectionBehaviorMoveToActiveSpace)
* [WindowCollectionBehaviorParticipatesInCycle](#WindowCollectionBehaviorParticipatesInCycle)
* [WindowCollectionBehaviorPrimary](#WindowCollectionBehaviorPrimary)
* [WindowCollectionBehaviorStationary](#WindowCollectionBehaviorStationary)
* [WindowCollectionBehaviorTransient](#WindowCollectionBehaviorTransient)
* [WindowStyleMaskBorderless](#WindowStyleMaskBorderless)
* [WindowStyleMaskClosable](#WindowStyleMaskClosable)
* [WindowStyleMaskDocModalWindow](#WindowStyleMaskDocModalWindow)
* [WindowStyleMaskFullScreen](#WindowStyleMaskFullScreen)
* [WindowStyleMaskFullSizeContentView](#WindowStyleMaskFullSizeContentView)
* [WindowStyleMaskHUDWindow](#WindowStyleMaskHUDWindow)
* [WindowStyleMaskMiniaturizable](#WindowStyleMaskMiniaturizable)
* [WindowStyleMaskNonactivatingPanel](#WindowStyleMaskNonactivatingPanel)
* [WindowStyleMaskResizable](#WindowStyleMaskResizable)
* [WindowStyleMaskTexturedBackground](#WindowStyleMaskTexturedBackground)
* [WindowStyleMaskTitled](#WindowStyleMaskTitled)
* [WindowStyleMaskUnifiedTitleAndToolbar](#WindowStyleMaskUnifiedTitleAndToolbar)
* [WindowStyleMaskUtilityWindow](#WindowStyleMaskUtilityWindow)
* [YES](#YES)

Variables (22)

* [CocoaErrorDomain](#CocoaErrorDomain)
* [DebugDescriptionErrorKey](#DebugDescriptionErrorKey)
* [DefaultRunLoopMode](#DefaultRunLoopMode)
* [DeviceRGBColorSpace](#DeviceRGBColorSpace)
* [EventTrackingRunLoopMode](#EventTrackingRunLoopMode)
* [FilePathErrorKey](#FilePathErrorKey)
* [HelpAnchorErrorKey](#HelpAnchorErrorKey)
* [KeyEventModifierFlagDeviceIndependentFlagsMask](#KeyEventModifierFlagDeviceIndependentFlagsMask)
* [LocalizedDescriptionKey](#LocalizedDescriptionKey)
* [LocalizedFailureErrorKey](#LocalizedFailureErrorKey)
* [LocalizedFailureReasonErrorKey](#LocalizedFailureReasonErrorKey)
* [LocalizedRecoveryOptionsErrorKey](#LocalizedRecoveryOptionsErrorKey)
* [LocalizedRecoverySuggestionErrorKey](#LocalizedRecoverySuggestionErrorKey)
* [MachErrorDomain](#MachErrorDomain)
* [ModalPanelRunLoopMode](#ModalPanelRunLoopMode)
* [OSStatusErrorDomain](#OSStatusErrorDomain)
* [POSIXErrorDomain](#POSIXErrorDomain)
* [RecoveryAttempterErrorKey](#RecoveryAttempterErrorKey)
* [RunLoopCommonModes](#RunLoopCommonModes)
* [StringEncodingErrorKey](#StringEncodingErrorKey)
* [URLErrorKey](#URLErrorKey)
* [UnderlyingErrorKey](#UnderlyingErrorKey)

Procedures (807)

* [AT](#AT)
* [AllocateObject](#AllocateObject)
* [Application\_activate](#Application_activate)
* [Application\_activateIgnoringOtherApps](#Application_activateIgnoringOtherApps)
* [Application\_active](#Application_active)
* [Application\_currentEvent](#Application_currentEvent)
* [Application\_finishLaunching](#Application_finishLaunching)
* [Application\_isRunning](#Application_isRunning)
* [Application\_keyWindow](#Application_keyWindow)
* [Application\_mainMenu](#Application_mainMenu)
* [Application\_mainWindow](#Application_mainWindow)
* [Application\_nextEventMatchingMask](#Application_nextEventMatchingMask)
* [Application\_postEvent](#Application_postEvent)
* [Application\_run](#Application_run)
* [Application\_sendAction](#Application_sendAction)
* [Application\_sendEvent](#Application_sendEvent)
* [Application\_servicesMenu](#Application_servicesMenu)
* [Application\_setActivationPolicy](#Application_setActivationPolicy)
* [Application\_setAppleMenu](#Application_setAppleMenu)
* [Application\_setDelegate](#Application_setDelegate)
* [Application\_setMainMenu](#Application_setMainMenu)
* [Application\_setServicesMenu](#Application_setServicesMenu)
* [Application\_setTitle](#Application_setTitle)
* [Application\_setWindowsMenu](#Application_setWindowsMenu)
* [Application\_sharedApplication](#Application_sharedApplication)
* [Application\_stop](#Application_stop)
* [Application\_terminate](#Application_terminate)
* [Application\_updateWindows](#Application_updateWindows)
* [Application\_windows](#Application_windows)
* [Application\_windowsMenu](#Application_windowsMenu)
* [Array\_alloc](#Array_alloc)
* [Array\_count](#Array_count)
* [Array\_init](#Array_init)
* [Array\_initWithCoder](#Array_initWithCoder)
* [Array\_initWithObjects](#Array_initWithObjects)
* [Array\_object](#Array_object)
* [Array\_objectAs](#Array_objectAs)
* [AutoreleasePool\_addObject](#AutoreleasePool_addObject)
* [AutoreleasePool\_alloc](#AutoreleasePool_alloc)
* [AutoreleasePool\_drain](#AutoreleasePool_drain)
* [AutoreleasePool\_init](#AutoreleasePool_init)
* [AutoreleasePool\_showPools](#AutoreleasePool_showPools)
* [BitmapImageRep\_CGImage](#BitmapImageRep_CGImage)
* [BitmapImageRep\_alloc](#BitmapImageRep_alloc)
* [BitmapImageRep\_bitmapData](#BitmapImageRep_bitmapData)
* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](#BitmapImageRep_initWithBitmapDataPlanes_legacy)
* [Block\_createGlobal](#Block_createGlobal)
* [Block\_createGlobalWithParam](#Block_createGlobalWithParam)
* [Block\_createLocal](#Block_createLocal)
* [Block\_createLocalWithParam](#Block_createLocalWithParam)
* [Block\_invoke](#Block_invoke)
* [Bundle\_PathForAuxiliaryExecutable](#Bundle_PathForAuxiliaryExecutable)
* [Bundle\_URLForAuxiliaryExecutable](#Bundle_URLForAuxiliaryExecutable)
* [Bundle\_allBundles](#Bundle_allBundles)
* [Bundle\_allFrameworks](#Bundle_allFrameworks)
* [Bundle\_alloc](#Bundle_alloc)
* [Bundle\_appStoreReceiptPath](#Bundle_appStoreReceiptPath)
* [Bundle\_appStoreReceiptURL](#Bundle_appStoreReceiptURL)
* [Bundle\_builtInPlugInsPath](#Bundle_builtInPlugInsPath)
* [Bundle\_builtInPlugInsURL](#Bundle_builtInPlugInsURL)
* [Bundle\_bundleIdentifier](#Bundle_bundleIdentifier)
* [Bundle\_bundlePath](#Bundle_bundlePath)
* [Bundle\_bundleURL](#Bundle_bundleURL)
* [Bundle\_bundleWithPath](#Bundle_bundleWithPath)
* [Bundle\_bundleWithURL](#Bundle_bundleWithURL)
* [Bundle\_executablePath](#Bundle_executablePath)
* [Bundle\_executableURL](#Bundle_executableURL)
* [Bundle\_infoDictionary](#Bundle_infoDictionary)
* [Bundle\_init](#Bundle_init)
* [Bundle\_initWithPath](#Bundle_initWithPath)
* [Bundle\_initWithURL](#Bundle_initWithURL)
* [Bundle\_isLoaded](#Bundle_isLoaded)
* [Bundle\_load](#Bundle_load)
* [Bundle\_loadAndReturnError](#Bundle_loadAndReturnError)
* [Bundle\_localizedInfoDictionary](#Bundle_localizedInfoDictionary)
* [Bundle\_localizedStringForKey](#Bundle_localizedStringForKey)
* [Bundle\_mainBundle](#Bundle_mainBundle)
* [Bundle\_objectForInfoDictionaryKey](#Bundle_objectForInfoDictionaryKey)
* [Bundle\_preflightAndReturnError](#Bundle_preflightAndReturnError)
* [Bundle\_privateFrameworksPath](#Bundle_privateFrameworksPath)
* [Bundle\_privateFrameworksURL](#Bundle_privateFrameworksURL)
* [Bundle\_resourcePath](#Bundle_resourcePath)
* [Bundle\_resourceURL](#Bundle_resourceURL)
* [Bundle\_sharedFrameworksPath](#Bundle_sharedFrameworksPath)
* [Bundle\_sharedFrameworksURL](#Bundle_sharedFrameworksURL)
* [Bundle\_sharedSupportPath](#Bundle_sharedSupportPath)
* [Bundle\_sharedSupportURL](#Bundle_sharedSupportURL)
* [Bundle\_unload](#Bundle_unload)
* [ClassFromString](#ClassFromString)
* [Color\_blackColor](#Color_blackColor)
* [Color\_blueColor](#Color_blueColor)
* [Color\_colorSpace](#Color_colorSpace)
* [Color\_colorSpaceName](#Color_colorSpaceName)
* [Color\_colorUsingColorSpaceName](#Color_colorUsingColorSpaceName)
* [Color\_colorWithCalibratedHue](#Color_colorWithCalibratedHue)
* [Color\_colorWithCalibratedRed](#Color_colorWithCalibratedRed)
* [Color\_colorWithCalibratedWhite](#Color_colorWithCalibratedWhite)
* [Color\_colorWithColorSpace](#Color_colorWithColorSpace)
* [Color\_colorWithDeviceCyan](#Color_colorWithDeviceCyan)
* [Color\_colorWithDeviceHue](#Color_colorWithDeviceHue)
* [Color\_colorWithDeviceRed](#Color_colorWithDeviceRed)
* [Color\_colorWithDeviceWhite](#Color_colorWithDeviceWhite)
* [Color\_colorWithSRGBRed](#Color_colorWithSRGBRed)
* [Color\_cyanColor](#Color_cyanColor)
* [Color\_getCMYKA](#Color_getCMYKA)
* [Color\_getComponents](#Color_getComponents)
* [Color\_getHSBA](#Color_getHSBA)
* [Color\_getRGBA](#Color_getRGBA)
* [Color\_getWhiteAlpha](#Color_getWhiteAlpha)
* [Color\_greenColor](#Color_greenColor)
* [Color\_magentaColor](#Color_magentaColor)
* [Color\_numberOfComponents](#Color_numberOfComponents)
* [Color\_orangeColor](#Color_orangeColor)
* [Color\_purpleColor](#Color_purpleColor)
* [Color\_redColor](#Color_redColor)
* [Color\_whiteColor](#Color_whiteColor)
* [Color\_yellowColor](#Color_yellowColor)
* [Condition\_alloc](#Condition_alloc)
* [Condition\_broadcast](#Condition_broadcast)
* [Condition\_init](#Condition_init)
* [Condition\_lock](#Condition_lock)
* [Condition\_signal](#Condition_signal)
* [Condition\_unlock](#Condition_unlock)
* [Condition\_wait](#Condition_wait)
* [Condition\_waitUntilDate](#Condition_waitUntilDate)
* [Cursor\_IBeamCursor](#Cursor_IBeamCursor)
* [Cursor\_alloc](#Cursor_alloc)
* [Cursor\_arrowCursor](#Cursor_arrowCursor)
* [Cursor\_currentCursor](#Cursor_currentCursor)
* [Cursor\_hide](#Cursor_hide)
* [Cursor\_initWithImage](#Cursor_initWithImage)
* [Cursor\_pointingHandCursor](#Cursor_pointingHandCursor)
* [Cursor\_set](#Cursor_set)
* [Cursor\_setHiddenUntilMouseMoves](#Cursor_setHiddenUntilMouseMoves)
* [Cursor\_unhide](#Cursor_unhide)
* [Data\_alloc](#Data_alloc)
* [Data\_init](#Data_init)
* [Data\_initWithBytes](#Data_initWithBytes)
* [Data\_initWithBytesNoCopy](#Data_initWithBytesNoCopy)
* [Data\_length](#Data_length)
* [Data\_mutableBytes](#Data_mutableBytes)
* [Date\_alloc](#Date_alloc)
* [Date\_dateWithTimeIntervalSinceNow](#Date_dateWithTimeIntervalSinceNow)
* [Date\_distantFuture](#Date_distantFuture)
* [Date\_distantPast](#Date_distantPast)
* [Date\_init](#Date_init)
* [Date\_timeIntervalSince1970](#Date_timeIntervalSince1970)
* [DeallocateObject](#DeallocateObject)
* [Dictionary\_alloc](#Dictionary_alloc)
* [Dictionary\_count](#Dictionary_count)
* [Dictionary\_dictionary](#Dictionary_dictionary)
* [Dictionary\_dictionaryWithObject](#Dictionary_dictionaryWithObject)
* [Dictionary\_dictionaryWithObjects](#Dictionary_dictionaryWithObjects)
* [Dictionary\_init](#Dictionary_init)
* [Dictionary\_initWithObjects](#Dictionary_initWithObjects)
* [Dictionary\_keyEnumerator](#Dictionary_keyEnumerator)
* [Dictionary\_objectForKey](#Dictionary_objectForKey)
* [Enumerator\_allObjects](#Enumerator_allObjects)
* [Enumerator\_iterator](#Enumerator_iterator)
* [Enumerator\_nextObject](#Enumerator_nextObject)
* [Error\_alloc](#Error_alloc)
* [Error\_code](#Error_code)
* [Error\_domain](#Error_domain)
* [Error\_errorWithDomain](#Error_errorWithDomain)
* [Error\_init](#Error_init)
* [Error\_initWithDomain](#Error_initWithDomain)
* [Error\_localizedDescription](#Error_localizedDescription)
* [Error\_localizedFailureReason](#Error_localizedFailureReason)
* [Error\_localizedRecoveryOptions](#Error_localizedRecoveryOptions)
* [Error\_localizedRecoverySuggestion](#Error_localizedRecoverySuggestion)
* [Error\_userInfo](#Error_userInfo)
* [Event\_absolute](#Event_absolute)
* [Event\_absoluteX](#Event_absoluteX)
* [Event\_absoluteY](#Event_absoluteY)
* [Event\_absoluteZ](#Event_absoluteZ)
* [Event\_buttonMask](#Event_buttonMask)
* [Event\_buttonNumber](#Event_buttonNumber)
* [Event\_capabilityMask](#Event_capabilityMask)
* [Event\_characters](#Event_characters)
* [Event\_charactersIgnoringModifiers](#Event_charactersIgnoringModifiers)
* [Event\_clickCount](#Event_clickCount)
* [Event\_data1](#Event_data1)
* [Event\_data2](#Event_data2)
* [Event\_delta](#Event_delta)
* [Event\_deltaX](#Event_deltaX)
* [Event\_deltaY](#Event_deltaY)
* [Event\_deltaZ](#Event_deltaZ)
* [Event\_eventNumber](#Event_eventNumber)
* [Event\_hasPreciseScrollingDeltas](#Event_hasPreciseScrollingDeltas)
* [Event\_isARepeat](#Event_isARepeat)
* [Event\_isDirectionInvertedFromDevice](#Event_isDirectionInvertedFromDevice)
* [Event\_isEnteringProximity](#Event_isEnteringProximity)
* [Event\_isSwipeTrackingFromScrollEventsEnabled](#Event_isSwipeTrackingFromScrollEventsEnabled)
* [Event\_keyCode](#Event_keyCode)
* [Event\_locationInWindow](#Event_locationInWindow)
* [Event\_modifierFlags](#Event_modifierFlags)
* [Event\_momentumPhase](#Event_momentumPhase)
* [Event\_mouseLocation](#Event_mouseLocation)
* [Event\_otherEventWithType](#Event_otherEventWithType)
* [Event\_phase](#Event_phase)
* [Event\_pointingDeviceID](#Event_pointingDeviceID)
* [Event\_pointingDeviceSerialNumber](#Event_pointingDeviceSerialNumber)
* [Event\_pointingDeviceType](#Event_pointingDeviceType)
* [Event\_pressure](#Event_pressure)
* [Event\_scrollingDelta](#Event_scrollingDelta)
* [Event\_scrollingDeltaX](#Event_scrollingDeltaX)
* [Event\_scrollingDeltaY](#Event_scrollingDeltaY)
* [Event\_subtype](#Event_subtype)
* [Event\_systemTabletID](#Event_systemTabletID)
* [Event\_tabletID](#Event_tabletID)
* [Event\_tangentialPressure](#Event_tangentialPressure)
* [Event\_timestamp](#Event_timestamp)
* [Event\_type](#Event_type)
* [Event\_uniqueID](#Event_uniqueID)
* [Event\_vendorDefined](#Event_vendorDefined)
* [Event\_vendorID](#Event_vendorID)
* [Event\_vendorPointingDeviceType](#Event_vendorPointingDeviceType)
* [Event\_window](#Event_window)
* [Event\_windowNumber](#Event_windowNumber)
* [FastEnumeration\_alloc](#FastEnumeration_alloc)
* [FastEnumeration\_countByEnumerating](#FastEnumeration_countByEnumerating)
* [FastEnumeration\_init](#FastEnumeration_init)
* [Image\_addRepresentation](#Image_addRepresentation)
* [Image\_alloc](#Image_alloc)
* [Image\_initWithSize](#Image_initWithSize)
* [Layer\_addSublayer](#Layer_addSublayer)
* [Layer\_contents](#Layer_contents)
* [Layer\_contentsScale](#Layer_contentsScale)
* [Layer\_frame](#Layer_frame)
* [Layer\_position](#Layer_position)
* [Layer\_setContents](#Layer_setContents)
* [Layer\_setContentsScale](#Layer_setContentsScale)
* [Layer\_setPosition](#Layer_setPosition)
* [Locking\_lock](#Locking_lock)
* [Locking\_unlock](#Locking_unlock)
* [MakeConstantString](#MakeConstantString)
* [MaxX](#MaxX)
* [MaxY](#MaxY)
* [MenuDelegate\_confinementRectForMenu](#MenuDelegate_confinementRectForMenu)
* [MenuDelegate\_menuDidClose](#MenuDelegate_menuDidClose)
* [MenuDelegate\_menuHasKeyEquivalent](#MenuDelegate_menuHasKeyEquivalent)
* [MenuDelegate\_menuNeedsUpdate](#MenuDelegate_menuNeedsUpdate)
* [MenuDelegate\_menuWillOpen](#MenuDelegate_menuWillOpen)
* [MenuDelegate\_menu\_updateItem\_atIndex\_shouldCancel](#MenuDelegate_menu_updateItem_atIndex_shouldCancel)
* [MenuDelegate\_menu\_willHighlightItem](#MenuDelegate_menu_willHighlightItem)
* [MenuDelegate\_numberOfItemsInMenu](#MenuDelegate_numberOfItemsInMenu)
* [MenuItem\_accessInstanceVariablesDirectly](#MenuItem_accessInstanceVariablesDirectly)
* [MenuItem\_action](#MenuItem_action)
* [MenuItem\_alloc](#MenuItem_alloc)
* [MenuItem\_allocWithZone](#MenuItem_allocWithZone)
* [MenuItem\_allowsAutomaticKeyEquivalentLocalization](#MenuItem_allowsAutomaticKeyEquivalentLocalization)
* [MenuItem\_allowsAutomaticKeyEquivalentMirroring](#MenuItem_allowsAutomaticKeyEquivalentMirroring)
* [MenuItem\_allowsKeyEquivalentWhenHidden](#MenuItem_allowsKeyEquivalentWhenHidden)
* [MenuItem\_automaticallyNotifiesObserversForKey](#MenuItem_automaticallyNotifiesObserversForKey)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_](#MenuItem_cancelPreviousPerformRequestsWithTarget_)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_selector\_object](#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object)
* [MenuItem\_class](#MenuItem_class)
* [MenuItem\_classFallbacksForKeyedArchiver](#MenuItem_classFallbacksForKeyedArchiver)
* [MenuItem\_classForKeyedUnarchiver](#MenuItem_classForKeyedUnarchiver)
* [MenuItem\_conformsToProtocol](#MenuItem_conformsToProtocol)
* [MenuItem\_copyWithZone](#MenuItem_copyWithZone)
* [MenuItem\_debugDescription](#MenuItem_debugDescription)
* [MenuItem\_defaultPlaceholderForMarker](#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_description](#MenuItem_description)
* [MenuItem\_exposeBinding](#MenuItem_exposeBinding)
* [MenuItem\_hasSubmenu](#MenuItem_hasSubmenu)
* [MenuItem\_hash](#MenuItem_hash)
* [MenuItem\_indentationLevel](#MenuItem_indentationLevel)
* [MenuItem\_init](#MenuItem_init)
* [MenuItem\_initWithCoder](#MenuItem_initWithCoder)
* [MenuItem\_initWithTitle](#MenuItem_initWithTitle)
* [MenuItem\_initialize](#MenuItem_initialize)
* [MenuItem\_instanceMethodForSelector](#MenuItem_instanceMethodForSelector)
* [MenuItem\_instancesRespondToSelector](#MenuItem_instancesRespondToSelector)
* [MenuItem\_isAlternate](#MenuItem_isAlternate)
* [MenuItem\_isEnabled](#MenuItem_isEnabled)
* [MenuItem\_isHidden](#MenuItem_isHidden)
* [MenuItem\_isHiddenOrHasHiddenAncestor](#MenuItem_isHiddenOrHasHiddenAncestor)
* [MenuItem\_isHighlighted](#MenuItem_isHighlighted)
* [MenuItem\_isSectionHeader](#MenuItem_isSectionHeader)
* [MenuItem\_isSeparatorItem](#MenuItem_isSeparatorItem)
* [MenuItem\_isSubclassOfClass](#MenuItem_isSubclassOfClass)
* [MenuItem\_keyEquivalent](#MenuItem_keyEquivalent)
* [MenuItem\_keyEquivalentModifierMask](#MenuItem_keyEquivalentModifierMask)
* [MenuItem\_keyPathsForValuesAffectingValueForKey](#MenuItem_keyPathsForValuesAffectingValueForKey)
* [MenuItem\_load](#MenuItem_load)
* [MenuItem\_menu](#MenuItem_menu)
* [MenuItem\_mnemonic](#MenuItem_mnemonic)
* [MenuItem\_mnemonicLocation](#MenuItem_mnemonicLocation)
* [MenuItem\_mutableCopyWithZone](#MenuItem_mutableCopyWithZone)
* [MenuItem\_new](#MenuItem_new)
* [MenuItem\_parentItem](#MenuItem_parentItem)
* [MenuItem\_poseAsClass](#MenuItem_poseAsClass)
* [MenuItem\_registerActionCallback](#MenuItem_registerActionCallback)
* [MenuItem\_representedObject](#MenuItem_representedObject)
* [MenuItem\_resolveClassMethod](#MenuItem_resolveClassMethod)
* [MenuItem\_resolveInstanceMethod](#MenuItem_resolveInstanceMethod)
* [MenuItem\_sectionHeaderWithTitle](#MenuItem_sectionHeaderWithTitle)
* [MenuItem\_separatorItem](#MenuItem_separatorItem)
* [MenuItem\_setAction](#MenuItem_setAction)
* [MenuItem\_setAllowsAutomaticKeyEquivalentLocalization](#MenuItem_setAllowsAutomaticKeyEquivalentLocalization)
* [MenuItem\_setAllowsAutomaticKeyEquivalentMirroring](#MenuItem_setAllowsAutomaticKeyEquivalentMirroring)
* [MenuItem\_setAllowsKeyEquivalentWhenHidden](#MenuItem_setAllowsKeyEquivalentWhenHidden)
* [MenuItem\_setAlternate](#MenuItem_setAlternate)
* [MenuItem\_setDefaultPlaceholder](#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setEnabled](#MenuItem_setEnabled)
* [MenuItem\_setHidden](#MenuItem_setHidden)
* [MenuItem\_setIndentationLevel](#MenuItem_setIndentationLevel)
* [MenuItem\_setKeyEquivalent](#MenuItem_setKeyEquivalent)
* [MenuItem\_setKeyEquivalentModifierMask](#MenuItem_setKeyEquivalentModifierMask)
* [MenuItem\_setKeys](#MenuItem_setKeys)
* [MenuItem\_setMenu](#MenuItem_setMenu)
* [MenuItem\_setMnemonicLocation](#MenuItem_setMnemonicLocation)
* [MenuItem\_setRepresentedObject](#MenuItem_setRepresentedObject)
* [MenuItem\_setSubmenu](#MenuItem_setSubmenu)
* [MenuItem\_setSubtitle](#MenuItem_setSubtitle)
* [MenuItem\_setTag](#MenuItem_setTag)
* [MenuItem\_setTarget](#MenuItem_setTarget)
* [MenuItem\_setTitle](#MenuItem_setTitle)
* [MenuItem\_setTitleWithMnemonic](#MenuItem_setTitleWithMnemonic)
* [MenuItem\_setToolTip](#MenuItem_setToolTip)
* [MenuItem\_setUsesUserKeyEquivalents](#MenuItem_setUsesUserKeyEquivalents)
* [MenuItem\_setVersion](#MenuItem_setVersion)
* [MenuItem\_setView](#MenuItem_setView)
* [MenuItem\_submenu](#MenuItem_submenu)
* [MenuItem\_subtitle](#MenuItem_subtitle)
* [MenuItem\_superclass](#MenuItem_superclass)
* [MenuItem\_tag](#MenuItem_tag)
* [MenuItem\_target](#MenuItem_target)
* [MenuItem\_title](#MenuItem_title)
* [MenuItem\_toolTip](#MenuItem_toolTip)
* [MenuItem\_useStoredAccessor](#MenuItem_useStoredAccessor)
* [MenuItem\_userKeyEquivalent](#MenuItem_userKeyEquivalent)
* [MenuItem\_usesUserKeyEquivalents](#MenuItem_usesUserKeyEquivalents)
* [MenuItem\_version](#MenuItem_version)
* [MenuItem\_view](#MenuItem_view)
* [Menu\_accessInstanceVariablesDirectly](#Menu_accessInstanceVariablesDirectly)
* [Menu\_addItem](#Menu_addItem)
* [Menu\_addItemWithTitle](#Menu_addItemWithTitle)
* [Menu\_alloc](#Menu_alloc)
* [Menu\_allocWithZone](#Menu_allocWithZone)
* [Menu\_allowsContextMenuPlugIns](#Menu_allowsContextMenuPlugIns)
* [Menu\_attachedMenu](#Menu_attachedMenu)
* [Menu\_autoenablesItems](#Menu_autoenablesItems)
* [Menu\_automaticallyNotifiesObserversForKey](#Menu_automaticallyNotifiesObserversForKey)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_](#Menu_cancelPreviousPerformRequestsWithTarget_)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_selector\_object](#Menu_cancelPreviousPerformRequestsWithTarget_selector_object)
* [Menu\_cancelTracking](#Menu_cancelTracking)
* [Menu\_cancelTrackingWithoutAnimation](#Menu_cancelTrackingWithoutAnimation)
* [Menu\_class](#Menu_class)
* [Menu\_classFallbacksForKeyedArchiver](#Menu_classFallbacksForKeyedArchiver)
* [Menu\_classForKeyedUnarchiver](#Menu_classForKeyedUnarchiver)
* [Menu\_conformsToProtocol](#Menu_conformsToProtocol)
* [Menu\_contextMenuRepresentation](#Menu_contextMenuRepresentation)
* [Menu\_copyWithZone](#Menu_copyWithZone)
* [Menu\_debugDescription](#Menu_debugDescription)
* [Menu\_defaultPlaceholderForMarker](#Menu_defaultPlaceholderForMarker)
* [Menu\_delegate](#Menu_delegate)
* [Menu\_description](#Menu_description)
* [Menu\_exposeBinding](#Menu_exposeBinding)
* [Menu\_hash](#Menu_hash)
* [Menu\_helpRequested](#Menu_helpRequested)
* [Menu\_highlightedItem](#Menu_highlightedItem)
* [Menu\_indexOfItem](#Menu_indexOfItem)
* [Menu\_indexOfItemWithRepresentedObject](#Menu_indexOfItemWithRepresentedObject)
* [Menu\_indexOfItemWithSubmenu](#Menu_indexOfItemWithSubmenu)
* [Menu\_indexOfItemWithTag](#Menu_indexOfItemWithTag)
* [Menu\_indexOfItemWithTarget](#Menu_indexOfItemWithTarget)
* [Menu\_indexOfItemWithTitle](#Menu_indexOfItemWithTitle)
* [Menu\_init](#Menu_init)
* [Menu\_initWithCoder](#Menu_initWithCoder)
* [Menu\_initWithTitle](#Menu_initWithTitle)
* [Menu\_initialize](#Menu_initialize)
* [Menu\_insertItem](#Menu_insertItem)
* [Menu\_insertItemWithTitle](#Menu_insertItemWithTitle)
* [Menu\_instanceMethodForSelector](#Menu_instanceMethodForSelector)
* [Menu\_instancesRespondToSelector](#Menu_instancesRespondToSelector)
* [Menu\_isAttached](#Menu_isAttached)
* [Menu\_isSubclassOfClass](#Menu_isSubclassOfClass)
* [Menu\_isTornOff](#Menu_isTornOff)
* [Menu\_itemArray](#Menu_itemArray)
* [Menu\_itemAtIndex](#Menu_itemAtIndex)
* [Menu\_itemChanged](#Menu_itemChanged)
* [Menu\_itemWithTag](#Menu_itemWithTag)
* [Menu\_itemWithTitle](#Menu_itemWithTitle)
* [Menu\_keyPathsForValuesAffectingValueForKey](#Menu_keyPathsForValuesAffectingValueForKey)
* [Menu\_load](#Menu_load)
* [Menu\_locationForSubmenu](#Menu_locationForSubmenu)
* [Menu\_menuBarHeight](#Menu_menuBarHeight)
* [Menu\_menuBarVisible](#Menu_menuBarVisible)
* [Menu\_menuChangedMessagesEnabled](#Menu_menuChangedMessagesEnabled)
* [Menu\_menuRepresentation](#Menu_menuRepresentation)
* [Menu\_menuZone](#Menu_menuZone)
* [Menu\_minimumWidth](#Menu_minimumWidth)
* [Menu\_mutableCopyWithZone](#Menu_mutableCopyWithZone)
* [Menu\_new](#Menu_new)
* [Menu\_numberOfItems](#Menu_numberOfItems)
* [Menu\_paletteMenuWithColors\_titles\_selectionHandler](#Menu_paletteMenuWithColors_titles_selectionHandler)
* [Menu\_performActionForItemAtIndex](#Menu_performActionForItemAtIndex)
* [Menu\_performKeyEquivalent](#Menu_performKeyEquivalent)
* [Menu\_popUpContextMenu\_withEvent\_forView](#Menu_popUpContextMenu_withEvent_forView)
* [Menu\_popUpMenuPositioningItem](#Menu_popUpMenuPositioningItem)
* [Menu\_poseAsClass](#Menu_poseAsClass)
* [Menu\_presentationStyle](#Menu_presentationStyle)
* [Menu\_propertiesToUpdate](#Menu_propertiesToUpdate)
* [Menu\_removeAllItems](#Menu_removeAllItems)
* [Menu\_removeItem](#Menu_removeItem)
* [Menu\_removeItemAtIndex](#Menu_removeItemAtIndex)
* [Menu\_resolveClassMethod](#Menu_resolveClassMethod)
* [Menu\_resolveInstanceMethod](#Menu_resolveInstanceMethod)
* [Menu\_selectedItems](#Menu_selectedItems)
* [Menu\_selectionMode](#Menu_selectionMode)
* [Menu\_setAllowsContextMenuPlugIns](#Menu_setAllowsContextMenuPlugIns)
* [Menu\_setAutoenablesItems](#Menu_setAutoenablesItems)
* [Menu\_setContextMenuRepresentation](#Menu_setContextMenuRepresentation)
* [Menu\_setDefaultPlaceholder](#Menu_setDefaultPlaceholder)
* [Menu\_setDelegate](#Menu_setDelegate)
* [Menu\_setItemArray](#Menu_setItemArray)
* [Menu\_setKeys](#Menu_setKeys)
* [Menu\_setMenuBarVisible](#Menu_setMenuBarVisible)
* [Menu\_setMenuChangedMessagesEnabled](#Menu_setMenuChangedMessagesEnabled)
* [Menu\_setMenuRepresentation](#Menu_setMenuRepresentation)
* [Menu\_setMenuZone](#Menu_setMenuZone)
* [Menu\_setMinimumWidth](#Menu_setMinimumWidth)
* [Menu\_setPresentationStyle](#Menu_setPresentationStyle)
* [Menu\_setSelectedItems](#Menu_setSelectedItems)
* [Menu\_setSelectionMode](#Menu_setSelectionMode)
* [Menu\_setShowsStateColumn](#Menu_setShowsStateColumn)
* [Menu\_setSubmenu](#Menu_setSubmenu)
* [Menu\_setSupermenu](#Menu_setSupermenu)
* [Menu\_setTearOffMenuRepresentation](#Menu_setTearOffMenuRepresentation)
* [Menu\_setTitle](#Menu_setTitle)
* [Menu\_setUserInterfaceLayoutDirection](#Menu_setUserInterfaceLayoutDirection)
* [Menu\_setVersion](#Menu_setVersion)
* [Menu\_showsStateColumn](#Menu_showsStateColumn)
* [Menu\_size](#Menu_size)
* [Menu\_sizeToFit](#Menu_sizeToFit)
* [Menu\_submenuAction](#Menu_submenuAction)
* [Menu\_superclass](#Menu_superclass)
* [Menu\_supermenu](#Menu_supermenu)
* [Menu\_tearOffMenuRepresentation](#Menu_tearOffMenuRepresentation)
* [Menu\_title](#Menu_title)
* [Menu\_update](#Menu_update)
* [Menu\_useStoredAccessor](#Menu_useStoredAccessor)
* [Menu\_userInterfaceLayoutDirection](#Menu_userInterfaceLayoutDirection)
* [Menu\_version](#Menu_version)
* [MidX](#MidX)
* [MidY](#MidY)
* [MinX](#MinX)
* [MinY](#MinY)
* [MutableArray\_alloc](#MutableArray_alloc)
* [MutableArray\_count](#MutableArray_count)
* [MutableArray\_exchangeObjectAtIndex](#MutableArray_exchangeObjectAtIndex)
* [MutableArray\_init](#MutableArray_init)
* [MutableArray\_initWithCoder](#MutableArray_initWithCoder)
* [MutableArray\_initWithObjects](#MutableArray_initWithObjects)
* [MutableArray\_object](#MutableArray_object)
* [MutableArray\_objectAs](#MutableArray_objectAs)
* [NSWindow\_setFrameAutosaveName](#NSWindow_setFrameAutosaveName)
* [NotificationCenter\_addObserver](#NotificationCenter_addObserver)
* [NotificationCenter\_addObserverForName\_new](#NotificationCenter_addObserverForName_new)
* [NotificationCenter\_addObserverForName\_old](#NotificationCenter_addObserverForName_old)
* [NotificationCenter\_alloc](#NotificationCenter_alloc)
* [NotificationCenter\_defaultCenter](#NotificationCenter_defaultCenter)
* [NotificationCenter\_init](#NotificationCenter_init)
* [NotificationCenter\_removeObserver](#NotificationCenter_removeObserver)
* [Notification\_alloc](#Notification_alloc)
* [Notification\_init](#Notification_init)
* [Notification\_name](#Notification_name)
* [Notification\_object](#Notification_object)
* [Notification\_userInfo](#Notification_userInfo)
* [Number\_alloc](#Number_alloc)
* [Number\_boolValue](#Number_boolValue)
* [Number\_compare](#Number_compare)
* [Number\_descriptionWithLocale](#Number_descriptionWithLocale)
* [Number\_f32Value](#Number_f32Value)
* [Number\_f64Value](#Number_f64Value)
* [Number\_i16Value](#Number_i16Value)
* [Number\_i32Value](#Number_i32Value)
* [Number\_i64Value](#Number_i64Value)
* [Number\_i8Value](#Number_i8Value)
* [Number\_init](#Number_init)
* [Number\_initWithBool](#Number_initWithBool)
* [Number\_initWithF32](#Number_initWithF32)
* [Number\_initWithF64](#Number_initWithF64)
* [Number\_initWithI16](#Number_initWithI16)
* [Number\_initWithI32](#Number_initWithI32)
* [Number\_initWithI64](#Number_initWithI64)
* [Number\_initWithI8](#Number_initWithI8)
* [Number\_initWithInt](#Number_initWithInt)
* [Number\_initWithU16](#Number_initWithU16)
* [Number\_initWithU32](#Number_initWithU32)
* [Number\_initWithU64](#Number_initWithU64)
* [Number\_initWithU8](#Number_initWithU8)
* [Number\_initWithUint](#Number_initWithUint)
* [Number\_intValue](#Number_intValue)
* [Number\_integerValue](#Number_integerValue)
* [Number\_isEqualToNumber](#Number_isEqualToNumber)
* [Number\_numberWithBool](#Number_numberWithBool)
* [Number\_numberWithF32](#Number_numberWithF32)
* [Number\_numberWithF64](#Number_numberWithF64)
* [Number\_numberWithI16](#Number_numberWithI16)
* [Number\_numberWithI32](#Number_numberWithI32)
* [Number\_numberWithI64](#Number_numberWithI64)
* [Number\_numberWithI8](#Number_numberWithI8)
* [Number\_numberWithInt](#Number_numberWithInt)
* [Number\_numberWithU16](#Number_numberWithU16)
* [Number\_numberWithU32](#Number_numberWithU32)
* [Number\_numberWithU64](#Number_numberWithU64)
* [Number\_numberWithU8](#Number_numberWithU8)
* [Number\_numberWithUint](#Number_numberWithUint)
* [Number\_stringValue](#Number_stringValue)
* [Number\_u16Value](#Number_u16Value)
* [Number\_u32Value](#Number_u32Value)
* [Number\_u64Value](#Number_u64Value)
* [Number\_u8Value](#Number_u8Value)
* [Number\_uintValue](#Number_uintValue)
* [Number\_uintegerValue](#Number_uintegerValue)
* [OpenPanel\_URLs](#OpenPanel_URLs)
* [OpenPanel\_openPanel](#OpenPanel_openPanel)
* [OpenPanel\_setAllowedFileTypes](#OpenPanel_setAllowedFileTypes)
* [OpenPanel\_setAllowsMultipleSelection](#OpenPanel_setAllowsMultipleSelection)
* [OpenPanel\_setCanChooseDirectories](#OpenPanel_setCanChooseDirectories)
* [OpenPanel\_setCanChooseFiles](#OpenPanel_setCanChooseFiles)
* [OpenPanel\_setResolvesAliases](#OpenPanel_setResolvesAliases)
* [ProcessInfo\_activeProcessorCount](#ProcessInfo_activeProcessorCount)
* [ProcessInfo\_arguments](#ProcessInfo_arguments)
* [ProcessInfo\_automaticTerminationSupportEnabled](#ProcessInfo_automaticTerminationSupportEnabled)
* [ProcessInfo\_beginActivityWithOptions](#ProcessInfo_beginActivityWithOptions)
* [ProcessInfo\_disableAutomaticTermination](#ProcessInfo_disableAutomaticTermination)
* [ProcessInfo\_disableSuddenTermination](#ProcessInfo_disableSuddenTermination)
* [ProcessInfo\_enableAutomaticTermination](#ProcessInfo_enableAutomaticTermination)
* [ProcessInfo\_enableSuddenTermination](#ProcessInfo_enableSuddenTermination)
* [ProcessInfo\_endActivity](#ProcessInfo_endActivity)
* [ProcessInfo\_environment](#ProcessInfo_environment)
* [ProcessInfo\_fullUserName](#ProcessInfo_fullUserName)
* [ProcessInfo\_globallyUniqueString](#ProcessInfo_globallyUniqueString)
* [ProcessInfo\_hostName](#ProcessInfo_hostName)
* [ProcessInfo\_isLowPowerModeEnabled](#ProcessInfo_isLowPowerModeEnabled)
* [ProcessInfo\_isMacCatalystApp](#ProcessInfo_isMacCatalystApp)
* [ProcessInfo\_isOperatingSystemAtLeastVersion](#ProcessInfo_isOperatingSystemAtLeastVersion)
* [ProcessInfo\_isiOSAppOnMac](#ProcessInfo_isiOSAppOnMac)
* [ProcessInfo\_operatingSystemVersion](#ProcessInfo_operatingSystemVersion)
* [ProcessInfo\_operatingSystemVersionString](#ProcessInfo_operatingSystemVersionString)
* [ProcessInfo\_performActivityWithOptions](#ProcessInfo_performActivityWithOptions)
* [ProcessInfo\_performExpiringActivityWithReason](#ProcessInfo_performExpiringActivityWithReason)
* [ProcessInfo\_physicalMemory](#ProcessInfo_physicalMemory)
* [ProcessInfo\_processIdentifier](#ProcessInfo_processIdentifier)
* [ProcessInfo\_processInfo](#ProcessInfo_processInfo)
* [ProcessInfo\_processName](#ProcessInfo_processName)
* [ProcessInfo\_processorCount](#ProcessInfo_processorCount)
* [ProcessInfo\_setAutomaticTerminationSupportEnabled](#ProcessInfo_setAutomaticTerminationSupportEnabled)
* [ProcessInfo\_systemUptime](#ProcessInfo_systemUptime)
* [ProcessInfo\_thermalState](#ProcessInfo_thermalState)
* [ProcessInfo\_userName](#ProcessInfo_userName)
* [Range\_Equal](#Range_Equal)
* [Range\_LocationInRange](#Range_LocationInRange)
* [Range\_Make](#Range_Make)
* [Range\_Max](#Range_Max)
* [RunLoop\_addTimerForMode](#RunLoop_addTimerForMode)
* [RunLoop\_mainRunLoop](#RunLoop_mainRunLoop)
* [RunningApplication\_currentApplication](#RunningApplication_currentApplication)
* [RunningApplication\_finishedLaunching](#RunningApplication_finishedLaunching)
* [RunningApplication\_localizedName](#RunningApplication_localizedName)
* [SavePanel\_URL](#SavePanel_URL)
* [SavePanel\_runModal](#SavePanel_runModal)
* [SavePanel\_savePanel](#SavePanel_savePanel)
* [Screen\_backingScaleFactor](#Screen_backingScaleFactor)
* [Screen\_colorSpace](#Screen_colorSpace)
* [Screen\_deepestScreen](#Screen_deepestScreen)
* [Screen\_depth](#Screen_depth)
* [Screen\_frame](#Screen_frame)
* [Screen\_mainScreen](#Screen_mainScreen)
* [Screen\_screens](#Screen_screens)
* [Screen\_screensHaveSeparateSpaces](#Screen_screensHaveSeparateSpaces)
* [Screen\_visibleFrame](#Screen_visibleFrame)
* [SelectorFromString](#SelectorFromString)
* [Set\_alloc](#Set_alloc)
* [Set\_init](#Set_init)
* [Set\_initWithCoder](#Set_initWithCoder)
* [Set\_initWithObjects](#Set_initWithObjects)
* [StringFromClass](#StringFromClass)
* [StringFromSelector](#StringFromSelector)
* [String\_UTF8String](#String_UTF8String)
* [String\_alloc](#String_alloc)
* [String\_characterAtIndex](#String_characterAtIndex)
* [String\_cstringUsingEncoding](#String_cstringUsingEncoding)
* [String\_init](#String_init)
* [String\_initWithBytesNoCopy](#String_initWithBytesNoCopy)
* [String\_initWithCString](#String_initWithCString)
* [String\_initWithOdinString](#String_initWithOdinString)
* [String\_initWithString](#String_initWithString)
* [String\_isEqualToString](#String_isEqualToString)
* [String\_length](#String_length)
* [String\_lengthOfBytesUsingEncoding](#String_lengthOfBytesUsingEncoding)
* [String\_maximumLengthOfBytesUsingEncoding](#String_maximumLengthOfBytesUsingEncoding)
* [String\_odinString](#String_odinString)
* [String\_rangeOfString](#String_rangeOfString)
* [String\_stringByAppendingString](#String_stringByAppendingString)
* [Timer\_scheduledTimerWithTimeIntervalRepeatsBlock](#Timer_scheduledTimerWithTimeIntervalRepeatsBlock)
* [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)
* [Toolbar\_alloc](#Toolbar_alloc)
* [Toolbar\_init](#Toolbar_init)
* [URLRequest\_alloc](#URLRequest_alloc)
* [URLRequest\_init](#URLRequest_init)
* [URLRequest\_requestWithURL](#URLRequest_requestWithURL)
* [URLRequest\_url](#URLRequest_url)
* [URLResponse\_alloc](#URLResponse_alloc)
* [URLResponse\_init](#URLResponse_init)
* [URLResponse\_initWithURL](#URLResponse_initWithURL)
* [URL\_alloc](#URL_alloc)
* [URL\_fileSystemRepresentation](#URL_fileSystemRepresentation)
* [URL\_init](#URL_init)
* [URL\_initFileURLWithPath](#URL_initFileURLWithPath)
* [URL\_initWithString](#URL_initWithString)
* [URL\_relativePath](#URL_relativePath)
* [UserDefaults\_setBoolForKey](#UserDefaults_setBoolForKey)
* [UserDefaults\_standardUserDefaults](#UserDefaults_standardUserDefaults)
* [Value\_alloc](#Value_alloc)
* [Value\_getValue](#Value_getValue)
* [Value\_init](#Value_init)
* [Value\_initWithBytes](#Value_initWithBytes)
* [Value\_initWithCoder](#Value_initWithCoder)
* [Value\_isEqualToValue](#Value_isEqualToValue)
* [Value\_objCType](#Value_objCType)
* [Value\_pointerValue](#Value_pointerValue)
* [Value\_valueWithBytes](#Value_valueWithBytes)
* [Value\_valueWithPointer](#Value_valueWithPointer)
* [View\_addSubview](#View_addSubview)
* [View\_alloc](#View_alloc)
* [View\_bounds](#View_bounds)
* [View\_convertPointFromView](#View_convertPointFromView)
* [View\_initWithFrame](#View_initWithFrame)
* [View\_isFlipped](#View_isFlipped)
* [View\_layer](#View_layer)
* [View\_setIsFlipped](#View_setIsFlipped)
* [View\_setLayer](#View_setLayer)
* [View\_setWantsLayer](#View_setWantsLayer)
* [View\_wantsLayer](#View_wantsLayer)
* [Window\_alloc](#Window_alloc)
* [Window\_backgroundColor](#Window_backgroundColor)
* [Window\_backingScaleFactor](#Window_backingScaleFactor)
* [Window\_center](#Window_center)
* [Window\_close](#Window_close)
* [Window\_collectionBehavior](#Window_collectionBehavior)
* [Window\_contentLayoutRect](#Window_contentLayoutRect)
* [Window\_contentRectForFrameRectInstance](#Window_contentRectForFrameRectInstance)
* [Window\_contentRectForFrameRectType](#Window_contentRectForFrameRectType)
* [Window\_contentView](#Window_contentView)
* [Window\_convertPointFromBacking](#Window_convertPointFromBacking)
* [Window\_convertPointFromScreen](#Window_convertPointFromScreen)
* [Window\_convertPointToBacking](#Window_convertPointToBacking)
* [Window\_convertPointToScreen](#Window_convertPointToScreen)
* [Window\_convertRectFromBacking](#Window_convertRectFromBacking)
* [Window\_convertRectFromScreen](#Window_convertRectFromScreen)
* [Window\_convertRectToBacking](#Window_convertRectToBacking)
* [Window\_convertRectToScreen](#Window_convertRectToScreen)
* [Window\_delegate](#Window_delegate)
* [Window\_frame](#Window_frame)
* [Window\_frameRectForContentRectInstance](#Window_frameRectForContentRectInstance)
* [Window\_frameRectForContentRectType](#Window_frameRectForContentRectType)
* [Window\_hasCloseBox](#Window_hasCloseBox)
* [Window\_hasTitleBar](#Window_hasTitleBar)
* [Window\_initWithContentRect](#Window_initWithContentRect)
* [Window\_isFloatingPanel](#Window_isFloatingPanel)
* [Window\_isMiniaturizable](#Window_isMiniaturizable)
* [Window\_isModalPanel](#Window_isModalPanel)
* [Window\_isResizable](#Window_isResizable)
* [Window\_isZoomable](#Window_isZoomable)
* [Window\_keyWindow](#Window_keyWindow)
* [Window\_mainWindow](#Window_mainWindow)
* [Window\_makeFirstResponder](#Window_makeFirstResponder)
* [Window\_makeKeyAndOrderFront](#Window_makeKeyAndOrderFront)
* [Window\_minFrameWidthWithTitle](#Window_minFrameWidthWithTitle)
* [Window\_opaque](#Window_opaque)
* [Window\_orderFront](#Window_orderFront)
* [Window\_orderOut](#Window_orderOut)
* [Window\_orderedIndex](#Window_orderedIndex)
* [Window\_parentWindow](#Window_parentWindow)
* [Window\_performClose](#Window_performClose)
* [Window\_performWindowDragWithEvent](#Window_performWindowDragWithEvent)
* [Window\_performZoom](#Window_performZoom)
* [Window\_screen](#Window_screen)
* [Window\_setAcceptsMouseMovedEvents](#Window_setAcceptsMouseMovedEvents)
* [Window\_setBackgroundColor](#Window_setBackgroundColor)
* [Window\_setCollectionBehavior](#Window_setCollectionBehavior)
* [Window\_setContentView](#Window_setContentView)
* [Window\_setDelegate](#Window_setDelegate)
* [Window\_setFrame](#Window_setFrame)
* [Window\_setFrameOrigin](#Window_setFrameOrigin)
* [Window\_setIsMiniaturized](#Window_setIsMiniaturized)
* [Window\_setIsVisible](#Window_setIsVisible)
* [Window\_setIsZoomed](#Window_setIsZoomed)
* [Window\_setLevel](#Window_setLevel)
* [Window\_setMinSize](#Window_setMinSize)
* [Window\_setMovable](#Window_setMovable)
* [Window\_setMovableByWindowBackground](#Window_setMovableByWindowBackground)
* [Window\_setOpaque](#Window_setOpaque)
* [Window\_setReleasedWhenClosed](#Window_setReleasedWhenClosed)
* [Window\_setRestorable](#Window_setRestorable)
* [Window\_setStyleMask](#Window_setStyleMask)
* [Window\_setTabbingMode](#Window_setTabbingMode)
* [Window\_setTitle](#Window_setTitle)
* [Window\_setTitleVisibility](#Window_setTitleVisibility)
* [Window\_setTitlebarAppearsTransparent](#Window_setTitlebarAppearsTransparent)
* [Window\_setToolbar](#Window_setToolbar)
* [Window\_setWantsLayer](#Window_setWantsLayer)
* [Window\_toggleFullScreen](#Window_toggleFullScreen)
* [alloc](#alloc)
* [alloc\_user\_object](#alloc_user_object)
* [application\_delegate\_register\_and\_alloc](#application_delegate_register_and_alloc)
* [autorelease](#autorelease)
* [bridgingCast](#bridgingCast)
* [class](#class)
* [class\_addIvar](#class_addIvar)
* [class\_addMethod](#class_addMethod)
* [class\_addProperty](#class_addProperty)
* [class\_addProtocol](#class_addProtocol)
* [class\_conformsToProtocol](#class_conformsToProtocol)
* [class\_copyIvarList](#class_copyIvarList)
* [class\_copyMethodList](#class_copyMethodList)
* [class\_copyPropertyList](#class_copyPropertyList)
* [class\_copyProtocolList](#class_copyProtocolList)
* [class\_createInstance](#class_createInstance)
* [class\_getClassMethod](#class_getClassMethod)
* [class\_getClassVariable](#class_getClassVariable)
* [class\_getInstanceMethod](#class_getInstanceMethod)
* [class\_getInstanceSize](#class_getInstanceSize)
* [class\_getInstanceVariable](#class_getInstanceVariable)
* [class\_getMethodImplementation](#class_getMethodImplementation)
* [class\_getName](#class_getName)
* [class\_getProperty](#class_getProperty)
* [class\_getSuperclass](#class_getSuperclass)
* [class\_getVersion](#class_getVersion)
* [class\_get\_metaclass](#class_get_metaclass)
* [class\_get\_vtable\_info](#class_get_vtable_info)
* [class\_isMetaClass](#class_isMetaClass)
* [class\_replaceMethod](#class_replaceMethod)
* [class\_replaceProperty](#class_replaceProperty)
* [class\_respondsToSelector](#class_respondsToSelector)
* [class\_setVersion](#class_setVersion)
* [copy](#copy)
* [debugDescription](#debugDescription)
* [description](#description)
* [hash](#hash)
* [init](#init)
* [isEqual](#isEqual)
* [ivar\_getName](#ivar_getName)
* [ivar\_getOffset](#ivar_getOffset)
* [ivar\_getTypeEncoding](#ivar_getTypeEncoding)
* [make\_subclasser](#make_subclasser)
* [methodSignatureForSelector](#methodSignatureForSelector)
* [method\_copyArgumentType](#method_copyArgumentType)
* [method\_getArgumentType](#method_getArgumentType)
* [method\_getImplementation](#method_getImplementation)
* [method\_getNumberOfArguments](#method_getNumberOfArguments)
* [method\_getReturnType](#method_getReturnType)
* [method\_setImplementation](#method_setImplementation)
* [msgSendSafeCheck](#msgSendSafeCheck)
* [new](#new)
* [objc\_allocateClassPair](#objc_allocateClassPair)
* [objc\_constructInstance](#objc_constructInstance)
* [objc\_copyClassList](#objc_copyClassList)
* [objc\_copyProtocolList](#objc_copyProtocolList)
* [objc\_destructInstance](#objc_destructInstance)
* [objc\_disposeClassPair](#objc_disposeClassPair)
* [objc\_duplicateClass](#objc_duplicateClass)
* [objc\_getAssociatedObject](#objc_getAssociatedObject)
* [objc\_getClassList](#objc_getClassList)
* [objc\_getMetaClass](#objc_getMetaClass)
* [objc\_getProtocol](#objc_getProtocol)
* [objc\_getRequiredClass](#objc_getRequiredClass)
* [objc\_lookUpClass](#objc_lookUpClass)
* [objc\_registerClassPair](#objc_registerClassPair)
* [objc\_removeAssociatedObjects](#objc_removeAssociatedObjects)
* [objc\_setAssociatedObject](#objc_setAssociatedObject)
* [object\_copy](#object_copy)
* [object\_dispose](#object_dispose)
* [object\_getClass](#object_getClass)
* [object\_getClassName](#object_getClassName)
* [object\_getIndexedIvars](#object_getIndexedIvars)
* [object\_getInstanceVariable](#object_getInstanceVariable)
* [object\_getIvar](#object_getIvar)
* [object\_get\_vtable\_info](#object_get_vtable_info)
* [object\_setClass](#object_setClass)
* [object\_setInstanceVariable](#object_setInstanceVariable)
* [object\_setIvar](#object_setIvar)
* [performSelectorOnMainThread](#performSelectorOnMainThread)
* [property\_copyAttributeList](#property_copyAttributeList)
* [property\_copyAttributeValue](#property_copyAttributeValue)
* [property\_getAttributes](#property_getAttributes)
* [property\_getName](#property_getName)
* [protocol\_conformsToProtocol](#protocol_conformsToProtocol)
* [protocol\_getName](#protocol_getName)
* [protocol\_isEqual](#protocol_isEqual)
* [register\_subclass](#register_subclass)
* [release](#release)
* [respondsToSelector](#respondsToSelector)
* [retain](#retain)
* [retainCount](#retainCount)
* [scoped\_autoreleasepool](#scoped_autoreleasepool)
* [sel\_getName](#sel_getName)
* [sel\_isEqual](#sel_isEqual)
* [sel\_registerName](#sel_registerName)
* [tilt](#tilt)
* [window\_delegate\_register\_and\_alloc](#window_delegate_register_and_alloc)

Procedure Groups (8)

* [BitmapImageRep\_initWithBitmapDataPlanes](#BitmapImageRep_initWithBitmapDataPlanes)
* [MenuDelegate\_menu](#MenuDelegate_menu)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget](#MenuItem_cancelPreviousPerformRequestsWithTarget)
* [Menu\_cancelPreviousPerformRequestsWithTarget](#Menu_cancelPreviousPerformRequestsWithTarget)
* [Menu\_paletteMenuWithColors](#Menu_paletteMenuWithColors)
* [Menu\_popUpContextMenu](#Menu_popUpContextMenu)
* [NotificationCenter\_addObserverForName](#NotificationCenter_addObserverForName)
* [Number\_number](#Number_number)

## Types

### [ActivationPolicy ¶](#ActivationPolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L7)

```
ActivationPolicy :: enum UInteger {
	Regular    = 0, 
	Accessory  = 1, 
	Prohibited = 2, 
}
```

##### Related Procedures With Parameters

* [Application\_setActivationPolicy](/core/sys/darwin/Foundation/#Application_setActivationPolicy)

### [ActivityOptions ¶](#ActivityOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L162)

```
ActivityOptions :: bit_set[ActivityOptionsBits; u64]
```

##### Related Procedures With Parameters

* [ProcessInfo\_beginActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_beginActivityWithOptions)
* [ProcessInfo\_performActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_performActivityWithOptions)

### [ActivityOptionsBits ¶](#ActivityOptionsBits) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L149)

```
ActivityOptionsBits :: enum u64 {
	IdleDisplaySleepDisabled             = 40, // Require the screen to stay powered on.
	IdleSystemSleepDisabled              = 20, // Prevent idle sleep.
	SuddenTerminationDisabled            = 14, // Prevent sudden termination.
	AutomaticTerminationDisabled         = 15, // Prevent automatic termination.
	AnimationTrackingEnabled             = 45, // Track activity with an animation signpost interval.
	TrackingEnabled                      = 46, // Track activity with a signpost interval.
	UserInitiated                        = 23, // Performing a user-requested action.
	UserInitiatedAllowingIdleSystemSleep = 23, // Performing a user-requested action, but the system can sleep on idle.
	Background                           = 7,  // Initiated some kind of work, but not as the direct result of a user request.
	LatencyCritical                      = 39, // Requires the highest amount of timer and I/O precision available.
	UserInteractive                      = 39, // Responding to user interaction.
}
```

### [Application ¶](#Application) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L58)

```
Application :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [activate](/core/sys/darwin/Foundation/#Application_activate)
* [activateIgnoringOtherApps](/core/sys/darwin/Foundation/#Application_activateIgnoringOtherApps)
* [active](/core/sys/darwin/Foundation/#Application_active)
* [currentEvent](/core/sys/darwin/Foundation/#Application_currentEvent)
* [finishLaunching](/core/sys/darwin/Foundation/#Application_finishLaunching)
* [isRunning](/core/sys/darwin/Foundation/#Application_isRunning)
* [keyWindow](/core/sys/darwin/Foundation/#Application_keyWindow)
* [mainMenu](/core/sys/darwin/Foundation/#Application_mainMenu)
* [mainWindow](/core/sys/darwin/Foundation/#Application_mainWindow)
* [nextEventMatchingMask](/core/sys/darwin/Foundation/#Application_nextEventMatchingMask)
* [postEvent](/core/sys/darwin/Foundation/#Application_postEvent)
* [run](/core/sys/darwin/Foundation/#Application_run)
* [sendAction](/core/sys/darwin/Foundation/#Application_sendAction)
* [sendEvent](/core/sys/darwin/Foundation/#Application_sendEvent)
* [servicesMenu](/core/sys/darwin/Foundation/#Application_servicesMenu)
* [setActivationPolicy](/core/sys/darwin/Foundation/#Application_setActivationPolicy)
* [setAppleMenu](/core/sys/darwin/Foundation/#Application_setAppleMenu)
* [setDelegate](/core/sys/darwin/Foundation/#Application_setDelegate)
* [setMainMenu](/core/sys/darwin/Foundation/#Application_setMainMenu)
* [setServicesMenu](/core/sys/darwin/Foundation/#Application_setServicesMenu)
* [setTitle](/core/sys/darwin/Foundation/#Application_setTitle)
* [setWindowsMenu](/core/sys/darwin/Foundation/#Application_setWindowsMenu)
* [sharedApplication](/core/sys/darwin/Foundation/#Application_sharedApplication) *(class method)*
* [stop](/core/sys/darwin/Foundation/#Application_stop)
* [terminate](/core/sys/darwin/Foundation/#Application_terminate)
* [updateWindows](/core/sys/darwin/Foundation/#Application_updateWindows)
* [windows](/core/sys/darwin/Foundation/#Application_windows)
* [windowsMenu](/core/sys/darwin/Foundation/#Application_windowsMenu)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ApplicationDelegate ¶](#ApplicationDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L291)

```
ApplicationDelegate :: struct {
	using _: Object,
}
```

##### Related Procedures With Parameters

* [Application\_setDelegate](/core/sys/darwin/Foundation/#Application_setDelegate)



##### Related Procedures With Returns

* [application\_delegate\_register\_and\_alloc](/core/sys/darwin/Foundation/#application_delegate_register_and_alloc)



###### Procedures Through `using` From [Object](/core/sys/darwin/Foundation/#Object)

* [Application\_stop](/core/sys/darwin/Foundation/#Application_stop)
* [Application\_terminate](/core/sys/darwin/Foundation/#Application_terminate)
* [AutoreleasePool\_addObject](/core/sys/darwin/Foundation/#AutoreleasePool_addObject)
* [AutoreleasePool\_showPools](/core/sys/darwin/Foundation/#AutoreleasePool_showPools)
* [Dictionary\_dictionaryWithObject](/core/sys/darwin/Foundation/#Dictionary_dictionaryWithObject)
* [Dictionary\_objectForKey](/core/sys/darwin/Foundation/#Dictionary_objectForKey)
* [NotificationCenter\_addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [NotificationCenter\_addObserverForName\_new](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_new)
* [NotificationCenter\_addObserverForName\_old](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_old)
* [NotificationCenter\_removeObserver](/core/sys/darwin/Foundation/#NotificationCenter_removeObserver)
* [Number\_descriptionWithLocale](/core/sys/darwin/Foundation/#Number_descriptionWithLocale)
* [Window\_makeKeyAndOrderFront](/core/sys/darwin/Foundation/#Window_makeKeyAndOrderFront)
* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [bridgingCast](/core/sys/darwin/Foundation/#bridgingCast)
* [class](/core/sys/darwin/Foundation/#class)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [methodSignatureForSelector](/core/sys/darwin/Foundation/#methodSignatureForSelector)
* [msgSendSafeCheck](/core/sys/darwin/Foundation/#msgSendSafeCheck)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [respondsToSelector](/core/sys/darwin/Foundation/#respondsToSelector)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)
* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName) *(procedure groups)*



###### Procedures Through `using` From [objc\_object](/core/sys/darwin/Foundation/#objc_object)

* [Application\_sendAction](/core/sys/darwin/Foundation/#Application_sendAction)
* [DeallocateObject](/core/sys/darwin/Foundation/#DeallocateObject)
* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object)
* [MenuItem\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setRepresentedObject](/core/sys/darwin/Foundation/#MenuItem_setRepresentedObject)
* [MenuItem\_setTarget](/core/sys/darwin/Foundation/#MenuItem_setTarget)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_selector_object)
* [Menu\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker)
* [Menu\_indexOfItemWithRepresentedObject](/core/sys/darwin/Foundation/#Menu_indexOfItemWithRepresentedObject)
* [Menu\_indexOfItemWithTarget](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTarget)
* [Menu\_setContextMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setContextMenuRepresentation)
* [Menu\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder)
* [Menu\_setMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setMenuRepresentation)
* [Menu\_setTearOffMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setTearOffMenuRepresentation)
* [Menu\_submenuAction](/core/sys/darwin/Foundation/#Menu_submenuAction)
* [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)
* [Window\_orderFront](/core/sys/darwin/Foundation/#Window_orderFront)
* [Window\_orderOut](/core/sys/darwin/Foundation/#Window_orderOut)
* [Window\_performClose](/core/sys/darwin/Foundation/#Window_performClose)
* [Window\_toggleFullScreen](/core/sys/darwin/Foundation/#Window_toggleFullScreen)
* [objc\_destructInstance](/core/sys/darwin/Foundation/#objc_destructInstance)
* [objc\_getAssociatedObject](/core/sys/darwin/Foundation/#objc_getAssociatedObject)
* [objc\_removeAssociatedObjects](/core/sys/darwin/Foundation/#objc_removeAssociatedObjects)
* [objc\_setAssociatedObject](/core/sys/darwin/Foundation/#objc_setAssociatedObject)
* [object\_copy](/core/sys/darwin/Foundation/#object_copy)
* [object\_dispose](/core/sys/darwin/Foundation/#object_dispose)
* [object\_getClass](/core/sys/darwin/Foundation/#object_getClass)
* [object\_getClassName](/core/sys/darwin/Foundation/#object_getClassName)
* [object\_getIndexedIvars](/core/sys/darwin/Foundation/#object_getIndexedIvars)
* [object\_getInstanceVariable](/core/sys/darwin/Foundation/#object_getInstanceVariable)
* [object\_getIvar](/core/sys/darwin/Foundation/#object_getIvar)
* [object\_get\_vtable\_info](/core/sys/darwin/Foundation/#object_get_vtable_info)
* [object\_setClass](/core/sys/darwin/Foundation/#object_setClass)
* [object\_setInstanceVariable](/core/sys/darwin/Foundation/#object_setInstanceVariable)
* [object\_setIvar](/core/sys/darwin/Foundation/#object_setIvar)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*
* [Menu\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*

### [ApplicationDelegateTemplate ¶](#ApplicationDelegateTemplate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L223)

```
ApplicationDelegateTemplate :: struct {
	// Launching Applications
	applicationWillFinishLaunching:                              proc(notification: ^Notification),
	applicationDidFinishLaunching:                               proc(notification: ^Notification),
	// Managing Active Status
	applicationWillBecomeActive:                                 proc(notification: ^Notification),
	applicationDidBecomeActive:                                  proc(notification: ^Notification),
	applicationWillResignActive:                                 proc(notification: ^Notification),
	applicationDidResignActive:                                  proc(notification: ^Notification),
	// Terminating Applications
	applicationShouldTerminate:                                  proc(sender: ^Application) -> ApplicationTerminateReply,
	applicationShouldTerminateAfterLastWindowClosed:             proc(sender: ^Application) -> bool,
	applicationWillTerminate:                                    proc(notification: ^Notification),
	// Hiding Applications
	applicationWillHide:                                         proc(notification: ^Notification),
	applicationDidHide:                                          proc(notification: ^Notification),
	applicationWillUnhide:                                       proc(notification: ^Notification),
	applicationDidUnhide:                                        proc(notification: ^Notification),
	// Managing Windows
	applicationWillUpdate:                                       proc(notification: ^Notification),
	applicationDidUpdate:                                        proc(notification: ^Notification),
	applicationShouldHandleReopenHasVisibleWindows:              proc(sender: ^Application, flag: bool) -> bool,
	// Managing the Dock Menu
	applicationDockMenu:                                         proc(sender: ^Application) -> ^Menu,
	// Localizing Keyboard Shortcuts
	applicationShouldAutomaticallyLocalizeKeyEquivalents:        proc(application: ^Application) -> bool,
	// Displaying Errors
	applicationWillPresentError:                                 proc(application: ^Application, error: ^Error) -> ^Error,
	// Managing the Screen
	applicationDidChangeScreenParameters:                        proc(notification: ^Notification),
	// Continuing User Activities
	applicationWillContinueUserActivityWithType:                 proc(application: ^Application, userActivityType: ^String) -> bool,
	applicationContinueUserActivityRestorationHandler:           proc(application: ^Application, userActivity: ^UserActivity, restorationHandler: ^Block) -> bool,
	applicationDidFailToContinueUserActivityWithTypeError:       proc(application: ^Application, userActivityType: ^String, error: ^Error),
	applicationDidUpdateUserActivity:                            proc(application: ^Application, userActivity: ^UserActivity),
	// Handling Push Notifications
	applicationDidRegisterForRemoteNotificationsWithDeviceToken: proc(application: ^Application, deviceToken: ^Data),
	applicationDidFailToRegisterForRemoteNotificationsWithError: proc(application: ^Application, error: ^Error),
	applicationDidReceiveRemoteNotification:                     proc(application: ^Application, userInfo: ^Dictionary),
	// Handling CloudKit Invitations
	// TODO: if/when we have cloud kit bindings implement
	// applicationUserDidAcceptCloudKitShareWithMetadata:        proc(application: ^Application, metadata: ^CKShareMetadata),
	// Handling SiriKit Intents
	// TODO: if/when we have siri kit bindings implement
	// applicationHandlerForIntent:                              proc(application: ^Application, intent: ^INIntent) -> id,
	// Opening Files
	applicationOpenURLs:                                         proc(application: ^Application, urls: ^Array),
	applicationOpenFile:                                         proc(sender: ^Application, filename: ^String) -> bool,
	applicationOpenFileWithoutUI:                                proc(sender: ^.objc_object, filename: ^String) -> bool,
	applicationOpenTempFile:                                     proc(sender: ^Application, filename: ^String) -> bool,
	applicationOpenFiles:                                        proc(sender: ^Application, filenames: ^Array),
	applicationShouldOpenUntitledFile:                           proc(sender: ^Application) -> bool,
	applicationOpenUntitledFile:                                 proc(sender: ^Application) -> bool,
	// Printing
	applicationPrintFile:                                        proc(sender: ^Application, filename: ^String) -> bool,
	applicationPrintFilesWithSettingsShowPrintPanels:            proc(application: ^Application, fileNames: ^Array, printSettings: ^Dictionary, showPrintPanels: bool) -> ApplicationPrintReply,
	// Restoring Application State
	applicationSupportsSecureRestorableState:                    proc(app: ^Application) -> bool,
	applicationProtectedDataDidBecomeAvailable:                  proc(notification: ^Notification),
	applicationProtectedDataWillBecomeUnavailable:               proc(notification: ^Notification),
	applicationWillEncodeRestorableState:                        proc(app: ^Application, coder: ^Coder),
	applicationDidDecodeRestorableState:                         proc(app: ^Application, coder: ^Coder),
	// Handling Changes to the Occlusion State
	applicationDidChangeOcclusionState:                          proc(notification: ^Notification),
	// Scripting Your App
	applicationDelegateHandlesKey:                               proc(sender: ^Application, key: ^String) -> bool,
}
```

##### Related Procedures With Parameters

* [application\_delegate\_register\_and\_alloc](/core/sys/darwin/Foundation/#application_delegate_register_and_alloc)

### [ApplicationPresentationOptionFlag ¶](#ApplicationPresentationOptionFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L26)

```
ApplicationPresentationOptionFlag :: enum UInteger {
	AutoHideDock                    = 0, 
	HideDock                        = 1, 
	AutoHideMenuBar                 = 2, 
	HideMenuBar                     = 3, 
	DisableAppleMenu                = 4, 
	DisableProcessSwitching         = 5, 
	DisableForceQuit                = 6, 
	DisableSessionTermination       = 7, 
	DisableHideApplication          = 8, 
	DisableMenuBarTransparency      = 9, 
	FullScreen                      = 10, 
	AutoHideToolbar                 = 11, 
	DisableCursorLocationAssistance = 12, 
}
```

### [ApplicationPresentationOptions ¶](#ApplicationPresentationOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L41)

```
ApplicationPresentationOptions :: distinct bit_set[ApplicationPresentationOptionFlag; UInteger]
```

##### Related Constants

* [ApplicationPresentationOptionsAutoHideDock](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsAutoHideDock)
* [ApplicationPresentationOptionsAutoHideMenuBar](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsAutoHideMenuBar)
* [ApplicationPresentationOptionsAutoHideToolbar](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsAutoHideToolbar)
* [ApplicationPresentationOptionsDefault](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDefault)
* [ApplicationPresentationOptionsDisableAppleMenu](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDisableAppleMenu)
* [ApplicationPresentationOptionsDisableCursorLocationAssistance](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDisableCursorLocationAssistance)
* [ApplicationPresentationOptionsDisableForceQuit](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDisableForceQuit)
* [ApplicationPresentationOptionsDisableHideApplication](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDisableHideApplication)
* [ApplicationPresentationOptionsDisableMenuBarTransparency](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDisableMenuBarTransparency)
* [ApplicationPresentationOptionsDisableProcessSwitching](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDisableProcessSwitching)
* [ApplicationPresentationOptionsDisableSessionTermination](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsDisableSessionTermination)
* [ApplicationPresentationOptionsFullScreen](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsFullScreen)
* [ApplicationPresentationOptionsHideDock](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsHideDock)
* [ApplicationPresentationOptionsHideMenuBar](/core/sys/darwin/Foundation/#ApplicationPresentationOptionsHideMenuBar)

### [ApplicationPrintReply ¶](#ApplicationPrintReply) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L19)

```
ApplicationPrintReply :: enum UInteger {
	PrintingCancelled  = 0, 
	PrintingSuccess    = 1, 
	PrintingReplyLater = 2, 
	PrintingFailure    = 3, 
}
```

### [ApplicationTerminateReply ¶](#ApplicationTerminateReply) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L13)

```
ApplicationTerminateReply :: enum UInteger {
	TerminateCancel = 0, 
	TerminateNow    = 1, 
	TerminateLater  = 2, 
}
```

### [Array ¶](#Array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L6)

```
Array :: struct {
	using _: Copying($T=Array),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Array_alloc) *(class method)*
* [count](/core/sys/darwin/Foundation/#Array_count)
* [init](/core/sys/darwin/Foundation/#Array_init)
* [initWithCoder](/core/sys/darwin/Foundation/#Array_initWithCoder)
* [initWithObjects](/core/sys/darwin/Foundation/#Array_initWithObjects)
* [object](/core/sys/darwin/Foundation/#Array_object)
* [objectAs](/core/sys/darwin/Foundation/#Array_objectAs)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [AutoreleasePool ¶](#AutoreleasePool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin#L4)

```
AutoreleasePool :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [addObject](/core/sys/darwin/Foundation/#AutoreleasePool_addObject)
* [alloc](/core/sys/darwin/Foundation/#AutoreleasePool_alloc) *(class method)*
* [drain](/core/sys/darwin/Foundation/#AutoreleasePool_drain)
* [init](/core/sys/darwin/Foundation/#AutoreleasePool_init)
* [showPools](/core/sys/darwin/Foundation/#AutoreleasePool_showPools)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [BOOL ¶](#BOOL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L20)

```
BOOL :: bool
```

 

TODO(bill): should this be `distinct`?




##### Related Procedures With Parameters

* [Application\_activateIgnoringOtherApps](/core/sys/darwin/Foundation/#Application_activateIgnoringOtherApps)
* [Application\_nextEventMatchingMask](/core/sys/darwin/Foundation/#Application_nextEventMatchingMask)
* [Application\_postEvent](/core/sys/darwin/Foundation/#Application_postEvent)
* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_legacy)
* [Cursor\_setHiddenUntilMouseMoves](/core/sys/darwin/Foundation/#Cursor_setHiddenUntilMouseMoves)
* [Data\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#Data_initWithBytesNoCopy)
* [MenuDelegate\_menu\_updateItem\_atIndex\_shouldCancel](/core/sys/darwin/Foundation/#MenuDelegate_menu_updateItem_atIndex_shouldCancel)
* [MenuItem\_setAllowsAutomaticKeyEquivalentLocalization](/core/sys/darwin/Foundation/#MenuItem_setAllowsAutomaticKeyEquivalentLocalization)
* [MenuItem\_setAllowsAutomaticKeyEquivalentMirroring](/core/sys/darwin/Foundation/#MenuItem_setAllowsAutomaticKeyEquivalentMirroring)
* [MenuItem\_setAllowsKeyEquivalentWhenHidden](/core/sys/darwin/Foundation/#MenuItem_setAllowsKeyEquivalentWhenHidden)
* [MenuItem\_setAlternate](/core/sys/darwin/Foundation/#MenuItem_setAlternate)
* [MenuItem\_setEnabled](/core/sys/darwin/Foundation/#MenuItem_setEnabled)
* [MenuItem\_setHidden](/core/sys/darwin/Foundation/#MenuItem_setHidden)
* [MenuItem\_setUsesUserKeyEquivalents](/core/sys/darwin/Foundation/#MenuItem_setUsesUserKeyEquivalents)
* [Menu\_setAllowsContextMenuPlugIns](/core/sys/darwin/Foundation/#Menu_setAllowsContextMenuPlugIns)
* [Menu\_setAutoenablesItems](/core/sys/darwin/Foundation/#Menu_setAutoenablesItems)
* [Menu\_setMenuBarVisible](/core/sys/darwin/Foundation/#Menu_setMenuBarVisible)
* [Menu\_setMenuChangedMessagesEnabled](/core/sys/darwin/Foundation/#Menu_setMenuChangedMessagesEnabled)
* [Menu\_setShowsStateColumn](/core/sys/darwin/Foundation/#Menu_setShowsStateColumn)
* [Number\_initWithBool](/core/sys/darwin/Foundation/#Number_initWithBool)
* [Number\_numberWithBool](/core/sys/darwin/Foundation/#Number_numberWithBool)
* [OpenPanel\_setAllowsMultipleSelection](/core/sys/darwin/Foundation/#OpenPanel_setAllowsMultipleSelection)
* [OpenPanel\_setCanChooseDirectories](/core/sys/darwin/Foundation/#OpenPanel_setCanChooseDirectories)
* [OpenPanel\_setCanChooseFiles](/core/sys/darwin/Foundation/#OpenPanel_setCanChooseFiles)
* [OpenPanel\_setResolvesAliases](/core/sys/darwin/Foundation/#OpenPanel_setResolvesAliases)
* [ProcessInfo\_setAutomaticTerminationSupportEnabled](/core/sys/darwin/Foundation/#ProcessInfo_setAutomaticTerminationSupportEnabled)
* [String\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [Timer\_scheduledTimerWithTimeIntervalRepeatsBlock](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalRepeatsBlock)
* [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)
* [UserDefaults\_setBoolForKey](/core/sys/darwin/Foundation/#UserDefaults_setBoolForKey)
* [View\_setIsFlipped](/core/sys/darwin/Foundation/#View_setIsFlipped)
* [View\_setWantsLayer](/core/sys/darwin/Foundation/#View_setWantsLayer)
* [Window\_initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)
* [Window\_setAcceptsMouseMovedEvents](/core/sys/darwin/Foundation/#Window_setAcceptsMouseMovedEvents)
* [Window\_setFrame](/core/sys/darwin/Foundation/#Window_setFrame)
* [Window\_setIsMiniaturized](/core/sys/darwin/Foundation/#Window_setIsMiniaturized)
* [Window\_setIsVisible](/core/sys/darwin/Foundation/#Window_setIsVisible)
* [Window\_setIsZoomed](/core/sys/darwin/Foundation/#Window_setIsZoomed)
* [Window\_setMovable](/core/sys/darwin/Foundation/#Window_setMovable)
* [Window\_setMovableByWindowBackground](/core/sys/darwin/Foundation/#Window_setMovableByWindowBackground)
* [Window\_setOpaque](/core/sys/darwin/Foundation/#Window_setOpaque)
* [Window\_setReleasedWhenClosed](/core/sys/darwin/Foundation/#Window_setReleasedWhenClosed)
* [Window\_setRestorable](/core/sys/darwin/Foundation/#Window_setRestorable)
* [Window\_setTitlebarAppearsTransparent](/core/sys/darwin/Foundation/#Window_setTitlebarAppearsTransparent)
* [Window\_setWantsLayer](/core/sys/darwin/Foundation/#Window_setWantsLayer)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(procedure groups)*
* [MenuDelegate\_menu](/core/sys/darwin/Foundation/#MenuDelegate_menu) *(procedure groups)*
* [Number\_number](/core/sys/darwin/Foundation/#Number_number) *(procedure groups)*



##### Related Procedures With Returns

* [Application\_active](/core/sys/darwin/Foundation/#Application_active)
* [Application\_isRunning](/core/sys/darwin/Foundation/#Application_isRunning)
* [Application\_setActivationPolicy](/core/sys/darwin/Foundation/#Application_setActivationPolicy)
* [Bundle\_isLoaded](/core/sys/darwin/Foundation/#Bundle_isLoaded)
* [Bundle\_load](/core/sys/darwin/Foundation/#Bundle_load)
* [Bundle\_loadAndReturnError](/core/sys/darwin/Foundation/#Bundle_loadAndReturnError)
* [Bundle\_preflightAndReturnError](/core/sys/darwin/Foundation/#Bundle_preflightAndReturnError)
* [Bundle\_unload](/core/sys/darwin/Foundation/#Bundle_unload)
* [Condition\_waitUntilDate](/core/sys/darwin/Foundation/#Condition_waitUntilDate)
* [Enumerator\_iterator](/core/sys/darwin/Foundation/#Enumerator_iterator)
* [Event\_hasPreciseScrollingDeltas](/core/sys/darwin/Foundation/#Event_hasPreciseScrollingDeltas)
* [Event\_isARepeat](/core/sys/darwin/Foundation/#Event_isARepeat)
* [Event\_isDirectionInvertedFromDevice](/core/sys/darwin/Foundation/#Event_isDirectionInvertedFromDevice)
* [Event\_isEnteringProximity](/core/sys/darwin/Foundation/#Event_isEnteringProximity)
* [Event\_isSwipeTrackingFromScrollEventsEnabled](/core/sys/darwin/Foundation/#Event_isSwipeTrackingFromScrollEventsEnabled)
* [MenuDelegate\_menuHasKeyEquivalent](/core/sys/darwin/Foundation/#MenuDelegate_menuHasKeyEquivalent)
* [MenuItem\_accessInstanceVariablesDirectly](/core/sys/darwin/Foundation/#MenuItem_accessInstanceVariablesDirectly)
* [MenuItem\_allowsAutomaticKeyEquivalentLocalization](/core/sys/darwin/Foundation/#MenuItem_allowsAutomaticKeyEquivalentLocalization)
* [MenuItem\_allowsAutomaticKeyEquivalentMirroring](/core/sys/darwin/Foundation/#MenuItem_allowsAutomaticKeyEquivalentMirroring)
* [MenuItem\_allowsKeyEquivalentWhenHidden](/core/sys/darwin/Foundation/#MenuItem_allowsKeyEquivalentWhenHidden)
* [MenuItem\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#MenuItem_automaticallyNotifiesObserversForKey)
* [MenuItem\_conformsToProtocol](/core/sys/darwin/Foundation/#MenuItem_conformsToProtocol)
* [MenuItem\_hasSubmenu](/core/sys/darwin/Foundation/#MenuItem_hasSubmenu)
* [MenuItem\_instancesRespondToSelector](/core/sys/darwin/Foundation/#MenuItem_instancesRespondToSelector)
* [MenuItem\_isAlternate](/core/sys/darwin/Foundation/#MenuItem_isAlternate)
* [MenuItem\_isEnabled](/core/sys/darwin/Foundation/#MenuItem_isEnabled)
* [MenuItem\_isHidden](/core/sys/darwin/Foundation/#MenuItem_isHidden)
* [MenuItem\_isHiddenOrHasHiddenAncestor](/core/sys/darwin/Foundation/#MenuItem_isHiddenOrHasHiddenAncestor)
* [MenuItem\_isHighlighted](/core/sys/darwin/Foundation/#MenuItem_isHighlighted)
* [MenuItem\_isSectionHeader](/core/sys/darwin/Foundation/#MenuItem_isSectionHeader)
* [MenuItem\_isSeparatorItem](/core/sys/darwin/Foundation/#MenuItem_isSeparatorItem)
* [MenuItem\_isSubclassOfClass](/core/sys/darwin/Foundation/#MenuItem_isSubclassOfClass)
* [MenuItem\_resolveClassMethod](/core/sys/darwin/Foundation/#MenuItem_resolveClassMethod)
* [MenuItem\_resolveInstanceMethod](/core/sys/darwin/Foundation/#MenuItem_resolveInstanceMethod)
* [MenuItem\_useStoredAccessor](/core/sys/darwin/Foundation/#MenuItem_useStoredAccessor)
* [MenuItem\_usesUserKeyEquivalents](/core/sys/darwin/Foundation/#MenuItem_usesUserKeyEquivalents)
* [Menu\_accessInstanceVariablesDirectly](/core/sys/darwin/Foundation/#Menu_accessInstanceVariablesDirectly)
* [Menu\_allowsContextMenuPlugIns](/core/sys/darwin/Foundation/#Menu_allowsContextMenuPlugIns)
* [Menu\_autoenablesItems](/core/sys/darwin/Foundation/#Menu_autoenablesItems)
* [Menu\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#Menu_automaticallyNotifiesObserversForKey)
* [Menu\_conformsToProtocol](/core/sys/darwin/Foundation/#Menu_conformsToProtocol)
* [Menu\_instancesRespondToSelector](/core/sys/darwin/Foundation/#Menu_instancesRespondToSelector)
* [Menu\_isAttached](/core/sys/darwin/Foundation/#Menu_isAttached)
* [Menu\_isSubclassOfClass](/core/sys/darwin/Foundation/#Menu_isSubclassOfClass)
* [Menu\_isTornOff](/core/sys/darwin/Foundation/#Menu_isTornOff)
* [Menu\_menuBarVisible](/core/sys/darwin/Foundation/#Menu_menuBarVisible)
* [Menu\_menuChangedMessagesEnabled](/core/sys/darwin/Foundation/#Menu_menuChangedMessagesEnabled)
* [Menu\_performKeyEquivalent](/core/sys/darwin/Foundation/#Menu_performKeyEquivalent)
* [Menu\_popUpMenuPositioningItem](/core/sys/darwin/Foundation/#Menu_popUpMenuPositioningItem)
* [Menu\_resolveClassMethod](/core/sys/darwin/Foundation/#Menu_resolveClassMethod)
* [Menu\_resolveInstanceMethod](/core/sys/darwin/Foundation/#Menu_resolveInstanceMethod)
* [Menu\_showsStateColumn](/core/sys/darwin/Foundation/#Menu_showsStateColumn)
* [Menu\_useStoredAccessor](/core/sys/darwin/Foundation/#Menu_useStoredAccessor)
* [Number\_boolValue](/core/sys/darwin/Foundation/#Number_boolValue)
* [Number\_isEqualToNumber](/core/sys/darwin/Foundation/#Number_isEqualToNumber)
* [ProcessInfo\_automaticTerminationSupportEnabled](/core/sys/darwin/Foundation/#ProcessInfo_automaticTerminationSupportEnabled)
* [ProcessInfo\_isLowPowerModeEnabled](/core/sys/darwin/Foundation/#ProcessInfo_isLowPowerModeEnabled)
* [ProcessInfo\_isMacCatalystApp](/core/sys/darwin/Foundation/#ProcessInfo_isMacCatalystApp)
* [ProcessInfo\_isOperatingSystemAtLeastVersion](/core/sys/darwin/Foundation/#ProcessInfo_isOperatingSystemAtLeastVersion)
* [ProcessInfo\_isiOSAppOnMac](/core/sys/darwin/Foundation/#ProcessInfo_isiOSAppOnMac)
* [Range\_Equal](/core/sys/darwin/Foundation/#Range_Equal)
* [Range\_LocationInRange](/core/sys/darwin/Foundation/#Range_LocationInRange)
* [RunningApplication\_finishedLaunching](/core/sys/darwin/Foundation/#RunningApplication_finishedLaunching)
* [Screen\_screensHaveSeparateSpaces](/core/sys/darwin/Foundation/#Screen_screensHaveSeparateSpaces)
* [String\_isEqualToString](/core/sys/darwin/Foundation/#String_isEqualToString)
* [Value\_isEqualToValue](/core/sys/darwin/Foundation/#Value_isEqualToValue)
* [View\_isFlipped](/core/sys/darwin/Foundation/#View_isFlipped)
* [View\_wantsLayer](/core/sys/darwin/Foundation/#View_wantsLayer)
* [Window\_hasCloseBox](/core/sys/darwin/Foundation/#Window_hasCloseBox)
* [Window\_hasTitleBar](/core/sys/darwin/Foundation/#Window_hasTitleBar)
* [Window\_isFloatingPanel](/core/sys/darwin/Foundation/#Window_isFloatingPanel)
* [Window\_isMiniaturizable](/core/sys/darwin/Foundation/#Window_isMiniaturizable)
* [Window\_isModalPanel](/core/sys/darwin/Foundation/#Window_isModalPanel)
* [Window\_isResizable](/core/sys/darwin/Foundation/#Window_isResizable)
* [Window\_isZoomable](/core/sys/darwin/Foundation/#Window_isZoomable)
* [Window\_keyWindow](/core/sys/darwin/Foundation/#Window_keyWindow)
* [Window\_mainWindow](/core/sys/darwin/Foundation/#Window_mainWindow)
* [Window\_makeFirstResponder](/core/sys/darwin/Foundation/#Window_makeFirstResponder)
* [Window\_opaque](/core/sys/darwin/Foundation/#Window_opaque)
* [class\_addIvar](/core/sys/darwin/Foundation/#class_addIvar)
* [class\_addMethod](/core/sys/darwin/Foundation/#class_addMethod)
* [class\_addProperty](/core/sys/darwin/Foundation/#class_addProperty)
* [class\_addProtocol](/core/sys/darwin/Foundation/#class_addProtocol)
* [class\_conformsToProtocol](/core/sys/darwin/Foundation/#class_conformsToProtocol)
* [class\_isMetaClass](/core/sys/darwin/Foundation/#class_isMetaClass)
* [class\_respondsToSelector](/core/sys/darwin/Foundation/#class_respondsToSelector)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [msgSendSafeCheck](/core/sys/darwin/Foundation/#msgSendSafeCheck)
* [protocol\_conformsToProtocol](/core/sys/darwin/Foundation/#protocol_conformsToProtocol)
* [protocol\_isEqual](/core/sys/darwin/Foundation/#protocol_isEqual)
* [respondsToSelector](/core/sys/darwin/Foundation/#respondsToSelector)
* [sel\_isEqual](/core/sys/darwin/Foundation/#sel_isEqual)

### [BackingStoreType ¶](#BackingStoreType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L69)

```
BackingStoreType :: enum UInteger {
	Retained    = 0, 
	Nonretained = 1, 
	Buffered    = 2, 
}
```

##### Related Procedures With Parameters

* [Window\_initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)

### [BitmapFormatFlag ¶](#BitmapFormatFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L7)

```
BitmapFormatFlag :: enum BitmapInteger {
	AlphaFirst               = 0, 
	AlphaNonpremultiplied    = 1, 
	FloatingPointSamples     = 2, 
	SixteenBitLittleEndian   = 8, 
	ThirtyTwoBitLittleEndian = 9, 
	SixteenBitBigEndian      = 10, 
	ThirtyTwoBitBigEndian    = 11, 
}
```

### [BitmapFormatFlags ¶](#BitmapFormatFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L16)

```
BitmapFormatFlags :: bit_set[BitmapFormatFlag; BitmapInteger]
```

##### Related Procedures With Parameters

* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(procedure groups)*

### [BitmapImageRep ¶](#BitmapImageRep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L4)

```
BitmapImageRep :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [CGImage](/core/sys/darwin/Foundation/#BitmapImageRep_CGImage)
* [alloc](/core/sys/darwin/Foundation/#BitmapImageRep_alloc) *(class method)*
* [bitmapData](/core/sys/darwin/Foundation/#BitmapImageRep_bitmapData)
* [initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(overloaded method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [BitmapInteger ¶](#BitmapInteger) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L6)

```
BitmapInteger :: distinct uint
```

### [Block ¶](#Block) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBlock.odin#L8)

```
Block :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [createGlobal](/core/sys/darwin/Foundation/#Block_createGlobal) *(class method)*
* [createGlobalWithParam](/core/sys/darwin/Foundation/#Block_createGlobalWithParam) *(class method)*
* [createLocal](/core/sys/darwin/Foundation/#Block_createLocal) *(class method)*
* [createLocalWithParam](/core/sys/darwin/Foundation/#Block_createLocalWithParam) *(class method)*
* [invoke](/core/sys/darwin/Foundation/#Block_invoke)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Bundle ¶](#Bundle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L4)

```
Bundle :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [PathForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_PathForAuxiliaryExecutable)
* [URLForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_URLForAuxiliaryExecutable)
* [allBundles](/core/sys/darwin/Foundation/#Bundle_allBundles)
* [allFrameworks](/core/sys/darwin/Foundation/#Bundle_allFrameworks)
* [alloc](/core/sys/darwin/Foundation/#Bundle_alloc) *(class method)*
* [appStoreReceiptPath](/core/sys/darwin/Foundation/#Bundle_appStoreReceiptPath)
* [appStoreReceiptURL](/core/sys/darwin/Foundation/#Bundle_appStoreReceiptURL)
* [builtInPlugInsPath](/core/sys/darwin/Foundation/#Bundle_builtInPlugInsPath)
* [builtInPlugInsURL](/core/sys/darwin/Foundation/#Bundle_builtInPlugInsURL)
* [bundleIdentifier](/core/sys/darwin/Foundation/#Bundle_bundleIdentifier)
* [bundlePath](/core/sys/darwin/Foundation/#Bundle_bundlePath)
* [bundleURL](/core/sys/darwin/Foundation/#Bundle_bundleURL)
* [bundleWithPath](/core/sys/darwin/Foundation/#Bundle_bundleWithPath) *(class method)*
* [bundleWithURL](/core/sys/darwin/Foundation/#Bundle_bundleWithURL) *(class method)*
* [executablePath](/core/sys/darwin/Foundation/#Bundle_executablePath)
* [executableURL](/core/sys/darwin/Foundation/#Bundle_executableURL)
* [infoDictionary](/core/sys/darwin/Foundation/#Bundle_infoDictionary)
* [init](/core/sys/darwin/Foundation/#Bundle_init)
* [initWithPath](/core/sys/darwin/Foundation/#Bundle_initWithPath)
* [initWithURL](/core/sys/darwin/Foundation/#Bundle_initWithURL)
* [isLoaded](/core/sys/darwin/Foundation/#Bundle_isLoaded)
* [load](/core/sys/darwin/Foundation/#Bundle_load)
* [loadAndReturnError](/core/sys/darwin/Foundation/#Bundle_loadAndReturnError)
* [localizedInfoDictionary](/core/sys/darwin/Foundation/#Bundle_localizedInfoDictionary)
* [localizedStringForKey](/core/sys/darwin/Foundation/#Bundle_localizedStringForKey)
* [mainBundle](/core/sys/darwin/Foundation/#Bundle_mainBundle) *(class method)*
* [objectForInfoDictionaryKey](/core/sys/darwin/Foundation/#Bundle_objectForInfoDictionaryKey)
* [preflightAndReturnError](/core/sys/darwin/Foundation/#Bundle_preflightAndReturnError)
* [privateFrameworksPath](/core/sys/darwin/Foundation/#Bundle_privateFrameworksPath)
* [privateFrameworksURL](/core/sys/darwin/Foundation/#Bundle_privateFrameworksURL)
* [resourcePath](/core/sys/darwin/Foundation/#Bundle_resourcePath)
* [resourceURL](/core/sys/darwin/Foundation/#Bundle_resourceURL)
* [sharedFrameworksPath](/core/sys/darwin/Foundation/#Bundle_sharedFrameworksPath)
* [sharedFrameworksURL](/core/sys/darwin/Foundation/#Bundle_sharedFrameworksURL)
* [sharedSupportPath](/core/sys/darwin/Foundation/#Bundle_sharedSupportPath)
* [sharedSupportURL](/core/sys/darwin/Foundation/#Bundle_sharedSupportURL)
* [unload](/core/sys/darwin/Foundation/#Bundle_unload)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Class ¶](#Class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L10)

```
Class :: ^.objc_class
```

##### Related Procedures With Parameters

* [AllocateObject](/core/sys/darwin/Foundation/#AllocateObject)
* [MenuItem\_isSubclassOfClass](/core/sys/darwin/Foundation/#MenuItem_isSubclassOfClass)
* [MenuItem\_poseAsClass](/core/sys/darwin/Foundation/#MenuItem_poseAsClass)
* [Menu\_isSubclassOfClass](/core/sys/darwin/Foundation/#Menu_isSubclassOfClass)
* [Menu\_poseAsClass](/core/sys/darwin/Foundation/#Menu_poseAsClass)
* [StringFromClass](/core/sys/darwin/Foundation/#StringFromClass)
* [alloc\_user\_object](/core/sys/darwin/Foundation/#alloc_user_object)
* [class\_addIvar](/core/sys/darwin/Foundation/#class_addIvar)
* [class\_addMethod](/core/sys/darwin/Foundation/#class_addMethod)
* [class\_addProperty](/core/sys/darwin/Foundation/#class_addProperty)
* [class\_addProtocol](/core/sys/darwin/Foundation/#class_addProtocol)
* [class\_conformsToProtocol](/core/sys/darwin/Foundation/#class_conformsToProtocol)
* [class\_copyIvarList](/core/sys/darwin/Foundation/#class_copyIvarList)
* [class\_copyMethodList](/core/sys/darwin/Foundation/#class_copyMethodList)
* [class\_copyPropertyList](/core/sys/darwin/Foundation/#class_copyPropertyList)
* [class\_copyProtocolList](/core/sys/darwin/Foundation/#class_copyProtocolList)
* [class\_createInstance](/core/sys/darwin/Foundation/#class_createInstance)
* [class\_getClassMethod](/core/sys/darwin/Foundation/#class_getClassMethod)
* [class\_getClassVariable](/core/sys/darwin/Foundation/#class_getClassVariable)
* [class\_getInstanceMethod](/core/sys/darwin/Foundation/#class_getInstanceMethod)
* [class\_getInstanceSize](/core/sys/darwin/Foundation/#class_getInstanceSize)
* [class\_getInstanceVariable](/core/sys/darwin/Foundation/#class_getInstanceVariable)
* [class\_getMethodImplementation](/core/sys/darwin/Foundation/#class_getMethodImplementation)
* [class\_getName](/core/sys/darwin/Foundation/#class_getName)
* [class\_getProperty](/core/sys/darwin/Foundation/#class_getProperty)
* [class\_getSuperclass](/core/sys/darwin/Foundation/#class_getSuperclass)
* [class\_getVersion](/core/sys/darwin/Foundation/#class_getVersion)
* [class\_get\_metaclass](/core/sys/darwin/Foundation/#class_get_metaclass)
* [class\_get\_vtable\_info](/core/sys/darwin/Foundation/#class_get_vtable_info)
* [class\_isMetaClass](/core/sys/darwin/Foundation/#class_isMetaClass)
* [class\_replaceMethod](/core/sys/darwin/Foundation/#class_replaceMethod)
* [class\_replaceProperty](/core/sys/darwin/Foundation/#class_replaceProperty)
* [class\_respondsToSelector](/core/sys/darwin/Foundation/#class_respondsToSelector)
* [class\_setVersion](/core/sys/darwin/Foundation/#class_setVersion)
* [objc\_allocateClassPair](/core/sys/darwin/Foundation/#objc_allocateClassPair)
* [objc\_constructInstance](/core/sys/darwin/Foundation/#objc_constructInstance)
* [objc\_disposeClassPair](/core/sys/darwin/Foundation/#objc_disposeClassPair)
* [objc\_duplicateClass](/core/sys/darwin/Foundation/#objc_duplicateClass)
* [objc\_getClassList](/core/sys/darwin/Foundation/#objc_getClassList)
* [objc\_registerClassPair](/core/sys/darwin/Foundation/#objc_registerClassPair)
* [object\_setClass](/core/sys/darwin/Foundation/#object_setClass)
* [register\_subclass](/core/sys/darwin/Foundation/#register_subclass)



##### Related Procedures With Returns

* [ClassFromString](/core/sys/darwin/Foundation/#ClassFromString)
* [MenuItem\_class](/core/sys/darwin/Foundation/#MenuItem_class)
* [MenuItem\_classForKeyedUnarchiver](/core/sys/darwin/Foundation/#MenuItem_classForKeyedUnarchiver)
* [MenuItem\_superclass](/core/sys/darwin/Foundation/#MenuItem_superclass)
* [Menu\_class](/core/sys/darwin/Foundation/#Menu_class)
* [Menu\_classForKeyedUnarchiver](/core/sys/darwin/Foundation/#Menu_classForKeyedUnarchiver)
* [Menu\_superclass](/core/sys/darwin/Foundation/#Menu_superclass)
* [class](/core/sys/darwin/Foundation/#class)
* [objc\_copyClassList](/core/sys/darwin/Foundation/#objc_copyClassList)
* [objc\_getRequiredClass](/core/sys/darwin/Foundation/#objc_getRequiredClass)
* [objc\_lookUpClass](/core/sys/darwin/Foundation/#objc_lookUpClass)
* [object\_getClass](/core/sys/darwin/Foundation/#object_getClass)

### [Class\_VTable\_Info ¶](#Class_VTable_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L14)

```
Class_VTable_Info :: struct {
	_context:        runtime.Context,
	super_vtable:    rawptr,
	protocol_vtable: rawptr,
}
```

##### Related Procedures With Returns

* [class\_get\_vtable\_info](/core/sys/darwin/Foundation/#class_get_vtable_info)
* [object\_get\_vtable\_info](/core/sys/darwin/Foundation/#object_get_vtable_info)

### [Coder ¶](#Coder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L96)

```
Coder :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Color ¶](#Color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L9)

```
Color :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [blackColor](/core/sys/darwin/Foundation/#Color_blackColor) *(class method)*
* [blueColor](/core/sys/darwin/Foundation/#Color_blueColor) *(class method)*
* [colorSpace](/core/sys/darwin/Foundation/#Color_colorSpace)
* [colorSpaceName](/core/sys/darwin/Foundation/#Color_colorSpaceName)
* [colorUsingColorSpaceName](/core/sys/darwin/Foundation/#Color_colorUsingColorSpaceName)
* [colorWithCalibratedHue](/core/sys/darwin/Foundation/#Color_colorWithCalibratedHue) *(class method)*
* [colorWithCalibratedRed](/core/sys/darwin/Foundation/#Color_colorWithCalibratedRed) *(class method)*
* [colorWithCalibratedWhite](/core/sys/darwin/Foundation/#Color_colorWithCalibratedWhite) *(class method)*
* [colorWithColorSpace](/core/sys/darwin/Foundation/#Color_colorWithColorSpace) *(class method)*
* [colorWithDeviceCyan](/core/sys/darwin/Foundation/#Color_colorWithDeviceCyan) *(class method)*
* [colorWithDeviceHue](/core/sys/darwin/Foundation/#Color_colorWithDeviceHue) *(class method)*
* [colorWithDeviceRed](/core/sys/darwin/Foundation/#Color_colorWithDeviceRed) *(class method)*
* [colorWithDeviceWhite](/core/sys/darwin/Foundation/#Color_colorWithDeviceWhite) *(class method)*
* [colorWithSRGBRed](/core/sys/darwin/Foundation/#Color_colorWithSRGBRed) *(class method)*
* [cyanColor](/core/sys/darwin/Foundation/#Color_cyanColor) *(class method)*
* [getCMYKA](/core/sys/darwin/Foundation/#Color_getCMYKA)
* [getComponents](/core/sys/darwin/Foundation/#Color_getComponents)
* [getHSBA](/core/sys/darwin/Foundation/#Color_getHSBA)
* [getRGBA](/core/sys/darwin/Foundation/#Color_getRGBA)
* [getWhiteAlpha](/core/sys/darwin/Foundation/#Color_getWhiteAlpha)
* [greenColor](/core/sys/darwin/Foundation/#Color_greenColor) *(class method)*
* [magentaColor](/core/sys/darwin/Foundation/#Color_magentaColor) *(class method)*
* [numberOfComponents](/core/sys/darwin/Foundation/#Color_numberOfComponents)
* [orangeColor](/core/sys/darwin/Foundation/#Color_orangeColor) *(class method)*
* [purpleColor](/core/sys/darwin/Foundation/#Color_purpleColor) *(class method)*
* [redColor](/core/sys/darwin/Foundation/#Color_redColor) *(class method)*
* [whiteColor](/core/sys/darwin/Foundation/#Color_whiteColor) *(class method)*
* [yellowColor](/core/sys/darwin/Foundation/#Color_yellowColor) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ColorSpace ¶](#ColorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L6)

```
ColorSpace :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ComparisonResult ¶](#ComparisonResult) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L30)

```
ComparisonResult :: enum Integer {
	OrderedAscending  = -1, 
	OrderedSame       = 0, 
	OrderedDescending = 1, 
}
```

##### Related Procedures With Returns

* [Number\_compare](/core/sys/darwin/Foundation/#Number_compare)

### [Condition ¶](#Condition) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L13)

```
Condition :: struct {
	using _: Locking($T=Condition),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Condition_alloc) *(class method)*
* [broadcast](/core/sys/darwin/Foundation/#Condition_broadcast)
* [init](/core/sys/darwin/Foundation/#Condition_init)
* [lock](/core/sys/darwin/Foundation/#Condition_lock)
* [signal](/core/sys/darwin/Foundation/#Condition_signal)
* [unlock](/core/sys/darwin/Foundation/#Condition_unlock)
* [wait](/core/sys/darwin/Foundation/#Condition_wait)
* [waitUntilDate](/core/sys/darwin/Foundation/#Condition_waitUntilDate)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Copying ¶](#Copying) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L22)

```
Copying :: struct($T: typeid) {
	… // See source for fields
}
```

### [Cursor ¶](#Cursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L4)

```
Cursor :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [IBeamCursor](/core/sys/darwin/Foundation/#Cursor_IBeamCursor) *(class method)*
* [alloc](/core/sys/darwin/Foundation/#Cursor_alloc) *(class method)*
* [arrowCursor](/core/sys/darwin/Foundation/#Cursor_arrowCursor) *(class method)*
* [currentCursor](/core/sys/darwin/Foundation/#Cursor_currentCursor) *(class method)*
* [hide](/core/sys/darwin/Foundation/#Cursor_hide) *(class method)*
* [initWithImage](/core/sys/darwin/Foundation/#Cursor_initWithImage)
* [pointingHandCursor](/core/sys/darwin/Foundation/#Cursor_pointingHandCursor) *(class method)*
* [set](/core/sys/darwin/Foundation/#Cursor_set)
* [setHiddenUntilMouseMoves](/core/sys/darwin/Foundation/#Cursor_setHiddenUntilMouseMoves) *(class method)*
* [unhide](/core/sys/darwin/Foundation/#Cursor_unhide) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Data ¶](#Data) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin#L4)

```
Data :: struct {
	using _: Copying($T=Data),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Data_alloc) *(class method)*
* [init](/core/sys/darwin/Foundation/#Data_init)
* [initWithBytes](/core/sys/darwin/Foundation/#Data_initWithBytes)
* [initWithBytesNoCopy](/core/sys/darwin/Foundation/#Data_initWithBytesNoCopy)
* [length](/core/sys/darwin/Foundation/#Data_length)
* [mutableBytes](/core/sys/darwin/Foundation/#Data_mutableBytes)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Date ¶](#Date) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin#L4)

```
Date :: struct {
	using _: Copying($T=Date),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Date_alloc) *(class method)*
* [dateWithTimeIntervalSinceNow](/core/sys/darwin/Foundation/#Date_dateWithTimeIntervalSinceNow)
* [distantFuture](/core/sys/darwin/Foundation/#Date_distantFuture) *(class method)*
* [distantPast](/core/sys/darwin/Foundation/#Date_distantPast) *(class method)*
* [init](/core/sys/darwin/Foundation/#Date_init)
* [timeIntervalSince1970](/core/sys/darwin/Foundation/#Date_timeIntervalSince1970)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Depth ¶](#Depth) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L28)

```
Depth :: enum UInteger {
	onehundredtwentyeightBitRGB = 544, 
	sixtyfourBitRGB             = 528, 
	twentyfourBitRGB            = 520, 
}
```

##### Related Procedures With Returns

* [Screen\_depth](/core/sys/darwin/Foundation/#Screen_depth)

### [Dictionary ¶](#Dictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L4)

```
Dictionary :: struct {
	using _: Copying($T=Dictionary),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Dictionary_alloc) *(class method)*
* [count](/core/sys/darwin/Foundation/#Dictionary_count)
* [dictionary](/core/sys/darwin/Foundation/#Dictionary_dictionary) *(class method)*
* [dictionaryWithObject](/core/sys/darwin/Foundation/#Dictionary_dictionaryWithObject) *(class method)*
* [dictionaryWithObjects](/core/sys/darwin/Foundation/#Dictionary_dictionaryWithObjects) *(class method)*
* [init](/core/sys/darwin/Foundation/#Dictionary_init)
* [initWithObjects](/core/sys/darwin/Foundation/#Dictionary_initWithObjects)
* [keyEnumerator](/core/sys/darwin/Foundation/#Dictionary_keyEnumerator)
* [objectForKey](/core/sys/darwin/Foundation/#Dictionary_objectForKey)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Enumerator ¶](#Enumerator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L17)

```
Enumerator :: struct($T: typeid) {
	… // See source for fields
}
```

### [Error ¶](#Error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L32)

```
Error :: struct {
	using _: Copying($T=Error),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Error_alloc) *(class method)*
* [code](/core/sys/darwin/Foundation/#Error_code)
* [domain](/core/sys/darwin/Foundation/#Error_domain)
* [errorWithDomain](/core/sys/darwin/Foundation/#Error_errorWithDomain) *(class method)*
* [init](/core/sys/darwin/Foundation/#Error_init)
* [initWithDomain](/core/sys/darwin/Foundation/#Error_initWithDomain)
* [localizedDescription](/core/sys/darwin/Foundation/#Error_localizedDescription)
* [localizedFailureReason](/core/sys/darwin/Foundation/#Error_localizedFailureReason)
* [localizedRecoveryOptions](/core/sys/darwin/Foundation/#Error_localizedRecoveryOptions)
* [localizedRecoverySuggestion](/core/sys/darwin/Foundation/#Error_localizedRecoverySuggestion)
* [userInfo](/core/sys/darwin/Foundation/#Error_userInfo)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ErrorDomain ¶](#ErrorDomain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L5)

```
ErrorDomain :: ^String
```

##### Related Procedures With Parameters

* [Application\_nextEventMatchingMask](/core/sys/darwin/Foundation/#Application_nextEventMatchingMask)
* [Application\_setTitle](/core/sys/darwin/Foundation/#Application_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_legacy)
* [Bundle\_PathForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_PathForAuxiliaryExecutable)
* [Bundle\_URLForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_URLForAuxiliaryExecutable)
* [Bundle\_bundleWithPath](/core/sys/darwin/Foundation/#Bundle_bundleWithPath)
* [Bundle\_initWithPath](/core/sys/darwin/Foundation/#Bundle_initWithPath)
* [Bundle\_localizedStringForKey](/core/sys/darwin/Foundation/#Bundle_localizedStringForKey)
* [Bundle\_objectForInfoDictionaryKey](/core/sys/darwin/Foundation/#Bundle_objectForInfoDictionaryKey)
* [ClassFromString](/core/sys/darwin/Foundation/#ClassFromString)
* [Color\_colorUsingColorSpaceName](/core/sys/darwin/Foundation/#Color_colorUsingColorSpaceName)
* [Error\_errorWithDomain](/core/sys/darwin/Foundation/#Error_errorWithDomain)
* [Error\_initWithDomain](/core/sys/darwin/Foundation/#Error_initWithDomain)
* [MenuItem\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#MenuItem_automaticallyNotifiesObserversForKey)
* [MenuItem\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_exposeBinding](/core/sys/darwin/Foundation/#MenuItem_exposeBinding)
* [MenuItem\_initWithTitle](/core/sys/darwin/Foundation/#MenuItem_initWithTitle)
* [MenuItem\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#MenuItem_keyPathsForValuesAffectingValueForKey)
* [MenuItem\_sectionHeaderWithTitle](/core/sys/darwin/Foundation/#MenuItem_sectionHeaderWithTitle)
* [MenuItem\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalent)
* [MenuItem\_setKeys](/core/sys/darwin/Foundation/#MenuItem_setKeys)
* [MenuItem\_setSubtitle](/core/sys/darwin/Foundation/#MenuItem_setSubtitle)
* [MenuItem\_setTitle](/core/sys/darwin/Foundation/#MenuItem_setTitle)
* [MenuItem\_setTitleWithMnemonic](/core/sys/darwin/Foundation/#MenuItem_setTitleWithMnemonic)
* [MenuItem\_setToolTip](/core/sys/darwin/Foundation/#MenuItem_setToolTip)
* [Menu\_addItemWithTitle](/core/sys/darwin/Foundation/#Menu_addItemWithTitle)
* [Menu\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#Menu_automaticallyNotifiesObserversForKey)
* [Menu\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker)
* [Menu\_exposeBinding](/core/sys/darwin/Foundation/#Menu_exposeBinding)
* [Menu\_indexOfItemWithTitle](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTitle)
* [Menu\_initWithTitle](/core/sys/darwin/Foundation/#Menu_initWithTitle)
* [Menu\_insertItemWithTitle](/core/sys/darwin/Foundation/#Menu_insertItemWithTitle)
* [Menu\_itemWithTitle](/core/sys/darwin/Foundation/#Menu_itemWithTitle)
* [Menu\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#Menu_keyPathsForValuesAffectingValueForKey)
* [Menu\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder)
* [Menu\_setKeys](/core/sys/darwin/Foundation/#Menu_setKeys)
* [Menu\_setTitle](/core/sys/darwin/Foundation/#Menu_setTitle)
* [NSWindow\_setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [NotificationCenter\_addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [NotificationCenter\_addObserverForName\_new](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_new)
* [NotificationCenter\_addObserverForName\_old](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_old)
* [ProcessInfo\_beginActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_beginActivityWithOptions)
* [ProcessInfo\_disableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_disableAutomaticTermination)
* [ProcessInfo\_enableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_enableAutomaticTermination)
* [ProcessInfo\_performActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_performActivityWithOptions)
* [ProcessInfo\_performExpiringActivityWithReason](/core/sys/darwin/Foundation/#ProcessInfo_performExpiringActivityWithReason)
* [RunLoop\_addTimerForMode](/core/sys/darwin/Foundation/#RunLoop_addTimerForMode)
* [SelectorFromString](/core/sys/darwin/Foundation/#SelectorFromString)
* [String\_UTF8String](/core/sys/darwin/Foundation/#String_UTF8String)
* [String\_characterAtIndex](/core/sys/darwin/Foundation/#String_characterAtIndex)
* [String\_cstringUsingEncoding](/core/sys/darwin/Foundation/#String_cstringUsingEncoding)
* [String\_init](/core/sys/darwin/Foundation/#String_init)
* [String\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [String\_initWithCString](/core/sys/darwin/Foundation/#String_initWithCString)
* [String\_initWithOdinString](/core/sys/darwin/Foundation/#String_initWithOdinString)
* [String\_initWithString](/core/sys/darwin/Foundation/#String_initWithString)
* [String\_isEqualToString](/core/sys/darwin/Foundation/#String_isEqualToString)
* [String\_length](/core/sys/darwin/Foundation/#String_length)
* [String\_lengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_lengthOfBytesUsingEncoding)
* [String\_maximumLengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_maximumLengthOfBytesUsingEncoding)
* [String\_odinString](/core/sys/darwin/Foundation/#String_odinString)
* [String\_rangeOfString](/core/sys/darwin/Foundation/#String_rangeOfString)
* [String\_stringByAppendingString](/core/sys/darwin/Foundation/#String_stringByAppendingString)
* [URLResponse\_initWithURL](/core/sys/darwin/Foundation/#URLResponse_initWithURL)
* [URL\_initFileURLWithPath](/core/sys/darwin/Foundation/#URL_initFileURLWithPath)
* [URL\_initWithString](/core/sys/darwin/Foundation/#URL_initWithString)
* [UserDefaults\_setBoolForKey](/core/sys/darwin/Foundation/#UserDefaults_setBoolForKey)
* [Window\_minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle)
* [Window\_setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(procedure groups)*
* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName) *(procedure groups)*



##### Related Procedures With Returns

* [Bundle\_appStoreReceiptPath](/core/sys/darwin/Foundation/#Bundle_appStoreReceiptPath)
* [Bundle\_builtInPlugInsPath](/core/sys/darwin/Foundation/#Bundle_builtInPlugInsPath)
* [Bundle\_bundleIdentifier](/core/sys/darwin/Foundation/#Bundle_bundleIdentifier)
* [Bundle\_bundlePath](/core/sys/darwin/Foundation/#Bundle_bundlePath)
* [Bundle\_executablePath](/core/sys/darwin/Foundation/#Bundle_executablePath)
* [Bundle\_privateFrameworksPath](/core/sys/darwin/Foundation/#Bundle_privateFrameworksPath)
* [Bundle\_resourcePath](/core/sys/darwin/Foundation/#Bundle_resourcePath)
* [Bundle\_sharedFrameworksPath](/core/sys/darwin/Foundation/#Bundle_sharedFrameworksPath)
* [Bundle\_sharedSupportPath](/core/sys/darwin/Foundation/#Bundle_sharedSupportPath)
* [Color\_colorSpaceName](/core/sys/darwin/Foundation/#Color_colorSpaceName)
* [Error\_domain](/core/sys/darwin/Foundation/#Error_domain)
* [Error\_localizedDescription](/core/sys/darwin/Foundation/#Error_localizedDescription)
* [Error\_localizedFailureReason](/core/sys/darwin/Foundation/#Error_localizedFailureReason)
* [Error\_localizedRecoverySuggestion](/core/sys/darwin/Foundation/#Error_localizedRecoverySuggestion)
* [Event\_characters](/core/sys/darwin/Foundation/#Event_characters)
* [Event\_charactersIgnoringModifiers](/core/sys/darwin/Foundation/#Event_charactersIgnoringModifiers)
* [MakeConstantString](/core/sys/darwin/Foundation/#MakeConstantString)
* [MenuItem\_debugDescription](/core/sys/darwin/Foundation/#MenuItem_debugDescription)
* [MenuItem\_description](/core/sys/darwin/Foundation/#MenuItem_description)
* [MenuItem\_keyEquivalent](/core/sys/darwin/Foundation/#MenuItem_keyEquivalent)
* [MenuItem\_mnemonic](/core/sys/darwin/Foundation/#MenuItem_mnemonic)
* [MenuItem\_subtitle](/core/sys/darwin/Foundation/#MenuItem_subtitle)
* [MenuItem\_title](/core/sys/darwin/Foundation/#MenuItem_title)
* [MenuItem\_toolTip](/core/sys/darwin/Foundation/#MenuItem_toolTip)
* [MenuItem\_userKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_userKeyEquivalent)
* [Menu\_debugDescription](/core/sys/darwin/Foundation/#Menu_debugDescription)
* [Menu\_description](/core/sys/darwin/Foundation/#Menu_description)
* [Menu\_title](/core/sys/darwin/Foundation/#Menu_title)
* [Notification\_name](/core/sys/darwin/Foundation/#Notification_name)
* [Number\_descriptionWithLocale](/core/sys/darwin/Foundation/#Number_descriptionWithLocale)
* [Number\_stringValue](/core/sys/darwin/Foundation/#Number_stringValue)
* [ProcessInfo\_fullUserName](/core/sys/darwin/Foundation/#ProcessInfo_fullUserName)
* [ProcessInfo\_globallyUniqueString](/core/sys/darwin/Foundation/#ProcessInfo_globallyUniqueString)
* [ProcessInfo\_hostName](/core/sys/darwin/Foundation/#ProcessInfo_hostName)
* [ProcessInfo\_operatingSystemVersionString](/core/sys/darwin/Foundation/#ProcessInfo_operatingSystemVersionString)
* [ProcessInfo\_processName](/core/sys/darwin/Foundation/#ProcessInfo_processName)
* [ProcessInfo\_userName](/core/sys/darwin/Foundation/#ProcessInfo_userName)
* [RunningApplication\_localizedName](/core/sys/darwin/Foundation/#RunningApplication_localizedName)
* [StringFromClass](/core/sys/darwin/Foundation/#StringFromClass)
* [StringFromSelector](/core/sys/darwin/Foundation/#StringFromSelector)
* [String\_alloc](/core/sys/darwin/Foundation/#String_alloc)
* [URL\_relativePath](/core/sys/darwin/Foundation/#URL_relativePath)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)

### [ErrorUserInfoKey ¶](#ErrorUserInfoKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L14)

```
ErrorUserInfoKey :: ^String
```

##### Related Procedures With Parameters

* [Application\_nextEventMatchingMask](/core/sys/darwin/Foundation/#Application_nextEventMatchingMask)
* [Application\_setTitle](/core/sys/darwin/Foundation/#Application_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_legacy)
* [Bundle\_PathForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_PathForAuxiliaryExecutable)
* [Bundle\_URLForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_URLForAuxiliaryExecutable)
* [Bundle\_bundleWithPath](/core/sys/darwin/Foundation/#Bundle_bundleWithPath)
* [Bundle\_initWithPath](/core/sys/darwin/Foundation/#Bundle_initWithPath)
* [Bundle\_localizedStringForKey](/core/sys/darwin/Foundation/#Bundle_localizedStringForKey)
* [Bundle\_objectForInfoDictionaryKey](/core/sys/darwin/Foundation/#Bundle_objectForInfoDictionaryKey)
* [ClassFromString](/core/sys/darwin/Foundation/#ClassFromString)
* [Color\_colorUsingColorSpaceName](/core/sys/darwin/Foundation/#Color_colorUsingColorSpaceName)
* [Error\_errorWithDomain](/core/sys/darwin/Foundation/#Error_errorWithDomain)
* [Error\_initWithDomain](/core/sys/darwin/Foundation/#Error_initWithDomain)
* [MenuItem\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#MenuItem_automaticallyNotifiesObserversForKey)
* [MenuItem\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_exposeBinding](/core/sys/darwin/Foundation/#MenuItem_exposeBinding)
* [MenuItem\_initWithTitle](/core/sys/darwin/Foundation/#MenuItem_initWithTitle)
* [MenuItem\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#MenuItem_keyPathsForValuesAffectingValueForKey)
* [MenuItem\_sectionHeaderWithTitle](/core/sys/darwin/Foundation/#MenuItem_sectionHeaderWithTitle)
* [MenuItem\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalent)
* [MenuItem\_setKeys](/core/sys/darwin/Foundation/#MenuItem_setKeys)
* [MenuItem\_setSubtitle](/core/sys/darwin/Foundation/#MenuItem_setSubtitle)
* [MenuItem\_setTitle](/core/sys/darwin/Foundation/#MenuItem_setTitle)
* [MenuItem\_setTitleWithMnemonic](/core/sys/darwin/Foundation/#MenuItem_setTitleWithMnemonic)
* [MenuItem\_setToolTip](/core/sys/darwin/Foundation/#MenuItem_setToolTip)
* [Menu\_addItemWithTitle](/core/sys/darwin/Foundation/#Menu_addItemWithTitle)
* [Menu\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#Menu_automaticallyNotifiesObserversForKey)
* [Menu\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker)
* [Menu\_exposeBinding](/core/sys/darwin/Foundation/#Menu_exposeBinding)
* [Menu\_indexOfItemWithTitle](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTitle)
* [Menu\_initWithTitle](/core/sys/darwin/Foundation/#Menu_initWithTitle)
* [Menu\_insertItemWithTitle](/core/sys/darwin/Foundation/#Menu_insertItemWithTitle)
* [Menu\_itemWithTitle](/core/sys/darwin/Foundation/#Menu_itemWithTitle)
* [Menu\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#Menu_keyPathsForValuesAffectingValueForKey)
* [Menu\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder)
* [Menu\_setKeys](/core/sys/darwin/Foundation/#Menu_setKeys)
* [Menu\_setTitle](/core/sys/darwin/Foundation/#Menu_setTitle)
* [NSWindow\_setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [NotificationCenter\_addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [NotificationCenter\_addObserverForName\_new](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_new)
* [NotificationCenter\_addObserverForName\_old](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_old)
* [ProcessInfo\_beginActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_beginActivityWithOptions)
* [ProcessInfo\_disableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_disableAutomaticTermination)
* [ProcessInfo\_enableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_enableAutomaticTermination)
* [ProcessInfo\_performActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_performActivityWithOptions)
* [ProcessInfo\_performExpiringActivityWithReason](/core/sys/darwin/Foundation/#ProcessInfo_performExpiringActivityWithReason)
* [RunLoop\_addTimerForMode](/core/sys/darwin/Foundation/#RunLoop_addTimerForMode)
* [SelectorFromString](/core/sys/darwin/Foundation/#SelectorFromString)
* [String\_UTF8String](/core/sys/darwin/Foundation/#String_UTF8String)
* [String\_characterAtIndex](/core/sys/darwin/Foundation/#String_characterAtIndex)
* [String\_cstringUsingEncoding](/core/sys/darwin/Foundation/#String_cstringUsingEncoding)
* [String\_init](/core/sys/darwin/Foundation/#String_init)
* [String\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [String\_initWithCString](/core/sys/darwin/Foundation/#String_initWithCString)
* [String\_initWithOdinString](/core/sys/darwin/Foundation/#String_initWithOdinString)
* [String\_initWithString](/core/sys/darwin/Foundation/#String_initWithString)
* [String\_isEqualToString](/core/sys/darwin/Foundation/#String_isEqualToString)
* [String\_length](/core/sys/darwin/Foundation/#String_length)
* [String\_lengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_lengthOfBytesUsingEncoding)
* [String\_maximumLengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_maximumLengthOfBytesUsingEncoding)
* [String\_odinString](/core/sys/darwin/Foundation/#String_odinString)
* [String\_rangeOfString](/core/sys/darwin/Foundation/#String_rangeOfString)
* [String\_stringByAppendingString](/core/sys/darwin/Foundation/#String_stringByAppendingString)
* [URLResponse\_initWithURL](/core/sys/darwin/Foundation/#URLResponse_initWithURL)
* [URL\_initFileURLWithPath](/core/sys/darwin/Foundation/#URL_initFileURLWithPath)
* [URL\_initWithString](/core/sys/darwin/Foundation/#URL_initWithString)
* [UserDefaults\_setBoolForKey](/core/sys/darwin/Foundation/#UserDefaults_setBoolForKey)
* [Window\_minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle)
* [Window\_setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(procedure groups)*
* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName) *(procedure groups)*



##### Related Procedures With Returns

* [Bundle\_appStoreReceiptPath](/core/sys/darwin/Foundation/#Bundle_appStoreReceiptPath)
* [Bundle\_builtInPlugInsPath](/core/sys/darwin/Foundation/#Bundle_builtInPlugInsPath)
* [Bundle\_bundleIdentifier](/core/sys/darwin/Foundation/#Bundle_bundleIdentifier)
* [Bundle\_bundlePath](/core/sys/darwin/Foundation/#Bundle_bundlePath)
* [Bundle\_executablePath](/core/sys/darwin/Foundation/#Bundle_executablePath)
* [Bundle\_privateFrameworksPath](/core/sys/darwin/Foundation/#Bundle_privateFrameworksPath)
* [Bundle\_resourcePath](/core/sys/darwin/Foundation/#Bundle_resourcePath)
* [Bundle\_sharedFrameworksPath](/core/sys/darwin/Foundation/#Bundle_sharedFrameworksPath)
* [Bundle\_sharedSupportPath](/core/sys/darwin/Foundation/#Bundle_sharedSupportPath)
* [Color\_colorSpaceName](/core/sys/darwin/Foundation/#Color_colorSpaceName)
* [Error\_domain](/core/sys/darwin/Foundation/#Error_domain)
* [Error\_localizedDescription](/core/sys/darwin/Foundation/#Error_localizedDescription)
* [Error\_localizedFailureReason](/core/sys/darwin/Foundation/#Error_localizedFailureReason)
* [Error\_localizedRecoverySuggestion](/core/sys/darwin/Foundation/#Error_localizedRecoverySuggestion)
* [Event\_characters](/core/sys/darwin/Foundation/#Event_characters)
* [Event\_charactersIgnoringModifiers](/core/sys/darwin/Foundation/#Event_charactersIgnoringModifiers)
* [MakeConstantString](/core/sys/darwin/Foundation/#MakeConstantString)
* [MenuItem\_debugDescription](/core/sys/darwin/Foundation/#MenuItem_debugDescription)
* [MenuItem\_description](/core/sys/darwin/Foundation/#MenuItem_description)
* [MenuItem\_keyEquivalent](/core/sys/darwin/Foundation/#MenuItem_keyEquivalent)
* [MenuItem\_mnemonic](/core/sys/darwin/Foundation/#MenuItem_mnemonic)
* [MenuItem\_subtitle](/core/sys/darwin/Foundation/#MenuItem_subtitle)
* [MenuItem\_title](/core/sys/darwin/Foundation/#MenuItem_title)
* [MenuItem\_toolTip](/core/sys/darwin/Foundation/#MenuItem_toolTip)
* [MenuItem\_userKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_userKeyEquivalent)
* [Menu\_debugDescription](/core/sys/darwin/Foundation/#Menu_debugDescription)
* [Menu\_description](/core/sys/darwin/Foundation/#Menu_description)
* [Menu\_title](/core/sys/darwin/Foundation/#Menu_title)
* [Notification\_name](/core/sys/darwin/Foundation/#Notification_name)
* [Number\_descriptionWithLocale](/core/sys/darwin/Foundation/#Number_descriptionWithLocale)
* [Number\_stringValue](/core/sys/darwin/Foundation/#Number_stringValue)
* [ProcessInfo\_fullUserName](/core/sys/darwin/Foundation/#ProcessInfo_fullUserName)
* [ProcessInfo\_globallyUniqueString](/core/sys/darwin/Foundation/#ProcessInfo_globallyUniqueString)
* [ProcessInfo\_hostName](/core/sys/darwin/Foundation/#ProcessInfo_hostName)
* [ProcessInfo\_operatingSystemVersionString](/core/sys/darwin/Foundation/#ProcessInfo_operatingSystemVersionString)
* [ProcessInfo\_processName](/core/sys/darwin/Foundation/#ProcessInfo_processName)
* [ProcessInfo\_userName](/core/sys/darwin/Foundation/#ProcessInfo_userName)
* [RunningApplication\_localizedName](/core/sys/darwin/Foundation/#RunningApplication_localizedName)
* [StringFromClass](/core/sys/darwin/Foundation/#StringFromClass)
* [StringFromSelector](/core/sys/darwin/Foundation/#StringFromSelector)
* [String\_alloc](/core/sys/darwin/Foundation/#String_alloc)
* [URL\_relativePath](/core/sys/darwin/Foundation/#URL_relativePath)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)

### [Event ¶](#Event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L4)

```
Event :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [absolute](/core/sys/darwin/Foundation/#Event_absolute)
* [absoluteX](/core/sys/darwin/Foundation/#Event_absoluteX)
* [absoluteY](/core/sys/darwin/Foundation/#Event_absoluteY)
* [absoluteZ](/core/sys/darwin/Foundation/#Event_absoluteZ)
* [buttonMask](/core/sys/darwin/Foundation/#Event_buttonMask)
* [buttonNumber](/core/sys/darwin/Foundation/#Event_buttonNumber)
* [capabilityMask](/core/sys/darwin/Foundation/#Event_capabilityMask)
* [characters](/core/sys/darwin/Foundation/#Event_characters)
* [charactersIgnoringModifiers](/core/sys/darwin/Foundation/#Event_charactersIgnoringModifiers)
* [clickCount](/core/sys/darwin/Foundation/#Event_clickCount)
* [data1](/core/sys/darwin/Foundation/#Event_data1)
* [data2](/core/sys/darwin/Foundation/#Event_data2)
* [delta](/core/sys/darwin/Foundation/#Event_delta)
* [deltaX](/core/sys/darwin/Foundation/#Event_deltaX)
* [deltaY](/core/sys/darwin/Foundation/#Event_deltaY)
* [deltaZ](/core/sys/darwin/Foundation/#Event_deltaZ)
* [eventNumber](/core/sys/darwin/Foundation/#Event_eventNumber)
* [hasPreciseScrollingDeltas](/core/sys/darwin/Foundation/#Event_hasPreciseScrollingDeltas)
* [isARepeat](/core/sys/darwin/Foundation/#Event_isARepeat)
* [isDirectionInvertedFromDevice](/core/sys/darwin/Foundation/#Event_isDirectionInvertedFromDevice)
* [isEnteringProximity](/core/sys/darwin/Foundation/#Event_isEnteringProximity)
* [isSwipeTrackingFromScrollEventsEnabled](/core/sys/darwin/Foundation/#Event_isSwipeTrackingFromScrollEventsEnabled)
* [keyCode](/core/sys/darwin/Foundation/#Event_keyCode)
* [locationInWindow](/core/sys/darwin/Foundation/#Event_locationInWindow)
* [modifierFlags](/core/sys/darwin/Foundation/#Event_modifierFlags)
* [momentumPhase](/core/sys/darwin/Foundation/#Event_momentumPhase)
* [mouseLocation](/core/sys/darwin/Foundation/#Event_mouseLocation) *(class method)*
* [otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType) *(class method)*
* [phase](/core/sys/darwin/Foundation/#Event_phase)
* [pointingDeviceID](/core/sys/darwin/Foundation/#Event_pointingDeviceID)
* [pointingDeviceSerialNumber](/core/sys/darwin/Foundation/#Event_pointingDeviceSerialNumber)
* [pointingDeviceType](/core/sys/darwin/Foundation/#Event_pointingDeviceType)
* [pressure](/core/sys/darwin/Foundation/#Event_pressure)
* [scrollingDelta](/core/sys/darwin/Foundation/#Event_scrollingDelta)
* [scrollingDeltaX](/core/sys/darwin/Foundation/#Event_scrollingDeltaX)
* [scrollingDeltaY](/core/sys/darwin/Foundation/#Event_scrollingDeltaY)
* [subtype](/core/sys/darwin/Foundation/#Event_subtype)
* [systemTabletID](/core/sys/darwin/Foundation/#Event_systemTabletID)
* [tabletID](/core/sys/darwin/Foundation/#Event_tabletID)
* [tangentialPressure](/core/sys/darwin/Foundation/#Event_tangentialPressure)
* [timestamp](/core/sys/darwin/Foundation/#Event_timestamp)
* [type](/core/sys/darwin/Foundation/#Event_type)
* [uniqueID](/core/sys/darwin/Foundation/#Event_uniqueID)
* [vendorDefined](/core/sys/darwin/Foundation/#Event_vendorDefined)
* [vendorID](/core/sys/darwin/Foundation/#Event_vendorID)
* [vendorPointingDeviceType](/core/sys/darwin/Foundation/#Event_vendorPointingDeviceType)
* [window](/core/sys/darwin/Foundation/#Event_window)
* [windowNumber](/core/sys/darwin/Foundation/#Event_windowNumber)
* [tilt](/core/sys/darwin/Foundation/#tilt)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [EventMask ¶](#EventMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L8)

```
EventMask :: distinct bit_set[EventType; UInteger]
```

##### Related Procedures With Parameters

* [Application\_nextEventMatchingMask](/core/sys/darwin/Foundation/#Application_nextEventMatchingMask)

##### Related Constants

* [EventMaskAny](/core/sys/darwin/Foundation/#EventMaskAny)

### [EventModifierFlag ¶](#EventModifierFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L108)

```
EventModifierFlag :: enum UInteger {
	CapsLock   = 16, 
	Shift      = 17, 
	Control    = 18, 
	Option     = 19, 
	Command    = 20, 
	NumericPad = 21, 
	Help       = 22, 
	Function   = 23, 
}
```

### [EventModifierFlags ¶](#EventModifierFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L119)

```
EventModifierFlags :: distinct bit_set[EventModifierFlag; UInteger]
```

##### Related Procedures With Parameters

* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [MenuItem\_setKeyEquivalentModifierMask](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalentModifierMask)



##### Related Procedures With Returns

* [Event\_modifierFlags](/core/sys/darwin/Foundation/#Event_modifierFlags)
* [MenuItem\_keyEquivalentModifierMask](/core/sys/darwin/Foundation/#MenuItem_keyEquivalentModifierMask)

##### Related Constants

* [EventModifierFlagCapsLock](/core/sys/darwin/Foundation/#EventModifierFlagCapsLock)
* [EventModifierFlagCommand](/core/sys/darwin/Foundation/#EventModifierFlagCommand)
* [EventModifierFlagControl](/core/sys/darwin/Foundation/#EventModifierFlagControl)
* [EventModifierFlagFunction](/core/sys/darwin/Foundation/#EventModifierFlagFunction)
* [EventModifierFlagHelp](/core/sys/darwin/Foundation/#EventModifierFlagHelp)
* [EventModifierFlagNumericPad](/core/sys/darwin/Foundation/#EventModifierFlagNumericPad)
* [EventModifierFlagOption](/core/sys/darwin/Foundation/#EventModifierFlagOption)
* [EventModifierFlagShift](/core/sys/darwin/Foundation/#EventModifierFlagShift)

### [EventPhase ¶](#EventPhase) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L83)

```
EventPhase :: distinct bit_set[EventPhaseFlag; UInteger]
```

##### Related Procedures With Returns

* [Event\_momentumPhase](/core/sys/darwin/Foundation/#Event_momentumPhase)
* [Event\_phase](/core/sys/darwin/Foundation/#Event_phase)

##### Related Constants

* [EventPhaseBegan](/core/sys/darwin/Foundation/#EventPhaseBegan)
* [EventPhaseCancelled](/core/sys/darwin/Foundation/#EventPhaseCancelled)
* [EventPhaseChanged](/core/sys/darwin/Foundation/#EventPhaseChanged)
* [EventPhaseEnded](/core/sys/darwin/Foundation/#EventPhaseEnded)
* [EventPhaseMayBegin](/core/sys/darwin/Foundation/#EventPhaseMayBegin)
* [EventPhaseNone](/core/sys/darwin/Foundation/#EventPhaseNone)
* [EventPhaseStationary](/core/sys/darwin/Foundation/#EventPhaseStationary)

### [EventPhaseFlag ¶](#EventPhaseFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L84)

```
EventPhaseFlag :: enum UInteger {
	Began      = 0, 
	Stationary = 1, 
	Changed    = 2, 
	Ended      = 3, 
	Cancelled  = 4, 
	MayBegin   = 5, 
}
```

### [EventType ¶](#EventType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L45)

```
EventType :: enum UInteger {
	LeftMouseDown      = 1, 
	LeftMouseUp        = 2, 
	RightMouseDown     = 3, 
	RightMouseUp       = 4, 
	MouseMoved         = 5, 
	LeftMouseDragged   = 6, 
	RightMouseDragged  = 7, 
	MouseEntered       = 8, 
	MouseExited        = 9, 
	KeyDown            = 10, 
	KeyUp              = 11, 
	FlagsChanged       = 12, 
	AppKitDefined      = 13, 
	SystemDefined      = 14, 
	ApplicationDefined = 15, 
	Periodic           = 16, 
	CursorUpdate       = 17, 
	Rotate             = 18, 
	BeginGesture       = 19, 
	EndGesture         = 20, 
	ScrollWheel        = 22, 
	TabletPoint        = 23, 
	TabletProximity    = 24, 
	OtherMouseDown     = 25, 
	OtherMouseUp       = 26, 
	OtherMouseDragged  = 27, 
	Gesture            = 29, 
	Magnify            = 30, 
	Swipe              = 31, 
	SmartMagnify       = 32, 
	QuickLook          = 33, 
	Pressure           = 34, 
	DirectTouch        = 37, 
	ChangeMode         = 38, 
}
```

##### Related Procedures With Parameters

* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)



##### Related Procedures With Returns

* [Event\_type](/core/sys/darwin/Foundation/#Event_type)

### [FastEnumeration ¶](#FastEnumeration) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L14)

```
FastEnumeration :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#FastEnumeration_alloc) *(class method)*
* [countByEnumerating](/core/sys/darwin/Foundation/#FastEnumeration_countByEnumerating)
* [init](/core/sys/darwin/Foundation/#FastEnumeration_init)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [FastEnumerationState ¶](#FastEnumerationState) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L6)

```
FastEnumerationState :: struct #packed {
	state:        u32,
	itemsPtr:     [^]^Object,
	mutationsPtr: [^]u32,
	extra:        [5]u32,
}
```

##### Related Procedures With Parameters

* [FastEnumeration\_countByEnumerating](/core/sys/darwin/Foundation/#FastEnumeration_countByEnumerating)

### [Float ¶](#Float) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L38)

```
Float :: CoreFoundation.CGFloat
```

##### Related Procedures With Parameters

* [Color\_colorWithCalibratedHue](/core/sys/darwin/Foundation/#Color_colorWithCalibratedHue)
* [Color\_colorWithCalibratedRed](/core/sys/darwin/Foundation/#Color_colorWithCalibratedRed)
* [Color\_colorWithCalibratedWhite](/core/sys/darwin/Foundation/#Color_colorWithCalibratedWhite)
* [Color\_colorWithDeviceCyan](/core/sys/darwin/Foundation/#Color_colorWithDeviceCyan)
* [Color\_colorWithDeviceHue](/core/sys/darwin/Foundation/#Color_colorWithDeviceHue)
* [Color\_colorWithDeviceRed](/core/sys/darwin/Foundation/#Color_colorWithDeviceRed)
* [Color\_colorWithDeviceWhite](/core/sys/darwin/Foundation/#Color_colorWithDeviceWhite)
* [Color\_colorWithSRGBRed](/core/sys/darwin/Foundation/#Color_colorWithSRGBRed)
* [Color\_getComponents](/core/sys/darwin/Foundation/#Color_getComponents)
* [Layer\_setContentsScale](/core/sys/darwin/Foundation/#Layer_setContentsScale)
* [Menu\_setMinimumWidth](/core/sys/darwin/Foundation/#Menu_setMinimumWidth)



##### Related Procedures With Returns

* [Color\_getCMYKA](/core/sys/darwin/Foundation/#Color_getCMYKA)
* [Color\_getHSBA](/core/sys/darwin/Foundation/#Color_getHSBA)
* [Color\_getRGBA](/core/sys/darwin/Foundation/#Color_getRGBA)
* [Color\_getWhiteAlpha](/core/sys/darwin/Foundation/#Color_getWhiteAlpha)
* [Event\_delta](/core/sys/darwin/Foundation/#Event_delta)
* [Event\_deltaX](/core/sys/darwin/Foundation/#Event_deltaX)
* [Event\_deltaY](/core/sys/darwin/Foundation/#Event_deltaY)
* [Event\_deltaZ](/core/sys/darwin/Foundation/#Event_deltaZ)
* [Event\_scrollingDelta](/core/sys/darwin/Foundation/#Event_scrollingDelta)
* [Event\_scrollingDeltaX](/core/sys/darwin/Foundation/#Event_scrollingDeltaX)
* [Event\_scrollingDeltaY](/core/sys/darwin/Foundation/#Event_scrollingDeltaY)
* [Layer\_contentsScale](/core/sys/darwin/Foundation/#Layer_contentsScale)
* [MaxX](/core/sys/darwin/Foundation/#MaxX)
* [MaxY](/core/sys/darwin/Foundation/#MaxY)
* [Menu\_menuBarHeight](/core/sys/darwin/Foundation/#Menu_menuBarHeight)
* [Menu\_minimumWidth](/core/sys/darwin/Foundation/#Menu_minimumWidth)
* [MidX](/core/sys/darwin/Foundation/#MidX)
* [MidY](/core/sys/darwin/Foundation/#MidY)
* [MinX](/core/sys/darwin/Foundation/#MinX)
* [MinY](/core/sys/darwin/Foundation/#MinY)
* [Screen\_backingScaleFactor](/core/sys/darwin/Foundation/#Screen_backingScaleFactor)
* [Window\_backingScaleFactor](/core/sys/darwin/Foundation/#Window_backingScaleFactor)
* [Window\_minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle)

### [IMP ¶](#IMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L10)

```
IMP :: proc "c" (object: ^.objc_object, sel: ^.objc_selector, .. args: ..any) -> ^.objc_object
```

##### Related Procedures With Parameters

* [class\_addMethod](/core/sys/darwin/Foundation/#class_addMethod)
* [class\_replaceMethod](/core/sys/darwin/Foundation/#class_replaceMethod)
* [method\_setImplementation](/core/sys/darwin/Foundation/#method_setImplementation)



##### Related Procedures With Returns

* [MenuItem\_instanceMethodForSelector](/core/sys/darwin/Foundation/#MenuItem_instanceMethodForSelector)
* [Menu\_instanceMethodForSelector](/core/sys/darwin/Foundation/#Menu_instanceMethodForSelector)
* [class\_getMethodImplementation](/core/sys/darwin/Foundation/#class_getMethodImplementation)
* [method\_getImplementation](/core/sys/darwin/Foundation/#method_getImplementation)

### [Image ¶](#Image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSImage.odin#L4)

```
Image :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [addRepresentation](/core/sys/darwin/Foundation/#Image_addRepresentation)
* [alloc](/core/sys/darwin/Foundation/#Image_alloc) *(class method)*
* [initWithSize](/core/sys/darwin/Foundation/#Image_initWithSize)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ImageRep ¶](#ImageRep) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSImageRep.odin#L4)

```
ImageRep :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Integer ¶](#Integer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L13)

```
Integer :: distinct int
```

##### Related Procedures With Parameters

* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_legacy)
* [Error\_errorWithDomain](/core/sys/darwin/Foundation/#Error_errorWithDomain)
* [Error\_initWithDomain](/core/sys/darwin/Foundation/#Error_initWithDomain)
* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [MenuDelegate\_menu\_updateItem\_atIndex\_shouldCancel](/core/sys/darwin/Foundation/#MenuDelegate_menu_updateItem_atIndex_shouldCancel)
* [MenuItem\_setIndentationLevel](/core/sys/darwin/Foundation/#MenuItem_setIndentationLevel)
* [MenuItem\_setTag](/core/sys/darwin/Foundation/#MenuItem_setTag)
* [MenuItem\_setVersion](/core/sys/darwin/Foundation/#MenuItem_setVersion)
* [Menu\_indexOfItemWithTag](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTag)
* [Menu\_insertItem](/core/sys/darwin/Foundation/#Menu_insertItem)
* [Menu\_insertItemWithTitle](/core/sys/darwin/Foundation/#Menu_insertItemWithTitle)
* [Menu\_itemAtIndex](/core/sys/darwin/Foundation/#Menu_itemAtIndex)
* [Menu\_itemWithTag](/core/sys/darwin/Foundation/#Menu_itemWithTag)
* [Menu\_performActionForItemAtIndex](/core/sys/darwin/Foundation/#Menu_performActionForItemAtIndex)
* [Menu\_removeItemAtIndex](/core/sys/darwin/Foundation/#Menu_removeItemAtIndex)
* [Menu\_setVersion](/core/sys/darwin/Foundation/#Menu_setVersion)
* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(procedure groups)*
* [MenuDelegate\_menu](/core/sys/darwin/Foundation/#MenuDelegate_menu) *(procedure groups)*



##### Related Procedures With Returns

* [Color\_numberOfComponents](/core/sys/darwin/Foundation/#Color_numberOfComponents)
* [Error\_code](/core/sys/darwin/Foundation/#Error_code)
* [Event\_absolute](/core/sys/darwin/Foundation/#Event_absolute)
* [Event\_absoluteX](/core/sys/darwin/Foundation/#Event_absoluteX)
* [Event\_absoluteY](/core/sys/darwin/Foundation/#Event_absoluteY)
* [Event\_absoluteZ](/core/sys/darwin/Foundation/#Event_absoluteZ)
* [Event\_buttonNumber](/core/sys/darwin/Foundation/#Event_buttonNumber)
* [Event\_clickCount](/core/sys/darwin/Foundation/#Event_clickCount)
* [Event\_data1](/core/sys/darwin/Foundation/#Event_data1)
* [Event\_data2](/core/sys/darwin/Foundation/#Event_data2)
* [Event\_eventNumber](/core/sys/darwin/Foundation/#Event_eventNumber)
* [MenuDelegate\_numberOfItemsInMenu](/core/sys/darwin/Foundation/#MenuDelegate_numberOfItemsInMenu)
* [MenuItem\_indentationLevel](/core/sys/darwin/Foundation/#MenuItem_indentationLevel)
* [MenuItem\_tag](/core/sys/darwin/Foundation/#MenuItem_tag)
* [MenuItem\_version](/core/sys/darwin/Foundation/#MenuItem_version)
* [Menu\_indexOfItem](/core/sys/darwin/Foundation/#Menu_indexOfItem)
* [Menu\_indexOfItemWithRepresentedObject](/core/sys/darwin/Foundation/#Menu_indexOfItemWithRepresentedObject)
* [Menu\_indexOfItemWithSubmenu](/core/sys/darwin/Foundation/#Menu_indexOfItemWithSubmenu)
* [Menu\_indexOfItemWithTarget](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTarget)
* [Menu\_indexOfItemWithTitle](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTitle)
* [Menu\_numberOfItems](/core/sys/darwin/Foundation/#Menu_numberOfItems)
* [Menu\_version](/core/sys/darwin/Foundation/#Menu_version)
* [Number\_integerValue](/core/sys/darwin/Foundation/#Number_integerValue)
* [Window\_orderedIndex](/core/sys/darwin/Foundation/#Window_orderedIndex)

##### Related Constants

* [IntegerMax](/core/sys/darwin/Foundation/#IntegerMax)
* [Integermin](/core/sys/darwin/Foundation/#Integermin)
* [NotFound](/core/sys/darwin/Foundation/#NotFound)

### [Ivar ¶](#Ivar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L120)

```
Ivar :: ^objc_ivar
```

##### Related Procedures With Parameters

* [ivar\_getName](/core/sys/darwin/Foundation/#ivar_getName)
* [ivar\_getOffset](/core/sys/darwin/Foundation/#ivar_getOffset)
* [ivar\_getTypeEncoding](/core/sys/darwin/Foundation/#ivar_getTypeEncoding)
* [object\_getIvar](/core/sys/darwin/Foundation/#object_getIvar)
* [object\_setIvar](/core/sys/darwin/Foundation/#object_setIvar)



##### Related Procedures With Returns

* [class\_copyIvarList](/core/sys/darwin/Foundation/#class_copyIvarList)
* [class\_getClassVariable](/core/sys/darwin/Foundation/#class_getClassVariable)
* [class\_getInstanceVariable](/core/sys/darwin/Foundation/#class_getInstanceVariable)
* [object\_getInstanceVariable](/core/sys/darwin/Foundation/#object_getInstanceVariable)
* [object\_setInstanceVariable](/core/sys/darwin/Foundation/#object_setInstanceVariable)

### [KeyEquivalentModifierFlag ¶](#KeyEquivalentModifierFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L6)

```
KeyEquivalentModifierFlag :: EventModifierFlag
```

### [KeyEquivalentModifierMask ¶](#KeyEquivalentModifierMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L7)

```
KeyEquivalentModifierMask :: EventModifierFlags
```

##### Related Procedures With Parameters

* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [MenuItem\_setKeyEquivalentModifierMask](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalentModifierMask)



##### Related Procedures With Returns

* [Event\_modifierFlags](/core/sys/darwin/Foundation/#Event_modifierFlags)
* [MenuItem\_keyEquivalentModifierMask](/core/sys/darwin/Foundation/#MenuItem_keyEquivalentModifierMask)

##### Related Constants

* [EventModifierFlagCapsLock](/core/sys/darwin/Foundation/#EventModifierFlagCapsLock)
* [EventModifierFlagCommand](/core/sys/darwin/Foundation/#EventModifierFlagCommand)
* [EventModifierFlagControl](/core/sys/darwin/Foundation/#EventModifierFlagControl)
* [EventModifierFlagFunction](/core/sys/darwin/Foundation/#EventModifierFlagFunction)
* [EventModifierFlagHelp](/core/sys/darwin/Foundation/#EventModifierFlagHelp)
* [EventModifierFlagNumericPad](/core/sys/darwin/Foundation/#EventModifierFlagNumericPad)
* [EventModifierFlagOption](/core/sys/darwin/Foundation/#EventModifierFlagOption)
* [EventModifierFlagShift](/core/sys/darwin/Foundation/#EventModifierFlagShift)

### [Layer ¶](#Layer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L639)

```
Layer :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [addSublayer](/core/sys/darwin/Foundation/#Layer_addSublayer)
* [contents](/core/sys/darwin/Foundation/#Layer_contents)
* [contentsScale](/core/sys/darwin/Foundation/#Layer_contentsScale)
* [frame](/core/sys/darwin/Foundation/#Layer_frame)
* [position](/core/sys/darwin/Foundation/#Layer_position)
* [setContents](/core/sys/darwin/Foundation/#Layer_setContents)
* [setContentsScale](/core/sys/darwin/Foundation/#Layer_setContentsScale)
* [setPosition](/core/sys/darwin/Foundation/#Layer_setPosition)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Locking ¶](#Locking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L3)

```
Locking :: struct($T: typeid) {
	… // See source for fields
}
```

##### Related Procedures With Parameters

* [Locking\_lock](/core/sys/darwin/Foundation/#Locking_lock)
* [Locking\_unlock](/core/sys/darwin/Foundation/#Locking_unlock)

### [Menu ¶](#Menu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L36)

```
Menu :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [accessInstanceVariablesDirectly](/core/sys/darwin/Foundation/#Menu_accessInstanceVariablesDirectly) *(class method)*
* [addItem](/core/sys/darwin/Foundation/#Menu_addItem)
* [addItemWithTitle](/core/sys/darwin/Foundation/#Menu_addItemWithTitle)
* [alloc](/core/sys/darwin/Foundation/#Menu_alloc) *(class method)*
* [allocWithZone](/core/sys/darwin/Foundation/#Menu_allocWithZone) *(class method)*
* [allowsContextMenuPlugIns](/core/sys/darwin/Foundation/#Menu_allowsContextMenuPlugIns)
* [attachedMenu](/core/sys/darwin/Foundation/#Menu_attachedMenu)
* [autoenablesItems](/core/sys/darwin/Foundation/#Menu_autoenablesItems)
* [automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#Menu_automaticallyNotifiesObserversForKey) *(class method)*
* [cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget) *(overloaded method)*
* [cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_) *(class method)*
* [cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_selector_object) *(class method)*
* [cancelTracking](/core/sys/darwin/Foundation/#Menu_cancelTracking)
* [cancelTrackingWithoutAnimation](/core/sys/darwin/Foundation/#Menu_cancelTrackingWithoutAnimation)
* [class](/core/sys/darwin/Foundation/#Menu_class) *(class method)*
* [classFallbacksForKeyedArchiver](/core/sys/darwin/Foundation/#Menu_classFallbacksForKeyedArchiver) *(class method)*
* [classForKeyedUnarchiver](/core/sys/darwin/Foundation/#Menu_classForKeyedUnarchiver) *(class method)*
* [conformsToProtocol](/core/sys/darwin/Foundation/#Menu_conformsToProtocol) *(class method)*
* [contextMenuRepresentation](/core/sys/darwin/Foundation/#Menu_contextMenuRepresentation)
* [copyWithZone](/core/sys/darwin/Foundation/#Menu_copyWithZone) *(class method)*
* [debugDescription](/core/sys/darwin/Foundation/#Menu_debugDescription) *(class method)*
* [defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker) *(class method)*
* [delegate](/core/sys/darwin/Foundation/#Menu_delegate)
* [description](/core/sys/darwin/Foundation/#Menu_description) *(class method)*
* [exposeBinding](/core/sys/darwin/Foundation/#Menu_exposeBinding) *(class method)*
* [hash](/core/sys/darwin/Foundation/#Menu_hash) *(class method)*
* [helpRequested](/core/sys/darwin/Foundation/#Menu_helpRequested)
* [highlightedItem](/core/sys/darwin/Foundation/#Menu_highlightedItem)
* [indexOfItem](/core/sys/darwin/Foundation/#Menu_indexOfItem)
* [indexOfItemWithRepresentedObject](/core/sys/darwin/Foundation/#Menu_indexOfItemWithRepresentedObject)
* [indexOfItemWithSubmenu](/core/sys/darwin/Foundation/#Menu_indexOfItemWithSubmenu)
* [indexOfItemWithTag](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTag)
* [indexOfItemWithTarget](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTarget)
* [indexOfItemWithTitle](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTitle)
* [init](/core/sys/darwin/Foundation/#Menu_init)
* [initWithCoder](/core/sys/darwin/Foundation/#Menu_initWithCoder)
* [initWithTitle](/core/sys/darwin/Foundation/#Menu_initWithTitle)
* [initialize](/core/sys/darwin/Foundation/#Menu_initialize) *(class method)*
* [insertItem](/core/sys/darwin/Foundation/#Menu_insertItem)
* [insertItemWithTitle](/core/sys/darwin/Foundation/#Menu_insertItemWithTitle)
* [instanceMethodForSelector](/core/sys/darwin/Foundation/#Menu_instanceMethodForSelector) *(class method)*
* [instancesRespondToSelector](/core/sys/darwin/Foundation/#Menu_instancesRespondToSelector) *(class method)*
* [isAttached](/core/sys/darwin/Foundation/#Menu_isAttached)
* [isSubclassOfClass](/core/sys/darwin/Foundation/#Menu_isSubclassOfClass) *(class method)*
* [isTornOff](/core/sys/darwin/Foundation/#Menu_isTornOff)
* [itemArray](/core/sys/darwin/Foundation/#Menu_itemArray)
* [itemAtIndex](/core/sys/darwin/Foundation/#Menu_itemAtIndex)
* [itemChanged](/core/sys/darwin/Foundation/#Menu_itemChanged)
* [itemWithTag](/core/sys/darwin/Foundation/#Menu_itemWithTag)
* [itemWithTitle](/core/sys/darwin/Foundation/#Menu_itemWithTitle)
* [keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#Menu_keyPathsForValuesAffectingValueForKey) *(class method)*
* [load](/core/sys/darwin/Foundation/#Menu_load) *(class method)*
* [locationForSubmenu](/core/sys/darwin/Foundation/#Menu_locationForSubmenu)
* [menuBarHeight](/core/sys/darwin/Foundation/#Menu_menuBarHeight)
* [menuBarVisible](/core/sys/darwin/Foundation/#Menu_menuBarVisible) *(class method)*
* [menuChangedMessagesEnabled](/core/sys/darwin/Foundation/#Menu_menuChangedMessagesEnabled)
* [menuRepresentation](/core/sys/darwin/Foundation/#Menu_menuRepresentation)
* [menuZone](/core/sys/darwin/Foundation/#Menu_menuZone) *(class method)*
* [minimumWidth](/core/sys/darwin/Foundation/#Menu_minimumWidth)
* [mutableCopyWithZone](/core/sys/darwin/Foundation/#Menu_mutableCopyWithZone) *(class method)*
* [new](/core/sys/darwin/Foundation/#Menu_new) *(class method)*
* [numberOfItems](/core/sys/darwin/Foundation/#Menu_numberOfItems)
* [paletteMenuWithColors](/core/sys/darwin/Foundation/#Menu_paletteMenuWithColors) *(overloaded method)*
* [paletteMenuWithColors\_titles\_selectionHandler](/core/sys/darwin/Foundation/#Menu_paletteMenuWithColors_titles_selectionHandler) *(class method)*
* [performActionForItemAtIndex](/core/sys/darwin/Foundation/#Menu_performActionForItemAtIndex)
* [performKeyEquivalent](/core/sys/darwin/Foundation/#Menu_performKeyEquivalent)
* [popUpContextMenu](/core/sys/darwin/Foundation/#Menu_popUpContextMenu) *(overloaded method)*
* [popUpContextMenu\_withEvent\_forView](/core/sys/darwin/Foundation/#Menu_popUpContextMenu_withEvent_forView) *(class method)*
* [popUpMenuPositioningItem](/core/sys/darwin/Foundation/#Menu_popUpMenuPositioningItem)
* [poseAsClass](/core/sys/darwin/Foundation/#Menu_poseAsClass) *(class method)*
* [presentationStyle](/core/sys/darwin/Foundation/#Menu_presentationStyle)
* [propertiesToUpdate](/core/sys/darwin/Foundation/#Menu_propertiesToUpdate)
* [removeAllItems](/core/sys/darwin/Foundation/#Menu_removeAllItems)
* [removeItem](/core/sys/darwin/Foundation/#Menu_removeItem)
* [removeItemAtIndex](/core/sys/darwin/Foundation/#Menu_removeItemAtIndex)
* [resolveClassMethod](/core/sys/darwin/Foundation/#Menu_resolveClassMethod) *(class method)*
* [resolveInstanceMethod](/core/sys/darwin/Foundation/#Menu_resolveInstanceMethod) *(class method)*
* [selectedItems](/core/sys/darwin/Foundation/#Menu_selectedItems)
* [selectionMode](/core/sys/darwin/Foundation/#Menu_selectionMode)
* [setAllowsContextMenuPlugIns](/core/sys/darwin/Foundation/#Menu_setAllowsContextMenuPlugIns)
* [setAutoenablesItems](/core/sys/darwin/Foundation/#Menu_setAutoenablesItems)
* [setContextMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setContextMenuRepresentation)
* [setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder) *(class method)*
* [setDelegate](/core/sys/darwin/Foundation/#Menu_setDelegate)
* [setItemArray](/core/sys/darwin/Foundation/#Menu_setItemArray)
* [setKeys](/core/sys/darwin/Foundation/#Menu_setKeys) *(class method)*
* [setMenuBarVisible](/core/sys/darwin/Foundation/#Menu_setMenuBarVisible) *(class method)*
* [setMenuChangedMessagesEnabled](/core/sys/darwin/Foundation/#Menu_setMenuChangedMessagesEnabled)
* [setMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setMenuRepresentation)
* [setMenuZone](/core/sys/darwin/Foundation/#Menu_setMenuZone) *(class method)*
* [setMinimumWidth](/core/sys/darwin/Foundation/#Menu_setMinimumWidth)
* [setPresentationStyle](/core/sys/darwin/Foundation/#Menu_setPresentationStyle)
* [setSelectedItems](/core/sys/darwin/Foundation/#Menu_setSelectedItems)
* [setSelectionMode](/core/sys/darwin/Foundation/#Menu_setSelectionMode)
* [setShowsStateColumn](/core/sys/darwin/Foundation/#Menu_setShowsStateColumn)
* [setSubmenu](/core/sys/darwin/Foundation/#Menu_setSubmenu)
* [setSupermenu](/core/sys/darwin/Foundation/#Menu_setSupermenu)
* [setTearOffMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setTearOffMenuRepresentation)
* [setTitle](/core/sys/darwin/Foundation/#Menu_setTitle)
* [setUserInterfaceLayoutDirection](/core/sys/darwin/Foundation/#Menu_setUserInterfaceLayoutDirection)
* [setVersion](/core/sys/darwin/Foundation/#Menu_setVersion) *(class method)*
* [showsStateColumn](/core/sys/darwin/Foundation/#Menu_showsStateColumn)
* [size](/core/sys/darwin/Foundation/#Menu_size)
* [sizeToFit](/core/sys/darwin/Foundation/#Menu_sizeToFit)
* [submenuAction](/core/sys/darwin/Foundation/#Menu_submenuAction)
* [superclass](/core/sys/darwin/Foundation/#Menu_superclass) *(class method)*
* [supermenu](/core/sys/darwin/Foundation/#Menu_supermenu)
* [tearOffMenuRepresentation](/core/sys/darwin/Foundation/#Menu_tearOffMenuRepresentation)
* [title](/core/sys/darwin/Foundation/#Menu_title)
* [update](/core/sys/darwin/Foundation/#Menu_update)
* [useStoredAccessor](/core/sys/darwin/Foundation/#Menu_useStoredAccessor) *(class method)*
* [userInterfaceLayoutDirection](/core/sys/darwin/Foundation/#Menu_userInterfaceLayoutDirection)
* [version](/core/sys/darwin/Foundation/#Menu_version) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [copy](/core/sys/darwin/Foundation/#copy)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [MenuDelegate ¶](#MenuDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L525)

```
MenuDelegate :: struct {
	using _: Object,
	using _: ObjectProtocol,
}
```

##### Bound Objective-C Methods

* [confinementRectForMenu](/core/sys/darwin/Foundation/#MenuDelegate_confinementRectForMenu)
* [menu](/core/sys/darwin/Foundation/#MenuDelegate_menu) *(overloaded method)*
* [menuDidClose](/core/sys/darwin/Foundation/#MenuDelegate_menuDidClose)
* [menuHasKeyEquivalent](/core/sys/darwin/Foundation/#MenuDelegate_menuHasKeyEquivalent)
* [menuNeedsUpdate](/core/sys/darwin/Foundation/#MenuDelegate_menuNeedsUpdate)
* [menuWillOpen](/core/sys/darwin/Foundation/#MenuDelegate_menuWillOpen)
* [menu\_updateItem\_atIndex\_shouldCancel](/core/sys/darwin/Foundation/#MenuDelegate_menu_updateItem_atIndex_shouldCancel)
* [menu\_willHighlightItem](/core/sys/darwin/Foundation/#MenuDelegate_menu_willHighlightItem)
* [numberOfItemsInMenu](/core/sys/darwin/Foundation/#MenuDelegate_numberOfItemsInMenu)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [MenuItem ¶](#MenuItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L16)

```
MenuItem :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [accessInstanceVariablesDirectly](/core/sys/darwin/Foundation/#MenuItem_accessInstanceVariablesDirectly) *(class method)*
* [action](/core/sys/darwin/Foundation/#MenuItem_action)
* [alloc](/core/sys/darwin/Foundation/#MenuItem_alloc) *(class method)*
* [allocWithZone](/core/sys/darwin/Foundation/#MenuItem_allocWithZone) *(class method)*
* [allowsAutomaticKeyEquivalentLocalization](/core/sys/darwin/Foundation/#MenuItem_allowsAutomaticKeyEquivalentLocalization)
* [allowsAutomaticKeyEquivalentMirroring](/core/sys/darwin/Foundation/#MenuItem_allowsAutomaticKeyEquivalentMirroring)
* [allowsKeyEquivalentWhenHidden](/core/sys/darwin/Foundation/#MenuItem_allowsKeyEquivalentWhenHidden)
* [automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#MenuItem_automaticallyNotifiesObserversForKey) *(class method)*
* [cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget) *(overloaded method)*
* [cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_) *(class method)*
* [cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object) *(class method)*
* [class](/core/sys/darwin/Foundation/#MenuItem_class) *(class method)*
* [classFallbacksForKeyedArchiver](/core/sys/darwin/Foundation/#MenuItem_classFallbacksForKeyedArchiver) *(class method)*
* [classForKeyedUnarchiver](/core/sys/darwin/Foundation/#MenuItem_classForKeyedUnarchiver) *(class method)*
* [conformsToProtocol](/core/sys/darwin/Foundation/#MenuItem_conformsToProtocol) *(class method)*
* [copyWithZone](/core/sys/darwin/Foundation/#MenuItem_copyWithZone) *(class method)*
* [debugDescription](/core/sys/darwin/Foundation/#MenuItem_debugDescription) *(class method)*
* [defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker) *(class method)*
* [description](/core/sys/darwin/Foundation/#MenuItem_description) *(class method)*
* [exposeBinding](/core/sys/darwin/Foundation/#MenuItem_exposeBinding) *(class method)*
* [hasSubmenu](/core/sys/darwin/Foundation/#MenuItem_hasSubmenu)
* [hash](/core/sys/darwin/Foundation/#MenuItem_hash) *(class method)*
* [indentationLevel](/core/sys/darwin/Foundation/#MenuItem_indentationLevel)
* [init](/core/sys/darwin/Foundation/#MenuItem_init)
* [initWithCoder](/core/sys/darwin/Foundation/#MenuItem_initWithCoder)
* [initWithTitle](/core/sys/darwin/Foundation/#MenuItem_initWithTitle)
* [initialize](/core/sys/darwin/Foundation/#MenuItem_initialize) *(class method)*
* [instanceMethodForSelector](/core/sys/darwin/Foundation/#MenuItem_instanceMethodForSelector) *(class method)*
* [instancesRespondToSelector](/core/sys/darwin/Foundation/#MenuItem_instancesRespondToSelector) *(class method)*
* [isAlternate](/core/sys/darwin/Foundation/#MenuItem_isAlternate)
* [isEnabled](/core/sys/darwin/Foundation/#MenuItem_isEnabled)
* [isHidden](/core/sys/darwin/Foundation/#MenuItem_isHidden)
* [isHiddenOrHasHiddenAncestor](/core/sys/darwin/Foundation/#MenuItem_isHiddenOrHasHiddenAncestor)
* [isHighlighted](/core/sys/darwin/Foundation/#MenuItem_isHighlighted)
* [isSectionHeader](/core/sys/darwin/Foundation/#MenuItem_isSectionHeader)
* [isSeparatorItem](/core/sys/darwin/Foundation/#MenuItem_isSeparatorItem)
* [isSubclassOfClass](/core/sys/darwin/Foundation/#MenuItem_isSubclassOfClass) *(class method)*
* [keyEquivalent](/core/sys/darwin/Foundation/#MenuItem_keyEquivalent)
* [keyEquivalentModifierMask](/core/sys/darwin/Foundation/#MenuItem_keyEquivalentModifierMask)
* [keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#MenuItem_keyPathsForValuesAffectingValueForKey) *(class method)*
* [load](/core/sys/darwin/Foundation/#MenuItem_load) *(class method)*
* [menu](/core/sys/darwin/Foundation/#MenuItem_menu)
* [mnemonic](/core/sys/darwin/Foundation/#MenuItem_mnemonic)
* [mnemonicLocation](/core/sys/darwin/Foundation/#MenuItem_mnemonicLocation)
* [mutableCopyWithZone](/core/sys/darwin/Foundation/#MenuItem_mutableCopyWithZone) *(class method)*
* [new](/core/sys/darwin/Foundation/#MenuItem_new) *(class method)*
* [parentItem](/core/sys/darwin/Foundation/#MenuItem_parentItem)
* [poseAsClass](/core/sys/darwin/Foundation/#MenuItem_poseAsClass) *(class method)*
* [registerActionCallback](/core/sys/darwin/Foundation/#MenuItem_registerActionCallback) *(class method)*
* [representedObject](/core/sys/darwin/Foundation/#MenuItem_representedObject)
* [resolveClassMethod](/core/sys/darwin/Foundation/#MenuItem_resolveClassMethod) *(class method)*
* [resolveInstanceMethod](/core/sys/darwin/Foundation/#MenuItem_resolveInstanceMethod) *(class method)*
* [sectionHeaderWithTitle](/core/sys/darwin/Foundation/#MenuItem_sectionHeaderWithTitle) *(class method)*
* [separatorItem](/core/sys/darwin/Foundation/#MenuItem_separatorItem) *(class method)*
* [setAction](/core/sys/darwin/Foundation/#MenuItem_setAction)
* [setAllowsAutomaticKeyEquivalentLocalization](/core/sys/darwin/Foundation/#MenuItem_setAllowsAutomaticKeyEquivalentLocalization)
* [setAllowsAutomaticKeyEquivalentMirroring](/core/sys/darwin/Foundation/#MenuItem_setAllowsAutomaticKeyEquivalentMirroring)
* [setAllowsKeyEquivalentWhenHidden](/core/sys/darwin/Foundation/#MenuItem_setAllowsKeyEquivalentWhenHidden)
* [setAlternate](/core/sys/darwin/Foundation/#MenuItem_setAlternate)
* [setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder) *(class method)*
* [setEnabled](/core/sys/darwin/Foundation/#MenuItem_setEnabled)
* [setHidden](/core/sys/darwin/Foundation/#MenuItem_setHidden)
* [setIndentationLevel](/core/sys/darwin/Foundation/#MenuItem_setIndentationLevel)
* [setKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalent)
* [setKeyEquivalentModifierMask](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalentModifierMask)
* [setKeys](/core/sys/darwin/Foundation/#MenuItem_setKeys) *(class method)*
* [setMenu](/core/sys/darwin/Foundation/#MenuItem_setMenu)
* [setMnemonicLocation](/core/sys/darwin/Foundation/#MenuItem_setMnemonicLocation)
* [setRepresentedObject](/core/sys/darwin/Foundation/#MenuItem_setRepresentedObject)
* [setSubmenu](/core/sys/darwin/Foundation/#MenuItem_setSubmenu)
* [setSubtitle](/core/sys/darwin/Foundation/#MenuItem_setSubtitle)
* [setTag](/core/sys/darwin/Foundation/#MenuItem_setTag)
* [setTarget](/core/sys/darwin/Foundation/#MenuItem_setTarget)
* [setTitle](/core/sys/darwin/Foundation/#MenuItem_setTitle)
* [setTitleWithMnemonic](/core/sys/darwin/Foundation/#MenuItem_setTitleWithMnemonic)
* [setToolTip](/core/sys/darwin/Foundation/#MenuItem_setToolTip)
* [setUsesUserKeyEquivalents](/core/sys/darwin/Foundation/#MenuItem_setUsesUserKeyEquivalents) *(class method)*
* [setVersion](/core/sys/darwin/Foundation/#MenuItem_setVersion) *(class method)*
* [setView](/core/sys/darwin/Foundation/#MenuItem_setView)
* [submenu](/core/sys/darwin/Foundation/#MenuItem_submenu)
* [subtitle](/core/sys/darwin/Foundation/#MenuItem_subtitle)
* [superclass](/core/sys/darwin/Foundation/#MenuItem_superclass) *(class method)*
* [tag](/core/sys/darwin/Foundation/#MenuItem_tag)
* [target](/core/sys/darwin/Foundation/#MenuItem_target)
* [title](/core/sys/darwin/Foundation/#MenuItem_title)
* [toolTip](/core/sys/darwin/Foundation/#MenuItem_toolTip)
* [useStoredAccessor](/core/sys/darwin/Foundation/#MenuItem_useStoredAccessor) *(class method)*
* [userKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_userKeyEquivalent)
* [usesUserKeyEquivalents](/core/sys/darwin/Foundation/#MenuItem_usesUserKeyEquivalents) *(class method)*
* [version](/core/sys/darwin/Foundation/#MenuItem_version) *(class method)*
* [view](/core/sys/darwin/Foundation/#MenuItem_view)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [copy](/core/sys/darwin/Foundation/#copy)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [MenuItemCallback ¶](#MenuItemCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L13)

```
MenuItemCallback :: proc "c" (unused: rawptr, name: ^.objc_selector, sender: ^Object)
```

##### Related Procedures With Parameters

* [MenuItem\_registerActionCallback](/core/sys/darwin/Foundation/#MenuItem_registerActionCallback)

### [MenuPresentationStyle ¶](#MenuPresentationStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L14)

```
MenuPresentationStyle :: enum i32 {
	Regular = 0, 
	Palette = 1, 
}
```

##### Related Procedures With Parameters

* [Menu\_setPresentationStyle](/core/sys/darwin/Foundation/#Menu_setPresentationStyle)



##### Related Procedures With Returns

* [Menu\_presentationStyle](/core/sys/darwin/Foundation/#Menu_presentationStyle)

### [MenuProperties ¶](#MenuProperties) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L32)

```
MenuProperties :: distinct bit_set[MenuPropertyItem; u32]
```

##### Related Procedures With Returns

* [Menu\_propertiesToUpdate](/core/sys/darwin/Foundation/#Menu_propertiesToUpdate)

### [MenuPropertyItem ¶](#MenuPropertyItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L24)

```
MenuPropertyItem :: enum u32 {
	Title                    = 0, 
	AttributedTitle          = 1, 
	KeyEquivalent            = 2, 
	Image                    = 3, 
	Enabled                  = 4, 
	AccessibilityDescription = 5, 
}
```

### [MenuSelectionMode ¶](#MenuSelectionMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L8)

```
MenuSelectionMode :: enum i32 {
	Automatic = 0, 
	SelectOne = 1, 
	SelectAny = 2, 
}
```

##### Related Procedures With Parameters

* [Menu\_setSelectionMode](/core/sys/darwin/Foundation/#Menu_setSelectionMode)



##### Related Procedures With Returns

* [Menu\_selectionMode](/core/sys/darwin/Foundation/#Menu_selectionMode)

### [Method ¶](#Method) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L103)

```
Method :: ^objc_method
```

##### Related Procedures With Parameters

* [method\_copyArgumentType](/core/sys/darwin/Foundation/#method_copyArgumentType)
* [method\_getArgumentType](/core/sys/darwin/Foundation/#method_getArgumentType)
* [method\_getImplementation](/core/sys/darwin/Foundation/#method_getImplementation)
* [method\_getNumberOfArguments](/core/sys/darwin/Foundation/#method_getNumberOfArguments)
* [method\_getReturnType](/core/sys/darwin/Foundation/#method_getReturnType)
* [method\_setImplementation](/core/sys/darwin/Foundation/#method_setImplementation)



##### Related Procedures With Returns

* [class\_copyMethodList](/core/sys/darwin/Foundation/#class_copyMethodList)
* [class\_getClassMethod](/core/sys/darwin/Foundation/#class_getClassMethod)
* [class\_getInstanceMethod](/core/sys/darwin/Foundation/#class_getInstanceMethod)

### [ModalResponse ¶](#ModalResponse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSPanel.odin#L3)

```
ModalResponse :: enum UInteger {
	Cancel = 0, 
	OK     = 1, 
}
```

##### Related Procedures With Returns

* [SavePanel\_runModal](/core/sys/darwin/Foundation/#SavePanel_runModal)

### [MutableArray ¶](#MutableArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L46)

```
MutableArray :: struct {
	using _: Copying($T=MutableArray),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#MutableArray_alloc) *(class method)*
* [count](/core/sys/darwin/Foundation/#MutableArray_count)
* [exchangeObjectAtIndex](/core/sys/darwin/Foundation/#MutableArray_exchangeObjectAtIndex)
* [init](/core/sys/darwin/Foundation/#MutableArray_init)
* [initWithCoder](/core/sys/darwin/Foundation/#MutableArray_initWithCoder)
* [initWithObjects](/core/sys/darwin/Foundation/#MutableArray_initWithObjects)
* [object](/core/sys/darwin/Foundation/#MutableArray_object)
* [objectAs](/core/sys/darwin/Foundation/#MutableArray_objectAs)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Notification ¶](#Notification) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L4)

```
Notification :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Notification_alloc) *(class method)*
* [init](/core/sys/darwin/Foundation/#Notification_init)
* [name](/core/sys/darwin/Foundation/#Notification_name)
* [object](/core/sys/darwin/Foundation/#Notification_object)
* [userInfo](/core/sys/darwin/Foundation/#Notification_userInfo)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [NotificationCenter ¶](#NotificationCenter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L35)

```
NotificationCenter :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName) *(overloaded method)*
* [alloc](/core/sys/darwin/Foundation/#NotificationCenter_alloc) *(class method)*
* [defaultCenter](/core/sys/darwin/Foundation/#NotificationCenter_defaultCenter) *(class method)*
* [init](/core/sys/darwin/Foundation/#NotificationCenter_init)
* [removeObserver](/core/sys/darwin/Foundation/#NotificationCenter_removeObserver)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [NotificationName ¶](#NotificationName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L32)

```
NotificationName :: ^String
```

##### Related Procedures With Parameters

* [Application\_nextEventMatchingMask](/core/sys/darwin/Foundation/#Application_nextEventMatchingMask)
* [Application\_setTitle](/core/sys/darwin/Foundation/#Application_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_legacy)
* [Bundle\_PathForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_PathForAuxiliaryExecutable)
* [Bundle\_URLForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_URLForAuxiliaryExecutable)
* [Bundle\_bundleWithPath](/core/sys/darwin/Foundation/#Bundle_bundleWithPath)
* [Bundle\_initWithPath](/core/sys/darwin/Foundation/#Bundle_initWithPath)
* [Bundle\_localizedStringForKey](/core/sys/darwin/Foundation/#Bundle_localizedStringForKey)
* [Bundle\_objectForInfoDictionaryKey](/core/sys/darwin/Foundation/#Bundle_objectForInfoDictionaryKey)
* [ClassFromString](/core/sys/darwin/Foundation/#ClassFromString)
* [Color\_colorUsingColorSpaceName](/core/sys/darwin/Foundation/#Color_colorUsingColorSpaceName)
* [Error\_errorWithDomain](/core/sys/darwin/Foundation/#Error_errorWithDomain)
* [Error\_initWithDomain](/core/sys/darwin/Foundation/#Error_initWithDomain)
* [MenuItem\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#MenuItem_automaticallyNotifiesObserversForKey)
* [MenuItem\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_exposeBinding](/core/sys/darwin/Foundation/#MenuItem_exposeBinding)
* [MenuItem\_initWithTitle](/core/sys/darwin/Foundation/#MenuItem_initWithTitle)
* [MenuItem\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#MenuItem_keyPathsForValuesAffectingValueForKey)
* [MenuItem\_sectionHeaderWithTitle](/core/sys/darwin/Foundation/#MenuItem_sectionHeaderWithTitle)
* [MenuItem\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalent)
* [MenuItem\_setKeys](/core/sys/darwin/Foundation/#MenuItem_setKeys)
* [MenuItem\_setSubtitle](/core/sys/darwin/Foundation/#MenuItem_setSubtitle)
* [MenuItem\_setTitle](/core/sys/darwin/Foundation/#MenuItem_setTitle)
* [MenuItem\_setTitleWithMnemonic](/core/sys/darwin/Foundation/#MenuItem_setTitleWithMnemonic)
* [MenuItem\_setToolTip](/core/sys/darwin/Foundation/#MenuItem_setToolTip)
* [Menu\_addItemWithTitle](/core/sys/darwin/Foundation/#Menu_addItemWithTitle)
* [Menu\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#Menu_automaticallyNotifiesObserversForKey)
* [Menu\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker)
* [Menu\_exposeBinding](/core/sys/darwin/Foundation/#Menu_exposeBinding)
* [Menu\_indexOfItemWithTitle](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTitle)
* [Menu\_initWithTitle](/core/sys/darwin/Foundation/#Menu_initWithTitle)
* [Menu\_insertItemWithTitle](/core/sys/darwin/Foundation/#Menu_insertItemWithTitle)
* [Menu\_itemWithTitle](/core/sys/darwin/Foundation/#Menu_itemWithTitle)
* [Menu\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#Menu_keyPathsForValuesAffectingValueForKey)
* [Menu\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder)
* [Menu\_setKeys](/core/sys/darwin/Foundation/#Menu_setKeys)
* [Menu\_setTitle](/core/sys/darwin/Foundation/#Menu_setTitle)
* [NSWindow\_setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [NotificationCenter\_addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [NotificationCenter\_addObserverForName\_new](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_new)
* [NotificationCenter\_addObserverForName\_old](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_old)
* [ProcessInfo\_beginActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_beginActivityWithOptions)
* [ProcessInfo\_disableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_disableAutomaticTermination)
* [ProcessInfo\_enableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_enableAutomaticTermination)
* [ProcessInfo\_performActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_performActivityWithOptions)
* [ProcessInfo\_performExpiringActivityWithReason](/core/sys/darwin/Foundation/#ProcessInfo_performExpiringActivityWithReason)
* [RunLoop\_addTimerForMode](/core/sys/darwin/Foundation/#RunLoop_addTimerForMode)
* [SelectorFromString](/core/sys/darwin/Foundation/#SelectorFromString)
* [String\_UTF8String](/core/sys/darwin/Foundation/#String_UTF8String)
* [String\_characterAtIndex](/core/sys/darwin/Foundation/#String_characterAtIndex)
* [String\_cstringUsingEncoding](/core/sys/darwin/Foundation/#String_cstringUsingEncoding)
* [String\_init](/core/sys/darwin/Foundation/#String_init)
* [String\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [String\_initWithCString](/core/sys/darwin/Foundation/#String_initWithCString)
* [String\_initWithOdinString](/core/sys/darwin/Foundation/#String_initWithOdinString)
* [String\_initWithString](/core/sys/darwin/Foundation/#String_initWithString)
* [String\_isEqualToString](/core/sys/darwin/Foundation/#String_isEqualToString)
* [String\_length](/core/sys/darwin/Foundation/#String_length)
* [String\_lengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_lengthOfBytesUsingEncoding)
* [String\_maximumLengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_maximumLengthOfBytesUsingEncoding)
* [String\_odinString](/core/sys/darwin/Foundation/#String_odinString)
* [String\_rangeOfString](/core/sys/darwin/Foundation/#String_rangeOfString)
* [String\_stringByAppendingString](/core/sys/darwin/Foundation/#String_stringByAppendingString)
* [URLResponse\_initWithURL](/core/sys/darwin/Foundation/#URLResponse_initWithURL)
* [URL\_initFileURLWithPath](/core/sys/darwin/Foundation/#URL_initFileURLWithPath)
* [URL\_initWithString](/core/sys/darwin/Foundation/#URL_initWithString)
* [UserDefaults\_setBoolForKey](/core/sys/darwin/Foundation/#UserDefaults_setBoolForKey)
* [Window\_minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle)
* [Window\_setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(procedure groups)*
* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName) *(procedure groups)*



##### Related Procedures With Returns

* [Bundle\_appStoreReceiptPath](/core/sys/darwin/Foundation/#Bundle_appStoreReceiptPath)
* [Bundle\_builtInPlugInsPath](/core/sys/darwin/Foundation/#Bundle_builtInPlugInsPath)
* [Bundle\_bundleIdentifier](/core/sys/darwin/Foundation/#Bundle_bundleIdentifier)
* [Bundle\_bundlePath](/core/sys/darwin/Foundation/#Bundle_bundlePath)
* [Bundle\_executablePath](/core/sys/darwin/Foundation/#Bundle_executablePath)
* [Bundle\_privateFrameworksPath](/core/sys/darwin/Foundation/#Bundle_privateFrameworksPath)
* [Bundle\_resourcePath](/core/sys/darwin/Foundation/#Bundle_resourcePath)
* [Bundle\_sharedFrameworksPath](/core/sys/darwin/Foundation/#Bundle_sharedFrameworksPath)
* [Bundle\_sharedSupportPath](/core/sys/darwin/Foundation/#Bundle_sharedSupportPath)
* [Color\_colorSpaceName](/core/sys/darwin/Foundation/#Color_colorSpaceName)
* [Error\_domain](/core/sys/darwin/Foundation/#Error_domain)
* [Error\_localizedDescription](/core/sys/darwin/Foundation/#Error_localizedDescription)
* [Error\_localizedFailureReason](/core/sys/darwin/Foundation/#Error_localizedFailureReason)
* [Error\_localizedRecoverySuggestion](/core/sys/darwin/Foundation/#Error_localizedRecoverySuggestion)
* [Event\_characters](/core/sys/darwin/Foundation/#Event_characters)
* [Event\_charactersIgnoringModifiers](/core/sys/darwin/Foundation/#Event_charactersIgnoringModifiers)
* [MakeConstantString](/core/sys/darwin/Foundation/#MakeConstantString)
* [MenuItem\_debugDescription](/core/sys/darwin/Foundation/#MenuItem_debugDescription)
* [MenuItem\_description](/core/sys/darwin/Foundation/#MenuItem_description)
* [MenuItem\_keyEquivalent](/core/sys/darwin/Foundation/#MenuItem_keyEquivalent)
* [MenuItem\_mnemonic](/core/sys/darwin/Foundation/#MenuItem_mnemonic)
* [MenuItem\_subtitle](/core/sys/darwin/Foundation/#MenuItem_subtitle)
* [MenuItem\_title](/core/sys/darwin/Foundation/#MenuItem_title)
* [MenuItem\_toolTip](/core/sys/darwin/Foundation/#MenuItem_toolTip)
* [MenuItem\_userKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_userKeyEquivalent)
* [Menu\_debugDescription](/core/sys/darwin/Foundation/#Menu_debugDescription)
* [Menu\_description](/core/sys/darwin/Foundation/#Menu_description)
* [Menu\_title](/core/sys/darwin/Foundation/#Menu_title)
* [Notification\_name](/core/sys/darwin/Foundation/#Notification_name)
* [Number\_descriptionWithLocale](/core/sys/darwin/Foundation/#Number_descriptionWithLocale)
* [Number\_stringValue](/core/sys/darwin/Foundation/#Number_stringValue)
* [ProcessInfo\_fullUserName](/core/sys/darwin/Foundation/#ProcessInfo_fullUserName)
* [ProcessInfo\_globallyUniqueString](/core/sys/darwin/Foundation/#ProcessInfo_globallyUniqueString)
* [ProcessInfo\_hostName](/core/sys/darwin/Foundation/#ProcessInfo_hostName)
* [ProcessInfo\_operatingSystemVersionString](/core/sys/darwin/Foundation/#ProcessInfo_operatingSystemVersionString)
* [ProcessInfo\_processName](/core/sys/darwin/Foundation/#ProcessInfo_processName)
* [ProcessInfo\_userName](/core/sys/darwin/Foundation/#ProcessInfo_userName)
* [RunningApplication\_localizedName](/core/sys/darwin/Foundation/#RunningApplication_localizedName)
* [StringFromClass](/core/sys/darwin/Foundation/#StringFromClass)
* [StringFromSelector](/core/sys/darwin/Foundation/#StringFromSelector)
* [String\_alloc](/core/sys/darwin/Foundation/#String_alloc)
* [URL\_relativePath](/core/sys/darwin/Foundation/#URL_relativePath)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)

### [Number ¶](#Number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L66)

```
Number :: struct {
	using _: Copying($T=Number),
	using _: Value,
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Number_alloc) *(class method)*
* [boolValue](/core/sys/darwin/Foundation/#Number_boolValue)
* [compare](/core/sys/darwin/Foundation/#Number_compare)
* [descriptionWithLocale](/core/sys/darwin/Foundation/#Number_descriptionWithLocale)
* [f32Value](/core/sys/darwin/Foundation/#Number_f32Value)
* [f64Value](/core/sys/darwin/Foundation/#Number_f64Value)
* [i16Value](/core/sys/darwin/Foundation/#Number_i16Value)
* [i32Value](/core/sys/darwin/Foundation/#Number_i32Value)
* [i64Value](/core/sys/darwin/Foundation/#Number_i64Value)
* [i8Value](/core/sys/darwin/Foundation/#Number_i8Value)
* [init](/core/sys/darwin/Foundation/#Number_init)
* [initWithBool](/core/sys/darwin/Foundation/#Number_initWithBool)
* [initWithF32](/core/sys/darwin/Foundation/#Number_initWithF32)
* [initWithF64](/core/sys/darwin/Foundation/#Number_initWithF64)
* [initWithI16](/core/sys/darwin/Foundation/#Number_initWithI16)
* [initWithI32](/core/sys/darwin/Foundation/#Number_initWithI32)
* [initWithI64](/core/sys/darwin/Foundation/#Number_initWithI64)
* [initWithI8](/core/sys/darwin/Foundation/#Number_initWithI8)
* [initWithInt](/core/sys/darwin/Foundation/#Number_initWithInt)
* [initWithU16](/core/sys/darwin/Foundation/#Number_initWithU16)
* [initWithU32](/core/sys/darwin/Foundation/#Number_initWithU32)
* [initWithU64](/core/sys/darwin/Foundation/#Number_initWithU64)
* [initWithU8](/core/sys/darwin/Foundation/#Number_initWithU8)
* [initWithUint](/core/sys/darwin/Foundation/#Number_initWithUint)
* [intValue](/core/sys/darwin/Foundation/#Number_intValue)
* [integerValue](/core/sys/darwin/Foundation/#Number_integerValue)
* [isEqualToNumber](/core/sys/darwin/Foundation/#Number_isEqualToNumber)
* [number](/core/sys/darwin/Foundation/#Number_number) *(class method)* *(overloaded method)*
* [numberWithBool](/core/sys/darwin/Foundation/#Number_numberWithBool) *(class method)*
* [numberWithF32](/core/sys/darwin/Foundation/#Number_numberWithF32) *(class method)*
* [numberWithF64](/core/sys/darwin/Foundation/#Number_numberWithF64) *(class method)*
* [numberWithI16](/core/sys/darwin/Foundation/#Number_numberWithI16) *(class method)*
* [numberWithI32](/core/sys/darwin/Foundation/#Number_numberWithI32) *(class method)*
* [numberWithI64](/core/sys/darwin/Foundation/#Number_numberWithI64) *(class method)*
* [numberWithI8](/core/sys/darwin/Foundation/#Number_numberWithI8) *(class method)*
* [numberWithInt](/core/sys/darwin/Foundation/#Number_numberWithInt) *(class method)*
* [numberWithU16](/core/sys/darwin/Foundation/#Number_numberWithU16) *(class method)*
* [numberWithU32](/core/sys/darwin/Foundation/#Number_numberWithU32) *(class method)*
* [numberWithU64](/core/sys/darwin/Foundation/#Number_numberWithU64) *(class method)*
* [numberWithU8](/core/sys/darwin/Foundation/#Number_numberWithU8) *(class method)*
* [numberWithUint](/core/sys/darwin/Foundation/#Number_numberWithUint) *(class method)*
* [stringValue](/core/sys/darwin/Foundation/#Number_stringValue)
* [u16Value](/core/sys/darwin/Foundation/#Number_u16Value)
* [u32Value](/core/sys/darwin/Foundation/#Number_u32Value)
* [u64Value](/core/sys/darwin/Foundation/#Number_u64Value)
* [u8Value](/core/sys/darwin/Foundation/#Number_u8Value)
* [uintValue](/core/sys/darwin/Foundation/#Number_uintValue)
* [uintegerValue](/core/sys/darwin/Foundation/#Number_uintegerValue)

###### Methods Inherited From [Value](/core/sys/darwin/Foundation/#Value)

* [getValue](/core/sys/darwin/Foundation/#Value_getValue)
* [initWithBytes](/core/sys/darwin/Foundation/#Value_initWithBytes)
* [initWithCoder](/core/sys/darwin/Foundation/#Value_initWithCoder)
* [isEqualToValue](/core/sys/darwin/Foundation/#Value_isEqualToValue)
* [objCType](/core/sys/darwin/Foundation/#Value_objCType)
* [pointerValue](/core/sys/darwin/Foundation/#Value_pointerValue)
* [valueWithBytes](/core/sys/darwin/Foundation/#Value_valueWithBytes) *(class method)*
* [valueWithPointer](/core/sys/darwin/Foundation/#Value_valueWithPointer) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Object ¶](#Object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L19)

```
Object :: struct {
	using _: .objc_object,
}
```

##### Bound Objective-C Methods

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ObjectProtocol ¶](#ObjectProtocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObjectProtocol.odin#L4)

```
ObjectProtocol :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Object\_VTable\_Info ¶](#Object_VTable_Info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L8)

```
Object_VTable_Info :: struct {
	vtable: rawptr,
	size:   uint,
	impl:   Subclasser_Proc,
}
```

##### Related Procedures With Returns

* [make\_subclasser](/core/sys/darwin/Foundation/#make_subclasser)

### [OpenPanel ¶](#OpenPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L4)

```
OpenPanel :: struct {
	using _: SavePanel,
}
```

##### Bound Objective-C Methods

* [URLs](/core/sys/darwin/Foundation/#OpenPanel_URLs)
* [openPanel](/core/sys/darwin/Foundation/#OpenPanel_openPanel) *(class method)*
* [setAllowedFileTypes](/core/sys/darwin/Foundation/#OpenPanel_setAllowedFileTypes)
* [setAllowsMultipleSelection](/core/sys/darwin/Foundation/#OpenPanel_setAllowsMultipleSelection)
* [setCanChooseDirectories](/core/sys/darwin/Foundation/#OpenPanel_setCanChooseDirectories)
* [setCanChooseFiles](/core/sys/darwin/Foundation/#OpenPanel_setCanChooseFiles)
* [setResolvesAliases](/core/sys/darwin/Foundation/#OpenPanel_setResolvesAliases)

###### Methods Inherited From [SavePanel](/core/sys/darwin/Foundation/#SavePanel)

* [URL](/core/sys/darwin/Foundation/#SavePanel_URL)
* [runModal](/core/sys/darwin/Foundation/#SavePanel_runModal)
* [savePanel](/core/sys/darwin/Foundation/#SavePanel_savePanel) *(class method)*

###### Methods Inherited From [Window](/core/sys/darwin/Foundation/#Window)

* [setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [alloc](/core/sys/darwin/Foundation/#Window_alloc) *(class method)*
* [backgroundColor](/core/sys/darwin/Foundation/#Window_backgroundColor)
* [backingScaleFactor](/core/sys/darwin/Foundation/#Window_backingScaleFactor)
* [center](/core/sys/darwin/Foundation/#Window_center)
* [close](/core/sys/darwin/Foundation/#Window_close)
* [collectionBehavior](/core/sys/darwin/Foundation/#Window_collectionBehavior)
* [contentLayoutRect](/core/sys/darwin/Foundation/#Window_contentLayoutRect)
* [contentRectForFrameRect](/core/sys/darwin/Foundation/#Window_contentRectForFrameRectInstance)
* [contentView](/core/sys/darwin/Foundation/#Window_contentView)
* [convertPointFromBacking](/core/sys/darwin/Foundation/#Window_convertPointFromBacking)
* [convertPointFromScreen](/core/sys/darwin/Foundation/#Window_convertPointFromScreen)
* [convertPointToBacking](/core/sys/darwin/Foundation/#Window_convertPointToBacking)
* [convertPointToScreen](/core/sys/darwin/Foundation/#Window_convertPointToScreen)
* [convertRectFromBacking](/core/sys/darwin/Foundation/#Window_convertRectFromBacking)
* [convertRectFromScreen](/core/sys/darwin/Foundation/#Window_convertRectFromScreen)
* [convertRectToBacking](/core/sys/darwin/Foundation/#Window_convertRectToBacking)
* [convertRectToScreen](/core/sys/darwin/Foundation/#Window_convertRectToScreen)
* [delegate](/core/sys/darwin/Foundation/#Window_delegate)
* [frame](/core/sys/darwin/Foundation/#Window_frame)
* [frameRectForContentRect](/core/sys/darwin/Foundation/#Window_frameRectForContentRectInstance)
* [hasCloseBox](/core/sys/darwin/Foundation/#Window_hasCloseBox)
* [hasTitleBar](/core/sys/darwin/Foundation/#Window_hasTitleBar)
* [initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)
* [isFloatingPanel](/core/sys/darwin/Foundation/#Window_isFloatingPanel)
* [isMiniaturizable](/core/sys/darwin/Foundation/#Window_isMiniaturizable)
* [isModalPanel](/core/sys/darwin/Foundation/#Window_isModalPanel)
* [isResizable](/core/sys/darwin/Foundation/#Window_isResizable)
* [isZoomable](/core/sys/darwin/Foundation/#Window_isZoomable)
* [keyWindow](/core/sys/darwin/Foundation/#Window_keyWindow)
* [mainWindow](/core/sys/darwin/Foundation/#Window_mainWindow)
* [makeFirstResponder](/core/sys/darwin/Foundation/#Window_makeFirstResponder)
* [makeKeyAndOrderFront](/core/sys/darwin/Foundation/#Window_makeKeyAndOrderFront)
* [minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle) *(class method)*
* [opaque](/core/sys/darwin/Foundation/#Window_opaque)
* [orderFront](/core/sys/darwin/Foundation/#Window_orderFront)
* [orderOut](/core/sys/darwin/Foundation/#Window_orderOut)
* [orderedIndex](/core/sys/darwin/Foundation/#Window_orderedIndex)
* [parentWindow](/core/sys/darwin/Foundation/#Window_parentWindow)
* [performClose](/core/sys/darwin/Foundation/#Window_performClose)
* [performWindowDragWithEvent](/core/sys/darwin/Foundation/#Window_performWindowDragWithEvent)
* [performZoom](/core/sys/darwin/Foundation/#Window_performZoom)
* [screen](/core/sys/darwin/Foundation/#Window_screen)
* [setAcceptsMouseMovedEvents](/core/sys/darwin/Foundation/#Window_setAcceptsMouseMovedEvents)
* [setBackgroundColor](/core/sys/darwin/Foundation/#Window_setBackgroundColor)
* [setCollectionBehavior](/core/sys/darwin/Foundation/#Window_setCollectionBehavior)
* [setContentView](/core/sys/darwin/Foundation/#Window_setContentView)
* [setDelegate](/core/sys/darwin/Foundation/#Window_setDelegate)
* [setFrame](/core/sys/darwin/Foundation/#Window_setFrame)
* [setFrameOrigin](/core/sys/darwin/Foundation/#Window_setFrameOrigin)
* [setIsMiniaturized](/core/sys/darwin/Foundation/#Window_setIsMiniaturized)
* [setIsVisible](/core/sys/darwin/Foundation/#Window_setIsVisible)
* [setIsZoomed](/core/sys/darwin/Foundation/#Window_setIsZoomed)
* [setLevel](/core/sys/darwin/Foundation/#Window_setLevel)
* [setMinSize](/core/sys/darwin/Foundation/#Window_setMinSize)
* [setMovable](/core/sys/darwin/Foundation/#Window_setMovable)
* [setMovableByWindowBackground](/core/sys/darwin/Foundation/#Window_setMovableByWindowBackground)
* [setOpaque](/core/sys/darwin/Foundation/#Window_setOpaque)
* [setReleasedWhenClosed](/core/sys/darwin/Foundation/#Window_setReleasedWhenClosed)
* [setRestorable](/core/sys/darwin/Foundation/#Window_setRestorable)
* [setStyleMask](/core/sys/darwin/Foundation/#Window_setStyleMask)
* [setTabbingMode](/core/sys/darwin/Foundation/#Window_setTabbingMode)
* [setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [setTitleVisibility](/core/sys/darwin/Foundation/#Window_setTitleVisibility)
* [setTitlebarAppearsTransparent](/core/sys/darwin/Foundation/#Window_setTitlebarAppearsTransparent)
* [setToolbar](/core/sys/darwin/Foundation/#Window_setToolbar)
* [setWantsLayer](/core/sys/darwin/Foundation/#Window_setWantsLayer)
* [toggleFullScreen](/core/sys/darwin/Foundation/#Window_toggleFullScreen)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [OperatingSystemVersion ¶](#OperatingSystemVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L24)

```
OperatingSystemVersion :: struct #align (8) {
	majorVersion: Integer,
	minorVersion: Integer,
	patchVersion: Integer,
}
```

##### Related Procedures With Parameters

* [ProcessInfo\_isOperatingSystemAtLeastVersion](/core/sys/darwin/Foundation/#ProcessInfo_isOperatingSystemAtLeastVersion)



##### Related Procedures With Returns

* [ProcessInfo\_operatingSystemVersion](/core/sys/darwin/Foundation/#ProcessInfo_operatingSystemVersion)

### [Panel ¶](#Panel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSPanel.odin#L9)

```
Panel :: struct {
	using _: Window,
}
```

###### Methods Inherited From [Window](/core/sys/darwin/Foundation/#Window)

* [setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [alloc](/core/sys/darwin/Foundation/#Window_alloc) *(class method)*
* [backgroundColor](/core/sys/darwin/Foundation/#Window_backgroundColor)
* [backingScaleFactor](/core/sys/darwin/Foundation/#Window_backingScaleFactor)
* [center](/core/sys/darwin/Foundation/#Window_center)
* [close](/core/sys/darwin/Foundation/#Window_close)
* [collectionBehavior](/core/sys/darwin/Foundation/#Window_collectionBehavior)
* [contentLayoutRect](/core/sys/darwin/Foundation/#Window_contentLayoutRect)
* [contentRectForFrameRect](/core/sys/darwin/Foundation/#Window_contentRectForFrameRectInstance)
* [contentView](/core/sys/darwin/Foundation/#Window_contentView)
* [convertPointFromBacking](/core/sys/darwin/Foundation/#Window_convertPointFromBacking)
* [convertPointFromScreen](/core/sys/darwin/Foundation/#Window_convertPointFromScreen)
* [convertPointToBacking](/core/sys/darwin/Foundation/#Window_convertPointToBacking)
* [convertPointToScreen](/core/sys/darwin/Foundation/#Window_convertPointToScreen)
* [convertRectFromBacking](/core/sys/darwin/Foundation/#Window_convertRectFromBacking)
* [convertRectFromScreen](/core/sys/darwin/Foundation/#Window_convertRectFromScreen)
* [convertRectToBacking](/core/sys/darwin/Foundation/#Window_convertRectToBacking)
* [convertRectToScreen](/core/sys/darwin/Foundation/#Window_convertRectToScreen)
* [delegate](/core/sys/darwin/Foundation/#Window_delegate)
* [frame](/core/sys/darwin/Foundation/#Window_frame)
* [frameRectForContentRect](/core/sys/darwin/Foundation/#Window_frameRectForContentRectInstance)
* [hasCloseBox](/core/sys/darwin/Foundation/#Window_hasCloseBox)
* [hasTitleBar](/core/sys/darwin/Foundation/#Window_hasTitleBar)
* [initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)
* [isFloatingPanel](/core/sys/darwin/Foundation/#Window_isFloatingPanel)
* [isMiniaturizable](/core/sys/darwin/Foundation/#Window_isMiniaturizable)
* [isModalPanel](/core/sys/darwin/Foundation/#Window_isModalPanel)
* [isResizable](/core/sys/darwin/Foundation/#Window_isResizable)
* [isZoomable](/core/sys/darwin/Foundation/#Window_isZoomable)
* [keyWindow](/core/sys/darwin/Foundation/#Window_keyWindow)
* [mainWindow](/core/sys/darwin/Foundation/#Window_mainWindow)
* [makeFirstResponder](/core/sys/darwin/Foundation/#Window_makeFirstResponder)
* [makeKeyAndOrderFront](/core/sys/darwin/Foundation/#Window_makeKeyAndOrderFront)
* [minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle) *(class method)*
* [opaque](/core/sys/darwin/Foundation/#Window_opaque)
* [orderFront](/core/sys/darwin/Foundation/#Window_orderFront)
* [orderOut](/core/sys/darwin/Foundation/#Window_orderOut)
* [orderedIndex](/core/sys/darwin/Foundation/#Window_orderedIndex)
* [parentWindow](/core/sys/darwin/Foundation/#Window_parentWindow)
* [performClose](/core/sys/darwin/Foundation/#Window_performClose)
* [performWindowDragWithEvent](/core/sys/darwin/Foundation/#Window_performWindowDragWithEvent)
* [performZoom](/core/sys/darwin/Foundation/#Window_performZoom)
* [screen](/core/sys/darwin/Foundation/#Window_screen)
* [setAcceptsMouseMovedEvents](/core/sys/darwin/Foundation/#Window_setAcceptsMouseMovedEvents)
* [setBackgroundColor](/core/sys/darwin/Foundation/#Window_setBackgroundColor)
* [setCollectionBehavior](/core/sys/darwin/Foundation/#Window_setCollectionBehavior)
* [setContentView](/core/sys/darwin/Foundation/#Window_setContentView)
* [setDelegate](/core/sys/darwin/Foundation/#Window_setDelegate)
* [setFrame](/core/sys/darwin/Foundation/#Window_setFrame)
* [setFrameOrigin](/core/sys/darwin/Foundation/#Window_setFrameOrigin)
* [setIsMiniaturized](/core/sys/darwin/Foundation/#Window_setIsMiniaturized)
* [setIsVisible](/core/sys/darwin/Foundation/#Window_setIsVisible)
* [setIsZoomed](/core/sys/darwin/Foundation/#Window_setIsZoomed)
* [setLevel](/core/sys/darwin/Foundation/#Window_setLevel)
* [setMinSize](/core/sys/darwin/Foundation/#Window_setMinSize)
* [setMovable](/core/sys/darwin/Foundation/#Window_setMovable)
* [setMovableByWindowBackground](/core/sys/darwin/Foundation/#Window_setMovableByWindowBackground)
* [setOpaque](/core/sys/darwin/Foundation/#Window_setOpaque)
* [setReleasedWhenClosed](/core/sys/darwin/Foundation/#Window_setReleasedWhenClosed)
* [setRestorable](/core/sys/darwin/Foundation/#Window_setRestorable)
* [setStyleMask](/core/sys/darwin/Foundation/#Window_setStyleMask)
* [setTabbingMode](/core/sys/darwin/Foundation/#Window_setTabbingMode)
* [setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [setTitleVisibility](/core/sys/darwin/Foundation/#Window_setTitleVisibility)
* [setTitlebarAppearsTransparent](/core/sys/darwin/Foundation/#Window_setTitlebarAppearsTransparent)
* [setToolbar](/core/sys/darwin/Foundation/#Window_setToolbar)
* [setWantsLayer](/core/sys/darwin/Foundation/#Window_setWantsLayer)
* [toggleFullScreen](/core/sys/darwin/Foundation/#Window_toggleFullScreen)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Pasteboard ¶](#Pasteboard) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSPasteboard.odin#L4)

```
Pasteboard :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Point ¶](#Point) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L40)

```
Point :: CoreFoundation.CGPoint
```

##### Related Procedures With Parameters

* [Cursor\_initWithImage](/core/sys/darwin/Foundation/#Cursor_initWithImage)
* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [Layer\_setPosition](/core/sys/darwin/Foundation/#Layer_setPosition)
* [Menu\_popUpMenuPositioningItem](/core/sys/darwin/Foundation/#Menu_popUpMenuPositioningItem)
* [View\_convertPointFromView](/core/sys/darwin/Foundation/#View_convertPointFromView)
* [Window\_convertPointFromBacking](/core/sys/darwin/Foundation/#Window_convertPointFromBacking)
* [Window\_convertPointFromScreen](/core/sys/darwin/Foundation/#Window_convertPointFromScreen)
* [Window\_convertPointToBacking](/core/sys/darwin/Foundation/#Window_convertPointToBacking)
* [Window\_convertPointToScreen](/core/sys/darwin/Foundation/#Window_convertPointToScreen)
* [Window\_setFrameOrigin](/core/sys/darwin/Foundation/#Window_setFrameOrigin)



##### Related Procedures With Returns

* [Event\_locationInWindow](/core/sys/darwin/Foundation/#Event_locationInWindow)
* [Event\_mouseLocation](/core/sys/darwin/Foundation/#Event_mouseLocation)
* [Layer\_position](/core/sys/darwin/Foundation/#Layer_position)
* [Menu\_locationForSubmenu](/core/sys/darwin/Foundation/#Menu_locationForSubmenu)
* [tilt](/core/sys/darwin/Foundation/#tilt)

### [PointingDeviceType ¶](#PointingDeviceType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L101)

```
PointingDeviceType :: enum UInteger {
	Unknown = 0, 
	Pen     = 1, 
	Cursor  = 2, 
	Eraser  = 3, 
}
```

 

pointer types for NSTabletProximity events or mouse events with subtype NSTabletProximityEventSubtype




##### Related Procedures With Returns

* [Event\_pointingDeviceType](/core/sys/darwin/Foundation/#Event_pointingDeviceType)

### [ProcessInfo ¶](#ProcessInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L8)

```
ProcessInfo :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [activeProcessorCount](/core/sys/darwin/Foundation/#ProcessInfo_activeProcessorCount)
* [arguments](/core/sys/darwin/Foundation/#ProcessInfo_arguments)
* [automaticTerminationSupportEnabled](/core/sys/darwin/Foundation/#ProcessInfo_automaticTerminationSupportEnabled)
* [beginActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_beginActivityWithOptions)
* [disableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_disableAutomaticTermination)
* [disableSuddenTermination](/core/sys/darwin/Foundation/#ProcessInfo_disableSuddenTermination)
* [enableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_enableAutomaticTermination)
* [enableSuddenTermination](/core/sys/darwin/Foundation/#ProcessInfo_enableSuddenTermination)
* [endActivity](/core/sys/darwin/Foundation/#ProcessInfo_endActivity)
* [environment](/core/sys/darwin/Foundation/#ProcessInfo_environment)
* [fullUserName](/core/sys/darwin/Foundation/#ProcessInfo_fullUserName)
* [globallyUniqueString](/core/sys/darwin/Foundation/#ProcessInfo_globallyUniqueString)
* [hostName](/core/sys/darwin/Foundation/#ProcessInfo_hostName)
* [isLowPowerModeEnabled](/core/sys/darwin/Foundation/#ProcessInfo_isLowPowerModeEnabled)
* [isMacCatalystApp](/core/sys/darwin/Foundation/#ProcessInfo_isMacCatalystApp)
* [isOperatingSystemAtLeastVersion](/core/sys/darwin/Foundation/#ProcessInfo_isOperatingSystemAtLeastVersion)
* [isiOSAppOnMac](/core/sys/darwin/Foundation/#ProcessInfo_isiOSAppOnMac)
* [operatingSystemVersion](/core/sys/darwin/Foundation/#ProcessInfo_operatingSystemVersion)
* [operatingSystemVersionString](/core/sys/darwin/Foundation/#ProcessInfo_operatingSystemVersionString)
* [performActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_performActivityWithOptions)
* [performExpiringActivityWithReason](/core/sys/darwin/Foundation/#ProcessInfo_performExpiringActivityWithReason)
* [physicalMemory](/core/sys/darwin/Foundation/#ProcessInfo_physicalMemory)
* [processIdentifier](/core/sys/darwin/Foundation/#ProcessInfo_processIdentifier)
* [processInfo](/core/sys/darwin/Foundation/#ProcessInfo_processInfo) *(class method)*
* [processName](/core/sys/darwin/Foundation/#ProcessInfo_processName)
* [processorCount](/core/sys/darwin/Foundation/#ProcessInfo_processorCount)
* [setAutomaticTerminationSupportEnabled](/core/sys/darwin/Foundation/#ProcessInfo_setAutomaticTerminationSupportEnabled)
* [systemUptime](/core/sys/darwin/Foundation/#ProcessInfo_systemUptime)
* [thermalState](/core/sys/darwin/Foundation/#ProcessInfo_thermalState)
* [userName](/core/sys/darwin/Foundation/#ProcessInfo_userName)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [ProcessInfoThermalState ¶](#ProcessInfoThermalState) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L186)

```
ProcessInfoThermalState :: enum i32 {
	Nominal, 
	Fair, 
	Serious, 
	Critical, 
}
```

##### Related Procedures With Returns

* [ProcessInfo\_thermalState](/core/sys/darwin/Foundation/#ProcessInfo_thermalState)

### [Protocol ¶](#Protocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L137)

```
Protocol :: struct {
	using _: .objc_object,
}
```

### [Range ¶](#Range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRange.odin#L3)

```
Range :: struct {
	location: UInteger,
	length:   UInteger,
}
```

##### Related Procedures With Parameters

* [Range\_Equal](/core/sys/darwin/Foundation/#Range_Equal)
* [Range\_LocationInRange](/core/sys/darwin/Foundation/#Range_LocationInRange)
* [Range\_Max](/core/sys/darwin/Foundation/#Range_Max)



##### Related Procedures With Returns

* [Range\_Make](/core/sys/darwin/Foundation/#Range_Make)
* [String\_rangeOfString](/core/sys/darwin/Foundation/#String_rangeOfString)

### [Rect ¶](#Rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L8)

```
Rect :: CoreFoundation.CGRect
```

##### Related Procedures With Parameters

* [MaxX](/core/sys/darwin/Foundation/#MaxX)
* [MaxY](/core/sys/darwin/Foundation/#MaxY)
* [MidX](/core/sys/darwin/Foundation/#MidX)
* [MidY](/core/sys/darwin/Foundation/#MidY)
* [MinX](/core/sys/darwin/Foundation/#MinX)
* [MinY](/core/sys/darwin/Foundation/#MinY)
* [View\_initWithFrame](/core/sys/darwin/Foundation/#View_initWithFrame)
* [Window\_contentRectForFrameRectInstance](/core/sys/darwin/Foundation/#Window_contentRectForFrameRectInstance)
* [Window\_contentRectForFrameRectType](/core/sys/darwin/Foundation/#Window_contentRectForFrameRectType)
* [Window\_convertRectFromBacking](/core/sys/darwin/Foundation/#Window_convertRectFromBacking)
* [Window\_convertRectFromScreen](/core/sys/darwin/Foundation/#Window_convertRectFromScreen)
* [Window\_convertRectToBacking](/core/sys/darwin/Foundation/#Window_convertRectToBacking)
* [Window\_convertRectToScreen](/core/sys/darwin/Foundation/#Window_convertRectToScreen)
* [Window\_frameRectForContentRectInstance](/core/sys/darwin/Foundation/#Window_frameRectForContentRectInstance)
* [Window\_frameRectForContentRectType](/core/sys/darwin/Foundation/#Window_frameRectForContentRectType)
* [Window\_initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)
* [Window\_setFrame](/core/sys/darwin/Foundation/#Window_setFrame)



##### Related Procedures With Returns

* [Layer\_frame](/core/sys/darwin/Foundation/#Layer_frame)
* [MenuDelegate\_confinementRectForMenu](/core/sys/darwin/Foundation/#MenuDelegate_confinementRectForMenu)
* [Screen\_frame](/core/sys/darwin/Foundation/#Screen_frame)
* [Screen\_visibleFrame](/core/sys/darwin/Foundation/#Screen_visibleFrame)
* [View\_bounds](/core/sys/darwin/Foundation/#View_bounds)
* [Window\_contentLayoutRect](/core/sys/darwin/Foundation/#Window_contentLayoutRect)
* [Window\_frame](/core/sys/darwin/Foundation/#Window_frame)

### [Responder ¶](#Responder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L676)

```
Responder :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [RunLoop ¶](#RunLoop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L16)

```
RunLoop :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [addTimerForMode](/core/sys/darwin/Foundation/#RunLoop_addTimerForMode)
* [mainRunLoop](/core/sys/darwin/Foundation/#RunLoop_mainRunLoop) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [RunLoopMode ¶](#RunLoopMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L5)

```
RunLoopMode :: ^String
```

##### Related Procedures With Parameters

* [Application\_nextEventMatchingMask](/core/sys/darwin/Foundation/#Application_nextEventMatchingMask)
* [Application\_setTitle](/core/sys/darwin/Foundation/#Application_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
* [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes_legacy)
* [Bundle\_PathForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_PathForAuxiliaryExecutable)
* [Bundle\_URLForAuxiliaryExecutable](/core/sys/darwin/Foundation/#Bundle_URLForAuxiliaryExecutable)
* [Bundle\_bundleWithPath](/core/sys/darwin/Foundation/#Bundle_bundleWithPath)
* [Bundle\_initWithPath](/core/sys/darwin/Foundation/#Bundle_initWithPath)
* [Bundle\_localizedStringForKey](/core/sys/darwin/Foundation/#Bundle_localizedStringForKey)
* [Bundle\_objectForInfoDictionaryKey](/core/sys/darwin/Foundation/#Bundle_objectForInfoDictionaryKey)
* [ClassFromString](/core/sys/darwin/Foundation/#ClassFromString)
* [Color\_colorUsingColorSpaceName](/core/sys/darwin/Foundation/#Color_colorUsingColorSpaceName)
* [Error\_errorWithDomain](/core/sys/darwin/Foundation/#Error_errorWithDomain)
* [Error\_initWithDomain](/core/sys/darwin/Foundation/#Error_initWithDomain)
* [MenuItem\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#MenuItem_automaticallyNotifiesObserversForKey)
* [MenuItem\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_exposeBinding](/core/sys/darwin/Foundation/#MenuItem_exposeBinding)
* [MenuItem\_initWithTitle](/core/sys/darwin/Foundation/#MenuItem_initWithTitle)
* [MenuItem\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#MenuItem_keyPathsForValuesAffectingValueForKey)
* [MenuItem\_sectionHeaderWithTitle](/core/sys/darwin/Foundation/#MenuItem_sectionHeaderWithTitle)
* [MenuItem\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_setKeyEquivalent)
* [MenuItem\_setKeys](/core/sys/darwin/Foundation/#MenuItem_setKeys)
* [MenuItem\_setSubtitle](/core/sys/darwin/Foundation/#MenuItem_setSubtitle)
* [MenuItem\_setTitle](/core/sys/darwin/Foundation/#MenuItem_setTitle)
* [MenuItem\_setTitleWithMnemonic](/core/sys/darwin/Foundation/#MenuItem_setTitleWithMnemonic)
* [MenuItem\_setToolTip](/core/sys/darwin/Foundation/#MenuItem_setToolTip)
* [Menu\_addItemWithTitle](/core/sys/darwin/Foundation/#Menu_addItemWithTitle)
* [Menu\_automaticallyNotifiesObserversForKey](/core/sys/darwin/Foundation/#Menu_automaticallyNotifiesObserversForKey)
* [Menu\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker)
* [Menu\_exposeBinding](/core/sys/darwin/Foundation/#Menu_exposeBinding)
* [Menu\_indexOfItemWithTitle](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTitle)
* [Menu\_initWithTitle](/core/sys/darwin/Foundation/#Menu_initWithTitle)
* [Menu\_insertItemWithTitle](/core/sys/darwin/Foundation/#Menu_insertItemWithTitle)
* [Menu\_itemWithTitle](/core/sys/darwin/Foundation/#Menu_itemWithTitle)
* [Menu\_keyPathsForValuesAffectingValueForKey](/core/sys/darwin/Foundation/#Menu_keyPathsForValuesAffectingValueForKey)
* [Menu\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder)
* [Menu\_setKeys](/core/sys/darwin/Foundation/#Menu_setKeys)
* [Menu\_setTitle](/core/sys/darwin/Foundation/#Menu_setTitle)
* [NSWindow\_setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [NotificationCenter\_addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [NotificationCenter\_addObserverForName\_new](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_new)
* [NotificationCenter\_addObserverForName\_old](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_old)
* [ProcessInfo\_beginActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_beginActivityWithOptions)
* [ProcessInfo\_disableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_disableAutomaticTermination)
* [ProcessInfo\_enableAutomaticTermination](/core/sys/darwin/Foundation/#ProcessInfo_enableAutomaticTermination)
* [ProcessInfo\_performActivityWithOptions](/core/sys/darwin/Foundation/#ProcessInfo_performActivityWithOptions)
* [ProcessInfo\_performExpiringActivityWithReason](/core/sys/darwin/Foundation/#ProcessInfo_performExpiringActivityWithReason)
* [RunLoop\_addTimerForMode](/core/sys/darwin/Foundation/#RunLoop_addTimerForMode)
* [SelectorFromString](/core/sys/darwin/Foundation/#SelectorFromString)
* [String\_UTF8String](/core/sys/darwin/Foundation/#String_UTF8String)
* [String\_characterAtIndex](/core/sys/darwin/Foundation/#String_characterAtIndex)
* [String\_cstringUsingEncoding](/core/sys/darwin/Foundation/#String_cstringUsingEncoding)
* [String\_init](/core/sys/darwin/Foundation/#String_init)
* [String\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [String\_initWithCString](/core/sys/darwin/Foundation/#String_initWithCString)
* [String\_initWithOdinString](/core/sys/darwin/Foundation/#String_initWithOdinString)
* [String\_initWithString](/core/sys/darwin/Foundation/#String_initWithString)
* [String\_isEqualToString](/core/sys/darwin/Foundation/#String_isEqualToString)
* [String\_length](/core/sys/darwin/Foundation/#String_length)
* [String\_lengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_lengthOfBytesUsingEncoding)
* [String\_maximumLengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_maximumLengthOfBytesUsingEncoding)
* [String\_odinString](/core/sys/darwin/Foundation/#String_odinString)
* [String\_rangeOfString](/core/sys/darwin/Foundation/#String_rangeOfString)
* [String\_stringByAppendingString](/core/sys/darwin/Foundation/#String_stringByAppendingString)
* [URLResponse\_initWithURL](/core/sys/darwin/Foundation/#URLResponse_initWithURL)
* [URL\_initFileURLWithPath](/core/sys/darwin/Foundation/#URL_initFileURLWithPath)
* [URL\_initWithString](/core/sys/darwin/Foundation/#URL_initWithString)
* [UserDefaults\_setBoolForKey](/core/sys/darwin/Foundation/#UserDefaults_setBoolForKey)
* [Window\_minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle)
* [Window\_setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes) *(procedure groups)*
* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName) *(procedure groups)*



##### Related Procedures With Returns

* [Bundle\_appStoreReceiptPath](/core/sys/darwin/Foundation/#Bundle_appStoreReceiptPath)
* [Bundle\_builtInPlugInsPath](/core/sys/darwin/Foundation/#Bundle_builtInPlugInsPath)
* [Bundle\_bundleIdentifier](/core/sys/darwin/Foundation/#Bundle_bundleIdentifier)
* [Bundle\_bundlePath](/core/sys/darwin/Foundation/#Bundle_bundlePath)
* [Bundle\_executablePath](/core/sys/darwin/Foundation/#Bundle_executablePath)
* [Bundle\_privateFrameworksPath](/core/sys/darwin/Foundation/#Bundle_privateFrameworksPath)
* [Bundle\_resourcePath](/core/sys/darwin/Foundation/#Bundle_resourcePath)
* [Bundle\_sharedFrameworksPath](/core/sys/darwin/Foundation/#Bundle_sharedFrameworksPath)
* [Bundle\_sharedSupportPath](/core/sys/darwin/Foundation/#Bundle_sharedSupportPath)
* [Color\_colorSpaceName](/core/sys/darwin/Foundation/#Color_colorSpaceName)
* [Error\_domain](/core/sys/darwin/Foundation/#Error_domain)
* [Error\_localizedDescription](/core/sys/darwin/Foundation/#Error_localizedDescription)
* [Error\_localizedFailureReason](/core/sys/darwin/Foundation/#Error_localizedFailureReason)
* [Error\_localizedRecoverySuggestion](/core/sys/darwin/Foundation/#Error_localizedRecoverySuggestion)
* [Event\_characters](/core/sys/darwin/Foundation/#Event_characters)
* [Event\_charactersIgnoringModifiers](/core/sys/darwin/Foundation/#Event_charactersIgnoringModifiers)
* [MakeConstantString](/core/sys/darwin/Foundation/#MakeConstantString)
* [MenuItem\_debugDescription](/core/sys/darwin/Foundation/#MenuItem_debugDescription)
* [MenuItem\_description](/core/sys/darwin/Foundation/#MenuItem_description)
* [MenuItem\_keyEquivalent](/core/sys/darwin/Foundation/#MenuItem_keyEquivalent)
* [MenuItem\_mnemonic](/core/sys/darwin/Foundation/#MenuItem_mnemonic)
* [MenuItem\_subtitle](/core/sys/darwin/Foundation/#MenuItem_subtitle)
* [MenuItem\_title](/core/sys/darwin/Foundation/#MenuItem_title)
* [MenuItem\_toolTip](/core/sys/darwin/Foundation/#MenuItem_toolTip)
* [MenuItem\_userKeyEquivalent](/core/sys/darwin/Foundation/#MenuItem_userKeyEquivalent)
* [Menu\_debugDescription](/core/sys/darwin/Foundation/#Menu_debugDescription)
* [Menu\_description](/core/sys/darwin/Foundation/#Menu_description)
* [Menu\_title](/core/sys/darwin/Foundation/#Menu_title)
* [Notification\_name](/core/sys/darwin/Foundation/#Notification_name)
* [Number\_descriptionWithLocale](/core/sys/darwin/Foundation/#Number_descriptionWithLocale)
* [Number\_stringValue](/core/sys/darwin/Foundation/#Number_stringValue)
* [ProcessInfo\_fullUserName](/core/sys/darwin/Foundation/#ProcessInfo_fullUserName)
* [ProcessInfo\_globallyUniqueString](/core/sys/darwin/Foundation/#ProcessInfo_globallyUniqueString)
* [ProcessInfo\_hostName](/core/sys/darwin/Foundation/#ProcessInfo_hostName)
* [ProcessInfo\_operatingSystemVersionString](/core/sys/darwin/Foundation/#ProcessInfo_operatingSystemVersionString)
* [ProcessInfo\_processName](/core/sys/darwin/Foundation/#ProcessInfo_processName)
* [ProcessInfo\_userName](/core/sys/darwin/Foundation/#ProcessInfo_userName)
* [RunningApplication\_localizedName](/core/sys/darwin/Foundation/#RunningApplication_localizedName)
* [StringFromClass](/core/sys/darwin/Foundation/#StringFromClass)
* [StringFromSelector](/core/sys/darwin/Foundation/#StringFromSelector)
* [String\_alloc](/core/sys/darwin/Foundation/#String_alloc)
* [URL\_relativePath](/core/sys/darwin/Foundation/#URL_relativePath)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)

### [RunningApplication ¶](#RunningApplication) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L206)

```
RunningApplication :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [currentApplication](/core/sys/darwin/Foundation/#RunningApplication_currentApplication) *(class method)*
* [finishedLaunching](/core/sys/darwin/Foundation/#RunningApplication_finishedLaunching)
* [localizedName](/core/sys/darwin/Foundation/#RunningApplication_localizedName)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [SEL ¶](#SEL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L9)

```
SEL :: ^.objc_selector
```

##### Related Procedures With Parameters

* [Application\_sendAction](/core/sys/darwin/Foundation/#Application_sendAction)
* [MenuDelegate\_menuHasKeyEquivalent](/core/sys/darwin/Foundation/#MenuDelegate_menuHasKeyEquivalent)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object)
* [MenuItem\_initWithTitle](/core/sys/darwin/Foundation/#MenuItem_initWithTitle)
* [MenuItem\_instanceMethodForSelector](/core/sys/darwin/Foundation/#MenuItem_instanceMethodForSelector)
* [MenuItem\_instancesRespondToSelector](/core/sys/darwin/Foundation/#MenuItem_instancesRespondToSelector)
* [MenuItem\_resolveClassMethod](/core/sys/darwin/Foundation/#MenuItem_resolveClassMethod)
* [MenuItem\_resolveInstanceMethod](/core/sys/darwin/Foundation/#MenuItem_resolveInstanceMethod)
* [MenuItem\_setAction](/core/sys/darwin/Foundation/#MenuItem_setAction)
* [Menu\_addItemWithTitle](/core/sys/darwin/Foundation/#Menu_addItemWithTitle)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_selector_object)
* [Menu\_indexOfItemWithTarget](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTarget)
* [Menu\_insertItemWithTitle](/core/sys/darwin/Foundation/#Menu_insertItemWithTitle)
* [Menu\_instanceMethodForSelector](/core/sys/darwin/Foundation/#Menu_instanceMethodForSelector)
* [Menu\_instancesRespondToSelector](/core/sys/darwin/Foundation/#Menu_instancesRespondToSelector)
* [Menu\_resolveClassMethod](/core/sys/darwin/Foundation/#Menu_resolveClassMethod)
* [Menu\_resolveInstanceMethod](/core/sys/darwin/Foundation/#Menu_resolveInstanceMethod)
* [NotificationCenter\_addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [StringFromSelector](/core/sys/darwin/Foundation/#StringFromSelector)
* [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)
* [class\_addMethod](/core/sys/darwin/Foundation/#class_addMethod)
* [class\_getClassMethod](/core/sys/darwin/Foundation/#class_getClassMethod)
* [class\_getInstanceMethod](/core/sys/darwin/Foundation/#class_getInstanceMethod)
* [class\_getMethodImplementation](/core/sys/darwin/Foundation/#class_getMethodImplementation)
* [class\_replaceMethod](/core/sys/darwin/Foundation/#class_replaceMethod)
* [class\_respondsToSelector](/core/sys/darwin/Foundation/#class_respondsToSelector)
* [methodSignatureForSelector](/core/sys/darwin/Foundation/#methodSignatureForSelector)
* [msgSendSafeCheck](/core/sys/darwin/Foundation/#msgSendSafeCheck)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [respondsToSelector](/core/sys/darwin/Foundation/#respondsToSelector)
* [sel\_getName](/core/sys/darwin/Foundation/#sel_getName)
* [sel\_isEqual](/core/sys/darwin/Foundation/#sel_isEqual)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*
* [Menu\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*



##### Related Procedures With Returns

* [MenuItem\_action](/core/sys/darwin/Foundation/#MenuItem_action)
* [MenuItem\_registerActionCallback](/core/sys/darwin/Foundation/#MenuItem_registerActionCallback)
* [SelectorFromString](/core/sys/darwin/Foundation/#SelectorFromString)
* [sel\_registerName](/core/sys/darwin/Foundation/#sel_registerName)

### [SavePanel ¶](#SavePanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSavePanel.odin#L4)

```
SavePanel :: struct {
	using _: Panel,
}
```

##### Bound Objective-C Methods

* [URL](/core/sys/darwin/Foundation/#SavePanel_URL)
* [runModal](/core/sys/darwin/Foundation/#SavePanel_runModal)
* [savePanel](/core/sys/darwin/Foundation/#SavePanel_savePanel) *(class method)*

###### Methods Inherited From [Window](/core/sys/darwin/Foundation/#Window)

* [setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [alloc](/core/sys/darwin/Foundation/#Window_alloc) *(class method)*
* [backgroundColor](/core/sys/darwin/Foundation/#Window_backgroundColor)
* [backingScaleFactor](/core/sys/darwin/Foundation/#Window_backingScaleFactor)
* [center](/core/sys/darwin/Foundation/#Window_center)
* [close](/core/sys/darwin/Foundation/#Window_close)
* [collectionBehavior](/core/sys/darwin/Foundation/#Window_collectionBehavior)
* [contentLayoutRect](/core/sys/darwin/Foundation/#Window_contentLayoutRect)
* [contentRectForFrameRect](/core/sys/darwin/Foundation/#Window_contentRectForFrameRectInstance)
* [contentView](/core/sys/darwin/Foundation/#Window_contentView)
* [convertPointFromBacking](/core/sys/darwin/Foundation/#Window_convertPointFromBacking)
* [convertPointFromScreen](/core/sys/darwin/Foundation/#Window_convertPointFromScreen)
* [convertPointToBacking](/core/sys/darwin/Foundation/#Window_convertPointToBacking)
* [convertPointToScreen](/core/sys/darwin/Foundation/#Window_convertPointToScreen)
* [convertRectFromBacking](/core/sys/darwin/Foundation/#Window_convertRectFromBacking)
* [convertRectFromScreen](/core/sys/darwin/Foundation/#Window_convertRectFromScreen)
* [convertRectToBacking](/core/sys/darwin/Foundation/#Window_convertRectToBacking)
* [convertRectToScreen](/core/sys/darwin/Foundation/#Window_convertRectToScreen)
* [delegate](/core/sys/darwin/Foundation/#Window_delegate)
* [frame](/core/sys/darwin/Foundation/#Window_frame)
* [frameRectForContentRect](/core/sys/darwin/Foundation/#Window_frameRectForContentRectInstance)
* [hasCloseBox](/core/sys/darwin/Foundation/#Window_hasCloseBox)
* [hasTitleBar](/core/sys/darwin/Foundation/#Window_hasTitleBar)
* [initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)
* [isFloatingPanel](/core/sys/darwin/Foundation/#Window_isFloatingPanel)
* [isMiniaturizable](/core/sys/darwin/Foundation/#Window_isMiniaturizable)
* [isModalPanel](/core/sys/darwin/Foundation/#Window_isModalPanel)
* [isResizable](/core/sys/darwin/Foundation/#Window_isResizable)
* [isZoomable](/core/sys/darwin/Foundation/#Window_isZoomable)
* [keyWindow](/core/sys/darwin/Foundation/#Window_keyWindow)
* [mainWindow](/core/sys/darwin/Foundation/#Window_mainWindow)
* [makeFirstResponder](/core/sys/darwin/Foundation/#Window_makeFirstResponder)
* [makeKeyAndOrderFront](/core/sys/darwin/Foundation/#Window_makeKeyAndOrderFront)
* [minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle) *(class method)*
* [opaque](/core/sys/darwin/Foundation/#Window_opaque)
* [orderFront](/core/sys/darwin/Foundation/#Window_orderFront)
* [orderOut](/core/sys/darwin/Foundation/#Window_orderOut)
* [orderedIndex](/core/sys/darwin/Foundation/#Window_orderedIndex)
* [parentWindow](/core/sys/darwin/Foundation/#Window_parentWindow)
* [performClose](/core/sys/darwin/Foundation/#Window_performClose)
* [performWindowDragWithEvent](/core/sys/darwin/Foundation/#Window_performWindowDragWithEvent)
* [performZoom](/core/sys/darwin/Foundation/#Window_performZoom)
* [screen](/core/sys/darwin/Foundation/#Window_screen)
* [setAcceptsMouseMovedEvents](/core/sys/darwin/Foundation/#Window_setAcceptsMouseMovedEvents)
* [setBackgroundColor](/core/sys/darwin/Foundation/#Window_setBackgroundColor)
* [setCollectionBehavior](/core/sys/darwin/Foundation/#Window_setCollectionBehavior)
* [setContentView](/core/sys/darwin/Foundation/#Window_setContentView)
* [setDelegate](/core/sys/darwin/Foundation/#Window_setDelegate)
* [setFrame](/core/sys/darwin/Foundation/#Window_setFrame)
* [setFrameOrigin](/core/sys/darwin/Foundation/#Window_setFrameOrigin)
* [setIsMiniaturized](/core/sys/darwin/Foundation/#Window_setIsMiniaturized)
* [setIsVisible](/core/sys/darwin/Foundation/#Window_setIsVisible)
* [setIsZoomed](/core/sys/darwin/Foundation/#Window_setIsZoomed)
* [setLevel](/core/sys/darwin/Foundation/#Window_setLevel)
* [setMinSize](/core/sys/darwin/Foundation/#Window_setMinSize)
* [setMovable](/core/sys/darwin/Foundation/#Window_setMovable)
* [setMovableByWindowBackground](/core/sys/darwin/Foundation/#Window_setMovableByWindowBackground)
* [setOpaque](/core/sys/darwin/Foundation/#Window_setOpaque)
* [setReleasedWhenClosed](/core/sys/darwin/Foundation/#Window_setReleasedWhenClosed)
* [setRestorable](/core/sys/darwin/Foundation/#Window_setRestorable)
* [setStyleMask](/core/sys/darwin/Foundation/#Window_setStyleMask)
* [setTabbingMode](/core/sys/darwin/Foundation/#Window_setTabbingMode)
* [setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [setTitleVisibility](/core/sys/darwin/Foundation/#Window_setTitleVisibility)
* [setTitlebarAppearsTransparent](/core/sys/darwin/Foundation/#Window_setTitlebarAppearsTransparent)
* [setToolbar](/core/sys/darwin/Foundation/#Window_setToolbar)
* [setWantsLayer](/core/sys/darwin/Foundation/#Window_setWantsLayer)
* [toggleFullScreen](/core/sys/darwin/Foundation/#Window_toggleFullScreen)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Screen ¶](#Screen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L4)

```
Screen :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [backingScaleFactor](/core/sys/darwin/Foundation/#Screen_backingScaleFactor)
* [colorSpace](/core/sys/darwin/Foundation/#Screen_colorSpace)
* [deepestScreen](/core/sys/darwin/Foundation/#Screen_deepestScreen) *(class method)*
* [depth](/core/sys/darwin/Foundation/#Screen_depth)
* [frame](/core/sys/darwin/Foundation/#Screen_frame)
* [mainScreen](/core/sys/darwin/Foundation/#Screen_mainScreen) *(class method)*
* [screens](/core/sys/darwin/Foundation/#Screen_screens) *(class method)*
* [screensHaveSeparateSpaces](/core/sys/darwin/Foundation/#Screen_screensHaveSeparateSpaces) *(class method)*
* [visibleFrame](/core/sys/darwin/Foundation/#Screen_visibleFrame)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Set ¶](#Set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSet.odin#L4)

```
Set :: struct {
	using _: Copying($T=Set),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Set_alloc) *(class method)*
* [init](/core/sys/darwin/Foundation/#Set_init)
* [initWithCoder](/core/sys/darwin/Foundation/#Set_initWithCoder)
* [initWithObjects](/core/sys/darwin/Foundation/#Set_initWithObjects)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Size ¶](#Size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L42)

```
Size :: CoreFoundation.CGSize
```

##### Related Procedures With Parameters

* [Image\_initWithSize](/core/sys/darwin/Foundation/#Image_initWithSize)
* [Window\_setMinSize](/core/sys/darwin/Foundation/#Window_setMinSize)



##### Related Procedures With Returns

* [Menu\_size](/core/sys/darwin/Foundation/#Menu_size)

### [String ¶](#String) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L6)

```
String :: struct {
	using _: Copying($T=String),
}
```

##### Bound Objective-C Methods

* [UTF8String](/core/sys/darwin/Foundation/#String_UTF8String)
* [alloc](/core/sys/darwin/Foundation/#String_alloc) *(class method)*
* [characterAtIndex](/core/sys/darwin/Foundation/#String_characterAtIndex)
* [cstringUsingEncoding](/core/sys/darwin/Foundation/#String_cstringUsingEncoding)
* [init](/core/sys/darwin/Foundation/#String_init)
* [initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [initWithCString](/core/sys/darwin/Foundation/#String_initWithCString)
* [initWithOdinString](/core/sys/darwin/Foundation/#String_initWithOdinString)
* [initWithString](/core/sys/darwin/Foundation/#String_initWithString)
* [isEqualToString](/core/sys/darwin/Foundation/#String_isEqualToString)
* [length](/core/sys/darwin/Foundation/#String_length)
* [lengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_lengthOfBytesUsingEncoding)
* [maximumLengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_maximumLengthOfBytesUsingEncoding)
* [odinString](/core/sys/darwin/Foundation/#String_odinString)
* [rangeOfString](/core/sys/darwin/Foundation/#String_rangeOfString)
* [stringByAppendingString](/core/sys/darwin/Foundation/#String_stringByAppendingString)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [StringCompareOption ¶](#StringCompareOption) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L35)

```
StringCompareOption :: enum UInteger {
	CaseInsensitive      = 0, 
	LiteralSearch        = 1, 
	BackwardsSearch      = 2, 
	AnchoredSearch       = 3, 
	NumericSearch        = 6, 
	DiacriticInsensitive = 7, 
	WidthInsensitive     = 8, 
	ForcedOrdering       = 9, 
	RegularExpression    = 10, 
}
```

### [StringCompareOptions ¶](#StringCompareOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L34)

```
StringCompareOptions :: distinct bit_set[StringCompareOption; UInteger]
```

##### Related Procedures With Parameters

* [String\_rangeOfString](/core/sys/darwin/Foundation/#String_rangeOfString)

### [StringEncoding ¶](#StringEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L8)

```
StringEncoding :: enum UInteger {
	ASCII             = 1, 
	NEXTSTEP          = 2, 
	JapaneseEUC       = 3, 
	UTF8              = 4, 
	ISOLatin1         = 5, 
	Symbol            = 6, 
	NonLossyASCII     = 7, 
	ShiftJIS          = 8, 
	ISOLatin2         = 9, 
	Unicode           = 10, 
	WindowsCP1251     = 11, 
	WindowsCP1252     = 12, 
	WindowsCP1253     = 13, 
	WindowsCP1254     = 14, 
	WindowsCP1250     = 15, 
	ISO2022JP         = 21, 
	MacOSRoman        = 30, 
	UTF16             = 10, 
	UTF16BigEndian    = 2415919360, 
	UTF16LittleEndian = 2483028224, 
	UTF32             = 2348810496, 
	UTF32BigEndian    = 2550137088, 
	UTF32LittleEndian = 2617245952, 
}
```

##### Related Procedures With Parameters

* [String\_cstringUsingEncoding](/core/sys/darwin/Foundation/#String_cstringUsingEncoding)
* [String\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [String\_initWithCString](/core/sys/darwin/Foundation/#String_initWithCString)
* [String\_lengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_lengthOfBytesUsingEncoding)
* [String\_maximumLengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_maximumLengthOfBytesUsingEncoding)

### [Subclasser\_Proc ¶](#Subclasser_Proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L6)

```
Subclasser_Proc :: proc(cls: ^.objc_class, vtable: rawptr)
```

### [TimeInterval ¶](#TimeInterval) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L12)

```
TimeInterval :: distinct f64
```

##### Related Procedures With Parameters

* [Date\_dateWithTimeIntervalSinceNow](/core/sys/darwin/Foundation/#Date_dateWithTimeIntervalSinceNow)
* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [Timer\_scheduledTimerWithTimeIntervalRepeatsBlock](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalRepeatsBlock)
* [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)



##### Related Procedures With Returns

* [Event\_timestamp](/core/sys/darwin/Foundation/#Event_timestamp)
* [ProcessInfo\_systemUptime](/core/sys/darwin/Foundation/#ProcessInfo_systemUptime)

### [Timer ¶](#Timer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTimer.odin#L4)

```
Timer :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [scheduledTimerWithTimeIntervalRepeatsBlock](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalRepeatsBlock) *(class method)*
* [scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Toolbar ¶](#Toolbar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSToolbar.odin#L4)

```
Toolbar :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Toolbar_alloc) *(class method)*
* [init](/core/sys/darwin/Foundation/#Toolbar_init)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [UInteger ¶](#UInteger) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L14)

```
UInteger :: distinct uint
```

##### Related Procedures With Parameters

* [AllocateObject](/core/sys/darwin/Foundation/#AllocateObject)
* [Array\_initWithObjects](/core/sys/darwin/Foundation/#Array_initWithObjects)
* [Array\_object](/core/sys/darwin/Foundation/#Array_object)
* [Array\_objectAs](/core/sys/darwin/Foundation/#Array_objectAs)
* [Dictionary\_dictionaryWithObjects](/core/sys/darwin/Foundation/#Dictionary_dictionaryWithObjects)
* [Dictionary\_initWithObjects](/core/sys/darwin/Foundation/#Dictionary_initWithObjects)
* [FastEnumeration\_countByEnumerating](/core/sys/darwin/Foundation/#FastEnumeration_countByEnumerating)
* [MenuItem\_setMnemonicLocation](/core/sys/darwin/Foundation/#MenuItem_setMnemonicLocation)
* [MutableArray\_exchangeObjectAtIndex](/core/sys/darwin/Foundation/#MutableArray_exchangeObjectAtIndex)
* [MutableArray\_initWithObjects](/core/sys/darwin/Foundation/#MutableArray_initWithObjects)
* [MutableArray\_object](/core/sys/darwin/Foundation/#MutableArray_object)
* [MutableArray\_objectAs](/core/sys/darwin/Foundation/#MutableArray_objectAs)
* [Range\_LocationInRange](/core/sys/darwin/Foundation/#Range_LocationInRange)
* [Range\_Make](/core/sys/darwin/Foundation/#Range_Make)
* [Set\_initWithObjects](/core/sys/darwin/Foundation/#Set_initWithObjects)
* [String\_characterAtIndex](/core/sys/darwin/Foundation/#String_characterAtIndex)
* [String\_initWithBytesNoCopy](/core/sys/darwin/Foundation/#String_initWithBytesNoCopy)
* [Value\_getValue](/core/sys/darwin/Foundation/#Value_getValue)



##### Related Procedures With Returns

* [Array\_count](/core/sys/darwin/Foundation/#Array_count)
* [Data\_length](/core/sys/darwin/Foundation/#Data_length)
* [Dictionary\_count](/core/sys/darwin/Foundation/#Dictionary_count)
* [Event\_buttonMask](/core/sys/darwin/Foundation/#Event_buttonMask)
* [Event\_capabilityMask](/core/sys/darwin/Foundation/#Event_capabilityMask)
* [Event\_pointingDeviceID](/core/sys/darwin/Foundation/#Event_pointingDeviceID)
* [Event\_pointingDeviceSerialNumber](/core/sys/darwin/Foundation/#Event_pointingDeviceSerialNumber)
* [Event\_systemTabletID](/core/sys/darwin/Foundation/#Event_systemTabletID)
* [Event\_tabletID](/core/sys/darwin/Foundation/#Event_tabletID)
* [Event\_vendorID](/core/sys/darwin/Foundation/#Event_vendorID)
* [Event\_vendorPointingDeviceType](/core/sys/darwin/Foundation/#Event_vendorPointingDeviceType)
* [Event\_windowNumber](/core/sys/darwin/Foundation/#Event_windowNumber)
* [MenuItem\_hash](/core/sys/darwin/Foundation/#MenuItem_hash)
* [MenuItem\_mnemonicLocation](/core/sys/darwin/Foundation/#MenuItem_mnemonicLocation)
* [Menu\_hash](/core/sys/darwin/Foundation/#Menu_hash)
* [MutableArray\_count](/core/sys/darwin/Foundation/#MutableArray_count)
* [Number\_uintegerValue](/core/sys/darwin/Foundation/#Number_uintegerValue)
* [ProcessInfo\_activeProcessorCount](/core/sys/darwin/Foundation/#ProcessInfo_activeProcessorCount)
* [ProcessInfo\_processorCount](/core/sys/darwin/Foundation/#ProcessInfo_processorCount)
* [Range\_Max](/core/sys/darwin/Foundation/#Range_Max)
* [String\_length](/core/sys/darwin/Foundation/#String_length)
* [String\_lengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_lengthOfBytesUsingEncoding)
* [String\_maximumLengthOfBytesUsingEncoding](/core/sys/darwin/Foundation/#String_maximumLengthOfBytesUsingEncoding)
* [hash](/core/sys/darwin/Foundation/#hash)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

##### Related Constants

* [EventModifierFlagDeviceIndependentFlagsMask](/core/sys/darwin/Foundation/#EventModifierFlagDeviceIndependentFlagsMask)
* [UIntegerMax](/core/sys/darwin/Foundation/#UIntegerMax)

### [URL ¶](#URL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin#L4)

```
URL :: struct {
	using _: Copying($T=URL),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#URL_alloc) *(class method)*
* [fileSystemRepresentation](/core/sys/darwin/Foundation/#URL_fileSystemRepresentation)
* [init](/core/sys/darwin/Foundation/#URL_init)
* [initFileURLWithPath](/core/sys/darwin/Foundation/#URL_initFileURLWithPath)
* [initWithString](/core/sys/darwin/Foundation/#URL_initWithString)
* [relativePath](/core/sys/darwin/Foundation/#URL_relativePath)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [URLRequest ¶](#URLRequest) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLRequest.odin#L4)

```
URLRequest :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#URLRequest_alloc) *(class method)*
* [init](/core/sys/darwin/Foundation/#URLRequest_init)
* [requestWithURL](/core/sys/darwin/Foundation/#URLRequest_requestWithURL) *(class method)*
* [url](/core/sys/darwin/Foundation/#URLRequest_url)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [URLResponse ¶](#URLResponse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLResponse.odin#L4)

```
URLResponse :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#URLResponse_alloc) *(class method)*
* [init](/core/sys/darwin/Foundation/#URLResponse_init)
* [initWithURL](/core/sys/darwin/Foundation/#URLResponse_initWithURL)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [UndoManager ¶](#UndoManager) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUndoManager.odin#L4)

```
UndoManager :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [UserActivity ¶](#UserActivity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUserActivity.odin#L4)

```
UserActivity :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [UserDefaults ¶](#UserDefaults) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUserDefaults.odin#L4)

```
UserDefaults :: struct {
	using _: Object,
}
```

##### Bound Objective-C Methods

* [setBoolForKey](/core/sys/darwin/Foundation/#UserDefaults_setBoolForKey)
* [standardUserDefaults](/core/sys/darwin/Foundation/#UserDefaults_standardUserDefaults) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [UserInterfaceLayoutDirection ¶](#UserInterfaceLayoutDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L19)

```
UserInterfaceLayoutDirection :: enum i32 {
	LeftToRight = 0, 
	RightToLeft = 1, 
}
```

##### Related Procedures With Parameters

* [Menu\_setUserInterfaceLayoutDirection](/core/sys/darwin/Foundation/#Menu_setUserInterfaceLayoutDirection)



##### Related Procedures With Returns

* [Menu\_userInterfaceLayoutDirection](/core/sys/darwin/Foundation/#Menu_userInterfaceLayoutDirection)

### [Value ¶](#Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L11)

```
Value :: struct {
	using _: Copying($T=Value),
}
```

##### Bound Objective-C Methods

* [alloc](/core/sys/darwin/Foundation/#Value_alloc) *(class method)*
* [getValue](/core/sys/darwin/Foundation/#Value_getValue)
* [init](/core/sys/darwin/Foundation/#Value_init)
* [initWithBytes](/core/sys/darwin/Foundation/#Value_initWithBytes)
* [initWithCoder](/core/sys/darwin/Foundation/#Value_initWithCoder)
* [isEqualToValue](/core/sys/darwin/Foundation/#Value_isEqualToValue)
* [objCType](/core/sys/darwin/Foundation/#Value_objCType)
* [pointerValue](/core/sys/darwin/Foundation/#Value_pointerValue)
* [valueWithBytes](/core/sys/darwin/Foundation/#Value_valueWithBytes) *(class method)*
* [valueWithPointer](/core/sys/darwin/Foundation/#Value_valueWithPointer) *(class method)*

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [View ¶](#View) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L679)

```
View :: struct {
	using _: Responder,
}
```

##### Bound Objective-C Methods

* [addSubview](/core/sys/darwin/Foundation/#View_addSubview)
* [alloc](/core/sys/darwin/Foundation/#View_alloc) *(class method)*
* [bounds](/core/sys/darwin/Foundation/#View_bounds)
* [convertPointFromView](/core/sys/darwin/Foundation/#View_convertPointFromView)
* [initWithFrame](/core/sys/darwin/Foundation/#View_initWithFrame)
* [isFlipped](/core/sys/darwin/Foundation/#View_isFlipped)
* [layer](/core/sys/darwin/Foundation/#View_layer)
* [setIsFlipped](/core/sys/darwin/Foundation/#View_setIsFlipped)
* [setLayer](/core/sys/darwin/Foundation/#View_setLayer)
* [setWantsLayer](/core/sys/darwin/Foundation/#View_setWantsLayer)
* [wantsLayer](/core/sys/darwin/Foundation/#View_wantsLayer)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [Window ¶](#Window) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L728)

```
Window :: struct {
	using _: Responder,
}
```

##### Bound Objective-C Methods

* [setFrameAutosaveName](/core/sys/darwin/Foundation/#NSWindow_setFrameAutosaveName)
* [alloc](/core/sys/darwin/Foundation/#Window_alloc) *(class method)*
* [backgroundColor](/core/sys/darwin/Foundation/#Window_backgroundColor)
* [backingScaleFactor](/core/sys/darwin/Foundation/#Window_backingScaleFactor)
* [center](/core/sys/darwin/Foundation/#Window_center)
* [close](/core/sys/darwin/Foundation/#Window_close)
* [collectionBehavior](/core/sys/darwin/Foundation/#Window_collectionBehavior)
* [contentLayoutRect](/core/sys/darwin/Foundation/#Window_contentLayoutRect)
* [contentRectForFrameRect](/core/sys/darwin/Foundation/#Window_contentRectForFrameRectInstance)
* [contentView](/core/sys/darwin/Foundation/#Window_contentView)
* [convertPointFromBacking](/core/sys/darwin/Foundation/#Window_convertPointFromBacking)
* [convertPointFromScreen](/core/sys/darwin/Foundation/#Window_convertPointFromScreen)
* [convertPointToBacking](/core/sys/darwin/Foundation/#Window_convertPointToBacking)
* [convertPointToScreen](/core/sys/darwin/Foundation/#Window_convertPointToScreen)
* [convertRectFromBacking](/core/sys/darwin/Foundation/#Window_convertRectFromBacking)
* [convertRectFromScreen](/core/sys/darwin/Foundation/#Window_convertRectFromScreen)
* [convertRectToBacking](/core/sys/darwin/Foundation/#Window_convertRectToBacking)
* [convertRectToScreen](/core/sys/darwin/Foundation/#Window_convertRectToScreen)
* [delegate](/core/sys/darwin/Foundation/#Window_delegate)
* [frame](/core/sys/darwin/Foundation/#Window_frame)
* [frameRectForContentRect](/core/sys/darwin/Foundation/#Window_frameRectForContentRectInstance)
* [hasCloseBox](/core/sys/darwin/Foundation/#Window_hasCloseBox)
* [hasTitleBar](/core/sys/darwin/Foundation/#Window_hasTitleBar)
* [initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)
* [isFloatingPanel](/core/sys/darwin/Foundation/#Window_isFloatingPanel)
* [isMiniaturizable](/core/sys/darwin/Foundation/#Window_isMiniaturizable)
* [isModalPanel](/core/sys/darwin/Foundation/#Window_isModalPanel)
* [isResizable](/core/sys/darwin/Foundation/#Window_isResizable)
* [isZoomable](/core/sys/darwin/Foundation/#Window_isZoomable)
* [keyWindow](/core/sys/darwin/Foundation/#Window_keyWindow)
* [mainWindow](/core/sys/darwin/Foundation/#Window_mainWindow)
* [makeFirstResponder](/core/sys/darwin/Foundation/#Window_makeFirstResponder)
* [makeKeyAndOrderFront](/core/sys/darwin/Foundation/#Window_makeKeyAndOrderFront)
* [minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle) *(class method)*
* [opaque](/core/sys/darwin/Foundation/#Window_opaque)
* [orderFront](/core/sys/darwin/Foundation/#Window_orderFront)
* [orderOut](/core/sys/darwin/Foundation/#Window_orderOut)
* [orderedIndex](/core/sys/darwin/Foundation/#Window_orderedIndex)
* [parentWindow](/core/sys/darwin/Foundation/#Window_parentWindow)
* [performClose](/core/sys/darwin/Foundation/#Window_performClose)
* [performWindowDragWithEvent](/core/sys/darwin/Foundation/#Window_performWindowDragWithEvent)
* [performZoom](/core/sys/darwin/Foundation/#Window_performZoom)
* [screen](/core/sys/darwin/Foundation/#Window_screen)
* [setAcceptsMouseMovedEvents](/core/sys/darwin/Foundation/#Window_setAcceptsMouseMovedEvents)
* [setBackgroundColor](/core/sys/darwin/Foundation/#Window_setBackgroundColor)
* [setCollectionBehavior](/core/sys/darwin/Foundation/#Window_setCollectionBehavior)
* [setContentView](/core/sys/darwin/Foundation/#Window_setContentView)
* [setDelegate](/core/sys/darwin/Foundation/#Window_setDelegate)
* [setFrame](/core/sys/darwin/Foundation/#Window_setFrame)
* [setFrameOrigin](/core/sys/darwin/Foundation/#Window_setFrameOrigin)
* [setIsMiniaturized](/core/sys/darwin/Foundation/#Window_setIsMiniaturized)
* [setIsVisible](/core/sys/darwin/Foundation/#Window_setIsVisible)
* [setIsZoomed](/core/sys/darwin/Foundation/#Window_setIsZoomed)
* [setLevel](/core/sys/darwin/Foundation/#Window_setLevel)
* [setMinSize](/core/sys/darwin/Foundation/#Window_setMinSize)
* [setMovable](/core/sys/darwin/Foundation/#Window_setMovable)
* [setMovableByWindowBackground](/core/sys/darwin/Foundation/#Window_setMovableByWindowBackground)
* [setOpaque](/core/sys/darwin/Foundation/#Window_setOpaque)
* [setReleasedWhenClosed](/core/sys/darwin/Foundation/#Window_setReleasedWhenClosed)
* [setRestorable](/core/sys/darwin/Foundation/#Window_setRestorable)
* [setStyleMask](/core/sys/darwin/Foundation/#Window_setStyleMask)
* [setTabbingMode](/core/sys/darwin/Foundation/#Window_setTabbingMode)
* [setTitle](/core/sys/darwin/Foundation/#Window_setTitle)
* [setTitleVisibility](/core/sys/darwin/Foundation/#Window_setTitleVisibility)
* [setTitlebarAppearsTransparent](/core/sys/darwin/Foundation/#Window_setTitlebarAppearsTransparent)
* [setToolbar](/core/sys/darwin/Foundation/#Window_setToolbar)
* [setWantsLayer](/core/sys/darwin/Foundation/#Window_setWantsLayer)
* [toggleFullScreen](/core/sys/darwin/Foundation/#Window_toggleFullScreen)

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [WindowCollectionBehavior ¶](#WindowCollectionBehavior) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L92)

```
WindowCollectionBehavior :: distinct bit_set[WindowCollectionBehaviorFlag; UInteger]
```

##### Related Procedures With Parameters

* [Window\_setCollectionBehavior](/core/sys/darwin/Foundation/#Window_setCollectionBehavior)



##### Related Procedures With Returns

* [Window\_collectionBehavior](/core/sys/darwin/Foundation/#Window_collectionBehavior)

##### Related Constants

* [WindowCollectionBehaviorAuxiliary](/core/sys/darwin/Foundation/#WindowCollectionBehaviorAuxiliary)
* [WindowCollectionBehaviorCanJoinAllApplications](/core/sys/darwin/Foundation/#WindowCollectionBehaviorCanJoinAllApplications)
* [WindowCollectionBehaviorCanJoinAllSpaces](/core/sys/darwin/Foundation/#WindowCollectionBehaviorCanJoinAllSpaces)
* [WindowCollectionBehaviorDefault](/core/sys/darwin/Foundation/#WindowCollectionBehaviorDefault)
* [WindowCollectionBehaviorFullScreenAllowsTiling](/core/sys/darwin/Foundation/#WindowCollectionBehaviorFullScreenAllowsTiling)
* [WindowCollectionBehaviorFullScreenAuxiliary](/core/sys/darwin/Foundation/#WindowCollectionBehaviorFullScreenAuxiliary)
* [WindowCollectionBehaviorFullScreenDisallowsTiling](/core/sys/darwin/Foundation/#WindowCollectionBehaviorFullScreenDisallowsTiling)
* [WindowCollectionBehaviorFullScreenNone](/core/sys/darwin/Foundation/#WindowCollectionBehaviorFullScreenNone)
* [WindowCollectionBehaviorFullScreenPrimary](/core/sys/darwin/Foundation/#WindowCollectionBehaviorFullScreenPrimary)
* [WindowCollectionBehaviorIgnoresCycle](/core/sys/darwin/Foundation/#WindowCollectionBehaviorIgnoresCycle)
* [WindowCollectionBehaviorManaged](/core/sys/darwin/Foundation/#WindowCollectionBehaviorManaged)
* [WindowCollectionBehaviorMoveToActiveSpace](/core/sys/darwin/Foundation/#WindowCollectionBehaviorMoveToActiveSpace)
* [WindowCollectionBehaviorParticipatesInCycle](/core/sys/darwin/Foundation/#WindowCollectionBehaviorParticipatesInCycle)
* [WindowCollectionBehaviorPrimary](/core/sys/darwin/Foundation/#WindowCollectionBehaviorPrimary)
* [WindowCollectionBehaviorStationary](/core/sys/darwin/Foundation/#WindowCollectionBehaviorStationary)
* [WindowCollectionBehaviorTransient](/core/sys/darwin/Foundation/#WindowCollectionBehaviorTransient)

### [WindowCollectionBehaviorFlag ¶](#WindowCollectionBehaviorFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L75)

```
WindowCollectionBehaviorFlag :: enum UInteger {
	CanJoinAllSpaces          = 0, 
	MoveToActiveSpace         = 1, 
	Managed                   = 2, 
	Transient                 = 3, 
	Stationary                = 4, 
	ParticipatesInCycle       = 5, 
	IgnoresCycle              = 6, 
	FullScreenPrimary         = 7, 
	FullScreenAuxiliary       = 8, 
	FullScreenNone            = 9, 
	FullScreenAllowsTiling    = 11, 
	FullScreenDisallowsTiling = 12, 
	Primary                   = 16, 
	Auxiliary                 = 17, 
	CanJoinAllApplications    = 18, 
}
```

### [WindowDelegate ¶](#WindowDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L207)

```
WindowDelegate :: struct {
	using _: Object,
}
```

 

This is not the same as NSWindowDelegate




##### Related Procedures With Parameters

* [Window\_setDelegate](/core/sys/darwin/Foundation/#Window_setDelegate)



##### Related Procedures With Returns

* [Window\_delegate](/core/sys/darwin/Foundation/#Window_delegate)
* [window\_delegate\_register\_and\_alloc](/core/sys/darwin/Foundation/#window_delegate_register_and_alloc)



###### Procedures Through `using` From [Object](/core/sys/darwin/Foundation/#Object)

* [Application\_stop](/core/sys/darwin/Foundation/#Application_stop)
* [Application\_terminate](/core/sys/darwin/Foundation/#Application_terminate)
* [AutoreleasePool\_addObject](/core/sys/darwin/Foundation/#AutoreleasePool_addObject)
* [AutoreleasePool\_showPools](/core/sys/darwin/Foundation/#AutoreleasePool_showPools)
* [Dictionary\_dictionaryWithObject](/core/sys/darwin/Foundation/#Dictionary_dictionaryWithObject)
* [Dictionary\_objectForKey](/core/sys/darwin/Foundation/#Dictionary_objectForKey)
* [NotificationCenter\_addObserver](/core/sys/darwin/Foundation/#NotificationCenter_addObserver)
* [NotificationCenter\_addObserverForName\_new](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_new)
* [NotificationCenter\_addObserverForName\_old](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName_old)
* [NotificationCenter\_removeObserver](/core/sys/darwin/Foundation/#NotificationCenter_removeObserver)
* [Number\_descriptionWithLocale](/core/sys/darwin/Foundation/#Number_descriptionWithLocale)
* [Window\_makeKeyAndOrderFront](/core/sys/darwin/Foundation/#Window_makeKeyAndOrderFront)
* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [bridgingCast](/core/sys/darwin/Foundation/#bridgingCast)
* [class](/core/sys/darwin/Foundation/#class)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [methodSignatureForSelector](/core/sys/darwin/Foundation/#methodSignatureForSelector)
* [msgSendSafeCheck](/core/sys/darwin/Foundation/#msgSendSafeCheck)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [respondsToSelector](/core/sys/darwin/Foundation/#respondsToSelector)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)
* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName) *(procedure groups)*



###### Procedures Through `using` From [objc\_object](/core/sys/darwin/Foundation/#objc_object)

* [Application\_sendAction](/core/sys/darwin/Foundation/#Application_sendAction)
* [DeallocateObject](/core/sys/darwin/Foundation/#DeallocateObject)
* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object)
* [MenuItem\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setRepresentedObject](/core/sys/darwin/Foundation/#MenuItem_setRepresentedObject)
* [MenuItem\_setTarget](/core/sys/darwin/Foundation/#MenuItem_setTarget)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_selector_object)
* [Menu\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker)
* [Menu\_indexOfItemWithRepresentedObject](/core/sys/darwin/Foundation/#Menu_indexOfItemWithRepresentedObject)
* [Menu\_indexOfItemWithTarget](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTarget)
* [Menu\_setContextMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setContextMenuRepresentation)
* [Menu\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder)
* [Menu\_setMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setMenuRepresentation)
* [Menu\_setTearOffMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setTearOffMenuRepresentation)
* [Menu\_submenuAction](/core/sys/darwin/Foundation/#Menu_submenuAction)
* [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)
* [Window\_orderFront](/core/sys/darwin/Foundation/#Window_orderFront)
* [Window\_orderOut](/core/sys/darwin/Foundation/#Window_orderOut)
* [Window\_performClose](/core/sys/darwin/Foundation/#Window_performClose)
* [Window\_toggleFullScreen](/core/sys/darwin/Foundation/#Window_toggleFullScreen)
* [objc\_destructInstance](/core/sys/darwin/Foundation/#objc_destructInstance)
* [objc\_getAssociatedObject](/core/sys/darwin/Foundation/#objc_getAssociatedObject)
* [objc\_removeAssociatedObjects](/core/sys/darwin/Foundation/#objc_removeAssociatedObjects)
* [objc\_setAssociatedObject](/core/sys/darwin/Foundation/#objc_setAssociatedObject)
* [object\_copy](/core/sys/darwin/Foundation/#object_copy)
* [object\_dispose](/core/sys/darwin/Foundation/#object_dispose)
* [object\_getClass](/core/sys/darwin/Foundation/#object_getClass)
* [object\_getClassName](/core/sys/darwin/Foundation/#object_getClassName)
* [object\_getIndexedIvars](/core/sys/darwin/Foundation/#object_getIndexedIvars)
* [object\_getInstanceVariable](/core/sys/darwin/Foundation/#object_getInstanceVariable)
* [object\_getIvar](/core/sys/darwin/Foundation/#object_getIvar)
* [object\_get\_vtable\_info](/core/sys/darwin/Foundation/#object_get_vtable_info)
* [object\_setClass](/core/sys/darwin/Foundation/#object_setClass)
* [object\_setInstanceVariable](/core/sys/darwin/Foundation/#object_setInstanceVariable)
* [object\_setIvar](/core/sys/darwin/Foundation/#object_setIvar)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*
* [Menu\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*

### [WindowDelegateTemplate ¶](#WindowDelegateTemplate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L129)

```
WindowDelegateTemplate :: struct {
	// Managing Sheets
	windowWillPositionSheetUsingRect:                                    proc(window: ^Window, sheet: ^Window, rect: CoreFoundation.CGRect) -> CoreFoundation.CGRect,
	windowWillBeginSheet:                                                proc(notification: ^Notification),
	windowDidEndSheet:                                                   proc(notification: ^Notification),
	// Sizing Windows
	windowWillResizeToSize:                                              proc(sender: ^Window, frameSize: CoreFoundation.CGSize) -> CoreFoundation.CGSize,
	windowDidResize:                                                     proc(notification: ^Notification),
	windowWillStartLiveResize:                                           proc(noitifcation: ^Notification),
	windowDidEndLiveResize:                                              proc(notification: ^Notification),
	// Minimizing Windows
	windowWillMiniaturize:                                               proc(notification: ^Notification),
	windowDidMiniaturize:                                                proc(notification: ^Notification),
	windowDidDeminiaturize:                                              proc(notification: ^Notification),
	// Zooming window
	windowWillUseStandardFrameDefaultFrame:                              proc(window: ^Window, newFrame: CoreFoundation.CGRect) -> CoreFoundation.CGRect,
	windowShouldZoomToFrame:                                             proc(window: ^Window, newFrame: CoreFoundation.CGRect) -> bool,
	// Managing Full-Screen Presentation
	windowWillUseFullScreenContentSize:                                  proc(window: ^Window, proposedSize: CoreFoundation.CGSize) -> CoreFoundation.CGSize,
	windowWillUseFullScreenPresentationOptions:                          proc(window: ^Window, proposedOptions: ApplicationPresentationOptions) -> ApplicationPresentationOptions,
	windowWillEnterFullScreen:                                           proc(notification: ^Notification),
	windowDidEnterFullScreen:                                            proc(notification: ^Notification),
	windowWillExitFullScreen:                                            proc(notification: ^Notification),
	windowDidExitFullScreen:                                             proc(notification: ^Notification),
	// Custom Full-Screen Presentation Animations
	customWindowsToEnterFullScreenForWindow:                             proc(window: ^Window) -> ^Array,
	customWindowsToEnterFullScreenForWindowOnScreen:                     proc(window: ^Window, screen: ^Screen) -> ^Array,
	windowStartCustomAnimationToEnterFullScreenWithDuration:             proc(window: ^Window, duration: TimeInterval),
	windowStartCustomAnimationToEnterFullScreenOnScreenWithDuration:     proc(window: ^Window, screen: ^Screen, duration: TimeInterval),
	windowDidFailToEnterFullScreen:                                      proc(window: ^Window),
	customWindowsToExitFullScreenForWindow:                              proc(window: ^Window) -> ^Array,
	windowStartCustomAnimationToExitFullScreenWithDuration:              proc(window: ^Window, duration: TimeInterval),
	windowDidFailToExitFullScreen:                                       proc(window: ^Window),
	// Moving Windows
	windowWillMove:                                                      proc(notification: ^Notification),
	windowDidMove:                                                       proc(notification: ^Notification),
	windowDidChangeScreen:                                               proc(notification: ^Notification),
	windowDidChangeScreenProfile:                                        proc(notification: ^Notification),
	windowDidChangeBackingProperties:                                    proc(notification: ^Notification),
	// Closing Windows
	windowShouldClose:                                                   proc(sender: ^Window) -> bool,
	windowWillClose:                                                     proc(notification: ^Notification),
	// Managing Key Status
	windowDidBecomeKey:                                                  proc(notification: ^Notification),
	windowDidResignKey:                                                  proc(notification: ^Notification),
	// Managing Main Status
	windowDidBecomeMain:                                                 proc(notification: ^Notification),
	windowDidResignMain:                                                 proc(notification: ^Notification),
	// Managing Field Editors
	windowWillReturnFieldEditorToObject:                                 proc(sender: ^Window, client: ^.objc_object) -> ^.objc_object,
	// Updating Windows
	windowDidUpdate:                                                     proc(notification: ^Notification),
	// Exposing Windows
	windowDidExpose:                                                     proc(notification: ^Notification),
	// Managing Occlusion State
	windowDidChangeOcclusionState:                                       proc(notification: ^Notification),
	// Dragging Windows
	windowShouldDragDocumentWithEventFromWithPasteboard:                 proc(window: ^Window, event: ^Event, dragImageLocation: CoreFoundation.CGPoint, pasteboard: ^Pasteboard) -> bool,
	// Getting the Undo Manager
	windowWillReturnUndoManager:                                         proc(window: ^Window) -> ^UndoManager,
	// Managing Titles
	windowShouldPopUpDocumentPathMenu:                                   proc(window: ^Window, menu: ^Menu) -> bool,
	// Managing Restorable State
	windowWillEncodeRestorableState:                                     proc(window: ^Window, state: ^Coder),
	windowDidEncodeRestorableState:                                      proc(window: ^Window, state: ^Coder),
	// Managing Presentation in Version Browsers
	windowWillResizeForVersionBrowserWithMaxPreferredSizeMaxAllowedSize: proc(window: ^Window, maxPreferredFrameSize: CoreFoundation.CGSize, maxAllowedFrameSize: CoreFoundation.CGSize) -> CoreFoundation.CGSize,
	windowWillEnterVersionBrowser:                                       proc(notification: ^Notification),
	windowDidEnterVersionBrowser:                                        proc(notification: ^Notification),
	windowWillExitVersionBrowser:                                        proc(notification: ^Notification),
	windowDidExitVersionBrowser:                                         proc(notification: ^Notification),
}
```

##### Related Procedures With Parameters

* [window\_delegate\_register\_and\_alloc](/core/sys/darwin/Foundation/#window_delegate_register_and_alloc)

### [WindowLevel ¶](#WindowLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L110)

```
WindowLevel :: enum Integer {
	Normal      = 0, 
	Floating    = 3, 
	Submenu     = 3, 
	TornOffMenu = 3, 
	ModalPanel  = 8, 
	MainMenu    = 24, 
	Status      = 25, 
	PopUpMenu   = 101, 
	ScreenSaver = 1000, 
}
```

##### Related Procedures With Parameters

* [Window\_setLevel](/core/sys/darwin/Foundation/#Window_setLevel)

### [WindowStyleFlag ¶](#WindowStyleFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L40)

```
WindowStyleFlag :: enum UInteger {
	Titled                 = 0, 
	Closable               = 1, 
	Miniaturizable         = 2, 
	Resizable              = 3, 
	TexturedBackground     = 8, 
	UnifiedTitleAndToolbar = 12, 
	FullScreen             = 14, 
	FullSizeContentView    = 15, 
	UtilityWindow          = 4, 
	DocModalWindow         = 6, 
	NonactivatingPanel     = 7, 
	HUDWindow              = 13, 
}
```

### [WindowStyleMask ¶](#WindowStyleMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L54)

```
WindowStyleMask :: distinct bit_set[WindowStyleFlag; UInteger]
```

##### Related Procedures With Parameters

* [Window\_contentRectForFrameRectType](/core/sys/darwin/Foundation/#Window_contentRectForFrameRectType)
* [Window\_frameRectForContentRectType](/core/sys/darwin/Foundation/#Window_frameRectForContentRectType)
* [Window\_initWithContentRect](/core/sys/darwin/Foundation/#Window_initWithContentRect)
* [Window\_minFrameWidthWithTitle](/core/sys/darwin/Foundation/#Window_minFrameWidthWithTitle)
* [Window\_setStyleMask](/core/sys/darwin/Foundation/#Window_setStyleMask)

##### Related Constants

* [WindowStyleMaskBorderless](/core/sys/darwin/Foundation/#WindowStyleMaskBorderless)
* [WindowStyleMaskClosable](/core/sys/darwin/Foundation/#WindowStyleMaskClosable)
* [WindowStyleMaskDocModalWindow](/core/sys/darwin/Foundation/#WindowStyleMaskDocModalWindow)
* [WindowStyleMaskFullScreen](/core/sys/darwin/Foundation/#WindowStyleMaskFullScreen)
* [WindowStyleMaskFullSizeContentView](/core/sys/darwin/Foundation/#WindowStyleMaskFullSizeContentView)
* [WindowStyleMaskHUDWindow](/core/sys/darwin/Foundation/#WindowStyleMaskHUDWindow)
* [WindowStyleMaskMiniaturizable](/core/sys/darwin/Foundation/#WindowStyleMaskMiniaturizable)
* [WindowStyleMaskNonactivatingPanel](/core/sys/darwin/Foundation/#WindowStyleMaskNonactivatingPanel)
* [WindowStyleMaskResizable](/core/sys/darwin/Foundation/#WindowStyleMaskResizable)
* [WindowStyleMaskTexturedBackground](/core/sys/darwin/Foundation/#WindowStyleMaskTexturedBackground)
* [WindowStyleMaskTitled](/core/sys/darwin/Foundation/#WindowStyleMaskTitled)
* [WindowStyleMaskUnifiedTitleAndToolbar](/core/sys/darwin/Foundation/#WindowStyleMaskUnifiedTitleAndToolbar)
* [WindowStyleMaskUtilityWindow](/core/sys/darwin/Foundation/#WindowStyleMaskUtilityWindow)

### [WindowTabbingMode ¶](#WindowTabbingMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L122)

```
WindowTabbingMode :: enum Integer {
	Automatic  = 0, 
	Preferred  = 1, 
	Disallowed = 2, 
}
```

##### Related Procedures With Parameters

* [Window\_setTabbingMode](/core/sys/darwin/Foundation/#Window_setTabbingMode)

### [Window\_Title\_Visibility ¶](#Window_Title_Visibility) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L202)

```
Window_Title_Visibility :: enum UInteger {
	Visible, 
	Hidden, 
}
```

##### Related Procedures With Parameters

* [Window\_setTitleVisibility](/core/sys/darwin/Foundation/#Window_setTitleVisibility)

### [Zone ¶](#Zone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L95)

```
Zone :: struct {
	using _: Object,
}
```

###### Methods Inherited From [Object](/core/sys/darwin/Foundation/#Object)

* [autorelease](/core/sys/darwin/Foundation/#autorelease)
* [class](/core/sys/darwin/Foundation/#class)
* [copy](/core/sys/darwin/Foundation/#copy)
* [debugDescription](/core/sys/darwin/Foundation/#debugDescription)
* [description](/core/sys/darwin/Foundation/#description)
* [hash](/core/sys/darwin/Foundation/#hash)
* [init](/core/sys/darwin/Foundation/#init)
* [isEqual](/core/sys/darwin/Foundation/#isEqual)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [release](/core/sys/darwin/Foundation/#release)
* [retain](/core/sys/darwin/Foundation/#retain)
* [retainCount](/core/sys/darwin/Foundation/#retainCount)

### [id ¶](#id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L8)

```
id :: ^.objc_object
```

##### Related Procedures With Parameters

* [Application\_sendAction](/core/sys/darwin/Foundation/#Application_sendAction)
* [DeallocateObject](/core/sys/darwin/Foundation/#DeallocateObject)
* [Event\_otherEventWithType](/core/sys/darwin/Foundation/#Event_otherEventWithType)
* [MenuDelegate\_menuHasKeyEquivalent](/core/sys/darwin/Foundation/#MenuDelegate_menuHasKeyEquivalent)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object)
* [MenuItem\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#MenuItem_defaultPlaceholderForMarker)
* [MenuItem\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#MenuItem_setDefaultPlaceholder)
* [MenuItem\_setRepresentedObject](/core/sys/darwin/Foundation/#MenuItem_setRepresentedObject)
* [MenuItem\_setTarget](/core/sys/darwin/Foundation/#MenuItem_setTarget)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_)
* [Menu\_cancelPreviousPerformRequestsWithTarget\_selector\_object](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget_selector_object)
* [Menu\_defaultPlaceholderForMarker](/core/sys/darwin/Foundation/#Menu_defaultPlaceholderForMarker)
* [Menu\_indexOfItemWithRepresentedObject](/core/sys/darwin/Foundation/#Menu_indexOfItemWithRepresentedObject)
* [Menu\_indexOfItemWithTarget](/core/sys/darwin/Foundation/#Menu_indexOfItemWithTarget)
* [Menu\_setContextMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setContextMenuRepresentation)
* [Menu\_setDefaultPlaceholder](/core/sys/darwin/Foundation/#Menu_setDefaultPlaceholder)
* [Menu\_setMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setMenuRepresentation)
* [Menu\_setTearOffMenuRepresentation](/core/sys/darwin/Foundation/#Menu_setTearOffMenuRepresentation)
* [Menu\_submenuAction](/core/sys/darwin/Foundation/#Menu_submenuAction)
* [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](/core/sys/darwin/Foundation/#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)
* [Window\_orderFront](/core/sys/darwin/Foundation/#Window_orderFront)
* [Window\_orderOut](/core/sys/darwin/Foundation/#Window_orderOut)
* [Window\_performClose](/core/sys/darwin/Foundation/#Window_performClose)
* [Window\_toggleFullScreen](/core/sys/darwin/Foundation/#Window_toggleFullScreen)
* [objc\_destructInstance](/core/sys/darwin/Foundation/#objc_destructInstance)
* [objc\_getAssociatedObject](/core/sys/darwin/Foundation/#objc_getAssociatedObject)
* [objc\_removeAssociatedObjects](/core/sys/darwin/Foundation/#objc_removeAssociatedObjects)
* [objc\_setAssociatedObject](/core/sys/darwin/Foundation/#objc_setAssociatedObject)
* [object\_copy](/core/sys/darwin/Foundation/#object_copy)
* [object\_dispose](/core/sys/darwin/Foundation/#object_dispose)
* [object\_getClass](/core/sys/darwin/Foundation/#object_getClass)
* [object\_getClassName](/core/sys/darwin/Foundation/#object_getClassName)
* [object\_getIndexedIvars](/core/sys/darwin/Foundation/#object_getIndexedIvars)
* [object\_getInstanceVariable](/core/sys/darwin/Foundation/#object_getInstanceVariable)
* [object\_getIvar](/core/sys/darwin/Foundation/#object_getIvar)
* [object\_get\_vtable\_info](/core/sys/darwin/Foundation/#object_get_vtable_info)
* [object\_setClass](/core/sys/darwin/Foundation/#object_setClass)
* [object\_setInstanceVariable](/core/sys/darwin/Foundation/#object_setInstanceVariable)
* [object\_setIvar](/core/sys/darwin/Foundation/#object_setIvar)
* [performSelectorOnMainThread](/core/sys/darwin/Foundation/#performSelectorOnMainThread)
* [MenuItem\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*
* [Menu\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget) *(procedure groups)*



##### Related Procedures With Returns

* [AllocateObject](/core/sys/darwin/Foundation/#AllocateObject)
* [Event\_vendorDefined](/core/sys/darwin/Foundation/#Event_vendorDefined)
* [MenuItem\_copyWithZone](/core/sys/darwin/Foundation/#MenuItem_copyWithZone)
* [MenuItem\_mutableCopyWithZone](/core/sys/darwin/Foundation/#MenuItem_mutableCopyWithZone)
* [MenuItem\_representedObject](/core/sys/darwin/Foundation/#MenuItem_representedObject)
* [MenuItem\_target](/core/sys/darwin/Foundation/#MenuItem_target)
* [Menu\_contextMenuRepresentation](/core/sys/darwin/Foundation/#Menu_contextMenuRepresentation)
* [Menu\_copyWithZone](/core/sys/darwin/Foundation/#Menu_copyWithZone)
* [Menu\_menuRepresentation](/core/sys/darwin/Foundation/#Menu_menuRepresentation)
* [Menu\_mutableCopyWithZone](/core/sys/darwin/Foundation/#Menu_mutableCopyWithZone)
* [Menu\_tearOffMenuRepresentation](/core/sys/darwin/Foundation/#Menu_tearOffMenuRepresentation)
* [alloc\_user\_object](/core/sys/darwin/Foundation/#alloc_user_object)
* [class\_createInstance](/core/sys/darwin/Foundation/#class_createInstance)
* [objc\_constructInstance](/core/sys/darwin/Foundation/#objc_constructInstance)
* [objc\_getMetaClass](/core/sys/darwin/Foundation/#objc_getMetaClass)

### [kVK ¶](#kVK) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L131)

```
kVK :: enum int {
	ANSI_A              = 0, 
	ANSI_S              = 1, 
	ANSI_D              = 2, 
	ANSI_F              = 3, 
	ANSI_H              = 4, 
	ANSI_G              = 5, 
	ANSI_Z              = 6, 
	ANSI_X              = 7, 
	ANSI_C              = 8, 
	ANSI_V              = 9, 
	ANSI_B              = 11, 
	ANSI_Q              = 12, 
	ANSI_W              = 13, 
	ANSI_E              = 14, 
	ANSI_R              = 15, 
	ANSI_Y              = 16, 
	ANSI_T              = 17, 
	ANSI_1              = 18, 
	ANSI_2              = 19, 
	ANSI_3              = 20, 
	ANSI_4              = 21, 
	ANSI_6              = 22, 
	ANSI_5              = 23, 
	ANSI_Equal          = 24, 
	ANSI_9              = 25, 
	ANSI_7              = 26, 
	ANSI_Minus          = 27, 
	ANSI_8              = 28, 
	ANSI_0              = 29, 
	ANSI_RightBracket   = 30, 
	ANSI_O              = 31, 
	ANSI_U              = 32, 
	ANSI_LeftBracket    = 33, 
	ANSI_I              = 34, 
	ANSI_P              = 35, 
	ANSI_L              = 37, 
	ANSI_J              = 38, 
	ANSI_Quote          = 39, 
	ANSI_K              = 40, 
	ANSI_Semicolon      = 41, 
	ANSI_Backslash      = 42, 
	ANSI_Comma          = 43, 
	ANSI_Slash          = 44, 
	ANSI_N              = 45, 
	ANSI_M              = 46, 
	ANSI_Period         = 47, 
	ANSI_Grave          = 50, 
	ANSI_KeypadDecimal  = 65, 
	ANSI_KeypadMultiply = 67, 
	ANSI_KeypadPlus     = 69, 
	ANSI_KeypadClear    = 71, 
	ANSI_KeypadDivide   = 75, 
	ANSI_KeypadEnter    = 76, 
	ANSI_KeypadMinus    = 78, 
	ANSI_KeypadEquals   = 81, 
	ANSI_Keypad0        = 82, 
	ANSI_Keypad1        = 83, 
	ANSI_Keypad2        = 84, 
	ANSI_Keypad3        = 85, 
	ANSI_Keypad4        = 86, 
	ANSI_Keypad5        = 87, 
	ANSI_Keypad6        = 88, 
	ANSI_Keypad7        = 89, 
	ANSI_Keypad8        = 91, 
	ANSI_Keypad9        = 92, 
	Return              = 36, 
	Tab                 = 48, 
	Space               = 49, 
	Delete              = 51, 
	Escape              = 53, 
	Command             = 55, 
	Shift               = 56, 
	CapsLock            = 57, 
	Option              = 58, 
	Control             = 59, 
	RightCommand        = 54, 
	RightShift          = 60, 
	RightOption         = 61, 
	RightControl        = 62, 
	Function            = 63, 
	F17                 = 64, 
	VolumeUp            = 72, 
	VolumeDown          = 73, 
	Mute                = 74, 
	F18                 = 79, 
	F19                 = 80, 
	F20                 = 90, 
	F5                  = 96, 
	F6                  = 97, 
	F7                  = 98, 
	F3                  = 99, 
	F8                  = 100, 
	F9                  = 101, 
	F11                 = 103, 
	F13                 = 105, 
	F16                 = 106, 
	F14                 = 107, 
	F10                 = 109, 
	F12                 = 111, 
	F15                 = 113, 
	Help                = 114, 
	Home                = 115, 
	PageUp              = 116, 
	ForwardDelete       = 117, 
	F4                  = 118, 
	End                 = 119, 
	F2                  = 120, 
	PageDown            = 121, 
	F1                  = 122, 
	LeftArrow           = 123, 
	RightArrow          = 124, 
	DownArrow           = 125, 
	UpArrow             = 126, 
	JIS_Yen             = 93, 
	JIS_Underscore      = 94, 
	JIS_KeypadComma     = 95, 
	JIS_Eisu            = 102, 
	JIS_Kana            = 104, 
	ISO_Section         = 10, 
}
```

 

Defined in Carbon.framework Events.h

### [objc\_AssociationPolicy ¶](#objc_AssociationPolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L160)

```
objc_AssociationPolicy :: enum uintptr {
	Assign           = 0, 
	Retain_Nonatomic = 1, 
	Copy_Nonatomic   = 3, 
	Retain           = 1401, 
	Copy             = 1403, 
}
```

##### Related Procedures With Parameters

* [objc\_setAssociatedObject](/core/sys/darwin/Foundation/#objc_setAssociatedObject)

### [objc\_cache ¶](#objc_cache) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L124)

```
objc_cache :: struct {
	mask:     u32,
	occupied: u32,
	buckets:  [1]^objc_method,
}
```

### [objc\_class\_internals ¶](#objc_class_internals) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L144)

```
objc_class_internals :: struct {
	isa:           ^.objc_class,
	super_class:   ^.objc_class,
	name:          cstring,
	version:       i32,
	info:          i32,
	instance_size: i32,
	ivars:         ^objc_ivar_list,
	methodLists:   ^^objc_method_list,
	cache:         rawptr,
	protocols:     rawptr,
}
```

### [objc\_ivar ¶](#objc_ivar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L119)

```
objc_ivar :: struct {}
```

##### Related Procedures With Parameters

* [ivar\_getName](/core/sys/darwin/Foundation/#ivar_getName)
* [ivar\_getOffset](/core/sys/darwin/Foundation/#ivar_getOffset)
* [ivar\_getTypeEncoding](/core/sys/darwin/Foundation/#ivar_getTypeEncoding)
* [object\_getIvar](/core/sys/darwin/Foundation/#object_getIvar)
* [object\_setIvar](/core/sys/darwin/Foundation/#object_setIvar)



##### Related Procedures With Returns

* [class\_getClassVariable](/core/sys/darwin/Foundation/#class_getClassVariable)
* [class\_getInstanceVariable](/core/sys/darwin/Foundation/#class_getInstanceVariable)
* [object\_getInstanceVariable](/core/sys/darwin/Foundation/#object_getInstanceVariable)
* [object\_setInstanceVariable](/core/sys/darwin/Foundation/#object_setInstanceVariable)

### [objc\_ivar\_list ¶](#objc_ivar_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L122)

```
objc_ivar_list :: struct {}
```

### [objc\_method ¶](#objc_method) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L104)

```
objc_method :: struct {
	method_name:  ^.objc_selector,
	method_types: cstring,
	method_imp:   IMP,
}
```

##### Related Procedures With Parameters

* [method\_copyArgumentType](/core/sys/darwin/Foundation/#method_copyArgumentType)
* [method\_getArgumentType](/core/sys/darwin/Foundation/#method_getArgumentType)
* [method\_getImplementation](/core/sys/darwin/Foundation/#method_getImplementation)
* [method\_getNumberOfArguments](/core/sys/darwin/Foundation/#method_getNumberOfArguments)
* [method\_getReturnType](/core/sys/darwin/Foundation/#method_getReturnType)
* [method\_setImplementation](/core/sys/darwin/Foundation/#method_setImplementation)



##### Related Procedures With Returns

* [class\_getClassMethod](/core/sys/darwin/Foundation/#class_getClassMethod)
* [class\_getInstanceMethod](/core/sys/darwin/Foundation/#class_getInstanceMethod)

### [objc\_method\_list ¶](#objc_method_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L109)

```
objc_method_list :: struct {}
```

### [objc\_object\_internals ¶](#objc_object_internals) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L139)

```
objc_object_internals :: struct {
	isa: ^objc_class_internals,
}
```

### [objc\_property ¶](#objc_property) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L111)

```
objc_property :: struct {}
```

##### Related Procedures With Parameters

* [property\_copyAttributeList](/core/sys/darwin/Foundation/#property_copyAttributeList)
* [property\_copyAttributeValue](/core/sys/darwin/Foundation/#property_copyAttributeValue)
* [property\_getAttributes](/core/sys/darwin/Foundation/#property_getAttributes)
* [property\_getName](/core/sys/darwin/Foundation/#property_getName)



##### Related Procedures With Returns

* [class\_getProperty](/core/sys/darwin/Foundation/#class_getProperty)

### [objc\_property\_attribute\_t ¶](#objc_property_attribute_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L114)

```
objc_property_attribute_t :: struct {
	name:  cstring,
	value: cstring,
}
```

##### Related Procedures With Parameters

* [class\_addProperty](/core/sys/darwin/Foundation/#class_addProperty)
* [class\_replaceProperty](/core/sys/darwin/Foundation/#class_replaceProperty)



##### Related Procedures With Returns

* [property\_copyAttributeList](/core/sys/darwin/Foundation/#property_copyAttributeList)

### [objc\_property\_t ¶](#objc_property_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L112)

```
objc_property_t :: ^objc_property
```

##### Related Procedures With Parameters

* [property\_copyAttributeList](/core/sys/darwin/Foundation/#property_copyAttributeList)
* [property\_copyAttributeValue](/core/sys/darwin/Foundation/#property_copyAttributeValue)
* [property\_getAttributes](/core/sys/darwin/Foundation/#property_getAttributes)
* [property\_getName](/core/sys/darwin/Foundation/#property_getName)



##### Related Procedures With Returns

* [class\_copyPropertyList](/core/sys/darwin/Foundation/#class_copyPropertyList)
* [class\_getProperty](/core/sys/darwin/Foundation/#class_getProperty)

### [objc\_protocol\_list ¶](#objc_protocol_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L130)

```
objc_protocol_list :: struct {
	next:  ^objc_protocol_list,
	count: i32,
	list:  [1]^Protocol,
}
```

### [unichar ¶](#unichar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L47)

```
unichar :: distinct u16
```

##### Related Procedures With Returns

* [String\_characterAtIndex](/core/sys/darwin/Foundation/#String_characterAtIndex)

## Constants

### [ApplicationPresentationOptionsAutoHideDock ¶](#ApplicationPresentationOptionsAutoHideDock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L43)

```
ApplicationPresentationOptionsAutoHideDock :: ApplicationPresentationOptions{.AutoHideDock}
```

### [ApplicationPresentationOptionsAutoHideMenuBar ¶](#ApplicationPresentationOptionsAutoHideMenuBar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L45)

```
ApplicationPresentationOptionsAutoHideMenuBar :: ApplicationPresentationOptions{.AutoHideMenuBar}
```

### [ApplicationPresentationOptionsAutoHideToolbar ¶](#ApplicationPresentationOptionsAutoHideToolbar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L54)

```
ApplicationPresentationOptionsAutoHideToolbar :: ApplicationPresentationOptions{.AutoHideToolbar}
```

### [ApplicationPresentationOptionsDefault ¶](#ApplicationPresentationOptionsDefault) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L42)

```
ApplicationPresentationOptionsDefault :: ApplicationPresentationOptions{}
```

### [ApplicationPresentationOptionsDisableAppleMenu ¶](#ApplicationPresentationOptionsDisableAppleMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L47)

```
ApplicationPresentationOptionsDisableAppleMenu :: ApplicationPresentationOptions{.DisableAppleMenu}
```

### [ApplicationPresentationOptionsDisableCursorLocationAssistance ¶](#ApplicationPresentationOptionsDisableCursorLocationAssistance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L55)

```
ApplicationPresentationOptionsDisableCursorLocationAssistance :: ApplicationPresentationOptions{.DisableCursorLocationAssistance}
```

### [ApplicationPresentationOptionsDisableForceQuit ¶](#ApplicationPresentationOptionsDisableForceQuit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L49)

```
ApplicationPresentationOptionsDisableForceQuit :: ApplicationPresentationOptions{.DisableForceQuit}
```

### [ApplicationPresentationOptionsDisableHideApplication ¶](#ApplicationPresentationOptionsDisableHideApplication) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L51)

```
ApplicationPresentationOptionsDisableHideApplication :: ApplicationPresentationOptions{.DisableHideApplication}
```

### [ApplicationPresentationOptionsDisableMenuBarTransparency ¶](#ApplicationPresentationOptionsDisableMenuBarTransparency) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L52)

```
ApplicationPresentationOptionsDisableMenuBarTransparency :: ApplicationPresentationOptions{.DisableMenuBarTransparency}
```

### [ApplicationPresentationOptionsDisableProcessSwitching ¶](#ApplicationPresentationOptionsDisableProcessSwitching) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L48)

```
ApplicationPresentationOptionsDisableProcessSwitching :: ApplicationPresentationOptions{.DisableProcessSwitching}
```

### [ApplicationPresentationOptionsDisableSessionTermination ¶](#ApplicationPresentationOptionsDisableSessionTermination) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L50)

```
ApplicationPresentationOptionsDisableSessionTermination :: ApplicationPresentationOptions{.DisableSessionTermination}
```

### [ApplicationPresentationOptionsFullScreen ¶](#ApplicationPresentationOptionsFullScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L53)

```
ApplicationPresentationOptionsFullScreen :: ApplicationPresentationOptions{.FullScreen}
```

### [ApplicationPresentationOptionsHideDock ¶](#ApplicationPresentationOptionsHideDock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L44)

```
ApplicationPresentationOptionsHideDock :: ApplicationPresentationOptions{.HideDock}
```

### [ApplicationPresentationOptionsHideMenuBar ¶](#ApplicationPresentationOptionsHideMenuBar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L46)

```
ApplicationPresentationOptionsHideMenuBar :: ApplicationPresentationOptions{.HideMenuBar}
```

### [EventMaskAny ¶](#EventMaskAny) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L9)

```
EventMaskAny: EventMask : transmute(EventMask)(max(UInteger))
```

### [EventModifierFlagCapsLock ¶](#EventModifierFlagCapsLock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L120)

```
EventModifierFlagCapsLock :: EventModifierFlags{.CapsLock}
```

### [EventModifierFlagCommand ¶](#EventModifierFlagCommand) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L124)

```
EventModifierFlagCommand :: EventModifierFlags{.Command}
```

### [EventModifierFlagControl ¶](#EventModifierFlagControl) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L122)

```
EventModifierFlagControl :: EventModifierFlags{.Control}
```

### [EventModifierFlagDeviceIndependentFlagsMask ¶](#EventModifierFlagDeviceIndependentFlagsMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L128)

```
EventModifierFlagDeviceIndependentFlagsMask: UInteger : 0xffff0000
```

### [EventModifierFlagFunction ¶](#EventModifierFlagFunction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L127)

```
EventModifierFlagFunction :: EventModifierFlags{.Function}
```

### [EventModifierFlagHelp ¶](#EventModifierFlagHelp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L126)

```
EventModifierFlagHelp :: EventModifierFlags{.Help}
```

### [EventModifierFlagNumericPad ¶](#EventModifierFlagNumericPad) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L125)

```
EventModifierFlagNumericPad :: EventModifierFlags{.NumericPad}
```

### [EventModifierFlagOption ¶](#EventModifierFlagOption) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L123)

```
EventModifierFlagOption :: EventModifierFlags{.Option}
```

### [EventModifierFlagShift ¶](#EventModifierFlagShift) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L121)

```
EventModifierFlagShift :: EventModifierFlags{.Shift}
```

### [EventPhaseBegan ¶](#EventPhaseBegan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L93)

```
EventPhaseBegan :: EventPhase{.Began}
```

### [EventPhaseCancelled ¶](#EventPhaseCancelled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L97)

```
EventPhaseCancelled :: EventPhase{.Cancelled}
```

### [EventPhaseChanged ¶](#EventPhaseChanged) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L95)

```
EventPhaseChanged :: EventPhase{.Changed}
```

### [EventPhaseEnded ¶](#EventPhaseEnded) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L96)

```
EventPhaseEnded :: EventPhase{.Ended}
```

### [EventPhaseMayBegin ¶](#EventPhaseMayBegin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L98)

```
EventPhaseMayBegin :: EventPhase{.MayBegin}
```

### [EventPhaseNone ¶](#EventPhaseNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L92)

```
EventPhaseNone :: EventPhase{}
```

### [EventPhaseStationary ¶](#EventPhaseStationary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L94)

```
EventPhaseStationary :: EventPhase{.Stationary}
```

### [IntegerMax ¶](#IntegerMax) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L16)

```
IntegerMax: Integer : max(Integer)
```

### [Integermin ¶](#Integermin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L17)

```
Integermin: Integer : min(Integer)
```

### [NO ¶](#NO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L22)

```
NO :: false
```

### [NotFound ¶](#NotFound) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L36)

```
NotFound :: IntegerMax
```

### [UIntegerMax ¶](#UIntegerMax) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L18)

```
UIntegerMax: UInteger : max(UInteger)
```

### [WindowCollectionBehaviorAuxiliary ¶](#WindowCollectionBehaviorAuxiliary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L95)

```
WindowCollectionBehaviorAuxiliary :: WindowCollectionBehavior{.Auxiliary, .FullScreenNone}
```

### [WindowCollectionBehaviorCanJoinAllApplications ¶](#WindowCollectionBehaviorCanJoinAllApplications) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L96)

```
WindowCollectionBehaviorCanJoinAllApplications :: WindowCollectionBehavior{.CanJoinAllApplications}
```

### [WindowCollectionBehaviorCanJoinAllSpaces ¶](#WindowCollectionBehaviorCanJoinAllSpaces) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L97)

```
WindowCollectionBehaviorCanJoinAllSpaces :: WindowCollectionBehavior{.CanJoinAllSpaces}
```

### [WindowCollectionBehaviorDefault ¶](#WindowCollectionBehaviorDefault) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L93)

```
WindowCollectionBehaviorDefault :: WindowCollectionBehavior{}
```

### [WindowCollectionBehaviorFullScreenAllowsTiling ¶](#WindowCollectionBehaviorFullScreenAllowsTiling) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L105)

```
WindowCollectionBehaviorFullScreenAllowsTiling :: WindowCollectionBehavior{.FullScreenAllowsTiling}
```

### [WindowCollectionBehaviorFullScreenAuxiliary ¶](#WindowCollectionBehaviorFullScreenAuxiliary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L103)

```
WindowCollectionBehaviorFullScreenAuxiliary :: WindowCollectionBehavior{.FullScreenAuxiliary}
```

### [WindowCollectionBehaviorFullScreenDisallowsTiling ¶](#WindowCollectionBehaviorFullScreenDisallowsTiling) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L106)

```
WindowCollectionBehaviorFullScreenDisallowsTiling :: WindowCollectionBehavior{.FullScreenDisallowsTiling}
```

### [WindowCollectionBehaviorFullScreenNone ¶](#WindowCollectionBehaviorFullScreenNone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L104)

```
WindowCollectionBehaviorFullScreenNone :: WindowCollectionBehavior{.FullScreenNone}
```

### [WindowCollectionBehaviorFullScreenPrimary ¶](#WindowCollectionBehaviorFullScreenPrimary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L102)

```
WindowCollectionBehaviorFullScreenPrimary :: WindowCollectionBehavior{.FullScreenPrimary}
```

### [WindowCollectionBehaviorIgnoresCycle ¶](#WindowCollectionBehaviorIgnoresCycle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L108)

```
WindowCollectionBehaviorIgnoresCycle :: WindowCollectionBehavior{.IgnoresCycle}
```

### [WindowCollectionBehaviorManaged ¶](#WindowCollectionBehaviorManaged) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L100)

```
WindowCollectionBehaviorManaged :: WindowCollectionBehavior{.Managed}
```

### [WindowCollectionBehaviorMoveToActiveSpace ¶](#WindowCollectionBehaviorMoveToActiveSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L98)

```
WindowCollectionBehaviorMoveToActiveSpace :: WindowCollectionBehavior{.MoveToActiveSpace}
```

### [WindowCollectionBehaviorParticipatesInCycle ¶](#WindowCollectionBehaviorParticipatesInCycle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L107)

```
WindowCollectionBehaviorParticipatesInCycle :: WindowCollectionBehavior{.ParticipatesInCycle}
```

### [WindowCollectionBehaviorPrimary ¶](#WindowCollectionBehaviorPrimary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L94)

```
WindowCollectionBehaviorPrimary :: WindowCollectionBehavior{.Primary, .FullScreenAuxiliary}
```

### [WindowCollectionBehaviorStationary ¶](#WindowCollectionBehaviorStationary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L99)

```
WindowCollectionBehaviorStationary :: WindowCollectionBehavior{.Stationary}
```

### [WindowCollectionBehaviorTransient ¶](#WindowCollectionBehaviorTransient) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L101)

```
WindowCollectionBehaviorTransient :: WindowCollectionBehavior{.Transient}
```

### [WindowStyleMaskBorderless ¶](#WindowStyleMaskBorderless) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L55)

```
WindowStyleMaskBorderless :: WindowStyleMask{}
```

### [WindowStyleMaskClosable ¶](#WindowStyleMaskClosable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L57)

```
WindowStyleMaskClosable :: WindowStyleMask{.Closable}
```

### [WindowStyleMaskDocModalWindow ¶](#WindowStyleMaskDocModalWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L65)

```
WindowStyleMaskDocModalWindow :: WindowStyleMask{.DocModalWindow}
```

### [WindowStyleMaskFullScreen ¶](#WindowStyleMaskFullScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L62)

```
WindowStyleMaskFullScreen :: WindowStyleMask{.FullScreen}
```

### [WindowStyleMaskFullSizeContentView ¶](#WindowStyleMaskFullSizeContentView) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L63)

```
WindowStyleMaskFullSizeContentView :: WindowStyleMask{.FullSizeContentView}
```

### [WindowStyleMaskHUDWindow ¶](#WindowStyleMaskHUDWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L67)

```
WindowStyleMaskHUDWindow :: WindowStyleMask{.HUDWindow}
```

### [WindowStyleMaskMiniaturizable ¶](#WindowStyleMaskMiniaturizable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L58)

```
WindowStyleMaskMiniaturizable :: WindowStyleMask{.Miniaturizable}
```

### [WindowStyleMaskNonactivatingPanel ¶](#WindowStyleMaskNonactivatingPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L66)

```
WindowStyleMaskNonactivatingPanel :: WindowStyleMask{.NonactivatingPanel}
```

### [WindowStyleMaskResizable ¶](#WindowStyleMaskResizable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L59)

```
WindowStyleMaskResizable :: WindowStyleMask{.Resizable}
```

### [WindowStyleMaskTexturedBackground ¶](#WindowStyleMaskTexturedBackground) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L60)

```
WindowStyleMaskTexturedBackground :: WindowStyleMask{.TexturedBackground}
```

### [WindowStyleMaskTitled ¶](#WindowStyleMaskTitled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L56)

```
WindowStyleMaskTitled :: WindowStyleMask{.Titled}
```

### [WindowStyleMaskUnifiedTitleAndToolbar ¶](#WindowStyleMaskUnifiedTitleAndToolbar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L61)

```
WindowStyleMaskUnifiedTitleAndToolbar :: WindowStyleMask{.UnifiedTitleAndToolbar}
```

### [WindowStyleMaskUtilityWindow ¶](#WindowStyleMaskUtilityWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L64)

```
WindowStyleMaskUtilityWindow :: WindowStyleMask{.UtilityWindow}
```

### [YES ¶](#YES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin#L21)

```
YES :: true
```

## Variables

### [CocoaErrorDomain ¶](#CocoaErrorDomain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L8)

```
@(linkage="weak")
CocoaErrorDomain: ^String
```

### [DebugDescriptionErrorKey ¶](#DebugDescriptionErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L24)

```
@(linkage="weak")
DebugDescriptionErrorKey: ^String
```

### [DefaultRunLoopMode ¶](#DefaultRunLoopMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L10)

```
DefaultRunLoopMode: ^String
```

### [DeviceRGBColorSpace ¶](#DeviceRGBColorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L155)

```
DeviceRGBColorSpace: ^String
```

### [EventTrackingRunLoopMode ¶](#EventTrackingRunLoopMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L11)

```
EventTrackingRunLoopMode: ^String
```

### [FilePathErrorKey ¶](#FilePathErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L28)

```
@(linkage="weak")
FilePathErrorKey: ^String
```

### [HelpAnchorErrorKey ¶](#HelpAnchorErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L23)

```
@(linkage="weak")
HelpAnchorErrorKey: ^String
```

### [KeyEventModifierFlagDeviceIndependentFlagsMask ¶](#KeyEventModifierFlagDeviceIndependentFlagsMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L10)

```
KeyEventModifierFlagDeviceIndependentFlagsMask: EventModifierFlags = …
```

 

Used to retrieve only the device-independent modifier flags, allowing applications to mask off the device-dependent modifier flags, including event coalescing information.

### [LocalizedDescriptionKey ¶](#LocalizedDescriptionKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L18)

```
@(linkage="weak")
LocalizedDescriptionKey: ^String
```

### [LocalizedFailureErrorKey ¶](#LocalizedFailureErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L25)

```
@(linkage="weak")
LocalizedFailureErrorKey: ^String
```

### [LocalizedFailureReasonErrorKey ¶](#LocalizedFailureReasonErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L19)

```
@(linkage="weak")
LocalizedFailureReasonErrorKey: ^String
```

### [LocalizedRecoveryOptionsErrorKey ¶](#LocalizedRecoveryOptionsErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L21)

```
@(linkage="weak")
LocalizedRecoveryOptionsErrorKey: ^String
```

### [LocalizedRecoverySuggestionErrorKey ¶](#LocalizedRecoverySuggestionErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L20)

```
@(linkage="weak")
LocalizedRecoverySuggestionErrorKey: ^String
```

### [MachErrorDomain ¶](#MachErrorDomain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L11)

```
@(linkage="weak")
MachErrorDomain: ^String
```

### [ModalPanelRunLoopMode ¶](#ModalPanelRunLoopMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L12)

```
ModalPanelRunLoopMode: ^String
```

### [OSStatusErrorDomain ¶](#OSStatusErrorDomain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L10)

```
@(linkage="weak")
OSStatusErrorDomain: ^String
```

### [POSIXErrorDomain ¶](#POSIXErrorDomain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L9)

```
@(linkage="weak")
POSIXErrorDomain: ^String
```

### [RecoveryAttempterErrorKey ¶](#RecoveryAttempterErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L22)

```
@(linkage="weak")
RecoveryAttempterErrorKey: ^String
```

### [RunLoopCommonModes ¶](#RunLoopCommonModes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L9)

```
RunLoopCommonModes: ^String
```

### [StringEncodingErrorKey ¶](#StringEncodingErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L26)

```
@(linkage="weak")
StringEncodingErrorKey: ^String
```

### [URLErrorKey ¶](#URLErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L27)

```
@(linkage="weak")
URLErrorKey: ^String
```

### [UnderlyingErrorKey ¶](#UnderlyingErrorKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L17)

```
@(linkage="weak")
UnderlyingErrorKey: ^String
```

## Procedures

### [AT ¶](#AT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L52)

```
AT :: MakeConstantString
```

 

CFString is 'toll-free bridged' with its Cocoa Foundation counterpart, NSString.

### [AllocateObject ¶](#AllocateObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L99)

```
AllocateObject :: proc "c" (
	aClass:     ^.objc_class, 
	extraBytes: UInteger, 
	zone:       ^Zone, 
) -> ^.objc_object ---
```

### [Application\_activate ¶](#Application_activate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L79)

```
Application_activate :: proc "c" (
	self: ^Application, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **activate**

##### Syntax Usage

```
self->activate()
```

### [Application\_activateIgnoringOtherApps ¶](#Application_activateIgnoringOtherApps) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L74)

```
Application_activateIgnoringOtherApps :: proc "c" (
	self:            ^Application, 
	ignoreOtherApps: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **activateIgnoringOtherApps**

##### Syntax Usage

```
self->activateIgnoringOtherApps(ignoreOtherApps)
```

 

NOTE: this is technically deprecated but still actively used (Sokol, glfw, SDL, etc.)
and has no clear alternative although `activate` is what Apple tells you to use,
that does not work the same way.

### [Application\_active ¶](#Application_active) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L84)

```
Application_active :: proc "c" (
	self: ^Application, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **active**

##### Syntax Usage

```
res := self->active()
```

### [Application\_currentEvent ¶](#Application_currentEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L173)

```
Application_currentEvent :: proc "c" (
	self: ^Application, 
) -> ^Event {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **currentEvent**

##### Syntax Usage

```
res := self->currentEvent()
```

### [Application\_finishLaunching ¶](#Application_finishLaunching) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L153)

```
Application_finishLaunching :: proc "c" (
	self: ^Application, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **finishLaunching**

##### Syntax Usage

```
self->finishLaunching()
```

### [Application\_isRunning ¶](#Application_isRunning) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L168)

```
Application_isRunning :: proc "c" (
	self: ^Application, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **isRunning**

##### Syntax Usage

```
res := self->isRunning()
```

### [Application\_keyWindow ¶](#Application_keyWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L138)

```
Application_keyWindow :: proc "c" (
	self: ^Application, 
) -> ^Window {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **keyWindow**

##### Syntax Usage

```
res := self->keyWindow()
```

### [Application\_mainMenu ¶](#Application_mainMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L94)

```
Application_mainMenu :: proc "c" (
	self: ^Application, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **mainMenu**

##### Syntax Usage

```
res := self->mainMenu()
```

### [Application\_mainWindow ¶](#Application_mainWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L133)

```
Application_mainWindow :: proc "c" (
	self: ^Application, 
) -> ^Window {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **mainWindow**

##### Syntax Usage

```
res := self->mainWindow()
```

### [Application\_nextEventMatchingMask ¶](#Application_nextEventMatchingMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L178)

```
Application_nextEventMatchingMask :: proc "c" (
	self:       ^Application, 
	mask:       EventMask, 
	expiration: ^Date, 
	in_mode:    ^String, 
	dequeue:    bool, 
) -> ^Event {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **nextEventMatchingMask**

##### Syntax Usage

```
res := self->nextEventMatchingMask(
	mask,
	expiration,
	in_mode,
	dequeue,
)
```

### [Application\_postEvent ¶](#Application_postEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L188)

```
Application_postEvent :: proc "c" (
	self:    ^Application, 
	event:   ^Event, 
	atStart: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **postEvent**

##### Syntax Usage

```
self->postEvent(
	event,
	atStart,
)
```

### [Application\_run ¶](#Application_run) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L148)

```
Application_run :: proc "c" (
	self: ^Application, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **run**

##### Syntax Usage

```
self->run()
```

### [Application\_sendAction ¶](#Application_sendAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L198)

```
Application_sendAction :: proc "c" (
	self:   ^Application, 
	action: ^.objc_selector, 
	to:     ^.objc_object, 
	from:   ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **sendAction**

##### Syntax Usage

```
self->sendAction(
	action,
	to,
	from,
)
```

### [Application\_sendEvent ¶](#Application_sendEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L183)

```
Application_sendEvent :: proc "c" (
	self:  ^Application, 
	event: ^Event, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **sendEvent**

##### Syntax Usage

```
self->sendEvent(event)
```

### [Application\_servicesMenu ¶](#Application_servicesMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L113)

```
Application_servicesMenu :: proc "c" (
	self: ^Application, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **servicesMenu**

##### Syntax Usage

```
res := self->servicesMenu()
```

### [Application\_setActivationPolicy ¶](#Application_setActivationPolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L66)

```
Application_setActivationPolicy :: proc "c" (
	self:             ^Application, 
	activationPolicy: ActivationPolicy, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **setActivationPolicy**

##### Syntax Usage

```
res := self->setActivationPolicy(activationPolicy)
```

### [Application\_setAppleMenu ¶](#Application_setAppleMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L108)

```
Application_setAppleMenu :: proc "c" (
	self: ^Application, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **setAppleMenu**

##### Syntax Usage

```
self->setAppleMenu(menu)
```

 

This property is actually not exposed in AppKit's public API.
But there is basically no other way to configure the apple menu without using NIB files.
Therefore, an Odin binding for this non-public API was created.
Note: SDL also calls this non-public method.

### [Application\_setDelegate ¶](#Application_setDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L674)

```
Application_setDelegate :: proc "c" (
	self:     ^Application, 
	delegate: ^ApplicationDelegate, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **setDelegate**

##### Syntax Usage

```
self->setDelegate(delegate)
```

### [Application\_setMainMenu ¶](#Application_setMainMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L99)

```
Application_setMainMenu :: proc "c" (
	self: ^Application, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **setMainMenu**

##### Syntax Usage

```
self->setMainMenu(menu)
```

### [Application\_setServicesMenu ¶](#Application_setServicesMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L118)

```
Application_setServicesMenu :: proc "c" (
	self: ^Application, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **setServicesMenu**

##### Syntax Usage

```
self->setServicesMenu(menu)
```

### [Application\_setTitle ¶](#Application_setTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L89)

```
Application_setTitle :: proc "c" (
	self:  ^Application, 
	title: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **setTitle**

##### Syntax Usage

```
self->setTitle(title)
```

### [Application\_setWindowsMenu ¶](#Application_setWindowsMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L128)

```
Application_setWindowsMenu :: proc "c" (
	self: ^Application, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **setWindowsMenu**

##### Syntax Usage

```
self->setWindowsMenu(menu)
```

### [Application\_sharedApplication ¶](#Application_sharedApplication) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L61)

```
Application_sharedApplication :: proc "c" () -> ^Application {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **sharedApplication**
* Kind: *Class Method*

##### Syntax Usage

```
res := Application.sharedApplication()
```

### [Application\_stop ¶](#Application_stop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L158)

```
Application_stop :: proc "c" (
	self:   ^Application, 
	sender: ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **stop**

##### Syntax Usage

```
self->stop(sender)
```

### [Application\_terminate ¶](#Application_terminate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L163)

```
Application_terminate :: proc "c" (
	self:   ^Application, 
	sender: ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **terminate**

##### Syntax Usage

```
self->terminate(sender)
```

### [Application\_updateWindows ¶](#Application_updateWindows) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L193)

```
Application_updateWindows :: proc "c" (
	self: ^Application, 
) {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **updateWindows**

##### Syntax Usage

```
self->updateWindows()
```

### [Application\_windows ¶](#Application_windows) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L143)

```
Application_windows :: proc "c" (
	self: ^Application, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **windows**

##### Syntax Usage

```
res := self->windows()
```

### [Application\_windowsMenu ¶](#Application_windowsMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L123)

```
Application_windowsMenu :: proc "c" (
	self: ^Application, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Application](#Application)
* Name: **windowsMenu**

##### Syntax Usage

```
res := self->windowsMenu()
```

### [Array\_alloc ¶](#Array_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L11)

```
Array_alloc :: proc "c" () -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Array](#Array)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Array.alloc()
```

### [Array\_count ¶](#Array_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L40)

```
Array_count :: proc "c" (
	self: ^Array, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Array](#Array)
* Name: **count**

##### Syntax Usage

```
res := self->count()
```

### [Array\_init ¶](#Array_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L16)

```
Array_init :: proc "c" (
	self: ^Array, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Array](#Array)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Array\_initWithCoder ¶](#Array_initWithCoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L26)

```
Array_initWithCoder :: proc "c" (
	self:  ^Array, 
	coder: ^Coder, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Array](#Array)
* Name: **initWithCoder**

##### Syntax Usage

```
res := self->initWithCoder(coder)
```

### [Array\_initWithObjects ¶](#Array_initWithObjects) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L21)

```
Array_initWithObjects :: proc "c" (
	self:    ^Array, 
	objects: [^]^Object, 
	count:   UInteger, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Array](#Array)
* Name: **initWithObjects**

##### Syntax Usage

```
res := self->initWithObjects(
	objects,
	count,
)
```

### [Array\_object ¶](#Array_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L31)

```
Array_object :: proc "c" (
	self:  ^Array, 
	index: UInteger, 
) -> ^Object {…}
```

##### Objective-C Method Information

* Class: [Array](#Array)
* Name: **object**

##### Syntax Usage

```
res := self->object(index)
```

### [Array\_objectAs ¶](#Array_objectAs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L35)

```
Array_objectAs :: proc "c" (
	self:  ^Array, 
	index: UInteger, 
	$T:     typeid, 
) -> typeid {…}
```

##### Objective-C Method Information

* Class: [Array](#Array)
* Name: **objectAs**

##### Syntax Usage

```
res := self->objectAs(
	index,
	T,
)
```

### [AutoreleasePool\_addObject ¶](#AutoreleasePool_addObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin#L21)

```
AutoreleasePool_addObject :: proc "c" (
	self: ^AutoreleasePool, 
	obj:  ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [AutoreleasePool](#AutoreleasePool)
* Name: **addObject**

##### Syntax Usage

```
self->addObject(obj)
```

### [AutoreleasePool\_alloc ¶](#AutoreleasePool_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin#L7)

```
AutoreleasePool_alloc :: proc "c" () -> ^AutoreleasePool {…}
```

##### Objective-C Method Information

* Class: [AutoreleasePool](#AutoreleasePool)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := AutoreleasePool.alloc()
```

### [AutoreleasePool\_drain ¶](#AutoreleasePool_drain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin#L17)

```
AutoreleasePool_drain :: proc "c" (
	self: ^AutoreleasePool, 
) {…}
```

##### Objective-C Method Information

* Class: [AutoreleasePool](#AutoreleasePool)
* Name: **drain**

##### Syntax Usage

```
self->drain()
```

### [AutoreleasePool\_init ¶](#AutoreleasePool_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin#L12)

```
AutoreleasePool_init :: proc "c" (
	self: ^AutoreleasePool, 
) -> ^AutoreleasePool {…}
```

##### Objective-C Method Information

* Class: [AutoreleasePool](#AutoreleasePool)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [AutoreleasePool\_showPools ¶](#AutoreleasePool_showPools) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin#L25)

```
AutoreleasePool_showPools :: proc "c" (
	self: ^AutoreleasePool, 
	obj:  ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [AutoreleasePool](#AutoreleasePool)
* Name: **showPools**

##### Syntax Usage

```
self->showPools(obj)
```

### [BitmapImageRep\_CGImage ¶](#BitmapImageRep_CGImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L78)

```
BitmapImageRep_CGImage :: proc "c" (
	self: ^BitmapImageRep, 
) -> rawptr {…}
```

##### Objective-C Method Information

* Class: [BitmapImageRep](#BitmapImageRep)
* Name: **CGImage**

##### Syntax Usage

```
res := self->CGImage()
```

### [BitmapImageRep\_alloc ¶](#BitmapImageRep_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L19)

```
BitmapImageRep_alloc :: proc "c" () -> ^BitmapImageRep {…}
```

##### Objective-C Method Information

* Class: [BitmapImageRep](#BitmapImageRep)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := BitmapImageRep.alloc()
```

### [BitmapImageRep\_bitmapData ¶](#BitmapImageRep_bitmapData) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L73)

```
BitmapImageRep_bitmapData :: proc "c" (
	self: ^BitmapImageRep, 
) -> rawptr {…}
```

##### Objective-C Method Information

* Class: [BitmapImageRep](#BitmapImageRep)
* Name: **bitmapData**

##### Syntax Usage

```
res := self->bitmapData()
```

### [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat ¶](#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L44)

```
BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat :: proc "c" (
	self:             ^BitmapImageRep, 
	bitmapDataPlanes: ^^u8, 
	pixelsWide:       Integer, 
	pixelsHigh:       Integer, 
	bitsPerSample:    Integer, 
	samplesPerPixel:  Integer, 
	hasAlpha:         bool, 
	isPlanar:         bool, 
	colorSpaceName:   ^String, 
	bitmapFormat:     bit_set[BitmapFormatFlag; BitmapInteger], 
	bytesPerRow:      Integer, 
	bitsPerPixel:     Integer, 
) -> ^BitmapImageRep {…}
```

##### Related Procedure Groups

* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes)

### [BitmapImageRep\_initWithBitmapDataPlanes\_legacy ¶](#BitmapImageRep_initWithBitmapDataPlanes_legacy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L23)

```
BitmapImageRep_initWithBitmapDataPlanes_legacy :: proc "c" (
	self:             ^BitmapImageRep, 
	bitmapDataPlanes: ^^u8, 
	pixelsWide:       Integer, 
	pixelsHigh:       Integer, 
	bitsPerSample:    Integer, 
	samplesPerPixel:  Integer, 
	hasAlpha:         bool, 
	isPlanar:         bool, 
	colorSpaceName:   ^String, 
	bytesPerRow:      Integer, 
	bitsPerPixel:     Integer, 
) -> ^BitmapImageRep {…}
```

##### Related Procedure Groups

* [BitmapImageRep\_initWithBitmapDataPlanes](/core/sys/darwin/Foundation/#BitmapImageRep_initWithBitmapDataPlanes)

### [Block\_createGlobal ¶](#Block_createGlobal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBlock.odin#L11)

```
Block_createGlobal :: proc(
	user_data: rawptr, 
	user_proc: proc "c" (
	user_data: rawptr, 
), 
	allocator := context.allocator, 
) -> (^Block, runtime.Allocator_Error) #optional_ok {…}
```

##### Objective-C Method Information

* Class: [Block](#Block)
* Name: **createGlobal**
* Kind: *Class Method*

##### Syntax Usage

```
res0, res1 := Block.createGlobal(
	user_data,
	user_proc,
	allocator,
)
```

### [Block\_createGlobalWithParam ¶](#Block_createGlobalWithParam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBlock.odin#L20)

```
Block_createGlobalWithParam :: proc(
	user_data: rawptr, 
	user_proc: proc "c" (
	user_data: rawptr, 
	t:         $T, 
), 
	allocator := context.allocator, 
) -> (^Block, runtime.Allocator_Error) #optional_ok {…}
```

##### Objective-C Method Information

* Class: [Block](#Block)
* Name: **createGlobalWithParam**
* Kind: *Class Method*

##### Syntax Usage

```
res0, res1 := Block.createGlobalWithParam(
	user_data,
	user_proc,
	allocator,
)
```

### [Block\_createLocal ¶](#Block_createLocal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBlock.odin#L15)

```
Block_createLocal :: proc(
	user_data: rawptr, 
	user_proc: proc "c" (
	user_data: rawptr, 
), 
) -> ^Block {…}
```

##### Objective-C Method Information

* Class: [Block](#Block)
* Name: **createLocal**
* Kind: *Class Method*

##### Syntax Usage

```
res := Block.createLocal(
	user_data,
	user_proc,
)
```

### [Block\_createLocalWithParam ¶](#Block_createLocalWithParam) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBlock.odin#L24)

```
Block_createLocalWithParam :: proc(
	user_data: rawptr, 
	user_proc: proc "c" (
	user_data: rawptr, 
	t:         $T, 
), 
) -> ^Block {…}
```

##### Objective-C Method Information

* Class: [Block](#Block)
* Name: **createLocalWithParam**
* Kind: *Class Method*

##### Syntax Usage

```
res := Block.createLocalWithParam(
	user_data,
	user_proc,
)
```

### [Block\_invoke ¶](#Block_invoke) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBlock.odin#L29)

```
Block_invoke :: proc "c" (
	self: ^Block, 
	.. args: ..any, 
) -> ^Object {…}
```

##### Objective-C Method Information

* Class: [Block](#Block)
* Name: **invoke**

##### Syntax Usage

```
res := self->invoke(args)
```

### [Bundle\_PathForAuxiliaryExecutable ¶](#Bundle_PathForAuxiliaryExecutable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L139)

```
Bundle_PathForAuxiliaryExecutable :: proc "c" (
	self:           ^Bundle, 
	executableName: ^String, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **PathForAuxiliaryExecutable**

##### Syntax Usage

```
res := self->PathForAuxiliaryExecutable(executableName)
```

### [Bundle\_URLForAuxiliaryExecutable ¶](#Bundle_URLForAuxiliaryExecutable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L94)

```
Bundle_URLForAuxiliaryExecutable :: proc "c" (
	self:           ^Bundle, 
	executableName: ^String, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **URLForAuxiliaryExecutable**

##### Syntax Usage

```
res := self->URLForAuxiliaryExecutable(executableName)
```

### [Bundle\_allBundles ¶](#Bundle_allBundles) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L43)

```
Bundle_allBundles :: proc "c" () -> (all: ^Array) {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **allBundles**

##### Syntax Usage

```
all := self->allBundles()
```

### [Bundle\_allFrameworks ¶](#Bundle_allFrameworks) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L48)

```
Bundle_allFrameworks :: proc "c" () -> (all: ^Array) {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **allFrameworks**

##### Syntax Usage

```
all := self->allFrameworks()
```

### [Bundle\_alloc ¶](#Bundle_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L23)

```
Bundle_alloc :: proc "c" () -> ^Bundle {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Bundle.alloc()
```

### [Bundle\_appStoreReceiptPath ¶](#Bundle_appStoreReceiptPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L164)

```
Bundle_appStoreReceiptPath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **appStoreReceiptPath**

##### Syntax Usage

```
res := self->appStoreReceiptPath()
```

### [Bundle\_appStoreReceiptURL ¶](#Bundle_appStoreReceiptURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L119)

```
Bundle_appStoreReceiptURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **appStoreReceiptURL**

##### Syntax Usage

```
res := self->appStoreReceiptURL()
```

### [Bundle\_builtInPlugInsPath ¶](#Bundle_builtInPlugInsPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L159)

```
Bundle_builtInPlugInsPath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **builtInPlugInsPath**

##### Syntax Usage

```
res := self->builtInPlugInsPath()
```

### [Bundle\_builtInPlugInsURL ¶](#Bundle_builtInPlugInsURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L114)

```
Bundle_builtInPlugInsURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **builtInPlugInsURL**

##### Syntax Usage

```
res := self->builtInPlugInsURL()
```

### [Bundle\_bundleIdentifier ¶](#Bundle_bundleIdentifier) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L169)

```
Bundle_bundleIdentifier :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **bundleIdentifier**

##### Syntax Usage

```
res := self->bundleIdentifier()
```

### [Bundle\_bundlePath ¶](#Bundle_bundlePath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L124)

```
Bundle_bundlePath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **bundlePath**

##### Syntax Usage

```
res := self->bundlePath()
```

### [Bundle\_bundleURL ¶](#Bundle_bundleURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L79)

```
Bundle_bundleURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **bundleURL**

##### Syntax Usage

```
res := self->bundleURL()
```

### [Bundle\_bundleWithPath ¶](#Bundle_bundleWithPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L12)

```
Bundle_bundleWithPath :: proc "c" (
	path: ^String, 
) -> ^Bundle {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **bundleWithPath**
* Kind: *Class Method*

##### Syntax Usage

```
res := Bundle.bundleWithPath(path)
```

### [Bundle\_bundleWithURL ¶](#Bundle_bundleWithURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L17)

```
Bundle_bundleWithURL :: proc "c" (
	url: ^URL, 
) -> ^Bundle {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **bundleWithURL**
* Kind: *Class Method*

##### Syntax Usage

```
res := Bundle.bundleWithURL(url)
```

### [Bundle\_executablePath ¶](#Bundle_executablePath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L134)

```
Bundle_executablePath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **executablePath**

##### Syntax Usage

```
res := self->executablePath()
```

### [Bundle\_executableURL ¶](#Bundle_executableURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L89)

```
Bundle_executableURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **executableURL**

##### Syntax Usage

```
res := self->executableURL()
```

### [Bundle\_infoDictionary ¶](#Bundle_infoDictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L174)

```
Bundle_infoDictionary :: proc "c" (
	self: ^Bundle, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **infoDictionary**

##### Syntax Usage

```
res := self->infoDictionary()
```

### [Bundle\_init ¶](#Bundle_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L28)

```
Bundle_init :: proc "c" (
	self: ^Bundle, 
) -> ^Bundle {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Bundle\_initWithPath ¶](#Bundle_initWithPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L33)

```
Bundle_initWithPath :: proc "c" (
	self: ^Bundle, 
	path: ^String, 
) -> ^Bundle {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **initWithPath**

##### Syntax Usage

```
res := self->initWithPath(path)
```

### [Bundle\_initWithURL ¶](#Bundle_initWithURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L38)

```
Bundle_initWithURL :: proc "c" (
	self: ^Bundle, 
	url:  ^URL, 
) -> ^Bundle {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **initWithURL**

##### Syntax Usage

```
res := self->initWithURL(url)
```

### [Bundle\_isLoaded ¶](#Bundle_isLoaded) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L62)

```
Bundle_isLoaded :: proc "c" (
	self: ^Bundle, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **isLoaded**

##### Syntax Usage

```
res := self->isLoaded()
```

### [Bundle\_load ¶](#Bundle_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L53)

```
Bundle_load :: proc "c" (
	self: ^Bundle, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **load**

##### Syntax Usage

```
res := self->load()
```

### [Bundle\_loadAndReturnError ¶](#Bundle_loadAndReturnError) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L73)

```
Bundle_loadAndReturnError :: proc "contextless" (
	self: ^Bundle, 
) -> (ok: bool, error: ^Error) {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **loadAndReturnError**

##### Syntax Usage

```
ok, error := self->loadAndReturnError()
```

### [Bundle\_localizedInfoDictionary ¶](#Bundle_localizedInfoDictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L179)

```
Bundle_localizedInfoDictionary :: proc "c" (
	self: ^Bundle, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **localizedInfoDictionary**

##### Syntax Usage

```
res := self->localizedInfoDictionary()
```

### [Bundle\_localizedStringForKey ¶](#Bundle_localizedStringForKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L189)

```
Bundle_localizedStringForKey :: proc "c" (
	self:      ^Bundle, 
	key:       ^String, 
	value:     ^String = nil, 
	tableName: ^String = nil, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **localizedStringForKey**

##### Syntax Usage

```
res := self->localizedStringForKey(
	key,
	value,
	tableName,
)
```

### [Bundle\_mainBundle ¶](#Bundle_mainBundle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L7)

```
Bundle_mainBundle :: proc "c" () -> ^Bundle {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **mainBundle**
* Kind: *Class Method*

##### Syntax Usage

```
res := Bundle.mainBundle()
```

### [Bundle\_objectForInfoDictionaryKey ¶](#Bundle_objectForInfoDictionaryKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L184)

```
Bundle_objectForInfoDictionaryKey :: proc "c" (
	self: ^Bundle, 
	key:  ^String, 
) -> ^Object {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **objectForInfoDictionaryKey**

##### Syntax Usage

```
res := self->objectForInfoDictionaryKey(key)
```

### [Bundle\_preflightAndReturnError ¶](#Bundle_preflightAndReturnError) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L67)

```
Bundle_preflightAndReturnError :: proc "contextless" (
	self: ^Bundle, 
) -> (ok: bool, error: ^Error) {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **preflightAndReturnError**

##### Syntax Usage

```
ok, error := self->preflightAndReturnError()
```

### [Bundle\_privateFrameworksPath ¶](#Bundle_privateFrameworksPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L144)

```
Bundle_privateFrameworksPath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **privateFrameworksPath**

##### Syntax Usage

```
res := self->privateFrameworksPath()
```

### [Bundle\_privateFrameworksURL ¶](#Bundle_privateFrameworksURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L99)

```
Bundle_privateFrameworksURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **privateFrameworksURL**

##### Syntax Usage

```
res := self->privateFrameworksURL()
```

### [Bundle\_resourcePath ¶](#Bundle_resourcePath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L129)

```
Bundle_resourcePath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **resourcePath**

##### Syntax Usage

```
res := self->resourcePath()
```

### [Bundle\_resourceURL ¶](#Bundle_resourceURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L84)

```
Bundle_resourceURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **resourceURL**

##### Syntax Usage

```
res := self->resourceURL()
```

### [Bundle\_sharedFrameworksPath ¶](#Bundle_sharedFrameworksPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L149)

```
Bundle_sharedFrameworksPath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **sharedFrameworksPath**

##### Syntax Usage

```
res := self->sharedFrameworksPath()
```

### [Bundle\_sharedFrameworksURL ¶](#Bundle_sharedFrameworksURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L104)

```
Bundle_sharedFrameworksURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **sharedFrameworksURL**

##### Syntax Usage

```
res := self->sharedFrameworksURL()
```

### [Bundle\_sharedSupportPath ¶](#Bundle_sharedSupportPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L154)

```
Bundle_sharedSupportPath :: proc "c" (
	self: ^Bundle, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **sharedSupportPath**

##### Syntax Usage

```
res := self->sharedSupportPath()
```

### [Bundle\_sharedSupportURL ¶](#Bundle_sharedSupportURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L109)

```
Bundle_sharedSupportURL :: proc "c" (
	self: ^Bundle, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **sharedSupportURL**

##### Syntax Usage

```
res := self->sharedSupportURL()
```

### [Bundle\_unload ¶](#Bundle_unload) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin#L57)

```
Bundle_unload :: proc "c" (
	self: ^Bundle, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Bundle](#Bundle)
* Name: **unload**

##### Syntax Usage

```
res := self->unload()
```

### [ClassFromString ¶](#ClassFromString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L62)

```
ClassFromString :: proc "c" (
	str: ^String, 
) -> ^.objc_class ---
```

### [Color\_blackColor ¶](#Color_blackColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L48)

```
Color_blackColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **blackColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.blackColor()
```

### [Color\_blueColor ¶](#Color_blueColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L83)

```
Color_blueColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **blueColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.blueColor()
```

### [Color\_colorSpace ¶](#Color_colorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L132)

```
Color_colorSpace :: proc "c" (
	self: ^Color, 
) -> ^ColorSpace {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorSpace**

##### Syntax Usage

```
res := self->colorSpace()
```

### [Color\_colorSpaceName ¶](#Color_colorSpaceName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L127)

```
Color_colorSpaceName :: proc "c" (
	self: ^Color, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorSpaceName**

##### Syntax Usage

```
res := self->colorSpaceName()
```

### [Color\_colorUsingColorSpaceName ¶](#Color_colorUsingColorSpaceName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L137)

```
Color_colorUsingColorSpaceName :: proc "c" (
	self:       ^Color, 
	colorSpace: ^String, 
	device:     ^Dictionary = nil, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorUsingColorSpaceName**

##### Syntax Usage

```
res := self->colorUsingColorSpaceName(
	colorSpace,
	device,
)
```

### [Color\_colorWithCalibratedHue ¶](#Color_colorWithCalibratedHue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L17)

```
Color_colorWithCalibratedHue :: proc "c" (
	hue, saturation, brightness, 
	alpha:                       CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithCalibratedHue**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithCalibratedHue(
	hue,
	saturation,
	brightness,
	alpha,
)
```

### [Color\_colorWithCalibratedRed ¶](#Color_colorWithCalibratedRed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L21)

```
Color_colorWithCalibratedRed :: proc "c" (
	red, green, blue, 
	alpha:            CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithCalibratedRed**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithCalibratedRed(
	red,
	green,
	blue,
	alpha,
)
```

### [Color\_colorWithCalibratedWhite ¶](#Color_colorWithCalibratedWhite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L25)

```
Color_colorWithCalibratedWhite :: proc "c" (
	white, 
	alpha: CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithCalibratedWhite**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithCalibratedWhite(
	white,
	alpha,
)
```

### [Color\_colorWithColorSpace ¶](#Color_colorWithColorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L121)

```
Color_colorWithColorSpace :: proc "c" (
	space:      ^ColorSpace, 
	components: []CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithColorSpace**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithColorSpace(
	space,
	components,
)
```

### [Color\_colorWithDeviceCyan ¶](#Color_colorWithDeviceCyan) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L30)

```
Color_colorWithDeviceCyan :: proc "c" (
	cyan, magenta, yellow, black, 
	alpha:                        CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithDeviceCyan**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithDeviceCyan(
	cyan,
	magenta,
	yellow,
	black,
	alpha,
)
```

### [Color\_colorWithDeviceHue ¶](#Color_colorWithDeviceHue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L34)

```
Color_colorWithDeviceHue :: proc "c" (
	hue, saturation, brightness, 
	alpha:                       CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithDeviceHue**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithDeviceHue(
	hue,
	saturation,
	brightness,
	alpha,
)
```

### [Color\_colorWithDeviceRed ¶](#Color_colorWithDeviceRed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L38)

```
Color_colorWithDeviceRed :: proc "c" (
	red, green, blue, 
	alpha:            CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithDeviceRed**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithDeviceRed(
	red,
	green,
	blue,
	alpha,
)
```

### [Color\_colorWithDeviceWhite ¶](#Color_colorWithDeviceWhite) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L42)

```
Color_colorWithDeviceWhite :: proc "c" (
	white, 
	alpha: CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithDeviceWhite**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithDeviceWhite(
	white,
	alpha,
)
```

### [Color\_colorWithSRGBRed ¶](#Color_colorWithSRGBRed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L12)

```
Color_colorWithSRGBRed :: proc "c" (
	red, green, blue, 
	alpha:            CoreFoundation.CGFloat, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **colorWithSRGBRed**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.colorWithSRGBRed(
	red,
	green,
	blue,
	alpha,
)
```

### [Color\_cyanColor ¶](#Color_cyanColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L78)

```
Color_cyanColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **cyanColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.cyanColor()
```

### [Color\_getCMYKA ¶](#Color_getCMYKA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L99)

```
Color_getCMYKA :: proc "c" (
	self: ^Color, 
) -> (cyan, magenta, yellow, black, alpha: CoreFoundation.CGFloat) {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **getCMYKA**

##### Syntax Usage

```
cyan, magenta, yellow, black, alpha := self->getCMYKA()
```

### [Color\_getComponents ¶](#Color_getComponents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L149)

```
Color_getComponents :: proc "c" (
	self:       ^Color, 
	components: [^]CoreFoundation.CGFloat, 
) {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **getComponents**

##### Syntax Usage

```
self->getComponents(components)
```

### [Color\_getHSBA ¶](#Color_getHSBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L104)

```
Color_getHSBA :: proc "c" (
	self: ^Color, 
) -> (hue, saturation, brightness, alpha: CoreFoundation.CGFloat) {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **getHSBA**

##### Syntax Usage

```
hue, saturation, brightness, alpha := self->getHSBA()
```

### [Color\_getRGBA ¶](#Color_getRGBA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L109)

```
Color_getRGBA :: proc "c" (
	self: ^Color, 
) -> (red, green, blue, alpha: CoreFoundation.CGFloat) {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **getRGBA**

##### Syntax Usage

```
red, green, blue, alpha := self->getRGBA()
```

### [Color\_getWhiteAlpha ¶](#Color_getWhiteAlpha) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L114)

```
Color_getWhiteAlpha :: proc "c" (
	self: ^Color, 
) -> (white, alpha: CoreFoundation.CGFloat) {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **getWhiteAlpha**

##### Syntax Usage

```
white, alpha := self->getWhiteAlpha()
```

### [Color\_greenColor ¶](#Color_greenColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L63)

```
Color_greenColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **greenColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.greenColor()
```

### [Color\_magentaColor ¶](#Color_magentaColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L88)

```
Color_magentaColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **magentaColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.magentaColor()
```

### [Color\_numberOfComponents ¶](#Color_numberOfComponents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L145)

```
Color_numberOfComponents :: proc "c" (
	self: ^Color, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **numberOfComponents**

##### Syntax Usage

```
res := self->numberOfComponents()
```

### [Color\_orangeColor ¶](#Color_orangeColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L68)

```
Color_orangeColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **orangeColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.orangeColor()
```

### [Color\_purpleColor ¶](#Color_purpleColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L73)

```
Color_purpleColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **purpleColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.purpleColor()
```

### [Color\_redColor ¶](#Color_redColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L58)

```
Color_redColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **redColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.redColor()
```

### [Color\_whiteColor ¶](#Color_whiteColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L53)

```
Color_whiteColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **whiteColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.whiteColor()
```

### [Color\_yellowColor ¶](#Color_yellowColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin#L93)

```
Color_yellowColor :: proc "c" () -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Color](#Color)
* Name: **yellowColor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Color.yellowColor()
```

### [Condition\_alloc ¶](#Condition_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L17)

```
Condition_alloc :: proc "c" () -> ^Condition {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Condition.alloc()
```

### [Condition\_broadcast ¶](#Condition_broadcast) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L42)

```
Condition_broadcast :: proc "c" (
	self: ^Condition, 
) {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **broadcast**

##### Syntax Usage

```
self->broadcast()
```

### [Condition\_init ¶](#Condition_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L22)

```
Condition_init :: proc "c" (
	self: ^Condition, 
) -> ^Condition {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Condition\_lock ¶](#Condition_lock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L47)

```
Condition_lock :: proc "c" (
	self: ^Condition, 
) {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **lock**

##### Syntax Usage

```
self->lock()
```

### [Condition\_signal ¶](#Condition_signal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L37)

```
Condition_signal :: proc "c" (
	self: ^Condition, 
) {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **signal**

##### Syntax Usage

```
self->signal()
```

### [Condition\_unlock ¶](#Condition_unlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L51)

```
Condition_unlock :: proc "c" (
	self: ^Condition, 
) {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **unlock**

##### Syntax Usage

```
self->unlock()
```

### [Condition\_wait ¶](#Condition_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L27)

```
Condition_wait :: proc "c" (
	self: ^Condition, 
) {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **wait**

##### Syntax Usage

```
self->wait()
```

### [Condition\_waitUntilDate ¶](#Condition_waitUntilDate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L32)

```
Condition_waitUntilDate :: proc "c" (
	self:  ^Condition, 
	limit: ^Date, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Condition](#Condition)
* Name: **waitUntilDate**

##### Syntax Usage

```
res := self->waitUntilDate(limit)
```

### [Cursor\_IBeamCursor ¶](#Cursor_IBeamCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L36)

```
Cursor_IBeamCursor :: proc "c" () -> ^Cursor {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **IBeamCursor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Cursor.IBeamCursor()
```

### [Cursor\_alloc ¶](#Cursor_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L7)

```
Cursor_alloc :: proc "c" () -> ^Cursor {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Cursor.alloc()
```

### [Cursor\_arrowCursor ¶](#Cursor_arrowCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L40)

```
Cursor_arrowCursor :: proc "c" () -> ^Cursor {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **arrowCursor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Cursor.arrowCursor()
```

### [Cursor\_currentCursor ¶](#Cursor_currentCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L32)

```
Cursor_currentCursor :: proc "c" () -> ^Cursor {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **currentCursor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Cursor.currentCursor()
```

### [Cursor\_hide ¶](#Cursor_hide) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L15)

```
Cursor_hide :: proc() {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **hide**
* Kind: *Class Method*

##### Syntax Usage

```
Cursor.hide()
```

### [Cursor\_initWithImage ¶](#Cursor_initWithImage) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L11)

```
Cursor_initWithImage :: proc "c" (
	self:    ^Cursor, 
	image:   ^Image, 
	hotSpot: CoreFoundation.CGPoint, 
) -> ^Cursor {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **initWithImage**

##### Syntax Usage

```
res := self->initWithImage(
	image,
	hotSpot,
)
```

### [Cursor\_pointingHandCursor ¶](#Cursor_pointingHandCursor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L44)

```
Cursor_pointingHandCursor :: proc "c" () -> ^Cursor {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **pointingHandCursor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Cursor.pointingHandCursor()
```

### [Cursor\_set ¶](#Cursor_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L28)

```
Cursor_set :: proc(
	self: ^Cursor, 
) {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **set**

##### Syntax Usage

```
self->set()
```

### [Cursor\_setHiddenUntilMouseMoves ¶](#Cursor_setHiddenUntilMouseMoves) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L23)

```
Cursor_setHiddenUntilMouseMoves :: proc(
	flag: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **setHiddenUntilMouseMoves**
* Kind: *Class Method*

##### Syntax Usage

```
Cursor.setHiddenUntilMouseMoves(flag)
```

### [Cursor\_unhide ¶](#Cursor_unhide) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin#L19)

```
Cursor_unhide :: proc() {…}
```

##### Objective-C Method Information

* Class: [Cursor](#Cursor)
* Name: **unhide**
* Kind: *Class Method*

##### Syntax Usage

```
Cursor.unhide()
```

### [Data\_alloc ¶](#Data_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin#L7)

```
Data_alloc :: proc "c" () -> ^Data {…}
```

##### Objective-C Method Information

* Class: [Data](#Data)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Data.alloc()
```

### [Data\_init ¶](#Data_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin#L12)

```
Data_init :: proc "c" (
	self: ^Data, 
) -> ^Data {…}
```

##### Objective-C Method Information

* Class: [Data](#Data)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Data\_initWithBytes ¶](#Data_initWithBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin#L17)

```
Data_initWithBytes :: proc "c" (
	self:  ^Data, 
	bytes: []u8, 
) -> ^Data {…}
```

##### Objective-C Method Information

* Class: [Data](#Data)
* Name: **initWithBytes**

##### Syntax Usage

```
res := self->initWithBytes(bytes)
```

### [Data\_initWithBytesNoCopy ¶](#Data_initWithBytesNoCopy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin#L22)

```
Data_initWithBytesNoCopy :: proc "c" (
	self:         ^Data, 
	bytes:        []u8, 
	freeWhenDone: bool, 
) -> ^Data {…}
```

##### Objective-C Method Information

* Class: [Data](#Data)
* Name: **initWithBytesNoCopy**

##### Syntax Usage

```
res := self->initWithBytesNoCopy(
	bytes,
	freeWhenDone,
)
```

### [Data\_length ¶](#Data_length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin#L39)

```
Data_length :: proc "c" (
	self: ^Data, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Data](#Data)
* Name: **length**

##### Syntax Usage

```
res := self->length()
```

### [Data\_mutableBytes ¶](#Data_mutableBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin#L34)

```
Data_mutableBytes :: proc "c" (
	self: ^Data, 
) -> rawptr {…}
```

##### Objective-C Method Information

* Class: [Data](#Data)
* Name: **mutableBytes**

##### Syntax Usage

```
res := self->mutableBytes()
```

### [Date\_alloc ¶](#Date_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin#L7)

```
Date_alloc :: proc "c" () -> ^Date {…}
```

##### Objective-C Method Information

* Class: [Date](#Date)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Date.alloc()
```

### [Date\_dateWithTimeIntervalSinceNow ¶](#Date_dateWithTimeIntervalSinceNow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin#L17)

```
Date_dateWithTimeIntervalSinceNow :: proc "c" (
	secs: TimeInterval, 
) -> ^Date {…}
```

##### Objective-C Method Information

* Class: [Date](#Date)
* Name: **dateWithTimeIntervalSinceNow**

##### Syntax Usage

```
res := self->dateWithTimeIntervalSinceNow()
```

### [Date\_distantFuture ¶](#Date_distantFuture) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin#L27)

```
Date_distantFuture :: proc "c" () -> ^Date {…}
```

##### Objective-C Method Information

* Class: [Date](#Date)
* Name: **distantFuture**
* Kind: *Class Method*

##### Syntax Usage

```
res := Date.distantFuture()
```

### [Date\_distantPast ¶](#Date_distantPast) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin#L32)

```
Date_distantPast :: proc "c" () -> ^Date {…}
```

##### Objective-C Method Information

* Class: [Date](#Date)
* Name: **distantPast**
* Kind: *Class Method*

##### Syntax Usage

```
res := Date.distantPast()
```

### [Date\_init ¶](#Date_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin#L12)

```
Date_init :: proc "c" (
	self: ^Date, 
) -> ^Date {…}
```

##### Objective-C Method Information

* Class: [Date](#Date)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Date\_timeIntervalSince1970 ¶](#Date_timeIntervalSince1970) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin#L22)

```
Date_timeIntervalSince1970 :: proc "c" (
	self: ^Date, 
) -> f64 {…}
```

##### Objective-C Method Information

* Class: [Date](#Date)
* Name: **timeIntervalSince1970**

##### Syntax Usage

```
res := self->timeIntervalSince1970()
```

### [DeallocateObject ¶](#DeallocateObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L100)

```
DeallocateObject :: proc "c" (
	object: ^.objc_object, 
) ---
```

### [Dictionary\_alloc ¶](#Dictionary_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L23)

```
Dictionary_alloc :: proc "c" () -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Dictionary.alloc()
```

### [Dictionary\_count ¶](#Dictionary_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L43)

```
Dictionary_count :: proc "c" (
	self: ^Dictionary, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **count**

##### Syntax Usage

```
res := self->count()
```

### [Dictionary\_dictionary ¶](#Dictionary_dictionary) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L7)

```
Dictionary_dictionary :: proc "c" () -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **dictionary**
* Kind: *Class Method*

##### Syntax Usage

```
res := Dictionary.dictionary()
```

### [Dictionary\_dictionaryWithObject ¶](#Dictionary_dictionaryWithObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L12)

```
Dictionary_dictionaryWithObject :: proc "c" (
	object: ^Object, 
	forKey: ^Object, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **dictionaryWithObject**
* Kind: *Class Method*

##### Syntax Usage

```
res := Dictionary.dictionaryWithObject(
	object,
	forKey,
)
```

### [Dictionary\_dictionaryWithObjects ¶](#Dictionary_dictionaryWithObjects) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L17)

```
Dictionary_dictionaryWithObjects :: proc "c" (
	objects: [^]^Object, 
	forKeys: [^]^Object, 
	count:   UInteger, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **dictionaryWithObjects**
* Kind: *Class Method*

##### Syntax Usage

```
res := Dictionary.dictionaryWithObjects(
	objects,
	forKeys,
	count,
)
```

### [Dictionary\_init ¶](#Dictionary_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L28)

```
Dictionary_init :: proc "c" (
	self: ^Dictionary, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Dictionary\_initWithObjects ¶](#Dictionary_initWithObjects) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L33)

```
Dictionary_initWithObjects :: proc "c" (
	self:    ^Dictionary, 
	objects: [^]^Object, 
	forKeys: [^]^Object, 
	count:   UInteger, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **initWithObjects**

##### Syntax Usage

```
res := self->initWithObjects(
	objects,
	forKeys,
	count,
)
```

### [Dictionary\_keyEnumerator ¶](#Dictionary_keyEnumerator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L48)

```
Dictionary_keyEnumerator :: proc "c" (
	self:    ^Dictionary, 
	$KeyType: typeid, 
) -> (enumerator: ^Enumerator($T=typeid)) {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **keyEnumerator**

##### Syntax Usage

```
enumerator := self->keyEnumerator(KeyType)
```

### [Dictionary\_objectForKey ¶](#Dictionary_objectForKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin#L38)

```
Dictionary_objectForKey :: proc "c" (
	self: ^Dictionary, 
	key:  ^Object, 
) -> ^Object {…}
```

##### Objective-C Method Information

* Class: [Dictionary](#Dictionary)
* Name: **objectForKey**

##### Syntax Usage

```
res := self->objectForKey(key)
```

### [Enumerator\_allObjects ¶](#Enumerator_allObjects) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L42)

```
Enumerator_allObjects :: proc "c" (
	self: ^$E/Enumerator($T), 
) -> (all: ^Array) {…}
```

### [Enumerator\_iterator ¶](#Enumerator_iterator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L46)

```
Enumerator_iterator :: proc "contextless" (
	self: ^$E/Enumerator($T), 
) -> (obj: $$deferred_return, ok: bool) {…}
```

### [Enumerator\_nextObject ¶](#Enumerator_nextObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L38)

```
Enumerator_nextObject :: proc "c" (
	self: ^$E/Enumerator($T), 
) -> $$deferred_return {…}
```

### [Error\_alloc ¶](#Error_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L36)

```
Error_alloc :: proc "c" () -> ^Error {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Error.alloc()
```

### [Error\_code ¶](#Error_code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L56)

```
Error_code :: proc "c" (
	self: ^Error, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **code**

##### Syntax Usage

```
res := self->code()
```

### [Error\_domain ¶](#Error_domain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L61)

```
Error_domain :: proc "c" (
	self: ^Error, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **domain**

##### Syntax Usage

```
res := self->domain()
```

### [Error\_errorWithDomain ¶](#Error_errorWithDomain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L46)

```
Error_errorWithDomain :: proc "c" (
	domain:   ^String, 
	code:     Integer, 
	userInfo: ^Dictionary, 
) -> ^Error {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **errorWithDomain**
* Kind: *Class Method*

##### Syntax Usage

```
res := Error.errorWithDomain(
	domain,
	code,
	userInfo,
)
```

### [Error\_init ¶](#Error_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L41)

```
Error_init :: proc "c" (
	self: ^Error, 
) -> ^Error {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Error\_initWithDomain ¶](#Error_initWithDomain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L51)

```
Error_initWithDomain :: proc "c" (
	self:     ^Error, 
	domain:   ^String, 
	code:     Integer, 
	userInfo: ^Dictionary, 
) -> ^Error {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **initWithDomain**

##### Syntax Usage

```
res := self->initWithDomain(
	domain,
	code,
	userInfo,
)
```

### [Error\_localizedDescription ¶](#Error_localizedDescription) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L71)

```
Error_localizedDescription :: proc "c" (
	self: ^Error, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **localizedDescription**

##### Syntax Usage

```
res := self->localizedDescription()
```

### [Error\_localizedFailureReason ¶](#Error_localizedFailureReason) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L86)

```
Error_localizedFailureReason :: proc "c" (
	self: ^Error, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **localizedFailureReason**

##### Syntax Usage

```
res := self->localizedFailureReason()
```

### [Error\_localizedRecoveryOptions ¶](#Error_localizedRecoveryOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L76)

```
Error_localizedRecoveryOptions :: proc "c" (
	self: ^Error, 
) -> (options: ^Array) {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **localizedRecoveryOptions**

##### Syntax Usage

```
options := self->localizedRecoveryOptions()
```

### [Error\_localizedRecoverySuggestion ¶](#Error_localizedRecoverySuggestion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L81)

```
Error_localizedRecoverySuggestion :: proc "c" (
	self: ^Error, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **localizedRecoverySuggestion**

##### Syntax Usage

```
res := self->localizedRecoverySuggestion()
```

### [Error\_userInfo ¶](#Error_userInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin#L66)

```
Error_userInfo :: proc "c" (
	self: ^Error, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Error](#Error)
* Name: **userInfo**

##### Syntax Usage

```
res := self->userInfo()
```

### [Event\_absolute ¶](#Event_absolute) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L448)

```
Event_absolute :: proc "c" (
	self: ^Event, 
) -> (x, y, z: Integer) {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **absolute**

##### Syntax Usage

```
x, y, z := self->absolute()
```

### [Event\_absoluteX ¶](#Event_absoluteX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L435)

```
Event_absoluteX :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **absoluteX**

##### Syntax Usage

```
res := self->absoluteX()
```

### [Event\_absoluteY ¶](#Event_absoluteY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L439)

```
Event_absoluteY :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **absoluteY**

##### Syntax Usage

```
res := self->absoluteY()
```

### [Event\_absoluteZ ¶](#Event_absoluteZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L443)

```
Event_absoluteZ :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **absoluteZ**

##### Syntax Usage

```
res := self->absoluteZ()
```

### [Event\_buttonMask ¶](#Event_buttonMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L457)

```
Event_buttonMask :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **buttonMask**

##### Syntax Usage

```
res := self->buttonMask()
```

### [Event\_buttonNumber ¶](#Event_buttonNumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L315)

```
Event_buttonNumber :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **buttonNumber**

##### Syntax Usage

```
res := self->buttonNumber()
```

 

for NSOtherMouse events, but will return valid constants for NSLeftMouse and NSRightMouse

### [Event\_capabilityMask ¶](#Event_capabilityMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L506)

```
Event_capabilityMask :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **capabilityMask**

##### Syntax Usage

```
res := self->capabilityMask()
```

### [Event\_characters ¶](#Event_characters) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L402)

```
Event_characters :: proc "c" (
	self: ^Event, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **characters**

##### Syntax Usage

```
res := self->characters()
```

### [Event\_charactersIgnoringModifiers ¶](#Event_charactersIgnoringModifiers) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L406)

```
Event_charactersIgnoringModifiers :: proc "c" (
	self: ^Event, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **charactersIgnoringModifiers**

##### Syntax Usage

```
res := self->charactersIgnoringModifiers()
```

### [Event\_clickCount ¶](#Event_clickCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L309)

```
Event_clickCount :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **clickCount**

##### Syntax Usage

```
res := self->clickCount()
```

### [Event\_data1 ¶](#Event_data1) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L425)

```
Event_data1 :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **data1**

##### Syntax Usage

```
res := self->data1()
```

### [Event\_data2 ¶](#Event_data2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L429)

```
Event_data2 :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **data2**

##### Syntax Usage

```
res := self->data2()
```

### [Event\_delta ¶](#Event_delta) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L356)

```
Event_delta :: proc "c" (
	self: ^Event, 
) -> (x, y, z: CoreFoundation.CGFloat) {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **delta**

##### Syntax Usage

```
x, y, z := self->delta()
```

### [Event\_deltaX ¶](#Event_deltaX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L344)

```
Event_deltaX :: proc "c" (
	self: ^Event, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **deltaX**

##### Syntax Usage

```
res := self->deltaX()
```

### [Event\_deltaY ¶](#Event_deltaY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L348)

```
Event_deltaY :: proc "c" (
	self: ^Event, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **deltaY**

##### Syntax Usage

```
res := self->deltaY()
```

### [Event\_deltaZ ¶](#Event_deltaZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L352)

```
Event_deltaZ :: proc "c" (
	self: ^Event, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **deltaZ**

##### Syntax Usage

```
res := self->deltaZ()
```

### [Event\_eventNumber ¶](#Event_eventNumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L321)

```
Event_eventNumber :: proc "c" (
	self: ^Event, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **eventNumber**

##### Syntax Usage

```
res := self->eventNumber()
```

 

these messages are valid for all mouse down/up/drag and enter/exit events

### [Event\_hasPreciseScrollingDeltas ¶](#Event_hasPreciseScrollingDeltas) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L364)

```
Event_hasPreciseScrollingDeltas :: proc "c" (
	self: ^Event, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **hasPreciseScrollingDeltas**

##### Syntax Usage

```
res := self->hasPreciseScrollingDeltas()
```

### [Event\_isARepeat ¶](#Event_isARepeat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L410)

```
Event_isARepeat :: proc "c" (
	self: ^Event, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **isARepeat**

##### Syntax Usage

```
res := self->isARepeat()
```

### [Event\_isDirectionInvertedFromDevice ¶](#Event_isDirectionInvertedFromDevice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L397)

```
Event_isDirectionInvertedFromDevice :: proc "c" (
	self: ^Event, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **isDirectionInvertedFromDevice**

##### Syntax Usage

```
res := self->isDirectionInvertedFromDevice()
```

### [Event\_isEnteringProximity ¶](#Event_isEnteringProximity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L514)

```
Event_isEnteringProximity :: proc "c" (
	self: ^Event, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **isEnteringProximity**

##### Syntax Usage

```
res := self->isEnteringProximity()
```

### [Event\_isSwipeTrackingFromScrollEventsEnabled ¶](#Event_isSwipeTrackingFromScrollEventsEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L520)

```
Event_isSwipeTrackingFromScrollEventsEnabled :: proc "c" (
	self: ^Event, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **isSwipeTrackingFromScrollEventsEnabled**

##### Syntax Usage

```
res := self->isSwipeTrackingFromScrollEventsEnabled()
```

### [Event\_keyCode ¶](#Event_keyCode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L415)

```
Event_keyCode :: proc "c" (
	self: ^Event, 
) -> u16 {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **keyCode**

##### Syntax Usage

```
res := self->keyCode()
```

### [Event\_locationInWindow ¶](#Event_locationInWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L333)

```
Event_locationInWindow :: proc "c" (
	self: ^Event, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **locationInWindow**

##### Syntax Usage

```
res := self->locationInWindow()
```

 

-locationInWindow is valid for all mouse-related events

### [Event\_modifierFlags ¶](#Event_modifierFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L290)

```
Event_modifierFlags :: proc "c" (
	self: ^Event, 
) -> EventModifierFlags {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **modifierFlags**

##### Syntax Usage

```
res := self->modifierFlags()
```

### [Event\_momentumPhase ¶](#Event_momentumPhase) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L387)

```
Event_momentumPhase :: proc "c" (
	self: ^Event, 
) -> EventPhase {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **momentumPhase**

##### Syntax Usage

```
res := self->momentumPhase()
```

### [Event\_mouseLocation ¶](#Event_mouseLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L338)

```
Event_mouseLocation :: proc "c" () -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **mouseLocation**
* Kind: *Class Method*

##### Syntax Usage

```
res := Event.mouseLocation()
```

### [Event\_otherEventWithType ¶](#Event_otherEventWithType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L256)

```
Event_otherEventWithType :: proc "c" (
	type:          EventType, 
	location:      CoreFoundation.CGPoint, 
	flags:         EventModifierFlags, 
	time:          TimeInterval, 
	window_number: Integer, 
	ctx:           ^.objc_object, 
	subtype:       i16, 
	data1:         Integer, 
	data2:         Integer, 
) -> ^Event {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **otherEventWithType**
* Kind: *Class Method*

##### Syntax Usage

```
res := Event.otherEventWithType(
	type,
	location,
	flags,
	time,
	window_number,
	ctx,
	subtype,
	data1,
	data2,
)
```

### [Event\_phase ¶](#Event_phase) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L391)

```
Event_phase :: proc "c" (
	self: ^Event, 
) -> EventPhase {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **phase**

##### Syntax Usage

```
res := self->phase()
```

### [Event\_pointingDeviceID ¶](#Event_pointingDeviceID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L486)

```
Event_pointingDeviceID :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **pointingDeviceID**

##### Syntax Usage

```
res := self->pointingDeviceID()
```

### [Event\_pointingDeviceSerialNumber ¶](#Event_pointingDeviceSerialNumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L498)

```
Event_pointingDeviceSerialNumber :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **pointingDeviceSerialNumber**

##### Syntax Usage

```
res := self->pointingDeviceSerialNumber()
```

### [Event\_pointingDeviceType ¶](#Event_pointingDeviceType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L510)

```
Event_pointingDeviceType :: proc "c" (
	self: ^Event, 
) -> PointingDeviceType {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **pointingDeviceType**

##### Syntax Usage

```
res := self->pointingDeviceType()
```

### [Event\_pressure ¶](#Event_pressure) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L327)

```
Event_pressure :: proc "c" (
	self: ^Event, 
) -> f32 {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **pressure**

##### Syntax Usage

```
res := self->pressure()
```

 

-pressure is valid for all mouse down/up/drag events, and is also valid for NSTabletPoint events on 10.4 or later

### [Event\_scrollingDelta ¶](#Event_scrollingDelta) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L378)

```
Event_scrollingDelta :: proc "c" (
	self: ^Event, 
) -> (x, y: CoreFoundation.CGFloat) {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **scrollingDelta**

##### Syntax Usage

```
x, y := self->scrollingDelta()
```

### [Event\_scrollingDeltaX ¶](#Event_scrollingDeltaX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L370)

```
Event_scrollingDeltaX :: proc "c" (
	self: ^Event, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **scrollingDeltaX**

##### Syntax Usage

```
res := self->scrollingDeltaX()
```

### [Event\_scrollingDeltaY ¶](#Event_scrollingDeltaY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L374)

```
Event_scrollingDeltaY :: proc "c" (
	self: ^Event, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **scrollingDeltaY**

##### Syntax Usage

```
res := self->scrollingDeltaY()
```

### [Event\_subtype ¶](#Event_subtype) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L420)

```
Event_subtype :: proc "c" (
	self: ^Event, 
) -> i16 {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **subtype**

##### Syntax Usage

```
res := self->subtype()
```

### [Event\_systemTabletID ¶](#Event_systemTabletID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L490)

```
Event_systemTabletID :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **systemTabletID**

##### Syntax Usage

```
res := self->systemTabletID()
```

### [Event\_tabletID ¶](#Event_tabletID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L482)

```
Event_tabletID :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **tabletID**

##### Syntax Usage

```
res := self->tabletID()
```

### [Event\_tangentialPressure ¶](#Event_tangentialPressure) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L467)

```
Event_tangentialPressure :: proc "c" (
	self: ^Event, 
) -> f32 {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **tangentialPressure**

##### Syntax Usage

```
res := self->tangentialPressure()
```

### [Event\_timestamp ¶](#Event_timestamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L294)

```
Event_timestamp :: proc "c" (
	self: ^Event, 
) -> TimeInterval {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **timestamp**

##### Syntax Usage

```
res := self->timestamp()
```

### [Event\_type ¶](#Event_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L286)

```
Event_type :: proc "c" (
	self: ^Event, 
) -> EventType {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **type**

##### Syntax Usage

```
res := self->type()
```

### [Event\_uniqueID ¶](#Event_uniqueID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L502)

```
Event_uniqueID :: proc "c" (
	self: ^Event, 
) -> u64 {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **uniqueID**

##### Syntax Usage

```
res := self->uniqueID()
```

### [Event\_vendorDefined ¶](#Event_vendorDefined) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L472)

```
Event_vendorDefined :: proc "c" (
	self: ^Event, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **vendorDefined**

##### Syntax Usage

```
res := self->vendorDefined()
```

### [Event\_vendorID ¶](#Event_vendorID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L478)

```
Event_vendorID :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **vendorID**

##### Syntax Usage

```
res := self->vendorID()
```

### [Event\_vendorPointingDeviceType ¶](#Event_vendorPointingDeviceType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L494)

```
Event_vendorPointingDeviceType :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **vendorPointingDeviceType**

##### Syntax Usage

```
res := self->vendorPointingDeviceType()
```

### [Event\_window ¶](#Event_window) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L298)

```
Event_window :: proc "c" (
	self: ^Event, 
) -> ^Window {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **window**

##### Syntax Usage

```
res := self->window()
```

### [Event\_windowNumber ¶](#Event_windowNumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L302)

```
Event_windowNumber :: proc "c" (
	self: ^Event, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **windowNumber**

##### Syntax Usage

```
res := self->windowNumber()
```

### [FastEnumeration\_alloc ¶](#FastEnumeration_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L23)

```
FastEnumeration_alloc :: proc "c" () -> ^FastEnumeration {…}
```

##### Objective-C Method Information

* Class: [FastEnumeration](#FastEnumeration)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := FastEnumeration.alloc()
```

### [FastEnumeration\_countByEnumerating ¶](#FastEnumeration_countByEnumerating) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L34)

```
FastEnumeration_countByEnumerating :: proc "c" (
	self:   ^FastEnumeration, 
	state:  ^FastEnumerationState, 
	buffer: [^]^Object, 
	len:    UInteger, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [FastEnumeration](#FastEnumeration)
* Name: **countByEnumerating**

##### Syntax Usage

```
res := self->countByEnumerating(
	state,
	buffer,
	len,
)
```

### [FastEnumeration\_init ¶](#FastEnumeration_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin#L28)

```
FastEnumeration_init :: proc "c" (
	self: ^FastEnumeration, 
) -> ^FastEnumeration {…}
```

##### Objective-C Method Information

* Class: [FastEnumeration](#FastEnumeration)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Image\_addRepresentation ¶](#Image_addRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSImage.odin#L17)

```
Image_addRepresentation :: proc(
	self: ^Image, 
	rep:  ^ImageRep, 
) {…}
```

##### Objective-C Method Information

* Class: [Image](#Image)
* Name: **addRepresentation**

##### Syntax Usage

```
self->addRepresentation(rep)
```

### [Image\_alloc ¶](#Image_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSImage.odin#L7)

```
Image_alloc :: proc "c" () -> ^Image {…}
```

##### Objective-C Method Information

* Class: [Image](#Image)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Image.alloc()
```

### [Image\_initWithSize ¶](#Image_initWithSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSImage.odin#L12)

```
Image_initWithSize :: proc "c" (
	self: ^Image, 
	size: CoreFoundation.CGSize, 
) -> ^Image {…}
```

##### Objective-C Method Information

* Class: [Image](#Image)
* Name: **initWithSize**

##### Syntax Usage

```
res := self->initWithSize(size)
```

### [Layer\_addSublayer ¶](#Layer_addSublayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L671)

```
Layer_addSublayer :: proc "c" (
	self:  ^Layer, 
	layer: ^Layer, 
) {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **addSublayer**

##### Syntax Usage

```
self->addSublayer(layer)
```

### [Layer\_contents ¶](#Layer_contents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L643)

```
Layer_contents :: proc "c" (
	self: ^Layer, 
) -> rawptr {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **contents**

##### Syntax Usage

```
res := self->contents()
```

### [Layer\_contentsScale ¶](#Layer_contentsScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L651)

```
Layer_contentsScale :: proc "c" (
	self: ^Layer, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **contentsScale**

##### Syntax Usage

```
res := self->contentsScale()
```

### [Layer\_frame ¶](#Layer_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L659)

```
Layer_frame :: proc "c" (
	self: ^Layer, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **frame**

##### Syntax Usage

```
res := self->frame()
```

### [Layer\_position ¶](#Layer_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L663)

```
Layer_position :: proc "c" (
	self: ^Layer, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **position**

##### Syntax Usage

```
res := self->position()
```

### [Layer\_setContents ¶](#Layer_setContents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L647)

```
Layer_setContents :: proc "c" (
	self:     ^Layer, 
	contents: rawptr, 
) {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **setContents**

##### Syntax Usage

```
self->setContents(contents)
```

### [Layer\_setContentsScale ¶](#Layer_setContentsScale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L655)

```
Layer_setContentsScale :: proc "c" (
	self:  ^Layer, 
	scale: CoreFoundation.CGFloat, 
) {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **setContentsScale**

##### Syntax Usage

```
self->setContentsScale(scale)
```

### [Layer\_setPosition ¶](#Layer_setPosition) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L667)

```
Layer_setPosition :: proc "c" (
	self:     ^Layer, 
	position: CoreFoundation.CGPoint, 
) {…}
```

##### Objective-C Method Information

* Class: [Layer](#Layer)
* Name: **setPosition**

##### Syntax Usage

```
self->setPosition(position)
```

### [Locking\_lock ¶](#Locking_lock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L5)

```
Locking_lock :: proc "c" (
	self: ^Locking($T), 
) {…}
```

### [Locking\_unlock ¶](#Locking_unlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin#L8)

```
Locking_unlock :: proc "c" (
	self: ^Locking($T), 
) {…}
```

### [MakeConstantString ¶](#MakeConstantString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L52)

```
MakeConstantString :: proc "c" (
	#const c: cstring, 
) -> ^String {…}
```

 

CFString is 'toll-free bridged' with its Cocoa Foundation counterpart, NSString.

### [MaxX ¶](#MaxX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L9)

```
MaxX :: proc(
	aRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGFloat {…}
```

### [MaxY ¶](#MaxY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L12)

```
MaxY :: proc(
	aRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGFloat {…}
```

### [MenuDelegate\_confinementRectForMenu ¶](#MenuDelegate_confinementRectForMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L556)

```
MenuDelegate_confinementRectForMenu :: proc "c" (
	self:   ^MenuDelegate, 
	menu:   ^Menu, 
	screen: ^Screen, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **confinementRectForMenu**

##### Syntax Usage

```
res := self->confinementRectForMenu(
	menu,
	screen,
)
```

### [MenuDelegate\_menuDidClose ¶](#MenuDelegate_menuDidClose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L548)

```
MenuDelegate_menuDidClose :: proc "c" (
	self: ^MenuDelegate, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **menuDidClose**

##### Syntax Usage

```
self->menuDidClose(menu)
```

### [MenuDelegate\_menuHasKeyEquivalent ¶](#MenuDelegate_menuHasKeyEquivalent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L540)

```
MenuDelegate_menuHasKeyEquivalent :: proc "c" (
	self:   ^MenuDelegate, 
	menu:   ^Menu, 
	event:  ^Event, 
	target: ^^.objc_object, 
	action: ^^.objc_selector, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **menuHasKeyEquivalent**

##### Syntax Usage

```
res := self->menuHasKeyEquivalent(
	menu,
	event,
	target,
	action,
)
```

### [MenuDelegate\_menuNeedsUpdate ¶](#MenuDelegate_menuNeedsUpdate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L528)

```
MenuDelegate_menuNeedsUpdate :: proc "c" (
	self: ^MenuDelegate, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **menuNeedsUpdate**

##### Syntax Usage

```
self->menuNeedsUpdate(menu)
```

### [MenuDelegate\_menuWillOpen ¶](#MenuDelegate_menuWillOpen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L544)

```
MenuDelegate_menuWillOpen :: proc "c" (
	self: ^MenuDelegate, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **menuWillOpen**

##### Syntax Usage

```
self->menuWillOpen(menu)
```

### [MenuDelegate\_menu\_updateItem\_atIndex\_shouldCancel ¶](#MenuDelegate_menu_updateItem_atIndex_shouldCancel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L536)

```
MenuDelegate_menu_updateItem_atIndex_shouldCancel :: proc "c" (
	self:         ^MenuDelegate, 
	menu:         ^Menu, 
	item:         ^MenuItem, 
	index:        Integer, 
	shouldCancel: bool, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **menu\_updateItem\_atIndex\_shouldCancel**

##### Syntax Usage

```
res := self->menu_updateItem_atIndex_shouldCancel(
	menu,
	item,
	index,
	shouldCancel,
)
```

##### Related Procedure Groups

* [MenuDelegate\_menu](/core/sys/darwin/Foundation/#MenuDelegate_menu)

### [MenuDelegate\_menu\_willHighlightItem ¶](#MenuDelegate_menu_willHighlightItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L552)

```
MenuDelegate_menu_willHighlightItem :: proc "c" (
	self: ^MenuDelegate, 
	menu: ^Menu, 
	item: ^MenuItem, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **menu\_willHighlightItem**

##### Syntax Usage

```
self->menu_willHighlightItem(
	menu,
	item,
)
```

##### Related Procedure Groups

* [MenuDelegate\_menu](/core/sys/darwin/Foundation/#MenuDelegate_menu)

### [MenuDelegate\_numberOfItemsInMenu ¶](#MenuDelegate_numberOfItemsInMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L532)

```
MenuDelegate_numberOfItemsInMenu :: proc "c" (
	self: ^MenuDelegate, 
	menu: ^Menu, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **numberOfItemsInMenu**

##### Syntax Usage

```
res := self->numberOfItemsInMenu(menu)
```

### [MenuItem\_accessInstanceVariablesDirectly ¶](#MenuItem_accessInstanceVariablesDirectly) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L417)

```
MenuItem_accessInstanceVariablesDirectly :: proc "c" () -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **accessInstanceVariablesDirectly**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.accessInstanceVariablesDirectly()
```

### [MenuItem\_action ¶](#MenuItem_action) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L241)

```
MenuItem_action :: proc "c" (
	self: ^MenuItem, 
) -> ^.objc_selector {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **action**

##### Syntax Usage

```
res := self->action()
```

### [MenuItem\_alloc ¶](#MenuItem_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L337)

```
MenuItem_alloc :: proc "c" () -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.alloc()
```

### [MenuItem\_allocWithZone ¶](#MenuItem_allocWithZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L333)

```
MenuItem_allocWithZone :: proc "c" (
	zone: ^Zone, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **allocWithZone**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.allocWithZone(zone)
```

### [MenuItem\_allowsAutomaticKeyEquivalentLocalization ¶](#MenuItem_allowsAutomaticKeyEquivalentLocalization) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L153)

```
MenuItem_allowsAutomaticKeyEquivalentLocalization :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **allowsAutomaticKeyEquivalentLocalization**

##### Syntax Usage

```
res := self->allowsAutomaticKeyEquivalentLocalization()
```

### [MenuItem\_allowsAutomaticKeyEquivalentMirroring ¶](#MenuItem_allowsAutomaticKeyEquivalentMirroring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L161)

```
MenuItem_allowsAutomaticKeyEquivalentMirroring :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **allowsAutomaticKeyEquivalentMirroring**

##### Syntax Usage

```
res := self->allowsAutomaticKeyEquivalentMirroring()
```

### [MenuItem\_allowsKeyEquivalentWhenHidden ¶](#MenuItem_allowsKeyEquivalentWhenHidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L145)

```
MenuItem_allowsKeyEquivalentWhenHidden :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **allowsKeyEquivalentWhenHidden**

##### Syntax Usage

```
res := self->allowsKeyEquivalentWhenHidden()
```

### [MenuItem\_automaticallyNotifiesObserversForKey ¶](#MenuItem_automaticallyNotifiesObserversForKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L429)

```
MenuItem_automaticallyNotifiesObserversForKey :: proc "c" (
	key: ^String, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **automaticallyNotifiesObserversForKey**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.automaticallyNotifiesObserversForKey(key)
```

### [MenuItem\_cancelPreviousPerformRequestsWithTarget\_ ¶](#MenuItem_cancelPreviousPerformRequestsWithTarget_) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L413)

```
MenuItem_cancelPreviousPerformRequestsWithTarget_ :: proc "c" (
	aTarget: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **cancelPreviousPerformRequestsWithTarget\_**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.cancelPreviousPerformRequestsWithTarget_(aTarget)
```

##### Related Procedure Groups

* [MenuItem\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget)

### [MenuItem\_cancelPreviousPerformRequestsWithTarget\_selector\_object ¶](#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L409)

```
MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object :: proc "c" (
	aTarget:    ^.objc_object, 
	aSelector:  ^.objc_selector, 
	anArgument: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **cancelPreviousPerformRequestsWithTarget\_selector\_object**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.cancelPreviousPerformRequestsWithTarget_selector_object(
	aTarget,
	aSelector,
	anArgument,
)
```

##### Related Procedure Groups

* [MenuItem\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#MenuItem_cancelPreviousPerformRequestsWithTarget)

### [MenuItem\_class ¶](#MenuItem_class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L385)

```
MenuItem_class :: proc "c" () -> ^.objc_class {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **class**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.class()
```

### [MenuItem\_classFallbacksForKeyedArchiver ¶](#MenuItem_classFallbacksForKeyedArchiver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L437)

```
MenuItem_classFallbacksForKeyedArchiver :: proc "c" () -> ^Array {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **classFallbacksForKeyedArchiver**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.classFallbacksForKeyedArchiver()
```

### [MenuItem\_classForKeyedUnarchiver ¶](#MenuItem_classForKeyedUnarchiver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L441)

```
MenuItem_classForKeyedUnarchiver :: proc "c" () -> ^.objc_class {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **classForKeyedUnarchiver**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.classForKeyedUnarchiver()
```

### [MenuItem\_conformsToProtocol ¶](#MenuItem_conformsToProtocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L353)

```
MenuItem_conformsToProtocol :: proc "c" (
	protocol: ^Protocol, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **conformsToProtocol**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.conformsToProtocol(protocol)
```

### [MenuItem\_copyWithZone ¶](#MenuItem_copyWithZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L341)

```
MenuItem_copyWithZone :: proc "c" (
	zone: ^Zone, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **copyWithZone**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.copyWithZone(zone)
```

### [MenuItem\_debugDescription ¶](#MenuItem_debugDescription) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L393)

```
MenuItem_debugDescription :: proc "c" () -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **debugDescription**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.debugDescription()
```

### [MenuItem\_defaultPlaceholderForMarker ¶](#MenuItem_defaultPlaceholderForMarker) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L453)

```
MenuItem_defaultPlaceholderForMarker :: proc "c" (
	marker:  ^.objc_object, 
	binding: ^String, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **defaultPlaceholderForMarker**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.defaultPlaceholderForMarker(
	marker,
	binding,
)
```

### [MenuItem\_description ¶](#MenuItem_description) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L389)

```
MenuItem_description :: proc "c" () -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **description**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.description()
```

### [MenuItem\_exposeBinding ¶](#MenuItem_exposeBinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L445)

```
MenuItem_exposeBinding :: proc "c" (
	binding: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **exposeBinding**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.exposeBinding(binding)
```

### [MenuItem\_hasSubmenu ¶](#MenuItem_hasSubmenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L77)

```
MenuItem_hasSubmenu :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **hasSubmenu**

##### Syntax Usage

```
res := self->hasSubmenu()
```

### [MenuItem\_hash ¶](#MenuItem_hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L377)

```
MenuItem_hash :: proc "c" () -> UInteger {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **hash**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.hash()
```

### [MenuItem\_indentationLevel ¶](#MenuItem_indentationLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L225)

```
MenuItem_indentationLevel :: proc "c" (
	self: ^MenuItem, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **indentationLevel**

##### Syntax Usage

```
res := self->indentationLevel()
```

### [MenuItem\_init ¶](#MenuItem_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L39)

```
MenuItem_init :: proc "c" (
	self: ^MenuItem, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [MenuItem\_initWithCoder ¶](#MenuItem_initWithCoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L57)

```
MenuItem_initWithCoder :: proc "c" (
	self:  ^MenuItem, 
	coder: ^Coder, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **initWithCoder**

##### Syntax Usage

```
res := self->initWithCoder(coder)
```

### [MenuItem\_initWithTitle ¶](#MenuItem_initWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L53)

```
MenuItem_initWithTitle :: proc "c" (
	self:     ^MenuItem, 
	string:   ^String, 
	selector: ^.objc_selector, 
	charCode: ^String, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **initWithTitle**

##### Syntax Usage

```
res := self->initWithTitle(
	string,
	selector,
	charCode,
)
```

### [MenuItem\_initialize ¶](#MenuItem_initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L325)

```
MenuItem_initialize :: proc "c" () {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **initialize**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.initialize()
```

### [MenuItem\_instanceMethodForSelector ¶](#MenuItem_instanceMethodForSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L357)

```
MenuItem_instanceMethodForSelector :: proc "c" (
	aSelector: ^.objc_selector, 
) -> IMP {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **instanceMethodForSelector**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.instanceMethodForSelector(aSelector)
```

### [MenuItem\_instancesRespondToSelector ¶](#MenuItem_instancesRespondToSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L349)

```
MenuItem_instancesRespondToSelector :: proc "c" (
	aSelector: ^.objc_selector, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **instancesRespondToSelector**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.instancesRespondToSelector(aSelector)
```

### [MenuItem\_isAlternate ¶](#MenuItem_isAlternate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L217)

```
MenuItem_isAlternate :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isAlternate**

##### Syntax Usage

```
res := self->isAlternate()
```

### [MenuItem\_isEnabled ¶](#MenuItem_isEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L209)

```
MenuItem_isEnabled :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isEnabled**

##### Syntax Usage

```
res := self->isEnabled()
```

 

MenuItem\_image :: #force\_inline proc "c" (self: ^MenuItem) -> ^Image {

```
return msgSend(^Image, self, "image")
```

}
MenuItem\_setImage :: #force\_inline proc "c" (self: ^MenuItem, image: ^Image) {

```
msgSend(nil, self, "setImage:", image)
```

}
MenuItem\_state :: #force\_inline proc "c" (self: ^MenuItem) -> ControlStateValue {

```
return msgSend(ControlStateValue, self, "state")
```

}
MenuItem\_setState :: #force\_inline proc "c" (self: ^MenuItem, state: ControlStateValue) {

```
msgSend(nil, self, "setState:", state)
```

}
MenuItem\_onStateImage :: #force\_inline proc "c" (self: ^MenuItem) -> ^Image {

```
return msgSend(^Image, self, "onStateImage")
```

}
MenuItem\_setOnStateImage :: #force\_inline proc "c" (self: ^MenuItem, onStateImage: ^Image) {

```
msgSend(nil, self, "setOnStateImage:", onStateImage)
```

}
MenuItem\_offStateImage :: #force\_inline proc "c" (self: ^MenuItem) -> ^Image {

```
return msgSend(^Image, self, "offStateImage")
```

}
MenuItem\_setOffStateImage :: #force\_inline proc "c" (self: ^MenuItem, offStateImage: ^Image) {

```
msgSend(nil, self, "setOffStateImage:", offStateImage)
```

}
MenuItem\_mixedStateImage :: #force\_inline proc "c" (self: ^MenuItem) -> ^Image {

```
return msgSend(^Image, self, "mixedStateImage")
```

}
MenuItem\_setMixedStateImage :: #force\_inline proc "c" (self: ^MenuItem, mixedStateImage: ^Image) {

```
msgSend(nil, self, "setMixedStateImage:", mixedStateImage)
```

}

### [MenuItem\_isHidden ¶](#MenuItem_isHidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L277)

```
MenuItem_isHidden :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isHidden**

##### Syntax Usage

```
res := self->isHidden()
```

### [MenuItem\_isHiddenOrHasHiddenAncestor ¶](#MenuItem_isHiddenOrHasHiddenAncestor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L285)

```
MenuItem_isHiddenOrHasHiddenAncestor :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isHiddenOrHasHiddenAncestor**

##### Syntax Usage

```
res := self->isHiddenOrHasHiddenAncestor()
```

### [MenuItem\_isHighlighted ¶](#MenuItem_isHighlighted) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L273)

```
MenuItem_isHighlighted :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isHighlighted**

##### Syntax Usage

```
res := self->isHighlighted()
```

### [MenuItem\_isSectionHeader ¶](#MenuItem_isSectionHeader) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L121)

```
MenuItem_isSectionHeader :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isSectionHeader**

##### Syntax Usage

```
res := self->isSectionHeader()
```

### [MenuItem\_isSeparatorItem ¶](#MenuItem_isSeparatorItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L117)

```
MenuItem_isSeparatorItem :: proc "c" (
	self: ^MenuItem, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isSeparatorItem**

##### Syntax Usage

```
res := self->isSeparatorItem()
```

### [MenuItem\_isSubclassOfClass ¶](#MenuItem_isSubclassOfClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L365)

```
MenuItem_isSubclassOfClass :: proc "c" (
	aClass: ^.objc_class, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **isSubclassOfClass**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.isSubclassOfClass(aClass)
```

 

MenuItem\_instanceMethodSignatureForSelector :: #force\_inline proc "c" (aSelector: SEL) -> ^MethodSignature {

```
return msgSend(^MethodSignature, MenuItem, "instanceMethodSignatureForSelector:", aSelector)
```

}

### [MenuItem\_keyEquivalent ¶](#MenuItem_keyEquivalent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L125)

```
MenuItem_keyEquivalent :: proc "c" (
	self: ^MenuItem, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **keyEquivalent**

##### Syntax Usage

```
res := self->keyEquivalent()
```

### [MenuItem\_keyEquivalentModifierMask ¶](#MenuItem_keyEquivalentModifierMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L133)

```
MenuItem_keyEquivalentModifierMask :: proc "c" (
	self: ^MenuItem, 
) -> EventModifierFlags {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **keyEquivalentModifierMask**

##### Syntax Usage

```
res := self->keyEquivalentModifierMask()
```

### [MenuItem\_keyPathsForValuesAffectingValueForKey ¶](#MenuItem_keyPathsForValuesAffectingValueForKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L425)

```
MenuItem_keyPathsForValuesAffectingValueForKey :: proc "c" (
	key: ^String, 
) -> ^Set {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **keyPathsForValuesAffectingValueForKey**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.keyPathsForValuesAffectingValueForKey(key)
```

### [MenuItem\_load ¶](#MenuItem_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L321)

```
MenuItem_load :: proc "c" () {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **load**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.load()
```

### [MenuItem\_menu ¶](#MenuItem_menu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L69)

```
MenuItem_menu :: proc "c" (
	self: ^MenuItem, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **menu**

##### Syntax Usage

```
res := self->menu()
```

### [MenuItem\_mnemonic ¶](#MenuItem_mnemonic) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L313)

```
MenuItem_mnemonic :: proc "c" (
	self: ^MenuItem, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **mnemonic**

##### Syntax Usage

```
res := self->mnemonic()
```

### [MenuItem\_mnemonicLocation ¶](#MenuItem_mnemonicLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L309)

```
MenuItem_mnemonicLocation :: proc "c" (
	self: ^MenuItem, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **mnemonicLocation**

##### Syntax Usage

```
res := self->mnemonicLocation()
```

### [MenuItem\_mutableCopyWithZone ¶](#MenuItem_mutableCopyWithZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L345)

```
MenuItem_mutableCopyWithZone :: proc "c" (
	zone: ^Zone, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **mutableCopyWithZone**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.mutableCopyWithZone(zone)
```

### [MenuItem\_new ¶](#MenuItem_new) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L329)

```
MenuItem_new :: proc "c" () -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **new**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.new()
```

### [MenuItem\_parentItem ¶](#MenuItem_parentItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L89)

```
MenuItem_parentItem :: proc "c" (
	self: ^MenuItem, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **parentItem**

##### Syntax Usage

```
res := self->parentItem()
```

### [MenuItem\_poseAsClass ¶](#MenuItem_poseAsClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L405)

```
MenuItem_poseAsClass :: proc "c" (
	aClass: ^.objc_class, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **poseAsClass**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.poseAsClass(aClass)
```

### [MenuItem\_registerActionCallback ¶](#MenuItem_registerActionCallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L19)

```
MenuItem_registerActionCallback :: proc "c" (
	name:     cstring, 
	callback: MenuItemCallback, 
) -> ^.objc_selector {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **registerActionCallback**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.registerActionCallback(
	name,
	callback,
)
```

### [MenuItem\_representedObject ¶](#MenuItem_representedObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L257)

```
MenuItem_representedObject :: proc "c" (
	self: ^MenuItem, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **representedObject**

##### Syntax Usage

```
res := self->representedObject()
```

### [MenuItem\_resolveClassMethod ¶](#MenuItem_resolveClassMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L369)

```
MenuItem_resolveClassMethod :: proc "c" (
	sel: ^.objc_selector, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **resolveClassMethod**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.resolveClassMethod(sel)
```

### [MenuItem\_resolveInstanceMethod ¶](#MenuItem_resolveInstanceMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L373)

```
MenuItem_resolveInstanceMethod :: proc "c" (
	sel: ^.objc_selector, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **resolveInstanceMethod**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.resolveInstanceMethod(sel)
```

### [MenuItem\_sectionHeaderWithTitle ¶](#MenuItem_sectionHeaderWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L49)

```
MenuItem_sectionHeaderWithTitle :: proc "c" (
	title: ^String, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **sectionHeaderWithTitle**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.sectionHeaderWithTitle(title)
```

### [MenuItem\_separatorItem ¶](#MenuItem_separatorItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L45)

```
MenuItem_separatorItem :: proc "c" () -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **separatorItem**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.separatorItem()
```

### [MenuItem\_setAction ¶](#MenuItem_setAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L245)

```
MenuItem_setAction :: proc "c" (
	self:   ^MenuItem, 
	action: ^.objc_selector, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setAction**

##### Syntax Usage

```
self->setAction(action)
```

### [MenuItem\_setAllowsAutomaticKeyEquivalentLocalization ¶](#MenuItem_setAllowsAutomaticKeyEquivalentLocalization) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L157)

```
MenuItem_setAllowsAutomaticKeyEquivalentLocalization :: proc "c" (
	self:                                     ^MenuItem, 
	allowsAutomaticKeyEquivalentLocalization: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setAllowsAutomaticKeyEquivalentLocalization**

##### Syntax Usage

```
self->setAllowsAutomaticKeyEquivalentLocalization(allowsAutomaticKeyEquivalentLocalization)
```

### [MenuItem\_setAllowsAutomaticKeyEquivalentMirroring ¶](#MenuItem_setAllowsAutomaticKeyEquivalentMirroring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L165)

```
MenuItem_setAllowsAutomaticKeyEquivalentMirroring :: proc "c" (
	self:                                  ^MenuItem, 
	allowsAutomaticKeyEquivalentMirroring: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setAllowsAutomaticKeyEquivalentMirroring**

##### Syntax Usage

```
self->setAllowsAutomaticKeyEquivalentMirroring(allowsAutomaticKeyEquivalentMirroring)
```

### [MenuItem\_setAllowsKeyEquivalentWhenHidden ¶](#MenuItem_setAllowsKeyEquivalentWhenHidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L149)

```
MenuItem_setAllowsKeyEquivalentWhenHidden :: proc "c" (
	self:                          ^MenuItem, 
	allowsKeyEquivalentWhenHidden: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setAllowsKeyEquivalentWhenHidden**

##### Syntax Usage

```
self->setAllowsKeyEquivalentWhenHidden(allowsKeyEquivalentWhenHidden)
```

### [MenuItem\_setAlternate ¶](#MenuItem_setAlternate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L221)

```
MenuItem_setAlternate :: proc "c" (
	self:      ^MenuItem, 
	alternate: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setAlternate**

##### Syntax Usage

```
self->setAlternate(alternate)
```

### [MenuItem\_setDefaultPlaceholder ¶](#MenuItem_setDefaultPlaceholder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L449)

```
MenuItem_setDefaultPlaceholder :: proc "c" (
	placeholder: ^.objc_object, 
	marker:      ^.objc_object, 
	binding:     ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setDefaultPlaceholder**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.setDefaultPlaceholder(
	placeholder,
	marker,
	binding,
)
```

### [MenuItem\_setEnabled ¶](#MenuItem_setEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L213)

```
MenuItem_setEnabled :: proc "c" (
	self:    ^MenuItem, 
	enabled: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setEnabled**

##### Syntax Usage

```
self->setEnabled(enabled)
```

### [MenuItem\_setHidden ¶](#MenuItem_setHidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L281)

```
MenuItem_setHidden :: proc "c" (
	self:   ^MenuItem, 
	hidden: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setHidden**

##### Syntax Usage

```
self->setHidden(hidden)
```

### [MenuItem\_setIndentationLevel ¶](#MenuItem_setIndentationLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L229)

```
MenuItem_setIndentationLevel :: proc "c" (
	self:             ^MenuItem, 
	indentationLevel: Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setIndentationLevel**

##### Syntax Usage

```
self->setIndentationLevel(indentationLevel)
```

### [MenuItem\_setKeyEquivalent ¶](#MenuItem_setKeyEquivalent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L129)

```
MenuItem_setKeyEquivalent :: proc "c" (
	self:          ^MenuItem, 
	keyEquivalent: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setKeyEquivalent**

##### Syntax Usage

```
self->setKeyEquivalent(keyEquivalent)
```

### [MenuItem\_setKeyEquivalentModifierMask ¶](#MenuItem_setKeyEquivalentModifierMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L137)

```
MenuItem_setKeyEquivalentModifierMask :: proc "c" (
	self:                      ^MenuItem, 
	keyEquivalentModifierMask: EventModifierFlags, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setKeyEquivalentModifierMask**

##### Syntax Usage

```
self->setKeyEquivalentModifierMask(keyEquivalentModifierMask)
```

### [MenuItem\_setKeys ¶](#MenuItem_setKeys) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L433)

```
MenuItem_setKeys :: proc "c" (
	keys:         ^Array, 
	dependentKey: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setKeys**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.setKeys(
	keys,
	dependentKey,
)
```

### [MenuItem\_setMenu ¶](#MenuItem_setMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L73)

```
MenuItem_setMenu :: proc "c" (
	self: ^MenuItem, 
	menu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setMenu**

##### Syntax Usage

```
self->setMenu(menu)
```

### [MenuItem\_setMnemonicLocation ¶](#MenuItem_setMnemonicLocation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L305)

```
MenuItem_setMnemonicLocation :: proc "c" (
	self:     ^MenuItem, 
	location: UInteger, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setMnemonicLocation**

##### Syntax Usage

```
self->setMnemonicLocation(location)
```

 

MenuItem\_badge :: #force\_inline proc "c" (self: ^MenuItem) -> ^MenuItemBadge {

```
return msgSend(^MenuItemBadge, self, "badge")
```

}
MenuItem\_setBadge :: #force\_inline proc "c" (self: ^MenuItem, badge: ^MenuItemBadge) {

```
msgSend(nil, self, "setBadge:", badge)
```

}

### [MenuItem\_setRepresentedObject ¶](#MenuItem_setRepresentedObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L261)

```
MenuItem_setRepresentedObject :: proc "c" (
	self:              ^MenuItem, 
	representedObject: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setRepresentedObject**

##### Syntax Usage

```
self->setRepresentedObject(representedObject)
```

### [MenuItem\_setSubmenu ¶](#MenuItem_setSubmenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L85)

```
MenuItem_setSubmenu :: proc "c" (
	self:    ^MenuItem, 
	submenu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setSubmenu**

##### Syntax Usage

```
self->setSubmenu(submenu)
```

### [MenuItem\_setSubtitle ¶](#MenuItem_setSubtitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L113)

```
MenuItem_setSubtitle :: proc "c" (
	self:     ^MenuItem, 
	subtitle: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setSubtitle**

##### Syntax Usage

```
self->setSubtitle(subtitle)
```

### [MenuItem\_setTag ¶](#MenuItem_setTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L253)

```
MenuItem_setTag :: proc "c" (
	self: ^MenuItem, 
	tag:  Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setTag**

##### Syntax Usage

```
self->setTag(tag)
```

### [MenuItem\_setTarget ¶](#MenuItem_setTarget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L237)

```
MenuItem_setTarget :: proc "c" (
	self:   ^MenuItem, 
	target: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setTarget**

##### Syntax Usage

```
self->setTarget(target)
```

### [MenuItem\_setTitle ¶](#MenuItem_setTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L97)

```
MenuItem_setTitle :: proc "c" (
	self:  ^MenuItem, 
	title: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setTitle**

##### Syntax Usage

```
self->setTitle(title)
```

### [MenuItem\_setTitleWithMnemonic ¶](#MenuItem_setTitleWithMnemonic) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L317)

```
MenuItem_setTitleWithMnemonic :: proc "c" (
	self:                ^MenuItem, 
	stringWithAmpersand: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setTitleWithMnemonic**

##### Syntax Usage

```
self->setTitleWithMnemonic(stringWithAmpersand)
```

### [MenuItem\_setToolTip ¶](#MenuItem_setToolTip) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L293)

```
MenuItem_setToolTip :: proc "c" (
	self:    ^MenuItem, 
	toolTip: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setToolTip**

##### Syntax Usage

```
self->setToolTip(toolTip)
```

### [MenuItem\_setUsesUserKeyEquivalents ¶](#MenuItem_setUsesUserKeyEquivalents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L65)

```
MenuItem_setUsesUserKeyEquivalents :: proc "c" (
	usesUserKeyEquivalents: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setUsesUserKeyEquivalents**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.setUsesUserKeyEquivalents(usesUserKeyEquivalents)
```

### [MenuItem\_setVersion ¶](#MenuItem_setVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L401)

```
MenuItem_setVersion :: proc "c" (
	aVersion: Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setVersion**
* Kind: *Class Method*

##### Syntax Usage

```
MenuItem.setVersion(aVersion)
```

### [MenuItem\_setView ¶](#MenuItem_setView) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L269)

```
MenuItem_setView :: proc "c" (
	self: ^MenuItem, 
	view: ^View, 
) {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **setView**

##### Syntax Usage

```
self->setView(view)
```

### [MenuItem\_submenu ¶](#MenuItem_submenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L81)

```
MenuItem_submenu :: proc "c" (
	self: ^MenuItem, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **submenu**

##### Syntax Usage

```
res := self->submenu()
```

### [MenuItem\_subtitle ¶](#MenuItem_subtitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L109)

```
MenuItem_subtitle :: proc "c" (
	self: ^MenuItem, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **subtitle**

##### Syntax Usage

```
res := self->subtitle()
```

 

MenuItem\_attributedTitle :: #force\_inline proc "c" (self: ^MenuItem) -> ^AttributedString {

```
return msgSend(^AttributedString, self, "attributedTitle")
```

}
MenuItem\_setAttributedTitle :: #force\_inline proc "c" (self: ^MenuItem, attributedTitle: ^AttributedString) {

```
msgSend(nil, self, "setAttributedTitle:", attributedTitle)
```

}

### [MenuItem\_superclass ¶](#MenuItem_superclass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L381)

```
MenuItem_superclass :: proc "c" () -> ^.objc_class {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **superclass**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.superclass()
```

### [MenuItem\_tag ¶](#MenuItem_tag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L249)

```
MenuItem_tag :: proc "c" (
	self: ^MenuItem, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **tag**

##### Syntax Usage

```
res := self->tag()
```

### [MenuItem\_target ¶](#MenuItem_target) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L233)

```
MenuItem_target :: proc "c" (
	self: ^MenuItem, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **target**

##### Syntax Usage

```
res := self->target()
```

### [MenuItem\_title ¶](#MenuItem_title) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L93)

```
MenuItem_title :: proc "c" (
	self: ^MenuItem, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **title**

##### Syntax Usage

```
res := self->title()
```

### [MenuItem\_toolTip ¶](#MenuItem_toolTip) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L289)

```
MenuItem_toolTip :: proc "c" (
	self: ^MenuItem, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **toolTip**

##### Syntax Usage

```
res := self->toolTip()
```

### [MenuItem\_useStoredAccessor ¶](#MenuItem_useStoredAccessor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L421)

```
MenuItem_useStoredAccessor :: proc "c" () -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **useStoredAccessor**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.useStoredAccessor()
```

### [MenuItem\_userKeyEquivalent ¶](#MenuItem_userKeyEquivalent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L141)

```
MenuItem_userKeyEquivalent :: proc "c" (
	self: ^MenuItem, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **userKeyEquivalent**

##### Syntax Usage

```
res := self->userKeyEquivalent()
```

### [MenuItem\_usesUserKeyEquivalents ¶](#MenuItem_usesUserKeyEquivalents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L61)

```
MenuItem_usesUserKeyEquivalents :: proc "c" () -> bool {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **usesUserKeyEquivalents**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.usesUserKeyEquivalents()
```

### [MenuItem\_version ¶](#MenuItem_version) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L397)

```
MenuItem_version :: proc "c" () -> Integer {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **version**
* Kind: *Class Method*

##### Syntax Usage

```
res := MenuItem.version()
```

### [MenuItem\_view ¶](#MenuItem_view) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L265)

```
MenuItem_view :: proc "c" (
	self: ^MenuItem, 
) -> ^View {…}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **view**

##### Syntax Usage

```
res := self->view()
```

### [Menu\_accessInstanceVariablesDirectly ¶](#Menu_accessInstanceVariablesDirectly) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L461)

```
Menu_accessInstanceVariablesDirectly :: proc "c" () -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **accessInstanceVariablesDirectly**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.accessInstanceVariablesDirectly()
```

### [Menu\_addItem ¶](#Menu_addItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L77)

```
Menu_addItem :: proc "c" (
	self:    ^Menu, 
	newItem: ^MenuItem, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **addItem**

##### Syntax Usage

```
self->addItem(newItem)
```

### [Menu\_addItemWithTitle ¶](#Menu_addItemWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L85)

```
Menu_addItemWithTitle :: proc "c" (
	self:     ^Menu, 
	string:   ^String, 
	selector: ^.objc_selector, 
	charCode: ^String, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **addItemWithTitle**

##### Syntax Usage

```
res := self->addItemWithTitle(
	string,
	selector,
	charCode,
)
```

### [Menu\_alloc ¶](#Menu_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L381)

```
Menu_alloc :: proc "c" () -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.alloc()
```

### [Menu\_allocWithZone ¶](#Menu_allocWithZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L377)

```
Menu_allocWithZone :: proc "c" (
	zone: ^Zone, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **allocWithZone**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.allocWithZone(zone)
```

### [Menu\_allowsContextMenuPlugIns ¶](#Menu_allowsContextMenuPlugIns) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L237)

```
Menu_allowsContextMenuPlugIns :: proc "c" (
	self: ^Menu, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **allowsContextMenuPlugIns**

##### Syntax Usage

```
res := self->allowsContextMenuPlugIns()
```

 

Menu\_font :: #force\_inline proc "c" (self: ^Menu) -> ^Font {

```
return msgSend(^Font, self, "font")
```

}
Menu\_setFont :: #force\_inline proc "c" (self: ^Menu, font: ^Font) {

```
msgSend(nil, self, "setFont:", font)
```

}

### [Menu\_attachedMenu ¶](#Menu_attachedMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L333)

```
Menu_attachedMenu :: proc "c" (
	self: ^Menu, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **attachedMenu**

##### Syntax Usage

```
res := self->attachedMenu()
```

### [Menu\_autoenablesItems ¶](#Menu_autoenablesItems) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L193)

```
Menu_autoenablesItems :: proc "c" (
	self: ^Menu, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **autoenablesItems**

##### Syntax Usage

```
res := self->autoenablesItems()
```

### [Menu\_automaticallyNotifiesObserversForKey ¶](#Menu_automaticallyNotifiesObserversForKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L473)

```
Menu_automaticallyNotifiesObserversForKey :: proc "c" (
	key: ^String, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **automaticallyNotifiesObserversForKey**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.automaticallyNotifiesObserversForKey(key)
```

### [Menu\_cancelPreviousPerformRequestsWithTarget\_ ¶](#Menu_cancelPreviousPerformRequestsWithTarget_) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L457)

```
Menu_cancelPreviousPerformRequestsWithTarget_ :: proc "c" (
	aTarget: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **cancelPreviousPerformRequestsWithTarget\_**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.cancelPreviousPerformRequestsWithTarget_(aTarget)
```

##### Related Procedure Groups

* [Menu\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget)

### [Menu\_cancelPreviousPerformRequestsWithTarget\_selector\_object ¶](#Menu_cancelPreviousPerformRequestsWithTarget_selector_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L453)

```
Menu_cancelPreviousPerformRequestsWithTarget_selector_object :: proc "c" (
	aTarget:    ^.objc_object, 
	aSelector:  ^.objc_selector, 
	anArgument: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **cancelPreviousPerformRequestsWithTarget\_selector\_object**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.cancelPreviousPerformRequestsWithTarget_selector_object(
	aTarget,
	aSelector,
	anArgument,
)
```

##### Related Procedure Groups

* [Menu\_cancelPreviousPerformRequestsWithTarget](/core/sys/darwin/Foundation/#Menu_cancelPreviousPerformRequestsWithTarget)

### [Menu\_cancelTracking ¶](#Menu_cancelTracking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L157)

```
Menu_cancelTracking :: proc "c" (
	self: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **cancelTracking**

##### Syntax Usage

```
self->cancelTracking()
```

### [Menu\_cancelTrackingWithoutAnimation ¶](#Menu_cancelTrackingWithoutAnimation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L161)

```
Menu_cancelTrackingWithoutAnimation :: proc "c" (
	self: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **cancelTrackingWithoutAnimation**

##### Syntax Usage

```
self->cancelTrackingWithoutAnimation()
```

### [Menu\_class ¶](#Menu_class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L429)

```
Menu_class :: proc "c" () -> ^.objc_class {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **class**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.class()
```

### [Menu\_classFallbacksForKeyedArchiver ¶](#Menu_classFallbacksForKeyedArchiver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L481)

```
Menu_classFallbacksForKeyedArchiver :: proc "c" () -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **classFallbacksForKeyedArchiver**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.classFallbacksForKeyedArchiver()
```

### [Menu\_classForKeyedUnarchiver ¶](#Menu_classForKeyedUnarchiver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L485)

```
Menu_classForKeyedUnarchiver :: proc "c" () -> ^.objc_class {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **classForKeyedUnarchiver**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.classForKeyedUnarchiver()
```

### [Menu\_conformsToProtocol ¶](#Menu_conformsToProtocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L397)

```
Menu_conformsToProtocol :: proc "c" (
	protocol: ^Protocol, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **conformsToProtocol**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.conformsToProtocol(protocol)
```

### [Menu\_contextMenuRepresentation ¶](#Menu_contextMenuRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L313)

```
Menu_contextMenuRepresentation :: proc "c" (
	self: ^Menu, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **contextMenuRepresentation**

##### Syntax Usage

```
res := self->contextMenuRepresentation()
```

### [Menu\_copyWithZone ¶](#Menu_copyWithZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L385)

```
Menu_copyWithZone :: proc "c" (
	zone: ^Zone, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **copyWithZone**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.copyWithZone(zone)
```

### [Menu\_debugDescription ¶](#Menu_debugDescription) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L437)

```
Menu_debugDescription :: proc "c" () -> ^String {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **debugDescription**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.debugDescription()
```

### [Menu\_defaultPlaceholderForMarker ¶](#Menu_defaultPlaceholderForMarker) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L497)

```
Menu_defaultPlaceholderForMarker :: proc "c" (
	marker:  ^.objc_object, 
	binding: ^String, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **defaultPlaceholderForMarker**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.defaultPlaceholderForMarker(
	marker,
	binding,
)
```

### [Menu\_delegate ¶](#Menu_delegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L201)

```
Menu_delegate :: proc "c" (
	self: ^Menu, 
) -> ^MenuDelegate {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **delegate**

##### Syntax Usage

```
res := self->delegate()
```

### [Menu\_description ¶](#Menu_description) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L433)

```
Menu_description :: proc "c" () -> ^String {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **description**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.description()
```

### [Menu\_exposeBinding ¶](#Menu_exposeBinding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L489)

```
Menu_exposeBinding :: proc "c" (
	binding: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **exposeBinding**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.exposeBinding(binding)
```

### [Menu\_hash ¶](#Menu_hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L421)

```
Menu_hash :: proc "c" () -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **hash**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.hash()
```

### [Menu\_helpRequested ¶](#Menu_helpRequested) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L349)

```
Menu_helpRequested :: proc "c" (
	self:     ^Menu, 
	eventPtr: ^Event, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **helpRequested**

##### Syntax Usage

```
self->helpRequested(eventPtr)
```

### [Menu\_highlightedItem ¶](#Menu_highlightedItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L213)

```
Menu_highlightedItem :: proc "c" (
	self: ^Menu, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **highlightedItem**

##### Syntax Usage

```
res := self->highlightedItem()
```

### [Menu\_indexOfItem ¶](#Menu_indexOfItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L109)

```
Menu_indexOfItem :: proc "c" (
	self: ^Menu, 
	item: ^MenuItem, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **indexOfItem**

##### Syntax Usage

```
res := self->indexOfItem(item)
```

### [Menu\_indexOfItemWithRepresentedObject ¶](#Menu_indexOfItemWithRepresentedObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L121)

```
Menu_indexOfItemWithRepresentedObject :: proc "c" (
	self:   ^Menu, 
	object: ^.objc_object, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **indexOfItemWithRepresentedObject**

##### Syntax Usage

```
res := self->indexOfItemWithRepresentedObject(object)
```

### [Menu\_indexOfItemWithSubmenu ¶](#Menu_indexOfItemWithSubmenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L125)

```
Menu_indexOfItemWithSubmenu :: proc "c" (
	self:    ^Menu, 
	submenu: ^Menu, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **indexOfItemWithSubmenu**

##### Syntax Usage

```
res := self->indexOfItemWithSubmenu(submenu)
```

### [Menu\_indexOfItemWithTag ¶](#Menu_indexOfItemWithTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L117)

```
Menu_indexOfItemWithTag :: proc "c" (
	self: ^Menu, 
	tag:  Integer, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **indexOfItemWithTag**

##### Syntax Usage

```
res := self->indexOfItemWithTag(tag)
```

### [Menu\_indexOfItemWithTarget ¶](#Menu_indexOfItemWithTarget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L129)

```
Menu_indexOfItemWithTarget :: proc "c" (
	self:           ^Menu, 
	target:         ^.objc_object, 
	actionSelector: ^.objc_selector, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **indexOfItemWithTarget**

##### Syntax Usage

```
res := self->indexOfItemWithTarget(
	target,
	actionSelector,
)
```

### [Menu\_indexOfItemWithTitle ¶](#Menu_indexOfItemWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L113)

```
Menu_indexOfItemWithTitle :: proc "c" (
	self:  ^Menu, 
	title: ^String, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **indexOfItemWithTitle**

##### Syntax Usage

```
res := self->indexOfItemWithTitle(title)
```

### [Menu\_init ¶](#Menu_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L39)

```
Menu_init :: proc "c" (
	self: ^Menu, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Menu\_initWithCoder ¶](#Menu_initWithCoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L49)

```
Menu_initWithCoder :: proc "c" (
	self:  ^Menu, 
	coder: ^Coder, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **initWithCoder**

##### Syntax Usage

```
res := self->initWithCoder(coder)
```

### [Menu\_initWithTitle ¶](#Menu_initWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L45)

```
Menu_initWithTitle :: proc "c" (
	self:  ^Menu, 
	title: ^String, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **initWithTitle**

##### Syntax Usage

```
res := self->initWithTitle(title)
```

### [Menu\_initialize ¶](#Menu_initialize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L369)

```
Menu_initialize :: proc "c" () {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **initialize**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.initialize()
```

### [Menu\_insertItem ¶](#Menu_insertItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L73)

```
Menu_insertItem :: proc "c" (
	self:    ^Menu, 
	newItem: ^MenuItem, 
	index:   Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **insertItem**

##### Syntax Usage

```
self->insertItem(
	newItem,
	index,
)
```

### [Menu\_insertItemWithTitle ¶](#Menu_insertItemWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L81)

```
Menu_insertItemWithTitle :: proc "c" (
	self:     ^Menu, 
	string:   ^String, 
	selector: ^.objc_selector, 
	charCode: ^String, 
	index:    Integer, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **insertItemWithTitle**

##### Syntax Usage

```
res := self->insertItemWithTitle(
	string,
	selector,
	charCode,
	index,
)
```

### [Menu\_instanceMethodForSelector ¶](#Menu_instanceMethodForSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L401)

```
Menu_instanceMethodForSelector :: proc "c" (
	aSelector: ^.objc_selector, 
) -> IMP {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **instanceMethodForSelector**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.instanceMethodForSelector(aSelector)
```

### [Menu\_instancesRespondToSelector ¶](#Menu_instancesRespondToSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L393)

```
Menu_instancesRespondToSelector :: proc "c" (
	aSelector: ^.objc_selector, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **instancesRespondToSelector**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.instancesRespondToSelector(aSelector)
```

### [Menu\_isAttached ¶](#Menu_isAttached) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L337)

```
Menu_isAttached :: proc "c" (
	self: ^Menu, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **isAttached**

##### Syntax Usage

```
res := self->isAttached()
```

### [Menu\_isSubclassOfClass ¶](#Menu_isSubclassOfClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L409)

```
Menu_isSubclassOfClass :: proc "c" (
	aClass: ^.objc_class, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **isSubclassOfClass**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.isSubclassOfClass(aClass)
```

 

Menu\_instanceMethodSignatureForSelector :: #force\_inline proc "c" (aSelector: SEL) -> ^MethodSignature {

```
return msgSend(^MethodSignature, Menu, "instanceMethodSignatureForSelector:", aSelector)
```

}

### [Menu\_isTornOff ¶](#Menu_isTornOff) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L361)

```
Menu_isTornOff :: proc "c" (
	self: ^Menu, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **isTornOff**

##### Syntax Usage

```
res := self->isTornOff()
```

### [Menu\_itemArray ¶](#Menu_itemArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L181)

```
Menu_itemArray :: proc "c" (
	self: ^Menu, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **itemArray**

##### Syntax Usage

```
res := self->itemArray()
```

### [Menu\_itemAtIndex ¶](#Menu_itemAtIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L105)

```
Menu_itemAtIndex :: proc "c" (
	self:  ^Menu, 
	index: Integer, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **itemAtIndex**

##### Syntax Usage

```
res := self->itemAtIndex(index)
```

### [Menu\_itemChanged ¶](#Menu_itemChanged) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L149)

```
Menu_itemChanged :: proc "c" (
	self: ^Menu, 
	item: ^MenuItem, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **itemChanged**

##### Syntax Usage

```
self->itemChanged(item)
```

### [Menu\_itemWithTag ¶](#Menu_itemWithTag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L137)

```
Menu_itemWithTag :: proc "c" (
	self: ^Menu, 
	tag:  Integer, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **itemWithTag**

##### Syntax Usage

```
res := self->itemWithTag(tag)
```

### [Menu\_itemWithTitle ¶](#Menu_itemWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L133)

```
Menu_itemWithTitle :: proc "c" (
	self:  ^Menu, 
	title: ^String, 
) -> ^MenuItem {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **itemWithTitle**

##### Syntax Usage

```
res := self->itemWithTitle(title)
```

### [Menu\_keyPathsForValuesAffectingValueForKey ¶](#Menu_keyPathsForValuesAffectingValueForKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L469)

```
Menu_keyPathsForValuesAffectingValueForKey :: proc "c" (
	key: ^String, 
) -> ^Set {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **keyPathsForValuesAffectingValueForKey**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.keyPathsForValuesAffectingValueForKey(key)
```

### [Menu\_load ¶](#Menu_load) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L365)

```
Menu_load :: proc "c" () {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **load**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.load()
```

### [Menu\_locationForSubmenu ¶](#Menu_locationForSubmenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L345)

```
Menu_locationForSubmenu :: proc "c" (
	self:    ^Menu, 
	submenu: ^Menu, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **locationForSubmenu**

##### Syntax Usage

```
res := self->locationForSubmenu(submenu)
```

### [Menu\_menuBarHeight ¶](#Menu_menuBarHeight) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L209)

```
Menu_menuBarHeight :: proc "c" (
	self: ^Menu, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **menuBarHeight**

##### Syntax Usage

```
res := self->menuBarHeight()
```

### [Menu\_menuBarVisible ¶](#Menu_menuBarVisible) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L69)

```
Menu_menuBarVisible :: proc "c" () -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **menuBarVisible**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.menuBarVisible()
```

### [Menu\_menuChangedMessagesEnabled ¶](#Menu_menuChangedMessagesEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L353)

```
Menu_menuChangedMessagesEnabled :: proc "c" (
	self: ^Menu, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **menuChangedMessagesEnabled**

##### Syntax Usage

```
res := self->menuChangedMessagesEnabled()
```

### [Menu\_menuRepresentation ¶](#Menu_menuRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L305)

```
Menu_menuRepresentation :: proc "c" (
	self: ^Menu, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **menuRepresentation**

##### Syntax Usage

```
res := self->menuRepresentation()
```

### [Menu\_menuZone ¶](#Menu_menuZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L325)

```
Menu_menuZone :: proc "c" () -> ^Zone {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **menuZone**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.menuZone()
```

### [Menu\_minimumWidth ¶](#Menu_minimumWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L217)

```
Menu_minimumWidth :: proc "c" (
	self: ^Menu, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **minimumWidth**

##### Syntax Usage

```
res := self->minimumWidth()
```

### [Menu\_mutableCopyWithZone ¶](#Menu_mutableCopyWithZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L389)

```
Menu_mutableCopyWithZone :: proc "c" (
	zone: ^Zone, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **mutableCopyWithZone**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.mutableCopyWithZone(zone)
```

### [Menu\_new ¶](#Menu_new) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L373)

```
Menu_new :: proc "c" () -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **new**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.new()
```

### [Menu\_numberOfItems ¶](#Menu_numberOfItems) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L189)

```
Menu_numberOfItems :: proc "c" (
	self: ^Menu, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **numberOfItems**

##### Syntax Usage

```
res := self->numberOfItems()
```

### [Menu\_paletteMenuWithColors\_titles\_selectionHandler ¶](#Menu_paletteMenuWithColors_titles_selectionHandler) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L261)

```
Menu_paletteMenuWithColors_titles_selectionHandler :: proc "c" (
	colors:            ^Array, 
	itemTitles:        ^Array, 
	onSelectionChange: proc "c" (
	_arg_0: ^Menu, 
), 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **paletteMenuWithColors\_titles\_selectionHandler**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.paletteMenuWithColors_titles_selectionHandler(
	colors,
	itemTitles,
	onSelectionChange,
)
```

##### Related Procedure Groups

* [Menu\_paletteMenuWithColors](/core/sys/darwin/Foundation/#Menu_paletteMenuWithColors)

### [Menu\_performActionForItemAtIndex ¶](#Menu_performActionForItemAtIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L153)

```
Menu_performActionForItemAtIndex :: proc "c" (
	self:  ^Menu, 
	index: Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **performActionForItemAtIndex**

##### Syntax Usage

```
self->performActionForItemAtIndex(index)
```

### [Menu\_performKeyEquivalent ¶](#Menu_performKeyEquivalent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L145)

```
Menu_performKeyEquivalent :: proc "c" (
	self:  ^Menu, 
	event: ^Event, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **performKeyEquivalent**

##### Syntax Usage

```
res := self->performKeyEquivalent(event)
```

### [Menu\_popUpContextMenu\_withEvent\_forView ¶](#Menu_popUpContextMenu_withEvent_forView) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L53)

```
Menu_popUpContextMenu_withEvent_forView :: proc "c" (
	menu:  ^Menu, 
	event: ^Event, 
	view:  ^View, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **popUpContextMenu\_withEvent\_forView**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.popUpContextMenu_withEvent_forView(
	menu,
	event,
	view,
)
```

##### Related Procedure Groups

* [Menu\_popUpContextMenu](/core/sys/darwin/Foundation/#Menu_popUpContextMenu)

### [Menu\_popUpMenuPositioningItem ¶](#Menu_popUpMenuPositioningItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L61)

```
Menu_popUpMenuPositioningItem :: proc "c" (
	self:     ^Menu, 
	item:     ^MenuItem, 
	location: CoreFoundation.CGPoint, 
	view:     ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **popUpMenuPositioningItem**

##### Syntax Usage

```
res := self->popUpMenuPositioningItem(
	item,
	location,
	view,
)
```

 

Menu\_popUpContextMenu\_withEvent\_forView\_withFont :: #force\_inline proc "c" (menu: ^Menu, event: ^Event, view: ^View, font: ^Font) {

```
msgSend(nil, Menu, "popUpContextMenu:withEvent:forView:withFont:", menu, event, view, font)
```

}

### [Menu\_poseAsClass ¶](#Menu_poseAsClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L449)

```
Menu_poseAsClass :: proc "c" (
	aClass: ^.objc_class, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **poseAsClass**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.poseAsClass(aClass)
```

### [Menu\_presentationStyle ¶](#Menu_presentationStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L269)

```
Menu_presentationStyle :: proc "c" (
	self: ^Menu, 
) -> MenuPresentationStyle {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **presentationStyle**

##### Syntax Usage

```
res := self->presentationStyle()
```

 

Menu\_paletteMenuWithColors\_titles\_templateImage\_selectionHandler :: #force\_inline proc "c" (colors: ^Array, itemTitles: ^Array, image: ^Image, onSelectionChange: proc "c" (\_arg\_0: ^Menu)) -> ^Menu {

```
return msgSend(^Menu, Menu, "paletteMenuWithColors:titles:templateImage:selectionHandler:", colors, itemTitles, image, onSelectionChange)
```

}

### [Menu\_propertiesToUpdate ¶](#Menu_propertiesToUpdate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L297)

```
Menu_propertiesToUpdate :: proc "c" (
	self: ^Menu, 
) -> MenuProperties {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **propertiesToUpdate**

##### Syntax Usage

```
res := self->propertiesToUpdate()
```

### [Menu\_removeAllItems ¶](#Menu_removeAllItems) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L101)

```
Menu_removeAllItems :: proc "c" (
	self: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **removeAllItems**

##### Syntax Usage

```
self->removeAllItems()
```

### [Menu\_removeItem ¶](#Menu_removeItem) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L93)

```
Menu_removeItem :: proc "c" (
	self: ^Menu, 
	item: ^MenuItem, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **removeItem**

##### Syntax Usage

```
self->removeItem(item)
```

### [Menu\_removeItemAtIndex ¶](#Menu_removeItemAtIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L89)

```
Menu_removeItemAtIndex :: proc "c" (
	self:  ^Menu, 
	index: Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **removeItemAtIndex**

##### Syntax Usage

```
self->removeItemAtIndex(index)
```

### [Menu\_resolveClassMethod ¶](#Menu_resolveClassMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L413)

```
Menu_resolveClassMethod :: proc "c" (
	sel: ^.objc_selector, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **resolveClassMethod**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.resolveClassMethod(sel)
```

### [Menu\_resolveInstanceMethod ¶](#Menu_resolveInstanceMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L417)

```
Menu_resolveInstanceMethod :: proc "c" (
	sel: ^.objc_selector, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **resolveInstanceMethod**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.resolveInstanceMethod(sel)
```

### [Menu\_selectedItems ¶](#Menu_selectedItems) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L285)

```
Menu_selectedItems :: proc "c" (
	self: ^Menu, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **selectedItems**

##### Syntax Usage

```
res := self->selectedItems()
```

### [Menu\_selectionMode ¶](#Menu_selectionMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L277)

```
Menu_selectionMode :: proc "c" (
	self: ^Menu, 
) -> MenuSelectionMode {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **selectionMode**

##### Syntax Usage

```
res := self->selectionMode()
```

### [Menu\_setAllowsContextMenuPlugIns ¶](#Menu_setAllowsContextMenuPlugIns) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L241)

```
Menu_setAllowsContextMenuPlugIns :: proc "c" (
	self:                     ^Menu, 
	allowsContextMenuPlugIns: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setAllowsContextMenuPlugIns**

##### Syntax Usage

```
self->setAllowsContextMenuPlugIns(allowsContextMenuPlugIns)
```

### [Menu\_setAutoenablesItems ¶](#Menu_setAutoenablesItems) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L197)

```
Menu_setAutoenablesItems :: proc "c" (
	self:             ^Menu, 
	autoenablesItems: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setAutoenablesItems**

##### Syntax Usage

```
self->setAutoenablesItems(autoenablesItems)
```

### [Menu\_setContextMenuRepresentation ¶](#Menu_setContextMenuRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L309)

```
Menu_setContextMenuRepresentation :: proc "c" (
	self:    ^Menu, 
	menuRep: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setContextMenuRepresentation**

##### Syntax Usage

```
self->setContextMenuRepresentation(menuRep)
```

### [Menu\_setDefaultPlaceholder ¶](#Menu_setDefaultPlaceholder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L493)

```
Menu_setDefaultPlaceholder :: proc "c" (
	placeholder: ^.objc_object, 
	marker:      ^.objc_object, 
	binding:     ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setDefaultPlaceholder**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.setDefaultPlaceholder(
	placeholder,
	marker,
	binding,
)
```

### [Menu\_setDelegate ¶](#Menu_setDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L205)

```
Menu_setDelegate :: proc "c" (
	self:     ^Menu, 
	delegate: ^MenuDelegate, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setDelegate**

##### Syntax Usage

```
self->setDelegate(delegate)
```

### [Menu\_setItemArray ¶](#Menu_setItemArray) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L185)

```
Menu_setItemArray :: proc "c" (
	self:      ^Menu, 
	itemArray: ^Array, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setItemArray**

##### Syntax Usage

```
self->setItemArray(itemArray)
```

### [Menu\_setKeys ¶](#Menu_setKeys) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L477)

```
Menu_setKeys :: proc "c" (
	keys:         ^Array, 
	dependentKey: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setKeys**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.setKeys(
	keys,
	dependentKey,
)
```

### [Menu\_setMenuBarVisible ¶](#Menu_setMenuBarVisible) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L65)

```
Menu_setMenuBarVisible :: proc "c" (
	visible: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setMenuBarVisible**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.setMenuBarVisible(visible)
```

### [Menu\_setMenuChangedMessagesEnabled ¶](#Menu_setMenuChangedMessagesEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L357)

```
Menu_setMenuChangedMessagesEnabled :: proc "c" (
	self:                       ^Menu, 
	menuChangedMessagesEnabled: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setMenuChangedMessagesEnabled**

##### Syntax Usage

```
self->setMenuChangedMessagesEnabled(menuChangedMessagesEnabled)
```

### [Menu\_setMenuRepresentation ¶](#Menu_setMenuRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L301)

```
Menu_setMenuRepresentation :: proc "c" (
	self:    ^Menu, 
	menuRep: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setMenuRepresentation**

##### Syntax Usage

```
self->setMenuRepresentation(menuRep)
```

### [Menu\_setMenuZone ¶](#Menu_setMenuZone) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L329)

```
Menu_setMenuZone :: proc "c" (
	zone: ^Zone, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setMenuZone**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.setMenuZone(zone)
```

### [Menu\_setMinimumWidth ¶](#Menu_setMinimumWidth) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L221)

```
Menu_setMinimumWidth :: proc "c" (
	self:         ^Menu, 
	minimumWidth: CoreFoundation.CGFloat, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setMinimumWidth**

##### Syntax Usage

```
self->setMinimumWidth(minimumWidth)
```

### [Menu\_setPresentationStyle ¶](#Menu_setPresentationStyle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L273)

```
Menu_setPresentationStyle :: proc "c" (
	self:              ^Menu, 
	presentationStyle: MenuPresentationStyle, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setPresentationStyle**

##### Syntax Usage

```
self->setPresentationStyle(presentationStyle)
```

### [Menu\_setSelectedItems ¶](#Menu_setSelectedItems) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L289)

```
Menu_setSelectedItems :: proc "c" (
	self:          ^Menu, 
	selectedItems: ^Array, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setSelectedItems**

##### Syntax Usage

```
self->setSelectedItems(selectedItems)
```

### [Menu\_setSelectionMode ¶](#Menu_setSelectionMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L281)

```
Menu_setSelectionMode :: proc "c" (
	self:          ^Menu, 
	selectionMode: MenuSelectionMode, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setSelectionMode**

##### Syntax Usage

```
self->setSelectionMode(selectionMode)
```

### [Menu\_setShowsStateColumn ¶](#Menu_setShowsStateColumn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L249)

```
Menu_setShowsStateColumn :: proc "c" (
	self:             ^Menu, 
	showsStateColumn: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setShowsStateColumn**

##### Syntax Usage

```
self->setShowsStateColumn(showsStateColumn)
```

### [Menu\_setSubmenu ¶](#Menu_setSubmenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L97)

```
Menu_setSubmenu :: proc "c" (
	self: ^Menu, 
	menu: ^Menu, 
	item: ^MenuItem, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setSubmenu**

##### Syntax Usage

```
self->setSubmenu(
	menu,
	item,
)
```

### [Menu\_setSupermenu ¶](#Menu_setSupermenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L177)

```
Menu_setSupermenu :: proc "c" (
	self:      ^Menu, 
	supermenu: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setSupermenu**

##### Syntax Usage

```
self->setSupermenu(supermenu)
```

### [Menu\_setTearOffMenuRepresentation ¶](#Menu_setTearOffMenuRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L317)

```
Menu_setTearOffMenuRepresentation :: proc "c" (
	self:    ^Menu, 
	menuRep: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setTearOffMenuRepresentation**

##### Syntax Usage

```
self->setTearOffMenuRepresentation(menuRep)
```

### [Menu\_setTitle ¶](#Menu_setTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L169)

```
Menu_setTitle :: proc "c" (
	self:  ^Menu, 
	title: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setTitle**

##### Syntax Usage

```
self->setTitle(title)
```

### [Menu\_setUserInterfaceLayoutDirection ¶](#Menu_setUserInterfaceLayoutDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L257)

```
Menu_setUserInterfaceLayoutDirection :: proc "c" (
	self:                         ^Menu, 
	userInterfaceLayoutDirection: UserInterfaceLayoutDirection, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setUserInterfaceLayoutDirection**

##### Syntax Usage

```
self->setUserInterfaceLayoutDirection(userInterfaceLayoutDirection)
```

### [Menu\_setVersion ¶](#Menu_setVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L445)

```
Menu_setVersion :: proc "c" (
	aVersion: Integer, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **setVersion**
* Kind: *Class Method*

##### Syntax Usage

```
Menu.setVersion(aVersion)
```

### [Menu\_showsStateColumn ¶](#Menu_showsStateColumn) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L245)

```
Menu_showsStateColumn :: proc "c" (
	self: ^Menu, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **showsStateColumn**

##### Syntax Usage

```
res := self->showsStateColumn()
```

### [Menu\_size ¶](#Menu_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L225)

```
Menu_size :: proc "c" (
	self: ^Menu, 
) -> CoreFoundation.CGSize {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **size**

##### Syntax Usage

```
res := self->size()
```

### [Menu\_sizeToFit ¶](#Menu_sizeToFit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L341)

```
Menu_sizeToFit :: proc "c" (
	self: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **sizeToFit**

##### Syntax Usage

```
self->sizeToFit()
```

### [Menu\_submenuAction ¶](#Menu_submenuAction) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L293)

```
Menu_submenuAction :: proc "c" (
	self:   ^Menu, 
	sender: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **submenuAction**

##### Syntax Usage

```
self->submenuAction(sender)
```

### [Menu\_superclass ¶](#Menu_superclass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L425)

```
Menu_superclass :: proc "c" () -> ^.objc_class {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **superclass**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.superclass()
```

### [Menu\_supermenu ¶](#Menu_supermenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L173)

```
Menu_supermenu :: proc "c" (
	self: ^Menu, 
) -> ^Menu {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **supermenu**

##### Syntax Usage

```
res := self->supermenu()
```

### [Menu\_tearOffMenuRepresentation ¶](#Menu_tearOffMenuRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L321)

```
Menu_tearOffMenuRepresentation :: proc "c" (
	self: ^Menu, 
) -> ^.objc_object {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **tearOffMenuRepresentation**

##### Syntax Usage

```
res := self->tearOffMenuRepresentation()
```

### [Menu\_title ¶](#Menu_title) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L165)

```
Menu_title :: proc "c" (
	self: ^Menu, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **title**

##### Syntax Usage

```
res := self->title()
```

### [Menu\_update ¶](#Menu_update) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L141)

```
Menu_update :: proc "c" (
	self: ^Menu, 
) {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **update**

##### Syntax Usage

```
self->update()
```

### [Menu\_useStoredAccessor ¶](#Menu_useStoredAccessor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L465)

```
Menu_useStoredAccessor :: proc "c" () -> bool {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **useStoredAccessor**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.useStoredAccessor()
```

### [Menu\_userInterfaceLayoutDirection ¶](#Menu_userInterfaceLayoutDirection) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L253)

```
Menu_userInterfaceLayoutDirection :: proc "c" (
	self: ^Menu, 
) -> UserInterfaceLayoutDirection {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **userInterfaceLayoutDirection**

##### Syntax Usage

```
res := self->userInterfaceLayoutDirection()
```

### [Menu\_version ¶](#Menu_version) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L441)

```
Menu_version :: proc "c" () -> Integer {…}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **version**
* Kind: *Class Method*

##### Syntax Usage

```
res := Menu.version()
```

### [MidX ¶](#MidX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L15)

```
MidX :: proc(
	aRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGFloat {…}
```

### [MidY ¶](#MidY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L18)

```
MidY :: proc(
	aRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGFloat {…}
```

### [MinX ¶](#MinX) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L21)

```
MinX :: proc(
	aRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGFloat {…}
```

### [MinY ¶](#MinY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L24)

```
MinY :: proc(
	aRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGFloat {…}
```

### [MutableArray\_alloc ¶](#MutableArray_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L51)

```
MutableArray_alloc :: proc "c" () -> ^MutableArray {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := MutableArray.alloc()
```

### [MutableArray\_count ¶](#MutableArray_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L80)

```
MutableArray_count :: proc "c" (
	self: ^MutableArray, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **count**

##### Syntax Usage

```
res := self->count()
```

### [MutableArray\_exchangeObjectAtIndex ¶](#MutableArray_exchangeObjectAtIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L86)

```
MutableArray_exchangeObjectAtIndex :: proc "c" (
	self: ^MutableArray, 
	idx1, 
	idx2: UInteger, 
) {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **exchangeObjectAtIndex**

##### Syntax Usage

```
self->exchangeObjectAtIndex(
	idx1,
	idx2,
)
```

### [MutableArray\_init ¶](#MutableArray_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L56)

```
MutableArray_init :: proc "c" (
	self: ^MutableArray, 
) -> ^MutableArray {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [MutableArray\_initWithCoder ¶](#MutableArray_initWithCoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L66)

```
MutableArray_initWithCoder :: proc "c" (
	self:  ^MutableArray, 
	coder: ^Coder, 
) -> ^MutableArray {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **initWithCoder**

##### Syntax Usage

```
res := self->initWithCoder(coder)
```

### [MutableArray\_initWithObjects ¶](#MutableArray_initWithObjects) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L61)

```
MutableArray_initWithObjects :: proc "c" (
	self:    ^MutableArray, 
	objects: [^]^Object, 
	count:   UInteger, 
) -> ^MutableArray {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **initWithObjects**

##### Syntax Usage

```
res := self->initWithObjects(
	objects,
	count,
)
```

### [MutableArray\_object ¶](#MutableArray_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L71)

```
MutableArray_object :: proc "c" (
	self:  ^MutableArray, 
	index: UInteger, 
) -> ^Object {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **object**

##### Syntax Usage

```
res := self->object(index)
```

### [MutableArray\_objectAs ¶](#MutableArray_objectAs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin#L75)

```
MutableArray_objectAs :: proc "c" (
	self:  ^MutableArray, 
	index: UInteger, 
	$T:     typeid, 
) -> typeid {…}
```

##### Objective-C Method Information

* Class: [MutableArray](#MutableArray)
* Name: **objectAs**

##### Syntax Usage

```
res := self->objectAs(
	index,
	T,
)
```

### [NSWindow\_setFrameAutosaveName ¶](#NSWindow_setFrameAutosaveName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L932)

```
NSWindow_setFrameAutosaveName :: proc "c" (
	self: ^Window, 
	name: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setFrameAutosaveName**

##### Syntax Usage

```
self->setFrameAutosaveName(name)
```

### [NotificationCenter\_addObserver ¶](#NotificationCenter_addObserver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L65)

```
NotificationCenter_addObserver :: proc "c" (
	self:     ^NotificationCenter, 
	observer: ^Object, 
	selector: ^.objc_selector, 
	name:     ^String, 
	object:   ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [NotificationCenter](#NotificationCenter)
* Name: **addObserver**

##### Syntax Usage

```
self->addObserver(
	observer,
	selector,
	name,
	object,
)
```

### [NotificationCenter\_addObserverForName\_new ¶](#NotificationCenter_addObserverForName_new) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L60)

```
NotificationCenter_addObserverForName_new :: proc "c" (
	self:   ^NotificationCenter, 
	name:   ^String, 
	pObj:   ^Object, 
	pQueue: rawptr, 
	block:  ^runtime.Objc_Block, 
) -> ^Object {…}
```

##### Related Procedure Groups

* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName)

### [NotificationCenter\_addObserverForName\_old ¶](#NotificationCenter_addObserverForName_old) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L56)

```
NotificationCenter_addObserverForName_old :: proc "c" (
	self:   ^NotificationCenter, 
	name:   ^String, 
	pObj:   ^Object, 
	pQueue: rawptr, 
	block:  ^Block, 
) -> ^Object {…}
```

##### Related Procedure Groups

* [NotificationCenter\_addObserverForName](/core/sys/darwin/Foundation/#NotificationCenter_addObserverForName)

### [NotificationCenter\_alloc ¶](#NotificationCenter_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L39)

```
NotificationCenter_alloc :: proc "c" () -> ^NotificationCenter {…}
```

##### Objective-C Method Information

* Class: [NotificationCenter](#NotificationCenter)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := NotificationCenter.alloc()
```

### [NotificationCenter\_defaultCenter ¶](#NotificationCenter_defaultCenter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L49)

```
NotificationCenter_defaultCenter :: proc "c" () -> ^NotificationCenter {…}
```

##### Objective-C Method Information

* Class: [NotificationCenter](#NotificationCenter)
* Name: **defaultCenter**
* Kind: *Class Method*

##### Syntax Usage

```
res := NotificationCenter.defaultCenter()
```

### [NotificationCenter\_init ¶](#NotificationCenter_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L44)

```
NotificationCenter_init :: proc "c" (
	self: ^NotificationCenter, 
) -> ^NotificationCenter {…}
```

##### Objective-C Method Information

* Class: [NotificationCenter](#NotificationCenter)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [NotificationCenter\_removeObserver ¶](#NotificationCenter_removeObserver) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L70)

```
NotificationCenter_removeObserver :: proc "c" (
	self:      ^NotificationCenter, 
	pObserver: ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [NotificationCenter](#NotificationCenter)
* Name: **removeObserver**

##### Syntax Usage

```
self->removeObserver(pObserver)
```

### [Notification\_alloc ¶](#Notification_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L8)

```
Notification_alloc :: proc "c" () -> ^Notification {…}
```

##### Objective-C Method Information

* Class: [Notification](#Notification)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Notification.alloc()
```

### [Notification\_init ¶](#Notification_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L13)

```
Notification_init :: proc "c" (
	self: ^Notification, 
) -> ^Notification {…}
```

##### Objective-C Method Information

* Class: [Notification](#Notification)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Notification\_name ¶](#Notification_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L18)

```
Notification_name :: proc "c" (
	self: ^Notification, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Notification](#Notification)
* Name: **name**

##### Syntax Usage

```
res := self->name()
```

### [Notification\_object ¶](#Notification_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L23)

```
Notification_object :: proc "c" (
	self: ^Notification, 
) -> ^Object {…}
```

##### Objective-C Method Information

* Class: [Notification](#Notification)
* Name: **object**

##### Syntax Usage

```
res := self->object()
```

### [Notification\_userInfo ¶](#Notification_userInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L28)

```
Notification_userInfo :: proc "c" (
	self: ^Notification, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [Notification](#Notification)
* Name: **userInfo**

##### Syntax Usage

```
res := self->userInfo()
```

### [Number\_alloc ¶](#Number_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L69)

```
Number_alloc :: proc "c" () -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.alloc()
```

### [Number\_boolValue ¶](#Number_boolValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L136)

```
Number_boolValue :: proc "c" (
	self: ^Number, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **boolValue**

##### Syntax Usage

```
res := self->boolValue()
```

### [Number\_compare ¶](#Number_compare) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L142)

```
Number_compare :: proc "c" (
	self, 
	other: ^Number, 
) -> ComparisonResult {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **compare**

##### Syntax Usage

```
res := self->compare(other)
```

### [Number\_descriptionWithLocale ¶](#Number_descriptionWithLocale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L152)

```
Number_descriptionWithLocale :: proc "c" (
	self:   ^Number, 
	locale: ^Object, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **descriptionWithLocale**

##### Syntax Usage

```
res := self->descriptionWithLocale(locale)
```

### [Number\_f32Value ¶](#Number_f32Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L134)

```
Number_f32Value :: proc "c" (
	self: ^Number, 
) -> f32 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **f32Value**

##### Syntax Usage

```
res := self->f32Value()
```

### [Number\_f64Value ¶](#Number_f64Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L135)

```
Number_f64Value :: proc "c" (
	self: ^Number, 
) -> f64 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **f64Value**

##### Syntax Usage

```
res := self->f64Value()
```

### [Number\_i16Value ¶](#Number_i16Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L126)

```
Number_i16Value :: proc "c" (
	self: ^Number, 
) -> i16 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **i16Value**

##### Syntax Usage

```
res := self->i16Value()
```

### [Number\_i32Value ¶](#Number_i32Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L128)

```
Number_i32Value :: proc "c" (
	self: ^Number, 
) -> i32 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **i32Value**

##### Syntax Usage

```
res := self->i32Value()
```

### [Number\_i64Value ¶](#Number_i64Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L133)

```
Number_i64Value :: proc "c" (
	self: ^Number, 
) -> i64 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **i64Value**

##### Syntax Usage

```
res := self->i64Value()
```

### [Number\_i8Value ¶](#Number_i8Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L124)

```
Number_i8Value :: proc "c" (
	self: ^Number, 
) -> i8 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **i8Value**

##### Syntax Usage

```
res := self->i8Value()
```

### [Number\_init ¶](#Number_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L74)

```
Number_init :: proc "c" (
	self: ^Number, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Number\_initWithBool ¶](#Number_initWithBool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L121)

```
Number_initWithBool :: proc "c" (
	self:  ^Number, 
	value: bool, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithBool**

##### Syntax Usage

```
res := self->initWithBool(value)
```

### [Number\_initWithF32 ¶](#Number_initWithF32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L119)

```
Number_initWithF32 :: proc "c" (
	self:  ^Number, 
	value: f32, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithF32**

##### Syntax Usage

```
res := self->initWithF32(value)
```

### [Number\_initWithF64 ¶](#Number_initWithF64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L120)

```
Number_initWithF64 :: proc "c" (
	self:  ^Number, 
	value: f64, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithF64**

##### Syntax Usage

```
res := self->initWithF64(value)
```

### [Number\_initWithI16 ¶](#Number_initWithI16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L111)

```
Number_initWithI16 :: proc "c" (
	self:  ^Number, 
	value: i16, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithI16**

##### Syntax Usage

```
res := self->initWithI16(value)
```

### [Number\_initWithI32 ¶](#Number_initWithI32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L113)

```
Number_initWithI32 :: proc "c" (
	self:  ^Number, 
	value: i32, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithI32**

##### Syntax Usage

```
res := self->initWithI32(value)
```

### [Number\_initWithI64 ¶](#Number_initWithI64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L118)

```
Number_initWithI64 :: proc "c" (
	self:  ^Number, 
	value: i64, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithI64**

##### Syntax Usage

```
res := self->initWithI64(value)
```

### [Number\_initWithI8 ¶](#Number_initWithI8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L109)

```
Number_initWithI8 :: proc "c" (
	self:  ^Number, 
	value: i8, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithI8**

##### Syntax Usage

```
res := self->initWithI8(value)
```

### [Number\_initWithInt ¶](#Number_initWithInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L115)

```
Number_initWithInt :: proc "c" (
	self:  ^Number, 
	value: int, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithInt**

##### Syntax Usage

```
res := self->initWithInt(value)
```

### [Number\_initWithU16 ¶](#Number_initWithU16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L112)

```
Number_initWithU16 :: proc "c" (
	self:  ^Number, 
	value: u16, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithU16**

##### Syntax Usage

```
res := self->initWithU16(value)
```

### [Number\_initWithU32 ¶](#Number_initWithU32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L114)

```
Number_initWithU32 :: proc "c" (
	self:  ^Number, 
	value: u32, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithU32**

##### Syntax Usage

```
res := self->initWithU32(value)
```

### [Number\_initWithU64 ¶](#Number_initWithU64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L117)

```
Number_initWithU64 :: proc "c" (
	self:  ^Number, 
	value: u64, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithU64**

##### Syntax Usage

```
res := self->initWithU64(value)
```

### [Number\_initWithU8 ¶](#Number_initWithU8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L110)

```
Number_initWithU8 :: proc "c" (
	self:  ^Number, 
	value: u8, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithU8**

##### Syntax Usage

```
res := self->initWithU8(value)
```

### [Number\_initWithUint ¶](#Number_initWithUint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L116)

```
Number_initWithUint :: proc "c" (
	self:  ^Number, 
	value: uint, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **initWithUint**

##### Syntax Usage

```
res := self->initWithUint(value)
```

### [Number\_intValue ¶](#Number_intValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L130)

```
Number_intValue :: proc "c" (
	self: ^Number, 
) -> int {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **intValue**

##### Syntax Usage

```
res := self->intValue()
```

### [Number\_integerValue ¶](#Number_integerValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L137)

```
Number_integerValue :: proc "c" (
	self: ^Number, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **integerValue**

##### Syntax Usage

```
res := self->integerValue()
```

### [Number\_isEqualToNumber ¶](#Number_isEqualToNumber) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L147)

```
Number_isEqualToNumber :: proc "c" (
	self, 
	other: ^Number, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **isEqualToNumber**

##### Syntax Usage

```
res := self->isEqualToNumber(other)
```

### [Number\_numberWithBool ¶](#Number_numberWithBool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L90)

```
Number_numberWithBool :: proc "c" (
	value: bool, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithBool**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithBool(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithF32 ¶](#Number_numberWithF32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L88)

```
Number_numberWithF32 :: proc "c" (
	value: f32, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithF32**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithF32(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithF64 ¶](#Number_numberWithF64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L89)

```
Number_numberWithF64 :: proc "c" (
	value: f64, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithF64**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithF64(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithI16 ¶](#Number_numberWithI16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L80)

```
Number_numberWithI16 :: proc "c" (
	value: i16, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithI16**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithI16(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithI32 ¶](#Number_numberWithI32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L82)

```
Number_numberWithI32 :: proc "c" (
	value: i32, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithI32**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithI32(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithI64 ¶](#Number_numberWithI64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L87)

```
Number_numberWithI64 :: proc "c" (
	value: i64, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithI64**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithI64(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithI8 ¶](#Number_numberWithI8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L78)

```
Number_numberWithI8 :: proc "c" (
	value: i8, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithI8**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithI8(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithInt ¶](#Number_numberWithInt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L84)

```
Number_numberWithInt :: proc "c" (
	value: int, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithInt**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithInt(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithU16 ¶](#Number_numberWithU16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L81)

```
Number_numberWithU16 :: proc "c" (
	value: u16, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithU16**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithU16(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithU32 ¶](#Number_numberWithU32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L83)

```
Number_numberWithU32 :: proc "c" (
	value: u32, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithU32**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithU32(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithU64 ¶](#Number_numberWithU64) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L86)

```
Number_numberWithU64 :: proc "c" (
	value: u64, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithU64**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithU64(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithU8 ¶](#Number_numberWithU8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L79)

```
Number_numberWithU8 :: proc "c" (
	value: u8, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithU8**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithU8(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_numberWithUint ¶](#Number_numberWithUint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L85)

```
Number_numberWithUint :: proc "c" (
	value: uint, 
) -> ^Number {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **numberWithUint**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.numberWithUint(value)
```

##### Related Procedure Groups

* [Number\_number](/core/sys/darwin/Foundation/#Number_number)

### [Number\_stringValue ¶](#Number_stringValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L139)

```
Number_stringValue :: proc "c" (
	self: ^Number, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **stringValue**

##### Syntax Usage

```
res := self->stringValue()
```

### [Number\_u16Value ¶](#Number_u16Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L127)

```
Number_u16Value :: proc "c" (
	self: ^Number, 
) -> u16 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **u16Value**

##### Syntax Usage

```
res := self->u16Value()
```

### [Number\_u32Value ¶](#Number_u32Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L129)

```
Number_u32Value :: proc "c" (
	self: ^Number, 
) -> u32 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **u32Value**

##### Syntax Usage

```
res := self->u32Value()
```

### [Number\_u64Value ¶](#Number_u64Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L132)

```
Number_u64Value :: proc "c" (
	self: ^Number, 
) -> u64 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **u64Value**

##### Syntax Usage

```
res := self->u64Value()
```

### [Number\_u8Value ¶](#Number_u8Value) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L125)

```
Number_u8Value :: proc "c" (
	self: ^Number, 
) -> u8 {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **u8Value**

##### Syntax Usage

```
res := self->u8Value()
```

### [Number\_uintValue ¶](#Number_uintValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L131)

```
Number_uintValue :: proc "c" (
	self: ^Number, 
) -> uint {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **uintValue**

##### Syntax Usage

```
res := self->uintValue()
```

### [Number\_uintegerValue ¶](#Number_uintegerValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L138)

```
Number_uintegerValue :: proc "c" (
	self: ^Number, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **uintegerValue**

##### Syntax Usage

```
res := self->uintegerValue()
```

### [OpenPanel\_URLs ¶](#OpenPanel_URLs) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L12)

```
OpenPanel_URLs :: proc "c" (
	self: ^OpenPanel, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [OpenPanel](#OpenPanel)
* Name: **URLs**

##### Syntax Usage

```
res := self->URLs()
```

### [OpenPanel\_openPanel ¶](#OpenPanel_openPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L7)

```
OpenPanel_openPanel :: proc "c" () -> ^OpenPanel {…}
```

##### Objective-C Method Information

* Class: [OpenPanel](#OpenPanel)
* Name: **openPanel**
* Kind: *Class Method*

##### Syntax Usage

```
res := OpenPanel.openPanel()
```

### [OpenPanel\_setAllowedFileTypes ¶](#OpenPanel_setAllowedFileTypes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L33)

```
OpenPanel_setAllowedFileTypes :: proc "c" (
	self:  ^OpenPanel, 
	types: ^Array, 
) {…}
```

##### Objective-C Method Information

* Class: [OpenPanel](#OpenPanel)
* Name: **setAllowedFileTypes**

##### Syntax Usage

```
self->setAllowedFileTypes(types)
```

### [OpenPanel\_setAllowsMultipleSelection ¶](#OpenPanel_setAllowsMultipleSelection) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L29)

```
OpenPanel_setAllowsMultipleSelection :: proc "c" (
	self:    ^OpenPanel, 
	setting: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [OpenPanel](#OpenPanel)
* Name: **setAllowsMultipleSelection**

##### Syntax Usage

```
self->setAllowsMultipleSelection(setting)
```

### [OpenPanel\_setCanChooseDirectories ¶](#OpenPanel_setCanChooseDirectories) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L21)

```
OpenPanel_setCanChooseDirectories :: proc "c" (
	self:    ^OpenPanel, 
	setting: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [OpenPanel](#OpenPanel)
* Name: **setCanChooseDirectories**

##### Syntax Usage

```
self->setCanChooseDirectories(setting)
```

### [OpenPanel\_setCanChooseFiles ¶](#OpenPanel_setCanChooseFiles) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L17)

```
OpenPanel_setCanChooseFiles :: proc "c" (
	self:    ^OpenPanel, 
	setting: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [OpenPanel](#OpenPanel)
* Name: **setCanChooseFiles**

##### Syntax Usage

```
self->setCanChooseFiles(setting)
```

### [OpenPanel\_setResolvesAliases ¶](#OpenPanel_setResolvesAliases) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin#L25)

```
OpenPanel_setResolvesAliases :: proc "c" (
	self:    ^OpenPanel, 
	setting: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [OpenPanel](#OpenPanel)
* Name: **setResolvesAliases**

##### Syntax Usage

```
self->setResolvesAliases(setting)
```

### [ProcessInfo\_activeProcessorCount ¶](#ProcessInfo_activeProcessorCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L130)

```
ProcessInfo_activeProcessorCount :: proc "c" (
	self: ^ProcessInfo, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **activeProcessorCount**

##### Syntax Usage

```
res := self->activeProcessorCount()
```

### [ProcessInfo\_arguments ¶](#ProcessInfo_arguments) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L20)

```
ProcessInfo_arguments :: proc "c" (
	self: ^ProcessInfo, 
) -> ^Array {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **arguments**

##### Syntax Usage

```
res := self->arguments()
```

### [ProcessInfo\_automaticTerminationSupportEnabled ¶](#ProcessInfo_automaticTerminationSupportEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L91)

```
ProcessInfo_automaticTerminationSupportEnabled :: proc "c" (
	self: ^ProcessInfo, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **automaticTerminationSupportEnabled**

##### Syntax Usage

```
res := self->automaticTerminationSupportEnabled()
```

### [ProcessInfo\_beginActivityWithOptions ¶](#ProcessInfo_beginActivityWithOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L165)

```
ProcessInfo_beginActivityWithOptions :: proc "c" (
	self:    ^ProcessInfo, 
	options: bit_set[ActivityOptionsBits; u64], 
	reason:  ^String, 
) -> ^ObjectProtocol {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **beginActivityWithOptions**

##### Syntax Usage

```
res := self->beginActivityWithOptions(
	options,
	reason,
)
```

### [ProcessInfo\_disableAutomaticTermination ¶](#ProcessInfo_disableAutomaticTermination) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L81)

```
ProcessInfo_disableAutomaticTermination :: proc "c" (
	self:   ^ProcessInfo, 
	reason: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **disableAutomaticTermination**

##### Syntax Usage

```
self->disableAutomaticTermination(reason)
```

### [ProcessInfo\_disableSuddenTermination ¶](#ProcessInfo_disableSuddenTermination) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L69)

```
ProcessInfo_disableSuddenTermination :: proc "c" (
	self: ^ProcessInfo, 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **disableSuddenTermination**

##### Syntax Usage

```
self->disableSuddenTermination()
```

### [ProcessInfo\_enableAutomaticTermination ¶](#ProcessInfo_enableAutomaticTermination) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L86)

```
ProcessInfo_enableAutomaticTermination :: proc "c" (
	self:   ^ProcessInfo, 
	reason: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **enableAutomaticTermination**

##### Syntax Usage

```
self->enableAutomaticTermination(reason)
```

### [ProcessInfo\_enableSuddenTermination ¶](#ProcessInfo_enableSuddenTermination) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L74)

```
ProcessInfo_enableSuddenTermination :: proc "c" (
	self: ^ProcessInfo, 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **enableSuddenTermination**

##### Syntax Usage

```
self->enableSuddenTermination()
```

### [ProcessInfo\_endActivity ¶](#ProcessInfo_endActivity) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L170)

```
ProcessInfo_endActivity :: proc "c" (
	self:     ^ProcessInfo, 
	activity: ^ObjectProtocol, 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **endActivity**

##### Syntax Usage

```
self->endActivity(activity)
```

### [ProcessInfo\_environment ¶](#ProcessInfo_environment) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L25)

```
ProcessInfo_environment :: proc "c" (
	self: ^ProcessInfo, 
) -> ^Dictionary {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **environment**

##### Syntax Usage

```
res := self->environment()
```

### [ProcessInfo\_fullUserName ¶](#ProcessInfo_fullUserName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L62)

```
ProcessInfo_fullUserName :: proc "c" (
	self: ^ProcessInfo, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **fullUserName**

##### Syntax Usage

```
res := self->fullUserName()
```

### [ProcessInfo\_globallyUniqueString ¶](#ProcessInfo_globallyUniqueString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L30)

```
ProcessInfo_globallyUniqueString :: proc "c" (
	self: ^ProcessInfo, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **globallyUniqueString**

##### Syntax Usage

```
res := self->globallyUniqueString()
```

### [ProcessInfo\_hostName ¶](#ProcessInfo_hostName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L103)

```
ProcessInfo_hostName :: proc "c" (
	self: ^ProcessInfo, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **hostName**

##### Syntax Usage

```
res := self->hostName()
```

### [ProcessInfo\_isLowPowerModeEnabled ¶](#ProcessInfo_isLowPowerModeEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L201)

```
ProcessInfo_isLowPowerModeEnabled :: proc "c" (
	self: ^ProcessInfo, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **isLowPowerModeEnabled**

##### Syntax Usage

```
res := self->isLowPowerModeEnabled()
```

### [ProcessInfo\_isMacCatalystApp ¶](#ProcessInfo_isMacCatalystApp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L35)

```
ProcessInfo_isMacCatalystApp :: proc "c" (
	self: ^ProcessInfo, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **isMacCatalystApp**

##### Syntax Usage

```
res := self->isMacCatalystApp()
```

### [ProcessInfo\_isOperatingSystemAtLeastVersion ¶](#ProcessInfo_isOperatingSystemAtLeastVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L118)

```
ProcessInfo_isOperatingSystemAtLeastVersion :: proc "c" (
	self:    ^ProcessInfo, 
	version: OperatingSystemVersion, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **isOperatingSystemAtLeastVersion**

##### Syntax Usage

```
res := self->isOperatingSystemAtLeastVersion(version)
```

### [ProcessInfo\_isiOSAppOnMac ¶](#ProcessInfo_isiOSAppOnMac) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L40)

```
ProcessInfo_isiOSAppOnMac :: proc "c" (
	self: ^ProcessInfo, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **isiOSAppOnMac**

##### Syntax Usage

```
res := self->isiOSAppOnMac()
```

### [ProcessInfo\_operatingSystemVersion ¶](#ProcessInfo_operatingSystemVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L113)

```
ProcessInfo_operatingSystemVersion :: proc "c" (
	self: ^ProcessInfo, 
) -> OperatingSystemVersion {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **operatingSystemVersion**

##### Syntax Usage

```
res := self->operatingSystemVersion()
```

### [ProcessInfo\_operatingSystemVersionString ¶](#ProcessInfo_operatingSystemVersionString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L108)

```
ProcessInfo_operatingSystemVersionString :: proc "c" (
	self: ^ProcessInfo, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **operatingSystemVersionString**

##### Syntax Usage

```
res := self->operatingSystemVersionString()
```

### [ProcessInfo\_performActivityWithOptions ¶](#ProcessInfo_performActivityWithOptions) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L175)

```
ProcessInfo_performActivityWithOptions :: proc "c" (
	self:    ^ProcessInfo, 
	options: bit_set[ActivityOptionsBits; u64], 
	reason:  ^String, 
	block:   proc "c" (), 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **performActivityWithOptions**

##### Syntax Usage

```
self->performActivityWithOptions(
	options,
	reason,
	block,
)
```

### [ProcessInfo\_performExpiringActivityWithReason ¶](#ProcessInfo_performExpiringActivityWithReason) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L180)

```
ProcessInfo_performExpiringActivityWithReason :: proc "c" (
	self:   ^ProcessInfo, 
	reason: ^String, 
	block:  proc "c" (
	expired: bool, 
), 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **performExpiringActivityWithReason**

##### Syntax Usage

```
self->performExpiringActivityWithReason(
	reason,
	block,
)
```

### [ProcessInfo\_physicalMemory ¶](#ProcessInfo_physicalMemory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L135)

```
ProcessInfo_physicalMemory :: proc "c" (
	self: ^ProcessInfo, 
) -> u64 {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **physicalMemory**

##### Syntax Usage

```
res := self->physicalMemory()
```

### [ProcessInfo\_processIdentifier ¶](#ProcessInfo_processIdentifier) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L45)

```
ProcessInfo_processIdentifier :: proc "c" (
	self: ^ProcessInfo, 
) -> i32 {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **processIdentifier**

##### Syntax Usage

```
res := self->processIdentifier()
```

### [ProcessInfo\_processInfo ¶](#ProcessInfo_processInfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L13)

```
ProcessInfo_processInfo :: proc "c" () -> ^ProcessInfo {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **processInfo**
* Kind: *Class Method*

##### Syntax Usage

```
res := ProcessInfo.processInfo()
```

### [ProcessInfo\_processName ¶](#ProcessInfo_processName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L50)

```
ProcessInfo_processName :: proc "c" (
	self: ^ProcessInfo, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **processName**

##### Syntax Usage

```
res := self->processName()
```

### [ProcessInfo\_processorCount ¶](#ProcessInfo_processorCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L125)

```
ProcessInfo_processorCount :: proc "c" (
	self: ^ProcessInfo, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **processorCount**

##### Syntax Usage

```
res := self->processorCount()
```

### [ProcessInfo\_setAutomaticTerminationSupportEnabled ¶](#ProcessInfo_setAutomaticTerminationSupportEnabled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L96)

```
ProcessInfo_setAutomaticTerminationSupportEnabled :: proc "c" (
	self:                               ^ProcessInfo, 
	automaticTerminationSupportEnabled: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **setAutomaticTerminationSupportEnabled**

##### Syntax Usage

```
self->setAutomaticTerminationSupportEnabled(automaticTerminationSupportEnabled)
```

### [ProcessInfo\_systemUptime ¶](#ProcessInfo_systemUptime) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L140)

```
ProcessInfo_systemUptime :: proc "c" (
	self: ^ProcessInfo, 
) -> TimeInterval {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **systemUptime**

##### Syntax Usage

```
res := self->systemUptime()
```

### [ProcessInfo\_thermalState ¶](#ProcessInfo_thermalState) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L194)

```
ProcessInfo_thermalState :: proc "c" (
	self: ^ProcessInfo, 
) -> ProcessInfoThermalState {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **thermalState**

##### Syntax Usage

```
res := self->thermalState()
```

### [ProcessInfo\_userName ¶](#ProcessInfo_userName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin#L57)

```
ProcessInfo_userName :: proc "c" (
	self: ^ProcessInfo, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [ProcessInfo](#ProcessInfo)
* Name: **userName**

##### Syntax Usage

```
res := self->userName()
```

### [Range\_Equal ¶](#Range_Equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRange.odin#L12)

```
Range_Equal :: proc "c" (
	a, 
	b: Range, 
) -> bool {…}
```

### [Range\_LocationInRange ¶](#Range_LocationInRange) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRange.odin#L16)

```
Range_LocationInRange :: proc "c" (
	self: Range, 
	loc:  UInteger, 
) -> bool {…}
```

### [Range\_Make ¶](#Range_Make) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRange.odin#L8)

```
Range_Make :: proc "c" (
	loc, 
	len: UInteger, 
) -> Range {…}
```

### [Range\_Max ¶](#Range_Max) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRange.odin#L20)

```
Range_Max :: proc "c" (
	self: Range, 
) -> UInteger {…}
```

### [RunLoop\_addTimerForMode ¶](#RunLoop_addTimerForMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L24)

```
RunLoop_addTimerForMode :: proc(
	self:    ^RunLoop, 
	timer:   ^Timer, 
	forMode: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [RunLoop](#RunLoop)
* Name: **addTimerForMode**

##### Syntax Usage

```
self->addTimerForMode(
	timer,
	forMode,
)
```

### [RunLoop\_mainRunLoop ¶](#RunLoop_mainRunLoop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin#L19)

```
RunLoop_mainRunLoop :: proc() -> ^RunLoop {…}
```

##### Objective-C Method Information

* Class: [RunLoop](#RunLoop)
* Name: **mainRunLoop**
* Kind: *Class Method*

##### Syntax Usage

```
res := RunLoop.mainRunLoop()
```

### [RunningApplication\_currentApplication ¶](#RunningApplication_currentApplication) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L209)

```
RunningApplication_currentApplication :: proc "c" () -> ^RunningApplication {…}
```

##### Objective-C Method Information

* Class: [RunningApplication](#RunningApplication)
* Name: **currentApplication**
* Kind: *Class Method*

##### Syntax Usage

```
res := RunningApplication.currentApplication()
```

### [RunningApplication\_finishedLaunching ¶](#RunningApplication_finishedLaunching) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L219)

```
RunningApplication_finishedLaunching :: proc "c" (
	self: ^RunningApplication, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [RunningApplication](#RunningApplication)
* Name: **finishedLaunching**

##### Syntax Usage

```
res := self->finishedLaunching()
```

### [RunningApplication\_localizedName ¶](#RunningApplication_localizedName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L214)

```
RunningApplication_localizedName :: proc "c" (
	self: ^RunningApplication, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [RunningApplication](#RunningApplication)
* Name: **localizedName**

##### Syntax Usage

```
res := self->localizedName()
```

### [SavePanel\_URL ¶](#SavePanel_URL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSavePanel.odin#L17)

```
SavePanel_URL :: proc "c" (
	self: ^SavePanel, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [SavePanel](#SavePanel)
* Name: **URL**

##### Syntax Usage

```
res := self->URL()
```

### [SavePanel\_runModal ¶](#SavePanel_runModal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSavePanel.odin#L7)

```
SavePanel_runModal :: proc "c" (
	self: ^SavePanel, 
) -> ModalResponse {…}
```

##### Objective-C Method Information

* Class: [SavePanel](#SavePanel)
* Name: **runModal**

##### Syntax Usage

```
res := self->runModal()
```

### [SavePanel\_savePanel ¶](#SavePanel_savePanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSavePanel.odin#L12)

```
SavePanel_savePanel :: proc "c" () -> ^SavePanel {…}
```

##### Objective-C Method Information

* Class: [SavePanel](#SavePanel)
* Name: **savePanel**
* Kind: *Class Method*

##### Syntax Usage

```
res := SavePanel.savePanel()
```

### [Screen\_backingScaleFactor ¶](#Screen_backingScaleFactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L39)

```
Screen_backingScaleFactor :: proc "c" (
	self: ^Screen, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **backingScaleFactor**

##### Syntax Usage

```
res := self->backingScaleFactor()
```

### [Screen\_colorSpace ¶](#Screen_colorSpace) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L35)

```
Screen_colorSpace :: proc "c" (
	self: ^Screen, 
) -> ^ColorSpace {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **colorSpace**

##### Syntax Usage

```
res := self->colorSpace()
```

### [Screen\_deepestScreen ¶](#Screen_deepestScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L11)

```
Screen_deepestScreen :: proc "c" () -> ^Screen {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **deepestScreen**
* Kind: *Class Method*

##### Syntax Usage

```
res := Screen.deepestScreen()
```

### [Screen\_depth ¶](#Screen_depth) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L27)

```
Screen_depth :: proc "c" (
	self: ^Screen, 
) -> Depth {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **depth**

##### Syntax Usage

```
res := self->depth()
```

### [Screen\_frame ¶](#Screen_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L23)

```
Screen_frame :: proc "c" (
	self: ^Screen, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **frame**

##### Syntax Usage

```
res := self->frame()
```

### [Screen\_mainScreen ¶](#Screen_mainScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L7)

```
Screen_mainScreen :: proc "c" () -> ^Screen {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **mainScreen**
* Kind: *Class Method*

##### Syntax Usage

```
res := Screen.mainScreen()
```

### [Screen\_screens ¶](#Screen_screens) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L15)

```
Screen_screens :: proc "c" () -> ^Array {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **screens**
* Kind: *Class Method*

##### Syntax Usage

```
res := Screen.screens()
```

### [Screen\_screensHaveSeparateSpaces ¶](#Screen_screensHaveSeparateSpaces) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L19)

```
Screen_screensHaveSeparateSpaces :: proc "c" () -> bool {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **screensHaveSeparateSpaces**
* Kind: *Class Method*

##### Syntax Usage

```
res := Screen.screensHaveSeparateSpaces()
```

### [Screen\_visibleFrame ¶](#Screen_visibleFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin#L31)

```
Screen_visibleFrame :: proc "c" (
	self: ^Screen, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Screen](#Screen)
* Name: **visibleFrame**

##### Syntax Usage

```
res := self->visibleFrame()
```

### [SelectorFromString ¶](#SelectorFromString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L64)

```
SelectorFromString :: proc "c" (
	str: ^String, 
) -> ^.objc_selector ---
```

### [Set\_alloc ¶](#Set_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSet.odin#L8)

```
Set_alloc :: proc "c" () -> ^Set {…}
```

##### Objective-C Method Information

* Class: [Set](#Set)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Set.alloc()
```

### [Set\_init ¶](#Set_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSet.odin#L13)

```
Set_init :: proc "c" (
	self: ^Set, 
) -> ^Set {…}
```

##### Objective-C Method Information

* Class: [Set](#Set)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Set\_initWithCoder ¶](#Set_initWithCoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSet.odin#L25)

```
Set_initWithCoder :: proc "c" (
	self:  ^Set, 
	coder: ^Coder, 
) -> ^Set {…}
```

##### Objective-C Method Information

* Class: [Set](#Set)
* Name: **initWithCoder**

##### Syntax Usage

```
res := self->initWithCoder(coder)
```

### [Set\_initWithObjects ¶](#Set_initWithObjects) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSet.odin#L19)

```
Set_initWithObjects :: proc "c" (
	self:    ^Set, 
	objects: [^]^Object, 
	count:   UInteger, 
) -> ^Set {…}
```

##### Objective-C Method Information

* Class: [Set](#Set)
* Name: **initWithObjects**

##### Syntax Usage

```
res := self->initWithObjects(
	objects,
	count,
)
```

### [StringFromClass ¶](#StringFromClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L61)

```
StringFromClass :: proc "c" (
	cls: ^.objc_class, 
) -> ^String ---
```

### [StringFromSelector ¶](#StringFromSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L63)

```
StringFromSelector :: proc "c" (
	selector: ^.objc_selector, 
) -> ^String ---
```

### [String\_UTF8String ¶](#String_UTF8String) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L113)

```
String_UTF8String :: proc "c" (
	self: ^String, 
) -> cstring {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **UTF8String**

##### Syntax Usage

```
res := self->UTF8String()
```

### [String\_alloc ¶](#String_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L68)

```
String_alloc :: proc "c" () -> ^String {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := String.alloc()
```

### [String\_characterAtIndex ¶](#String_characterAtIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L98)

```
String_characterAtIndex :: proc "c" (
	self:  ^String, 
	index: UInteger, 
) -> unichar {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **characterAtIndex**

##### Syntax Usage

```
res := self->characterAtIndex(index)
```

### [String\_cstringUsingEncoding ¶](#String_cstringUsingEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L108)

```
String_cstringUsingEncoding :: proc "c" (
	self:     ^String, 
	encoding: StringEncoding, 
) -> cstring {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **cstringUsingEncoding**

##### Syntax Usage

```
res := self->cstringUsingEncoding(encoding)
```

### [String\_init ¶](#String_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L73)

```
String_init :: proc "c" (
	self: ^String, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [String\_initWithBytesNoCopy ¶](#String_initWithBytesNoCopy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L88)

```
String_initWithBytesNoCopy :: proc "c" (
	self:         ^String, 
	pBytes:       rawptr, 
	length:       UInteger, 
	encoding:     StringEncoding, 
	freeWhenDone: bool, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **initWithBytesNoCopy**

##### Syntax Usage

```
res := self->initWithBytesNoCopy(
	pBytes,
	length,
	encoding,
	freeWhenDone,
)
```

### [String\_initWithCString ¶](#String_initWithCString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L83)

```
String_initWithCString :: proc "c" (
	self:     ^String, 
	pString:  cstring, 
	encoding: StringEncoding, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **initWithCString**

##### Syntax Usage

```
res := self->initWithCString(
	pString,
	encoding,
)
```

### [String\_initWithOdinString ¶](#String_initWithOdinString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L93)

```
String_initWithOdinString :: proc "c" (
	self: ^String, 
	str:  string, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **initWithOdinString**

##### Syntax Usage

```
res := self->initWithOdinString(str)
```

### [String\_initWithString ¶](#String_initWithString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L78)

```
String_initWithString :: proc "c" (
	self:  ^String, 
	other: ^String, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **initWithString**

##### Syntax Usage

```
res := self->initWithString(other)
```

### [String\_isEqualToString ¶](#String_isEqualToString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L133)

```
String_isEqualToString :: proc "c" (
	self:  ^String, 
	other: ^String, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **isEqualToString**

##### Syntax Usage

```
res := self->isEqualToString(other)
```

### [String\_length ¶](#String_length) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L103)

```
String_length :: proc "c" (
	self: ^String, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **length**

##### Syntax Usage

```
res := self->length()
```

### [String\_lengthOfBytesUsingEncoding ¶](#String_lengthOfBytesUsingEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L128)

```
String_lengthOfBytesUsingEncoding :: proc "c" (
	self:     ^String, 
	encoding: StringEncoding, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **lengthOfBytesUsingEncoding**

##### Syntax Usage

```
res := self->lengthOfBytesUsingEncoding(encoding)
```

### [String\_maximumLengthOfBytesUsingEncoding ¶](#String_maximumLengthOfBytesUsingEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L123)

```
String_maximumLengthOfBytesUsingEncoding :: proc "c" (
	self:     ^String, 
	encoding: StringEncoding, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **maximumLengthOfBytesUsingEncoding**

##### Syntax Usage

```
res := self->maximumLengthOfBytesUsingEncoding(encoding)
```

### [String\_odinString ¶](#String_odinString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L118)

```
String_odinString :: proc "c" (
	self: ^String, 
) -> string {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **odinString**

##### Syntax Usage

```
res := self->odinString()
```

### [String\_rangeOfString ¶](#String_rangeOfString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L143)

```
String_rangeOfString :: proc "c" (
	self, other: ^String, 
	options:     StringCompareOptions, 
) -> Range {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **rangeOfString**

##### Syntax Usage

```
res := self->rangeOfString(
	other,
	options,
)
```

### [String\_stringByAppendingString ¶](#String_stringByAppendingString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin#L138)

```
String_stringByAppendingString :: proc "c" (
	self:  ^String, 
	other: ^String, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [String](#String)
* Name: **stringByAppendingString**

##### Syntax Usage

```
res := self->stringByAppendingString(other)
```

### [Timer\_scheduledTimerWithTimeIntervalRepeatsBlock ¶](#Timer_scheduledTimerWithTimeIntervalRepeatsBlock) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTimer.odin#L7)

```
Timer_scheduledTimerWithTimeIntervalRepeatsBlock :: proc(
	interval: TimeInterval, 
	repeats:  bool, 
	block:    ^Block, 
) -> ^Timer {…}
```

##### Objective-C Method Information

* Class: [Timer](#Timer)
* Name: **scheduledTimerWithTimeIntervalRepeatsBlock**
* Kind: *Class Method*

##### Syntax Usage

```
res := Timer.scheduledTimerWithTimeIntervalRepeatsBlock(
	interval,
	repeats,
	block,
)
```

### [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat ¶](#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTimer.odin#L12)

```
Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat :: proc(
	interval:  TimeInterval, 
	aTarget:   ^.objc_object, 
	aSelector: ^.objc_selector, 
	userInfo:  ^.objc_object, 
	repeats:   bool, 
) -> ^Timer {…}
```

##### Objective-C Method Information

* Class: [Timer](#Timer)
* Name: **scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat**
* Kind: *Class Method*

##### Syntax Usage

```
res := Timer.scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat(
	interval,
	aTarget,
	aSelector,
	userInfo,
	repeats,
)
```

### [Toolbar\_alloc ¶](#Toolbar_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSToolbar.odin#L7)

```
Toolbar_alloc :: proc "c" () -> ^Toolbar {…}
```

##### Objective-C Method Information

* Class: [Toolbar](#Toolbar)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Toolbar.alloc()
```

### [Toolbar\_init ¶](#Toolbar_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSToolbar.odin#L12)

```
Toolbar_init :: proc "c" (
	self: ^Toolbar, 
) -> ^Toolbar {…}
```

##### Objective-C Method Information

* Class: [Toolbar](#Toolbar)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [URLRequest\_alloc ¶](#URLRequest_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLRequest.odin#L7)

```
URLRequest_alloc :: proc "c" () -> ^URLRequest {…}
```

##### Objective-C Method Information

* Class: [URLRequest](#URLRequest)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := URLRequest.alloc()
```

### [URLRequest\_init ¶](#URLRequest_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLRequest.odin#L17)

```
URLRequest_init :: proc "c" (
	self: ^URLRequest, 
) -> ^URLRequest {…}
```

##### Objective-C Method Information

* Class: [URLRequest](#URLRequest)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [URLRequest\_requestWithURL ¶](#URLRequest_requestWithURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLRequest.odin#L12)

```
URLRequest_requestWithURL :: proc "c" (
	url: ^URL, 
) -> ^URLRequest {…}
```

##### Objective-C Method Information

* Class: [URLRequest](#URLRequest)
* Name: **requestWithURL**
* Kind: *Class Method*

##### Syntax Usage

```
res := URLRequest.requestWithURL(url)
```

### [URLRequest\_url ¶](#URLRequest_url) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLRequest.odin#L22)

```
URLRequest_url :: proc "c" (
	self: ^URLRequest, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [URLRequest](#URLRequest)
* Name: **url**

##### Syntax Usage

```
res := self->url()
```

### [URLResponse\_alloc ¶](#URLResponse_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLResponse.odin#L7)

```
URLResponse_alloc :: proc "c" () -> ^URLResponse {…}
```

##### Objective-C Method Information

* Class: [URLResponse](#URLResponse)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := URLResponse.alloc()
```

### [URLResponse\_init ¶](#URLResponse_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLResponse.odin#L12)

```
URLResponse_init :: proc "c" (
	self: ^URLResponse, 
) -> ^URLResponse {…}
```

##### Objective-C Method Information

* Class: [URLResponse](#URLResponse)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [URLResponse\_initWithURL ¶](#URLResponse_initWithURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLResponse.odin#L17)

```
URLResponse_initWithURL :: proc "c" (
	self:      ^URLResponse, 
	url:       ^URL, 
	mime_type: ^String, 
	length:    int, 
	encoding:  ^String, 
) -> ^URLResponse {…}
```

##### Objective-C Method Information

* Class: [URLResponse](#URLResponse)
* Name: **initWithURL**

##### Syntax Usage

```
res := self->initWithURL(
	url,
	mime_type,
	length,
	encoding,
)
```

### [URL\_alloc ¶](#URL_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin#L8)

```
URL_alloc :: proc "c" () -> ^URL {…}
```

##### Objective-C Method Information

* Class: [URL](#URL)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := URL.alloc()
```

### [URL\_fileSystemRepresentation ¶](#URL_fileSystemRepresentation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin#L28)

```
URL_fileSystemRepresentation :: proc "c" (
	self: ^URL, 
) -> cstring {…}
```

##### Objective-C Method Information

* Class: [URL](#URL)
* Name: **fileSystemRepresentation**

##### Syntax Usage

```
res := self->fileSystemRepresentation()
```

### [URL\_init ¶](#URL_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin#L13)

```
URL_init :: proc "c" (
	self: ^URL, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [URL](#URL)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [URL\_initFileURLWithPath ¶](#URL_initFileURLWithPath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin#L23)

```
URL_initFileURLWithPath :: proc "c" (
	self: ^URL, 
	path: ^String, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [URL](#URL)
* Name: **initFileURLWithPath**

##### Syntax Usage

```
res := self->initFileURLWithPath(path)
```

### [URL\_initWithString ¶](#URL_initWithString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin#L18)

```
URL_initWithString :: proc "c" (
	self:  ^URL, 
	value: ^String, 
) -> ^URL {…}
```

##### Objective-C Method Information

* Class: [URL](#URL)
* Name: **initWithString**

##### Syntax Usage

```
res := self->initWithString(value)
```

### [URL\_relativePath ¶](#URL_relativePath) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin#L33)

```
URL_relativePath :: proc "c" (
	self: ^URL, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [URL](#URL)
* Name: **relativePath**

##### Syntax Usage

```
res := self->relativePath()
```

### [UserDefaults\_setBoolForKey ¶](#UserDefaults_setBoolForKey) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUserDefaults.odin#L12)

```
UserDefaults_setBoolForKey :: proc "c" (
	self:  ^UserDefaults, 
	value: bool, 
	name:  ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [UserDefaults](#UserDefaults)
* Name: **setBoolForKey**

##### Syntax Usage

```
self->setBoolForKey(
	value,
	name,
)
```

### [UserDefaults\_standardUserDefaults ¶](#UserDefaults_standardUserDefaults) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUserDefaults.odin#L7)

```
UserDefaults_standardUserDefaults :: proc "c" () -> ^UserDefaults {…}
```

##### Objective-C Method Information

* Class: [UserDefaults](#UserDefaults)
* Name: **standardUserDefaults**
* Kind: *Class Method*

##### Syntax Usage

```
res := UserDefaults.standardUserDefaults()
```

### [Value\_alloc ¶](#Value_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L14)

```
Value_alloc :: proc "c" () -> ^Value {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Value.alloc()
```

### [Value\_getValue ¶](#Value_getValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L44)

```
Value_getValue :: proc "c" (
	self:  ^Value, 
	value: rawptr, 
	size:  UInteger, 
) {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **getValue**

##### Syntax Usage

```
self->getValue(
	value,
	size,
)
```

### [Value\_init ¶](#Value_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L19)

```
Value_init :: proc "c" (
	self: ^Value, 
) -> ^Value {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [Value\_initWithBytes ¶](#Value_initWithBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L34)

```
Value_initWithBytes :: proc "c" (
	self:  ^Value, 
	value: rawptr, 
	type:  cstring, 
) -> ^Value {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **initWithBytes**

##### Syntax Usage

```
res := self->initWithBytes(
	value,
	type,
)
```

### [Value\_initWithCoder ¶](#Value_initWithCoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L39)

```
Value_initWithCoder :: proc "c" (
	self:  ^Value, 
	coder: ^Coder, 
) -> ^Value {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **initWithCoder**

##### Syntax Usage

```
res := self->initWithCoder(coder)
```

### [Value\_isEqualToValue ¶](#Value_isEqualToValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L55)

```
Value_isEqualToValue :: proc "c" (
	self, 
	other: ^Value, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **isEqualToValue**

##### Syntax Usage

```
res := self->isEqualToValue(other)
```

### [Value\_objCType ¶](#Value_objCType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L50)

```
Value_objCType :: proc "c" (
	self: ^Value, 
) -> cstring {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **objCType**

##### Syntax Usage

```
res := self->objCType()
```

### [Value\_pointerValue ¶](#Value_pointerValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L60)

```
Value_pointerValue :: proc "c" (
	self: ^Value, 
) -> rawptr {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **pointerValue**

##### Syntax Usage

```
res := self->pointerValue()
```

### [Value\_valueWithBytes ¶](#Value_valueWithBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L24)

```
Value_valueWithBytes :: proc "c" (
	value: rawptr, 
	type:  cstring, 
) -> ^Value {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **valueWithBytes**
* Kind: *Class Method*

##### Syntax Usage

```
res := Value.valueWithBytes(
	value,
	type,
)
```

### [Value\_valueWithPointer ¶](#Value_valueWithPointer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L29)

```
Value_valueWithPointer :: proc "c" (
	pointer: rawptr, 
) -> ^Value {…}
```

##### Objective-C Method Information

* Class: [Value](#Value)
* Name: **valueWithPointer**
* Kind: *Class Method*

##### Syntax Usage

```
res := Value.valueWithPointer(pointer)
```

### [View\_addSubview ¶](#View_addSubview) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L715)

```
View_addSubview :: proc "c" (
	self: ^View, 
	view: ^View, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **addSubview**

##### Syntax Usage

```
self->addSubview(view)
```

### [View\_alloc ¶](#View_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L682)

```
View_alloc :: proc "c" () -> ^View {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := View.alloc()
```

### [View\_bounds ¶](#View_bounds) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L691)

```
View_bounds :: proc "c" (
	self: ^View, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **bounds**

##### Syntax Usage

```
res := self->bounds()
```

### [View\_convertPointFromView ¶](#View_convertPointFromView) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L711)

```
View_convertPointFromView :: proc "c" (
	self:  ^View, 
	point: CoreFoundation.CGPoint, 
	view:  ^View, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **convertPointFromView**

##### Syntax Usage

```
res := self->convertPointFromView(
	point,
	view,
)
```

### [View\_initWithFrame ¶](#View_initWithFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L687)

```
View_initWithFrame :: proc "c" (
	self:  ^View, 
	frame: CoreFoundation.CGRect, 
) -> ^View {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **initWithFrame**

##### Syntax Usage

```
res := self->initWithFrame(frame)
```

### [View\_isFlipped ¶](#View_isFlipped) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L719)

```
View_isFlipped :: proc "c" (
	self: ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **isFlipped**

##### Syntax Usage

```
res := self->isFlipped()
```

### [View\_layer ¶](#View_layer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L695)

```
View_layer :: proc "c" (
	self: ^View, 
) -> ^Layer {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **layer**

##### Syntax Usage

```
res := self->layer()
```

### [View\_setIsFlipped ¶](#View_setIsFlipped) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L723)

```
View_setIsFlipped :: proc "c" (
	self:    ^View, 
	flipped: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setIsFlipped**

##### Syntax Usage

```
self->setIsFlipped(flipped)
```

### [View\_setLayer ¶](#View_setLayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L699)

```
View_setLayer :: proc "c" (
	self:  ^View, 
	layer: ^Layer, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setLayer**

##### Syntax Usage

```
self->setLayer(layer)
```

### [View\_setWantsLayer ¶](#View_setWantsLayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L707)

```
View_setWantsLayer :: proc "c" (
	self:       ^View, 
	wantsLayer: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **setWantsLayer**

##### Syntax Usage

```
self->setWantsLayer(wantsLayer)
```

### [View\_wantsLayer ¶](#View_wantsLayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L703)

```
View_wantsLayer :: proc "c" (
	self: ^View, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [View](#View)
* Name: **wantsLayer**

##### Syntax Usage

```
res := self->wantsLayer()
```

### [Window\_alloc ¶](#Window_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L731)

```
Window_alloc :: proc "c" () -> ^Window {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **alloc**
* Kind: *Class Method*

##### Syntax Usage

```
res := Window.alloc()
```

### [Window\_backgroundColor ¶](#Window_backgroundColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L776)

```
Window_backgroundColor :: proc "c" (
	self: ^Window, 
) -> ^Color {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **backgroundColor**

##### Syntax Usage

```
res := self->backgroundColor()
```

### [Window\_backingScaleFactor ¶](#Window_backingScaleFactor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L836)

```
Window_backingScaleFactor :: proc "c" (
	self: ^Window, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **backingScaleFactor**

##### Syntax Usage

```
res := self->backingScaleFactor()
```

### [Window\_center ¶](#Window_center) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L764)

```
Window_center :: proc "c" (
	self: ^Window, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **center**

##### Syntax Usage

```
self->center()
```

### [Window\_close ¶](#Window_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L824)

```
Window_close :: proc "c" (
	self: ^Window, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **close**

##### Syntax Usage

```
self->close()
```

### [Window\_collectionBehavior ¶](#Window_collectionBehavior) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L948)

```
Window_collectionBehavior :: proc "c" (
	self: ^Window, 
) -> WindowCollectionBehavior {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **collectionBehavior**

##### Syntax Usage

```
res := self->collectionBehavior()
```

### [Window\_contentLayoutRect ¶](#Window_contentLayoutRect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L748)

```
Window_contentLayoutRect :: proc "c" (
	self: ^Window, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **contentLayoutRect**

##### Syntax Usage

```
res := self->contentLayoutRect()
```

### [Window\_contentRectForFrameRectInstance ¶](#Window_contentRectForFrameRectInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L1000)

```
Window_contentRectForFrameRectInstance :: proc "c" (
	self:      ^Window, 
	frameRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **contentRectForFrameRect**

##### Syntax Usage

```
res := self->contentRectForFrameRect(frameRect)
```

### [Window\_contentRectForFrameRectType ¶](#Window_contentRectForFrameRectType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L988)

```
Window_contentRectForFrameRectType :: proc "c" (
	frameRect: CoreFoundation.CGRect, 
	styleMask: WindowStyleMask, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **contentRectForFrameRect**
* Kind: *Class Method*

##### Syntax Usage

```
res := Window.contentRectForFrameRect(
	frameRect,
	styleMask,
)
```

### [Window\_contentView ¶](#Window_contentView) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L740)

```
Window_contentView :: proc "c" (
	self: ^Window, 
) -> ^View {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **contentView**

##### Syntax Usage

```
res := self->contentView()
```

### [Window\_convertPointFromBacking ¶](#Window_convertPointFromBacking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L848)

```
Window_convertPointFromBacking :: proc "c" (
	self:  ^Window, 
	point: CoreFoundation.CGPoint, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertPointFromBacking**

##### Syntax Usage

```
res := self->convertPointFromBacking(point)
```

### [Window\_convertPointFromScreen ¶](#Window_convertPointFromScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L852)

```
Window_convertPointFromScreen :: proc "c" (
	self:  ^Window, 
	point: CoreFoundation.CGPoint, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertPointFromScreen**

##### Syntax Usage

```
res := self->convertPointFromScreen(point)
```

### [Window\_convertPointToBacking ¶](#Window_convertPointToBacking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L864)

```
Window_convertPointToBacking :: proc "c" (
	self:  ^Window, 
	point: CoreFoundation.CGPoint, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertPointToBacking**

##### Syntax Usage

```
res := self->convertPointToBacking(point)
```

### [Window\_convertPointToScreen ¶](#Window_convertPointToScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L868)

```
Window_convertPointToScreen :: proc "c" (
	self:  ^Window, 
	point: CoreFoundation.CGPoint, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertPointToScreen**

##### Syntax Usage

```
res := self->convertPointToScreen(point)
```

### [Window\_convertRectFromBacking ¶](#Window_convertRectFromBacking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L840)

```
Window_convertRectFromBacking :: proc "c" (
	self: ^Window, 
	rect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertRectFromBacking**

##### Syntax Usage

```
res := self->convertRectFromBacking(rect)
```

### [Window\_convertRectFromScreen ¶](#Window_convertRectFromScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L844)

```
Window_convertRectFromScreen :: proc "c" (
	self: ^Window, 
	rect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertRectFromScreen**

##### Syntax Usage

```
res := self->convertRectFromScreen(rect)
```

### [Window\_convertRectToBacking ¶](#Window_convertRectToBacking) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L856)

```
Window_convertRectToBacking :: proc "c" (
	self: ^Window, 
	rect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertRectToBacking**

##### Syntax Usage

```
res := self->convertRectToBacking(rect)
```

### [Window\_convertRectToScreen ¶](#Window_convertRectToScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L860)

```
Window_convertRectToScreen :: proc "c" (
	self: ^Window, 
	rect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **convertRectToScreen**

##### Syntax Usage

```
res := self->convertRectToScreen(rect)
```

### [Window\_delegate ¶](#Window_delegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L832)

```
Window_delegate :: proc "c" (
	self: ^Window, 
) -> ^WindowDelegate {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **delegate**

##### Syntax Usage

```
res := self->delegate()
```

### [Window\_frame ¶](#Window_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L752)

```
Window_frame :: proc "c" (
	self: ^Window, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **frame**

##### Syntax Usage

```
res := self->frame()
```

### [Window\_frameRectForContentRectInstance ¶](#Window_frameRectForContentRectInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L1004)

```
Window_frameRectForContentRectInstance :: proc "c" (
	self:        ^Window, 
	contentRect: CoreFoundation.CGRect, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **frameRectForContentRect**

##### Syntax Usage

```
res := self->frameRectForContentRect(contentRect)
```

### [Window\_frameRectForContentRectType ¶](#Window_frameRectForContentRectType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L992)

```
Window_frameRectForContentRectType :: proc "c" (
	contentRect: CoreFoundation.CGRect, 
	styleMask:   WindowStyleMask, 
) -> CoreFoundation.CGRect {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **frameRectForContentRect**
* Kind: *Class Method*

##### Syntax Usage

```
res := Window.frameRectForContentRect(
	contentRect,
	styleMask,
)
```

### [Window\_hasCloseBox ¶](#Window_hasCloseBox) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L908)

```
Window_hasCloseBox :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **hasCloseBox**

##### Syntax Usage

```
res := self->hasCloseBox()
```

### [Window\_hasTitleBar ¶](#Window_hasTitleBar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L912)

```
Window_hasTitleBar :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **hasTitleBar**

##### Syntax Usage

```
res := self->hasTitleBar()
```

### [Window\_initWithContentRect ¶](#Window_initWithContentRect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L736)

```
Window_initWithContentRect :: proc(
	self:        ^Window, 
	contentRect: CoreFoundation.CGRect, 
	styleMask:   WindowStyleMask, 
	backing:     BackingStoreType, 
	doDefer:     bool, 
) -> ^Window {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **initWithContentRect**

##### Syntax Usage

```
res := self->initWithContentRect(
	contentRect,
	styleMask,
	backing,
	doDefer,
)
```

### [Window\_isFloatingPanel ¶](#Window_isFloatingPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L904)

```
Window_isFloatingPanel :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **isFloatingPanel**

##### Syntax Usage

```
res := self->isFloatingPanel()
```

### [Window\_isMiniaturizable ¶](#Window_isMiniaturizable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L900)

```
Window_isMiniaturizable :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **isMiniaturizable**

##### Syntax Usage

```
res := self->isMiniaturizable()
```

### [Window\_isModalPanel ¶](#Window_isModalPanel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L896)

```
Window_isModalPanel :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **isModalPanel**

##### Syntax Usage

```
res := self->isModalPanel()
```

### [Window\_isResizable ¶](#Window_isResizable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L892)

```
Window_isResizable :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **isResizable**

##### Syntax Usage

```
res := self->isResizable()
```

### [Window\_isZoomable ¶](#Window_isZoomable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L888)

```
Window_isZoomable :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **isZoomable**

##### Syntax Usage

```
res := self->isZoomable()
```

### [Window\_keyWindow ¶](#Window_keyWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L956)

```
Window_keyWindow :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **keyWindow**

##### Syntax Usage

```
res := self->keyWindow()
```

### [Window\_mainWindow ¶](#Window_mainWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L960)

```
Window_mainWindow :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **mainWindow**

##### Syntax Usage

```
res := self->mainWindow()
```

### [Window\_makeFirstResponder ¶](#Window_makeFirstResponder) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L972)

```
Window_makeFirstResponder :: proc "c" (
	self:      ^Window, 
	responder: ^Responder, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **makeFirstResponder**

##### Syntax Usage

```
res := self->makeFirstResponder(responder)
```

### [Window\_makeKeyAndOrderFront ¶](#Window_makeKeyAndOrderFront) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L792)

```
Window_makeKeyAndOrderFront :: proc "c" (
	self: ^Window, 
	key:  ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **makeKeyAndOrderFront**

##### Syntax Usage

```
self->makeKeyAndOrderFront(key)
```

### [Window\_minFrameWidthWithTitle ¶](#Window_minFrameWidthWithTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L996)

```
Window_minFrameWidthWithTitle :: proc "c" (
	title:     ^String, 
	styleMask: WindowStyleMask, 
) -> CoreFoundation.CGFloat {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **minFrameWidthWithTitle**
* Kind: *Class Method*

##### Syntax Usage

```
res := Window.minFrameWidthWithTitle(
	title,
	styleMask,
)
```

### [Window\_opaque ¶](#Window_opaque) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L768)

```
Window_opaque :: proc "c" (
	self: ^Window, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **opaque**

##### Syntax Usage

```
res := self->opaque()
```

### [Window\_orderFront ¶](#Window_orderFront) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L784)

```
Window_orderFront :: proc "c" (
	self:   ^Window, 
	sender: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **orderFront**

##### Syntax Usage

```
self->orderFront(sender)
```

### [Window\_orderOut ¶](#Window_orderOut) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L788)

```
Window_orderOut :: proc "c" (
	self:   ^Window, 
	sender: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **orderOut**

##### Syntax Usage

```
self->orderOut(sender)
```

### [Window\_orderedIndex ¶](#Window_orderedIndex) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L916)

```
Window_orderedIndex :: proc "c" (
	self: ^Window, 
) -> Integer {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **orderedIndex**

##### Syntax Usage

```
res := self->orderedIndex()
```

### [Window\_parentWindow ¶](#Window_parentWindow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L964)

```
Window_parentWindow :: proc "c" (
	self: ^Window, 
) -> ^Window {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **parentWindow**

##### Syntax Usage

```
res := self->parentWindow()
```

### [Window\_performClose ¶](#Window_performClose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L820)

```
Window_performClose :: proc "c" (
	self:   ^Window, 
	sender: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **performClose**

##### Syntax Usage

```
self->performClose(sender)
```

### [Window\_performWindowDragWithEvent ¶](#Window_performWindowDragWithEvent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L936)

```
Window_performWindowDragWithEvent :: proc "c" (
	self:  ^Window, 
	event: ^Event, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **performWindowDragWithEvent**

##### Syntax Usage

```
self->performWindowDragWithEvent(event)
```

### [Window\_performZoom ¶](#Window_performZoom) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L928)

```
Window_performZoom :: proc "c" (
	self: ^Window, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **performZoom**

##### Syntax Usage

```
self->performZoom()
```

### [Window\_screen ¶](#Window_screen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L1008)

```
Window_screen :: proc "c" (
	self: ^Window, 
) -> ^Screen {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **screen**

##### Syntax Usage

```
res := self->screen()
```

### [Window\_setAcceptsMouseMovedEvents ¶](#Window_setAcceptsMouseMovedEvents) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L812)

```
Window_setAcceptsMouseMovedEvents :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setAcceptsMouseMovedEvents**

##### Syntax Usage

```
self->setAcceptsMouseMovedEvents(ok)
```

### [Window\_setBackgroundColor ¶](#Window_setBackgroundColor) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L780)

```
Window_setBackgroundColor :: proc "c" (
	self:  ^Window, 
	color: ^Color, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setBackgroundColor**

##### Syntax Usage

```
self->setBackgroundColor(color)
```

### [Window\_setCollectionBehavior ¶](#Window_setCollectionBehavior) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L944)

```
Window_setCollectionBehavior :: proc "c" (
	self:     ^Window, 
	behavior: WindowCollectionBehavior, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setCollectionBehavior**

##### Syntax Usage

```
self->setCollectionBehavior(behavior)
```

### [Window\_setContentView ¶](#Window_setContentView) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L744)

```
Window_setContentView :: proc "c" (
	self:         ^Window, 
	content_view: ^View, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setContentView**

##### Syntax Usage

```
self->setContentView(content_view)
```

### [Window\_setDelegate ¶](#Window_setDelegate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L828)

```
Window_setDelegate :: proc "c" (
	self:     ^Window, 
	delegate: ^WindowDelegate, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setDelegate**

##### Syntax Usage

```
self->setDelegate(delegate)
```

### [Window\_setFrame ¶](#Window_setFrame) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L756)

```
Window_setFrame :: proc "c" (
	self:    ^Window, 
	frame:   CoreFoundation.CGRect, 
	display: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setFrame**

##### Syntax Usage

```
self->setFrame(
	frame,
	display,
)
```

### [Window\_setFrameOrigin ¶](#Window_setFrameOrigin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L760)

```
Window_setFrameOrigin :: proc "c" (
	self:   ^Window, 
	origin: CoreFoundation.CGPoint, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setFrameOrigin**

##### Syntax Usage

```
self->setFrameOrigin(origin)
```

### [Window\_setIsMiniaturized ¶](#Window_setIsMiniaturized) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L876)

```
Window_setIsMiniaturized :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setIsMiniaturized**

##### Syntax Usage

```
self->setIsMiniaturized(ok)
```

### [Window\_setIsVisible ¶](#Window_setIsVisible) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L880)

```
Window_setIsVisible :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setIsVisible**

##### Syntax Usage

```
self->setIsVisible(ok)
```

### [Window\_setIsZoomed ¶](#Window_setIsZoomed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L884)

```
Window_setIsZoomed :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setIsZoomed**

##### Syntax Usage

```
self->setIsZoomed(ok)
```

### [Window\_setLevel ¶](#Window_setLevel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L952)

```
Window_setLevel :: proc "c" (
	self:  ^Window, 
	level: WindowLevel, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setLevel**

##### Syntax Usage

```
self->setLevel(level)
```

### [Window\_setMinSize ¶](#Window_setMinSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L920)

```
Window_setMinSize :: proc "c" (
	self: ^Window, 
	size: CoreFoundation.CGSize, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setMinSize**

##### Syntax Usage

```
self->setMinSize(size)
```

### [Window\_setMovable ¶](#Window_setMovable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L804)

```
Window_setMovable :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setMovable**

##### Syntax Usage

```
self->setMovable(ok)
```

### [Window\_setMovableByWindowBackground ¶](#Window_setMovableByWindowBackground) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L808)

```
Window_setMovableByWindowBackground :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setMovableByWindowBackground**

##### Syntax Usage

```
self->setMovableByWindowBackground(ok)
```

### [Window\_setOpaque ¶](#Window_setOpaque) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L772)

```
Window_setOpaque :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setOpaque**

##### Syntax Usage

```
self->setOpaque(ok)
```

### [Window\_setReleasedWhenClosed ¶](#Window_setReleasedWhenClosed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L968)

```
Window_setReleasedWhenClosed :: proc "c" (
	self: ^Window, 
	flag: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setReleasedWhenClosed**

##### Syntax Usage

```
self->setReleasedWhenClosed(flag)
```

### [Window\_setRestorable ¶](#Window_setRestorable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L976)

```
Window_setRestorable :: proc "c" (
	self: ^Window, 
	flag: bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setRestorable**

##### Syntax Usage

```
self->setRestorable(flag)
```

### [Window\_setStyleMask ¶](#Window_setStyleMask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L816)

```
Window_setStyleMask :: proc "c" (
	self:       ^Window, 
	style_mask: WindowStyleMask, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setStyleMask**

##### Syntax Usage

```
self->setStyleMask(style_mask)
```

### [Window\_setTabbingMode ¶](#Window_setTabbingMode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L980)

```
Window_setTabbingMode :: proc "c" (
	self: ^Window, 
	mode: WindowTabbingMode, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setTabbingMode**

##### Syntax Usage

```
self->setTabbingMode(mode)
```

### [Window\_setTitle ¶](#Window_setTitle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L796)

```
Window_setTitle :: proc "c" (
	self:  ^Window, 
	title: ^String, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setTitle**

##### Syntax Usage

```
self->setTitle(title)
```

### [Window\_setTitleVisibility ¶](#Window_setTitleVisibility) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L924)

```
Window_setTitleVisibility :: proc "c" (
	self:       ^Window, 
	visibility: Window_Title_Visibility, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setTitleVisibility**

##### Syntax Usage

```
self->setTitleVisibility(visibility)
```

### [Window\_setTitlebarAppearsTransparent ¶](#Window_setTitlebarAppearsTransparent) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L800)

```
Window_setTitlebarAppearsTransparent :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setTitlebarAppearsTransparent**

##### Syntax Usage

```
self->setTitlebarAppearsTransparent(ok)
```

### [Window\_setToolbar ¶](#Window_setToolbar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L940)

```
Window_setToolbar :: proc "c" (
	self:    ^Window, 
	toolbar: ^Toolbar, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setToolbar**

##### Syntax Usage

```
self->setToolbar(toolbar)
```

### [Window\_setWantsLayer ¶](#Window_setWantsLayer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L872)

```
Window_setWantsLayer :: proc "c" (
	self: ^Window, 
	ok:   bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **setWantsLayer**

##### Syntax Usage

```
self->setWantsLayer(ok)
```

### [Window\_toggleFullScreen ¶](#Window_toggleFullScreen) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L984)

```
Window_toggleFullScreen :: proc "c" (
	self:   ^Window, 
	sender: ^.objc_object, 
) {…}
```

##### Objective-C Method Information

* Class: [Window](#Window)
* Name: **toggleFullScreen**

##### Syntax Usage

```
self->toggleFullScreen(sender)
```

### [alloc ¶](#alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L24)

```
alloc :: proc "c" (
	$T: typeid, 
) -> ^typeid {…}
```

### [alloc\_user\_object ¶](#alloc_user_object) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L125)

```
alloc_user_object :: proc "contextless" (
	cls:      ^.objc_class, 
	_context: runtime.Maybe($T=Context) = nil, 
) -> ^.objc_object {…}
```

### [application\_delegate\_register\_and\_alloc ¶](#application_delegate_register_and_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin#L297)

```
application_delegate_register_and_alloc :: proc(
	template:         ApplicationDelegateTemplate, 
	class_name:       string, 
	delegate_context: runtime.Maybe($T=Context), 
) -> ^ApplicationDelegate {…}
```

### [autorelease ¶](#autorelease) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L49)

```
autorelease :: proc "c" (
	self: ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **autorelease**

##### Syntax Usage

```
self->autorelease()
```

### [bridgingCast ¶](#bridgingCast) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L90)

```
bridgingCast :: proc "c" (
	$T:   typeid, 
	obj: ^Object, 
) {…}
```

### [class ¶](#class) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L57)

```
class :: proc "c" (
	self: ^Object, 
) -> ^.objc_class {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **class**

##### Syntax Usage

```
res := self->class()
```

### [class\_addIvar ¶](#class_addIvar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L57)

```
class_addIvar :: proc "c" (
	cls:       ^.objc_class, 
	name:      cstring, 
	size:      uint, 
	alignment: u8, 
	types:     cstring, 
) -> bool ---
```

### [class\_addMethod ¶](#class_addMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L35)

```
class_addMethod :: proc "c" (
	cls:   ^.objc_class, 
	name:  ^.objc_selector, 
	imp:   IMP, 
	types: cstring, 
) -> bool ---
```

### [class\_addProperty ¶](#class_addProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L49)

```
class_addProperty :: proc "c" (
	cls:            ^.objc_class, 
	name:           cstring, 
	attributes:     [^]objc_property_attribute_t, 
	attributeCount: uint, 
) -> bool ---
```

### [class\_addProtocol ¶](#class_addProtocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L45)

```
class_addProtocol :: proc "c" (
	cls:      ^.objc_class, 
	protocol: ^Protocol, 
) -> bool ---
```

### [class\_conformsToProtocol ¶](#class_conformsToProtocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L52)

```
class_conformsToProtocol :: proc "c" (
	cls:      ^.objc_class, 
	protocol: ^Protocol, 
) -> bool ---
```

### [class\_copyIvarList ¶](#class_copyIvarList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L58)

```
class_copyIvarList :: proc "c" (
	cls:      ^.objc_class, 
	outCount: ^uint, 
) -> [^]^objc_ivar ---
```

### [class\_copyMethodList ¶](#class_copyMethodList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L38)

```
class_copyMethodList :: proc "c" (
	cls:      ^.objc_class, 
	outCount: ^uint, 
) -> [^]^objc_method ---
```

### [class\_copyPropertyList ¶](#class_copyPropertyList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L51)

```
class_copyPropertyList :: proc "c" (
	cls:      ^.objc_class, 
	outCount: ^uint, 
) -> [^]^objc_property ---
```

### [class\_copyProtocolList ¶](#class_copyProtocolList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L53)

```
class_copyProtocolList :: proc "c" (
	cls:      ^.objc_class, 
	outCount: ^uint, 
) -> [^]^Protocol ---
```

### [class\_createInstance ¶](#class_createInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L39)

```
class_createInstance :: proc "c" (
	cls:        ^.objc_class, 
	extraBytes: uint, 
) -> ^.objc_object ---
```

### [class\_getClassMethod ¶](#class_getClassMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L37)

```
class_getClassMethod :: proc "c" (
	cls:  ^.objc_class, 
	name: ^.objc_selector, 
) -> ^objc_method ---
```

### [class\_getClassVariable ¶](#class_getClassVariable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L55)

```
class_getClassVariable :: proc "c" (
	cls:  ^.objc_class, 
	name: cstring, 
) -> ^objc_ivar ---
```

### [class\_getInstanceMethod ¶](#class_getInstanceMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L36)

```
class_getInstanceMethod :: proc "c" (
	cls:  ^.objc_class, 
	name: ^.objc_selector, 
) -> ^objc_method ---
```

### [class\_getInstanceSize ¶](#class_getInstanceSize) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L59)

```
class_getInstanceSize :: proc "c" (
	cls: ^.objc_class, 
) -> uint ---
```

### [class\_getInstanceVariable ¶](#class_getInstanceVariable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L56)

```
class_getInstanceVariable :: proc "c" (
	cls:  ^.objc_class, 
	name: cstring, 
) -> ^objc_ivar ---
```

### [class\_getMethodImplementation ¶](#class_getMethodImplementation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L41)

```
class_getMethodImplementation :: proc "c" (
	cls:  ^.objc_class, 
	name: ^.objc_selector, 
) -> IMP ---
```

### [class\_getName ¶](#class_getName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L43)

```
class_getName :: proc "c" (
	cls: ^.objc_class, 
) -> cstring ---
```

### [class\_getProperty ¶](#class_getProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L48)

```
class_getProperty :: proc "c" (
	cls:  ^.objc_class, 
	name: cstring, 
) -> ^objc_property ---
```

### [class\_getSuperclass ¶](#class_getSuperclass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L42)

```
class_getSuperclass :: proc "c" (
	cls: ^.objc_class, 
) -> ^.objc_class ---
```

### [class\_getVersion ¶](#class_getVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L46)

```
class_getVersion :: proc "c" (
	cls: ^.objc_class, 
) -> i32 ---
```

### [class\_get\_metaclass ¶](#class_get_metaclass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L21)

```
class_get_metaclass :: proc "contextless" (
	cls: ^.objc_class, 
) -> ^.objc_class {…}
```

### [class\_get\_vtable\_info ¶](#class_get_vtable_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L112)

```
class_get_vtable_info :: proc "contextless" (
	cls: ^.objc_class, 
) -> ^Class_VTable_Info {…}
```

### [class\_isMetaClass ¶](#class_isMetaClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L44)

```
class_isMetaClass :: proc "c" (
	cls: ^.objc_class, 
) -> bool ---
```

### [class\_replaceMethod ¶](#class_replaceMethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L40)

```
class_replaceMethod :: proc "c" (
	cls:   ^.objc_class, 
	name:  ^.objc_selector, 
	imp:   IMP, 
	types: cstring, 
) -> IMP ---
```

### [class\_replaceProperty ¶](#class_replaceProperty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L50)

```
class_replaceProperty :: proc "c" (
	cls:            ^.objc_class, 
	name:           cstring, 
	attributes:     [^]objc_property_attribute_t, 
	attributeCount: uint, 
) ---
```

### [class\_respondsToSelector ¶](#class_respondsToSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L54)

```
class_respondsToSelector :: proc "c" (
	cls: ^.objc_class, 
	sel: ^.objc_selector, 
) -> bool ---
```

### [class\_setVersion ¶](#class_setVersion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L47)

```
class_setVersion :: proc "c" (
	cls:     ^.objc_class, 
	version: i32, 
) ---
```

### [copy ¶](#copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L32)

```
copy :: proc "c" (
	self: ^Copying($T), 
) -> $$deferred_return {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **copy**

##### Syntax Usage

```
res := self->copy()
```

### [debugDescription ¶](#debugDescription) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L77)

```
debugDescription :: proc "c" (
	self: ^Object, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **debugDescription**

##### Syntax Usage

```
res := self->debugDescription()
```

### [description ¶](#description) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L72)

```
description :: proc "c" (
	self: ^Object, 
) -> ^String {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **description**

##### Syntax Usage

```
res := self->description()
```

### [hash ¶](#hash) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L62)

```
hash :: proc "c" (
	self: ^Object, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **hash**

##### Syntax Usage

```
res := self->hash()
```

### [init ¶](#init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L28)

```
init :: proc "c" (
	self: ^$T, 
) -> $$deferred_return {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **init**

##### Syntax Usage

```
res := self->init()
```

### [isEqual ¶](#isEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L67)

```
isEqual :: proc "c" (
	self, 
	pObject: ^Object, 
) -> bool {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **isEqual**

##### Syntax Usage

```
res := self->isEqual(pObject)
```

### [ivar\_getName ¶](#ivar_getName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L88)

```
ivar_getName :: proc "c" (
	v: ^objc_ivar, 
) -> cstring ---
```

### [ivar\_getOffset ¶](#ivar_getOffset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L90)

```
ivar_getOffset :: proc "c" (
	v: ^objc_ivar, 
) -> c.ptrdiff_t ---
```

### [ivar\_getTypeEncoding ¶](#ivar_getTypeEncoding) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L89)

```
ivar_getTypeEncoding :: proc "c" (
	v: ^objc_ivar, 
) -> cstring ---
```

### [make\_subclasser ¶](#make_subclasser) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L31)

```
make_subclasser :: proc(
	vtable: ^$T, 
	impl:   proc(
	cls: ^.objc_class, 
	vt:  ^$T, 
), 
) -> Object_VTable_Info {…}
```

### [methodSignatureForSelector ¶](#methodSignatureForSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L5)

```
methodSignatureForSelector :: proc "c" (
	obj:      ^Object, 
	selector: ^.objc_selector, 
) -> rawptr {…}
```

### [method\_copyArgumentType ¶](#method_copyArgumentType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L72)

```
method_copyArgumentType :: proc "c" (
	m:     ^objc_method, 
	index: uint, 
) -> cstring ---
```

### [method\_getArgumentType ¶](#method_getArgumentType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L75)

```
method_getArgumentType :: proc "c" (
	m:       ^objc_method, 
	index:   uint, 
	dst:     cstring, 
	dst_len: uint, 
) ---
```

### [method\_getImplementation ¶](#method_getImplementation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L70)

```
method_getImplementation :: proc "c" (
	m: ^objc_method, 
) -> IMP ---
```

### [method\_getNumberOfArguments ¶](#method_getNumberOfArguments) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L74)

```
method_getNumberOfArguments :: proc "c" (
	m: ^objc_method, 
) -> uint ---
```

### [method\_getReturnType ¶](#method_getReturnType) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L73)

```
method_getReturnType :: proc "c" (
	m:       ^objc_method, 
	dst:     cstring, 
	dst_len: uint, 
) ---
```

### [method\_setImplementation ¶](#method_setImplementation) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L71)

```
method_setImplementation :: proc "c" (
	m:   ^objc_method, 
	imp: IMP, 
) ---
```

### [msgSendSafeCheck ¶](#msgSendSafeCheck) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L13)

```
msgSendSafeCheck :: proc "c" (
	obj:      ^Object, 
	selector: ^.objc_selector, 
) -> bool {…}
```

### [new ¶](#new) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L36)

```
new :: proc "c" (
	$T: typeid, 
) -> ^typeid {…}
```

### [objc\_allocateClassPair ¶](#objc_allocateClassPair) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L16)

```
objc_allocateClassPair :: proc "c" (
	superclass: ^.objc_class, 
	name:       cstring, 
	extraBytes: uint, 
) -> ^.objc_class ---
```

### [objc\_constructInstance ¶](#objc_constructInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L22)

```
objc_constructInstance :: proc "c" (
	cls:   ^.objc_class, 
	bytes: rawptr, 
) -> ^.objc_object ---
```

### [objc\_copyClassList ¶](#objc_copyClassList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L25)

```
objc_copyClassList :: proc "c" (
	outCount: ^uint, 
) -> [^]^.objc_class ---
```

### [objc\_copyProtocolList ¶](#objc_copyProtocolList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L21)

```
objc_copyProtocolList :: proc "c" (
	outCount: ^uint, 
) -> [^]^Protocol ---
```

### [objc\_destructInstance ¶](#objc_destructInstance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L23)

```
objc_destructInstance :: proc "c" (
	obj: ^.objc_object, 
) -> rawptr ---
```

### [objc\_disposeClassPair ¶](#objc_disposeClassPair) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L18)

```
objc_disposeClassPair :: proc "c" (
	cls: ^.objc_class, 
) ---
```

### [objc\_duplicateClass ¶](#objc_duplicateClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L19)

```
objc_duplicateClass :: proc "c" (
	original:   ^.objc_class, 
	name:       cstring, 
	extraBytes: uint, 
) -> ^.objc_class ---
```

### [objc\_getAssociatedObject ¶](#objc_getAssociatedObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L28)

```
objc_getAssociatedObject :: proc "c" (
	object: ^.objc_object, 
	key:    rawptr, 
) -> ^.objc_object ---
```

### [objc\_getClassList ¶](#objc_getClassList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L24)

```
objc_getClassList :: proc "c" (
	buffer:      [^]^.objc_class, 
	bufferCount: int, 
) -> int ---
```

### [objc\_getMetaClass ¶](#objc_getMetaClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L14)

```
objc_getMetaClass :: proc "c" (
	name: cstring, 
) -> ^.objc_object ---
```

### [objc\_getProtocol ¶](#objc_getProtocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L20)

```
objc_getProtocol :: proc "c" (
	name: cstring, 
) -> ^Protocol ---
```

### [objc\_getRequiredClass ¶](#objc_getRequiredClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L26)

```
objc_getRequiredClass :: proc "c" (
	name: cstring, 
) -> ^.objc_class ---
```

### [objc\_lookUpClass ¶](#objc_lookUpClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L15)

```
objc_lookUpClass :: proc "c" (
	name: cstring, 
) -> ^.objc_class ---
```

### [objc\_registerClassPair ¶](#objc_registerClassPair) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L17)

```
objc_registerClassPair :: proc "c" (
	cls: ^.objc_class, 
) ---
```

### [objc\_removeAssociatedObjects ¶](#objc_removeAssociatedObjects) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L29)

```
objc_removeAssociatedObjects :: proc "c" (
	object: ^.objc_object, 
) ---
```

### [objc\_setAssociatedObject ¶](#objc_setAssociatedObject) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L27)

```
objc_setAssociatedObject :: proc "c" (
	object: ^.objc_object, 
	key:    rawptr, 
	value:  ^.objc_object, 
	policy: objc_AssociationPolicy, 
) ---
```

### [object\_copy ¶](#object_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L79)

```
object_copy :: proc "c" (
	obj:  ^.objc_object, 
	size: uint, 
) -> ^.objc_object ---
```

### [object\_dispose ¶](#object_dispose) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L80)

```
object_dispose :: proc "c" (
	obj: ^.objc_object, 
) -> ^.objc_object ---
```

### [object\_getClass ¶](#object_getClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L77)

```
object_getClass :: proc "c" (
	obj: ^.objc_object, 
) -> ^.objc_class ---
```

### [object\_getClassName ¶](#object_getClassName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L81)

```
object_getClassName :: proc "c" (
	obj: ^.objc_object, 
) -> cstring ---
```

### [object\_getIndexedIvars ¶](#object_getIndexedIvars) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L82)

```
object_getIndexedIvars :: proc "c" (
	obj: ^.objc_object, 
) -> rawptr ---
```

### [object\_getInstanceVariable ¶](#object_getInstanceVariable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L83)

```
object_getInstanceVariable :: proc "c" (
	obj:      ^.objc_object, 
	name:     cstring, 
	outValue: rawptr, 
) -> ^objc_ivar ---
```

### [object\_getIvar ¶](#object_getIvar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L85)

```
object_getIvar :: proc "c" (
	obj:  ^.objc_object, 
	ivar: ^objc_ivar, 
) -> ^.objc_object ---
```

### [object\_get\_vtable\_info ¶](#object_get_vtable_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L26)

```
object_get_vtable_info :: proc "contextless" (
	obj: ^.objc_object, 
) -> ^Class_VTable_Info {…}
```

### [object\_setClass ¶](#object_setClass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L78)

```
object_setClass :: proc "c" (
	obj: ^.objc_object, 
	cls: ^.objc_class, 
) -> ^.objc_class ---
```

### [object\_setInstanceVariable ¶](#object_setInstanceVariable) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L84)

```
object_setInstanceVariable :: proc "c" (
	obj:   ^.objc_object, 
	name:  cstring, 
	value: rawptr, 
) -> ^objc_ivar ---
```

### [object\_setIvar ¶](#object_setIvar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L86)

```
object_setIvar :: proc "c" (
	obj:   ^.objc_object, 
	ivar:  ^objc_ivar, 
	value: ^.objc_object, 
) ---
```

### [performSelectorOnMainThread ¶](#performSelectorOnMainThread) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L86)

```
performSelectorOnMainThread :: proc "c" (
	self:      ^Object, 
	aSelector: ^.objc_selector, 
	arg:       ^.objc_object, 
	wait:      bool, 
) {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **performSelectorOnMainThread**

##### Syntax Usage

```
self->performSelectorOnMainThread(
	aSelector,
	arg,
	wait,
)
```

### [property\_copyAttributeList ¶](#property_copyAttributeList) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L63)

```
property_copyAttributeList :: proc "c" (
	property: ^objc_property, 
	outCount: ^uint, 
) -> [^]objc_property_attribute_t ---
```

### [property\_copyAttributeValue ¶](#property_copyAttributeValue) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L64)

```
property_copyAttributeValue :: proc "c" (
	property:      ^objc_property, 
	attributeName: cstring, 
) -> cstring ---
```

### [property\_getAttributes ¶](#property_getAttributes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L62)

```
property_getAttributes :: proc "c" (
	property: ^objc_property, 
) -> cstring ---
```

### [property\_getName ¶](#property_getName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L61)

```
property_getName :: proc "c" (
	property: ^objc_property, 
) -> cstring ---
```

### [protocol\_conformsToProtocol ¶](#protocol_conformsToProtocol) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L66)

```
protocol_conformsToProtocol :: proc "c" (
	proto: ^Protocol, 
	other: ^Protocol, 
) -> bool ---
```

### [protocol\_getName ¶](#protocol_getName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L68)

```
protocol_getName :: proc "c" (
	proto: ^Protocol, 
) -> cstring ---
```

### [protocol\_isEqual ¶](#protocol_isEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L67)

```
protocol_isEqual :: proc "c" (
	proto: ^Protocol, 
	other: ^Protocol, 
) -> bool ---
```

### [register\_subclass ¶](#register_subclass) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin#L40)

```
register_subclass :: proc(
	class_name:           cstring, 
	superclass:           ^.objc_class, 
	superclass_overrides: runtime.Maybe($T=Object_VTable_Info) = nil, 
	protocol:             runtime.Maybe($T=Object_VTable_Info) = nil, 
	_context:             runtime.Maybe($T=Context) = nil, 
) -> ^.objc_class {…}
```

### [release ¶](#release) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L45)

```
release :: proc "c" (
	self: ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **release**

##### Syntax Usage

```
self->release()
```

### [respondsToSelector ¶](#respondsToSelector) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L9)

```
respondsToSelector :: proc "c" (
	obj:      ^Object, 
	selector: ^.objc_selector, 
) -> bool {…}
```

### [retain ¶](#retain) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L41)

```
retain :: proc "c" (
	self: ^Object, 
) {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **retain**

##### Syntax Usage

```
self->retain()
```

### [retainCount ¶](#retainCount) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin#L53)

```
retainCount :: proc "c" (
	self: ^Object, 
) -> UInteger {…}
```

##### Objective-C Method Information

* Class: [Object](#Object)
* Name: **retainCount**

##### Syntax Usage

```
res := self->retainCount()
```

### [scoped\_autoreleasepool ¶](#scoped_autoreleasepool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin#L31)

```
scoped_autoreleasepool :: proc "c" () -> ^AutoreleasePool {…}
```

### [sel\_getName ¶](#sel_getName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L32)

```
sel_getName :: proc "c" (
	sel: ^.objc_selector, 
) -> cstring ---
```

### [sel\_isEqual ¶](#sel_isEqual) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L33)

```
sel_isEqual :: proc "c" (
	lhs, 
	rhs: ^.objc_selector, 
) -> bool ---
```

### [sel\_registerName ¶](#sel_registerName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin#L31)

```
sel_registerName :: proc "c" (
	name: cstring, 
) -> ^.objc_selector ---
```

### [tilt ¶](#tilt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin#L462)

```
tilt :: proc "c" (
	self: ^Event, 
) -> CoreFoundation.CGPoint {…}
```

##### Objective-C Method Information

* Class: [Event](#Event)
* Name: **tilt**

##### Syntax Usage

```
res := self->tilt()
```

### [window\_delegate\_register\_and\_alloc ¶](#window_delegate_register_and_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin#L213)

```
window_delegate_register_and_alloc :: proc(
	template:         WindowDelegateTemplate, 
	class_name:       string, 
	delegate_context: runtime.Maybe($T=Context), 
) -> ^WindowDelegate {…}
```

## Procedure Groups

### [BitmapImageRep\_initWithBitmapDataPlanes ¶](#BitmapImageRep_initWithBitmapDataPlanes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin#L67)

```
BitmapImageRep_initWithBitmapDataPlanes :: proc{
	BitmapImageRep_initWithBitmapDataPlanes_legacy,
	BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat,
}
```

##### Objective-C Method Information

* Class: [BitmapImageRep](#BitmapImageRep)
* Name: **initWithBitmapDataPlanes**

##### Syntax Usage

```
res := self->initWithBitmapDataPlanes(
	bitmapDataPlanes,
	pixelsWide,
	pixelsHigh,
	bitsPerSample,
	samplesPerPixel,
	hasAlpha,
	isPlanar,
	colorSpaceName,
	bytesPerRow,
	bitsPerPixel,
)
res := self->initWithBitmapDataPlanes(
	bitmapDataPlanes,
	pixelsWide,
	pixelsHigh,
	bitsPerSample,
	samplesPerPixel,
	hasAlpha,
	isPlanar,
	colorSpaceName,
	bitmapFormat,
	bytesPerRow,
	bitsPerPixel,
)
```

### [MenuDelegate\_menu ¶](#MenuDelegate_menu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L560)

```
MenuDelegate_menu :: proc{
	MenuDelegate_menu_updateItem_atIndex_shouldCancel,
	MenuDelegate_menu_willHighlightItem,
}
```

##### Objective-C Method Information

* Class: [MenuDelegate](#MenuDelegate)
* Name: **menu**

##### Syntax Usage

```
res := self->menu(
	menu,
	item,
	index,
	shouldCancel,
)
self->menu(
	menu,
	item,
)
```

### [MenuItem\_cancelPreviousPerformRequestsWithTarget ¶](#MenuItem_cancelPreviousPerformRequestsWithTarget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin#L457)

```
MenuItem_cancelPreviousPerformRequestsWithTarget :: proc{
	MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object,
	MenuItem_cancelPreviousPerformRequestsWithTarget_,
}
```

##### Objective-C Method Information

* Class: [MenuItem](#MenuItem)
* Name: **cancelPreviousPerformRequestsWithTarget**

##### Syntax Usage

```
self->cancelPreviousPerformRequestsWithTarget(
	aSelector,
	anArgument,
)
self->cancelPreviousPerformRequestsWithTarget()
```

### [Menu\_cancelPreviousPerformRequestsWithTarget ¶](#Menu_cancelPreviousPerformRequestsWithTarget) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L513)

```
Menu_cancelPreviousPerformRequestsWithTarget :: proc{
	Menu_cancelPreviousPerformRequestsWithTarget_selector_object,
	Menu_cancelPreviousPerformRequestsWithTarget_,
}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **cancelPreviousPerformRequestsWithTarget**

##### Syntax Usage

```
self->cancelPreviousPerformRequestsWithTarget(
	aSelector,
	anArgument,
)
self->cancelPreviousPerformRequestsWithTarget()
```

### [Menu\_paletteMenuWithColors ¶](#Menu_paletteMenuWithColors) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L507)

```
Menu_paletteMenuWithColors :: proc{
	Menu_paletteMenuWithColors_titles_selectionHandler,
}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **paletteMenuWithColors**

##### Syntax Usage

```
res := self->paletteMenuWithColors(
	itemTitles,
	onSelectionChange,
)
```

### [Menu\_popUpContextMenu ¶](#Menu_popUpContextMenu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin#L501)

```
Menu_popUpContextMenu :: proc{
	Menu_popUpContextMenu_withEvent_forView,
}
```

##### Objective-C Method Information

* Class: [Menu](#Menu)
* Name: **popUpContextMenu**

##### Syntax Usage

```
self->popUpContextMenu(
	event,
	view,
)
```

### [NotificationCenter\_addObserverForName ¶](#NotificationCenter_addObserverForName) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin#L54)

```
NotificationCenter_addObserverForName :: proc{
	NotificationCenter_addObserverForName_old,
	NotificationCenter_addObserverForName_new,
}
```

##### Objective-C Method Information

* Class: [NotificationCenter](#NotificationCenter)
* Name: **addObserverForName**

##### Syntax Usage

```
res := self->addObserverForName(
	name,
	pObj,
	pQueue,
	block,
)
res := self->addObserverForName(
	name,
	pObj,
	pQueue,
	block,
)
```

### [Number\_number ¶](#Number_number) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin#L93)

```
Number_number :: proc{
	Number_numberWithI8,
	Number_numberWithU8,
	Number_numberWithI16,
	Number_numberWithU16,
	Number_numberWithI32,
	Number_numberWithU32,
	Number_numberWithInt,
	Number_numberWithUint,
	Number_numberWithU64,
	Number_numberWithI64,
	Number_numberWithF32,
	Number_numberWithF64,
	Number_numberWithBool,
}
```

##### Objective-C Method Information

* Class: [Number](#Number)
* Name: **number**
* Kind: *Class Method*

##### Syntax Usage

```
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
res := Number.number(value)
```

## Source Files

* [NSApplication.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSApplication.odin)
* [NSArray.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSArray.odin)
* [NSAutoreleasePool.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSAutoreleasePool.odin)
* [NSBitmapImageRep.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBitmapImageRep.odin)
* [NSBlock.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBlock.odin)
* [NSBundle.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSBundle.odin)
* [NSColor.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSColor.odin)
* [NSCursor.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSCursor.odin)
* [NSData.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSData.odin)
* [NSDate.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDate.odin)
* [NSDictionary.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSDictionary.odin)
* [NSEnumerator.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEnumerator.odin)
* [NSError.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSError.odin)
* [NSEvent.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSEvent.odin)
* [NSImage.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSImage.odin)
* [NSImageRep.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSImageRep.odin)
* [NSLock.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSLock.odin)
* [NSMenu.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenu.odin)
* [NSMenuItem.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSMenuItem.odin)
* [NSNotification.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNotification.odin)
* [NSNumber.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSNumber.odin)
* [NSObject.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObject.odin)
* [NSObjectProtocol.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSObjectProtocol.odin)
* [NSOpenPanel.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSOpenPanel.odin)
* [NSPanel.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSPanel.odin)
* [NSPasteboard.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSPasteboard.odin)
* [NSProcessInfo.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSProcessInfo.odin)
* [NSRange.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRange.odin)
* [NSRunLoop.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSRunLoop.odin)
* [NSSavePanel.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSavePanel.odin)
* [NSScreen.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSScreen.odin)
* [NSSet.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSSet.odin)
* [NSString.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSString.odin)
* [NSTimer.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTimer.odin)
* [NSToolbar.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSToolbar.odin)
* [NSTypes.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSTypes.odin)
* [NSURL.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURL.odin)
* [NSURLRequest.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLRequest.odin)
* [NSURLResponse.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSURLResponse.odin)
* [NSUndoManager.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUndoManager.odin)
* [NSUserActivity.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUserActivity.odin)
* [NSUserDefaults.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSUserDefaults.odin)
* [NSWindow.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/NSWindow.odin)
* [objc.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc.odin)
* [objc\_helper.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Foundation/objc_helper.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.537678300 +0000 UTC`

* [Types](#pkg-Types)
  + [ActivationPolicy](#ActivationPolicy)
  + [ActivityOptions](#ActivityOptions)
  + [ActivityOptionsBits](#ActivityOptionsBits)
  + [Application](#Application)
  + [ApplicationDelegate](#ApplicationDelegate)
  + [ApplicationDelegateTemplate](#ApplicationDelegateTemplate)
  + [ApplicationPresentationOptionFlag](#ApplicationPresentationOptionFlag)
  + [ApplicationPresentationOptions](#ApplicationPresentationOptions)
  + [ApplicationPrintReply](#ApplicationPrintReply)
  + [ApplicationTerminateReply](#ApplicationTerminateReply)
  + [Array](#Array)
  + [AutoreleasePool](#AutoreleasePool)
  + [BOOL](#BOOL)
  + [BackingStoreType](#BackingStoreType)
  + [BitmapFormatFlag](#BitmapFormatFlag)
  + [BitmapFormatFlags](#BitmapFormatFlags)
  + [BitmapImageRep](#BitmapImageRep)
  + [BitmapInteger](#BitmapInteger)
  + [Block](#Block)
  + [Bundle](#Bundle)
  + [Class](#Class)
  + [Class\_VTable\_Info](#Class_VTable_Info)
  + [Coder](#Coder)
  + [Color](#Color)
  + [ColorSpace](#ColorSpace)
  + [ComparisonResult](#ComparisonResult)
  + [Condition](#Condition)
  + [Copying](#Copying)
  + [Cursor](#Cursor)
  + [Data](#Data)
  + [Date](#Date)
  + [Depth](#Depth)
  + [Dictionary](#Dictionary)
  + [Enumerator](#Enumerator)
  + [Error](#Error)
  + [ErrorDomain](#ErrorDomain)
  + [ErrorUserInfoKey](#ErrorUserInfoKey)
  + [Event](#Event)
  + [EventMask](#EventMask)
  + [EventModifierFlag](#EventModifierFlag)
  + [EventModifierFlags](#EventModifierFlags)
  + [EventPhase](#EventPhase)
  + [EventPhaseFlag](#EventPhaseFlag)
  + [EventType](#EventType)
  + [FastEnumeration](#FastEnumeration)
  + [FastEnumerationState](#FastEnumerationState)
  + [Float](#Float)
  + [IMP](#IMP)
  + [Image](#Image)
  + [ImageRep](#ImageRep)
  + [Integer](#Integer)
  + [Ivar](#Ivar)
  + [KeyEquivalentModifierFlag](#KeyEquivalentModifierFlag)
  + [KeyEquivalentModifierMask](#KeyEquivalentModifierMask)
  + [Layer](#Layer)
  + [Locking](#Locking)
  + [Menu](#Menu)
  + [MenuDelegate](#MenuDelegate)
  + [MenuItem](#MenuItem)
  + [MenuItemCallback](#MenuItemCallback)
  + [MenuPresentationStyle](#MenuPresentationStyle)
  + [MenuProperties](#MenuProperties)
  + [MenuPropertyItem](#MenuPropertyItem)
  + [MenuSelectionMode](#MenuSelectionMode)
  + [Method](#Method)
  + [ModalResponse](#ModalResponse)
  + [MutableArray](#MutableArray)
  + [Notification](#Notification)
  + [NotificationCenter](#NotificationCenter)
  + [NotificationName](#NotificationName)
  + [Number](#Number)
  + [Object](#Object)
  + [ObjectProtocol](#ObjectProtocol)
  + [Object\_VTable\_Info](#Object_VTable_Info)
  + [OpenPanel](#OpenPanel)
  + [OperatingSystemVersion](#OperatingSystemVersion)
  + [Panel](#Panel)
  + [Pasteboard](#Pasteboard)
  + [Point](#Point)
  + [PointingDeviceType](#PointingDeviceType)
  + [ProcessInfo](#ProcessInfo)
  + [ProcessInfoThermalState](#ProcessInfoThermalState)
  + [Protocol](#Protocol)
  + [Range](#Range)
  + [Rect](#Rect)
  + [Responder](#Responder)
  + [RunLoop](#RunLoop)
  + [RunLoopMode](#RunLoopMode)
  + [RunningApplication](#RunningApplication)
  + [SEL](#SEL)
  + [SavePanel](#SavePanel)
  + [Screen](#Screen)
  + [Set](#Set)
  + [Size](#Size)
  + [String](#String)
  + [StringCompareOption](#StringCompareOption)
  + [StringCompareOptions](#StringCompareOptions)
  + [StringEncoding](#StringEncoding)
  + [Subclasser\_Proc](#Subclasser_Proc)
  + [TimeInterval](#TimeInterval)
  + [Timer](#Timer)
  + [Toolbar](#Toolbar)
  + [UInteger](#UInteger)
  + [URL](#URL)
  + [URLRequest](#URLRequest)
  + [URLResponse](#URLResponse)
  + [UndoManager](#UndoManager)
  + [UserActivity](#UserActivity)
  + [UserDefaults](#UserDefaults)
  + [UserInterfaceLayoutDirection](#UserInterfaceLayoutDirection)
  + [Value](#Value)
  + [View](#View)
  + [Window](#Window)
  + [WindowCollectionBehavior](#WindowCollectionBehavior)
  + [WindowCollectionBehaviorFlag](#WindowCollectionBehaviorFlag)
  + [WindowDelegate](#WindowDelegate)
  + [WindowDelegateTemplate](#WindowDelegateTemplate)
  + [WindowLevel](#WindowLevel)
  + [WindowStyleFlag](#WindowStyleFlag)
  + [WindowStyleMask](#WindowStyleMask)
  + [WindowTabbingMode](#WindowTabbingMode)
  + [Window\_Title\_Visibility](#Window_Title_Visibility)
  + [Zone](#Zone)
  + [id](#id)
  + [kVK](#kVK)
  + [objc\_AssociationPolicy](#objc_AssociationPolicy)
  + [objc\_cache](#objc_cache)
  + [objc\_class\_internals](#objc_class_internals)
  + [objc\_ivar](#objc_ivar)
  + [objc\_ivar\_list](#objc_ivar_list)
  + [objc\_method](#objc_method)
  + [objc\_method\_list](#objc_method_list)
  + [objc\_object\_internals](#objc_object_internals)
  + [objc\_property](#objc_property)
  + [objc\_property\_attribute\_t](#objc_property_attribute_t)
  + [objc\_property\_t](#objc_property_t)
  + [objc\_protocol\_list](#objc_protocol_list)
  + [unichar](#unichar)
* [Constants](#pkg-Constants)
  + [ApplicationPresentationOptionsAutoHideDock](#ApplicationPresentationOptionsAutoHideDock)
  + [ApplicationPresentationOptionsAutoHideMenuBar](#ApplicationPresentationOptionsAutoHideMenuBar)
  + [ApplicationPresentationOptionsAutoHideToolbar](#ApplicationPresentationOptionsAutoHideToolbar)
  + [ApplicationPresentationOptionsDefault](#ApplicationPresentationOptionsDefault)
  + [ApplicationPresentationOptionsDisableAppleMenu](#ApplicationPresentationOptionsDisableAppleMenu)
  + [ApplicationPresentationOptionsDisableCursorLocationAssistance](#ApplicationPresentationOptionsDisableCursorLocationAssistance)
  + [ApplicationPresentationOptionsDisableForceQuit](#ApplicationPresentationOptionsDisableForceQuit)
  + [ApplicationPresentationOptionsDisableHideApplication](#ApplicationPresentationOptionsDisableHideApplication)
  + [ApplicationPresentationOptionsDisableMenuBarTransparency](#ApplicationPresentationOptionsDisableMenuBarTransparency)
  + [ApplicationPresentationOptionsDisableProcessSwitching](#ApplicationPresentationOptionsDisableProcessSwitching)
  + [ApplicationPresentationOptionsDisableSessionTermination](#ApplicationPresentationOptionsDisableSessionTermination)
  + [ApplicationPresentationOptionsFullScreen](#ApplicationPresentationOptionsFullScreen)
  + [ApplicationPresentationOptionsHideDock](#ApplicationPresentationOptionsHideDock)
  + [ApplicationPresentationOptionsHideMenuBar](#ApplicationPresentationOptionsHideMenuBar)
  + [EventMaskAny](#EventMaskAny)
  + [EventModifierFlagCapsLock](#EventModifierFlagCapsLock)
  + [EventModifierFlagCommand](#EventModifierFlagCommand)
  + [EventModifierFlagControl](#EventModifierFlagControl)
  + [EventModifierFlagDeviceIndependentFlagsMask](#EventModifierFlagDeviceIndependentFlagsMask)
  + [EventModifierFlagFunction](#EventModifierFlagFunction)
  + [EventModifierFlagHelp](#EventModifierFlagHelp)
  + [EventModifierFlagNumericPad](#EventModifierFlagNumericPad)
  + [EventModifierFlagOption](#EventModifierFlagOption)
  + [EventModifierFlagShift](#EventModifierFlagShift)
  + [EventPhaseBegan](#EventPhaseBegan)
  + [EventPhaseCancelled](#EventPhaseCancelled)
  + [EventPhaseChanged](#EventPhaseChanged)
  + [EventPhaseEnded](#EventPhaseEnded)
  + [EventPhaseMayBegin](#EventPhaseMayBegin)
  + [EventPhaseNone](#EventPhaseNone)
  + [EventPhaseStationary](#EventPhaseStationary)
  + [IntegerMax](#IntegerMax)
  + [Integermin](#Integermin)
  + [NO](#NO)
  + [NotFound](#NotFound)
  + [UIntegerMax](#UIntegerMax)
  + [WindowCollectionBehaviorAuxiliary](#WindowCollectionBehaviorAuxiliary)
  + [WindowCollectionBehaviorCanJoinAllApplications](#WindowCollectionBehaviorCanJoinAllApplications)
  + [WindowCollectionBehaviorCanJoinAllSpaces](#WindowCollectionBehaviorCanJoinAllSpaces)
  + [WindowCollectionBehaviorDefault](#WindowCollectionBehaviorDefault)
  + [WindowCollectionBehaviorFullScreenAllowsTiling](#WindowCollectionBehaviorFullScreenAllowsTiling)
  + [WindowCollectionBehaviorFullScreenAuxiliary](#WindowCollectionBehaviorFullScreenAuxiliary)
  + [WindowCollectionBehaviorFullScreenDisallowsTiling](#WindowCollectionBehaviorFullScreenDisallowsTiling)
  + [WindowCollectionBehaviorFullScreenNone](#WindowCollectionBehaviorFullScreenNone)
  + [WindowCollectionBehaviorFullScreenPrimary](#WindowCollectionBehaviorFullScreenPrimary)
  + [WindowCollectionBehaviorIgnoresCycle](#WindowCollectionBehaviorIgnoresCycle)
  + [WindowCollectionBehaviorManaged](#WindowCollectionBehaviorManaged)
  + [WindowCollectionBehaviorMoveToActiveSpace](#WindowCollectionBehaviorMoveToActiveSpace)
  + [WindowCollectionBehaviorParticipatesInCycle](#WindowCollectionBehaviorParticipatesInCycle)
  + [WindowCollectionBehaviorPrimary](#WindowCollectionBehaviorPrimary)
  + [WindowCollectionBehaviorStationary](#WindowCollectionBehaviorStationary)
  + [WindowCollectionBehaviorTransient](#WindowCollectionBehaviorTransient)
  + [WindowStyleMaskBorderless](#WindowStyleMaskBorderless)
  + [WindowStyleMaskClosable](#WindowStyleMaskClosable)
  + [WindowStyleMaskDocModalWindow](#WindowStyleMaskDocModalWindow)
  + [WindowStyleMaskFullScreen](#WindowStyleMaskFullScreen)
  + [WindowStyleMaskFullSizeContentView](#WindowStyleMaskFullSizeContentView)
  + [WindowStyleMaskHUDWindow](#WindowStyleMaskHUDWindow)
  + [WindowStyleMaskMiniaturizable](#WindowStyleMaskMiniaturizable)
  + [WindowStyleMaskNonactivatingPanel](#WindowStyleMaskNonactivatingPanel)
  + [WindowStyleMaskResizable](#WindowStyleMaskResizable)
  + [WindowStyleMaskTexturedBackground](#WindowStyleMaskTexturedBackground)
  + [WindowStyleMaskTitled](#WindowStyleMaskTitled)
  + [WindowStyleMaskUnifiedTitleAndToolbar](#WindowStyleMaskUnifiedTitleAndToolbar)
  + [WindowStyleMaskUtilityWindow](#WindowStyleMaskUtilityWindow)
  + [YES](#YES)
* [Variables](#pkg-Variables)
  + [CocoaErrorDomain](#CocoaErrorDomain)
  + [DebugDescriptionErrorKey](#DebugDescriptionErrorKey)
  + [DefaultRunLoopMode](#DefaultRunLoopMode)
  + [DeviceRGBColorSpace](#DeviceRGBColorSpace)
  + [EventTrackingRunLoopMode](#EventTrackingRunLoopMode)
  + [FilePathErrorKey](#FilePathErrorKey)
  + [HelpAnchorErrorKey](#HelpAnchorErrorKey)
  + [KeyEventModifierFlagDeviceIndependentFlagsMask](#KeyEventModifierFlagDeviceIndependentFlagsMask)
  + [LocalizedDescriptionKey](#LocalizedDescriptionKey)
  + [LocalizedFailureErrorKey](#LocalizedFailureErrorKey)
  + [LocalizedFailureReasonErrorKey](#LocalizedFailureReasonErrorKey)
  + [LocalizedRecoveryOptionsErrorKey](#LocalizedRecoveryOptionsErrorKey)
  + [LocalizedRecoverySuggestionErrorKey](#LocalizedRecoverySuggestionErrorKey)
  + [MachErrorDomain](#MachErrorDomain)
  + [ModalPanelRunLoopMode](#ModalPanelRunLoopMode)
  + [OSStatusErrorDomain](#OSStatusErrorDomain)
  + [POSIXErrorDomain](#POSIXErrorDomain)
  + [RecoveryAttempterErrorKey](#RecoveryAttempterErrorKey)
  + [RunLoopCommonModes](#RunLoopCommonModes)
  + [StringEncodingErrorKey](#StringEncodingErrorKey)
  + [URLErrorKey](#URLErrorKey)
  + [UnderlyingErrorKey](#UnderlyingErrorKey)
* [Procedures](#pkg-Procedures)
  + [AT](#AT)
  + [AllocateObject](#AllocateObject)
  + [Application\_activate](#Application_activate)
  + [Application\_activateIgnoringOtherApps](#Application_activateIgnoringOtherApps)
  + [Application\_active](#Application_active)
  + [Application\_currentEvent](#Application_currentEvent)
  + [Application\_finishLaunching](#Application_finishLaunching)
  + [Application\_isRunning](#Application_isRunning)
  + [Application\_keyWindow](#Application_keyWindow)
  + [Application\_mainMenu](#Application_mainMenu)
  + [Application\_mainWindow](#Application_mainWindow)
  + [Application\_nextEventMatchingMask](#Application_nextEventMatchingMask)
  + [Application\_postEvent](#Application_postEvent)
  + [Application\_run](#Application_run)
  + [Application\_sendAction](#Application_sendAction)
  + [Application\_sendEvent](#Application_sendEvent)
  + [Application\_servicesMenu](#Application_servicesMenu)
  + [Application\_setActivationPolicy](#Application_setActivationPolicy)
  + [Application\_setAppleMenu](#Application_setAppleMenu)
  + [Application\_setDelegate](#Application_setDelegate)
  + [Application\_setMainMenu](#Application_setMainMenu)
  + [Application\_setServicesMenu](#Application_setServicesMenu)
  + [Application\_setTitle](#Application_setTitle)
  + [Application\_setWindowsMenu](#Application_setWindowsMenu)
  + [Application\_sharedApplication](#Application_sharedApplication)
  + [Application\_stop](#Application_stop)
  + [Application\_terminate](#Application_terminate)
  + [Application\_updateWindows](#Application_updateWindows)
  + [Application\_windows](#Application_windows)
  + [Application\_windowsMenu](#Application_windowsMenu)
  + [Array\_alloc](#Array_alloc)
  + [Array\_count](#Array_count)
  + [Array\_init](#Array_init)
  + [Array\_initWithCoder](#Array_initWithCoder)
  + [Array\_initWithObjects](#Array_initWithObjects)
  + [Array\_object](#Array_object)
  + [Array\_objectAs](#Array_objectAs)
  + [AutoreleasePool\_addObject](#AutoreleasePool_addObject)
  + [AutoreleasePool\_alloc](#AutoreleasePool_alloc)
  + [AutoreleasePool\_drain](#AutoreleasePool_drain)
  + [AutoreleasePool\_init](#AutoreleasePool_init)
  + [AutoreleasePool\_showPools](#AutoreleasePool_showPools)
  + [BitmapImageRep\_CGImage](#BitmapImageRep_CGImage)
  + [BitmapImageRep\_alloc](#BitmapImageRep_alloc)
  + [BitmapImageRep\_bitmapData](#BitmapImageRep_bitmapData)
  + [BitmapImageRep\_initWithBitmapDataPlanes\_bitmapFormat](#BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat)
  + [BitmapImageRep\_initWithBitmapDataPlanes\_legacy](#BitmapImageRep_initWithBitmapDataPlanes_legacy)
  + [Block\_createGlobal](#Block_createGlobal)
  + [Block\_createGlobalWithParam](#Block_createGlobalWithParam)
  + [Block\_createLocal](#Block_createLocal)
  + [Block\_createLocalWithParam](#Block_createLocalWithParam)
  + [Block\_invoke](#Block_invoke)
  + [Bundle\_PathForAuxiliaryExecutable](#Bundle_PathForAuxiliaryExecutable)
  + [Bundle\_URLForAuxiliaryExecutable](#Bundle_URLForAuxiliaryExecutable)
  + [Bundle\_allBundles](#Bundle_allBundles)
  + [Bundle\_allFrameworks](#Bundle_allFrameworks)
  + [Bundle\_alloc](#Bundle_alloc)
  + [Bundle\_appStoreReceiptPath](#Bundle_appStoreReceiptPath)
  + [Bundle\_appStoreReceiptURL](#Bundle_appStoreReceiptURL)
  + [Bundle\_builtInPlugInsPath](#Bundle_builtInPlugInsPath)
  + [Bundle\_builtInPlugInsURL](#Bundle_builtInPlugInsURL)
  + [Bundle\_bundleIdentifier](#Bundle_bundleIdentifier)
  + [Bundle\_bundlePath](#Bundle_bundlePath)
  + [Bundle\_bundleURL](#Bundle_bundleURL)
  + [Bundle\_bundleWithPath](#Bundle_bundleWithPath)
  + [Bundle\_bundleWithURL](#Bundle_bundleWithURL)
  + [Bundle\_executablePath](#Bundle_executablePath)
  + [Bundle\_executableURL](#Bundle_executableURL)
  + [Bundle\_infoDictionary](#Bundle_infoDictionary)
  + [Bundle\_init](#Bundle_init)
  + [Bundle\_initWithPath](#Bundle_initWithPath)
  + [Bundle\_initWithURL](#Bundle_initWithURL)
  + [Bundle\_isLoaded](#Bundle_isLoaded)
  + [Bundle\_load](#Bundle_load)
  + [Bundle\_loadAndReturnError](#Bundle_loadAndReturnError)
  + [Bundle\_localizedInfoDictionary](#Bundle_localizedInfoDictionary)
  + [Bundle\_localizedStringForKey](#Bundle_localizedStringForKey)
  + [Bundle\_mainBundle](#Bundle_mainBundle)
  + [Bundle\_objectForInfoDictionaryKey](#Bundle_objectForInfoDictionaryKey)
  + [Bundle\_preflightAndReturnError](#Bundle_preflightAndReturnError)
  + [Bundle\_privateFrameworksPath](#Bundle_privateFrameworksPath)
  + [Bundle\_privateFrameworksURL](#Bundle_privateFrameworksURL)
  + [Bundle\_resourcePath](#Bundle_resourcePath)
  + [Bundle\_resourceURL](#Bundle_resourceURL)
  + [Bundle\_sharedFrameworksPath](#Bundle_sharedFrameworksPath)
  + [Bundle\_sharedFrameworksURL](#Bundle_sharedFrameworksURL)
  + [Bundle\_sharedSupportPath](#Bundle_sharedSupportPath)
  + [Bundle\_sharedSupportURL](#Bundle_sharedSupportURL)
  + [Bundle\_unload](#Bundle_unload)
  + [ClassFromString](#ClassFromString)
  + [Color\_blackColor](#Color_blackColor)
  + [Color\_blueColor](#Color_blueColor)
  + [Color\_colorSpace](#Color_colorSpace)
  + [Color\_colorSpaceName](#Color_colorSpaceName)
  + [Color\_colorUsingColorSpaceName](#Color_colorUsingColorSpaceName)
  + [Color\_colorWithCalibratedHue](#Color_colorWithCalibratedHue)
  + [Color\_colorWithCalibratedRed](#Color_colorWithCalibratedRed)
  + [Color\_colorWithCalibratedWhite](#Color_colorWithCalibratedWhite)
  + [Color\_colorWithColorSpace](#Color_colorWithColorSpace)
  + [Color\_colorWithDeviceCyan](#Color_colorWithDeviceCyan)
  + [Color\_colorWithDeviceHue](#Color_colorWithDeviceHue)
  + [Color\_colorWithDeviceRed](#Color_colorWithDeviceRed)
  + [Color\_colorWithDeviceWhite](#Color_colorWithDeviceWhite)
  + [Color\_colorWithSRGBRed](#Color_colorWithSRGBRed)
  + [Color\_cyanColor](#Color_cyanColor)
  + [Color\_getCMYKA](#Color_getCMYKA)
  + [Color\_getComponents](#Color_getComponents)
  + [Color\_getHSBA](#Color_getHSBA)
  + [Color\_getRGBA](#Color_getRGBA)
  + [Color\_getWhiteAlpha](#Color_getWhiteAlpha)
  + [Color\_greenColor](#Color_greenColor)
  + [Color\_magentaColor](#Color_magentaColor)
  + [Color\_numberOfComponents](#Color_numberOfComponents)
  + [Color\_orangeColor](#Color_orangeColor)
  + [Color\_purpleColor](#Color_purpleColor)
  + [Color\_redColor](#Color_redColor)
  + [Color\_whiteColor](#Color_whiteColor)
  + [Color\_yellowColor](#Color_yellowColor)
  + [Condition\_alloc](#Condition_alloc)
  + [Condition\_broadcast](#Condition_broadcast)
  + [Condition\_init](#Condition_init)
  + [Condition\_lock](#Condition_lock)
  + [Condition\_signal](#Condition_signal)
  + [Condition\_unlock](#Condition_unlock)
  + [Condition\_wait](#Condition_wait)
  + [Condition\_waitUntilDate](#Condition_waitUntilDate)
  + [Cursor\_IBeamCursor](#Cursor_IBeamCursor)
  + [Cursor\_alloc](#Cursor_alloc)
  + [Cursor\_arrowCursor](#Cursor_arrowCursor)
  + [Cursor\_currentCursor](#Cursor_currentCursor)
  + [Cursor\_hide](#Cursor_hide)
  + [Cursor\_initWithImage](#Cursor_initWithImage)
  + [Cursor\_pointingHandCursor](#Cursor_pointingHandCursor)
  + [Cursor\_set](#Cursor_set)
  + [Cursor\_setHiddenUntilMouseMoves](#Cursor_setHiddenUntilMouseMoves)
  + [Cursor\_unhide](#Cursor_unhide)
  + [Data\_alloc](#Data_alloc)
  + [Data\_init](#Data_init)
  + [Data\_initWithBytes](#Data_initWithBytes)
  + [Data\_initWithBytesNoCopy](#Data_initWithBytesNoCopy)
  + [Data\_length](#Data_length)
  + [Data\_mutableBytes](#Data_mutableBytes)
  + [Date\_alloc](#Date_alloc)
  + [Date\_dateWithTimeIntervalSinceNow](#Date_dateWithTimeIntervalSinceNow)
  + [Date\_distantFuture](#Date_distantFuture)
  + [Date\_distantPast](#Date_distantPast)
  + [Date\_init](#Date_init)
  + [Date\_timeIntervalSince1970](#Date_timeIntervalSince1970)
  + [DeallocateObject](#DeallocateObject)
  + [Dictionary\_alloc](#Dictionary_alloc)
  + [Dictionary\_count](#Dictionary_count)
  + [Dictionary\_dictionary](#Dictionary_dictionary)
  + [Dictionary\_dictionaryWithObject](#Dictionary_dictionaryWithObject)
  + [Dictionary\_dictionaryWithObjects](#Dictionary_dictionaryWithObjects)
  + [Dictionary\_init](#Dictionary_init)
  + [Dictionary\_initWithObjects](#Dictionary_initWithObjects)
  + [Dictionary\_keyEnumerator](#Dictionary_keyEnumerator)
  + [Dictionary\_objectForKey](#Dictionary_objectForKey)
  + [Enumerator\_allObjects](#Enumerator_allObjects)
  + [Enumerator\_iterator](#Enumerator_iterator)
  + [Enumerator\_nextObject](#Enumerator_nextObject)
  + [Error\_alloc](#Error_alloc)
  + [Error\_code](#Error_code)
  + [Error\_domain](#Error_domain)
  + [Error\_errorWithDomain](#Error_errorWithDomain)
  + [Error\_init](#Error_init)
  + [Error\_initWithDomain](#Error_initWithDomain)
  + [Error\_localizedDescription](#Error_localizedDescription)
  + [Error\_localizedFailureReason](#Error_localizedFailureReason)
  + [Error\_localizedRecoveryOptions](#Error_localizedRecoveryOptions)
  + [Error\_localizedRecoverySuggestion](#Error_localizedRecoverySuggestion)
  + [Error\_userInfo](#Error_userInfo)
  + [Event\_absolute](#Event_absolute)
  + [Event\_absoluteX](#Event_absoluteX)
  + [Event\_absoluteY](#Event_absoluteY)
  + [Event\_absoluteZ](#Event_absoluteZ)
  + [Event\_buttonMask](#Event_buttonMask)
  + [Event\_buttonNumber](#Event_buttonNumber)
  + [Event\_capabilityMask](#Event_capabilityMask)
  + [Event\_characters](#Event_characters)
  + [Event\_charactersIgnoringModifiers](#Event_charactersIgnoringModifiers)
  + [Event\_clickCount](#Event_clickCount)
  + [Event\_data1](#Event_data1)
  + [Event\_data2](#Event_data2)
  + [Event\_delta](#Event_delta)
  + [Event\_deltaX](#Event_deltaX)
  + [Event\_deltaY](#Event_deltaY)
  + [Event\_deltaZ](#Event_deltaZ)
  + [Event\_eventNumber](#Event_eventNumber)
  + [Event\_hasPreciseScrollingDeltas](#Event_hasPreciseScrollingDeltas)
  + [Event\_isARepeat](#Event_isARepeat)
  + [Event\_isDirectionInvertedFromDevice](#Event_isDirectionInvertedFromDevice)
  + [Event\_isEnteringProximity](#Event_isEnteringProximity)
  + [Event\_isSwipeTrackingFromScrollEventsEnabled](#Event_isSwipeTrackingFromScrollEventsEnabled)
  + [Event\_keyCode](#Event_keyCode)
  + [Event\_locationInWindow](#Event_locationInWindow)
  + [Event\_modifierFlags](#Event_modifierFlags)
  + [Event\_momentumPhase](#Event_momentumPhase)
  + [Event\_mouseLocation](#Event_mouseLocation)
  + [Event\_otherEventWithType](#Event_otherEventWithType)
  + [Event\_phase](#Event_phase)
  + [Event\_pointingDeviceID](#Event_pointingDeviceID)
  + [Event\_pointingDeviceSerialNumber](#Event_pointingDeviceSerialNumber)
  + [Event\_pointingDeviceType](#Event_pointingDeviceType)
  + [Event\_pressure](#Event_pressure)
  + [Event\_scrollingDelta](#Event_scrollingDelta)
  + [Event\_scrollingDeltaX](#Event_scrollingDeltaX)
  + [Event\_scrollingDeltaY](#Event_scrollingDeltaY)
  + [Event\_subtype](#Event_subtype)
  + [Event\_systemTabletID](#Event_systemTabletID)
  + [Event\_tabletID](#Event_tabletID)
  + [Event\_tangentialPressure](#Event_tangentialPressure)
  + [Event\_timestamp](#Event_timestamp)
  + [Event\_type](#Event_type)
  + [Event\_uniqueID](#Event_uniqueID)
  + [Event\_vendorDefined](#Event_vendorDefined)
  + [Event\_vendorID](#Event_vendorID)
  + [Event\_vendorPointingDeviceType](#Event_vendorPointingDeviceType)
  + [Event\_window](#Event_window)
  + [Event\_windowNumber](#Event_windowNumber)
  + [FastEnumeration\_alloc](#FastEnumeration_alloc)
  + [FastEnumeration\_countByEnumerating](#FastEnumeration_countByEnumerating)
  + [FastEnumeration\_init](#FastEnumeration_init)
  + [Image\_addRepresentation](#Image_addRepresentation)
  + [Image\_alloc](#Image_alloc)
  + [Image\_initWithSize](#Image_initWithSize)
  + [Layer\_addSublayer](#Layer_addSublayer)
  + [Layer\_contents](#Layer_contents)
  + [Layer\_contentsScale](#Layer_contentsScale)
  + [Layer\_frame](#Layer_frame)
  + [Layer\_position](#Layer_position)
  + [Layer\_setContents](#Layer_setContents)
  + [Layer\_setContentsScale](#Layer_setContentsScale)
  + [Layer\_setPosition](#Layer_setPosition)
  + [Locking\_lock](#Locking_lock)
  + [Locking\_unlock](#Locking_unlock)
  + [MakeConstantString](#MakeConstantString)
  + [MaxX](#MaxX)
  + [MaxY](#MaxY)
  + [MenuDelegate\_confinementRectForMenu](#MenuDelegate_confinementRectForMenu)
  + [MenuDelegate\_menuDidClose](#MenuDelegate_menuDidClose)
  + [MenuDelegate\_menuHasKeyEquivalent](#MenuDelegate_menuHasKeyEquivalent)
  + [MenuDelegate\_menuNeedsUpdate](#MenuDelegate_menuNeedsUpdate)
  + [MenuDelegate\_menuWillOpen](#MenuDelegate_menuWillOpen)
  + [MenuDelegate\_menu\_updateItem\_atIndex\_shouldCancel](#MenuDelegate_menu_updateItem_atIndex_shouldCancel)
  + [MenuDelegate\_menu\_willHighlightItem](#MenuDelegate_menu_willHighlightItem)
  + [MenuDelegate\_numberOfItemsInMenu](#MenuDelegate_numberOfItemsInMenu)
  + [MenuItem\_accessInstanceVariablesDirectly](#MenuItem_accessInstanceVariablesDirectly)
  + [MenuItem\_action](#MenuItem_action)
  + [MenuItem\_alloc](#MenuItem_alloc)
  + [MenuItem\_allocWithZone](#MenuItem_allocWithZone)
  + [MenuItem\_allowsAutomaticKeyEquivalentLocalization](#MenuItem_allowsAutomaticKeyEquivalentLocalization)
  + [MenuItem\_allowsAutomaticKeyEquivalentMirroring](#MenuItem_allowsAutomaticKeyEquivalentMirroring)
  + [MenuItem\_allowsKeyEquivalentWhenHidden](#MenuItem_allowsKeyEquivalentWhenHidden)
  + [MenuItem\_automaticallyNotifiesObserversForKey](#MenuItem_automaticallyNotifiesObserversForKey)
  + [MenuItem\_cancelPreviousPerformRequestsWithTarget\_](#MenuItem_cancelPreviousPerformRequestsWithTarget_)
  + [MenuItem\_cancelPreviousPerformRequestsWithTarget\_selector\_object](#MenuItem_cancelPreviousPerformRequestsWithTarget_selector_object)
  + [MenuItem\_class](#MenuItem_class)
  + [MenuItem\_classFallbacksForKeyedArchiver](#MenuItem_classFallbacksForKeyedArchiver)
  + [MenuItem\_classForKeyedUnarchiver](#MenuItem_classForKeyedUnarchiver)
  + [MenuItem\_conformsToProtocol](#MenuItem_conformsToProtocol)
  + [MenuItem\_copyWithZone](#MenuItem_copyWithZone)
  + [MenuItem\_debugDescription](#MenuItem_debugDescription)
  + [MenuItem\_defaultPlaceholderForMarker](#MenuItem_defaultPlaceholderForMarker)
  + [MenuItem\_description](#MenuItem_description)
  + [MenuItem\_exposeBinding](#MenuItem_exposeBinding)
  + [MenuItem\_hasSubmenu](#MenuItem_hasSubmenu)
  + [MenuItem\_hash](#MenuItem_hash)
  + [MenuItem\_indentationLevel](#MenuItem_indentationLevel)
  + [MenuItem\_init](#MenuItem_init)
  + [MenuItem\_initWithCoder](#MenuItem_initWithCoder)
  + [MenuItem\_initWithTitle](#MenuItem_initWithTitle)
  + [MenuItem\_initialize](#MenuItem_initialize)
  + [MenuItem\_instanceMethodForSelector](#MenuItem_instanceMethodForSelector)
  + [MenuItem\_instancesRespondToSelector](#MenuItem_instancesRespondToSelector)
  + [MenuItem\_isAlternate](#MenuItem_isAlternate)
  + [MenuItem\_isEnabled](#MenuItem_isEnabled)
  + [MenuItem\_isHidden](#MenuItem_isHidden)
  + [MenuItem\_isHiddenOrHasHiddenAncestor](#MenuItem_isHiddenOrHasHiddenAncestor)
  + [MenuItem\_isHighlighted](#MenuItem_isHighlighted)
  + [MenuItem\_isSectionHeader](#MenuItem_isSectionHeader)
  + [MenuItem\_isSeparatorItem](#MenuItem_isSeparatorItem)
  + [MenuItem\_isSubclassOfClass](#MenuItem_isSubclassOfClass)
  + [MenuItem\_keyEquivalent](#MenuItem_keyEquivalent)
  + [MenuItem\_keyEquivalentModifierMask](#MenuItem_keyEquivalentModifierMask)
  + [MenuItem\_keyPathsForValuesAffectingValueForKey](#MenuItem_keyPathsForValuesAffectingValueForKey)
  + [MenuItem\_load](#MenuItem_load)
  + [MenuItem\_menu](#MenuItem_menu)
  + [MenuItem\_mnemonic](#MenuItem_mnemonic)
  + [MenuItem\_mnemonicLocation](#MenuItem_mnemonicLocation)
  + [MenuItem\_mutableCopyWithZone](#MenuItem_mutableCopyWithZone)
  + [MenuItem\_new](#MenuItem_new)
  + [MenuItem\_parentItem](#MenuItem_parentItem)
  + [MenuItem\_poseAsClass](#MenuItem_poseAsClass)
  + [MenuItem\_registerActionCallback](#MenuItem_registerActionCallback)
  + [MenuItem\_representedObject](#MenuItem_representedObject)
  + [MenuItem\_resolveClassMethod](#MenuItem_resolveClassMethod)
  + [MenuItem\_resolveInstanceMethod](#MenuItem_resolveInstanceMethod)
  + [MenuItem\_sectionHeaderWithTitle](#MenuItem_sectionHeaderWithTitle)
  + [MenuItem\_separatorItem](#MenuItem_separatorItem)
  + [MenuItem\_setAction](#MenuItem_setAction)
  + [MenuItem\_setAllowsAutomaticKeyEquivalentLocalization](#MenuItem_setAllowsAutomaticKeyEquivalentLocalization)
  + [MenuItem\_setAllowsAutomaticKeyEquivalentMirroring](#MenuItem_setAllowsAutomaticKeyEquivalentMirroring)
  + [MenuItem\_setAllowsKeyEquivalentWhenHidden](#MenuItem_setAllowsKeyEquivalentWhenHidden)
  + [MenuItem\_setAlternate](#MenuItem_setAlternate)
  + [MenuItem\_setDefaultPlaceholder](#MenuItem_setDefaultPlaceholder)
  + [MenuItem\_setEnabled](#MenuItem_setEnabled)
  + [MenuItem\_setHidden](#MenuItem_setHidden)
  + [MenuItem\_setIndentationLevel](#MenuItem_setIndentationLevel)
  + [MenuItem\_setKeyEquivalent](#MenuItem_setKeyEquivalent)
  + [MenuItem\_setKeyEquivalentModifierMask](#MenuItem_setKeyEquivalentModifierMask)
  + [MenuItem\_setKeys](#MenuItem_setKeys)
  + [MenuItem\_setMenu](#MenuItem_setMenu)
  + [MenuItem\_setMnemonicLocation](#MenuItem_setMnemonicLocation)
  + [MenuItem\_setRepresentedObject](#MenuItem_setRepresentedObject)
  + [MenuItem\_setSubmenu](#MenuItem_setSubmenu)
  + [MenuItem\_setSubtitle](#MenuItem_setSubtitle)
  + [MenuItem\_setTag](#MenuItem_setTag)
  + [MenuItem\_setTarget](#MenuItem_setTarget)
  + [MenuItem\_setTitle](#MenuItem_setTitle)
  + [MenuItem\_setTitleWithMnemonic](#MenuItem_setTitleWithMnemonic)
  + [MenuItem\_setToolTip](#MenuItem_setToolTip)
  + [MenuItem\_setUsesUserKeyEquivalents](#MenuItem_setUsesUserKeyEquivalents)
  + [MenuItem\_setVersion](#MenuItem_setVersion)
  + [MenuItem\_setView](#MenuItem_setView)
  + [MenuItem\_submenu](#MenuItem_submenu)
  + [MenuItem\_subtitle](#MenuItem_subtitle)
  + [MenuItem\_superclass](#MenuItem_superclass)
  + [MenuItem\_tag](#MenuItem_tag)
  + [MenuItem\_target](#MenuItem_target)
  + [MenuItem\_title](#MenuItem_title)
  + [MenuItem\_toolTip](#MenuItem_toolTip)
  + [MenuItem\_useStoredAccessor](#MenuItem_useStoredAccessor)
  + [MenuItem\_userKeyEquivalent](#MenuItem_userKeyEquivalent)
  + [MenuItem\_usesUserKeyEquivalents](#MenuItem_usesUserKeyEquivalents)
  + [MenuItem\_version](#MenuItem_version)
  + [MenuItem\_view](#MenuItem_view)
  + [Menu\_accessInstanceVariablesDirectly](#Menu_accessInstanceVariablesDirectly)
  + [Menu\_addItem](#Menu_addItem)
  + [Menu\_addItemWithTitle](#Menu_addItemWithTitle)
  + [Menu\_alloc](#Menu_alloc)
  + [Menu\_allocWithZone](#Menu_allocWithZone)
  + [Menu\_allowsContextMenuPlugIns](#Menu_allowsContextMenuPlugIns)
  + [Menu\_attachedMenu](#Menu_attachedMenu)
  + [Menu\_autoenablesItems](#Menu_autoenablesItems)
  + [Menu\_automaticallyNotifiesObserversForKey](#Menu_automaticallyNotifiesObserversForKey)
  + [Menu\_cancelPreviousPerformRequestsWithTarget\_](#Menu_cancelPreviousPerformRequestsWithTarget_)
  + [Menu\_cancelPreviousPerformRequestsWithTarget\_selector\_object](#Menu_cancelPreviousPerformRequestsWithTarget_selector_object)
  + [Menu\_cancelTracking](#Menu_cancelTracking)
  + [Menu\_cancelTrackingWithoutAnimation](#Menu_cancelTrackingWithoutAnimation)
  + [Menu\_class](#Menu_class)
  + [Menu\_classFallbacksForKeyedArchiver](#Menu_classFallbacksForKeyedArchiver)
  + [Menu\_classForKeyedUnarchiver](#Menu_classForKeyedUnarchiver)
  + [Menu\_conformsToProtocol](#Menu_conformsToProtocol)
  + [Menu\_contextMenuRepresentation](#Menu_contextMenuRepresentation)
  + [Menu\_copyWithZone](#Menu_copyWithZone)
  + [Menu\_debugDescription](#Menu_debugDescription)
  + [Menu\_defaultPlaceholderForMarker](#Menu_defaultPlaceholderForMarker)
  + [Menu\_delegate](#Menu_delegate)
  + [Menu\_description](#Menu_description)
  + [Menu\_exposeBinding](#Menu_exposeBinding)
  + [Menu\_hash](#Menu_hash)
  + [Menu\_helpRequested](#Menu_helpRequested)
  + [Menu\_highlightedItem](#Menu_highlightedItem)
  + [Menu\_indexOfItem](#Menu_indexOfItem)
  + [Menu\_indexOfItemWithRepresentedObject](#Menu_indexOfItemWithRepresentedObject)
  + [Menu\_indexOfItemWithSubmenu](#Menu_indexOfItemWithSubmenu)
  + [Menu\_indexOfItemWithTag](#Menu_indexOfItemWithTag)
  + [Menu\_indexOfItemWithTarget](#Menu_indexOfItemWithTarget)
  + [Menu\_indexOfItemWithTitle](#Menu_indexOfItemWithTitle)
  + [Menu\_init](#Menu_init)
  + [Menu\_initWithCoder](#Menu_initWithCoder)
  + [Menu\_initWithTitle](#Menu_initWithTitle)
  + [Menu\_initialize](#Menu_initialize)
  + [Menu\_insertItem](#Menu_insertItem)
  + [Menu\_insertItemWithTitle](#Menu_insertItemWithTitle)
  + [Menu\_instanceMethodForSelector](#Menu_instanceMethodForSelector)
  + [Menu\_instancesRespondToSelector](#Menu_instancesRespondToSelector)
  + [Menu\_isAttached](#Menu_isAttached)
  + [Menu\_isSubclassOfClass](#Menu_isSubclassOfClass)
  + [Menu\_isTornOff](#Menu_isTornOff)
  + [Menu\_itemArray](#Menu_itemArray)
  + [Menu\_itemAtIndex](#Menu_itemAtIndex)
  + [Menu\_itemChanged](#Menu_itemChanged)
  + [Menu\_itemWithTag](#Menu_itemWithTag)
  + [Menu\_itemWithTitle](#Menu_itemWithTitle)
  + [Menu\_keyPathsForValuesAffectingValueForKey](#Menu_keyPathsForValuesAffectingValueForKey)
  + [Menu\_load](#Menu_load)
  + [Menu\_locationForSubmenu](#Menu_locationForSubmenu)
  + [Menu\_menuBarHeight](#Menu_menuBarHeight)
  + [Menu\_menuBarVisible](#Menu_menuBarVisible)
  + [Menu\_menuChangedMessagesEnabled](#Menu_menuChangedMessagesEnabled)
  + [Menu\_menuRepresentation](#Menu_menuRepresentation)
  + [Menu\_menuZone](#Menu_menuZone)
  + [Menu\_minimumWidth](#Menu_minimumWidth)
  + [Menu\_mutableCopyWithZone](#Menu_mutableCopyWithZone)
  + [Menu\_new](#Menu_new)
  + [Menu\_numberOfItems](#Menu_numberOfItems)
  + [Menu\_paletteMenuWithColors\_titles\_selectionHandler](#Menu_paletteMenuWithColors_titles_selectionHandler)
  + [Menu\_performActionForItemAtIndex](#Menu_performActionForItemAtIndex)
  + [Menu\_performKeyEquivalent](#Menu_performKeyEquivalent)
  + [Menu\_popUpContextMenu\_withEvent\_forView](#Menu_popUpContextMenu_withEvent_forView)
  + [Menu\_popUpMenuPositioningItem](#Menu_popUpMenuPositioningItem)
  + [Menu\_poseAsClass](#Menu_poseAsClass)
  + [Menu\_presentationStyle](#Menu_presentationStyle)
  + [Menu\_propertiesToUpdate](#Menu_propertiesToUpdate)
  + [Menu\_removeAllItems](#Menu_removeAllItems)
  + [Menu\_removeItem](#Menu_removeItem)
  + [Menu\_removeItemAtIndex](#Menu_removeItemAtIndex)
  + [Menu\_resolveClassMethod](#Menu_resolveClassMethod)
  + [Menu\_resolveInstanceMethod](#Menu_resolveInstanceMethod)
  + [Menu\_selectedItems](#Menu_selectedItems)
  + [Menu\_selectionMode](#Menu_selectionMode)
  + [Menu\_setAllowsContextMenuPlugIns](#Menu_setAllowsContextMenuPlugIns)
  + [Menu\_setAutoenablesItems](#Menu_setAutoenablesItems)
  + [Menu\_setContextMenuRepresentation](#Menu_setContextMenuRepresentation)
  + [Menu\_setDefaultPlaceholder](#Menu_setDefaultPlaceholder)
  + [Menu\_setDelegate](#Menu_setDelegate)
  + [Menu\_setItemArray](#Menu_setItemArray)
  + [Menu\_setKeys](#Menu_setKeys)
  + [Menu\_setMenuBarVisible](#Menu_setMenuBarVisible)
  + [Menu\_setMenuChangedMessagesEnabled](#Menu_setMenuChangedMessagesEnabled)
  + [Menu\_setMenuRepresentation](#Menu_setMenuRepresentation)
  + [Menu\_setMenuZone](#Menu_setMenuZone)
  + [Menu\_setMinimumWidth](#Menu_setMinimumWidth)
  + [Menu\_setPresentationStyle](#Menu_setPresentationStyle)
  + [Menu\_setSelectedItems](#Menu_setSelectedItems)
  + [Menu\_setSelectionMode](#Menu_setSelectionMode)
  + [Menu\_setShowsStateColumn](#Menu_setShowsStateColumn)
  + [Menu\_setSubmenu](#Menu_setSubmenu)
  + [Menu\_setSupermenu](#Menu_setSupermenu)
  + [Menu\_setTearOffMenuRepresentation](#Menu_setTearOffMenuRepresentation)
  + [Menu\_setTitle](#Menu_setTitle)
  + [Menu\_setUserInterfaceLayoutDirection](#Menu_setUserInterfaceLayoutDirection)
  + [Menu\_setVersion](#Menu_setVersion)
  + [Menu\_showsStateColumn](#Menu_showsStateColumn)
  + [Menu\_size](#Menu_size)
  + [Menu\_sizeToFit](#Menu_sizeToFit)
  + [Menu\_submenuAction](#Menu_submenuAction)
  + [Menu\_superclass](#Menu_superclass)
  + [Menu\_supermenu](#Menu_supermenu)
  + [Menu\_tearOffMenuRepresentation](#Menu_tearOffMenuRepresentation)
  + [Menu\_title](#Menu_title)
  + [Menu\_update](#Menu_update)
  + [Menu\_useStoredAccessor](#Menu_useStoredAccessor)
  + [Menu\_userInterfaceLayoutDirection](#Menu_userInterfaceLayoutDirection)
  + [Menu\_version](#Menu_version)
  + [MidX](#MidX)
  + [MidY](#MidY)
  + [MinX](#MinX)
  + [MinY](#MinY)
  + [MutableArray\_alloc](#MutableArray_alloc)
  + [MutableArray\_count](#MutableArray_count)
  + [MutableArray\_exchangeObjectAtIndex](#MutableArray_exchangeObjectAtIndex)
  + [MutableArray\_init](#MutableArray_init)
  + [MutableArray\_initWithCoder](#MutableArray_initWithCoder)
  + [MutableArray\_initWithObjects](#MutableArray_initWithObjects)
  + [MutableArray\_object](#MutableArray_object)
  + [MutableArray\_objectAs](#MutableArray_objectAs)
  + [NSWindow\_setFrameAutosaveName](#NSWindow_setFrameAutosaveName)
  + [NotificationCenter\_addObserver](#NotificationCenter_addObserver)
  + [NotificationCenter\_addObserverForName\_new](#NotificationCenter_addObserverForName_new)
  + [NotificationCenter\_addObserverForName\_old](#NotificationCenter_addObserverForName_old)
  + [NotificationCenter\_alloc](#NotificationCenter_alloc)
  + [NotificationCenter\_defaultCenter](#NotificationCenter_defaultCenter)
  + [NotificationCenter\_init](#NotificationCenter_init)
  + [NotificationCenter\_removeObserver](#NotificationCenter_removeObserver)
  + [Notification\_alloc](#Notification_alloc)
  + [Notification\_init](#Notification_init)
  + [Notification\_name](#Notification_name)
  + [Notification\_object](#Notification_object)
  + [Notification\_userInfo](#Notification_userInfo)
  + [Number\_alloc](#Number_alloc)
  + [Number\_boolValue](#Number_boolValue)
  + [Number\_compare](#Number_compare)
  + [Number\_descriptionWithLocale](#Number_descriptionWithLocale)
  + [Number\_f32Value](#Number_f32Value)
  + [Number\_f64Value](#Number_f64Value)
  + [Number\_i16Value](#Number_i16Value)
  + [Number\_i32Value](#Number_i32Value)
  + [Number\_i64Value](#Number_i64Value)
  + [Number\_i8Value](#Number_i8Value)
  + [Number\_init](#Number_init)
  + [Number\_initWithBool](#Number_initWithBool)
  + [Number\_initWithF32](#Number_initWithF32)
  + [Number\_initWithF64](#Number_initWithF64)
  + [Number\_initWithI16](#Number_initWithI16)
  + [Number\_initWithI32](#Number_initWithI32)
  + [Number\_initWithI64](#Number_initWithI64)
  + [Number\_initWithI8](#Number_initWithI8)
  + [Number\_initWithInt](#Number_initWithInt)
  + [Number\_initWithU16](#Number_initWithU16)
  + [Number\_initWithU32](#Number_initWithU32)
  + [Number\_initWithU64](#Number_initWithU64)
  + [Number\_initWithU8](#Number_initWithU8)
  + [Number\_initWithUint](#Number_initWithUint)
  + [Number\_intValue](#Number_intValue)
  + [Number\_integerValue](#Number_integerValue)
  + [Number\_isEqualToNumber](#Number_isEqualToNumber)
  + [Number\_numberWithBool](#Number_numberWithBool)
  + [Number\_numberWithF32](#Number_numberWithF32)
  + [Number\_numberWithF64](#Number_numberWithF64)
  + [Number\_numberWithI16](#Number_numberWithI16)
  + [Number\_numberWithI32](#Number_numberWithI32)
  + [Number\_numberWithI64](#Number_numberWithI64)
  + [Number\_numberWithI8](#Number_numberWithI8)
  + [Number\_numberWithInt](#Number_numberWithInt)
  + [Number\_numberWithU16](#Number_numberWithU16)
  + [Number\_numberWithU32](#Number_numberWithU32)
  + [Number\_numberWithU64](#Number_numberWithU64)
  + [Number\_numberWithU8](#Number_numberWithU8)
  + [Number\_numberWithUint](#Number_numberWithUint)
  + [Number\_stringValue](#Number_stringValue)
  + [Number\_u16Value](#Number_u16Value)
  + [Number\_u32Value](#Number_u32Value)
  + [Number\_u64Value](#Number_u64Value)
  + [Number\_u8Value](#Number_u8Value)
  + [Number\_uintValue](#Number_uintValue)
  + [Number\_uintegerValue](#Number_uintegerValue)
  + [OpenPanel\_URLs](#OpenPanel_URLs)
  + [OpenPanel\_openPanel](#OpenPanel_openPanel)
  + [OpenPanel\_setAllowedFileTypes](#OpenPanel_setAllowedFileTypes)
  + [OpenPanel\_setAllowsMultipleSelection](#OpenPanel_setAllowsMultipleSelection)
  + [OpenPanel\_setCanChooseDirectories](#OpenPanel_setCanChooseDirectories)
  + [OpenPanel\_setCanChooseFiles](#OpenPanel_setCanChooseFiles)
  + [OpenPanel\_setResolvesAliases](#OpenPanel_setResolvesAliases)
  + [ProcessInfo\_activeProcessorCount](#ProcessInfo_activeProcessorCount)
  + [ProcessInfo\_arguments](#ProcessInfo_arguments)
  + [ProcessInfo\_automaticTerminationSupportEnabled](#ProcessInfo_automaticTerminationSupportEnabled)
  + [ProcessInfo\_beginActivityWithOptions](#ProcessInfo_beginActivityWithOptions)
  + [ProcessInfo\_disableAutomaticTermination](#ProcessInfo_disableAutomaticTermination)
  + [ProcessInfo\_disableSuddenTermination](#ProcessInfo_disableSuddenTermination)
  + [ProcessInfo\_enableAutomaticTermination](#ProcessInfo_enableAutomaticTermination)
  + [ProcessInfo\_enableSuddenTermination](#ProcessInfo_enableSuddenTermination)
  + [ProcessInfo\_endActivity](#ProcessInfo_endActivity)
  + [ProcessInfo\_environment](#ProcessInfo_environment)
  + [ProcessInfo\_fullUserName](#ProcessInfo_fullUserName)
  + [ProcessInfo\_globallyUniqueString](#ProcessInfo_globallyUniqueString)
  + [ProcessInfo\_hostName](#ProcessInfo_hostName)
  + [ProcessInfo\_isLowPowerModeEnabled](#ProcessInfo_isLowPowerModeEnabled)
  + [ProcessInfo\_isMacCatalystApp](#ProcessInfo_isMacCatalystApp)
  + [ProcessInfo\_isOperatingSystemAtLeastVersion](#ProcessInfo_isOperatingSystemAtLeastVersion)
  + [ProcessInfo\_isiOSAppOnMac](#ProcessInfo_isiOSAppOnMac)
  + [ProcessInfo\_operatingSystemVersion](#ProcessInfo_operatingSystemVersion)
  + [ProcessInfo\_operatingSystemVersionString](#ProcessInfo_operatingSystemVersionString)
  + [ProcessInfo\_performActivityWithOptions](#ProcessInfo_performActivityWithOptions)
  + [ProcessInfo\_performExpiringActivityWithReason](#ProcessInfo_performExpiringActivityWithReason)
  + [ProcessInfo\_physicalMemory](#ProcessInfo_physicalMemory)
  + [ProcessInfo\_processIdentifier](#ProcessInfo_processIdentifier)
  + [ProcessInfo\_processInfo](#ProcessInfo_processInfo)
  + [ProcessInfo\_processName](#ProcessInfo_processName)
  + [ProcessInfo\_processorCount](#ProcessInfo_processorCount)
  + [ProcessInfo\_setAutomaticTerminationSupportEnabled](#ProcessInfo_setAutomaticTerminationSupportEnabled)
  + [ProcessInfo\_systemUptime](#ProcessInfo_systemUptime)
  + [ProcessInfo\_thermalState](#ProcessInfo_thermalState)
  + [ProcessInfo\_userName](#ProcessInfo_userName)
  + [Range\_Equal](#Range_Equal)
  + [Range\_LocationInRange](#Range_LocationInRange)
  + [Range\_Make](#Range_Make)
  + [Range\_Max](#Range_Max)
  + [RunLoop\_addTimerForMode](#RunLoop_addTimerForMode)
  + [RunLoop\_mainRunLoop](#RunLoop_mainRunLoop)
  + [RunningApplication\_currentApplication](#RunningApplication_currentApplication)
  + [RunningApplication\_finishedLaunching](#RunningApplication_finishedLaunching)
  + [RunningApplication\_localizedName](#RunningApplication_localizedName)
  + [SavePanel\_URL](#SavePanel_URL)
  + [SavePanel\_runModal](#SavePanel_runModal)
  + [SavePanel\_savePanel](#SavePanel_savePanel)
  + [Screen\_backingScaleFactor](#Screen_backingScaleFactor)
  + [Screen\_colorSpace](#Screen_colorSpace)
  + [Screen\_deepestScreen](#Screen_deepestScreen)
  + [Screen\_depth](#Screen_depth)
  + [Screen\_frame](#Screen_frame)
  + [Screen\_mainScreen](#Screen_mainScreen)
  + [Screen\_screens](#Screen_screens)
  + [Screen\_screensHaveSeparateSpaces](#Screen_screensHaveSeparateSpaces)
  + [Screen\_visibleFrame](#Screen_visibleFrame)
  + [SelectorFromString](#SelectorFromString)
  + [Set\_alloc](#Set_alloc)
  + [Set\_init](#Set_init)
  + [Set\_initWithCoder](#Set_initWithCoder)
  + [Set\_initWithObjects](#Set_initWithObjects)
  + [StringFromClass](#StringFromClass)
  + [StringFromSelector](#StringFromSelector)
  + [String\_UTF8String](#String_UTF8String)
  + [String\_alloc](#String_alloc)
  + [String\_characterAtIndex](#String_characterAtIndex)
  + [String\_cstringUsingEncoding](#String_cstringUsingEncoding)
  + [String\_init](#String_init)
  + [String\_initWithBytesNoCopy](#String_initWithBytesNoCopy)
  + [String\_initWithCString](#String_initWithCString)
  + [String\_initWithOdinString](#String_initWithOdinString)
  + [String\_initWithString](#String_initWithString)
  + [String\_isEqualToString](#String_isEqualToString)
  + [String\_length](#String_length)
  + [String\_lengthOfBytesUsingEncoding](#String_lengthOfBytesUsingEncoding)
  + [String\_maximumLengthOfBytesUsingEncoding](#String_maximumLengthOfBytesUsingEncoding)
  + [String\_odinString](#String_odinString)
  + [String\_rangeOfString](#String_rangeOfString)
  + [String\_stringByAppendingString](#String_stringByAppendingString)
  + [Timer\_scheduledTimerWithTimeIntervalRepeatsBlock](#Timer_scheduledTimerWithTimeIntervalRepeatsBlock)
  + [Timer\_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat](#Timer_scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeat)
  + [Toolbar\_alloc](#Toolbar_alloc)
  + [Toolbar\_init](#Toolbar_init)
  + [URLRequest\_alloc](#URLRequest_alloc)
  + [URLRequest\_init](#URLRequest_init)
  + [URLRequest\_requestWithURL](#URLRequest_requestWithURL)
  + [URLRequest\_url](#URLRequest_url)
  + [URLResponse\_alloc](#URLResponse_alloc)
  + [URLResponse\_init](#URLResponse_init)
  + [URLResponse\_initWithURL](#URLResponse_initWithURL)
  + [URL\_alloc](#URL_alloc)
  + [URL\_fileSystemRepresentation](#URL_fileSystemRepresentation)
  + [URL\_init](#URL_init)
  + [URL\_initFileURLWithPath](#URL_initFileURLWithPath)
  + [URL\_initWithString](#URL_initWithString)
  + [URL\_relativePath](#URL_relativePath)
  + [UserDefaults\_setBoolForKey](#UserDefaults_setBoolForKey)
  + [UserDefaults\_standardUserDefaults](#UserDefaults_standardUserDefaults)
  + [Value\_alloc](#Value_alloc)
  + [Value\_getValue](#Value_getValue)
  + [Value\_init](#Value_init)
  + [Value\_initWithBytes](#Value_initWithBytes)
  + [Value\_initWithCoder](#Value_initWithCoder)
  + [Value\_isEqualToValue](#Value_isEqualToValue)
  + [Value\_objCType](#Value_objCType)
  + [Value\_pointerValue](#Value_pointerValue)
  + [Value\_valueWithBytes](#Value_valueWithBytes)
  + [Value\_valueWithPointer](#Value_valueWithPointer)
  + [View\_addSubview](#View_addSubview)
  + [View\_alloc](#View_alloc)
  + [View\_bounds](#View_bounds)
  + [View\_convertPointFromView](#View_convertPointFromView)
  + [View\_initWithFrame](#View_initWithFrame)
  + [View\_isFlipped](#View_isFlipped)
  + [View\_layer](#View_layer)
  + [View\_setIsFlipped](#View_setIsFlipped)
  + [View\_setLayer](#View_setLayer)
  + [View\_setWantsLayer](#View_setWantsLayer)
  + [View\_wantsLayer](#View_wantsLayer)
  + [Window\_alloc](#Window_alloc)
  + [Window\_backgroundColor](#Window_backgroundColor)
  + [Window\_backingScaleFactor](#Window_backingScaleFactor)
  + [Window\_center](#Window_center)
  + [Window\_close](#Window_close)
  + [Window\_collectionBehavior](#Window_collectionBehavior)
  + [Window\_contentLayoutRect](#Window_contentLayoutRect)
  + [Window\_contentRectForFrameRectInstance](#Window_contentRectForFrameRectInstance)
  + [Window\_contentRectForFrameRectType](#Window_contentRectForFrameRectType)
  + [Window\_contentView](#Window_contentView)
  + [Window\_convertPointFromBacking](#Window_convertPointFromBacking)
  + [Window\_convertPointFromScreen](#Window_convertPointFromScreen)
  + [Window\_convertPointToBacking](#Window_convertPointToBacking)
  + [Window\_convertPointToScreen](#Window_convertPointToScreen)
  + [Window\_convertRectFromBacking](#Window_convertRectFromBacking)
  + [Window\_convertRectFromScreen](#Window_convertRectFromScreen)
  + [Window\_convertRectToBacking](#Window_convertRectToBacking)
  + [Window\_convertRectToScreen](#Window_convertRectToScreen)
  + [Window\_delegate](#Window_delegate)
  + [Window\_frame](#Window_frame)
  + [Window\_frameRectForContentRectInstance](#Window_frameRectForContentRectInstance)
  + [Window\_frameRectForContentRectType](#Window_frameRectForContentRectType)
  + [Window\_hasCloseBox](#Window_hasCloseBox)
  + [Window\_hasTitleBar](#Window_hasTitleBar)
  + [Window\_initWithContentRect](#Window_initWithContentRect)
  + [Window\_isFloatingPanel](#Window_isFloatingPanel)
  + [Window\_isMiniaturizable](#Window_isMiniaturizable)
  + [Window\_isModalPanel](#Window_isModalPanel)
  + [Window\_isResizable](#Window_isResizable)
  + [Window\_isZoomable](#Window_isZoomable)
  + [Window\_keyWindow](#Window_keyWindow)
  + [Window\_mainWindow](#Window_mainWindow)
  + [Window\_makeFirstResponder](#Window_makeFirstResponder)
  + [Window\_makeKeyAndOrderFront](#Window_makeKeyAndOrderFront)
  + [Window\_minFrameWidthWithTitle](#Window_minFrameWidthWithTitle)
  + [Window\_opaque](#Window_opaque)
  + [Window\_orderFront](#Window_orderFront)
  + [Window\_orderOut](#Window_orderOut)
  + [Window\_orderedIndex](#Window_orderedIndex)
  + [Window\_parentWindow](#Window_parentWindow)
  + [Window\_performClose](#Window_performClose)
  + [Window\_performWindowDragWithEvent](#Window_performWindowDragWithEvent)
  + [Window\_performZoom](#Window_performZoom)
  + [Window\_screen](#Window_screen)
  + [Window\_setAcceptsMouseMovedEvents](#Window_setAcceptsMouseMovedEvents)
  + [Window\_setBackgroundColor](#Window_setBackgroundColor)
  + [Window\_setCollectionBehavior](#Window_setCollectionBehavior)
  + [Window\_setContentView](#Window_setContentView)
  + [Window\_setDelegate](#Window_setDelegate)
  + [Window\_setFrame](#Window_setFrame)
  + [Window\_setFrameOrigin](#Window_setFrameOrigin)
  + [Window\_setIsMiniaturized](#Window_setIsMiniaturized)
  + [Window\_setIsVisible](#Window_setIsVisible)
  + [Window\_setIsZoomed](#Window_setIsZoomed)
  + [Window\_setLevel](#Window_setLevel)
  + [Window\_setMinSize](#Window_setMinSize)
  + [Window\_setMovable](#Window_setMovable)
  + [Window\_setMovableByWindowBackground](#Window_setMovableByWindowBackground)
  + [Window\_setOpaque](#Window_setOpaque)
  + [Window\_setReleasedWhenClosed](#Window_setReleasedWhenClosed)
  + [Window\_setRestorable](#Window_setRestorable)
  + [Window\_setStyleMask](#Window_setStyleMask)
  + [Window\_setTabbingMode](#Window_setTabbingMode)
  + [Window\_setTitle](#Window_setTitle)
  + [Window\_setTitleVisibility](#Window_setTitleVisibility)
  + [Window\_setTitlebarAppearsTransparent](#Window_setTitlebarAppearsTransparent)
  + [Window\_setToolbar](#Window_setToolbar)
  + [Window\_setWantsLayer](#Window_setWantsLayer)
  + [Window\_toggleFullScreen](#Window_toggleFullScreen)
  + [alloc](#alloc)
  + [alloc\_user\_object](#alloc_user_object)
  + [application\_delegate\_register\_and\_alloc](#application_delegate_register_and_alloc)
  + [autorelease](#autorelease)
  + [bridgingCast](#bridgingCast)
  + [class](#class)
  + [class\_addIvar](#class_addIvar)
  + [class\_addMethod](#class_addMethod)
  + [class\_addProperty](#class_addProperty)
  + [class\_addProtocol](#class_addProtocol)
  + [class\_conformsToProtocol](#class_conformsToProtocol)
  + [class\_copyIvarList](#class_copyIvarList)
  + [class\_copyMethodList](#class_copyMethodList)
  + [class\_copyPropertyList](#class_copyPropertyList)
  + [class\_copyProtocolList](#class_copyProtocolList)
  + [class\_createInstance](#class_createInstance)
  + [class\_getClassMethod](#class_getClassMethod)
  + [class\_getClassVariable](#class_getClassVariable)
  + [class\_getInstanceMethod](#class_getInstanceMethod)
  + [class\_getInstanceSize](#class_getInstanceSize)
  + [class\_getInstanceVariable](#class_getInstanceVariable)
  + [class\_getMethodImplementation](#class_getMethodImplementation)
  + [class\_getName](#class_getName)
  + [class\_getProperty](#class_getProperty)
  + [class\_getSuperclass](#class_getSuperclass)
  + [class\_getVersion](#class_getVersion)
  + [class\_get\_metaclass](#class_get_metaclass)
  + [class\_get\_vtable\_info](#class_get_vtable_info)
  + [class\_isMetaClass](#class_isMetaClass)
  + [class\_replaceMethod](#class_replaceMethod)
  + [class\_replaceProperty](#class_replaceProperty)
  + [class\_respondsToSelector](#class_respondsToSelector)
  + [class\_setVersion](#class_setVersion)
  + [copy](#copy)
  + [debugDescription](#debugDescription)
  + [description](#description)
  + [hash](#hash)
  + [init](#init)
  + [isEqual](#isEqual)
  + [ivar\_getName](#ivar_getName)
  + [ivar\_getOffset](#ivar_getOffset)
  + [ivar\_getTypeEncoding](#ivar_getTypeEncoding)
  + [make\_subclasser](#make_subclasser)
  + [methodSignatureForSelector](#methodSignatureForSelector)
  + [method\_copyArgumentType](#method_copyArgumentType)
  + [method\_getArgumentType](#method_getArgumentType)
  + [method\_getImplementation](#method_getImplementation)
  + [method\_getNumberOfArguments](#method_getNumberOfArguments)
  + [method\_getReturnType](#method_getReturnType)
  + [method\_setImplementation](#method_setImplementation)
  + [msgSendSafeCheck](#msgSendSafeCheck)
  + [new](#new)
  + [objc\_allocateClassPair](#objc_allocateClassPair)
  + [objc\_constructInstance](#objc_constructInstance)
  + [objc\_copyClassList](#objc_copyClassList)
  + [objc\_copyProtocolList](#objc_copyProtocolList)
  + [objc\_destructInstance](#objc_destructInstance)
  + [objc\_disposeClassPair](#objc_disposeClassPair)
  + [objc\_duplicateClass](#objc_duplicateClass)
  + [objc\_getAssociatedObject](#objc_getAssociatedObject)
  + [objc\_getClassList](#objc_getClassList)
  + [objc\_getMetaClass](#objc_getMetaClass)
  + [objc\_getProtocol](#objc_getProtocol)
  + [objc\_getRequiredClass](#objc_getRequiredClass)
  + [objc\_lookUpClass](#objc_lookUpClass)
  + [objc\_registerClassPair](#objc_registerClassPair)
  + [objc\_removeAssociatedObjects](#objc_removeAssociatedObjects)
  + [objc\_setAssociatedObject](#objc_setAssociatedObject)
  + [object\_copy](#object_copy)
  + [object\_dispose](#object_dispose)
  + [object\_getClass](#object_getClass)
  + [object\_getClassName](#object_getClassName)
  + [object\_getIndexedIvars](#object_getIndexedIvars)
  + [object\_getInstanceVariable](#object_getInstanceVariable)
  + [object\_getIvar](#object_getIvar)
  + [object\_get\_vtable\_info](#object_get_vtable_info)
  + [object\_setClass](#object_setClass)
  + [object\_setInstanceVariable](#object_setInstanceVariable)
  + [object\_setIvar](#object_setIvar)
  + [performSelectorOnMainThread](#performSelectorOnMainThread)
  + [property\_copyAttributeList](#property_copyAttributeList)
  + [property\_copyAttributeValue](#property_copyAttributeValue)
  + [property\_getAttributes](#property_getAttributes)
  + [property\_getName](#property_getName)
  + [protocol\_conformsToProtocol](#protocol_conformsToProtocol)
  + [protocol\_getName](#protocol_getName)
  + [protocol\_isEqual](#protocol_isEqual)
  + [register\_subclass](#register_subclass)
  + [release](#release)
  + [respondsToSelector](#respondsToSelector)
  + [retain](#retain)
  + [retainCount](#retainCount)
  + [scoped\_autoreleasepool](#scoped_autoreleasepool)
  + [sel\_getName](#sel_getName)
  + [sel\_isEqual](#sel_isEqual)
  + [sel\_registerName](#sel_registerName)
  + [tilt](#tilt)
  + [window\_delegate\_register\_and\_alloc](#window_delegate_register_and_alloc)
* [Procedure Groups](#pkg-Procedure Groups)
  + [BitmapImageRep\_initWithBitmapDataPlanes](#BitmapImageRep_initWithBitmapDataPlanes)
  + [MenuDelegate\_menu](#MenuDelegate_menu)
  + [MenuItem\_cancelPreviousPerformRequestsWithTarget](#MenuItem_cancelPreviousPerformRequestsWithTarget)
  + [Menu\_cancelPreviousPerformRequestsWithTarget](#Menu_cancelPreviousPerformRequestsWithTarget)
  + [Menu\_paletteMenuWithColors](#Menu_paletteMenuWithColors)
  + [Menu\_popUpContextMenu](#Menu_popUpContextMenu)
  + [NotificationCenter\_addObserverForName](#NotificationCenter_addObserverForName)
  + [Number\_number](#Number_number)
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