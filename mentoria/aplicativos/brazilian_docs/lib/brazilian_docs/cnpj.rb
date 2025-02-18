module BrazilianDocs
    class CNPJ
      def self.valid?(cnpj)
        cnpj = cnpj.to_s.gsub(/\D/, '') # Remove caracteres não numéricos
        return false unless cnpj.match?(/^\d{14}$/) # Verifica se tem 14 dígitos
        return false if cnpj.chars.uniq.size == 1 # Rejeita CNPJs com todos os dígitos iguais
  
        # Cálculo do dígito verificador
        digits = cnpj.chars.map(&:to_i)
        return false unless check_digits(digits)
  
        true
      end
  
      def self.format(cnpj)
        cnpj = cnpj.to_s.gsub(/\D/, '') # Remove caracteres não numéricos
        return nil unless cnpj.match?(/^\d{14}$/)
  
        "#{cnpj[0..1]}.#{cnpj[2..4]}.#{cnpj[5..7]}/#{cnpj[8..11]}-#{cnpj[12..13]}"
      end
  
      private
  
      def self.check_digits(digits)
        first_digit = calculate_digit(digits, [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2])
        second_digit = calculate_digit(digits, [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2])
  
        first_digit == digits[12] && second_digit == digits[13]
      end
  
      def self.calculate_digit(digits, weights)
        sum = digits.first(weights.size).each_with_index.sum { |num, idx| num * weights[idx] }
        remainder = sum % 11
        remainder < 2 ? 0 : 11 - remainder
      end
    end
  end
  