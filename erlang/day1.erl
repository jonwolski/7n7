-module(day1).
-export([words_in_string/1]).
-export([count_to_ten/0]).
-export([either/1]).

words_in_string( []) -> 0;
words_in_string( Str ) -> list_length( string:tokens( Str, " " )).

list_length( [] ) -> 0;
list_length( [_|Tail] ) -> 1 + list_length( Tail ).

count_down_to_zero_from(0) -> 0;
count_down_to_zero_from(N) -> 1 + count_down_to_zero_from( N-1).

count_to_ten() -> count_down_to_zero_from( 10 ).

either(success) -> "success";
either({error, Message}) -> "error: " ++ Message.
