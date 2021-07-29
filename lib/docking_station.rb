require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    bike
  end
  
  def see_bike
  end 

end