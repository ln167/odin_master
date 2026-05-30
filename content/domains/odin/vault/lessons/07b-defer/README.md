# Lesson 07b - the defer keyword

## Concept

`defer` schedules a statement to run at the end of the scope it's written
in, reached by any exit. That's the whole rule. Open a file, immediately
`defer os.close(f)`, and the close fires whether you `return` early, hit
the bottom of the function, or leave the inner block you wrote it in.

The keyword is small. The guarantee is the whole point.

You've already seen it in passing: `defer delete(nums)` after a `make` in
lesson 07, `defer free_all(context.temp_allocator)` in lesson 08. This
lesson explains what's actually going on and why the keyword matters
enough to spend syntax on.

---

## Leveling with you (if you come from OOP / GC'd languages)

The instinct from C# / Java / JS is: "I don't have to think about
cleanup, the garbage collector eventually handles it." That instinct
gets you killed in low-level languages, because there's no garbage
collector and "eventually" is "never."

The C# pattern closest to `defer` is `using` blocks:

```csharp
using (var f = File.Open("my_file.txt")) {
    // work with f
}   // f.Dispose() is called here, automatically, on any exit
```

You write the cleanup logically at the *bottom* (the closing brace) but
linked to the acquisition. Same idea as `defer`, but expressed by
wrapping the code in a block instead of writing one extra line.

Odin's version inverts where the cleanup *lives in the source*: you
write `acquire`, then write `defer release` on the very next line, and
both sit visually paired at the top of the scope. The teardown
*executes* at the bottom; the *source code* for the teardown sits next
to the setup. That visual pairing is most of why people who use `defer`
miss it when they go back to languages without it.

The deeper thing to internalize, since you're new to low-level: with no
GC, "I will not forget to release this on any path out of here" isn't a
convenience — it's the whole game. Files, locks, sockets, allocations,
GPU resources, anything you grab and have to give back. `defer` is the
keyword that makes "on any path" structural instead of disciplinary.

---

### Compared to C

C has nothing like `defer`. You write the cleanup before every `return`:

```c
FILE *f = fopen("my_file.txt", "r");
if (!f) return -1;

char *buf = malloc(1024);
if (!buf) { fclose(f); return -1; }   // copy 1

if (read_header(f, buf) < 0) {
    free(buf);                          // copy 2
    fclose(f);
    return -1;
}

if (parse(buf) < 0) {
    free(buf);                          // copy 3
    fclose(f);
    return -1;
}

free(buf);                              // copy 4
fclose(f);
return 0;
```

Four copies of the same two-line teardown, all of which must stay in
sync forever. Real C codebases use `goto cleanup` labels to deduplicate
this, which is itself a workaround for not having `defer`.

### Compared to C#

`using` / `IDisposable` is the direct equivalent semantically, but it
requires the resource to implement `IDisposable` and forces you to
indent the using-block. `defer` works on *any* statement, no interface
required, no extra indentation.

| C# | Odin |
|----|------|
| `using (var f = File.Open(path)) { ... }` | `f, _ := os.open(path); defer os.close(f); ...` |
| `lock (mu) { ... }` | `sync.lock(&mu); defer sync.unlock(&mu); ...` |
| `try { ... } finally { release(); }` | `defer release(); ...` |

Same problem (deterministic cleanup), three different surface syntaxes
in C#, one keyword in Odin.

### Compared to Rust

Rust handles this with the `Drop` trait: when a value goes out of scope,
its `drop` method runs automatically. You don't write `defer` at all —
ownership + Drop make it implicit. Tradeoffs: Rust's approach is
zero-syntax but every cleanable resource has to be a type with a Drop
impl. Odin's `defer` is one extra line per resource but works on
literally any statement (including ones that aren't tied to a type, like
"restore this global variable's previous value").

### Compared to Go - IMPORTANT, NOT THE SAME

Go has `defer` too, and it looks identical at the call site. The
semantics are NOT the same and this difference will bite you.

**Go's `defer` is tied to the function**: every `defer` statement queues
the deferred call onto a stack attached to the function frame, and the
entire stack runs at function exit. A `defer` inside a `for` loop in Go
queues another deferred call on every iteration, all of which fire at
once when the function eventually returns.

**Odin's `defer` is tied to the scope**: a `defer` inside a `for` loop
fires at the end of *each iteration*, because the loop body is its own
scope. By the time the loop continues to the next iteration, the
deferred code has already run.

This matters most in loops:

```odin
for name in filenames {
    f, _ := os.open(name)
    defer os.close(f)   // Odin: fires at end of THIS iteration
    process(f)
}                       // only one file is ever open at a time
```

