require 'rspec'
require './lib/vehicle.rb'

describe Vehicle do
    it 'it exists' do
        vehicle = Vehicle.new
        
        expect(vehicle).to be_an_instance_of(Vehicle)
    end
end