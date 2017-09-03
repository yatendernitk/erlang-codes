%%%-------------------------------------------------------------------
%%% @author Yatender
%%% @copyright (C) 2017, <Open>
%%% @doc
%%%
%%% @end
%%% Created : 02. Sep 2017 11:58 PM
%%%-------------------------------------------------------------------
-module(listoperation).
-author("Yatender").

%% API
-compile(export_all).

-spec len(list()) -> integer().
len([]) -> 0;
len([_|T]) -> 1 + len(T).


sum(T) -> sum(T,0).
sum([H|T],Acc) -> sum(T,H+Acc);
sum([],Acc) -> Acc.
