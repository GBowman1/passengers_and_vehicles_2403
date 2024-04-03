require 'rspec'
require './lib/vehicle.rb'

describe Vehicle do
    it 'it exists' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        
        expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it 'has a make' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.make).to eq('Honda')
    end

    it 'has a model' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.model).to eq('Civic')
    end

    it 'has a year' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.year).to eq('2001')
    end
end