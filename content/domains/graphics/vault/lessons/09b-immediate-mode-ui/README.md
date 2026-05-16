# Lesson graphics/09b - immediate-mode UI (Dear ImGui)

## Tasks

- [ ] Read `docs/design/ui-strategy.md` for the why (IMGUI vs retained-mode).
- [ ] Read Casey Muratori's 2005 "Immediate-Mode Graphical User Interfaces" talk (find a transcript or watch on YouTube).
- [ ] Skim the [Dear ImGui FAQ](https://github.com/ocornut/imgui/blob/master/docs/FAQ.md) sections "About the IMGUI paradigm" and "Why is my widget not reacting when I click on it?"
- [ ] Vendor [Capati/odin-imgui](https://github.com/Capati/odin-imgui) under `tools/domains/odin/odin_lib/vendor/odin-imgui/`.
- [ ] Build a small program: SDL3 window + CPU framebuffer from lesson 00, plus an ImGui debug panel with one slider and one text readout.
- [ ] Bind the slider to a real value (e.g., the light direction from lesson 08). Move it; see the lit quad update next frame.
- [ ] Now break it: hold state inside the ImGui call. (E.g., make the slider read its own stale variable.) Watch the UI desync from the game.
- [ ] Now break it: skip calling `NewFrame` / `Render` for one frame. Observe the entire UI vanish; this is the point — there is nothing persistent.

## Tools to use here

- `<leader>op` — scratch the ImGui hello-world in `scratch/` first
- `<leader>oq "immediate mode imgui retained"` — search the corpus for Muratori / Cornut / Blow on this
- `just lab` — once integrated, ImGui becomes the live tuning panel

## Concept

Two ways to build UI; this lesson is about which one and why. Read
`docs/design/ui-strategy.md` first. Short version: **retained-mode**
constructs widget objects up front, keeps them alive between frames, and
asks you to keep their state in sync with the game. **Immediate-mode**
re-declares the entire UI in code every frame, reads game state directly,
and has no widget tree. There is no library state to drift, no two-state
sync bug, and no lifetime to manage.

The lineage:

- Muratori coined "IMGUI" in 2005. Handmade Hero is built this way.
- Omar Cornut shipped Dear ImGui in 2014. It is now the editor UI of
  basically every game engine in industry.
- Carmack, Blow, Aaltonen, and the wider handmade-dev community all use
  it. The same argument — *state in one place, declared each frame, no
  hidden engine* — shows up in graphics (bindless), physics (XPBD), and
  hot reload (binary is whatever the file is now).

Why we do not write our own:
- UI is layout + font atlas + draw lists. Dear ImGui has had ten years
  of work; reinventing it is months of yak-shaving off the critical path.
- The intellectual lesson is the *pattern* (immediate-mode), not the
  glyph atlas math. Use the pattern in a real library; understand the
  math separately if you ever need to.

The end goal for the engine: `lab/` has an ImGui overlay from Phase 5
onward that exposes every tunable (gravity, bond stiffness, light
direction, cut radius) as a live slider. You build → reload → drag a
slider → see the simulation update next frame. No rebuild for parameter
tuning.

## Setup

1. `cd content/domains/graphics/vault/lessons/09b-immediate-mode-ui`
2. Vendor Capati/odin-imgui (one-time):

```sh
cd tools/domains/odin/odin_lib/vendor
git clone --recurse-submodules https://github.com/Capati/odin-imgui.git
cd odin-imgui
# Build the imgui static lib for your platform; see the repo README.
```

3. Wire the collection in your build: `-collection:imgui=tools/domains/odin/odin_lib/vendor/odin-imgui`.

## Do this

Single-file program (no skeleton this time — pattern matters more than
boilerplate, and the bindings package's `examples/` directory is the
better reference):

1. SDL3 window + framebuffer (from lesson 00).
2. `imgui.CreateContext()` once at startup; `imgui.DestroyContext()` at
   shutdown.
3. Each frame: `imgui.NewFrame()` → your UI code → `imgui.Render()`.
4. The UI: one `imgui.Begin("Debug")` window, with a `SliderFloat3` bound
   to the light direction and a `Text` showing the current direction
   values.
5. Apply the slider's value to the lighting computation in your render.
6. Run. Drag the slider. The lit quad's shading updates.

## Now break it

1. Stash a copy of `light_dir` inside the ImGui code path; mutate the
   copy. Watch the slider get out of sync with the actual game state.
   This is what retained-mode looks like all the time.
2. Skip `NewFrame` for a frame. The whole UI vanishes. No "redraw
   needed" flag, no invalidate, no event. Compare to how brittle that
   would be in retained-mode (the framework would need to know).
3. Call `Begin("Debug")` twice in one frame. ImGui's stack assertion
   fires; you learn that immediate-mode still has rules, just different
   ones.

## What just happened

You have wired the universal game-dev debug-overlay library. From here
on, any tunable value can become a slider with one line of code. The
lab from Phase 5 onward uses this same pattern for every parameter.

You also have the conceptual frame: state-in-one-place is the consistent
answer across UI (IMGUI), graphics (bindless), physics (XPBD), and code
(hot reload). It is not a coincidence that the same people advocate for
all four.

## Find more like this

    just substrate-search --bm25 "immediate mode imgui retained ui state" --top 5

## Sources

- `docs/design/ui-strategy.md` (this repo)
- Casey Muratori, "Immediate-Mode Graphical User Interfaces" (2005),
  https://caseymuratori.com/blog_0001
- Dear ImGui repo + FAQ, https://github.com/ocornut/imgui
- Capati/odin-imgui bindings, https://github.com/Capati/odin-imgui
- Jonathan Blow on UI architecture (various Jai streams)

## Next: `10-sdl3-gpu-intro/` (the GPU phase begins; ImGui's sdlgpu3 backend takes over once you have an SDL3 GPU device)
