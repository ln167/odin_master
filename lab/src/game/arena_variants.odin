package game

// AGENT-WRITABLE SURFACE — parameter sets only, nothing else, ever.
// Per lab/PLAN.md (Phases 5+) the LLM does not write solver code: this file
// feeds parameters into the owner's step_particle kernel. During arena rounds
// the agent overwrites these four sets and saves; the hot reload is the round
// boundary. Tile order: 0 = top-left, 1 = top-right, 2 = bottom-left,
// 3 = bottom-right.
//
// ── EXPERIMENT STATE (2026-06-10, recorded before the round restructure) ──
// First live arena experiment: bouncing-particle feel, tuned by eye.
// 5 generations voted; the champion NEVER lost:  gravity={0,600} damping=0.75
//   gen 1  coarse spread (g 150..900)              -> g=600 d=0.75 wins
//   gen 2  bracket the winner (500/600/700)        -> anchor holds
//   gen 3  tight refine (+-50 g, +-0.03 d)         -> anchor holds
//   gen 4  pure damping showcase (.60/.75/.85/.95) -> d=0.75 holds
//   gen 5  wildcards (floaty / brick / springy)    -> anchor holds. CONVERGED.
// Champion is NOT yet in physics.odin defaults (owner's call; they still say
// {0,300}/0.9). Vote history: lab/arena/votes.log.
//
// AGREED RESTRUCTURE (next up): "round" had two owners — the lab's in-memory
// reset counter (zeroed by restarts) and the agent's generation count — and
// they drifted (screen said 2 while the agent said 5). New design: the round
// id is authored HERE, next to the variants it describes (one owner, can't
// drift); each vote appends one JSON line {round, winner, variants[]} to
// arena/history.jsonl as the permanent experiment record; the Sim round
// counter and round.txt die; the agent reads history directly instead of
// racing a listener.
// The round id is authored HERE, next to the variants it describes — one
// owner, can't drift. The agent bumps it with every new set.
ROUND :: 6

@(rodata)
ARENA_PARAMS := [4]Step_Params{
	// round 5: victory lap — the 4x champion (slot 2) vs three distant wildcards
	{gravity = {0, 250}, damping = 0.92},
	{gravity = {0, 600}, damping = 0.75},
	{gravity = {0, 950}, damping = 0.55},
	{gravity = {0, 450}, damping = 0.88},
}
