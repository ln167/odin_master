# Fun beginner concept-exercise archetypes (research)

A curated set of *fun problem archetypes* for teaching language features (not
algorithms). Each makes a beginner actually USE a concept, gives immediate
concrete feedback, and fits a 10–30 minute window. None are LeetCode-style — the
"interesting bit" is the toy domain, not algorithmic cleverness. (Synthesized
from web research; sources at the bottom.)

Curriculum concept vocabulary referenced below: variables/types/printing,
procedures, strings/runes, fixed arrays, enums/bit-sets, slices, pointers,
parameter passing, dynamic arrays, defer, maps, stack/heap, allocators/arenas,
tagged unions, distinct types, error handling, structs/SoA, procedures-as-values,
parametric polymorphism, foreign bindings, build flags, testing, hot-reload.

---

## The archetypes (~12)

1. **Dice / Loot Roller** — roll dice or a weighted loot table ("70% common, 25%
   rare, 5% legendary"); print the result. *Fun:* a surprising result every run;
   tuning the weights is addictive. *Exercises:* types/printing, procedures,
   fixed arrays (loot table), enums (rarity), `core:math/rand`; weighted table →
   structs + procedures-as-values. *Verify:* terminal.

2. **Tiny RPG Inventory** — add/remove/equip items in a hero's bag; print
   contents + total weight/gold. *Fun:* everyone gets "a backpack with a potion
   and a sword"; begs tinkering. *Exercises:* structs (Item), dynamic arrays
   (bag), maps (name→count stacking), enums (category), slices, parameter
   passing (mutate the bag), tagged unions (Weapon/Consumable/Key payloads).
   *Verify:* terminal.

3. **Vending Machine / Coin Changer** — insert coins, pick a slot, dispense +
   make change; track stock. *Fun:* a complete little machine you operate.
   *Exercises:* fixed arrays (slots), enums (coins, slot IDs), maps, error
   handling (out of stock, insufficient funds → `or_return`). *Verify:* terminal.

4. **Traffic-Light / FSM** — a light cycling Green→Yellow→Red, or a
   turnstile/door FSM, advanced by ticks or commands. *Fun:* the cleanest "the
   program has memory and reacts" lesson; adding a state is satisfying.
   *Exercises:* enums (states), tagged unions (states carrying data, e.g.
   `Yellow{ms_left}`), procedures (`step`), distinct types (`TickCount`), switch.
   *Verify:* terminal (or SDL3: draw the lit lamp).

5. **Tamagotchi / Virtual-Pet Tick Loop** — stats (hunger/happy/energy) decay per
   tick; feed/play/sleep nudge them; pet dies/evolves at thresholds. *Fun:*
   emotional stakes; stat-balancing is game-design-y. *Exercises:* structs (pet),
   enums (mood/stage), procedures (per-tick update), parameter passing (mutate by
   pointer), defer (save-on-exit), bit-sets (`{.Sick,.Sleeping,.Hungry}`), the
   game-loop shape. *Verify:* terminal (SDL3 optional: a face that changes).

6. **Student Gradebook / Bank Ledger** — roster of students→averages, letter
   grades, top student; or account deposit/withdraw/balance + transaction log.
   *Fun:* a believable "system of record"; the tidy report feels professional.
   *Exercises:* structs (Student/Account), slices/dynamic arrays (roster/ledger),
   maps (name→record), **SoA** (the textbook case: parallel arrays vs array of
   structs), error handling (overdraft, not-found). *Verify:* terminal.

7. **Card Deck / Blackjack Hand** — build 52 cards, shuffle, deal, print; extend
   to "is it a flush?" or one blackjack round. *Fun:* a perfect bounded domain
   everyone knows; a fresh random hand each run. *Exercises:* enums (Suit, Rank),
   fixed arrays (the deck is exactly 52), slices (a hand), structs (Card),
   procedures-as-values (a scorer). Shuffle is one stdlib call → stays a toy.
   *Verify:* terminal.

8. **Text Adventure / Room Navigator** — a few rooms with N/S/E/W exits; type
   `go north`, `look`, `take key`; print room + inventory. *Fun:* a world you
   authored; everyone wants one more room or a locked door. *Exercises:* maps
   (room-id→Room, exits dir→id), structs (Room), strings/runes (parse the
   command), dynamic arrays (inventory), tagged unions (command → `Go{dir}` /
   `Take{item}` / `Look`), error handling ("can't go that way"). *Verify:*
   terminal. (Note: with no live stdin in this curriculum, drive the commands as
   a fixed scripted sequence in code.)

9. **Game of Life / Cellular Automaton** — a grid of dead/alive cells; apply 3
   simple rules per generation; print as ASCII (`#`/`.`). *Fun:* the poster child
   for *emergence* — trivial rules → gliders; watching one crawl is a "whoa".
   *Exercises:* fixed arrays (W×H grid) or slices/dynamic arrays, **two grids +
   swap** (double-buffer → pointers/pointer-swap), nested loops, distinct types
   (`Cell`). Neighbor count is local arithmetic, not graph search. *Verify:*
   ASCII terminal (upgrades to SDL3 beautifully).

10. **Particle / Random-Walker Toy** — dots that drift with pos+vel; a walker
    leaving a trail; a spark fountain under gravity. *Fun:* the single most
    visually rewarding archetype — emergent motion from `pos += vel`; tweaking
    gravity is addictive. *Exercises:* structs (Particle), dynamic arrays (pool),
    slices, **SoA** (canonical perf demo), procedures-as-values (a force fn),
    parameter passing by pointer. *Verify:* **SDL3** (motion is the point).

11. **Color / Temperature Gradient & Pixel Toy** — fill the window with a
    gradient or a heat map of `sin(x)+cos(y)`; or a turtle/pixel spiral. *Fun:*
    pure aesthetic payoff — math becomes a picture. *Exercises:* fixed
    arrays/slices (pixel buffer), nested x/y loops, structs (Color), distinct
    types (`Celsius`), procedures (`color_for(value)`), build flags (palette via
    `#config`/`-define`). *Verify:* **SDL3** (it's a picture).

12. **Snake / Pong / Bouncing Ball (mini game loop)** — a ball bouncing off
    walls; Pong; or Snake growing as it eats. *Fun:* an actual *playable game*;
    "it responds to my keys" is a milestone. *Exercises:* the game loop
    (input→update→render), dynamic arrays (Snake's body), fixed arrays (grid),
    enums (direction), structs, parameter passing, collision *checks* (AABB —
    arithmetic), hot-reload (tweak speed live), foreign bindings (`vendor:sdl3`).
    *Verify:* **SDL3** (a bouncing ball can start ASCII).

### Micro-archetypes (10-min warmups)
Number-guessing (scripted guesses), rock-paper-scissors (enums + 3×3 fixed-array
outcome table), piggy-bank coin counter, Mad-Libs / name generator (string
splice + `rand`).

---

## Terminal vs SDL3, at a glance

State/logic toys verify cleanly in the terminal (one decisive `println`); motion
and color toys want the SDL3 window because the payoff *is* the visual. Several
(Life, bouncing ball, traffic light, tamagotchi) make great two-phase problems:
ship the terminal version, then re-render the *same state* to SDL3 — which also
teaches the model/render split.

| Archetype | Best mode |
|---|---|
| Dice/loot, RPG inventory, vending, gradebook, card deck, text adventure | Terminal |
| Traffic-light/FSM, tamagotchi | Terminal (SDL3 optional) |
| Game of Life | ASCII **or** SDL3 |
| Particle/walker, gradient/pixel, Snake/Pong | SDL3 (ball can start ASCII) |

## Odin-specific fit (exploit when sequencing)
Gradebook & particle pool → textbook **SoA**; loot table & FSM → textbook
**tagged union**; Game of Life's double-buffer → clean **pointer-swap**; vending
machine & text adventure → natural **error-handling** (`or_return`); Snake/Pong →
where **foreign bindings**, the **game loop**, and **hot-reload** stop being
abstract.

## Principles of a fun concept-exercise (vs. an algorithm puzzle)
1. **A recognizable little world, not abstract I/O** — "a backpack with a sword",
   not "given an array of integers". The domain carries the motivation.
2. **The output is a state you can see and poke**, not one oracle-graded answer.
3. **Randomness/variation makes every run feel alive** — invites "run it again".
4. **Immediate, concrete feedback** — tweak a number, re-run, *see* the change.
5. **The interesting bit is exercising the feature, not out-thinking a trap.** The
   feature is the natural, satisfying tool. Anything hinging on a clever trick is
   an algorithm puzzle in a costume.
6. **It begs to be extended** — "add a rare tier", "add a room", "add gravity".
7. **Bounded and finishable in one sitting** (52 cards, 3 states, a 20×20 grid).
8. **It scales from terminal to screen** without changing the lesson.

## Sources
James Baum "52 project ideas"; Brett Codes "100+ project ideas"; Codecademy "11
Best Coding Projects"; Superprof beginner games; Trinket text-adventure; GameDev.net
"State Machines in Games"; CodinGame state-machine; Runestone "A Tamagotchi Game";
rogueliketutorials.com; RogueBasin libtcod tutorial; Daniel Shiffman *Nature of
Code* (Randomness, Vectors, Cellular Automata); The Coding Train "Random Walker";
Steve Zafeiriou "Generative Art for Beginners"; Real Python game-dev path;
GeeksforGeeks (Game of Life, student-struct); UMass CS230 bank-sim; DesignGurus
interactive-exercises.
