class Parks
    attr_reader :name, 
                :admission_price,
                :vehicles_visting,
                :num_of_visitors,
                :total_revenue,
                :total_attendees,
                :total_adults,
                :total_children

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_visting = []
        @num_of_visitors = 0
        @total_revenue = 0
        @total_attendees = []
        @total_adults = []
        @total_children = []
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

    def charge_admission
        @total_revenue = @vehicles_visting.sum do |vehicle|
            vehicle.num_adults * @admission_price
        end
    end

    def list_all_attendees
        @vehicles_visting.each do |vehicle|
            vehicle.passengers.each do |passenger|
                @total_attendees << passenger.name
            end
        end
        @total_attendees.sort!
    end

    def list_all_adults
        @vehicles_visting.each do |vehicle|
            vehicle.passengers.each do |passenger|
                if passenger.adult?
                    @total_adults << passenger.name
                end
            end
        end
        @total_adults.sort!
    end

    def list_all_children
        @vehicles_visting.each do |vehicle|
            vehicle.passengers.each do |passenger|
                if !passenger.adult?
                    @total_children << passenger.name
                end
            end
        end
        @total_children.sort!
    end

    #list will always need be alphabetized so it feels safe to sort! the array
    #we dont care about an unsorted array

    #could have not used the instance variables and just returned the array sorted 
end