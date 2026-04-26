# File Reading

The `os.read_entire_file_from_filename` function loads a file's contents into a byte slice. Success is indicated by the `ok` boolean, requiring manual memory cleanup via `delete(data)`. A higher-level wrapper exists in `core:os` for simpler usage patterns.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier1-authoritative/odin-overview -->
