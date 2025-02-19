require 'spec_helper'

RSpec.describe NumerosPorExtenso::Conversor do
  using NumerosPorExtenso::IntegerExtension
  
  it "converte números pequenos corretamente" do
    expect(1.to_extenso).to eq("um")
    expect(9.to_extenso).to eq("nove")
    expect(10.to_extenso).to eq("dez")
    expect(15.to_extenso).to eq("quinze")
    expect(20.to_extenso).to eq("vinte")
  end
end