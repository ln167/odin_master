# lab

Hot-reload host (`src/main_hot_reload.odin`) plus a game DLL (`src/game/`) that opens an SDL3 window, runs the ImGui dev UI, and clears the screen each frame.

```sh
just lab          # build + run host + rebuild/reload on every src/ save
just lab-build    # one-shot DLL/host build
just lab-clean    # wipe build/
```

The host copies `game.dll` to `game_N.dll` before each load and never unloads old copies. `Game_Memory` survives reloads; a size change skips the swap and asks for a restart.

3D game design lives in docs/game/DESIGN.md
