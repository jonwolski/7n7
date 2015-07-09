% Copyright © 2010 Pragmatic Programmers, LLC.
% This code is copied from the book 'Seven Langagues in Seven Days' by Bruce A. Tate.
-module(roulette).
-export([loop/0]).

% send a number, 1-6
loop() ->
  receive
    3 -> io:format("bang.~n"), exit({roulette,die,at,erlang:time()});
    _ -> io:format("click~n"), loop()
  end.
