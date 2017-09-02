-module(gcd).
-author("yatender").
-export([gcd/2]).

gcd(M,N) when N == 0 -> M;
gcd(M,N) when N > 0 -> gcd(N,M rem N).
