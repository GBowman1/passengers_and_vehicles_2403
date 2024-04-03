require 'rspec'
require './lib/passenger.rb'

describe Passenger do
    it 'it exists' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie).to be_an_instance_of(Passenger)
    end

    it 'has a name' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie.name).to eq('Charlie')
    end

    it 'has an age' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})

        expect(charlie.age).to eq(18)
    end
end