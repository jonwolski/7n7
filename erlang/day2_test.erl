-module(day2_test).
-include_lib("eunit/include/eunit.hrl").

dictionary_lookup_test_() ->
  [?_assertEqual(
    "Li",
    day2:dictionary_lookup(
      [
        { hydrogen, "H" },
        { helium, "He" },
        { lithium, "Li" }
      ], lithium )
    )
  ].

line_items_with_subtotals_test_() ->
  [?_assertEqual(
      [],
      day2:line_items_with_subtotals([])
    )
  ,?_assertEqual(
    [{widget, 100},{gadget, 2400 }],
     day2:line_items_with_subtotals([
        {widget, 25, 4},
        {gadget, 2, 1200}
      ])
    )
  ].

tic_tac_toe_test_() ->
  [?_assertEqual( no_winner, day2:score_tic_tac_toe([empty,empty,empty,empty,empty,empty,empty,empty,empty ]))
  ,?_assertEqual( x, day2:score_tic_tac_toe([x,x,x, o,empty,o, o,empty,empty]))
  ,?_assertEqual( o, day2:score_tic_tac_toe([x,o,x, x,o,o, empty,o,empty]))
  ,?_assertEqual( x, day2:score_tic_tac_toe([x,o,x, o,x,o, x,o,empty]))
  ,?_assertEqual( cat, day2:score_tic_tac_toe([o,o,x, x,x,o, o,x,o]))
  ,?_assertEqual( no_winner, day2:score_tic_tac_toe([o,o,x, x,x,o, o,x,empty]))
  ].
