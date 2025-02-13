    # Essa fun o converte um numeral romano para um inteiro.
    # O numeral romano  lido da direita para a esquerda e se o valor
    # do numeral  esquerda for menor que o da direita, o valor do
    # numeral da esquerda  subtrai do resultado; caso contrario,  somado.
    # A fun o retorna o resultado da conversão.
def roman_to_int(s)
    roman_value = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }
    result = 0
    prev_value = 0

    (s.length - 1).downto(0) do |i|
        value = roman_value[s[i]]

        if value < prev_value
            result -=value
        else
            result += value
        end

        prev_value = value        
    end
    return result
end

    puts "Digite um numero romano"
    roman_numeral = gets.chomp.upcase

    puts "O equivalente inteiro é: #{roman_to_int(roman_numeral)}"       