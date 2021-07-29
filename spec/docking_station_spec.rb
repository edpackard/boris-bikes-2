require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'checks dock_bike takes one argument' do 
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end
  
  it 'checks that dock_bike(bike) returns bike' do 
    bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(bike)
  end
    
  it "checks if the bike is docked" do 
    expect(subject).to respond_to(:see_bike)
  end 
  
  
  
end
