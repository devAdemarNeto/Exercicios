module UnitConverter
    class TemperatureConverter
        def initialize(value)
            @value = value
        end

        def convert_celsius_to_fahrenheit
            (@value * 1.8) + 32
        end
        
        def convert_fahrenheit_to_celsius
            (@value - 32) / 1.8
        end
    end
end