% Copyright © 2010 Pragmatic Programmers, LLC.
% This code is copied from the book 'Seven Langagues in Seven Days' by Bruce A. Tate.

-module(translate_service).
-export([loop/0, translate/2]).
loop() ->

  receive
    {From, "casa"} ->
      From ! "house",
      loop();
    {From, "blanca"} ->
      From ! "white",
      loop();
    {From, _} ->
      From ! "I don't understand.",
      loop()
end.

translate(To, Word) ->
  To ! {self(), Word},
  receive
    Translation -> Translation
  end.

