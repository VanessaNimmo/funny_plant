require 'spec_helper'
require 'funny_plant'

describe FunnyPlant do
  context "When testing the FunnyPlant class" do

    it 'should return 5 weeks when given 15 people and 1 starting fruit' do
      plant = FunnyPlant.new
      weeks = plant.weeks(15, 1)
      expect(weeks).to eq 5
    end
  end
end