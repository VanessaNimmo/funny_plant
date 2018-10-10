require 'spec_helper'
require 'funny_plant'

describe FunnyPlant do
  context "When testing the FunnyPlant class" do
    plant = FunnyPlant.new
    
    it 'should return 1 fruit grown in a week when one plant is in its second growing week' do
      fruits = plant.fruits_per_plant(2)
      expect(fruits).to eq 1
    end
  end
end