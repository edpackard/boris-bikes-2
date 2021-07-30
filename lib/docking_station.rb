require_relative 'bike'

class DockingStation

  attr_reader :see_bike

  def release_bike
    raise "No bikes available" if @see_bike.nil?
    @see_bike
  end

  def dock_bike(bike)
    raise "There is already a bike docked!" if @see_bike
    @see_bike = bike
  end

end