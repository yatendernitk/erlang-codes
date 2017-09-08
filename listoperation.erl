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


tail_len(T) -> tail_len(T,0).
tail_len([_H |T],Acc) -> tail_len(T,1+Acc);
tail_len([],Acc) -> Acc.


tail_sum(T) -> tail_sum(T,0).
tail_sum([H|T],Acc) -> tail_sum(T,H+Acc);
tail_sum([],Acc) -> Acc.


rev([H|T]) -> rev(T) ++ [H];
rev([]) -> [].

tail_rev([],Acc) -> Acc;
tail_rev([H|T],Acc) -> tail_rev(T,[H|Acc]).
tail_rev(L) -> tail_rev(L,[]).


list_max([]) -> empty;
list_max([H|T]) -> {ok,list_max(H,T)}.


insert_unique(X,[]) ->
  [X];
insert_unique(X,Set) ->
  case lists:member(X,Set) of
    true  -> Set;
    false -> [X|Set]
  end.


list_max(X,[]) -> X;
list_max(X,[H|T]) when X < H -> list_max(H,T);
list_max(X,[_|T]) -> list_max(X,T).


find_item(_X,[]) -> not_found;
find_item(X,[H|_]) when X == H -> found;
find_item(X,[_|T]) -> find_item(X,T).


duplicate(0,_) ->
  [];
duplicate(N,Term) when N > 0 ->
  [Term|duplicate(N-1,Term)].

tail_duplicate(N,Term) -> tail_duplicate(N,Term,[]).
tail_duplicate(0,_,Li) -> Li;
tail_duplicate(N,Term,Li) -> tail_duplicate(N-1,Term,[Term|Li]).
