
def fatorial(num)
    if num < 0
        return "O fatorial de um número negativo não existe"
    end
    if num == 0
        return 1
    end

    fatorial = 1
    for i in 1..num
        fatorial *= i
    end
    return fatorial
end

puts fatorial(5)