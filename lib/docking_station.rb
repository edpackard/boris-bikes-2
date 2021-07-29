require_relative 'bike'

class DockingStation

  attr_reader :see_bike

  def release_bike
    raise "No bikes available" if @see_bike.nil?
    @see_bike
  end

  def dock_bike(bike)
    @see_bike = bike
  end

end