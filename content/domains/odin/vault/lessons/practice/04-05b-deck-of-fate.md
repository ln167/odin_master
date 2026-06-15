# Deck of Fate

**Lessons:** 05 fixed arrays · 05b enums & bit-sets · 04 strings/runes
**Time:** ~20–30 min · **Output:** terminal (cards as `A♠`)

Build a full deck of 52 playing cards from nothing but two enums and a fixed
array — and print each card the way a human reads it: `A♠`, `10♥`, `Q♣`. You
don't have structs yet (those are lesson 12), so a "card" is just its suit and
its rank, kept side by side.

## Build it

1. Declare `Suit :: enum { Hearts, Diamonds, Clubs, Spades }` and
   `Rank :: enum { Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace }`.
2. Fill two **fixed arrays**, `[52]Suit` and `[52]Rank`, with every
   suit×rank combination. Loop over the enums to do it (you can range over an
   enum's values directly). Index `i` of both arrays together *is* card `i`.
3. Write `card_string(s: Suit, r: Rank) -> string` that returns the short form:
   a rank label (`"A"`, `"K"`, `"Q"`, `"J"`, `"10"`, or the number) followed by
   the suit's **rune** symbol — `♥ ♦ ♣ ♠`. (Runes are lesson 04: a `rune` literal
   like `'♠'` is one Unicode character.)
4. Track the face cards in a **bit-set**: `faces: bit_set[Rank] = {.Jack, .Queen, .King}`.
   Write a tiny check that asks "is this rank a face card?" using `in`.

## Make it print

Print the deck size, a few cards, and a face-card check — bare:

```
52
A♠
10♥
Q♣
true
false
```

## If you're having fun (stretch)

- Deal a 5-card hand and print it. (Shuffling is one call — `rand.shuffle(deck[:])`
  — which slices the array; slices are the very next lesson, 06, so this is a
  legal peek ahead.)
- Add a `bit_set[Suit]` of "red suits" `{.Hearts, .Diamonds}` and print whether a
  card is red.
