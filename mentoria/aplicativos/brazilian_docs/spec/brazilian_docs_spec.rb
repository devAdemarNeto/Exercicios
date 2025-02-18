require "brazilian_docs/cpf"

RSpec.describe BrazilianDocs do
  it "tem um número de versão" do
    expect(BrazilianDocs::VERSION).not_to be nil
  end

  describe ".valid_cpf?" do
    it "retorna true para um CPF válido" do
      expect(BrazilianDocs::CPF.valid?("123.456.789-09")).to be true
    end

    it "retorna false para um CPF inválido" do
      expect(BrazilianDocs::CPF.valid?("111.111.111-11")).to be false
    end
  end
end
