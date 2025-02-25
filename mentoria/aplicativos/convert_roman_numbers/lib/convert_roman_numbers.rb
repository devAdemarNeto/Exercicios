# frozen_string_literal: true

require_relative "convert_roman_numbers/version"

module ConvertRomanNumbers
class Error < StandardError; end

  class Converter
    def initialize(roman)
      @roman = roman
    end

    def to_int
      roman_value = {
        'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50,
        'C' => 100, 'D' => 500, 'M' => 1000
      }

      result = 0
      prev_value = 0

      @roman.reverse.each_char do |char|
        value = roman_value[char]
        value < prev_value ? result -= value : result += value
        prev_value = value
      end

      result
    end
  end
end
