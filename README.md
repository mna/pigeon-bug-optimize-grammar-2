To reproduce the bug:

```
$ make
# should pass, by default this is with --optimize-grammar on
$ go test .
# should fail to build
```

