% Copyright © 2010 Pragmatic Programmers, LLC.
% This code is copied from the book 'Seven Langagues in Seven Days' by Bruce A. Tate.
-module(doctor).
-export([loop/0]).
loop() ->
  process_flag(trap_exit, true),
  receive
    new ->
      io:format("Creating and monitoring process.~n"),
      register(revolver, spawn_link(fun roulette:loop/0)),
      loop();
    {'EXIT', From, Reason} ->
      io:format("The shooter ~p died with reason ~p.", [From, Reason]),
      io:format(" Restarting. ~n"),
      self() ! new,
      loop()
  end.
