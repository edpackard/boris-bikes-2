
# require_relative '../lib/docking_station'

# docking_station = DockingStation.new
# p "instantiate a docking station: #{docking_station}"
# p "dock 20 bikes!: #{20.times {docking_station.dock_bike(Bike.new)}}"

# p "instantiate a bike: #{bike = Bike.new}"
# p "dock the bike at the docking station: #{docking_station.dock_bike(bike)}"
# p "see the bike at the docking station: #{docking_station.see_bike}"
# p "instantiate another bike: #{bike2 = Bike.new}"
# #p "dock bike two at the docking station - should raise error: #{docking_station.dock_bike(bike2)}"
# p "looking at bike at docking station should be bike1: #{docking_station.see_bike == bike}"