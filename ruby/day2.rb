module Day2
  def self.exercise_1
    a = (1..16).to_a
    a[ 0... 4].each {|k| puts k }
    a[ 4... 8].each {|k| puts k }
    a[ 8...12].each {|k| puts k }
    a[12...16].each {|k| puts k }
  end

  def self.exercise_2
    (1..16).to_a.each_slice(4) { |k| puts k }
  end
end

