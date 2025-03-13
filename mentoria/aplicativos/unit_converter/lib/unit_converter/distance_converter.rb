
module UnitConverter
    class DistanceConverter
        def initialize(value)
            @value = value
        end
        
        def convert_meters_to_kilometers
           @value / 1000.0           

        end

        def convert_kilometers_to_meters
            @value * 1000
        end
    end
end