require "brazilian_docs/cnpj"

RSpec.describe BrazilianDocs::CNPJ do
  it "valida CNPJ correto" do
    expect(BrazilianDocs::CNPJ.valid?("11.222.333/0001-81")).to be true
  end

  it "rejeita CNPJ inválido" do
    expect(BrazilianDocs::CNPJ.valid?("11.222.333/0001-00")).to be false
  end

  it "formata CNPJ corretamente" do
    expect(BrazilianDocs::CNPJ.format("11222333000181")).to eq("11.222.333/0001-81")
  end
end
