# Tracking Allocators

Odin's tracking allocator wraps any allocator to record allocation and deallocation events, detecting memory leaks on shutdown. This feature integrates seamlessly with the language's context system, enabling runtime diagnostics without modifying core libraries.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier2-curated/karl-zylinski -->
