require 'rspec'
require './lib/vehicle.rb'
require './lib/passenger.rb'

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

    it 'is speeding?' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.speeding?).to eq(false)

        vehicle.speed

        expect(vehicle.speeding?).to eq(true)
    end

    it 'has passengers' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.passengers).to eq([])

        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        vehicle.add_passenger(charlie)
        vehicle.add_passenger(jude)
        vehicle.add_passenger(taylor)

        expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end

    it 'can check how many adults are in vehicle' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        vehicle.add_passenger(charlie)
        vehicle.add_passenger(jude)
        vehicle.add_passenger(taylor)

        expect(vehicle.num_adults).to eq(2)
    end
end