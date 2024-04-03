class Parks
    attr_reader :name, 
                :admission_price,
                :vehicles_visting

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_visting = []
    end

    def vehicle_visits(vehicle)
        @vehicles_visting << vehicle
    end
end