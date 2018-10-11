require 'spec_helper'
require 'funny_plant'

describe FunnyPlant do
  context "When testing the FunnyPlant class" do
    
    it 'should return 1 fruit grown in a week when one plant is in its second growing week' do
      plant = FunnyPlant.new
      fruits = plant.fruits(2)
      expect(fruits).to eq 1
    end

    it 'should return 0 fruits grown in week 1 from 1 plant' do
      plant = FunnyPlant.new
      fruits = plant.fruits(1)
      expect(fruits).to eq 0
    end

    it 'should return week 1 when week is called immediately after initialization' do
      plant = FunnyPlant.new
      week = plant.week
      expect(week).to eq 1
    end

    it 'should increment week by 1 when new_week is called' do
      plant = FunnyPlant.new # initializes as 1
      plant.new_week # increments by 1
      week = plant.week
      expect(week).to eq 2
    end
  end
end