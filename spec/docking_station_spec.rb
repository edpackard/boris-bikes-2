require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'checks dock_bike takes one argument' do 
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end
  
  it 'checks that dock_bike(bike) returns bike' do 
    bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(bike)
  end
    
  it "see a bike that has been docked" do 
    docked_bike = subject.dock_bike(Bike.new)
    expect(subject.see_bike).to eq(docked_bike)
  end 

  it "tests that you can't release a bike from an empty station" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

end
