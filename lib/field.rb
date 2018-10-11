require_relative 'funny_plant'

class Field
  attr_reader :target_harvest
  attr_accessor :plants, :week

  def initialize(people_to_feed, seeds)
    @plants = plant(seeds)
    @target_harvest = people_to_feed
    @week = 1
  end

  def plant(seeds)
    if @plants
      i = 0
      while i < seeds
        plant = FunnyPlant.new
        @plants << plant
        i+=1
      end
    else
      Array.new(seeds) {FunnyPlant.new}
    end
  end

  def increment_week
    @plants.each do |plant|
      plant.new_week
      # p "plant week is #{plant.week}"
    end
    self.week += 1
  end

  def harvest
    harvest = 0
    @plants.each do |plant|
      harvest += plant.fruits(plant.week)
      # puts "harvest is #{harvest}"
    end
    harvest
  end

  def calculate_weeks
    fruits_produced = 0
    fruits_produced = self.harvest
    until fruits_produced > @target_harvest
      self.increment_week
      fruits_produced = self.harvest
      self.plant(fruits_produced)
    end
  end
end

# field = Field.new(15, 1)
# field.calculate_weeks
# puts field.week