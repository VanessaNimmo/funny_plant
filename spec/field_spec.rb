require 'spec_helper'
require 'field'

describe Field do
  context "When testing the Field class " do

    it 'should return 5 weeks when given 15 people and 1 starting fruit' do
      field = Field.new(15, 1)
      field.calculate_weeks
      weeks = field.week
      expect(weeks).to eq 5
    end

    it 'should return 14 weeks when given 50 000 people and 1 starting fruit' do
      field = Field.new(50000, 1)
      field.calculate_weeks
      weeks = field.week
      expect(weeks).to eq 14
    end

    it 'should return 9 weeks when given 150000 people and 250 starting fruits' do
      field = Field.new(150000, 250)
      field.calculate_weeks
      weeks = field.week
      expect(weeks).to eq 9
    end
  end
end
