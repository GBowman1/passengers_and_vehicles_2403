class Parks
    attr_reader :name, 
                :admission_price,
                :vehicles_visting

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_visting = []
        @num_of_visitors = 0
    end

    def vehicle_visits(vehicle)
        @vehicles_visting << vehicle
    end

    def num_of_visitors
        @vehicles_visting.each do |vehicle|
            @num_of_visitors += vehicle.passengers.length
        end
        @num_of_visitors
    end
end