-module(recursionex).

-export([fib/1,fiblist/1]).


%% fib will calculate the Nth fibonacci number
%% fiblist will create a list of fibonacci number.
%% Call fiblist in the shell by lists:reveres(recursionex:fib(6)).

fib(0)->0;
fib(1)->1;
fib(N)->fib(N-1)+fib(N-2).

%% This will create a list of fibanocci numbers. 
%% The list will be N+1 size as it starts from 0.

fiblist(0) -> [0];
fiblist(1) -> [1,0]; % In reversed order
fiblist(N) when N > 1 -> 
    [fib(N)|fiblist(N-1)].


