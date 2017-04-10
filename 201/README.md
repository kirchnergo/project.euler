# Problem 201


```J
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
| J           |  |
| Q           |  |
| Mathematica |  78.8407 |
| F#          |  |
| Clojure     |  |
