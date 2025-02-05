while true
    puts "-----Calculadora-----"
    puts "Escolha a operação matemática"
    puts "1- Soma, 2- Subtração, 3- multiplicação, 4- Divisão, 0 - Sair"
    operacao = gets.chomp.to_i

    if operacao == 0
        puts "voce saiu do programa"
        break
    end

    puts "Escolha o primeiro numero: "
    num1 = gets.chomp.to_f

    puts "Escolha o segundo numero: "
    num2 = gets.chomp.to_f

    if operacao == 1
        result = num1 + num2
        puts "#{num1} + #{num2} = #{result}"
    elsif operacao == 2
        result = num1 - num2
        puts "#{num1} - #{num2} = #{result}"
    elsif operacao == 3
        result = num1 * num2
        puts "#{num1} x #{num2} = #{result}"
    elsif operacao == 4
        if num2 == 0
            puts "Divisão por zero não é permitida"
        else
            result = num1 / num2
            puts "#{num1} / #{num2} = #{result}"
        end
    else
        puts "Numero inválido"
    end

end  