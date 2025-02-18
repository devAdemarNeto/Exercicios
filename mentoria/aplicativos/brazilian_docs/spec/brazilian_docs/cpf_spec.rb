require "brazilian_docs/cpf"

RSpec.describe BrazilianDocs::CPF do
  it "valida CPF correto" do
    expect(BrazilianDocs::CPF.valid?("123.456.789-09")).to be true
  end

  it "rejeita CPF inválido" do
    expect(BrazilianDocs::CPF.valid?("123.456.789-00")).to be false
  end

  it "formata CPF corretamente" do
    expect(BrazilianDocs::CPF.format("12345678909")).to eq("123.456.789-09")
  end
end
