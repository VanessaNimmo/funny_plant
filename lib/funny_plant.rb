class FunnyPlant
  attr_reader :week

  def initialize
    @week = 0
  end
  # Calculate the fruits grown by one plant in a given week after planting
  def fruits_per_plant(week_grown_in)
    week_grown_in - 1
  end
end