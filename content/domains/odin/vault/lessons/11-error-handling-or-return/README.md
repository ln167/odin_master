# Lesson 11 - error handling with or_return / or_else

## Concept

Odin has no exceptions. A procedure that can fail returns the failure
as **part of its return value**, usually as a second value alongside
the real result: `proc() -> (Result, Error)`. The caller looks at
that error, branches on it, and decides what to do. There is no
`throw`, no `try/catch`, no stack unwinder, no thread-local
"current exception" variable. Failure is just data being returned
out the front door of the procedure, the same way success is.

Two operators sweeten the calling code:

- `or_return` means "if the call failed, return the error from the
  procedure I'm currently sitting in." It's the propagate-upward
  shortcut.
- `or_else` means "if the call failed, substitute this default value
  instead." It's the recover-locally shortcut.

Both are pure syntactic sugar over the explicit `if err != nil`
form. Nothing magical happens at runtime; the compiler expands them
into the same branch you would have typed by hand. The point is to
make the common shapes (propagate, default) terse enough that the
boring case stops crowding the page.

---

## Leveling with you (if you come from OOP)

In C# / Java / TypeScript, errors are a **control-flow side channel**.
Code that "can throw" looks identical to code that can't, and you
discover the failure paths by reading documentation, hovering for
tooltips, or being surprised at runtime. The `throw` keyword
hijacks the stack: execution leaps from the failure site up through
however many frames it takes to find a matching `catch`, running
`finally` blocks on the way, mutating program state in ways the
calling code can't see in its own source.

Odin asks you to give that up. Failure is a return value. You can't
ignore it without the compiler noticing, and you can't accidentally
unwind out of a function that looked like it returned normally.
Every place a function might fail is a place where the **shape of
the return signature changes** from `-> T` to `-> (T, Error)`, and
the call sites have to deal with the second value. Failure becomes
a visible, typed, local thing.

The first reaction from a C# brain is "this is going to be twice as
much typing." The second reaction, a week later, is "I can read this
code top to bottom and know every place it can exit." That second
reaction is why the trade is worth it for systems-y / game-engine
work, where surprise exits in the middle of a frame are how you
end up with corrupted state, leaked GPU resources, or half-written
save files.

---

### Compared to C

C's convention is to overload one of the return values to mean
"failed": `-1` from a function that normally returns a non-negative
integer, `NULL` from one that normally returns a pointer, a global
`errno` set as a side effect, or an `int` returned through an
out-pointer parameter. It works, but it is **convention, not type**.
The compiler can't tell whether the caller checked. You can write
`fopen("missing.txt")` and use the returned `FILE *` immediately
without ever testing for null, and the compiler is silent until the
program segfaults.

Odin makes the error a second, real return value. The compiler
knows it exists. If you ignore it, you have to ignore it on purpose
with `_ =`. If you forget, the compiler refuses to build.

### Compared to C#

C#:

```csharp
public int Divide(double a, double b) {
    if (b == 0) throw new DivideByZeroException();
    return a / b;
}

try {
    var r = Divide(10, 0);
    Console.WriteLine(r);
} catch (DivideByZeroException) {
    Console.WriteLine("nope");
}
```

Odin:

```odin
Math_Error :: enum { None, Divide_By_Zero }

divide :: proc(a, b: f64) -> (f64, Math_Error) {
    if b == 0 { return 0, .Divide_By_Zero }
    return a / b, .None
}

r, err := divide(10, 0)
if err != .None {
    fmt.println("nope")
} else {
    fmt.println(r)
}
```

The Odin version is a couple of lines longer at the call site, but
the `divide` signature now tells the truth: this procedure can
fail, and the failure mode is `Math_Error`. There is no invisible
exit path. There is no exception type the caller might have
forgotten to catch. The IDE doesn't have to guess; the type system
already knows.

### Compared with Rust

Rust's `Result<T, E>` plus the `?` operator is the direct cousin:

```rust
fn divide(a: f64, b: f64) -> Result<f64, MathError> { ... }

let r = divide(10.0, 2.0)?;     // ? propagates the Err upward
let r = divide(10.0, 0.0).unwrap_or(0.0);   // default on Err
```

Odin's `or_return` is `?`. Odin's `or_else` is `unwrap_or`. The two
languages made the same call about error handling: it's a value,
not a control-flow effect, and there's an operator to keep the
happy path readable. The differences are spelling and that Odin
keeps the multi-return tuple shape `(T, Error)` instead of wrapping
it in a `Result` sum type.

### Compared to Go

Go is the closest in spirit:

```go
r, err := divide(10, 0)
if err != nil {
    return err
}
```

You write that exact three-line block roughly once per function in
Go, and the language never gave you an operator for it. Odin
collapses it to:

```odin
r := divide(10, 0) or_return
```

Same semantics, same desugaring. Odin just decided that something
you type ten thousand times deserves to be one token.

---

## Reference: the syntax you'll need

### Defining an error type

The error type is almost always an enum where the zero / first
value means "no error." The convention is to name that variant
`None`, and the truthiness check `err != .None` (or `err != nil`
for nilable types) becomes the standard pattern.

```odin
Math_Error :: enum {
    None,
    Divide_By_Zero,
    Negative_Sqrt,
}
```

You can also use a **union** when different operations fail in
different ways, or a plain `bool` when "did it work?" is the only
question.

### Returning (T, Error)

