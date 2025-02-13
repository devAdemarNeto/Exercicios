#receba uma string e conte quantas vezes cada letra aparece
def contar_letras(texto)
    #filtrar apenas letras (ignorar numeros e simbolos)
    palavras = texto.scan(/[a-zA-Z]/)
    #converter todas as letras para minusculas
    palavras_minusculas = palavras.join.downcase
    #criar um hash para contar as letras
    contar_letras = {}
    #iterar pos cada letra e atualizar o contador
    palavras_minusculas.each_char do |letra|
        if contador_letras.key?(letra)
            contador_letras[letra] += 1
        else
            contador_letras[letra] = 1
        end
    end
    #exibir a resultado
    puts "Contagem de letras:"
    contar_letras.each do |letra, quantidade|
        puts "#{letra}: #{quantidade}"
    end
end

#chamando a função para o teste
contar_letras("Ola mundo. Vamos programar em Ruby")