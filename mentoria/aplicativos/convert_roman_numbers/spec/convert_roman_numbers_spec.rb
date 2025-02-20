require "spec_helper"
require_relative "../lib/convert_roman_numbers"

RSpec.describe ConvertRomanNumbers do
  describe "#roman_to_int" do
    it "converte I para 1" do
      expect(ConvertRomanNumbers.roman_to_int("I")).to eq(1)
    end

    it "converte V para 5" do
      expect(ConvertRomanNumbers.roman_to_int("V")).to eq(5)
    end

    it "converte X para 10" do
      expect(ConvertRomanNumbers.roman_to_int("X")).to eq(10)
    end

    it "converte L para 50" do
      expect(ConvertRomanNumbers.roman_to_int("L")).to eq(50)
    end

    it "converte C para 100" do
      expect(ConvertRomanNumbers.roman_to_int("C")).to eq(100)
    end

    it "converte D para 500" do
      expect(ConvertRomanNumbers.roman_to_int("D")).to eq(500)
    end

    it "converte M para 1000" do
      expect(ConvertRomanNumbers.roman_to_int("M")).to eq(1000)
    end

    it "converte XIV para 14" do
      expect(ConvertRomanNumbers.roman_to_int("XIV")).to eq(14)
    end

    it "converte XX para 20" do
      expect(ConvertRomanNumbers.roman_to_int("XX")).to eq(20)
    end

    it "converte XC para 90" do
      expect(ConvertRomanNumbers.roman_to_int("XC")).to eq(90)
    end

    it "converte CM para 900" do
      expect(ConvertRomanNumbers.roman_to_int("CM")).to eq(900)
    end

    it "converte MCMXCIV para 1994" do
      expect(ConvertRomanNumbers.roman_to_int("MCMXCIV")).to eq(1994)
    end
  end
end
