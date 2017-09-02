-module(levenshtein).
-export([distance/2]).

first_letter_check(OneLetter, TwoLetter) ->
  if OneLetter =:= TwoLetter -> 0
    ; true -> 1
  end.

distance(String1, String1) -> 0;
distance(String, "") -> string:len(String);
distance("", String) -> string:len(String);
distance([H1|Rest1], [H2|Rest2]) ->
  Cost = first_letter_check(H1, H2),

  lists:min([
         distance(Rest1, [H2|Rest2]) + 1,
         distance([H1|Rest1], Rest2) + 1,
         distance(Rest1, Rest2) + Cost
         ]).