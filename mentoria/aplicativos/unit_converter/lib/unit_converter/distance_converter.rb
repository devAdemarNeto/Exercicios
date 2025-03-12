
module UnitConverter
    class distance_converter
        def initialize(value, metros, kilometers)
            @value = value
            @metros = metros
            @kilometers = kilometers
        end

        def converter_metro_kolometer
            @kilometers = @value / 1000           

        end

        def converter_kilometer_metros
            @metros = @value * 1000
        end
    end
end