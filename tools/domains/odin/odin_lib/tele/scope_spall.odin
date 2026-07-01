// Spall backend (core:prof/spall). Active when -define:INSTRUMENT=spall|both.
package tele

import "core:prof/spall"

Spall_Buffer :: spall.Buffer

@(private)
_spall_ctx: spall.Context
@(private)
_spall_buf: spall.Buffer
@(private)
_spall_backing: []u8
@(private)
_spall_inited: bool

spall_init :: proc(out_path: string) {
	when !_SPALL { return }
	if _spall_inited { return } // already live -- don't re-alloc the backing (leaks the old one)
	_spall_ctx = spall.context_create(out_path) or_else _spall_ctx
	_spall_backing = make([]u8, 1 << 16)
	_spall_buf = spall.buffer_create(_spall_backing)
	_spall_inited = true
}

spall_shutdown :: proc() {
	when !_SPALL { return }
	if !_spall_inited { return }
	spall.buffer_destroy(&_spall_ctx, &_spall_buf)
	spall.context_destroy(&_spall_ctx)
	delete(_spall_backing) // buffer_destroy flushes but doesn't own our backing -- free it here
	_spall_inited = false
}

@(private)
_spall_begin :: proc(name: string) {
	if !_spall_inited { return }
	spall._buffer_begin(&_spall_ctx, &_spall_buf, name)
}

@(private)
_spall_end :: proc() {
	if !_spall_inited { return }
	spall._buffer_end(&_spall_ctx, &_spall_buf)
}
