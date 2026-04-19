# Reading a File

The `os.read_entire_file_from_filename` function reads the contents of a file into memory as a byte array. It returns a tuple containing the read data and a boolean indicating whether the operation was successful.

Example usage:
```odin
data, ok := os.read_entire_file_from_filename("path")
if !ok {
    // handle error
}
delete(data)  // free the allocated memory
```
This function provides a simple way to read files into Odin's execution environment.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier1-authoritative/odin-overview -->
