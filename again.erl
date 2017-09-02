%%%-------------------------------------------------------------------
%%% @author ok
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Apr 2017 2:29 PM
%%%-------------------------------------------------------------------
-module(again).
-author("Yatender").

%% API
-export([add/2,hello/0,greet_and_add_two/1, greet/2]).

add(A,B)->
  A+B.

hello()->
  io:format("Hello world~n").


greet_and_add_two(X)->
  hello(),
  add(X,2).

greet(male, Name)->
  io:format("hello Mr, ~s!",[Name]);
greet(female,Name)->
  io:format("hello Mrs. ~s",[Name]);
greet(_,Name)->
  io:format("Hello , ~s", [Name]).