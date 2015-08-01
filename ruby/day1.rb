module Day1
  def self.exercise_1
    "Hello, world."
  end

  def self.exercise_2
    "Hello, Ruby".index "Ruby"
  end

  def self.exercise_3
    10.times.inject("") { |s,_| s << "your name\n" }
  end

  def self.exercise_4
    (1..10).inject("") { |s,i|  s << "This is sentence number #{i}.\n" }
  end
end

