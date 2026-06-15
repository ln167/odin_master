# The Vending Machine

**Lessons:** 10 tagged unions · 10b distinct types · 11 error handling (uses 05 fixed arrays, 07 dynamic arrays)
**Time:** ~25–30 min · **Output:** terminal (item + change, or the error)

Build a vending machine you can operate: insert money, press a slot, get an item
and your change back — or a clear refusal when you're short or it's sold out.
This is the trifecta from these lessons: money is a *distinct* type so you can't
mix it up with a slot number, failures are real *errors* you must handle, and the
day's events get logged in a *tagged union*.

You don't have structs yet (lesson 12), so the machine's slots are kept as
parallel fixed arrays.

## Build it

1. `Cents :: distinct int` (10b) — now the compiler won't let you accidentally
   pass a slot index where money goes, or add cents to a count.
2. Slots as three parallel `[4]`-fixed arrays: `names: [4]string`,
   `prices: [4]Cents`, `stock: [4]int`.
3. `Vend_Error :: enum { None, Bad_Slot, Sold_Out, Short_On_Cash }` (11). Write
   `vend(slot: int, paid: Cents) -> (item: string, change: Cents, err: Vend_Error)`.
   On success it decrements stock and returns the change; otherwise it returns the
   right error and touches nothing. Drive it from `main` with a few attempts
   (a good buy, a sold-out slot, a too-cheap buy) — handle each result.
4. Log the day in a **tagged union** (10). Make two one-field variants out of
   distinct types — `Sale :: distinct int` (the slot sold) and
   `Jam :: distinct Vend_Error` — and `Event :: union { Sale, Jam }`. Push each
   attempt's outcome into a `[dynamic]Event`, then `switch` over the log to print
   it. (This is the lesson-10 payoff: one array holding two kinds of event,
   read back exhaustively.)

## Make it print

Each attempt's result, then the event log — bare:

```
Cola 25
Sold_Out
Short_On_Cash
sale 0
jam Sold_Out
jam Short_On_Cash
```

## If you're having fun (stretch)

- Make `vend` refuse when the machine can't make exact change (`No_Change`), so a
  $5 bill for a 75¢ drink with an empty coin hopper fails gracefully.
- Use `or_return` to chain a "buy two in a row, stop at the first failure" combo.
