To reproduce the bug:

```
$ make
# should pass, by default this is with --optimize-grammar on
$ go test .
# should fail to build
```

Without optimization:

```
$ make clean
$ DEBUG=1 make
# passes
$ go test .
# passes
```
