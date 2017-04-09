# Problem 1


>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
>Find the sum of all the multiples of 3 or 5 below 1000.

```q
sum distinct raze 1+ til each ceiling (n:1000)%3 5
```

```J
+/ ((0=3|n)+.(0=5|n)) # n=:>:i.999
```

```Mathematica
Plus @@ Select[Range@999, Mod[#, 3] == 0 || Mod[#, 5] == 0 &]
```
