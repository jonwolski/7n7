-module(day1_test).
-include_lib("eunit/include/eunit.hrl").

words_in_string_test_() ->
  [?_assert(day1:words_in_string([]) =:= 0)
  ,?_assert(day1:words_in_string("") =:= 0)
  ,?_assert(day1:words_in_string("a") =:= 1)
  ,?_assert(day1:words_in_string("abc") =:= 1)
  ,?_assert(day1:words_in_string("abc ") =:= 1)
  ,?_assert(day1:words_in_string("abc def") =:= 2)
  ,?_assert(day1:words_in_string(" abc def ") =:= 2)
  ,?_assert(day1:words_in_string(" abc  def ") =:= 2)
  ,?_assert(day1:words_in_string(" abc  def ghi jkl mnopqrustuvwxyz:a:1 ") =:= 5)
  ].

count_to_ten_test_() -> ?_assert(day1:count_to_ten() =:= 10).

either_test_() ->
  [?_assert(day1:either(success) =:= "success")
  ,?_assert(day1:either({error,"Test error message"}) =:= "error: Test error message")
  ,?_assert(day1:either({error,"Another message"}) =:= "error: Another message")
  ,?_assertException(error, function_clause, day1:either({other_atom,"Test error message"}))
  ,?_assertException(error, function_clause, day1:either(other_atom))
  ].
