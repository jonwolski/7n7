require './day3'

RSpec.describe "Day3" do
  describe "acts_as_csv" do
    it 'addresses rows by headers' do
      expect { Day3::exercise_1 }.to output( "lions\n" ).to_stdout
    end
  end

end
