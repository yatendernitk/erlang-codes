-module(what_the_if).
-export([oh_god/1,help_me/1,help_me_alt/1]).

oh_god(X)->
    if X=:=2 -> might_success;
        true -> not_success
    end.


help_me(Animal) ->
    Talk = if Animal == cat -> "meow";
              Animal == dog -> "bow";
              Animal == beef -> "mooo";
              Animal == tree -> "bark";
              true -> "random"
            end,
    {Animal, "says " ++ Talk ++ "!"}.



