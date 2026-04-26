# File I/O

`os.read_entire_file_from_filename("path")` returns `(data: []byte, ok: bool)`.
On success, free with `delete(data)`. The simpler high-level wrapper lives in
`core:os`.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier1-authoritative/odin-overview -->
