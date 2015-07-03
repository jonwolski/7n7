-module(day2).
-export([dictionary_lookup/2]).

dictionary_lookup( Dictionary, Key ) ->
  case lists:keyfind( Key, 1, Dictionary ) of
    {_,V} -> V;
    _ -> false
  end.

