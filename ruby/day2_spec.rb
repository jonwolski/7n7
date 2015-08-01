require './day2'


Numbers = <<-OUTPUT
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
OUTPUT

RSpec.describe "Day2" do
  describe "exercise 1" do
    it "outputs four separate times using only #each" do
      expect { Day2::exercise_1 }.to output( Numbers ).to_stdout
    end
  end

  describe "exercise 2" do
    it "outputs four separate times using only #each" do
      expect { Day2::exercise_2 }.to output( Numbers ).to_stdout
    end
  end

end


