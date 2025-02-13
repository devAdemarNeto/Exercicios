def numero_primo(num)
    if num <= 1
        puts "O número #{num} não é primo"
        return
    end

    for divisor in 2...num
        if num % divisor == 0
            puts "O número #{num} não é primo"
            return
        end
    end

    puts "O número #{num} é primo"
end

#chamada da função
numero_primo(7)