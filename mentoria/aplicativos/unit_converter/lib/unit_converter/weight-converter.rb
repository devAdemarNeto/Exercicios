module UnitConverter
    class WeightConverter
        def initialize(value)
            @value = value
        end
    end

    def convert_grams_to_kilograms
        @value / 1000.0
    end

    def convert_kilograms_to_grams
        @value * 1000
    end
end