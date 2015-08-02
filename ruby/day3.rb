#!/usr/bin/env ruby
require "./acts_as_csv"

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

module Day3
  def self.exercise_1
    csv = RubyCsv.new
    csv.each {|row| puts row.one }
  end
end
