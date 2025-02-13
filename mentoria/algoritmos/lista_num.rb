# ordenando lista com logica
def ordenar_lista(lista)
    for i in 0..(lista.length - 1)
        menor_indice = i
        for j in (i + 1)...lista.length
            if lista[j] < lista[menor_indice]
                menor_indice = j
            end
        end

          if menor_indice != 
            lista[i], lista[menor_indice] = lista[menor_indice], lista[i]
          end
    end
    lista
end

#exemplo de uso
lista = [5, 2, 8, 1, 9]
puts ordenar_lista(lista)


#ordenando a lista com metodo sort
def ordenar_lista2(lista)
    lista.sort
end

#exemplo de uso
lista = [5, 2, 8, 1, 9]
puts ordenar_lista2(lista)