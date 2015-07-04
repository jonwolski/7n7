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
