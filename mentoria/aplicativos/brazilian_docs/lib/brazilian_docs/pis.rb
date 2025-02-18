module BrazilianDocs
    class PIS
      def self.valid?(pis)
        pis = pis.to_s.gsub(/\D/, '') # Remove caracteres não numéricos
        return false unless pis.match?(/^\d{11}$/) # Verifica se tem exatamente 11 dígitos
  
        weights = [3, 2, 9, 8, 7, 6, 5, 4, 3, 2] # Pesos fixos
        digits = pis.chars.map(&:to_i) # Converte para array de inteiros
  
        sum = digits[0..9].each_with_index.sum { |digit, index| digit * weights[index] } # Calcula a soma ponderada
        remainder = sum % 11
        expected_digit = remainder < 2 ? 0 : (11 - remainder) # Calcula o dígito verificador
  
        expected_digit == digits[10] # Verifica se o dígito calculado corresponde ao último dígito
      end
    end
  end
  
  
  