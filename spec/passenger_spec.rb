require 'rspec'
require './lib/passenger.rb'

describe Passenger do
    it 'it exists' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie).to be_an_instance_of(Passenger)
    end

    it 'has a name' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.name).to eq('Charlie')
        expect(taylor.name).to eq('Taylor')
    end

    it 'has an age' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.age).to eq(18)
        expect(taylor.age).to eq(12)
    end

    it 'can check if passenger is an adult' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.adult?).to eq(true)
        expect(taylor.adult?).to eq(false)
    end

    it 'can check if person is driver' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.driver?).to eq(false)
        expect(taylor.driver?).to eq(false)

        charlie.drive

        expect(charlie.driver?).to eq(true)
    end
end
