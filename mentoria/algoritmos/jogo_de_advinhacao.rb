def jogo_de_adivinhacao
    comp = rand(1..100)
    tentativas = 0
    
    puts "Bem-vindo ao jogo de adivinhação"

    loop do
        print "Tente advinhar o número entre 1 e 100: "
        num = gets.chomp.to_i
        tentativas += 1

        if num == comp
            return "Você acertou!!, O numero escolhido pelo computador foi #{comp}. Você tentou #{tentativas} vezes"
        elsif num < comp
            puts "Tente um numero maior"
        else
            puts "Tente um numero menor"
        end
    end
end

puts jogo_de_adivinhacao