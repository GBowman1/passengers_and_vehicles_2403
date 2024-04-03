class Passenger
    attr_reader :name, :age
    def initialize(hash)
        @name = hash["name"]
        @age = hash["age"]
        @is_adult = false
    end

    def adult?
        if @age >= 18
            @is_adult = true
        end
        @is_adult
    end
end