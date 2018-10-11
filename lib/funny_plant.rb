class FunnyPlant
  attr_reader :week

  def initialize
    @week = 1
  end

  # Calculate the fruits grown by one plant in a given week after planting
  def fruits(week_grown_in)
    week_grown_in - 1
  end

  def new_week
    add_week
    @week
  end

  private

  def add_week
    @week += 1
  end
end