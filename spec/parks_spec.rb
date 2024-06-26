require './lib/vehicle.rb'
require './lib/passenger.rb'
require './lib/parks.rb'

describe Parks do
    before(:each) do
        @yellowstone = Parks.new("Yellowstone", 10)
        @grand_canyon = Parks.new("Grand Canyon", 12)

        @honda = Vehicle.new("2001", "Honda", "Civic")
        @toyota = Vehicle.new("2014", "Toyota", "Tacoma")
        @ford = Vehicle.new("2018", "Ford", "F-150")

        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        @john = Passenger.new({"name" => "John", "age" => 26})
        @garrett = Passenger.new({"name" => "Garrett", "age" => 25})

        @mikey = Passenger.new({"name" => "Mikey", "age" => 8})
        @frankie = Passenger.new({"name" => "Frankie", "age" => 7})
        @bobby = Passenger.new({"name" => "Bobby", "age" => 32})

        @honda.add_passenger(@charlie)
        @honda.add_passenger(@jude)
        @honda.add_passenger(@taylor)
        @toyota.add_passenger(@john)
        @toyota.add_passenger(@garrett)
        @ford.add_passenger(@mikey)
        @ford.add_passenger(@frankie)
        @ford.add_passenger(@bobby)
    end

    it 'exists' do
        expect(@yellowstone).to be_an_instance_of(Parks)
    end

    it 'has a name' do
        expect(@yellowstone.name).to eq("Yellowstone")
        expect(@grand_canyon.name).to eq("Grand Canyon")
    end

    it 'has addmission price' do
        expect(@yellowstone.admission_price).to eq(10)
        expect(@grand_canyon.admission_price).to eq(12)
    end

    it 'has vehicles' do
        expect(@yellowstone.vehicles_visting).to eq([])

        @yellowstone.vehicle_visits(@honda)
        @yellowstone.vehicle_visits(@toyota)

        expect(@yellowstone.vehicles_visting).to eq([@honda, @toyota])
    end

    it 'can check how many passengers vist the park' do
        expect(@yellowstone.num_of_visitors).to eq(0)

        @yellowstone.vehicle_visits(@honda)
        @yellowstone.vehicle_visits(@toyota)

        expect(@yellowstone.num_of_visitors).to eq(5)
    end

    it 'can charge for admission' do
        expect(@yellowstone.total_revenue).to eq(0)

        @yellowstone.vehicle_visits(@honda)
        @yellowstone.charge_admission

        expect(@yellowstone.total_revenue).to eq(20)

        @yellowstone.vehicle_visits(@toyota)
        @yellowstone.charge_admission

        expect(@yellowstone.total_revenue).to eq(40)
    end

    it 'can list all attendees alphabetically' do
        @yellowstone.vehicle_visits(@honda)
        @yellowstone.vehicle_visits(@toyota)

        @yellowstone.list_all_attendees

        expect(@yellowstone.total_attendees).to eq(["Charlie", "Garrett", "John", "Jude", "Taylor"])
    end

    it 'can list all adults alphabetically' do
        @yellowstone.vehicle_visits(@honda)
        @yellowstone.vehicle_visits(@toyota)

        @yellowstone.list_all_adults

        expect(@yellowstone.total_adults).to eq(["Charlie", "Garrett", "John", "Jude"])
    end

    it 'can list all children alphabetically' do
        @yellowstone.vehicle_visits(@honda)
        @yellowstone.vehicle_visits(@toyota)
        @yellowstone.vehicle_visits(@ford)

        @yellowstone.list_all_children

        expect(@yellowstone.total_children).to eq(["Frankie", "Mikey", "Taylor"])
    end
end