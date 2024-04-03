class Passenger
    attr_reader :name, :age
    def initialize(hash)
        @name = hash["name"]
        @age = hash["age"]
        @is_adult = false
        @is_driver = false
    end

    def adult?
        if @age >= 18
            @is_adult = true
        end
        @is_adult
    end

    def driver?
        @is_driver
    end

    def drive
        @is_driver = true
    end
end