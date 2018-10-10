require 'spec_helper'
require 'field'

describe Field do
  context "When testing the Field class " do
  field = Field.new

    it 'should return 5 weeks when given 15 people and 1 starting fruit' do
      weeks = field.weeks(15, 1)
      expect(weeks).to eq 5
    end

  end
end
