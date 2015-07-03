-module(day1).
-include_lib("eunit/include/eunit.hrl").
-export([words_in_string/1]).

words_in_string( []) -> 0;
words_in_string( Str ) -> list_length( string:tokens( Str, " " )).

list_length( [] ) -> 0;
list_length( [_|Tail] ) -> 1 + list_length( Tail ).

