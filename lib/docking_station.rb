require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  
  DEFAULT_CAPACITY = 20

  def initialize capacity = DEFAULT_CAPACITY
    @bikes = []
    @capacity = capacity
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
    @bikes.size == DEFAULT_CAPACITY
  end

  def dock_empty?
    @bikes.empty?
  end
end