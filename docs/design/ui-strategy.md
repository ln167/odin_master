# UI strategy

**Date:** 2026-05-14
**Status:** Design of record. Implementation lands in lesson 09b + lab/.

---

## The problem

A game needs UI for at least:

- **Debug overlay** — frame time, particle count, allocator usage, "press F1 to toggle". Without this you cannot tune anything.
- **Dev tools in-game** — sliders for gravity / bond stiffness / cut radius. Edit live, see effect, no rebuild.
- **State display** — paused/running, current tool, dynamite countdown, what stratum is under the cursor.
- **Menus and HUD** (eventually) — pause menu, settings, save/load, in-game prompts.

The question is *how* you build it. There are two paradigms; the gulf between them is huge.

---

## Retained-mode (the traditional way)

What HTML/DOM, Qt, WPF, GTK, classic GUI toolkits do.

You construct widget objects up-front:

```
button = Button("Click me")
button.set_on_click(do_thing)
window.add_child(button)
```

The widgets live in memory between frames. You mutate them as state changes. The framework owns the widget tree and redraws when something changes.

**Where state lives:** in the widget objects. The button "knows" its label, position, callback. Your game state and the UI state are two parallel worlds you keep in sync.

**Strengths:** good for huge GUIs with many widgets (productivity software). Good when the layout is mostly static and event-driven.

**Weaknesses for games:**
- Two state worlds means two ways to be wrong (the classic "the dialog says X but the model says Y" bug).
- Widget objects' lifetimes are coupled to the framework. Hot reload is hard because the widget tree is alive in process memory.
- Layout systems become Turing-complete. Half of Qt is its layout solver.
- Eats RAM and code in proportion to widget count, even widgets that never appear.

---

## Immediate-mode (IMGUI — what we use)

Coined by Casey Muratori in his 2005 talk *"Immediate-Mode Graphical User Interfaces"*. Popularized in C++ by Omar Cornut's Dear ImGui (the library that ships in basically every modern engine's editor).

Every frame, you re-declare the entire UI in straight-line code:

```
if button("Click me") {
    do_thing()
}
slider_f32("Gravity", &gravity, 0, 50)
text("Particles: %d", state.particle_count)
```

There are no widget objects. Frame N has nothing to do with frame N-1. The library draws and reads input *while you're calling it* — `button(...)` returns true the frame it was clicked.

**Where state lives:** in your game. The UI is a function that reads game state and renders it. Want a slider to control gravity? Pass `&gravity` to it. The slider has no internal state to drift.

**Strengths:**
- One state world. Game state IS UI state. No sync problem.
- Hot reload trivially. The UI is just code you call each frame; no live widget tree to migrate.
- Layout is whatever's easy: positional, with rare alignment helpers. No solver.
- Trivially conditional: `if debug_mode { draw_debug_panel() }`. The panel just doesn't get called.
- Cost scales with what's visible, not what *could* be visible.

**Weaknesses:**
- Not as polished for shipping consumer-facing UIs with elaborate animations and accessibility. (Most games ship their HUD/menus as IMGUI anyway; only the front-end may use something heavier.)
- "Layout" is mostly stacking and hand-tuning. Fine for dev tools and HUDs.

---

## The lineage and why we pick this

| Person | Position |
|---|---|
| **Casey Muratori** | Coined the term IMGUI in 2005. Handmade Hero uses immediate-mode for everything. |
| **Omar Cornut** | Built Dear ImGui (2014+), now the de facto editor UI in Unreal/Unity/Godot internal tooling, every Frostbite-era engine, etc. |
| **John Carmack** | Public endorsement of immediate-mode; called retained-mode "overengineered for game dev." |
| **Jonathan Blow** | Builds Jai's editor and game UI in immediate-mode. See his April 2021 stream ["Improving Our Immediate-Mode UI Stuff"](https://www.youtube.com/watch?v=gPKDnu5QaZk). |
| **Sebastian Aaltonen** | His broader "stop hiding the GPU" view is the same argument applied to graphics APIs: stop simulating something to make it look like an old model the hardware no longer matches. |

Same argument shows up at every layer: **state in one place, declared each frame, no hidden engine.** That's what immediate-mode does for UI, what bindless does for descriptor sets, what XPBD does for physics (positions are the truth, no hidden velocities), what hot reload does for code (the binary is whatever the file is now).

Our project picks the consistent answer.

---

## Implementation

**Library:** [Dear ImGui](https://github.com/ocornut/imgui) via [Capati/odin-imgui](https://github.com/Capati/odin-imgui) Odin bindings.

**Backend:** `sdlgpu3` (Dear ImGui's official SDL3-GPU backend, exposed by the Odin bindings). When we're still in the CPU-rasterizer phase (lessons 00-09), there's also a simple CPU draw-list backend; we can use that for early debug overlays before lesson 10 introduces SDL3-GPU proper.

**Where it lives:**
- `lab/` integrates Dear ImGui from Phase 5 onward as the universal debug overlay. Toggle with a key (probably F1). Always-on in dev builds.
- Bench programs do not need ImGui (they print to stdout and dump traces; visual is via Tracy/Spall).
- Tests do not need ImGui (they print fingerprints and exit).
- Eventual shipping game UI: same library. Dear ImGui shipping in production games is normal; see *RimWorld*, *Tarkov*, *Deep Rock Galactic* mod tools, *Stunlock Citadel* editor.

**What we will NOT do:**
- Build our own UI from scratch as a learning lesson. The math of UI is layout boxes, font glyphs, and texture atlases — not graphics fundamentals. Dear ImGui solves it well; reinventing it is months of yak-shaving that doesn't advance the engine.
- Use a retained-mode UI library (Qt, GTK, etc.). The state-sync overhead defeats the whole hot-reload-first design.

---

## What lesson 09b covers

Concept lesson (no GPU prerequisite). After lesson 09 (CPU rasterizer is done, you can draw shaded textured triangles) and before lesson 10 (SDL3-GPU intro), you:

1. Understand IMGUI vs retained-mode well enough to defend the choice.
2. Wire Capati/odin-imgui into a tiny program with a CPU draw-list backend.
3. Render a debug panel that mutates a value (e.g., the light direction from lesson 08).
4. Hot-reload the panel: re-run with a different layout, no library restart.

Lesson 09b is a **side track**, not a foundation lesson. Skip if you already know IMGUI from elsewhere; revisit when you need a debug overlay in `lab/`.

---

## Sources

- Casey Muratori, "Immediate-Mode Graphical User Interfaces" (2005) — original IMGUI talk
- Omar Cornut, [Dear ImGui repository + FAQ](https://github.com/ocornut/imgui)
- John Carmack, .plan files / interviews on UI
- Jonathan Blow, ["Improving Our Immediate-Mode UI Stuff"](https://www.youtube.com/watch?v=gPKDnu5QaZk) (Twitch stream re-upload, April 2021) — primary source for Blow's actual Jai UI architecture
