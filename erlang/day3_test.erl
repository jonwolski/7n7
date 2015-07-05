-module(day3_test).
-include_lib("eunit/include/eunit.hrl").

monitor_test() ->
  Monitor = spawn( day3, monitor_service, [translate_service,loop,[]] ),
  Monitor ! new,
  Service_instance = monitored_pid( Monitor ),
  ?assert(erlang:is_process_alive( Service_instance )),
  exit(Service_instance, "killed by test"),
  ?assertNot(erlang:is_process_alive( Service_instance )),
  % The following log statement is a hack to give the monitor process enough time to transition state
  io:format("Original service instance PID is ~p.~n", [Service_instance]),
  Restarted_service_instance = monitored_pid( Monitor ),
  io:format("Current service instance PID is ~p.~n", [Restarted_service_instance]),
  ?assert(erlang:is_process_alive( Restarted_service_instance )),
  ?assertEqual("house", translate_service:translate( Restarted_service_instance, "casa" )).

monitored_pid( Monitor ) ->
  Monitor ! { service_instance_pid, self() },
  receive
    Msg -> Msg
  end.


