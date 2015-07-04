-module(day2).
-export([
  dictionary_lookup/2,
  line_items_with_subtotals/1]
).

dictionary_lookup( Dictionary, Key ) ->
  case lists:keyfind( Key, 1, Dictionary ) of
    {_,V} -> V;
    _ -> false
  end.

line_items_with_subtotals( Line_Items ) ->
  [{Item, Qty * Price} || {Item, Qty, Price} <- Line_Items ].

