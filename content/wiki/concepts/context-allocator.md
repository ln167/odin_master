# Context Allocator

Every Odin procedure receives an implicit `context` with an `allocator` field controlling memory allocation. Developers can override this locally to manage allocation strategies without modifying call sites, enabling fine-grained control over resource management.

<!-- source: example/overview.md -->
