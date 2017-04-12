fib: {x {x,sum -2#x}/ 1 1}
p002:{f:fib x; sum f where 0 = f mod 2}
p002 30
\t do[1000; p002 30]