The identical code in Go would queue up `os.close(f)` on every
iteration and run all of them at function exit. Loop over 10,000 files
and Go holds 10,000 open file handles simultaneously until the function
returns — easy way to hit the OS file-descriptor limit. Odin closes each
file before opening the next.

Same keyword, genuinely different behavior. The Odin docs warn about
this explicitly: "The defer construct in Odin differs from Go's defer,
which is function-exit and relies on a closure stack system."

---

## The single rule

A `defer` fires at the end of its *own scope*, on any exit path, in
*reverse order of declaration*.

Three pieces, each load-bearing:

**End of its own scope.** Not "end of the function" — end of whatever
block the `defer` is lexically written in. The function body is just
the outermost scope. A `defer` written at the top level of a `proc`
fires when the proc returns. A `defer` written inside a `for` body
fires at the end of each iteration. A `defer` written inside an `if`
fires when the if-block closes.

**Any exit path.** `return`, falling off the bottom, hitting a `break`
or `continue` out of an inner block — doesn't matter. The deferred
statement runs.

**Reverse order.** If you write `defer A` then `defer B` then `defer C`,
they fire C, B, A at scope exit. This is LIFO and it matches how
resources naturally nest: acquire A, then B (depends on A), then C
(depends on B); release C first, then B, then A.

That's it. Every "powerful" use is just this rule applied creatively.

### The simplest demonstration

Copied directly from the Odin docs:

```odin
main :: proc() {
    x := 123
    defer fmt.println(x)   // scope = main; fires at end of main
    {
        defer x = 4        // scope = inner { }; fires at end of inner block
        x = 2
    }                      // <- inner defer fires HERE; x becomes 4
    fmt.println(x)         // prints 4
    x = 234
}                          // <- outer defer fires HERE; prints 234
```

Output: `4` then `234`. Two `defer`s, two different scopes, two
different firing moments. Same keyword.

---

## Four real uses of defer

The four below are not "tricks." They are the four shapes of the
acquire/release problem, and `defer` is the answer to each.

### 1. Acquire / release — a mutex

A lock you forget to release isn't a leak, it's a deadlock. Three exit
paths, one unlock, zero chance of forgetting one:

```odin
import "core:sync"

g_mutex: sync.Mutex
g_count: int

increment_if_valid :: proc(amount: int) -> bool {
    sync.lock(&g_mutex)
    defer sync.unlock(&g_mutex)   // runs on ALL three returns below

    if amount < 0 {
        return false              // unlocked here
    }
    if g_count + amount > 1000 {
        return false              // and here
    }
    g_count += amount
    return true                   // and here
}
```

Put `sync.unlock` "at the bottom" instead and the two early returns
leave the mutex locked forever, deadlocking every future caller. The
`defer` makes that bug structurally impossible.

### 2. Stop-timer right under start-timer

Write the "how long did this take" report at the *top*, next to where
timing begins. It fires whenever the proc exits — no matter which
return got hit, the timing report is pinned to scope exit:

```odin
import "core:time"
import "core:fmt"

load_assets :: proc() -> bool {
    start := time.tick_now()
    defer {
        ms := time.duration_milliseconds(time.tick_since(start))
        fmt.printf("load_assets took %.2f ms\n", ms)
    }

    if !load_textures() {
        return false   // still prints the timing
    }
    if !load_sounds() {
        return false   // still prints the timing
    }
    return true        // prints here too
}
```

The timing report cannot drift out of sync with the code it's timing,
because it's tied to scope exit, not to a hand-placed line.

Note the deferred *block*: `defer { ... }` defers a whole brace-block,
not just one statement.

### 3. Push, then defer the pop

Classic in recursion. Track some "where am I" stack: push on the way
in, defer the pop so it's automatically undone on the way out, through
every base case and early return.

```odin
import "core:fmt"

Node :: struct {
    name:     string,
    children: []^Node,
}

// Prints the full path to every leaf, e.g. [root a b]
print_leaf_paths :: proc(node: ^Node, path: ^[dynamic]string) {
    append(path, node.name)
    defer pop(path)            // leave this node behind on the way out

    if len(node.children) == 0 {
        fmt.println(path[:])   // a leaf: print the path that got us here
        return                 // <- pop still happens
    }
    for child in node.children {
        print_leaf_paths(child, path)
    }
}                              // <- and pop happens here for non-leaves
```

Every call balances its own push with its own pop, automatically.
Without `defer` you'd need a `pop` before the leaf's return AND after
the loop — two copies to keep in sync, exactly the trap from the mutex
example.

