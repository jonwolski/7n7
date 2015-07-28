require './day1'

RSpec.describe "Day1" do
  describe "exercise 1" do
    subject { exercise_1 }
    it { should eq "Hello, world." }
  end

  describe "exercise 2" do
    subject { exercise_2 }
    it { should eq 7 }
  end

  describe "exercise 3" do
    subject { exercise_3 }
    it { should eq( <<-OUTPUT )}
your name
your name
your name
your name
your name
your name
your name
your name
your name
your name
      OUTPUT
  end

  describe "exercise 4" do
    subject { exercise_4 }
    it { should eq( <<-OUTPUT )}
This is sentence number 1.
This is sentence number 2.
This is sentence number 3.
This is sentence number 4.
This is sentence number 5.
This is sentence number 6.
This is sentence number 7.
This is sentence number 8.
This is sentence number 9.
This is sentence number 10.
      OUTPUT
  end
end
