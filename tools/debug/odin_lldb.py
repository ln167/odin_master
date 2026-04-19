"""LLDB pretty-printers for Odin runtime types.

Source it in your ~/.lldbinit or codelldb settings:

    command script import path/to/tools/debug/odin_lldb.py

Covers:
  - string                struct {data: ^u8, len: int}
  - []T (slice)           struct {data: ^T, len: int}
  - [dynamic]T            struct {data: ^T, len: int, cap: int, allocator: ...}
  - map[K]V               struct {data, len, ...}  (best-effort len-only)
"""
from __future__ import annotations

import lldb


def _u8_to_str(process, addr: int, length: int) -> str:
    if length <= 0 or addr == 0:
        return ""
    err = lldb.SBError()
    raw = process.ReadMemory(addr, min(length, 4096), err)
    if not err.Success() or raw is None:
        return f"<unreadable @ 0x{addr:x}>"
    try:
        return raw.decode("utf-8", errors="replace")
    except Exception:
        return repr(raw)


def _field(value: lldb.SBValue, name: str) -> lldb.SBValue:
    return value.GetChildMemberWithName(name)


def _int(value: lldb.SBValue) -> int:
    if not value or not value.IsValid():
        return 0
    return int(value.GetValueAsUnsigned())


def odin_string_summary(value: lldb.SBValue, _internal_dict) -> str:
    data = _field(value, "data")
    length = _int(_field(value, "len"))
    addr = _int(data)
    s = _u8_to_str(value.GetProcess(), addr, length)
    return f'"{s}" (len={length})'


def odin_slice_summary(value: lldb.SBValue, _internal_dict) -> str:
    length = _int(_field(value, "len"))
    return f"[]{value.GetType().GetName().split(']', 1)[-1].strip()}(len={length})"


def odin_dynarray_summary(value: lldb.SBValue, _internal_dict) -> str:
    length = _int(_field(value, "len"))
    cap = _int(_field(value, "cap"))
    return f"[dynamic](len={length} cap={cap})"


def odin_map_summary(value: lldb.SBValue, _internal_dict) -> str:
    length = _int(_field(value, "len"))
    return f"map(len={length})"


def __lldb_init_module(debugger: lldb.SBDebugger, _internal_dict) -> None:
    mod = __name__
    cmds = [
        f'type summary add -F {mod}.odin_string_summary -e -x "^string$"',
        f'type summary add -F {mod}.odin_slice_summary -e -x "^\\[\\].+"',
        f'type summary add -F {mod}.odin_dynarray_summary -e -x "^\\[dynamic\\].+"',
        f'type summary add -F {mod}.odin_map_summary -e -x "^map\\[.+\\].+"',
    ]
    for c in cmds:
        debugger.HandleCommand(c)
    print("odin_lldb: registered string / []T / [dynamic]T / map[K]V summaries")
