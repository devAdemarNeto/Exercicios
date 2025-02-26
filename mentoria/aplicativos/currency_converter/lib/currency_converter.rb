# frozen_string_literal: true

require_relative "currency_converter/version"

module CurrencyConverterModule
  class Error < StandardError; end
  class CurrencyConverter
    TAXAS_FIXAS = {
      "USD_TO_BRL" => 5.0,
      "USD_TO_EUR" => 0.92,
      "USD_TO_BTC" => 0.000016,      
      "BRL_TO_USD" => 0.20,
      "BRL_TO_EUR" => 0.18,
      "BRL_TO_BTC" => 0.0000032,
      "EUR_TO_USD" => 1.09,
      "EUR_TO_BRL" => 5.50,
      "EUR_TO_BTC" => 0.000017,
      "BTC_TO_USD" => 62500,
      "BTC_TO_BRL" => 312500,
      "BTC_TO_EUR" => 58823
    }

    def self.convert(from, to, amount)
      key = "#{from.upcase}_TO_#{to.upcase}"

      if TAXAS_FIXAS.key?(key)
        amount * TAXAS_FIXAS[key]
      else
        raise ArgumentError, "Conversão de #{from} para #{to} não suportada."
      end
    end
  end

end