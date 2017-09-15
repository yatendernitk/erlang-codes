-module(fact).
-author("yatender").
-export([fact/1]).
-import(gcd,[gcd/2]).

fact(0) -> 1;
fact(N) when N > 0 -> N* fact(N-1).
