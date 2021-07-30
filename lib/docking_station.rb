require_relative 'bike'

class DockingStation

  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "The docking station is full!" if @bikes.size == 20
    @bikes << bike
  end
end