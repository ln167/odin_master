# One Bag, Any Loot

**Lessons:** 14 parametric polymorphism (builds on 12 structs, 07 dynamic arrays)
**Time:** ~15–20 min · **Output:** terminal (bare values)

Back in the backpack problem the bag held strings. But you've now built loot
(strings), cards (enums), and students (structs) — and you don't want to write a
new bag for each. Write **one** bag that holds anything, and prove it by filling
three bags of three different types from the same code.

## Build it

1. Write a generic container `Bag($T) :: struct { items: [dynamic]T }`, with
   `push(b: ^Bag($T), x: T)`, `pop(b: ^Bag($T)) -> T`, and
   `count(b: Bag($T)) -> int`. The `$T` is the whole lesson: the compiler stamps
   out a real version for each type you use it with.
2. Use it three ways with zero new container code: a `Bag(int)` of loot values, a
   `Bag(string)` of item names, and a `Bag(Suit)` (reuse the enum from the card
   deck, or any small type of yours).
3. Write a generic `top :: proc(b: Bag($T)) -> T` that returns the last pushed
   item, and call it on all three bags.

## Make it print

Push a few into each bag, then print a count and a popped value per bag — bare:

```
3 7
2 Rope
4 Spades
```

## If you're having fun (stretch)

- Add `push` overloads via a `where` clause or a constraint so a `Bag` of numeric
  `T` also gets a `sum()` that other `T`s don't.
- Make a `Bag(Bag(int))` — a bag of bags — and watch the generics nest without
  any new code.
