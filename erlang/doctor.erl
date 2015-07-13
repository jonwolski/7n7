% Copyright © 2010 Pragmatic Programmers, LLC.
% This code is copied from the book 'Seven Langagues in Seven Days' by Bruce A. Tate.
-module(doctor).
-export([loop/0]).

loop() ->
  loop(uninitialized).

loop(Service) ->
  process_flag(trap_exit, true),
  receive
    new ->
      io:format("Creating and monitoring process.~n"),
      ServicePid = spawn_link(fun roulette:loop/0),
      loop(ServicePid);

    { service_instance_pid, From } ->
      From ! Service,
      loop( Service );

    {'EXIT', From, Reason} ->
      io:format("The shooter ~p died with reason ~p.", [From, Reason]),
      io:format(" Restarting. ~n"),
      loop( uninitialized ),
      self() ! new
  end.

