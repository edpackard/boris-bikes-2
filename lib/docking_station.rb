require_relative 'bike'

class DockingStation

  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if dock_empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "The docking station is full!" if dock_full?
    @bikes << bike
  end

  private

  def dock_full?
    @bikes.size == 20
  end

  def dock_empty?
    @bikes.empty?
  end
end