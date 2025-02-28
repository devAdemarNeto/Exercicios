# frozen_string_literal: true
# Requer o arquivo 'spec_helper', que contém configurações do RSpec
require 'spec_helper'

# Requer o arquivo da classe que queremos testar
require_relative '../lib/currency_converter'


RSpec.describe CurrencyConverter do
  it "has a version number" do
    expect(CurrencyConverter::VERSION).not_to be nil
  end  
end



# Descreve o que estamos testando: a classe CurrencyConverter dentro do módulo CurrencyConverterModule
RSpec.describe CurrencyConverterModule::CurrencyConverter do
  # Define um grupo de testes para o método `.convert`
  describe '.convert' do
    
    # Primeiro teste: verifica se a conversão de USD para BRL está funcionando corretamente
    it 'deve converter de USD para BRL corretamente' do
      # Chama o método convert com os parâmetros ("USD", "BRL", 10) e guarda o resultado
      result = CurrencyConverterModule::CurrencyConverter.convert("USD", "BRL", 10)
      
      # Verifica se o resultado é exatamente 50.0
      expect(result).to eq(50.0)
    end

    # Segundo teste: verifica se a conversão de EUR para USD está correta
    it 'deve converter de EUR para USD corretamente' do
      # Chama o método convert com os parâmetros ("EUR", "USD", 2) e guarda o resultado
      result = CurrencyConverterModule::CurrencyConverter.convert("EUR", "USD", 2)
      
      # Verifica se o resultado é exatamente 2.18
      expect(result).to eq(2.18)
    end

    # Terceiro teste: verifica se o método gera erro ao tentar converter moedas não suportadas
    it 'deve gerar erro quando a conversão não for suportada' do
      # Espera que a chamada do método com moedas não suportadas ("JPY", "USD", 100)
      # gere um erro do tipo ArgumentError com a mensagem específica
      expect {
        CurrencyConverterModule::CurrencyConverter.convert("JPY", "USD", 100)
      }.to raise_error(ArgumentError, "Conversão de JPY para USD não suportada.")
    end
  end
end