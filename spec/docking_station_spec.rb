require './lib/docking_station.rb'

describe DockingStation do
  it "can release a bike" do

    # docking_station = DockingStation.new
    # docking_station.release_bike
    expect(docking_station.release_bike).respond_to(release_bike)
    # expect(docking_station.release_bike).to eq(respond_to)
    docking_station.respond_to?(release_bike)
  end


# describe Good_Bike do
#   it 'is a good quality bike' do
    
#     good_bike = Good_Bike.new

#     good_bike.status

#     expect(good_bike.status).to eq(good)
#   end
end