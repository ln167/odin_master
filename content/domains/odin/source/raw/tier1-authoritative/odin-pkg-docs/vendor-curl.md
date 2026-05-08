package curl - pkg.odin-lang.org 






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



Current Package: *[vendor\_curl](/vendor/curl)*

  

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
2. [curl](/vendor/curl)

# package vendor:curl [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl)

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (117)

* [CURL](#CURL)
* [CURLM](#CURLM)
* [CURLSH](#CURLSH)
* [CURLU](#CURLU)
* [Hcode](#Hcode)
* [INFO](#INFO)
* [MSG](#MSG)
* [MULTI\_NOTIFY](#MULTI_NOTIFY)
* [Mcode](#Mcode)
* [Minfo](#Minfo)
* [Moption](#Moption)
* [Msg](#Msg)
* [NETRC\_OPTION](#NETRC_OPTION)
* [SHcode](#SHcode)
* [SHoption](#SHoption)
* [STScode](#STScode)
* [TLSAUTH](#TLSAUTH)
* [TimeCond](#TimeCond)
* [UFlag](#UFlag)
* [UFlags](#UFlags)
* [UPart](#UPart)
* [Ucode](#Ucode)
* [blob](#blob)
* [blob\_flag](#blob_flag)
* [blob\_flags](#blob_flags)
* [calloc\_callback](#calloc_callback)
* [certinfo](#certinfo)
* [chunk\_bgn\_callback](#chunk_bgn_callback)
* [chunk\_end\_callback](#chunk_end_callback)
* [closepolicy](#closepolicy)
* [closesocket\_callback](#closesocket_callback)
* [code](#code)
* [conv\_callback](#conv_callback)
* [curl\_notify\_function](#curl_notify_function)
* [debug\_callback](#debug_callback)
* [easyoption](#easyoption)
* [easyoptionflag](#easyoptionflag)
* [easyoptionflags](#easyoptionflags)
* [easytype](#easytype)
* [fileinfo](#fileinfo)
* [filetype](#filetype)
* [finfoflag](#finfoflag)
* [finfoflags](#finfoflags)
* [fnmatch\_callback](#fnmatch_callback)
* [formget\_callback](#formget_callback)
* [free\_callback](#free_callback)
* [ftpauth](#ftpauth)
* [ftpccc](#ftpccc)
* [ftpcreatedir](#ftpcreatedir)
* [ftpmethod](#ftpmethod)
* [header](#header)
* [header\_origin\_bit](#header_origin_bit)
* [header\_origin\_bits](#header_origin_bits)
* [hstsentry](#hstsentry)
* [hstsread\_callback](#hstsread_callback)
* [hstswrite\_callback](#hstswrite_callback)
* [httppost](#httppost)
* [httppost\_flag](#httppost_flag)
* [httppost\_flags](#httppost_flags)
* [index](#index)
* [infotype](#infotype)
* [iocmd](#iocmd)
* [ioctl\_callback](#ioctl_callback)
* [ioerr](#ioerr)
* [khkey](#khkey)
* [khmatch](#khmatch)
* [khstat](#khstat)
* [khtype](#khtype)
* [lock\_access](#lock_access)
* [lock\_data](#lock_data)
* [lock\_function](#lock_function)
* [malloc\_callback](#malloc_callback)
* [mime](#mime)
* [mimepart](#mimepart)
* [multi\_timer\_callback](#multi_timer_callback)
* [off\_t](#off_t)
* [opensocket\_callback](#opensocket_callback)
* [option](#option)
* [platform\_fd\_set](#platform_fd_set)
* [platform\_sockaddr](#platform_sockaddr)
* [prereq\_callback](#prereq_callback)
* [progress\_callback](#progress_callback)
* [proxycode](#proxycode)
* [proxytype](#proxytype)
* [push\_callback](#push_callback)
* [pushheaders](#pushheaders)
* [read\_callback](#read_callback)
* [realloc\_callback](#realloc_callback)
* [resolver\_start\_callback](#resolver_start_callback)
* [seek\_callback](#seek_callback)
* [slist](#slist)
* [sockaddr](#sockaddr)
* [socket\_callback](#socket_callback)
* [socket\_t](#socket_t)
* [socklen\_t](#socklen_t)
* [sockopt\_callback](#sockopt_callback)
* [socktype](#socktype)
* [sshhostkeycallback](#sshhostkeycallback)
* [sshkeycallback](#sshkeycallback)
* [ssl\_backend](#ssl_backend)
* [ssl\_ctx\_callback](#ssl_ctx_callback)
* [sslbackend](#sslbackend)
* [ssls\_export\_cb](#ssls_export_cb)
* [sslset](#sslset)
* [strdup\_callback](#strdup_callback)
* [tlssessioninfo](#tlssessioninfo)
* [trailer\_callback](#trailer_callback)
* [unlock\_function](#unlock_function)
* [usessl](#usessl)
* [version\_enum](#version_enum)
* [version\_info\_data](#version_info_data)
* [waitfd](#waitfd)
* [write\_callback](#write_callback)
* [ws\_flag](#ws_flag)
* [ws\_flags](#ws_flags)
* [ws\_frame](#ws_frame)
* [xferinfo\_callback](#xferinfo_callback)

Constants (309)

* [ALTSVC\_H1](#ALTSVC_H1)
* [ALTSVC\_H2](#ALTSVC_H2)
* [ALTSVC\_H3](#ALTSVC_H3)
* [ALTSVC\_READONLYFILE](#ALTSVC_READONLYFILE)
* [AUTH\_ANY](#AUTH_ANY)
* [AUTH\_ANYSAFE](#AUTH_ANYSAFE)
* [AUTH\_AWS\_SIGV4](#AUTH_AWS_SIGV4)
* [AUTH\_BASIC](#AUTH_BASIC)
* [AUTH\_BEARER](#AUTH_BEARER)
* [AUTH\_DIGEST](#AUTH_DIGEST)
* [AUTH\_DIGEST\_IE](#AUTH_DIGEST_IE)
* [AUTH\_GSSAPI](#AUTH_GSSAPI)
* [AUTH\_GSSNEGOTIATE](#AUTH_GSSNEGOTIATE)
* [AUTH\_NEGOTIATE](#AUTH_NEGOTIATE)
* [AUTH\_NONE](#AUTH_NONE)
* [AUTH\_NTLM](#AUTH_NTLM)
* [AUTH\_ONLY](#AUTH_ONLY)
* [BLOB\_COPY](#BLOB_COPY)
* [BLOB\_NOCOPY](#BLOB_NOCOPY)
* [CHUNK\_BGN\_FUNC\_FAIL](#CHUNK_BGN_FUNC_FAIL)
* [CHUNK\_BGN\_FUNC\_OK](#CHUNK_BGN_FUNC_OK)
* [CHUNK\_BGN\_FUNC\_SKIP](#CHUNK_BGN_FUNC_SKIP)
* [CHUNK\_END\_FUNC\_FAIL](#CHUNK_END_FUNC_FAIL)
* [CHUNK\_END\_FUNC\_OK](#CHUNK_END_FUNC_OK)
* [COPYRIGHT](#COPYRIGHT)
* [CSELECT\_ERR](#CSELECT_ERR)
* [CSELECT\_IN](#CSELECT_IN)
* [CSELECT\_OUT](#CSELECT_OUT)
* [ERROR\_SIZE](#ERROR_SIZE)
* [FINFOFLAG\_KNOWN\_FILENAME](#FINFOFLAG_KNOWN_FILENAME)
* [FINFOFLAG\_KNOWN\_FILETYPE](#FINFOFLAG_KNOWN_FILETYPE)
* [FINFOFLAG\_KNOWN\_GID](#FINFOFLAG_KNOWN_GID)
* [FINFOFLAG\_KNOWN\_HLINKCOUNT](#FINFOFLAG_KNOWN_HLINKCOUNT)
* [FINFOFLAG\_KNOWN\_PERM](#FINFOFLAG_KNOWN_PERM)
* [FINFOFLAG\_KNOWN\_SIZE](#FINFOFLAG_KNOWN_SIZE)
* [FINFOFLAG\_KNOWN\_TIME](#FINFOFLAG_KNOWN_TIME)
* [FINFOFLAG\_KNOWN\_UID](#FINFOFLAG_KNOWN_UID)
* [FNMATCHFUNC\_FAIL](#FNMATCHFUNC_FAIL)
* [FNMATCHFUNC\_MATCH](#FNMATCHFUNC_MATCH)
* [FNMATCHFUNC\_NOMATCH](#FNMATCHFUNC_NOMATCH)
* [FOLLOW\_ALL](#FOLLOW_ALL)
* [FOLLOW\_FIRSTONLY](#FOLLOW_FIRSTONLY)
* [FOLLOW\_OBEYCODE](#FOLLOW_OBEYCODE)
* [GLOBAL\_ACK\_EINTR](#GLOBAL_ACK_EINTR)
* [GLOBAL\_ALL](#GLOBAL_ALL)
* [GLOBAL\_DEFAULT](#GLOBAL_DEFAULT)
* [GLOBAL\_NOTHING](#GLOBAL_NOTHING)
* [GLOBAL\_SSL](#GLOBAL_SSL)
* [GLOBAL\_WIN32](#GLOBAL_WIN32)
* [GSSAPI\_DELEGATION\_FLAG](#GSSAPI_DELEGATION_FLAG)
* [GSSAPI\_DELEGATION\_NONE](#GSSAPI_DELEGATION_NONE)
* [GSSAPI\_DELEGATION\_POLICY\_FLAG](#GSSAPI_DELEGATION_POLICY_FLAG)
* [HEADER\_SEPARATE](#HEADER_SEPARATE)
* [HEADER\_UNIFIED](#HEADER_UNIFIED)
* [HET\_DEFAULT](#HET_DEFAULT)
* [HSTS\_ENABLE](#HSTS_ENABLE)
* [HSTS\_READONLYFILE](#HSTS_READONLYFILE)
* [HTTPPOST\_BUFFER](#HTTPPOST_BUFFER)
* [HTTPPOST\_CALLBACK](#HTTPPOST_CALLBACK)
* [HTTPPOST\_FILENAME](#HTTPPOST_FILENAME)
* [HTTPPOST\_LARGE](#HTTPPOST_LARGE)
* [HTTPPOST\_PTRBUFFER](#HTTPPOST_PTRBUFFER)
* [HTTPPOST\_PTRCONTENTS](#HTTPPOST_PTRCONTENTS)
* [HTTPPOST\_PTRNAME](#HTTPPOST_PTRNAME)
* [HTTPPOST\_READFILE](#HTTPPOST_READFILE)
* [HTTP\_VERSION\_1\_0](#HTTP_VERSION_1_0)
* [HTTP\_VERSION\_1\_1](#HTTP_VERSION_1_1)
* [HTTP\_VERSION\_2](#HTTP_VERSION_2)
* [HTTP\_VERSION\_2TLS](#HTTP_VERSION_2TLS)
* [HTTP\_VERSION\_2\_0](#HTTP_VERSION_2_0)
* [HTTP\_VERSION\_2\_PRIOR\_KNOWLEDGE](#HTTP_VERSION_2_PRIOR_KNOWLEDGE)
* [HTTP\_VERSION\_3](#HTTP_VERSION_3)
* [HTTP\_VERSION\_3ONLY](#HTTP_VERSION_3ONLY)
* [HTTP\_VERSION\_LAST](#HTTP_VERSION_LAST)
* [HTTP\_VERSION\_NONE](#HTTP_VERSION_NONE)
* [H\_1XX](#H_1XX)
* [H\_CONNECT](#H_CONNECT)
* [H\_HEADER](#H_HEADER)
* [H\_PSEUDO](#H_PSEUDO)
* [H\_TRAILER](#H_TRAILER)
* [INFO\_DOUBLE](#INFO_DOUBLE)
* [INFO\_LONG](#INFO_LONG)
* [INFO\_MASK](#INFO_MASK)
* [INFO\_OFF\_T](#INFO_OFF_T)
* [INFO\_PTR](#INFO_PTR)
* [INFO\_SLIST](#INFO_SLIST)
* [INFO\_SOCKET](#INFO_SOCKET)
* [INFO\_STRING](#INFO_STRING)
* [INFO\_TYPEMASK](#INFO_TYPEMASK)
* [IPRESOLVE\_V4](#IPRESOLVE_V4)
* [IPRESOLVE\_V6](#IPRESOLVE_V6)
* [IPRESOLVE\_WHATEVER](#IPRESOLVE_WHATEVER)
* [MAX\_HTTP\_HEADER](#MAX_HTTP_HEADER)
* [MAX\_READ\_SIZE](#MAX_READ_SIZE)
* [MAX\_WRITE\_SIZE](#MAX_WRITE_SIZE)
* [MIMEOPT\_FORMESCAPE](#MIMEOPT_FORMESCAPE)
* [MNWC\_CLEAR\_CONNS](#MNWC_CLEAR_CONNS)
* [MNWC\_CLEAR\_DNS](#MNWC_CLEAR_DNS)
* [NETRC\_IGNORED](#NETRC_IGNORED)
* [NETRC\_OPTIONAL](#NETRC_OPTIONAL)
* [NETRC\_REQUIRED](#NETRC_REQUIRED)
* [OPTTYPE\_BLOB](#OPTTYPE_BLOB)
* [OPTTYPE\_CBPOINT](#OPTTYPE_CBPOINT)
* [OPTTYPE\_FUNCTIONPOINT](#OPTTYPE_FUNCTIONPOINT)
* [OPTTYPE\_LONG](#OPTTYPE_LONG)
* [OPTTYPE\_OBJECTPOINT](#OPTTYPE_OBJECTPOINT)
* [OPTTYPE\_OFF\_T](#OPTTYPE_OFF_T)
* [OPTTYPE\_SLISTPOINT](#OPTTYPE_SLISTPOINT)
* [OPTTYPE\_STRINGPOINT](#OPTTYPE_STRINGPOINT)
* [OPTTYPE\_VALUES](#OPTTYPE_VALUES)
* [PAUSE\_ALL](#PAUSE_ALL)
* [PAUSE\_CONT](#PAUSE_CONT)
* [PAUSE\_RECV](#PAUSE_RECV)
* [PAUSE\_RECV\_CONT](#PAUSE_RECV_CONT)
* [PAUSE\_SEND](#PAUSE_SEND)
* [PAUSE\_SEND\_CONT](#PAUSE_SEND_CONT)
* [PIPE\_HTTP1](#PIPE_HTTP1)
* [PIPE\_MULTIPLEX](#PIPE_MULTIPLEX)
* [PIPE\_NOTHING](#PIPE_NOTHING)
* [POLL\_IN](#POLL_IN)
* [POLL\_INOUT](#POLL_INOUT)
* [POLL\_NONE](#POLL_NONE)
* [POLL\_OUT](#POLL_OUT)
* [POLL\_REMOVE](#POLL_REMOVE)
* [PREREQFUNC\_ABORT](#PREREQFUNC_ABORT)
* [PREREQFUNC\_OK](#PREREQFUNC_OK)
* [PROGRESSFUNC\_CONTINUE](#PROGRESSFUNC_CONTINUE)
* [PROTO\_ALL](#PROTO_ALL)
* [PROTO\_DICT](#PROTO_DICT)
* [PROTO\_FILE](#PROTO_FILE)
* [PROTO\_FTP](#PROTO_FTP)
* [PROTO\_FTPS](#PROTO_FTPS)
* [PROTO\_GOPHER](#PROTO_GOPHER)
* [PROTO\_GOPHERS](#PROTO_GOPHERS)
* [PROTO\_HTTP](#PROTO_HTTP)
* [PROTO\_HTTPS](#PROTO_HTTPS)
* [PROTO\_IMAP](#PROTO_IMAP)
* [PROTO\_IMAPS](#PROTO_IMAPS)
* [PROTO\_LDAP](#PROTO_LDAP)
* [PROTO\_LDAPS](#PROTO_LDAPS)
* [PROTO\_MQTT](#PROTO_MQTT)
* [PROTO\_POP3](#PROTO_POP3)
* [PROTO\_POP3S](#PROTO_POP3S)
* [PROTO\_RTMP](#PROTO_RTMP)
* [PROTO\_RTMPE](#PROTO_RTMPE)
* [PROTO\_RTMPS](#PROTO_RTMPS)
* [PROTO\_RTMPT](#PROTO_RTMPT)
* [PROTO\_RTMPTE](#PROTO_RTMPTE)
* [PROTO\_RTMPTS](#PROTO_RTMPTS)
* [PROTO\_RTSP](#PROTO_RTSP)
* [PROTO\_SCP](#PROTO_SCP)
* [PROTO\_SFTP](#PROTO_SFTP)
* [PROTO\_SMB](#PROTO_SMB)
* [PROTO\_SMBS](#PROTO_SMBS)
* [PROTO\_SMTP](#PROTO_SMTP)
* [PROTO\_SMTPS](#PROTO_SMTPS)
* [PROTO\_TELNET](#PROTO_TELNET)
* [PROTO\_TFTP](#PROTO_TFTP)
* [PT\_RTSPHEADER](#PT_RTSPHEADER)
* [PUSH\_DENY](#PUSH_DENY)
* [PUSH\_ERROROUT](#PUSH_ERROROUT)
* [PUSH\_OK](#PUSH_OK)
* [READFUNC\_ABORT](#READFUNC_ABORT)
* [READFUNC\_PAUSE](#READFUNC_PAUSE)
* [REDIR\_GET\_ALL](#REDIR_GET_ALL)
* [REDIR\_POST\_301](#REDIR_POST_301)
* [REDIR\_POST\_302](#REDIR_POST_302)
* [REDIR\_POST\_303](#REDIR_POST_303)
* [REDIR\_POST\_ALL](#REDIR_POST_ALL)
* [RTSPREQ\_ANNOUNCE](#RTSPREQ_ANNOUNCE)
* [RTSPREQ\_DESCRIBE](#RTSPREQ_DESCRIBE)
* [RTSPREQ\_GET\_PARAMETER](#RTSPREQ_GET_PARAMETER)
* [RTSPREQ\_LAST](#RTSPREQ_LAST)
* [RTSPREQ\_NONE](#RTSPREQ_NONE)
* [RTSPREQ\_OPTIONS](#RTSPREQ_OPTIONS)
* [RTSPREQ\_PAUSE](#RTSPREQ_PAUSE)
* [RTSPREQ\_PLAY](#RTSPREQ_PLAY)
* [RTSPREQ\_RECEIVE](#RTSPREQ_RECEIVE)
* [RTSPREQ\_RECORD](#RTSPREQ_RECORD)
* [RTSPREQ\_SETUP](#RTSPREQ_SETUP)
* [RTSPREQ\_SET\_PARAMETER](#RTSPREQ_SET_PARAMETER)
* [RTSPREQ\_TEARDOWN](#RTSPREQ_TEARDOWN)
* [SEEKFUNC\_CANTSEEK](#SEEKFUNC_CANTSEEK)
* [SEEKFUNC\_FAIL](#SEEKFUNC_FAIL)
* [SEEKFUNC\_OK](#SEEKFUNC_OK)
* [SOCKET\_BAD](#SOCKET_BAD)
* [SOCKET\_TIMEOUT](#SOCKET_TIMEOUT)
* [SOCKOPT\_ALREADY\_CONNECTED](#SOCKOPT_ALREADY_CONNECTED)
* [SOCKOPT\_ERROR](#SOCKOPT_ERROR)
* [SOCKOPT\_OK](#SOCKOPT_OK)
* [SSH\_AUTH\_AGENT](#SSH_AUTH_AGENT)
* [SSH\_AUTH\_ANY](#SSH_AUTH_ANY)
* [SSH\_AUTH\_DEFAULT](#SSH_AUTH_DEFAULT)
* [SSH\_AUTH\_GSSAPI](#SSH_AUTH_GSSAPI)
* [SSH\_AUTH\_HOST](#SSH_AUTH_HOST)
* [SSH\_AUTH\_KEYBOARD](#SSH_AUTH_KEYBOARD)
* [SSH\_AUTH\_NONE](#SSH_AUTH_NONE)
* [SSH\_AUTH\_PASSWORD](#SSH_AUTH_PASSWORD)
* [SSH\_AUTH\_PUBLICKEY](#SSH_AUTH_PUBLICKEY)
* [SSLOPT\_ALLOW\_BEAST](#SSLOPT_ALLOW_BEAST)
* [SSLOPT\_AUTO\_CLIENT\_CERT](#SSLOPT_AUTO_CLIENT_CERT)
* [SSLOPT\_EARLYDATA](#SSLOPT_EARLYDATA)
* [SSLOPT\_NATIVE\_CA](#SSLOPT_NATIVE_CA)
* [SSLOPT\_NO\_PARTIALCHAIN](#SSLOPT_NO_PARTIALCHAIN)
* [SSLOPT\_NO\_REVOKE](#SSLOPT_NO_REVOKE)
* [SSLOPT\_REVOKE\_BEST\_EFFORT](#SSLOPT_REVOKE_BEST_EFFORT)
* [SSLVERSION\_DEFAULT](#SSLVERSION_DEFAULT)
* [SSLVERSION\_LAST](#SSLVERSION_LAST)
* [SSLVERSION\_MAX\_DEFAULT](#SSLVERSION_MAX_DEFAULT)
* [SSLVERSION\_MAX\_LAST](#SSLVERSION_MAX_LAST)
* [SSLVERSION\_MAX\_NONE](#SSLVERSION_MAX_NONE)
* [SSLVERSION\_MAX\_TLSv1\_0](#SSLVERSION_MAX_TLSv1_0)
* [SSLVERSION\_MAX\_TLSv1\_1](#SSLVERSION_MAX_TLSv1_1)
* [SSLVERSION\_MAX\_TLSv1\_2](#SSLVERSION_MAX_TLSv1_2)
* [SSLVERSION\_MAX\_TLSv1\_3](#SSLVERSION_MAX_TLSv1_3)
* [SSLVERSION\_SSLv2](#SSLVERSION_SSLv2)
* [SSLVERSION\_SSLv3](#SSLVERSION_SSLv3)
* [SSLVERSION\_TLSv1](#SSLVERSION_TLSv1)
* [SSLVERSION\_TLSv1\_0](#SSLVERSION_TLSv1_0)
* [SSLVERSION\_TLSv1\_1](#SSLVERSION_TLSv1_1)
* [SSLVERSION\_TLSv1\_2](#SSLVERSION_TLSv1_2)
* [SSLVERSION\_TLSv1\_3](#SSLVERSION_TLSv1_3)
* [TIMECOND\_IFMODSINCE](#TIMECOND_IFMODSINCE)
* [TIMECOND\_IFUNMODSINCE](#TIMECOND_IFUNMODSINCE)
* [TIMECOND\_LASTMOD](#TIMECOND_LASTMOD)
* [TIMECOND\_NONE](#TIMECOND_NONE)
* [TIMESTAMP](#TIMESTAMP)
* [TLSAUTH\_NONE](#TLSAUTH_NONE)
* [TLSAUTH\_SRP](#TLSAUTH_SRP)
* [TRAILERFUNC\_ABORT](#TRAILERFUNC_ABORT)
* [TRAILERFUNC\_OK](#TRAILERFUNC_OK)
* [ULFLAG\_ANSWERED](#ULFLAG_ANSWERED)
* [ULFLAG\_DELETED](#ULFLAG_DELETED)
* [ULFLAG\_DRAFT](#ULFLAG_DRAFT)
* [ULFLAG\_FLAGGED](#ULFLAG_FLAGGED)
* [ULFLAG\_SEEN](#ULFLAG_SEEN)
* [UPKEEP\_INTERVAL\_DEFAULT](#UPKEEP_INTERVAL_DEFAULT)
* [USESSL\_ALL](#USESSL_ALL)
* [USESSL\_CONTROL](#USESSL_CONTROL)
* [USESSL\_NONE](#USESSL_NONE)
* [USESSL\_TRY](#USESSL_TRY)
* [U\_ALLOW\_SPACE](#U_ALLOW_SPACE)
* [U\_APPENDQUERY](#U_APPENDQUERY)
* [U\_DEFAULT\_PORT](#U_DEFAULT_PORT)
* [U\_DEFAULT\_SCHEME](#U_DEFAULT_SCHEME)
* [U\_DISALLOW\_USER](#U_DISALLOW_USER)
* [U\_GET\_EMPTY](#U_GET_EMPTY)
* [U\_GUESS\_SCHEME](#U_GUESS_SCHEME)
* [U\_NON\_SUPPORT\_SCHEME](#U_NON_SUPPORT_SCHEME)
* [U\_NO\_AUTHORITY](#U_NO_AUTHORITY)
* [U\_NO\_DEFAULT\_PORT](#U_NO_DEFAULT_PORT)
* [U\_NO\_GUESS\_SCHEME](#U_NO_GUESS_SCHEME)
* [U\_PATH\_AS\_IS](#U_PATH_AS_IS)
* [U\_PUNY2IDN](#U_PUNY2IDN)
* [U\_PUNYCODE](#U_PUNYCODE)
* [U\_URLDECODE](#U_URLDECODE)
* [U\_URLENCODE](#U_URLENCODE)
* [VERSION](#VERSION)
* [VERSION\_ALTSVC](#VERSION_ALTSVC)
* [VERSION\_ASYNCHDNS](#VERSION_ASYNCHDNS)
* [VERSION\_BROTLI](#VERSION_BROTLI)
* [VERSION\_CONV](#VERSION_CONV)
* [VERSION\_CURLDEBUG](#VERSION_CURLDEBUG)
* [VERSION\_DEBUG](#VERSION_DEBUG)
* [VERSION\_GSASL](#VERSION_GSASL)
* [VERSION\_GSSAPI](#VERSION_GSSAPI)
* [VERSION\_GSSNEGOTIATE](#VERSION_GSSNEGOTIATE)
* [VERSION\_HSTS](#VERSION_HSTS)
* [VERSION\_HTTP2](#VERSION_HTTP2)
* [VERSION\_HTTP3](#VERSION_HTTP3)
* [VERSION\_HTTPS\_PROXY](#VERSION_HTTPS_PROXY)
* [VERSION\_IDN](#VERSION_IDN)
* [VERSION\_IPV6](#VERSION_IPV6)
* [VERSION\_KERBEROS4](#VERSION_KERBEROS4)
* [VERSION\_KERBEROS5](#VERSION_KERBEROS5)
* [VERSION\_LARGEFILE](#VERSION_LARGEFILE)
* [VERSION\_LIBZ](#VERSION_LIBZ)
* [VERSION\_MAJOR](#VERSION_MAJOR)
* [VERSION\_MINOR](#VERSION_MINOR)
* [VERSION\_MULTI\_SSL](#VERSION_MULTI_SSL)
* [VERSION\_NOW](#VERSION_NOW)
* [VERSION\_NTLM](#VERSION_NTLM)
* [VERSION\_NTLM\_WB](#VERSION_NTLM_WB)
* [VERSION\_NUM](#VERSION_NUM)
* [VERSION\_PATCH](#VERSION_PATCH)
* [VERSION\_PSL](#VERSION_PSL)
* [VERSION\_SPNEGO](#VERSION_SPNEGO)
* [VERSION\_SSL](#VERSION_SSL)
* [VERSION\_SSPI](#VERSION_SSPI)
* [VERSION\_THREADSAFE](#VERSION_THREADSAFE)
* [VERSION\_TLSAUTH\_SRP](#VERSION_TLSAUTH_SRP)
* [VERSION\_UNICODE](#VERSION_UNICODE)
* [VERSION\_UNIX\_SOCKETS](#VERSION_UNIX_SOCKETS)
* [VERSION\_ZSTD](#VERSION_ZSTD)
* [WAIT\_POLLIN](#WAIT_POLLIN)
* [WAIT\_POLLOUT](#WAIT_POLLOUT)
* [WAIT\_POLLPRI](#WAIT_POLLPRI)
* [WRITEFUNC\_ERROR](#WRITEFUNC_ERROR)
* [WRITEFUNC\_PAUSE](#WRITEFUNC_PAUSE)
* [WS\_BINARY](#WS_BINARY)
* [WS\_CLOSE](#WS_CLOSE)
* [WS\_CONT](#WS_CONT)
* [WS\_NOAUTOPONG](#WS_NOAUTOPONG)
* [WS\_OFFSET](#WS_OFFSET)
* [WS\_PING](#WS_PING)
* [WS\_PONG](#WS_PONG)
* [WS\_RAW\_MODE](#WS_RAW_MODE)
* [WS\_TEXT](#WS_TEXT)
* [ZERO\_TERMINATED](#ZERO_TERMINATED)

Variables (0)

This section is empty.

Procedures (85)

* [easy\_cleanup](#easy_cleanup)
* [easy\_duphandle](#easy_duphandle)
* [easy\_escape](#easy_escape)
* [easy\_getinfo](#easy_getinfo)
* [easy\_header](#easy_header)
* [easy\_init](#easy_init)
* [easy\_nextheader](#easy_nextheader)
* [easy\_option\_by\_id](#easy_option_by_id)
* [easy\_option\_by\_name](#easy_option_by_name)
* [easy\_option\_next](#easy_option_next)
* [easy\_pause](#easy_pause)
* [easy\_perform](#easy_perform)
* [easy\_recv](#easy_recv)
* [easy\_reset](#easy_reset)
* [easy\_send](#easy_send)
* [easy\_setopt](#easy_setopt)
* [easy\_ssls\_export](#easy_ssls_export)
* [easy\_ssls\_import](#easy_ssls_import)
* [easy\_strerror](#easy_strerror)
* [easy\_unescape](#easy_unescape)
* [easy\_upkeep](#easy_upkeep)
* [escape](#escape)
* [free](#free)
* [getdate](#getdate)
* [getenv](#getenv)
* [global\_cleanup](#global_cleanup)
* [global\_init](#global_init)
* [global\_init\_mem](#global_init_mem)
* [global\_sslset](#global_sslset)
* [global\_trace](#global_trace)
* [mime\_addpart](#mime_addpart)
* [mime\_data](#mime_data)
* [mime\_data\_cb](#mime_data_cb)
* [mime\_encoder](#mime_encoder)
* [mime\_filedata](#mime_filedata)
* [mime\_filename](#mime_filename)
* [mime\_free](#mime_free)
* [mime\_headers](#mime_headers)
* [mime\_init](#mime_init)
* [mime\_name](#mime_name)
* [mime\_subparts](#mime_subparts)
* [mime\_type](#mime_type)
* [multi\_add\_handle](#multi_add_handle)
* [multi\_assign](#multi_assign)
* [multi\_cleanup](#multi_cleanup)
* [multi\_fdset](#multi_fdset)
* [multi\_get\_handles](#multi_get_handles)
* [multi\_get\_offt](#multi_get_offt)
* [multi\_info\_read](#multi_info_read)
* [multi\_init](#multi_init)
* [multi\_notify\_disable](#multi_notify_disable)
* [multi\_notify\_enable](#multi_notify_enable)
* [multi\_perform](#multi_perform)
* [multi\_poll](#multi_poll)
* [multi\_remove\_handle](#multi_remove_handle)
* [multi\_setopt](#multi_setopt)
* [multi\_socket\_action](#multi_socket_action)
* [multi\_strerror](#multi_strerror)
* [multi\_timeout](#multi_timeout)
* [multi\_wait](#multi_wait)
* [multi\_waitfds](#multi_waitfds)
* [multi\_wakeup](#multi_wakeup)
* [pushheader\_byname](#pushheader_byname)
* [pushheader\_bynum](#pushheader_bynum)
* [share\_cleanup](#share_cleanup)
* [share\_init](#share_init)
* [share\_setopt](#share_setopt)
* [share\_strerror](#share_strerror)
* [slist\_append](#slist_append)
* [slist\_free\_all](#slist_free_all)
* [strequal](#strequal)
* [strnequal](#strnequal)
* [unescape](#unescape)
* [url](#url)
* [url\_cleanup](#url_cleanup)
* [url\_dup](#url_dup)
* [url\_get](#url_get)
* [url\_set](#url_set)
* [url\_strerror](#url_strerror)
* [version](#version)
* [version\_info](#version_info)
* [ws\_meta](#ws_meta)
* [ws\_recv](#ws_recv)
* [ws\_send](#ws_send)
* [ws\_start\_frame](#ws_start_frame)

Procedure Groups (0)

This section is empty.

## Types

### [CURL ¶](#CURL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L92)

```
CURL :: struct {}
```

##### Related Procedures With Parameters

* [easy\_cleanup](/vendor/curl/#easy_cleanup)
* [easy\_duphandle](/vendor/curl/#easy_duphandle)
* [easy\_escape](/vendor/curl/#easy_escape)
* [easy\_getinfo](/vendor/curl/#easy_getinfo)
* [easy\_header](/vendor/curl/#easy_header)
* [easy\_nextheader](/vendor/curl/#easy_nextheader)
* [easy\_pause](/vendor/curl/#easy_pause)
* [easy\_perform](/vendor/curl/#easy_perform)
* [easy\_recv](/vendor/curl/#easy_recv)
* [easy\_reset](/vendor/curl/#easy_reset)
* [easy\_send](/vendor/curl/#easy_send)
* [easy\_setopt](/vendor/curl/#easy_setopt)
* [easy\_ssls\_export](/vendor/curl/#easy_ssls_export)
* [easy\_ssls\_import](/vendor/curl/#easy_ssls_import)
* [easy\_unescape](/vendor/curl/#easy_unescape)
* [easy\_upkeep](/vendor/curl/#easy_upkeep)
* [mime\_init](/vendor/curl/#mime_init)
* [multi\_add\_handle](/vendor/curl/#multi_add_handle)
* [multi\_remove\_handle](/vendor/curl/#multi_remove_handle)
* [ws\_meta](/vendor/curl/#ws_meta)
* [ws\_recv](/vendor/curl/#ws_recv)
* [ws\_send](/vendor/curl/#ws_send)
* [ws\_start\_frame](/vendor/curl/#ws_start_frame)



##### Related Procedures With Returns

* [easy\_init](/vendor/curl/#easy_init)

### [CURLM ¶](#CURLM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L5)

```
CURLM :: struct {}
```

##### Related Procedures With Parameters

* [multi\_add\_handle](/vendor/curl/#multi_add_handle)
* [multi\_assign](/vendor/curl/#multi_assign)
* [multi\_cleanup](/vendor/curl/#multi_cleanup)
* [multi\_fdset](/vendor/curl/#multi_fdset)
* [multi\_get\_handles](/vendor/curl/#multi_get_handles)
* [multi\_get\_offt](/vendor/curl/#multi_get_offt)
* [multi\_info\_read](/vendor/curl/#multi_info_read)
* [multi\_notify\_disable](/vendor/curl/#multi_notify_disable)
* [multi\_notify\_enable](/vendor/curl/#multi_notify_enable)
* [multi\_perform](/vendor/curl/#multi_perform)
* [multi\_poll](/vendor/curl/#multi_poll)
* [multi\_remove\_handle](/vendor/curl/#multi_remove_handle)
* [multi\_setopt](/vendor/curl/#multi_setopt)
* [multi\_socket\_action](/vendor/curl/#multi_socket_action)
* [multi\_timeout](/vendor/curl/#multi_timeout)
* [multi\_wait](/vendor/curl/#multi_wait)
* [multi\_waitfds](/vendor/curl/#multi_waitfds)
* [multi\_wakeup](/vendor/curl/#multi_wakeup)



##### Related Procedures With Returns

* [multi\_init](/vendor/curl/#multi_init)

### [CURLSH ¶](#CURLSH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L93)

```
CURLSH :: struct {}
```

##### Related Procedures With Parameters

* [share\_cleanup](/vendor/curl/#share_cleanup)
* [share\_setopt](/vendor/curl/#share_setopt)



##### Related Procedures With Returns

* [share\_init](/vendor/curl/#share_init)

### [CURLU ¶](#CURLU) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L5)

```
CURLU :: struct {}
```

##### Related Procedures With Parameters

* [url\_cleanup](/vendor/curl/#url_cleanup)
* [url\_dup](/vendor/curl/#url_dup)
* [url\_get](/vendor/curl/#url_get)
* [url\_set](/vendor/curl/#url_set)



##### Related Procedures With Returns

* [url](/vendor/curl/#url)

### [Hcode ¶](#Hcode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L31)

```
Hcode :: enum i32 {
	E_OK, 
	E_BADINDEX,      // header exists but not with this index
	E_MISSING,       // no such header exists
	E_NOHEADERS,     // no headers at all exist (yet)
	E_NOREQUEST,     // no request with this number was used
	E_OUT_OF_MEMORY, // out of memory while processing
	E_BAD_ARGUMENT,  // a function argument was not okay
	E_NOT_BUILT_IN,  // if API was disabled in the build
}
```

##### Related Procedures With Returns

* [easy\_header](/vendor/curl/#easy_header)

### [INFO ¶](#INFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2561)

```
INFO :: enum i32 {
	NONE,                                // first, never use this
	EFFECTIVE_URL             = 1048577, 
	RESPONSE_CODE             = 2097154, 
	TOTAL_TIME                = 3145731, 
	NAMELOOKUP_TIME           = 3145732, 
	CONNECT_TIME              = 3145733, 
	PRETRANSFER_TIME          = 3145734, 
	SIZE_UPLOAD_T             = 6291463, 
	SIZE_DOWNLOAD_T           = 6291464, 
	SPEED_DOWNLOAD_T          = 6291465, 
	SPEED_UPLOAD_T            = 6291466, 
	HEADER_SIZE               = 2097163, 
	REQUEST_SIZE              = 2097164, 
	SSL_VERIFYRESULT          = 2097165, 
	FILETIME                  = 2097166, 
	FILETIME_T                = 6291470, 
	CONTENT_LENGTH_DOWNLOAD_T = 6291471, 
	CONTENT_LENGTH_UPLOAD_T   = 6291472, 
	STARTTRANSFER_TIME        = 3145745, 
	CONTENT_TYPE              = 1048594, 
	REDIRECT_TIME             = 3145747, 
	REDIRECT_COUNT            = 2097172, 
	PRIVATE                   = 1048597, 
	HTTP_CONNECTCODE          = 2097174, 
	HTTPAUTH_AVAIL            = 2097175, 
	PROXYAUTH_AVAIL           = 2097176, 
	OS_ERRNO                  = 2097177, 
	NUM_CONNECTS              = 2097178, 
	SSL_ENGINES               = 4194331, 
	COOKIELIST                = 4194332, 
	FTP_ENTRY_PATH            = 1048606, 
	REDIRECT_URL              = 1048607, 
	PRIMARY_IP                = 1048608, 
	APPCONNECT_TIME           = 3145761, 
	CERTINFO                  = 4194338, 
	CONDITION_UNMET           = 2097187, 
	RTSP_SESSION_ID           = 1048612, 
	RTSP_CLIENT_CSEQ          = 2097189, 
	RTSP_SERVER_CSEQ          = 2097190, 
	RTSP_CSEQ_RECV            = 2097191, 
	PRIMARY_PORT              = 2097192, 
	LOCAL_IP                  = 1048617, 
	LOCAL_PORT                = 2097194, 
	ACTIVESOCKET              = 5242924, 
	TLS_SSL_PTR               = 4194349, 
	HTTP_VERSION              = 2097198, 
	PROXY_SSL_VERIFYRESULT    = 2097199, 
	SCHEME                    = 1048625, 
	TOTAL_TIME_T              = 6291506, 
	NAMELOOKUP_TIME_T         = 6291507, 
	CONNECT_TIME_T            = 6291508, 
	PRETRANSFER_TIME_T        = 6291509, 
	STARTTRANSFER_TIME_T      = 6291510, 
	REDIRECT_TIME_T           = 6291511, 
	APPCONNECT_TIME_T         = 6291512, 
	RETRY_AFTER               = 6291513, 
	EFFECTIVE_METHOD          = 1048634, 
	PROXY_ERROR               = 2097211, 
	REFERER                   = 1048636, 
	CAINFO                    = 1048637, 
	CAPATH                    = 1048638, 
	XFER_ID                   = 6291519, 
	CONN_ID                   = 6291520, 
	QUEUE_TIME_T              = 6291521, 
	USED_PROXY                = 2097218, 
	POSTTRANSFER_TIME_T       = 6291523, 
	EARLYDATA_SENT_T          = 6291524, 
	HTTPAUTH_USED             = 2097221, 
	PROXYAUTH_USED            = 2097222, 
	// CURLINFO_RESPONSE_CODE is the new name for the option previously known as
	// 	   CURLINFO_HTTP_CODE 
	HTTP_CODE                 = 2097154, 
}
```

##### Related Procedures With Parameters

* [easy\_getinfo](/vendor/curl/#easy_getinfo)

### [MSG ¶](#MSG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L36)

```
MSG :: enum i32 {
	NONE, // first, not used
	DONE, // This easy handle has completed. 'result' contains
	          the CURLcode of the transfer
}
```

### [MULTI\_NOTIFY ¶](#MULTI_NOTIFY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L429)

```
MULTI_NOTIFY :: enum u32 {
	INFO_READ = 0, 
	EASY_DONE = 1, 
}
```

 

\* Notifications dispatched by a multi handle, when enabled.




##### Related Procedures With Parameters

* [multi\_notify\_disable](/vendor/curl/#multi_notify_disable)
* [multi\_notify\_enable](/vendor/curl/#multi_notify_enable)

### [Mcode ¶](#Mcode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L7)

```
Mcode :: enum i32 {
	CALL_MULTI_PERFORM    = -1, // please call curl_multi_perform() or
                                    curl_multi_socket*() soon
	OK, 
	BAD_HANDLE,                 // the passed-in handle is not a valid CURLM handle
	BAD_EASY_HANDLE,            // an easy handle was not good/valid
	OUT_OF_MEMORY,              // if you ever get this, you are in deep sh*t
	INTERNAL_ERROR,             // this is a libcurl bug
	BAD_SOCKET,                 // the passed in socket argument did not match
	UNKNOWN_OPTION,             // curl_multi_setopt() with unsupported option
	ADDED_ALREADY,              // an easy handle already added to a multi handle was
                            attempted to get added - again
	RECURSIVE_API_CALL,         // an api function was called from inside a
                               callback
	WAKEUP_FAILURE,             // wakeup is unavailable or failed
	BAD_FUNCTION_ARGUMENT,      // function called with a bad parameter
	ABORTED_BY_CALLBACK, 
	UNRECOVERABLE_POLL, 
	CALL_MULTI_SOCKET     = -1, 
}
```

##### Related Procedures With Parameters

* [multi\_strerror](/vendor/curl/#multi_strerror)



##### Related Procedures With Returns

* [multi\_add\_handle](/vendor/curl/#multi_add_handle)
* [multi\_assign](/vendor/curl/#multi_assign)
* [multi\_cleanup](/vendor/curl/#multi_cleanup)
* [multi\_fdset](/vendor/curl/#multi_fdset)
* [multi\_get\_offt](/vendor/curl/#multi_get_offt)
* [multi\_notify\_disable](/vendor/curl/#multi_notify_disable)
* [multi\_notify\_enable](/vendor/curl/#multi_notify_enable)
* [multi\_perform](/vendor/curl/#multi_perform)
* [multi\_poll](/vendor/curl/#multi_poll)
* [multi\_remove\_handle](/vendor/curl/#multi_remove_handle)
* [multi\_setopt](/vendor/curl/#multi_setopt)
* [multi\_socket\_action](/vendor/curl/#multi_socket_action)
* [multi\_timeout](/vendor/curl/#multi_timeout)
* [multi\_wait](/vendor/curl/#multi_wait)
* [multi\_waitfds](/vendor/curl/#multi_waitfds)
* [multi\_wakeup](/vendor/curl/#multi_wakeup)

### [Minfo ¶](#Minfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L358)

```
Minfo :: enum i32 {
	// first, never use this 
	NONE               = 0, 
	// The number of easy handles currently managed by the multi handle,
	// 	 * e.g. have been added but not yet removed. 
	XFERS_CURRENT      = 1, 
	// The number of easy handles running, e.g. not done and not queueing. 
	XFERS_RUNNING      = 2, 
	// The number of easy handles waiting to start, e.g. for a connection
	// 	 * to become available due to limits on parallelism, max connections
	// 	 * or other factors. 
	INFO_XFERS_PENDING = 3, 
	// The number of easy handles finished, waiting for their results to
	// 	 * be read via `curl_multi_info_read()`. 
	XFERS_DONE         = 4, 
	// The total number of easy handles added to the multi handle, ever. 
	XFERS_ADDED        = 5, 
	// the last unused 
	LASTENTRY, 
}
```

##### Related Procedures With Parameters

* [multi\_get\_offt](/vendor/curl/#multi_get_offt)

### [Moption ¶](#Moption) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L285)

```
Moption :: enum i32 {
	// This is the socket callback function pointer 
	SOCKETFUNCTION              = 20001, 
	// This is the argument passed to the socket callback 
	SOCKETDATA                  = 10002, 
	// set to 1 to enable pipelining for this multi handle 
	PIPELINING                  = 3, 
	// This is the timer callback function pointer 
	TIMERFUNCTION               = 20004, 
	// This is the argument passed to the timer callback 
	TIMERDATA                   = 10005, 
	// maximum number of entries in the connection cache 
	MAXCONNECTS                 = 6, 
	// maximum number of (pipelining) connections to one host 
	MAX_HOST_CONNECTIONS        = 7, 
	// maximum number of requests in a pipeline 
	MAX_PIPELINE_LENGTH         = 8, 
	// a connection with a content-length longer than this
	// 	will not be considered for pipelining 
	CONTENT_LENGTH_PENALTY_SIZE = 30009, 
	// a connection with a chunk length longer than this
	// 	will not be considered for pipelining 
	CHUNK_LENGTH_PENALTY_SIZE   = 30010, 
	// a list of site names(+port) that are blocked from pipelining 
	PIPELINING_SITE_BL          = 10011, 
	// a list of server types that are blocked from pipelining 
	PIPELINING_SERVER_BL        = 10012, 
	// maximum number of open connections in total 
	MAX_TOTAL_CONNECTIONS       = 13, 
	// This is the server push callback function pointer 
	PUSHFUNCTION                = 20014, 
	// This is the argument passed to the server push callback 
	PUSHDATA                    = 10015, 
	// maximum number of concurrent streams to support on a connection 
	MAX_CONCURRENT_STREAMS      = 16, 
	// network has changed, adjust caches/connection reuse 
	NETWORK_CHANGED             = 17, 
	// This is the notify callback function pointer 
	NOTIFYFUNCTION              = 20018, 
	// This is the argument passed to the notify callback 
	NOTIFYDATA                  = 10019, 
}
```

##### Related Procedures With Parameters

* [multi\_setopt](/vendor/curl/#multi_setopt)

### [Msg ¶](#Msg) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L42)

```
Msg :: struct {
	msg:         MSG,
	// what this message means 
	easy_handle: ^CURL,
	// the handle it concerns 
	data:        struct #raw_union {
		whatever: rawptr,
		// message-specific data 
		result:   code,
	},
}
```

##### Related Procedures With Returns

* [multi\_info\_read](/vendor/curl/#multi_info_read)

### [NETRC\_OPTION ¶](#NETRC_OPTION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2123)

```
NETRC_OPTION :: enum i32 {
	// we set a single member here, just to make sure we still provide the enum,
	// 	   but the values to use are defined above with L suffixes 
	LAST = 3, 
}
```

### [SHcode ¶](#SHcode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2690)

```
SHcode :: enum i32 {
	OK,           // all is fine
	BAD_OPTION,   // 1
	IN_USE,       // 2
	INVALID,      // 3
	NOMEM,        // 4 out of memory
	NOT_BUILT_IN, // 5 feature not present in lib
}
```

##### Related Procedures With Parameters

* [share\_strerror](/vendor/curl/#share_strerror)



##### Related Procedures With Returns

* [share\_cleanup](/vendor/curl/#share_cleanup)
* [share\_setopt](/vendor/curl/#share_setopt)

### [SHoption ¶](#SHoption) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2699)

```
SHoption :: enum i32 {
	NONE,                 // do not use
	CURLSHOPT_SHARE,      // specify a data type to share
	CURLSHOPT_UNSHARE,    // specify which data type to stop sharing
	CURLSHOPT_LOCKFUNC,   // pass in a 'curl_lock_function' pointer
	CURLSHOPT_UNLOCKFUNC, // pass in a 'curl_unlock_function' pointer
	CURLSHOPT_USERDATA,   // pass in a user data pointer used in the lock/unlock
	                         callback functions
}
```

##### Related Procedures With Parameters

* [share\_setopt](/vendor/curl/#share_setopt)

### [STScode ¶](#STScode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L935)

```
STScode :: enum i32 {
	OK, 
	DONE, 
	FAIL, 
}
```

### [TLSAUTH ¶](#TLSAUTH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2153)

```
TLSAUTH :: enum i32 {
	// 		we set a single member here, just to make sure we still provide the enum,
	// 		but the values to use are defined above with L suffixes
	LAST = 2, 
}
```

### [TimeCond ¶](#TimeCond) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2178)

```
TimeCond :: enum i32 {
	// 		we set a single member here, just to make sure we still provide
	// 		the enum typedef, but the values to use are defined above with L
	// 		suffixes
	LAST = 4, 
}
```

### [UFlag ¶](#UFlag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L58)

```
UFlag :: enum u32 {
	DEFAULT_PORT       = 0,  // return default port number
	NO_DEFAULT_PORT    = 1,  // act as if no port number was set,
	                             if the port number matches the
	                             default for the scheme
	DEFAULT_SCHEME     = 2,  // return default scheme if
	                             missing
	NON_SUPPORT_SCHEME = 3,  // allow non-supported scheme
	PATH_AS_IS         = 4,  // leave dot sequences
	DISALLOW_USER      = 5,  // no user+password allowed
	URLDECODE          = 6,  // URL decode on get
	URLENCODE          = 7,  // URL encode on set
	APPENDQUERY        = 8,  // append a form style part
	GUESS_SCHEME       = 9,  // legacy curl-style guessing
	NO_AUTHORITY       = 10, // Allow empty authority when the
	                             scheme is unknown.
	ALLOW_SPACE        = 11, // Allow spaces in the URL
	PUNYCODE           = 12, // get the hostname in punycode
	PUNY2IDN           = 13, // punycode => IDN conversion
	GET_EMPTY          = 14, // allow empty queries and fragments
	                             when extracting the URL or the
	                             components
	NO_GUESS_SCHEME    = 15, // for get, do not accept a guess
}
```

### [UFlags ¶](#UFlags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L57)

```
UFlags :: distinct bit_set[UFlag; u32]
```

##### Related Procedures With Parameters

* [url\_get](/vendor/curl/#url_get)
* [url\_set](/vendor/curl/#url_set)

##### Related Constants

* [U\_ALLOW\_SPACE](/vendor/curl/#U_ALLOW_SPACE)
* [U\_APPENDQUERY](/vendor/curl/#U_APPENDQUERY)
* [U\_DEFAULT\_PORT](/vendor/curl/#U_DEFAULT_PORT)
* [U\_DEFAULT\_SCHEME](/vendor/curl/#U_DEFAULT_SCHEME)
* [U\_DISALLOW\_USER](/vendor/curl/#U_DISALLOW_USER)
* [U\_GET\_EMPTY](/vendor/curl/#U_GET_EMPTY)
* [U\_GUESS\_SCHEME](/vendor/curl/#U_GUESS_SCHEME)
* [U\_NON\_SUPPORT\_SCHEME](/vendor/curl/#U_NON_SUPPORT_SCHEME)
* [U\_NO\_AUTHORITY](/vendor/curl/#U_NO_AUTHORITY)
* [U\_NO\_DEFAULT\_PORT](/vendor/curl/#U_NO_DEFAULT_PORT)
* [U\_NO\_GUESS\_SCHEME](/vendor/curl/#U_NO_GUESS_SCHEME)
* [U\_PATH\_AS\_IS](/vendor/curl/#U_PATH_AS_IS)
* [U\_PUNY2IDN](/vendor/curl/#U_PUNY2IDN)
* [U\_PUNYCODE](/vendor/curl/#U_PUNYCODE)
* [U\_URLDECODE](/vendor/curl/#U_URLDECODE)
* [U\_URLENCODE](/vendor/curl/#U_URLENCODE)

### [UPart ¶](#UPart) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L43)

```
UPart :: enum i32 {
	URL, 
	SCHEME, 
	USER, 
	PASSWORD, 
	OPTIONS, 
	HOST, 
	PORT, 
	PATH, 
	QUERY, 
	FRAGMENT, 
	ZONEID,   // added in 7.65.0
}
```

##### Related Procedures With Parameters

* [url\_get](/vendor/curl/#url_get)
* [url\_set](/vendor/curl/#url_set)

### [Ucode ¶](#Ucode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L8)

```
Ucode :: enum i32 {
	E_OK, 
	E_BAD_HANDLE,         // 1
	E_BAD_PARTPOINTER,    // 2
	E_MALFORMED_INPUT,    // 3
	E_BAD_PORT_NUMBER,    // 4
	E_UNSUPPORTED_SCHEME, // 5
	E_URLDECODE,          // 6
	E_OUT_OF_MEMORY,      // 7
	E_USER_NOT_ALLOWED,   // 8
	E_UNKNOWN_PART,       // 9
	E_NO_SCHEME,          // 10
	E_NO_USER,            // 11
	E_NO_PASSWORD,        // 12
	E_NO_OPTIONS,         // 13
	E_NO_HOST,            // 14
	E_NO_PORT,            // 15
	E_NO_QUERY,           // 16
	E_NO_FRAGMENT,        // 17
	E_NO_ZONEID,          // 18
	E_BAD_FILE_URL,       // 19
	E_BAD_FRAGMENT,       // 20
	E_BAD_HOSTNAME,       // 21
	E_BAD_IPV6,           // 22
	E_BAD_LOGIN,          // 23
	E_BAD_PASSWORD,       // 24
	E_BAD_PATH,           // 25
	E_BAD_QUERY,          // 26
	E_BAD_SCHEME,         // 27
	E_BAD_SLASHES,        // 28
	E_BAD_USER,           // 29
	E_LACKS_IDN,          // 30
	E_TOO_LARGE,          // 31
}
```

 

the error codes for the URL API




##### Related Procedures With Parameters

* [url\_strerror](/vendor/curl/#url_strerror)



##### Related Procedures With Returns

* [url\_get](/vendor/curl/#url_get)
* [url\_set](/vendor/curl/#url_set)

### [blob ¶](#blob) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L14)

```
blob :: struct {
	data:  rawptr,
	len:   uint,
	flags: blob_flags,
}
```

### [blob\_flag ¶](#blob_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L10)

```
blob_flag :: enum u32 {
	COPY = 0, 
}
```

### [blob\_flags ¶](#blob_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L9)

```
blob_flags :: distinct bit_set[blob_flag; u32]
```

##### Related Constants

* [BLOB\_COPY](/vendor/curl/#BLOB_COPY)
* [BLOB\_NOCOPY](/vendor/curl/#BLOB_NOCOPY)

### [calloc\_callback ¶](#calloc_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L467)

```
calloc_callback :: proc "c" (nmemb, size: uint) -> rawptr
```

##### Related Procedures With Parameters

* [global\_init\_mem](/vendor/curl/#global_init_mem)

### [certinfo ¶](#certinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2532)

```
certinfo :: struct {
	num_of_certs: i32,
	// number of certificates with information 
	certinfo:     ^^slist,
}
```

 

info about the certificate chain, for SSL backends that support it. Asked
for with CURLOPT\_CERTINFO / CURLINFO\_CERTINFO

### [chunk\_bgn\_callback ¶](#chunk_bgn_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L335)

```
chunk_bgn_callback :: proc "c" (transfer_info: rawptr, ptr: rawptr, remains: i32) -> i32
```

 

if splitting of data transfer is enabled, this callback is called before
download of an individual chunk started. Note that parameter "remains" works
only for FTP wildcard downloading (for now), otherwise is not used

### [chunk\_end\_callback ¶](#chunk_end_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L354)

```
chunk_end_callback :: proc "c" (ptr: rawptr) -> i32
```

 

If splitting of data transfer is enabled this callback is called after
download of an individual chunk finished.
Note! After this callback was set then it have to be called FOR ALL chunks.
Even if downloading of this chunk was skipped in CHUNK\_BGN\_FUNC.
This is the reason why we do not need "transfer\_info" parameter in this
callback and we are not interested in "remains" parameter too.

### [closepolicy ¶](#closepolicy) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2639)

```
closepolicy :: enum i32 {
	NONE,                                // first, never use this
	CURLCLOSEPOLICY_OLDEST, 
	CURLCLOSEPOLICY_LEAST_RECENTLY_USED, 
	CURLCLOSEPOLICY_LEAST_TRAFFIC, 
	CURLCLOSEPOLICY_SLOWEST, 
	CURLCLOSEPOLICY_CALLBACK, 
}
```

### [closesocket\_callback ¶](#closesocket_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L440)

```
closesocket_callback :: proc "c" (clientp: rawptr, item: socket_t) -> i32
```

### [code ¶](#code) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L508)

```
code :: enum i32 {
	E_OK                       = 0, 
	E_UNSUPPORTED_PROTOCOL,         // 1
	E_FAILED_INIT,                  // 2
	E_URL_MALFORMAT,                // 3
	E_NOT_BUILT_IN,                 // 4 - [was obsoleted in August 2007 for
                                    7.17.0, reused in April 2011 for 7.21.5]
	E_COULDNT_RESOLVE_PROXY,        // 5
	E_COULDNT_RESOLVE_HOST,         // 6
	E_COULDNT_CONNECT,              // 7
	E_WEIRD_SERVER_REPLY,           // 8
	E_REMOTE_ACCESS_DENIED,         // 9 a service was denied by the server
                                    due to lack of access - when login fails
                                    this is not returned.
	E_FTP_ACCEPT_FAILED,            // 10 - [was obsoleted in April 2006 for
                                    7.15.4, reused in Dec 2011 for 7.24.0]
	E_FTP_WEIRD_PASS_REPLY,         // 11
	E_FTP_ACCEPT_TIMEOUT,           // 12 - timeout occurred accepting server
                                    [was obsoleted in August 2007 for 7.17.0,
                                    reused in Dec 2011 for 7.24.0]
	E_FTP_WEIRD_PASV_REPLY,         // 13
	E_FTP_WEIRD_227_FORMAT,         // 14
	E_FTP_CANT_GET_HOST,            // 15
	E_HTTP2,                        // 16 - A problem in the http2 framing layer.
                                    [was obsoleted in August 2007 for 7.17.0,
                                    reused in July 2014 for 7.38.0]
	E_FTP_COULDNT_SET_TYPE,         // 17
	E_PARTIAL_FILE,                 // 18
	E_FTP_COULDNT_RETR_FILE,        // 19
	E_OBSOLETE20,                   // 20 - NOT USED
	E_QUOTE_ERROR,                  // 21 - quote command failure
	E_HTTP_RETURNED_ERROR,          // 22
	E_WRITE_ERROR,                  // 23
	E_OBSOLETE24,                   // 24 - NOT USED
	E_UPLOAD_FAILED,                // 25 - failed upload "command"
	E_READ_ERROR,                   // 26 - could not open/read from file
	E_OUT_OF_MEMORY,                // 27
	E_OPERATION_TIMEDOUT,           // 28 - the timeout time was reached
	E_OBSOLETE29,                   // 29 - NOT USED
	E_FTP_PORT_FAILED,              // 30 - FTP PORT operation failed
	E_FTP_COULDNT_USE_REST,         // 31 - the REST command failed
	E_OBSOLETE32,                   // 32 - NOT USED
	E_RANGE_ERROR,                  // 33 - RANGE "command" did not work
	E_OBSOLETE34,                   // 34
	E_SSL_CONNECT_ERROR,            // 35 - wrong when connecting with SSL
	E_BAD_DOWNLOAD_RESUME,          // 36 - could not resume download
	E_FILE_COULDNT_READ_FILE,       // 37
	E_LDAP_CANNOT_BIND,             // 38
	E_LDAP_SEARCH_FAILED,           // 39
	E_OBSOLETE40,                   // 40 - NOT USED
	E_OBSOLETE41,                   // 41 - NOT USED starting with 7.53.0
	E_ABORTED_BY_CALLBACK,          // 42
	E_BAD_FUNCTION_ARGUMENT,        // 43
	E_OBSOLETE44,                   // 44 - NOT USED
	E_INTERFACE_FAILED,             // 45 - CURLOPT_INTERFACE failed
	E_OBSOLETE46,                   // 46 - NOT USED
	E_TOO_MANY_REDIRECTS,           // 47 - catch endless re-direct loops
	E_UNKNOWN_OPTION,               // 48 - User specified an unknown option
	E_SETOPT_OPTION_SYNTAX,         // 49 - Malformed setopt option
	E_OBSOLETE50,                   // 50 - NOT USED
	E_OBSOLETE51,                   // 51 - NOT USED
	E_GOT_NOTHING,                  // 52 - when this is a specific error
	E_SSL_ENGINE_NOTFOUND,          // 53 - SSL crypto engine not found
	E_SSL_ENGINE_SETFAILED,         // 54 - can not set SSL crypto engine as
                                    default
	E_SEND_ERROR,                   // 55 - failed sending network data
	E_RECV_ERROR,                   // 56 - failure in receiving network data
	E_OBSOLETE57,                   // 57 - NOT IN USE
	E_SSL_CERTPROBLEM,              // 58 - problem with the local certificate
	E_SSL_CIPHER,                   // 59 - could not use specified cipher
	E_PEER_FAILED_VERIFICATION,     // 60 - peer's certificate or fingerprint
                                     was not verified fine
	E_BAD_CONTENT_ENCODING,         // 61 - Unrecognized/bad encoding
	E_OBSOLETE62,                   // 62 - NOT IN USE since 7.82.0
	E_FILESIZE_EXCEEDED,            // 63 - Maximum file size exceeded
	E_USE_SSL_FAILED,               // 64 - Requested FTP SSL level failed
	E_SEND_FAIL_REWIND,             // 65 - Sending the data requires a rewind
                                    that failed
	E_SSL_ENGINE_INITFAILED,        // 66 - failed to initialise ENGINE
	E_LOGIN_DENIED,                 // 67 - user, password or similar was not
                                    accepted and we failed to login
	E_TFTP_NOTFOUND,                // 68 - file not found on server
	E_TFTP_PERM,                    // 69 - permission problem on server
	E_REMOTE_DISK_FULL,             // 70 - out of disk space on server
	E_TFTP_ILLEGAL,                 // 71 - Illegal TFTP operation
	E_TFTP_UNKNOWNID,               // 72 - Unknown transfer ID
	E_REMOTE_FILE_EXISTS,           // 73 - File already exists
	E_TFTP_NOSUCHUSER,              // 74 - No such user
	E_OBSOLETE75,                   // 75 - NOT IN USE since 7.82.0
	E_OBSOLETE76,                   // 76 - NOT IN USE since 7.82.0
	E_SSL_CACERT_BADFILE,           // 77 - could not load CACERT file, missing
                                    or wrong format
	E_REMOTE_FILE_NOT_FOUND,        // 78 - remote file not found
	E_SSH,                          // 79 - error from the SSH layer, somewhat
                                    generic so the error message will be of
                                    interest when this has happened
	E_SSL_SHUTDOWN_FAILED,          // 80 - Failed to shut down the SSL
                                    connection
	E_AGAIN,                        // 81 - socket is not ready for send/recv,
                                    wait till it is ready and try again (Added
                                    in 7.18.2)
	E_SSL_CRL_BADFILE,              // 82 - could not load CRL file, missing or
                                    wrong format (Added in 7.19.0)
	E_SSL_ISSUER_ERROR,             // 83 - Issuer check failed.  (Added in
                                    7.19.0)
	E_FTP_PRET_FAILED,              // 84 - a PRET command failed
	E_RTSP_CSEQ_ERROR,              // 85 - mismatch of RTSP CSeq numbers
	E_RTSP_SESSION_ERROR,           // 86 - mismatch of RTSP Session Ids
	E_FTP_BAD_FILE_LIST,            // 87 - unable to parse FTP file list
	E_CHUNK_FAILED,                 // 88 - chunk callback reported error
	E_NO_CONNECTION_AVAILABLE,      // 89 - No connection available, the
                                    session will be queued
	E_SSL_PINNEDPUBKEYNOTMATCH,     // 90 - specified pinned public key did not
                                     match
	E_SSL_INVALIDCERTSTATUS,        // 91 - invalid certificate status
	E_HTTP2_STREAM,                 // 92 - stream error in HTTP/2 framing layer
	E_RECURSIVE_API_CALL,           // 93 - an api function was called from
                                    inside a callback
	E_AUTH_ERROR,                   // 94 - an authentication function returned an
                                    error
	E_HTTP3,                        // 95 - An HTTP/3 layer problem
	E_QUIC_CONNECT_ERROR,           // 96 - QUIC connection error
	E_PROXY,                        // 97 - proxy handshake error
	E_SSL_CLIENTCERT,               // 98 - client-side certificate required
	E_UNRECOVERABLE_POLL,           // 99 - poll/select returned fatal error
	E_TOO_LARGE,                    // 100 - a value/data met its maximum
	E_ECH_REQUIRED,                 // 101 - ECH tried but failed
}
```

 

All possible error codes from all sorts of curl functions. Future versions
may return other values, stay prepared.

Always add new return codes last. Never *EVER* remove any. The return
codes must remain the same!




##### Related Procedures With Parameters

* [easy\_strerror](/vendor/curl/#easy_strerror)



##### Related Procedures With Returns

* [easy\_getinfo](/vendor/curl/#easy_getinfo)
* [easy\_pause](/vendor/curl/#easy_pause)
* [easy\_perform](/vendor/curl/#easy_perform)
* [easy\_recv](/vendor/curl/#easy_recv)
* [easy\_send](/vendor/curl/#easy_send)
* [easy\_setopt](/vendor/curl/#easy_setopt)
* [easy\_ssls\_export](/vendor/curl/#easy_ssls_export)
* [easy\_ssls\_import](/vendor/curl/#easy_ssls_import)
* [easy\_upkeep](/vendor/curl/#easy_upkeep)
* [global\_init](/vendor/curl/#global_init)
* [global\_init\_mem](/vendor/curl/#global_init_mem)
* [global\_trace](/vendor/curl/#global_trace)
* [mime\_data](/vendor/curl/#mime_data)
* [mime\_data\_cb](/vendor/curl/#mime_data_cb)
* [mime\_encoder](/vendor/curl/#mime_encoder)
* [mime\_filedata](/vendor/curl/#mime_filedata)
* [mime\_filename](/vendor/curl/#mime_filename)
* [mime\_headers](/vendor/curl/#mime_headers)
* [mime\_name](/vendor/curl/#mime_name)
* [mime\_subparts](/vendor/curl/#mime_subparts)
* [mime\_type](/vendor/curl/#mime_type)
* [ws\_recv](/vendor/curl/#ws_recv)
* [ws\_send](/vendor/curl/#ws_send)
* [ws\_start\_frame](/vendor/curl/#ws_start_frame)

### [conv\_callback ¶](#conv_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L681)

```
conv_callback :: proc "c" (buffer: [^]u8, length: uint) -> code
```

 

This prototype applies to all conversion callbacks

### [curl\_notify\_function ¶](#curl_notify_function) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L437)

```
curl_notify_function :: proc "c" (multi_handle: ^CURLM, notification: MULTI_NOTIFY, easy: ^CURL, user_data: rawptr)
```

 

\* Callback to install via CURLMOPT\_NOTIFYFUNCTION.

### [debug\_callback ¶](#debug_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L481)

```
debug_callback :: proc "c" (handle: ^CURL, type: infotype, data: [^]u8, size: uint, userptr: rawptr) -> i32
```

### [easyoption ¶](#easyoption) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin#L28)

```
easyoption :: struct {
	name:  cstring,
	id:    option,
	type:  easytype,
	flags: easyoptionflags,
}
```

 

The CURLOPTTYPE\_\* id ranges can still be used to figure out what type/size
to use for curl\_easy\_setopt() for the given id




##### Related Procedures With Parameters

* [easy\_option\_next](/vendor/curl/#easy_option_next)



##### Related Procedures With Returns

* [easy\_option\_by\_id](/vendor/curl/#easy_option_by_id)
* [easy\_option\_by\_name](/vendor/curl/#easy_option_by_name)

### [easyoptionflag ¶](#easyoptionflag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin#L19)

```
easyoptionflag :: enum u32 {
	// "alias" means it is provided for old programs to remain functional, we prefer another name 
	ALIAS = 0, 
}
```

### [easyoptionflags ¶](#easyoptionflags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin#L18)

```
easyoptionflags :: distinct bit_set[easyoptionflag; u32]
```

### [easytype ¶](#easytype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin#L5)

```
easytype :: enum i32 {
	OT_LONG,     // long (a range of values)
	OT_VALUES,   //      (a defined set or bitmask)
	OT_OFF_T,    // curl_off_t (a range of values)
	OT_OBJECT,   // pointer (void *)
	OT_STRING,   //         (char * to null-terminated buffer)
	OT_SLIST,    //         (struct curl_slist *)
	OT_CBPTR,    //         (void * passed as-is to a callback)
	OT_BLOB,     // blob (struct curl_blob *)
	OT_FUNCTION, // function pointer
}
```

### [fileinfo ¶](#fileinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L297)

```
fileinfo :: struct {
	filename:  cstring,
	filetype:  filetype,
	time:      libc.time_t,
	// always zero! 
	perm:      u32,
	uid:       i32,
	gid:       i32,
	size:      i64,
	hardlinks: i32,
	strings:   struct {
		// If some of these fields is not NULL, it is a pointer to b_data. 
		time:   cstring,
		perm:   cstring,
		user:   cstring,
		group:  cstring,
		target: cstring,
	},
	flags:     finfoflags,
	// These are libcurl private struct fields. Previously used by libcurl, so
	// 	they must never be interfered with. 
	b_data:    [^]u8,
	b_size:    uint,
	b_used:    uint,
}
```

 

Information about a single file, used when doing FTP wildcard matching

### [filetype ¶](#filetype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L262)

```
filetype :: enum i32 {
	FILE         = 0, 
	DIRECTORY, 
	SYMLINK, 
	DEVICE_BLOCK, 
	DEVICE_CHAR, 
	NAMEDPIPE, 
	SOCKET, 
	DOOR,             // is possible only on Sun Solaris now
	UNKNOWN,          // should never occur
}
```

 

enumeration of file types

### [finfoflag ¶](#finfoflag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L276)

```
finfoflag :: enum u32 {
	KNOWN_FILENAME   = 0, 
	KNOWN_FILETYPE   = 1, 
	KNOWN_TIME       = 2, 
	KNOWN_PERM       = 3, 
	KNOWN_UID        = 4, 
	KNOWN_GID        = 5, 
	KNOWN_SIZE       = 6, 
	KNOWN_HLINKCOUNT = 7, 
}
```

### [finfoflags ¶](#finfoflags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L275)

```
finfoflags :: distinct bit_set[finfoflag; u32]
```

##### Related Constants

* [FINFOFLAG\_KNOWN\_FILENAME](/vendor/curl/#FINFOFLAG_KNOWN_FILENAME)
* [FINFOFLAG\_KNOWN\_FILETYPE](/vendor/curl/#FINFOFLAG_KNOWN_FILETYPE)
* [FINFOFLAG\_KNOWN\_GID](/vendor/curl/#FINFOFLAG_KNOWN_GID)
* [FINFOFLAG\_KNOWN\_HLINKCOUNT](/vendor/curl/#FINFOFLAG_KNOWN_HLINKCOUNT)
* [FINFOFLAG\_KNOWN\_PERM](/vendor/curl/#FINFOFLAG_KNOWN_PERM)
* [FINFOFLAG\_KNOWN\_SIZE](/vendor/curl/#FINFOFLAG_KNOWN_SIZE)
* [FINFOFLAG\_KNOWN\_TIME](/vendor/curl/#FINFOFLAG_KNOWN_TIME)
* [FINFOFLAG\_KNOWN\_UID](/vendor/curl/#FINFOFLAG_KNOWN_UID)

### [fnmatch\_callback ¶](#fnmatch_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L365)

```
fnmatch_callback :: proc "c" (ptr: rawptr, pattern: cstring, string: cstring) -> i32
```

 

callback type for wildcard downloading pattern matching. If the
string matches the pattern, return CURL\_FNMATCHFUNC\_MATCH value, etc.

### [formget\_callback ¶](#formget_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2330)

```
formget_callback :: proc "c" (arg: rawptr, buf: [^]u8, len: uint) -> uint
```

 

\* callback function for curl\_formget()
 *The void* arg pointer will be the one passed as second argument to
\* curl\_formget().
\* The character buffer passed to it must not be freed.
\* Should return the buffer length passed to it as the argument "len" on
\* success.

### [free\_callback ¶](#free_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L464)

```
free_callback :: proc "c" (ptr: rawptr)
```

##### Related Procedures With Parameters

* [global\_init\_mem](/vendor/curl/#global_init_mem)
* [mime\_data\_cb](/vendor/curl/#mime_data_cb)

### [ftpauth ¶](#ftpauth) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L880)

```
ftpauth :: enum i32 {
	DEFAULT, // let libcurl decide
	SSL,     // use "AUTH SSL"
	TLS,     // use "AUTH TLS"
}
```

 

parameter for the CURLOPT\_FTPSSLAUTH option

### [ftpccc ¶](#ftpccc) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L873)

```
ftpccc :: enum i32 {
	NONE,    // do not send CCC
	PASSIVE, // Let the server initiate the shutdown
	ACTIVE,  // Initiate the shutdown
}
```

 

parameter for the CURLOPT\_FTP\_SSL\_CCC option

### [ftpcreatedir ¶](#ftpcreatedir) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L887)

```
ftpcreatedir :: enum i32 {
	DIR_NONE, // do NOT create missing dirs!
	DIR,      // (FTP/SFTP) if CWD fails, try MKD and then CWD
                again if MKD succeeded, for SFTP this does
                similar magic
	_RETRY,   // (FTP only) if CWD fails, try MKD and then CWD
                   again even if MKD failed!
}
```

 

parameter for the CURLOPT\_FTP\_CREATE\_MISSING\_DIRS option

### [ftpmethod ¶](#ftpmethod) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L897)

```
ftpmethod :: enum i32 {
	DEFAULT,   // let libcurl pick
	MULTICWD,  // single CWD operation for each path part
	NOCWD,     // no CWD at all
	SINGLECWD, // one CWD to full dir, then work on file
}
```

 

parameter for the CURLOPT\_FTP\_FILEMETHOD option

### [header ¶](#header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L6)

```
header :: struct {
	name:   cstring,
	// this might not use the same case 
	value:  cstring,
	amount: uint,
	// number of headers using this name  
	index:  uint,
	// ... of this instance, 0 or higher 
	origin: header_origin_bits,
	// see bits below 
	anchor: rawptr,
}
```

##### Related Procedures With Parameters

* [easy\_nextheader](/vendor/curl/#easy_nextheader)

### [header\_origin\_bit ¶](#header_origin_bit) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L17)

```
header_origin_bit :: enum u32 {
	H_HEADER  = 0, // plain server header
	H_TRAILER = 1, // trailers
	H_CONNECT = 2, // CONNECT headers
	H_1XX     = 3, // 1xx headers
	H_PSEUDO  = 4, // pseudo headers
}
```

 

'origin' bits

### [header\_origin\_bits ¶](#header_origin_bits) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L15)

```
header_origin_bits :: distinct bit_set[header_origin_bit; u32]
```

##### Related Constants

* [H\_1XX](/vendor/curl/#H_1XX)
* [H\_CONNECT](/vendor/curl/#H_CONNECT)
* [H\_HEADER](/vendor/curl/#H_HEADER)
* [H\_PSEUDO](/vendor/curl/#H_PSEUDO)
* [H\_TRAILER](/vendor/curl/#H_TRAILER)

### [hstsentry ¶](#hstsentry) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L921)

```
hstsentry :: struct {
	name:    cstring,
	namelen: uint,
	using _: bit_field u32 {
		includeSubDomains: bool | 1,
	},
	expire:  [18]u8,
}
```

### [hstsread\_callback ¶](#hstsread_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L941)

```
hstsread_callback :: proc "c" (easy: ^CURL, e: ^hstsentry, userp: rawptr) -> STScode
```

### [hstswrite\_callback ¶](#hstswrite_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L944)

```
hstswrite_callback :: proc "c" (easy: ^CURL, e: ^hstsentry, i: ^index, userp: rawptr) -> STScode
```

### [httppost ¶](#httppost) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L163)

```
httppost :: struct {
	next:           ^httppost,
	// next entry in the list 
	name:           cstring `fmt:"v,name"`,
	// pointer to allocated name 
	namelength:     i32,
	// length of name length 
	contents:       cstring,
	// pointer to allocated data contents 
	contentslength: i32,
	// length of contents field, see also
	// 	                                                CURL_HTTPPOST_LARGE 
	buffer:         [^]u8,
	// pointer to allocated buffer contents 
	bufferlength:   i32,
	// length of buffer field 
	contenttype:    cstring,
	// Content-Type 
	contentheader:  ^slist,
	// list of extra headers for this form 
	more:           ^httppost,
	// if one field name has more than one
	// 	                                                file, this link should link to following
	// 	                                                files 
	flags:          httppost_flags,
	// as defined below 
	showfilename:   cstring,
	// The filename to show. If not set, the
	// 	                           actual filename will be used (if this
	// 	                           is a file part) 
	userp:          rawptr,
	// custom pointer used for
	//                                    HTTPPOST_CALLBACK posts 
	contentlen:     i64,
}
```

### [httppost\_flag ¶](#httppost_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L134)

```
httppost_flag :: enum i32 {
	// specified content is a filename 
	FILENAME    = 0, 
	// specified content is a filename 
	READFILE    = 1, 
	// name is only stored pointer do not free in formfree 
	PTRNAME     = 2, 
	// contents is only stored pointer do not free in formfree 
	PTRCONTENTS = 3, 
	// upload file from buffer 
	BUFFER      = 4, 
	// upload file from pointer contents 
	PTRBUFFER   = 5, 
	// upload file contents by using the regular read callback to get the data and
	// 	   pass the given pointer as custom pointer 
	CALLBACK    = 6, 
	// use size in 'contentlen', added in 7.46.0 
	LARGE       = 7, 
}
```

### [httppost\_flags ¶](#httppost_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L133)

```
httppost_flags :: distinct bit_set[httppost_flag; i32]
```

##### Related Constants

* [HTTPPOST\_BUFFER](/vendor/curl/#HTTPPOST_BUFFER)
* [HTTPPOST\_CALLBACK](/vendor/curl/#HTTPPOST_CALLBACK)
* [HTTPPOST\_FILENAME](/vendor/curl/#HTTPPOST_FILENAME)
* [HTTPPOST\_LARGE](/vendor/curl/#HTTPPOST_LARGE)
* [HTTPPOST\_PTRBUFFER](/vendor/curl/#HTTPPOST_PTRBUFFER)
* [HTTPPOST\_PTRCONTENTS](/vendor/curl/#HTTPPOST_PTRCONTENTS)
* [HTTPPOST\_PTRNAME](/vendor/curl/#HTTPPOST_PTRNAME)
* [HTTPPOST\_READFILE](/vendor/curl/#HTTPPOST_READFILE)

### [index ¶](#index) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L930)

```
index :: struct {
	index: uint,
	// the provided entry's "index" or count 
	total: uint,
}
```

### [infotype ¶](#infotype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L470)

```
infotype :: enum i32 {
	TEXT         = 0, 
	HEADER_IN,        // 1
	HEADER_OUT,       // 2
	DATA_IN,          // 3
	DATA_OUT,         // 4
	SSL_DATA_IN,      // 5
	SSL_DATA_OUT,     // 6
	END, 
}
```

 

the kind of data that is passed to information\_callback

### [iocmd ¶](#iocmd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L448)

```
iocmd :: enum i32 {
	NOP,         // no operation
	RESTARTREAD, // restart the read stream from start
}
```

### [ioctl\_callback ¶](#ioctl_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L453)

```
ioctl_callback :: proc "c" (handle: ^CURL, cmd: i32, clientp: rawptr) -> ioerr
```

### [ioerr ¶](#ioerr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L442)

```
ioerr :: enum i32 {
	E_OK,          // I/O operation successful
	E_UNKNOWNCMD,  // command was unknown to callback
	E_FAILRESTART, // failed to restart the read
}
```

### [khkey ¶](#khkey) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L766)

```
khkey :: struct {
	key:     cstring,
	// points to a null-terminated string encoded with base64
	// 	                 if len is zero, otherwise to the "raw" data 
	len:     uint,
	keytype: khtype,
}
```

### [khmatch ¶](#khmatch) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L786)

```
khmatch :: enum i32 {
	OK,       // match
	MISMATCH, // host found, key mismatch!
	MISSING,  // no matching host/key found
}
```

 

this is the set of status codes pass in to the callback

### [khstat ¶](#khstat) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L775)

```
khstat :: enum i32 {
	FINE_ADD_TO_FILE, 
	FINE, 
	REJECT,           // reject the connection, return an error
	DEFER,            // do not accept it, but we cannot answer right now.
	           Causes a CURLE_PEER_FAILED_VERIFICATION error but the
	           connection will be left intact etc
	FINE_REPLACE,     // accept and replace the wrong key
}
```

 

this is the set of return values expected from the curl\_sshkeycallback
callback

### [khtype ¶](#khtype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L757)

```
khtype :: enum i32 {
	UNKNOWN, 
	RSA1, 
	RSA, 
	DSS, 
	ECDSA, 
	ED25519, 
}
```

### [lock\_access ¶](#lock_access) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2675)

```
lock_access :: enum i32 {
	NONE   = 0, // unspecified action
	SHARED = 1, // for read perhaps
	SINGLE = 2, // for write perhaps
}
```

 

Different lock access types

### [lock\_data ¶](#lock_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2659)

```
lock_data :: enum i32 {
	NONE        = 0, 
	//  CURL_LOCK_DATA_SHARE is used internally to say that
	// 	*  the locking is just made to change the internal state of the share
	// 	*  itself.
	SHARE, 
	COOKIE, 
	DNS, 
	SSL_SESSION, 
	CONNECT, 
	PSL, 
	HSTS, 
}
```

 

Different data locks for a single share

### [lock\_function ¶](#lock_function) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2681)

```
lock_function :: proc "c" (handle: ^CURL, data: lock_data, locktype: lock_access, userptr: rawptr)
```

### [malloc\_callback ¶](#malloc_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L463)

```
malloc_callback :: proc "c" (size: uint) -> rawptr
```

 

\* The following typedef's are signatures of malloc, free, realloc, strdup and
\* calloc respectively. Function pointers of these types can be passed to the
\* curl\_global\_init\_mem() function to set user defined memory management
\* callback routines.




##### Related Procedures With Parameters

* [global\_init\_mem](/vendor/curl/#global_init_mem)

### [mime ¶](#mime) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2192)

```
mime :: struct {}
```

 

Mime/form handling support.




##### Related Procedures With Parameters

* [mime\_addpart](/vendor/curl/#mime_addpart)
* [mime\_free](/vendor/curl/#mime_free)
* [mime\_subparts](/vendor/curl/#mime_subparts)



##### Related Procedures With Returns

* [mime\_init](/vendor/curl/#mime_init)

### [mimepart ¶](#mimepart) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2193)

```
mimepart :: struct {}
```

 

Mime part context.




##### Related Procedures With Parameters

* [mime\_data](/vendor/curl/#mime_data)
* [mime\_data\_cb](/vendor/curl/#mime_data_cb)
* [mime\_encoder](/vendor/curl/#mime_encoder)
* [mime\_filedata](/vendor/curl/#mime_filedata)
* [mime\_filename](/vendor/curl/#mime_filename)
* [mime\_headers](/vendor/curl/#mime_headers)
* [mime\_name](/vendor/curl/#mime_name)
* [mime\_subparts](/vendor/curl/#mime_subparts)
* [mime\_type](/vendor/curl/#mime_type)



##### Related Procedures With Returns

* [mime\_addpart](/vendor/curl/#mime_addpart)

### [multi\_timer\_callback ¶](#multi_timer_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L259)

```
multi_timer_callback :: proc "c" (multi: ^CURLM, timeout_ms: i32, userp: rawptr) -> i32
```

 

\* Name: curl\_multi\_timer\_callback
\*
\* Desc: Called by libcurl whenever the library detects a change in the
\* maximum number of milliseconds the app is allowed to wait before
\* curl\_multi\_socket() or curl\_multi\_perform() must be called
\* (to allow libcurl's timed events to take place).
\*
\* Returns: The callback should return zero.

### [off\_t ¶](#off_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L37)

```
off_t :: i64
```

##### Related Procedures With Parameters

* [mime\_data\_cb](/vendor/curl/#mime_data_cb)
* [multi\_get\_offt](/vendor/curl/#multi_get_offt)
* [ws\_send](/vendor/curl/#ws_send)
* [ws\_start\_frame](/vendor/curl/#ws_start_frame)

### [opensocket\_callback ¶](#opensocket_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L436)

```
opensocket_callback :: proc "c" (clientp: rawptr, purpose: socktype, address: ^sockaddr) -> socket_t
```

### [option ¶](#option) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L1014)

```
option :: enum i32 {
	// This is the FILE * or void * the regular output should be written to. 
	WRITEDATA                  = 10001, 
	// The full URL to get/put 
	URL                        = 10002, 
	// Port number to connect to, if other than default. 
	PORT                       = 3, 
	// Name of proxy to use. 
	PROXY                      = 10004, 
	// "user:password;options" to use when fetching. 
	USERPWD                    = 10005, 
	// "user:password" to use with proxy. 
	PROXYUSERPWD               = 10006, 
	// Range to get, specified as an ASCII string. 
	RANGE                      = 10007, 
	// Specified file stream to upload from (use as input): 
	READDATA                   = 10009, 
	// Buffer to receive error messages in, must be at least CURL_ERROR_SIZE
	// 	* bytes big. 
	ERRORBUFFER                = 10010, 
	// Function that will be called to store the output (instead of fwrite). The
	// 	* parameters will use fwrite() syntax, make sure to follow them. 
	WRITEFUNCTION              = 20011, 
	// Function that will be called to read the input (instead of fread). The
	// 	* parameters will use fread() syntax, make sure to follow them. 
	READFUNCTION               = 20012, 
	// Time-out the read operation after this amount of seconds 
	TIMEOUT                    = 13, 
	// If CURLOPT_READDATA is used, this can be used to inform libcurl about
	// 	* how large the file being sent really is. That allows better error
	// 	* checking and better verifies that the upload was successful. -1 means
	// 	* unknown size.
	// 	*
	// 	* For large file support, there is also a _LARGE version of the key
	// 	* which takes an off_t type, allowing platforms with larger off_t
	// 	* sizes to handle larger files. See below for INFILESIZE_LARGE.
	INFILESIZE                 = 14, 
	// POST static input fields. 
	POSTFIELDS                 = 10015, 
	// Set the referrer page (needed by some CGIs) 
	REFERER                    = 10016, 
	// Set the FTP PORT string (interface name, named or numerical IP address)
	// 	Use i.e '-' to use default address. 
	FTPPORT                    = 10017, 
	// Set the User-Agent string (examined by some CGIs) 
	USERAGENT                  = 10018, 
	// Set the "low speed limit" 
	LOW_SPEED_LIMIT            = 19, 
	// Set the "low speed time" 
	LOW_SPEED_TIME             = 20, 
	// Set the continuation offset.
	// 	*
	// 	* Note there is also a _LARGE version of this key which uses
	// 	* off_t types, allowing for large file offsets on platforms which
	// 	* use larger-than-32-bit off_t's. Look below for RESUME_FROM_LARGE.
	RESUME_FROM                = 21, 
	// Set cookie in request: 
	COOKIE                     = 10022, 
	// This points to a linked list of headers, struct curl_slist kind. This
	// 	list is also used for RTSP (in spite of its name) 
	HTTPHEADER                 = 10023, 
	// name of the file keeping your private SSL-certificate 
	SSLCERT                    = 10025, 
	// password for the SSL or SSH private key 
	KEYPASSWD                  = 10026, 
	// send TYPE parameter? 
	CRLF                       = 27, 
	// send linked-list of QUOTE commands 
	QUOTE                      = 10028, 
	// send FILE * or void * to store headers to, if you use a callback it
	// 	is simply passed to the callback unmodified 
	HEADERDATA                 = 10029, 
	// point to a file to read the initial cookies from, also enables
	// 	"cookie awareness" 
	COOKIEFILE                 = 10031, 
	// What version to specifically try to use.
	// 	See CURL_SSLVERSION defines below. 
	SSLVERSION                 = 32, 
	// What kind of HTTP time condition to use, see defines 
	TIMECONDITION              = 33, 
	// Time to use with the above condition. Specified in number of seconds
	// 	since 1 Jan 1970 
	TIMEVALUE                  = 34, 
	// Custom request, for customizing the get command like
	// 	HTTP: DELETE, TRACE and others
	// 	FTP: to use a different list command
	CUSTOMREQUEST              = 10036, 
	// FILE handle to use instead of stderr 
	STDERR                     = 10037, 
	// send linked-list of post-transfer QUOTE commands 
	POSTQUOTE                  = 10039, 
	// talk a lot 
	VERBOSE                    = 41, 
	// throw the header out too 
	HEADER                     = 42, 
	// shut off the progress meter 
	NOPROGRESS                 = 43, 
	// use HEAD to get http document 
	NOBODY                     = 44, 
	// no output on http error codes >= 400 
	FAILONERROR                = 45, 
	// this is an upload 
	UPLOAD                     = 46, 
	// HTTP POST method 
	POST                       = 47, 
	// bare names when listing directories 
	DIRLISTONLY                = 48, 
	// Append instead of overwrite on upload! 
	APPEND                     = 50, 
	// Specify whether to read the user+password from the .netrc or the URL.
	// 	* This must be one of the CURL_NETRC_* enums below. 
	NETRC                      = 51, 
	// use Location: Luke! 
	FOLLOWLOCATION             = 52, 
	// transfer data in text/ASCII format 
	TRANSFERTEXT               = 53, 
	// Data passed to the CURLOPT_PROGRESSFUNCTION and CURLOPT_XFERINFOFUNCTION
	// 	callbacks 
	XFERINFODATA               = 10057, 
	PROGRESSDATA               = 10057, 
	// We want the referrer field set automatically when following locations 
	AUTOREFERER                = 58, 
	// Port of the proxy, can be set in the proxy string as well with:
	// 	"[host]:[port]" 
	PROXYPORT                  = 59, 
	// size of the POST input data, if strlen() is not good to use 
	POSTFIELDSIZE              = 60, 
	// tunnel non-http operations through an HTTP proxy 
	HTTPPROXYTUNNEL            = 61, 
	// Set the interface string to use as outgoing network interface 
	INTERFACE                  = 10062, 
	// Set the krb4/5 security level, this also enables krb4/5 awareness. This
	// 	* is a string, 'clear', 'safe', 'confidential' or 'private'. If the string
	// 	* is set but does not match one of these, 'private' will be used.  
	KRBLEVEL                   = 10063, 
	// Set if we should verify the peer in ssl handshake, set 1 to verify. 
	SSL_VERIFYPEER             = 64, 
	// The CApath or CAfile used to validate the peer certificate
	// 	this option is used only if SSL_VERIFYPEER is true 
	CAINFO                     = 10065, 
	// Maximum number of http redirects to follow 
	MAXREDIRS                  = 68, 
	// Pass a long set to 1 to get the date of the requested document (if
	// 	possible)! Pass a zero to shut it off. 
	FILETIME                   = 69, 
	// This points to a linked list of telnet options 
	TELNETOPTIONS              = 10070, 
	// Max amount of cached alive connections 
	MAXCONNECTS                = 71, 
	// Set to explicitly use a new connection for the upcoming transfer.
	// 	Do not use this unless you are absolutely sure of this, as it makes the
	// 	operation slower and is less friendly for the network. 
	FRESH_CONNECT              = 74, 
	// Set to explicitly forbid the upcoming transfer's connection to be reused
	// 	when done. Do not use this unless you are absolutely sure of this, as it
	// 	makes the operation slower and is less friendly for the network. 
	FORBID_REUSE               = 75, 
	// Time-out connect operations after this amount of seconds, if connects are
	// 	OK within this time, then fine... This only aborts the connect phase. 
	CONNECTTIMEOUT             = 78, 
	// Function that will be called to store headers (instead of fwrite). The
	// 	* parameters will use fwrite() syntax, make sure to follow them. 
	HEADERFUNCTION             = 20079, 
	// Set this to force the HTTP request to get back to GET. Only really usable
	// 	if POST, PUT or a custom request have been used first.
	HTTPGET                    = 80, 
	// Set if we should verify the Common name from the peer certificate in ssl
	// 	* handshake, set 1 to check existence, 2 to ensure that it matches the
	// 	* provided hostname. 
	SSL_VERIFYHOST             = 81, 
	// Specify which filename to write all known cookies in after completed
	// 	operation. Set filename to "-" (dash) to make it go to stdout. 
	COOKIEJAR                  = 10082, 
	// Specify which TLS 1.2 (1.1, 1.0) ciphers to use 
	SSL_CIPHER_LIST            = 10083, 
	// Specify which HTTP version to use! This must be set to one of the
	// 	CURL_HTTP_VERSION* enums set below. 
	HTTP_VERSION               = 84, 
	// Specifically switch on or off the FTP engine's use of the EPSV command. By
	// 	default, that one will always be attempted before the more traditional
	// 	PASV command. 
	FTP_USE_EPSV               = 85, 
	// type of the file keeping your SSL-certificate ("DER", "PEM", "ENG") 
	SSLCERTTYPE                = 10086, 
	// name of the file keeping your private SSL-key 
	SSLKEY                     = 10087, 
	// type of the file keeping your private SSL-key ("DER", "PEM", "ENG") 
	SSLKEYTYPE                 = 10088, 
	// crypto engine for the SSL-sub system 
	SSLENGINE                  = 10089, 
	// set the crypto engine for the SSL-sub system as default
	// 	the param has no meaning...
	SSLENGINE_DEFAULT          = 90, 
	// DNS cache timeout 
	DNS_CACHE_TIMEOUT          = 92, 
	// send linked-list of pre-transfer QUOTE commands 
	PREQUOTE                   = 10093, 
	// set the debug function 
	DEBUGFUNCTION              = 20094, 
	// set the data for the debug function 
	DEBUGDATA                  = 10095, 
	// mark this as start of a cookie session 
	COOKIESESSION              = 96, 
	// The CApath directory used to validate the peer certificate
	// 	this option is used only if SSL_VERIFYPEER is true 
	CAPATH                     = 10097, 
	// Instruct libcurl to use a smaller receive buffer 
	BUFFERSIZE                 = 98, 
	// Instruct libcurl to not use any signal/alarm handlers, even when using
	// 	timeouts. This option is useful for multi-threaded applications.
	// 	See libcurl-the-guide for more background information. 
	NOSIGNAL                   = 99, 
	// Provide a CURLShare for mutexing non-ts data 
	SHARE                      = 10100, 
	// indicates type of proxy. accepted values are CURLPROXY_HTTP (default),
	// 	CURLPROXY_HTTPS, CURLPROXY_SOCKS4, CURLPROXY_SOCKS4A and
	// 	CURLPROXY_SOCKS5. 
	PROXYTYPE                  = 101, 
	// Set the Accept-Encoding string. Use this to tell a server you would like
	// 	the response to be compressed. Before 7.21.6, this was known as
	// 	CURLOPT_ENCODING 
	ACCEPT_ENCODING            = 10102, 
	// Set pointer to private data 
	PRIVATE                    = 10103, 
	// Set aliases for HTTP 200 in the HTTP Response header 
	HTTP200ALIASES             = 10104, 
	// Continue to send authentication (user+password) when following locations,
	// 	even when hostname changed. This can potentially send off the name
	// 	and password to whatever host the server decides. 
	UNRESTRICTED_AUTH          = 105, 
	// Specifically switch on or off the FTP engine's use of the EPRT command (
	// 	it also disables the LPRT attempt). By default, those ones will always be
	// 	attempted before the good old traditional PORT command. 
	FTP_USE_EPRT               = 106, 
	// Set this to a bitmask value to enable the particular authentications
	// 	methods you like. Use this in combination with CURLOPT_USERPWD.
	// 	Note that setting multiple bits may cause extra network round-trips. 
	HTTPAUTH                   = 107, 
	// Set the ssl context callback function, currently only for OpenSSL or
	// 	wolfSSL ssl_ctx, or mbedTLS mbedtls_ssl_config in the second argument.
	// 	The function must match the curl_ssl_ctx_callback prototype. 
	SSL_CTX_FUNCTION           = 20108, 
	// Set the userdata for the ssl context callback function's third
	// 	argument 
	SSL_CTX_DATA               = 10109, 
	// FTP Option that causes missing dirs to be created on the remote server.
	// 	In 7.19.4 we introduced the convenience enums for this option using the
	// 	CURLFTP_CREATE_DIR prefix.
	FTP_CREATE_MISSING_DIRS    = 110, 
	// Set this to a bitmask value to enable the particular authentications
	// 	methods you like. Use this in combination with CURLOPT_PROXYUSERPWD.
	// 	Note that setting multiple bits may cause extra network round-trips. 
	PROXYAUTH                  = 111, 
	// Option that changes the timeout, in seconds, associated with getting a
	// 	response. This is different from transfer timeout time and essentially
	// 	places a demand on the server to acknowledge commands in a timely
	// 	manner. For FTP, SMTP, IMAP and POP3. 
	SERVER_RESPONSE_TIMEOUT    = 112, 
	// Set this option to one of the CURL_IPRESOLVE_* defines (see below) to
	// 	tell libcurl to use those IP versions only. This only has effect on
	// 	systems with support for more than one, i.e IPv4 _and_ IPv6. 
	IPRESOLVE                  = 113, 
	// Set this option to limit the size of a file that will be downloaded from
	// 	an HTTP or FTP server.
	// 
	// 	Note there is also _LARGE version which adds large file support for
	// 	platforms which have larger off_t sizes. See MAXFILESIZE_LARGE below. 
	MAXFILESIZE                = 114, 
	// See the comment for INFILESIZE above, but in short, specifies
	// 	* the size of the file being uploaded.  -1 means unknown.
	INFILESIZE_LARGE           = 30115, 
	// Sets the continuation offset. There is also a CURLOPTTYPE_LONG version
	// 	* of this; look above for RESUME_FROM.
	RESUME_FROM_LARGE          = 30116, 
	// Sets the maximum size of data that will be downloaded from
	// 	* an HTTP or FTP server. See MAXFILESIZE above for the LONG version.
	MAXFILESIZE_LARGE          = 30117, 
	// Set this option to the filename of your .netrc file you want libcurl
	// 	to parse (using the CURLOPT_NETRC option). If not set, libcurl will do
	// 	a poor attempt to find the user's home directory and check for a .netrc
	// 	file in there. 
	NETRC_FILE                 = 10118, 
	// Enable SSL/TLS for FTP, pick one of:
	// 	CURLUSESSL_TRY     - try using SSL, proceed anyway otherwise
	// 	CURLUSESSL_CONTROL - SSL for the control connection or fail
	// 	CURLUSESSL_ALL     - SSL for all communication or fail
	USE_SSL                    = 119, 
	// The _LARGE version of the standard POSTFIELDSIZE option 
	POSTFIELDSIZE_LARGE        = 30120, 
	// Enable/disable the TCP Nagle algorithm 
	TCP_NODELAY                = 121, 
	// When FTP over SSL/TLS is selected (with CURLOPT_USE_SSL), this option
	// 	can be used to change libcurl's default action which is to first try
	// 	"AUTH SSL" and then "AUTH TLS" in this order, and proceed when a OK
	// 	response has been received.
	// 
	// 	Available parameters are:
	// 	CURLFTPAUTH_DEFAULT - let libcurl decide
	// 	CURLFTPAUTH_SSL     - try "AUTH SSL" first, then TLS
	// 	CURLFTPAUTH_TLS     - try "AUTH TLS" first, then SSL
	FTPSSLAUTH                 = 129, 
	// null-terminated string for pass on to the FTP server when asked for
	// 	"account" info 
	FTP_ACCOUNT                = 10134, 
	// feed cookie into cookie engine 
	COOKIELIST                 = 10135, 
	// ignore Content-Length 
	IGNORE_CONTENT_LENGTH      = 136, 
	// Set to non-zero to skip the IP address received in a 227 PASV FTP server
	// 	response. Typically used for FTP-SSL purposes but is not restricted to
	// 	that. libcurl will then instead use the same IP address it used for the
	// 	control connection. 
	FTP_SKIP_PASV_IP           = 137, 
	// Select "file method" to use when doing FTP, see the curl_ftpmethod
	// 	above. 
	FTP_FILEMETHOD             = 138, 
	// Local port number to bind the socket to 
	LOCALPORT                  = 139, 
	// Number of ports to try, including the first one set with LOCALPORT.
	// 	Thus, setting it to 1 will make no additional attempts but the first.
	LOCALPORTRANGE             = 140, 
	// no transfer, set up connection and let application use the socket by
	// 	extracting it with CURLINFO_LASTSOCKET 
	CONNECT_ONLY               = 141, 
	// if the connection proceeds too quickly then need to slow it down 
	// limit-rate: maximum number of bytes per second to send or receive 
	MAX_SEND_SPEED_LARGE       = 30145, 
	MAX_RECV_SPEED_LARGE       = 30146, 
	// Pointer to command string to send if USER/PASS fails. 
	FTP_ALTERNATIVE_TO_USER    = 10147, 
	// callback function for setting socket options 
	SOCKOPTFUNCTION            = 20148, 
	SOCKOPTDATA                = 10149, 
	// set to 0 to disable session ID reuse for this transfer, default is
	// 	enabled (== 1) 
	SSL_SESSIONID_CACHE        = 150, 
	// allowed SSH authentication methods 
	SSH_AUTH_TYPES             = 151, 
	// Used by scp/sftp to do public/private key authentication 
	SSH_PUBLIC_KEYFILE         = 10152, 
	SSH_PRIVATE_KEYFILE        = 10153, 
	// Send CCC (Clear Command Channel) after authentication 
	FTP_SSL_CCC                = 154, 
	// Same as TIMEOUT and CONNECTTIMEOUT, but with ms resolution 
	TIMEOUT_MS                 = 155, 
	CONNECTTIMEOUT_MS          = 156, 
	// set to zero to disable the libcurl's decoding and thus pass the raw body
	// 	data to the application even when it is encoded/compressed 
	HTTP_TRANSFER_DECODING     = 157, 
	HTTP_CONTENT_DECODING      = 158, 
	// Permission used when creating new files and directories on the remote
	// 	server for protocols that support it, SFTP/SCP/FILE 
	NEW_FILE_PERMS             = 159, 
	NEW_DIRECTORY_PERMS        = 160, 
	// Set the behavior of POST when redirecting. Values must be set to one
	// 	of CURL_REDIR* defines below. This used to be called CURLOPT_POST301 
	POSTREDIR                  = 161, 
	// used by scp/sftp to verify the host's public key 
	SSH_HOST_PUBLIC_KEY_MD5    = 10162, 
	// Callback function for opening socket (instead of socket(2)). Optionally,
	// 	callback is able change the address or refuse to connect returning
	// 	CURL_SOCKET_BAD. The callback should have type
	// 	curl_opensocket_callback 
	OPENSOCKETFUNCTION         = 20163, 
	OPENSOCKETDATA             = 10164, 
	// POST volatile input fields. 
	COPYPOSTFIELDS             = 10165, 
	// set transfer mode (;type=<a|i>) when doing FTP via an HTTP proxy 
	PROXY_TRANSFER_MODE        = 166, 
	// Callback function for seeking in the input stream 
	SEEKFUNCTION               = 20167, 
	SEEKDATA                   = 10168, 
	// CRL file 
	CRLFILE                    = 10169, 
	// Issuer certificate 
	ISSUERCERT                 = 10170, 
	// (IPv6) Address scope 
	ADDRESS_SCOPE              = 171, 
	// Collect certificate chain info and allow it to get retrievable with
	// 	CURLINFO_CERTINFO after the transfer is complete. 
	CERTINFO                   = 172, 
	// "name" and "pwd" to use when fetching. 
	USERNAME                   = 10173, 
	PASSWORD                   = 10174, 
	// "name" and "pwd" to use with Proxy when fetching. 
	PROXYUSERNAME              = 10175, 
	PROXYPASSWORD              = 10176, 
	// Comma separated list of hostnames defining no-proxy zones. These should
	// 	match both hostnames directly, and hostnames within a domain. For
	// 	example, local.com will match local.com and www.local.com, but NOT
	// 	notlocal.com or www.notlocal.com. For compatibility with other
	// 	implementations of this, .local.com will be considered to be the same as
	// 	local.com. A single * is the only valid wildcard, and effectively
	// 	disables the use of proxy. 
	NOPROXY                    = 10177, 
	// block size for TFTP transfers 
	TFTP_BLKSIZE               = 178, 
	// Socks Service 
	SOCKS5_GSSAPI_NEC          = 180, 
	// set the SSH knownhost filename to use 
	SSH_KNOWNHOSTS             = 10183, 
	// set the SSH host key callback, must point to a curl_sshkeycallback
	// 	function 
	SSH_KEYFUNCTION            = 20184, 
	// set the SSH host key callback custom pointer 
	SSH_KEYDATA                = 10185, 
	// set the SMTP mail originator 
	MAIL_FROM                  = 10186, 
	// set the list of SMTP mail receiver(s) 
	MAIL_RCPT                  = 10187, 
	// FTP: send PRET before PASV 
	FTP_USE_PRET               = 188, 
	// RTSP request method (OPTIONS, SETUP, PLAY, etc...) 
	RTSP_REQUEST               = 189, 
	// The RTSP session identifier 
	RTSP_SESSION_ID            = 10190, 
	// The RTSP stream URI 
	RTSP_STREAM_URI            = 10191, 
	// The Transport: header to use in RTSP requests 
	RTSP_TRANSPORT             = 10192, 
	// Manually initialize the client RTSP CSeq for this handle 
	RTSP_CLIENT_CSEQ           = 193, 
	// Manually initialize the server RTSP CSeq for this handle 
	RTSP_SERVER_CSEQ           = 194, 
	// The stream to pass to INTERLEAVEFUNCTION. 
	INTERLEAVEDATA             = 10195, 
	// Let the application define a custom write method for RTP data 
	INTERLEAVEFUNCTION         = 20196, 
	// Turn on wildcard matching 
	WILDCARDMATCH              = 197, 
	// Directory matching callback called before downloading of an
	// 	individual file (chunk) started 
	CHUNK_BGN_FUNCTION         = 20198, 
	// Directory matching callback called after the file (chunk)
	// 	was downloaded, or skipped 
	CHUNK_END_FUNCTION         = 20199, 
	// Change match (fnmatch-like) callback for wildcard matching 
	FNMATCH_FUNCTION           = 20200, 
	// Let the application define custom chunk data pointer 
	CHUNK_DATA                 = 10201, 
	// FNMATCH_FUNCTION user pointer 
	FNMATCH_DATA               = 10202, 
	// send linked-list of name:port:address sets 
	RESOLVE                    = 10203, 
	// Set a username for authenticated TLS 
	TLSAUTH_USERNAME           = 10204, 
	// Set a password for authenticated TLS 
	TLSAUTH_PASSWORD           = 10205, 
	// Set authentication type for authenticated TLS 
	TLSAUTH_TYPE               = 10206, 
	// Set to 1 to enable the "TE:" header in HTTP requests to ask for
	// 	compressed transfer-encoded responses. Set to 0 to disable the use of TE:
	// 	in outgoing requests. The current default is 0, but it might change in a
	// 	future libcurl release.
	// 
	// 	libcurl will ask for the compressed methods it knows of, and if that
	// 	is not any, it will not ask for transfer-encoding at all even if this
	// 	option is set to 1.
	TRANSFER_ENCODING          = 207, 
	// Callback function for closing socket (instead of close(2)). The callback
	// 	should have type curl_closesocket_callback 
	CLOSESOCKETFUNCTION        = 20208, 
	CLOSESOCKETDATA            = 10209, 
	// allow GSSAPI credential delegation 
	GSSAPI_DELEGATION          = 210, 
	// Set the name servers to use for DNS resolution.
	// 	* Only supported by the c-ares DNS backend 
	DNS_SERVERS                = 10211, 
	// Time-out accept operations (currently for FTP only) after this amount
	// 	of milliseconds. 
	ACCEPTTIMEOUT_MS           = 212, 
	// Set TCP keepalive 
	TCP_KEEPALIVE              = 213, 
	// non-universal keepalive knobs (Linux, AIX, HP-UX, more) 
	TCP_KEEPIDLE               = 214, 
	TCP_KEEPINTVL              = 215, 
	// Enable/disable specific SSL features with a bitmask, see CURLSSLOPT_* 
	SSL_OPTIONS                = 216, 
	// Set the SMTP auth originator 
	MAIL_AUTH                  = 10217, 
	// Enable/disable SASL initial response 
	SASL_IR                    = 218, 
	// Function that will be called instead of the internal progress display
	// 	* function. This function should be defined as the curl_xferinfo_callback
	// 	* prototype defines. (Deprecates CURLOPT_PROGRESSFUNCTION) 
	XFERINFOFUNCTION           = 20219, 
	// The XOAUTH2 bearer token 
	XOAUTH2_BEARER             = 10220, 
	// Set the interface string to use as outgoing network
	// 	* interface for DNS requests.
	// 	* Only supported by the c-ares DNS backend 
	DNS_INTERFACE              = 10221, 
	// Set the local IPv4 address to use for outgoing DNS requests.
	// 	* Only supported by the c-ares DNS backend 
	DNS_LOCAL_IP4              = 10222, 
	// Set the local IPv6 address to use for outgoing DNS requests.
	// 	* Only supported by the c-ares DNS backend 
	DNS_LOCAL_IP6              = 10223, 
	// Set authentication options directly 
	LOGIN_OPTIONS              = 10224, 
	// Enable/disable TLS ALPN extension (http2 over ssl might fail without) 
	SSL_ENABLE_ALPN            = 226, 
	// Time to wait for a response to an HTTP request containing an
	// 	* Expect: 100-continue header before sending the data anyway. 
	EXPECT_100_TIMEOUT_MS      = 227, 
	// This points to a linked list of headers used for proxy requests only,
	// 	struct curl_slist kind 
	PROXYHEADER                = 10228, 
	// Pass in a bitmask of "header options" 
	HEADEROPT                  = 229, 
	// The public key in DER form used to validate the peer public key
	// 	this option is used only if SSL_VERIFYPEER is true 
	PINNEDPUBLICKEY            = 10230, 
	// Path to Unix domain socket 
	UNIX_SOCKET_PATH           = 10231, 
	// Set if we should verify the certificate status. 
	SSL_VERIFYSTATUS           = 232, 
	// Do not squash dot-dot sequences 
	PATH_AS_IS                 = 234, 
	// Proxy Service Name 
	PROXY_SERVICE_NAME         = 10235, 
	// Service Name 
	SERVICE_NAME               = 10236, 
	// Wait/do not wait for pipe/mutex to clarify 
	PIPEWAIT                   = 237, 
	// Set the protocol used when curl is given a URL without a protocol 
	DEFAULT_PROTOCOL           = 10238, 
	// Set stream weight, 1 - 256 (default is 16) 
	STREAM_WEIGHT              = 239, 
	// Set stream dependency on another curl handle 
	STREAM_DEPENDS             = 10240, 
	// Set E-xclusive stream dependency on another curl handle 
	STREAM_DEPENDS_E           = 10241, 
	// Do not send any tftp option requests to the server 
	TFTP_NO_OPTIONS            = 242, 
	// Linked-list of host:port:connect-to-host:connect-to-port,
	// 	overrides the URL's host:port (only for the network layer) 
	CONNECT_TO                 = 10243, 
	// Set TCP Fast Open 
	TCP_FASTOPEN               = 244, 
	// Continue to send data if the server responds early with an
	// 	* HTTP status code >= 300 
	KEEP_SENDING_ON_ERROR      = 245, 
	// The CApath or CAfile used to validate the proxy certificate
	// 	this option is used only if PROXY_SSL_VERIFYPEER is true 
	PROXY_CAINFO               = 10246, 
	// The CApath directory used to validate the proxy certificate
	// 	this option is used only if PROXY_SSL_VERIFYPEER is true 
	PROXY_CAPATH               = 10247, 
	// Set if we should verify the proxy in ssl handshake,
	// 	set 1 to verify. 
	PROXY_SSL_VERIFYPEER       = 248, 
	// Set if we should verify the Common name from the proxy certificate in ssl
	// 	* handshake, set 1 to check existence, 2 to ensure that it matches
	// 	* the provided hostname. 
	PROXY_SSL_VERIFYHOST       = 249, 
	// What version to specifically try to use for proxy.
	// 	See CURL_SSLVERSION defines below. 
	PROXY_SSLVERSION           = 250, 
	// Set a username for authenticated TLS for proxy 
	PROXY_TLSAUTH_USERNAME     = 10251, 
	// Set a password for authenticated TLS for proxy 
	PROXY_TLSAUTH_PASSWORD     = 10252, 
	// Set authentication type for authenticated TLS for proxy 
	PROXY_TLSAUTH_TYPE         = 10253, 
	// name of the file keeping your private SSL-certificate for proxy 
	PROXY_SSLCERT              = 10254, 
	// type of the file keeping your SSL-certificate ("DER", "PEM", "ENG") for
	// 	proxy 
	PROXY_SSLCERTTYPE          = 10255, 
	// name of the file keeping your private SSL-key for proxy 
	PROXY_SSLKEY               = 10256, 
	// type of the file keeping your private SSL-key ("DER", "PEM", "ENG") for
	// 	proxy 
	PROXY_SSLKEYTYPE           = 10257, 
	// password for the SSL private key for proxy 
	PROXY_KEYPASSWD            = 10258, 
	// Specify which TLS 1.2 (1.1, 1.0) ciphers to use for proxy 
	PROXY_SSL_CIPHER_LIST      = 10259, 
	// CRL file for proxy 
	PROXY_CRLFILE              = 10260, 
	// Enable/disable specific SSL features with a bitmask for proxy, see
	// 	CURLSSLOPT_* 
	PROXY_SSL_OPTIONS          = 261, 
	// Name of pre proxy to use. 
	PRE_PROXY                  = 10262, 
	// The public key in DER form used to validate the proxy public key
	// 	this option is used only if PROXY_SSL_VERIFYPEER is true 
	PROXY_PINNEDPUBLICKEY      = 10263, 
	// Path to an abstract Unix domain socket 
	ABSTRACT_UNIX_SOCKET       = 10264, 
	// Suppress proxy CONNECT response headers from user callbacks 
	SUPPRESS_CONNECT_HEADERS   = 265, 
	// The request target, instead of extracted from the URL 
	REQUEST_TARGET             = 10266, 
	// bitmask of allowed auth methods for connections to SOCKS5 proxies 
	SOCKS5_AUTH                = 267, 
	// Enable/disable SSH compression 
	SSH_COMPRESSION            = 268, 
	// Post MIME data. 
	MIMEPOST                   = 10269, 
	// Time to use with the CURLOPT_TIMECONDITION. Specified in number of
	// 	seconds since 1 Jan 1970. 
	TIMEVALUE_LARGE            = 30270, 
	// Head start in milliseconds to give happy eyeballs. 
	HAPPY_EYEBALLS_TIMEOUT_MS  = 271, 
	// Function that will be called before a resolver request is made 
	RESOLVER_START_FUNCTION    = 20272, 
	// User data to pass to the resolver start callback. 
	RESOLVER_START_DATA        = 10273, 
	// send HAProxy PROXY protocol header? 
	HAPROXYPROTOCOL            = 274, 
	// shuffle addresses before use when DNS returns multiple 
	DNS_SHUFFLE_ADDRESSES      = 275, 
	// Specify which TLS 1.3 ciphers suites to use 
	TLS13_CIPHERS              = 10276, 
	PROXY_TLS13_CIPHERS        = 10277, 
	// Disallow specifying username/login in URL. 
	DISALLOW_USERNAME_IN_URL   = 278, 
	// DNS-over-HTTPS URL 
	DOH_URL                    = 10279, 
	// Preferred buffer size to use for uploads 
	UPLOAD_BUFFERSIZE          = 280, 
	// Time in ms between connection upkeep calls for long-lived connections. 
	UPKEEP_INTERVAL_MS         = 281, 
	// Specify URL using CURL URL API. 
	CURLU                      = 10282, 
	// add trailing data just after no more data is available 
	TRAILERFUNCTION            = 20283, 
	// pointer to be passed to HTTP_TRAILER_FUNCTION 
	TRAILERDATA                = 10284, 
	// set this to 1L to allow HTTP/0.9 responses or 0L to disallow 
	HTTP09_ALLOWED             = 285, 
	// alt-svc control bitmask 
	ALTSVC_CTRL                = 286, 
	// alt-svc cache filename to possibly read from/write to 
	ALTSVC                     = 10287, 
	// maximum age (idle time) of a connection to consider it for reuse
	// 	* (in seconds) 
	MAXAGE_CONN                = 288, 
	// SASL authorization identity 
	SASL_AUTHZID               = 10289, 
	// allow RCPT TO command to fail for some recipients 
	MAIL_RCPT_ALLOWFAILS       = 290, 
	// the private SSL-certificate as a "blob" 
	SSLCERT_BLOB               = 40291, 
	SSLKEY_BLOB                = 40292, 
	PROXY_SSLCERT_BLOB         = 40293, 
	PROXY_SSLKEY_BLOB          = 40294, 
	ISSUERCERT_BLOB            = 40295, 
	// Issuer certificate for proxy 
	PROXY_ISSUERCERT           = 10296, 
	PROXY_ISSUERCERT_BLOB      = 40297, 
	// the EC curves requested by the TLS client (RFC 8422, 5.1);
	// 	* OpenSSL support via 'set_groups'/'set_curves':
	// 	* https://docs.openssl.org/master/man3/SSL_CTX_set1_curves/
	SSL_EC_CURVES              = 10298, 
	// HSTS bitmask 
	HSTS_CTRL                  = 299, 
	// HSTS filename 
	HSTS                       = 10300, 
	// HSTS read callback 
	HSTSREADFUNCTION           = 20301, 
	HSTSREADDATA               = 10302, 
	// HSTS write callback 
	HSTSWRITEFUNCTION          = 20303, 
	HSTSWRITEDATA              = 10304, 
	// Parameters for V4 signature 
	AWS_SIGV4                  = 10305, 
	// Same as CURLOPT_SSL_VERIFYPEER but for DoH (DNS-over-HTTPS) servers. 
	DOH_SSL_VERIFYPEER         = 306, 
	// Same as CURLOPT_SSL_VERIFYHOST but for DoH (DNS-over-HTTPS) servers. 
	DOH_SSL_VERIFYHOST         = 307, 
	// Same as CURLOPT_SSL_VERIFYSTATUS but for DoH (DNS-over-HTTPS) servers. 
	DOH_SSL_VERIFYSTATUS       = 308, 
	// The CA certificates as "blob" used to validate the peer certificate
	// 	this option is used only if SSL_VERIFYPEER is true 
	CAINFO_BLOB                = 40309, 
	// The CA certificates as "blob" used to validate the proxy certificate
	// 	this option is used only if PROXY_SSL_VERIFYPEER is true 
	PROXY_CAINFO_BLOB          = 40310, 
	// used by scp/sftp to verify the host's public key 
	SSH_HOST_PUBLIC_KEY_SHA256 = 10311, 
	// Function that will be called immediately before the initial request
	// 	is made on a connection (after any protocol negotiation step).  
	PREREQFUNCTION             = 20312, 
	// Data passed to the CURLOPT_PREREQFUNCTION callback 
	PREREQDATA                 = 10313, 
	// maximum age (since creation) of a connection to consider it for reuse
	// 	* (in seconds) 
	MAXLIFETIME_CONN           = 314, 
	// Set MIME option flags. 
	MIME_OPTIONS               = 315, 
	// set the SSH host key callback, must point to a curl_sshkeycallback
	// 	function 
	SSH_HOSTKEYFUNCTION        = 20316, 
	// set the SSH host key callback custom pointer 
	SSH_HOSTKEYDATA            = 10317, 
	// specify which protocols that are allowed to be used for the transfer,
	// 	which thus helps the app which takes URLs from users or other external
	// 	inputs and want to restrict what protocol(s) to deal with. Defaults to
	// 	all built-in protocols. 
	PROTOCOLS_STR              = 10318, 
	// specify which protocols that libcurl is allowed to follow directs to 
	REDIR_PROTOCOLS_STR        = 10319, 
	// WebSockets options 
	WS_OPTIONS                 = 320, 
	// CA cache timeout 
	CA_CACHE_TIMEOUT           = 321, 
	// Can leak things, gonna exit() soon 
	QUICK_EXIT                 = 322, 
	// set a specific client IP for HAProxy PROXY protocol header? 
	HAPROXY_CLIENT_IP          = 10323, 
	// millisecond version 
	SERVER_RESPONSE_TIMEOUT_MS = 324, 
	// set ECH configuration 
	ECH                        = 10325, 
	// maximum number of keepalive probes (Linux, *BSD, macOS, etc.) 
	TCP_KEEPCNT                = 326, 
	UPLOAD_FLAGS               = 327, 
	// set TLS supported signature algorithms 
	SSL_SIGNATURE_ALGORITHMS   = 10328, 
}
```

 

*All CURLOPT\_* values.




##### Related Procedures With Parameters

* [easy\_option\_by\_id](/vendor/curl/#easy_option_by_id)
* [easy\_setopt](/vendor/curl/#easy_setopt)

##### Related Constants

* [PT\_RTSPHEADER](/vendor/curl/#PT_RTSPHEADER)

### [platform\_fd\_set ¶](#platform_fd_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_windows.odin#L7)

```
platform_fd_set :: sys_windows.fd_set
```

##### Related Procedures With Parameters

* [multi\_fdset](/vendor/curl/#multi_fdset)

### [platform\_sockaddr ¶](#platform_sockaddr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_windows.odin#L6)

```
platform_sockaddr :: sys_windows.sockaddr
```

### [prereq\_callback ¶](#prereq_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L490)

```
prereq_callback :: proc "c" (clientp: rawptr, conn_primary_ip: cstring, conn_local_ip: cstring, conn_primary_port: i32, conn_local_port: i32) -> i32
```

 

This is the CURLOPT\_PREREQFUNCTION callback prototype.

### [progress\_callback ¶](#progress_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L201)

```
progress_callback :: proc "c" (clientp: rawptr, dltotal: f64, dlnow: f64, ultotal: f64, ulnow: f64) -> i32
```

 

This is the CURLOPT\_PROGRESSFUNCTION callback prototype. It is now
considered deprecated but was the only choice up until 7.31.0

### [proxycode ¶](#proxycode) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L643)

```
proxycode :: enum i32 {
	OK, 
	BAD_ADDRESS_TYPE, 
	BAD_VERSION, 
	CLOSED, 
	GSSAPI, 
	GSSAPI_PERMSG, 
	GSSAPI_PROTECTION, 
	IDENTD, 
	IDENTD_DIFFER, 
	LONG_HOSTNAME, 
	LONG_PASSWD, 
	LONG_USER, 
	NO_AUTH, 
	RECV_ADDRESS, 
	RECV_AUTH, 
	RECV_CONNECT, 
	RECV_REQACK, 
	REPLY_ADDRESS_TYPE_NOT_SUPPORTED, 
	REPLY_COMMAND_NOT_SUPPORTED, 
	REPLY_CONNECTION_REFUSED, 
	REPLY_GENERAL_SERVER_FAILURE, 
	REPLY_HOST_UNREACHABLE, 
	REPLY_NETWORK_UNREACHABLE, 
	REPLY_NOT_ALLOWED, 
	REPLY_TTL_EXPIRED, 
	REPLY_UNASSIGNED, 
	REQUEST_FAILED, 
	RESOLVE_HOST, 
	SEND_AUTH, 
	SEND_CONNECT, 
	SEND_REQUEST, 
	UNKNOWN_FAIL, 
	UNKNOWN_MODE, 
	USER_REJECTED, 
}
```

 

\* Proxy error codes. Returned in CURLINFO\_PROXY\_ERROR if CURLE\_PROXY was
\* return for the transfers.

### [proxytype ¶](#proxytype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L690)

```
proxytype :: enum i32 {
	HTTP            = 0, // added in 7.10, new in 7.19.4 default is to use
	                        CONNECT HTTP/1.1
	HTTP_1_0        = 1, // added in 7.19.4, force to use CONNECT
                               HTTP/1.0
	HTTPS           = 2, // HTTPS but stick to HTTP/1 added in 7.52.0
	HTTPS2          = 3, // HTTPS and attempt HTTP/2 added in 8.2.0
	SOCKS4          = 4, // support added in 7.15.2, enum existed already
	                        in 7.10
	SOCKS5          = 5, // added in 7.10
	SOCKS4A         = 6, // added in 7.18.0
	SOCKS5_HOSTNAME = 7, // Use the SOCKS5 protocol but pass along the
	                        hostname rather than the IP address. added
	                        in 7.18.0
}
```

 

this enum was added in 7.10

### [push\_callback ¶](#push_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L461)

```
push_callback :: proc "c" (parent: ^CURL, easy: ^CURL, num_headers: uint, headers: [^]pushheaders, userp: rawptr) -> i32
```

### [pushheaders ¶](#pushheaders) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L459)

```
pushheaders :: struct {}
```

##### Related Procedures With Parameters

* [pushheader\_byname](/vendor/curl/#pushheader_byname)
* [pushheader\_bynum](/vendor/curl/#pushheader_bynum)

### [read\_callback ¶](#read_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L398)

```
read_callback :: proc "c" (buffer: [^]u8, size: uint, nitems: uint, instream: rawptr) -> uint
```

##### Related Procedures With Parameters

* [mime\_data\_cb](/vendor/curl/#mime_data_cb)

### [realloc\_callback ¶](#realloc_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L465)

```
realloc_callback :: proc "c" (ptr: rawptr, size: uint) -> rawptr
```

##### Related Procedures With Parameters

* [global\_init\_mem](/vendor/curl/#global_init_mem)

### [resolver\_start\_callback ¶](#resolver_start_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L257)

```
resolver_start_callback :: proc "c" (resolver_state: rawptr, reserved: rawptr, userdata: rawptr) -> i32
```

 

This callback will be called when a new resolver request is made

### [seek\_callback ¶](#seek_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L375)

```
seek_callback :: proc "c" (instream: rawptr, offset: i64, origin: i32) -> i32
```

 

'whence'




##### Related Procedures With Parameters

* [mime\_data\_cb](/vendor/curl/#mime_data_cb)

### [slist ¶](#slist) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L86)

```
slist :: struct {
	data: [^]u8,
	next: ^slist,
}
```

 

linked-list structure for the CURLOPT\_QUOTE option (and other)




##### Related Procedures With Parameters

* [mime\_headers](/vendor/curl/#mime_headers)
* [slist\_append](/vendor/curl/#slist_append)
* [slist\_free\_all](/vendor/curl/#slist_free_all)

### [sockaddr ¶](#sockaddr) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L425)

```
sockaddr :: struct {
	family:   i32,
	socktype: i32,
	protocol: i32,
	addrlen:  u32,
	// addrlen was a socklen_t type before 7.18.0 but it
	//                            turned really ugly and painful on the systems that
	//                            lack this type 
	addr:     sys_windows.sockaddr,
}
```

### [socket\_callback ¶](#socket_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L241)

```
socket_callback :: proc "c" (easy: ^CURL, s: socket_t, what: i32, userp: rawptr, socketp: rawptr) -> i32
```

 

private socket pointer

### [socket\_t ¶](#socket_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L95)

```
socket_t :: distinct i32
```

##### Related Procedures With Parameters

* [multi\_assign](/vendor/curl/#multi_assign)
* [multi\_socket\_action](/vendor/curl/#multi_socket_action)

##### Related Constants

* [SOCKET\_BAD](/vendor/curl/#SOCKET_BAD)
* [SOCKET\_TIMEOUT](/vendor/curl/#SOCKET_TIMEOUT)

### [socklen\_t ¶](#socklen_t) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L38)

```
socklen_t :: i32
```

##### Related Procedures With Parameters

* [easy\_escape](/vendor/curl/#easy_escape)
* [easy\_header](/vendor/curl/#easy_header)
* [easy\_nextheader](/vendor/curl/#easy_nextheader)
* [easy\_unescape](/vendor/curl/#easy_unescape)
* [escape](/vendor/curl/#escape)
* [global\_init](/vendor/curl/#global_init)
* [global\_init\_mem](/vendor/curl/#global_init_mem)
* [mime\_headers](/vendor/curl/#mime_headers)
* [multi\_fdset](/vendor/curl/#multi_fdset)
* [multi\_info\_read](/vendor/curl/#multi_info_read)
* [multi\_perform](/vendor/curl/#multi_perform)
* [multi\_poll](/vendor/curl/#multi_poll)
* [multi\_socket\_action](/vendor/curl/#multi_socket_action)
* [multi\_timeout](/vendor/curl/#multi_timeout)
* [multi\_wait](/vendor/curl/#multi_wait)
* [unescape](/vendor/curl/#unescape)



##### Related Procedures With Returns

* [strequal](/vendor/curl/#strequal)
* [strnequal](/vendor/curl/#strnequal)

### [sockopt\_callback ¶](#sockopt_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L421)

```
sockopt_callback :: proc "c" (clientp: rawptr, curlfd: socket_t, purpose: socktype) -> i32
```

### [socktype ¶](#socktype) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L406)

```
socktype :: enum i32 {
	IPCXN,  // socket created for a specific IP connection
	ACCEPT, // socket created by accept() call
	LAST,   // never use
}
```

### [sshhostkeycallback ¶](#sshhostkeycallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L799)

```
sshhostkeycallback :: proc "c" (clientp: rawptr, keytype: i32, key: cstring, keylen: uint) -> code
```

 

return CURLE\_OK to accept

### [sshkeycallback ¶](#sshkeycallback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L792)

```
sshkeycallback :: proc "c" (easy: ^CURL, knownkey: ^khkey, foundkey: ^khkey, _: khmatch, clientp: rawptr) -> i32
```

 

custom pointer passed with

### [ssl\_backend ¶](#ssl_backend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2481)

```
ssl_backend :: struct {
	id:   sslbackend,
	name: cstring,
}
```

 

\* NAME curl\_global\_sslset()
\*
\* DESCRIPTION
\*
\* When built with multiple SSL backends, curl\_global\_sslset() allows to
\* choose one. This function can only be called once, and it must be called
before\* curl\_global\_init().
\*
\* The backend can be identified by the id (e.g. CURLSSLBACKEND\_OPENSSL). The
\* backend can also be specified via the name parameter (passing -1 as id). If
\* both id and name are specified, the name will be ignored. If neither id nor
\* name are specified, the function will fail with CURLSSLSET\_UNKNOWN\_BACKEND
\* and set the "avail" pointer to the NULL-terminated list of available
\* backends.
\*
\* Upon success, the function returns CURLSSLSET\_OK.
\*
\* If the specified SSL backend is not available, the function returns
\* CURLSSLSET\_UNKNOWN\_BACKEND and sets the "avail" pointer to a
\* NULL-terminated list of available SSL backends.
\*
\* The SSL backend can be set only once. If it has already been set, a
\* subsequent attempt to change it will result in a CURLSSLSET\_TOO\_LATE.

### [ssl\_ctx\_callback ¶](#ssl_ctx_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L683)

```
ssl_ctx_callback :: proc "c" (curl: ^CURL, ssl_ctx: rawptr, userptr: rawptr) -> code
```

### [sslbackend ¶](#sslbackend) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L98)

```
sslbackend :: enum i32 {
	NONE            = 0, 
	OPENSSL         = 1, 
	GNUTLS          = 2, 
	NSS             = 3,  // CURL_DEPRECATED(8.3.0, "")
	OBSOLETE4       = 4,  // Was QSOSSL.
	GSKIT           = 5,  // CURL_DEPRECATED(8.3.0, "")
	POLARSSL        = 6,  // CURL_DEPRECATED(7.69.0, "")
	WOLFSSL         = 7, 
	SCHANNEL        = 8, 
	SECURETRANSPORT = 9,  // CURL_DEPRECATED(8.15.0, "")
	AXTLS           = 10, // CURL_DEPRECATED(7.61.0, "")
	MBEDTLS         = 11, 
	MESALINK        = 12, // CURL_DEPRECATED(7.82.0, "")
	BEARSSL         = 13, // CURL_DEPRECATED(8.15.0, "")
	RUSTLS          = 14, 
	AWSLC           = 1, 
	BORINGSSL       = 1, 
	LIBRESSL        = 1, 
}
```

##### Related Procedures With Parameters

* [global\_sslset](/vendor/curl/#global_sslset)

### [ssls\_export\_cb ¶](#ssls_export_cb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2848)

```
ssls_export_cb :: proc "c" (handle: ^CURL, userptr: rawptr, session_key: cstring, shmac: [^]u8, shmac_len: uint, sdata: [^]u8, sdata_len: uint, valid_until: i64, ietf_tls_id: i32, alpn: cstring, earlydata_max: uint) -> code
```

 

This is the curl\_ssls\_export\_cb callback prototype. It is passed to curl\_easy\_ssls\_export() to extract SSL sessions/tickets.




##### Related Procedures With Parameters

* [easy\_ssls\_export](/vendor/curl/#easy_ssls_export)

### [sslset ¶](#sslset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2486)

```
sslset :: enum i32 {
	OK              = 0, 
	UNKNOWN_BACKEND, 
	TOO_LATE, 
	NO_BACKENDS,         // libcurl was built without any SSL support
}
```

##### Related Procedures With Returns

* [global\_sslset](/vendor/curl/#global_sslset)

### [strdup\_callback ¶](#strdup_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L466)

```
strdup_callback :: proc "c" (str: cstring) -> cstring
```

##### Related Procedures With Parameters

* [global\_init\_mem](/vendor/curl/#global_init_mem)

### [tlssessioninfo ¶](#tlssessioninfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2545)

```
tlssessioninfo :: struct {
	backend:   sslbackend,
	internals: rawptr,
}
```

 

Information about the SSL library used and the respective internal SSL
handle, which can be used to obtain further information regarding the
connection. Asked for with CURLINFO\_TLS\_SSL\_PTR or CURLINFO\_TLS\_SESSION.

### [trailer\_callback ¶](#trailer_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L403)

```
trailer_callback :: proc "c" (list: ^^slist, userdata: rawptr) -> i32
```

### [unlock\_function ¶](#unlock_function) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2685)

```
unlock_function :: proc "c" (handle: ^CURL, data: lock_data, userptr: rawptr)
```

### [usessl ¶](#usessl) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L814)

```
usessl :: enum i32 {
}
```

### [version\_enum ¶](#version_enum) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2718)

```
version_enum :: enum i32 {
	FIRST,    // 7.10
	SECOND,   // 7.11.1
	THIRD,    // 7.12.0
	FOURTH,   // 7.16.1
	FIFTH,    // 7.57.0
	SIXTH,    // 7.66.0
	SEVENTH,  // 7.70.0
	EIGHTH,   // 7.72.0
	NINTH,    // 7.75.0
	TENTH,    // 7.77.0
	ELEVENTH, // 7.87.0
	TWELFTH,  // 8.8.0
}
```

##### Related Procedures With Parameters

* [version\_info](/vendor/curl/#version_info)

##### Related Constants

* [VERSION\_NOW](/vendor/curl/#VERSION_NOW)

### [version\_info\_data ¶](#version_info_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2742)

```
version_info_data :: struct {
	age:             version_enum,
	// age of the returned struct 
	version:         cstring,
	// LIBCURL_VERSION 
	version_num:     u32,
	// LIBCURL_VERSION_NUM 
	host:            cstring,
	// OS/host/cpu/machine when configured 
	features:        i32,
	// bitmask, see defines below 
	ssl_version:     cstring,
	// human readable string 
	ssl_version_num: i32,
	// not used anymore, always 0 
	libz_version:    cstring,
	// protocols is terminated by an entry with a NULL protoname 
	protocols:       [^]cstring,
	// The fields below this were added in CURLVERSION_SECOND 
	ares:            cstring,
	ares_num:        i32,
	// This field was added in CURLVERSION_THIRD 
	libidn:          cstring,
	// Same as '_libiconv_version' if built with HAVE_ICONV 
	iconv_ver_num:   i32,
	libssh_version:  cstring,
	// These fields were added in CURLVERSION_FIFTH 
	brotli_ver_num:  u32,
	// Numeric Brotli version
	// 	                          (MAJOR << 24) | (MINOR << 12) | PATCH 
	brotli_version:  cstring,
	// These fields were added in CURLVERSION_SIXTH 
	nghttp2_ver_num: u32,
	// Numeric nghttp2 version
	// 	                           (MAJOR << 16) | (MINOR << 8) | PATCH 
	nghttp2_version: cstring,
	// human readable string. 
	quic_version:    cstring,
	// These fields were added in CURLVERSION_SEVENTH 
	cainfo:          cstring,
	// the built-in default CURLOPT_CAINFO, might
	// 	                             be NULL 
	capath:          cstring,
	// These fields were added in CURLVERSION_EIGHTH 
	zstd_ver_num:    u32,
	// Numeric Zstd version
	// 	                          (MAJOR << 24) | (MINOR << 12) | PATCH 
	zstd_version:    cstring,
	// These fields were added in CURLVERSION_NINTH 
	hyper_version:   cstring,
	// These fields were added in CURLVERSION_TENTH 
	gsasl_version:   cstring,
	// These fields were added in CURLVERSION_ELEVENTH 
	// feature_names is terminated by an entry with a NULL feature name 
	feature_names:   [^]cstring,
	// These fields were added in CURLVERSION_TWELFTH 
	rtmp_version:    cstring,
}
```

##### Related Procedures With Returns

* [version\_info](/vendor/curl/#version_info)

### [waitfd ¶](#waitfd) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L58)

```
waitfd :: struct {
	fd:      socket_t,
	events:  i16,
	revents: i16,
}
```

##### Related Procedures With Parameters

* [multi\_poll](/vendor/curl/#multi_poll)
* [multi\_wait](/vendor/curl/#multi_wait)
* [multi\_waitfds](/vendor/curl/#multi_waitfds)

### [write\_callback ¶](#write_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L251)

```
write_callback :: proc "c" (buffer: [^]u8, size: uint, nitems: uint, outstream: rawptr) -> uint
```

### [ws\_flag ¶](#ws_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L15)

```
ws_flag :: enum u32 {
	// flag bits 
	TEXT   = 0, 
	BINARY = 1, 
	CONT   = 2, 
	CLOSE  = 3, 
	PING   = 4, 
	OFFSET = 5, 
	// flags for curl_ws_send() 
	PONG   = 6, 
}
```

### [ws\_flags ¶](#ws_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L14)

```
ws_flags :: distinct bit_set[ws_flag; u32]
```

##### Related Procedures With Parameters

* [ws\_send](/vendor/curl/#ws_send)

##### Related Constants

* [WS\_BINARY](/vendor/curl/#WS_BINARY)
* [WS\_CLOSE](/vendor/curl/#WS_CLOSE)
* [WS\_CONT](/vendor/curl/#WS_CONT)
* [WS\_OFFSET](/vendor/curl/#WS_OFFSET)
* [WS\_PING](/vendor/curl/#WS_PING)
* [WS\_PONG](/vendor/curl/#WS_PONG)
* [WS\_TEXT](/vendor/curl/#WS_TEXT)

### [ws\_frame ¶](#ws_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L6)

```
ws_frame :: struct {
	age:       i32,
	// zero 
	flags:     ws_flags,
	// See the CURLWS_* defines 
	offset:    i64,
	// the offset of this data into the frame 
	bytesleft: i64,
	// number of pending bytes left of the payload 
	len:       uint,
}
```

##### Related Procedures With Returns

* [ws\_meta](/vendor/curl/#ws_meta)

### [xferinfo\_callback ¶](#xferinfo_callback) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L212)

```
xferinfo_callback :: proc "c" (clientp: rawptr, dltotal: i64, dlnow: i64, ultotal: i64, ulnow: i64) -> i32
```

 

This is the CURLOPT\_XFERINFOFUNCTION callback prototype. It was introduced
in 7.32.0, avoids the use of floating point numbers and provides more
detailed information.

## Constants

### [ALTSVC\_H1 ¶](#ALTSVC_H1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L910)

```
ALTSVC_H1 :: 1 << 3
```

### [ALTSVC\_H2 ¶](#ALTSVC_H2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L911)

```
ALTSVC_H2 :: 1 << 4
```

### [ALTSVC\_H3 ¶](#ALTSVC_H3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L912)

```
ALTSVC_H3 :: 1 << 5
```

### [ALTSVC\_READONLYFILE ¶](#ALTSVC_READONLYFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L909)

```
ALTSVC_READONLYFILE :: 1 << 2
```

 

CURLALTSVC\_\* are bits for the CURLOPT\_ALTSVC\_CTRL option

### [AUTH\_ANY ¶](#AUTH_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L738)

```
AUTH_ANY: u32 : ~AUTH_DIGEST_IE
```

### [AUTH\_ANYSAFE ¶](#AUTH_ANYSAFE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L739)

```
AUTH_ANYSAFE: u32 : ~(AUTH_BASIC | AUTH_DIGEST_IE)
```

### [AUTH\_AWS\_SIGV4 ¶](#AUTH_AWS_SIGV4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L736)

```
AUTH_AWS_SIGV4: u32 : ((c.ulong)(1)) << 7
```

### [AUTH\_BASIC ¶](#AUTH_BASIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L725)

```
AUTH_BASIC: u32 : ((c.ulong)(1)) << 0
```

### [AUTH\_BEARER ¶](#AUTH_BEARER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L735)

```
AUTH_BEARER: u32 : ((c.ulong)(1)) << 6
```

### [AUTH\_DIGEST ¶](#AUTH_DIGEST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L726)

```
AUTH_DIGEST: u32 : ((c.ulong)(1)) << 1
```

### [AUTH\_DIGEST\_IE ¶](#AUTH_DIGEST_IE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L733)

```
AUTH_DIGEST_IE: u32 : ((c.ulong)(1)) << 4
```

### [AUTH\_GSSAPI ¶](#AUTH_GSSAPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L731)

```
AUTH_GSSAPI: u32 : AUTH_NEGOTIATE
```

 

Used for CURLOPT\_SOCKS5\_AUTH to stay terminologically correct

### [AUTH\_GSSNEGOTIATE ¶](#AUTH_GSSNEGOTIATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L729)

```
AUTH_GSSNEGOTIATE: u32 : AUTH_NEGOTIATE
```

 

Deprecated since the advent of CURLAUTH\_NEGOTIATE

### [AUTH\_NEGOTIATE ¶](#AUTH_NEGOTIATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L727)

```
AUTH_NEGOTIATE: u32 : ((c.ulong)(1)) << 2
```

### [AUTH\_NONE ¶](#AUTH_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L724)

```
AUTH_NONE: u32 : (c.ulong)(0)
```

### [AUTH\_NTLM ¶](#AUTH_NTLM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L732)

```
AUTH_NTLM: u32 : ((c.ulong)(1)) << 3
```

### [AUTH\_ONLY ¶](#AUTH_ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L737)

```
AUTH_ONLY: u32 : ((c.ulong)(1)) << 31
```

### [BLOB\_COPY ¶](#BLOB_COPY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L6)

```
BLOB_COPY :: blob_flags{.COPY}
```

 

Flag bits in the curl\_blob struct:

### [BLOB\_NOCOPY ¶](#BLOB_NOCOPY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L7)

```
BLOB_NOCOPY :: blob_flags{}
```

 

tell libcurl to NOT copy the data

### [CHUNK\_BGN\_FUNC\_FAIL ¶](#CHUNK_BGN_FUNC_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L327)

```
CHUNK_BGN_FUNC_FAIL :: 1
```

 

tell the lib to end the task

### [CHUNK\_BGN\_FUNC\_OK ¶](#CHUNK_BGN_FUNC_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L326)

```
CHUNK_BGN_FUNC_OK :: 0
```

 

return codes for CURLOPT\_CHUNK\_BGN\_FUNCTION

### [CHUNK\_BGN\_FUNC\_SKIP ¶](#CHUNK_BGN_FUNC_SKIP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L328)

```
CHUNK_BGN_FUNC_SKIP :: 2
```

 

skip this chunk over

### [CHUNK\_END\_FUNC\_FAIL ¶](#CHUNK_END_FUNC_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L342)

```
CHUNK_END_FUNC_FAIL :: 1
```

 

tell the lib to end the task

### [CHUNK\_END\_FUNC\_OK ¶](#CHUNK_END_FUNC_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L341)

```
CHUNK_END_FUNC_OK :: 0
```

 

return codes for CURLOPT\_CHUNK\_END\_FUNCTION

### [COPYRIGHT ¶](#COPYRIGHT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L41)

```
COPYRIGHT :: "Daniel Stenberg, <daniel@haxx.se>."
```

 

This is the global package copyright

### [CSELECT\_ERR ¶](#CSELECT_ERR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L239)

```
CSELECT_ERR :: 0x04
```

### [CSELECT\_IN ¶](#CSELECT_IN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L237)

```
CSELECT_IN :: 0x01
```

### [CSELECT\_OUT ¶](#CSELECT_OUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L238)

```
CSELECT_OUT :: 0x02
```

### [ERROR\_SIZE ¶](#ERROR_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L755)

```
ERROR_SIZE :: 256
```

### [FINFOFLAG\_KNOWN\_FILENAME ¶](#FINFOFLAG_KNOWN_FILENAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L287)

```
FINFOFLAG_KNOWN_FILENAME :: finfoflags{.KNOWN_FILENAME}
```

### [FINFOFLAG\_KNOWN\_FILETYPE ¶](#FINFOFLAG_KNOWN_FILETYPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L288)

```
FINFOFLAG_KNOWN_FILETYPE :: finfoflags{.KNOWN_FILETYPE}
```

### [FINFOFLAG\_KNOWN\_GID ¶](#FINFOFLAG_KNOWN_GID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L292)

```
FINFOFLAG_KNOWN_GID :: finfoflags{.KNOWN_GID}
```

### [FINFOFLAG\_KNOWN\_HLINKCOUNT ¶](#FINFOFLAG_KNOWN_HLINKCOUNT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L294)

```
FINFOFLAG_KNOWN_HLINKCOUNT :: finfoflags{.KNOWN_HLINKCOUNT}
```

### [FINFOFLAG\_KNOWN\_PERM ¶](#FINFOFLAG_KNOWN_PERM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L290)

```
FINFOFLAG_KNOWN_PERM :: finfoflags{.KNOWN_PERM}
```

### [FINFOFLAG\_KNOWN\_SIZE ¶](#FINFOFLAG_KNOWN_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L293)

```
FINFOFLAG_KNOWN_SIZE :: finfoflags{.KNOWN_SIZE}
```

### [FINFOFLAG\_KNOWN\_TIME ¶](#FINFOFLAG_KNOWN_TIME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L289)

```
FINFOFLAG_KNOWN_TIME :: finfoflags{.KNOWN_TIME}
```

### [FINFOFLAG\_KNOWN\_UID ¶](#FINFOFLAG_KNOWN_UID) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L291)

```
FINFOFLAG_KNOWN_UID :: finfoflags{.KNOWN_UID}
```

### [FNMATCHFUNC\_FAIL ¶](#FNMATCHFUNC_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L359)

```
FNMATCHFUNC_FAIL :: 2
```

 

an error occurred

### [FNMATCHFUNC\_MATCH ¶](#FNMATCHFUNC_MATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L357)

```
FNMATCHFUNC_MATCH :: 0
```

 

return codes for FNMATCHFUNCTION

### [FNMATCHFUNC\_NOMATCH ¶](#FNMATCHFUNC_NOMATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L358)

```
FNMATCHFUNC_NOMATCH :: 1
```

 

pattern does not match the string

### [FOLLOW\_ALL ¶](#FOLLOW_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L122)

```
FOLLOW_ALL :: 1
```

 

bits for the CURLOPT\_FOLLOWLOCATION option

### [FOLLOW\_FIRSTONLY ¶](#FOLLOW_FIRSTONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L131)

```
FOLLOW_FIRSTONLY :: 3
```

 

Only use the custom method in the first request, always reset in the next

### [FOLLOW\_OBEYCODE ¶](#FOLLOW_OBEYCODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L128)

```
FOLLOW_OBEYCODE :: 2
```

 

Do not use the custom method in the follow-up request if the HTTP code
instructs so (301, 302, 303).

### [GLOBAL\_ACK\_EINTR ¶](#GLOBAL_ACK_EINTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2654)

```
GLOBAL_ACK_EINTR :: 1 << 2
```

### [GLOBAL\_ALL ¶](#GLOBAL_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2651)

```
GLOBAL_ALL :: GLOBAL_SSL | GLOBAL_WIN32
```

### [GLOBAL\_DEFAULT ¶](#GLOBAL_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2653)

```
GLOBAL_DEFAULT :: GLOBAL_ALL
```

### [GLOBAL\_NOTHING ¶](#GLOBAL_NOTHING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2652)

```
GLOBAL_NOTHING :: 0
```

### [GLOBAL\_SSL ¶](#GLOBAL_SSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2649)

```
GLOBAL_SSL :: 1 << 0
```

 

no purpose since 7.57.0

### [GLOBAL\_WIN32 ¶](#GLOBAL_WIN32) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2650)

```
GLOBAL_WIN32 :: 1 << 1
```

### [GSSAPI\_DELEGATION\_FLAG ¶](#GSSAPI_DELEGATION_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L753)

```
GSSAPI_DELEGATION_FLAG :: 1 << 1
```

 

delegate always

### [GSSAPI\_DELEGATION\_NONE ¶](#GSSAPI_DELEGATION_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L751)

```
GSSAPI_DELEGATION_NONE :: 0
```

 

no delegation (default)

### [GSSAPI\_DELEGATION\_POLICY\_FLAG ¶](#GSSAPI_DELEGATION_POLICY_FLAG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L752)

```
GSSAPI_DELEGATION_POLICY_FLAG :: 1 << 0
```

 

if permitted by policy

### [HEADER\_SEPARATE ¶](#HEADER_SEPARATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L906)

```
HEADER_SEPARATE :: 1 << 0
```

### [HEADER\_UNIFIED ¶](#HEADER_UNIFIED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L905)

```
HEADER_UNIFIED :: 0
```

 

bitmask defines for CURLOPT\_HEADEROPT

### [HET\_DEFAULT ¶](#HET_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L867)

```
HET_DEFAULT :: 200
```

 

The default connection attempt delay in milliseconds for happy eyeballs.
CURLOPT\_HAPPY\_EYEBALLS\_TIMEOUT\_MS.3 and happy-eyeballs-timeout-ms.d document
this value, keep them in sync.

### [HSTS\_ENABLE ¶](#HSTS_ENABLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L950)

```
HSTS_ENABLE: i32 : (c.long)(1 << 0)
```

 

CURLHSTS\_\* are bits for the CURLOPT\_HSTS option

### [HSTS\_READONLYFILE ¶](#HSTS_READONLYFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L951)

```
HSTS_READONLYFILE: i32 : (c.long)(1 << 1)
```

### [HTTPPOST\_BUFFER ¶](#HTTPPOST_BUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L158)

```
HTTPPOST_BUFFER :: httppost_flags{.BUFFER}
```

### [HTTPPOST\_CALLBACK ¶](#HTTPPOST_CALLBACK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L160)

```
HTTPPOST_CALLBACK :: httppost_flags{.CALLBACK}
```

### [HTTPPOST\_FILENAME ¶](#HTTPPOST_FILENAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L154)

```
HTTPPOST_FILENAME :: httppost_flags{.FILENAME}
```

### [HTTPPOST\_LARGE ¶](#HTTPPOST_LARGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L161)

```
HTTPPOST_LARGE :: httppost_flags{.LARGE}
```

### [HTTPPOST\_PTRBUFFER ¶](#HTTPPOST_PTRBUFFER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L159)

```
HTTPPOST_PTRBUFFER :: httppost_flags{.PTRBUFFER}
```

### [HTTPPOST\_PTRCONTENTS ¶](#HTTPPOST_PTRCONTENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L157)

```
HTTPPOST_PTRCONTENTS :: httppost_flags{.PTRCONTENTS}
```

### [HTTPPOST\_PTRNAME ¶](#HTTPPOST_PTRNAME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L156)

```
HTTPPOST_PTRNAME :: httppost_flags{.PTRNAME}
```

### [HTTPPOST\_READFILE ¶](#HTTPPOST_READFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L155)

```
HTTPPOST_READFILE :: httppost_flags{.READFILE}
```

### [HTTP\_VERSION\_1\_0 ¶](#HTTP_VERSION_1_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2075)

```
HTTP_VERSION_1_0 :: 1
```

 

please use HTTP 1.0 in the request

### [HTTP\_VERSION\_1\_1 ¶](#HTTP_VERSION_1_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2076)

```
HTTP_VERSION_1_1 :: 2
```

 

please use HTTP 1.1 in the request

### [HTTP\_VERSION\_2 ¶](#HTTP_VERSION_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2095)

```
HTTP_VERSION_2 :: HTTP_VERSION_2_0
```

 

Convenience definition simple because the name of the version is HTTP/2 and
not 2.0. The 2\_0 version of the enum name was set while the version was
still planned to be 2.0 and we stick to it for compatibility.

### [HTTP\_VERSION\_2TLS ¶](#HTTP_VERSION_2TLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2078)

```
HTTP_VERSION_2TLS :: 4
```

 

use version 2 for HTTPS, version 1.1 for
HTTP

### [HTTP\_VERSION\_2\_0 ¶](#HTTP_VERSION_2_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2077)

```
HTTP_VERSION_2_0 :: 3
```

 

please use HTTP 2 in the request

### [HTTP\_VERSION\_2\_PRIOR\_KNOWLEDGE ¶](#HTTP_VERSION_2_PRIOR_KNOWLEDGE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2080)

```
HTTP_VERSION_2_PRIOR_KNOWLEDGE :: 5
```

 

please use HTTP 2 without
HTTP/1.1 Upgrade

### [HTTP\_VERSION\_3 ¶](#HTTP_VERSION_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2082)

```
HTTP_VERSION_3 :: 30
```

 

Use HTTP/3, fallback to HTTP/2 or
HTTP/1 if needed. For HTTPS only. For
HTTP, this option makes libcurl
return error.

### [HTTP\_VERSION\_3ONLY ¶](#HTTP_VERSION_3ONLY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2086)

```
HTTP_VERSION_3ONLY :: 31
```

 

Use HTTP/3 without fallback. For
HTTPS only. For HTTP, this makes
libcurl return error.

### [HTTP\_VERSION\_LAST ¶](#HTTP_VERSION_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2089)

```
HTTP_VERSION_LAST :: 32
```

 

*ILLEGAL* http version

### [HTTP\_VERSION\_NONE ¶](#HTTP_VERSION_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2072)

```
HTTP_VERSION_NONE :: 0
```

 

These constants are for use with the CURLOPT\_HTTP\_VERSION option.

### [H\_1XX ¶](#H_1XX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L28)

```
H_1XX :: header_origin_bits{.H_1XX}
```

 

1xx headers

### [H\_CONNECT ¶](#H_CONNECT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L27)

```
H_CONNECT :: header_origin_bits{.H_CONNECT}
```

 

CONNECT headers

### [H\_HEADER ¶](#H_HEADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L25)

```
H_HEADER :: header_origin_bits{.H_HEADER}
```

 

plain server header

### [H\_PSEUDO ¶](#H_PSEUDO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L29)

```
H_PSEUDO :: header_origin_bits{.H_PSEUDO}
```

 

pseudo headers

### [H\_TRAILER ¶](#H_TRAILER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L26)

```
H_TRAILER :: header_origin_bits{.H_TRAILER}
```

 

trailers

### [INFO\_DOUBLE ¶](#INFO_DOUBLE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2553)

```
INFO_DOUBLE :: 0x300000
```

### [INFO\_LONG ¶](#INFO_LONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2552)

```
INFO_LONG :: 0x200000
```

### [INFO\_MASK ¶](#INFO_MASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2558)

```
INFO_MASK :: 0x0fffff
```

### [INFO\_OFF\_T ¶](#INFO_OFF_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2557)

```
INFO_OFF_T :: 0x600000
```

### [INFO\_PTR ¶](#INFO_PTR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2555)

```
INFO_PTR :: 0x400000
```

 

same as SLIST

### [INFO\_SLIST ¶](#INFO_SLIST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2554)

```
INFO_SLIST :: 0x400000
```

### [INFO\_SOCKET ¶](#INFO_SOCKET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2556)

```
INFO_SOCKET :: 0x500000
```

### [INFO\_STRING ¶](#INFO_STRING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2551)

```
INFO_STRING :: 0x100000
```

### [INFO\_TYPEMASK ¶](#INFO_TYPEMASK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2559)

```
INFO_TYPEMASK :: 0xf00000
```

### [IPRESOLVE\_V4 ¶](#IPRESOLVE_V4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2065)

```
IPRESOLVE_V4 :: 1
```

 

uses only IPv4 addresses/connections

### [IPRESOLVE\_V6 ¶](#IPRESOLVE_V6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2066)

```
IPRESOLVE_V6 :: 2
```

 

uses only IPv6 addresses/connections

### [IPRESOLVE\_WHATEVER ¶](#IPRESOLVE_WHATEVER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2063)

```
IPRESOLVE_WHATEVER :: 0
```

 

```
Below here follows defines for the CURLOPT_IPRESOLVE option. If a host
```

name resolves addresses using more than one IP protocol version, this
option might be handy to force libcurl to use a specific IP version.

### [MAX\_HTTP\_HEADER ¶](#MAX_HTTP_HEADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L237)

```
MAX_HTTP_HEADER :: 100 * 1024
```

 

The only reason to have a max limit for this is to avoid the risk of a bad
server feeding libcurl with a never-ending header that will cause reallocs
infinitely

### [MAX\_READ\_SIZE ¶](#MAX_READ_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L220)

```
MAX_READ_SIZE :: 10 * 1024 * 1024
```

 

The maximum receive buffer size.

### [MAX\_WRITE\_SIZE ¶](#MAX_WRITE_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L230)

```
MAX_WRITE_SIZE :: 16384
```

 

Tests have proven that 20K is a bad buffer size for uploads on Windows,
while 16K for some odd reason performed a lot better. We do the ifndef
check to allow this value to easier be changed at build time for those
who feel adventurous. The practical minimum is about 400 bytes since
libcurl uses a buffer of this size as a scratch area (unrelated to
network send operations).

### [MIMEOPT\_FORMESCAPE ¶](#MIMEOPT_FORMESCAPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2197)

```
MIMEOPT_FORMESCAPE :: 1 << 0
```

 

CURLMIMEOPT\_ defines are for the CURLOPT\_MIME\_OPTIONS option.

### [MNWC\_CLEAR\_CONNS ¶](#MNWC_CLEAR_CONNS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L351)

```
MNWC_CLEAR_CONNS :: 1 << 0
```

 

CURLMNWC\_CLEAR\_CONNS tells libcurl to prevent further reuse of existing
connections. Connections that are idle will be closed. Ongoing transfers
will continue with the connection they have.

### [MNWC\_CLEAR\_DNS ¶](#MNWC_CLEAR_DNS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L356)

```
MNWC_CLEAR_DNS :: 1 << 0
```

 

CURLMNWC\_CLEAR\_DNS tells libcurl to prevent further reuse of existing
connections. Connections that are idle will be closed. Ongoing transfers
will continue with the connection they have.

### [NETRC\_IGNORED ¶](#NETRC_IGNORED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2116)

```
NETRC_IGNORED :: 0
```

 

These enums are for use with the CURLOPT\_NETRC option.

### [NETRC\_OPTIONAL ¶](#NETRC_OPTIONAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2118)

```
NETRC_OPTIONAL :: 1
```

 

A user:password in the URL will be preferred
to one in the .netrc.

### [NETRC\_REQUIRED ¶](#NETRC_REQUIRED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2120)

```
NETRC_REQUIRED :: 2
```

 

A user:password in the URL will be ignored.
Unless one is set programmatically, the
.netrc will be queried.

### [OPTTYPE\_BLOB ¶](#OPTTYPE_BLOB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L992)

```
OPTTYPE_BLOB :: 40000
```

### [OPTTYPE\_CBPOINT ¶](#OPTTYPE_CBPOINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L1006)

```
OPTTYPE_CBPOINT :: OPTTYPE_OBJECTPOINT
```

 

'void \*' argument passed untouched to callback

### [OPTTYPE\_FUNCTIONPOINT ¶](#OPTTYPE_FUNCTIONPOINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L990)

```
OPTTYPE_FUNCTIONPOINT :: 20000
```

### [OPTTYPE\_LONG ¶](#OPTTYPE_LONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L988)

```
OPTTYPE_LONG :: 0
```

 

long may be 32 or 64 bits, but we should never depend on anything else but 32

### [OPTTYPE\_OBJECTPOINT ¶](#OPTTYPE_OBJECTPOINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L989)

```
OPTTYPE_OBJECTPOINT :: 10000
```

### [OPTTYPE\_OFF\_T ¶](#OPTTYPE_OFF_T) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L991)

```
OPTTYPE_OFF_T :: 30000
```

### [OPTTYPE\_SLISTPOINT ¶](#OPTTYPE_SLISTPOINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L1003)

```
OPTTYPE_SLISTPOINT :: OPTTYPE_OBJECTPOINT
```

 

'struct curl\_slist \*' argument

### [OPTTYPE\_STRINGPOINT ¶](#OPTTYPE_STRINGPOINT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L1000)

```
OPTTYPE_STRINGPOINT :: OPTTYPE_OBJECTPOINT
```

 

'char \*' argument to a string with a trailing zero

### [OPTTYPE\_VALUES ¶](#OPTTYPE_VALUES) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L1009)

```
OPTTYPE_VALUES :: OPTTYPE_LONG
```

 

'long' argument with a set of values/bitmask

### [PAUSE\_ALL ¶](#PAUSE_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2844)

```
PAUSE_ALL :: PAUSE_RECV | PAUSE_SEND
```

### [PAUSE\_CONT ¶](#PAUSE_CONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2845)

```
PAUSE_CONT :: PAUSE_RECV_CONT | PAUSE_SEND_CONT
```

### [PAUSE\_RECV ¶](#PAUSE_RECV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2838)

```
PAUSE_RECV :: 1 << 0
```

### [PAUSE\_RECV\_CONT ¶](#PAUSE_RECV_CONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2839)

```
PAUSE_RECV_CONT :: 0
```

### [PAUSE\_SEND ¶](#PAUSE_SEND) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2841)

```
PAUSE_SEND :: 1 << 2
```

### [PAUSE\_SEND\_CONT ¶](#PAUSE_SEND_CONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2842)

```
PAUSE_SEND_CONT :: 0
```

### [PIPE\_HTTP1 ¶](#PIPE_HTTP1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L32)

```
PIPE_HTTP1 :: 1
```

### [PIPE\_MULTIPLEX ¶](#PIPE_MULTIPLEX) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L33)

```
PIPE_MULTIPLEX :: 2
```

### [PIPE\_NOTHING ¶](#PIPE_NOTHING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L31)

```
PIPE_NOTHING :: 0
```

 

bitmask bits for CURLMOPT\_PIPELINING

### [POLL\_IN ¶](#POLL_IN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L230)

```
POLL_IN :: 1
```

### [POLL\_INOUT ¶](#POLL_INOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L232)

```
POLL_INOUT :: 3
```

### [POLL\_NONE ¶](#POLL_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L229)

```
POLL_NONE :: 0
```

 

\* Name: curl\_multi\_socket() and
\* curl\_multi\_socket\_all()
\*
\* Desc: An alternative version of curl\_multi\_perform() that allows the
\* application to pass in one of the file descriptors that have been
\* detected to have "action" on them and let libcurl perform.
\* See manpage for details.

### [POLL\_OUT ¶](#POLL_OUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L231)

```
POLL_OUT :: 2
```

### [POLL\_REMOVE ¶](#POLL_REMOVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L233)

```
POLL_REMOVE :: 4
```

### [PREREQFUNC\_ABORT ¶](#PREREQFUNC_ABORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L499)

```
PREREQFUNC_ABORT :: 1
```

 

Return code for when the pre-request callback wants to abort the request

### [PREREQFUNC\_OK ¶](#PREREQFUNC_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L497)

```
PREREQFUNC_OK :: 0
```

 

Return code for when the pre-request callback has terminated without any errors

### [PROGRESSFUNC\_CONTINUE ¶](#PROGRESSFUNC_CONTINUE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L195)

```
PROGRESSFUNC_CONTINUE :: 0x10000001
```

 

This is a return code for the progress callback that, when returned, will
signal libcurl to continue executing the default progress function

### [PROTO\_ALL ¶](#PROTO_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L985)

```
PROTO_ALL: i32 : ~c.int(0)
```

 

enable everything

### [PROTO\_DICT ¶](#PROTO_DICT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L964)

```
PROTO_DICT :: 1 << 9
```

### [PROTO\_FILE ¶](#PROTO_FILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L965)

```
PROTO_FILE :: 1 << 10
```

### [PROTO\_FTP ¶](#PROTO_FTP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L957)

```
PROTO_FTP :: 1 << 2
```

### [PROTO\_FTPS ¶](#PROTO_FTPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L958)

```
PROTO_FTPS :: 1 << 3
```

### [PROTO\_GOPHER ¶](#PROTO_GOPHER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L980)

```
PROTO_GOPHER :: 1 << 25
```

### [PROTO\_GOPHERS ¶](#PROTO_GOPHERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L984)

```
PROTO_GOPHERS :: 1 << 29
```

### [PROTO\_HTTP ¶](#PROTO_HTTP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L955)

```
PROTO_HTTP :: 1 << 0
```

### [PROTO\_HTTPS ¶](#PROTO_HTTPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L956)

```
PROTO_HTTPS :: 1 << 1
```

### [PROTO\_IMAP ¶](#PROTO_IMAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L967)

```
PROTO_IMAP :: 1 << 12
```

### [PROTO\_IMAPS ¶](#PROTO_IMAPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L968)

```
PROTO_IMAPS :: 1 << 13
```

### [PROTO\_LDAP ¶](#PROTO_LDAP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L962)

```
PROTO_LDAP :: 1 << 7
```

### [PROTO\_LDAPS ¶](#PROTO_LDAPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L963)

```
PROTO_LDAPS :: 1 << 8
```

### [PROTO\_MQTT ¶](#PROTO_MQTT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L983)

```
PROTO_MQTT :: 1 << 28
```

### [PROTO\_POP3 ¶](#PROTO_POP3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L969)

```
PROTO_POP3 :: 1 << 14
```

### [PROTO\_POP3S ¶](#PROTO_POP3S) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L970)

```
PROTO_POP3S :: 1 << 15
```

### [PROTO\_RTMP ¶](#PROTO_RTMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L974)

```
PROTO_RTMP :: 1 << 19
```

### [PROTO\_RTMPE ¶](#PROTO_RTMPE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L976)

```
PROTO_RTMPE :: 1 << 21
```

### [PROTO\_RTMPS ¶](#PROTO_RTMPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L978)

```
PROTO_RTMPS :: 1 << 23
```

### [PROTO\_RTMPT ¶](#PROTO_RTMPT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L975)

```
PROTO_RTMPT :: 1 << 20
```

### [PROTO\_RTMPTE ¶](#PROTO_RTMPTE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L977)

```
PROTO_RTMPTE :: 1 << 22
```

### [PROTO\_RTMPTS ¶](#PROTO_RTMPTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L979)

```
PROTO_RTMPTS :: 1 << 24
```

### [PROTO\_RTSP ¶](#PROTO_RTSP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L973)

```
PROTO_RTSP :: 1 << 18
```

### [PROTO\_SCP ¶](#PROTO_SCP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L959)

```
PROTO_SCP :: 1 << 4
```

### [PROTO\_SFTP ¶](#PROTO_SFTP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L960)

```
PROTO_SFTP :: 1 << 5
```

### [PROTO\_SMB ¶](#PROTO_SMB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L981)

```
PROTO_SMB :: 1 << 26
```

### [PROTO\_SMBS ¶](#PROTO_SMBS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L982)

```
PROTO_SMBS :: 1 << 27
```

### [PROTO\_SMTP ¶](#PROTO_SMTP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L971)

```
PROTO_SMTP :: 1 << 16
```

### [PROTO\_SMTPS ¶](#PROTO_SMTPS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L972)

```
PROTO_SMTPS :: 1 << 17
```

### [PROTO\_TELNET ¶](#PROTO_TELNET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L961)

```
PROTO_TELNET :: 1 << 6
```

### [PROTO\_TFTP ¶](#PROTO_TFTP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L966)

```
PROTO_TFTP :: 1 << 11
```

### [PT\_RTSPHEADER ¶](#PT_RTSPHEADER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2069)

```
PT_RTSPHEADER :: option.HTTPHEADER
```

 

Convenient "aliases"

### [PUSH\_DENY ¶](#PUSH_DENY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L455)

```
PUSH_DENY :: 1
```

### [PUSH\_ERROROUT ¶](#PUSH_ERROROUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L456)

```
PUSH_ERROROUT :: 2
```

 

added in 7.72.0

### [PUSH\_OK ¶](#PUSH_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L454)

```
PUSH_OK :: 0
```

 

\* Name: curl\_push\_callback
\*
\* Desc: This callback gets called when a new stream is being pushed by the
\* server. It approves or denies the new stream. It can also decide
\* to completely fail the connection.
\*
\* Returns: CURL\_PUSH\_OK, CURL\_PUSH\_DENY or CURL\_PUSH\_ERROROUT

### [READFUNC\_ABORT ¶](#READFUNC_ABORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L383)

```
READFUNC_ABORT :: 0x10000000
```

 

This is a return code for the read callback that, when returned, will
signal libcurl to immediately abort the current transfer.

### [READFUNC\_PAUSE ¶](#READFUNC_PAUSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L388)

```
READFUNC_PAUSE :: 0x10000001
```

 

This is a return code for the read callback that, when returned, will
signal libcurl to pause sending data on the current transfer.

### [REDIR\_GET\_ALL ¶](#REDIR_GET_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2167)

```
REDIR_GET_ALL :: 0
```

### [REDIR\_POST\_301 ¶](#REDIR_POST_301) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2168)

```
REDIR_POST_301 :: 1
```

### [REDIR\_POST\_302 ¶](#REDIR_POST_302) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2169)

```
REDIR_POST_302 :: 2
```

### [REDIR\_POST\_303 ¶](#REDIR_POST_303) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2170)

```
REDIR_POST_303 :: 4
```

### [REDIR\_POST\_ALL ¶](#REDIR_POST_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2171)

```
REDIR_POST_ALL :: REDIR_POST_301 | REDIR_POST_302 | REDIR_POST_303
```

### [RTSPREQ\_ANNOUNCE ¶](#RTSPREQ_ANNOUNCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2104)

```
RTSPREQ_ANNOUNCE :: 3
```

### [RTSPREQ\_DESCRIBE ¶](#RTSPREQ_DESCRIBE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2103)

```
RTSPREQ_DESCRIBE :: 2
```

### [RTSPREQ\_GET\_PARAMETER ¶](#RTSPREQ_GET_PARAMETER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2109)

```
RTSPREQ_GET_PARAMETER :: 8
```

### [RTSPREQ\_LAST ¶](#RTSPREQ_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2113)

```
RTSPREQ_LAST :: 12
```

 

not used

### [RTSPREQ\_NONE ¶](#RTSPREQ_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2101)

```
RTSPREQ_NONE :: 0
```

### [RTSPREQ\_OPTIONS ¶](#RTSPREQ_OPTIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2102)

```
RTSPREQ_OPTIONS :: 1
```

### [RTSPREQ\_PAUSE ¶](#RTSPREQ_PAUSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2107)

```
RTSPREQ_PAUSE :: 6
```

### [RTSPREQ\_PLAY ¶](#RTSPREQ_PLAY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2106)

```
RTSPREQ_PLAY :: 5
```

### [RTSPREQ\_RECEIVE ¶](#RTSPREQ_RECEIVE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2112)

```
RTSPREQ_RECEIVE :: 11
```

### [RTSPREQ\_RECORD ¶](#RTSPREQ_RECORD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2111)

```
RTSPREQ_RECORD :: 10
```

### [RTSPREQ\_SETUP ¶](#RTSPREQ_SETUP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2105)

```
RTSPREQ_SETUP :: 4
```

### [RTSPREQ\_SET\_PARAMETER ¶](#RTSPREQ_SET_PARAMETER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2110)

```
RTSPREQ_SET_PARAMETER :: 9
```

### [RTSPREQ\_TEARDOWN ¶](#RTSPREQ_TEARDOWN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2108)

```
RTSPREQ_TEARDOWN :: 7
```

### [SEEKFUNC\_CANTSEEK ¶](#SEEKFUNC_CANTSEEK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L372)

```
SEEKFUNC_CANTSEEK :: 2
```

 

tell libcurl seeking cannot be done, so
libcurl might try other means instead

### [SEEKFUNC\_FAIL ¶](#SEEKFUNC_FAIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L371)

```
SEEKFUNC_FAIL :: 1
```

 

fail the entire transfer

### [SEEKFUNC\_OK ¶](#SEEKFUNC_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L370)

```
SEEKFUNC_OK :: 0
```

 

These are the return codes for the seek callbacks

### [SOCKET\_BAD ¶](#SOCKET_BAD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L96)

```
SOCKET_BAD :: socket_t(-1)
```

### [SOCKET\_TIMEOUT ¶](#SOCKET_TIMEOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L235)

```
SOCKET_TIMEOUT: socket_t : SOCKET_BAD
```

### [SOCKOPT\_ALREADY\_CONNECTED ¶](#SOCKOPT_ALREADY_CONNECTED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L419)

```
SOCKOPT_ALREADY_CONNECTED :: 2
```

### [SOCKOPT\_ERROR ¶](#SOCKOPT_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L417)

```
SOCKOPT_ERROR :: 1
```

 

causes libcurl to abort and return
CURLE\_ABORTED\_BY\_CALLBACK

### [SOCKOPT\_OK ¶](#SOCKOPT_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L416)

```
SOCKOPT_OK :: 0
```

 

The return code from the sockopt\_callback can signal information back
to libcurl:

### [SSH\_AUTH\_AGENT ¶](#SSH_AUTH_AGENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L747)

```
SSH_AUTH_AGENT :: 1 << 4
```

 

agent (ssh-agent, pageant...)

### [SSH\_AUTH\_ANY ¶](#SSH_AUTH_ANY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L741)

```
SSH_AUTH_ANY: i32 : ~c.int(0)
```

 

all types supported by the server

### [SSH\_AUTH\_DEFAULT ¶](#SSH_AUTH_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L749)

```
SSH_AUTH_DEFAULT: i32 : SSH_AUTH_ANY
```

### [SSH\_AUTH\_GSSAPI ¶](#SSH_AUTH_GSSAPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L748)

```
SSH_AUTH_GSSAPI :: 1 << 5
```

 

gssapi (kerberos, ...)

### [SSH\_AUTH\_HOST ¶](#SSH_AUTH_HOST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L745)

```
SSH_AUTH_HOST :: 1 << 2
```

 

host key files

### [SSH\_AUTH\_KEYBOARD ¶](#SSH_AUTH_KEYBOARD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L746)

```
SSH_AUTH_KEYBOARD :: 1 << 3
```

 

keyboard interactive

### [SSH\_AUTH\_NONE ¶](#SSH_AUTH_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L742)

```
SSH_AUTH_NONE :: 0
```

 

none allowed, silly but complete

### [SSH\_AUTH\_PASSWORD ¶](#SSH_AUTH_PASSWORD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L744)

```
SSH_AUTH_PASSWORD :: 1 << 1
```

 

password

### [SSH\_AUTH\_PUBLICKEY ¶](#SSH_AUTH_PUBLICKEY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L743)

```
SSH_AUTH_PUBLICKEY :: 1 << 0
```

 

public/private key files

### [SSLOPT\_ALLOW\_BEAST ¶](#SSLOPT_ALLOW_BEAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L826)

```
SSLOPT_ALLOW_BEAST :: 1 << 0
```

 

ALLOW\_BEAST tells libcurl to allow the BEAST SSL vulnerability in the
name of improving interoperability with older servers. Some SSL libraries
have introduced work-arounds for this flaw but those work-arounds sometimes
make the SSL communication fail. To regain functionality with those broken
servers, a user can this way allow the vulnerability back.

### [SSLOPT\_AUTO\_CLIENT\_CERT ¶](#SSLOPT_AUTO_CLIENT_CERT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L857)

```
SSLOPT_AUTO_CLIENT_CERT :: 1 << 5
```

 

CURLSSLOPT\_AUTO\_CLIENT\_CERT tells libcurl to automatically locate and use
a client certificate for authentication. (Schannel)

### [SSLOPT\_EARLYDATA ¶](#SSLOPT_EARLYDATA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L860)

```
SSLOPT_EARLYDATA :: 1 << 6
```

 

If possible, send data using TLS 1.3 early data

### [SSLOPT\_NATIVE\_CA ¶](#SSLOPT_NATIVE_CA) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L851)

```
SSLOPT_NATIVE_CA :: 1 << 4
```

 

CURLSSLOPT\_NATIVE\_CA tells libcurl to use standard certificate store of
operating system. Currently implemented under MS-Windows.

### [SSLOPT\_NO\_PARTIALCHAIN ¶](#SSLOPT_NO_PARTIALCHAIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L838)

```
SSLOPT_NO_PARTIALCHAIN :: 1 << 2
```

 

NO\_PARTIALCHAIN tells libcurl to *NOT* accept a partial certificate chain
if possible. The OpenSSL backend has this ability.

### [SSLOPT\_NO\_REVOKE ¶](#SSLOPT_NO_REVOKE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L832)

```
SSLOPT_NO_REVOKE :: 1 << 1
```

 

NO\_REVOKE tells libcurl to disable certificate revocation checks for those
SSL backends where such behavior is present.

### [SSLOPT\_REVOKE\_BEST\_EFFORT ¶](#SSLOPT_REVOKE_BEST_EFFORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L845)

```
SSLOPT_REVOKE_BEST_EFFORT :: 1 << 3
```

 

REVOKE\_BEST\_EFFORT tells libcurl to ignore certificate revocation offline
checks and ignore missing revocation list for those SSL backends where such
behavior is present.

### [SSLVERSION\_DEFAULT ¶](#SSLVERSION_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2129)

```
SSLVERSION_DEFAULT :: 0
```

### [SSLVERSION\_LAST ¶](#SSLVERSION_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2138)

```
SSLVERSION_LAST :: 8
```

 

never use, keep last

### [SSLVERSION\_MAX\_DEFAULT ¶](#SSLVERSION_MAX_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2141)

```
SSLVERSION_MAX_DEFAULT :: SSLVERSION_TLSv1 << 16
```

### [SSLVERSION\_MAX\_LAST ¶](#SSLVERSION_MAX_LAST) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2148)

```
SSLVERSION_MAX_LAST :: SSLVERSION_LAST << 16
```

 

never use, keep last

### [SSLVERSION\_MAX\_NONE ¶](#SSLVERSION_MAX_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2140)

```
SSLVERSION_MAX_NONE :: 0
```

### [SSLVERSION\_MAX\_TLSv1\_0 ¶](#SSLVERSION_MAX_TLSv1_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2142)

```
SSLVERSION_MAX_TLSv1_0 :: SSLVERSION_TLSv1_0 << 16
```

### [SSLVERSION\_MAX\_TLSv1\_1 ¶](#SSLVERSION_MAX_TLSv1_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2143)

```
SSLVERSION_MAX_TLSv1_1 :: SSLVERSION_TLSv1_1 << 16
```

### [SSLVERSION\_MAX\_TLSv1\_2 ¶](#SSLVERSION_MAX_TLSv1_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2144)

```
SSLVERSION_MAX_TLSv1_2 :: SSLVERSION_TLSv1_2 << 16
```

### [SSLVERSION\_MAX\_TLSv1\_3 ¶](#SSLVERSION_MAX_TLSv1_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2145)

```
SSLVERSION_MAX_TLSv1_3 :: SSLVERSION_TLSv1_3 << 16
```

### [SSLVERSION\_SSLv2 ¶](#SSLVERSION_SSLv2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2131)

```
SSLVERSION_SSLv2 :: 2
```

### [SSLVERSION\_SSLv3 ¶](#SSLVERSION_SSLv3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2132)

```
SSLVERSION_SSLv3 :: 3
```

### [SSLVERSION\_TLSv1 ¶](#SSLVERSION_TLSv1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2130)

```
SSLVERSION_TLSv1 :: 1
```

 

TLS 1.x

### [SSLVERSION\_TLSv1\_0 ¶](#SSLVERSION_TLSv1_0) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2133)

```
SSLVERSION_TLSv1_0 :: 4
```

### [SSLVERSION\_TLSv1\_1 ¶](#SSLVERSION_TLSv1_1) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2134)

```
SSLVERSION_TLSv1_1 :: 5
```

### [SSLVERSION\_TLSv1\_2 ¶](#SSLVERSION_TLSv1_2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2135)

```
SSLVERSION_TLSv1_2 :: 6
```

### [SSLVERSION\_TLSv1\_3 ¶](#SSLVERSION_TLSv1_3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2136)

```
SSLVERSION_TLSv1_3 :: 7
```

### [TIMECOND\_IFMODSINCE ¶](#TIMECOND_IFMODSINCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2174)

```
TIMECOND_IFMODSINCE :: 1
```

### [TIMECOND\_IFUNMODSINCE ¶](#TIMECOND_IFUNMODSINCE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2175)

```
TIMECOND_IFUNMODSINCE :: 2
```

### [TIMECOND\_LASTMOD ¶](#TIMECOND_LASTMOD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2176)

```
TIMECOND_LASTMOD :: 3
```

### [TIMECOND\_NONE ¶](#TIMECOND_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2173)

```
TIMECOND_NONE :: 0
```

### [TIMESTAMP ¶](#TIMESTAMP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L82)

```
TIMESTAMP :: "2025-11-05"
```

 

\* This is the date and time when the full source package was created. The
\* timestamp is not stored in git, as the timestamp is properly set in the
\* tarballs by the maketgz script.
\*
\* The format of the date follows this template:
\*
\* "2007-11-23"

### [TLSAUTH\_NONE ¶](#TLSAUTH_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2150)

```
TLSAUTH_NONE :: 0
```

### [TLSAUTH\_SRP ¶](#TLSAUTH_SRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2151)

```
TLSAUTH_SRP :: 1
```

### [TRAILERFUNC\_ABORT ¶](#TRAILERFUNC_ABORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L396)

```
TRAILERFUNC_ABORT :: 1
```

 

Return code for when was an error in the trailing header's list and we
want to abort the request

### [TRAILERFUNC\_OK ¶](#TRAILERFUNC_OK) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L391)

```
TRAILERFUNC_OK :: 0
```

 

Return code for when the trailing headers' callback has terminated without any errors

### [ULFLAG\_ANSWERED ¶](#ULFLAG_ANSWERED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L915)

```
ULFLAG_ANSWERED :: 1 << 0
```

 

bitmask values for CURLOPT\_UPLOAD\_FLAGS

### [ULFLAG\_DELETED ¶](#ULFLAG_DELETED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L916)

```
ULFLAG_DELETED :: 1 << 1
```

### [ULFLAG\_DRAFT ¶](#ULFLAG_DRAFT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L917)

```
ULFLAG_DRAFT :: 1 << 2
```

### [ULFLAG\_FLAGGED ¶](#ULFLAG_FLAGGED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L918)

```
ULFLAG_FLAGGED :: 1 << 3
```

### [ULFLAG\_SEEN ¶](#ULFLAG_SEEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L919)

```
ULFLAG_SEEN :: 1 << 4
```

### [UPKEEP\_INTERVAL\_DEFAULT ¶](#UPKEEP_INTERVAL_DEFAULT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L870)

```
UPKEEP_INTERVAL_DEFAULT :: 60000
```

 

The default connection upkeep interval in milliseconds.

### [USESSL\_ALL ¶](#USESSL_ALL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L812)

```
USESSL_ALL :: 3
```

 

SSL for all communication or fail

### [USESSL\_CONTROL ¶](#USESSL_CONTROL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L811)

```
USESSL_CONTROL :: 2
```

 

SSL for the control connection or fail

### [USESSL\_NONE ¶](#USESSL_NONE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L809)

```
USESSL_NONE :: 0
```

 

parameter for the CURLOPT\_USE\_SSL option

### [USESSL\_TRY ¶](#USESSL_TRY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L810)

```
USESSL_TRY :: 1
```

 

try using SSL, proceed anyway otherwise

### [U\_ALLOW\_SPACE ¶](#U_ALLOW_SPACE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L94)

```
U_ALLOW_SPACE :: UFlags{.ALLOW_SPACE}
```

### [U\_APPENDQUERY ¶](#U_APPENDQUERY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L91)

```
U_APPENDQUERY :: UFlags{.APPENDQUERY}
```

### [U\_DEFAULT\_PORT ¶](#U_DEFAULT_PORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L83)

```
U_DEFAULT_PORT :: UFlags{.DEFAULT_PORT}
```

### [U\_DEFAULT\_SCHEME ¶](#U_DEFAULT_SCHEME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L85)

```
U_DEFAULT_SCHEME :: UFlags{.DEFAULT_SCHEME}
```

### [U\_DISALLOW\_USER ¶](#U_DISALLOW_USER) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L88)

```
U_DISALLOW_USER :: UFlags{.DISALLOW_USER}
```

### [U\_GET\_EMPTY ¶](#U_GET_EMPTY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L97)

```
U_GET_EMPTY :: UFlags{.GET_EMPTY}
```

### [U\_GUESS\_SCHEME ¶](#U_GUESS_SCHEME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L92)

```
U_GUESS_SCHEME :: UFlags{.GUESS_SCHEME}
```

### [U\_NON\_SUPPORT\_SCHEME ¶](#U_NON_SUPPORT_SCHEME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L86)

```
U_NON_SUPPORT_SCHEME :: UFlags{.NON_SUPPORT_SCHEME}
```

### [U\_NO\_AUTHORITY ¶](#U_NO_AUTHORITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L93)

```
U_NO_AUTHORITY :: UFlags{.NO_AUTHORITY}
```

### [U\_NO\_DEFAULT\_PORT ¶](#U_NO_DEFAULT_PORT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L84)

```
U_NO_DEFAULT_PORT :: UFlags{.NO_DEFAULT_PORT}
```

### [U\_NO\_GUESS\_SCHEME ¶](#U_NO_GUESS_SCHEME) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L98)

```
U_NO_GUESS_SCHEME :: UFlags{.NO_GUESS_SCHEME}
```

### [U\_PATH\_AS\_IS ¶](#U_PATH_AS_IS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L87)

```
U_PATH_AS_IS :: UFlags{.PATH_AS_IS}
```

### [U\_PUNY2IDN ¶](#U_PUNY2IDN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L96)

```
U_PUNY2IDN :: UFlags{.PUNY2IDN}
```

### [U\_PUNYCODE ¶](#U_PUNYCODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L95)

```
U_PUNYCODE :: UFlags{.PUNYCODE}
```

### [U\_URLDECODE ¶](#U_URLDECODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L89)

```
U_URLDECODE :: UFlags{.URLDECODE}
```

### [U\_URLENCODE ¶](#U_URLENCODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L90)

```
U_URLENCODE :: UFlags{.URLENCODE}
```

### [VERSION ¶](#VERSION) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L44)

```
VERSION :: "8.17.0"
```

 

This is the version number of the libcurl package from which this header file origins:

### [VERSION\_ALTSVC ¶](#VERSION_ALTSVC) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2829)

```
VERSION_ALTSVC :: 1 << 24
```

 

Alt-Svc handling built-in

### [VERSION\_ASYNCHDNS ¶](#VERSION_ASYNCHDNS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2812)

```
VERSION_ASYNCHDNS :: 1 << 7
```

 

Asynchronous DNS resolves

### [VERSION\_BROTLI ¶](#VERSION_BROTLI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2828)

```
VERSION_BROTLI :: 1 << 23
```

 

Brotli features are present.

### [VERSION\_CONV ¶](#VERSION_CONV) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2817)

```
VERSION_CONV :: 1 << 12
```

 

Character conversions supported

### [VERSION\_CURLDEBUG ¶](#VERSION_CURLDEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2818)

```
VERSION_CURLDEBUG :: 1 << 13
```

 

Debug memory tracking supported

### [VERSION\_DEBUG ¶](#VERSION_DEBUG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2811)

```
VERSION_DEBUG :: 1 << 6
```

 

Built with debug capabilities

### [VERSION\_GSASL ¶](#VERSION_GSASL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2834)

```
VERSION_GSASL :: 1 << 29
```

 

libgsasl is supported

### [VERSION\_GSSAPI ¶](#VERSION_GSSAPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2822)

```
VERSION_GSSAPI :: 1 << 17
```

 

Built against a GSS-API library

### [VERSION\_GSSNEGOTIATE ¶](#VERSION_GSSNEGOTIATE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2810)

```
VERSION_GSSNEGOTIATE :: 1 << 5
```

 

Negotiate auth is supported (deprecated)

### [VERSION\_HSTS ¶](#VERSION_HSTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2833)

```
VERSION_HSTS :: 1 << 28
```

 

HSTS is supported

### [VERSION\_HTTP2 ¶](#VERSION_HTTP2) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2821)

```
VERSION_HTTP2 :: 1 << 16
```

 

HTTP2 support built-in

### [VERSION\_HTTP3 ¶](#VERSION_HTTP3) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2830)

```
VERSION_HTTP3 :: 1 << 25
```

 

HTTP3 support built-in

### [VERSION\_HTTPS\_PROXY ¶](#VERSION_HTTPS_PROXY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2826)

```
VERSION_HTTPS_PROXY :: 1 << 21
```

 

HTTPS-proxy support built-in

### [VERSION\_IDN ¶](#VERSION_IDN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2815)

```
VERSION_IDN :: 1 << 10
```

 

Internationized Domain Names are supported

### [VERSION\_IPV6 ¶](#VERSION_IPV6) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2805)

```
VERSION_IPV6 :: 1 << 0
```

 

IPv6-enabled

### [VERSION\_KERBEROS4 ¶](#VERSION_KERBEROS4) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2806)

```
VERSION_KERBEROS4 :: 1 << 1
```

 

Kerberos V4 auth is supported (deprecated)

### [VERSION\_KERBEROS5 ¶](#VERSION_KERBEROS5) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2823)

```
VERSION_KERBEROS5 :: 1 << 18
```

 

Kerberos V5 auth is supported

### [VERSION\_LARGEFILE ¶](#VERSION_LARGEFILE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2814)

```
VERSION_LARGEFILE :: 1 << 9
```

 

Supports files larger than 2GB

### [VERSION\_LIBZ ¶](#VERSION_LIBZ) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2808)

```
VERSION_LIBZ :: 1 << 3
```

 

libz features are present

### [VERSION\_MAJOR ¶](#VERSION_MAJOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L47)

```
VERSION_MAJOR :: 8
```

 

The numeric version number is also available "in parts" by using these defines:

### [VERSION\_MINOR ¶](#VERSION_MINOR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L48)

```
VERSION_MINOR :: 17
```

### [VERSION\_MULTI\_SSL ¶](#VERSION_MULTI_SSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2827)

```
VERSION_MULTI_SSL :: 1 << 22
```

 

Multiple SSL backends available

### [VERSION\_NOW ¶](#VERSION_NOW) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2740)

```
VERSION_NOW :: version_enum.TWELFTH
```

 

The 'CURLVERSION\_NOW' is the symbolic name meant to be used by
basically all programs ever that want to get version information. It is
meant to be a built-in version number for what kind of struct the caller
expects. If the struct ever changes, we redefine the NOW to another enum
from above.

### [VERSION\_NTLM ¶](#VERSION_NTLM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2809)

```
VERSION_NTLM :: 1 << 4
```

 

NTLM auth is supported

### [VERSION\_NTLM\_WB ¶](#VERSION_NTLM_WB) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2820)

```
VERSION_NTLM_WB :: 1 << 15
```

 

NTLM delegation to winbind helper is supported

### [VERSION\_NUM ¶](#VERSION_NUM) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L71)

```
VERSION_NUM :: 0x081100
```

 

This is the numeric version of the libcurl version number, meant for easier
parsing and comparisons by programs. The LIBCURL\_VERSION\_NUM define will
always follow this syntax:

```
0xXXYYZZ
```

Where XX, YY and ZZ are the main version, release and patch numbers in
hexadecimal (using 8 bits each). All three numbers are always represented
using two digits. 1.2 would appear as "0x010200" while version 9.11.7
appears as "0x090b07".

This 6-digit (24 bits) hexadecimal number does not show pre-release number,
and it is always a greater number in a more recent release. It makes
comparisons with greater than and less than work.

Note: This define is the full hex number and \_does not\_ use the
CURL\_VERSION\_BITS() macro since curl's own configure script greps for it
and needs it to contain the full number.

### [VERSION\_PATCH ¶](#VERSION_PATCH) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L49)

```
VERSION_PATCH :: 0
```

### [VERSION\_PSL ¶](#VERSION_PSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2825)

```
VERSION_PSL :: 1 << 20
```

 

Mozilla's Public Suffix List, used for cookie domain verification

### [VERSION\_SPNEGO ¶](#VERSION_SPNEGO) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2813)

```
VERSION_SPNEGO :: 1 << 8
```

 

SPNEGO auth is supported

### [VERSION\_SSL ¶](#VERSION_SSL) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2807)

```
VERSION_SSL :: 1 << 2
```

 

SSL options are present

### [VERSION\_SSPI ¶](#VERSION_SSPI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2816)

```
VERSION_SSPI :: 1 << 11
```

 

Built against Windows SSPI

### [VERSION\_THREADSAFE ¶](#VERSION_THREADSAFE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2835)

```
VERSION_THREADSAFE :: 1 << 30
```

 

libcurl API is thread-safe

### [VERSION\_TLSAUTH\_SRP ¶](#VERSION_TLSAUTH_SRP) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2819)

```
VERSION_TLSAUTH_SRP :: 1 << 14
```

 

TLS-SRP auth is supported

### [VERSION\_UNICODE ¶](#VERSION_UNICODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2832)

```
VERSION_UNICODE :: 1 << 27
```

 

Unicode support on Windows

### [VERSION\_UNIX\_SOCKETS ¶](#VERSION_UNIX_SOCKETS) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2824)

```
VERSION_UNIX_SOCKETS :: 1 << 19
```

 

Unix domain sockets support

### [VERSION\_ZSTD ¶](#VERSION_ZSTD) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2831)

```
VERSION_ZSTD :: 1 << 26
```

 

zstd features are present

### [WAIT\_POLLIN ¶](#WAIT_POLLIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L54)

```
WAIT_POLLIN :: 0x0001
```

 

Based on poll(2) structure and values.
 *We do not use pollfd and POLL* constants explicitly
\* to cover platforms without poll().

### [WAIT\_POLLOUT ¶](#WAIT_POLLOUT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L56)

```
WAIT_POLLOUT :: 0x0004
```

### [WAIT\_POLLPRI ¶](#WAIT_POLLPRI) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L55)

```
WAIT_POLLPRI :: 0x0002
```

### [WRITEFUNC\_ERROR ¶](#WRITEFUNC_ERROR) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L249)

```
WRITEFUNC_ERROR :: 0xFFFFFFFF
```

 

This is a magic return code for the write callback that, when returned,
will signal an error from the callback.

### [WRITEFUNC\_PAUSE ¶](#WRITEFUNC_PAUSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L243)

```
WRITEFUNC_PAUSE :: 0x10000001
```

 

This is a magic return code for the write callback that, when returned,
will signal libcurl to pause receiving on the current transfer.

### [WS\_BINARY ¶](#WS_BINARY) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L29)

```
WS_BINARY :: ws_flags{.BINARY}
```

### [WS\_CLOSE ¶](#WS_CLOSE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L31)

```
WS_CLOSE :: ws_flags{.CLOSE}
```

### [WS\_CONT ¶](#WS_CONT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L30)

```
WS_CONT :: ws_flags{.CONT}
```

### [WS\_NOAUTOPONG ¶](#WS_NOAUTOPONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L38)

```
WS_NOAUTOPONG :: 1 << 1
```

### [WS\_OFFSET ¶](#WS_OFFSET) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L33)

```
WS_OFFSET :: ws_flags{.OFFSET}
```

### [WS\_PING ¶](#WS_PING) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L32)

```
WS_PING :: ws_flags{.PING}
```

### [WS\_PONG ¶](#WS_PONG) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L34)

```
WS_PONG :: ws_flags{.PONG}
```

### [WS\_RAW\_MODE ¶](#WS_RAW_MODE) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L37)

```
WS_RAW_MODE :: 1 << 0
```

 

bits for the CURLOPT\_WS\_OPTIONS bitmask:

### [WS\_TEXT ¶](#WS_TEXT) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L28)

```
WS_TEXT :: ws_flags{.TEXT}
```

### [ZERO\_TERMINATED ¶](#ZERO_TERMINATED) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2188)

```
ZERO_TERMINATED: uint : ~c.size_t(0)
```

 

Special size\_t value signaling a null-terminated string.

## Variables

This section is empty.

## Procedures

### [easy\_cleanup ¶](#easy_cleanup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L26)

```
easy_cleanup :: proc "c" (curl: ^CURL) ---
```

### [easy\_duphandle ¶](#easy_duphandle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L57)

```
easy_duphandle :: proc "c" (curl: ^CURL) -> ^CURL ---
```

 

\* NAME curl\_easy\_duphandle()
\*
\* DESCRIPTION
\*
\* Creates a new curl session handle with the same options set for the handle
\* passed in. Duplicating a handle could only be a matter of cloning data and
\* options, internal state info and things like persistent connections cannot
\* be transferred. It is useful in multithreaded applications when you can run
\* curl\_easy\_duphandle() for each new thread to avoid a series of identical
\* curl\_easy\_setopt() invokes in every thread.

### [easy\_escape ¶](#easy_escape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2362)

```
easy_escape :: proc "c" (handle: ^CURL, string: cstring, length: i32) -> cstring ---
```

 

\* NAME curl\_easy\_escape()
\*
\* DESCRIPTION
\*
\* Escapes URL strings (converts all letters consider illegal in URLs to their
\* %XX versions). This function returns a new allocated string or NULL if an
\* error occurred.

### [easy\_getinfo ¶](#easy_getinfo) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L42)

```
easy_getinfo :: proc "c" (curl: ^CURL, info: INFO, .. args: ..any) -> code ---
```

 

\* NAME curl\_easy\_getinfo()
\*
\* DESCRIPTION
\*
\* Request internal information from the curl session with this function.
\* The third argument MUST be pointing to the specific type of the used option
\* which is documented in each manpage of the option. The data pointed to
\* will be filled in accordingly and can be relied upon only if the function
 *returns CURLE\_OK. This function is intended to get used* AFTER\* a performed
\* transfer, all results from this function are undefined until the transfer
\* is completed.

### [easy\_header ¶](#easy_header) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L44)

```
easy_header :: proc "c" (
	easy:    ^CURL, 
	name:    cstring, 
	index:   uint, 
	origin:  u32, 
	request: i32, 
	hout:    ^^header, 
) -> Hcode ---
```

### [easy\_init ¶](#easy_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L23)

```
easy_init :: proc "c" () -> ^CURL ---
```

### [easy\_nextheader ¶](#easy_nextheader) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin#L51)

```
easy_nextheader :: proc "c" (easy: ^CURL, origin: u32, request: i32, prev: ^header) -> ^header ---
```

### [easy\_option\_by\_id ¶](#easy_option_by_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin#L39)

```
easy_option_by_id :: proc "c" (id: option) -> ^easyoption ---
```

### [easy\_option\_by\_name ¶](#easy_option_by_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin#L38)

```
easy_option_by_name :: proc "c" (name: cstring) -> ^easyoption ---
```

### [easy\_option\_next ¶](#easy_option_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin#L40)

```
easy_option_next :: proc "c" (prev: ^easyoption) -> ^easyoption ---
```

### [easy\_pause ¶](#easy_pause) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2903)

```
easy_pause :: proc "c" (handle: ^CURL, bitmask: u32) -> code ---
```

 

\* NAME curl\_easy\_pause()
\*
\* DESCRIPTION
\*
\* The curl\_easy\_pause function pauses or unpauses transfers. Select the new
\* state by setting the bitmask, use the convenience defines below.
\*

### [easy\_perform ¶](#easy_perform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L25)

```
easy_perform :: proc "c" (curl: ^CURL) -> code ---
```

### [easy\_recv ¶](#easy_recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L80)

```
easy_recv :: proc "c" (curl: ^CURL, buffer: rawptr, buflen: uint, n: ^uint) -> code ---
```

 

\* NAME curl\_easy\_recv()
\*
\* DESCRIPTION
\*
\* Receives data from the connected socket. Use after successful
\* curl\_easy\_perform() with CURLOPT\_CONNECT\_ONLY option.

### [easy\_reset ¶](#easy_reset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L70)

```
easy_reset :: proc "c" (curl: ^CURL) ---
```

 

\* NAME curl\_easy\_reset()
\*
\* DESCRIPTION
\*
\* Re-initializes a curl handle to the default values. This puts back the
\* handle to the same state as it was in when it was just created.
\*
\* It does keep: live connections, the Session ID cache, the DNS cache and the
\* cookies.

### [easy\_send ¶](#easy_send) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L90)

```
easy_send :: proc "c" (curl: ^CURL, buffer: rawptr, buflen: uint, n: ^uint) -> code ---
```

 

\* NAME curl\_easy\_send()
\*
\* DESCRIPTION
\*
\* Sends data over the connected socket. Use after successful
\* curl\_easy\_perform() with CURLOPT\_CONNECT\_ONLY option.

### [easy\_setopt ¶](#easy_setopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L24)

```
easy_setopt :: proc "c" (curl: ^CURL, option: option, .. args: ..any) -> code ---
```

### [easy\_ssls\_export ¶](#easy_ssls_export) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2930)

```
easy_ssls_export :: proc "c" (handle: ^CURL, export_fn: ssls_export_cb, userptr: rawptr) -> code ---
```

 

\* NAME curl\_easy\_ssls\_export()
\*
\* DESCRIPTION
\*
\* The curl\_easy\_ssls\_export function iterates over all SSL sessions stored
\* in the easy handle (or underlying share) and invokes the passed
\* callback.
\*

### [easy\_ssls\_import ¶](#easy_ssls_import) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2913)

```
easy_ssls_import :: proc "c" (
	handle:      ^CURL, 
	session_key: cstring, 
	shmac:       [^]u8, 
	shmac_len:   uint, 
	sdata:       [^]u8, 
	sdata_len:   uint, 
) -> code ---
```

 

\* NAME curl\_easy\_ssls\_import()
\*
\* DESCRIPTION
\*
\* The curl\_easy\_ssls\_import function adds a previously exported SSL session
\* to the SSL session cache of the easy handle (or the underlying share).

### [easy\_strerror ¶](#easy_strerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2881)

```
easy_strerror :: proc "c" (code) -> cstring ---
```

 

\* NAME curl\_easy\_strerror()
\*
\* DESCRIPTION
\*
\* The curl\_easy\_strerror function may be used to turn a CURLcode value
\* into the equivalent human readable error string. This is useful
\* for printing meaningful error messages.

### [easy\_unescape ¶](#easy_unescape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2379)

```
easy_unescape :: proc "c" (handle: ^CURL, string: cstring, length: i32, outlength: ^i32) -> cstring ---
```

 

\* NAME curl\_easy\_unescape()
\*
\* DESCRIPTION
\*
\* Unescapes URL encoding in strings (converts all %XX codes to their 8bit
\* versions). This function returns a new allocated string or NULL if an error
\* occurred.
\* Conversion Note: On non-ASCII platforms the ASCII %XX codes are
\* converted into the host encoding.

### [easy\_upkeep ¶](#easy_upkeep) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin#L100)

```
easy_upkeep :: proc "c" (curl: ^CURL) -> code ---
```

 

\* NAME curl\_easy\_upkeep()
\*
\* DESCRIPTION
\*
\* Performs connection upkeep for the given session handle.

### [escape ¶](#escape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2365)

```
escape :: proc "c" (string: cstring, length: i32) -> cstring ---
```

 

the previous version:

### [free ¶](#free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2395)

```
free :: proc "c" (p: rawptr) ---
```

 

\* NAME curl\_free()
\*
\* DESCRIPTION
\*
\* Provided for de-allocation in the same translation unit that did the
\* allocation. Added in libcurl 7.10

### [getdate ¶](#getdate) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2525)

```
getdate :: proc "c" (p: cstring, unused: ^libc.time_t) -> libc.time_t ---
```

 

\* NAME curl\_getdate()
\*
\* DESCRIPTION
\*
\* Returns the time, in seconds since 1 Jan 1970 of the time string given in
\* the first argument. The time argument in the second parameter is unused
\* and should be set to NULL.

### [getenv ¶](#getenv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2342)

```
getenv :: proc "c" (variable: cstring) -> cstring ---
```

 

\* NAME curl\_getenv()
\*
\* DESCRIPTION
\*
\* Returns a malloc()'ed string that MUST be curl\_free()ed after usage is
\* complete. DEPRECATED - see lib/README.curlx

### [global\_cleanup ¶](#global_cleanup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2439)

```
global_cleanup :: proc "c" () ---
```

 

\* NAME curl\_global\_cleanup()
\*
\* DESCRIPTION
\*
\* curl\_global\_cleanup() should be invoked exactly once for each application
\* that uses libcurl

### [global\_init ¶](#global_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2409)

```
global_init :: proc "c" (flags: i32) -> code ---
```

 

\* NAME curl\_global\_init()
\*
\* DESCRIPTION
\*
\* curl\_global\_init() should be invoked exactly once for each application that
\* uses libcurl and before any call of other libcurl functions.

\* This function is thread-safe if CURL\_VERSION\_THREADSAFE is set in the
\* curl\_version\_info\_data.features flag (fetch by curl\_version\_info()).

### [global\_init\_mem ¶](#global_init_mem) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2424)

```
global_init_mem :: proc "c" (
	flags: i32, 
	m:     malloc_callback, 
	f:     free_callback, 
	r:     realloc_callback, 
	s:     strdup_callback, 
	c:     calloc_callback, 
) -> code ---
```

 

\* NAME curl\_global\_init\_mem()
\*
\* DESCRIPTION
\*
\* curl\_global\_init() or curl\_global\_init\_mem() should be invoked exactly once
\* for each application that uses libcurl. This function can be used to
\* initialize libcurl and set user defined memory management callback
\* functions. Users can implement memory management routines to check for
\* memory leaks, check for mis-use of the curl library etc. User registered
\* callback routines will be invoked by this library instead of the system
\* memory management routines like malloc, free etc.

### [global\_sslset ¶](#global_sslset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2495)

```
global_sslset :: proc "c" (id: sslbackend, name: cstring, avail: ^^^ssl_backend) -> sslset ---
```

### [global\_trace ¶](#global_trace) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2453)

```
global_trace :: proc "c" (config: cstring) -> code ---
```

 

\* NAME curl\_global\_trace()
\*
\* DESCRIPTION
\*
\* curl\_global\_trace() can be invoked at application start to
\* configure which components in curl should participate in tracing.

\* This function is thread-safe if CURL\_VERSION\_THREADSAFE is set in the
\* curl\_version\_info\_data.features flag (fetch by curl\_version\_info()).

### [mime\_addpart ¶](#mime_addpart) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2234)

```
mime_addpart :: proc "c" (mime: ^mime) -> ^mimepart ---
```

 

\* NAME curl\_mime\_addpart()
\*
\* DESCRIPTION
\*
\* Append a new empty part to the given mime context and return a handle to
\* the created part.

### [mime\_data ¶](#mime_data) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2279)

```
mime_data :: proc "c" (part: ^mimepart, data: [^]u8, datasize: uint) -> code ---
```

 

\* NAME curl\_mime\_data()
\*
\* DESCRIPTION
\*
\* Set mime part data source from memory data,

### [mime\_data\_cb ¶](#mime_data_cb) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2297)

```
mime_data_cb :: proc "c" (
	part:     ^mimepart, 
	datasize: i64, 
	readfunc: read_callback, 
	seekfunc: seek_callback, 
	freefunc: free_callback, 
	arg:      rawptr, 
) -> code ---
```

 

\* NAME curl\_mime\_data\_cb()
\*
\* DESCRIPTION
\*
\* Set mime part data source from callback function.

### [mime\_encoder ¶](#mime_encoder) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2270)

```
mime_encoder :: proc "c" (part: ^mimepart, encoding: cstring) -> code ---
```

 

\* NAME curl\_mime\_encoder()
\*
\* DESCRIPTION
\*
\* Set mime data transfer encoder.

### [mime\_filedata ¶](#mime_filedata) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2288)

```
mime_filedata :: proc "c" (part: ^mimepart, filename: rawptr) -> code ---
```

 

\* NAME curl\_mime\_filedata()
\*
\* DESCRIPTION
\*
\* Set mime part data source from named file.

### [mime\_filename ¶](#mime_filename) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2252)

```
mime_filename :: proc "c" (part: ^mimepart, filename: cstring) -> code ---
```

 

\* NAME curl\_mime\_filename()
\*
\* DESCRIPTION
\*
\* Set mime part remote filename.

### [mime\_free ¶](#mime_free) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2224)

```
mime_free :: proc "c" (mime: ^mime) ---
```

 

\* NAME curl\_mime\_free()
\*
\* DESCRIPTION
\*
\* release a mime handle and its substructures.

### [mime\_headers ¶](#mime_headers) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2318)

```
mime_headers :: proc "c" (part: ^mimepart, headers: ^slist, take_ownership: i32) -> code ---
```

 

\* NAME curl\_mime\_headers()
\*
\* DESCRIPTION
\*
\* Set mime part headers.

### [mime\_init ¶](#mime_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2215)

```
mime_init :: proc "c" (easy: ^CURL) -> ^mime ---
```

 

\* NAME curl\_mime\_init()
\*
\* DESCRIPTION
\*
\* Create a mime context and return its handle. The easy parameter is the
\* target handle.

### [mime\_name ¶](#mime_name) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2243)

```
mime_name :: proc "c" (part: ^mimepart, name: cstring) -> code ---
```

 

\* NAME curl\_mime\_name()
\*
\* DESCRIPTION
\*
\* Set mime/form part name.

### [mime\_subparts ¶](#mime_subparts) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2310)

```
mime_subparts :: proc "c" (part: ^mimepart, subparts: ^mime) -> code ---
```

 

\* NAME curl\_mime\_subparts()
\*
\* DESCRIPTION
\*
\* Set mime part data source from subparts.

### [mime\_type ¶](#mime_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2261)

```
mime_type :: proc "c" (part: ^mimepart, mimetype: cstring) -> code ---
```

 

\* NAME curl\_mime\_type()
\*
\* DESCRIPTION
\*
\* Set mime part type.

### [multi\_add\_handle ¶](#multi_add_handle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L83)

```
multi_add_handle :: proc "c" (multi_handle: ^CURLM, curl_handle: ^CURL) -> Mcode ---
```

 

\* Name: curl\_multi\_add\_handle()
\*
\* Desc: add a standard curl handle to the multi stack
\*
\* Returns: CURLMcode type, general multi error code.

### [multi\_assign ¶](#multi_assign) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L401)

```
multi_assign :: proc "c" (multi_handle: ^CURLM, sockfd: socket_t, sockp: rawptr) -> Mcode ---
```

 

\* Name: curl\_multi\_assign()
\*
\* Desc: This function sets an association in the multi handle between the
\* given socket and a private pointer of the application. This is
\* (only) useful for curl\_multi\_socket uses.
\*
\* Returns: CURLM error code.

### [multi\_cleanup ¶](#multi_cleanup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L174)

```
multi_cleanup :: proc "c" (multi_handle: ^CURLM) -> Mcode ---
```

 

\* Name: curl\_multi\_cleanup()
\*
\* Desc: Cleans up and removes a whole multi stack. It does not free or
\* touch any individual easy handles in any way. We need to define
\* in what state those handles will be if this function is called
\* in the middle of a transfer.
\*
\* Returns: CURLMcode type, general multi error code.

### [multi\_fdset ¶](#multi_fdset) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L103)

```
multi_fdset :: proc "c" (multi_handle: ^CURLM, read_fd_set: ^sys_windows.fd_set, write_fd_set: ^sys_windows.fd_set, exc_fd_set: ^sys_windows.fd_set, max_fd: ^i32) -> Mcode ---
```

 

\* Name: curl\_multi\_fdset()
\*
\* Desc: Ask curl for its fd\_set sets. The app can use these to select() or
\* poll() on. We want curl\_multi\_perform() called as soon as one of
\* them are ready.
\*
\* Returns: CURLMcode type, general multi error code.

### [multi\_get\_handles ¶](#multi_get_handles) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L413)

```
multi_get_handles :: proc "c" (multi_handle: ^CURLM) -> [^]^CURL ---
```

 

\* Name: curl\_multi\_get\_handles()
\*
\* Desc: Returns an allocated array holding all handles currently added to
\* the multi handle. Marks the final entry with a NULL pointer. If
\* there is no easy handle added to the multi handle, this function
\* returns an array with the first entry as a NULL pointer.
\*
 *Returns: NULL on failure, otherwise a CURL* \*array pointer

### [multi\_get\_offt ¶](#multi_get_offt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L422)

```
multi_get_offt :: proc "c" (multi_handle: ^CURLM, info: Minfo, value: ^i64) -> Mcode ---
```

 

\* Name: curl\_multi\_get\_offt()
\*
 *Desc: Retrieves a numeric value for the `CURLMINFO\_*` enums.
\*
\* Returns: CULRM\_OK or error when value could not be obtained.

### [multi\_info\_read ¶](#multi_info_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L204)

```
multi_info_read :: proc "c" (multi_handle: ^CURLM, msgs_in_queue: ^i32) -> ^Msg ---
```

 

\* Name: curl\_multi\_info\_read()
\*
\* Desc: Ask the multi handle if there is any messages/informationals from
\* the individual transfers. Messages include informationals such as
\* error code from the transfer or just the fact that a transfer is
\* completed. More details on these should be written down as well.
\*
\* Repeated calls to this function will return a new struct each
\* time, until a special "end of msgs" struct is returned as a signal
\* that there is no more to get at this point.
\*
\* The data the returned pointer points to will not survive calling
\* curl\_multi\_cleanup().
\*
\* The 'CURLMsg' struct is meant to be simple and only contain basic
\* information. If more involved information is wanted, we will
\* provide the particular "transfer handle" in that struct and that
\* should/could/would be used in subsequent curl\_easy\_getinfo() calls
\* (or similar). The point being that we must never expose complex
\* structs to applications, as then we will undoubtably get backwards
\* compatibility problems in the future.
\*
\* Returns: A pointer to a filled-in struct, or NULL if it failed or ran out
\* of structs. It also writes the number of messages left in the
\* queue (after this read) in the integer the second argument points
\* to.

### [multi\_init ¶](#multi_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L74)

```
multi_init :: proc "c" () -> ^CURLM ---
```

 

\* Name: curl\_multi\_init()
\*
\* Desc: initialize multi-style curl usage
\*
\* Returns: a new CURLM handle to use in all 'curl\_multi' functions.

### [multi\_notify\_disable ¶](#multi_notify_disable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L441)

```
multi_notify_disable :: proc "c" (multi: ^CURLM, notification: MULTI_NOTIFY) -> Mcode ---
```

### [multi\_notify\_enable ¶](#multi_notify_enable) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L442)

```
multi_notify_enable :: proc "c" (multi: ^CURLM, notification: MULTI_NOTIFY) -> Mcode ---
```

### [multi\_perform ¶](#multi_perform) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L162)

```
multi_perform :: proc "c" (multi_handle: ^CURLM, running_handles: ^i32) -> Mcode ---
```

 

\* Name: curl\_multi\_perform()
\*
\* Desc: When the app thinks there is data available for curl it calls this
\* function to read/write whatever there is right now. This returns
\* as soon as the reads and writes are done. This function does not
\* require that there actually is data available for reading or that
\* data can be written, it can be called just in case. It returns
\* the number of handles that still transfer data in the second
\* argument's integer-pointer.
\*
 *Returns: CURLMcode type, general multi error code.* NOTE\* that this only
\* returns errors etc regarding the whole multi stack. There might
\* still have occurred problems on individual transfers even when
\* this returns OK.

### [multi\_poll ¶](#multi_poll) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L131)

```
multi_poll :: proc "c" (multi_handle: ^CURLM, extra_fds: [^]waitfd, extra_nfds: u32, timeout_ms: i32, ret: ^i32) -> Mcode ---
```

 

\* Name: curl\_multi\_poll()
\*
\* Desc: Poll on all fds within a CURLM set as well as any
\* additional fds passed to the function.
\*
\* Returns: CURLMcode type, general multi error code.

### [multi\_remove\_handle ¶](#multi_remove_handle) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L92)

```
multi_remove_handle :: proc "c" (multi_handle: ^CURLM, curl_handle: ^CURL) -> Mcode ---
```

 

\* Name: curl\_multi\_remove\_handle()
\*
\* Desc: removes a curl handle from the multi stack again
\*
\* Returns: CURLMcode type, general multi error code.

### [multi\_setopt ¶](#multi_setopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L389)

```
multi_setopt :: proc "c" (multi_handle: ^CURLM, option: Moption, .. args: ..any) -> Mcode ---
```

 

\* Name: curl\_multi\_setopt()
\*
\* Desc: Sets options for the multi handle.
\*
\* Returns: CURLM error code.

### [multi\_socket\_action ¶](#multi_socket_action) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L266)

```
multi_socket_action :: proc "c" (multi_handle: ^CURLM, s: socket_t, ev_bitmask: i32, running_handles: ^i32) -> Mcode ---
```

### [multi\_strerror ¶](#multi_strerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L215)

```
multi_strerror :: proc "c" (Mcode) -> cstring ---
```

 

\* Name: curl\_multi\_strerror()
\*
\* Desc: The curl\_multi\_strerror function may be used to turn a CURLMcode
\* value into the equivalent human readable error string. This is
\* useful for printing meaningful error messages.
\*
\* Returns: A pointer to a null-terminated error message.

### [multi\_timeout ¶](#multi_timeout) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L281)

```
multi_timeout :: proc "c" (multi_handle: ^CURLM, milliseconds: ^i32) -> Mcode ---
```

 

\* Name: curl\_multi\_timeout()
\*
\* Desc: Returns the maximum number of milliseconds the app is allowed to
\* wait before curl\_multi\_socket() or curl\_multi\_perform() must be
\* called (to allow libcurl's timed events to take place).
\*
\* Returns: CURLM error code.

### [multi\_wait ¶](#multi_wait) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L117)

```
multi_wait :: proc "c" (multi_handle: ^CURLM, extra_fds: [^]waitfd, extra_nfds: u32, timeout_ms: i32, ret: ^i32) -> Mcode ---
```

 

\* Name: curl\_multi\_wait()
\*
\* Desc: Poll on all fds within a CURLM set as well as any
\* additional fds passed to the function.
\*
\* Returns: CURLMcode type, general multi error code.

### [multi\_waitfds ¶](#multi_waitfds) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L481)

```
multi_waitfds :: proc "c" (multi: ^CURLM, ufds: [^]waitfd, size: u32, fd_count: ^u32) -> Mcode ---
```

 

\* Name: curl\_multi\_waitfds()
\*
\* Desc: Ask curl for fds for polling. The app can use these to poll on.
\* We want curl\_multi\_perform() called as soon as one of them are
\* ready. Passing zero size allows to get just a number of fds.
\*
\* Returns: CURLMcode type, general multi error code.

### [multi\_wakeup ¶](#multi_wakeup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L144)

```
multi_wakeup :: proc "c" (multi_handle: ^CURLM) -> Mcode ---
```

 

\* Name: curl\_multi\_wakeup()
\*
\* Desc: wakes up a sleeping curl\_multi\_poll call.
\*
\* Returns: CURLMcode type, general multi error code.

### [pushheader\_byname ¶](#pushheader_byname) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L470)

```
pushheader_byname :: proc "c" (h: ^pushheaders, name: cstring) -> cstring ---
```

### [pushheader\_bynum ¶](#pushheader_bynum) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin#L469)

```
pushheader_bynum :: proc "c" (h: ^pushheaders, num: uint) -> cstring ---
```

### [share\_cleanup ¶](#share_cleanup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2714)

```
share_cleanup :: proc "c" (share: ^CURLSH) -> SHcode ---
```

### [share\_init ¶](#share_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2712)

```
share_init :: proc "c" () -> ^CURLSH ---
```

### [share\_setopt ¶](#share_setopt) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2713)

```
share_setopt :: proc "c" (share: ^CURLSH, option: SHoption, .. args: ..any) -> SHcode ---
```

### [share\_strerror ¶](#share_strerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2892)

```
share_strerror :: proc "c" (SHcode) -> cstring ---
```

 

\* NAME curl\_share\_strerror()
\*
\* DESCRIPTION
\*
\* The curl\_share\_strerror function may be used to turn a CURLSHcode value
\* into the equivalent human readable error string. This is useful
\* for printing meaningful error messages.

### [slist\_append ¶](#slist_append) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2505)

```
slist_append :: proc "c" (list: ^slist, data: cstring) -> ^slist ---
```

 

\* NAME curl\_slist\_append()
\*
\* DESCRIPTION
\*
\* Appends a string to a linked list. If no list exists, it will be created
\* first. Returns the new list, after appending.

### [slist\_free\_all ¶](#slist_free_all) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2514)

```
slist_free_all :: proc "c" (list: ^slist) ---
```

 

\* NAME curl\_slist\_free\_all()
\*
\* DESCRIPTION
\*
\* free a previously built curl\_slist.

### [strequal ¶](#strequal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2203)

```
strequal :: proc "c" (s1, s2: cstring) -> i32 ---
```

 

curl\_strequal() and curl\_strnequal() are subject for removal in a future release

### [strnequal ¶](#strnequal) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2204)

```
strnequal :: proc "c" (s1, s2: cstring, n: uint) -> i32 ---
```

### [unescape ¶](#unescape) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2385)

```
unescape :: proc "c" (string: cstring, length: i32) -> cstring ---
```

 

the previous version

### [url ¶](#url) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L106)

```
url :: proc "c" () -> ^CURLU ---
```

 

\* curl\_url() creates a new CURLU handle and returns a pointer to it.
\* Must be freed with curl\_url\_cleanup().

### [url\_cleanup ¶](#url_cleanup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L113)

```
url_cleanup :: proc "c" (handle: ^CURLU) ---
```

 

\* curl\_url\_cleanup() frees the CURLU handle and related resources used for
\* the URL parsing. It will not free strings previously returned with the URL
\* API.

### [url\_dup ¶](#url_dup) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L119)

```
url_dup :: proc "c" (input: ^CURLU) -> ^CURLU ---
```

 

\* curl\_url\_dup() duplicates a CURLU handle and returns a new copy. The new
\* handle must also be freed with curl\_url\_cleanup().

### [url\_get ¶](#url_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L126)

```
url_get :: proc "c" (handle: ^CURLU, what: UPart, part: ^[^]u8, flags: UFlags) -> ^Ucode ---
```

 

\* curl\_url\_get() extracts a specific part of the URL from a CURLU
\* handle. Returns error code. The returned pointer MUST be freed with
\* curl\_free() afterwards.

### [url\_set ¶](#url_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L133)

```
url_set :: proc "c" (handle: ^CURLU, what: UPart, part: cstring, flags: UFlags) -> Ucode ---
```

 

\* curl\_url\_set() sets a specific part of the URL in a CURLU handle. Returns
\* error code. The passed in string will be copied. Passing a NULL instead of
\* a part string, clears that part.

### [url\_strerror ¶](#url_strerror) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin#L140)

```
url_strerror :: proc "c" (Ucode) -> cstring ---
```

 

\* curl\_url\_strerror() turns a CURLUcode value into the equivalent human
\* readable error string. This is useful for printing meaningful error
\* messages.

### [version ¶](#version) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2351)

```
version :: proc "c" () -> cstring ---
```

 

\* NAME curl\_version()
\*
\* DESCRIPTION
\*
\* Returns a static ASCII string of the libcurl version.

### [version\_info ¶](#version_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin#L2870)

```
version_info :: proc "c" (version_enum) -> ^version_info_data ---
```

 

\* NAME curl\_version\_info()
\*
\* DESCRIPTION
\*
\* This function returns a pointer to a static copy of the version info
\* struct. See above.

### [ws\_meta ¶](#ws_meta) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L81)

```
ws_meta :: proc "c" (curl: ^CURL) -> ^ws_frame ---
```

### [ws\_recv ¶](#ws_recv) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L50)

```
ws_recv :: proc "c" (curl: ^CURL, buffer: rawptr, buflen: uint, recv: ^uint, metap: ^^ws_frame) -> code ---
```

 

\* NAME curl\_ws\_recv()
\*
\* DESCRIPTION
\*
\* Receives data from the websocket connection. Use after successful
\* curl\_easy\_perform() with CURLOPT\_CONNECT\_ONLY option.

### [ws\_send ¶](#ws_send) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L62)

```
ws_send :: proc "c" (
	curl:     ^CURL, 
	buffer:   rawptr, 
	buflen:   uint, 
	sent:     ^uint, 
	fragsize: i64, 
	flags:    ws_flags, 
) -> code ---
```

 

\* NAME curl\_ws\_send()
\*
\* DESCRIPTION
\*
\* Sends data over the websocket connection. Use after successful
\* curl\_easy\_perform() with CURLOPT\_CONNECT\_ONLY option.

### [ws\_start\_frame ¶](#ws_start_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin#L77)

```
ws_start_frame :: proc "c" (curl: ^CURL, flags: u32, frame_len: i64) -> code ---
```

 

\* NAME curl\_ws\_start\_frame()
\*
\* DESCRIPTION
\*
\* Buffers a websocket frame header with the given flags and length.
\* Errors when a previous frame is not complete, e.g. not all its
\* payload has been added.

## Procedure Groups

This section is empty.

## Source Files

* [curl.odin](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl.odin)
* [curl\_easy.odin](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_easy.odin)
* [curl\_header.odin](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_header.odin)
* [curl\_multi.odin](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_multi.odin)
* [curl\_options.odin](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_options.odin)
* [curl\_urlapi.odin](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_urlapi.odin)
* [curl\_websockets.odin](https://github.com/odin-lang/Odin/tree/master/vendor/curl/curl_websockets.odin)
* *(hidden platform specific files)*

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:52.174370000 +0000 UTC`

* [Types](#pkg-Types)
  + [CURL](#CURL)
  + [CURLM](#CURLM)
  + [CURLSH](#CURLSH)
  + [CURLU](#CURLU)
  + [Hcode](#Hcode)
  + [INFO](#INFO)
  + [MSG](#MSG)
  + [MULTI\_NOTIFY](#MULTI_NOTIFY)
  + [Mcode](#Mcode)
  + [Minfo](#Minfo)
  + [Moption](#Moption)
  + [Msg](#Msg)
  + [NETRC\_OPTION](#NETRC_OPTION)
  + [SHcode](#SHcode)
  + [SHoption](#SHoption)
  + [STScode](#STScode)
  + [TLSAUTH](#TLSAUTH)
  + [TimeCond](#TimeCond)
  + [UFlag](#UFlag)
  + [UFlags](#UFlags)
  + [UPart](#UPart)
  + [Ucode](#Ucode)
  + [blob](#blob)
  + [blob\_flag](#blob_flag)
  + [blob\_flags](#blob_flags)
  + [calloc\_callback](#calloc_callback)
  + [certinfo](#certinfo)
  + [chunk\_bgn\_callback](#chunk_bgn_callback)
  + [chunk\_end\_callback](#chunk_end_callback)
  + [closepolicy](#closepolicy)
  + [closesocket\_callback](#closesocket_callback)
  + [code](#code)
  + [conv\_callback](#conv_callback)
  + [curl\_notify\_function](#curl_notify_function)
  + [debug\_callback](#debug_callback)
  + [easyoption](#easyoption)
  + [easyoptionflag](#easyoptionflag)
  + [easyoptionflags](#easyoptionflags)
  + [easytype](#easytype)
  + [fileinfo](#fileinfo)
  + [filetype](#filetype)
  + [finfoflag](#finfoflag)
  + [finfoflags](#finfoflags)
  + [fnmatch\_callback](#fnmatch_callback)
  + [formget\_callback](#formget_callback)
  + [free\_callback](#free_callback)
  + [ftpauth](#ftpauth)
  + [ftpccc](#ftpccc)
  + [ftpcreatedir](#ftpcreatedir)
  + [ftpmethod](#ftpmethod)
  + [header](#header)
  + [header\_origin\_bit](#header_origin_bit)
  + [header\_origin\_bits](#header_origin_bits)
  + [hstsentry](#hstsentry)
  + [hstsread\_callback](#hstsread_callback)
  + [hstswrite\_callback](#hstswrite_callback)
  + [httppost](#httppost)
  + [httppost\_flag](#httppost_flag)
  + [httppost\_flags](#httppost_flags)
  + [index](#index)
  + [infotype](#infotype)
  + [iocmd](#iocmd)
  + [ioctl\_callback](#ioctl_callback)
  + [ioerr](#ioerr)
  + [khkey](#khkey)
  + [khmatch](#khmatch)
  + [khstat](#khstat)
  + [khtype](#khtype)
  + [lock\_access](#lock_access)
  + [lock\_data](#lock_data)
  + [lock\_function](#lock_function)
  + [malloc\_callback](#malloc_callback)
  + [mime](#mime)
  + [mimepart](#mimepart)
  + [multi\_timer\_callback](#multi_timer_callback)
  + [off\_t](#off_t)
  + [opensocket\_callback](#opensocket_callback)
  + [option](#option)
  + [platform\_fd\_set](#platform_fd_set)
  + [platform\_sockaddr](#platform_sockaddr)
  + [prereq\_callback](#prereq_callback)
  + [progress\_callback](#progress_callback)
  + [proxycode](#proxycode)
  + [proxytype](#proxytype)
  + [push\_callback](#push_callback)
  + [pushheaders](#pushheaders)
  + [read\_callback](#read_callback)
  + [realloc\_callback](#realloc_callback)
  + [resolver\_start\_callback](#resolver_start_callback)
  + [seek\_callback](#seek_callback)
  + [slist](#slist)
  + [sockaddr](#sockaddr)
  + [socket\_callback](#socket_callback)
  + [socket\_t](#socket_t)
  + [socklen\_t](#socklen_t)
  + [sockopt\_callback](#sockopt_callback)
  + [socktype](#socktype)
  + [sshhostkeycallback](#sshhostkeycallback)
  + [sshkeycallback](#sshkeycallback)
  + [ssl\_backend](#ssl_backend)
  + [ssl\_ctx\_callback](#ssl_ctx_callback)
  + [sslbackend](#sslbackend)
  + [ssls\_export\_cb](#ssls_export_cb)
  + [sslset](#sslset)
  + [strdup\_callback](#strdup_callback)
  + [tlssessioninfo](#tlssessioninfo)
  + [trailer\_callback](#trailer_callback)
  + [unlock\_function](#unlock_function)
  + [usessl](#usessl)
  + [version\_enum](#version_enum)
  + [version\_info\_data](#version_info_data)
  + [waitfd](#waitfd)
  + [write\_callback](#write_callback)
  + [ws\_flag](#ws_flag)
  + [ws\_flags](#ws_flags)
  + [ws\_frame](#ws_frame)
  + [xferinfo\_callback](#xferinfo_callback)
* [Constants](#pkg-Constants)
  + [ALTSVC\_H1](#ALTSVC_H1)
  + [ALTSVC\_H2](#ALTSVC_H2)
  + [ALTSVC\_H3](#ALTSVC_H3)
  + [ALTSVC\_READONLYFILE](#ALTSVC_READONLYFILE)
  + [AUTH\_ANY](#AUTH_ANY)
  + [AUTH\_ANYSAFE](#AUTH_ANYSAFE)
  + [AUTH\_AWS\_SIGV4](#AUTH_AWS_SIGV4)
  + [AUTH\_BASIC](#AUTH_BASIC)
  + [AUTH\_BEARER](#AUTH_BEARER)
  + [AUTH\_DIGEST](#AUTH_DIGEST)
  + [AUTH\_DIGEST\_IE](#AUTH_DIGEST_IE)
  + [AUTH\_GSSAPI](#AUTH_GSSAPI)
  + [AUTH\_GSSNEGOTIATE](#AUTH_GSSNEGOTIATE)
  + [AUTH\_NEGOTIATE](#AUTH_NEGOTIATE)
  + [AUTH\_NONE](#AUTH_NONE)
  + [AUTH\_NTLM](#AUTH_NTLM)
  + [AUTH\_ONLY](#AUTH_ONLY)
  + [BLOB\_COPY](#BLOB_COPY)
  + [BLOB\_NOCOPY](#BLOB_NOCOPY)
  + [CHUNK\_BGN\_FUNC\_FAIL](#CHUNK_BGN_FUNC_FAIL)
  + [CHUNK\_BGN\_FUNC\_OK](#CHUNK_BGN_FUNC_OK)
  + [CHUNK\_BGN\_FUNC\_SKIP](#CHUNK_BGN_FUNC_SKIP)
  + [CHUNK\_END\_FUNC\_FAIL](#CHUNK_END_FUNC_FAIL)
  + [CHUNK\_END\_FUNC\_OK](#CHUNK_END_FUNC_OK)
  + [COPYRIGHT](#COPYRIGHT)
  + [CSELECT\_ERR](#CSELECT_ERR)
  + [CSELECT\_IN](#CSELECT_IN)
  + [CSELECT\_OUT](#CSELECT_OUT)
  + [ERROR\_SIZE](#ERROR_SIZE)
  + [FINFOFLAG\_KNOWN\_FILENAME](#FINFOFLAG_KNOWN_FILENAME)
  + [FINFOFLAG\_KNOWN\_FILETYPE](#FINFOFLAG_KNOWN_FILETYPE)
  + [FINFOFLAG\_KNOWN\_GID](#FINFOFLAG_KNOWN_GID)
  + [FINFOFLAG\_KNOWN\_HLINKCOUNT](#FINFOFLAG_KNOWN_HLINKCOUNT)
  + [FINFOFLAG\_KNOWN\_PERM](#FINFOFLAG_KNOWN_PERM)
  + [FINFOFLAG\_KNOWN\_SIZE](#FINFOFLAG_KNOWN_SIZE)
  + [FINFOFLAG\_KNOWN\_TIME](#FINFOFLAG_KNOWN_TIME)
  + [FINFOFLAG\_KNOWN\_UID](#FINFOFLAG_KNOWN_UID)
  + [FNMATCHFUNC\_FAIL](#FNMATCHFUNC_FAIL)
  + [FNMATCHFUNC\_MATCH](#FNMATCHFUNC_MATCH)
  + [FNMATCHFUNC\_NOMATCH](#FNMATCHFUNC_NOMATCH)
  + [FOLLOW\_ALL](#FOLLOW_ALL)
  + [FOLLOW\_FIRSTONLY](#FOLLOW_FIRSTONLY)
  + [FOLLOW\_OBEYCODE](#FOLLOW_OBEYCODE)
  + [GLOBAL\_ACK\_EINTR](#GLOBAL_ACK_EINTR)
  + [GLOBAL\_ALL](#GLOBAL_ALL)
  + [GLOBAL\_DEFAULT](#GLOBAL_DEFAULT)
  + [GLOBAL\_NOTHING](#GLOBAL_NOTHING)
  + [GLOBAL\_SSL](#GLOBAL_SSL)
  + [GLOBAL\_WIN32](#GLOBAL_WIN32)
  + [GSSAPI\_DELEGATION\_FLAG](#GSSAPI_DELEGATION_FLAG)
  + [GSSAPI\_DELEGATION\_NONE](#GSSAPI_DELEGATION_NONE)
  + [GSSAPI\_DELEGATION\_POLICY\_FLAG](#GSSAPI_DELEGATION_POLICY_FLAG)
  + [HEADER\_SEPARATE](#HEADER_SEPARATE)
  + [HEADER\_UNIFIED](#HEADER_UNIFIED)
  + [HET\_DEFAULT](#HET_DEFAULT)
  + [HSTS\_ENABLE](#HSTS_ENABLE)
  + [HSTS\_READONLYFILE](#HSTS_READONLYFILE)
  + [HTTPPOST\_BUFFER](#HTTPPOST_BUFFER)
  + [HTTPPOST\_CALLBACK](#HTTPPOST_CALLBACK)
  + [HTTPPOST\_FILENAME](#HTTPPOST_FILENAME)
  + [HTTPPOST\_LARGE](#HTTPPOST_LARGE)
  + [HTTPPOST\_PTRBUFFER](#HTTPPOST_PTRBUFFER)
  + [HTTPPOST\_PTRCONTENTS](#HTTPPOST_PTRCONTENTS)
  + [HTTPPOST\_PTRNAME](#HTTPPOST_PTRNAME)
  + [HTTPPOST\_READFILE](#HTTPPOST_READFILE)
  + [HTTP\_VERSION\_1\_0](#HTTP_VERSION_1_0)
  + [HTTP\_VERSION\_1\_1](#HTTP_VERSION_1_1)
  + [HTTP\_VERSION\_2](#HTTP_VERSION_2)
  + [HTTP\_VERSION\_2TLS](#HTTP_VERSION_2TLS)
  + [HTTP\_VERSION\_2\_0](#HTTP_VERSION_2_0)
  + [HTTP\_VERSION\_2\_PRIOR\_KNOWLEDGE](#HTTP_VERSION_2_PRIOR_KNOWLEDGE)
  + [HTTP\_VERSION\_3](#HTTP_VERSION_3)
  + [HTTP\_VERSION\_3ONLY](#HTTP_VERSION_3ONLY)
  + [HTTP\_VERSION\_LAST](#HTTP_VERSION_LAST)
  + [HTTP\_VERSION\_NONE](#HTTP_VERSION_NONE)
  + [H\_1XX](#H_1XX)
  + [H\_CONNECT](#H_CONNECT)
  + [H\_HEADER](#H_HEADER)
  + [H\_PSEUDO](#H_PSEUDO)
  + [H\_TRAILER](#H_TRAILER)
  + [INFO\_DOUBLE](#INFO_DOUBLE)
  + [INFO\_LONG](#INFO_LONG)
  + [INFO\_MASK](#INFO_MASK)
  + [INFO\_OFF\_T](#INFO_OFF_T)
  + [INFO\_PTR](#INFO_PTR)
  + [INFO\_SLIST](#INFO_SLIST)
  + [INFO\_SOCKET](#INFO_SOCKET)
  + [INFO\_STRING](#INFO_STRING)
  + [INFO\_TYPEMASK](#INFO_TYPEMASK)
  + [IPRESOLVE\_V4](#IPRESOLVE_V4)
  + [IPRESOLVE\_V6](#IPRESOLVE_V6)
  + [IPRESOLVE\_WHATEVER](#IPRESOLVE_WHATEVER)
  + [MAX\_HTTP\_HEADER](#MAX_HTTP_HEADER)
  + [MAX\_READ\_SIZE](#MAX_READ_SIZE)
  + [MAX\_WRITE\_SIZE](#MAX_WRITE_SIZE)
  + [MIMEOPT\_FORMESCAPE](#MIMEOPT_FORMESCAPE)
  + [MNWC\_CLEAR\_CONNS](#MNWC_CLEAR_CONNS)
  + [MNWC\_CLEAR\_DNS](#MNWC_CLEAR_DNS)
  + [NETRC\_IGNORED](#NETRC_IGNORED)
  + [NETRC\_OPTIONAL](#NETRC_OPTIONAL)
  + [NETRC\_REQUIRED](#NETRC_REQUIRED)
  + [OPTTYPE\_BLOB](#OPTTYPE_BLOB)
  + [OPTTYPE\_CBPOINT](#OPTTYPE_CBPOINT)
  + [OPTTYPE\_FUNCTIONPOINT](#OPTTYPE_FUNCTIONPOINT)
  + [OPTTYPE\_LONG](#OPTTYPE_LONG)
  + [OPTTYPE\_OBJECTPOINT](#OPTTYPE_OBJECTPOINT)
  + [OPTTYPE\_OFF\_T](#OPTTYPE_OFF_T)
  + [OPTTYPE\_SLISTPOINT](#OPTTYPE_SLISTPOINT)
  + [OPTTYPE\_STRINGPOINT](#OPTTYPE_STRINGPOINT)
  + [OPTTYPE\_VALUES](#OPTTYPE_VALUES)
  + [PAUSE\_ALL](#PAUSE_ALL)
  + [PAUSE\_CONT](#PAUSE_CONT)
  + [PAUSE\_RECV](#PAUSE_RECV)
  + [PAUSE\_RECV\_CONT](#PAUSE_RECV_CONT)
  + [PAUSE\_SEND](#PAUSE_SEND)
  + [PAUSE\_SEND\_CONT](#PAUSE_SEND_CONT)
  + [PIPE\_HTTP1](#PIPE_HTTP1)
  + [PIPE\_MULTIPLEX](#PIPE_MULTIPLEX)
  + [PIPE\_NOTHING](#PIPE_NOTHING)
  + [POLL\_IN](#POLL_IN)
  + [POLL\_INOUT](#POLL_INOUT)
  + [POLL\_NONE](#POLL_NONE)
  + [POLL\_OUT](#POLL_OUT)
  + [POLL\_REMOVE](#POLL_REMOVE)
  + [PREREQFUNC\_ABORT](#PREREQFUNC_ABORT)
  + [PREREQFUNC\_OK](#PREREQFUNC_OK)
  + [PROGRESSFUNC\_CONTINUE](#PROGRESSFUNC_CONTINUE)
  + [PROTO\_ALL](#PROTO_ALL)
  + [PROTO\_DICT](#PROTO_DICT)
  + [PROTO\_FILE](#PROTO_FILE)
  + [PROTO\_FTP](#PROTO_FTP)
  + [PROTO\_FTPS](#PROTO_FTPS)
  + [PROTO\_GOPHER](#PROTO_GOPHER)
  + [PROTO\_GOPHERS](#PROTO_GOPHERS)
  + [PROTO\_HTTP](#PROTO_HTTP)
  + [PROTO\_HTTPS](#PROTO_HTTPS)
  + [PROTO\_IMAP](#PROTO_IMAP)
  + [PROTO\_IMAPS](#PROTO_IMAPS)
  + [PROTO\_LDAP](#PROTO_LDAP)
  + [PROTO\_LDAPS](#PROTO_LDAPS)
  + [PROTO\_MQTT](#PROTO_MQTT)
  + [PROTO\_POP3](#PROTO_POP3)
  + [PROTO\_POP3S](#PROTO_POP3S)
  + [PROTO\_RTMP](#PROTO_RTMP)
  + [PROTO\_RTMPE](#PROTO_RTMPE)
  + [PROTO\_RTMPS](#PROTO_RTMPS)
  + [PROTO\_RTMPT](#PROTO_RTMPT)
  + [PROTO\_RTMPTE](#PROTO_RTMPTE)
  + [PROTO\_RTMPTS](#PROTO_RTMPTS)
  + [PROTO\_RTSP](#PROTO_RTSP)
  + [PROTO\_SCP](#PROTO_SCP)
  + [PROTO\_SFTP](#PROTO_SFTP)
  + [PROTO\_SMB](#PROTO_SMB)
  + [PROTO\_SMBS](#PROTO_SMBS)
  + [PROTO\_SMTP](#PROTO_SMTP)
  + [PROTO\_SMTPS](#PROTO_SMTPS)
  + [PROTO\_TELNET](#PROTO_TELNET)
  + [PROTO\_TFTP](#PROTO_TFTP)
  + [PT\_RTSPHEADER](#PT_RTSPHEADER)
  + [PUSH\_DENY](#PUSH_DENY)
  + [PUSH\_ERROROUT](#PUSH_ERROROUT)
  + [PUSH\_OK](#PUSH_OK)
  + [READFUNC\_ABORT](#READFUNC_ABORT)
  + [READFUNC\_PAUSE](#READFUNC_PAUSE)
  + [REDIR\_GET\_ALL](#REDIR_GET_ALL)
  + [REDIR\_POST\_301](#REDIR_POST_301)
  + [REDIR\_POST\_302](#REDIR_POST_302)
  + [REDIR\_POST\_303](#REDIR_POST_303)
  + [REDIR\_POST\_ALL](#REDIR_POST_ALL)
  + [RTSPREQ\_ANNOUNCE](#RTSPREQ_ANNOUNCE)
  + [RTSPREQ\_DESCRIBE](#RTSPREQ_DESCRIBE)
  + [RTSPREQ\_GET\_PARAMETER](#RTSPREQ_GET_PARAMETER)
  + [RTSPREQ\_LAST](#RTSPREQ_LAST)
  + [RTSPREQ\_NONE](#RTSPREQ_NONE)
  + [RTSPREQ\_OPTIONS](#RTSPREQ_OPTIONS)
  + [RTSPREQ\_PAUSE](#RTSPREQ_PAUSE)
  + [RTSPREQ\_PLAY](#RTSPREQ_PLAY)
  + [RTSPREQ\_RECEIVE](#RTSPREQ_RECEIVE)
  + [RTSPREQ\_RECORD](#RTSPREQ_RECORD)
  + [RTSPREQ\_SETUP](#RTSPREQ_SETUP)
  + [RTSPREQ\_SET\_PARAMETER](#RTSPREQ_SET_PARAMETER)
  + [RTSPREQ\_TEARDOWN](#RTSPREQ_TEARDOWN)
  + [SEEKFUNC\_CANTSEEK](#SEEKFUNC_CANTSEEK)
  + [SEEKFUNC\_FAIL](#SEEKFUNC_FAIL)
  + [SEEKFUNC\_OK](#SEEKFUNC_OK)
  + [SOCKET\_BAD](#SOCKET_BAD)
  + [SOCKET\_TIMEOUT](#SOCKET_TIMEOUT)
  + [SOCKOPT\_ALREADY\_CONNECTED](#SOCKOPT_ALREADY_CONNECTED)
  + [SOCKOPT\_ERROR](#SOCKOPT_ERROR)
  + [SOCKOPT\_OK](#SOCKOPT_OK)
  + [SSH\_AUTH\_AGENT](#SSH_AUTH_AGENT)
  + [SSH\_AUTH\_ANY](#SSH_AUTH_ANY)
  + [SSH\_AUTH\_DEFAULT](#SSH_AUTH_DEFAULT)
  + [SSH\_AUTH\_GSSAPI](#SSH_AUTH_GSSAPI)
  + [SSH\_AUTH\_HOST](#SSH_AUTH_HOST)
  + [SSH\_AUTH\_KEYBOARD](#SSH_AUTH_KEYBOARD)
  + [SSH\_AUTH\_NONE](#SSH_AUTH_NONE)
  + [SSH\_AUTH\_PASSWORD](#SSH_AUTH_PASSWORD)
  + [SSH\_AUTH\_PUBLICKEY](#SSH_AUTH_PUBLICKEY)
  + [SSLOPT\_ALLOW\_BEAST](#SSLOPT_ALLOW_BEAST)
  + [SSLOPT\_AUTO\_CLIENT\_CERT](#SSLOPT_AUTO_CLIENT_CERT)
  + [SSLOPT\_EARLYDATA](#SSLOPT_EARLYDATA)
  + [SSLOPT\_NATIVE\_CA](#SSLOPT_NATIVE_CA)
  + [SSLOPT\_NO\_PARTIALCHAIN](#SSLOPT_NO_PARTIALCHAIN)
  + [SSLOPT\_NO\_REVOKE](#SSLOPT_NO_REVOKE)
  + [SSLOPT\_REVOKE\_BEST\_EFFORT](#SSLOPT_REVOKE_BEST_EFFORT)
  + [SSLVERSION\_DEFAULT](#SSLVERSION_DEFAULT)
  + [SSLVERSION\_LAST](#SSLVERSION_LAST)
  + [SSLVERSION\_MAX\_DEFAULT](#SSLVERSION_MAX_DEFAULT)
  + [SSLVERSION\_MAX\_LAST](#SSLVERSION_MAX_LAST)
  + [SSLVERSION\_MAX\_NONE](#SSLVERSION_MAX_NONE)
  + [SSLVERSION\_MAX\_TLSv1\_0](#SSLVERSION_MAX_TLSv1_0)
  + [SSLVERSION\_MAX\_TLSv1\_1](#SSLVERSION_MAX_TLSv1_1)
  + [SSLVERSION\_MAX\_TLSv1\_2](#SSLVERSION_MAX_TLSv1_2)
  + [SSLVERSION\_MAX\_TLSv1\_3](#SSLVERSION_MAX_TLSv1_3)
  + [SSLVERSION\_SSLv2](#SSLVERSION_SSLv2)
  + [SSLVERSION\_SSLv3](#SSLVERSION_SSLv3)
  + [SSLVERSION\_TLSv1](#SSLVERSION_TLSv1)
  + [SSLVERSION\_TLSv1\_0](#SSLVERSION_TLSv1_0)
  + [SSLVERSION\_TLSv1\_1](#SSLVERSION_TLSv1_1)
  + [SSLVERSION\_TLSv1\_2](#SSLVERSION_TLSv1_2)
  + [SSLVERSION\_TLSv1\_3](#SSLVERSION_TLSv1_3)
  + [TIMECOND\_IFMODSINCE](#TIMECOND_IFMODSINCE)
  + [TIMECOND\_IFUNMODSINCE](#TIMECOND_IFUNMODSINCE)
  + [TIMECOND\_LASTMOD](#TIMECOND_LASTMOD)
  + [TIMECOND\_NONE](#TIMECOND_NONE)
  + [TIMESTAMP](#TIMESTAMP)
  + [TLSAUTH\_NONE](#TLSAUTH_NONE)
  + [TLSAUTH\_SRP](#TLSAUTH_SRP)
  + [TRAILERFUNC\_ABORT](#TRAILERFUNC_ABORT)
  + [TRAILERFUNC\_OK](#TRAILERFUNC_OK)
  + [ULFLAG\_ANSWERED](#ULFLAG_ANSWERED)
  + [ULFLAG\_DELETED](#ULFLAG_DELETED)
  + [ULFLAG\_DRAFT](#ULFLAG_DRAFT)
  + [ULFLAG\_FLAGGED](#ULFLAG_FLAGGED)
  + [ULFLAG\_SEEN](#ULFLAG_SEEN)
  + [UPKEEP\_INTERVAL\_DEFAULT](#UPKEEP_INTERVAL_DEFAULT)
  + [USESSL\_ALL](#USESSL_ALL)
  + [USESSL\_CONTROL](#USESSL_CONTROL)
  + [USESSL\_NONE](#USESSL_NONE)
  + [USESSL\_TRY](#USESSL_TRY)
  + [U\_ALLOW\_SPACE](#U_ALLOW_SPACE)
  + [U\_APPENDQUERY](#U_APPENDQUERY)
  + [U\_DEFAULT\_PORT](#U_DEFAULT_PORT)
  + [U\_DEFAULT\_SCHEME](#U_DEFAULT_SCHEME)
  + [U\_DISALLOW\_USER](#U_DISALLOW_USER)
  + [U\_GET\_EMPTY](#U_GET_EMPTY)
  + [U\_GUESS\_SCHEME](#U_GUESS_SCHEME)
  + [U\_NON\_SUPPORT\_SCHEME](#U_NON_SUPPORT_SCHEME)
  + [U\_NO\_AUTHORITY](#U_NO_AUTHORITY)
  + [U\_NO\_DEFAULT\_PORT](#U_NO_DEFAULT_PORT)
  + [U\_NO\_GUESS\_SCHEME](#U_NO_GUESS_SCHEME)
  + [U\_PATH\_AS\_IS](#U_PATH_AS_IS)
  + [U\_PUNY2IDN](#U_PUNY2IDN)
  + [U\_PUNYCODE](#U_PUNYCODE)
  + [U\_URLDECODE](#U_URLDECODE)
  + [U\_URLENCODE](#U_URLENCODE)
  + [VERSION](#VERSION)
  + [VERSION\_ALTSVC](#VERSION_ALTSVC)
  + [VERSION\_ASYNCHDNS](#VERSION_ASYNCHDNS)
  + [VERSION\_BROTLI](#VERSION_BROTLI)
  + [VERSION\_CONV](#VERSION_CONV)
  + [VERSION\_CURLDEBUG](#VERSION_CURLDEBUG)
  + [VERSION\_DEBUG](#VERSION_DEBUG)
  + [VERSION\_GSASL](#VERSION_GSASL)
  + [VERSION\_GSSAPI](#VERSION_GSSAPI)
  + [VERSION\_GSSNEGOTIATE](#VERSION_GSSNEGOTIATE)
  + [VERSION\_HSTS](#VERSION_HSTS)
  + [VERSION\_HTTP2](#VERSION_HTTP2)
  + [VERSION\_HTTP3](#VERSION_HTTP3)
  + [VERSION\_HTTPS\_PROXY](#VERSION_HTTPS_PROXY)
  + [VERSION\_IDN](#VERSION_IDN)
  + [VERSION\_IPV6](#VERSION_IPV6)
  + [VERSION\_KERBEROS4](#VERSION_KERBEROS4)
  + [VERSION\_KERBEROS5](#VERSION_KERBEROS5)
  + [VERSION\_LARGEFILE](#VERSION_LARGEFILE)
  + [VERSION\_LIBZ](#VERSION_LIBZ)
  + [VERSION\_MAJOR](#VERSION_MAJOR)
  + [VERSION\_MINOR](#VERSION_MINOR)
  + [VERSION\_MULTI\_SSL](#VERSION_MULTI_SSL)
  + [VERSION\_NOW](#VERSION_NOW)
  + [VERSION\_NTLM](#VERSION_NTLM)
  + [VERSION\_NTLM\_WB](#VERSION_NTLM_WB)
  + [VERSION\_NUM](#VERSION_NUM)
  + [VERSION\_PATCH](#VERSION_PATCH)
  + [VERSION\_PSL](#VERSION_PSL)
  + [VERSION\_SPNEGO](#VERSION_SPNEGO)
  + [VERSION\_SSL](#VERSION_SSL)
  + [VERSION\_SSPI](#VERSION_SSPI)
  + [VERSION\_THREADSAFE](#VERSION_THREADSAFE)
  + [VERSION\_TLSAUTH\_SRP](#VERSION_TLSAUTH_SRP)
  + [VERSION\_UNICODE](#VERSION_UNICODE)
  + [VERSION\_UNIX\_SOCKETS](#VERSION_UNIX_SOCKETS)
  + [VERSION\_ZSTD](#VERSION_ZSTD)
  + [WAIT\_POLLIN](#WAIT_POLLIN)
  + [WAIT\_POLLOUT](#WAIT_POLLOUT)
  + [WAIT\_POLLPRI](#WAIT_POLLPRI)
  + [WRITEFUNC\_ERROR](#WRITEFUNC_ERROR)
  + [WRITEFUNC\_PAUSE](#WRITEFUNC_PAUSE)
  + [WS\_BINARY](#WS_BINARY)
  + [WS\_CLOSE](#WS_CLOSE)
  + [WS\_CONT](#WS_CONT)
  + [WS\_NOAUTOPONG](#WS_NOAUTOPONG)
  + [WS\_OFFSET](#WS_OFFSET)
  + [WS\_PING](#WS_PING)
  + [WS\_PONG](#WS_PONG)
  + [WS\_RAW\_MODE](#WS_RAW_MODE)
  + [WS\_TEXT](#WS_TEXT)
  + [ZERO\_TERMINATED](#ZERO_TERMINATED)
* [Procedures](#pkg-Procedures)
  + [easy\_cleanup](#easy_cleanup)
  + [easy\_duphandle](#easy_duphandle)
  + [easy\_escape](#easy_escape)
  + [easy\_getinfo](#easy_getinfo)
  + [easy\_header](#easy_header)
  + [easy\_init](#easy_init)
  + [easy\_nextheader](#easy_nextheader)
  + [easy\_option\_by\_id](#easy_option_by_id)
  + [easy\_option\_by\_name](#easy_option_by_name)
  + [easy\_option\_next](#easy_option_next)
  + [easy\_pause](#easy_pause)
  + [easy\_perform](#easy_perform)
  + [easy\_recv](#easy_recv)
  + [easy\_reset](#easy_reset)
  + [easy\_send](#easy_send)
  + [easy\_setopt](#easy_setopt)
  + [easy\_ssls\_export](#easy_ssls_export)
  + [easy\_ssls\_import](#easy_ssls_import)
  + [easy\_strerror](#easy_strerror)
  + [easy\_unescape](#easy_unescape)
  + [easy\_upkeep](#easy_upkeep)
  + [escape](#escape)
  + [free](#free)
  + [getdate](#getdate)
  + [getenv](#getenv)
  + [global\_cleanup](#global_cleanup)
  + [global\_init](#global_init)
  + [global\_init\_mem](#global_init_mem)
  + [global\_sslset](#global_sslset)
  + [global\_trace](#global_trace)
  + [mime\_addpart](#mime_addpart)
  + [mime\_data](#mime_data)
  + [mime\_data\_cb](#mime_data_cb)
  + [mime\_encoder](#mime_encoder)
  + [mime\_filedata](#mime_filedata)
  + [mime\_filename](#mime_filename)
  + [mime\_free](#mime_free)
  + [mime\_headers](#mime_headers)
  + [mime\_init](#mime_init)
  + [mime\_name](#mime_name)
  + [mime\_subparts](#mime_subparts)
  + [mime\_type](#mime_type)
  + [multi\_add\_handle](#multi_add_handle)
  + [multi\_assign](#multi_assign)
  + [multi\_cleanup](#multi_cleanup)
  + [multi\_fdset](#multi_fdset)
  + [multi\_get\_handles](#multi_get_handles)
  + [multi\_get\_offt](#multi_get_offt)
  + [multi\_info\_read](#multi_info_read)
  + [multi\_init](#multi_init)
  + [multi\_notify\_disable](#multi_notify_disable)
  + [multi\_notify\_enable](#multi_notify_enable)
  + [multi\_perform](#multi_perform)
  + [multi\_poll](#multi_poll)
  + [multi\_remove\_handle](#multi_remove_handle)
  + [multi\_setopt](#multi_setopt)
  + [multi\_socket\_action](#multi_socket_action)
  + [multi\_strerror](#multi_strerror)
  + [multi\_timeout](#multi_timeout)
  + [multi\_wait](#multi_wait)
  + [multi\_waitfds](#multi_waitfds)
  + [multi\_wakeup](#multi_wakeup)
  + [pushheader\_byname](#pushheader_byname)
  + [pushheader\_bynum](#pushheader_bynum)
  + [share\_cleanup](#share_cleanup)
  + [share\_init](#share_init)
  + [share\_setopt](#share_setopt)
  + [share\_strerror](#share_strerror)
  + [slist\_append](#slist_append)
  + [slist\_free\_all](#slist_free_all)
  + [strequal](#strequal)
  + [strnequal](#strnequal)
  + [unescape](#unescape)
  + [url](#url)
  + [url\_cleanup](#url_cleanup)
  + [url\_dup](#url_dup)
  + [url\_get](#url_get)
  + [url\_set](#url_set)
  + [url\_strerror](#url_strerror)
  + [version](#version)
  + [version\_info](#version_info)
  + [ws\_meta](#ws_meta)
  + [ws\_recv](#ws_recv)
  + [ws\_send](#ws_send)
  + [ws\_start\_frame](#ws_start_frame)
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