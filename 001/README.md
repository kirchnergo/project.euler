# Problem 1


>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
>Find the sum of all the multiples of 3 or 5 below 1000.


```J
+/ ((0=3|n) +. (0=5|n)) # n =: >: i.999
```

```q
sum distinct raze f * 1+ til each floor (n:999) % f:3 5
```

```Mathematica
Plus @@ Select[Range@999, Mod[#, 3] == 0 || Mod[#, 5] == 0 &]
```

```fsharp
[1..999]
    |> List.filter (fun num -> num % 3 = 0 | num % 5 = 0) 
    |> List.sum
```

```clojure
(->>
  (range 1000)
  (filter #(or (= (mod %1 5) 0) (= (mod %1 3) 0)))
  (reduce +))
```

| Language | Time |
|----------|------|
| J        | 0.000034 |
| Q        | 0.000043 |
| Mathematica | 0.001748 |
| F#       | - |
| Clojure  | - |


