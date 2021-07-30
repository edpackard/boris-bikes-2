require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock_bike(Bike.new)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  
  it 'checks that dock_bike(bike) is docked bike' do 
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes.last).to eq bike
  end
    
  it "see a bike that has been docked" do 
    docked_bike = subject.dock_bike(Bike.new)
    expect(subject.bikes).to eq(docked_bike)
  end 

  it "tests that you can't release a bike from an empty station" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "tests that you can't dock a bike if the dock is full" do
    docking_station = DockingStation.new
    20.times { docking_station.dock_bike(Bike.new) }
    another_bike = Bike.new
    expect { docking_station.dock_bike(another_bike) }.to raise_error "The docking station is full!" 
  end
end
