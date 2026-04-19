# Tagged Unions

Odin supports tagged unions, which are a type of union that includes additional information about the variant being accessed. This is achieved using the `union` keyword and specifying multiple values for a single variable.

For example:
```odin
Token :: union { int, string, f64 }
t: Token = "hello"
switch v in t {
case int:    fmt.println("int", v)
case string: fmt.println("str", v)
case f64:    fmt.println("flt", v)
}
```
This allows developers to add additional metadata to their unions and perform type-safe operations.

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier1-authoritative/odin-overview -->
