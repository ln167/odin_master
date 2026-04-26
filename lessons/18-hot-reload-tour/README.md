# Lesson 18 — hot reload tour  *(stub)*

## Concept
`templates/game/` is a Karl-Zylinski-style hot-reload scaffold: a tiny
host EXE loads a game DLL; on rebuild it swaps the DLL in place without
losing the game's state. The state lives behind a `^Game_State` pointer
the host owns.

## TODO
- [ ] Walk through `templates/game/src/main_release.odin` vs
      `main_hot_reload.odin`.
- [ ] Identify the state pointer and the reload entry points.
- [ ] Build it; modify a draw call; rebuild without quitting.

## Find more like this
    odin-search "hot reload" --top 5
    odin-search "karl zylinski" --top 5

## Next: `lessons/19-search-driven-learning/`
