# Context Allocator

The Odin context allocator is an implicit allocator that is used to manage memory allocation for threads. It can be overridden per-block by assigning a new value to `context.allocator`.

Override the context allocator using:
```odin
context.allocator = my_arena_allocator
defer context.allocator = old
```
This allows developers to customize memory allocation behavior for specific blocks of code.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier1-authoritative/odin-overview -->
