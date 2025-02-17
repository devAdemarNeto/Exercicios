module BrazilianDocs
    class CPF
      def self.valid?(cpf)
        cpf = cpf.to_s.gsub(/\D/, '') # Remove caracteres não numéricos
        return false unless cpf.match?(/^\d{11}$/) # Verifica se tem 11 dígitos
        return false if cpf.chars.uniq.size == 1 # Rejeita CPFs com todos os dígitos iguais
  
        # Cálculo do dígito verificador
        digits = cpf.chars.map(&:to_i)
        return false unless check_digits(digits)
  
        true
      end
  
      def self.format(cpf)
        cpf = cpf.to_s.gsub(/\D/, '') # Remove caracteres não numéricos
        return nil unless cpf.match?(/^\d{11}$/)
  
        "#{cpf[0..2]}.#{cpf[3..5]}.#{cpf[6..8]}-#{cpf[9..10]}"
      end
  
      private
  
      def self.check_digits(digits)
        # Calcula os dois dígitos verificadores do CPF
        first_digit = calculate_digit(digits, 10)
        second_digit = calculate_digit(digits, 11)
  
        first_digit == digits[9] && second_digit == digits[10]
      end
  
      def self.calculate_digit(digits, weight)
        sum = digits.first(weight - 1).each_with_index.sum { |num, idx| num * (weight - idx) }
        remainder = sum % 11
        remainder < 2 ? 0 : 11 - remainder
      end
    end
  end
  