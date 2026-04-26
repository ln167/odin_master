# Tagged Unions

Odin's `union { int, string, f64 }` defines a sum type holding one variant. Destructure with `switch v in t { case int: ... }` for exhaustive pattern matching, handling all possible variant cases in a single block.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier1-authoritative/odin-overview -->
