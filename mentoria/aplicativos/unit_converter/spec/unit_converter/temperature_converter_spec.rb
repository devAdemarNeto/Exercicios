require 'rspec'
require_relative '../../lib/unit_converter/temperature_converter'

RSpec.describe UnitConverter::TemperatureConverter do    
    it 'converte Celsius para Fahrenheit corretamente' do
        converter = UnitConverter::TemperatureConverter.new(25.0)
        expect(converter.convert_celsius_to_fahrenheit).to eq(77.0)
    end

    it 'convert valores pequenos corretamente' do
        converter = UnitConverter::TemperatureConverter.new(0.3)
        expect(converter.convert_celsius_to_fahrenheit).to eq(32.54)
    end

    it 'converte Fahrenheit para Celsius corretamente' do
        converter = UnitConverter::TemperatureConverter.new(77)
        expect(converter.convert_fahrenheit_to_celsius).to eq(25.0)
    end

    it 'convert valores pequenos corretamente' do
        converter = UnitConverter::TemperatureConverter.new(41)
        expect(converter.convert_fahrenheit_to_celsius).to eq(5.0)
    end
end