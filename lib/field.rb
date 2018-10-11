require 'funny_plant'

class Field

  def initialize(harvest, seeds)
    @plants = plant(seeds)
  end

  def plant(seeds)
    if @plants

    else
      Array.new(seeds) {FunnyPlant.new}
    end
  end

  def weeks
    5
  end
end