### 4. Change state, defer the restore

Temporarily flip something global, guarantee it goes back to whatever
it was before — not blindly back to a default, but back to the value
you *saved*:

```odin
g_verbose := false

run_with_verbose_logging :: proc() {
    old := g_verbose
    g_verbose = true
    defer g_verbose = old      // restore the PREVIOUS value, on every exit

    noisy_step_one()           // sees g_verbose == true
    if something_failed() {
        return                 // restore still happens
    }
    noisy_step_two()
}
```

Saving `old` instead of hardcoding `false` is what makes this safe to
nest — if some outer caller had already set verbose on, you don't stomp
it. The `defer` just rewinds one level.

---

## The thread

Setup and its matching teardown sit next to each other in the source,
but the teardown actually executes at scope exit, on whatever path you
leave by. That pairing-in-text plus running-on-all-paths is the entire
trick. No hidden magic, no exotic mechanism. Just one guarantee
applied four different ways above, and a hundred others you'll find on
your own.

The mental shift from GC'd languages is small but important: instead of
"the runtime will clean up eventually, somehow," you write "*I* clean
up, *here*, on every path out — and the compiler enforces that I do."
`defer` is the keyword that makes the second sentence one line instead
of N.

---

## The `when` nuance (compile-time conditionals don't make a scope)

`when` is compile-time conditional compilation (lesson 16). Despite
having `{ }` braces, a `when` block does NOT create a runtime scope:
the compiler picks one branch and the chosen branch's statements are
inlined into the surrounding scope as if the braces weren't there.

So a `defer` inside a `when` fires at the end of the *surrounding*
scope, not at the end of the `when` braces:

```odin
load_thing :: proc() {
    when ODIN_DEBUG {
        defer fmt.println("load_thing finished")
        // ^ scope is the WHOLE proc, not just the when { }
    }
    // ... rest of proc ...
}   // <- defer fires here, after the whole proc finishes
```

This follows from the same single rule (defer fires at end of its
scope) once you know that `when` is not a real scope. It just doesn't
exist by the time the code runs — the branch was either inlined or
deleted at compile time.

Edge case, but worth knowing because it surprises people.

---

## Named return values: defer can't change them

The Odin docs are explicit:

```odin
foo :: proc() -> (n: int) {
    defer {
        n = 456   // does NOT affect the returned value
    }
    n = 123
    return        // returns 123
}
```

`defer` runs *after* the return value has already been handed back to
the caller. Modifying `n` inside the defer is too late — the caller
already has the value. Go's `defer`, being a runtime closure-stack
construct, CAN reach back and modify named returns. Odin's deliberately
can't, because it's the simpler, more predictable mechanism.

If you need to mutate the return value, do it before `return`. If you
need cleanup that doesn't touch the return, `defer` is correct.

---

## Tasks

Open `main.odin`. Four numbered exercises walk you through the four
shapes above plus a small "see when the defer fires" scope demo.

When you finish:

    odin run main.odin -file

Compare to `expected-output.txt`.

---

## Now break it on purpose

After your file works, try these one at a time:

1. **Move a `defer` out of an inner block.** Take a `defer` you put
   inside `{ }` and move it to the outer scope. Observe how the firing
   time changes (it now waits until the outer scope ends).
2. **Add a second `defer` to the same scope.** Observe LIFO ordering —
   the later-declared one fires first.
3. **`defer` a statement that uses a variable, then change the
   variable.** Like the docs' very first example: `defer fmt.println(x)`
   then `x = 234`. The deferred statement captures the *expression to
   run*, not a snapshot of x's current value — when it fires, it reads
   the *current* value of x, which is 234 by then.
4. **Try to change a named return value from a defer.** Write the docs'
   `foo` example. Verify the return value is unchanged.

---

## Low-level notes

- `defer` has no runtime allocation. The compiler emits the deferred
  statements at each exit point of the relevant scope. Zero overhead
  compared to writing the cleanup by hand at each exit.
- LIFO ordering is enforced at compile time by the way the compiler
  stacks the emitted teardown.
- A deferred *block* (`defer { ... }`) compiles to the same thing as
  multiple sequential `defer`s of each statement, except they fire as a
  unit and you can't visually mistake them for separate scopes.
- `return` inside a deferred block is a compile error.

---

## Next: `07c-maps/`

`defer` is the workhorse for cleaning up allocations. Lesson 07c
introduces `map[K]V`, Odin's built-in hash table, where you'll write
`defer delete(m)` on every map you create. Then lesson 08 introduces
the allocator system that maps (and dynamic arrays, and everything
else) plug into.
