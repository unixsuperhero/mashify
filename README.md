# mashify

Make a hash's existing keys read/writable via methods.

Usage: `Mashify.mix(hash_var)`

It is also recursive so you can do things like:

```
h = {
  a: {
    b: {
      c: {
        d: 1,
        e: 2,
        f: 3,
        g: 'gee'
      }
    }
  }
}

Mashify.mix(h)
puts h.a.b.c.g

# output => 'gee'
```
