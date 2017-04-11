# Problem 100

>If a box contains twenty-one coloured discs, composed of fifteen blue discs and six red discs, and two discs were taken at random, it can be seen that the probability of taking two blue discs, P(BB) = (15/21)×(14/20) = 1/2.

>The next such arrangement, for which there is exactly 50% chance of taking two blue discs at random, is a box containing eighty-five blue discs and thirty-five red discs.

>By finding the first arrangement to contain over 1012 = 1,000,000,000,000 discs in total, determine the number of blue discs that the box would contain.

```J
blue=: {: , ((6: * {:) - {.) - 2: 
{.blue`]@.(1e12&<@{:)^:(_) 1 3x
```

```q

```

```Mathematica
x /. FindInstance[
   2 x (x - 1) == n (n - 1) && n > 10^12 && x > 0, 
   {n, x}, Integers] // First
```

```fsharp

```

```clojure

```

| Language    | Time     |
|-------------|----------|
| J           |  0.00013 |
| Q           |  |
| Mathematica |  0.10676 |
| F#          |  |
| Clojure     |  |
