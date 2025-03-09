# frozen_string_literal: true

require_relative "frete_calculator/version"

module FreteCalculator
  class FreteCalculator
    attr_reader :peso, :volume, :distancia, :transporte
  
    # Tabela de preços fictícia
    PRECO_BASE = {
      moto: 0.5,    # R$ 0,50 por km
      carro: 1.0,   # R$ 1,00 por km
      caminhao: 2.5 # R$ 2,50 por km
    }
  
    def initialize(peso:, volume:, distancia:, transporte: :carro)
      @peso = peso
      @volume = volume
      @distancia = distancia
      @transporte = transporte
    end
  
    def calcular_frete
      taxa_transporte = PRECO_BASE[@transporte]
      raise "Transporte inválido!" unless taxa_transporte
  
      custo = (@distancia * taxa_transporte) + (peso * 0.1) + (volume * 0.05)
      custo.round(2) # Retorna o valor final arredondado
    end
  end  
end
