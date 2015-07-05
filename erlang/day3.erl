-module(day3).
-export([ monitor_service/3 ]).

monitor_service( Module, Function, Args ) ->
  Spawner = fun () ->
      spawn_link( Module, Function, Args )
  end,
  loop( Spawner ).


% private


loop( Spawner ) ->
  receive
    new -> new_monitored_service_instance( Spawner )
  end.


loop( Spawner, Service ) ->
  process_flag( trap_exit, true ),
  receive

    new ->
      new_monitored_service_instance( Spawner );

    { service_instance_pid, From } ->
      From ! Service,
      loop( Spawner, Service );

    {'EXIT', From, Reason} ->
      io:format( "The monitored process ~p died with reason ~p~n", [ From, Reason ]),
      new_monitored_service_instance( Spawner )

  end.

new_monitored_service_instance( Spawner ) ->
  io:format( "Creating and monitoring process.~n"),
  loop( Spawner, Spawner() ).

