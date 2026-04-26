# Switch Statement

```odin
Token :: union { int, string, f64 }
t: Token = "hello"
switch v in t {
case int:    fmt.println("int", v)
case string: fmt.println("str", v)
case f64:    fmt.println("flt", v)
}
```

<!-- source: C:/Users/user1/dev/odin_master/content/sources/tier1-authoritative/odin-overview -->
