require 'spec_helper'
require 'funny_plant'

describe FunnyPlant do
  context "When testing the FunnyPlant class" do
    plant = FunnyPlant.new
    it 'should return 5 weeks when given 15 people and 1 starting fruit' do
      weeks = plant.weeks(15, 1)
      expect(weeks).to eq 5
    end

    # Calculate the behaviour of one plant over time
    it 'should return 1 fruit when one plant is given 2 weeks to grow them' do
      fruits = plant.fruits(2)
      expect(fruits).to eq 1
    end
  end
end