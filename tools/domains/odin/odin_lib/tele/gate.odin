package tele

// Rate gates for high-frequency call sites (a 60 fps loop is a firehose). Each returns a
// bool meant to guard a log: `if tele.every(60, frame) { tele.info(...) }`. Both fold to
// false when TELE=off (ENABLED is a compile-time constant), so the guarded log -- and the
// gate call itself -- optimize away.

// every(n, tick): true when tick is a multiple of n (n<=0 never fires). The caller owns the
// tick / frame counter, so there is no hidden per-site state and the gate is fully deterministic.
every :: proc(n: int, tick: int) -> bool {
	return ENABLED && n > 0 && tick % n == 0
}

// cond(c): true only when c holds (and telemetry is on) -- a named home for "log only if".
cond :: proc(c: bool) -> bool {
	return ENABLED && c
}
