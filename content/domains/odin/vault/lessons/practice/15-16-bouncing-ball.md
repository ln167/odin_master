# Bouncing Ball (SDL3)

**Lessons:** 15 foreign bindings (`vendor:sdl3`) · 16 when & build flags (uses 12 structs)
**Time:** ~25–30 min · **Output:** an SDL3 window (watch it bounce)

Your first thing on a *screen*. A ball drifts across a window and bounces off the
walls — the "hello world" of game programming. The window, event loop, and
present are SDL's job (foreign bindings, lesson 15); the *interesting* part — the
ball and its bounce — is yours. A compile-time build flag (lesson 16) lets you
flip on a trail without changing the running code.

The window/loop boilerplate is below so you don't have to learn SDL setup to
practice the concept. Drop your code into the three marked spots.

## The skeleton (start here)

```odin
package bouncing_ball

import "core:fmt"
import sdl "vendor:sdl3"

WIN_W :: 640
WIN_H :: 480

// lesson 16: build with `-define:TRAIL=true` to stop clearing each frame.
TRAIL :: #config(TRAIL, false)

main :: proc() {
	if !sdl.Init({.VIDEO}) { fmt.eprintln("Init:", sdl.GetError()); return }
	defer sdl.Quit()
	window := sdl.CreateWindow("Bouncing Ball", WIN_W, WIN_H, {})
	defer sdl.DestroyWindow(window)
	renderer := sdl.CreateRenderer(window, nil)
	defer sdl.DestroyRenderer(renderer)

	// --- 1. YOUR BALL STATE HERE --- (position x,y and velocity vx,vy; a struct is nice)

	running := true
	for running {
		ev: sdl.Event
		for sdl.PollEvent(&ev) {
			if ev.type == .QUIT do running = false
		}

		// --- 2. YOUR UPDATE HERE ---
		// move by velocity; if the ball passes a wall, flip that velocity component.

		when !TRAIL {
			sdl.SetRenderDrawColor(renderer, 18, 18, 24, 255)
			sdl.RenderClear(renderer)
		}

		// --- 3. YOUR DRAW HERE ---
		// sdl.SetRenderDrawColor(renderer, 240, 140, 90, 255)
		// r := sdl.FRect{ball.x, ball.y, 16, 16}
		// sdl.RenderFillRect(renderer, &r)

		sdl.RenderPresent(renderer)
		sdl.Delay(16) // ~60 fps
	}
}
```

## Build it

1. Give the ball a position and velocity (a small `struct` is the clean way).
2. In the update spot: add velocity to position each frame; when the ball reaches
   a wall, flip the matching velocity component so it bounces.
3. In the draw spot: draw the ball as a filled rect at its position.
4. Run it: `odin run .`. Then run it with the trail on: `odin run . -define:TRAIL=true`
   and watch the `when !TRAIL` block disappear at compile time — the ball smears
   a streak because the screen never clears.

## Make it print

Nothing in the terminal — the **window is the output**. You're done when the ball
bounces around the four walls, and the `-define:TRAIL=true` build leaves a trail.

## If you're having fun (stretch)

- Add gravity (a constant downward pull on `vy`) and a little energy loss on each
  floor bounce, so it settles like a real ball.
- Spawn a handful of balls (a `[dynamic]` of them) with random starting velocities.
