-module(day1_test).
-include_lib("eunit/include/eunit.hrl").

words_in_string_test_() ->
  [?_assert(day1:words_in_string([]) =:= 0),
   ?_assert(day1:words_in_string("") =:= 0),
   ?_assert(day1:words_in_string("a") =:= 1),
   ?_assert(day1:words_in_string("abc") =:= 1)
   ,?_assert(day1:words_in_string("abc ") =:= 1)
   ,?_assert(day1:words_in_string("abc def") =:= 2)
   ,?_assert(day1:words_in_string(" abc def ") =:= 2)
   ,?_assert(day1:words_in_string(" abc  def ") =:= 2)
   ,?_assert(day1:words_in_string(" abc  def ghi jkl mnopqrustuvwxyz:a:1 ") =:= 5)
  ].

