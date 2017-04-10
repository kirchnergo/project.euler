# Problem 201


```J
f=:(|.!.0"1)(_1|.!.0[)
start=:(^&2>:i.100); 0=i.51,(>:+/^&2>:i.100)
step=:(](+)](f~)[)
fir=:}:&>&(0{])
sec=:((-&:{:&>&(0{]))step(>&(1{])))
calc=:(fir;sec)^:100
+/I.1=_1{>1{calc start
```

```q

```

```Mathematica
ClipMatInt[mat_, {lo_, hi_}] := Quotient[(lo + hi) + Abs[mat - lo] -  Abs[mat - hi], 2]
dat=Fold[ClipMatInt[
   PadRight[#1,Dimensions[#1]+{1,#2}]+PadLeft[#1,Dimensions[#1]+{1,#2}],
   {0,2}]&,Developer`ToPackedArray[{{1}}],Range[1,100]^2];
Plus@@ Flatten[Position[dat[[51]],1]-1]
```

```fsharp

```

```clojure

```

| Language    | Time     |
|-------------|----------|
| J           |  25.8646 |
| Q           |  |
| Mathematica |  78.8407 |
| F#          |  |
| Clojure     |  |
