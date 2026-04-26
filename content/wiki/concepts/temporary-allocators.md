# Temporary Allocators

Odin provides `context.temp_allocator` for short-lived memory allocations, ideal for game loops or temporary data structures. Allocations made with this allocator are automatically freed when explicitly cleared, using pre-allocated memory blocks for efficiency.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier2-curated/karl-zylinski -->
