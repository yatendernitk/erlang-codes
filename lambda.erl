%%%-------------------------------------------------------------------
%%% @author Yatender
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Sep 2017 4:02 PM
%%%-------------------------------------------------------------------
-module(lambda).
-author("Yatender").

%% API

-compile(export_all).


one() -> 1.
two() -> 2.

        
add(X,Y) -> X()+Y().

increment([]) -> [];
increment([H|T]) -> [H+1|increment(T)].
 
decrement([]) -> [];
decrement([H|T]) -> [H-1|decrement(T)].

map(_, []) -> [];
map(F, [H|T]) -> [F(H)|map(F,T)].

incr(X) -> X + 1.
decr(X) -> X - 1.