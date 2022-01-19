require 'docking_station'
require 'bike'

describe DockingStation do
  docking_station = DockingStation.new
  it "can release a bike" do
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'shows bikes' do
    expect(docking_station.bikes).to eq([])
  end

  it 'raises an error when no bikes' do
    expect {docking_station.release_bike}.to raise_error("No bikes found")
  end
  
  it 'docks bike' do
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq([bike])
  end

  it 'raises an error when station is full' do
    bike = Bike.new
    expect {docking_station.capacity.times {docking_station.dock(Bike.new)}}.to raise_error("Station at capacity")
  end

  it 'returns 20 when no capacity argument is set' do
    expect(docking_station.capacity).to eq(20)
  end

  it 'returns argument when capacity is set' do
    docking_station = DockingStation.new(25)
    expect(docking_station.capacity).to eq(25)
  end

  it 'returns that bike is broken' do
    bike = Bike.new
    bike.working = false
    expect(bike.working).to eq(false)
  end

  it 'takes user input about bike' do
    bike = Bike.new
    docking_station.dock(bike, false)
    expect(docking_station.bikes.last.working).to eq(false)
  end

   it 'does not release broken bikes' do
    bike = Bike.new
    docking_station.dock(bike, false)
    expect(docking_station.release_bike).to eq(nil)
   end

end