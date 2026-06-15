# The Gradebook

**Lessons:** 12 structs & SoA · 12b using & procedure groups · 13 procedures as values
**Time:** ~25–30 min · **Output:** terminal (averages + letters)

A class of students, each with a few test scores. You'll build the little report
card a teacher actually wants — averages, letter grades, the top student — and in
the process meet the three big lesson-12/13 moves: a real struct (finally!), the
`#soa` layout, and passing the *grading curve itself* as a value.

## Build it

1. `Student :: struct { name: string, scores: [3]f32 }`. Make a small class as a
   `[]Student` (an array of structs) and compute each student's average.
2. Now build the same class as a `#soa[]Student` (Struct-of-Arrays, lesson 12) and
   compute the class average from it. Same data, different memory layout — note
   how you index it (`class.scores[i]`) versus the array-of-structs version
   (`class[i].scores`).
3. **procedures as values** (13): the letter grade depends on a *curve*. Write
   `strict :: proc(avg: f32) -> string` and `lenient :: proc(avg: f32) -> string`,
   then a report loop that takes the curve as a parameter
   (`grade: proc(f32) -> string`). Run the report twice with each curve — the loop
   never changes, only the function you hand it.
4. **using / proc groups** (12b): give `Student` a `using base: Person` (where
   `Person :: struct { name: string }`) so `s.name` works through the embed; and
   make a proc group `report :: proc{report_one, report_class}` so one name handles
   both a single student and the whole class.

## Make it print

Each student's average and letter, the class average, the top student — bare:

```
Ada 91.3 A
Grace 78.0 C
Alan 84.7 B
class 84.7
top Ada
```

(Then print it again under the lenient curve and watch the letters shift.)

## If you're having fun (stretch)

- Add a weight per test (midterm counts double) by passing a weighting function —
  another procedure-as-value.
- Sort the printout by average. (One `slice.sort_by` call with a comparator — yes,
  another proc-as-value — not a hand-rolled sort.)
