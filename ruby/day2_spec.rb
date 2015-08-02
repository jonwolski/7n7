require './day2'



RSpec.describe "Day2" do

  let( :numbers ) { <<-OUTPUT
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
}


  describe "exercise 1" do
    it "outputs four separate times using only #each" do
      expect { Day2::exercise_1 }.to output( numbers ).to_stdout
    end
  end

  describe "exercise 2" do
    it "outputs four separate times using only #each" do
      expect { Day2::exercise_2 }.to output( numbers ).to_stdout
    end
  end


  describe "exercise 3" do

    let( :family_tree ) {
      ruby_tree = Day2::Tree.new(
        "family",
        {'grandpa' => {
            'dad' => {
              'child1' => {},
              'child2' => {}
            },
            'uncle' => {
              'child3' => {},
              'child4' => {}
            }
          }
        }
      )
    }

    it "accepts a tree literal in the initializer" do
      visitor = double()
      expect( visitor ).to receive( :visit ).and_return( *%w{family grandpa dad child1 child2 uncle child3 child4} )
      family_tree.visit_all {|s| visitor.visit( s )}
    end

  end
end
