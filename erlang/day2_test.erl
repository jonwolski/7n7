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
