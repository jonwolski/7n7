-module(day2).
-export([
  dictionary_lookup/2,
  line_items_with_subtotals/1,
  score_tic_tac_toe/1
]).

dictionary_lookup( Dictionary, Key ) ->
  case lists:keyfind( Key, 1, Dictionary ) of
    {_,V} -> V;
    _ -> false
  end.

line_items_with_subtotals( Line_Items ) ->
  [{Item, Qty * Price} || {Item, Qty, Price} <- Line_Items ].

score_tic_tac_toe( Game_board ) ->
  case Game_board of
    [A,A,A, _,_,_, _,_,_ ] when A /= empty -> A;
    [_,_,_, A,A,A, _,_,_ ] when A /= empty -> A;
    [_,_,_, _,_,_, A,A,A ] when A /= empty -> A;
    [A,_,_, A,_,_, A,_,_ ] when A /= empty -> A;
    [_,A,_, _,A,_, _,A,_ ] when A /= empty -> A;
    [_,_,A, _,_,A, _,_,A ] when A /= empty -> A;
    [_,_,A, _,A,_, A,_,_ ] when A /= empty -> A;
    [A,_,_, _,A,_, _,_,A ] when A /= empty -> A;
    _ -> case lists:member( empty, Game_board ) of
        true -> no_winner;
        false -> cat
      end
  end.
