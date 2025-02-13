def conversor_temp(temperatura, unidade)
    if unidade == 1
        f = (temperatura * 9.0 / 5) + 32
        return "#{temperatura} ºC equivale a #{f.roud(2)} ªF"
    elsif unidade == 2
        c = (temperatura - 32) * 5.0 / 9
        return "#{temperatura} ªF equivale a #{c.round(2)} ªC"
    else
        puts "Numero inválido"
    end
end


#exemplo de uso
puts "Escolha a convesão: 1 - Celsius para Fahrenheit, 2 - Fahrenheit para Celsius"
opcao = gets.chomp.to_i

puts "Digite a temperatura:"
temperatura = gets.chomp.to_f

puts conversor_temp(temperatura, opcao)