#!/usr/bin/env ruby
def bonus
  target = rand(1000)
  guess = -1
  puts "Guess a number between 0 and 1000:"

  while guess != target do
    guess = gets.to_i

    puts "too low" if guess.to_i < target
    puts "too high" if guess.to_i > target
  end
  puts "Correct!"
end

bonus
