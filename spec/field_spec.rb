require 'spec_helper'
require 'field'

describe Field do
  context "When testing the Field class " do

    it 'should return 5 weeks when given 15 people and 1 starting fruit' do
      field = Field.new(15, 1)
      weeks = field.weeks
      expect(weeks).to eq 5
    end

    it 'should return 14 weeks when given 50 000 people and 1 starting fruit' do
      field = Field.new(50000, 1)
      weeks = field.weeks
      expect(weeks).to eq 14
    end

  end
end
