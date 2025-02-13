def validar_cpf(num)
    cof = num.gsub(/[^0-9]/,'') # metodo gsub substitui tudo que não for numero (/[^0-9]/,'') por uma string vazia, deixando apenas digitos

    return false if cpf.length !=11 #se o cpf não tiver exatamente 11 digitos, retorna false e interrope a execução

    return false if cpf.chars.uniq.length == 1 #converte o CPF em um array de caracteres (chars), pega os valores unicos (uniq), e verifica se sá existe um valor único (ex: 11111111111)

    digitos = cpf[0..8] #divide o cpf em duas partes
    digito_verificador = cpf[9..10]

    soma = 0 #inicia uma variavel acumuladora que acumula o resultado da multiplicação do cpf fornecido
    digitos.char.each_with_index do |char, i| # digitos.char converte os 9 primeiros digitos do CPF em uma matriz de caracteres / each_wich-index do |char, i| itera sobra cada caractere do array gerado por chars, fonece o caractere atual(char)e o indice(i) no loop
        soma += char.to_i * (10 - i) #char.to_i converte o caractere(char) devolta para um numero / (10 - i) calcula o peso que será aplicado a este digito. opesa começa em 10 e diminui em 1 a cada iteração
        # multiplica o digito pelo peso e adiciona o resultado á variavel soma
        #Exemplo:
        # Para o CPF "123456789", a multiplicação seria:
        # Iteração 1: 1 * 10 = 10→soma = 10
        # Iteração 2: 2 * 9 = 18→soma = 28
        # Iteração 3: 3 * 8 = 24→soma = 52
        # (E assim por diante.)
        
    end
    resto = soma % 11 #calcula  resto da divisão entre soma e 11
    primeiro_dv = resto < 2 ? 0 : 11 - resto #se o resto for menor que 2 , o digito selecionado (primeiro_dv) será zero, caso contrario o digito selecionado será calculado como 11 - resto
    # Regras de validação do CPF determinam que, se o resto da soma for menor que 2, o dígito selecionado será 0.
    # Caso contrário, o dígito verificado é obtido subtraindo o resto de 11.

    soma = 0 #Esta variável será usada para acumular o resultado da multiplicação dos dígitos (agora incluindo o primeiro dígito selecionado) pelos pesos fornecidos (11, 10, 9, ...).

    

    (digitos + primeiro_dv.to_s).chars.each_with_index do |char, i|
    
        soma += char.to_i * (11 - 1)


    resto = soma % 11
    segundo_dv = resto < 2 ? 0 : 11 - resto
    
    
    digito_verificador == "#{primeiro_dv}#{segundo_dv}"
end

puts "Digite seu CPF : "
cpf = gets.chomp

if validar_cpf(cpf)
    puts "CPF VÁLIDO!!"
else
    puts "CPF INVÁLIDO"
end