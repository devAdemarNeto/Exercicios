require 'rspec'
require_relative '../../lib/unit_converter/weight_converter'

RSpec.describe UnitConverter::WeightConverter do
    it 'converte quilogramas para gramas corretamente' do
        converter = UnitConverter::WeightConverter.new(1)
        expect(converter.convert_kilograms_to_grams).to eq(1000)
    end

    it 'converte valores pequenos corretamente' do
        converter = UnitConverter::WeightConverter.new(0.3)
        expect(converter.convert_kilograms_to_grams).to eq(300)
    end

    it 'converte gramas para quilogramas corretamente' do
        converter = UnitConverter::WeightConverter.new(1000)
        expect(converter.convert_grams_to_kilograms).to eq(1.0)
    end

    it 'converte valores pequenos corretamente' do
        converter = UnitConverter::WeightConverter.new(500)
        expect(converter.convert_grams_to_kilograms).to eq(0.5)
    end
end