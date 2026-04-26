package sys/darwin/Security - pkg.odin-lang.org 






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



Current Package: *[Security](/core/sys/darwin/Security)*

  

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
4. [Security](/core/sys/darwin/Security)

# package core:sys/darwin/Security [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security)

#### **Warning:**This was generated for `-target:darwin_arm64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (3)

* [OSStatus](#OSStatus)
* [RandomRef](#RandomRef)
* [errSec](#errSec)

Constants (0)

This section is empty.

Variables (1)

* [kSecRandomDefault](#kSecRandomDefault)

Procedures (2)

* [CopyErrorMessageString](#CopyErrorMessageString)
* [RandomCopyBytes](#RandomCopyBytes)

Procedure Groups (0)

This section is empty.

## Types

### [OSStatus ¶](#OSStatus) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecBase.odin#L3)

```
OSStatus :: distinct i32
```

### [RandomRef ¶](#RandomRef) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecRandom.odin#L8)

```
RandomRef :: distinct rawptr
```

 

A reference to a random number generator.




##### Related Procedures With Parameters

* [RandomCopyBytes](/core/sys/darwin/Security/#RandomCopyBytes)

### [errSec ¶](#errSec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecBase.odin#L5)

```
errSec :: enum OSStatus {
	Success                            = 0,      // No error.
	Unimplemented                      = -4,     // Function or operation not implemented.
	DiskFull                           = -43,    // The disk is full.
	IO                                 = -63,    // I/O error.
	OpWr                               = -94,    // File already open with with write permission.
	Param                              = -05,    // One or more parameters passed to a function were not valid.
	WrPerm                             = -16,    // Write permissions error.
	Allocate                           = -108,   // Failed to allocate memory.
	UserCanceled                       = -128,   // User canceled the operation.
	BadReq                             = -909,   // Bad parameter or invalid state for operation.
	InternalComponent                  = -2700, 
	CoreFoundationUnknown              = -4690, 
	MissingEntitlement,                          // A required entitlement isn't present.
	RestrictedAPI,                               // Client is restricted and is not permitted to perform this operation.
	NotAvailable                       = -25291, // No keychain is available. You may need to restart your computer.
	ReadOnly                           = -25292, // This keychain cannot be modified.
	AuthFailed                         = -25293, // The user name or passphrase you entered is not correct.
	NoSuchKeychain                     = -25294, // The specified keychain could not be found.
	InvalidKeychain                    = -25295, // The specified keychain is not a valid keychain file.
	DuplicateKeychain                  = -25296, // A keychain with the same name already exists.
	DuplicateCallback                  = -25297, // The specified callback function is already installed.
	InvalidCallback                    = -25298, // The specified callback function is not valid.
	DuplicateItem                      = -25299, // The specified item already exists in the keychain.
	ItemNotFound                       = -25300, // The specified item could not be found in the keychain.
	BufferTooSmall                     = -25301, // There is not enough memory available to use the specified item.
	DataTooLarge                       = -25302, // This item contains information which is too large or in a format that cannot be displayed.
	NoSuchAttr                         = -25303, // The specified attribute does not exist.
	InvalidItemRef                     = -25304, // The specified item is no longer valid. It may have been deleted from the keychain.
	InvalidSearchRef                   = -25305, // Unable to search the current keychain.
	NoSuchClass                        = -25306, // The specified item does not appear to be a valid keychain item.
	NoDefaultKeychain                  = -25307, // A default keychain could not be found.
	InteractionNotAllowed              = -25308, // User interaction is not allowed.
	ReadOnlyAttr                       = -25309, // The specified attribute could not be modified.
	WrongSecVersion                    = -25310, // This keychain was created by a different version of the system software and cannot be opened.
	KeySizeNotAllowed                  = -25311, // This item specifies a key size which is too large or too small.
	NoStorageModule                    = -25312, // A required component (data storage module) could not be loaded. You may need to restart your computer.
	NoCertificateModule                = -25313, // A required component (certificate module) could not be loaded. You may need to restart your computer.
	NoPolicyModule                     = -25314, // A required component (policy module) could not be loaded. You may need to restart your computer.
	InteractionRequired                = -25315, // User interaction is required, but is currently not allowed.
	DataNotAvailable                   = -25316, // The contents of this item cannot be retrieved.
	DataNotModifiable                  = -25317, // The contents of this item cannot be modified.
	CreateChainFailed                  = -25318, // One or more certificates required to validate this certificate cannot be found.
	InvalidPrefsDomain                 = -25319, // The specified preferences domain is not valid.
	InDarkWake                         = -25320, // In dark wake, no UI possible
	ACLNotSimple                       = -25240, // The specified access control list is not in standard (simple) form.
	PolicyNotFound                     = -25241, // The specified policy cannot be found.
	InvalidTrustSetting                = -25242, // The specified trust setting is invalid.
	NoAccessForItem                    = -25243, // The specified item has no access control.
	InvalidOwnerEdit                   = -25244, // Invalid attempt to change the owner of this item.
	TrustNotAvailable                  = -25245, // No trust results are available.
	UnsupportedFormat                  = -25256, // Import/Export format unsupported.
	UnknownFormat                      = -25257, // Unknown format in import.
	KeyIsSensitive                     = -25258, // Key material must be wrapped for export.
	MultiplePrivKeys                   = -25259, // An attempt was made to import multiple private keys.
	PassphraseRequired                 = -25260, // Passphrase is required for import/export.
	InvalidPasswordRef                 = -25261, // The password reference was invalid.
	InvalidTrustSettings               = -25262, // The Trust Settings Record was corrupted.
	NoTrustSettings                    = -25263, // No Trust Settings were found.
	Pkcs12VerifyFailure                = -25264, // MAC verification failed during PKCS12 import (wrong password?)
	NotSigner                          = -26267, // A certificate was not signed by its proposed parent.
	Decode                             = -26275, // Unable to decode the provided data.
	ServiceNotAvailable                = -67585, // The required service is not available.
	InsufficientClientID               = -67586, // The client ID is not correct.
	DeviceReset                        = -67587, // A device reset has occurred.
	DeviceFailed                       = -67588, // A device failure has occurred.
	AppleAddAppACLSubject              = -67589, // Adding an application ACL subject failed.
	ApplePublicKeyIncomplete           = -67590, // The public key is incomplete.
	AppleSignatureMismatch             = -67591, // A signature mismatch has occurred.
	AppleInvalidKeyStartDate           = -67592, // The specified key has an invalid start date.
	AppleInvalidKeyEndDate             = -67593, // The specified key has an invalid end date.
	ConversionError                    = -67594, // A conversion error has occurred.
	AppleSSLv2Rollback                 = -67595, // A SSLv2 rollback error has occurred.
	QuotaExceeded                      = -67596, // The quota was exceeded.
	FileTooBig                         = -67597, // The file is too big.
	InvalidDatabaseBlob                = -67598, // The specified database has an invalid blob.
	InvalidKeyBlob                     = -67599, // The specified database has an invalid key blob.
	IncompatibleDatabaseBlob           = -67600, // The specified database has an incompatible blob.
	IncompatibleKeyBlob                = -67601, // The specified database has an incompatible key blob.
	HostNameMismatch                   = -67602, // A host name mismatch has occurred.
	UnknownCriticalExtensionFlag       = -67603, // There is an unknown critical extension flag.
	NoBasicConstraints                 = -67604, // No basic constraints were found.
	NoBasicConstraintsCA               = -67605, // No basic CA constraints were found.
	InvalidAuthorityKeyID              = -67606, // The authority key ID is not valid.
	InvalidSubjectKeyID                = -67607, // The subject key ID is not valid.
	InvalidKeyUsageForPolicy           = -67608, // The key usage is not valid for the specified policy.
	InvalidExtendedKeyUsage            = -67609, // The extended key usage is not valid.
	InvalidIDLinkage                   = -67610, // The ID linkage is not valid.
	PathLengthConstraintExceeded       = -67611, // The path length constraint was exceeded.
	InvalidRoot                        = -67612, // The root or anchor certificate is not valid.
	CRLExpired                         = -67613, // The CRL has expired.
	CRLNotValidYet                     = -67614, // The CRL is not yet valid.
	CRLNotFound                        = -67615, // The CRL was not found.
	CRLServerDown                      = -67616, // The CRL server is down.
	CRLBadURI                          = -67617, // The CRL has a bad Uniform Resource Identifier.
	UnknownCertExtension               = -67618, // An unknown certificate extension was encountered.
	UnknownCRLExtension                = -67619, // An unknown CRL extension was encountered.
	CRLNotTrusted                      = -67620, // The CRL is not trusted.
	CRLPolicyFailed                    = -67621, // The CRL policy failed.
	IDPFailure                         = -67622, // The issuing distribution point was not valid.
	SMIMEEmailAddressesNotFound        = -67623, // An email address mismatch was encountered.
	SMIMEBadExtendedKeyUsage           = -67624, // The appropriate extended key usage for SMIME was not found.
	SMIMEBadKeyUsage                   = -67625, // The key usage is not compatible with SMIME.
	SMIMEKeyUsageNotCritical           = -67626, // The key usage extension is not marked as critical.
	SMIMENoEmailAddress                = -67627, // No email address was found in the certificate.
	SMIMESubjAltNameNotCritical        = -67628, // The subject alternative name extension is not marked as critical.
	SSLBadExtendedKeyUsage             = -67629, // The appropriate extended key usage for SSL was not found.
	OCSPBadResponse                    = -67630, // The OCSP response was incorrect or could not be parsed.
	OCSPBadRequest                     = -67631, // The OCSP request was incorrect or could not be parsed.
	OCSPUnavailable                    = -67632, // OCSP service is unavailable.
	OCSPStatusUnrecognized             = -67633, // The OCSP server did not recognize this certificate.
	EndOfData                          = -67634, // An end-of-data was detected.
	IncompleteCertRevocationCheck      = -67635, // An incomplete certificate revocation check occurred.
	NetworkFailure                     = -67636, // A network failure occurred.
	OCSPNotTrustedToAnchor             = -67637, // The OCSP response was not trusted to a root or anchor certificate.
	RecordModified                     = -67638, // The record was modified.
	OCSPSignatureError                 = -67639, // The OCSP response had an invalid signature.
	OCSPNoSigner                       = -67640, // The OCSP response had no signer.
	OCSPResponderMalformedReq          = -67641, // The OCSP responder was given a malformed request.
	OCSPResponderInternalError         = -67642, // The OCSP responder encountered an internal error.
	OCSPResponderTryLater              = -67643, // The OCSP responder is busy, try again later.
	OCSPResponderSignatureRequired     = -67644, // The OCSP responder requires a signature.
	OCSPResponderUnauthorized          = -67645, // The OCSP responder rejected this request as unauthorized.
	OCSPResponseNonceMismatch          = -67646, // The OCSP response nonce did not match the request.
	CodeSigningBadCertChainLength      = -67647, // Code signing encountered an incorrect certificate chain length.
	CodeSigningNoBasicConstraints      = -67648, // Code signing found no basic constraints.
	CodeSigningBadPathLengthConstraint = -67649, // Code signing encountered an incorrect path length constraint.
	CodeSigningNoExtendedKeyUsage      = -67650, // Code signing found no extended key usage.
	CodeSigningDevelopment             = -67651, // Code signing indicated use of a development-only certificate.
	ResourceSignBadCertChainLength     = -67652, // Resource signing has encountered an incorrect certificate chain length.
	ResourceSignBadExtKeyUsage         = -67653, // Resource signing has encountered an error in the extended key usage.
	TrustSettingDeny                   = -67654, // The trust setting for this policy was set to Deny.
	InvalidSubjectName                 = -67655, // An invalid certificate subject name was encountered.
	UnknownQualifiedCertStatement      = -67656, // An unknown qualified certificate statement was encountered.
	MobileMeRequestQueued              = -67657, 
	MobileMeRequestRedirected          = -67658, 
	MobileMeServerError                = -67659, 
	MobileMeServerNotAvailable         = -67660, 
	MobileMeServerAlreadyExists        = -67661, 
	MobileMeServerServiceErr           = -67662, 
	MobileMeRequestAlreadyPending      = -67663, 
	MobileMeNoRequestPending           = -67664, 
	MobileMeCSRVerifyFailure           = -67665, 
	MobileMeFailedConsistencyCheck     = -67666, 
	NotInitialized                     = -67667, // A function was called without initializing CSSM.
	InvalidHandleUsage                 = -67668, // The CSSM handle does not match with the service type.
	PVCReferentNotFound                = -67669, // A reference to the calling module was not found in the list of authorized callers.
	FunctionIntegrityFail              = -67670, // A function address was not within the verified module.
	InternalError                      = -67671, // An internal error has occurred.
	MemoryError                        = -67672, // A memory error has occurred.
	InvalidData                        = -67673, // Invalid data was encountered.
	MDSError                           = -67674, // A Module Directory Service error has occurred.
	InvalidPointer                     = -67675, // An invalid pointer was encountered.
	SelfCheckFailed                    = -67676, // Self-check has failed.
	FunctionFailed                     = -67677, // A function has failed.
	ModuleManifestVerifyFailed         = -67678, // A module manifest verification failure has occurred.
	InvalidGUID                        = -67679, // An invalid GUID was encountered.
	InvalidHandle                      = -67680, // An invalid handle was encountered.
	InvalidDBList                      = -67681, // An invalid DB list was encountered.
	InvalidPassthroughID               = -67682, // An invalid passthrough ID was encountered.
	InvalidNetworkAddress              = -67683, // An invalid network address was encountered.
	CRLAlreadySigned                   = -67684, // The certificate revocation list is already signed.
	InvalidNumberOfFields              = -67685, // An invalid number of fields were encountered.
	VerificationFailure                = -67686, // A verification failure occurred.
	UnknownTag                         = -67687, // An unknown tag was encountered.
	InvalidSignature                   = -67688, // An invalid signature was encountered.
	InvalidName                        = -67689, // An invalid name was encountered.
	InvalidCertificateRef              = -67690, // An invalid certificate reference was encountered.
	InvalidCertificateGroup            = -67691, // An invalid certificate group was encountered.
	TagNotFound                        = -67692, // The specified tag was not found.
	InvalidQuery                       = -67693, // The specified query was not valid.
	InvalidValue                       = -67694, // An invalid value was detected.
	CallbackFailed                     = -67695, // A callback has failed.
	ACLDeleteFailed                    = -67696, // An ACL delete operation has failed.
	ACLReplaceFailed                   = -67697, // An ACL replace operation has failed.
	ACLAddFailed                       = -67698, // An ACL add operation has failed.
	ACLChangeFailed                    = -67699, // An ACL change operation has failed.
	InvalidAccessCredentials           = -67700, // Invalid access credentials were encountered.
	InvalidRecord                      = -67701, // An invalid record was encountered.
	InvalidACL                         = -67702, // An invalid ACL was encountered.
	InvalidSampleValue                 = -67703, // An invalid sample value was encountered.
	IncompatibleVersion                = -67704, // An incompatible version was encountered.
	PrivilegeNotGranted                = -67705, // The privilege was not granted.
	InvalidScope                       = -67706, // An invalid scope was encountered.
	PVCAlreadyConfigured               = -67707, // The PVC is already configured.
	InvalidPVC                         = -67708, // An invalid PVC was encountered.
	EMMLoadFailed                      = -67709, // The EMM load has failed.
	EMMUnloadFailed                    = -67710, // The EMM unload has failed.
	AddinLoadFailed                    = -67711, // The add-in load operation has failed.
	InvalidKeyRef                      = -67712, // An invalid key was encountered.
	InvalidKeyHierarchy                = -67713, // An invalid key hierarchy was encountered.
	AddinUnloadFailed                  = -67714, // The add-in unload operation has failed.
	LibraryReferenceNotFound           = -67715, // A library reference was not found.
	InvalidAddinFunctionTable          = -67716, // An invalid add-in function table was encountered.
	InvalidServiceMask                 = -67717, // An invalid service mask was encountered.
	ModuleNotLoaded                    = -67718, // A module was not loaded.
	InvalidSubServiceID                = -67719, // An invalid subservice ID was encountered.
	AttributeNotInContext              = -67720, // An attribute was not in the context.
	ModuleManagerInitializeFailed      = -67721, // A module failed to initialize.
	ModuleManagerNotFound              = -67722, // A module was not found.
	EventNotificationCallbackNotFound  = -67723, // An event notification callback was not found.
	InputLengthError                   = -67724, // An input length error was encountered.
	OutputLengthError                  = -67725, // An output length error was encountered.
	PrivilegeNotSupported              = -67726, // The privilege is not supported.
	DeviceError                        = -67727, // A device error was encountered.
	AttachHandleBusy                   = -67728, // The CSP handle was busy.
	NotLoggedIn                        = -67729, // You are not logged in.
	AlgorithmMismatch                  = -67730, // An algorithm mismatch was encountered.
	KeyUsageIncorrect                  = -67731, // The key usage is incorrect.
	KeyBlobTypeIncorrect               = -67732, // The key blob type is incorrect.
	KeyHeaderInconsistent              = -67733, // The key header is inconsistent.
	UnsupportedKeyFormat               = -67734, // The key header format is not supported.
	UnsupportedKeySize                 = -67735, // The key size is not supported.
	InvalidKeyUsageMask                = -67736, // The key usage mask is not valid.
	UnsupportedKeyUsageMask            = -67737, // The key usage mask is not supported.
	InvalidKeyAttributeMask            = -67738, // The key attribute mask is not valid.
	UnsupportedKeyAttributeMask        = -67739, // The key attribute mask is not supported.
	InvalidKeyLabel                    = -67740, // The key label is not valid.
	UnsupportedKeyLabel                = -67741, // The key label is not supported.
	InvalidKeyFormat                   = -67742, // The key format is not valid.
	UnsupportedVectorOfBuffers         = -67743, // The vector of buffers is not supported.
	InvalidInputVector                 = -67744, // The input vector is not valid.
	InvalidOutputVector                = -67745, // The output vector is not valid.
	InvalidContext                     = -67746, // An invalid context was encountered.
	InvalidAlgorithm                   = -67747, // An invalid algorithm was encountered.
	InvalidAttributeKey                = -67748, // A key attribute was not valid.
	MissingAttributeKey                = -67749, // A key attribute was missing.
	InvalidAttributeInitVector         = -67750, // An init vector attribute was not valid.
	MissingAttributeInitVector         = -67751, // An init vector attribute was missing.
	InvalidAttributeSalt               = -67752, // A salt attribute was not valid.
	MissingAttributeSalt               = -67753, // A salt attribute was missing.
	InvalidAttributePadding            = -67754, // A padding attribute was not valid.
	MissingAttributePadding            = -67755, // A padding attribute was missing.
	InvalidAttributeRandom             = -67756, // A random number attribute was not valid.
	MissingAttributeRandom             = -67757, // A random number attribute was missing.
	InvalidAttributeSeed               = -67758, // A seed attribute was not valid.
	MissingAttributeSeed               = -67759, // A seed attribute was missing.
	InvalidAttributePassphrase         = -67760, // A passphrase attribute was not valid.
	MissingAttributePassphrase         = -67761, // A passphrase attribute was missing.
	InvalidAttributeKeyLength          = -67762, // A key length attribute was not valid.
	MissingAttributeKeyLength          = -67763, // A key length attribute was missing.
	InvalidAttributeBlockSize          = -67764, // A block size attribute was not valid.
	MissingAttributeBlockSize          = -67765, // A block size attribute was missing.
	InvalidAttributeOutputSize         = -67766, // An output size attribute was not valid.
	MissingAttributeOutputSize         = -67767, // An output size attribute was missing.
	InvalidAttributeRounds             = -67768, // The number of rounds attribute was not valid.
	MissingAttributeRounds             = -67769, // The number of rounds attribute was missing.
	InvalidAlgorithmParms              = -67770, // An algorithm parameters attribute was not valid.
	MissingAlgorithmParms              = -67771, // An algorithm parameters attribute was missing.
	InvalidAttributeLabel              = -67772, // A label attribute was not valid.
	MissingAttributeLabel              = -67773, // A label attribute was missing.
	InvalidAttributeKeyType            = -67774, // A key type attribute was not valid.
	MissingAttributeKeyType            = -67775, // A key type attribute was missing.
	InvalidAttributeMode               = -67776, // A mode attribute was not valid.
	MissingAttributeMode               = -67777, // A mode attribute was missing.
	InvalidAttributeEffectiveBits      = -67778, // An effective bits attribute was not valid.
	MissingAttributeEffectiveBits      = -67779, // An effective bits attribute was missing.
	InvalidAttributeStartDate          = -67780, // A start date attribute was not valid.
	MissingAttributeStartDate          = -67781, // A start date attribute was missing.
	InvalidAttributeEndDate            = -67782, // An end date attribute was not valid.
	MissingAttributeEndDate            = -67783, // An end date attribute was missing.
	InvalidAttributeVersion            = -67784, // A version attribute was not valid.
	MissingAttributeVersion            = -67785, // A version attribute was missing.
	InvalidAttributePrime              = -67786, // A prime attribute was not valid.
	MissingAttributePrime              = -67787, // A prime attribute was missing.
	InvalidAttributeBase               = -67788, // A base attribute was not valid.
	MissingAttributeBase               = -67789, // A base attribute was missing.
	InvalidAttributeSubprime           = -67790, // A subprime attribute was not valid.
	MissingAttributeSubprime           = -67791, // A subprime attribute was missing.
	InvalidAttributeIterationCount     = -67792, // An iteration count attribute was not valid.
	MissingAttributeIterationCount     = -67793, // An iteration count attribute was missing.
	InvalidAttributeDLDBHandle         = -67794, // A database handle attribute was not valid.
	MissingAttributeDLDBHandle         = -67795, // A database handle attribute was missing.
	InvalidAttributeAccessCredentials  = -67796, // An access credentials attribute was not valid.
	MissingAttributeAccessCredentials  = -67797, // An access credentials attribute was missing.
	InvalidAttributePublicKeyFormat    = -67798, // A public key format attribute was not valid.
	MissingAttributePublicKeyFormat    = -67799, // A public key format attribute was missing.
	InvalidAttributePrivateKeyFormat   = -67800, // A private key format attribute was not valid.
	MissingAttributePrivateKeyFormat   = -67801, // A private key format attribute was missing.
	InvalidAttributeSymmetricKeyFormat = -67802, // A symmetric key format attribute was not valid.
	MissingAttributeSymmetricKeyFormat = -67803, // A symmetric key format attribute was missing.
	InvalidAttributeWrappedKeyFormat   = -67804, // A wrapped key format attribute was not valid.
	MissingAttributeWrappedKeyFormat   = -67805, // A wrapped key format attribute was missing.
	StagedOperationInProgress          = -67806, // A staged operation is in progress.
	StagedOperationNotStarted          = -67807, // A staged operation was not started.
	VerifyFailed                       = -67808, // A cryptographic verification failure has occurred.
	QuerySizeUnknown                   = -67809, // The query size is unknown.
	BlockSizeMismatch                  = -67810, // A block size mismatch occurred.
	PublicKeyInconsistent              = -67811, // The public key was inconsistent.
	DeviceVerifyFailed                 = -67812, // A device verification failure has occurred.
	InvalidLoginName                   = -67813, // An invalid login name was detected.
	AlreadyLoggedIn                    = -67814, // The user is already logged in.
	InvalidDigestAlgorithm             = -67815, // An invalid digest algorithm was detected.
	InvalidCRLGroup                    = -67816, // An invalid CRL group was detected.
	CertificateCannotOperate           = -67817, // The certificate cannot operate.
	CertificateExpired                 = -67818, // An expired certificate was detected.
	CertificateNotValidYet             = -67819, // The certificate is not yet valid.
	CertificateRevoked                 = -67820, // The certificate was revoked.
	CertificateSuspended               = -67821, // The certificate was suspended.
	InsufficientCredentials            = -67822, // Insufficient credentials were detected.
	InvalidAction                      = -67823, // The action was not valid.
	InvalidAuthority                   = -67824, // The authority was not valid.
	VerifyActionFailed                 = -67825, // A verify action has failed.
	InvalidCertAuthority               = -67826, // The certificate authority was not valid.
	InvalidCRLAuthority                = -67827, // The CRL authority was not valid.
	InvalidCRLEncoding                 = -67828, // The CRL encoding was not valid.
	InvalidCRLType                     = -67829, // The CRL type was not valid.
	InvalidCRL                         = -67830, // The CRL was not valid.
	InvalidFormType                    = -67831, // The form type was not valid.
	InvalidID                          = -67832, // The ID was not valid.
	InvalidIdentifier                  = -67833, // The identifier was not valid.
	InvalidIndex                       = -67834, // The index was not valid.
	InvalidPolicyIdentifiers           = -67835, // The policy identifiers are not valid.
	InvalidTimeString                  = -67836, // The time specified was not valid.
	InvalidReason                      = -67837, // The trust policy reason was not valid.
	InvalidRequestInputs               = -67838, // The request inputs are not valid.
	InvalidResponseVector              = -67839, // The response vector was not valid.
	InvalidStopOnPolicy                = -67840, // The stop-on policy was not valid.
	InvalidTuple                       = -67841, // The tuple was not valid.
	MultipleValuesUnsupported          = -67842, // Multiple values are not supported.
	NotTrusted                         = -67843, // The certificate was not trusted.
	NoDefaultAuthority                 = -67844, // No default authority was detected.
	RejectedForm                       = -67845, // The trust policy had a rejected form.
	RequestLost                        = -67846, // The request was lost.
	RequestRejected                    = -67847, // The request was rejected.
	UnsupportedAddressType             = -67848, // The address type is not supported.
	UnsupportedService                 = -67849, // The service is not supported.
	InvalidTupleGroup                  = -67850, // The tuple group was not valid.
	InvalidBaseACLs                    = -67851, // The base ACLs are not valid.
	InvalidTupleCredentials            = -67852, // The tuple credentials are not valid.
	InvalidEncoding                    = -67853, // The encoding was not valid.
	InvalidValidityPeriod              = -67854, // The validity period was not valid.
	InvalidRequestor                   = -67855, // The requestor was not valid.
	RequestDescriptor                  = -67856, // The request descriptor was not valid.
	InvalidBundleInfo                  = -67857, // The bundle information was not valid.
	InvalidCRLIndex                    = -67858, // The CRL index was not valid.
	NoFieldValues                      = -67859, // No field values were detected.
	UnsupportedFieldFormat             = -67860, // The field format is not supported.
	UnsupportedIndexInfo               = -67861, // The index information is not supported.
	UnsupportedLocality                = -67862, // The locality is not supported.
	UnsupportedNumAttributes           = -67863, // The number of attributes is not supported.
	UnsupportedNumIndexes              = -67864, // The number of indexes is not supported.
	UnsupportedNumRecordTypes          = -67865, // The number of record types is not supported.
	FieldSpecifiedMultiple             = -67866, // Too many fields were specified.
	IncompatibleFieldFormat            = -67867, // The field format was incompatible.
	InvalidParsingModule               = -67868, // The parsing module was not valid.
	DatabaseLocked                     = -67869, // The database is locked.
	DatastoreIsOpen                    = -67870, // The data store is open.
	MissingValue                       = -67871, // A missing value was detected.
	UnsupportedQueryLimits             = -67872, // The query limits are not supported.
	UnsupportedNumSelectionPreds       = -67873, // The number of selection predicates is not supported.
	UnsupportedOperator                = -67874, // The operator is not supported.
	InvalidDBLocation                  = -67875, // The database location is not valid.
	InvalidAccessRequest               = -67876, // The access request is not valid.
	InvalidIndexInfo                   = -67877, // The index information is not valid.
	InvalidNewOwner                    = -67878, // The new owner is not valid.
	InvalidModifyMode                  = -67879, // The modify mode is not valid.
	MissingRequiredExtension           = -67880, // A required certificate extension is missing.
	ExtendedKeyUsageNotCritical        = -67881, // The extended key usage extension was not marked critical.
	TimestampMissing                   = -67882, // A timestamp was expected but was not found.
	TimestampInvalid                   = -67883, // The timestamp was not valid.
	TimestampNotTrusted                = -67884, // The timestamp was not trusted.
	TimestampServiceNotAvailable       = -67885, // The timestamp service is not available.
	TimestampBadAlg                    = -67886, // An unrecognized or unsupported Algorithm Identifier in timestamp.
	TimestampBadRequest                = -67887, // The timestamp transaction is not permitted or supported.
	TimestampBadDataFormat             = -67888, // The timestamp data submitted has the wrong format.
	TimestampTimeNotAvailable          = -67889, // The time source for the Timestamp Authority is not available.
	TimestampUnacceptedPolicy          = -67890, // The requested policy is not supported by the Timestamp Authority.
	TimestampUnacceptedExtension       = -67891, // The requested extension is not supported by the Timestamp Authority.
	TimestampAddInfoNotAvailable       = -67892, // The additional information requested is not available.
	TimestampSystemFailure             = -67893, // The timestamp request cannot be handled due to system failure.
	SigningTimeMissing                 = -67894, // A signing time was expected but was not found.
	TimestampRejection                 = -67895, // A timestamp transaction was rejected.
	TimestampWaiting                   = -67896, // A timestamp transaction is waiting.
	TimestampRevocationWarning         = -67897, // A timestamp authority revocation warning was issued.
	TimestampRevocationNotification    = -67898, // A timestamp authority revocation notification was issued.
	CertificatePolicyNotAllowed        = -67899, // The requested policy is not allowed for this certificate.
	CertificateNameNotAllowed          = -67900, // The requested name is not allowed for this certificate.
	CertificateValidityPeriodTooLong   = -67901, // The validity period in the certificate exceeds the maximum allowed.
	CertificateIsCA                    = -67902, // The verified certificate is a CA rather than an end-entity.
	CertificateDuplicateExtension      = -67903, // The certificate contains multiple extensions with the same extension ID.
}
```

##### Related Procedures With Parameters

* [CopyErrorMessageString](/core/sys/darwin/Security/#CopyErrorMessageString)



##### Related Procedures With Returns

* [RandomCopyBytes](/core/sys/darwin/Security/#RandomCopyBytes)

## Constants

This section is empty.

## Variables

### [kSecRandomDefault ¶](#kSecRandomDefault) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecRandom.odin#L13)

```
@(link_name="kSecRandomDefault")
kSecRandomDefault: RandomRef
```

 

Default random ref for /dev/random. Synonym for nil.

## Procedures

### [CopyErrorMessageString ¶](#CopyErrorMessageString) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecRandom.odin#L18)

```
CopyErrorMessageString :: proc "c" (status: errSec, reserved: rawptr = nil) -> CoreFoundation.String ---
```

### [RandomCopyBytes ¶](#RandomCopyBytes) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecRandom.odin#L16)

```
RandomCopyBytes :: proc "c" (rnd: RandomRef = kSecRandomDefault, count: uint, bytes: [^]u8) -> errSec ---
```

 

Generates an array of cryptographically secure random bytes.

## Procedure Groups

This section is empty.

## Source Files

* [SecBase.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecBase.odin)
* [SecRandom.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/darwin/Security/SecRandom.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.549563200 +0000 UTC`

* [Types](#pkg-Types)
  + [OSStatus](#OSStatus)
  + [RandomRef](#RandomRef)
  + [errSec](#errSec)
* [Variables](#pkg-Variables)
  + [kSecRandomDefault](#kSecRandomDefault)
* [Procedures](#pkg-Procedures)
  + [CopyErrorMessageString](#CopyErrorMessageString)
  + [RandomCopyBytes](#RandomCopyBytes)
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