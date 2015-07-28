def exercise_1
  "Hello, world."
end

def exercise_2
  "Hello, Ruby".index "Ruby"
end

def exercise_3
  10.times.inject("") { |s,_| s << "your name\n" }
end

def exercise_4
  (1..10).inject("") { |s,i|  s << "This is sentence number #{i}.\n" }
end

