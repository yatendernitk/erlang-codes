-module(mf).
-export([add/2,hello/0,greet_and_add_two/1,greet/2,old_enough/1,right_age/1,register/1]).
-define(sub(X,Y), X-Y).

add(A,B)->
    A+B.


hello()->
    io:format("hello, world ~n").

greet_and_add_two(X) ->
    hello(),
    add(X,2).

greet(male, Name) ->
    io:format("Hello, Mr. ~s!", [Name]);
greet(female, Name) ->
    io:format("Hello, Mrs. ~s!", [Name]);
greet(_, Name) ->
    io:format("Hello, ~s!", [Name]).


head([H|_]) -> H.

register("bro")->
    io:format("Hi bro");
register("Yatender")->
    io:format("Hello Yatender");
register(Name)->
    io:format("This is formattted ~s!",[Name]).

same(X,X) ->
true;
same(_,_) ->
false.


old_enough(X) when X >= 16 -> true;
old_enough(_) -> false.


right_age(X) when X>=16 ; X=<104 ->
    true;
right_age(_) ->
    false.