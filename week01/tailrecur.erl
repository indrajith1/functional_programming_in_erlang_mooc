-module(tailrecur).

-export([fib/1]).



fib(N,B,A,N)->A+B;
fib(N,B,A,I)->fib(N, B+A, B, I + 1).

fib(N) when N > 2-> fib(N,1,0,2).


