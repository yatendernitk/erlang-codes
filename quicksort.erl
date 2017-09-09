%%%-------------------------------------------------------------------
%%% @author Yatender
%%% @copyright (C) 2017, <No copyright enjoy ;) >
%%% @doc
%%%
%%% @end
%%% Created : 09. Sep 2017 8:46 AM
%%%-------------------------------------------------------------------
-module(quicksort).
-author("Yatender").

%% API
-compile(export_all).

partition(Pivot,L) -> partition(Pivot,L,[],[]).

partition(_,[],Smaller,Larger) -> {Smaller,Larger};
partition(Pivot,[H|T],Smaller,Larger)->
  case Pivot >= H of
    true-> partition(Pivot,T,Smaller,[H|Larger]);
    false -> partition(Pivot,T,[H|Smaller],Larger)
  end.

lc_quicksort([]) -> [];
lc_quicksort([Pivot|Rest]) ->
  lc_quicksort([Smaller || Smaller <- Rest, Smaller =< Pivot])
  ++ [Pivot] ++
    lc_quicksort([Larger || Larger <- Rest, Larger > Pivot]).