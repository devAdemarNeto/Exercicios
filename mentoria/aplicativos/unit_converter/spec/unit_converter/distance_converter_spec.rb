require 'rspec'
require_relative '../../lib/unit_converter/distance_converter'

RSpec.describe UnitConverter::DistanceConverter do
    describe '#convert_meters_to_kilometers' do
        it 'converte metros para quilômetros corretamente' do
            converter = UnitConverter::DistanceConverter.new(1000)
            expect(converter.convert_meters_to_kilometers).to eq(1.0)
        end

        it 'converte valores pequenos corretamente' do
            converter = UnitConverter::DistanceConverter.new(500)
            expect(converter.convert_meters_to_kilometers).to eq(0.5)
        end
        
        it 'converte quilômetros para metros corretamente' do
            converter = UnitConverter::DistanceConverter.new(2)
            expect(converter.convert_kilometers_to_meters).to eq(2000)
        end

        it 'converte valores pequenos corretamente' do
            converter = UnitConverter::DistanceConverter.new(0.3)
            expect(converter.convert_kilometers_to_meters).to eq(300)
        end
    end 
end         
          