```odin
divide :: proc(a, b: f64) -> (f64, Math_Error) {
    if b == 0 { return 0, .Divide_By_Zero }
    return a / b, .None
}
```

The two returns are positional. The error conventionally goes
last; `or_return` keys off the last return value.

### Calling sites: four forms

**1. Explicit `if`.** The longhand, always available:

```odin
r, err := divide(10, 2)
if err != .None {
    fmt.println("failed:", err)
    return
}
fmt.println("ok:", r)
```

**2. `or_return` to propagate.** Inside a proc whose own returns
are compatible (specifically: named returns when the proc has 2+
returns), this bubbles the error up to your caller:

```odin
do_work :: proc() -> (result: f64, err: Math_Error) {
    a := divide(10, 2) or_return     // if it fails, set err and return
    b := divide(a, 0)  or_return     // this one fails; err is set; we leave
    return a + b, .None
}
```

The named returns matter. `or_return` expands to a bare `return`,
and a bare `return` only works when the return slots are named so
the compiler knows what to send back.

**3. `or_else` to substitute a default.** Doesn't need named
returns, doesn't propagate. Locally swallows the failure:

```odin
safe := divide(10, 0) or_else 0   // safe == 0
```

**4. Multi-return with everything.** When you want both values
and you're handling the error yourself:

```odin
r, err := divide(10, 2)
```

### Ignoring a return on purpose

If you genuinely want to discard the error (you almost never do),
the discard underscore makes it explicit:

```odin
_, _ = divide(10, 2)
```

Compare to C, where ignoring is the default. Odin makes you write
the ignore by hand so it shows up in code review.

---

## The mental model: errors are just data

Read this carefully, because it's the whole lesson in one paragraph:

> `or_return` is **not** an exception. It is a `return` statement
> that the compiler typed for you. There is no unwinder, no stack
> walking, no special path. Every call site that uses `or_return`
> is equivalent to a hand-written `if err != nil { return ..., err }`,
> and the generated code is identical.

The expansion of `value := expr or_return` is roughly:

```odin
value: T
{
    tmp_value, tmp_err := expr
    if tmp_err != nil {
        err = tmp_err   // err is your enclosing proc's named error return
        return          // bare return; uses the named returns as they stand
    }
    value = tmp_value
}
```

That's all. No magic. The same expansion holds for `bool` ok-style
returns: instead of `if tmp_err != nil`, the compiler emits
`if !tmp_ok`.

`or_else` is the dual:

```odin
// value := expr or_else default
tmp_value, tmp_err := expr
value := tmp_value
if tmp_err != nil { value = default }
```

Holding both pictures (the operator and the desugaring) in your head
at the same time is how you stop being surprised by the rules. If
something refuses to compile, drop back to the explicit `if err`
form and the problem usually becomes obvious.

---

## Tasks

Open `main.odin`. The procedure-level comments walk through six
exercises that build up the error-as-value workflow. Type the
bodies yourself.

When you finish, run:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the
compiler or runtime message, then revert:

1. **Take the value but ignore the error.** Change
   `r, err := divide(10, 0)` to `r, _ := divide(10, 0)`, then
   print `r`. Note that you get `0` (the value the failing branch
   returned) with no warning. This is why returning a sentinel
   like `0` from a failure path is dangerous unless the caller is
   forced to check, which `or_return` and `or_else` arrange.
2. **Forget the second return.** Change
   `r, err := divide(10, 2)` to `r := divide(10, 2)`. Read the
   compile error. Odin refuses to silently drop the trailing
   error value; you must consume both or explicitly discard
   one with `_`.
3. **Strip the named returns off a proc that uses `or_return`.**
   Change `safe_chain :: proc() -> (result: f64, err: Math_Error)`
   to `safe_chain :: proc() -> (f64, Math_Error)` (drop the names).
   Read the compile error. `or_return` needs named returns in a
   multi-return proc because the bare `return` it expands to has
   to know what to send back.
4. **`or_else` with the wrong type.** Try
   `n := divide(10, 0) or_else "nope"`. Read the compile error.
   The default has to be assignment-compatible with the value
   slot; you can't substitute a string where an `f64` is expected.

Then put the file back to its working state.

---

## Low-level notes

- `or_return` and `or_else` compile to a normal conditional branch.
  Cost when no error occurs: one comparison and a not-taken branch,
  which the CPU's branch predictor handles for free in steady state.
- There is no exception table, no per-function metadata, no
  landing pad. The binary doesn't pay for the feature.
- Compare to C++ or C# exceptions: the runtime maintains tables
  mapping every instruction range to "what catch handlers cover
  this," and an actual throw walks the stack consulting those
  tables. That's why exceptions are fast when not thrown but slow
  when thrown, and why "exceptions for control flow" is a
  performance footgun. Odin's model is a flat cost: a check.
- The error enum itself is whatever the smallest integer that fits
  is, by default `int` (8 bytes on a 64-bit machine). For tight
  loops where you return many `(T, Error)` pairs, an `enum u8`
  shrinks the tuple.
- `or_return` is an **expression**, so it composes:

      n := strconv.parse_int(s) or_return

  works the same whether the surrounding statement is an
  assignment, a `return`, or a sub-expression in a larger call.

---

## Next: `12-structs-and-soa/`

Back to data layout. Lesson 12 covers `struct`s, field ordering,
padding, and Odin's `#soa` directive that pivots an array of
structs into a struct of arrays with no code changes at the call
site.
