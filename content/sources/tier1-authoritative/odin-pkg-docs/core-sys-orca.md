package sys/orca - pkg.odin-lang.org 






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



Current Package: *[orca](/core/sys/orca)*

  

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
3. [orca](/core/sys/orca)

# package core:sys/orca [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca)

#### **Warning:**This was generated for `-target:windows_amd64` and might not represent every target this package supports.

⌘K

Ctrl+K

or

/

Filter Results



## Index

Types (115)

* [arena](#arena)
* [arena\_chunk](#arena_chunk)
* [arena\_options](#arena_options)
* [arena\_scope](#arena_scope)
* [base\_allocator](#base_allocator)
* [canvas\_context](#canvas_context)
* [canvas\_renderer](#canvas_renderer)
* [cap\_type](#cap_type)
* [char](#char)
* [char\_event](#char_event)
* [clipboard\_state](#clipboard_state)
* [clock\_kind](#clock_kind)
* [color](#color)
* [color\_space](#color_space)
* [datestamp](#datestamp)
* [event](#event)
* [event\_type](#event_type)
* [file](#file)
* [file\_access](#file_access)
* [file\_access\_flag](#file_access_flag)
* [file\_dialog\_button](#file_dialog_button)
* [file\_dialog\_desc](#file_dialog_desc)
* [file\_dialog\_flag](#file_dialog_flag)
* [file\_dialog\_flags](#file_dialog_flags)
* [file\_dialog\_kind](#file_dialog_kind)
* [file\_dialog\_result](#file_dialog_result)
* [file\_list](#file_list)
* [file\_listdir\_elt](#file_listdir_elt)
* [file\_open\_flag](#file_open_flag)
* [file\_open\_flags](#file_open_flags)
* [file\_open\_with\_dialog\_elt](#file_open_with_dialog_elt)
* [file\_open\_with\_dialog\_result](#file_open_with_dialog_result)
* [file\_perm](#file_perm)
* [file\_perm\_flag](#file_perm_flag)
* [file\_status](#file_status)
* [file\_type](#file_type)
* [file\_whence](#file_whence)
* [font](#font)
* [font\_metrics](#font_metrics)
* [glyph\_metrics](#glyph_metrics)
* [gradient\_blend\_space](#gradient_blend_space)
* [image](#image)
* [image\_region](#image_region)
* [input\_state](#input_state)
* [io\_cmp](#io_cmp)
* [io\_error](#io_error)
* [io\_op](#io_op)
* [io\_req](#io_req)
* [io\_req\_id](#io_req_id)
* [joint\_type](#joint_type)
* [key\_action](#key_action)
* [key\_code](#key_code)
* [key\_event](#key_event)
* [key\_state](#key_state)
* [keyboard\_state](#keyboard_state)
* [keymod\_flag](#keymod_flag)
* [keymod\_flags](#keymod_flags)
* [list](#list)
* [list\_elt](#list_elt)
* [log\_level](#log_level)
* [mat2x3](#mat2x3)
* [mem\_modify\_proc](#mem_modify_proc)
* [mem\_reserve\_proc](#mem_reserve_proc)
* [mouse\_button](#mouse_button)
* [mouse\_event](#mouse_event)
* [mouse\_state](#mouse_state)
* [move\_event](#move_event)
* [pool](#pool)
* [rect](#rect)
* [rect\_atlas](#rect_atlas)
* [scan\_code](#scan_code)
* [str16](#str16)
* [str16\_elt](#str16_elt)
* [str16\_list](#str16_list)
* [str32](#str32)
* [str32\_elt](#str32_elt)
* [str32\_list](#str32_list)
* [str8](#str8)
* [str8\_elt](#str8_elt)
* [str8\_list](#str8_list)
* [surface](#surface)
* [text\_metrics](#text_metrics)
* [text\_state](#text_state)
* [ui\_align](#ui_align)
* [ui\_attribute](#ui_attribute)
* [ui\_attribute\_mask](#ui_attribute_mask)
* [ui\_axis](#ui_axis)
* [ui\_box](#ui_box)
* [ui\_box\_draw\_proc](#ui_box_draw_proc)
* [ui\_box\_floating](#ui_box_floating)
* [ui\_box\_size](#ui_box_size)
* [ui\_context](#ui_context)
* [ui\_draw\_mask](#ui_draw_mask)
* [ui\_edit\_move](#ui_edit_move)
* [ui\_key](#ui_key)
* [ui\_layout](#ui_layout)
* [ui\_layout\_align](#ui_layout_align)
* [ui\_overflow](#ui_overflow)
* [ui\_radio\_group\_info](#ui_radio_group_info)
* [ui\_select\_popup\_info](#ui_select_popup_info)
* [ui\_sig](#ui_sig)
* [ui\_size](#ui_size)
* [ui\_size\_kind](#ui_size_kind)
* [ui\_style](#ui_style)
* [ui\_text\_box\_info](#ui_text_box_info)
* [ui\_text\_box\_result](#ui_text_box_result)
* [unicode\_range](#unicode_range)
* [utf32](#utf32)
* [utf8\_dec](#utf8_dec)
* [utf8\_status](#utf8_status)
* [vec2](#vec2)
* [vec2i](#vec2i)
* [vec3](#vec3)
* [vec4](#vec4)
* [window](#window)

Constants (125)

* [BACKING\_SIZE](#BACKING_SIZE)
* [UNICODE\_AEGEAN\_NUMBERS](#UNICODE_AEGEAN_NUMBERS)
* [UNICODE\_ALPHABETIC\_PRESENTATION\_FORMS](#UNICODE_ALPHABETIC_PRESENTATION_FORMS)
* [UNICODE\_ARABIC](#UNICODE_ARABIC)
* [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_A](#UNICODE_ARABIC_PRESENTATION_FORMS_A)
* [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_B](#UNICODE_ARABIC_PRESENTATION_FORMS_B)
* [UNICODE\_ARMENIAN](#UNICODE_ARMENIAN)
* [UNICODE\_ARROWS](#UNICODE_ARROWS)
* [UNICODE\_BASIC\_LATIN](#UNICODE_BASIC_LATIN)
* [UNICODE\_BENGALI\_ASSAMESE](#UNICODE_BENGALI_ASSAMESE)
* [UNICODE\_BLOCK\_ELEMENTS](#UNICODE_BLOCK_ELEMENTS)
* [UNICODE\_BOPOMOFO](#UNICODE_BOPOMOFO)
* [UNICODE\_BOPOMOFO\_EXTENDED](#UNICODE_BOPOMOFO_EXTENDED)
* [UNICODE\_BOX\_DRAWING](#UNICODE_BOX_DRAWING)
* [UNICODE\_BRAILLE\_PATTERNS](#UNICODE_BRAILLE_PATTERNS)
* [UNICODE\_BUHID](#UNICODE_BUHID)
* [UNICODE\_BYZANTINE\_MUSICAL\_SYMBOLS](#UNICODE_BYZANTINE_MUSICAL_SYMBOLS)
* [UNICODE\_C1\_CONTROLS\_AND\_LATIN\_1\_SUPPLEMENT](#UNICODE_C1_CONTROLS_AND_LATIN_1_SUPPLEMENT)
* [UNICODE\_CHEROKEE](#UNICODE_CHEROKEE)
* [UNICODE\_CJK\_COMPATIBILITY](#UNICODE_CJK_COMPATIBILITY)
* [UNICODE\_CJK\_COMPATIBILITY\_FORMS](#UNICODE_CJK_COMPATIBILITY_FORMS)
* [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS](#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS)
* [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS\_SUPPLEMENT](#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT)
* [UNICODE\_CJK\_RADICALS\_SUPPLEMENT](#UNICODE_CJK_RADICALS_SUPPLEMENT)
* [UNICODE\_CJK\_SYMBOLS\_AND\_PUNCTUATION](#UNICODE_CJK_SYMBOLS_AND_PUNCTUATION)
* [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS](#UNICODE_CJK_UNIFIED_IDEOGRAPHS)
* [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_A](#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A)
* [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_B](#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B)
* [UNICODE\_COMBINING\_DIACRITICAL\_MARKS](#UNICODE_COMBINING_DIACRITICAL_MARKS)
* [UNICODE\_COMBINING\_DIACRITICAL\_MARKS\_FOR\_SYMBOLS](#UNICODE_COMBINING_DIACRITICAL_MARKS_FOR_SYMBOLS)
* [UNICODE\_COMBINING\_HALF\_MARKS](#UNICODE_COMBINING_HALF_MARKS)
* [UNICODE\_CONTROL\_PICTURES](#UNICODE_CONTROL_PICTURES)
* [UNICODE\_CURRENCY\_SYMBOLS](#UNICODE_CURRENCY_SYMBOLS)
* [UNICODE\_CYPRIOT\_SYLLABARY](#UNICODE_CYPRIOT_SYLLABARY)
* [UNICODE\_CYRILLIC](#UNICODE_CYRILLIC)
* [UNICODE\_CYRILLIC\_SUPPLEMENT](#UNICODE_CYRILLIC_SUPPLEMENT)
* [UNICODE\_DESERET](#UNICODE_DESERET)
* [UNICODE\_DEVANAGARI](#UNICODE_DEVANAGARI)
* [UNICODE\_DINGBATS](#UNICODE_DINGBATS)
* [UNICODE\_ENCLOSED\_ALPHANUMERICS](#UNICODE_ENCLOSED_ALPHANUMERICS)
* [UNICODE\_ENCLOSED\_CJK\_LETTERS\_AND\_MONTHS](#UNICODE_ENCLOSED_CJK_LETTERS_AND_MONTHS)
* [UNICODE\_ETHIOPIC](#UNICODE_ETHIOPIC)
* [UNICODE\_GENERAL\_PUNCTUATION](#UNICODE_GENERAL_PUNCTUATION)
* [UNICODE\_GEOMETRIC\_SHAPES](#UNICODE_GEOMETRIC_SHAPES)
* [UNICODE\_GEORGIAN](#UNICODE_GEORGIAN)
* [UNICODE\_GOTHIC](#UNICODE_GOTHIC)
* [UNICODE\_GREEK\_COPTIC](#UNICODE_GREEK_COPTIC)
* [UNICODE\_GREEK\_EXTENDED](#UNICODE_GREEK_EXTENDED)
* [UNICODE\_GUJARATI](#UNICODE_GUJARATI)
* [UNICODE\_GURMUKHI](#UNICODE_GURMUKHI)
* [UNICODE\_HALFWIDTH\_AND\_FULLWIDTH\_FORMS](#UNICODE_HALFWIDTH_AND_FULLWIDTH_FORMS)
* [UNICODE\_HANGUL\_COMPATIBILITY\_JAMO](#UNICODE_HANGUL_COMPATIBILITY_JAMO)
* [UNICODE\_HANGUL\_JAMO](#UNICODE_HANGUL_JAMO)
* [UNICODE\_HANGUL\_SYLLABLES](#UNICODE_HANGUL_SYLLABLES)
* [UNICODE\_HANUNOO](#UNICODE_HANUNOO)
* [UNICODE\_HEBREW](#UNICODE_HEBREW)
* [UNICODE\_HIGH\_SURROGATE\_AREA](#UNICODE_HIGH_SURROGATE_AREA)
* [UNICODE\_HIRAGANA](#UNICODE_HIRAGANA)
* [UNICODE\_IDEOGRAPHIC\_DESCRIPTION\_CHARACTERS](#UNICODE_IDEOGRAPHIC_DESCRIPTION_CHARACTERS)
* [UNICODE\_IPA\_EXTENSIONS](#UNICODE_IPA_EXTENSIONS)
* [UNICODE\_KANBUN\_KUNTEN](#UNICODE_KANBUN_KUNTEN)
* [UNICODE\_KANGXI\_RADICALS](#UNICODE_KANGXI_RADICALS)
* [UNICODE\_KANNADA](#UNICODE_KANNADA)
* [UNICODE\_KATAKANA](#UNICODE_KATAKANA)
* [UNICODE\_KATAKANA\_PHONETIC\_EXTENSIONS](#UNICODE_KATAKANA_PHONETIC_EXTENSIONS)
* [UNICODE\_KHMER](#UNICODE_KHMER)
* [UNICODE\_KHMER\_SYMBOLS](#UNICODE_KHMER_SYMBOLS)
* [UNICODE\_LAO](#UNICODE_LAO)
* [UNICODE\_LATIN\_EXTENDED\_A](#UNICODE_LATIN_EXTENDED_A)
* [UNICODE\_LATIN\_EXTENDED\_ADDITIONAL](#UNICODE_LATIN_EXTENDED_ADDITIONAL)
* [UNICODE\_LATIN\_EXTENDED\_B](#UNICODE_LATIN_EXTENDED_B)
* [UNICODE\_LETTERLIKE\_SYMBOLS](#UNICODE_LETTERLIKE_SYMBOLS)
* [UNICODE\_LIMBU](#UNICODE_LIMBU)
* [UNICODE\_LINEAR\_B\_IDEOGRAMS](#UNICODE_LINEAR_B_IDEOGRAMS)
* [UNICODE\_LINEAR\_B\_SYLLABARY](#UNICODE_LINEAR_B_SYLLABARY)
* [UNICODE\_LOW\_SURROGATE\_AREA](#UNICODE_LOW_SURROGATE_AREA)
* [UNICODE\_MALAYALAM](#UNICODE_MALAYALAM)
* [UNICODE\_MATHEMATICAL\_ALPHANUMERIC\_SYMBOLS](#UNICODE_MATHEMATICAL_ALPHANUMERIC_SYMBOLS)
* [UNICODE\_MATHEMATICAL\_OPERATORS](#UNICODE_MATHEMATICAL_OPERATORS)
* [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_A](#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A)
* [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_B](#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B)
* [UNICODE\_MISCELLANEOUS\_SYMBOLS](#UNICODE_MISCELLANEOUS_SYMBOLS)
* [UNICODE\_MISCELLANEOUS\_SYMBOLS\_AND\_ARROWS](#UNICODE_MISCELLANEOUS_SYMBOLS_AND_ARROWS)
* [UNICODE\_MISCELLANEOUS\_TECHNICAL](#UNICODE_MISCELLANEOUS_TECHNICAL)
* [UNICODE\_MONGOLIAN](#UNICODE_MONGOLIAN)
* [UNICODE\_MUSICAL\_SYMBOLS](#UNICODE_MUSICAL_SYMBOLS)
* [UNICODE\_MYANMAR](#UNICODE_MYANMAR)
* [UNICODE\_NUMBER\_FORMS](#UNICODE_NUMBER_FORMS)
* [UNICODE\_OGHAM](#UNICODE_OGHAM)
* [UNICODE\_OLD\_ITALIC](#UNICODE_OLD_ITALIC)
* [UNICODE\_OPTICAL\_CHARACTER\_RECOGNITION](#UNICODE_OPTICAL_CHARACTER_RECOGNITION)
* [UNICODE\_ORIYA](#UNICODE_ORIYA)
* [UNICODE\_OSMANYA](#UNICODE_OSMANYA)
* [UNICODE\_PHONETIC\_EXTENSIONS](#UNICODE_PHONETIC_EXTENSIONS)
* [UNICODE\_PRIVATE\_USE\_AREA](#UNICODE_PRIVATE_USE_AREA)
* [UNICODE\_RUNIC](#UNICODE_RUNIC)
* [UNICODE\_SHAVIAN](#UNICODE_SHAVIAN)
* [UNICODE\_SINHALA](#UNICODE_SINHALA)
* [UNICODE\_SMALL\_FORM\_VARIANTS](#UNICODE_SMALL_FORM_VARIANTS)
* [UNICODE\_SPACING\_MODIFIER\_LETTERS](#UNICODE_SPACING_MODIFIER_LETTERS)
* [UNICODE\_SPECIALS](#UNICODE_SPECIALS)
* [UNICODE\_SUPERSCRIPTS\_AND\_SUBSCRIPTS](#UNICODE_SUPERSCRIPTS_AND_SUBSCRIPTS)
* [UNICODE\_SUPPLEMENTAL\_ARROWS\_A](#UNICODE_SUPPLEMENTAL_ARROWS_A)
* [UNICODE\_SUPPLEMENTAL\_ARROWS\_B](#UNICODE_SUPPLEMENTAL_ARROWS_B)
* [UNICODE\_SUPPLEMENTAL\_MATHEMATICAL\_OPERATORS](#UNICODE_SUPPLEMENTAL_MATHEMATICAL_OPERATORS)
* [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_A](#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_A)
* [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_B](#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_B)
* [UNICODE\_SYRIAC](#UNICODE_SYRIAC)
* [UNICODE\_TAGALOG](#UNICODE_TAGALOG)
* [UNICODE\_TAGBANWA](#UNICODE_TAGBANWA)
* [UNICODE\_TAGS](#UNICODE_TAGS)
* [UNICODE\_TAI\_LE](#UNICODE_TAI_LE)
* [UNICODE\_TAI\_XUAN\_JING\_SYMBOLS](#UNICODE_TAI_XUAN_JING_SYMBOLS)
* [UNICODE\_TAMIL](#UNICODE_TAMIL)
* [UNICODE\_TELUGU](#UNICODE_TELUGU)
* [UNICODE\_THAANA](#UNICODE_THAANA)
* [UNICODE\_THAI](#UNICODE_THAI)
* [UNICODE\_TIBETAN](#UNICODE_TIBETAN)
* [UNICODE\_UGARITIC](#UNICODE_UGARITIC)
* [UNICODE\_UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS](#UNICODE_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS)
* [UNICODE\_VARIATION\_SELECTORS](#UNICODE_VARIATION_SELECTORS)
* [UNICODE\_VARIATION\_SELECTORS\_SUPPLEMENT](#UNICODE_VARIATION_SELECTORS_SUPPLEMENT)
* [UNICODE\_YIJING\_HEXAGRAM\_SYMBOLS](#UNICODE_YIJING_HEXAGRAM_SYMBOLS)
* [UNICODE\_YI\_RADICALS](#UNICODE_YI_RADICALS)
* [UNICODE\_YI\_SYLLABLES](#UNICODE_YI_SYLLABLES)

Variables (0)

This section is empty.

Procedures (384)

* [abort](#abort)
* [abort\_ext](#abort_ext)
* [arc](#arc)
* [arena\_cleanup](#arena_cleanup)
* [arena\_clear](#arena_clear)
* [arena\_init](#arena_init)
* [arena\_init\_with\_options](#arena_init_with_options)
* [arena\_push](#arena_push)
* [arena\_push\_aligned](#arena_push_aligned)
* [arena\_push\_aligned\_uninitialized](#arena_push_aligned_uninitialized)
* [arena\_push\_array](#arena_push_array)
* [arena\_push\_type](#arena_push_type)
* [arena\_push\_uninitialized](#arena_push_uninitialized)
* [arena\_scope\_begin](#arena_scope_begin)
* [arena\_scope\_end](#arena_scope_end)
* [assert\_fail](#assert_fail)
* [canvas\_context\_create](#canvas_context_create)
* [canvas\_context\_destroy](#canvas_context_destroy)
* [canvas\_context\_is\_nil](#canvas_context_is_nil)
* [canvas\_context\_nil](#canvas_context_nil)
* [canvas\_context\_select](#canvas_context_select)
* [canvas\_context\_set\_msaa\_sample\_count](#canvas_context_set_msaa_sample_count)
* [canvas\_present](#canvas_present)
* [canvas\_render](#canvas_render)
* [canvas\_renderer\_create](#canvas_renderer_create)
* [canvas\_renderer\_destroy](#canvas_renderer_destroy)
* [canvas\_renderer\_is\_nil](#canvas_renderer_is_nil)
* [canvas\_renderer\_nil](#canvas_renderer_nil)
* [canvas\_surface\_create](#canvas_surface_create)
* [circle\_fill](#circle_fill)
* [circle\_stroke](#circle_stroke)
* [clear](#clear)
* [clip\_pop](#clip_pop)
* [clip\_push](#clip_push)
* [clip\_top](#clip_top)
* [clipboard\_pasted](#clipboard_pasted)
* [clipboard\_pasted\_text](#clipboard_pasted_text)
* [clipboard\_set\_string](#clipboard_set_string)
* [clock\_time](#clock_time)
* [close\_path](#close_path)
* [codepoints\_outlines](#codepoints_outlines)
* [color\_convert](#color_convert)
* [color\_rgba](#color_rgba)
* [color\_srgba](#color_srgba)
* [create\_odin\_logger](#create_odin_logger)
* [cubic\_to](#cubic_to)
* [ellipse\_fill](#ellipse_fill)
* [ellipse\_stroke](#ellipse_stroke)
* [file\_close](#file_close)
* [file\_get\_status](#file_get_status)
* [file\_is\_nil](#file_is_nil)
* [file\_last\_error](#file_last_error)
* [file\_listdir](#file_listdir)
* [file\_nil](#file_nil)
* [file\_open](#file_open)
* [file\_open\_at](#file_open_at)
* [file\_open\_with\_dialog](#file_open_with_dialog)
* [file\_open\_with\_request](#file_open_with_request)
* [file\_pos](#file_pos)
* [file\_read](#file_read)
* [file\_read\_slice](#file_read_slice)
* [file\_seek](#file_seek)
* [file\_size](#file_size)
* [file\_write](#file_write)
* [file\_write\_slice](#file_write_slice)
* [fill](#fill)
* [font\_create\_from\_file](#font_create_from_file)
* [font\_create\_from\_memory](#font_create_from_memory)
* [font\_create\_from\_path](#font_create_from_path)
* [font\_destroy](#font_destroy)
* [font\_get\_glyph\_index](#font_get_glyph_index)
* [font\_get\_glyph\_indices](#font_get_glyph_indices)
* [font\_get\_metrics](#font_get_metrics)
* [font\_get\_metrics\_unscaled](#font_get_metrics_unscaled)
* [font\_get\_scale\_for\_em\_pixels](#font_get_scale_for_em_pixels)
* [font\_is\_nil](#font_is_nil)
* [font\_nil](#font_nil)
* [font\_push\_glyph\_indices](#font_push_glyph_indices)
* [font\_text\_metrics](#font_text_metrics)
* [font\_text\_metrics\_utf32](#font_text_metrics_utf32)
* [get\_cap](#get_cap)
* [get\_color](#get_color)
* [get\_font](#get_font)
* [get\_font\_size](#get_font_size)
* [get\_image](#get_image)
* [get\_image\_source\_region](#get_image_source_region)
* [get\_joint](#get_joint)
* [get\_max\_joint\_excursion](#get_max_joint_excursion)
* [get\_position](#get_position)
* [get\_text\_flip](#get_text_flip)
* [get\_tolerance](#get_tolerance)
* [get\_width](#get_width)
* [gles\_surface\_create](#gles_surface_create)
* [gles\_surface\_make\_current](#gles_surface_make_current)
* [gles\_surface\_swap\_buffers](#gles_surface_swap_buffers)
* [glyph\_outlines](#glyph_outlines)
* [image\_atlas\_alloc\_from\_file](#image_atlas_alloc_from_file)
* [image\_atlas\_alloc\_from\_memory](#image_atlas_alloc_from_memory)
* [image\_atlas\_alloc\_from\_path](#image_atlas_alloc_from_path)
* [image\_atlas\_alloc\_from\_rgba8](#image_atlas_alloc_from_rgba8)
* [image\_atlas\_recycle](#image_atlas_recycle)
* [image\_create](#image_create)
* [image\_create\_from\_file](#image_create_from_file)
* [image\_create\_from\_memory](#image_create_from_memory)
* [image\_create\_from\_path](#image_create_from_path)
* [image\_create\_from\_rgba8](#image_create_from_rgba8)
* [image\_destroy](#image_destroy)
* [image\_draw](#image_draw)
* [image\_draw\_region](#image_draw_region)
* [image\_is\_nil](#image_is_nil)
* [image\_nil](#image_nil)
* [image\_size](#image_size)
* [image\_upload\_region\_rgba8](#image_upload_region_rgba8)
* [input\_next\_frame](#input_next_frame)
* [input\_process\_event](#input_process_event)
* [input\_text\_utf32](#input_text_utf32)
* [input\_text\_utf8](#input_text_utf8)
* [io\_wait\_single\_req](#io_wait_single_req)
* [key\_down](#key_down)
* [key\_down\_scancode](#key_down_scancode)
* [key\_mods](#key_mods)
* [key\_press\_count](#key_press_count)
* [key\_press\_count\_scancode](#key_press_count_scancode)
* [key\_release\_count](#key_release_count)
* [key\_release\_count\_scancode](#key_release_count_scancode)
* [key\_repeat\_count](#key_repeat_count)
* [key\_repeat\_count\_scancode](#key_repeat_count_scancode)
* [line\_to](#line_to)
* [list\_checked\_entry](#list_checked_entry)
* [list\_empty](#list_empty)
* [list\_entry](#list_entry)
* [list\_first\_entry](#list_first_entry)
* [list\_for](#list_for)
* [list\_for\_reverse](#list_for_reverse)
* [list\_init](#list_init)
* [list\_insert](#list_insert)
* [list\_insert\_before](#list_insert_before)
* [list\_iter](#list_iter)
* [list\_iter\_reverse](#list_iter_reverse)
* [list\_last\_entry](#list_last_entry)
* [list\_next\_entry](#list_next_entry)
* [list\_pop\_back](#list_pop_back)
* [list\_pop\_back\_entry](#list_pop_back_entry)
* [list\_pop\_front](#list_pop_front)
* [list\_pop\_front\_entry](#list_pop_front_entry)
* [list\_prev\_entry](#list_prev_entry)
* [list\_push\_back](#list_push_back)
* [list\_push\_front](#list_push_front)
* [list\_remove](#list_remove)
* [log\_error](#log_error)
* [log\_ext](#log_ext)
* [log\_info](#log_info)
* [log\_set\_level](#log_set_level)
* [log\_typed](#log_typed)
* [log\_warning](#log_warning)
* [mat2x3\_inv](#mat2x3_inv)
* [mat2x3\_mul](#mat2x3_mul)
* [mat2x3\_mul\_m](#mat2x3_mul_m)
* [mat2x3\_rotate](#mat2x3_rotate)
* [mat2x3\_scale](#mat2x3_scale)
* [mat2x3\_translate](#mat2x3_translate)
* [matrix\_multiply\_push](#matrix_multiply_push)
* [matrix\_pop](#matrix_pop)
* [matrix\_push](#matrix_push)
* [matrix\_top](#matrix_top)
* [mouse\_clicked](#mouse_clicked)
* [mouse\_delta](#mouse_delta)
* [mouse\_double\_clicked](#mouse_double_clicked)
* [mouse\_down](#mouse_down)
* [mouse\_position](#mouse_position)
* [mouse\_pressed](#mouse_pressed)
* [mouse\_released](#mouse_released)
* [mouse\_wheel](#mouse_wheel)
* [move\_to](#move_to)
* [odin\_logger\_proc](#odin_logger_proc)
* [path\_append](#path_append)
* [path\_is\_absolute](#path_is_absolute)
* [path\_join](#path_join)
* [path\_slice\_directory](#path_slice_directory)
* [path\_slice\_filename](#path_slice_filename)
* [path\_split](#path_split)
* [quadratic\_to](#quadratic_to)
* [rect\_atlas\_alloc](#rect_atlas_alloc)
* [rect\_atlas\_create](#rect_atlas_create)
* [rect\_atlas\_recycle](#rect_atlas_recycle)
* [rectangle\_fill](#rectangle_fill)
* [rectangle\_stroke](#rectangle_stroke)
* [request\_quit](#request_quit)
* [rounded\_rectangle\_fill](#rounded_rectangle_fill)
* [rounded\_rectangle\_stroke](#rounded_rectangle_stroke)
* [scancode\_to\_keycode](#scancode_to_keycode)
* [scratch\_begin](#scratch_begin)
* [scratch\_begin\_next](#scratch_begin_next)
* [scratch\_end](#scratch_end)
* [set\_cap](#set_cap)
* [set\_color](#set_color)
* [set\_color\_rgba](#set_color_rgba)
* [set\_color\_srgba](#set_color_srgba)
* [set\_font](#set_font)
* [set\_font\_size](#set_font_size)
* [set\_gradient](#set_gradient)
* [set\_image](#set_image)
* [set\_image\_source\_region](#set_image_source_region)
* [set\_joint](#set_joint)
* [set\_max\_joint\_excursion](#set_max_joint_excursion)
* [set\_text\_flip](#set_text_flip)
* [set\_tolerance](#set_tolerance)
* [set\_width](#set_width)
* [str16\_from\_buffer](#str16_from_buffer)
* [str16\_list\_first](#str16_list_first)
* [str16\_list\_for](#str16_list_for)
* [str16\_list\_join](#str16_list_join)
* [str16\_list\_last](#str16_list_last)
* [str16\_list\_push](#str16_list_push)
* [str16\_push\_buffer](#str16_push_buffer)
* [str16\_push\_copy](#str16_push_copy)
* [str16\_push\_slice](#str16_push_slice)
* [str16\_slice](#str16_slice)
* [str16\_split](#str16_split)
* [str32\_from\_buffer](#str32_from_buffer)
* [str32\_list\_first](#str32_list_first)
* [str32\_list\_for](#str32_list_for)
* [str32\_list\_join](#str32_list_join)
* [str32\_list\_last](#str32_list_last)
* [str32\_list\_push](#str32_list_push)
* [str32\_push\_buffer](#str32_push_buffer)
* [str32\_push\_copy](#str32_push_copy)
* [str32\_push\_slice](#str32_push_slice)
* [str32\_slice](#str32_slice)
* [str32\_split](#str32_split)
* [str8\_cmp](#str8_cmp)
* [str8\_from\_buffer](#str8_from_buffer)
* [str8\_list\_collate](#str8_list_collate)
* [str8\_list\_empty](#str8_list_empty)
* [str8\_list\_first](#str8_list_first)
* [str8\_list\_for](#str8_list_for)
* [str8\_list\_iter](#str8_list_iter)
* [str8\_list\_join](#str8_list_join)
* [str8\_list\_last](#str8_list_last)
* [str8\_list\_push](#str8_list_push)
* [str8\_list\_pushf](#str8_list_pushf)
* [str8\_push\_buffer](#str8_push_buffer)
* [str8\_push\_copy](#str8_push_copy)
* [str8\_push\_cstring](#str8_push_cstring)
* [str8\_push\_slice](#str8_push_slice)
* [str8\_slice](#str8_slice)
* [str8\_split](#str8_split)
* [str8\_to\_cstring](#str8_to_cstring)
* [stroke](#stroke)
* [surface\_bring\_to\_front](#surface_bring_to_front)
* [surface\_contents\_scaling](#surface_contents_scaling)
* [surface\_destroy](#surface_destroy)
* [surface\_get\_hidden](#surface_get_hidden)
* [surface\_get\_size](#surface_get_size)
* [surface\_is\_nil](#surface_is_nil)
* [surface\_nil](#surface_nil)
* [surface\_send\_to\_back](#surface_send_to_back)
* [surface\_set\_hidden](#surface_set_hidden)
* [text\_fill](#text_fill)
* [text\_outlines](#text_outlines)
* [ui\_box\_begin\_str8](#ui_box_begin_str8)
* [ui\_box\_end](#ui_box_end)
* [ui\_box\_get\_sig](#ui_box_get_sig)
* [ui\_box\_release\_focus](#ui_box_release_focus)
* [ui\_box\_request\_focus](#ui_box_request_focus)
* [ui\_box\_set\_closed](#ui_box_set_closed)
* [ui\_box\_set\_draw\_proc](#ui_box_set_draw_proc)
* [ui\_box\_set\_overlay](#ui_box_set_overlay)
* [ui\_box\_set\_text](#ui_box_set_text)
* [ui\_box\_tag\_str8](#ui_box_tag_str8)
* [ui\_box\_user\_data\_get](#ui_box_user_data_get)
* [ui\_box\_user\_data\_push](#ui_box_user_data_push)
* [ui\_button](#ui_button)
* [ui\_button\_str8](#ui_button_str8)
* [ui\_checkbox](#ui_checkbox)
* [ui\_checkbox\_str8](#ui_checkbox_str8)
* [ui\_container](#ui_container)
* [ui\_context\_create](#ui_context_create)
* [ui\_context\_destroy](#ui_context_destroy)
* [ui\_draw](#ui_draw)
* [ui\_frame\_arena](#ui_frame_arena)
* [ui\_frame\_begin](#ui_frame_begin)
* [ui\_frame\_end](#ui_frame_end)
* [ui\_frame\_time](#ui_frame_time)
* [ui\_get\_context](#ui_get_context)
* [ui\_get\_sig](#ui_get_sig)
* [ui\_input](#ui_input)
* [ui\_label](#ui_label)
* [ui\_label\_str8](#ui_label_str8)
* [ui\_menu](#ui_menu)
* [ui\_menu\_bar](#ui_menu_bar)
* [ui\_menu\_bar\_begin](#ui_menu_bar_begin)
* [ui\_menu\_bar\_begin\_str8](#ui_menu_bar_begin_str8)
* [ui\_menu\_bar\_end](#ui_menu_bar_end)
* [ui\_menu\_begin](#ui_menu_begin)
* [ui\_menu\_begin\_str8](#ui_menu_begin_str8)
* [ui\_menu\_button](#ui_menu_button)
* [ui\_menu\_button\_str8](#ui_menu_button_str8)
* [ui\_menu\_end](#ui_menu_end)
* [ui\_process\_event](#ui_process_event)
* [ui\_radio\_group](#ui_radio_group)
* [ui\_radio\_group\_str8](#ui_radio_group_str8)
* [ui\_release\_focus](#ui_release_focus)
* [ui\_request\_focus](#ui_request_focus)
* [ui\_select\_popup](#ui_select_popup)
* [ui\_select\_popup\_str8](#ui_select_popup_str8)
* [ui\_set\_closed](#ui_set_closed)
* [ui\_set\_context](#ui_set_context)
* [ui\_set\_draw\_proc](#ui_set_draw_proc)
* [ui\_set\_overlay](#ui_set_overlay)
* [ui\_set\_text](#ui_set_text)
* [ui\_slider](#ui_slider)
* [ui\_slider\_str8](#ui_slider_str8)
* [ui\_style\_rule\_begin](#ui_style_rule_begin)
* [ui\_style\_rule\_end](#ui_style_rule_end)
* [ui\_style\_set\_color](#ui_style_set_color)
* [ui\_style\_set\_f32](#ui_style_set_f32)
* [ui\_style\_set\_font](#ui_style_set_font)
* [ui\_style\_set\_i32](#ui_style_set_i32)
* [ui\_style\_set\_size](#ui_style_set_size)
* [ui\_style\_set\_var](#ui_style_set_var)
* [ui\_style\_set\_var\_str8](#ui_style_set_var_str8)
* [ui\_tag\_next\_str8](#ui_tag_next_str8)
* [ui\_tag\_str8](#ui_tag_str8)
* [ui\_text\_box](#ui_text_box)
* [ui\_text\_box\_str8](#ui_text_box_str8)
* [ui\_theme\_dark](#ui_theme_dark)
* [ui\_theme\_light](#ui_theme_light)
* [ui\_tooltip](#ui_tooltip)
* [ui\_tooltip\_str8](#ui_tooltip_str8)
* [ui\_user\_data\_get](#ui_user_data_get)
* [ui\_user\_data\_push](#ui_user_data_push)
* [ui\_var\_default](#ui_var_default)
* [ui\_var\_default\_color](#ui_var_default_color)
* [ui\_var\_default\_color\_str8](#ui_var_default_color_str8)
* [ui\_var\_default\_f32](#ui_var_default_f32)
* [ui\_var\_default\_f32\_str8](#ui_var_default_f32_str8)
* [ui\_var\_default\_font](#ui_var_default_font)
* [ui\_var\_default\_font\_str8](#ui_var_default_font_str8)
* [ui\_var\_default\_i32](#ui_var_default_i32)
* [ui\_var\_default\_i32\_str8](#ui_var_default_i32_str8)
* [ui\_var\_default\_size](#ui_var_default_size)
* [ui\_var\_default\_size\_str8](#ui_var_default_size_str8)
* [ui\_var\_default\_str8](#ui_var_default_str8)
* [ui\_var\_get\_color](#ui_var_get_color)
* [ui\_var\_get\_color\_str8](#ui_var_get_color_str8)
* [ui\_var\_get\_f32](#ui_var_get_f32)
* [ui\_var\_get\_f32\_str8](#ui_var_get_f32_str8)
* [ui\_var\_get\_font](#ui_var_get_font)
* [ui\_var\_get\_font\_str8](#ui_var_get_font_str8)
* [ui\_var\_get\_i32](#ui_var_get_i32)
* [ui\_var\_get\_i32\_str8](#ui_var_get_i32_str8)
* [ui\_var\_get\_size](#ui_var_get_size)
* [ui\_var\_get\_size\_str8](#ui_var_get_size_str8)
* [ui\_var\_set](#ui_var_set)
* [ui\_var\_set\_color](#ui_var_set_color)
* [ui\_var\_set\_color\_str8](#ui_var_set_color_str8)
* [ui\_var\_set\_f32](#ui_var_set_f32)
* [ui\_var\_set\_f32\_str8](#ui_var_set_f32_str8)
* [ui\_var\_set\_font](#ui_var_set_font)
* [ui\_var\_set\_font\_str8](#ui_var_set_font_str8)
* [ui\_var\_set\_i32](#ui_var_set_i32)
* [ui\_var\_set\_i32\_str8](#ui_var_set_i32_str8)
* [ui\_var\_set\_size](#ui_var_set_size)
* [ui\_var\_set\_size\_str8](#ui_var_set_size_str8)
* [ui\_var\_set\_str8](#ui_var_set_str8)
* [utf8\_byte\_count\_for\_codepoints](#utf8_byte_count_for_codepoints)
* [utf8\_codepoint\_count\_for\_string](#utf8_codepoint_count_for_string)
* [utf8\_codepoint\_size](#utf8_codepoint_size)
* [utf8\_decode](#utf8_decode)
* [utf8\_decode\_at](#utf8_decode_at)
* [utf8\_encode](#utf8_encode)
* [utf8\_from\_codepoints](#utf8_from_codepoints)
* [utf8\_next\_offset](#utf8_next_offset)
* [utf8\_prev\_offset](#utf8_prev_offset)
* [utf8\_push\_from\_codepoints](#utf8_push_from_codepoints)
* [utf8\_push\_to\_codepoints](#utf8_push_to_codepoints)
* [utf8\_size\_from\_leading\_char](#utf8_size_from_leading_char)
* [utf8\_to\_codepoints](#utf8_to_codepoints)
* [vec2\_add](#vec2_add)
* [vec2\_equal](#vec2_equal)
* [vec2\_mul](#vec2_mul)
* [window\_set\_size](#window_set_size)
* [window\_set\_title](#window_set_title)

Procedure Groups (0)

This section is empty.

## Types

### [arena ¶](#arena) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L329)

```
arena :: struct {
	// An allocator providing memory pages from the system
	base:         ^base_allocator,
	// A list of `oc_arena_chunk` chunks.
	chunks:       list,
	// The chunk new memory allocations are pulled from.
	currentChunk: ^arena_chunk,
}
```

 

A memory arena, allowing to allocate memory in a linear or stack-like fashion.




##### Related Procedures With Parameters

* [arena\_cleanup](/core/sys/orca/#arena_cleanup)
* [arena\_clear](/core/sys/orca/#arena_clear)
* [arena\_init](/core/sys/orca/#arena_init)
* [arena\_init\_with\_options](/core/sys/orca/#arena_init_with_options)
* [arena\_push](/core/sys/orca/#arena_push)
* [arena\_push\_aligned](/core/sys/orca/#arena_push_aligned)
* [arena\_push\_aligned\_uninitialized](/core/sys/orca/#arena_push_aligned_uninitialized)
* [arena\_push\_array](/core/sys/orca/#arena_push_array)
* [arena\_push\_type](/core/sys/orca/#arena_push_type)
* [arena\_push\_uninitialized](/core/sys/orca/#arena_push_uninitialized)
* [arena\_scope\_begin](/core/sys/orca/#arena_scope_begin)
* [file\_listdir](/core/sys/orca/#file_listdir)
* [file\_open\_with\_dialog](/core/sys/orca/#file_open_with_dialog)
* [font\_push\_glyph\_indices](/core/sys/orca/#font_push_glyph_indices)
* [input\_process\_event](/core/sys/orca/#input_process_event)
* [input\_text\_utf32](/core/sys/orca/#input_text_utf32)
* [input\_text\_utf8](/core/sys/orca/#input_text_utf8)
* [path\_append](/core/sys/orca/#path_append)
* [path\_join](/core/sys/orca/#path_join)
* [path\_split](/core/sys/orca/#path_split)
* [rect\_atlas\_create](/core/sys/orca/#rect_atlas_create)
* [scratch\_begin\_next](/core/sys/orca/#scratch_begin_next)
* [str16\_list\_join](/core/sys/orca/#str16_list_join)
* [str16\_list\_push](/core/sys/orca/#str16_list_push)
* [str16\_push\_buffer](/core/sys/orca/#str16_push_buffer)
* [str16\_push\_copy](/core/sys/orca/#str16_push_copy)
* [str16\_push\_slice](/core/sys/orca/#str16_push_slice)
* [str16\_split](/core/sys/orca/#str16_split)
* [str32\_list\_join](/core/sys/orca/#str32_list_join)
* [str32\_list\_push](/core/sys/orca/#str32_list_push)
* [str32\_push\_buffer](/core/sys/orca/#str32_push_buffer)
* [str32\_push\_copy](/core/sys/orca/#str32_push_copy)
* [str32\_push\_slice](/core/sys/orca/#str32_push_slice)
* [str32\_split](/core/sys/orca/#str32_split)
* [str8\_list\_collate](/core/sys/orca/#str8_list_collate)
* [str8\_list\_join](/core/sys/orca/#str8_list_join)
* [str8\_list\_push](/core/sys/orca/#str8_list_push)
* [str8\_list\_pushf](/core/sys/orca/#str8_list_pushf)
* [str8\_push\_buffer](/core/sys/orca/#str8_push_buffer)
* [str8\_push\_copy](/core/sys/orca/#str8_push_copy)
* [str8\_push\_cstring](/core/sys/orca/#str8_push_cstring)
* [str8\_push\_slice](/core/sys/orca/#str8_push_slice)
* [str8\_split](/core/sys/orca/#str8_split)
* [str8\_to\_cstring](/core/sys/orca/#str8_to_cstring)
* [ui\_text\_box](/core/sys/orca/#ui_text_box)
* [ui\_text\_box\_str8](/core/sys/orca/#ui_text_box_str8)
* [utf8\_push\_from\_codepoints](/core/sys/orca/#utf8_push_from_codepoints)
* [utf8\_push\_to\_codepoints](/core/sys/orca/#utf8_push_to_codepoints)



##### Related Procedures With Returns

* [ui\_frame\_arena](/core/sys/orca/#ui_frame_arena)

### [arena\_chunk ¶](#arena_chunk) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L320)

```
arena_chunk :: struct {
	listElt:   list_elt,
	ptr:       cstring,
	offset:    u64,
	committed: u64,
	cap:       u64,
}
```

 

A contiguous chunk of memory managed by a memory arena.

### [arena\_options ¶](#arena_options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L349)

```
arena_options :: struct {
	// The base allocator to use with this arena
	base:    ^base_allocator,
	// The amount of memory to reserve up-front when creating the arena.
	reserve: u64,
}
```

 

Options for arena creation.




##### Related Procedures With Parameters

* [arena\_init\_with\_options](/core/sys/orca/#arena_init_with_options)

### [arena\_scope ¶](#arena_scope) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L339)

```
arena_scope :: struct {
	// The arena which offset is stored.
	arena:  ^arena,
	// The arena chunk to which the offset belongs.
	chunk:  ^arena_chunk,
	// The offset to rewind the arena to.
	offset: u64,
}
```

 

This struct provides a way to store the current offset in a given arena, in order to reset the arena to that offset later. This allows using arenas in a stack-like fashion, e.g. to create temporary "scratch" allocations




##### Related Procedures With Parameters

* [arena\_scope\_end](/core/sys/orca/#arena_scope_end)



##### Related Procedures With Returns

* [arena\_scope\_begin](/core/sys/orca/#arena_scope_begin)
* [scratch\_begin](/core/sys/orca/#scratch_begin)
* [scratch\_begin\_next](/core/sys/orca/#scratch_begin_next)

### [base\_allocator ¶](#base_allocator) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L308)

```
base_allocator :: struct {
	// A procedure to reserve memory from the system.
	reserve:  mem_reserve_proc,
	// A procedure to commit memory from the system.
	commit:   mem_modify_proc,
	// A procedure to decommit memory from the system.
	decommit: mem_modify_proc,
	// A procedure to release memory previously reserved from the system.
	release:  mem_modify_proc,
}
```

 

A structure that defines how to allocate memory from the system.

### [canvas\_context ¶](#canvas_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1477)

```
canvas_context :: distinct u64
```

 

An opaque handle to a canvas context. Canvas contexts are used to hold contextual state about drawing commands, such as the current color or the current line width, and to record drawing commands. Once commands have been recorded, they can be rendered to a surface using `oc_canvas_render()`.




##### Related Procedures With Parameters

* [canvas\_context\_destroy](/core/sys/orca/#canvas_context_destroy)
* [canvas\_context\_is\_nil](/core/sys/orca/#canvas_context_is_nil)
* [canvas\_context\_select](/core/sys/orca/#canvas_context_select)
* [canvas\_context\_set\_msaa\_sample\_count](/core/sys/orca/#canvas_context_set_msaa_sample_count)
* [canvas\_render](/core/sys/orca/#canvas_render)



##### Related Procedures With Returns

* [canvas\_context\_create](/core/sys/orca/#canvas_context_create)
* [canvas\_context\_nil](/core/sys/orca/#canvas_context_nil)

### [canvas\_renderer ¶](#canvas_renderer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1474)

```
canvas_renderer :: distinct u64
```

 

An opaque handle representing a rendering engine for the canvas API.




##### Related Procedures With Parameters

* [canvas\_present](/core/sys/orca/#canvas_present)
* [canvas\_render](/core/sys/orca/#canvas_render)
* [canvas\_renderer\_destroy](/core/sys/orca/#canvas_renderer_destroy)
* [canvas\_renderer\_is\_nil](/core/sys/orca/#canvas_renderer_is_nil)
* [canvas\_surface\_create](/core/sys/orca/#canvas_surface_create)
* [image\_create](/core/sys/orca/#image_create)
* [image\_create\_from\_file](/core/sys/orca/#image_create_from_file)
* [image\_create\_from\_memory](/core/sys/orca/#image_create_from_memory)
* [image\_create\_from\_path](/core/sys/orca/#image_create_from_path)
* [image\_create\_from\_rgba8](/core/sys/orca/#image_create_from_rgba8)



##### Related Procedures With Returns

* [canvas\_renderer\_create](/core/sys/orca/#canvas_renderer_create)
* [canvas\_renderer\_nil](/core/sys/orca/#canvas_renderer_nil)

### [cap\_type ¶](#cap_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1515)

```
cap_type :: enum u32 {
	// Don't draw caps.
	NONE   = 0, 
	// Square caps.
	SQUARE = 1, 
}
```

 

Cap types.




##### Related Procedures With Parameters

* [set\_cap](/core/sys/orca/#set_cap)



##### Related Procedures With Returns

* [get\_cap](/core/sys/orca/#get_cap)

### [char ¶](#char) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L9)

```
char :: u8
```

##### Related Procedures With Parameters

* [file\_read](/core/sys/orca/#file_read)
* [file\_write](/core/sys/orca/#file_write)
* [image\_atlas\_alloc\_from\_rgba8](/core/sys/orca/#image_atlas_alloc_from_rgba8)
* [image\_create\_from\_rgba8](/core/sys/orca/#image_create_from_rgba8)
* [image\_upload\_region\_rgba8](/core/sys/orca/#image_upload_region_rgba8)
* [str8\_from\_buffer](/core/sys/orca/#str8_from_buffer)
* [str8\_push\_buffer](/core/sys/orca/#str8_push_buffer)
* [utf8\_size\_from\_leading\_char](/core/sys/orca/#utf8_size_from_leading_char)



##### Related Procedures With Returns

* [key\_press\_count](/core/sys/orca/#key_press_count)
* [key\_press\_count\_scancode](/core/sys/orca/#key_press_count_scancode)
* [key\_release\_count](/core/sys/orca/#key_release_count)
* [key\_release\_count\_scancode](/core/sys/orca/#key_release_count_scancode)
* [key\_repeat\_count](/core/sys/orca/#key_repeat_count)
* [key\_repeat\_count\_scancode](/core/sys/orca/#key_repeat_count_scancode)
* [mouse\_pressed](/core/sys/orca/#mouse_pressed)
* [mouse\_released](/core/sys/orca/#mouse_released)

### [char\_event ¶](#char_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L954)

```
char_event :: struct {
	// The unicode codepoint of the character.
	codepoint: rune,
	// The utf8 sequence of the character.
	sequence:  [8]u8,
	// The utf8 sequence length.
	seqLen:    u8,
}
```

 

A structure describing a character input event.

### [clipboard\_state ¶](#clipboard_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1118)

```
clipboard_state :: struct {
	lastUpdate: u64,
	pastedText: string,
}
```

### [clock\_kind ¶](#clock_kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L202)

```
clock_kind :: enum u32 {
	// A clock incrementing monotonically.
	MONOTONIC = 0, 
	// A clock incrementing monotonically during uptime.
	UPTIME    = 1, 
	// A clock driven by the platform time.
	DATE      = 2, 
}
```

##### Related Procedures With Parameters

* [clock\_time](/core/sys/orca/#clock_time)

### [color ¶](#color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1502)

```
color :: struct {
	using c:    [4]f32,
	colorSpace: color_space,
}
```

 

A struct representing a color.




##### Related Procedures With Parameters

* [color\_convert](/core/sys/orca/#color_convert)
* [set\_color](/core/sys/orca/#set_color)
* [set\_gradient](/core/sys/orca/#set_gradient)
* [ui\_style\_set\_color](/core/sys/orca/#ui_style_set_color)
* [ui\_var\_default\_color](/core/sys/orca/#ui_var_default_color)
* [ui\_var\_default\_color\_str8](/core/sys/orca/#ui_var_default_color_str8)
* [ui\_var\_set\_color](/core/sys/orca/#ui_var_set_color)
* [ui\_var\_set\_color\_str8](/core/sys/orca/#ui_var_set_color_str8)



##### Related Procedures With Returns

* [color\_rgba](/core/sys/orca/#color_rgba)
* [color\_srgba](/core/sys/orca/#color_srgba)
* [get\_color](/core/sys/orca/#get_color)
* [ui\_var\_get\_color](/core/sys/orca/#ui_var_get_color)
* [ui\_var\_get\_color\_str8](/core/sys/orca/#ui_var_get_color_str8)

### [color\_space ¶](#color_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1494)

```
color_space :: enum u32 {
	// A linear RGB color space.
	RGB  = 0, 
	// An sRGB color space.
	SRGB = 1, 
}
```

 

An enum identifying possible color spaces.




##### Related Procedures With Parameters

* [color\_convert](/core/sys/orca/#color_convert)

### [datestamp ¶](#datestamp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1359)

```
datestamp :: struct {
	seconds:  i64,
	fraction: u64,
}
```

### [event ¶](#event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L986)

```
event :: struct {
	// The window in which this event happened.
	window: window,
	// The type of the event. This determines which member of the event union is active.
	type:   event_type,
	using _: struct #raw_union {
		key:       key_event,
		character: char_event,
		mouse:     mouse_event,
		move:      move_event,
		paths:     str8_list,
	},
}
```

 

A structure describing an event sent to the application.




##### Related Procedures With Parameters

* [input\_process\_event](/core/sys/orca/#input_process_event)
* [ui\_process\_event](/core/sys/orca/#ui_process_event)

### [event\_type ¶](#event_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L611)

```
event_type :: enum u32 {
	// No event. That could be used simply to wake up the application.
	NONE            = 0, 
	// A modifier key event. This event is sent when a key such as <kbd>Alt</kbd>, <kbd>Control</kbd>, <kbd>Command</kbd> or <kbd>Shift</kbd> are pressed, released, or repeated. The `key` field contains the event's details.
	KEYBOARD_MODS   = 1, 
	// A key event. This event is sent when a normal key is pressed, released, or repeated. The `key` field contains the event's details.
	KEYBOARD_KEY    = 2, 
	// A character input event. This event is sent when an input character is produced by the keyboard. The `character` field contains the event's details.
	KEYBOARD_CHAR   = 3, 
	// A mouse button event. This is event sent when one of the mouse buttons is pressed, released, or clicked. The `key` field contains the event's details.
	MOUSE_BUTTON    = 4, 
	// A mouse move event. This is event sent when the mouse is moved. The `mouse` field contains the event's details.
	MOUSE_MOVE      = 5, 
	// A mouse wheel event. This is event sent when the mouse wheel is moved (or when a trackpad is scrolled). The `mouse` field contains the event's details.
	MOUSE_WHEEL     = 6, 
	// A mouse enter event. This event is sent when the mouse enters the application's window. The `mouse` field contains the event's details.
	MOUSE_ENTER     = 7, 
	// A mouse leave event. This event is sent when the mouse leaves the application's window.
	MOUSE_LEAVE     = 8, 
	// A clipboard paste event. This event is sent when the user uses the paste shortcut while the application window has focus.
	CLIPBOARD_PASTE = 9, 
	// A resize event. This event is sent when the application's window is resized. The `move` field contains the event's details.
	WINDOW_RESIZE   = 10, 
	// A move event. This event is sent when the window is moved. The `move` field contains the event's details.
	WINDOW_MOVE     = 11, 
	// A focus event. This event is sent when the application gains focus.
	WINDOW_FOCUS    = 12, 
	// An unfocus event. This event is sent when the application looses focus.
	WINDOW_UNFOCUS  = 13, 
	// A hide event. This event is sent when the application's window is hidden or minimized.
	WINDOW_HIDE     = 14, 
	// A show event. This event is sent when the application's window is shown or de-minimized.
	WINDOW_SHOW     = 15, 
	// A close event. This event is sent when the window is about to be closed.
	WINDOW_CLOSE    = 16, 
	// A path drop event. This event is sent when the user drops files onto the application's window. The `paths` field contains the event's details.
	PATHDROP        = 17, 
	// A frame event. This event is sent when the application should render a frame.
	FRAME           = 18, 
	// A quit event. This event is sent when the application has been requested to quit.
	QUIT            = 19, 
}
```

 

This enum defines the type events that can be sent to the application by the runtime. This determines which member of the `oc_event` union field is active.

### [file ¶](#file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1169)

```
file :: distinct u64
```

 

An opaque handle identifying an opened file.




##### Related Procedures With Parameters

* [file\_close](/core/sys/orca/#file_close)
* [file\_get\_status](/core/sys/orca/#file_get_status)
* [file\_is\_nil](/core/sys/orca/#file_is_nil)
* [file\_last\_error](/core/sys/orca/#file_last_error)
* [file\_open\_at](/core/sys/orca/#file_open_at)
* [file\_pos](/core/sys/orca/#file_pos)
* [file\_read](/core/sys/orca/#file_read)
* [file\_read\_slice](/core/sys/orca/#file_read_slice)
* [file\_seek](/core/sys/orca/#file_seek)
* [file\_size](/core/sys/orca/#file_size)
* [file\_write](/core/sys/orca/#file_write)
* [file\_write\_slice](/core/sys/orca/#file_write_slice)
* [font\_create\_from\_file](/core/sys/orca/#font_create_from_file)
* [image\_atlas\_alloc\_from\_file](/core/sys/orca/#image_atlas_alloc_from_file)
* [image\_create\_from\_file](/core/sys/orca/#image_create_from_file)



##### Related Procedures With Returns

* [file\_nil](/core/sys/orca/#file_nil)
* [file\_open](/core/sys/orca/#file_open)
* [file\_open\_with\_request](/core/sys/orca/#file_open_with_request)

### [file\_access ¶](#file_access) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1196)

```
file_access :: bit_set[file_access_flag; u16]
```

##### Related Procedures With Parameters

* [file\_open](/core/sys/orca/#file_open)
* [file\_open\_at](/core/sys/orca/#file_open_at)
* [file\_open\_with\_dialog](/core/sys/orca/#file_open_with_dialog)
* [file\_open\_with\_request](/core/sys/orca/#file_open_with_request)

### [file\_access\_flag ¶](#file_access_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1190)

```
file_access_flag :: enum u16 {
	// The file handle can be used for reading from the file.
	READ  = 0, 
	// The file handle can be used for writing to the file.
	WRITE, 
}
```

 

This enum describes the access permissions of a file handle.

### [file\_dialog\_button ¶](#file_dialog_button) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1041)

```
file_dialog_button :: enum u32 {
	// The user clicked the "Cancel" button, or closed the dialog box.
	CANCEL = 0, 
	// The user clicked the "OK" button.
	OK     = 1, 
}
```

 

An enum identifying the button clicked by the user when a file dialog returns.

### [file\_dialog\_desc ¶](#file_dialog_desc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1023)

```
file_dialog_desc :: struct {
	// The kind of file dialog, see `oc_file_dialog_kind`.
	kind:      file_dialog_kind,
	// A combination of file dialog flags used to enable file dialog options.
	flags:     bit_set[file_dialog_flag; u32],
	// The title of the dialog, displayed in the dialog title bar.
	title:     string,
	// Optional. The label of the OK button, e.g. "Save" or "Open".
	okLabel:   string,
	// Optional. A file handle to the root directory for the dialog. If set to zero, the root directory is the application's default data directory.
	startAt:   file,
	// Optional. The path of the starting directory of the dialog, relative to its root directory. If set to nil, the dialog starts at its root directory.
	startPath: string,
	// A list of file extensions used to restrict which files can be selected in this dialog. An empty list allows all files to be selected. Extensions should be provided without a leading dot.
	filters:   str8_list,
}
```

 

A structure describing a file dialog.




##### Related Procedures With Parameters

* [file\_open\_with\_dialog](/core/sys/orca/#file_open_with_dialog)

### [file\_dialog\_flag ¶](#file_dialog_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1010)

```
file_dialog_flag :: enum u32 {
	// This dialog allows selecting files.
	FILES              = 0, 
	// This dialog allows selecting directories.
	DIRECTORIES, 
	// This dialog allows selecting multiple items.
	MULTIPLE, 
	// This dialog allows creating directories.
	CREATE_DIRECTORIES, 
}
```

 

A type for flags describing various file dialog options.
File dialog flags.

### [file\_dialog\_flags ¶](#file_dialog_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1020)

```
file_dialog_flags :: bit_set[file_dialog_flag; u32]
```

### [file\_dialog\_kind ¶](#file_dialog_kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1001)

```
file_dialog_kind :: enum u32 {
	// The file dialog is a save dialog.
	SAVE = 0, 
	// The file dialog is an open dialog.
	OPEN = 1, 
}
```

 

This enum describes the kinds of possible file dialogs.

### [file\_dialog\_result ¶](#file_dialog_result) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1049)

```
file_dialog_result :: struct {
	// The button clicked by the user.
	button:    file_dialog_button,
	// The path that was selected when the user clicked the OK button. If the dialog box had the `OC_FILE_DIALOG_MULTIPLE` flag set, this is the first file of the list of selected paths.
	path:      string,
	// If the dialog box had the `OC_FILE_DIALOG_MULTIPLE` flag set and the user clicked the OK button, this list contains the selected paths.
	selection: str8_list,
}
```

 

A structure describing the result of a file dialog.

### [file\_list ¶](#file_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1375)

```
file_list :: struct {
	list:     list,
	eltCount: u64,
}
```

 

An type describing a list of enumerated files in a given directory.




##### Related Procedures With Returns

* [file\_listdir](/core/sys/orca/#file_listdir)

### [file\_listdir\_elt ¶](#file_listdir_elt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1380)

```
file_listdir_elt :: struct {
	listElt:  list_elt,
	basename: string,
	type:     file_type,
}
```

### [file\_open\_flag ¶](#file_open_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1173)

```
file_open_flag :: enum u16 {
	// Open the file in 'append' mode. All writes append data at the end of the file.
	APPEND    = 0, 
	// Truncate the file to 0 bytes when opening.
	TRUNCATE, 
	// Create the file if it does not exist.
	CREATE, 
	// If the file is a symlink, open the symlink itself instead of following it.
	SYMLINK, 
	// If the file is a symlink, the call to open will fail.
	NO_FOLLOW, 
	// Reserved.
	RESTRICT, 
}
```

 

The type of file open flags describing file open options.
Flags for the `oc_file_open()` function.

### [file\_open\_flags ¶](#file_open_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1187)

```
file_open_flags :: bit_set[file_open_flag; u16]
```

##### Related Procedures With Parameters

* [file\_open](/core/sys/orca/#file_open)
* [file\_open\_at](/core/sys/orca/#file_open_at)
* [file\_open\_with\_dialog](/core/sys/orca/#file_open_with_dialog)
* [file\_open\_with\_request](/core/sys/orca/#file_open_with_request)

### [file\_open\_with\_dialog\_elt ¶](#file_open_with_dialog_elt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1421)

```
file_open_with_dialog_elt :: struct {
	listElt: list_elt,
	file:    file,
}
```

 

An element of a list of file handles acquired through a file dialog.

### [file\_open\_with\_dialog\_result ¶](#file_open_with_dialog_result) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1427)

```
file_open_with_dialog_result :: struct {
	// The button of the file dialog clicked by the user.
	button:    file_dialog_button,
	// The file that was opened through the dialog. If the dialog had the `OC_FILE_DIALOG_MULTIPLE` flag set, this is equal to the first handle in the `selection` list.
	file:      file,
	// If the dialog had the `OC_FILE_DIALOG_MULTIPLE` flag set, this list of `oc_file_open_with_dialog_elt` contains the handles of the opened files.
	selection: list,
}
```

 

A structure describing the result of a call to `oc_file_open_with_dialog()`.




##### Related Procedures With Returns

* [file\_open\_with\_dialog](/core/sys/orca/#file_open_with_dialog)

### [file\_perm ¶](#file_perm) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1357)

```
file_perm :: bit_set[file_perm_flag; u16]
```

### [file\_perm\_flag ¶](#file_perm_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1343)

```
file_perm_flag :: enum u16 {
	OTHER_EXEC  = 0, 
	OTHER_WRITE, 
	OTHER_READ, 
	GROUP_EXEC, 
	GROUP_WRITE, 
	GROUP_READ, 
	OWNER_EXEC, 
	OWNER_WRITE, 
	OWNER_READ, 
	STICKY_BIT, 
	SET_GID, 
	SET_UID, 
}
```

 

A type describing file permissions.

### [file\_status ¶](#file_status) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1364)

```
file_status :: struct {
	uid:              u64,
	type:             file_type,
	perm:             bit_set[file_perm_flag; u16],
	size:             u64,
	creationDate:     datestamp,
	accessDate:       datestamp,
	modificationDate: datestamp,
}
```

##### Related Procedures With Returns

* [file\_get\_status](/core/sys/orca/#file_get_status)

### [file\_type ¶](#file_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1323)

```
file_type :: enum u32 {
	// The file is of unknown type.
	UNKNOWN   = 0, 
	// The file is a regular file.
	REGULAR   = 1, 
	// The file is a directory.
	DIRECTORY = 2, 
	// The file is a symbolic link.
	SYMLINK   = 3, 
	// The file is a block device.
	BLOCK     = 4, 
	// The file is a character device.
	CHARACTER = 5, 
	// The file is a FIFO pipe.
	FIFO      = 6, 
	// The file is a socket.
	SOCKET    = 7, 
}
```

 

An enum identifying the type of a file.

### [file\_whence ¶](#file_whence) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1199)

```
file_whence :: enum u32 {
	// Set the file position relative to the beginning of the file.
	SET     = 0, 
	// Set the file position relative to the end of the file.
	END     = 1, 
	// Set the file position relative to the current position.
	CURRENT = 2, 
}
```

 

This enum is used in `oc_file_seek()` to specify the starting point of the seek operation.




##### Related Procedures With Parameters

* [file\_seek](/core/sys/orca/#file_seek)

### [font ¶](#font) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1480)

```
font :: distinct u64
```

 

An opaque font handle.




##### Related Procedures With Parameters

* [font\_destroy](/core/sys/orca/#font_destroy)
* [font\_get\_glyph\_index](/core/sys/orca/#font_get_glyph_index)
* [font\_get\_glyph\_indices](/core/sys/orca/#font_get_glyph_indices)
* [font\_get\_metrics](/core/sys/orca/#font_get_metrics)
* [font\_get\_metrics\_unscaled](/core/sys/orca/#font_get_metrics_unscaled)
* [font\_get\_scale\_for\_em\_pixels](/core/sys/orca/#font_get_scale_for_em_pixels)
* [font\_is\_nil](/core/sys/orca/#font_is_nil)
* [font\_push\_glyph\_indices](/core/sys/orca/#font_push_glyph_indices)
* [font\_text\_metrics](/core/sys/orca/#font_text_metrics)
* [font\_text\_metrics\_utf32](/core/sys/orca/#font_text_metrics_utf32)
* [set\_font](/core/sys/orca/#set_font)
* [ui\_context\_create](/core/sys/orca/#ui_context_create)
* [ui\_style\_set\_font](/core/sys/orca/#ui_style_set_font)
* [ui\_var\_default\_font](/core/sys/orca/#ui_var_default_font)
* [ui\_var\_default\_font\_str8](/core/sys/orca/#ui_var_default_font_str8)
* [ui\_var\_set\_font](/core/sys/orca/#ui_var_set_font)
* [ui\_var\_set\_font\_str8](/core/sys/orca/#ui_var_set_font_str8)



##### Related Procedures With Returns

* [font\_create\_from\_file](/core/sys/orca/#font_create_from_file)
* [font\_create\_from\_memory](/core/sys/orca/#font_create_from_memory)
* [font\_create\_from\_path](/core/sys/orca/#font_create_from_path)
* [font\_nil](/core/sys/orca/#font_nil)
* [get\_font](/core/sys/orca/#get_font)
* [ui\_var\_get\_font](/core/sys/orca/#ui_var_get_font)
* [ui\_var\_get\_font\_str8](/core/sys/orca/#ui_var_get_font_str8)

### [font\_metrics ¶](#font_metrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1523)

```
font_metrics :: struct {
	// The ascent from the baseline to the top of the line (a positive value means the top line is above the baseline). 
	ascent:    f32,
	// The descent from the baseline to the bottom line (a positive value means the bottom line is below the baseline). 
	descent:   f32,
	// The gap between two lines of text.
	lineGap:   f32,
	// The height of the lowercase character 'x'.
	xHeight:   f32,
	// The height of capital letters.
	capHeight: f32,
	// The maximum character width.
	width:     f32,
}
```

 

A struct describing the metrics of a font.




##### Related Procedures With Returns

* [font\_get\_metrics](/core/sys/orca/#font_get_metrics)
* [font\_get\_metrics\_unscaled](/core/sys/orca/#font_get_metrics_unscaled)

### [glyph\_metrics ¶](#glyph_metrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1539)

```
glyph_metrics :: struct {
	ink:     rect,
	// The default amount from which to advance the cursor after drawing this glyph.
	advance: [2]f32,
}
```

 

A struct describing the metrics of a single glyph.

### [gradient\_blend\_space ¶](#gradient_blend_space) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1486)

```
gradient_blend_space :: enum u32 {
	// The gradient colors are interpolated in linear space.
	LINEAR = 0, 
	// The gradient colors are interpolated in sRGB space.
	SRGB   = 1, 
}
```

 

This enum describes possible blending modes for color gradient.




##### Related Procedures With Parameters

* [set\_gradient](/core/sys/orca/#set_gradient)

### [image ¶](#image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1483)

```
image :: distinct u64
```

 

An opaque image handle.




##### Related Procedures With Parameters

* [image\_atlas\_alloc\_from\_file](/core/sys/orca/#image_atlas_alloc_from_file)
* [image\_atlas\_alloc\_from\_memory](/core/sys/orca/#image_atlas_alloc_from_memory)
* [image\_atlas\_alloc\_from\_path](/core/sys/orca/#image_atlas_alloc_from_path)
* [image\_atlas\_alloc\_from\_rgba8](/core/sys/orca/#image_atlas_alloc_from_rgba8)
* [image\_destroy](/core/sys/orca/#image_destroy)
* [image\_draw](/core/sys/orca/#image_draw)
* [image\_draw\_region](/core/sys/orca/#image_draw_region)
* [image\_is\_nil](/core/sys/orca/#image_is_nil)
* [image\_size](/core/sys/orca/#image_size)
* [image\_upload\_region\_rgba8](/core/sys/orca/#image_upload_region_rgba8)
* [set\_image](/core/sys/orca/#set_image)



##### Related Procedures With Returns

* [get\_image](/core/sys/orca/#get_image)
* [image\_create](/core/sys/orca/#image_create)
* [image\_create\_from\_file](/core/sys/orca/#image_create_from_file)
* [image\_create\_from\_memory](/core/sys/orca/#image_create_from_memory)
* [image\_create\_from\_path](/core/sys/orca/#image_create_from_path)
* [image\_create\_from\_rgba8](/core/sys/orca/#image_create_from_rgba8)
* [image\_nil](/core/sys/orca/#image_nil)

### [image\_region ¶](#image_region) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1559)

```
image_region :: struct {
	// The image handle.
	image: image,
	// The rectangular region of the image.
	rect:  rect,
}
```

 

A struct describing a rectangular sub-region of an image.




##### Related Procedures With Parameters

* [image\_atlas\_recycle](/core/sys/orca/#image_atlas_recycle)



##### Related Procedures With Returns

* [image\_atlas\_alloc\_from\_file](/core/sys/orca/#image_atlas_alloc_from_file)
* [image\_atlas\_alloc\_from\_memory](/core/sys/orca/#image_atlas_alloc_from_memory)
* [image\_atlas\_alloc\_from\_path](/core/sys/orca/#image_atlas_alloc_from_path)
* [image\_atlas\_alloc\_from\_rgba8](/core/sys/orca/#image_atlas_alloc_from_rgba8)

### [input\_state ¶](#input_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1123)

```
input_state :: struct {
	frameCounter: u64,
	keyboard:     keyboard_state,
	mouse:        mouse_state,
	text:         text_state,
	clipboard:    clipboard_state,
}
```

##### Related Procedures With Parameters

* [clipboard\_pasted](/core/sys/orca/#clipboard_pasted)
* [clipboard\_pasted\_text](/core/sys/orca/#clipboard_pasted_text)
* [input\_next\_frame](/core/sys/orca/#input_next_frame)
* [input\_process\_event](/core/sys/orca/#input_process_event)
* [input\_text\_utf32](/core/sys/orca/#input_text_utf32)
* [input\_text\_utf8](/core/sys/orca/#input_text_utf8)
* [key\_down](/core/sys/orca/#key_down)
* [key\_down\_scancode](/core/sys/orca/#key_down_scancode)
* [key\_mods](/core/sys/orca/#key_mods)
* [key\_press\_count](/core/sys/orca/#key_press_count)
* [key\_press\_count\_scancode](/core/sys/orca/#key_press_count_scancode)
* [key\_release\_count](/core/sys/orca/#key_release_count)
* [key\_release\_count\_scancode](/core/sys/orca/#key_release_count_scancode)
* [key\_repeat\_count](/core/sys/orca/#key_repeat_count)
* [key\_repeat\_count\_scancode](/core/sys/orca/#key_repeat_count_scancode)
* [mouse\_clicked](/core/sys/orca/#mouse_clicked)
* [mouse\_delta](/core/sys/orca/#mouse_delta)
* [mouse\_double\_clicked](/core/sys/orca/#mouse_double_clicked)
* [mouse\_down](/core/sys/orca/#mouse_down)
* [mouse\_position](/core/sys/orca/#mouse_position)
* [mouse\_pressed](/core/sys/orca/#mouse_pressed)
* [mouse\_released](/core/sys/orca/#mouse_released)
* [mouse\_wheel](/core/sys/orca/#mouse_wheel)



##### Related Procedures With Returns

* [ui\_input](/core/sys/orca/#ui_input)

### [io\_cmp ¶](#io_cmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1309)

```
io_cmp :: struct {
	// The request ID as passed in the `oc_io_req` request that generated this completion.
	id:    u64,
	// The error value for the operation.
	error: io_error,
	using _: struct #raw_union {
		result: i64,
		size:   u64,
		offset: i64,
		handle: file,
	},
}
```

 

A structure describing the completion of an I/O operation.




##### Related Procedures With Returns

* [io\_wait\_single\_req](/core/sys/orca/#io_wait_single_req)

### [io\_error ¶](#io_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1259)

```
io_error :: enum u32 {
	// No error.
	OK          = 0, 
	// An unexpected error happened.
	UNKNOWN     = 1, 
	// The request had an invalid operation.
	OP          = 2, 
	// The request had an invalid handle.
	HANDLE      = 3, 
	// The operation was not carried out because the file handle has previous errors.
	PREV        = 4, 
	// The request contained wrong arguments.
	ARG         = 5, 
	// The operation requires permissions that the file handle doesn't have.
	PERM        = 6, 
	// The operation couldn't complete due to a lack of space in the result buffer.
	SPACE       = 7, 
	// One of the directory in the path does not exist or couldn't be traversed.
	NO_ENTRY    = 8, 
	// The file already exists.
	EXISTS      = 9, 
	// The file is not a directory.
	NOT_DIR     = 10, 
	// The file is a directory.
	DIR         = 11, 
	// There are too many opened files.
	MAX_FILES   = 12, 
	// The path contains too many symbolic links (this may be indicative of a symlink loop).
	MAX_LINKS   = 13, 
	// The path is too long.
	PATH_LENGTH = 14, 
	// The file is too large.
	FILE_SIZE   = 15, 
	// The file is too large to be opened.
	OVERFLOW    = 16, 
	// The file is locked or the device on which it is stored is not ready.
	NOT_READY   = 17, 
	// The system is out of memory.
	MEM         = 18, 
	// The operation was interrupted by a signal.
	INTERRUPT   = 19, 
	// A physical error happened.
	PHYSICAL    = 20, 
	// The device on which the file is stored was not found.
	NO_DEVICE   = 21, 
	// One element along the path is outside the root directory subtree.
	WALKOUT     = 22, 
}
```

 

A type identifying an I/O error.
This enum declares all I/O error values.




##### Related Procedures With Returns

* [file\_last\_error](/core/sys/orca/#file_last_error)

### [io\_op ¶](#io_op) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1213)

```
io_op :: enum u32 {
	// ['Open a file at a path relative to a given root directory.', '', "    - `handle` is the handle to the root directory. If it is nil, the application's default directory is used.", '    - `size` is the size of the path, in bytes.', '    - `buffer` points to an array containing the path of the file to open, relative to the directory identified by `handle`.', '    - `open` contains the permissions and flags for the open operation.']
	OPEN_AT        = 0, 
	// ['Close a file handle.', '', '    - `handle` is the handle to close.']
	CLOSE          = 1, 
	// ['Get status information for a file handle.', '', '    - `handle` is the handle to stat.', '    - `size` is the size of the result buffer. It should be at least `sizeof(oc_file_status)`.', '    - `buffer` is the result buffer.']
	FSTAT          = 2, 
	// ['Move the file position in a file.', '', '    - `handle` is the handle of the file.', '    - `offset` specifies the offset of the new position, relative to the base position specified by `whence`.', '    - `whence` determines the base position for the seek operation.']
	SEEK           = 3, 
	// ['Read data from a file.', '', '    - `handle` is the handle of the file.', '    - `size` is the number of bytes to read.', '    - `buffer` is the result buffer. It should be big enough to hold `size` bytes.']
	READ           = 4, 
	// ['Write data to a file.', '', '    - `handle` is the handle of the file.', '    - `size` is the number of bytes to write.', '    - `buffer` contains the data to write to the file.']
	WRITE          = 5, 
	// ['Get the error attached to a file handle.', '', '    - `handle` is the handle of the file.']
	OC_OC_IO_ERROR = 6, 
}
```

 

A type used to identify I/O operations.
This enum declares all I/O operations.

### [io\_req ¶](#io_req) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1231)

```
io_req :: struct {
	// An identifier for the request. You can set this to any value you want. It is passed back in the `oc_io_cmp` completion and can be used to match requests and completions.
	id:     u64,
	// The requested operation.
	op:     io_op,
	// A file handle used by some operations.
	handle: file,
	// An offset used by some operations.
	offset: i64,
	// A size indicating the capacity of the buffer pointed to by `buffer`, in bytes.
	size:   u64,
	using _: struct #raw_union {
		buffer: [^]u8,
		unused: u64,
	},
	using _: struct #raw_union {
		using open: struct {
			// The access permissions requested on the file to open.
			rights: bit_set[file_access_flag; u16],
			// The options to use when opening the file.
			flags:  bit_set[file_open_flag; u16],
		},
		whence: file_whence,
	},
}
```

 

A structure describing an I/O request.




##### Related Procedures With Parameters

* [io\_wait\_single\_req](/core/sys/orca/#io_wait_single_req)

### [io\_req\_id ¶](#io_req_id) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1209)

```
io_req_id :: u64
```

 

A type used to identify I/O requests.




##### Related Procedures With Parameters

* [arena\_push](/core/sys/orca/#arena_push)
* [arena\_push\_aligned](/core/sys/orca/#arena_push_aligned)
* [arena\_push\_aligned\_uninitialized](/core/sys/orca/#arena_push_aligned_uninitialized)
* [arena\_push\_array](/core/sys/orca/#arena_push_array)
* [arena\_push\_uninitialized](/core/sys/orca/#arena_push_uninitialized)
* [file\_read](/core/sys/orca/#file_read)
* [file\_write](/core/sys/orca/#file_write)
* [str16\_from\_buffer](/core/sys/orca/#str16_from_buffer)
* [str16\_push\_buffer](/core/sys/orca/#str16_push_buffer)
* [str16\_push\_slice](/core/sys/orca/#str16_push_slice)
* [str16\_slice](/core/sys/orca/#str16_slice)
* [str32\_from\_buffer](/core/sys/orca/#str32_from_buffer)
* [str32\_push\_buffer](/core/sys/orca/#str32_push_buffer)
* [str32\_push\_slice](/core/sys/orca/#str32_push_slice)
* [str32\_slice](/core/sys/orca/#str32_slice)
* [str8\_from\_buffer](/core/sys/orca/#str8_from_buffer)
* [str8\_push\_buffer](/core/sys/orca/#str8_push_buffer)
* [str8\_push\_slice](/core/sys/orca/#str8_push_slice)
* [str8\_slice](/core/sys/orca/#str8_slice)
* [ui\_box\_user\_data\_push](/core/sys/orca/#ui_box_user_data_push)
* [ui\_user\_data\_push](/core/sys/orca/#ui_user_data_push)
* [utf8\_decode\_at](/core/sys/orca/#utf8_decode_at)
* [utf8\_from\_codepoints](/core/sys/orca/#utf8_from_codepoints)
* [utf8\_next\_offset](/core/sys/orca/#utf8_next_offset)
* [utf8\_prev\_offset](/core/sys/orca/#utf8_prev_offset)
* [utf8\_to\_codepoints](/core/sys/orca/#utf8_to_codepoints)



##### Related Procedures With Returns

* [file\_read\_slice](/core/sys/orca/#file_read_slice)
* [file\_size](/core/sys/orca/#file_size)
* [file\_write\_slice](/core/sys/orca/#file_write_slice)
* [utf8\_byte\_count\_for\_codepoints](/core/sys/orca/#utf8_byte_count_for_codepoints)
* [utf8\_codepoint\_count\_for\_string](/core/sys/orca/#utf8_codepoint_count_for_string)

### [joint\_type ¶](#joint_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1505)

```
joint_type :: enum u32 {
	// Miter joint.
	MITER = 0, 
	// Bevel joint.
	BEVEL = 1, 
	// Don't join path segments.
	NONE  = 2, 
}
```

 

Stroke joint types.




##### Related Procedures With Parameters

* [set\_joint](/core/sys/orca/#set_joint)



##### Related Procedures With Returns

* [get\_joint](/core/sys/orca/#get_joint)

### [key\_action ¶](#key_action) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L655)

```
key_action :: enum u32 {
	// No action happened on that key.
	NO_ACTION = 0, 
	// The key was pressed.
	PRESS     = 1, 
	// The key was released.
	RELEASE   = 2, 
	// The key was maintained pressed at least for the system's key repeat period.
	REPEAT    = 3, 
}
```

 

This enum describes the actions that can happen to a key.

### [key\_code ¶](#key_code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L793)

```
key_code :: enum u32 {
	UNKNOWN       = 0, 
	SPACE         = 32, 
	APOSTROPHE    = 39, 
	COMMA         = 44, 
	MINUS         = 45, 
	PERIOD        = 46, 
	SLASH         = 47, 
	_0            = 48, 
	_1            = 49, 
	_2            = 50, 
	_3            = 51, 
	_4            = 52, 
	_5            = 53, 
	_6            = 54, 
	_7            = 55, 
	_8            = 56, 
	_9            = 57, 
	SEMICOLON     = 59, 
	EQUAL         = 61, 
	LEFT_BRACKET  = 91, 
	BACKSLASH     = 92, 
	RIGHT_BRACKET = 93, 
	GRAVE_ACCENT  = 96, 
	A             = 97, 
	B             = 98, 
	C             = 99, 
	D             = 100, 
	E             = 101, 
	F             = 102, 
	G             = 103, 
	H             = 104, 
	I             = 105, 
	J             = 106, 
	K             = 107, 
	L             = 108, 
	M             = 109, 
	N             = 110, 
	O             = 111, 
	P             = 112, 
	Q             = 113, 
	R             = 114, 
	S             = 115, 
	T             = 116, 
	U             = 117, 
	V             = 118, 
	W             = 119, 
	X             = 120, 
	Y             = 121, 
	Z             = 122, 
	WORLD_1       = 161, 
	WORLD_2       = 162, 
	ESCAPE        = 256, 
	ENTER         = 257, 
	TAB           = 258, 
	BACKSPACE     = 259, 
	INSERT        = 260, 
	DELETE        = 261, 
	RIGHT         = 262, 
	LEFT          = 263, 
	DOWN          = 264, 
	UP            = 265, 
	PAGE_UP       = 266, 
	PAGE_DOWN     = 267, 
	HOME          = 268, 
	END           = 269, 
	CAPS_LOCK     = 280, 
	SCROLL_LOCK   = 281, 
	NUM_LOCK      = 282, 
	PRINT_SCREEN  = 283, 
	PAUSE         = 284, 
	F1            = 290, 
	F2            = 291, 
	F3            = 292, 
	F4            = 293, 
	F5            = 294, 
	F6            = 295, 
	F7            = 296, 
	F8            = 297, 
	F9            = 298, 
	F10           = 299, 
	F11           = 300, 
	F12           = 301, 
	F13           = 302, 
	F14           = 303, 
	F15           = 304, 
	F16           = 305, 
	F17           = 306, 
	F18           = 307, 
	F19           = 308, 
	F20           = 309, 
	F21           = 310, 
	F22           = 311, 
	F23           = 312, 
	F24           = 313, 
	F25           = 314, 
	KP_0          = 320, 
	KP_1          = 321, 
	KP_2          = 322, 
	KP_3          = 323, 
	KP_4          = 324, 
	KP_5          = 325, 
	KP_6          = 326, 
	KP_7          = 327, 
	KP_8          = 328, 
	KP_9          = 329, 
	KP_DECIMAL    = 330, 
	KP_DIVIDE     = 331, 
	KP_MULTIPLY   = 332, 
	KP_SUBTRACT   = 333, 
	KP_ADD        = 334, 
	KP_ENTER      = 335, 
	KP_EQUAL      = 336, 
	LEFT_SHIFT    = 340, 
	LEFT_CONTROL  = 341, 
	LEFT_ALT      = 342, 
	LEFT_SUPER    = 343, 
	RIGHT_SHIFT   = 344, 
	RIGHT_CONTROL = 345, 
	RIGHT_ALT     = 346, 
	RIGHT_SUPER   = 347, 
	MENU          = 348, 
	COUNT         = 349, 
}
```

 

A code identifying a key. The physical location of the key corresponding to a given key code depends on the system's keyboard layout.




##### Related Procedures With Parameters

* [key\_down](/core/sys/orca/#key_down)
* [key\_press\_count](/core/sys/orca/#key_press_count)
* [key\_release\_count](/core/sys/orca/#key_release_count)
* [key\_repeat\_count](/core/sys/orca/#key_repeat_count)



##### Related Procedures With Returns

* [scancode\_to\_keycode](/core/sys/orca/#scancode_to_keycode)

### [key\_event ¶](#key_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L938)

```
key_event :: struct {
	// The action that was done on the key.
	action:     key_action,
	// The scan code of the key. Only valid for key events.
	scanCode:   scan_code,
	// The key code of the key. Only valid for key events.
	keyCode:    key_code,
	// The button of the mouse. Only valid for mouse button events.
	button:     mouse_button,
	// Modifier flags indicating which modifier keys where pressed at the time of the event.
	mods:       bit_set[keymod_flag; u32],
	// The number of clicks that where detected for the button. Only valid for mouse button events.
	clickCount: u8,
}
```

 

A structure describing a key event or a mouse button event.

### [key\_state ¶](#key_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1077)

```
key_state :: struct {
	lastUpdate:       u64,
	transitionCount:  u32,
	repeatCount:      u32,
	down:             bool,
	sysClicked:       bool,
	sysDoubleClicked: bool,
	sysTripleClicked: bool,
}
```

### [keyboard\_state ¶](#keyboard_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1087)

```
keyboard_state :: struct {
	keys: [349]key_state,
	mods: bit_set[keymod_flag; u32],
}
```

### [keymod\_flag ¶](#keymod_flag) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L918)

```
keymod_flag :: enum u32 {
	ALT           = 0, 
	SHIFT, 
	CTRL, 
	CMD, 
	MAIN_MODIFIER, 
}
```

### [keymod\_flags ¶](#keymod_flags) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L925)

```
keymod_flags :: bit_set[keymod_flag; u32]
```

##### Related Procedures With Returns

* [key\_mods](/core/sys/orca/#key_mods)

### [list ¶](#list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L268)

```
list :: struct {
	// Points to the first element in the list.
	first: ^list_elt,
	// Points to the last element in the list.
	last:  ^list_elt,
}
```

 

A doubly-linked list.




##### Related Procedures With Parameters

* [list\_empty](/core/sys/orca/#list_empty)
* [list\_first\_entry](/core/sys/orca/#list_first_entry)
* [list\_for](/core/sys/orca/#list_for)
* [list\_for\_reverse](/core/sys/orca/#list_for_reverse)
* [list\_init](/core/sys/orca/#list_init)
* [list\_insert](/core/sys/orca/#list_insert)
* [list\_insert\_before](/core/sys/orca/#list_insert_before)
* [list\_last\_entry](/core/sys/orca/#list_last_entry)
* [list\_next\_entry](/core/sys/orca/#list_next_entry)
* [list\_pop\_back](/core/sys/orca/#list_pop_back)
* [list\_pop\_back\_entry](/core/sys/orca/#list_pop_back_entry)
* [list\_pop\_front](/core/sys/orca/#list_pop_front)
* [list\_pop\_front\_entry](/core/sys/orca/#list_pop_front_entry)
* [list\_prev\_entry](/core/sys/orca/#list_prev_entry)
* [list\_push\_back](/core/sys/orca/#list_push_back)
* [list\_push\_front](/core/sys/orca/#list_push_front)
* [list\_remove](/core/sys/orca/#list_remove)

### [list\_elt ¶](#list_elt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L260)

```
list_elt :: struct {
	// Points to the previous element in the list.
	prev: ^list_elt,
	// Points to the next element in the list.
	next: ^list_elt,
}
```

 

An element of an intrusive doubly-linked list.




##### Related Procedures With Parameters

* [list\_checked\_entry](/core/sys/orca/#list_checked_entry)
* [list\_entry](/core/sys/orca/#list_entry)
* [list\_insert](/core/sys/orca/#list_insert)
* [list\_insert\_before](/core/sys/orca/#list_insert_before)
* [list\_next\_entry](/core/sys/orca/#list_next_entry)
* [list\_prev\_entry](/core/sys/orca/#list_prev_entry)
* [list\_push\_back](/core/sys/orca/#list_push_back)
* [list\_push\_front](/core/sys/orca/#list_push_front)
* [list\_remove](/core/sys/orca/#list_remove)



##### Related Procedures With Returns

* [list\_pop\_back](/core/sys/orca/#list_pop_back)
* [list\_pop\_front](/core/sys/orca/#list_pop_front)

### [log\_level ¶](#log_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L221)

```
log_level :: enum u32 {
	// Only errors are logged.
	ERROR   = 0, 
	// Only warnings and errors are logged.
	WARNING = 1, 
	// All messages are logged.
	INFO    = 2, 
	COUNT   = 3, 
}
```

 

Constants allowing to specify the level of logging verbosity.




##### Related Procedures With Parameters

* [log\_ext](/core/sys/orca/#log_ext)
* [log\_set\_level](/core/sys/orca/#log_set_level)
* [log\_typed](/core/sys/orca/#log_typed)

### [mat2x3 ¶](#mat2x3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L171)

```
mat2x3 :: [6]f32
```

 

A 2-by-3 matrix.




##### Related Procedures With Parameters

* [mat2x3\_inv](/core/sys/orca/#mat2x3_inv)
* [mat2x3\_mul](/core/sys/orca/#mat2x3_mul)
* [mat2x3\_mul\_m](/core/sys/orca/#mat2x3_mul_m)
* [matrix\_multiply\_push](/core/sys/orca/#matrix_multiply_push)
* [matrix\_push](/core/sys/orca/#matrix_push)



##### Related Procedures With Returns

* [mat2x3\_rotate](/core/sys/orca/#mat2x3_rotate)
* [mat2x3\_scale](/core/sys/orca/#mat2x3_scale)
* [mat2x3\_translate](/core/sys/orca/#mat2x3_translate)
* [matrix\_top](/core/sys/orca/#matrix_top)

### [mem\_modify\_proc ¶](#mem_modify_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L305)

```
mem_modify_proc :: proc "c" (_context: ^base_allocator, ptr: rawptr, size: u64)
```

 

The prototype of a procedure to modify a memory reservation.

### [mem\_reserve\_proc ¶](#mem_reserve_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L302)

```
mem_reserve_proc :: proc "c" (_context: ^base_allocator, size: u64) -> rawptr
```

 

The prototype of a procedure to reserve memory from the system.

### [mouse\_button ¶](#mouse_button) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L928)

```
mouse_button :: enum u32 {
	LEFT         = 0, 
	RIGHT        = 1, 
	MIDDLE       = 2, 
	EXT1         = 3, 
	EXT2         = 4, 
	BUTTON_COUNT = 5, 
}
```

 

A code identifying a mouse button.




##### Related Procedures With Parameters

* [mouse\_clicked](/core/sys/orca/#mouse_clicked)
* [mouse\_double\_clicked](/core/sys/orca/#mouse_double_clicked)
* [mouse\_down](/core/sys/orca/#mouse_down)
* [mouse\_pressed](/core/sys/orca/#mouse_pressed)
* [mouse\_released](/core/sys/orca/#mouse_released)

### [mouse\_event ¶](#mouse_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L964)

```
mouse_event :: struct {
	// The x coordinate of the mouse.
	x:      f32,
	// The y coordinate of the mouse.
	y:      f32,
	// The delta from the last x coordinate of the mouse, or the scroll value along the x coordinate.
	deltaX: f32,
	// The delta from the last y coordinate of the mouse, or the scoll value along the y  coordinate.
	deltaY: f32,
	// Modifier flags indicating which modifier keys where pressed at the time of the event.
	mods:   bit_set[keymod_flag; u32],
}
```

 

A structure describing a mouse move or a mouse wheel event. Mouse coordinates have their origin at the top-left corner of the window, with the y axis going down.

### [mouse\_state ¶](#mouse_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1092)

```
mouse_state :: struct {
	lastUpdate: u64,
	posValid:   bool,
	pos:        [2]f32,
	delta:      [2]f32,
	wheel:      [2]f32,
	using _:    struct #raw_union {
		buttons: [5]key_state,
		using _: struct {
			left:   key_state,
			right:  key_state,
			middle: key_state,
			ext1:   key_state,
			ext2:   key_state,
		},
	},
}
```

### [move\_event ¶](#move_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L978)

```
move_event :: struct {
	// The position and dimension of the frame rectangle, i.e. including the window title bar and border.
	frame:   rect,
	// The position and dimension of the content rectangle, relative to the frame rectangle.
	content: rect,
}
```

 

A structure describing a window move or resize event.

### [pool ¶](#pool) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L12)

```
pool :: struct {
	arena:     arena,
	freeList:  list,
	blockSize: u64,
}
```

 

currently missing in the api.json

### [rect ¶](#rect) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L174)

```
rect :: struct {
	x: f32,
	y: f32,
	w: f32,
	h: f32,
}
```

 

An axis-aligned rectangle.




##### Related Procedures With Parameters

* [image\_draw](/core/sys/orca/#image_draw)
* [image\_draw\_region](/core/sys/orca/#image_draw_region)
* [image\_upload\_region\_rgba8](/core/sys/orca/#image_upload_region_rgba8)
* [rect\_atlas\_recycle](/core/sys/orca/#rect_atlas_recycle)
* [set\_image\_source\_region](/core/sys/orca/#set_image_source_region)



##### Related Procedures With Returns

* [clip\_top](/core/sys/orca/#clip_top)
* [get\_image\_source\_region](/core/sys/orca/#get_image_source_region)
* [glyph\_outlines](/core/sys/orca/#glyph_outlines)
* [rect\_atlas\_alloc](/core/sys/orca/#rect_atlas_alloc)

### [rect\_atlas ¶](#rect_atlas) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1556)

```
rect_atlas :: struct {}
```

 

An opaque struct representing a rectangle atlas. This is used to allocate rectangular regions of an image to make texture atlases.




##### Related Procedures With Parameters

* [image\_atlas\_alloc\_from\_file](/core/sys/orca/#image_atlas_alloc_from_file)
* [image\_atlas\_alloc\_from\_memory](/core/sys/orca/#image_atlas_alloc_from_memory)
* [image\_atlas\_alloc\_from\_path](/core/sys/orca/#image_atlas_alloc_from_path)
* [image\_atlas\_alloc\_from\_rgba8](/core/sys/orca/#image_atlas_alloc_from_rgba8)
* [image\_atlas\_recycle](/core/sys/orca/#image_atlas_recycle)
* [rect\_atlas\_alloc](/core/sys/orca/#rect_atlas_alloc)
* [rect\_atlas\_recycle](/core/sys/orca/#rect_atlas_recycle)



##### Related Procedures With Returns

* [rect\_atlas\_create](/core/sys/orca/#rect_atlas_create)

### [scan\_code ¶](#scan_code) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L667)

```
scan_code :: enum u32 {
	UNKNOWN       = 0, 
	SPACE         = 32, 
	APOSTROPHE    = 39, 
	COMMA         = 44, 
	MINUS         = 45, 
	PERIOD        = 46, 
	SLASH         = 47, 
	_0            = 48, 
	_1            = 49, 
	_2            = 50, 
	_3            = 51, 
	_4            = 52, 
	_5            = 53, 
	_6            = 54, 
	_7            = 55, 
	_8            = 56, 
	_9            = 57, 
	SEMICOLON     = 59, 
	EQUAL         = 61, 
	LEFT_BRACKET  = 91, 
	BACKSLASH     = 92, 
	RIGHT_BRACKET = 93, 
	GRAVE_ACCENT  = 96, 
	A             = 97, 
	B             = 98, 
	C             = 99, 
	D             = 100, 
	E             = 101, 
	F             = 102, 
	G             = 103, 
	H             = 104, 
	I             = 105, 
	J             = 106, 
	K             = 107, 
	L             = 108, 
	M             = 109, 
	N             = 110, 
	O             = 111, 
	P             = 112, 
	Q             = 113, 
	R             = 114, 
	S             = 115, 
	T             = 116, 
	U             = 117, 
	V             = 118, 
	W             = 119, 
	X             = 120, 
	Y             = 121, 
	Z             = 122, 
	WORLD_1       = 161, 
	WORLD_2       = 162, 
	ESCAPE        = 256, 
	ENTER         = 257, 
	TAB           = 258, 
	BACKSPACE     = 259, 
	INSERT        = 260, 
	DELETE        = 261, 
	RIGHT         = 262, 
	LEFT          = 263, 
	DOWN          = 264, 
	UP            = 265, 
	PAGE_UP       = 266, 
	PAGE_DOWN     = 267, 
	HOME          = 268, 
	END           = 269, 
	CAPS_LOCK     = 280, 
	SCROLL_LOCK   = 281, 
	NUM_LOCK      = 282, 
	PRINT_SCREEN  = 283, 
	PAUSE         = 284, 
	F1            = 290, 
	F2            = 291, 
	F3            = 292, 
	F4            = 293, 
	F5            = 294, 
	F6            = 295, 
	F7            = 296, 
	F8            = 297, 
	F9            = 298, 
	F10           = 299, 
	F11           = 300, 
	F12           = 301, 
	F13           = 302, 
	F14           = 303, 
	F15           = 304, 
	F16           = 305, 
	F17           = 306, 
	F18           = 307, 
	F19           = 308, 
	F20           = 309, 
	F21           = 310, 
	F22           = 311, 
	F23           = 312, 
	F24           = 313, 
	F25           = 314, 
	KP_0          = 320, 
	KP_1          = 321, 
	KP_2          = 322, 
	KP_3          = 323, 
	KP_4          = 324, 
	KP_5          = 325, 
	KP_6          = 326, 
	KP_7          = 327, 
	KP_8          = 328, 
	KP_9          = 329, 
	KP_DECIMAL    = 330, 
	KP_DIVIDE     = 331, 
	KP_MULTIPLY   = 332, 
	KP_SUBTRACT   = 333, 
	KP_ADD        = 334, 
	KP_ENTER      = 335, 
	KP_EQUAL      = 336, 
	LEFT_SHIFT    = 340, 
	LEFT_CONTROL  = 341, 
	LEFT_ALT      = 342, 
	LEFT_SUPER    = 343, 
	RIGHT_SHIFT   = 344, 
	RIGHT_CONTROL = 345, 
	RIGHT_ALT     = 346, 
	RIGHT_SUPER   = 347, 
	MENU          = 348, 
	COUNT         = 349, 
}
```

 

A code representing a key's physical location. This is independent of the system's keyboard layout.




##### Related Procedures With Parameters

* [key\_down\_scancode](/core/sys/orca/#key_down_scancode)
* [key\_press\_count\_scancode](/core/sys/orca/#key_press_count_scancode)
* [key\_release\_count\_scancode](/core/sys/orca/#key_release_count_scancode)
* [key\_repeat\_count\_scancode](/core/sys/orca/#key_repeat_count_scancode)
* [scancode\_to\_keycode](/core/sys/orca/#scancode_to_keycode)

### [str16 ¶](#str16) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L417)

```
str16 :: distinct []u16
```

 

A type describing a string of 16-bits characters (typically used for UTF-16).




##### Related Procedures With Parameters

* [str16\_list\_push](/core/sys/orca/#str16_list_push)
* [str16\_push\_copy](/core/sys/orca/#str16_push_copy)
* [str16\_push\_slice](/core/sys/orca/#str16_push_slice)
* [str16\_slice](/core/sys/orca/#str16_slice)
* [str16\_split](/core/sys/orca/#str16_split)



##### Related Procedures With Returns

* [str16\_from\_buffer](/core/sys/orca/#str16_from_buffer)
* [str16\_list\_first](/core/sys/orca/#str16_list_first)
* [str16\_list\_join](/core/sys/orca/#str16_list_join)
* [str16\_list\_last](/core/sys/orca/#str16_list_last)
* [str16\_push\_buffer](/core/sys/orca/#str16_push_buffer)

### [str16\_elt ¶](#str16_elt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L420)

```
str16_elt :: struct {
	// The string element is linked into its parent string list through this field.
	listElt: list_elt,
	// The string for this element.
	string:  str16,
}
```

 

A type representing an element of an `oc_str16` list.




##### Related Procedures With Returns

* [str16\_list\_for](/core/sys/orca/#str16_list_for)

### [str16\_list ¶](#str16_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L427)

```
str16_list :: struct {
	// A linked-list of `oc_str8_elt`.
	list:     list,
	// The number of elements in `list`.
	eltCount: u64,
	// The total length of the string list, which is the sum of the lengths over all elements.
	len:      u64,
}
```

##### Related Procedures With Parameters

* [str16\_list\_first](/core/sys/orca/#str16_list_first)
* [str16\_list\_for](/core/sys/orca/#str16_list_for)
* [str16\_list\_join](/core/sys/orca/#str16_list_join)
* [str16\_list\_last](/core/sys/orca/#str16_list_last)
* [str16\_list\_push](/core/sys/orca/#str16_list_push)
* [str16\_split](/core/sys/orca/#str16_split)

### [str32 ¶](#str32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L437)

```
str32 :: distinct []rune
```

 

A type describing a string of 32-bits characters (typically used for UTF-32 codepoints).




##### Related Procedures With Parameters

* [codepoints\_outlines](/core/sys/orca/#codepoints_outlines)
* [font\_get\_glyph\_indices](/core/sys/orca/#font_get_glyph_indices)
* [font\_push\_glyph\_indices](/core/sys/orca/#font_push_glyph_indices)
* [font\_text\_metrics\_utf32](/core/sys/orca/#font_text_metrics_utf32)
* [glyph\_outlines](/core/sys/orca/#glyph_outlines)
* [str32\_list\_push](/core/sys/orca/#str32_list_push)
* [str32\_push\_copy](/core/sys/orca/#str32_push_copy)
* [str32\_push\_slice](/core/sys/orca/#str32_push_slice)
* [str32\_slice](/core/sys/orca/#str32_slice)
* [str32\_split](/core/sys/orca/#str32_split)
* [utf8\_byte\_count\_for\_codepoints](/core/sys/orca/#utf8_byte_count_for_codepoints)
* [utf8\_from\_codepoints](/core/sys/orca/#utf8_from_codepoints)
* [utf8\_push\_from\_codepoints](/core/sys/orca/#utf8_push_from_codepoints)



##### Related Procedures With Returns

* [input\_text\_utf32](/core/sys/orca/#input_text_utf32)
* [str32\_from\_buffer](/core/sys/orca/#str32_from_buffer)
* [str32\_list\_first](/core/sys/orca/#str32_list_first)
* [str32\_list\_join](/core/sys/orca/#str32_list_join)
* [str32\_list\_last](/core/sys/orca/#str32_list_last)
* [str32\_push\_buffer](/core/sys/orca/#str32_push_buffer)
* [utf8\_push\_to\_codepoints](/core/sys/orca/#utf8_push_to_codepoints)
* [utf8\_to\_codepoints](/core/sys/orca/#utf8_to_codepoints)

### [str32\_elt ¶](#str32_elt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L440)

```
str32_elt :: struct {
	// The string element is linked into its parent string list through this field.
	listElt: list_elt,
	// The string for this element.
	string:  str32,
}
```

 

A type representing an element of an `oc_str32` list.




##### Related Procedures With Returns

* [str32\_list\_for](/core/sys/orca/#str32_list_for)

### [str32\_list ¶](#str32_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L447)

```
str32_list :: struct {
	// A linked-list of `oc_str8_elt`.
	list:     list,
	// The number of elements in `list`.
	eltCount: u64,
	// The total length of the string list, which is the sum of the lengths over all elements.
	len:      u64,
}
```

##### Related Procedures With Parameters

* [str32\_list\_first](/core/sys/orca/#str32_list_first)
* [str32\_list\_for](/core/sys/orca/#str32_list_for)
* [str32\_list\_join](/core/sys/orca/#str32_list_join)
* [str32\_list\_last](/core/sys/orca/#str32_list_last)
* [str32\_list\_push](/core/sys/orca/#str32_list_push)
* [str32\_split](/core/sys/orca/#str32_split)

### [str8 ¶](#str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L396)

```
str8 :: string
```

 

A type representing a string of bytes.




##### Related Procedures With Parameters

* [clipboard\_set\_string](/core/sys/orca/#clipboard_set_string)
* [create\_odin\_logger](/core/sys/orca/#create_odin_logger)
* [file\_listdir](/core/sys/orca/#file_listdir)
* [file\_open](/core/sys/orca/#file_open)
* [file\_open\_at](/core/sys/orca/#file_open_at)
* [file\_open\_with\_request](/core/sys/orca/#file_open_with_request)
* [font\_create\_from\_memory](/core/sys/orca/#font_create_from_memory)
* [font\_create\_from\_path](/core/sys/orca/#font_create_from_path)
* [font\_text\_metrics](/core/sys/orca/#font_text_metrics)
* [image\_atlas\_alloc\_from\_memory](/core/sys/orca/#image_atlas_alloc_from_memory)
* [image\_atlas\_alloc\_from\_path](/core/sys/orca/#image_atlas_alloc_from_path)
* [image\_create\_from\_memory](/core/sys/orca/#image_create_from_memory)
* [image\_create\_from\_path](/core/sys/orca/#image_create_from_path)
* [list\_checked\_entry](/core/sys/orca/#list_checked_entry)
* [list\_entry](/core/sys/orca/#list_entry)
* [list\_first\_entry](/core/sys/orca/#list_first_entry)
* [list\_for](/core/sys/orca/#list_for)
* [list\_for\_reverse](/core/sys/orca/#list_for_reverse)
* [list\_last\_entry](/core/sys/orca/#list_last_entry)
* [list\_next\_entry](/core/sys/orca/#list_next_entry)
* [list\_pop\_back\_entry](/core/sys/orca/#list_pop_back_entry)
* [list\_pop\_front\_entry](/core/sys/orca/#list_pop_front_entry)
* [list\_prev\_entry](/core/sys/orca/#list_prev_entry)
* [odin\_logger\_proc](/core/sys/orca/#odin_logger_proc)
* [path\_append](/core/sys/orca/#path_append)
* [path\_is\_absolute](/core/sys/orca/#path_is_absolute)
* [path\_slice\_directory](/core/sys/orca/#path_slice_directory)
* [path\_slice\_filename](/core/sys/orca/#path_slice_filename)
* [path\_split](/core/sys/orca/#path_split)
* [str8\_cmp](/core/sys/orca/#str8_cmp)
* [str8\_list\_collate](/core/sys/orca/#str8_list_collate)
* [str8\_list\_push](/core/sys/orca/#str8_list_push)
* [str8\_push\_copy](/core/sys/orca/#str8_push_copy)
* [str8\_push\_slice](/core/sys/orca/#str8_push_slice)
* [str8\_slice](/core/sys/orca/#str8_slice)
* [str8\_split](/core/sys/orca/#str8_split)
* [str8\_to\_cstring](/core/sys/orca/#str8_to_cstring)
* [text\_fill](/core/sys/orca/#text_fill)
* [text\_outlines](/core/sys/orca/#text_outlines)
* [ui\_box\_begin\_str8](/core/sys/orca/#ui_box_begin_str8)
* [ui\_box\_set\_text](/core/sys/orca/#ui_box_set_text)
* [ui\_box\_tag\_str8](/core/sys/orca/#ui_box_tag_str8)
* [ui\_button\_str8](/core/sys/orca/#ui_button_str8)
* [ui\_checkbox\_str8](/core/sys/orca/#ui_checkbox_str8)
* [ui\_container](/core/sys/orca/#ui_container)
* [ui\_label\_str8](/core/sys/orca/#ui_label_str8)
* [ui\_menu](/core/sys/orca/#ui_menu)
* [ui\_menu\_bar](/core/sys/orca/#ui_menu_bar)
* [ui\_menu\_bar\_begin\_str8](/core/sys/orca/#ui_menu_bar_begin_str8)
* [ui\_menu\_begin\_str8](/core/sys/orca/#ui_menu_begin_str8)
* [ui\_menu\_button\_str8](/core/sys/orca/#ui_menu_button_str8)
* [ui\_radio\_group\_str8](/core/sys/orca/#ui_radio_group_str8)
* [ui\_select\_popup\_str8](/core/sys/orca/#ui_select_popup_str8)
* [ui\_set\_text](/core/sys/orca/#ui_set_text)
* [ui\_slider\_str8](/core/sys/orca/#ui_slider_str8)
* [ui\_style\_rule\_begin](/core/sys/orca/#ui_style_rule_begin)
* [ui\_style\_set\_var\_str8](/core/sys/orca/#ui_style_set_var_str8)
* [ui\_tag\_next\_str8](/core/sys/orca/#ui_tag_next_str8)
* [ui\_tag\_str8](/core/sys/orca/#ui_tag_str8)
* [ui\_text\_box\_str8](/core/sys/orca/#ui_text_box_str8)
* [ui\_tooltip\_str8](/core/sys/orca/#ui_tooltip_str8)
* [ui\_var\_default\_color\_str8](/core/sys/orca/#ui_var_default_color_str8)
* [ui\_var\_default\_f32\_str8](/core/sys/orca/#ui_var_default_f32_str8)
* [ui\_var\_default\_font\_str8](/core/sys/orca/#ui_var_default_font_str8)
* [ui\_var\_default\_i32\_str8](/core/sys/orca/#ui_var_default_i32_str8)
* [ui\_var\_default\_size\_str8](/core/sys/orca/#ui_var_default_size_str8)
* [ui\_var\_default\_str8](/core/sys/orca/#ui_var_default_str8)
* [ui\_var\_get\_color\_str8](/core/sys/orca/#ui_var_get_color_str8)
* [ui\_var\_get\_f32\_str8](/core/sys/orca/#ui_var_get_f32_str8)
* [ui\_var\_get\_font\_str8](/core/sys/orca/#ui_var_get_font_str8)
* [ui\_var\_get\_i32\_str8](/core/sys/orca/#ui_var_get_i32_str8)
* [ui\_var\_get\_size\_str8](/core/sys/orca/#ui_var_get_size_str8)
* [ui\_var\_set\_color\_str8](/core/sys/orca/#ui_var_set_color_str8)
* [ui\_var\_set\_f32\_str8](/core/sys/orca/#ui_var_set_f32_str8)
* [ui\_var\_set\_font\_str8](/core/sys/orca/#ui_var_set_font_str8)
* [ui\_var\_set\_i32\_str8](/core/sys/orca/#ui_var_set_i32_str8)
* [ui\_var\_set\_size\_str8](/core/sys/orca/#ui_var_set_size_str8)
* [ui\_var\_set\_str8](/core/sys/orca/#ui_var_set_str8)
* [utf8\_codepoint\_count\_for\_string](/core/sys/orca/#utf8_codepoint_count_for_string)
* [utf8\_decode](/core/sys/orca/#utf8_decode)
* [utf8\_decode\_at](/core/sys/orca/#utf8_decode_at)
* [utf8\_next\_offset](/core/sys/orca/#utf8_next_offset)
* [utf8\_prev\_offset](/core/sys/orca/#utf8_prev_offset)
* [utf8\_push\_to\_codepoints](/core/sys/orca/#utf8_push_to_codepoints)
* [utf8\_to\_codepoints](/core/sys/orca/#utf8_to_codepoints)
* [window\_set\_title](/core/sys/orca/#window_set_title)



##### Related Procedures With Returns

* [clipboard\_pasted\_text](/core/sys/orca/#clipboard_pasted_text)
* [input\_text\_utf8](/core/sys/orca/#input_text_utf8)
* [path\_join](/core/sys/orca/#path_join)
* [str8\_from\_buffer](/core/sys/orca/#str8_from_buffer)
* [str8\_list\_first](/core/sys/orca/#str8_list_first)
* [str8\_list\_join](/core/sys/orca/#str8_list_join)
* [str8\_list\_last](/core/sys/orca/#str8_list_last)
* [str8\_push\_buffer](/core/sys/orca/#str8_push_buffer)
* [str8\_push\_cstring](/core/sys/orca/#str8_push_cstring)
* [utf8\_encode](/core/sys/orca/#utf8_encode)
* [utf8\_from\_codepoints](/core/sys/orca/#utf8_from_codepoints)
* [utf8\_push\_from\_codepoints](/core/sys/orca/#utf8_push_from_codepoints)

### [str8\_elt ¶](#str8_elt) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L399)

```
str8_elt :: struct {
	// The string element is linked into its parent string list through this field.
	listElt: list_elt,
	// The string for this element.
	string:  string,
}
```

 

A type representing an element of a string list.




##### Related Procedures With Returns

* [str8\_list\_for](/core/sys/orca/#str8_list_for)

### [str8\_list ¶](#str8_list) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L407)

```
str8_list :: struct {
	// A linked-list of `oc_str8_elt`.
	list:     list,
	// The number of elements in `list`.
	eltCount: u64,
	// The total length of the string list, which is the sum of the lengths over all elements.
	len:      u64,
}
```

 

A type representing a string list.




##### Related Procedures With Parameters

* [path\_join](/core/sys/orca/#path_join)
* [str8\_list\_collate](/core/sys/orca/#str8_list_collate)
* [str8\_list\_empty](/core/sys/orca/#str8_list_empty)
* [str8\_list\_first](/core/sys/orca/#str8_list_first)
* [str8\_list\_for](/core/sys/orca/#str8_list_for)
* [str8\_list\_join](/core/sys/orca/#str8_list_join)
* [str8\_list\_last](/core/sys/orca/#str8_list_last)
* [str8\_list\_push](/core/sys/orca/#str8_list_push)
* [str8\_list\_pushf](/core/sys/orca/#str8_list_pushf)
* [str8\_split](/core/sys/orca/#str8_split)



##### Related Procedures With Returns

* [path\_split](/core/sys/orca/#path_split)

### [surface ¶](#surface) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1471)

```
surface :: distinct u64
```

 

An opaque handle to a graphics surface.




##### Related Procedures With Parameters

* [canvas\_present](/core/sys/orca/#canvas_present)
* [canvas\_render](/core/sys/orca/#canvas_render)
* [gles\_surface\_make\_current](/core/sys/orca/#gles_surface_make_current)
* [gles\_surface\_swap\_buffers](/core/sys/orca/#gles_surface_swap_buffers)
* [surface\_bring\_to\_front](/core/sys/orca/#surface_bring_to_front)
* [surface\_contents\_scaling](/core/sys/orca/#surface_contents_scaling)
* [surface\_destroy](/core/sys/orca/#surface_destroy)
* [surface\_get\_hidden](/core/sys/orca/#surface_get_hidden)
* [surface\_get\_size](/core/sys/orca/#surface_get_size)
* [surface\_is\_nil](/core/sys/orca/#surface_is_nil)
* [surface\_send\_to\_back](/core/sys/orca/#surface_send_to_back)
* [surface\_set\_hidden](/core/sys/orca/#surface_set_hidden)



##### Related Procedures With Returns

* [canvas\_surface\_create](/core/sys/orca/#canvas_surface_create)
* [gles\_surface\_create](/core/sys/orca/#gles_surface_create)
* [surface\_nil](/core/sys/orca/#surface_nil)

### [text\_metrics ¶](#text_metrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1546)

```
text_metrics :: struct {
	// The bounding box of the inked portion of the text.
	ink:     rect,
	// The logical bounding box of the text (including ascents, descents, and line gaps).
	logical: rect,
	// The amount from which to advance the cursor after drawing the text.
	advance: [2]f32,
}
```

 

A struct describing the metrics of a run of glyphs.




##### Related Procedures With Returns

* [font\_text\_metrics](/core/sys/orca/#font_text_metrics)
* [font\_text\_metrics\_utf32](/core/sys/orca/#font_text_metrics_utf32)

### [text\_state ¶](#text_state) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1112)

```
text_state :: struct {
	lastUpdate: u64,
	backing:    [64]rune,
	codePoints: str32,
}
```

### [ui\_align ¶](#ui_align) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1828)

```
ui_align :: enum u32 {
	START  = 0, 
	END    = 1, 
	CENTER = 2, 
}
```

### [ui\_attribute ¶](#ui_attribute) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1855)

```
ui_attribute :: enum u32 {
	WIDTH           = 0, 
	HEIGHT          = 1, 
	AXIS            = 2, 
	MARGIN_X        = 3, 
	MARGIN_Y        = 4, 
	SPACING         = 5, 
	ALIGN_X         = 6, 
	ALIGN_Y         = 7, 
	FLOATING_X      = 8, 
	FLOATING_Y      = 9, 
	FLOAT_TARGET_X  = 10, 
	FLOAT_TARGET_Y  = 11, 
	OVERFLOW_X      = 12, 
	OVERFLOW_Y      = 13, 
	CONSTRAIN_X     = 14, 
	CONSTRAIN_Y     = 15, 
	COLOR           = 16, 
	BG_COLOR        = 17, 
	BORDER_COLOR    = 18, 
	FONT            = 19, 
	TEXT_SIZE       = 20, 
	BORDER_SIZE     = 21, 
	ROUNDNESS       = 22, 
	DRAW_MASK       = 23, 
	ANIMATION_TIME  = 24, 
	ANIMATION_MASK  = 25, 
	CLICK_THROUGH   = 26, 
	ATTRIBUTE_COUNT = 27, 
}
```

##### Related Procedures With Parameters

* [ui\_style\_set\_color](/core/sys/orca/#ui_style_set_color)
* [ui\_style\_set\_f32](/core/sys/orca/#ui_style_set_f32)
* [ui\_style\_set\_font](/core/sys/orca/#ui_style_set_font)
* [ui\_style\_set\_i32](/core/sys/orca/#ui_style_set_i32)
* [ui\_style\_set\_size](/core/sys/orca/#ui_style_set_size)
* [ui\_style\_set\_var](/core/sys/orca/#ui_style_set_var)
* [ui\_style\_set\_var\_str8](/core/sys/orca/#ui_style_set_var_str8)

### [ui\_attribute\_mask ¶](#ui_attribute_mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1886)

```
ui_attribute_mask :: enum u32 {
	NONE            = 0, 
	SIZE_WIDTH      = 1, 
	SIZE_HEIGHT     = 2, 
	LAYOUT_AXIS     = 4, 
	LAYOUT_MARGIN_X = 8, 
	LAYOUT_MARGIN_Y = 16, 
	LAYOUT_SPACING  = 32, 
	LAYOUT_ALIGN_X  = 64, 
	LAYOUT_ALIGN_Y  = 128, 
	FLOATING_X      = 256, 
	FLOATING_Y      = 512, 
	FLOAT_TARGET_X  = 1024, 
	FLOAT_TARGET_Y  = 2048, 
	OVERFLOW_X      = 4096, 
	OVERFLOW_Y      = 8192, 
	CONSTRAIN_X     = 16384, 
	CONSTRAIN_Y     = 32768, 
	COLOR           = 65536, 
	BG_COLOR        = 131072, 
	BORDER_COLOR    = 262144, 
	FONT            = 524288, 
	FONT_SIZE       = 1048576, 
	BORDER_SIZE     = 2097152, 
	ROUNDNESS       = 4194304, 
	DRAW_MASK       = 8388608, 
	ANIMATION_TIME  = 16777216, 
	ANIMATION_MASK  = 33554432, 
	CLICK_THROUGH   = 67108864, 
}
```

### [ui\_axis ¶](#ui_axis) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1822)

```
ui_axis :: enum u32 {
	X     = 0, 
	Y     = 1, 
	COUNT = 2, 
}
```

### [ui\_box ¶](#ui_box) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1985)

```
ui_box :: struct {
	listElt:          list_elt,
	children:         list,
	parent:           ^ui_box,
	overlayElt:       list_elt,
	overlay:          bool,
	bucketElt:        list_elt,
	key:              ui_key,
	frameCounter:     u64,
	keyString:        string,
	text:             string,
	tags:             list,
	drawProc:         ui_box_draw_proc,
	drawData:         rawptr,
	rules:            list,
	targetStyle:      ^ui_style,
	style:            ui_style,
	z:                u32,
	floatPos:         [2]f32,
	childrenSum:      [2]f32,
	spacing:          [2]f32,
	minSize:          [2]f32,
	rect:             rect,
	styleVariables:   list,
	sig:              ui_sig,
	fresh:            bool,
	closed:           bool,
	parentClosed:     bool,
	dragging:         bool,
	hot:              bool,
	active:           bool,
	scroll:           [2]f32,
	pressedMouse:     [2]f32,
	hotTransition:    f32,
	activeTransition: f32,
}
```

##### Related Procedures With Parameters

* [ui\_box\_get\_sig](/core/sys/orca/#ui_box_get_sig)
* [ui\_box\_release\_focus](/core/sys/orca/#ui_box_release_focus)
* [ui\_box\_request\_focus](/core/sys/orca/#ui_box_request_focus)
* [ui\_box\_set\_closed](/core/sys/orca/#ui_box_set_closed)
* [ui\_box\_set\_draw\_proc](/core/sys/orca/#ui_box_set_draw_proc)
* [ui\_box\_set\_overlay](/core/sys/orca/#ui_box_set_overlay)
* [ui\_box\_set\_text](/core/sys/orca/#ui_box_set_text)
* [ui\_box\_tag\_str8](/core/sys/orca/#ui_box_tag_str8)
* [ui\_box\_user\_data\_get](/core/sys/orca/#ui_box_user_data_get)
* [ui\_box\_user\_data\_push](/core/sys/orca/#ui_box_user_data_push)



##### Related Procedures With Returns

* [ui\_box\_begin\_str8](/core/sys/orca/#ui_box_begin_str8)
* [ui\_box\_end](/core/sys/orca/#ui_box_end)
* [ui\_container](/core/sys/orca/#ui_container)
* [ui\_slider](/core/sys/orca/#ui_slider)
* [ui\_slider\_str8](/core/sys/orca/#ui_slider_str8)

### [ui\_box\_draw\_proc ¶](#ui_box_draw_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1979)

```
ui_box_draw_proc :: proc "c" (arg0: ^ui_box, arg1: rawptr)
```

##### Related Procedures With Parameters

* [ui\_box\_set\_draw\_proc](/core/sys/orca/#ui_box_set_draw_proc)
* [ui\_set\_draw\_proc](/core/sys/orca/#ui_set_draw_proc)

### [ui\_box\_floating ¶](#ui_box_floating) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1930)

```
ui_box_floating :: [2]bool
```

### [ui\_box\_size ¶](#ui_box_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1928)

```
ui_box_size :: [2]ui_size
```

### [ui\_context ¶](#ui_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1958)

```
ui_context :: struct {}
```

##### Related Procedures With Parameters

* [ui\_context\_destroy](/core/sys/orca/#ui_context_destroy)
* [ui\_set\_context](/core/sys/orca/#ui_set_context)



##### Related Procedures With Returns

* [ui\_context\_create](/core/sys/orca/#ui_context_create)
* [ui\_get\_context](/core/sys/orca/#ui_get_context)

### [ui\_draw\_mask ¶](#ui_draw_mask) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1933)

```
ui_draw_mask :: enum u32 {
	BACKGROUND = 1, 
	BORDER     = 2, 
	TEXT       = 4, 
	PROC       = 8, 
}
```

 

These bits *disable* the corresponding element when they're set.

### [ui\_edit\_move ¶](#ui_edit_move) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2116)

```
ui_edit_move :: enum u32 {
	NONE = 0, 
	CHAR = 1, 
	WORD = 2, 
	LINE = 3, 
}
```

### [ui\_key ¶](#ui_key) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1981)

```
ui_key :: struct {
	hash: u64,
}
```

### [ui\_layout ¶](#ui_layout) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1919)

```
ui_layout :: struct {
	axis:      ui_axis,
	spacing:   f32,
	margin:    [2]f32,
	align:     [2]ui_align,
	overflow:  [2]ui_overflow,
	constrain: [2]bool,
}
```

### [ui\_layout\_align ¶](#ui_layout_align) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1917)

```
ui_layout_align :: [2]ui_align
```

### [ui\_overflow ¶](#ui_overflow) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1849)

```
ui_overflow :: enum u32 {
	CLIP   = 0, 
	ALLOW  = 1, 
	SCROLL = 2, 
}
```

### [ui\_radio\_group\_info ¶](#ui_radio_group_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2143)

```
ui_radio_group_info :: struct {
	changed:       bool,
	selectedIndex: i32,
	optionCount:   i32 `fmt:"-"`,
	options:       [^]string `fmt:"s,optionCount"`,
}
```

##### Related Procedures With Parameters

* [ui\_radio\_group](/core/sys/orca/#ui_radio_group)
* [ui\_radio\_group\_str8](/core/sys/orca/#ui_radio_group_str8)

### [ui\_select\_popup\_info ¶](#ui_select_popup_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2135)

```
ui_select_popup_info :: struct {
	changed:       bool,
	selectedIndex: i32,
	optionCount:   i32 `fmt:"-"`,
	options:       [^]string `fmt:"s,optionCount"`,
	placeholder:   string,
}
```

##### Related Procedures With Parameters

* [ui\_select\_popup](/core/sys/orca/#ui_select_popup)
* [ui\_select\_popup\_str8](/core/sys/orca/#ui_select_popup_str8)

### [ui\_sig ¶](#ui_sig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1960)

```
ui_sig :: struct {
	box:              ^ui_box,
	mouse:            [2]f32,
	delta:            [2]f32,
	wheel:            [2]f32,
	lastPressedMouse: [2]f32,
	pressed:          bool,
	released:         bool,
	clicked:          bool,
	doubleClicked:    bool,
	tripleClicked:    bool,
	rightPressed:     bool,
	closed:           bool,
	active:           bool,
	hover:            bool,
	focus:            bool,
	pasted:           bool,
}
```

##### Related Procedures With Returns

* [ui\_box\_get\_sig](/core/sys/orca/#ui_box_get_sig)
* [ui\_button](/core/sys/orca/#ui_button)
* [ui\_button\_str8](/core/sys/orca/#ui_button_str8)
* [ui\_checkbox](/core/sys/orca/#ui_checkbox)
* [ui\_checkbox\_str8](/core/sys/orca/#ui_checkbox_str8)
* [ui\_get\_sig](/core/sys/orca/#ui_get_sig)
* [ui\_label](/core/sys/orca/#ui_label)
* [ui\_label\_str8](/core/sys/orca/#ui_label_str8)
* [ui\_menu\_button](/core/sys/orca/#ui_menu_button)
* [ui\_menu\_button\_str8](/core/sys/orca/#ui_menu_button_str8)

### [ui\_size ¶](#ui_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1842)

```
ui_size :: struct {
	kind:    ui_size_kind,
	value:   f32,
	relax:   f32,
	minSize: f32,
}
```

##### Related Procedures With Parameters

* [ui\_style\_set\_size](/core/sys/orca/#ui_style_set_size)
* [ui\_var\_default\_size](/core/sys/orca/#ui_var_default_size)
* [ui\_var\_default\_size\_str8](/core/sys/orca/#ui_var_default_size_str8)
* [ui\_var\_set\_size](/core/sys/orca/#ui_var_set_size)
* [ui\_var\_set\_size\_str8](/core/sys/orca/#ui_var_set_size_str8)



##### Related Procedures With Returns

* [ui\_var\_get\_size](/core/sys/orca/#ui_var_get_size)
* [ui\_var\_get\_size\_str8](/core/sys/orca/#ui_var_get_size_str8)

### [ui\_size\_kind ¶](#ui_size_kind) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1834)

```
ui_size_kind :: enum u32 {
	CHILDREN            = 0, 
	TEXT                = 1, 
	PIXELS              = 2, 
	PARENT              = 3, 
	PARENT_MINUS_PIXELS = 4, 
}
```

### [ui\_style ¶](#ui_style) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1940)

```
ui_style :: struct {
	size:          [2]ui_size,
	layout:        ui_layout,
	floating:      [2]bool,
	floatTarget:   [2]f32,
	_color:        color,
	bgColor:       color,
	borderColor:   color,
	font:          font,
	fontSize:      f32,
	borderSize:    f32,
	roundness:     f32,
	drawMask:      u32,
	animationTime: f32,
	animationMask: ui_attribute_mask,
	clickThrough:  bool,
}
```

### [ui\_text\_box\_info ¶](#ui_text_box_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2123)

```
ui_text_box_info :: struct {
	text:                       string,
	defaultText:                string,
	cursor:                     i32,
	mark:                       i32,
	selectionMode:              ui_edit_move,
	wordSelectionInitialCursor: i32,
	wordSelectionInitialMark:   i32,
	firstDisplayedChar:         i32,
	cursorBlinkStart:           f64,
}
```

##### Related Procedures With Parameters

* [ui\_text\_box](/core/sys/orca/#ui_text_box)
* [ui\_text\_box\_str8](/core/sys/orca/#ui_text_box_str8)

### [ui\_text\_box\_result ¶](#ui_text_box_result) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2109)

```
ui_text_box_result :: struct {
	changed:  bool,
	accepted: bool,
	text:     string,
	box:      ^ui_box,
}
```

##### Related Procedures With Returns

* [ui\_text\_box](/core/sys/orca/#ui_text_box)
* [ui\_text\_box\_str8](/core/sys/orca/#ui_text_box_str8)

### [unicode\_range ¶](#unicode_range) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L566)

```
unicode_range :: struct {
	// The first codepoint of the range.
	firstCodePoint: rune,
	// The number of codepoints in the range.
	count:          u32,
}
```

 

A type representing a contiguous range of unicode codepoints.




##### Related Procedures With Parameters

* [font\_create\_from\_file](/core/sys/orca/#font_create_from_file)
* [font\_create\_from\_memory](/core/sys/orca/#font_create_from_memory)
* [font\_create\_from\_path](/core/sys/orca/#font_create_from_path)

##### Related Constants

* [UNICODE\_AEGEAN\_NUMBERS](/core/sys/orca/#UNICODE_AEGEAN_NUMBERS)
* [UNICODE\_ALPHABETIC\_PRESENTATION\_FORMS](/core/sys/orca/#UNICODE_ALPHABETIC_PRESENTATION_FORMS)
* [UNICODE\_ARABIC](/core/sys/orca/#UNICODE_ARABIC)
* [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_A](/core/sys/orca/#UNICODE_ARABIC_PRESENTATION_FORMS_A)
* [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_B](/core/sys/orca/#UNICODE_ARABIC_PRESENTATION_FORMS_B)
* [UNICODE\_ARMENIAN](/core/sys/orca/#UNICODE_ARMENIAN)
* [UNICODE\_ARROWS](/core/sys/orca/#UNICODE_ARROWS)
* [UNICODE\_BASIC\_LATIN](/core/sys/orca/#UNICODE_BASIC_LATIN)
* [UNICODE\_BENGALI\_ASSAMESE](/core/sys/orca/#UNICODE_BENGALI_ASSAMESE)
* [UNICODE\_BLOCK\_ELEMENTS](/core/sys/orca/#UNICODE_BLOCK_ELEMENTS)
* [UNICODE\_BOPOMOFO](/core/sys/orca/#UNICODE_BOPOMOFO)
* [UNICODE\_BOPOMOFO\_EXTENDED](/core/sys/orca/#UNICODE_BOPOMOFO_EXTENDED)
* [UNICODE\_BOX\_DRAWING](/core/sys/orca/#UNICODE_BOX_DRAWING)
* [UNICODE\_BRAILLE\_PATTERNS](/core/sys/orca/#UNICODE_BRAILLE_PATTERNS)
* [UNICODE\_BUHID](/core/sys/orca/#UNICODE_BUHID)
* [UNICODE\_BYZANTINE\_MUSICAL\_SYMBOLS](/core/sys/orca/#UNICODE_BYZANTINE_MUSICAL_SYMBOLS)
* [UNICODE\_C1\_CONTROLS\_AND\_LATIN\_1\_SUPPLEMENT](/core/sys/orca/#UNICODE_C1_CONTROLS_AND_LATIN_1_SUPPLEMENT)
* [UNICODE\_CHEROKEE](/core/sys/orca/#UNICODE_CHEROKEE)
* [UNICODE\_CJK\_COMPATIBILITY](/core/sys/orca/#UNICODE_CJK_COMPATIBILITY)
* [UNICODE\_CJK\_COMPATIBILITY\_FORMS](/core/sys/orca/#UNICODE_CJK_COMPATIBILITY_FORMS)
* [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS](/core/sys/orca/#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS)
* [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS\_SUPPLEMENT](/core/sys/orca/#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT)
* [UNICODE\_CJK\_RADICALS\_SUPPLEMENT](/core/sys/orca/#UNICODE_CJK_RADICALS_SUPPLEMENT)
* [UNICODE\_CJK\_SYMBOLS\_AND\_PUNCTUATION](/core/sys/orca/#UNICODE_CJK_SYMBOLS_AND_PUNCTUATION)
* [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS](/core/sys/orca/#UNICODE_CJK_UNIFIED_IDEOGRAPHS)
* [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_A](/core/sys/orca/#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A)
* [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_B](/core/sys/orca/#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B)
* [UNICODE\_COMBINING\_DIACRITICAL\_MARKS](/core/sys/orca/#UNICODE_COMBINING_DIACRITICAL_MARKS)
* [UNICODE\_COMBINING\_DIACRITICAL\_MARKS\_FOR\_SYMBOLS](/core/sys/orca/#UNICODE_COMBINING_DIACRITICAL_MARKS_FOR_SYMBOLS)
* [UNICODE\_COMBINING\_HALF\_MARKS](/core/sys/orca/#UNICODE_COMBINING_HALF_MARKS)
* [UNICODE\_CONTROL\_PICTURES](/core/sys/orca/#UNICODE_CONTROL_PICTURES)
* [UNICODE\_CURRENCY\_SYMBOLS](/core/sys/orca/#UNICODE_CURRENCY_SYMBOLS)
* [UNICODE\_CYPRIOT\_SYLLABARY](/core/sys/orca/#UNICODE_CYPRIOT_SYLLABARY)
* [UNICODE\_CYRILLIC](/core/sys/orca/#UNICODE_CYRILLIC)
* [UNICODE\_CYRILLIC\_SUPPLEMENT](/core/sys/orca/#UNICODE_CYRILLIC_SUPPLEMENT)
* [UNICODE\_DESERET](/core/sys/orca/#UNICODE_DESERET)
* [UNICODE\_DEVANAGARI](/core/sys/orca/#UNICODE_DEVANAGARI)
* [UNICODE\_DINGBATS](/core/sys/orca/#UNICODE_DINGBATS)
* [UNICODE\_ENCLOSED\_ALPHANUMERICS](/core/sys/orca/#UNICODE_ENCLOSED_ALPHANUMERICS)
* [UNICODE\_ENCLOSED\_CJK\_LETTERS\_AND\_MONTHS](/core/sys/orca/#UNICODE_ENCLOSED_CJK_LETTERS_AND_MONTHS)
* [UNICODE\_ETHIOPIC](/core/sys/orca/#UNICODE_ETHIOPIC)
* [UNICODE\_GENERAL\_PUNCTUATION](/core/sys/orca/#UNICODE_GENERAL_PUNCTUATION)
* [UNICODE\_GEOMETRIC\_SHAPES](/core/sys/orca/#UNICODE_GEOMETRIC_SHAPES)
* [UNICODE\_GEORGIAN](/core/sys/orca/#UNICODE_GEORGIAN)
* [UNICODE\_GOTHIC](/core/sys/orca/#UNICODE_GOTHIC)
* [UNICODE\_GREEK\_COPTIC](/core/sys/orca/#UNICODE_GREEK_COPTIC)
* [UNICODE\_GREEK\_EXTENDED](/core/sys/orca/#UNICODE_GREEK_EXTENDED)
* [UNICODE\_GUJARATI](/core/sys/orca/#UNICODE_GUJARATI)
* [UNICODE\_GURMUKHI](/core/sys/orca/#UNICODE_GURMUKHI)
* [UNICODE\_HALFWIDTH\_AND\_FULLWIDTH\_FORMS](/core/sys/orca/#UNICODE_HALFWIDTH_AND_FULLWIDTH_FORMS)
* [UNICODE\_HANGUL\_COMPATIBILITY\_JAMO](/core/sys/orca/#UNICODE_HANGUL_COMPATIBILITY_JAMO)
* [UNICODE\_HANGUL\_JAMO](/core/sys/orca/#UNICODE_HANGUL_JAMO)
* [UNICODE\_HANGUL\_SYLLABLES](/core/sys/orca/#UNICODE_HANGUL_SYLLABLES)
* [UNICODE\_HANUNOO](/core/sys/orca/#UNICODE_HANUNOO)
* [UNICODE\_HEBREW](/core/sys/orca/#UNICODE_HEBREW)
* [UNICODE\_HIGH\_SURROGATE\_AREA](/core/sys/orca/#UNICODE_HIGH_SURROGATE_AREA)
* [UNICODE\_HIRAGANA](/core/sys/orca/#UNICODE_HIRAGANA)
* [UNICODE\_IDEOGRAPHIC\_DESCRIPTION\_CHARACTERS](/core/sys/orca/#UNICODE_IDEOGRAPHIC_DESCRIPTION_CHARACTERS)
* [UNICODE\_IPA\_EXTENSIONS](/core/sys/orca/#UNICODE_IPA_EXTENSIONS)
* [UNICODE\_KANBUN\_KUNTEN](/core/sys/orca/#UNICODE_KANBUN_KUNTEN)
* [UNICODE\_KANGXI\_RADICALS](/core/sys/orca/#UNICODE_KANGXI_RADICALS)
* [UNICODE\_KANNADA](/core/sys/orca/#UNICODE_KANNADA)
* [UNICODE\_KATAKANA](/core/sys/orca/#UNICODE_KATAKANA)
* [UNICODE\_KATAKANA\_PHONETIC\_EXTENSIONS](/core/sys/orca/#UNICODE_KATAKANA_PHONETIC_EXTENSIONS)
* [UNICODE\_KHMER](/core/sys/orca/#UNICODE_KHMER)
* [UNICODE\_KHMER\_SYMBOLS](/core/sys/orca/#UNICODE_KHMER_SYMBOLS)
* [UNICODE\_LAO](/core/sys/orca/#UNICODE_LAO)
* [UNICODE\_LATIN\_EXTENDED\_A](/core/sys/orca/#UNICODE_LATIN_EXTENDED_A)
* [UNICODE\_LATIN\_EXTENDED\_ADDITIONAL](/core/sys/orca/#UNICODE_LATIN_EXTENDED_ADDITIONAL)
* [UNICODE\_LATIN\_EXTENDED\_B](/core/sys/orca/#UNICODE_LATIN_EXTENDED_B)
* [UNICODE\_LETTERLIKE\_SYMBOLS](/core/sys/orca/#UNICODE_LETTERLIKE_SYMBOLS)
* [UNICODE\_LIMBU](/core/sys/orca/#UNICODE_LIMBU)
* [UNICODE\_LINEAR\_B\_IDEOGRAMS](/core/sys/orca/#UNICODE_LINEAR_B_IDEOGRAMS)
* [UNICODE\_LINEAR\_B\_SYLLABARY](/core/sys/orca/#UNICODE_LINEAR_B_SYLLABARY)
* [UNICODE\_LOW\_SURROGATE\_AREA](/core/sys/orca/#UNICODE_LOW_SURROGATE_AREA)
* [UNICODE\_MALAYALAM](/core/sys/orca/#UNICODE_MALAYALAM)
* [UNICODE\_MATHEMATICAL\_ALPHANUMERIC\_SYMBOLS](/core/sys/orca/#UNICODE_MATHEMATICAL_ALPHANUMERIC_SYMBOLS)
* [UNICODE\_MATHEMATICAL\_OPERATORS](/core/sys/orca/#UNICODE_MATHEMATICAL_OPERATORS)
* [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_A](/core/sys/orca/#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A)
* [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_B](/core/sys/orca/#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B)
* [UNICODE\_MISCELLANEOUS\_SYMBOLS](/core/sys/orca/#UNICODE_MISCELLANEOUS_SYMBOLS)
* [UNICODE\_MISCELLANEOUS\_SYMBOLS\_AND\_ARROWS](/core/sys/orca/#UNICODE_MISCELLANEOUS_SYMBOLS_AND_ARROWS)
* [UNICODE\_MISCELLANEOUS\_TECHNICAL](/core/sys/orca/#UNICODE_MISCELLANEOUS_TECHNICAL)
* [UNICODE\_MONGOLIAN](/core/sys/orca/#UNICODE_MONGOLIAN)
* [UNICODE\_MUSICAL\_SYMBOLS](/core/sys/orca/#UNICODE_MUSICAL_SYMBOLS)
* [UNICODE\_MYANMAR](/core/sys/orca/#UNICODE_MYANMAR)
* [UNICODE\_NUMBER\_FORMS](/core/sys/orca/#UNICODE_NUMBER_FORMS)
* [UNICODE\_OGHAM](/core/sys/orca/#UNICODE_OGHAM)
* [UNICODE\_OLD\_ITALIC](/core/sys/orca/#UNICODE_OLD_ITALIC)
* [UNICODE\_OPTICAL\_CHARACTER\_RECOGNITION](/core/sys/orca/#UNICODE_OPTICAL_CHARACTER_RECOGNITION)
* [UNICODE\_ORIYA](/core/sys/orca/#UNICODE_ORIYA)
* [UNICODE\_OSMANYA](/core/sys/orca/#UNICODE_OSMANYA)
* [UNICODE\_PHONETIC\_EXTENSIONS](/core/sys/orca/#UNICODE_PHONETIC_EXTENSIONS)
* [UNICODE\_PRIVATE\_USE\_AREA](/core/sys/orca/#UNICODE_PRIVATE_USE_AREA)
* [UNICODE\_RUNIC](/core/sys/orca/#UNICODE_RUNIC)
* [UNICODE\_SHAVIAN](/core/sys/orca/#UNICODE_SHAVIAN)
* [UNICODE\_SINHALA](/core/sys/orca/#UNICODE_SINHALA)
* [UNICODE\_SMALL\_FORM\_VARIANTS](/core/sys/orca/#UNICODE_SMALL_FORM_VARIANTS)
* [UNICODE\_SPACING\_MODIFIER\_LETTERS](/core/sys/orca/#UNICODE_SPACING_MODIFIER_LETTERS)
* [UNICODE\_SPECIALS](/core/sys/orca/#UNICODE_SPECIALS)
* [UNICODE\_SUPERSCRIPTS\_AND\_SUBSCRIPTS](/core/sys/orca/#UNICODE_SUPERSCRIPTS_AND_SUBSCRIPTS)
* [UNICODE\_SUPPLEMENTAL\_ARROWS\_A](/core/sys/orca/#UNICODE_SUPPLEMENTAL_ARROWS_A)
* [UNICODE\_SUPPLEMENTAL\_ARROWS\_B](/core/sys/orca/#UNICODE_SUPPLEMENTAL_ARROWS_B)
* [UNICODE\_SUPPLEMENTAL\_MATHEMATICAL\_OPERATORS](/core/sys/orca/#UNICODE_SUPPLEMENTAL_MATHEMATICAL_OPERATORS)
* [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_A](/core/sys/orca/#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_A)
* [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_B](/core/sys/orca/#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_B)
* [UNICODE\_SYRIAC](/core/sys/orca/#UNICODE_SYRIAC)
* [UNICODE\_TAGALOG](/core/sys/orca/#UNICODE_TAGALOG)
* [UNICODE\_TAGBANWA](/core/sys/orca/#UNICODE_TAGBANWA)
* [UNICODE\_TAGS](/core/sys/orca/#UNICODE_TAGS)
* [UNICODE\_TAI\_LE](/core/sys/orca/#UNICODE_TAI_LE)
* [UNICODE\_TAI\_XUAN\_JING\_SYMBOLS](/core/sys/orca/#UNICODE_TAI_XUAN_JING_SYMBOLS)
* [UNICODE\_TAMIL](/core/sys/orca/#UNICODE_TAMIL)
* [UNICODE\_TELUGU](/core/sys/orca/#UNICODE_TELUGU)
* [UNICODE\_THAANA](/core/sys/orca/#UNICODE_THAANA)
* [UNICODE\_THAI](/core/sys/orca/#UNICODE_THAI)
* [UNICODE\_TIBETAN](/core/sys/orca/#UNICODE_TIBETAN)
* [UNICODE\_UGARITIC](/core/sys/orca/#UNICODE_UGARITIC)
* [UNICODE\_UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS](/core/sys/orca/#UNICODE_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS)
* [UNICODE\_VARIATION\_SELECTORS](/core/sys/orca/#UNICODE_VARIATION_SELECTORS)
* [UNICODE\_VARIATION\_SELECTORS\_SUPPLEMENT](/core/sys/orca/#UNICODE_VARIATION_SELECTORS_SUPPLEMENT)
* [UNICODE\_YIJING\_HEXAGRAM\_SYMBOLS](/core/sys/orca/#UNICODE_YIJING_HEXAGRAM_SYMBOLS)
* [UNICODE\_YI\_RADICALS](/core/sys/orca/#UNICODE_YI_RADICALS)
* [UNICODE\_YI\_SYLLABLES](/core/sys/orca/#UNICODE_YI_SYLLABLES)

### [utf32 ¶](#utf32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L535)

```
utf32 :: rune
```

 

A unicode codepoint.




##### Related Procedures With Parameters

* [font\_get\_glyph\_index](/core/sys/orca/#font_get_glyph_index)
* [utf8\_codepoint\_size](/core/sys/orca/#utf8_codepoint_size)
* [utf8\_encode](/core/sys/orca/#utf8_encode)
* [utf8\_to\_codepoints](/core/sys/orca/#utf8_to_codepoints)

### [utf8\_dec ¶](#utf8_dec) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L556)

```
utf8_dec :: struct {
	// The status of the decoding operation. If not `OC_UTF8_OK`, it describes the error that was encountered during decoding.
	status:    utf8_status,
	// The decoded codepoint.
	codepoint: rune,
	// The size of the utf8 sequence encoding that codepoint.
	size:      u32,
}
```

 

A type representing the result of decoding of utf8-encoded codepoint.




##### Related Procedures With Returns

* [utf8\_decode](/core/sys/orca/#utf8_decode)
* [utf8\_decode\_at](/core/sys/orca/#utf8_decode_at)

### [utf8\_status ¶](#utf8_status) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L538)

```
utf8_status :: enum u32 {
	// The operation was successful.
	OK                           = 0, 
	// The operation unexpectedly encountered the end of the utf8 sequence.
	OUT_OF_BOUNDS                = 1, 
	// A continuation byte was encountered where a leading byte was expected.
	UNEXPECTED_CONTINUATION_BYTE = 2, 
	// A leading byte was encountered in the middle of the encoding of utf8 codepoint.
	UNEXPECTED_LEADING_BYTE      = 3, 
	// The utf8 sequence contains an invalid byte.
	INVALID_BYTE                 = 4, 
	// The operation encountered an invalid utf8 codepoint.
	INVALID_CODEPOINT            = 5, 
	// The utf8 sequence contains an overlong encoding of a utf8 codepoint.
	OVERLONG_ENCODING            = 6, 
}
```

 

This enum declares the possible return status of UTF8 decoding/encoding operations.

### [vec2 ¶](#vec2) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L159)

```
vec2 :: [2]f32
```

 

A 2D vector type.




##### Related Procedures With Parameters

* [mat2x3\_mul](/core/sys/orca/#mat2x3_mul)
* [ui\_frame\_begin](/core/sys/orca/#ui_frame_begin)
* [vec2\_add](/core/sys/orca/#vec2_add)
* [vec2\_equal](/core/sys/orca/#vec2_equal)
* [vec2\_mul](/core/sys/orca/#vec2_mul)
* [window\_set\_size](/core/sys/orca/#window_set_size)



##### Related Procedures With Returns

* [get\_position](/core/sys/orca/#get_position)
* [image\_size](/core/sys/orca/#image_size)
* [mouse\_delta](/core/sys/orca/#mouse_delta)
* [mouse\_position](/core/sys/orca/#mouse_position)
* [mouse\_wheel](/core/sys/orca/#mouse_wheel)
* [surface\_contents\_scaling](/core/sys/orca/#surface_contents_scaling)
* [surface\_get\_size](/core/sys/orca/#surface_get_size)

### [vec2i ¶](#vec2i) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L165)

```
vec2i :: [2]i32
```

 

A 2D integer vector type.

### [vec3 ¶](#vec3) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L162)

```
vec3 :: [3]f32
```

 

A 3D vector type.

### [vec4 ¶](#vec4) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L168)

```
vec4 :: [4]f32
```

 

A 4D vector type.

### [window ¶](#window) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1059)

```
window :: distinct u64
```

 

An opaque handle identifying a window.

## Constants

### [BACKING\_SIZE ¶](#BACKING_SIZE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1110)

```
BACKING_SIZE :: 64
```

### [UNICODE\_AEGEAN\_NUMBERS ¶](#UNICODE_AEGEAN_NUMBERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L124)

```
UNICODE_AEGEAN_NUMBERS :: unicode_range{0x10100, 63}
```

### [UNICODE\_ALPHABETIC\_PRESENTATION\_FORMS ¶](#UNICODE_ALPHABETIC_PRESENTATION_FORMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L113)

```
UNICODE_ALPHABETIC_PRESENTATION_FORMS :: unicode_range{0xfb00, 79}
```

### [UNICODE\_ARABIC ¶](#UNICODE_ARABIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L30)

```
UNICODE_ARABIC :: unicode_range{0x0600, 255}
```

### [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_A ¶](#UNICODE_ARABIC_PRESENTATION_FORMS_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L114)

```
UNICODE_ARABIC_PRESENTATION_FORMS_A :: unicode_range{0xfb50, 687}
```

### [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_B ¶](#UNICODE_ARABIC_PRESENTATION_FORMS_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L119)

```
UNICODE_ARABIC_PRESENTATION_FORMS_B :: unicode_range{0xfe70, 143}
```

### [UNICODE\_ARMENIAN ¶](#UNICODE_ARMENIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L28)

```
UNICODE_ARMENIAN :: unicode_range{0x0530, 95}
```

### [UNICODE\_ARROWS ¶](#UNICODE_ARROWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L72)

```
UNICODE_ARROWS :: unicode_range{0x2190, 111}
```

### [UNICODE\_BASIC\_LATIN ¶](#UNICODE_BASIC_LATIN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L18)

```
UNICODE_BASIC_LATIN :: unicode_range{0x0000, 127}
```

### [UNICODE\_BENGALI\_ASSAMESE ¶](#UNICODE_BENGALI_ASSAMESE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L34)

```
UNICODE_BENGALI_ASSAMESE :: unicode_range{0x0980, 127}
```

### [UNICODE\_BLOCK\_ELEMENTS ¶](#UNICODE_BLOCK_ELEMENTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L79)

```
UNICODE_BLOCK_ELEMENTS :: unicode_range{0x2580, 31}
```

### [UNICODE\_BOPOMOFO ¶](#UNICODE_BOPOMOFO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L96)

```
UNICODE_BOPOMOFO :: unicode_range{0x3100, 47}
```

### [UNICODE\_BOPOMOFO\_EXTENDED ¶](#UNICODE_BOPOMOFO_EXTENDED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L99)

```
UNICODE_BOPOMOFO_EXTENDED :: unicode_range{0x31a0, 31}
```

### [UNICODE\_BOX\_DRAWING ¶](#UNICODE_BOX_DRAWING) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L78)

```
UNICODE_BOX_DRAWING :: unicode_range{0x2500, 127}
```

### [UNICODE\_BRAILLE\_PATTERNS ¶](#UNICODE_BRAILLE_PATTERNS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L85)

```
UNICODE_BRAILLE_PATTERNS :: unicode_range{0x2800, 255}
```

### [UNICODE\_BUHID ¶](#UNICODE_BUHID) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L56)

```
UNICODE_BUHID :: unicode_range{0x1740, 31}
```

### [UNICODE\_BYZANTINE\_MUSICAL\_SYMBOLS ¶](#UNICODE_BYZANTINE_MUSICAL_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L132)

```
UNICODE_BYZANTINE_MUSICAL_SYMBOLS :: unicode_range{0x1d000, 255}
```

### [UNICODE\_C1\_CONTROLS\_AND\_LATIN\_1\_SUPPLEMENT ¶](#UNICODE_C1_CONTROLS_AND_LATIN_1_SUPPLEMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L19)

```
UNICODE_C1_CONTROLS_AND_LATIN_1_SUPPLEMENT :: unicode_range{0x0080, 127}
```

### [UNICODE\_CHEROKEE ¶](#UNICODE_CHEROKEE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L50)

```
UNICODE_CHEROKEE :: unicode_range{0x13a0, 95}
```

### [UNICODE\_CJK\_COMPATIBILITY ¶](#UNICODE_CJK_COMPATIBILITY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L102)

```
UNICODE_CJK_COMPATIBILITY :: unicode_range{0x3300, 255}
```

### [UNICODE\_CJK\_COMPATIBILITY\_FORMS ¶](#UNICODE_CJK_COMPATIBILITY_FORMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L117)

```
UNICODE_CJK_COMPATIBILITY_FORMS :: unicode_range{0xfe30, 31}
```

### [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS ¶](#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L112)

```
UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS :: unicode_range{0xf900, 511}
```

### [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS\_SUPPLEMENT ¶](#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L137)

```
UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT :: unicode_range{0x2f800, 543}
```

### [UNICODE\_CJK\_RADICALS\_SUPPLEMENT ¶](#UNICODE_CJK_RADICALS_SUPPLEMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L90)

```
UNICODE_CJK_RADICALS_SUPPLEMENT :: unicode_range{0x2e80, 127}
```

### [UNICODE\_CJK\_SYMBOLS\_AND\_PUNCTUATION ¶](#UNICODE_CJK_SYMBOLS_AND_PUNCTUATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L93)

```
UNICODE_CJK_SYMBOLS_AND_PUNCTUATION :: unicode_range{0x3000, 63}
```

### [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS ¶](#UNICODE_CJK_UNIFIED_IDEOGRAPHS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L105)

```
UNICODE_CJK_UNIFIED_IDEOGRAPHS :: unicode_range{0x4e00, 20911}
```

### [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_A ¶](#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L103)

```
UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A :: unicode_range{0x3400, 6591}
```

### [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_B ¶](#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L136)

```
UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B :: unicode_range{0x20000, 42719}
```

### [UNICODE\_COMBINING\_DIACRITICAL\_MARKS ¶](#UNICODE_COMBINING_DIACRITICAL_MARKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L24)

```
UNICODE_COMBINING_DIACRITICAL_MARKS :: unicode_range{0x0300, 111}
```

### [UNICODE\_COMBINING\_DIACRITICAL\_MARKS\_FOR\_SYMBOLS ¶](#UNICODE_COMBINING_DIACRITICAL_MARKS_FOR_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L69)

```
UNICODE_COMBINING_DIACRITICAL_MARKS_FOR_SYMBOLS :: unicode_range{0x20d0, 47}
```

### [UNICODE\_COMBINING\_HALF\_MARKS ¶](#UNICODE_COMBINING_HALF_MARKS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L116)

```
UNICODE_COMBINING_HALF_MARKS :: unicode_range{0xfe20, 15}
```

### [UNICODE\_CONTROL\_PICTURES ¶](#UNICODE_CONTROL_PICTURES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L75)

```
UNICODE_CONTROL_PICTURES :: unicode_range{0x2400, 63}
```

### [UNICODE\_CURRENCY\_SYMBOLS ¶](#UNICODE_CURRENCY_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L68)

```
UNICODE_CURRENCY_SYMBOLS :: unicode_range{0x20a0, 47}
```

### [UNICODE\_CYPRIOT\_SYLLABARY ¶](#UNICODE_CYPRIOT_SYLLABARY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L131)

```
UNICODE_CYPRIOT_SYLLABARY :: unicode_range{0x10800, 63}
```

### [UNICODE\_CYRILLIC ¶](#UNICODE_CYRILLIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L26)

```
UNICODE_CYRILLIC :: unicode_range{0x0400, 255}
```

### [UNICODE\_CYRILLIC\_SUPPLEMENT ¶](#UNICODE_CYRILLIC_SUPPLEMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L27)

```
UNICODE_CYRILLIC_SUPPLEMENT :: unicode_range{0x0500, 47}
```

### [UNICODE\_DESERET ¶](#UNICODE_DESERET) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L128)

```
UNICODE_DESERET :: unicode_range{0x10400, 79}
```

### [UNICODE\_DEVANAGARI ¶](#UNICODE_DEVANAGARI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L33)

```
UNICODE_DEVANAGARI :: unicode_range{0x0900, 127}
```

### [UNICODE\_DINGBATS ¶](#UNICODE_DINGBATS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L82)

```
UNICODE_DINGBATS :: unicode_range{0x2700, 191}
```

### [UNICODE\_ENCLOSED\_ALPHANUMERICS ¶](#UNICODE_ENCLOSED_ALPHANUMERICS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L77)

```
UNICODE_ENCLOSED_ALPHANUMERICS :: unicode_range{0x2460, 159}
```

### [UNICODE\_ENCLOSED\_CJK\_LETTERS\_AND\_MONTHS ¶](#UNICODE_ENCLOSED_CJK_LETTERS_AND_MONTHS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L101)

```
UNICODE_ENCLOSED_CJK_LETTERS_AND_MONTHS :: unicode_range{0x3200, 255}
```

### [UNICODE\_ETHIOPIC ¶](#UNICODE_ETHIOPIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L49)

```
UNICODE_ETHIOPIC :: unicode_range{0x1200, 383}
```

### [UNICODE\_GENERAL\_PUNCTUATION ¶](#UNICODE_GENERAL_PUNCTUATION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L66)

```
UNICODE_GENERAL_PUNCTUATION :: unicode_range{0x2000, 111}
```

### [UNICODE\_GEOMETRIC\_SHAPES ¶](#UNICODE_GEOMETRIC_SHAPES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L80)

```
UNICODE_GEOMETRIC_SHAPES :: unicode_range{0x25a0, 95}
```

### [UNICODE\_GEORGIAN ¶](#UNICODE_GEORGIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L47)

```
UNICODE_GEORGIAN :: unicode_range{0x10a0, 95}
```

### [UNICODE\_GOTHIC ¶](#UNICODE_GOTHIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L126)

```
UNICODE_GOTHIC :: unicode_range{0x10330, 31}
```

### [UNICODE\_GREEK\_COPTIC ¶](#UNICODE_GREEK_COPTIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L25)

```
UNICODE_GREEK_COPTIC :: unicode_range{0x0370, 143}
```

### [UNICODE\_GREEK\_EXTENDED ¶](#UNICODE_GREEK_EXTENDED) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L65)

```
UNICODE_GREEK_EXTENDED :: unicode_range{0x1f00, 255}
```

### [UNICODE\_GUJARATI ¶](#UNICODE_GUJARATI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L36)

```
UNICODE_GUJARATI :: unicode_range{0x0a80, 127}
```

### [UNICODE\_GURMUKHI ¶](#UNICODE_GURMUKHI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L35)

```
UNICODE_GURMUKHI :: unicode_range{0x0a00, 127}
```

### [UNICODE\_HALFWIDTH\_AND\_FULLWIDTH\_FORMS ¶](#UNICODE_HALFWIDTH_AND_FULLWIDTH_FORMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L120)

```
UNICODE_HALFWIDTH_AND_FULLWIDTH_FORMS :: unicode_range{0xff00, 239}
```

### [UNICODE\_HANGUL\_COMPATIBILITY\_JAMO ¶](#UNICODE_HANGUL_COMPATIBILITY_JAMO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L97)

```
UNICODE_HANGUL_COMPATIBILITY_JAMO :: unicode_range{0x3130, 95}
```

### [UNICODE\_HANGUL\_JAMO ¶](#UNICODE_HANGUL_JAMO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L48)

```
UNICODE_HANGUL_JAMO :: unicode_range{0x1100, 255}
```

### [UNICODE\_HANGUL\_SYLLABLES ¶](#UNICODE_HANGUL_SYLLABLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L108)

```
UNICODE_HANGUL_SYLLABLES :: unicode_range{0xac00, 11183}
```

### [UNICODE\_HANUNOO ¶](#UNICODE_HANUNOO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L55)

```
UNICODE_HANUNOO :: unicode_range{0x1720, 31}
```

### [UNICODE\_HEBREW ¶](#UNICODE_HEBREW) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L29)

```
UNICODE_HEBREW :: unicode_range{0x0590, 111}
```

### [UNICODE\_HIGH\_SURROGATE\_AREA ¶](#UNICODE_HIGH_SURROGATE_AREA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L109)

```
UNICODE_HIGH_SURROGATE_AREA :: unicode_range{0xd800, 1023}
```

### [UNICODE\_HIRAGANA ¶](#UNICODE_HIRAGANA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L94)

```
UNICODE_HIRAGANA :: unicode_range{0x3040, 95}
```

### [UNICODE\_IDEOGRAPHIC\_DESCRIPTION\_CHARACTERS ¶](#UNICODE_IDEOGRAPHIC_DESCRIPTION_CHARACTERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L92)

```
UNICODE_IDEOGRAPHIC_DESCRIPTION_CHARACTERS :: unicode_range{0x2ff0, 15}
```

### [UNICODE\_IPA\_EXTENSIONS ¶](#UNICODE_IPA_EXTENSIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L22)

```
UNICODE_IPA_EXTENSIONS :: unicode_range{0x0250, 95}
```

### [UNICODE\_KANBUN\_KUNTEN ¶](#UNICODE_KANBUN_KUNTEN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L98)

```
UNICODE_KANBUN_KUNTEN :: unicode_range{0x3190, 15}
```

### [UNICODE\_KANGXI\_RADICALS ¶](#UNICODE_KANGXI_RADICALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L91)

```
UNICODE_KANGXI_RADICALS :: unicode_range{0x2f00, 223}
```

### [UNICODE\_KANNADA ¶](#UNICODE_KANNADA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L40)

```
UNICODE_KANNADA :: unicode_range{0x0c80, 127}
```

### [UNICODE\_KATAKANA ¶](#UNICODE_KATAKANA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L95)

```
UNICODE_KATAKANA :: unicode_range{0x30a0, 95}
```

### [UNICODE\_KATAKANA\_PHONETIC\_EXTENSIONS ¶](#UNICODE_KATAKANA_PHONETIC_EXTENSIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L100)

```
UNICODE_KATAKANA_PHONETIC_EXTENSIONS :: unicode_range{0x31f0, 15}
```

### [UNICODE\_KHMER ¶](#UNICODE_KHMER) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L58)

```
UNICODE_KHMER :: unicode_range{0x1780, 127}
```

### [UNICODE\_KHMER\_SYMBOLS ¶](#UNICODE_KHMER_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L62)

```
UNICODE_KHMER_SYMBOLS :: unicode_range{0x19e0, 31}
```

### [UNICODE\_LAO ¶](#UNICODE_LAO) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L44)

```
UNICODE_LAO :: unicode_range{0x0e80, 127}
```

### [UNICODE\_LATIN\_EXTENDED\_A ¶](#UNICODE_LATIN_EXTENDED_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L20)

```
UNICODE_LATIN_EXTENDED_A :: unicode_range{0x0100, 127}
```

### [UNICODE\_LATIN\_EXTENDED\_ADDITIONAL ¶](#UNICODE_LATIN_EXTENDED_ADDITIONAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L64)

```
UNICODE_LATIN_EXTENDED_ADDITIONAL :: unicode_range{0x1e00, 255}
```

### [UNICODE\_LATIN\_EXTENDED\_B ¶](#UNICODE_LATIN_EXTENDED_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L21)

```
UNICODE_LATIN_EXTENDED_B :: unicode_range{0x0180, 207}
```

### [UNICODE\_LETTERLIKE\_SYMBOLS ¶](#UNICODE_LETTERLIKE_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L70)

```
UNICODE_LETTERLIKE_SYMBOLS :: unicode_range{0x2100, 79}
```

### [UNICODE\_LIMBU ¶](#UNICODE_LIMBU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L60)

```
UNICODE_LIMBU :: unicode_range{0x1900, 79}
```

### [UNICODE\_LINEAR\_B\_IDEOGRAMS ¶](#UNICODE_LINEAR_B_IDEOGRAMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L123)

```
UNICODE_LINEAR_B_IDEOGRAMS :: unicode_range{0x10080, 127}
```

### [UNICODE\_LINEAR\_B\_SYLLABARY ¶](#UNICODE_LINEAR_B_SYLLABARY) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L122)

```
UNICODE_LINEAR_B_SYLLABARY :: unicode_range{0x10000, 127}
```

### [UNICODE\_LOW\_SURROGATE\_AREA ¶](#UNICODE_LOW_SURROGATE_AREA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L110)

```
UNICODE_LOW_SURROGATE_AREA :: unicode_range{0xdc00, 1023}
```

### [UNICODE\_MALAYALAM ¶](#UNICODE_MALAYALAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L41)

```
UNICODE_MALAYALAM :: unicode_range{0x0d00, 255}
```

### [UNICODE\_MATHEMATICAL\_ALPHANUMERIC\_SYMBOLS ¶](#UNICODE_MATHEMATICAL_ALPHANUMERIC_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L135)

```
UNICODE_MATHEMATICAL_ALPHANUMERIC_SYMBOLS :: unicode_range{0x1d400, 1023}
```

### [UNICODE\_MATHEMATICAL\_OPERATORS ¶](#UNICODE_MATHEMATICAL_OPERATORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L73)

```
UNICODE_MATHEMATICAL_OPERATORS :: unicode_range{0x2200, 255}
```

### [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_A ¶](#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L83)

```
UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A :: unicode_range{0x27c0, 47}
```

### [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_B ¶](#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L87)

```
UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B :: unicode_range{0x2980, 127}
```

### [UNICODE\_MISCELLANEOUS\_SYMBOLS ¶](#UNICODE_MISCELLANEOUS_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L81)

```
UNICODE_MISCELLANEOUS_SYMBOLS :: unicode_range{0x2600, 255}
```

### [UNICODE\_MISCELLANEOUS\_SYMBOLS\_AND\_ARROWS ¶](#UNICODE_MISCELLANEOUS_SYMBOLS_AND_ARROWS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L89)

```
UNICODE_MISCELLANEOUS_SYMBOLS_AND_ARROWS :: unicode_range{0x2b00, 255}
```

### [UNICODE\_MISCELLANEOUS\_TECHNICAL ¶](#UNICODE_MISCELLANEOUS_TECHNICAL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L74)

```
UNICODE_MISCELLANEOUS_TECHNICAL :: unicode_range{0x2300, 255}
```

### [UNICODE\_MONGOLIAN ¶](#UNICODE_MONGOLIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L59)

```
UNICODE_MONGOLIAN :: unicode_range{0x1800, 175}
```

### [UNICODE\_MUSICAL\_SYMBOLS ¶](#UNICODE_MUSICAL_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L133)

```
UNICODE_MUSICAL_SYMBOLS :: unicode_range{0x1d100, 255}
```

### [UNICODE\_MYANMAR ¶](#UNICODE_MYANMAR) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L46)

```
UNICODE_MYANMAR :: unicode_range{0x1000, 159}
```

### [UNICODE\_NUMBER\_FORMS ¶](#UNICODE_NUMBER_FORMS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L71)

```
UNICODE_NUMBER_FORMS :: unicode_range{0x2150, 63}
```

### [UNICODE\_OGHAM ¶](#UNICODE_OGHAM) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L52)

```
UNICODE_OGHAM :: unicode_range{0x1680, 31}
```

### [UNICODE\_OLD\_ITALIC ¶](#UNICODE_OLD_ITALIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L125)

```
UNICODE_OLD_ITALIC :: unicode_range{0x10300, 47}
```

### [UNICODE\_OPTICAL\_CHARACTER\_RECOGNITION ¶](#UNICODE_OPTICAL_CHARACTER_RECOGNITION) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L76)

```
UNICODE_OPTICAL_CHARACTER_RECOGNITION :: unicode_range{0x2440, 31}
```

### [UNICODE\_ORIYA ¶](#UNICODE_ORIYA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L37)

```
UNICODE_ORIYA :: unicode_range{0x0b00, 127}
```

### [UNICODE\_OSMANYA ¶](#UNICODE_OSMANYA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L130)

```
UNICODE_OSMANYA :: unicode_range{0x10480, 47}
```

### [UNICODE\_PHONETIC\_EXTENSIONS ¶](#UNICODE_PHONETIC_EXTENSIONS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L63)

```
UNICODE_PHONETIC_EXTENSIONS :: unicode_range{0x1d00, 127}
```

### [UNICODE\_PRIVATE\_USE\_AREA ¶](#UNICODE_PRIVATE_USE_AREA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L111)

```
UNICODE_PRIVATE_USE_AREA :: unicode_range{0xe000, 6399}
```

### [UNICODE\_RUNIC ¶](#UNICODE_RUNIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L53)

```
UNICODE_RUNIC :: unicode_range{0x16a0, 95}
```

### [UNICODE\_SHAVIAN ¶](#UNICODE_SHAVIAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L129)

```
UNICODE_SHAVIAN :: unicode_range{0x10450, 47}
```

### [UNICODE\_SINHALA ¶](#UNICODE_SINHALA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L42)

```
UNICODE_SINHALA :: unicode_range{0x0d80, 127}
```

### [UNICODE\_SMALL\_FORM\_VARIANTS ¶](#UNICODE_SMALL_FORM_VARIANTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L118)

```
UNICODE_SMALL_FORM_VARIANTS :: unicode_range{0xfe50, 31}
```

### [UNICODE\_SPACING\_MODIFIER\_LETTERS ¶](#UNICODE_SPACING_MODIFIER_LETTERS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L23)

```
UNICODE_SPACING_MODIFIER_LETTERS :: unicode_range{0x02b0, 79}
```

### [UNICODE\_SPECIALS ¶](#UNICODE_SPECIALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L121)

```
UNICODE_SPECIALS :: unicode_range{0xfff0, 15}
```

### [UNICODE\_SUPERSCRIPTS\_AND\_SUBSCRIPTS ¶](#UNICODE_SUPERSCRIPTS_AND_SUBSCRIPTS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L67)

```
UNICODE_SUPERSCRIPTS_AND_SUBSCRIPTS :: unicode_range{0x2070, 47}
```

### [UNICODE\_SUPPLEMENTAL\_ARROWS\_A ¶](#UNICODE_SUPPLEMENTAL_ARROWS_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L84)

```
UNICODE_SUPPLEMENTAL_ARROWS_A :: unicode_range{0x27f0, 15}
```

### [UNICODE\_SUPPLEMENTAL\_ARROWS\_B ¶](#UNICODE_SUPPLEMENTAL_ARROWS_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L86)

```
UNICODE_SUPPLEMENTAL_ARROWS_B :: unicode_range{0x2900, 127}
```

### [UNICODE\_SUPPLEMENTAL\_MATHEMATICAL\_OPERATORS ¶](#UNICODE_SUPPLEMENTAL_MATHEMATICAL_OPERATORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L88)

```
UNICODE_SUPPLEMENTAL_MATHEMATICAL_OPERATORS :: unicode_range{0x2a00, 255}
```

### [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_A ¶](#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_A) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L140)

```
UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_A :: unicode_range{0xf0000, 65533}
```

### [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_B ¶](#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_B) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L141)

```
UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_B :: unicode_range{0x100000, 65533}
```

### [UNICODE\_SYRIAC ¶](#UNICODE_SYRIAC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L31)

```
UNICODE_SYRIAC :: unicode_range{0x0700, 79}
```

### [UNICODE\_TAGALOG ¶](#UNICODE_TAGALOG) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L54)

```
UNICODE_TAGALOG :: unicode_range{0x1700, 31}
```

### [UNICODE\_TAGBANWA ¶](#UNICODE_TAGBANWA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L57)

```
UNICODE_TAGBANWA :: unicode_range{0x1760, 31}
```

### [UNICODE\_TAGS ¶](#UNICODE_TAGS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L138)

```
UNICODE_TAGS :: unicode_range{0xe0000, 127}
```

### [UNICODE\_TAI\_LE ¶](#UNICODE_TAI_LE) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L61)

```
UNICODE_TAI_LE :: unicode_range{0x1950, 47}
```

### [UNICODE\_TAI\_XUAN\_JING\_SYMBOLS ¶](#UNICODE_TAI_XUAN_JING_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L134)

```
UNICODE_TAI_XUAN_JING_SYMBOLS :: unicode_range{0x1d300, 95}
```

### [UNICODE\_TAMIL ¶](#UNICODE_TAMIL) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L38)

```
UNICODE_TAMIL :: unicode_range{0x0b80, 127}
```

### [UNICODE\_TELUGU ¶](#UNICODE_TELUGU) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L39)

```
UNICODE_TELUGU :: unicode_range{0x0c00, 127}
```

### [UNICODE\_THAANA ¶](#UNICODE_THAANA) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L32)

```
UNICODE_THAANA :: unicode_range{0x0780, 63}
```

### [UNICODE\_THAI ¶](#UNICODE_THAI) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L43)

```
UNICODE_THAI :: unicode_range{0x0e00, 127}
```

### [UNICODE\_TIBETAN ¶](#UNICODE_TIBETAN) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L45)

```
UNICODE_TIBETAN :: unicode_range{0x0f00, 255}
```

### [UNICODE\_UGARITIC ¶](#UNICODE_UGARITIC) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L127)

```
UNICODE_UGARITIC :: unicode_range{0x10380, 31}
```

### [UNICODE\_UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS ¶](#UNICODE_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L51)

```
UNICODE_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS :: unicode_range{0x1400, 639}
```

### [UNICODE\_VARIATION\_SELECTORS ¶](#UNICODE_VARIATION_SELECTORS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L115)

```
UNICODE_VARIATION_SELECTORS :: unicode_range{0xfe00, 15}
```

### [UNICODE\_VARIATION\_SELECTORS\_SUPPLEMENT ¶](#UNICODE_VARIATION_SELECTORS_SUPPLEMENT) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L139)

```
UNICODE_VARIATION_SELECTORS_SUPPLEMENT :: unicode_range{0xe0100, 239}
```

### [UNICODE\_YIJING\_HEXAGRAM\_SYMBOLS ¶](#UNICODE_YIJING_HEXAGRAM_SYMBOLS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L104)

```
UNICODE_YIJING_HEXAGRAM_SYMBOLS :: unicode_range{0x4dc0, 63}
```

### [UNICODE\_YI\_RADICALS ¶](#UNICODE_YI_RADICALS) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L107)

```
UNICODE_YI_RADICALS :: unicode_range{0xa490, 63}
```

### [UNICODE\_YI\_SYLLABLES ¶](#UNICODE_YI_SYLLABLES) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L106)

```
UNICODE_YI_SYLLABLES :: unicode_range{0xa000, 1167}
```

## Variables

This section is empty.

## Procedures

### [abort ¶](#abort) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L39)

```
abort :: proc "contextless" (msg: cstring, loc := #caller_location) {…}
```

### [abort\_ext ¶](#abort_ext) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L238)

```
abort_ext :: proc "c" (file: cstring, function: cstring, line: i32, fmt: cstring, .. args: ..any) -> ! ---
```

 

Abort the application, showing an error message.

This function should not be called directly by user code, which should use the `OC_ABORT` macro instead, as the macro takes care of filling in the source location parameters of the function.

### [arc ¶](#arc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1791)

```
arc :: proc "c" (x: f32, y: f32, r: f32, arcAngle: f32, startAngle: f32) ---
```

 

Add an arc to the path.

### [arena\_cleanup ¶](#arena_cleanup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L363)

```
arena_cleanup :: proc "c" (arena: ^arena) ---
```

 

Release all resources allocated to a memory arena.

### [arena\_clear ¶](#arena_clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L373)

```
arena_clear :: proc "c" (arena: ^arena) ---
```

 

Reset an arena. All memory that was previously allocated from this arena is released to the arena, and can be reallocated by later calls to `oc_arena_push` and similar functions. No memory is actually released \_to the system\_.

### [arena\_init ¶](#arena_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L359)

```
arena_init :: proc "c" (arena: ^arena) ---
```

 

Initialize a memory arena.

### [arena\_init\_with\_options ¶](#arena_init_with_options) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L361)

```
arena_init_with_options :: proc "c" (arena: ^arena, options: ^arena_options) ---
```

 

Initialize a memory arena with additional options.

### [arena\_push ¶](#arena_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L365)

```
arena_push :: proc "c" (arena: ^arena, size: u64) -> rawptr ---
```

 

Allocate a zero initialized block of memory from an arena.

### [arena\_push\_aligned ¶](#arena_push_aligned) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L367)

```
arena_push_aligned :: proc "c" (arena: ^arena, size: u64, alignment: u32) -> rawptr ---
```

 

Allocate an aligned, zero initialized block of memory from an arena.

### [arena\_push\_aligned\_uninitialized ¶](#arena_push_aligned_uninitialized) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L371)

```
arena_push_aligned_uninitialized :: proc "c" (arena: ^arena, size: u64, alignment: u32) -> rawptr ---
```

 

Allocate an aligned block of memory from an arena.

### [arena\_push\_array ¶](#arena_push_array) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L180)

```
arena_push_array :: proc "contextless" (arena: ^arena, $T: typeid, count: u64) -> []typeid {…}
```

### [arena\_push\_type ¶](#arena_push_type) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L176)

```
arena_push_type :: proc "contextless" (arena: ^arena, $T: typeid) -> ^typeid {…}
```

### [arena\_push\_uninitialized ¶](#arena_push_uninitialized) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L369)

```
arena_push_uninitialized :: proc "c" (arena: ^arena, size: u64) -> rawptr ---
```

 

Allocate a block of memory from an arena.

### [arena\_scope\_begin ¶](#arena_scope_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L375)

```
arena_scope_begin :: proc "c" (arena: ^arena) -> arena_scope ---
```

 

Begin a memory scope. This creates an `oc_arena_scope` object that stores the current offset of the arena. The arena can later be reset to that offset by calling `oc_arena_scope_end`, releasing all memory that was allocated within the scope to the arena.

### [arena\_scope\_end ¶](#arena_scope_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L377)

```
arena_scope_end :: proc "c" (scope: arena_scope) ---
```

 

End a memory scope. This resets an arena to the offset it had when the scope was created. All memory allocated within the scope is released back to the arena.

### [assert\_fail ¶](#assert_fail) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L244)

```
assert_fail :: proc "c" (
	file:     cstring, 
	function: cstring, 
	line:     i32, 
	src:      cstring, 
	fmt:      cstring, 
	.. args:  ..any, 
) -> ! ---
```

 

Tigger a failed assertion. This aborts the application, showing the failed assertion and an error message.

This function should not be called directly by user code, which should use the `OC_ASSERT` macro instead. The macro checks the assert condition and calls the function if it is false. It also takes care of filling in the source location parameters of the function.

### [canvas\_context\_create ¶](#canvas_context_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1615)

```
canvas_context_create :: proc "c" () -> canvas_context ---
```

 

Create a canvas context.

### [canvas\_context\_destroy ¶](#canvas_context_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1617)

```
canvas_context_destroy :: proc "c" (_context: canvas_context) ---
```

 

Destroy a canvas context

### [canvas\_context\_is\_nil ¶](#canvas_context_is_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1613)

```
canvas_context_is_nil :: proc "c" (_context: canvas_context) -> bool ---
```

 

Checks if a canvas context handle is `nil`.

### [canvas\_context\_nil ¶](#canvas_context_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1611)

```
canvas_context_nil :: proc "c" () -> canvas_context ---
```

 

Returns a `nil` canvas context handle.

### [canvas\_context\_select ¶](#canvas_context_select) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1619)

```
canvas_context_select :: proc "c" (_context: canvas_context) -> canvas_context ---
```

 

Make a canvas context current in the calling thread. Subsequent canvas commands will refer to this context until another context is made current.

### [canvas\_context\_set\_msaa\_sample\_count ¶](#canvas_context_set_msaa_sample_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1621)

```
canvas_context_set_msaa_sample_count :: proc "c" (_context: canvas_context, sampleCount: u32) ---
```

 

Set the multisample anti-aliasing sample count for the commands of a context.

### [canvas\_present ¶](#canvas_present) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1607)

```
canvas_present :: proc "c" (renderer: canvas_renderer, surface: surface) ---
```

 

Present a canvas surface to the display.

### [canvas\_render ¶](#canvas_render) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1605)

```
canvas_render :: proc "c" (renderer: canvas_renderer, _context: canvas_context, surface: surface) ---
```

 

Render canvas commands onto a surface.

### [canvas\_renderer\_create ¶](#canvas_renderer_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1601)

```
canvas_renderer_create :: proc "c" () -> canvas_renderer ---
```

 

Create a canvas renderer.

### [canvas\_renderer\_destroy ¶](#canvas_renderer_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1603)

```
canvas_renderer_destroy :: proc "c" (renderer: canvas_renderer) ---
```

 

Destroy a canvas renderer.

### [canvas\_renderer\_is\_nil ¶](#canvas_renderer_is_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1599)

```
canvas_renderer_is_nil :: proc "c" (renderer: canvas_renderer) -> bool ---
```

 

Checks if a canvas renderer handle is `nil`.

### [canvas\_renderer\_nil ¶](#canvas_renderer_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1597)

```
canvas_renderer_nil :: proc "c" () -> canvas_renderer ---
```

 

Returns a `nil` canvas renderer handle.

### [canvas\_surface\_create ¶](#canvas_surface_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1609)

```
canvas_surface_create :: proc "c" (renderer: canvas_renderer) -> surface ---
```

 

Create a surface for rendering vector graphics.

### [circle\_fill ¶](#circle_fill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1787)

```
circle_fill :: proc "c" (x: f32, y: f32, r: f32) ---
```

 

Draw a filled circle.

### [circle\_stroke ¶](#circle_stroke) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1789)

```
circle_stroke :: proc "c" (x: f32, y: f32, r: f32) ---
```

 

Draw a stroked circle.

### [clear ¶](#clear) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1769)

```
clear :: proc "c" () ---
```

 

Clear the canvas to the current color.

### [clip\_pop ¶](#clip_pop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1697)

```
clip_pop :: proc "c" () ---
```

 

Pop from the clip stack.

### [clip\_push ¶](#clip_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1695)

```
clip_push :: proc "c" (x: f32, y: f32, w: f32, h: f32) ---
```

 

Push a clip rectangle to the clip stack.

### [clip\_top ¶](#clip_top) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1699)

```
clip_top :: proc "c" () -> rect ---
```

 

Get the clip rectangle from the top of the clip stack.

### [clipboard\_pasted ¶](#clipboard_pasted) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1155)

```
clipboard_pasted :: proc "c" (state: ^input_state) -> bool ---
```

### [clipboard\_pasted\_text ¶](#clipboard_pasted_text) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1156)

```
clipboard_pasted_text :: proc "c" (state: ^input_state) -> string ---
```

### [clipboard\_set\_string ¶](#clipboard_set_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1154)

```
clipboard_set_string :: proc "c" (string: string) ---
```

 

Put a string in the clipboard.

### [clock\_time ¶](#clock_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L213)

```
clock_time :: proc "c" (clock: clock_kind) -> f64 ---
```

### [close\_path ¶](#close_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1761)

```
close_path :: proc "c" () ---
```

 

Close the current path with a line.

### [codepoints\_outlines ¶](#codepoints_outlines) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1765)

```
codepoints_outlines :: proc "c" (string: str32) ---
```

 

Add the outlines of a glyph run to the path, using unicode codepoints.

### [color\_convert ¶](#color_convert) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1595)

```
color_convert :: proc "c" (_color: color, colorSpace: color_space) -> color ---
```

 

Convert a color from one color space to another.

### [color\_rgba ¶](#color_rgba) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1591)

```
color_rgba :: proc "c" (r: f32, g: f32, b: f32, a: f32) -> color ---
```

 

Create a color using RGBA values.

### [color\_srgba ¶](#color_srgba) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1593)

```
color_srgba :: proc "c" (r: f32, g: f32, b: f32, a: f32) -> color ---
```

 

Create a current color using sRGBA values.

### [create\_odin\_logger ¶](#create_odin_logger) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/odin.odin#L7)

```
create_odin_logger :: proc(lowest: runtime.Logger_Level = runtime.Logger_Level.Debug, ident: string = "") -> runtime.Logger {…}
```

### [cubic\_to ¶](#cubic_to) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1759)

```
cubic_to :: proc "c" (
	x1: f32, 
	y1: f32, 
	x2: f32, 
	y2: f32, 
	x3: f32, 
	y3: f32, 
) ---
```

 

Add a cubic Bézier curve to the path from the current position to a new one.

### [ellipse\_fill ¶](#ellipse_fill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1783)

```
ellipse_fill :: proc "c" (x: f32, y: f32, rx: f32, ry: f32) ---
```

 

Draw a filled ellipse.

### [ellipse\_stroke ¶](#ellipse_stroke) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1785)

```
ellipse_stroke :: proc "c" (x: f32, y: f32, rx: f32, ry: f32) ---
```

 

Draw a stroked ellipse.

### [file\_close ¶](#file_close) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1399)

```
file_close :: proc "c" (file: file) ---
```

 

Close a file.

### [file\_get\_status ¶](#file_get_status) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1410)

```
file_get_status :: proc "c" (file: file) -> file_status ---
```

### [file\_is\_nil ¶](#file_is_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1393)

```
file_is_nil :: proc "c" (handle: file) -> bool ---
```

 

Test if a file handle is `nil`.

### [file\_last\_error ¶](#file_last_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1409)

```
file_last_error :: proc "c" (handle: file) -> io_error ---
```

 

Get the last error on a file handle.

### [file\_listdir ¶](#file_listdir) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1413)

```
file_listdir :: proc "c" (arena: ^arena, directory: string) -> file_list ---
```

### [file\_nil ¶](#file_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1391)

```
file_nil :: proc "c" () -> file ---
```

 

Returns a `nil` file handle

### [file\_open ¶](#file_open) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1395)

```
file_open :: proc "c" (path: string, rights: bit_set[file_access_flag; u16], flags: bit_set[file_open_flag; u16]) -> file ---
```

 

Open a file in the applications' default directory subtree.

### [file\_open\_at ¶](#file_open_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1397)

```
file_open_at :: proc "c" (dir: file, path: string, rights: bit_set[file_access_flag; u16], flags: bit_set[file_open_flag; u16]) -> file ---
```

 

Open a file in a given directory's subtree.

### [file\_open\_with\_dialog ¶](#file_open_with_dialog) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1439)

```
file_open_with_dialog :: proc "c" (arena: ^arena, rights: bit_set[file_access_flag; u16], flags: bit_set[file_open_flag; u16], desc: ^file_dialog_desc) -> file_open_with_dialog_result ---
```

 

Open files through a file dialog. This allows the user to select files outside the root directories currently accessible to the applications, giving them a way to provide new file capabilities to the application.

### [file\_open\_with\_request ¶](#file_open_with_request) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1412)

```
file_open_with_request :: proc "c" (path: string, rights: bit_set[file_access_flag; u16], flags: bit_set[file_open_flag; u16]) -> file ---
```

### [file\_pos ¶](#file_pos) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1401)

```
file_pos :: proc "c" (file: file) -> i64 ---
```

 

Get the current position in a file.

### [file\_read ¶](#file_read) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1407)

```
file_read :: proc "c" (file: file, size: u64, buffer: [^]u8) -> u64 ---
```

 

Read from a file.

### [file\_read\_slice ¶](#file_read_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L147)

```
file_read_slice :: proc(file: file, slice: []u8) -> u64 {…}
```

### [file\_seek ¶](#file_seek) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1403)

```
file_seek :: proc "c" (file: file, offset: i64, whence: file_whence) -> i64 ---
```

 

Set the current position in a file.

### [file\_size ¶](#file_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1411)

```
file_size :: proc "c" (file: file) -> u64 ---
```

### [file\_write ¶](#file_write) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1405)

```
file_write :: proc "c" (file: file, size: u64, buffer: [^]u8) -> u64 ---
```

 

Write data to a file.

### [file\_write\_slice ¶](#file_write_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L143)

```
file_write_slice :: proc(file: file, slice: []u8) -> u64 {…}
```

### [fill ¶](#fill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1771)

```
fill :: proc "c" () ---
```

 

Fill the current path.

### [font\_create\_from\_file ¶](#font_create_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1629)

```
font_create_from_file :: proc "c" (file: file, rangeCount: u32, ranges: ^unicode_range) -> font ---
```

 

Create a font from a TrueType font file.

### [font\_create\_from\_memory ¶](#font_create_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1627)

```
font_create_from_memory :: proc "c" (mem: string, rangeCount: u32, ranges: ^unicode_range) -> font ---
```

 

Create a font from in-memory TrueType data.

### [font\_create\_from\_path ¶](#font_create_from_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1631)

```
font_create_from_path :: proc "c" (path: string, rangeCount: u32, ranges: ^unicode_range) -> font ---
```

 

Create a font from a TrueType font file path.

### [font\_destroy ¶](#font_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1633)

```
font_destroy :: proc "c" (font: font) ---
```

 

Destroy a font.

### [font\_get\_glyph\_index ¶](#font_get_glyph_index) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1639)

```
font_get_glyph_index :: proc "c" (font: font, codePoint: rune) -> u32 ---
```

 

Get the glyp index of a single codepoint in a given font.

### [font\_get\_glyph\_indices ¶](#font_get_glyph_indices) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1635)

```
font_get_glyph_indices :: proc "c" (font: font, codePoints: str32, backing: str32) -> str32 ---
```

 

Get the glyph indices of a run of unicode code points in a given font.

### [font\_get\_metrics ¶](#font_get_metrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1641)

```
font_get_metrics :: proc "c" (font: font, emSize: f32) -> font_metrics ---
```

 

Get a font's metrics for a given font size.

### [font\_get\_metrics\_unscaled ¶](#font_get_metrics_unscaled) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1643)

```
font_get_metrics_unscaled :: proc "c" (font: font) -> font_metrics ---
```

 

Get a font's unscaled metrics.

### [font\_get\_scale\_for\_em\_pixels ¶](#font_get_scale_for_em_pixels) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1645)

```
font_get_scale_for_em_pixels :: proc "c" (font: font, emSize: f32) -> f32 ---
```

 

Get a scale factor to apply to unscaled font metrics to obtain a given 'm' size.

### [font\_is\_nil ¶](#font_is_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1625)

```
font_is_nil :: proc "c" (font: font) -> bool ---
```

 

Check if a font handle is `nil`.

### [font\_nil ¶](#font_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1623)

```
font_nil :: proc "c" () -> font ---
```

 

Return a `nil` font handle.

### [font\_push\_glyph\_indices ¶](#font_push_glyph_indices) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1637)

```
font_push_glyph_indices :: proc "c" (arena: ^arena, font: font, codePoints: str32) -> str32 ---
```

 

Get the glyph indices of a run of unicode code points in a given font and push them on an arena.

### [font\_text\_metrics ¶](#font_text_metrics) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1649)

```
font_text_metrics :: proc "c" (font: font, fontSize: f32, text: string) -> text_metrics ---
```

 

Get the text metrics for a utf8 string.

### [font\_text\_metrics\_utf32 ¶](#font_text_metrics_utf32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1647)

```
font_text_metrics_utf32 :: proc "c" (font: font, fontSize: f32, codepoints: str32) -> text_metrics ---
```

 

Get text metrics for a run of unicode code points.

### [get\_cap ¶](#get_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1739)

```
get_cap :: proc "c" () -> cap_type ---
```

 

Get the current cap style.

### [get\_color ¶](#get_color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1729)

```
get_color :: proc "c" () -> color ---
```

 

Get the current color

### [get\_font ¶](#get_font) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1741)

```
get_font :: proc "c" () -> font ---
```

 

Get the current font.

### [get\_font\_size ¶](#get_font_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1743)

```
get_font_size :: proc "c" () -> f32 ---
```

 

Get the current font size.

### [get\_image ¶](#get_image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1747)

```
get_image :: proc "c" () -> image ---
```

 

Get the current source image.

### [get\_image\_source\_region ¶](#get_image_source_region) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1749)

```
get_image_source_region :: proc "c" () -> rect ---
```

 

Get the current image source region.

### [get\_joint ¶](#get_joint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1735)

```
get_joint :: proc "c" () -> joint_type ---
```

 

Get the current joint style.

### [get\_max\_joint\_excursion ¶](#get_max_joint_excursion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1737)

```
get_max_joint_excursion :: proc "c" () -> f32 ---
```

 

Get the current max joint excursion.

### [get\_position ¶](#get_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1751)

```
get_position :: proc "c" () -> [2]f32 ---
```

 

Get the current cursor position.

### [get\_text\_flip ¶](#get_text_flip) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1745)

```
get_text_flip :: proc "c" () -> bool ---
```

 

Get the current text flip value.

### [get\_tolerance ¶](#get_tolerance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1733)

```
get_tolerance :: proc "c" () -> f32 ---
```

 

Get the current line width tolerance.

### [get\_width ¶](#get_width) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1731)

```
get_width :: proc "c" () -> f32 ---
```

 

Get the current line width.

### [gles\_surface\_create ¶](#gles_surface_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1807)

```
gles_surface_create :: proc "c" () -> surface ---
```

 

Create a graphics surface for GLES rendering.

### [gles\_surface\_make\_current ¶](#gles_surface_make_current) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1809)

```
gles_surface_make_current :: proc "c" (surface: surface) ---
```

 

Make the GL context of the surface current.

### [gles\_surface\_swap\_buffers ¶](#gles_surface_swap_buffers) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1811)

```
gles_surface_swap_buffers :: proc "c" (surface: surface) ---
```

 

Swap the buffers of a GLES surface.

### [glyph\_outlines ¶](#glyph_outlines) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1763)

```
glyph_outlines :: proc "c" (glyphIndices: str32) -> rect ---
```

 

Add the outlines of a glyph run to the path, using glyph indices.

### [image\_atlas\_alloc\_from\_file ¶](#image_atlas_alloc_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1681)

```
image_atlas_alloc_from_file :: proc "c" (atlas: ^rect_atlas, backingImage: image, file: file, flip: bool) -> image_region ---
```

 

Allocate an image region from an atlas and upload an image to it.

### [image\_atlas\_alloc\_from\_memory ¶](#image_atlas_alloc_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1679)

```
image_atlas_alloc_from_memory :: proc "c" (atlas: ^rect_atlas, backingImage: image, mem: string, flip: bool) -> image_region ---
```

 

Allocate an image region from an atlas and upload an image to it.

### [image\_atlas\_alloc\_from\_path ¶](#image_atlas_alloc_from_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1683)

```
image_atlas_alloc_from_path :: proc "c" (atlas: ^rect_atlas, backingImage: image, path: string, flip: bool) -> image_region ---
```

 

Allocate an image region from an atlas and upload an image to it.

### [image\_atlas\_alloc\_from\_rgba8 ¶](#image_atlas_alloc_from_rgba8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1677)

```
image_atlas_alloc_from_rgba8 :: proc "c" (atlas: ^rect_atlas, backingImage: image, width: u32, height: u32, pixels: [^]u8) -> image_region ---
```

 

Allocate an image region from an atlas and upload pixels to that region.

### [image\_atlas\_recycle ¶](#image_atlas_recycle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1685)

```
image_atlas_recycle :: proc "c" (atlas: ^rect_atlas, imageRgn: image_region) ---
```

 

Recycle an image region allocated from an atlas.

### [image\_create ¶](#image_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1655)

```
image_create :: proc "c" (renderer: canvas_renderer, width: u32, height: u32) -> image ---
```

 

Create an uninitialized image.

### [image\_create\_from\_file ¶](#image_create_from_file) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1661)

```
image_create_from_file :: proc "c" (renderer: canvas_renderer, file: file, flip: bool) -> image ---
```

 

Create an image from an image file. Supported formats are: png, jpeg or bmp.

### [image\_create\_from\_memory ¶](#image_create_from_memory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1659)

```
image_create_from_memory :: proc "c" (renderer: canvas_renderer, mem: string, flip: bool) -> image ---
```

 

Create an image from in-memory png, jpeg or bmp data.

### [image\_create\_from\_path ¶](#image_create_from_path) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1663)

```
image_create_from_path :: proc "c" (renderer: canvas_renderer, path: string, flip: bool) -> image ---
```

 

Create an image from an image file path. Supported formats are: png, jpeg or bmp.

### [image\_create\_from\_rgba8 ¶](#image_create_from_rgba8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1657)

```
image_create_from_rgba8 :: proc "c" (renderer: canvas_renderer, width: u32, height: u32, pixels: [^]u8) -> image ---
```

 

Create an image from an array of 8 bit per channel rgba values.

### [image\_destroy ¶](#image_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1665)

```
image_destroy :: proc "c" (image: image) ---
```

 

Destroy an image.

### [image\_draw ¶](#image_draw) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1795)

```
image_draw :: proc "c" (image: image, rect: rect) ---
```

 

Draw an image.

### [image\_draw\_region ¶](#image_draw_region) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1797)

```
image_draw_region :: proc "c" (image: image, srcRegion: rect, dstRegion: rect) ---
```

 

Draw a sub-region of an image.

### [image\_is\_nil ¶](#image_is_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1653)

```
image_is_nil :: proc "c" (a: image) -> bool ---
```

 

Check if an image handle is `nil`.

### [image\_nil ¶](#image_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1651)

```
image_nil :: proc "c" () -> image ---
```

 

Returns a `nil` image handle.

### [image\_size ¶](#image_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1669)

```
image_size :: proc "c" (image: image) -> [2]f32 ---
```

 

Get the size of an image.

### [image\_upload\_region\_rgba8 ¶](#image_upload_region_rgba8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1667)

```
image_upload_region_rgba8 :: proc "c" (image: image, region: rect, pixels: [^]u8) ---
```

 

Upload pixels to an image.

### [input\_next\_frame ¶](#input_next_frame) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1134)

```
input_next_frame :: proc "c" (state: ^input_state) ---
```

### [input\_process\_event ¶](#input_process_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1133)

```
input_process_event :: proc "c" (arena: ^arena, state: ^input_state, event: ^event) ---
```

### [input\_text\_utf32 ¶](#input_text_utf32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1151)

```
input_text_utf32 :: proc "c" (arena: ^arena, state: ^input_state) -> str32 ---
```

### [input\_text\_utf8 ¶](#input_text_utf8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1152)

```
input_text_utf8 :: proc "c" (arena: ^arena, state: ^input_state) -> string ---
```

### [io\_wait\_single\_req ¶](#io_wait_single_req) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1389)

```
io_wait_single_req :: proc "c" (req: ^io_req) -> io_cmp ---
```

 

Send a single I/O request and wait for its completion.

### [key\_down ¶](#key_down) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1135)

```
key_down :: proc "c" (state: ^input_state, key: key_code) -> bool ---
```

### [key\_down\_scancode ¶](#key_down_scancode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1139)

```
key_down_scancode :: proc "c" (state: ^input_state, key: scan_code) -> bool ---
```

### [key\_mods ¶](#key_mods) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1157)

```
key_mods :: proc "c" (state: ^input_state) -> bit_set[keymod_flag; u32] ---
```

### [key\_press\_count ¶](#key_press_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1136)

```
key_press_count :: proc "c" (state: ^input_state, key: key_code) -> u8 ---
```

### [key\_press\_count\_scancode ¶](#key_press_count_scancode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1140)

```
key_press_count_scancode :: proc "c" (state: ^input_state, key: scan_code) -> u8 ---
```

### [key\_release\_count ¶](#key_release_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1137)

```
key_release_count :: proc "c" (state: ^input_state, key: key_code) -> u8 ---
```

### [key\_release\_count\_scancode ¶](#key_release_count_scancode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1141)

```
key_release_count_scancode :: proc "c" (state: ^input_state, key: scan_code) -> u8 ---
```

### [key\_repeat\_count ¶](#key_repeat_count) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1138)

```
key_repeat_count :: proc "c" (state: ^input_state, key: key_code) -> u8 ---
```

### [key\_repeat\_count\_scancode ¶](#key_repeat_count_scancode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1142)

```
key_repeat_count_scancode :: proc "c" (state: ^input_state, key: scan_code) -> u8 ---
```

### [line\_to ¶](#line_to) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1755)

```
line_to :: proc "c" (x, y: f32) ---
```

 

Add a line to the path from the current position to a new one.

### [list\_checked\_entry ¶](#list_checked_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L81)

```
list_checked_entry :: proc "contextless" (elt: ^list_elt, $T: typeid, $member: string) -> ^typeid {…}
```

 

Same as `list_entry` but `elt` might be `nil`.

### [list\_empty ¶](#list_empty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L278)

```
list_empty :: proc "c" (list: list) -> bool ---
```

 

Check if a list is empty.

### [list\_entry ¶](#list_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L48)

```
list_entry :: proc "contextless" (elt: ^list_elt, $T: typeid, $member: string) -> ^typeid {…}
```

 

Get the entry for a given list element.

### [list\_first\_entry ¶](#list_first_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L89)

```
list_first_entry :: proc "contextless" (list: ^list, $T: typeid, $member: string) -> ^typeid {…}
```

### [list\_for ¶](#list_for) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L102)

```
list_for :: proc "contextless" (list: ^list, elt: ^^list_elt, $T: typeid, $member: string) -> (^typeid, bool) {…}
```

 

**Example:**

```
_elt: ^list_elt
for elt in oc.list_for(list, &_elt, int, "elt") {
}
```

### [list\_for\_reverse ¶](#list_for_reverse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L134)

```
list_for_reverse :: proc "contextless" (list: ^list, elt: ^^list_elt, $T: typeid, $member: string) -> (^typeid, bool) {…}
```

### [list\_init ¶](#list_init) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L280)

```
list_init :: proc "c" (list: ^list) ---
```

 

Zero-initializes a linked list.

### [list\_insert ¶](#list_insert) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L282)

```
list_insert :: proc "c" (list: ^list, afterElt: ^list_elt, elt: ^list_elt) ---
```

 

Insert an element in a list after a given element.

### [list\_insert\_before ¶](#list_insert_before) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L284)

```
list_insert_before :: proc "c" (list: ^list, beforeElt: ^list_elt, elt: ^list_elt) ---
```

 

Insert an element in a list before a given element.

### [list\_iter ¶](#list_iter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L102)

```
list_iter :: list_for
```

 

**Example:**

```
_elt: ^list_elt
for elt in oc.list_for(list, &_elt, int, "elt") {
}
```

### [list\_iter\_reverse ¶](#list_iter_reverse) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L134)

```
list_iter_reverse :: list_for_reverse
```

### [list\_last\_entry ¶](#list_last_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L93)

```
list_last_entry :: proc "contextless" (list: ^list, $T: typeid, $member: string) -> ^typeid {…}
```

### [list\_next\_entry ¶](#list_next_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L53)

```
list_next_entry :: proc "contextless" (list: ^list, elt: ^list_elt, $T: typeid, $member: string) -> ^typeid {…}
```

 

Get the next entry in a list.

### [list\_pop\_back ¶](#list_pop_back) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L290)

```
list_pop_back :: proc "c" (list: ^list) -> ^list_elt ---
```

 

Remove the last element from a list.

### [list\_pop\_back\_entry ¶](#list_pop_back_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L164)

```
list_pop_back_entry :: proc "contextless" (list: ^list, $T: typeid, $member: string) -> ^typeid {…}
```

### [list\_pop\_front ¶](#list_pop_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L294)

```
list_pop_front :: proc "c" (list: ^list) -> ^list_elt ---
```

 

Remove the first element from a list.

### [list\_pop\_front\_entry ¶](#list_pop_front_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L156)

```
list_pop_front_entry :: proc "contextless" (list: ^list, $T: typeid, $member: string) -> ^typeid {…}
```

### [list\_prev\_entry ¶](#list_prev_entry) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L67)

```
list_prev_entry :: proc "contextless" (list: ^list, elt: ^list_elt, $T: typeid, $member: string) -> ^typeid {…}
```

 

Get the previous entry in a list.

### [list\_push\_back ¶](#list_push_back) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L288)

```
list_push_back :: proc "c" (list: ^list, elt: ^list_elt) ---
```

 

Add an element at the end of a list.

### [list\_push\_front ¶](#list_push_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L292)

```
list_push_front :: proc "c" (list: ^list, elt: ^list_elt) ---
```

 

Add an element at the beginning of a list.

### [list\_remove ¶](#list_remove) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L286)

```
list_remove :: proc "c" (list: ^list, elt: ^list_elt) ---
```

 

Remove an element from a list.

### [log\_error ¶](#log_error) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L9)

```
log_error :: proc "contextless" (msg: cstring, loc := #caller_location) {…}
```

### [log\_ext ¶](#log_ext) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L252)

```
log_ext :: proc "c" (
	level:    log_level, 
	function: cstring, 
	file:     cstring, 
	line:     i32, 
	fmt:      cstring, 
	.. args:  ..any, 
) ---
```

 

Log a message to the console.

This function should not be called directly by user code, which should use the `oc_log_XXX` family of macros instead. The macros take care of filling in the message level and source location parameters of the function.

### [log\_info ¶](#log_info) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L29)

```
log_info :: proc "contextless" (msg: cstring, loc := #caller_location) {…}
```

### [log\_set\_level ¶](#log_set_level) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L246)

```
log_set_level :: proc "c" (level: log_level) ---
```

 

Set the logging verbosity.

### [log\_typed ¶](#log_typed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/odin.odin#L11)

```
log_typed :: proc "contextless" (level: log_level, msg: cstring, loc := #caller_location) {…}
```

### [log\_warning ¶](#log_warning) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L19)

```
log_warning :: proc "contextless" (msg: cstring, loc := #caller_location) {…}
```

### [mat2x3\_inv ¶](#mat2x3_inv) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L189)

```
mat2x3_inv :: proc "c" (x: [6]f32) -> [6]f32 ---
```

 

Invert an affine transform represented as a 2x3 matrix.

### [mat2x3\_mul ¶](#mat2x3_mul) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L185)

```
mat2x3_mul :: proc "c" (m: [6]f32, p: [2]f32) -> [2]f32 ---
```

 

Transforms a vector by an affine transformation represented as a 2x3 matrix.

### [mat2x3\_mul\_m ¶](#mat2x3_mul_m) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L187)

```
mat2x3_mul_m :: proc "c" (lhs: [6]f32, rhs: [6]f32) -> [6]f32 ---
```

 

Multiply two affine transformations represented as 2x3 matrices. Both matrices are treated as 3x3 matrices with an implicit `(0, 0, 1)` bottom row

### [mat2x3\_rotate ¶](#mat2x3_rotate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L191)

```
mat2x3_rotate :: proc "c" (radians: f32) -> [6]f32 ---
```

 

Return a 2x3 matrix representing a rotation.

### [mat2x3\_scale ¶](#mat2x3_scale) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L195)

```
mat2x3_scale :: proc "c" (x, y: f32) -> [6]f32 ---
```

 

Return a 2x3 matrix representing a scale.

### [mat2x3\_translate ¶](#mat2x3_translate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L193)

```
mat2x3_translate :: proc "c" (x, y: f32) -> [6]f32 ---
```

 

Return a 2x3 matrix representing a translation.

### [matrix\_multiply\_push ¶](#matrix_multiply_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1689)

```
matrix_multiply_push :: proc "c" (_matrix: [6]f32) ---
```

 

Multiply a matrix with the top of the transform stack, and push the result on the top of the stack.

### [matrix\_pop ¶](#matrix_pop) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1691)

```
matrix_pop :: proc "c" () ---
```

 

Pop a matrix from the transform stack.

### [matrix\_push ¶](#matrix_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1687)

```
matrix_push :: proc "c" (_matrix: [6]f32) ---
```

 

Push a matrix on the transform stack.

### [matrix\_top ¶](#matrix_top) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1693)

```
matrix_top :: proc "c" () -> [6]f32 ---
```

 

Get the top matrix of the transform stack.

### [mouse\_clicked ¶](#mouse_clicked) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1146)

```
mouse_clicked :: proc "c" (state: ^input_state, button: mouse_button) -> bool ---
```

### [mouse\_delta ¶](#mouse_delta) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1149)

```
mouse_delta :: proc "c" (state: ^input_state) -> [2]f32 ---
```

### [mouse\_double\_clicked ¶](#mouse_double_clicked) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1147)

```
mouse_double_clicked :: proc "c" (state: ^input_state, button: mouse_button) -> bool ---
```

### [mouse\_down ¶](#mouse_down) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1143)

```
mouse_down :: proc "c" (state: ^input_state, button: mouse_button) -> bool ---
```

### [mouse\_position ¶](#mouse_position) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1148)

```
mouse_position :: proc "c" (state: ^input_state) -> [2]f32 ---
```

### [mouse\_pressed ¶](#mouse_pressed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1144)

```
mouse_pressed :: proc "c" (state: ^input_state, button: mouse_button) -> u8 ---
```

### [mouse\_released ¶](#mouse_released) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1145)

```
mouse_released :: proc "c" (state: ^input_state, button: mouse_button) -> u8 ---
```

### [mouse\_wheel ¶](#mouse_wheel) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1150)

```
mouse_wheel :: proc "c" (state: ^input_state) -> [2]f32 ---
```

### [move\_to ¶](#move_to) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1753)

```
move_to :: proc "c" (x, y: f32) ---
```

 

Move the cursor to a given position.

### [odin\_logger\_proc ¶](#odin_logger_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/odin.odin#L21)

```
odin_logger_proc :: proc(logger_data: rawptr, level: runtime.Logger_Level, text: string, options: bit_set[runtime.Logger_Option], location := #caller_location) {…}
```

### [path\_append ¶](#path_append) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1457)

```
path_append :: proc "c" (arena: ^arena, parent: string, relPath: string) -> string ---
```

 

Append a path to another path.

### [path\_is\_absolute ¶](#path_is_absolute) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1459)

```
path_is_absolute :: proc "c" (path: string) -> bool ---
```

 

Test wether a path is an absolute path.

### [path\_join ¶](#path_join) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1455)

```
path_join :: proc "c" (arena: ^arena, elements: str8_list) -> string ---
```

 

Join path elements to form a path.

### [path\_slice\_directory ¶](#path_slice_directory) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1449)

```
path_slice_directory :: proc "c" (path: string) -> string ---
```

 

Get a string slice of the directory part of a path.

### [path\_slice\_filename ¶](#path_slice_filename) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1451)

```
path_slice_filename :: proc "c" (path: string) -> string ---
```

 

Get a string slice of the file name part of a path.

### [path\_split ¶](#path_split) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1453)

```
path_split :: proc "c" (arena: ^arena, path: string) -> str8_list ---
```

 

Split a path into path elements.

### [quadratic\_to ¶](#quadratic_to) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1757)

```
quadratic_to :: proc "c" (x1: f32, y1: f32, x2: f32, y2: f32) ---
```

 

Add a quadratic Bézier curve to the path from the current position to a new one.

### [rect\_atlas\_alloc ¶](#rect_atlas_alloc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1673)

```
rect_atlas_alloc :: proc "c" (atlas: ^rect_atlas, width: i32, height: i32) -> rect ---
```

 

Allocate a rectangular region from an atlas.

### [rect\_atlas\_create ¶](#rect_atlas_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1671)

```
rect_atlas_create :: proc "c" (arena: ^arena, width: i32, height: i32) -> ^rect_atlas ---
```

 

Create a rectangle atlas.

### [rect\_atlas\_recycle ¶](#rect_atlas_recycle) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1675)

```
rect_atlas_recycle :: proc "c" (atlas: ^rect_atlas, rect: rect) ---
```

 

Recycle a rectangular region that was previously allocated from an atlas.

### [rectangle\_fill ¶](#rectangle_fill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1775)

```
rectangle_fill :: proc "c" (x: f32, y: f32, w: f32, h: f32) ---
```

 

Draw a filled rectangle.

### [rectangle\_stroke ¶](#rectangle_stroke) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1777)

```
rectangle_stroke :: proc "c" (x: f32, y: f32, w: f32, h: f32) ---
```

 

Draw a stroked rectangle.

### [request\_quit ¶](#request_quit) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1068)

```
request_quit :: proc "c" () ---
```

 

Request the system to quit the application.

### [rounded\_rectangle\_fill ¶](#rounded_rectangle_fill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1779)

```
rounded_rectangle_fill :: proc "c" (x: f32, y: f32, w: f32, h: f32, r: f32) ---
```

 

Draw a filled rounded rectangle.

### [rounded\_rectangle\_stroke ¶](#rounded_rectangle_stroke) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1781)

```
rounded_rectangle_stroke :: proc "c" (x: f32, y: f32, w: f32, h: f32, r: f32) ---
```

 

Draw a stroked rounded rectangle.

### [scancode\_to\_keycode ¶](#scancode_to_keycode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1070)

```
scancode_to_keycode :: proc "c" (scanCode: scan_code) -> key_code ---
```

 

Convert a scancode to a keycode, according to current keyboard layout.

### [scratch\_begin ¶](#scratch_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L386)

```
scratch_begin :: proc "c" () -> arena_scope ---
```

 

Begin a scratch scope. This creates a memory scope on a per-thread, global "scratch" arena. This allows easily creating temporary memory for scratch computations or intermediate results, in a stack-like fashion.

If you must return results in an arena passed by the caller, and you also use a scratch arena to do intermediate computations, beware that the results arena could itself be a scatch arena. In this case, you have to be careful not to intermingle your scratch computations with the final result, or clear your result entirely. You can either:

Allocate memory for the result upfront and call `oc_scratch_begin` afterwards, if possible.
Use `oc_scratch_begin_next()` and pass it the result arena, to get a scratch arena that does not conflict with it.

### [scratch\_begin\_next ¶](#scratch_begin_next) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L388)

```
scratch_begin_next :: proc "c" (used: ^arena) -> arena_scope ---
```

 

Begin a scratch scope that does not conflict with a given arena. See `oc_scratch_begin()` for more details about when to use this function.

### [scratch\_end ¶](#scratch_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L377)

```
scratch_end :: arena_scope_end
```

 

End a memory scope. This resets an arena to the offset it had when the scope was created. All memory allocated within the scope is released back to the arena.

### [set\_cap ¶](#set_cap) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1717)

```
set_cap :: proc "c" (cap: cap_type) ---
```

 

Set the current cap style.

### [set\_color ¶](#set_color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1701)

```
set_color :: proc "c" (_color: color) ---
```

 

Set the current color.

### [set\_color\_rgba ¶](#set_color_rgba) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1703)

```
set_color_rgba :: proc "c" (r: f32, g: f32, b: f32, a: f32) ---
```

 

Set the current color using linear RGBA values.

### [set\_color\_srgba ¶](#set_color_srgba) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1705)

```
set_color_srgba :: proc "c" (r: f32, g: f32, b: f32, a: f32) ---
```

 

Set the current color using sRGBA values.

### [set\_font ¶](#set_font) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1719)

```
set_font :: proc "c" (font: font) ---
```

 

The the current font.

### [set\_font\_size ¶](#set_font_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1721)

```
set_font_size :: proc "c" (size: f32) ---
```

 

Set the current font size.

### [set\_gradient ¶](#set_gradient) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1707)

```
set_gradient :: proc "c" (blendSpace: gradient_blend_space, bottomLeft: color, bottomRight: color, topRight: color, topLeft: color) ---
```

 

Set the current color gradient.

### [set\_image ¶](#set_image) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1725)

```
set_image :: proc "c" (image: image) ---
```

 

Set the current source image.

### [set\_image\_source\_region ¶](#set_image_source_region) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1727)

```
set_image_source_region :: proc "c" (region: rect) ---
```

 

Set the current source image region.

### [set\_joint ¶](#set_joint) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1713)

```
set_joint :: proc "c" (joint: joint_type) ---
```

 

Set the current joint style.

### [set\_max\_joint\_excursion ¶](#set_max_joint_excursion) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1715)

```
set_max_joint_excursion :: proc "c" (maxJointExcursion: f32) ---
```

 

Set the maximum joint excursion. If a joint would extend past this threshold, the renderer falls back to a bevel joint.

### [set\_text\_flip ¶](#set_text_flip) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1723)

```
set_text_flip :: proc "c" (flip: bool) ---
```

 

Set the current text flip value. `true` flips the y-axis of text rendering commands.

### [set\_tolerance ¶](#set_tolerance) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1711)

```
set_tolerance :: proc "c" (tolerance: f32) ---
```

 

Set the current tolerance for the line width. Bigger values increase performance but allow more inconsistent stroke widths along a path.

### [set\_width ¶](#set_width) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1709)

```
set_width :: proc "c" (width: f32) ---
```

 

Set the current line width.

### [str16\_from\_buffer ¶](#str16_from_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L489)

```
str16_from_buffer :: proc "c" (len: u64, buffer: [^]u16) -> str16 ---
```

 

Make an `oc_str16` string from a buffer of 16-bit characters.

### [str16\_list\_first ¶](#str16_list_first) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L216)

```
str16_list_first :: proc "contextless" (sl: ^str16_list) -> str16 {…}
```

### [str16\_list\_for ¶](#str16_list_for) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L232)

```
str16_list_for :: proc "contextless" (list: ^str16_list, elt: ^^list_elt) -> (^str16_elt, bool) {…}
```

### [str16\_list\_join ¶](#str16_list_join) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L501)

```
str16_list_join :: proc "c" (arena: ^arena, list: str16_list) -> str16 ---
```

 

Build a string by joining the elements of a string list.

### [str16\_list\_last ¶](#str16_list_last) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L224)

```
str16_list_last :: proc "contextless" (sl: ^str16_list) -> str16 {…}
```

### [str16\_list\_push ¶](#str16_list_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L499)

```
str16_list_push :: proc "c" (arena: ^arena, list: ^str16_list, str: str16) ---
```

 

Push a string element to the back of a string list. This creates a `oc_str16_elt` element referring to the contents of the input string, and links that element at the end of the string list.

### [str16\_push\_buffer ¶](#str16_push_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L493)

```
str16_push_buffer :: proc "c" (arena: ^arena, len: u64, buffer: [^]u16) -> str16 ---
```

 

Copy the content of a 16-bit character buffer on an arena and make a new `oc_str16` referencing the copied contents.

### [str16\_push\_copy ¶](#str16_push_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L495)

```
str16_push_copy :: proc "c" (arena: ^arena, s: str16) -> str16 ---
```

 

Copy the contents of an `oc_str16` string and make a new string referencing the copied contents.

### [str16\_push\_slice ¶](#str16_push_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L497)

```
str16_push_slice :: proc "c" (arena: ^arena, s: str16, start: u64, end: u64) -> str16 ---
```

 

Copy a slice of an `oc_str16` string an make a new string referencing the copies contents.

### [str16\_slice ¶](#str16_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L491)

```
str16_slice :: proc "c" (s: str16, start: u64, end: u64) -> str16 ---
```

 

Make an `oc_str16` string from a slice of another `oc_str16` string.

### [str16\_split ¶](#str16_split) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L507)

```
str16_split :: proc "c" (arena: ^arena, str: str16, separators: str16_list) -> str16_list ---
```

 

Split a list into a string list according to separators.

No string copies are made. The elements of the resulting string list refer to subsequences of the input string.

### [str32\_from\_buffer ¶](#str32_from_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L509)

```
str32_from_buffer :: proc "c" (len: u64, buffer: [^]u32) -> str32 ---
```

 

Make an `oc_str32` string from a buffer of 32-bit characters.

### [str32\_list\_first ¶](#str32_list_first) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L236)

```
str32_list_first :: proc "contextless" (sl: ^str32_list) -> str32 {…}
```

### [str32\_list\_for ¶](#str32_list_for) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L252)

```
str32_list_for :: proc "contextless" (list: ^str32_list, elt: ^^list_elt) -> (^str32_elt, bool) {…}
```

### [str32\_list\_join ¶](#str32_list_join) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L521)

```
str32_list_join :: proc "c" (arena: ^arena, list: str32_list) -> str32 ---
```

 

Build a string by joining the elements of a string list.

### [str32\_list\_last ¶](#str32_list_last) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L244)

```
str32_list_last :: proc "contextless" (sl: ^str32_list) -> str32 {…}
```

### [str32\_list\_push ¶](#str32_list_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L519)

```
str32_list_push :: proc "c" (arena: ^arena, list: ^str32_list, str: str32) ---
```

 

Push a string element to the back of a string list. This creates a `oc_str32_elt` element referring to the contents of the input string, and links that element at the end of the string list.

### [str32\_push\_buffer ¶](#str32_push_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L513)

```
str32_push_buffer :: proc "c" (arena: ^arena, len: u64, buffer: [^]u32) -> str32 ---
```

 

Copy the content of a 32-bit character buffer on an arena and make a new `oc_str32` referencing the copied contents.

### [str32\_push\_copy ¶](#str32_push_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L515)

```
str32_push_copy :: proc "c" (arena: ^arena, s: str32) -> str32 ---
```

 

Copy the contents of an `oc_str32` string and make a new string referencing the copied contents.

### [str32\_push\_slice ¶](#str32_push_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L517)

```
str32_push_slice :: proc "c" (arena: ^arena, s: str32, start: u64, end: u64) -> str32 ---
```

 

Copy a slice of an `oc_str32` string an make a new string referencing the copies contents.

### [str32\_slice ¶](#str32_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L511)

```
str32_slice :: proc "c" (s: str32, start: u64, end: u64) -> str32 ---
```

 

Make an `oc_str32` string from a slice of another `oc_str32` string.

### [str32\_split ¶](#str32_split) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L527)

```
str32_split :: proc "c" (arena: ^arena, str: str32, separators: str32_list) -> str32_list ---
```

 

Split a list into a string list according to separators.

No string copies are made. The elements of the resulting string list refer to subsequences of the input string.

### [str8\_cmp ¶](#str8_cmp) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L471)

```
str8_cmp :: proc "c" (s1: string, s2: string) -> i32 ---
```

 

Lexicographically compare the contents of two strings.

### [str8\_from\_buffer ¶](#str8_from_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L459)

```
str8_from_buffer :: proc "c" (len: u64, buffer: [^]u8) -> string ---
```

 

Make a string from a bytes buffer and a length.

### [str8\_list\_collate ¶](#str8_list_collate) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L479)

```
str8_list_collate :: proc "c" (arena: ^arena, list: str8_list, prefix: string, separator: string, suffix: string) -> string ---
```

 

Build a string by combining the elements of a string list with a prefix, a suffix, and separators.

### [str8\_list\_empty ¶](#str8_list_empty) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L212)

```
str8_list_empty :: proc "contextless" (list: str8_list) -> bool {…}
```

### [str8\_list\_first ¶](#str8_list_first) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L190)

```
str8_list_first :: proc "contextless" (sl: ^str8_list) -> string {…}
```

### [str8\_list\_for ¶](#str8_list_for) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L206)

```
str8_list_for :: proc "contextless" (list: ^str8_list, elt: ^^list_elt) -> (^str8_elt, bool) {…}
```

### [str8\_list\_iter ¶](#str8_list_iter) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L206)

```
str8_list_iter :: str8_list_for
```

### [str8\_list\_join ¶](#str8_list_join) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L481)

```
str8_list_join :: proc "c" (arena: ^arena, list: str8_list) -> string ---
```

 

Build a string by joining the elements of a string list.

### [str8\_list\_last ¶](#str8_list_last) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L198)

```
str8_list_last :: proc "contextless" (sl: ^str8_list) -> string {…}
```

### [str8\_list\_push ¶](#str8_list_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L475)

```
str8_list_push :: proc "c" (arena: ^arena, list: ^str8_list, str: string) ---
```

 

Push a string element to the back of a string list. This creates a `oc_str8_elt` element referring to the contents of the input string, and links that element at the end of the string list.

### [str8\_list\_pushf ¶](#str8_list_pushf) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L477)

```
str8_list_pushf :: proc "c" (arena: ^arena, list: ^str8_list, format: cstring, .. args: ..any) ---
```

 

Build a string from a null-terminated format string an variadic arguments, and append it to a string list.

### [str8\_push\_buffer ¶](#str8_push_buffer) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L463)

```
str8_push_buffer :: proc "c" (arena: ^arena, len: u64, buffer: [^]u8) -> string ---
```

 

Pushes a copy of a buffer to an arena, and makes a string refering to that copy.

### [str8\_push\_copy ¶](#str8_push_copy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L467)

```
str8_push_copy :: proc "c" (arena: ^arena, s: string) -> string ---
```

 

Copy the contents of a string on an arena and make a new string referring to the copied bytes.

### [str8\_push\_cstring ¶](#str8_push_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L465)

```
str8_push_cstring :: proc "c" (arena: ^arena, str: cstring) -> string ---
```

 

Pushes a copy of a C null-terminated string to an arena, and makes a string referring to that copy.

### [str8\_push\_slice ¶](#str8_push_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L469)

```
str8_push_slice :: proc "c" (arena: ^arena, s: string, start: u64, end: u64) -> string ---
```

 

Make a copy of a string slice. This function copies a subsequence of the input string onto an arena, and returns a new string referring to the copied content.

### [str8\_slice ¶](#str8_slice) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L461)

```
str8_slice :: proc "c" (s: string, start: u64, end: u64) -> string ---
```

 

Make a string from a slice of another string. The resulting string designates some subsequence of the input string.

### [str8\_split ¶](#str8_split) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L487)

```
str8_split :: proc "c" (arena: ^arena, str: string, separators: str8_list) -> str8_list ---
```

 

Split a list into a string list according to separators.

No string copies are made. The elements of the resulting string list refer to subsequences of the input string.

### [str8\_to\_cstring ¶](#str8_to_cstring) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L473)

```
str8_to_cstring :: proc "c" (arena: ^arena, string: string) -> cstring ---
```

 

Create a null-terminated C-string from an `oc_str8` string.

### [stroke ¶](#stroke) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1773)

```
stroke :: proc "c" () ---
```

 

Stroke the current path.

### [surface\_bring\_to\_front ¶](#surface_bring_to_front) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1583)

```
surface_bring_to_front :: proc "c" (surface: surface) ---
```

 

Bring a surface to the foreground, rendering it on top of other surfaces.

### [surface\_contents\_scaling ¶](#surface_contents_scaling) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1581)

```
surface_contents_scaling :: proc "c" (surface: surface) -> [2]f32 ---
```

 

Get the scaling factor of a surface.

### [surface\_destroy ¶](#surface_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1573)

```
surface_destroy :: proc "c" (surface: surface) ---
```

 

Destroy a graphics surface.

### [surface\_get\_hidden ¶](#surface_get_hidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1587)

```
surface_get_hidden :: proc "c" (surface: surface) -> bool ---
```

 

Checks if a surface is hidden.

### [surface\_get\_size ¶](#surface_get_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1579)

```
surface_get_size :: proc "c" (surface: surface) -> [2]f32 ---
```

 

Get a surface's size.

The size is returned in device-independent "points". To get the size in pixels, multiply the size in points by the scaling factor returned by `oc_surface_contents_scaling()`.

### [surface\_is\_nil ¶](#surface_is_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1571)

```
surface_is_nil :: proc "c" (surface: surface) -> bool ---
```

 

Check if a surface handle is `nil`.

### [surface\_nil ¶](#surface_nil) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1569)

```
surface_nil :: proc "c" () -> surface ---
```

 

Returns a `nil` surface handle.

### [surface\_send\_to\_back ¶](#surface_send_to_back) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1585)

```
surface_send_to_back :: proc "c" (surface: surface) ---
```

 

Send a surface to the background, rendering it below other surfaces.

### [surface\_set\_hidden ¶](#surface_set_hidden) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1589)

```
surface_set_hidden :: proc "c" (surface: surface, hidden: bool) ---
```

 

Set the hidden status of a surface.

### [text\_fill ¶](#text_fill) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1793)

```
text_fill :: proc "c" (x: f32, y: f32, text: string) ---
```

 

Draw a text line.

### [text\_outlines ¶](#text_outlines) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1767)

```
text_outlines :: proc "c" (string: string) ---
```

 

Add the outlines of a glyph run to the path, using a utf8 string.

### [ui\_box\_begin\_str8 ¶](#ui_box_begin_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2035)

```
ui_box_begin_str8 :: proc "c" (string: string) -> ^ui_box ---
```

### [ui\_box\_end ¶](#ui_box_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2036)

```
ui_box_end :: proc "c" () -> ^ui_box ---
```

### [ui\_box\_get\_sig ¶](#ui_box_get_sig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2045)

```
ui_box_get_sig :: proc "c" (box: ^ui_box) -> ui_sig ---
```

### [ui\_box\_release\_focus ¶](#ui_box_release_focus) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2044)

```
ui_box_release_focus :: proc "c" (box: ^ui_box) ---
```

### [ui\_box\_request\_focus ¶](#ui_box_request_focus) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2043)

```
ui_box_request_focus :: proc "c" (box: ^ui_box) ---
```

### [ui\_box\_set\_closed ¶](#ui_box_set_closed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2040)

```
ui_box_set_closed :: proc "c" (box: ^ui_box, closed: bool) ---
```

### [ui\_box\_set\_draw\_proc ¶](#ui_box_set_draw_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2037)

```
ui_box_set_draw_proc :: proc "c" (box: ^ui_box, _proc: ui_box_draw_proc, data: rawptr) ---
```

### [ui\_box\_set\_overlay ¶](#ui_box_set_overlay) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2039)

```
ui_box_set_overlay :: proc "c" (box: ^ui_box, overlay: bool) ---
```

### [ui\_box\_set\_text ¶](#ui_box_set_text) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2038)

```
ui_box_set_text :: proc "c" (box: ^ui_box, text: string) ---
```

### [ui\_box\_tag\_str8 ¶](#ui_box_tag_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2055)

```
ui_box_tag_str8 :: proc "c" (box: ^ui_box, string: string) ---
```

### [ui\_box\_user\_data\_get ¶](#ui_box_user_data_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2041)

```
ui_box_user_data_get :: proc "c" (box: ^ui_box) -> cstring ---
```

### [ui\_box\_user\_data\_push ¶](#ui_box_user_data_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2042)

```
ui_box_user_data_push :: proc "c" (box: ^ui_box, size: u64) -> cstring ---
```

### [ui\_button ¶](#ui_button) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2154)

```
ui_button :: proc "c" (key: cstring, text: cstring) -> ui_sig ---
```

### [ui\_button\_str8 ¶](#ui_button_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2155)

```
ui_button_str8 :: proc "c" (key: string, text: string) -> ui_sig ---
```

### [ui\_checkbox ¶](#ui_checkbox) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2156)

```
ui_checkbox :: proc "c" (key: cstring, checked: ^bool) -> ui_sig ---
```

### [ui\_checkbox\_str8 ¶](#ui_checkbox_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2157)

```
ui_checkbox_str8 :: proc "c" (key: string, checked: ^bool) -> ui_sig ---
```

### [ui\_container ¶](#ui_container) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L257)

```
ui_container :: proc "contextless" (name: string) -> ^ui_box {…}
```

### [ui\_context\_create ¶](#ui_context_create) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2024)

```
ui_context_create :: proc "c" (defaultFont: font) -> ^ui_context ---
```

### [ui\_context\_destroy ¶](#ui_context_destroy) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2025)

```
ui_context_destroy :: proc "c" (_context: ^ui_context) ---
```

### [ui\_draw ¶](#ui_draw) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2031)

```
ui_draw :: proc "c" () ---
```

### [ui\_frame\_arena ¶](#ui_frame_arena) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2033)

```
ui_frame_arena :: proc "c" () -> ^arena ---
```

### [ui\_frame\_begin ¶](#ui_frame_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2029)

```
ui_frame_begin :: proc "c" (size: [2]f32) ---
```

### [ui\_frame\_end ¶](#ui_frame_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2030)

```
ui_frame_end :: proc "c" () ---
```

### [ui\_frame\_time ¶](#ui_frame_time) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2034)

```
ui_frame_time :: proc "c" () -> f64 ---
```

### [ui\_get\_context ¶](#ui_get_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2026)

```
ui_get_context :: proc "c" () -> ^ui_context ---
```

### [ui\_get\_sig ¶](#ui_get_sig) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2054)

```
ui_get_sig :: proc "c" () -> ui_sig ---
```

### [ui\_input ¶](#ui_input) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2032)

```
ui_input :: proc "c" () -> ^input_state ---
```

### [ui\_label ¶](#ui_label) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2152)

```
ui_label :: proc "c" (key: cstring, label: cstring) -> ui_sig ---
```

### [ui\_label\_str8 ¶](#ui_label_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2153)

```
ui_label_str8 :: proc "c" (key: string, label: string) -> ui_sig ---
```

### [ui\_menu ¶](#ui_menu) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L262)

```
ui_menu :: proc "contextless" (key: string, name: string) {…}
```

### [ui\_menu\_bar ¶](#ui_menu_bar) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin#L267)

```
ui_menu_bar :: proc "contextless" (key: string) {…}
```

### [ui\_menu\_bar\_begin ¶](#ui_menu_bar_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2162)

```
ui_menu_bar_begin :: proc "c" (key: cstring) ---
```

### [ui\_menu\_bar\_begin\_str8 ¶](#ui_menu_bar_begin_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2163)

```
ui_menu_bar_begin_str8 :: proc "c" (key: string) ---
```

### [ui\_menu\_bar\_end ¶](#ui_menu_bar_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2164)

```
ui_menu_bar_end :: proc "c" () ---
```

### [ui\_menu\_begin ¶](#ui_menu_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2165)

```
ui_menu_begin :: proc "c" (key: cstring, name: cstring) ---
```

### [ui\_menu\_begin\_str8 ¶](#ui_menu_begin_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2166)

```
ui_menu_begin_str8 :: proc "c" (key: string, name: string) ---
```

### [ui\_menu\_button ¶](#ui_menu_button) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2168)

```
ui_menu_button :: proc "c" (key: cstring, text: cstring) -> ui_sig ---
```

### [ui\_menu\_button\_str8 ¶](#ui_menu_button_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2169)

```
ui_menu_button_str8 :: proc "c" (key: string, text: string) -> ui_sig ---
```

### [ui\_menu\_end ¶](#ui_menu_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2167)

```
ui_menu_end :: proc "c" () ---
```

### [ui\_process\_event ¶](#ui_process_event) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2028)

```
ui_process_event :: proc "c" (event: ^event) ---
```

### [ui\_radio\_group ¶](#ui_radio_group) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2174)

```
ui_radio_group :: proc "c" (key: cstring, info: ^ui_radio_group_info) -> ui_radio_group_info ---
```

### [ui\_radio\_group\_str8 ¶](#ui_radio_group_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2175)

```
ui_radio_group_str8 :: proc "c" (key: string, info: ^ui_radio_group_info) -> ui_radio_group_info ---
```

### [ui\_release\_focus ¶](#ui_release_focus) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2053)

```
ui_release_focus :: proc "c" () ---
```

### [ui\_request\_focus ¶](#ui_request_focus) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2052)

```
ui_request_focus :: proc "c" () ---
```

### [ui\_select\_popup ¶](#ui_select_popup) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2172)

```
ui_select_popup :: proc "c" (key: cstring, info: ^ui_select_popup_info) -> ui_select_popup_info ---
```

### [ui\_select\_popup\_str8 ¶](#ui_select_popup_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2173)

```
ui_select_popup_str8 :: proc "c" (key: string, info: ^ui_select_popup_info) -> ui_select_popup_info ---
```

### [ui\_set\_closed ¶](#ui_set_closed) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2049)

```
ui_set_closed :: proc "c" (closed: bool) ---
```

### [ui\_set\_context ¶](#ui_set_context) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2027)

```
ui_set_context :: proc "c" (_context: ^ui_context) ---
```

### [ui\_set\_draw\_proc ¶](#ui_set_draw_proc) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2046)

```
ui_set_draw_proc :: proc "c" (_proc: ui_box_draw_proc, data: rawptr) ---
```

### [ui\_set\_overlay ¶](#ui_set_overlay) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2048)

```
ui_set_overlay :: proc "c" (overlay: bool) ---
```

### [ui\_set\_text ¶](#ui_set_text) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2047)

```
ui_set_text :: proc "c" (text: string) ---
```

### [ui\_slider ¶](#ui_slider) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2158)

```
ui_slider :: proc "c" (name: cstring, value: ^f32) -> ^ui_box ---
```

### [ui\_slider\_str8 ¶](#ui_slider_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2159)

```
ui_slider_str8 :: proc "c" (name: string, value: ^f32) -> ^ui_box ---
```

### [ui\_style\_rule\_begin ¶](#ui_style_rule_begin) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2058)

```
ui_style_rule_begin :: proc "c" (pattern: string) ---
```

### [ui\_style\_rule\_end ¶](#ui_style_rule_end) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2059)

```
ui_style_rule_end :: proc "c" () ---
```

### [ui\_style\_set\_color ¶](#ui_style_set_color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2062)

```
ui_style_set_color :: proc "c" (attr: ui_attribute, _color: color) ---
```

### [ui\_style\_set\_f32 ¶](#ui_style_set_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2061)

```
ui_style_set_f32 :: proc "c" (attr: ui_attribute, f: f32) ---
```

### [ui\_style\_set\_font ¶](#ui_style_set_font) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2063)

```
ui_style_set_font :: proc "c" (attr: ui_attribute, font: font) ---
```

### [ui\_style\_set\_i32 ¶](#ui_style_set_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2060)

```
ui_style_set_i32 :: proc "c" (attr: ui_attribute, i: i32) ---
```

### [ui\_style\_set\_size ¶](#ui_style_set_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2064)

```
ui_style_set_size :: proc "c" (attr: ui_attribute, size: ui_size) ---
```

### [ui\_style\_set\_var ¶](#ui_style_set_var) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2066)

```
ui_style_set_var :: proc "c" (attr: ui_attribute, var: cstring) ---
```

### [ui\_style\_set\_var\_str8 ¶](#ui_style_set_var_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2065)

```
ui_style_set_var_str8 :: proc "c" (attr: ui_attribute, var: string) ---
```

### [ui\_tag\_next\_str8 ¶](#ui_tag_next_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2057)

```
ui_tag_next_str8 :: proc "c" (string: string) ---
```

### [ui\_tag\_str8 ¶](#ui_tag_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2056)

```
ui_tag_str8 :: proc "c" (string: string) ---
```

### [ui\_text\_box ¶](#ui_text_box) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2170)

```
ui_text_box :: proc "c" (key: cstring, arena: ^arena, info: ^ui_text_box_info) -> ui_text_box_result ---
```

### [ui\_text\_box\_str8 ¶](#ui_text_box_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2171)

```
ui_text_box_str8 :: proc "c" (key: string, arena: ^arena, info: ^ui_text_box_info) -> ui_text_box_result ---
```

### [ui\_theme\_dark ¶](#ui_theme_dark) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2101)

```
ui_theme_dark :: proc "c" () ---
```

### [ui\_theme\_light ¶](#ui_theme_light) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2102)

```
ui_theme_light :: proc "c" () ---
```

### [ui\_tooltip ¶](#ui_tooltip) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2160)

```
ui_tooltip :: proc "c" (key: cstring, text: cstring) ---
```

### [ui\_tooltip\_str8 ¶](#ui_tooltip_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2161)

```
ui_tooltip_str8 :: proc "c" (key: string, text: string) ---
```

### [ui\_user\_data\_get ¶](#ui_user_data_get) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2050)

```
ui_user_data_get :: proc "c" () -> cstring ---
```

### [ui\_user\_data\_push ¶](#ui_user_data_push) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2051)

```
ui_user_data_push :: proc "c" (size: u64) -> cstring ---
```

### [ui\_var\_default ¶](#ui_var_default) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2078)

```
ui_var_default :: proc "c" (name: cstring, src: cstring) ---
```

### [ui\_var\_default\_color ¶](#ui_var_default_color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2076)

```
ui_var_default_color :: proc "c" (name: cstring, _color: color) ---
```

### [ui\_var\_default\_color\_str8 ¶](#ui_var_default_color_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2070)

```
ui_var_default_color_str8 :: proc "c" (name: string, _color: color) ---
```

### [ui\_var\_default\_f32 ¶](#ui_var_default_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2074)

```
ui_var_default_f32 :: proc "c" (name: cstring, f: f32) ---
```

### [ui\_var\_default\_f32\_str8 ¶](#ui_var_default_f32_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2068)

```
ui_var_default_f32_str8 :: proc "c" (name: string, f: f32) ---
```

### [ui\_var\_default\_font ¶](#ui_var_default_font) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2077)

```
ui_var_default_font :: proc "c" (name: cstring, font: font) ---
```

### [ui\_var\_default\_font\_str8 ¶](#ui_var_default_font_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2071)

```
ui_var_default_font_str8 :: proc "c" (name: string, font: font) ---
```

### [ui\_var\_default\_i32 ¶](#ui_var_default_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2073)

```
ui_var_default_i32 :: proc "c" (name: cstring, i: i32) ---
```

### [ui\_var\_default\_i32\_str8 ¶](#ui_var_default_i32_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2067)

```
ui_var_default_i32_str8 :: proc "c" (name: string, i: i32) ---
```

### [ui\_var\_default\_size ¶](#ui_var_default_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2075)

```
ui_var_default_size :: proc "c" (name: cstring, size: ui_size) ---
```

### [ui\_var\_default\_size\_str8 ¶](#ui_var_default_size_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2069)

```
ui_var_default_size_str8 :: proc "c" (name: string, size: ui_size) ---
```

### [ui\_var\_default\_str8 ¶](#ui_var_default_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2072)

```
ui_var_default_str8 :: proc "c" (name: string, src: string) ---
```

### [ui\_var\_get\_color ¶](#ui_var_get_color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2099)

```
ui_var_get_color :: proc "c" (name: cstring) -> color ---
```

### [ui\_var\_get\_color\_str8 ¶](#ui_var_get_color_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2094)

```
ui_var_get_color_str8 :: proc "c" (name: string) -> color ---
```

### [ui\_var\_get\_f32 ¶](#ui_var_get_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2097)

```
ui_var_get_f32 :: proc "c" (name: cstring) -> f32 ---
```

### [ui\_var\_get\_f32\_str8 ¶](#ui_var_get_f32_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2092)

```
ui_var_get_f32_str8 :: proc "c" (name: string) -> f32 ---
```

### [ui\_var\_get\_font ¶](#ui_var_get_font) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2100)

```
ui_var_get_font :: proc "c" (name: cstring) -> font ---
```

### [ui\_var\_get\_font\_str8 ¶](#ui_var_get_font_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2095)

```
ui_var_get_font_str8 :: proc "c" (name: string) -> font ---
```

### [ui\_var\_get\_i32 ¶](#ui_var_get_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2096)

```
ui_var_get_i32 :: proc "c" (name: cstring) -> i32 ---
```

### [ui\_var\_get\_i32\_str8 ¶](#ui_var_get_i32_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2091)

```
ui_var_get_i32_str8 :: proc "c" (name: string) -> i32 ---
```

### [ui\_var\_get\_size ¶](#ui_var_get_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2098)

```
ui_var_get_size :: proc "c" (name: cstring) -> ui_size ---
```

### [ui\_var\_get\_size\_str8 ¶](#ui_var_get_size_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2093)

```
ui_var_get_size_str8 :: proc "c" (name: string) -> ui_size ---
```

### [ui\_var\_set ¶](#ui_var_set) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2090)

```
ui_var_set :: proc "c" (name: cstring, src: cstring) ---
```

### [ui\_var\_set\_color ¶](#ui_var_set_color) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2088)

```
ui_var_set_color :: proc "c" (name: cstring, _color: color) ---
```

### [ui\_var\_set\_color\_str8 ¶](#ui_var_set_color_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2082)

```
ui_var_set_color_str8 :: proc "c" (name: string, _color: color) ---
```

### [ui\_var\_set\_f32 ¶](#ui_var_set_f32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2086)

```
ui_var_set_f32 :: proc "c" (name: cstring, f: f32) ---
```

### [ui\_var\_set\_f32\_str8 ¶](#ui_var_set_f32_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2080)

```
ui_var_set_f32_str8 :: proc "c" (name: string, f: f32) ---
```

### [ui\_var\_set\_font ¶](#ui_var_set_font) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2089)

```
ui_var_set_font :: proc "c" (name: cstring, font: font) ---
```

### [ui\_var\_set\_font\_str8 ¶](#ui_var_set_font_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2083)

```
ui_var_set_font_str8 :: proc "c" (name: string, font: font) ---
```

### [ui\_var\_set\_i32 ¶](#ui_var_set_i32) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2085)

```
ui_var_set_i32 :: proc "c" (name: cstring, i: i32) ---
```

### [ui\_var\_set\_i32\_str8 ¶](#ui_var_set_i32_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2079)

```
ui_var_set_i32_str8 :: proc "c" (name: string, i: i32) ---
```

### [ui\_var\_set\_size ¶](#ui_var_set_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2087)

```
ui_var_set_size :: proc "c" (name: cstring, size: ui_size) ---
```

### [ui\_var\_set\_size\_str8 ¶](#ui_var_set_size_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2081)

```
ui_var_set_size_str8 :: proc "c" (name: string, size: ui_size) ---
```

### [ui\_var\_set\_str8 ¶](#ui_var_set_str8) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L2084)

```
ui_var_set_str8 :: proc "c" (name: string, src: string) ---
```

### [utf8\_byte\_count\_for\_codepoints ¶](#utf8_byte_count_for_codepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L581)

```
utf8_byte_count_for_codepoints :: proc "c" (codePoints: str32) -> u64 ---
```

 

Get the length of the utf8 encoding of a sequence of unicode codepoints.

### [utf8\_codepoint\_count\_for\_string ¶](#utf8_codepoint_count_for_string) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L579)

```
utf8_codepoint_count_for_string :: proc "c" (string: string) -> u64 ---
```

### [utf8\_codepoint\_size ¶](#utf8_codepoint_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L578)

```
utf8_codepoint_size :: proc "c" (codePoint: rune) -> u32 ---
```

 

Get the size of the utf8 encoding of a codepoint.

### [utf8\_decode ¶](#utf8_decode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L587)

```
utf8_decode :: proc "c" (string: string) -> utf8_dec ---
```

 

Decode a utf8 encoded codepoint.

### [utf8\_decode\_at ¶](#utf8_decode_at) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L589)

```
utf8_decode_at :: proc "c" (string: string, offset: u64) -> utf8_dec ---
```

 

Decode a codepoint at a given offset in a utf8 encoded string.

### [utf8\_encode ¶](#utf8_encode) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L591)

```
utf8_encode :: proc "c" (dst: cstring, codePoint: rune) -> string ---
```

 

Encode a unicode codepoint into a utf8 sequence.

### [utf8\_from\_codepoints ¶](#utf8_from_codepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L595)

```
utf8_from_codepoints :: proc "c" (maxBytes: u64, backing: cstring, codePoints: str32) -> string ---
```

 

Encode a string of unicode codepoints into a utf8 string using memory passed by the caller.

### [utf8\_next\_offset ¶](#utf8_next_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L583)

```
utf8_next_offset :: proc "c" (string: string, byteOffset: u64) -> u64 ---
```

 

Get the offset of the next codepoint after a given offset, in a utf8 encoded string.

### [utf8\_prev\_offset ¶](#utf8_prev_offset) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L585)

```
utf8_prev_offset :: proc "c" (string: string, byteOffset: u64) -> u64 ---
```

 

Get the offset of the previous codepoint before a given offset, in a utf8 encoded string.

### [utf8\_push\_from\_codepoints ¶](#utf8_push_from_codepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L599)

```
utf8_push_from_codepoints :: proc "c" (arena: ^arena, codePoints: str32) -> string ---
```

 

Encode a string of unicode codepoints into a utf8 string using an arena.

### [utf8\_push\_to\_codepoints ¶](#utf8_push_to_codepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L597)

```
utf8_push_to_codepoints :: proc "c" (arena: ^arena, string: string) -> str32 ---
```

 

Decode a utf8 encoded string to a string of unicode codepoints using an arena.

### [utf8\_size\_from\_leading\_char ¶](#utf8_size_from_leading_char) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L576)

```
utf8_size_from_leading_char :: proc "c" (leadingChar: u8) -> u32 ---
```

 

Get the size of a utf8-encoded codepoint for the first byte of the encoded sequence.

### [utf8\_to\_codepoints ¶](#utf8_to_codepoints) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L593)

```
utf8_to_codepoints :: proc "c" (maxCount: u64, backing: ^rune, string: string) -> str32 ---
```

 

Decode a utf8 string to a string of unicode codepoints using memory passed by the caller.

### [vec2\_add ¶](#vec2_add) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L183)

```
vec2_add :: proc "c" (v0: [2]f32, v1: [2]f32) -> [2]f32 ---
```

 

Add two 2D vectors

### [vec2\_equal ¶](#vec2_equal) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L179)

```
vec2_equal :: proc "c" (v0: [2]f32, v1: [2]f32) -> bool ---
```

 

Check if two 2D vectors are equal.

### [vec2\_mul ¶](#vec2_mul) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L181)

```
vec2_mul :: proc "c" (f: f32, v: [2]f32) -> [2]f32 ---
```

 

Multiply a 2D vector by a scalar.

### [window\_set\_size ¶](#window_set_size) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1066)

```
window_set_size :: proc "c" (size: [2]f32) ---
```

 

Set the size of the application's window.

### [window\_set\_title ¶](#window_set_title) [*Source*](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin#L1064)

```
window_set_title :: proc "c" (title: string) ---
```

 

Set the title of the application's window.

## Procedure Groups

This section is empty.

## Source Files

* [macros.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/macros.odin)
* [odin.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/odin.odin)
* [orca.odin](https://github.com/odin-lang/Odin/tree/master/core/sys/orca/orca.odin)

## Generation Information

Generated with `odin version dev-2026-04 (vendor "odin") Windows_amd64 @ 2026-04-19 21:26:48.840861400 +0000 UTC`

* [Types](#pkg-Types)
  + [arena](#arena)
  + [arena\_chunk](#arena_chunk)
  + [arena\_options](#arena_options)
  + [arena\_scope](#arena_scope)
  + [base\_allocator](#base_allocator)
  + [canvas\_context](#canvas_context)
  + [canvas\_renderer](#canvas_renderer)
  + [cap\_type](#cap_type)
  + [char](#char)
  + [char\_event](#char_event)
  + [clipboard\_state](#clipboard_state)
  + [clock\_kind](#clock_kind)
  + [color](#color)
  + [color\_space](#color_space)
  + [datestamp](#datestamp)
  + [event](#event)
  + [event\_type](#event_type)
  + [file](#file)
  + [file\_access](#file_access)
  + [file\_access\_flag](#file_access_flag)
  + [file\_dialog\_button](#file_dialog_button)
  + [file\_dialog\_desc](#file_dialog_desc)
  + [file\_dialog\_flag](#file_dialog_flag)
  + [file\_dialog\_flags](#file_dialog_flags)
  + [file\_dialog\_kind](#file_dialog_kind)
  + [file\_dialog\_result](#file_dialog_result)
  + [file\_list](#file_list)
  + [file\_listdir\_elt](#file_listdir_elt)
  + [file\_open\_flag](#file_open_flag)
  + [file\_open\_flags](#file_open_flags)
  + [file\_open\_with\_dialog\_elt](#file_open_with_dialog_elt)
  + [file\_open\_with\_dialog\_result](#file_open_with_dialog_result)
  + [file\_perm](#file_perm)
  + [file\_perm\_flag](#file_perm_flag)
  + [file\_status](#file_status)
  + [file\_type](#file_type)
  + [file\_whence](#file_whence)
  + [font](#font)
  + [font\_metrics](#font_metrics)
  + [glyph\_metrics](#glyph_metrics)
  + [gradient\_blend\_space](#gradient_blend_space)
  + [image](#image)
  + [image\_region](#image_region)
  + [input\_state](#input_state)
  + [io\_cmp](#io_cmp)
  + [io\_error](#io_error)
  + [io\_op](#io_op)
  + [io\_req](#io_req)
  + [io\_req\_id](#io_req_id)
  + [joint\_type](#joint_type)
  + [key\_action](#key_action)
  + [key\_code](#key_code)
  + [key\_event](#key_event)
  + [key\_state](#key_state)
  + [keyboard\_state](#keyboard_state)
  + [keymod\_flag](#keymod_flag)
  + [keymod\_flags](#keymod_flags)
  + [list](#list)
  + [list\_elt](#list_elt)
  + [log\_level](#log_level)
  + [mat2x3](#mat2x3)
  + [mem\_modify\_proc](#mem_modify_proc)
  + [mem\_reserve\_proc](#mem_reserve_proc)
  + [mouse\_button](#mouse_button)
  + [mouse\_event](#mouse_event)
  + [mouse\_state](#mouse_state)
  + [move\_event](#move_event)
  + [pool](#pool)
  + [rect](#rect)
  + [rect\_atlas](#rect_atlas)
  + [scan\_code](#scan_code)
  + [str16](#str16)
  + [str16\_elt](#str16_elt)
  + [str16\_list](#str16_list)
  + [str32](#str32)
  + [str32\_elt](#str32_elt)
  + [str32\_list](#str32_list)
  + [str8](#str8)
  + [str8\_elt](#str8_elt)
  + [str8\_list](#str8_list)
  + [surface](#surface)
  + [text\_metrics](#text_metrics)
  + [text\_state](#text_state)
  + [ui\_align](#ui_align)
  + [ui\_attribute](#ui_attribute)
  + [ui\_attribute\_mask](#ui_attribute_mask)
  + [ui\_axis](#ui_axis)
  + [ui\_box](#ui_box)
  + [ui\_box\_draw\_proc](#ui_box_draw_proc)
  + [ui\_box\_floating](#ui_box_floating)
  + [ui\_box\_size](#ui_box_size)
  + [ui\_context](#ui_context)
  + [ui\_draw\_mask](#ui_draw_mask)
  + [ui\_edit\_move](#ui_edit_move)
  + [ui\_key](#ui_key)
  + [ui\_layout](#ui_layout)
  + [ui\_layout\_align](#ui_layout_align)
  + [ui\_overflow](#ui_overflow)
  + [ui\_radio\_group\_info](#ui_radio_group_info)
  + [ui\_select\_popup\_info](#ui_select_popup_info)
  + [ui\_sig](#ui_sig)
  + [ui\_size](#ui_size)
  + [ui\_size\_kind](#ui_size_kind)
  + [ui\_style](#ui_style)
  + [ui\_text\_box\_info](#ui_text_box_info)
  + [ui\_text\_box\_result](#ui_text_box_result)
  + [unicode\_range](#unicode_range)
  + [utf32](#utf32)
  + [utf8\_dec](#utf8_dec)
  + [utf8\_status](#utf8_status)
  + [vec2](#vec2)
  + [vec2i](#vec2i)
  + [vec3](#vec3)
  + [vec4](#vec4)
  + [window](#window)
* [Constants](#pkg-Constants)
  + [BACKING\_SIZE](#BACKING_SIZE)
  + [UNICODE\_AEGEAN\_NUMBERS](#UNICODE_AEGEAN_NUMBERS)
  + [UNICODE\_ALPHABETIC\_PRESENTATION\_FORMS](#UNICODE_ALPHABETIC_PRESENTATION_FORMS)
  + [UNICODE\_ARABIC](#UNICODE_ARABIC)
  + [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_A](#UNICODE_ARABIC_PRESENTATION_FORMS_A)
  + [UNICODE\_ARABIC\_PRESENTATION\_FORMS\_B](#UNICODE_ARABIC_PRESENTATION_FORMS_B)
  + [UNICODE\_ARMENIAN](#UNICODE_ARMENIAN)
  + [UNICODE\_ARROWS](#UNICODE_ARROWS)
  + [UNICODE\_BASIC\_LATIN](#UNICODE_BASIC_LATIN)
  + [UNICODE\_BENGALI\_ASSAMESE](#UNICODE_BENGALI_ASSAMESE)
  + [UNICODE\_BLOCK\_ELEMENTS](#UNICODE_BLOCK_ELEMENTS)
  + [UNICODE\_BOPOMOFO](#UNICODE_BOPOMOFO)
  + [UNICODE\_BOPOMOFO\_EXTENDED](#UNICODE_BOPOMOFO_EXTENDED)
  + [UNICODE\_BOX\_DRAWING](#UNICODE_BOX_DRAWING)
  + [UNICODE\_BRAILLE\_PATTERNS](#UNICODE_BRAILLE_PATTERNS)
  + [UNICODE\_BUHID](#UNICODE_BUHID)
  + [UNICODE\_BYZANTINE\_MUSICAL\_SYMBOLS](#UNICODE_BYZANTINE_MUSICAL_SYMBOLS)
  + [UNICODE\_C1\_CONTROLS\_AND\_LATIN\_1\_SUPPLEMENT](#UNICODE_C1_CONTROLS_AND_LATIN_1_SUPPLEMENT)
  + [UNICODE\_CHEROKEE](#UNICODE_CHEROKEE)
  + [UNICODE\_CJK\_COMPATIBILITY](#UNICODE_CJK_COMPATIBILITY)
  + [UNICODE\_CJK\_COMPATIBILITY\_FORMS](#UNICODE_CJK_COMPATIBILITY_FORMS)
  + [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS](#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS)
  + [UNICODE\_CJK\_COMPATIBILITY\_IDEOGRAPHS\_SUPPLEMENT](#UNICODE_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT)
  + [UNICODE\_CJK\_RADICALS\_SUPPLEMENT](#UNICODE_CJK_RADICALS_SUPPLEMENT)
  + [UNICODE\_CJK\_SYMBOLS\_AND\_PUNCTUATION](#UNICODE_CJK_SYMBOLS_AND_PUNCTUATION)
  + [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS](#UNICODE_CJK_UNIFIED_IDEOGRAPHS)
  + [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_A](#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A)
  + [UNICODE\_CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_B](#UNICODE_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B)
  + [UNICODE\_COMBINING\_DIACRITICAL\_MARKS](#UNICODE_COMBINING_DIACRITICAL_MARKS)
  + [UNICODE\_COMBINING\_DIACRITICAL\_MARKS\_FOR\_SYMBOLS](#UNICODE_COMBINING_DIACRITICAL_MARKS_FOR_SYMBOLS)
  + [UNICODE\_COMBINING\_HALF\_MARKS](#UNICODE_COMBINING_HALF_MARKS)
  + [UNICODE\_CONTROL\_PICTURES](#UNICODE_CONTROL_PICTURES)
  + [UNICODE\_CURRENCY\_SYMBOLS](#UNICODE_CURRENCY_SYMBOLS)
  + [UNICODE\_CYPRIOT\_SYLLABARY](#UNICODE_CYPRIOT_SYLLABARY)
  + [UNICODE\_CYRILLIC](#UNICODE_CYRILLIC)
  + [UNICODE\_CYRILLIC\_SUPPLEMENT](#UNICODE_CYRILLIC_SUPPLEMENT)
  + [UNICODE\_DESERET](#UNICODE_DESERET)
  + [UNICODE\_DEVANAGARI](#UNICODE_DEVANAGARI)
  + [UNICODE\_DINGBATS](#UNICODE_DINGBATS)
  + [UNICODE\_ENCLOSED\_ALPHANUMERICS](#UNICODE_ENCLOSED_ALPHANUMERICS)
  + [UNICODE\_ENCLOSED\_CJK\_LETTERS\_AND\_MONTHS](#UNICODE_ENCLOSED_CJK_LETTERS_AND_MONTHS)
  + [UNICODE\_ETHIOPIC](#UNICODE_ETHIOPIC)
  + [UNICODE\_GENERAL\_PUNCTUATION](#UNICODE_GENERAL_PUNCTUATION)
  + [UNICODE\_GEOMETRIC\_SHAPES](#UNICODE_GEOMETRIC_SHAPES)
  + [UNICODE\_GEORGIAN](#UNICODE_GEORGIAN)
  + [UNICODE\_GOTHIC](#UNICODE_GOTHIC)
  + [UNICODE\_GREEK\_COPTIC](#UNICODE_GREEK_COPTIC)
  + [UNICODE\_GREEK\_EXTENDED](#UNICODE_GREEK_EXTENDED)
  + [UNICODE\_GUJARATI](#UNICODE_GUJARATI)
  + [UNICODE\_GURMUKHI](#UNICODE_GURMUKHI)
  + [UNICODE\_HALFWIDTH\_AND\_FULLWIDTH\_FORMS](#UNICODE_HALFWIDTH_AND_FULLWIDTH_FORMS)
  + [UNICODE\_HANGUL\_COMPATIBILITY\_JAMO](#UNICODE_HANGUL_COMPATIBILITY_JAMO)
  + [UNICODE\_HANGUL\_JAMO](#UNICODE_HANGUL_JAMO)
  + [UNICODE\_HANGUL\_SYLLABLES](#UNICODE_HANGUL_SYLLABLES)
  + [UNICODE\_HANUNOO](#UNICODE_HANUNOO)
  + [UNICODE\_HEBREW](#UNICODE_HEBREW)
  + [UNICODE\_HIGH\_SURROGATE\_AREA](#UNICODE_HIGH_SURROGATE_AREA)
  + [UNICODE\_HIRAGANA](#UNICODE_HIRAGANA)
  + [UNICODE\_IDEOGRAPHIC\_DESCRIPTION\_CHARACTERS](#UNICODE_IDEOGRAPHIC_DESCRIPTION_CHARACTERS)
  + [UNICODE\_IPA\_EXTENSIONS](#UNICODE_IPA_EXTENSIONS)
  + [UNICODE\_KANBUN\_KUNTEN](#UNICODE_KANBUN_KUNTEN)
  + [UNICODE\_KANGXI\_RADICALS](#UNICODE_KANGXI_RADICALS)
  + [UNICODE\_KANNADA](#UNICODE_KANNADA)
  + [UNICODE\_KATAKANA](#UNICODE_KATAKANA)
  + [UNICODE\_KATAKANA\_PHONETIC\_EXTENSIONS](#UNICODE_KATAKANA_PHONETIC_EXTENSIONS)
  + [UNICODE\_KHMER](#UNICODE_KHMER)
  + [UNICODE\_KHMER\_SYMBOLS](#UNICODE_KHMER_SYMBOLS)
  + [UNICODE\_LAO](#UNICODE_LAO)
  + [UNICODE\_LATIN\_EXTENDED\_A](#UNICODE_LATIN_EXTENDED_A)
  + [UNICODE\_LATIN\_EXTENDED\_ADDITIONAL](#UNICODE_LATIN_EXTENDED_ADDITIONAL)
  + [UNICODE\_LATIN\_EXTENDED\_B](#UNICODE_LATIN_EXTENDED_B)
  + [UNICODE\_LETTERLIKE\_SYMBOLS](#UNICODE_LETTERLIKE_SYMBOLS)
  + [UNICODE\_LIMBU](#UNICODE_LIMBU)
  + [UNICODE\_LINEAR\_B\_IDEOGRAMS](#UNICODE_LINEAR_B_IDEOGRAMS)
  + [UNICODE\_LINEAR\_B\_SYLLABARY](#UNICODE_LINEAR_B_SYLLABARY)
  + [UNICODE\_LOW\_SURROGATE\_AREA](#UNICODE_LOW_SURROGATE_AREA)
  + [UNICODE\_MALAYALAM](#UNICODE_MALAYALAM)
  + [UNICODE\_MATHEMATICAL\_ALPHANUMERIC\_SYMBOLS](#UNICODE_MATHEMATICAL_ALPHANUMERIC_SYMBOLS)
  + [UNICODE\_MATHEMATICAL\_OPERATORS](#UNICODE_MATHEMATICAL_OPERATORS)
  + [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_A](#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A)
  + [UNICODE\_MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_B](#UNICODE_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B)
  + [UNICODE\_MISCELLANEOUS\_SYMBOLS](#UNICODE_MISCELLANEOUS_SYMBOLS)
  + [UNICODE\_MISCELLANEOUS\_SYMBOLS\_AND\_ARROWS](#UNICODE_MISCELLANEOUS_SYMBOLS_AND_ARROWS)
  + [UNICODE\_MISCELLANEOUS\_TECHNICAL](#UNICODE_MISCELLANEOUS_TECHNICAL)
  + [UNICODE\_MONGOLIAN](#UNICODE_MONGOLIAN)
  + [UNICODE\_MUSICAL\_SYMBOLS](#UNICODE_MUSICAL_SYMBOLS)
  + [UNICODE\_MYANMAR](#UNICODE_MYANMAR)
  + [UNICODE\_NUMBER\_FORMS](#UNICODE_NUMBER_FORMS)
  + [UNICODE\_OGHAM](#UNICODE_OGHAM)
  + [UNICODE\_OLD\_ITALIC](#UNICODE_OLD_ITALIC)
  + [UNICODE\_OPTICAL\_CHARACTER\_RECOGNITION](#UNICODE_OPTICAL_CHARACTER_RECOGNITION)
  + [UNICODE\_ORIYA](#UNICODE_ORIYA)
  + [UNICODE\_OSMANYA](#UNICODE_OSMANYA)
  + [UNICODE\_PHONETIC\_EXTENSIONS](#UNICODE_PHONETIC_EXTENSIONS)
  + [UNICODE\_PRIVATE\_USE\_AREA](#UNICODE_PRIVATE_USE_AREA)
  + [UNICODE\_RUNIC](#UNICODE_RUNIC)
  + [UNICODE\_SHAVIAN](#UNICODE_SHAVIAN)
  + [UNICODE\_SINHALA](#UNICODE_SINHALA)
  + [UNICODE\_SMALL\_FORM\_VARIANTS](#UNICODE_SMALL_FORM_VARIANTS)
  + [UNICODE\_SPACING\_MODIFIER\_LETTERS](#UNICODE_SPACING_MODIFIER_LETTERS)
  + [UNICODE\_SPECIALS](#UNICODE_SPECIALS)
  + [UNICODE\_SUPERSCRIPTS\_AND\_SUBSCRIPTS](#UNICODE_SUPERSCRIPTS_AND_SUBSCRIPTS)
  + [UNICODE\_SUPPLEMENTAL\_ARROWS\_A](#UNICODE_SUPPLEMENTAL_ARROWS_A)
  + [UNICODE\_SUPPLEMENTAL\_ARROWS\_B](#UNICODE_SUPPLEMENTAL_ARROWS_B)
  + [UNICODE\_SUPPLEMENTAL\_MATHEMATICAL\_OPERATORS](#UNICODE_SUPPLEMENTAL_MATHEMATICAL_OPERATORS)
  + [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_A](#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_A)
  + [UNICODE\_SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_B](#UNICODE_SUPPLEMENTARY_PRIVATE_USE_AREA_B)
  + [UNICODE\_SYRIAC](#UNICODE_SYRIAC)
  + [UNICODE\_TAGALOG](#UNICODE_TAGALOG)
  + [UNICODE\_TAGBANWA](#UNICODE_TAGBANWA)
  + [UNICODE\_TAGS](#UNICODE_TAGS)
  + [UNICODE\_TAI\_LE](#UNICODE_TAI_LE)
  + [UNICODE\_TAI\_XUAN\_JING\_SYMBOLS](#UNICODE_TAI_XUAN_JING_SYMBOLS)
  + [UNICODE\_TAMIL](#UNICODE_TAMIL)
  + [UNICODE\_TELUGU](#UNICODE_TELUGU)
  + [UNICODE\_THAANA](#UNICODE_THAANA)
  + [UNICODE\_THAI](#UNICODE_THAI)
  + [UNICODE\_TIBETAN](#UNICODE_TIBETAN)
  + [UNICODE\_UGARITIC](#UNICODE_UGARITIC)
  + [UNICODE\_UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS](#UNICODE_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS)
  + [UNICODE\_VARIATION\_SELECTORS](#UNICODE_VARIATION_SELECTORS)
  + [UNICODE\_VARIATION\_SELECTORS\_SUPPLEMENT](#UNICODE_VARIATION_SELECTORS_SUPPLEMENT)
  + [UNICODE\_YIJING\_HEXAGRAM\_SYMBOLS](#UNICODE_YIJING_HEXAGRAM_SYMBOLS)
  + [UNICODE\_YI\_RADICALS](#UNICODE_YI_RADICALS)
  + [UNICODE\_YI\_SYLLABLES](#UNICODE_YI_SYLLABLES)
* [Procedures](#pkg-Procedures)
  + [abort](#abort)
  + [abort\_ext](#abort_ext)
  + [arc](#arc)
  + [arena\_cleanup](#arena_cleanup)
  + [arena\_clear](#arena_clear)
  + [arena\_init](#arena_init)
  + [arena\_init\_with\_options](#arena_init_with_options)
  + [arena\_push](#arena_push)
  + [arena\_push\_aligned](#arena_push_aligned)
  + [arena\_push\_aligned\_uninitialized](#arena_push_aligned_uninitialized)
  + [arena\_push\_array](#arena_push_array)
  + [arena\_push\_type](#arena_push_type)
  + [arena\_push\_uninitialized](#arena_push_uninitialized)
  + [arena\_scope\_begin](#arena_scope_begin)
  + [arena\_scope\_end](#arena_scope_end)
  + [assert\_fail](#assert_fail)
  + [canvas\_context\_create](#canvas_context_create)
  + [canvas\_context\_destroy](#canvas_context_destroy)
  + [canvas\_context\_is\_nil](#canvas_context_is_nil)
  + [canvas\_context\_nil](#canvas_context_nil)
  + [canvas\_context\_select](#canvas_context_select)
  + [canvas\_context\_set\_msaa\_sample\_count](#canvas_context_set_msaa_sample_count)
  + [canvas\_present](#canvas_present)
  + [canvas\_render](#canvas_render)
  + [canvas\_renderer\_create](#canvas_renderer_create)
  + [canvas\_renderer\_destroy](#canvas_renderer_destroy)
  + [canvas\_renderer\_is\_nil](#canvas_renderer_is_nil)
  + [canvas\_renderer\_nil](#canvas_renderer_nil)
  + [canvas\_surface\_create](#canvas_surface_create)
  + [circle\_fill](#circle_fill)
  + [circle\_stroke](#circle_stroke)
  + [clear](#clear)
  + [clip\_pop](#clip_pop)
  + [clip\_push](#clip_push)
  + [clip\_top](#clip_top)
  + [clipboard\_pasted](#clipboard_pasted)
  + [clipboard\_pasted\_text](#clipboard_pasted_text)
  + [clipboard\_set\_string](#clipboard_set_string)
  + [clock\_time](#clock_time)
  + [close\_path](#close_path)
  + [codepoints\_outlines](#codepoints_outlines)
  + [color\_convert](#color_convert)
  + [color\_rgba](#color_rgba)
  + [color\_srgba](#color_srgba)
  + [create\_odin\_logger](#create_odin_logger)
  + [cubic\_to](#cubic_to)
  + [ellipse\_fill](#ellipse_fill)
  + [ellipse\_stroke](#ellipse_stroke)
  + [file\_close](#file_close)
  + [file\_get\_status](#file_get_status)
  + [file\_is\_nil](#file_is_nil)
  + [file\_last\_error](#file_last_error)
  + [file\_listdir](#file_listdir)
  + [file\_nil](#file_nil)
  + [file\_open](#file_open)
  + [file\_open\_at](#file_open_at)
  + [file\_open\_with\_dialog](#file_open_with_dialog)
  + [file\_open\_with\_request](#file_open_with_request)
  + [file\_pos](#file_pos)
  + [file\_read](#file_read)
  + [file\_read\_slice](#file_read_slice)
  + [file\_seek](#file_seek)
  + [file\_size](#file_size)
  + [file\_write](#file_write)
  + [file\_write\_slice](#file_write_slice)
  + [fill](#fill)
  + [font\_create\_from\_file](#font_create_from_file)
  + [font\_create\_from\_memory](#font_create_from_memory)
  + [font\_create\_from\_path](#font_create_from_path)
  + [font\_destroy](#font_destroy)
  + [font\_get\_glyph\_index](#font_get_glyph_index)
  + [font\_get\_glyph\_indices](#font_get_glyph_indices)
  + [font\_get\_metrics](#font_get_metrics)
  + [font\_get\_metrics\_unscaled](#font_get_metrics_unscaled)
  + [font\_get\_scale\_for\_em\_pixels](#font_get_scale_for_em_pixels)
  + [font\_is\_nil](#font_is_nil)
  + [font\_nil](#font_nil)
  + [font\_push\_glyph\_indices](#font_push_glyph_indices)
  + [font\_text\_metrics](#font_text_metrics)
  + [font\_text\_metrics\_utf32](#font_text_metrics_utf32)
  + [get\_cap](#get_cap)
  + [get\_color](#get_color)
  + [get\_font](#get_font)
  + [get\_font\_size](#get_font_size)
  + [get\_image](#get_image)
  + [get\_image\_source\_region](#get_image_source_region)
  + [get\_joint](#get_joint)
  + [get\_max\_joint\_excursion](#get_max_joint_excursion)
  + [get\_position](#get_position)
  + [get\_text\_flip](#get_text_flip)
  + [get\_tolerance](#get_tolerance)
  + [get\_width](#get_width)
  + [gles\_surface\_create](#gles_surface_create)
  + [gles\_surface\_make\_current](#gles_surface_make_current)
  + [gles\_surface\_swap\_buffers](#gles_surface_swap_buffers)
  + [glyph\_outlines](#glyph_outlines)
  + [image\_atlas\_alloc\_from\_file](#image_atlas_alloc_from_file)
  + [image\_atlas\_alloc\_from\_memory](#image_atlas_alloc_from_memory)
  + [image\_atlas\_alloc\_from\_path](#image_atlas_alloc_from_path)
  + [image\_atlas\_alloc\_from\_rgba8](#image_atlas_alloc_from_rgba8)
  + [image\_atlas\_recycle](#image_atlas_recycle)
  + [image\_create](#image_create)
  + [image\_create\_from\_file](#image_create_from_file)
  + [image\_create\_from\_memory](#image_create_from_memory)
  + [image\_create\_from\_path](#image_create_from_path)
  + [image\_create\_from\_rgba8](#image_create_from_rgba8)
  + [image\_destroy](#image_destroy)
  + [image\_draw](#image_draw)
  + [image\_draw\_region](#image_draw_region)
  + [image\_is\_nil](#image_is_nil)
  + [image\_nil](#image_nil)
  + [image\_size](#image_size)
  + [image\_upload\_region\_rgba8](#image_upload_region_rgba8)
  + [input\_next\_frame](#input_next_frame)
  + [input\_process\_event](#input_process_event)
  + [input\_text\_utf32](#input_text_utf32)
  + [input\_text\_utf8](#input_text_utf8)
  + [io\_wait\_single\_req](#io_wait_single_req)
  + [key\_down](#key_down)
  + [key\_down\_scancode](#key_down_scancode)
  + [key\_mods](#key_mods)
  + [key\_press\_count](#key_press_count)
  + [key\_press\_count\_scancode](#key_press_count_scancode)
  + [key\_release\_count](#key_release_count)
  + [key\_release\_count\_scancode](#key_release_count_scancode)
  + [key\_repeat\_count](#key_repeat_count)
  + [key\_repeat\_count\_scancode](#key_repeat_count_scancode)
  + [line\_to](#line_to)
  + [list\_checked\_entry](#list_checked_entry)
  + [list\_empty](#list_empty)
  + [list\_entry](#list_entry)
  + [list\_first\_entry](#list_first_entry)
  + [list\_for](#list_for)
  + [list\_for\_reverse](#list_for_reverse)
  + [list\_init](#list_init)
  + [list\_insert](#list_insert)
  + [list\_insert\_before](#list_insert_before)
  + [list\_iter](#list_iter)
  + [list\_iter\_reverse](#list_iter_reverse)
  + [list\_last\_entry](#list_last_entry)
  + [list\_next\_entry](#list_next_entry)
  + [list\_pop\_back](#list_pop_back)
  + [list\_pop\_back\_entry](#list_pop_back_entry)
  + [list\_pop\_front](#list_pop_front)
  + [list\_pop\_front\_entry](#list_pop_front_entry)
  + [list\_prev\_entry](#list_prev_entry)
  + [list\_push\_back](#list_push_back)
  + [list\_push\_front](#list_push_front)
  + [list\_remove](#list_remove)
  + [log\_error](#log_error)
  + [log\_ext](#log_ext)
  + [log\_info](#log_info)
  + [log\_set\_level](#log_set_level)
  + [log\_typed](#log_typed)
  + [log\_warning](#log_warning)
  + [mat2x3\_inv](#mat2x3_inv)
  + [mat2x3\_mul](#mat2x3_mul)
  + [mat2x3\_mul\_m](#mat2x3_mul_m)
  + [mat2x3\_rotate](#mat2x3_rotate)
  + [mat2x3\_scale](#mat2x3_scale)
  + [mat2x3\_translate](#mat2x3_translate)
  + [matrix\_multiply\_push](#matrix_multiply_push)
  + [matrix\_pop](#matrix_pop)
  + [matrix\_push](#matrix_push)
  + [matrix\_top](#matrix_top)
  + [mouse\_clicked](#mouse_clicked)
  + [mouse\_delta](#mouse_delta)
  + [mouse\_double\_clicked](#mouse_double_clicked)
  + [mouse\_down](#mouse_down)
  + [mouse\_position](#mouse_position)
  + [mouse\_pressed](#mouse_pressed)
  + [mouse\_released](#mouse_released)
  + [mouse\_wheel](#mouse_wheel)
  + [move\_to](#move_to)
  + [odin\_logger\_proc](#odin_logger_proc)
  + [path\_append](#path_append)
  + [path\_is\_absolute](#path_is_absolute)
  + [path\_join](#path_join)
  + [path\_slice\_directory](#path_slice_directory)
  + [path\_slice\_filename](#path_slice_filename)
  + [path\_split](#path_split)
  + [quadratic\_to](#quadratic_to)
  + [rect\_atlas\_alloc](#rect_atlas_alloc)
  + [rect\_atlas\_create](#rect_atlas_create)
  + [rect\_atlas\_recycle](#rect_atlas_recycle)
  + [rectangle\_fill](#rectangle_fill)
  + [rectangle\_stroke](#rectangle_stroke)
  + [request\_quit](#request_quit)
  + [rounded\_rectangle\_fill](#rounded_rectangle_fill)
  + [rounded\_rectangle\_stroke](#rounded_rectangle_stroke)
  + [scancode\_to\_keycode](#scancode_to_keycode)
  + [scratch\_begin](#scratch_begin)
  + [scratch\_begin\_next](#scratch_begin_next)
  + [scratch\_end](#scratch_end)
  + [set\_cap](#set_cap)
  + [set\_color](#set_color)
  + [set\_color\_rgba](#set_color_rgba)
  + [set\_color\_srgba](#set_color_srgba)
  + [set\_font](#set_font)
  + [set\_font\_size](#set_font_size)
  + [set\_gradient](#set_gradient)
  + [set\_image](#set_image)
  + [set\_image\_source\_region](#set_image_source_region)
  + [set\_joint](#set_joint)
  + [set\_max\_joint\_excursion](#set_max_joint_excursion)
  + [set\_text\_flip](#set_text_flip)
  + [set\_tolerance](#set_tolerance)
  + [set\_width](#set_width)
  + [str16\_from\_buffer](#str16_from_buffer)
  + [str16\_list\_first](#str16_list_first)
  + [str16\_list\_for](#str16_list_for)
  + [str16\_list\_join](#str16_list_join)
  + [str16\_list\_last](#str16_list_last)
  + [str16\_list\_push](#str16_list_push)
  + [str16\_push\_buffer](#str16_push_buffer)
  + [str16\_push\_copy](#str16_push_copy)
  + [str16\_push\_slice](#str16_push_slice)
  + [str16\_slice](#str16_slice)
  + [str16\_split](#str16_split)
  + [str32\_from\_buffer](#str32_from_buffer)
  + [str32\_list\_first](#str32_list_first)
  + [str32\_list\_for](#str32_list_for)
  + [str32\_list\_join](#str32_list_join)
  + [str32\_list\_last](#str32_list_last)
  + [str32\_list\_push](#str32_list_push)
  + [str32\_push\_buffer](#str32_push_buffer)
  + [str32\_push\_copy](#str32_push_copy)
  + [str32\_push\_slice](#str32_push_slice)
  + [str32\_slice](#str32_slice)
  + [str32\_split](#str32_split)
  + [str8\_cmp](#str8_cmp)
  + [str8\_from\_buffer](#str8_from_buffer)
  + [str8\_list\_collate](#str8_list_collate)
  + [str8\_list\_empty](#str8_list_empty)
  + [str8\_list\_first](#str8_list_first)
  + [str8\_list\_for](#str8_list_for)
  + [str8\_list\_iter](#str8_list_iter)
  + [str8\_list\_join](#str8_list_join)
  + [str8\_list\_last](#str8_list_last)
  + [str8\_list\_push](#str8_list_push)
  + [str8\_list\_pushf](#str8_list_pushf)
  + [str8\_push\_buffer](#str8_push_buffer)
  + [str8\_push\_copy](#str8_push_copy)
  + [str8\_push\_cstring](#str8_push_cstring)
  + [str8\_push\_slice](#str8_push_slice)
  + [str8\_slice](#str8_slice)
  + [str8\_split](#str8_split)
  + [str8\_to\_cstring](#str8_to_cstring)
  + [stroke](#stroke)
  + [surface\_bring\_to\_front](#surface_bring_to_front)
  + [surface\_contents\_scaling](#surface_contents_scaling)
  + [surface\_destroy](#surface_destroy)
  + [surface\_get\_hidden](#surface_get_hidden)
  + [surface\_get\_size](#surface_get_size)
  + [surface\_is\_nil](#surface_is_nil)
  + [surface\_nil](#surface_nil)
  + [surface\_send\_to\_back](#surface_send_to_back)
  + [surface\_set\_hidden](#surface_set_hidden)
  + [text\_fill](#text_fill)
  + [text\_outlines](#text_outlines)
  + [ui\_box\_begin\_str8](#ui_box_begin_str8)
  + [ui\_box\_end](#ui_box_end)
  + [ui\_box\_get\_sig](#ui_box_get_sig)
  + [ui\_box\_release\_focus](#ui_box_release_focus)
  + [ui\_box\_request\_focus](#ui_box_request_focus)
  + [ui\_box\_set\_closed](#ui_box_set_closed)
  + [ui\_box\_set\_draw\_proc](#ui_box_set_draw_proc)
  + [ui\_box\_set\_overlay](#ui_box_set_overlay)
  + [ui\_box\_set\_text](#ui_box_set_text)
  + [ui\_box\_tag\_str8](#ui_box_tag_str8)
  + [ui\_box\_user\_data\_get](#ui_box_user_data_get)
  + [ui\_box\_user\_data\_push](#ui_box_user_data_push)
  + [ui\_button](#ui_button)
  + [ui\_button\_str8](#ui_button_str8)
  + [ui\_checkbox](#ui_checkbox)
  + [ui\_checkbox\_str8](#ui_checkbox_str8)
  + [ui\_container](#ui_container)
  + [ui\_context\_create](#ui_context_create)
  + [ui\_context\_destroy](#ui_context_destroy)
  + [ui\_draw](#ui_draw)
  + [ui\_frame\_arena](#ui_frame_arena)
  + [ui\_frame\_begin](#ui_frame_begin)
  + [ui\_frame\_end](#ui_frame_end)
  + [ui\_frame\_time](#ui_frame_time)
  + [ui\_get\_context](#ui_get_context)
  + [ui\_get\_sig](#ui_get_sig)
  + [ui\_input](#ui_input)
  + [ui\_label](#ui_label)
  + [ui\_label\_str8](#ui_label_str8)
  + [ui\_menu](#ui_menu)
  + [ui\_menu\_bar](#ui_menu_bar)
  + [ui\_menu\_bar\_begin](#ui_menu_bar_begin)
  + [ui\_menu\_bar\_begin\_str8](#ui_menu_bar_begin_str8)
  + [ui\_menu\_bar\_end](#ui_menu_bar_end)
  + [ui\_menu\_begin](#ui_menu_begin)
  + [ui\_menu\_begin\_str8](#ui_menu_begin_str8)
  + [ui\_menu\_button](#ui_menu_button)
  + [ui\_menu\_button\_str8](#ui_menu_button_str8)
  + [ui\_menu\_end](#ui_menu_end)
  + [ui\_process\_event](#ui_process_event)
  + [ui\_radio\_group](#ui_radio_group)
  + [ui\_radio\_group\_str8](#ui_radio_group_str8)
  + [ui\_release\_focus](#ui_release_focus)
  + [ui\_request\_focus](#ui_request_focus)
  + [ui\_select\_popup](#ui_select_popup)
  + [ui\_select\_popup\_str8](#ui_select_popup_str8)
  + [ui\_set\_closed](#ui_set_closed)
  + [ui\_set\_context](#ui_set_context)
  + [ui\_set\_draw\_proc](#ui_set_draw_proc)
  + [ui\_set\_overlay](#ui_set_overlay)
  + [ui\_set\_text](#ui_set_text)
  + [ui\_slider](#ui_slider)
  + [ui\_slider\_str8](#ui_slider_str8)
  + [ui\_style\_rule\_begin](#ui_style_rule_begin)
  + [ui\_style\_rule\_end](#ui_style_rule_end)
  + [ui\_style\_set\_color](#ui_style_set_color)
  + [ui\_style\_set\_f32](#ui_style_set_f32)
  + [ui\_style\_set\_font](#ui_style_set_font)
  + [ui\_style\_set\_i32](#ui_style_set_i32)
  + [ui\_style\_set\_size](#ui_style_set_size)
  + [ui\_style\_set\_var](#ui_style_set_var)
  + [ui\_style\_set\_var\_str8](#ui_style_set_var_str8)
  + [ui\_tag\_next\_str8](#ui_tag_next_str8)
  + [ui\_tag\_str8](#ui_tag_str8)
  + [ui\_text\_box](#ui_text_box)
  + [ui\_text\_box\_str8](#ui_text_box_str8)
  + [ui\_theme\_dark](#ui_theme_dark)
  + [ui\_theme\_light](#ui_theme_light)
  + [ui\_tooltip](#ui_tooltip)
  + [ui\_tooltip\_str8](#ui_tooltip_str8)
  + [ui\_user\_data\_get](#ui_user_data_get)
  + [ui\_user\_data\_push](#ui_user_data_push)
  + [ui\_var\_default](#ui_var_default)
  + [ui\_var\_default\_color](#ui_var_default_color)
  + [ui\_var\_default\_color\_str8](#ui_var_default_color_str8)
  + [ui\_var\_default\_f32](#ui_var_default_f32)
  + [ui\_var\_default\_f32\_str8](#ui_var_default_f32_str8)
  + [ui\_var\_default\_font](#ui_var_default_font)
  + [ui\_var\_default\_font\_str8](#ui_var_default_font_str8)
  + [ui\_var\_default\_i32](#ui_var_default_i32)
  + [ui\_var\_default\_i32\_str8](#ui_var_default_i32_str8)
  + [ui\_var\_default\_size](#ui_var_default_size)
  + [ui\_var\_default\_size\_str8](#ui_var_default_size_str8)
  + [ui\_var\_default\_str8](#ui_var_default_str8)
  + [ui\_var\_get\_color](#ui_var_get_color)
  + [ui\_var\_get\_color\_str8](#ui_var_get_color_str8)
  + [ui\_var\_get\_f32](#ui_var_get_f32)
  + [ui\_var\_get\_f32\_str8](#ui_var_get_f32_str8)
  + [ui\_var\_get\_font](#ui_var_get_font)
  + [ui\_var\_get\_font\_str8](#ui_var_get_font_str8)
  + [ui\_var\_get\_i32](#ui_var_get_i32)
  + [ui\_var\_get\_i32\_str8](#ui_var_get_i32_str8)
  + [ui\_var\_get\_size](#ui_var_get_size)
  + [ui\_var\_get\_size\_str8](#ui_var_get_size_str8)
  + [ui\_var\_set](#ui_var_set)
  + [ui\_var\_set\_color](#ui_var_set_color)
  + [ui\_var\_set\_color\_str8](#ui_var_set_color_str8)
  + [ui\_var\_set\_f32](#ui_var_set_f32)
  + [ui\_var\_set\_f32\_str8](#ui_var_set_f32_str8)
  + [ui\_var\_set\_font](#ui_var_set_font)
  + [ui\_var\_set\_font\_str8](#ui_var_set_font_str8)
  + [ui\_var\_set\_i32](#ui_var_set_i32)
  + [ui\_var\_set\_i32\_str8](#ui_var_set_i32_str8)
  + [ui\_var\_set\_size](#ui_var_set_size)
  + [ui\_var\_set\_size\_str8](#ui_var_set_size_str8)
  + [ui\_var\_set\_str8](#ui_var_set_str8)
  + [utf8\_byte\_count\_for\_codepoints](#utf8_byte_count_for_codepoints)
  + [utf8\_codepoint\_count\_for\_string](#utf8_codepoint_count_for_string)
  + [utf8\_codepoint\_size](#utf8_codepoint_size)
  + [utf8\_decode](#utf8_decode)
  + [utf8\_decode\_at](#utf8_decode_at)
  + [utf8\_encode](#utf8_encode)
  + [utf8\_from\_codepoints](#utf8_from_codepoints)
  + [utf8\_next\_offset](#utf8_next_offset)
  + [utf8\_prev\_offset](#utf8_prev_offset)
  + [utf8\_push\_from\_codepoints](#utf8_push_from_codepoints)
  + [utf8\_push\_to\_codepoints](#utf8_push_to_codepoints)
  + [utf8\_size\_from\_leading\_char](#utf8_size_from_leading_char)
  + [utf8\_to\_codepoints](#utf8_to_codepoints)
  + [vec2\_add](#vec2_add)
  + [vec2\_equal](#vec2_equal)
  + [vec2\_mul](#vec2_mul)
  + [window\_set\_size](#window_set_size)
  + [window\_set\_title](#window_set_title)
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