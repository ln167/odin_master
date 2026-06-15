# Make the Ball Real

**Lessons:** 17 testing · 18 hot-reload · 19 search-driven learning (builds on the 15–16 bouncing ball)
**Time:** ~25–30 min · **Output:** a passing test · a live-tweaked window · one thing you looked up

This is the capstone: take the bouncing ball and give it the three things that
separate a toy from a project — a test that proves the physics, the ability to
tune it *while it runs*, and the habit of looking an answer up instead of
guessing. No new game; you're hardening the one you have.

## Build it

1. **Test the bounce (17).** Pull the per-frame physics into a *pure* proc:
   `step :: proc(b: Ball, w, h: f32) -> Ball` — no SDL, just math in and a new
   ball out. Now write an `@(test)` proc that puts a ball at the right wall moving
   right, calls `step`, and uses `testing.expect` to assert `vx` is now negative
   (it bounced). Add one for the top/bottom too. Run `odin test .` — green means
   your physics is correct independent of the window.
2. **Tweak it live (18).** Put the tunable numbers (gravity, ball speed, bounce
   energy loss) where the hot-reload setup from lesson 18 can see them, run the
   reloadable build, and change a constant while the window is open — watch the
   ball's behavior change *without a restart*. The whole point: the feedback loop
   shrinks from "rebuild and relaunch" to "save and see".
3. **Look one up (19).** You'll want vector math (length of a velocity, clamping a
   position). Don't guess the proc name — *search* for it the lesson-19 way (the
   substrate search / Odin docs / `core:` source) to find what `core:math/linalg`
   or `core:math` gives you, and use it. Note down the proc you found and where.

## Make it print

- `odin test .` → all tests pass (the bounce math is proven).
- The window → you changed a constant live and the ball responded.
- One line for yourself: the proc you searched for and the package it lives in.

## If you're having fun (stretch)

- Write a test that runs `step` for 1000 frames and asserts the ball never leaves
  the box — a cheap property test, no oracle needed.
- Add a tiny on-screen readout of the live values (or just `fmt.println` them each
  reload) so you can see what you're tuning.
